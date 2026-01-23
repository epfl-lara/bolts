; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722778 () Bool)

(assert start!722778)

(declare-fun b!7442109 () Bool)

(assert (=> b!7442109 true))

(declare-datatypes ((Unit!165763 0))(
  ( (Unit!165764) )
))
(declare-fun e!4443881 () Unit!165763)

(declare-fun Unit!165765 () Unit!165763)

(assert (=> b!7442109 (= e!4443881 Unit!165765)))

(declare-datatypes ((C!39182 0))(
  ( (C!39183 (val!29965 Int)) )
))
(declare-datatypes ((Regex!19454 0))(
  ( (ElementMatch!19454 (c!1377185 C!39182)) (Concat!28299 (regOne!39420 Regex!19454) (regTwo!39420 Regex!19454)) (EmptyExpr!19454) (Star!19454 (reg!19783 Regex!19454)) (EmptyLang!19454) (Union!19454 (regOne!39421 Regex!19454) (regTwo!39421 Regex!19454)) )
))
(declare-datatypes ((List!72132 0))(
  ( (Nil!72008) (Cons!72008 (h!78456 Regex!19454) (t!386697 List!72132)) )
))
(declare-datatypes ((Context!16788 0))(
  ( (Context!16789 (exprs!8894 List!72132)) )
))
(declare-fun empty!3675 () Context!16788)

(declare-fun e!4443885 () Bool)

(declare-fun inv!91997 (Context!16788) Bool)

(assert (=> b!7442109 (and (inv!91997 empty!3675) e!4443885)))

(assert (=> b!7442109 true))

(declare-fun lambda!460446 () Int)

(declare-fun lt!2619427 () (Set Context!16788))

(declare-fun res!2986689 () Bool)

(declare-fun z!3488 () (Set Context!16788))

(declare-fun flatMapPost!239 ((Set Context!16788) Int Context!16788) Context!16788)

(declare-datatypes ((List!72133 0))(
  ( (Nil!72009) (Cons!72009 (h!78457 Context!16788) (t!386698 List!72133)) )
))
(declare-fun head!15266 (List!72133) Context!16788)

(declare-fun toList!11791 ((Set Context!16788)) List!72133)

(assert (=> b!7442109 (= res!2986689 (= (flatMapPost!239 z!3488 lambda!460446 (head!15266 (toList!11791 lt!2619427))) empty!3675))))

(declare-fun e!4443882 () Bool)

(assert (=> b!7442109 (=> (not res!2986689) (not e!4443882))))

(assert (=> b!7442109 e!4443882))

(declare-fun b!7442110 () Bool)

(assert (=> b!7442110 (= e!4443882 false)))

(declare-fun b!7442111 () Bool)

(declare-fun e!4443879 () Bool)

(declare-fun tp_is_empty!49167 () Bool)

(declare-fun tp!2151681 () Bool)

(assert (=> b!7442111 (= e!4443879 (and tp_is_empty!49167 tp!2151681))))

(declare-fun b!7442112 () Bool)

(declare-fun Unit!165766 () Unit!165763)

(assert (=> b!7442112 (= e!4443881 Unit!165766)))

(declare-fun b!7442114 () Bool)

(declare-fun tp!2151680 () Bool)

(assert (=> b!7442114 (= e!4443885 tp!2151680)))

(declare-fun setIsEmpty!56590 () Bool)

(declare-fun setRes!56590 () Bool)

(assert (=> setIsEmpty!56590 setRes!56590))

(declare-fun b!7442115 () Bool)

(declare-fun e!4443884 () Bool)

(declare-fun e!4443880 () Bool)

(assert (=> b!7442115 (= e!4443884 e!4443880)))

(declare-fun res!2986688 () Bool)

(assert (=> b!7442115 (=> (not res!2986688) (not e!4443880))))

(declare-fun lt!2619429 () (Set Context!16788))

(assert (=> b!7442115 (= res!2986688 (= lt!2619429 (as set.empty (Set Context!16788))))))

(declare-fun lt!2619432 () Context!16788)

(declare-datatypes ((List!72134 0))(
  ( (Nil!72010) (Cons!72010 (h!78458 C!39182) (t!386699 List!72134)) )
))
(declare-fun s!7945 () List!72134)

(declare-fun derivationStepZipperUp!2844 (Context!16788 C!39182) (Set Context!16788))

(assert (=> b!7442115 (= lt!2619429 (derivationStepZipperUp!2844 lt!2619432 (h!78458 s!7945)))))

(declare-fun derivationStepZipper!3714 ((Set Context!16788) C!39182) (Set Context!16788))

(assert (=> b!7442115 (= lt!2619427 (derivationStepZipper!3714 z!3488 (h!78458 s!7945)))))

(declare-fun b!7442116 () Bool)

(declare-fun e!4443883 () Bool)

(declare-fun tp!2151682 () Bool)

(assert (=> b!7442116 (= e!4443883 tp!2151682)))

(declare-fun setElem!56590 () Context!16788)

(declare-fun setNonEmpty!56590 () Bool)

(declare-fun tp!2151679 () Bool)

(assert (=> setNonEmpty!56590 (= setRes!56590 (and tp!2151679 (inv!91997 setElem!56590) e!4443883))))

(declare-fun setRest!56590 () (Set Context!16788))

(assert (=> setNonEmpty!56590 (= z!3488 (set.union (set.insert setElem!56590 (as set.empty (Set Context!16788))) setRest!56590))))

(declare-fun res!2986690 () Bool)

(assert (=> start!722778 (=> (not res!2986690) (not e!4443884))))

(assert (=> start!722778 (= res!2986690 (and (= z!3488 (set.insert lt!2619432 (as set.empty (Set Context!16788)))) (is-Cons!72010 s!7945)))))

(assert (=> start!722778 (= lt!2619432 (Context!16789 Nil!72008))))

(assert (=> start!722778 e!4443884))

(declare-fun condSetEmpty!56590 () Bool)

(assert (=> start!722778 (= condSetEmpty!56590 (= z!3488 (as set.empty (Set Context!16788))))))

(assert (=> start!722778 setRes!56590))

(assert (=> start!722778 e!4443879))

(declare-fun b!7442113 () Bool)

(declare-fun matchZipper!3822 ((Set Context!16788) List!72134) Bool)

(declare-fun isEmpty!41082 (List!72134) Bool)

(assert (=> b!7442113 (= e!4443880 (not (= (matchZipper!3822 z!3488 s!7945) (isEmpty!41082 s!7945))))))

(assert (=> b!7442113 (not (matchZipper!3822 lt!2619429 (t!386699 s!7945)))))

(declare-fun lt!2619431 () Unit!165763)

(declare-fun lemmaEmptyZipperMatchesNothing!133 ((Set Context!16788) List!72134) Unit!165763)

(assert (=> b!7442113 (= lt!2619431 (lemmaEmptyZipperMatchesNothing!133 lt!2619429 (t!386699 s!7945)))))

(declare-fun lt!2619430 () Bool)

(assert (=> b!7442113 lt!2619430))

(declare-fun lt!2619428 () Unit!165763)

(assert (=> b!7442113 (= lt!2619428 e!4443881)))

(declare-fun c!1377184 () Bool)

(assert (=> b!7442113 (= c!1377184 (not lt!2619430))))

(assert (=> b!7442113 (= lt!2619430 (= lt!2619427 (as set.empty (Set Context!16788))))))

(assert (= (and start!722778 res!2986690) b!7442115))

(assert (= (and b!7442115 res!2986688) b!7442113))

(assert (= (and b!7442113 c!1377184) b!7442109))

(assert (= (and b!7442113 (not c!1377184)) b!7442112))

(assert (= b!7442109 b!7442114))

(assert (= (and b!7442109 res!2986689) b!7442110))

(assert (= (and start!722778 condSetEmpty!56590) setIsEmpty!56590))

(assert (= (and start!722778 (not condSetEmpty!56590)) setNonEmpty!56590))

(assert (= setNonEmpty!56590 b!7442116))

(assert (= (and start!722778 (is-Cons!72010 s!7945)) b!7442111))

(declare-fun m!8053628 () Bool)

(assert (=> start!722778 m!8053628))

(declare-fun m!8053630 () Bool)

(assert (=> b!7442115 m!8053630))

(declare-fun m!8053632 () Bool)

(assert (=> b!7442115 m!8053632))

(declare-fun m!8053634 () Bool)

(assert (=> b!7442109 m!8053634))

(declare-fun m!8053636 () Bool)

(assert (=> b!7442109 m!8053636))

(assert (=> b!7442109 m!8053636))

(declare-fun m!8053638 () Bool)

(assert (=> b!7442109 m!8053638))

(assert (=> b!7442109 m!8053638))

(declare-fun m!8053640 () Bool)

(assert (=> b!7442109 m!8053640))

(declare-fun m!8053642 () Bool)

(assert (=> setNonEmpty!56590 m!8053642))

(declare-fun m!8053644 () Bool)

(assert (=> b!7442113 m!8053644))

(declare-fun m!8053646 () Bool)

(assert (=> b!7442113 m!8053646))

(declare-fun m!8053648 () Bool)

(assert (=> b!7442113 m!8053648))

(declare-fun m!8053650 () Bool)

(assert (=> b!7442113 m!8053650))

(push 1)

(assert tp_is_empty!49167)

(assert (not b!7442113))

(assert (not setNonEmpty!56590))

(assert (not b!7442114))

(assert (not b!7442116))

(assert (not b!7442111))

(assert (not b!7442109))

(assert (not b!7442115))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2295625 () Bool)

(declare-fun lambda!460452 () Int)

(declare-fun forall!18231 (List!72132 Int) Bool)

(assert (=> d!2295625 (= (inv!91997 empty!3675) (forall!18231 (exprs!8894 empty!3675) lambda!460452))))

(declare-fun bs!1926341 () Bool)

(assert (= bs!1926341 d!2295625))

(declare-fun m!8053676 () Bool)

(assert (=> bs!1926341 m!8053676))

(assert (=> b!7442109 d!2295625))

(declare-fun d!2295627 () Bool)

(assert (=> d!2295627 true))

(assert (=> d!2295627 true))

(declare-fun order!29589 () Int)

(declare-fun order!29591 () Int)

(declare-fun lambda!460455 () Int)

(declare-fun dynLambda!29729 (Int Int) Int)

(declare-fun dynLambda!29730 (Int Int) Int)

(assert (=> d!2295627 (< (dynLambda!29729 order!29589 lambda!460446) (dynLambda!29730 order!29591 lambda!460455))))

(declare-fun flatMap!3236 ((Set Context!16788) Int) (Set Context!16788))

(declare-fun exists!4809 ((Set Context!16788) Int) Bool)

(assert (=> d!2295627 (= (set.member (head!15266 (toList!11791 lt!2619427)) (flatMap!3236 z!3488 lambda!460446)) (exists!4809 z!3488 lambda!460455))))

(declare-fun lt!2619453 () Context!16788)

(declare-fun choose!57525 ((Set Context!16788) Int Context!16788) Context!16788)

(assert (=> d!2295627 (= lt!2619453 (choose!57525 z!3488 lambda!460446 (head!15266 (toList!11791 lt!2619427))))))

(assert (=> d!2295627 (= (flatMapPost!239 z!3488 lambda!460446 (head!15266 (toList!11791 lt!2619427))) lt!2619453)))

(declare-fun bs!1926342 () Bool)

(assert (= bs!1926342 d!2295627))

(declare-fun m!8053678 () Bool)

(assert (=> bs!1926342 m!8053678))

(assert (=> bs!1926342 m!8053638))

(declare-fun m!8053680 () Bool)

(assert (=> bs!1926342 m!8053680))

(declare-fun m!8053682 () Bool)

(assert (=> bs!1926342 m!8053682))

(assert (=> bs!1926342 m!8053638))

(declare-fun m!8053684 () Bool)

(assert (=> bs!1926342 m!8053684))

(assert (=> b!7442109 d!2295627))

(declare-fun d!2295629 () Bool)

(assert (=> d!2295629 (= (head!15266 (toList!11791 lt!2619427)) (h!78457 (toList!11791 lt!2619427)))))

(assert (=> b!7442109 d!2295629))

(declare-fun d!2295633 () Bool)

(declare-fun e!4443909 () Bool)

(assert (=> d!2295633 e!4443909))

(declare-fun res!2986702 () Bool)

(assert (=> d!2295633 (=> (not res!2986702) (not e!4443909))))

(declare-fun lt!2619456 () List!72133)

(declare-fun noDuplicate!3124 (List!72133) Bool)

(assert (=> d!2295633 (= res!2986702 (noDuplicate!3124 lt!2619456))))

(declare-fun choose!57526 ((Set Context!16788)) List!72133)

(assert (=> d!2295633 (= lt!2619456 (choose!57526 lt!2619427))))

(assert (=> d!2295633 (= (toList!11791 lt!2619427) lt!2619456)))

(declare-fun b!7442152 () Bool)

(declare-fun content!15236 (List!72133) (Set Context!16788))

(assert (=> b!7442152 (= e!4443909 (= (content!15236 lt!2619456) lt!2619427))))

(assert (= (and d!2295633 res!2986702) b!7442152))

(declare-fun m!8053686 () Bool)

(assert (=> d!2295633 m!8053686))

(declare-fun m!8053688 () Bool)

(assert (=> d!2295633 m!8053688))

(declare-fun m!8053690 () Bool)

(assert (=> b!7442152 m!8053690))

(assert (=> b!7442109 d!2295633))

(declare-fun b!7442163 () Bool)

(declare-fun e!4443917 () (Set Context!16788))

(declare-fun call!684105 () (Set Context!16788))

(assert (=> b!7442163 (= e!4443917 call!684105)))

(declare-fun b!7442164 () Bool)

(declare-fun e!4443916 () Bool)

(declare-fun nullable!8479 (Regex!19454) Bool)

(assert (=> b!7442164 (= e!4443916 (nullable!8479 (h!78456 (exprs!8894 lt!2619432))))))

(declare-fun b!7442165 () Bool)

(declare-fun e!4443918 () (Set Context!16788))

(assert (=> b!7442165 (= e!4443918 (set.union call!684105 (derivationStepZipperUp!2844 (Context!16789 (t!386697 (exprs!8894 lt!2619432))) (h!78458 s!7945))))))

(declare-fun d!2295635 () Bool)

(declare-fun c!1377195 () Bool)

(assert (=> d!2295635 (= c!1377195 e!4443916)))

(declare-fun res!2986705 () Bool)

(assert (=> d!2295635 (=> (not res!2986705) (not e!4443916))))

(assert (=> d!2295635 (= res!2986705 (is-Cons!72008 (exprs!8894 lt!2619432)))))

(assert (=> d!2295635 (= (derivationStepZipperUp!2844 lt!2619432 (h!78458 s!7945)) e!4443918)))

(declare-fun b!7442166 () Bool)

(assert (=> b!7442166 (= e!4443917 (as set.empty (Set Context!16788)))))

(declare-fun bm!684100 () Bool)

(declare-fun derivationStepZipperDown!3227 (Regex!19454 Context!16788 C!39182) (Set Context!16788))

(assert (=> bm!684100 (= call!684105 (derivationStepZipperDown!3227 (h!78456 (exprs!8894 lt!2619432)) (Context!16789 (t!386697 (exprs!8894 lt!2619432))) (h!78458 s!7945)))))

(declare-fun b!7442167 () Bool)

(assert (=> b!7442167 (= e!4443918 e!4443917)))

(declare-fun c!1377194 () Bool)

(assert (=> b!7442167 (= c!1377194 (is-Cons!72008 (exprs!8894 lt!2619432)))))

(assert (= (and d!2295635 res!2986705) b!7442164))

(assert (= (and d!2295635 c!1377195) b!7442165))

(assert (= (and d!2295635 (not c!1377195)) b!7442167))

(assert (= (and b!7442167 c!1377194) b!7442163))

(assert (= (and b!7442167 (not c!1377194)) b!7442166))

(assert (= (or b!7442165 b!7442163) bm!684100))

(declare-fun m!8053692 () Bool)

(assert (=> b!7442164 m!8053692))

(declare-fun m!8053694 () Bool)

(assert (=> b!7442165 m!8053694))

(declare-fun m!8053696 () Bool)

(assert (=> bm!684100 m!8053696))

(assert (=> b!7442115 d!2295635))

(declare-fun bs!1926343 () Bool)

(declare-fun d!2295637 () Bool)

(assert (= bs!1926343 (and d!2295637 b!7442109)))

(declare-fun lambda!460461 () Int)

(assert (=> bs!1926343 (= lambda!460461 lambda!460446)))

(assert (=> d!2295637 true))

(assert (=> d!2295637 (= (derivationStepZipper!3714 z!3488 (h!78458 s!7945)) (flatMap!3236 z!3488 lambda!460461))))

(declare-fun bs!1926344 () Bool)

(assert (= bs!1926344 d!2295637))

(declare-fun m!8053698 () Bool)

(assert (=> bs!1926344 m!8053698))

(assert (=> b!7442115 d!2295637))

(declare-fun bs!1926346 () Bool)

(declare-fun d!2295639 () Bool)

(assert (= bs!1926346 (and d!2295639 d!2295625)))

(declare-fun lambda!460462 () Int)

(assert (=> bs!1926346 (= lambda!460462 lambda!460452)))

(assert (=> d!2295639 (= (inv!91997 setElem!56590) (forall!18231 (exprs!8894 setElem!56590) lambda!460462))))

(declare-fun bs!1926347 () Bool)

(assert (= bs!1926347 d!2295639))

(declare-fun m!8053702 () Bool)

(assert (=> bs!1926347 m!8053702))

(assert (=> setNonEmpty!56590 d!2295639))

(declare-fun d!2295643 () Bool)

(declare-fun c!1377200 () Bool)

(assert (=> d!2295643 (= c!1377200 (isEmpty!41082 s!7945))))

(declare-fun e!4443921 () Bool)

(assert (=> d!2295643 (= (matchZipper!3822 z!3488 s!7945) e!4443921)))

(declare-fun b!7442174 () Bool)

(declare-fun nullableZipper!3149 ((Set Context!16788)) Bool)

(assert (=> b!7442174 (= e!4443921 (nullableZipper!3149 z!3488))))

(declare-fun b!7442175 () Bool)

(declare-fun head!15268 (List!72134) C!39182)

(declare-fun tail!14847 (List!72134) List!72134)

(assert (=> b!7442175 (= e!4443921 (matchZipper!3822 (derivationStepZipper!3714 z!3488 (head!15268 s!7945)) (tail!14847 s!7945)))))

(assert (= (and d!2295643 c!1377200) b!7442174))

(assert (= (and d!2295643 (not c!1377200)) b!7442175))

(assert (=> d!2295643 m!8053646))

(declare-fun m!8053704 () Bool)

(assert (=> b!7442174 m!8053704))

(declare-fun m!8053706 () Bool)

(assert (=> b!7442175 m!8053706))

(assert (=> b!7442175 m!8053706))

(declare-fun m!8053708 () Bool)

(assert (=> b!7442175 m!8053708))

(declare-fun m!8053710 () Bool)

(assert (=> b!7442175 m!8053710))

(assert (=> b!7442175 m!8053708))

(assert (=> b!7442175 m!8053710))

(declare-fun m!8053712 () Bool)

(assert (=> b!7442175 m!8053712))

(assert (=> b!7442113 d!2295643))

(declare-fun d!2295645 () Bool)

(assert (=> d!2295645 (= (isEmpty!41082 s!7945) (is-Nil!72010 s!7945))))

(assert (=> b!7442113 d!2295645))

(declare-fun d!2295647 () Bool)

(declare-fun c!1377201 () Bool)

(assert (=> d!2295647 (= c!1377201 (isEmpty!41082 (t!386699 s!7945)))))

(declare-fun e!4443922 () Bool)

(assert (=> d!2295647 (= (matchZipper!3822 lt!2619429 (t!386699 s!7945)) e!4443922)))

(declare-fun b!7442176 () Bool)

(assert (=> b!7442176 (= e!4443922 (nullableZipper!3149 lt!2619429))))

(declare-fun b!7442177 () Bool)

(assert (=> b!7442177 (= e!4443922 (matchZipper!3822 (derivationStepZipper!3714 lt!2619429 (head!15268 (t!386699 s!7945))) (tail!14847 (t!386699 s!7945))))))

(assert (= (and d!2295647 c!1377201) b!7442176))

(assert (= (and d!2295647 (not c!1377201)) b!7442177))

(declare-fun m!8053714 () Bool)

(assert (=> d!2295647 m!8053714))

(declare-fun m!8053716 () Bool)

(assert (=> b!7442176 m!8053716))

(declare-fun m!8053718 () Bool)

(assert (=> b!7442177 m!8053718))

(assert (=> b!7442177 m!8053718))

(declare-fun m!8053720 () Bool)

(assert (=> b!7442177 m!8053720))

(declare-fun m!8053722 () Bool)

(assert (=> b!7442177 m!8053722))

(assert (=> b!7442177 m!8053720))

(assert (=> b!7442177 m!8053722))

(declare-fun m!8053724 () Bool)

(assert (=> b!7442177 m!8053724))

(assert (=> b!7442113 d!2295647))

(declare-fun d!2295649 () Bool)

(assert (=> d!2295649 (not (matchZipper!3822 lt!2619429 (t!386699 s!7945)))))

(declare-fun lt!2619459 () Unit!165763)

(declare-fun choose!57527 ((Set Context!16788) List!72134) Unit!165763)

(assert (=> d!2295649 (= lt!2619459 (choose!57527 lt!2619429 (t!386699 s!7945)))))

(assert (=> d!2295649 (= lt!2619429 (as set.empty (Set Context!16788)))))

(assert (=> d!2295649 (= (lemmaEmptyZipperMatchesNothing!133 lt!2619429 (t!386699 s!7945)) lt!2619459)))

(declare-fun bs!1926348 () Bool)

(assert (= bs!1926348 d!2295649))

(assert (=> bs!1926348 m!8053648))

(declare-fun m!8053726 () Bool)

(assert (=> bs!1926348 m!8053726))

(assert (=> b!7442113 d!2295649))

(declare-fun b!7442192 () Bool)

(declare-fun e!4443931 () Bool)

(declare-fun tp!2151699 () Bool)

(declare-fun tp!2151700 () Bool)

(assert (=> b!7442192 (= e!4443931 (and tp!2151699 tp!2151700))))

(assert (=> b!7442114 (= tp!2151680 e!4443931)))

(assert (= (and b!7442114 (is-Cons!72008 (exprs!8894 empty!3675))) b!7442192))

(declare-fun b!7442197 () Bool)

(declare-fun e!4443934 () Bool)

(declare-fun tp!2151703 () Bool)

(assert (=> b!7442197 (= e!4443934 (and tp_is_empty!49167 tp!2151703))))

(assert (=> b!7442111 (= tp!2151681 e!4443934)))

(assert (= (and b!7442111 (is-Cons!72010 (t!386699 s!7945))) b!7442197))

(declare-fun b!7442198 () Bool)

(declare-fun e!4443935 () Bool)

(declare-fun tp!2151704 () Bool)

(declare-fun tp!2151705 () Bool)

(assert (=> b!7442198 (= e!4443935 (and tp!2151704 tp!2151705))))

(assert (=> b!7442116 (= tp!2151682 e!4443935)))

(assert (= (and b!7442116 (is-Cons!72008 (exprs!8894 setElem!56590))) b!7442198))

(declare-fun condSetEmpty!56596 () Bool)

(assert (=> setNonEmpty!56590 (= condSetEmpty!56596 (= setRest!56590 (as set.empty (Set Context!16788))))))

(declare-fun setRes!56596 () Bool)

(assert (=> setNonEmpty!56590 (= tp!2151679 setRes!56596)))

(declare-fun setIsEmpty!56596 () Bool)

(assert (=> setIsEmpty!56596 setRes!56596))

(declare-fun e!4443938 () Bool)

(declare-fun setElem!56596 () Context!16788)

(declare-fun tp!2151710 () Bool)

(declare-fun setNonEmpty!56596 () Bool)

(assert (=> setNonEmpty!56596 (= setRes!56596 (and tp!2151710 (inv!91997 setElem!56596) e!4443938))))

(declare-fun setRest!56596 () (Set Context!16788))

(assert (=> setNonEmpty!56596 (= setRest!56590 (set.union (set.insert setElem!56596 (as set.empty (Set Context!16788))) setRest!56596))))

(declare-fun b!7442203 () Bool)

(declare-fun tp!2151711 () Bool)

(assert (=> b!7442203 (= e!4443938 tp!2151711)))

(assert (= (and setNonEmpty!56590 condSetEmpty!56596) setIsEmpty!56596))

(assert (= (and setNonEmpty!56590 (not condSetEmpty!56596)) setNonEmpty!56596))

(assert (= setNonEmpty!56596 b!7442203))

(declare-fun m!8053728 () Bool)

(assert (=> setNonEmpty!56596 m!8053728))

(push 1)

(assert (not b!7442203))

(assert (not b!7442192))

(assert (not d!2295633))

(assert (not b!7442152))

(assert (not setNonEmpty!56596))

(assert (not d!2295647))

(assert (not b!7442164))

(assert (not b!7442197))

(assert (not d!2295637))

(assert (not b!7442165))

(assert (not b!7442175))

(assert (not b!7442176))

(assert (not b!7442174))

(assert (not b!7442177))

(assert tp_is_empty!49167)

(assert (not d!2295625))

(assert (not d!2295639))

(assert (not b!7442198))

(assert (not d!2295643))

(assert (not d!2295649))

(assert (not bm!684100))

(assert (not d!2295627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!2295649 d!2295647))

(declare-fun d!2295669 () Bool)

(assert (=> d!2295669 (not (matchZipper!3822 lt!2619429 (t!386699 s!7945)))))

(assert (=> d!2295669 true))

(declare-fun _$64!844 () Unit!165763)

(assert (=> d!2295669 (= (choose!57527 lt!2619429 (t!386699 s!7945)) _$64!844)))

(declare-fun bs!1926355 () Bool)

(assert (= bs!1926355 d!2295669))

(assert (=> bs!1926355 m!8053648))

(assert (=> d!2295649 d!2295669))

(declare-fun d!2295671 () Bool)

(declare-fun res!2986716 () Bool)

(declare-fun e!4443963 () Bool)

(assert (=> d!2295671 (=> res!2986716 e!4443963)))

(assert (=> d!2295671 (= res!2986716 (is-Nil!72009 lt!2619456))))

(assert (=> d!2295671 (= (noDuplicate!3124 lt!2619456) e!4443963)))

(declare-fun b!7442247 () Bool)

(declare-fun e!4443964 () Bool)

(assert (=> b!7442247 (= e!4443963 e!4443964)))

(declare-fun res!2986717 () Bool)

(assert (=> b!7442247 (=> (not res!2986717) (not e!4443964))))

(declare-fun contains!20863 (List!72133 Context!16788) Bool)

(assert (=> b!7442247 (= res!2986717 (not (contains!20863 (t!386698 lt!2619456) (h!78457 lt!2619456))))))

(declare-fun b!7442248 () Bool)

(assert (=> b!7442248 (= e!4443964 (noDuplicate!3124 (t!386698 lt!2619456)))))

(assert (= (and d!2295671 (not res!2986716)) b!7442247))

(assert (= (and b!7442247 res!2986717) b!7442248))

(declare-fun m!8053780 () Bool)

(assert (=> b!7442247 m!8053780))

(declare-fun m!8053782 () Bool)

(assert (=> b!7442248 m!8053782))

(assert (=> d!2295633 d!2295671))

(declare-fun d!2295673 () Bool)

(declare-fun e!4443972 () Bool)

(assert (=> d!2295673 e!4443972))

(declare-fun res!2986723 () Bool)

(assert (=> d!2295673 (=> (not res!2986723) (not e!4443972))))

(declare-fun res!2986722 () List!72133)

(assert (=> d!2295673 (= res!2986723 (noDuplicate!3124 res!2986722))))

(declare-fun e!4443973 () Bool)

(assert (=> d!2295673 e!4443973))

(assert (=> d!2295673 (= (choose!57526 lt!2619427) res!2986722)))

(declare-fun b!7442256 () Bool)

(declare-fun e!4443971 () Bool)

(declare-fun tp!2151733 () Bool)

(assert (=> b!7442256 (= e!4443971 tp!2151733)))

(declare-fun tp!2151734 () Bool)

(declare-fun b!7442255 () Bool)

(assert (=> b!7442255 (= e!4443973 (and (inv!91997 (h!78457 res!2986722)) e!4443971 tp!2151734))))

(declare-fun b!7442257 () Bool)

(assert (=> b!7442257 (= e!4443972 (= (content!15236 res!2986722) lt!2619427))))

(assert (= b!7442255 b!7442256))

(assert (= (and d!2295673 (is-Cons!72009 res!2986722)) b!7442255))

(assert (= (and d!2295673 res!2986723) b!7442257))

(declare-fun m!8053784 () Bool)

(assert (=> d!2295673 m!8053784))

(declare-fun m!8053786 () Bool)

(assert (=> b!7442255 m!8053786))

(declare-fun m!8053788 () Bool)

(assert (=> b!7442257 m!8053788))

(assert (=> d!2295633 d!2295673))

(declare-fun d!2295675 () Bool)

(declare-fun choose!57531 ((Set Context!16788) Int) (Set Context!16788))

(assert (=> d!2295675 (= (flatMap!3236 z!3488 lambda!460446) (choose!57531 z!3488 lambda!460446))))

(declare-fun bs!1926356 () Bool)

(assert (= bs!1926356 d!2295675))

(declare-fun m!8053790 () Bool)

(assert (=> bs!1926356 m!8053790))

(assert (=> d!2295627 d!2295675))

(declare-fun d!2295677 () Bool)

(declare-fun lt!2619471 () Bool)

(declare-fun exists!4811 (List!72133 Int) Bool)

(assert (=> d!2295677 (= lt!2619471 (exists!4811 (toList!11791 z!3488) lambda!460455))))

(declare-fun choose!57532 ((Set Context!16788) Int) Bool)

(assert (=> d!2295677 (= lt!2619471 (choose!57532 z!3488 lambda!460455))))

(assert (=> d!2295677 (= (exists!4809 z!3488 lambda!460455) lt!2619471)))

(declare-fun bs!1926357 () Bool)

(assert (= bs!1926357 d!2295677))

(declare-fun m!8053792 () Bool)

(assert (=> bs!1926357 m!8053792))

(assert (=> bs!1926357 m!8053792))

(declare-fun m!8053794 () Bool)

(assert (=> bs!1926357 m!8053794))

(declare-fun m!8053796 () Bool)

(assert (=> bs!1926357 m!8053796))

(assert (=> d!2295627 d!2295677))

(declare-fun bs!1926358 () Bool)

(declare-fun d!2295679 () Bool)

(assert (= bs!1926358 (and d!2295679 d!2295627)))

(declare-fun lambda!460472 () Int)

(assert (=> bs!1926358 (= lambda!460472 lambda!460455)))

(assert (=> d!2295679 true))

(assert (=> d!2295679 true))

(assert (=> d!2295679 (< (dynLambda!29729 order!29589 lambda!460446) (dynLambda!29730 order!29591 lambda!460472))))

(assert (=> d!2295679 (= (set.member (head!15266 (toList!11791 lt!2619427)) (flatMap!3236 z!3488 lambda!460446)) (exists!4809 z!3488 lambda!460472))))

(declare-fun _$3!607 () Context!16788)

(declare-fun e!4443976 () Bool)

(assert (=> d!2295679 (and (inv!91997 _$3!607) e!4443976)))

(assert (=> d!2295679 (= (choose!57525 z!3488 lambda!460446 (head!15266 (toList!11791 lt!2619427))) _$3!607)))

(declare-fun b!7442261 () Bool)

(declare-fun tp!2151737 () Bool)

(assert (=> b!7442261 (= e!4443976 tp!2151737)))

(assert (= d!2295679 b!7442261))

(assert (=> d!2295679 m!8053678))

(assert (=> d!2295679 m!8053638))

(assert (=> d!2295679 m!8053680))

(declare-fun m!8053798 () Bool)

(assert (=> d!2295679 m!8053798))

(declare-fun m!8053800 () Bool)

(assert (=> d!2295679 m!8053800))

(assert (=> d!2295627 d!2295679))

(declare-fun d!2295681 () Bool)

(declare-fun nullableFct!3422 (Regex!19454) Bool)

(assert (=> d!2295681 (= (nullable!8479 (h!78456 (exprs!8894 lt!2619432))) (nullableFct!3422 (h!78456 (exprs!8894 lt!2619432))))))

(declare-fun bs!1926359 () Bool)

(assert (= bs!1926359 d!2295681))

(declare-fun m!8053802 () Bool)

(assert (=> bs!1926359 m!8053802))

(assert (=> b!7442164 d!2295681))

(assert (=> d!2295643 d!2295645))

(declare-fun bs!1926360 () Bool)

(declare-fun d!2295683 () Bool)

(assert (= bs!1926360 (and d!2295683 d!2295625)))

(declare-fun lambda!460473 () Int)

(assert (=> bs!1926360 (= lambda!460473 lambda!460452)))

(declare-fun bs!1926361 () Bool)

(assert (= bs!1926361 (and d!2295683 d!2295639)))

(assert (=> bs!1926361 (= lambda!460473 lambda!460462)))

(assert (=> d!2295683 (= (inv!91997 setElem!56596) (forall!18231 (exprs!8894 setElem!56596) lambda!460473))))

(declare-fun bs!1926362 () Bool)

(assert (= bs!1926362 d!2295683))

(declare-fun m!8053804 () Bool)

(assert (=> bs!1926362 m!8053804))

(assert (=> setNonEmpty!56596 d!2295683))

(declare-fun d!2295685 () Bool)

(declare-fun c!1377216 () Bool)

(assert (=> d!2295685 (= c!1377216 (is-Nil!72009 lt!2619456))))

(declare-fun e!4443979 () (Set Context!16788))

(assert (=> d!2295685 (= (content!15236 lt!2619456) e!4443979)))

(declare-fun b!7442266 () Bool)

(assert (=> b!7442266 (= e!4443979 (as set.empty (Set Context!16788)))))

(declare-fun b!7442267 () Bool)

(assert (=> b!7442267 (= e!4443979 (set.union (set.insert (h!78457 lt!2619456) (as set.empty (Set Context!16788))) (content!15236 (t!386698 lt!2619456))))))

(assert (= (and d!2295685 c!1377216) b!7442266))

(assert (= (and d!2295685 (not c!1377216)) b!7442267))

(declare-fun m!8053806 () Bool)

(assert (=> b!7442267 m!8053806))

(declare-fun m!8053808 () Bool)

(assert (=> b!7442267 m!8053808))

(assert (=> b!7442152 d!2295685))

(declare-fun b!7442268 () Bool)

(declare-fun e!4443981 () (Set Context!16788))

(declare-fun call!684109 () (Set Context!16788))

(assert (=> b!7442268 (= e!4443981 call!684109)))

(declare-fun b!7442269 () Bool)

(declare-fun e!4443980 () Bool)

(assert (=> b!7442269 (= e!4443980 (nullable!8479 (h!78456 (exprs!8894 (Context!16789 (t!386697 (exprs!8894 lt!2619432)))))))))

(declare-fun b!7442270 () Bool)

(declare-fun e!4443982 () (Set Context!16788))

(assert (=> b!7442270 (= e!4443982 (set.union call!684109 (derivationStepZipperUp!2844 (Context!16789 (t!386697 (exprs!8894 (Context!16789 (t!386697 (exprs!8894 lt!2619432)))))) (h!78458 s!7945))))))

(declare-fun d!2295687 () Bool)

(declare-fun c!1377218 () Bool)

(assert (=> d!2295687 (= c!1377218 e!4443980)))

(declare-fun res!2986724 () Bool)

(assert (=> d!2295687 (=> (not res!2986724) (not e!4443980))))

(assert (=> d!2295687 (= res!2986724 (is-Cons!72008 (exprs!8894 (Context!16789 (t!386697 (exprs!8894 lt!2619432))))))))

(assert (=> d!2295687 (= (derivationStepZipperUp!2844 (Context!16789 (t!386697 (exprs!8894 lt!2619432))) (h!78458 s!7945)) e!4443982)))

(declare-fun b!7442271 () Bool)

(assert (=> b!7442271 (= e!4443981 (as set.empty (Set Context!16788)))))

(declare-fun bm!684104 () Bool)

(assert (=> bm!684104 (= call!684109 (derivationStepZipperDown!3227 (h!78456 (exprs!8894 (Context!16789 (t!386697 (exprs!8894 lt!2619432))))) (Context!16789 (t!386697 (exprs!8894 (Context!16789 (t!386697 (exprs!8894 lt!2619432)))))) (h!78458 s!7945)))))

(declare-fun b!7442272 () Bool)

(assert (=> b!7442272 (= e!4443982 e!4443981)))

(declare-fun c!1377217 () Bool)

(assert (=> b!7442272 (= c!1377217 (is-Cons!72008 (exprs!8894 (Context!16789 (t!386697 (exprs!8894 lt!2619432))))))))

(assert (= (and d!2295687 res!2986724) b!7442269))

(assert (= (and d!2295687 c!1377218) b!7442270))

(assert (= (and d!2295687 (not c!1377218)) b!7442272))

(assert (= (and b!7442272 c!1377217) b!7442268))

(assert (= (and b!7442272 (not c!1377217)) b!7442271))

(assert (= (or b!7442270 b!7442268) bm!684104))

(declare-fun m!8053810 () Bool)

(assert (=> b!7442269 m!8053810))

(declare-fun m!8053812 () Bool)

(assert (=> b!7442270 m!8053812))

(declare-fun m!8053814 () Bool)

(assert (=> bm!684104 m!8053814))

(assert (=> b!7442165 d!2295687))

(declare-fun d!2295689 () Bool)

(assert (=> d!2295689 (= (isEmpty!41082 (t!386699 s!7945)) (is-Nil!72010 (t!386699 s!7945)))))

(assert (=> d!2295647 d!2295689))

(declare-fun d!2295691 () Bool)

(declare-fun res!2986729 () Bool)

(declare-fun e!4443987 () Bool)

(assert (=> d!2295691 (=> res!2986729 e!4443987)))

(assert (=> d!2295691 (= res!2986729 (is-Nil!72008 (exprs!8894 empty!3675)))))

(assert (=> d!2295691 (= (forall!18231 (exprs!8894 empty!3675) lambda!460452) e!4443987)))

(declare-fun b!7442277 () Bool)

(declare-fun e!4443988 () Bool)

(assert (=> b!7442277 (= e!4443987 e!4443988)))

(declare-fun res!2986730 () Bool)

(assert (=> b!7442277 (=> (not res!2986730) (not e!4443988))))

(declare-fun dynLambda!29733 (Int Regex!19454) Bool)

(assert (=> b!7442277 (= res!2986730 (dynLambda!29733 lambda!460452 (h!78456 (exprs!8894 empty!3675))))))

(declare-fun b!7442278 () Bool)

(assert (=> b!7442278 (= e!4443988 (forall!18231 (t!386697 (exprs!8894 empty!3675)) lambda!460452))))

(assert (= (and d!2295691 (not res!2986729)) b!7442277))

(assert (= (and b!7442277 res!2986730) b!7442278))

(declare-fun b_lambda!287571 () Bool)

(assert (=> (not b_lambda!287571) (not b!7442277)))

(declare-fun m!8053816 () Bool)

(assert (=> b!7442277 m!8053816))

(declare-fun m!8053818 () Bool)

(assert (=> b!7442278 m!8053818))

(assert (=> d!2295625 d!2295691))

(declare-fun d!2295693 () Bool)

(declare-fun res!2986731 () Bool)

(declare-fun e!4443989 () Bool)

(assert (=> d!2295693 (=> res!2986731 e!4443989)))

(assert (=> d!2295693 (= res!2986731 (is-Nil!72008 (exprs!8894 setElem!56590)))))

(assert (=> d!2295693 (= (forall!18231 (exprs!8894 setElem!56590) lambda!460462) e!4443989)))

(declare-fun b!7442279 () Bool)

(declare-fun e!4443990 () Bool)

(assert (=> b!7442279 (= e!4443989 e!4443990)))

(declare-fun res!2986732 () Bool)

(assert (=> b!7442279 (=> (not res!2986732) (not e!4443990))))

(assert (=> b!7442279 (= res!2986732 (dynLambda!29733 lambda!460462 (h!78456 (exprs!8894 setElem!56590))))))

(declare-fun b!7442280 () Bool)

(assert (=> b!7442280 (= e!4443990 (forall!18231 (t!386697 (exprs!8894 setElem!56590)) lambda!460462))))

(assert (= (and d!2295693 (not res!2986731)) b!7442279))

(assert (= (and b!7442279 res!2986732) b!7442280))

(declare-fun b_lambda!287573 () Bool)

(assert (=> (not b_lambda!287573) (not b!7442279)))

(declare-fun m!8053820 () Bool)

(assert (=> b!7442279 m!8053820))

(declare-fun m!8053822 () Bool)

(assert (=> b!7442280 m!8053822))

(assert (=> d!2295639 d!2295693))

(declare-fun d!2295695 () Bool)

(declare-fun c!1377219 () Bool)

(assert (=> d!2295695 (= c!1377219 (isEmpty!41082 (tail!14847 s!7945)))))

(declare-fun e!4443991 () Bool)

(assert (=> d!2295695 (= (matchZipper!3822 (derivationStepZipper!3714 z!3488 (head!15268 s!7945)) (tail!14847 s!7945)) e!4443991)))

(declare-fun b!7442281 () Bool)

(assert (=> b!7442281 (= e!4443991 (nullableZipper!3149 (derivationStepZipper!3714 z!3488 (head!15268 s!7945))))))

(declare-fun b!7442282 () Bool)

(assert (=> b!7442282 (= e!4443991 (matchZipper!3822 (derivationStepZipper!3714 (derivationStepZipper!3714 z!3488 (head!15268 s!7945)) (head!15268 (tail!14847 s!7945))) (tail!14847 (tail!14847 s!7945))))))

(assert (= (and d!2295695 c!1377219) b!7442281))

(assert (= (and d!2295695 (not c!1377219)) b!7442282))

(assert (=> d!2295695 m!8053710))

(declare-fun m!8053824 () Bool)

(assert (=> d!2295695 m!8053824))

(assert (=> b!7442281 m!8053708))

(declare-fun m!8053826 () Bool)

(assert (=> b!7442281 m!8053826))

(assert (=> b!7442282 m!8053710))

(declare-fun m!8053828 () Bool)

(assert (=> b!7442282 m!8053828))

(assert (=> b!7442282 m!8053708))

(assert (=> b!7442282 m!8053828))

(declare-fun m!8053830 () Bool)

(assert (=> b!7442282 m!8053830))

(assert (=> b!7442282 m!8053710))

(declare-fun m!8053832 () Bool)

(assert (=> b!7442282 m!8053832))

(assert (=> b!7442282 m!8053830))

(assert (=> b!7442282 m!8053832))

(declare-fun m!8053834 () Bool)

(assert (=> b!7442282 m!8053834))

(assert (=> b!7442175 d!2295695))

(declare-fun bs!1926363 () Bool)

(declare-fun d!2295697 () Bool)

(assert (= bs!1926363 (and d!2295697 b!7442109)))

(declare-fun lambda!460474 () Int)

(assert (=> bs!1926363 (= (= (head!15268 s!7945) (h!78458 s!7945)) (= lambda!460474 lambda!460446))))

(declare-fun bs!1926364 () Bool)

(assert (= bs!1926364 (and d!2295697 d!2295637)))

(assert (=> bs!1926364 (= (= (head!15268 s!7945) (h!78458 s!7945)) (= lambda!460474 lambda!460461))))

(assert (=> d!2295697 true))

(assert (=> d!2295697 (= (derivationStepZipper!3714 z!3488 (head!15268 s!7945)) (flatMap!3236 z!3488 lambda!460474))))

(declare-fun bs!1926365 () Bool)

(assert (= bs!1926365 d!2295697))

(declare-fun m!8053836 () Bool)

(assert (=> bs!1926365 m!8053836))

(assert (=> b!7442175 d!2295697))

(declare-fun d!2295699 () Bool)

(assert (=> d!2295699 (= (head!15268 s!7945) (h!78458 s!7945))))

(assert (=> b!7442175 d!2295699))

(declare-fun d!2295701 () Bool)

(assert (=> d!2295701 (= (tail!14847 s!7945) (t!386699 s!7945))))

(assert (=> b!7442175 d!2295701))

(declare-fun d!2295703 () Bool)

(declare-fun c!1377220 () Bool)

(assert (=> d!2295703 (= c!1377220 (isEmpty!41082 (tail!14847 (t!386699 s!7945))))))

(declare-fun e!4443992 () Bool)

(assert (=> d!2295703 (= (matchZipper!3822 (derivationStepZipper!3714 lt!2619429 (head!15268 (t!386699 s!7945))) (tail!14847 (t!386699 s!7945))) e!4443992)))

(declare-fun b!7442283 () Bool)

(assert (=> b!7442283 (= e!4443992 (nullableZipper!3149 (derivationStepZipper!3714 lt!2619429 (head!15268 (t!386699 s!7945)))))))

(declare-fun b!7442284 () Bool)

(assert (=> b!7442284 (= e!4443992 (matchZipper!3822 (derivationStepZipper!3714 (derivationStepZipper!3714 lt!2619429 (head!15268 (t!386699 s!7945))) (head!15268 (tail!14847 (t!386699 s!7945)))) (tail!14847 (tail!14847 (t!386699 s!7945)))))))

(assert (= (and d!2295703 c!1377220) b!7442283))

(assert (= (and d!2295703 (not c!1377220)) b!7442284))

(assert (=> d!2295703 m!8053722))

(declare-fun m!8053838 () Bool)

(assert (=> d!2295703 m!8053838))

(assert (=> b!7442283 m!8053720))

(declare-fun m!8053840 () Bool)

(assert (=> b!7442283 m!8053840))

(assert (=> b!7442284 m!8053722))

(declare-fun m!8053842 () Bool)

(assert (=> b!7442284 m!8053842))

(assert (=> b!7442284 m!8053720))

(assert (=> b!7442284 m!8053842))

(declare-fun m!8053844 () Bool)

(assert (=> b!7442284 m!8053844))

(assert (=> b!7442284 m!8053722))

(declare-fun m!8053846 () Bool)

(assert (=> b!7442284 m!8053846))

(assert (=> b!7442284 m!8053844))

(assert (=> b!7442284 m!8053846))

(declare-fun m!8053848 () Bool)

(assert (=> b!7442284 m!8053848))

(assert (=> b!7442177 d!2295703))

(declare-fun bs!1926366 () Bool)

(declare-fun d!2295705 () Bool)

(assert (= bs!1926366 (and d!2295705 b!7442109)))

(declare-fun lambda!460475 () Int)

(assert (=> bs!1926366 (= (= (head!15268 (t!386699 s!7945)) (h!78458 s!7945)) (= lambda!460475 lambda!460446))))

(declare-fun bs!1926367 () Bool)

(assert (= bs!1926367 (and d!2295705 d!2295637)))

(assert (=> bs!1926367 (= (= (head!15268 (t!386699 s!7945)) (h!78458 s!7945)) (= lambda!460475 lambda!460461))))

(declare-fun bs!1926368 () Bool)

(assert (= bs!1926368 (and d!2295705 d!2295697)))

(assert (=> bs!1926368 (= (= (head!15268 (t!386699 s!7945)) (head!15268 s!7945)) (= lambda!460475 lambda!460474))))

(assert (=> d!2295705 true))

(assert (=> d!2295705 (= (derivationStepZipper!3714 lt!2619429 (head!15268 (t!386699 s!7945))) (flatMap!3236 lt!2619429 lambda!460475))))

(declare-fun bs!1926369 () Bool)

(assert (= bs!1926369 d!2295705))

(declare-fun m!8053850 () Bool)

(assert (=> bs!1926369 m!8053850))

(assert (=> b!7442177 d!2295705))

(declare-fun d!2295707 () Bool)

(assert (=> d!2295707 (= (head!15268 (t!386699 s!7945)) (h!78458 (t!386699 s!7945)))))

(assert (=> b!7442177 d!2295707))

(declare-fun d!2295709 () Bool)

(assert (=> d!2295709 (= (tail!14847 (t!386699 s!7945)) (t!386699 (t!386699 s!7945)))))

(assert (=> b!7442177 d!2295709))

(declare-fun bs!1926370 () Bool)

(declare-fun d!2295711 () Bool)

(assert (= bs!1926370 (and d!2295711 d!2295627)))

(declare-fun lambda!460478 () Int)

(assert (=> bs!1926370 (not (= lambda!460478 lambda!460455))))

(declare-fun bs!1926371 () Bool)

(assert (= bs!1926371 (and d!2295711 d!2295679)))

(assert (=> bs!1926371 (not (= lambda!460478 lambda!460472))))

(assert (=> d!2295711 (= (nullableZipper!3149 z!3488) (exists!4809 z!3488 lambda!460478))))

(declare-fun bs!1926372 () Bool)

(assert (= bs!1926372 d!2295711))

(declare-fun m!8053852 () Bool)

(assert (=> bs!1926372 m!8053852))

(assert (=> b!7442174 d!2295711))

(declare-fun bs!1926373 () Bool)

(declare-fun d!2295713 () Bool)

(assert (= bs!1926373 (and d!2295713 d!2295627)))

(declare-fun lambda!460479 () Int)

(assert (=> bs!1926373 (not (= lambda!460479 lambda!460455))))

(declare-fun bs!1926374 () Bool)

(assert (= bs!1926374 (and d!2295713 d!2295679)))

(assert (=> bs!1926374 (not (= lambda!460479 lambda!460472))))

(declare-fun bs!1926375 () Bool)

(assert (= bs!1926375 (and d!2295713 d!2295711)))

(assert (=> bs!1926375 (= lambda!460479 lambda!460478)))

(assert (=> d!2295713 (= (nullableZipper!3149 lt!2619429) (exists!4809 lt!2619429 lambda!460479))))

(declare-fun bs!1926376 () Bool)

(assert (= bs!1926376 d!2295713))

(declare-fun m!8053854 () Bool)

(assert (=> bs!1926376 m!8053854))

(assert (=> b!7442176 d!2295713))

(declare-fun d!2295715 () Bool)

(assert (=> d!2295715 (= (flatMap!3236 z!3488 lambda!460461) (choose!57531 z!3488 lambda!460461))))

(declare-fun bs!1926377 () Bool)

(assert (= bs!1926377 d!2295715))

(declare-fun m!8053856 () Bool)

(assert (=> bs!1926377 m!8053856))

(assert (=> d!2295637 d!2295715))

(declare-fun b!7442307 () Bool)

(declare-fun e!4444006 () (Set Context!16788))

(declare-fun e!4444009 () (Set Context!16788))

(assert (=> b!7442307 (= e!4444006 e!4444009)))

(declare-fun c!1377233 () Bool)

(assert (=> b!7442307 (= c!1377233 (is-Concat!28299 (h!78456 (exprs!8894 lt!2619432))))))

(declare-fun call!684123 () (Set Context!16788))

(declare-fun c!1377235 () Bool)

(declare-fun call!684124 () List!72132)

(declare-fun c!1377236 () Bool)

(declare-fun bm!684117 () Bool)

(assert (=> bm!684117 (= call!684123 (derivationStepZipperDown!3227 (ite c!1377236 (regOne!39421 (h!78456 (exprs!8894 lt!2619432))) (ite c!1377235 (regTwo!39420 (h!78456 (exprs!8894 lt!2619432))) (ite c!1377233 (regOne!39420 (h!78456 (exprs!8894 lt!2619432))) (reg!19783 (h!78456 (exprs!8894 lt!2619432)))))) (ite (or c!1377236 c!1377235) (Context!16789 (t!386697 (exprs!8894 lt!2619432))) (Context!16789 call!684124)) (h!78458 s!7945)))))

(declare-fun b!7442308 () Bool)

(declare-fun e!4444008 () (Set Context!16788))

(declare-fun call!684122 () (Set Context!16788))

(assert (=> b!7442308 (= e!4444008 (set.union call!684123 call!684122))))

(declare-fun b!7442309 () Bool)

(declare-fun call!684126 () (Set Context!16788))

(assert (=> b!7442309 (= e!4444006 (set.union call!684122 call!684126))))

(declare-fun bm!684118 () Bool)

(assert (=> bm!684118 (= call!684126 call!684123)))

(declare-fun b!7442310 () Bool)

(declare-fun e!4444005 () Bool)

(assert (=> b!7442310 (= c!1377235 e!4444005)))

(declare-fun res!2986735 () Bool)

(assert (=> b!7442310 (=> (not res!2986735) (not e!4444005))))

(assert (=> b!7442310 (= res!2986735 (is-Concat!28299 (h!78456 (exprs!8894 lt!2619432))))))

(assert (=> b!7442310 (= e!4444008 e!4444006)))

(declare-fun b!7442311 () Bool)

(declare-fun c!1377237 () Bool)

(assert (=> b!7442311 (= c!1377237 (is-Star!19454 (h!78456 (exprs!8894 lt!2619432))))))

(declare-fun e!4444010 () (Set Context!16788))

(assert (=> b!7442311 (= e!4444009 e!4444010)))

(declare-fun call!684125 () List!72132)

(declare-fun bm!684119 () Bool)

(assert (=> bm!684119 (= call!684122 (derivationStepZipperDown!3227 (ite c!1377236 (regTwo!39421 (h!78456 (exprs!8894 lt!2619432))) (regOne!39420 (h!78456 (exprs!8894 lt!2619432)))) (ite c!1377236 (Context!16789 (t!386697 (exprs!8894 lt!2619432))) (Context!16789 call!684125)) (h!78458 s!7945)))))

(declare-fun b!7442312 () Bool)

(assert (=> b!7442312 (= e!4444010 (as set.empty (Set Context!16788)))))

(declare-fun d!2295717 () Bool)

(declare-fun c!1377234 () Bool)

(assert (=> d!2295717 (= c!1377234 (and (is-ElementMatch!19454 (h!78456 (exprs!8894 lt!2619432))) (= (c!1377185 (h!78456 (exprs!8894 lt!2619432))) (h!78458 s!7945))))))

(declare-fun e!4444007 () (Set Context!16788))

(assert (=> d!2295717 (= (derivationStepZipperDown!3227 (h!78456 (exprs!8894 lt!2619432)) (Context!16789 (t!386697 (exprs!8894 lt!2619432))) (h!78458 s!7945)) e!4444007)))

(declare-fun b!7442313 () Bool)

(assert (=> b!7442313 (= e!4444005 (nullable!8479 (regOne!39420 (h!78456 (exprs!8894 lt!2619432)))))))

(declare-fun bm!684120 () Bool)

(declare-fun $colon$colon!3356 (List!72132 Regex!19454) List!72132)

(assert (=> bm!684120 (= call!684125 ($colon$colon!3356 (exprs!8894 (Context!16789 (t!386697 (exprs!8894 lt!2619432)))) (ite (or c!1377235 c!1377233) (regTwo!39420 (h!78456 (exprs!8894 lt!2619432))) (h!78456 (exprs!8894 lt!2619432)))))))

(declare-fun b!7442314 () Bool)

(declare-fun call!684127 () (Set Context!16788))

(assert (=> b!7442314 (= e!4444009 call!684127)))

(declare-fun b!7442315 () Bool)

(assert (=> b!7442315 (= e!4444007 (set.insert (Context!16789 (t!386697 (exprs!8894 lt!2619432))) (as set.empty (Set Context!16788))))))

(declare-fun b!7442316 () Bool)

(assert (=> b!7442316 (= e!4444007 e!4444008)))

(assert (=> b!7442316 (= c!1377236 (is-Union!19454 (h!78456 (exprs!8894 lt!2619432))))))

(declare-fun bm!684121 () Bool)

(assert (=> bm!684121 (= call!684124 call!684125)))

(declare-fun bm!684122 () Bool)

(assert (=> bm!684122 (= call!684127 call!684126)))

(declare-fun b!7442317 () Bool)

(assert (=> b!7442317 (= e!4444010 call!684127)))

(assert (= (and d!2295717 c!1377234) b!7442315))

(assert (= (and d!2295717 (not c!1377234)) b!7442316))

(assert (= (and b!7442316 c!1377236) b!7442308))

(assert (= (and b!7442316 (not c!1377236)) b!7442310))

(assert (= (and b!7442310 res!2986735) b!7442313))

(assert (= (and b!7442310 c!1377235) b!7442309))

(assert (= (and b!7442310 (not c!1377235)) b!7442307))

(assert (= (and b!7442307 c!1377233) b!7442314))

(assert (= (and b!7442307 (not c!1377233)) b!7442311))

(assert (= (and b!7442311 c!1377237) b!7442317))

(assert (= (and b!7442311 (not c!1377237)) b!7442312))

(assert (= (or b!7442314 b!7442317) bm!684121))

(assert (= (or b!7442314 b!7442317) bm!684122))

(assert (= (or b!7442309 bm!684122) bm!684118))

(assert (= (or b!7442309 bm!684121) bm!684120))

(assert (= (or b!7442308 b!7442309) bm!684119))

(assert (= (or b!7442308 bm!684118) bm!684117))

(declare-fun m!8053858 () Bool)

(assert (=> b!7442315 m!8053858))

(declare-fun m!8053860 () Bool)

(assert (=> b!7442313 m!8053860))

(declare-fun m!8053862 () Bool)

(assert (=> bm!684119 m!8053862))

(declare-fun m!8053864 () Bool)

(assert (=> bm!684120 m!8053864))

(declare-fun m!8053866 () Bool)

(assert (=> bm!684117 m!8053866))

(assert (=> bm!684100 d!2295717))

(declare-fun condSetEmpty!56600 () Bool)

(assert (=> setNonEmpty!56596 (= condSetEmpty!56600 (= setRest!56596 (as set.empty (Set Context!16788))))))

(declare-fun setRes!56600 () Bool)

(assert (=> setNonEmpty!56596 (= tp!2151710 setRes!56600)))

(declare-fun setIsEmpty!56600 () Bool)

(assert (=> setIsEmpty!56600 setRes!56600))

(declare-fun setNonEmpty!56600 () Bool)

(declare-fun e!4444011 () Bool)

(declare-fun tp!2151738 () Bool)

(declare-fun setElem!56600 () Context!16788)

(assert (=> setNonEmpty!56600 (= setRes!56600 (and tp!2151738 (inv!91997 setElem!56600) e!4444011))))

(declare-fun setRest!56600 () (Set Context!16788))

(assert (=> setNonEmpty!56600 (= setRest!56596 (set.union (set.insert setElem!56600 (as set.empty (Set Context!16788))) setRest!56600))))

(declare-fun b!7442318 () Bool)

(declare-fun tp!2151739 () Bool)

(assert (=> b!7442318 (= e!4444011 tp!2151739)))

(assert (= (and setNonEmpty!56596 condSetEmpty!56600) setIsEmpty!56600))

(assert (= (and setNonEmpty!56596 (not condSetEmpty!56600)) setNonEmpty!56600))

(assert (= setNonEmpty!56600 b!7442318))

(declare-fun m!8053868 () Bool)

(assert (=> setNonEmpty!56600 m!8053868))

(declare-fun b!7442332 () Bool)

(declare-fun e!4444014 () Bool)

(declare-fun tp!2151752 () Bool)

(declare-fun tp!2151750 () Bool)

(assert (=> b!7442332 (= e!4444014 (and tp!2151752 tp!2151750))))

(declare-fun b!7442329 () Bool)

(assert (=> b!7442329 (= e!4444014 tp_is_empty!49167)))

(declare-fun b!7442331 () Bool)

(declare-fun tp!2151753 () Bool)

(assert (=> b!7442331 (= e!4444014 tp!2151753)))

(assert (=> b!7442192 (= tp!2151699 e!4444014)))

(declare-fun b!7442330 () Bool)

(declare-fun tp!2151754 () Bool)

(declare-fun tp!2151751 () Bool)

(assert (=> b!7442330 (= e!4444014 (and tp!2151754 tp!2151751))))

(assert (= (and b!7442192 (is-ElementMatch!19454 (h!78456 (exprs!8894 empty!3675)))) b!7442329))

(assert (= (and b!7442192 (is-Concat!28299 (h!78456 (exprs!8894 empty!3675)))) b!7442330))

(assert (= (and b!7442192 (is-Star!19454 (h!78456 (exprs!8894 empty!3675)))) b!7442331))

(assert (= (and b!7442192 (is-Union!19454 (h!78456 (exprs!8894 empty!3675)))) b!7442332))

(declare-fun b!7442333 () Bool)

(declare-fun e!4444015 () Bool)

(declare-fun tp!2151755 () Bool)

(declare-fun tp!2151756 () Bool)

(assert (=> b!7442333 (= e!4444015 (and tp!2151755 tp!2151756))))

(assert (=> b!7442192 (= tp!2151700 e!4444015)))

(assert (= (and b!7442192 (is-Cons!72008 (t!386697 (exprs!8894 empty!3675)))) b!7442333))

(declare-fun b!7442334 () Bool)

(declare-fun e!4444016 () Bool)

(declare-fun tp!2151757 () Bool)

(assert (=> b!7442334 (= e!4444016 (and tp_is_empty!49167 tp!2151757))))

(assert (=> b!7442197 (= tp!2151703 e!4444016)))

(assert (= (and b!7442197 (is-Cons!72010 (t!386699 (t!386699 s!7945)))) b!7442334))

(declare-fun b!7442338 () Bool)

(declare-fun e!4444017 () Bool)

(declare-fun tp!2151760 () Bool)

(declare-fun tp!2151758 () Bool)

(assert (=> b!7442338 (= e!4444017 (and tp!2151760 tp!2151758))))

(declare-fun b!7442335 () Bool)

(assert (=> b!7442335 (= e!4444017 tp_is_empty!49167)))

(declare-fun b!7442337 () Bool)

(declare-fun tp!2151761 () Bool)

(assert (=> b!7442337 (= e!4444017 tp!2151761)))

(assert (=> b!7442198 (= tp!2151704 e!4444017)))

(declare-fun b!7442336 () Bool)

(declare-fun tp!2151762 () Bool)

(declare-fun tp!2151759 () Bool)

(assert (=> b!7442336 (= e!4444017 (and tp!2151762 tp!2151759))))

(assert (= (and b!7442198 (is-ElementMatch!19454 (h!78456 (exprs!8894 setElem!56590)))) b!7442335))

(assert (= (and b!7442198 (is-Concat!28299 (h!78456 (exprs!8894 setElem!56590)))) b!7442336))

(assert (= (and b!7442198 (is-Star!19454 (h!78456 (exprs!8894 setElem!56590)))) b!7442337))

(assert (= (and b!7442198 (is-Union!19454 (h!78456 (exprs!8894 setElem!56590)))) b!7442338))

(declare-fun b!7442339 () Bool)

(declare-fun e!4444018 () Bool)

(declare-fun tp!2151763 () Bool)

(declare-fun tp!2151764 () Bool)

(assert (=> b!7442339 (= e!4444018 (and tp!2151763 tp!2151764))))

(assert (=> b!7442198 (= tp!2151705 e!4444018)))

(assert (= (and b!7442198 (is-Cons!72008 (t!386697 (exprs!8894 setElem!56590)))) b!7442339))

(declare-fun b!7442340 () Bool)

(declare-fun e!4444019 () Bool)

(declare-fun tp!2151765 () Bool)

(declare-fun tp!2151766 () Bool)

(assert (=> b!7442340 (= e!4444019 (and tp!2151765 tp!2151766))))

(assert (=> b!7442203 (= tp!2151711 e!4444019)))

(assert (= (and b!7442203 (is-Cons!72008 (exprs!8894 setElem!56596))) b!7442340))

(declare-fun b_lambda!287575 () Bool)

(assert (= b_lambda!287573 (or d!2295639 b_lambda!287575)))

(declare-fun bs!1926378 () Bool)

(declare-fun d!2295719 () Bool)

(assert (= bs!1926378 (and d!2295719 d!2295639)))

(declare-fun validRegex!9981 (Regex!19454) Bool)

(assert (=> bs!1926378 (= (dynLambda!29733 lambda!460462 (h!78456 (exprs!8894 setElem!56590))) (validRegex!9981 (h!78456 (exprs!8894 setElem!56590))))))

(declare-fun m!8053870 () Bool)

(assert (=> bs!1926378 m!8053870))

(assert (=> b!7442279 d!2295719))

(declare-fun b_lambda!287577 () Bool)

(assert (= b_lambda!287571 (or d!2295625 b_lambda!287577)))

(declare-fun bs!1926379 () Bool)

(declare-fun d!2295721 () Bool)

(assert (= bs!1926379 (and d!2295721 d!2295625)))

(assert (=> bs!1926379 (= (dynLambda!29733 lambda!460452 (h!78456 (exprs!8894 empty!3675))) (validRegex!9981 (h!78456 (exprs!8894 empty!3675))))))

(declare-fun m!8053872 () Bool)

(assert (=> bs!1926379 m!8053872))

(assert (=> b!7442277 d!2295721))

(push 1)

(assert (not b_lambda!287575))

(assert (not b!7442337))

(assert (not bm!684117))

(assert (not b!7442257))

(assert (not b!7442256))

(assert (not b!7442330))

(assert (not d!2295711))

(assert (not b!7442255))

(assert (not b!7442280))

(assert (not d!2295683))

(assert tp_is_empty!49167)

(assert (not d!2295673))

(assert (not d!2295705))

(assert (not bs!1926378))

(assert (not b!7442313))

(assert (not bm!684104))

(assert (not d!2295675))

(assert (not b!7442336))

(assert (not d!2295679))

(assert (not b!7442318))

(assert (not bm!684119))

(assert (not b_lambda!287577))

(assert (not bm!684120))

(assert (not b!7442339))

(assert (not setNonEmpty!56600))

(assert (not d!2295669))

(assert (not d!2295697))

(assert (not b!7442333))

(assert (not b!7442261))

(assert (not b!7442332))

(assert (not d!2295703))

(assert (not b!7442283))

(assert (not b!7442267))

(assert (not b!7442278))

(assert (not b!7442284))

(assert (not b!7442248))

(assert (not d!2295713))

(assert (not b!7442270))

(assert (not b!7442338))

(assert (not b!7442247))

(assert (not bs!1926379))

(assert (not b!7442334))

(assert (not d!2295695))

(assert (not d!2295715))

(assert (not b!7442281))

(assert (not b!7442340))

(assert (not d!2295681))

(assert (not b!7442269))

(assert (not b!7442282))

(assert (not b!7442331))

(assert (not d!2295677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

