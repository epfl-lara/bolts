; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683874 () Bool)

(assert start!683874)

(declare-fun b!7053633 () Bool)

(assert (=> b!7053633 true))

(declare-fun b!7053632 () Bool)

(assert (=> b!7053632 true))

(declare-fun b!7053624 () Bool)

(assert (=> b!7053624 true))

(declare-fun b!7053622 () Bool)

(declare-fun res!2879631 () Bool)

(declare-fun e!4240493 () Bool)

(assert (=> b!7053622 (=> res!2879631 e!4240493)))

(declare-datatypes ((C!35394 0))(
  ( (C!35395 (val!27399 Int)) )
))
(declare-datatypes ((Regex!17562 0))(
  ( (ElementMatch!17562 (c!1313933 C!35394)) (Concat!26407 (regOne!35636 Regex!17562) (regTwo!35636 Regex!17562)) (EmptyExpr!17562) (Star!17562 (reg!17891 Regex!17562)) (EmptyLang!17562) (Union!17562 (regOne!35637 Regex!17562) (regTwo!35637 Regex!17562)) )
))
(declare-datatypes ((List!68212 0))(
  ( (Nil!68088) (Cons!68088 (h!74536 Regex!17562) (t!381991 List!68212)) )
))
(declare-datatypes ((Context!13116 0))(
  ( (Context!13117 (exprs!7058 List!68212)) )
))
(declare-fun lt!2530816 () Context!13116)

(declare-fun lt!2530812 () (Set Context!13116))

(assert (=> b!7053622 (= res!2879631 (not (set.member lt!2530816 lt!2530812)))))

(declare-fun b!7053623 () Bool)

(declare-fun e!4240488 () Bool)

(declare-fun e!4240496 () Bool)

(assert (=> b!7053623 (= e!4240488 e!4240496)))

(declare-fun res!2879628 () Bool)

(assert (=> b!7053623 (=> res!2879628 e!4240496)))

(declare-fun lt!2530805 () Context!13116)

(declare-fun nullable!7245 (Regex!17562) Bool)

(assert (=> b!7053623 (= res!2879628 (not (nullable!7245 (h!74536 (exprs!7058 lt!2530805)))))))

(declare-fun lt!2530809 () List!68212)

(declare-fun tail!13685 (List!68212) List!68212)

(assert (=> b!7053623 (= lt!2530809 (tail!13685 (exprs!7058 lt!2530805)))))

(declare-fun e!4240495 () Bool)

(assert (=> b!7053624 (= e!4240495 e!4240488)))

(declare-fun res!2879623 () Bool)

(assert (=> b!7053624 (=> res!2879623 e!4240488)))

(declare-fun lt!2530811 () (Set Context!13116))

(declare-fun lt!2530804 () (Set Context!13116))

(declare-datatypes ((List!68213 0))(
  ( (Nil!68089) (Cons!68089 (h!74537 C!35394) (t!381992 List!68213)) )
))
(declare-fun s!7408 () List!68213)

(declare-fun derivationStepZipper!3012 ((Set Context!13116) C!35394) (Set Context!13116))

(assert (=> b!7053624 (= res!2879623 (not (= (derivationStepZipper!3012 lt!2530804 (h!74537 s!7408)) lt!2530811)))))

(declare-fun lambda!419745 () Int)

(declare-fun lt!2530820 () Context!13116)

(declare-fun flatMap!2488 ((Set Context!13116) Int) (Set Context!13116))

(declare-fun derivationStepZipperUp!2146 (Context!13116 C!35394) (Set Context!13116))

(assert (=> b!7053624 (= (flatMap!2488 lt!2530804 lambda!419745) (derivationStepZipperUp!2146 lt!2530820 (h!74537 s!7408)))))

(declare-datatypes ((Unit!161797 0))(
  ( (Unit!161798) )
))
(declare-fun lt!2530806 () Unit!161797)

(declare-fun lemmaFlatMapOnSingletonSet!1997 ((Set Context!13116) Context!13116 Int) Unit!161797)

(assert (=> b!7053624 (= lt!2530806 (lemmaFlatMapOnSingletonSet!1997 lt!2530804 lt!2530820 lambda!419745))))

(assert (=> b!7053624 (= lt!2530811 (derivationStepZipperUp!2146 lt!2530820 (h!74537 s!7408)))))

(declare-fun lt!2530814 () Unit!161797)

(declare-fun lambda!419744 () Int)

(declare-fun ct2!306 () Context!13116)

(declare-fun lemmaConcatPreservesForall!873 (List!68212 List!68212 Int) Unit!161797)

(assert (=> b!7053624 (= lt!2530814 (lemmaConcatPreservesForall!873 (exprs!7058 lt!2530805) (exprs!7058 ct2!306) lambda!419744))))

(declare-fun b!7053625 () Bool)

(declare-fun e!4240491 () Bool)

(declare-fun lt!2530807 () Context!13116)

(declare-fun inv!86765 (Context!13116) Bool)

(assert (=> b!7053625 (= e!4240491 (inv!86765 lt!2530807))))

(declare-fun lt!2530815 () Unit!161797)

(assert (=> b!7053625 (= lt!2530815 (lemmaConcatPreservesForall!873 lt!2530809 (exprs!7058 ct2!306) lambda!419744))))

(declare-fun lt!2530808 () (Set Context!13116))

(declare-fun e!4240489 () Bool)

(declare-fun matchZipper!3102 ((Set Context!13116) List!68213) Bool)

(assert (=> b!7053625 (= (matchZipper!3102 lt!2530808 (t!381992 s!7408)) e!4240489)))

(declare-fun res!2879624 () Bool)

(assert (=> b!7053625 (=> res!2879624 e!4240489)))

(declare-fun lt!2530797 () (Set Context!13116))

(assert (=> b!7053625 (= res!2879624 (matchZipper!3102 lt!2530797 (t!381992 s!7408)))))

(declare-fun lt!2530800 () Unit!161797)

(declare-fun lt!2530818 () (Set Context!13116))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1575 ((Set Context!13116) (Set Context!13116) List!68213) Unit!161797)

(assert (=> b!7053625 (= lt!2530800 (lemmaZipperConcatMatchesSameAsBothZippers!1575 lt!2530797 lt!2530818 (t!381992 s!7408)))))

(declare-fun lt!2530798 () Unit!161797)

(assert (=> b!7053625 (= lt!2530798 (lemmaConcatPreservesForall!873 lt!2530809 (exprs!7058 ct2!306) lambda!419744))))

(declare-fun lt!2530819 () Unit!161797)

(assert (=> b!7053625 (= lt!2530819 (lemmaConcatPreservesForall!873 lt!2530809 (exprs!7058 ct2!306) lambda!419744))))

(declare-fun setIsEmpty!49792 () Bool)

(declare-fun setRes!49792 () Bool)

(assert (=> setIsEmpty!49792 setRes!49792))

(declare-fun b!7053626 () Bool)

(declare-fun res!2879629 () Bool)

(assert (=> b!7053626 (=> res!2879629 e!4240488)))

(declare-fun isEmpty!39713 (List!68212) Bool)

(assert (=> b!7053626 (= res!2879629 (isEmpty!39713 (exprs!7058 lt!2530805)))))

(declare-fun b!7053627 () Bool)

(assert (=> b!7053627 (= e!4240489 (matchZipper!3102 lt!2530818 (t!381992 s!7408)))))

(declare-fun b!7053628 () Bool)

(declare-fun e!4240492 () Bool)

(declare-fun tp!1939889 () Bool)

(assert (=> b!7053628 (= e!4240492 tp!1939889)))

(declare-fun b!7053629 () Bool)

(assert (=> b!7053629 (= e!4240496 e!4240491)))

(declare-fun res!2879632 () Bool)

(assert (=> b!7053629 (=> res!2879632 e!4240491)))

(assert (=> b!7053629 (= res!2879632 (not (= lt!2530811 lt!2530808)))))

(assert (=> b!7053629 (= lt!2530808 (set.union lt!2530797 lt!2530818))))

(assert (=> b!7053629 (= lt!2530818 (derivationStepZipperUp!2146 lt!2530807 (h!74537 s!7408)))))

(declare-fun derivationStepZipperDown!2196 (Regex!17562 Context!13116 C!35394) (Set Context!13116))

(assert (=> b!7053629 (= lt!2530797 (derivationStepZipperDown!2196 (h!74536 (exprs!7058 lt!2530805)) lt!2530807 (h!74537 s!7408)))))

(declare-fun ++!15645 (List!68212 List!68212) List!68212)

(assert (=> b!7053629 (= lt!2530807 (Context!13117 (++!15645 lt!2530809 (exprs!7058 ct2!306))))))

(declare-fun lt!2530802 () Unit!161797)

(assert (=> b!7053629 (= lt!2530802 (lemmaConcatPreservesForall!873 lt!2530809 (exprs!7058 ct2!306) lambda!419744))))

(declare-fun lt!2530817 () Unit!161797)

(assert (=> b!7053629 (= lt!2530817 (lemmaConcatPreservesForall!873 lt!2530809 (exprs!7058 ct2!306) lambda!419744))))

(declare-fun b!7053630 () Bool)

(declare-fun e!4240486 () Bool)

(assert (=> b!7053630 (= e!4240486 e!4240495)))

(declare-fun res!2879625 () Bool)

(assert (=> b!7053630 (=> res!2879625 e!4240495)))

(declare-fun lt!2530803 () (Set Context!13116))

(assert (=> b!7053630 (= res!2879625 (not (= lt!2530804 lt!2530803)))))

(assert (=> b!7053630 (= lt!2530804 (set.insert lt!2530820 (as set.empty (Set Context!13116))))))

(declare-fun lt!2530799 () Unit!161797)

(assert (=> b!7053630 (= lt!2530799 (lemmaConcatPreservesForall!873 (exprs!7058 lt!2530805) (exprs!7058 ct2!306) lambda!419744))))

(declare-fun setElem!49792 () Context!13116)

(declare-fun tp!1939892 () Bool)

(declare-fun setNonEmpty!49792 () Bool)

(assert (=> setNonEmpty!49792 (= setRes!49792 (and tp!1939892 (inv!86765 setElem!49792) e!4240492))))

(declare-fun z1!570 () (Set Context!13116))

(declare-fun setRest!49792 () (Set Context!13116))

(assert (=> setNonEmpty!49792 (= z1!570 (set.union (set.insert setElem!49792 (as set.empty (Set Context!13116))) setRest!49792))))

(declare-fun res!2879626 () Bool)

(declare-fun e!4240487 () Bool)

(assert (=> start!683874 (=> (not res!2879626) (not e!4240487))))

(assert (=> start!683874 (= res!2879626 (matchZipper!3102 lt!2530812 s!7408))))

(declare-fun appendTo!683 ((Set Context!13116) Context!13116) (Set Context!13116))

(assert (=> start!683874 (= lt!2530812 (appendTo!683 z1!570 ct2!306))))

(assert (=> start!683874 e!4240487))

(declare-fun condSetEmpty!49792 () Bool)

(assert (=> start!683874 (= condSetEmpty!49792 (= z1!570 (as set.empty (Set Context!13116))))))

(assert (=> start!683874 setRes!49792))

(declare-fun e!4240494 () Bool)

(assert (=> start!683874 (and (inv!86765 ct2!306) e!4240494)))

(declare-fun e!4240490 () Bool)

(assert (=> start!683874 e!4240490))

(declare-fun b!7053631 () Bool)

(declare-fun tp_is_empty!44349 () Bool)

(declare-fun tp!1939890 () Bool)

(assert (=> b!7053631 (= e!4240490 (and tp_is_empty!44349 tp!1939890))))

(assert (=> b!7053632 (= e!4240493 e!4240486)))

(declare-fun res!2879634 () Bool)

(assert (=> b!7053632 (=> res!2879634 e!4240486)))

(assert (=> b!7053632 (= res!2879634 (or (not (= lt!2530820 lt!2530816)) (not (set.member lt!2530805 z1!570))))))

(assert (=> b!7053632 (= lt!2530820 (Context!13117 (++!15645 (exprs!7058 lt!2530805) (exprs!7058 ct2!306))))))

(declare-fun lt!2530810 () Unit!161797)

(assert (=> b!7053632 (= lt!2530810 (lemmaConcatPreservesForall!873 (exprs!7058 lt!2530805) (exprs!7058 ct2!306) lambda!419744))))

(declare-fun lambda!419743 () Int)

(declare-fun mapPost2!391 ((Set Context!13116) Int Context!13116) Context!13116)

(assert (=> b!7053632 (= lt!2530805 (mapPost2!391 z1!570 lambda!419743 lt!2530816))))

(assert (=> b!7053633 (= e!4240487 (not e!4240493))))

(declare-fun res!2879627 () Bool)

(assert (=> b!7053633 (=> res!2879627 e!4240493)))

(assert (=> b!7053633 (= res!2879627 (not (matchZipper!3102 lt!2530803 s!7408)))))

(assert (=> b!7053633 (= lt!2530803 (set.insert lt!2530816 (as set.empty (Set Context!13116))))))

(declare-fun lambda!419742 () Int)

(declare-fun getWitness!1620 ((Set Context!13116) Int) Context!13116)

(assert (=> b!7053633 (= lt!2530816 (getWitness!1620 lt!2530812 lambda!419742))))

(declare-datatypes ((List!68214 0))(
  ( (Nil!68090) (Cons!68090 (h!74538 Context!13116) (t!381993 List!68214)) )
))
(declare-fun lt!2530813 () List!68214)

(declare-fun exists!3546 (List!68214 Int) Bool)

(assert (=> b!7053633 (exists!3546 lt!2530813 lambda!419742)))

(declare-fun lt!2530801 () Unit!161797)

(declare-fun lemmaZipperMatchesExistsMatchingContext!483 (List!68214 List!68213) Unit!161797)

(assert (=> b!7053633 (= lt!2530801 (lemmaZipperMatchesExistsMatchingContext!483 lt!2530813 s!7408))))

(declare-fun toList!10903 ((Set Context!13116)) List!68214)

(assert (=> b!7053633 (= lt!2530813 (toList!10903 lt!2530812))))

(declare-fun b!7053634 () Bool)

(declare-fun tp!1939891 () Bool)

(assert (=> b!7053634 (= e!4240494 tp!1939891)))

(declare-fun b!7053635 () Bool)

(declare-fun res!2879633 () Bool)

(assert (=> b!7053635 (=> res!2879633 e!4240488)))

(assert (=> b!7053635 (= res!2879633 (not (is-Cons!68088 (exprs!7058 lt!2530805))))))

(declare-fun b!7053636 () Bool)

(declare-fun res!2879630 () Bool)

(assert (=> b!7053636 (=> (not res!2879630) (not e!4240487))))

(assert (=> b!7053636 (= res!2879630 (is-Cons!68089 s!7408))))

(assert (= (and start!683874 res!2879626) b!7053636))

(assert (= (and b!7053636 res!2879630) b!7053633))

(assert (= (and b!7053633 (not res!2879627)) b!7053622))

(assert (= (and b!7053622 (not res!2879631)) b!7053632))

(assert (= (and b!7053632 (not res!2879634)) b!7053630))

(assert (= (and b!7053630 (not res!2879625)) b!7053624))

(assert (= (and b!7053624 (not res!2879623)) b!7053635))

(assert (= (and b!7053635 (not res!2879633)) b!7053626))

(assert (= (and b!7053626 (not res!2879629)) b!7053623))

(assert (= (and b!7053623 (not res!2879628)) b!7053629))

(assert (= (and b!7053629 (not res!2879632)) b!7053625))

(assert (= (and b!7053625 (not res!2879624)) b!7053627))

(assert (= (and start!683874 condSetEmpty!49792) setIsEmpty!49792))

(assert (= (and start!683874 (not condSetEmpty!49792)) setNonEmpty!49792))

(assert (= setNonEmpty!49792 b!7053628))

(assert (= start!683874 b!7053634))

(assert (= (and start!683874 (is-Cons!68089 s!7408)) b!7053631))

(declare-fun m!7770734 () Bool)

(assert (=> b!7053627 m!7770734))

(declare-fun m!7770736 () Bool)

(assert (=> b!7053622 m!7770736))

(declare-fun m!7770738 () Bool)

(assert (=> setNonEmpty!49792 m!7770738))

(declare-fun m!7770740 () Bool)

(assert (=> b!7053626 m!7770740))

(declare-fun m!7770742 () Bool)

(assert (=> b!7053633 m!7770742))

(declare-fun m!7770744 () Bool)

(assert (=> b!7053633 m!7770744))

(declare-fun m!7770746 () Bool)

(assert (=> b!7053633 m!7770746))

(declare-fun m!7770748 () Bool)

(assert (=> b!7053633 m!7770748))

(declare-fun m!7770750 () Bool)

(assert (=> b!7053633 m!7770750))

(declare-fun m!7770752 () Bool)

(assert (=> b!7053633 m!7770752))

(declare-fun m!7770754 () Bool)

(assert (=> start!683874 m!7770754))

(declare-fun m!7770756 () Bool)

(assert (=> start!683874 m!7770756))

(declare-fun m!7770758 () Bool)

(assert (=> start!683874 m!7770758))

(declare-fun m!7770760 () Bool)

(assert (=> b!7053632 m!7770760))

(declare-fun m!7770762 () Bool)

(assert (=> b!7053632 m!7770762))

(declare-fun m!7770764 () Bool)

(assert (=> b!7053632 m!7770764))

(declare-fun m!7770766 () Bool)

(assert (=> b!7053632 m!7770766))

(declare-fun m!7770768 () Bool)

(assert (=> b!7053623 m!7770768))

(declare-fun m!7770770 () Bool)

(assert (=> b!7053623 m!7770770))

(declare-fun m!7770772 () Bool)

(assert (=> b!7053625 m!7770772))

(declare-fun m!7770774 () Bool)

(assert (=> b!7053625 m!7770774))

(assert (=> b!7053625 m!7770772))

(assert (=> b!7053625 m!7770772))

(declare-fun m!7770776 () Bool)

(assert (=> b!7053625 m!7770776))

(declare-fun m!7770778 () Bool)

(assert (=> b!7053625 m!7770778))

(declare-fun m!7770780 () Bool)

(assert (=> b!7053625 m!7770780))

(declare-fun m!7770782 () Bool)

(assert (=> b!7053629 m!7770782))

(declare-fun m!7770784 () Bool)

(assert (=> b!7053629 m!7770784))

(assert (=> b!7053629 m!7770772))

(assert (=> b!7053629 m!7770772))

(declare-fun m!7770786 () Bool)

(assert (=> b!7053629 m!7770786))

(declare-fun m!7770788 () Bool)

(assert (=> b!7053630 m!7770788))

(assert (=> b!7053630 m!7770764))

(declare-fun m!7770790 () Bool)

(assert (=> b!7053624 m!7770790))

(declare-fun m!7770792 () Bool)

(assert (=> b!7053624 m!7770792))

(assert (=> b!7053624 m!7770764))

(declare-fun m!7770794 () Bool)

(assert (=> b!7053624 m!7770794))

(declare-fun m!7770796 () Bool)

(assert (=> b!7053624 m!7770796))

(push 1)

(assert (not b!7053634))

(assert (not b!7053626))

(assert (not b!7053627))

(assert (not b!7053623))

(assert (not start!683874))

(assert (not b!7053632))

(assert (not b!7053633))

(assert (not b!7053631))

(assert (not b!7053630))

(assert tp_is_empty!44349)

(assert (not b!7053628))

(assert (not b!7053625))

(assert (not b!7053629))

(assert (not b!7053624))

(assert (not setNonEmpty!49792))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1876743 () Bool)

(declare-fun d!2204261 () Bool)

(assert (= bs!1876743 (and d!2204261 b!7053632)))

(declare-fun lambda!419778 () Int)

(assert (=> bs!1876743 (= lambda!419778 lambda!419744)))

(declare-fun forall!16504 (List!68212 Int) Bool)

(assert (=> d!2204261 (= (inv!86765 setElem!49792) (forall!16504 (exprs!7058 setElem!49792) lambda!419778))))

(declare-fun bs!1876744 () Bool)

(assert (= bs!1876744 d!2204261))

(declare-fun m!7770862 () Bool)

(assert (=> bs!1876744 m!7770862))

(assert (=> setNonEmpty!49792 d!2204261))

(declare-fun b!7053704 () Bool)

(declare-fun res!2879676 () Bool)

(declare-fun e!4240535 () Bool)

(assert (=> b!7053704 (=> (not res!2879676) (not e!4240535))))

(declare-fun lt!2530897 () List!68212)

(declare-fun size!41145 (List!68212) Int)

(assert (=> b!7053704 (= res!2879676 (= (size!41145 lt!2530897) (+ (size!41145 (exprs!7058 lt!2530805)) (size!41145 (exprs!7058 ct2!306)))))))

(declare-fun b!7053705 () Bool)

(assert (=> b!7053705 (= e!4240535 (or (not (= (exprs!7058 ct2!306) Nil!68088)) (= lt!2530897 (exprs!7058 lt!2530805))))))

(declare-fun b!7053702 () Bool)

(declare-fun e!4240534 () List!68212)

(assert (=> b!7053702 (= e!4240534 (exprs!7058 ct2!306))))

(declare-fun d!2204263 () Bool)

(assert (=> d!2204263 e!4240535))

(declare-fun res!2879677 () Bool)

(assert (=> d!2204263 (=> (not res!2879677) (not e!4240535))))

(declare-fun content!13673 (List!68212) (Set Regex!17562))

(assert (=> d!2204263 (= res!2879677 (= (content!13673 lt!2530897) (set.union (content!13673 (exprs!7058 lt!2530805)) (content!13673 (exprs!7058 ct2!306)))))))

(assert (=> d!2204263 (= lt!2530897 e!4240534)))

(declare-fun c!1313945 () Bool)

(assert (=> d!2204263 (= c!1313945 (is-Nil!68088 (exprs!7058 lt!2530805)))))

(assert (=> d!2204263 (= (++!15645 (exprs!7058 lt!2530805) (exprs!7058 ct2!306)) lt!2530897)))

(declare-fun b!7053703 () Bool)

(assert (=> b!7053703 (= e!4240534 (Cons!68088 (h!74536 (exprs!7058 lt!2530805)) (++!15645 (t!381991 (exprs!7058 lt!2530805)) (exprs!7058 ct2!306))))))

(assert (= (and d!2204263 c!1313945) b!7053702))

(assert (= (and d!2204263 (not c!1313945)) b!7053703))

(assert (= (and d!2204263 res!2879677) b!7053704))

(assert (= (and b!7053704 res!2879676) b!7053705))

(declare-fun m!7770864 () Bool)

(assert (=> b!7053704 m!7770864))

(declare-fun m!7770866 () Bool)

(assert (=> b!7053704 m!7770866))

(declare-fun m!7770868 () Bool)

(assert (=> b!7053704 m!7770868))

(declare-fun m!7770870 () Bool)

(assert (=> d!2204263 m!7770870))

(declare-fun m!7770872 () Bool)

(assert (=> d!2204263 m!7770872))

(declare-fun m!7770874 () Bool)

(assert (=> d!2204263 m!7770874))

(declare-fun m!7770876 () Bool)

(assert (=> b!7053703 m!7770876))

(assert (=> b!7053632 d!2204263))

(declare-fun d!2204265 () Bool)

(assert (=> d!2204265 (forall!16504 (++!15645 (exprs!7058 lt!2530805) (exprs!7058 ct2!306)) lambda!419744)))

(declare-fun lt!2530900 () Unit!161797)

(declare-fun choose!53763 (List!68212 List!68212 Int) Unit!161797)

(assert (=> d!2204265 (= lt!2530900 (choose!53763 (exprs!7058 lt!2530805) (exprs!7058 ct2!306) lambda!419744))))

(assert (=> d!2204265 (forall!16504 (exprs!7058 lt!2530805) lambda!419744)))

(assert (=> d!2204265 (= (lemmaConcatPreservesForall!873 (exprs!7058 lt!2530805) (exprs!7058 ct2!306) lambda!419744) lt!2530900)))

(declare-fun bs!1876745 () Bool)

(assert (= bs!1876745 d!2204265))

(assert (=> bs!1876745 m!7770762))

(assert (=> bs!1876745 m!7770762))

(declare-fun m!7770878 () Bool)

(assert (=> bs!1876745 m!7770878))

(declare-fun m!7770880 () Bool)

(assert (=> bs!1876745 m!7770880))

(declare-fun m!7770882 () Bool)

(assert (=> bs!1876745 m!7770882))

(assert (=> b!7053632 d!2204265))

(declare-fun d!2204267 () Bool)

(declare-fun e!4240538 () Bool)

(assert (=> d!2204267 e!4240538))

(declare-fun res!2879680 () Bool)

(assert (=> d!2204267 (=> (not res!2879680) (not e!4240538))))

(declare-fun lt!2530903 () Context!13116)

(declare-fun dynLambda!27614 (Int Context!13116) Context!13116)

(assert (=> d!2204267 (= res!2879680 (= lt!2530816 (dynLambda!27614 lambda!419743 lt!2530903)))))

(declare-fun choose!53764 ((Set Context!13116) Int Context!13116) Context!13116)

(assert (=> d!2204267 (= lt!2530903 (choose!53764 z1!570 lambda!419743 lt!2530816))))

(declare-fun map!15881 ((Set Context!13116) Int) (Set Context!13116))

(assert (=> d!2204267 (set.member lt!2530816 (map!15881 z1!570 lambda!419743))))

(assert (=> d!2204267 (= (mapPost2!391 z1!570 lambda!419743 lt!2530816) lt!2530903)))

(declare-fun b!7053709 () Bool)

(assert (=> b!7053709 (= e!4240538 (set.member lt!2530903 z1!570))))

(assert (= (and d!2204267 res!2879680) b!7053709))

(declare-fun b_lambda!268571 () Bool)

(assert (=> (not b_lambda!268571) (not d!2204267)))

(declare-fun m!7770884 () Bool)

(assert (=> d!2204267 m!7770884))

(declare-fun m!7770886 () Bool)

(assert (=> d!2204267 m!7770886))

(declare-fun m!7770888 () Bool)

(assert (=> d!2204267 m!7770888))

(declare-fun m!7770890 () Bool)

(assert (=> d!2204267 m!7770890))

(declare-fun m!7770892 () Bool)

(assert (=> b!7053709 m!7770892))

(assert (=> b!7053632 d!2204267))

(assert (=> b!7053630 d!2204265))

(declare-fun d!2204269 () Bool)

(declare-fun c!1313948 () Bool)

(declare-fun isEmpty!39715 (List!68213) Bool)

(assert (=> d!2204269 (= c!1313948 (isEmpty!39715 (t!381992 s!7408)))))

(declare-fun e!4240541 () Bool)

(assert (=> d!2204269 (= (matchZipper!3102 lt!2530808 (t!381992 s!7408)) e!4240541)))

(declare-fun b!7053714 () Bool)

(declare-fun nullableZipper!2650 ((Set Context!13116)) Bool)

(assert (=> b!7053714 (= e!4240541 (nullableZipper!2650 lt!2530808))))

(declare-fun b!7053715 () Bool)

(declare-fun head!14351 (List!68213) C!35394)

(declare-fun tail!13687 (List!68213) List!68213)

(assert (=> b!7053715 (= e!4240541 (matchZipper!3102 (derivationStepZipper!3012 lt!2530808 (head!14351 (t!381992 s!7408))) (tail!13687 (t!381992 s!7408))))))

(assert (= (and d!2204269 c!1313948) b!7053714))

(assert (= (and d!2204269 (not c!1313948)) b!7053715))

(declare-fun m!7770894 () Bool)

(assert (=> d!2204269 m!7770894))

(declare-fun m!7770896 () Bool)

(assert (=> b!7053714 m!7770896))

(declare-fun m!7770898 () Bool)

(assert (=> b!7053715 m!7770898))

(assert (=> b!7053715 m!7770898))

(declare-fun m!7770900 () Bool)

(assert (=> b!7053715 m!7770900))

(declare-fun m!7770902 () Bool)

(assert (=> b!7053715 m!7770902))

(assert (=> b!7053715 m!7770900))

(assert (=> b!7053715 m!7770902))

(declare-fun m!7770904 () Bool)

(assert (=> b!7053715 m!7770904))

(assert (=> b!7053625 d!2204269))

(declare-fun d!2204271 () Bool)

(declare-fun c!1313949 () Bool)

(assert (=> d!2204271 (= c!1313949 (isEmpty!39715 (t!381992 s!7408)))))

(declare-fun e!4240542 () Bool)

(assert (=> d!2204271 (= (matchZipper!3102 lt!2530797 (t!381992 s!7408)) e!4240542)))

(declare-fun b!7053716 () Bool)

(assert (=> b!7053716 (= e!4240542 (nullableZipper!2650 lt!2530797))))

(declare-fun b!7053717 () Bool)

(assert (=> b!7053717 (= e!4240542 (matchZipper!3102 (derivationStepZipper!3012 lt!2530797 (head!14351 (t!381992 s!7408))) (tail!13687 (t!381992 s!7408))))))

(assert (= (and d!2204271 c!1313949) b!7053716))

(assert (= (and d!2204271 (not c!1313949)) b!7053717))

(assert (=> d!2204271 m!7770894))

(declare-fun m!7770906 () Bool)

(assert (=> b!7053716 m!7770906))

(assert (=> b!7053717 m!7770898))

(assert (=> b!7053717 m!7770898))

(declare-fun m!7770908 () Bool)

(assert (=> b!7053717 m!7770908))

(assert (=> b!7053717 m!7770902))

(assert (=> b!7053717 m!7770908))

(assert (=> b!7053717 m!7770902))

(declare-fun m!7770910 () Bool)

(assert (=> b!7053717 m!7770910))

(assert (=> b!7053625 d!2204271))

(declare-fun d!2204273 () Bool)

(declare-fun e!4240545 () Bool)

(assert (=> d!2204273 (= (matchZipper!3102 (set.union lt!2530797 lt!2530818) (t!381992 s!7408)) e!4240545)))

(declare-fun res!2879683 () Bool)

(assert (=> d!2204273 (=> res!2879683 e!4240545)))

(assert (=> d!2204273 (= res!2879683 (matchZipper!3102 lt!2530797 (t!381992 s!7408)))))

(declare-fun lt!2530906 () Unit!161797)

(declare-fun choose!53765 ((Set Context!13116) (Set Context!13116) List!68213) Unit!161797)

(assert (=> d!2204273 (= lt!2530906 (choose!53765 lt!2530797 lt!2530818 (t!381992 s!7408)))))

(assert (=> d!2204273 (= (lemmaZipperConcatMatchesSameAsBothZippers!1575 lt!2530797 lt!2530818 (t!381992 s!7408)) lt!2530906)))

(declare-fun b!7053720 () Bool)

(assert (=> b!7053720 (= e!4240545 (matchZipper!3102 lt!2530818 (t!381992 s!7408)))))

(assert (= (and d!2204273 (not res!2879683)) b!7053720))

(declare-fun m!7770912 () Bool)

(assert (=> d!2204273 m!7770912))

(assert (=> d!2204273 m!7770774))

(declare-fun m!7770914 () Bool)

(assert (=> d!2204273 m!7770914))

(assert (=> b!7053720 m!7770734))

(assert (=> b!7053625 d!2204273))

(declare-fun d!2204275 () Bool)

(assert (=> d!2204275 (forall!16504 (++!15645 lt!2530809 (exprs!7058 ct2!306)) lambda!419744)))

(declare-fun lt!2530907 () Unit!161797)

(assert (=> d!2204275 (= lt!2530907 (choose!53763 lt!2530809 (exprs!7058 ct2!306) lambda!419744))))

(assert (=> d!2204275 (forall!16504 lt!2530809 lambda!419744)))

(assert (=> d!2204275 (= (lemmaConcatPreservesForall!873 lt!2530809 (exprs!7058 ct2!306) lambda!419744) lt!2530907)))

(declare-fun bs!1876746 () Bool)

(assert (= bs!1876746 d!2204275))

(assert (=> bs!1876746 m!7770782))

(assert (=> bs!1876746 m!7770782))

(declare-fun m!7770916 () Bool)

(assert (=> bs!1876746 m!7770916))

(declare-fun m!7770918 () Bool)

(assert (=> bs!1876746 m!7770918))

(declare-fun m!7770920 () Bool)

(assert (=> bs!1876746 m!7770920))

(assert (=> b!7053625 d!2204275))

(declare-fun bs!1876747 () Bool)

(declare-fun d!2204277 () Bool)

(assert (= bs!1876747 (and d!2204277 b!7053632)))

(declare-fun lambda!419779 () Int)

(assert (=> bs!1876747 (= lambda!419779 lambda!419744)))

(declare-fun bs!1876748 () Bool)

(assert (= bs!1876748 (and d!2204277 d!2204261)))

(assert (=> bs!1876748 (= lambda!419779 lambda!419778)))

(assert (=> d!2204277 (= (inv!86765 lt!2530807) (forall!16504 (exprs!7058 lt!2530807) lambda!419779))))

(declare-fun bs!1876749 () Bool)

(assert (= bs!1876749 d!2204277))

(declare-fun m!7770922 () Bool)

(assert (=> bs!1876749 m!7770922))

(assert (=> b!7053625 d!2204277))

(declare-fun bs!1876750 () Bool)

(declare-fun d!2204279 () Bool)

(assert (= bs!1876750 (and d!2204279 b!7053633)))

(declare-fun lambda!419782 () Int)

(assert (=> bs!1876750 (not (= lambda!419782 lambda!419742))))

(assert (=> d!2204279 true))

(declare-fun order!28301 () Int)

(declare-fun dynLambda!27615 (Int Int) Int)

(assert (=> d!2204279 (< (dynLambda!27615 order!28301 lambda!419742) (dynLambda!27615 order!28301 lambda!419782))))

(declare-fun forall!16505 (List!68214 Int) Bool)

(assert (=> d!2204279 (= (exists!3546 lt!2530813 lambda!419742) (not (forall!16505 lt!2530813 lambda!419782)))))

(declare-fun bs!1876751 () Bool)

(assert (= bs!1876751 d!2204279))

(declare-fun m!7770924 () Bool)

(assert (=> bs!1876751 m!7770924))

(assert (=> b!7053633 d!2204279))

(declare-fun d!2204281 () Bool)

(declare-fun e!4240548 () Bool)

(assert (=> d!2204281 e!4240548))

(declare-fun res!2879686 () Bool)

(assert (=> d!2204281 (=> (not res!2879686) (not e!4240548))))

(declare-fun lt!2530910 () List!68214)

(declare-fun noDuplicate!2684 (List!68214) Bool)

(assert (=> d!2204281 (= res!2879686 (noDuplicate!2684 lt!2530910))))

(declare-fun choose!53766 ((Set Context!13116)) List!68214)

(assert (=> d!2204281 (= lt!2530910 (choose!53766 lt!2530812))))

(assert (=> d!2204281 (= (toList!10903 lt!2530812) lt!2530910)))

(declare-fun b!7053725 () Bool)

(declare-fun content!13674 (List!68214) (Set Context!13116))

(assert (=> b!7053725 (= e!4240548 (= (content!13674 lt!2530910) lt!2530812))))

(assert (= (and d!2204281 res!2879686) b!7053725))

(declare-fun m!7770926 () Bool)

(assert (=> d!2204281 m!7770926))

(declare-fun m!7770928 () Bool)

(assert (=> d!2204281 m!7770928))

(declare-fun m!7770930 () Bool)

(assert (=> b!7053725 m!7770930))

(assert (=> b!7053633 d!2204281))

(declare-fun d!2204283 () Bool)

(declare-fun e!4240551 () Bool)

(assert (=> d!2204283 e!4240551))

(declare-fun res!2879689 () Bool)

(assert (=> d!2204283 (=> (not res!2879689) (not e!4240551))))

(declare-fun lt!2530913 () Context!13116)

(declare-fun dynLambda!27616 (Int Context!13116) Bool)

(assert (=> d!2204283 (= res!2879689 (dynLambda!27616 lambda!419742 lt!2530913))))

(declare-fun getWitness!1622 (List!68214 Int) Context!13116)

(assert (=> d!2204283 (= lt!2530913 (getWitness!1622 (toList!10903 lt!2530812) lambda!419742))))

(declare-fun exists!3548 ((Set Context!13116) Int) Bool)

(assert (=> d!2204283 (exists!3548 lt!2530812 lambda!419742)))

(assert (=> d!2204283 (= (getWitness!1620 lt!2530812 lambda!419742) lt!2530913)))

(declare-fun b!7053728 () Bool)

(assert (=> b!7053728 (= e!4240551 (set.member lt!2530913 lt!2530812))))

(assert (= (and d!2204283 res!2879689) b!7053728))

(declare-fun b_lambda!268573 () Bool)

(assert (=> (not b_lambda!268573) (not d!2204283)))

(declare-fun m!7770932 () Bool)

(assert (=> d!2204283 m!7770932))

(assert (=> d!2204283 m!7770750))

(assert (=> d!2204283 m!7770750))

(declare-fun m!7770934 () Bool)

(assert (=> d!2204283 m!7770934))

(declare-fun m!7770936 () Bool)

(assert (=> d!2204283 m!7770936))

(declare-fun m!7770938 () Bool)

(assert (=> b!7053728 m!7770938))

(assert (=> b!7053633 d!2204283))

(declare-fun d!2204285 () Bool)

(declare-fun c!1313950 () Bool)

(assert (=> d!2204285 (= c!1313950 (isEmpty!39715 s!7408))))

(declare-fun e!4240552 () Bool)

(assert (=> d!2204285 (= (matchZipper!3102 lt!2530803 s!7408) e!4240552)))

(declare-fun b!7053729 () Bool)

(assert (=> b!7053729 (= e!4240552 (nullableZipper!2650 lt!2530803))))

(declare-fun b!7053730 () Bool)

(assert (=> b!7053730 (= e!4240552 (matchZipper!3102 (derivationStepZipper!3012 lt!2530803 (head!14351 s!7408)) (tail!13687 s!7408)))))

(assert (= (and d!2204285 c!1313950) b!7053729))

(assert (= (and d!2204285 (not c!1313950)) b!7053730))

(declare-fun m!7770940 () Bool)

(assert (=> d!2204285 m!7770940))

(declare-fun m!7770942 () Bool)

(assert (=> b!7053729 m!7770942))

(declare-fun m!7770944 () Bool)

(assert (=> b!7053730 m!7770944))

(assert (=> b!7053730 m!7770944))

(declare-fun m!7770946 () Bool)

(assert (=> b!7053730 m!7770946))

(declare-fun m!7770948 () Bool)

(assert (=> b!7053730 m!7770948))

(assert (=> b!7053730 m!7770946))

(assert (=> b!7053730 m!7770948))

(declare-fun m!7770950 () Bool)

(assert (=> b!7053730 m!7770950))

(assert (=> b!7053633 d!2204285))

(declare-fun bs!1876752 () Bool)

(declare-fun d!2204287 () Bool)

(assert (= bs!1876752 (and d!2204287 b!7053633)))

(declare-fun lambda!419785 () Int)

(assert (=> bs!1876752 (= lambda!419785 lambda!419742)))

(declare-fun bs!1876753 () Bool)

(assert (= bs!1876753 (and d!2204287 d!2204279)))

(assert (=> bs!1876753 (not (= lambda!419785 lambda!419782))))

(assert (=> d!2204287 true))

(assert (=> d!2204287 (exists!3546 lt!2530813 lambda!419785)))

(declare-fun lt!2530916 () Unit!161797)

(declare-fun choose!53767 (List!68214 List!68213) Unit!161797)

(assert (=> d!2204287 (= lt!2530916 (choose!53767 lt!2530813 s!7408))))

(assert (=> d!2204287 (matchZipper!3102 (content!13674 lt!2530813) s!7408)))

(assert (=> d!2204287 (= (lemmaZipperMatchesExistsMatchingContext!483 lt!2530813 s!7408) lt!2530916)))

(declare-fun bs!1876754 () Bool)

(assert (= bs!1876754 d!2204287))

(declare-fun m!7770952 () Bool)

(assert (=> bs!1876754 m!7770952))

(declare-fun m!7770954 () Bool)

(assert (=> bs!1876754 m!7770954))

(declare-fun m!7770956 () Bool)

(assert (=> bs!1876754 m!7770956))

(assert (=> bs!1876754 m!7770956))

(declare-fun m!7770958 () Bool)

(assert (=> bs!1876754 m!7770958))

(assert (=> b!7053633 d!2204287))

(declare-fun d!2204289 () Bool)

(declare-fun nullableFct!2769 (Regex!17562) Bool)

(assert (=> d!2204289 (= (nullable!7245 (h!74536 (exprs!7058 lt!2530805))) (nullableFct!2769 (h!74536 (exprs!7058 lt!2530805))))))

(declare-fun bs!1876755 () Bool)

(assert (= bs!1876755 d!2204289))

(declare-fun m!7770960 () Bool)

(assert (=> bs!1876755 m!7770960))

(assert (=> b!7053623 d!2204289))

(declare-fun d!2204291 () Bool)

(assert (=> d!2204291 (= (tail!13685 (exprs!7058 lt!2530805)) (t!381991 (exprs!7058 lt!2530805)))))

(assert (=> b!7053623 d!2204291))

(declare-fun bs!1876756 () Bool)

(declare-fun d!2204293 () Bool)

(assert (= bs!1876756 (and d!2204293 b!7053624)))

(declare-fun lambda!419788 () Int)

(assert (=> bs!1876756 (= lambda!419788 lambda!419745)))

(assert (=> d!2204293 true))

(assert (=> d!2204293 (= (derivationStepZipper!3012 lt!2530804 (h!74537 s!7408)) (flatMap!2488 lt!2530804 lambda!419788))))

(declare-fun bs!1876757 () Bool)

(assert (= bs!1876757 d!2204293))

(declare-fun m!7770962 () Bool)

(assert (=> bs!1876757 m!7770962))

(assert (=> b!7053624 d!2204293))

(declare-fun d!2204295 () Bool)

(declare-fun choose!53768 ((Set Context!13116) Int) (Set Context!13116))

(assert (=> d!2204295 (= (flatMap!2488 lt!2530804 lambda!419745) (choose!53768 lt!2530804 lambda!419745))))

(declare-fun bs!1876758 () Bool)

(assert (= bs!1876758 d!2204295))

(declare-fun m!7770964 () Bool)

(assert (=> bs!1876758 m!7770964))

(assert (=> b!7053624 d!2204295))

(declare-fun d!2204297 () Bool)

(declare-fun dynLambda!27617 (Int Context!13116) (Set Context!13116))

(assert (=> d!2204297 (= (flatMap!2488 lt!2530804 lambda!419745) (dynLambda!27617 lambda!419745 lt!2530820))))

(declare-fun lt!2530919 () Unit!161797)

(declare-fun choose!53769 ((Set Context!13116) Context!13116 Int) Unit!161797)

(assert (=> d!2204297 (= lt!2530919 (choose!53769 lt!2530804 lt!2530820 lambda!419745))))

(assert (=> d!2204297 (= lt!2530804 (set.insert lt!2530820 (as set.empty (Set Context!13116))))))

(assert (=> d!2204297 (= (lemmaFlatMapOnSingletonSet!1997 lt!2530804 lt!2530820 lambda!419745) lt!2530919)))

(declare-fun b_lambda!268575 () Bool)

(assert (=> (not b_lambda!268575) (not d!2204297)))

(declare-fun bs!1876759 () Bool)

(assert (= bs!1876759 d!2204297))

(assert (=> bs!1876759 m!7770792))

(declare-fun m!7770966 () Bool)

(assert (=> bs!1876759 m!7770966))

(declare-fun m!7770968 () Bool)

(assert (=> bs!1876759 m!7770968))

(assert (=> bs!1876759 m!7770788))

(assert (=> b!7053624 d!2204297))

(declare-fun b!7053743 () Bool)

(declare-fun e!4240559 () (Set Context!13116))

(declare-fun call!640718 () (Set Context!13116))

(assert (=> b!7053743 (= e!4240559 call!640718)))

(declare-fun b!7053744 () Bool)

(assert (=> b!7053744 (= e!4240559 (as set.empty (Set Context!13116)))))

(declare-fun b!7053745 () Bool)

(declare-fun e!4240561 () (Set Context!13116))

(assert (=> b!7053745 (= e!4240561 (set.union call!640718 (derivationStepZipperUp!2146 (Context!13117 (t!381991 (exprs!7058 lt!2530820))) (h!74537 s!7408))))))

(declare-fun bm!640713 () Bool)

(assert (=> bm!640713 (= call!640718 (derivationStepZipperDown!2196 (h!74536 (exprs!7058 lt!2530820)) (Context!13117 (t!381991 (exprs!7058 lt!2530820))) (h!74537 s!7408)))))

(declare-fun b!7053747 () Bool)

(declare-fun e!4240560 () Bool)

(assert (=> b!7053747 (= e!4240560 (nullable!7245 (h!74536 (exprs!7058 lt!2530820))))))

(declare-fun b!7053746 () Bool)

(assert (=> b!7053746 (= e!4240561 e!4240559)))

(declare-fun c!1313960 () Bool)

(assert (=> b!7053746 (= c!1313960 (is-Cons!68088 (exprs!7058 lt!2530820)))))

(declare-fun d!2204299 () Bool)

(declare-fun c!1313959 () Bool)

(assert (=> d!2204299 (= c!1313959 e!4240560)))

(declare-fun res!2879692 () Bool)

(assert (=> d!2204299 (=> (not res!2879692) (not e!4240560))))

(assert (=> d!2204299 (= res!2879692 (is-Cons!68088 (exprs!7058 lt!2530820)))))

(assert (=> d!2204299 (= (derivationStepZipperUp!2146 lt!2530820 (h!74537 s!7408)) e!4240561)))

(assert (= (and d!2204299 res!2879692) b!7053747))

(assert (= (and d!2204299 c!1313959) b!7053745))

(assert (= (and d!2204299 (not c!1313959)) b!7053746))

(assert (= (and b!7053746 c!1313960) b!7053743))

(assert (= (and b!7053746 (not c!1313960)) b!7053744))

(assert (= (or b!7053745 b!7053743) bm!640713))

(declare-fun m!7770970 () Bool)

(assert (=> b!7053745 m!7770970))

(declare-fun m!7770972 () Bool)

(assert (=> bm!640713 m!7770972))

(declare-fun m!7770974 () Bool)

(assert (=> b!7053747 m!7770974))

(assert (=> b!7053624 d!2204299))

(assert (=> b!7053624 d!2204265))

(declare-fun d!2204301 () Bool)

(assert (=> d!2204301 (= (isEmpty!39713 (exprs!7058 lt!2530805)) (is-Nil!68088 (exprs!7058 lt!2530805)))))

(assert (=> b!7053626 d!2204301))

(declare-fun d!2204303 () Bool)

(declare-fun c!1313961 () Bool)

(assert (=> d!2204303 (= c!1313961 (isEmpty!39715 s!7408))))

(declare-fun e!4240562 () Bool)

(assert (=> d!2204303 (= (matchZipper!3102 lt!2530812 s!7408) e!4240562)))

(declare-fun b!7053748 () Bool)

(assert (=> b!7053748 (= e!4240562 (nullableZipper!2650 lt!2530812))))

(declare-fun b!7053749 () Bool)

(assert (=> b!7053749 (= e!4240562 (matchZipper!3102 (derivationStepZipper!3012 lt!2530812 (head!14351 s!7408)) (tail!13687 s!7408)))))

(assert (= (and d!2204303 c!1313961) b!7053748))

(assert (= (and d!2204303 (not c!1313961)) b!7053749))

(assert (=> d!2204303 m!7770940))

(declare-fun m!7770976 () Bool)

(assert (=> b!7053748 m!7770976))

(assert (=> b!7053749 m!7770944))

(assert (=> b!7053749 m!7770944))

(declare-fun m!7770978 () Bool)

(assert (=> b!7053749 m!7770978))

(assert (=> b!7053749 m!7770948))

(assert (=> b!7053749 m!7770978))

(assert (=> b!7053749 m!7770948))

(declare-fun m!7770980 () Bool)

(assert (=> b!7053749 m!7770980))

(assert (=> start!683874 d!2204303))

(declare-fun bs!1876760 () Bool)

(declare-fun d!2204305 () Bool)

(assert (= bs!1876760 (and d!2204305 b!7053632)))

(declare-fun lambda!419793 () Int)

(assert (=> bs!1876760 (= lambda!419793 lambda!419743)))

(assert (=> d!2204305 true))

(assert (=> d!2204305 (= (appendTo!683 z1!570 ct2!306) (map!15881 z1!570 lambda!419793))))

(declare-fun bs!1876761 () Bool)

(assert (= bs!1876761 d!2204305))

(declare-fun m!7770982 () Bool)

(assert (=> bs!1876761 m!7770982))

(assert (=> start!683874 d!2204305))

(declare-fun bs!1876762 () Bool)

(declare-fun d!2204307 () Bool)

(assert (= bs!1876762 (and d!2204307 b!7053632)))

(declare-fun lambda!419794 () Int)

(assert (=> bs!1876762 (= lambda!419794 lambda!419744)))

(declare-fun bs!1876763 () Bool)

(assert (= bs!1876763 (and d!2204307 d!2204261)))

(assert (=> bs!1876763 (= lambda!419794 lambda!419778)))

(declare-fun bs!1876764 () Bool)

(assert (= bs!1876764 (and d!2204307 d!2204277)))

(assert (=> bs!1876764 (= lambda!419794 lambda!419779)))

(assert (=> d!2204307 (= (inv!86765 ct2!306) (forall!16504 (exprs!7058 ct2!306) lambda!419794))))

(declare-fun bs!1876765 () Bool)

(assert (= bs!1876765 d!2204307))

(declare-fun m!7770984 () Bool)

(assert (=> bs!1876765 m!7770984))

(assert (=> start!683874 d!2204307))

(declare-fun d!2204309 () Bool)

(declare-fun c!1313963 () Bool)

(assert (=> d!2204309 (= c!1313963 (isEmpty!39715 (t!381992 s!7408)))))

(declare-fun e!4240563 () Bool)

(assert (=> d!2204309 (= (matchZipper!3102 lt!2530818 (t!381992 s!7408)) e!4240563)))

(declare-fun b!7053750 () Bool)

(assert (=> b!7053750 (= e!4240563 (nullableZipper!2650 lt!2530818))))

(declare-fun b!7053751 () Bool)

(assert (=> b!7053751 (= e!4240563 (matchZipper!3102 (derivationStepZipper!3012 lt!2530818 (head!14351 (t!381992 s!7408))) (tail!13687 (t!381992 s!7408))))))

(assert (= (and d!2204309 c!1313963) b!7053750))

(assert (= (and d!2204309 (not c!1313963)) b!7053751))

(assert (=> d!2204309 m!7770894))

(declare-fun m!7770986 () Bool)

(assert (=> b!7053750 m!7770986))

(assert (=> b!7053751 m!7770898))

(assert (=> b!7053751 m!7770898))

(declare-fun m!7770988 () Bool)

(assert (=> b!7053751 m!7770988))

(assert (=> b!7053751 m!7770902))

(assert (=> b!7053751 m!7770988))

(assert (=> b!7053751 m!7770902))

(declare-fun m!7770990 () Bool)

(assert (=> b!7053751 m!7770990))

(assert (=> b!7053627 d!2204309))

(declare-fun b!7053774 () Bool)

(declare-fun e!4240577 () (Set Context!13116))

(declare-fun call!640731 () (Set Context!13116))

(declare-fun call!640733 () (Set Context!13116))

(assert (=> b!7053774 (= e!4240577 (set.union call!640731 call!640733))))

(declare-fun b!7053775 () Bool)

(declare-fun c!1313977 () Bool)

(assert (=> b!7053775 (= c!1313977 (is-Star!17562 (h!74536 (exprs!7058 lt!2530805))))))

(declare-fun e!4240576 () (Set Context!13116))

(declare-fun e!4240580 () (Set Context!13116))

(assert (=> b!7053775 (= e!4240576 e!4240580)))

(declare-fun bm!640726 () Bool)

(declare-fun call!640736 () (Set Context!13116))

(assert (=> bm!640726 (= call!640733 call!640736)))

(declare-fun b!7053776 () Bool)

(assert (=> b!7053776 (= e!4240580 (as set.empty (Set Context!13116)))))

(declare-fun d!2204311 () Bool)

(declare-fun c!1313976 () Bool)

(assert (=> d!2204311 (= c!1313976 (and (is-ElementMatch!17562 (h!74536 (exprs!7058 lt!2530805))) (= (c!1313933 (h!74536 (exprs!7058 lt!2530805))) (h!74537 s!7408))))))

(declare-fun e!4240581 () (Set Context!13116))

(assert (=> d!2204311 (= (derivationStepZipperDown!2196 (h!74536 (exprs!7058 lt!2530805)) lt!2530807 (h!74537 s!7408)) e!4240581)))

(declare-fun b!7053777 () Bool)

(assert (=> b!7053777 (= e!4240581 (set.insert lt!2530807 (as set.empty (Set Context!13116))))))

(declare-fun b!7053778 () Bool)

(declare-fun c!1313978 () Bool)

(declare-fun e!4240578 () Bool)

(assert (=> b!7053778 (= c!1313978 e!4240578)))

(declare-fun res!2879696 () Bool)

(assert (=> b!7053778 (=> (not res!2879696) (not e!4240578))))

(assert (=> b!7053778 (= res!2879696 (is-Concat!26407 (h!74536 (exprs!7058 lt!2530805))))))

(declare-fun e!4240579 () (Set Context!13116))

(assert (=> b!7053778 (= e!4240579 e!4240577)))

(declare-fun b!7053779 () Bool)

(assert (=> b!7053779 (= e!4240579 (set.union call!640736 call!640731))))

(declare-fun bm!640727 () Bool)

(declare-fun c!1313975 () Bool)

(declare-fun call!640735 () List!68212)

(declare-fun c!1313974 () Bool)

(assert (=> bm!640727 (= call!640736 (derivationStepZipperDown!2196 (ite c!1313975 (regOne!35637 (h!74536 (exprs!7058 lt!2530805))) (ite c!1313978 (regTwo!35636 (h!74536 (exprs!7058 lt!2530805))) (ite c!1313974 (regOne!35636 (h!74536 (exprs!7058 lt!2530805))) (reg!17891 (h!74536 (exprs!7058 lt!2530805)))))) (ite (or c!1313975 c!1313978) lt!2530807 (Context!13117 call!640735)) (h!74537 s!7408)))))

(declare-fun b!7053780 () Bool)

(declare-fun call!640734 () (Set Context!13116))

(assert (=> b!7053780 (= e!4240580 call!640734)))

(declare-fun call!640732 () List!68212)

(declare-fun bm!640728 () Bool)

(assert (=> bm!640728 (= call!640731 (derivationStepZipperDown!2196 (ite c!1313975 (regTwo!35637 (h!74536 (exprs!7058 lt!2530805))) (regOne!35636 (h!74536 (exprs!7058 lt!2530805)))) (ite c!1313975 lt!2530807 (Context!13117 call!640732)) (h!74537 s!7408)))))

(declare-fun bm!640729 () Bool)

(assert (=> bm!640729 (= call!640735 call!640732)))

(declare-fun b!7053781 () Bool)

(assert (=> b!7053781 (= e!4240577 e!4240576)))

(assert (=> b!7053781 (= c!1313974 (is-Concat!26407 (h!74536 (exprs!7058 lt!2530805))))))

(declare-fun b!7053782 () Bool)

(assert (=> b!7053782 (= e!4240578 (nullable!7245 (regOne!35636 (h!74536 (exprs!7058 lt!2530805)))))))

(declare-fun b!7053783 () Bool)

(assert (=> b!7053783 (= e!4240576 call!640734)))

(declare-fun b!7053784 () Bool)

(assert (=> b!7053784 (= e!4240581 e!4240579)))

(assert (=> b!7053784 (= c!1313975 (is-Union!17562 (h!74536 (exprs!7058 lt!2530805))))))

(declare-fun bm!640730 () Bool)

(declare-fun $colon$colon!2615 (List!68212 Regex!17562) List!68212)

(assert (=> bm!640730 (= call!640732 ($colon$colon!2615 (exprs!7058 lt!2530807) (ite (or c!1313978 c!1313974) (regTwo!35636 (h!74536 (exprs!7058 lt!2530805))) (h!74536 (exprs!7058 lt!2530805)))))))

(declare-fun bm!640731 () Bool)

(assert (=> bm!640731 (= call!640734 call!640733)))

(assert (= (and d!2204311 c!1313976) b!7053777))

(assert (= (and d!2204311 (not c!1313976)) b!7053784))

(assert (= (and b!7053784 c!1313975) b!7053779))

(assert (= (and b!7053784 (not c!1313975)) b!7053778))

(assert (= (and b!7053778 res!2879696) b!7053782))

(assert (= (and b!7053778 c!1313978) b!7053774))

(assert (= (and b!7053778 (not c!1313978)) b!7053781))

(assert (= (and b!7053781 c!1313974) b!7053783))

(assert (= (and b!7053781 (not c!1313974)) b!7053775))

(assert (= (and b!7053775 c!1313977) b!7053780))

(assert (= (and b!7053775 (not c!1313977)) b!7053776))

(assert (= (or b!7053783 b!7053780) bm!640729))

(assert (= (or b!7053783 b!7053780) bm!640731))

(assert (= (or b!7053774 bm!640731) bm!640726))

(assert (= (or b!7053774 bm!640729) bm!640730))

(assert (= (or b!7053779 bm!640726) bm!640727))

(assert (= (or b!7053779 b!7053774) bm!640728))

(declare-fun m!7770992 () Bool)

(assert (=> bm!640730 m!7770992))

(declare-fun m!7770994 () Bool)

(assert (=> b!7053782 m!7770994))

(declare-fun m!7770996 () Bool)

(assert (=> b!7053777 m!7770996))

(declare-fun m!7770998 () Bool)

(assert (=> bm!640728 m!7770998))

(declare-fun m!7771000 () Bool)

(assert (=> bm!640727 m!7771000))

(assert (=> b!7053629 d!2204311))

(declare-fun b!7053787 () Bool)

(declare-fun res!2879697 () Bool)

(declare-fun e!4240583 () Bool)

(assert (=> b!7053787 (=> (not res!2879697) (not e!4240583))))

(declare-fun lt!2530922 () List!68212)

(assert (=> b!7053787 (= res!2879697 (= (size!41145 lt!2530922) (+ (size!41145 lt!2530809) (size!41145 (exprs!7058 ct2!306)))))))

(declare-fun b!7053788 () Bool)

(assert (=> b!7053788 (= e!4240583 (or (not (= (exprs!7058 ct2!306) Nil!68088)) (= lt!2530922 lt!2530809)))))

(declare-fun b!7053785 () Bool)

(declare-fun e!4240582 () List!68212)

(assert (=> b!7053785 (= e!4240582 (exprs!7058 ct2!306))))

(declare-fun d!2204313 () Bool)

(assert (=> d!2204313 e!4240583))

(declare-fun res!2879698 () Bool)

(assert (=> d!2204313 (=> (not res!2879698) (not e!4240583))))

(assert (=> d!2204313 (= res!2879698 (= (content!13673 lt!2530922) (set.union (content!13673 lt!2530809) (content!13673 (exprs!7058 ct2!306)))))))

(assert (=> d!2204313 (= lt!2530922 e!4240582)))

(declare-fun c!1313979 () Bool)

(assert (=> d!2204313 (= c!1313979 (is-Nil!68088 lt!2530809))))

(assert (=> d!2204313 (= (++!15645 lt!2530809 (exprs!7058 ct2!306)) lt!2530922)))

(declare-fun b!7053786 () Bool)

(assert (=> b!7053786 (= e!4240582 (Cons!68088 (h!74536 lt!2530809) (++!15645 (t!381991 lt!2530809) (exprs!7058 ct2!306))))))

(assert (= (and d!2204313 c!1313979) b!7053785))

(assert (= (and d!2204313 (not c!1313979)) b!7053786))

(assert (= (and d!2204313 res!2879698) b!7053787))

(assert (= (and b!7053787 res!2879697) b!7053788))

(declare-fun m!7771002 () Bool)

(assert (=> b!7053787 m!7771002))

(declare-fun m!7771004 () Bool)

(assert (=> b!7053787 m!7771004))

(assert (=> b!7053787 m!7770868))

(declare-fun m!7771006 () Bool)

(assert (=> d!2204313 m!7771006))

(declare-fun m!7771008 () Bool)

(assert (=> d!2204313 m!7771008))

(assert (=> d!2204313 m!7770874))

(declare-fun m!7771010 () Bool)

(assert (=> b!7053786 m!7771010))

(assert (=> b!7053629 d!2204313))

(declare-fun b!7053789 () Bool)

(declare-fun e!4240584 () (Set Context!13116))

(declare-fun call!640737 () (Set Context!13116))

(assert (=> b!7053789 (= e!4240584 call!640737)))

(declare-fun b!7053790 () Bool)

(assert (=> b!7053790 (= e!4240584 (as set.empty (Set Context!13116)))))

(declare-fun b!7053791 () Bool)

(declare-fun e!4240586 () (Set Context!13116))

(assert (=> b!7053791 (= e!4240586 (set.union call!640737 (derivationStepZipperUp!2146 (Context!13117 (t!381991 (exprs!7058 lt!2530807))) (h!74537 s!7408))))))

(declare-fun bm!640732 () Bool)

(assert (=> bm!640732 (= call!640737 (derivationStepZipperDown!2196 (h!74536 (exprs!7058 lt!2530807)) (Context!13117 (t!381991 (exprs!7058 lt!2530807))) (h!74537 s!7408)))))

(declare-fun b!7053793 () Bool)

(declare-fun e!4240585 () Bool)

(assert (=> b!7053793 (= e!4240585 (nullable!7245 (h!74536 (exprs!7058 lt!2530807))))))

(declare-fun b!7053792 () Bool)

(assert (=> b!7053792 (= e!4240586 e!4240584)))

(declare-fun c!1313981 () Bool)

(assert (=> b!7053792 (= c!1313981 (is-Cons!68088 (exprs!7058 lt!2530807)))))

(declare-fun d!2204315 () Bool)

(declare-fun c!1313980 () Bool)

(assert (=> d!2204315 (= c!1313980 e!4240585)))

(declare-fun res!2879699 () Bool)

(assert (=> d!2204315 (=> (not res!2879699) (not e!4240585))))

(assert (=> d!2204315 (= res!2879699 (is-Cons!68088 (exprs!7058 lt!2530807)))))

(assert (=> d!2204315 (= (derivationStepZipperUp!2146 lt!2530807 (h!74537 s!7408)) e!4240586)))

(assert (= (and d!2204315 res!2879699) b!7053793))

(assert (= (and d!2204315 c!1313980) b!7053791))

(assert (= (and d!2204315 (not c!1313980)) b!7053792))

(assert (= (and b!7053792 c!1313981) b!7053789))

(assert (= (and b!7053792 (not c!1313981)) b!7053790))

(assert (= (or b!7053791 b!7053789) bm!640732))

(declare-fun m!7771012 () Bool)

(assert (=> b!7053791 m!7771012))

(declare-fun m!7771014 () Bool)

(assert (=> bm!640732 m!7771014))

(declare-fun m!7771016 () Bool)

(assert (=> b!7053793 m!7771016))

(assert (=> b!7053629 d!2204315))

(assert (=> b!7053629 d!2204275))

(declare-fun condSetEmpty!49798 () Bool)

(assert (=> setNonEmpty!49792 (= condSetEmpty!49798 (= setRest!49792 (as set.empty (Set Context!13116))))))

(declare-fun setRes!49798 () Bool)

(assert (=> setNonEmpty!49792 (= tp!1939892 setRes!49798)))

(declare-fun setIsEmpty!49798 () Bool)

(assert (=> setIsEmpty!49798 setRes!49798))

(declare-fun tp!1939910 () Bool)

(declare-fun setNonEmpty!49798 () Bool)

(declare-fun setElem!49798 () Context!13116)

(declare-fun e!4240589 () Bool)

(assert (=> setNonEmpty!49798 (= setRes!49798 (and tp!1939910 (inv!86765 setElem!49798) e!4240589))))

(declare-fun setRest!49798 () (Set Context!13116))

(assert (=> setNonEmpty!49798 (= setRest!49792 (set.union (set.insert setElem!49798 (as set.empty (Set Context!13116))) setRest!49798))))

(declare-fun b!7053798 () Bool)

(declare-fun tp!1939909 () Bool)

(assert (=> b!7053798 (= e!4240589 tp!1939909)))

(assert (= (and setNonEmpty!49792 condSetEmpty!49798) setIsEmpty!49798))

(assert (= (and setNonEmpty!49792 (not condSetEmpty!49798)) setNonEmpty!49798))

(assert (= setNonEmpty!49798 b!7053798))

(declare-fun m!7771018 () Bool)

(assert (=> setNonEmpty!49798 m!7771018))

(declare-fun b!7053803 () Bool)

(declare-fun e!4240592 () Bool)

(declare-fun tp!1939913 () Bool)

(assert (=> b!7053803 (= e!4240592 (and tp_is_empty!44349 tp!1939913))))

(assert (=> b!7053631 (= tp!1939890 e!4240592)))

(assert (= (and b!7053631 (is-Cons!68089 (t!381992 s!7408))) b!7053803))

(declare-fun b!7053808 () Bool)

(declare-fun e!4240595 () Bool)

(declare-fun tp!1939918 () Bool)

(declare-fun tp!1939919 () Bool)

(assert (=> b!7053808 (= e!4240595 (and tp!1939918 tp!1939919))))

(assert (=> b!7053634 (= tp!1939891 e!4240595)))

(assert (= (and b!7053634 (is-Cons!68088 (exprs!7058 ct2!306))) b!7053808))

(declare-fun b!7053809 () Bool)

(declare-fun e!4240596 () Bool)

(declare-fun tp!1939920 () Bool)

(declare-fun tp!1939921 () Bool)

(assert (=> b!7053809 (= e!4240596 (and tp!1939920 tp!1939921))))

(assert (=> b!7053628 (= tp!1939889 e!4240596)))

(assert (= (and b!7053628 (is-Cons!68088 (exprs!7058 setElem!49792))) b!7053809))

(declare-fun b_lambda!268577 () Bool)

(assert (= b_lambda!268573 (or b!7053633 b_lambda!268577)))

(declare-fun bs!1876766 () Bool)

(declare-fun d!2204317 () Bool)

(assert (= bs!1876766 (and d!2204317 b!7053633)))

(assert (=> bs!1876766 (= (dynLambda!27616 lambda!419742 lt!2530913) (matchZipper!3102 (set.insert lt!2530913 (as set.empty (Set Context!13116))) s!7408))))

(declare-fun m!7771020 () Bool)

(assert (=> bs!1876766 m!7771020))

(assert (=> bs!1876766 m!7771020))

(declare-fun m!7771022 () Bool)

(assert (=> bs!1876766 m!7771022))

(assert (=> d!2204283 d!2204317))

(declare-fun b_lambda!268579 () Bool)

(assert (= b_lambda!268571 (or b!7053632 b_lambda!268579)))

(declare-fun bs!1876767 () Bool)

(declare-fun d!2204319 () Bool)

(assert (= bs!1876767 (and d!2204319 b!7053632)))

(declare-fun lt!2530923 () Unit!161797)

(assert (=> bs!1876767 (= lt!2530923 (lemmaConcatPreservesForall!873 (exprs!7058 lt!2530903) (exprs!7058 ct2!306) lambda!419744))))

(assert (=> bs!1876767 (= (dynLambda!27614 lambda!419743 lt!2530903) (Context!13117 (++!15645 (exprs!7058 lt!2530903) (exprs!7058 ct2!306))))))

(declare-fun m!7771024 () Bool)

(assert (=> bs!1876767 m!7771024))

(declare-fun m!7771026 () Bool)

(assert (=> bs!1876767 m!7771026))

(assert (=> d!2204267 d!2204319))

(declare-fun b_lambda!268581 () Bool)

(assert (= b_lambda!268575 (or b!7053624 b_lambda!268581)))

(declare-fun bs!1876768 () Bool)

(declare-fun d!2204321 () Bool)

(assert (= bs!1876768 (and d!2204321 b!7053624)))

(assert (=> bs!1876768 (= (dynLambda!27617 lambda!419745 lt!2530820) (derivationStepZipperUp!2146 lt!2530820 (h!74537 s!7408)))))

(assert (=> bs!1876768 m!7770794))

(assert (=> d!2204297 d!2204321))

(push 1)

(assert (not d!2204309))

(assert (not b!7053791))

(assert (not d!2204263))

(assert (not b!7053715))

(assert (not d!2204303))

(assert (not d!2204277))

(assert tp_is_empty!44349)

(assert (not b!7053803))

(assert (not b!7053745))

(assert (not b!7053720))

(assert (not b!7053748))

(assert (not d!2204313))

(assert (not d!2204275))

(assert (not b!7053703))

(assert (not bs!1876766))

(assert (not bm!640713))

(assert (not bs!1876768))

(assert (not bm!640727))

(assert (not d!2204279))

(assert (not b!7053809))

(assert (not bs!1876767))

(assert (not b!7053747))

(assert (not b!7053750))

(assert (not b!7053786))

(assert (not d!2204297))

(assert (not d!2204265))

(assert (not b_lambda!268579))

(assert (not b!7053704))

(assert (not b!7053808))

(assert (not d!2204273))

(assert (not d!2204285))

(assert (not d!2204271))

(assert (not b!7053729))

(assert (not d!2204289))

(assert (not b!7053714))

(assert (not b!7053787))

(assert (not b!7053793))

(assert (not d!2204267))

(assert (not b!7053782))

(assert (not bm!640730))

(assert (not b_lambda!268577))

(assert (not d!2204261))

(assert (not b!7053730))

(assert (not d!2204293))

(assert (not d!2204283))

(assert (not b!7053751))

(assert (not bm!640728))

(assert (not d!2204281))

(assert (not setNonEmpty!49798))

(assert (not bm!640732))

(assert (not d!2204305))

(assert (not b_lambda!268581))

(assert (not d!2204269))

(assert (not d!2204287))

(assert (not b!7053717))

(assert (not b!7053725))

(assert (not d!2204295))

(assert (not d!2204307))

(assert (not b!7053716))

(assert (not b!7053798))

(assert (not b!7053749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

