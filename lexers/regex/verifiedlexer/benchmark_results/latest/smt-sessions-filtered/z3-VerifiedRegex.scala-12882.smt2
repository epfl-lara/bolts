; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!711374 () Bool)

(assert start!711374)

(declare-fun b!7296826 () Bool)

(assert (=> b!7296826 true))

(declare-fun b!7296815 () Bool)

(declare-fun res!2951328 () Bool)

(declare-fun e!4370369 () Bool)

(assert (=> b!7296815 (=> (not res!2951328) (not e!4370369))))

(declare-datatypes ((C!38020 0))(
  ( (C!38021 (val!28958 Int)) )
))
(declare-datatypes ((List!71063 0))(
  ( (Nil!70939) (Cons!70939 (h!77387 C!38020) (t!385139 List!71063)) )
))
(declare-fun s!7854 () List!71063)

(get-info :version)

(assert (=> b!7296815 (= res!2951328 ((_ is Cons!70939) s!7854))))

(declare-fun b!7296816 () Bool)

(declare-fun e!4370364 () Bool)

(declare-fun e!4370368 () Bool)

(assert (=> b!7296816 (= e!4370364 e!4370368)))

(declare-fun res!2951322 () Bool)

(assert (=> b!7296816 (=> res!2951322 e!4370368)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18873 0))(
  ( (ElementMatch!18873 (c!1356286 C!38020)) (Concat!27718 (regOne!38258 Regex!18873) (regTwo!38258 Regex!18873)) (EmptyExpr!18873) (Star!18873 (reg!19202 Regex!18873)) (EmptyLang!18873) (Union!18873 (regOne!38259 Regex!18873) (regTwo!38259 Regex!18873)) )
))
(declare-datatypes ((List!71064 0))(
  ( (Nil!70940) (Cons!70940 (h!77388 Regex!18873) (t!385140 List!71064)) )
))
(declare-datatypes ((Context!15626 0))(
  ( (Context!15627 (exprs!8313 List!71064)) )
))
(declare-fun lt!2598654 () (InoxSet Context!15626))

(declare-fun matchZipper!3777 ((InoxSet Context!15626) List!71063) Bool)

(assert (=> b!7296816 (= res!2951322 (not (matchZipper!3777 lt!2598654 (t!385139 s!7854))))))

(declare-datatypes ((Unit!164344 0))(
  ( (Unit!164345) )
))
(declare-fun lt!2598632 () Unit!164344)

(declare-fun ct2!346 () Context!15626)

(declare-fun lt!2598646 () List!71064)

(declare-fun lambda!450680 () Int)

(declare-fun lemmaConcatPreservesForall!1620 (List!71064 List!71064 Int) Unit!164344)

(assert (=> b!7296816 (= lt!2598632 (lemmaConcatPreservesForall!1620 lt!2598646 (exprs!8313 ct2!346) lambda!450680))))

(declare-fun lt!2598628 () (InoxSet Context!15626))

(declare-fun lt!2598629 () Context!15626)

(declare-fun lambda!450681 () Int)

(declare-fun flatMap!2968 ((InoxSet Context!15626) Int) (InoxSet Context!15626))

(declare-fun derivationStepZipperUp!2623 (Context!15626 C!38020) (InoxSet Context!15626))

(assert (=> b!7296816 (= (flatMap!2968 lt!2598628 lambda!450681) (derivationStepZipperUp!2623 lt!2598629 (h!77387 s!7854)))))

(declare-fun lt!2598642 () Unit!164344)

(declare-fun lemmaFlatMapOnSingletonSet!2366 ((InoxSet Context!15626) Context!15626 Int) Unit!164344)

(assert (=> b!7296816 (= lt!2598642 (lemmaFlatMapOnSingletonSet!2366 lt!2598628 lt!2598629 lambda!450681))))

(declare-fun lt!2598651 () Unit!164344)

(assert (=> b!7296816 (= lt!2598651 (lemmaConcatPreservesForall!1620 lt!2598646 (exprs!8313 ct2!346) lambda!450680))))

(declare-fun lt!2598634 () Unit!164344)

(assert (=> b!7296816 (= lt!2598634 (lemmaConcatPreservesForall!1620 lt!2598646 (exprs!8313 ct2!346) lambda!450680))))

(declare-fun lt!2598653 () Unit!164344)

(assert (=> b!7296816 (= lt!2598653 (lemmaConcatPreservesForall!1620 lt!2598646 (exprs!8313 ct2!346) lambda!450680))))

(assert (=> b!7296816 (matchZipper!3777 lt!2598628 s!7854)))

(assert (=> b!7296816 (= lt!2598628 (store ((as const (Array Context!15626 Bool)) false) lt!2598629 true))))

(declare-fun lt!2598640 () Unit!164344)

(assert (=> b!7296816 (= lt!2598640 (lemmaConcatPreservesForall!1620 lt!2598646 (exprs!8313 ct2!346) lambda!450680))))

(declare-fun lt!2598630 () Unit!164344)

(declare-fun lt!2598638 () Context!15626)

(declare-fun lemmaPrependingNullableCtxStillMatches!56 (Context!15626 Context!15626 List!71063) Unit!164344)

(assert (=> b!7296816 (= lt!2598630 (lemmaPrependingNullableCtxStillMatches!56 lt!2598638 ct2!346 s!7854))))

(declare-fun b!7296817 () Bool)

(declare-fun res!2951323 () Bool)

(declare-fun e!4370366 () Bool)

(assert (=> b!7296817 (=> res!2951323 e!4370366)))

(declare-fun ct1!250 () Context!15626)

(declare-fun isEmpty!40809 (List!71064) Bool)

(assert (=> b!7296817 (= res!2951323 (isEmpty!40809 (exprs!8313 ct1!250)))))

(declare-fun b!7296818 () Bool)

(declare-fun e!4370363 () Bool)

(declare-fun tp!2062490 () Bool)

(assert (=> b!7296818 (= e!4370363 tp!2062490)))

(declare-fun b!7296819 () Bool)

(declare-fun e!4370370 () Bool)

(assert (=> b!7296819 (= e!4370370 e!4370364)))

(declare-fun res!2951327 () Bool)

(assert (=> b!7296819 (=> res!2951327 e!4370364)))

(declare-fun lt!2598644 () (InoxSet Context!15626))

(declare-fun lt!2598655 () (InoxSet Context!15626))

(assert (=> b!7296819 (= res!2951327 (not (= lt!2598644 ((_ map or) lt!2598655 lt!2598654))))))

(assert (=> b!7296819 (= lt!2598654 (derivationStepZipperUp!2623 lt!2598629 (h!77387 s!7854)))))

(declare-fun derivationStepZipperDown!2779 (Regex!18873 Context!15626 C!38020) (InoxSet Context!15626))

(assert (=> b!7296819 (= lt!2598655 (derivationStepZipperDown!2779 (h!77388 (exprs!8313 ct1!250)) lt!2598629 (h!77387 s!7854)))))

(declare-fun ++!16763 (List!71064 List!71064) List!71064)

(assert (=> b!7296819 (= lt!2598629 (Context!15627 (++!16763 lt!2598646 (exprs!8313 ct2!346))))))

(declare-fun lt!2598652 () Unit!164344)

(assert (=> b!7296819 (= lt!2598652 (lemmaConcatPreservesForall!1620 lt!2598646 (exprs!8313 ct2!346) lambda!450680))))

(declare-fun lt!2598645 () Unit!164344)

(assert (=> b!7296819 (= lt!2598645 (lemmaConcatPreservesForall!1620 lt!2598646 (exprs!8313 ct2!346) lambda!450680))))

(declare-fun b!7296820 () Bool)

(declare-fun res!2951326 () Bool)

(assert (=> b!7296820 (=> res!2951326 e!4370370)))

(declare-fun lt!2598639 () (InoxSet Context!15626))

(assert (=> b!7296820 (= res!2951326 (not (= lt!2598639 ((_ map or) (derivationStepZipperDown!2779 (h!77388 (exprs!8313 ct1!250)) lt!2598638 (h!77387 s!7854)) (derivationStepZipperUp!2623 lt!2598638 (h!77387 s!7854))))))))

(declare-fun b!7296821 () Bool)

(declare-fun res!2951325 () Bool)

(assert (=> b!7296821 (=> (not res!2951325) (not e!4370369))))

(declare-fun nullableContext!363 (Context!15626) Bool)

(assert (=> b!7296821 (= res!2951325 (nullableContext!363 ct1!250))))

(declare-fun res!2951324 () Bool)

(assert (=> start!711374 (=> (not res!2951324) (not e!4370369))))

(assert (=> start!711374 (= res!2951324 (matchZipper!3777 (store ((as const (Array Context!15626 Bool)) false) ct2!346 true) s!7854))))

(assert (=> start!711374 e!4370369))

(declare-fun inv!90192 (Context!15626) Bool)

(assert (=> start!711374 (and (inv!90192 ct2!346) e!4370363)))

(declare-fun e!4370365 () Bool)

(assert (=> start!711374 e!4370365))

(declare-fun e!4370367 () Bool)

(assert (=> start!711374 (and (inv!90192 ct1!250) e!4370367)))

(declare-fun b!7296822 () Bool)

(declare-fun tp_is_empty!47211 () Bool)

(declare-fun tp!2062491 () Bool)

(assert (=> b!7296822 (= e!4370365 (and tp_is_empty!47211 tp!2062491))))

(declare-fun b!7296823 () Bool)

(assert (=> b!7296823 (= e!4370368 (inv!90192 lt!2598629))))

(declare-fun lt!2598635 () Unit!164344)

(assert (=> b!7296823 (= lt!2598635 (lemmaConcatPreservesForall!1620 lt!2598646 (exprs!8313 ct2!346) lambda!450680))))

(declare-fun lt!2598641 () Unit!164344)

(assert (=> b!7296823 (= lt!2598641 (lemmaConcatPreservesForall!1620 lt!2598646 (exprs!8313 ct2!346) lambda!450680))))

(declare-fun b!7296824 () Bool)

(assert (=> b!7296824 (= e!4370366 e!4370370)))

(declare-fun res!2951321 () Bool)

(assert (=> b!7296824 (=> res!2951321 e!4370370)))

(declare-fun nullable!8050 (Regex!18873) Bool)

(assert (=> b!7296824 (= res!2951321 (not (nullable!8050 (h!77388 (exprs!8313 ct1!250)))))))

(assert (=> b!7296824 (= lt!2598639 (derivationStepZipperUp!2623 ct1!250 (h!77387 s!7854)))))

(assert (=> b!7296824 (= lt!2598638 (Context!15627 lt!2598646))))

(declare-fun tail!14592 (List!71064) List!71064)

(assert (=> b!7296824 (= lt!2598646 (tail!14592 (exprs!8313 ct1!250)))))

(declare-fun b!7296825 () Bool)

(declare-fun tp!2062492 () Bool)

(assert (=> b!7296825 (= e!4370367 tp!2062492)))

(assert (=> b!7296826 (= e!4370369 (not e!4370366))))

(declare-fun res!2951320 () Bool)

(assert (=> b!7296826 (=> res!2951320 e!4370366)))

(declare-fun lt!2598643 () (InoxSet Context!15626))

(declare-fun derivationStepZipper!3606 ((InoxSet Context!15626) C!38020) (InoxSet Context!15626))

(assert (=> b!7296826 (= res!2951320 (not (= lt!2598644 (derivationStepZipper!3606 lt!2598643 (h!77387 s!7854)))))))

(declare-fun lt!2598650 () Unit!164344)

(assert (=> b!7296826 (= lt!2598650 (lemmaConcatPreservesForall!1620 (exprs!8313 ct1!250) (exprs!8313 ct2!346) lambda!450680))))

(declare-fun lt!2598648 () Context!15626)

(assert (=> b!7296826 (= (flatMap!2968 lt!2598643 lambda!450681) (derivationStepZipperUp!2623 lt!2598648 (h!77387 s!7854)))))

(declare-fun lt!2598647 () Unit!164344)

(assert (=> b!7296826 (= lt!2598647 (lemmaFlatMapOnSingletonSet!2366 lt!2598643 lt!2598648 lambda!450681))))

(assert (=> b!7296826 (= lt!2598643 (store ((as const (Array Context!15626 Bool)) false) lt!2598648 true))))

(declare-fun lt!2598637 () Unit!164344)

(assert (=> b!7296826 (= lt!2598637 (lemmaConcatPreservesForall!1620 (exprs!8313 ct1!250) (exprs!8313 ct2!346) lambda!450680))))

(declare-fun lt!2598633 () Unit!164344)

(assert (=> b!7296826 (= lt!2598633 (lemmaConcatPreservesForall!1620 (exprs!8313 ct1!250) (exprs!8313 ct2!346) lambda!450680))))

(declare-fun lt!2598631 () (InoxSet Context!15626))

(assert (=> b!7296826 (= (flatMap!2968 lt!2598631 lambda!450681) (derivationStepZipperUp!2623 ct1!250 (h!77387 s!7854)))))

(declare-fun lt!2598636 () Unit!164344)

(assert (=> b!7296826 (= lt!2598636 (lemmaFlatMapOnSingletonSet!2366 lt!2598631 ct1!250 lambda!450681))))

(assert (=> b!7296826 (= lt!2598631 (store ((as const (Array Context!15626 Bool)) false) ct1!250 true))))

(assert (=> b!7296826 (= lt!2598644 (derivationStepZipperUp!2623 lt!2598648 (h!77387 s!7854)))))

(assert (=> b!7296826 (= lt!2598648 (Context!15627 (++!16763 (exprs!8313 ct1!250) (exprs!8313 ct2!346))))))

(declare-fun lt!2598649 () Unit!164344)

(assert (=> b!7296826 (= lt!2598649 (lemmaConcatPreservesForall!1620 (exprs!8313 ct1!250) (exprs!8313 ct2!346) lambda!450680))))

(declare-fun b!7296827 () Bool)

(declare-fun res!2951329 () Bool)

(assert (=> b!7296827 (=> res!2951329 e!4370366)))

(assert (=> b!7296827 (= res!2951329 (not ((_ is Cons!70940) (exprs!8313 ct1!250))))))

(assert (= (and start!711374 res!2951324) b!7296821))

(assert (= (and b!7296821 res!2951325) b!7296815))

(assert (= (and b!7296815 res!2951328) b!7296826))

(assert (= (and b!7296826 (not res!2951320)) b!7296827))

(assert (= (and b!7296827 (not res!2951329)) b!7296817))

(assert (= (and b!7296817 (not res!2951323)) b!7296824))

(assert (= (and b!7296824 (not res!2951321)) b!7296820))

(assert (= (and b!7296820 (not res!2951326)) b!7296819))

(assert (= (and b!7296819 (not res!2951327)) b!7296816))

(assert (= (and b!7296816 (not res!2951322)) b!7296823))

(assert (= start!711374 b!7296818))

(assert (= (and start!711374 ((_ is Cons!70939) s!7854)) b!7296822))

(assert (= start!711374 b!7296825))

(declare-fun m!7968754 () Bool)

(assert (=> b!7296826 m!7968754))

(declare-fun m!7968756 () Bool)

(assert (=> b!7296826 m!7968756))

(declare-fun m!7968758 () Bool)

(assert (=> b!7296826 m!7968758))

(declare-fun m!7968760 () Bool)

(assert (=> b!7296826 m!7968760))

(assert (=> b!7296826 m!7968754))

(declare-fun m!7968762 () Bool)

(assert (=> b!7296826 m!7968762))

(declare-fun m!7968764 () Bool)

(assert (=> b!7296826 m!7968764))

(declare-fun m!7968766 () Bool)

(assert (=> b!7296826 m!7968766))

(declare-fun m!7968768 () Bool)

(assert (=> b!7296826 m!7968768))

(assert (=> b!7296826 m!7968754))

(assert (=> b!7296826 m!7968754))

(declare-fun m!7968770 () Bool)

(assert (=> b!7296826 m!7968770))

(declare-fun m!7968772 () Bool)

(assert (=> b!7296826 m!7968772))

(declare-fun m!7968774 () Bool)

(assert (=> b!7296826 m!7968774))

(declare-fun m!7968776 () Bool)

(assert (=> b!7296817 m!7968776))

(declare-fun m!7968778 () Bool)

(assert (=> b!7296821 m!7968778))

(declare-fun m!7968780 () Bool)

(assert (=> b!7296823 m!7968780))

(declare-fun m!7968782 () Bool)

(assert (=> b!7296823 m!7968782))

(assert (=> b!7296823 m!7968782))

(declare-fun m!7968784 () Bool)

(assert (=> start!711374 m!7968784))

(assert (=> start!711374 m!7968784))

(declare-fun m!7968786 () Bool)

(assert (=> start!711374 m!7968786))

(declare-fun m!7968788 () Bool)

(assert (=> start!711374 m!7968788))

(declare-fun m!7968790 () Bool)

(assert (=> start!711374 m!7968790))

(assert (=> b!7296819 m!7968782))

(declare-fun m!7968792 () Bool)

(assert (=> b!7296819 m!7968792))

(declare-fun m!7968794 () Bool)

(assert (=> b!7296819 m!7968794))

(assert (=> b!7296819 m!7968782))

(declare-fun m!7968796 () Bool)

(assert (=> b!7296819 m!7968796))

(declare-fun m!7968798 () Bool)

(assert (=> b!7296820 m!7968798))

(declare-fun m!7968800 () Bool)

(assert (=> b!7296820 m!7968800))

(declare-fun m!7968802 () Bool)

(assert (=> b!7296824 m!7968802))

(assert (=> b!7296824 m!7968760))

(declare-fun m!7968804 () Bool)

(assert (=> b!7296824 m!7968804))

(assert (=> b!7296816 m!7968782))

(assert (=> b!7296816 m!7968782))

(declare-fun m!7968806 () Bool)

(assert (=> b!7296816 m!7968806))

(declare-fun m!7968808 () Bool)

(assert (=> b!7296816 m!7968808))

(declare-fun m!7968810 () Bool)

(assert (=> b!7296816 m!7968810))

(assert (=> b!7296816 m!7968782))

(assert (=> b!7296816 m!7968782))

(assert (=> b!7296816 m!7968782))

(declare-fun m!7968812 () Bool)

(assert (=> b!7296816 m!7968812))

(assert (=> b!7296816 m!7968796))

(declare-fun m!7968814 () Bool)

(assert (=> b!7296816 m!7968814))

(declare-fun m!7968816 () Bool)

(assert (=> b!7296816 m!7968816))

(check-sat (not b!7296821) tp_is_empty!47211 (not start!711374) (not b!7296817) (not b!7296824) (not b!7296816) (not b!7296823) (not b!7296826) (not b!7296825) (not b!7296819) (not b!7296822) (not b!7296820) (not b!7296818))
(check-sat)
(get-model)

(declare-fun d!2267193 () Bool)

(declare-fun forall!17693 (List!71064 Int) Bool)

(assert (=> d!2267193 (forall!17693 (++!16763 lt!2598646 (exprs!8313 ct2!346)) lambda!450680)))

(declare-fun lt!2598658 () Unit!164344)

(declare-fun choose!56546 (List!71064 List!71064 Int) Unit!164344)

(assert (=> d!2267193 (= lt!2598658 (choose!56546 lt!2598646 (exprs!8313 ct2!346) lambda!450680))))

(assert (=> d!2267193 (forall!17693 lt!2598646 lambda!450680)))

(assert (=> d!2267193 (= (lemmaConcatPreservesForall!1620 lt!2598646 (exprs!8313 ct2!346) lambda!450680) lt!2598658)))

(declare-fun bs!1913119 () Bool)

(assert (= bs!1913119 d!2267193))

(assert (=> bs!1913119 m!7968794))

(assert (=> bs!1913119 m!7968794))

(declare-fun m!7968818 () Bool)

(assert (=> bs!1913119 m!7968818))

(declare-fun m!7968820 () Bool)

(assert (=> bs!1913119 m!7968820))

(declare-fun m!7968822 () Bool)

(assert (=> bs!1913119 m!7968822))

(assert (=> b!7296819 d!2267193))

(declare-fun b!7296840 () Bool)

(declare-fun e!4370379 () (InoxSet Context!15626))

(declare-fun e!4370377 () (InoxSet Context!15626))

(assert (=> b!7296840 (= e!4370379 e!4370377)))

(declare-fun c!1356291 () Bool)

(assert (=> b!7296840 (= c!1356291 ((_ is Cons!70940) (exprs!8313 lt!2598629)))))

(declare-fun b!7296841 () Bool)

(declare-fun call!664894 () (InoxSet Context!15626))

(assert (=> b!7296841 (= e!4370379 ((_ map or) call!664894 (derivationStepZipperUp!2623 (Context!15627 (t!385140 (exprs!8313 lt!2598629))) (h!77387 s!7854))))))

(declare-fun b!7296842 () Bool)

(declare-fun e!4370378 () Bool)

(assert (=> b!7296842 (= e!4370378 (nullable!8050 (h!77388 (exprs!8313 lt!2598629))))))

(declare-fun bm!664889 () Bool)

(assert (=> bm!664889 (= call!664894 (derivationStepZipperDown!2779 (h!77388 (exprs!8313 lt!2598629)) (Context!15627 (t!385140 (exprs!8313 lt!2598629))) (h!77387 s!7854)))))

(declare-fun b!7296843 () Bool)

(assert (=> b!7296843 (= e!4370377 call!664894)))

(declare-fun d!2267195 () Bool)

(declare-fun c!1356292 () Bool)

(assert (=> d!2267195 (= c!1356292 e!4370378)))

(declare-fun res!2951332 () Bool)

(assert (=> d!2267195 (=> (not res!2951332) (not e!4370378))))

(assert (=> d!2267195 (= res!2951332 ((_ is Cons!70940) (exprs!8313 lt!2598629)))))

(assert (=> d!2267195 (= (derivationStepZipperUp!2623 lt!2598629 (h!77387 s!7854)) e!4370379)))

(declare-fun b!7296844 () Bool)

(assert (=> b!7296844 (= e!4370377 ((as const (Array Context!15626 Bool)) false))))

(assert (= (and d!2267195 res!2951332) b!7296842))

(assert (= (and d!2267195 c!1356292) b!7296841))

(assert (= (and d!2267195 (not c!1356292)) b!7296840))

(assert (= (and b!7296840 c!1356291) b!7296843))

(assert (= (and b!7296840 (not c!1356291)) b!7296844))

(assert (= (or b!7296841 b!7296843) bm!664889))

(declare-fun m!7968824 () Bool)

(assert (=> b!7296841 m!7968824))

(declare-fun m!7968826 () Bool)

(assert (=> b!7296842 m!7968826))

(declare-fun m!7968828 () Bool)

(assert (=> bm!664889 m!7968828))

(assert (=> b!7296819 d!2267195))

(declare-fun d!2267197 () Bool)

(declare-fun c!1356304 () Bool)

(assert (=> d!2267197 (= c!1356304 (and ((_ is ElementMatch!18873) (h!77388 (exprs!8313 ct1!250))) (= (c!1356286 (h!77388 (exprs!8313 ct1!250))) (h!77387 s!7854))))))

(declare-fun e!4370393 () (InoxSet Context!15626))

(assert (=> d!2267197 (= (derivationStepZipperDown!2779 (h!77388 (exprs!8313 ct1!250)) lt!2598629 (h!77387 s!7854)) e!4370393)))

(declare-fun b!7296867 () Bool)

(assert (=> b!7296867 (= e!4370393 (store ((as const (Array Context!15626 Bool)) false) lt!2598629 true))))

(declare-fun bm!664902 () Bool)

(declare-fun call!664912 () (InoxSet Context!15626))

(declare-fun call!664909 () List!71064)

(declare-fun c!1356303 () Bool)

(assert (=> bm!664902 (= call!664912 (derivationStepZipperDown!2779 (ite c!1356303 (regOne!38259 (h!77388 (exprs!8313 ct1!250))) (regOne!38258 (h!77388 (exprs!8313 ct1!250)))) (ite c!1356303 lt!2598629 (Context!15627 call!664909)) (h!77387 s!7854)))))

(declare-fun b!7296868 () Bool)

(declare-fun e!4370394 () (InoxSet Context!15626))

(declare-fun e!4370392 () (InoxSet Context!15626))

(assert (=> b!7296868 (= e!4370394 e!4370392)))

(declare-fun c!1356305 () Bool)

(assert (=> b!7296868 (= c!1356305 ((_ is Concat!27718) (h!77388 (exprs!8313 ct1!250))))))

(declare-fun bm!664903 () Bool)

(declare-fun call!664910 () (InoxSet Context!15626))

(declare-fun call!664911 () (InoxSet Context!15626))

(assert (=> bm!664903 (= call!664910 call!664911)))

(declare-fun b!7296869 () Bool)

(assert (=> b!7296869 (= e!4370394 ((_ map or) call!664912 call!664911))))

(declare-fun b!7296870 () Bool)

(declare-fun c!1356306 () Bool)

(declare-fun e!4370397 () Bool)

(assert (=> b!7296870 (= c!1356306 e!4370397)))

(declare-fun res!2951335 () Bool)

(assert (=> b!7296870 (=> (not res!2951335) (not e!4370397))))

(assert (=> b!7296870 (= res!2951335 ((_ is Concat!27718) (h!77388 (exprs!8313 ct1!250))))))

(declare-fun e!4370396 () (InoxSet Context!15626))

(assert (=> b!7296870 (= e!4370396 e!4370394)))

(declare-fun b!7296871 () Bool)

(declare-fun c!1356307 () Bool)

(assert (=> b!7296871 (= c!1356307 ((_ is Star!18873) (h!77388 (exprs!8313 ct1!250))))))

(declare-fun e!4370395 () (InoxSet Context!15626))

(assert (=> b!7296871 (= e!4370392 e!4370395)))

(declare-fun b!7296872 () Bool)

(assert (=> b!7296872 (= e!4370395 call!664910)))

(declare-fun call!664907 () (InoxSet Context!15626))

(declare-fun bm!664904 () Bool)

(declare-fun call!664908 () List!71064)

(assert (=> bm!664904 (= call!664907 (derivationStepZipperDown!2779 (ite c!1356303 (regTwo!38259 (h!77388 (exprs!8313 ct1!250))) (ite c!1356306 (regTwo!38258 (h!77388 (exprs!8313 ct1!250))) (ite c!1356305 (regOne!38258 (h!77388 (exprs!8313 ct1!250))) (reg!19202 (h!77388 (exprs!8313 ct1!250)))))) (ite (or c!1356303 c!1356306) lt!2598629 (Context!15627 call!664908)) (h!77387 s!7854)))))

(declare-fun b!7296873 () Bool)

(assert (=> b!7296873 (= e!4370395 ((as const (Array Context!15626 Bool)) false))))

(declare-fun bm!664905 () Bool)

(assert (=> bm!664905 (= call!664911 call!664907)))

(declare-fun b!7296874 () Bool)

(assert (=> b!7296874 (= e!4370392 call!664910)))

(declare-fun b!7296875 () Bool)

(assert (=> b!7296875 (= e!4370397 (nullable!8050 (regOne!38258 (h!77388 (exprs!8313 ct1!250)))))))

(declare-fun b!7296876 () Bool)

(assert (=> b!7296876 (= e!4370396 ((_ map or) call!664912 call!664907))))

(declare-fun bm!664906 () Bool)

(declare-fun $colon$colon!3001 (List!71064 Regex!18873) List!71064)

(assert (=> bm!664906 (= call!664909 ($colon$colon!3001 (exprs!8313 lt!2598629) (ite (or c!1356306 c!1356305) (regTwo!38258 (h!77388 (exprs!8313 ct1!250))) (h!77388 (exprs!8313 ct1!250)))))))

(declare-fun b!7296877 () Bool)

(assert (=> b!7296877 (= e!4370393 e!4370396)))

(assert (=> b!7296877 (= c!1356303 ((_ is Union!18873) (h!77388 (exprs!8313 ct1!250))))))

(declare-fun bm!664907 () Bool)

(assert (=> bm!664907 (= call!664908 call!664909)))

(assert (= (and d!2267197 c!1356304) b!7296867))

(assert (= (and d!2267197 (not c!1356304)) b!7296877))

(assert (= (and b!7296877 c!1356303) b!7296876))

(assert (= (and b!7296877 (not c!1356303)) b!7296870))

(assert (= (and b!7296870 res!2951335) b!7296875))

(assert (= (and b!7296870 c!1356306) b!7296869))

(assert (= (and b!7296870 (not c!1356306)) b!7296868))

(assert (= (and b!7296868 c!1356305) b!7296874))

(assert (= (and b!7296868 (not c!1356305)) b!7296871))

(assert (= (and b!7296871 c!1356307) b!7296872))

(assert (= (and b!7296871 (not c!1356307)) b!7296873))

(assert (= (or b!7296874 b!7296872) bm!664907))

(assert (= (or b!7296874 b!7296872) bm!664903))

(assert (= (or b!7296869 bm!664907) bm!664906))

(assert (= (or b!7296869 bm!664903) bm!664905))

(assert (= (or b!7296876 b!7296869) bm!664902))

(assert (= (or b!7296876 bm!664905) bm!664904))

(declare-fun m!7968830 () Bool)

(assert (=> bm!664904 m!7968830))

(declare-fun m!7968832 () Bool)

(assert (=> bm!664902 m!7968832))

(declare-fun m!7968834 () Bool)

(assert (=> bm!664906 m!7968834))

(assert (=> b!7296867 m!7968812))

(declare-fun m!7968836 () Bool)

(assert (=> b!7296875 m!7968836))

(assert (=> b!7296819 d!2267197))

(declare-fun b!7296897 () Bool)

(declare-fun e!4370408 () List!71064)

(assert (=> b!7296897 (= e!4370408 (Cons!70940 (h!77388 lt!2598646) (++!16763 (t!385140 lt!2598646) (exprs!8313 ct2!346))))))

(declare-fun b!7296896 () Bool)

(assert (=> b!7296896 (= e!4370408 (exprs!8313 ct2!346))))

(declare-fun b!7296898 () Bool)

(declare-fun res!2951343 () Bool)

(declare-fun e!4370409 () Bool)

(assert (=> b!7296898 (=> (not res!2951343) (not e!4370409))))

(declare-fun lt!2598664 () List!71064)

(declare-fun size!41867 (List!71064) Int)

(assert (=> b!7296898 (= res!2951343 (= (size!41867 lt!2598664) (+ (size!41867 lt!2598646) (size!41867 (exprs!8313 ct2!346)))))))

(declare-fun b!7296899 () Bool)

(assert (=> b!7296899 (= e!4370409 (or (not (= (exprs!8313 ct2!346) Nil!70940)) (= lt!2598664 lt!2598646)))))

(declare-fun d!2267201 () Bool)

(assert (=> d!2267201 e!4370409))

(declare-fun res!2951342 () Bool)

(assert (=> d!2267201 (=> (not res!2951342) (not e!4370409))))

(declare-fun content!14821 (List!71064) (InoxSet Regex!18873))

(assert (=> d!2267201 (= res!2951342 (= (content!14821 lt!2598664) ((_ map or) (content!14821 lt!2598646) (content!14821 (exprs!8313 ct2!346)))))))

(assert (=> d!2267201 (= lt!2598664 e!4370408)))

(declare-fun c!1356314 () Bool)

(assert (=> d!2267201 (= c!1356314 ((_ is Nil!70940) lt!2598646))))

(assert (=> d!2267201 (= (++!16763 lt!2598646 (exprs!8313 ct2!346)) lt!2598664)))

(assert (= (and d!2267201 c!1356314) b!7296896))

(assert (= (and d!2267201 (not c!1356314)) b!7296897))

(assert (= (and d!2267201 res!2951342) b!7296898))

(assert (= (and b!7296898 res!2951343) b!7296899))

(declare-fun m!7968844 () Bool)

(assert (=> b!7296897 m!7968844))

(declare-fun m!7968846 () Bool)

(assert (=> b!7296898 m!7968846))

(declare-fun m!7968848 () Bool)

(assert (=> b!7296898 m!7968848))

(declare-fun m!7968850 () Bool)

(assert (=> b!7296898 m!7968850))

(declare-fun m!7968852 () Bool)

(assert (=> d!2267201 m!7968852))

(declare-fun m!7968854 () Bool)

(assert (=> d!2267201 m!7968854))

(declare-fun m!7968856 () Bool)

(assert (=> d!2267201 m!7968856))

(assert (=> b!7296819 d!2267201))

(declare-fun d!2267205 () Bool)

(declare-fun nullableFct!3183 (Regex!18873) Bool)

(assert (=> d!2267205 (= (nullable!8050 (h!77388 (exprs!8313 ct1!250))) (nullableFct!3183 (h!77388 (exprs!8313 ct1!250))))))

(declare-fun bs!1913121 () Bool)

(assert (= bs!1913121 d!2267205))

(declare-fun m!7968858 () Bool)

(assert (=> bs!1913121 m!7968858))

(assert (=> b!7296824 d!2267205))

(declare-fun b!7296900 () Bool)

(declare-fun e!4370412 () (InoxSet Context!15626))

(declare-fun e!4370410 () (InoxSet Context!15626))

(assert (=> b!7296900 (= e!4370412 e!4370410)))

(declare-fun c!1356315 () Bool)

(assert (=> b!7296900 (= c!1356315 ((_ is Cons!70940) (exprs!8313 ct1!250)))))

(declare-fun call!664915 () (InoxSet Context!15626))

(declare-fun b!7296901 () Bool)

(assert (=> b!7296901 (= e!4370412 ((_ map or) call!664915 (derivationStepZipperUp!2623 (Context!15627 (t!385140 (exprs!8313 ct1!250))) (h!77387 s!7854))))))

(declare-fun b!7296902 () Bool)

(declare-fun e!4370411 () Bool)

(assert (=> b!7296902 (= e!4370411 (nullable!8050 (h!77388 (exprs!8313 ct1!250))))))

(declare-fun bm!664910 () Bool)

(assert (=> bm!664910 (= call!664915 (derivationStepZipperDown!2779 (h!77388 (exprs!8313 ct1!250)) (Context!15627 (t!385140 (exprs!8313 ct1!250))) (h!77387 s!7854)))))

(declare-fun b!7296903 () Bool)

(assert (=> b!7296903 (= e!4370410 call!664915)))

(declare-fun d!2267207 () Bool)

(declare-fun c!1356316 () Bool)

(assert (=> d!2267207 (= c!1356316 e!4370411)))

(declare-fun res!2951344 () Bool)

(assert (=> d!2267207 (=> (not res!2951344) (not e!4370411))))

(assert (=> d!2267207 (= res!2951344 ((_ is Cons!70940) (exprs!8313 ct1!250)))))

(assert (=> d!2267207 (= (derivationStepZipperUp!2623 ct1!250 (h!77387 s!7854)) e!4370412)))

(declare-fun b!7296904 () Bool)

(assert (=> b!7296904 (= e!4370410 ((as const (Array Context!15626 Bool)) false))))

(assert (= (and d!2267207 res!2951344) b!7296902))

(assert (= (and d!2267207 c!1356316) b!7296901))

(assert (= (and d!2267207 (not c!1356316)) b!7296900))

(assert (= (and b!7296900 c!1356315) b!7296903))

(assert (= (and b!7296900 (not c!1356315)) b!7296904))

(assert (= (or b!7296901 b!7296903) bm!664910))

(declare-fun m!7968860 () Bool)

(assert (=> b!7296901 m!7968860))

(assert (=> b!7296902 m!7968802))

(declare-fun m!7968864 () Bool)

(assert (=> bm!664910 m!7968864))

(assert (=> b!7296824 d!2267207))

(declare-fun d!2267209 () Bool)

(assert (=> d!2267209 (= (tail!14592 (exprs!8313 ct1!250)) (t!385140 (exprs!8313 ct1!250)))))

(assert (=> b!7296824 d!2267209))

(declare-fun bs!1913122 () Bool)

(declare-fun d!2267213 () Bool)

(assert (= bs!1913122 (and d!2267213 b!7296826)))

(declare-fun lambda!450684 () Int)

(assert (=> bs!1913122 (= lambda!450684 lambda!450680)))

(assert (=> d!2267213 (= (inv!90192 lt!2598629) (forall!17693 (exprs!8313 lt!2598629) lambda!450684))))

(declare-fun bs!1913123 () Bool)

(assert (= bs!1913123 d!2267213))

(declare-fun m!7968870 () Bool)

(assert (=> bs!1913123 m!7968870))

(assert (=> b!7296823 d!2267213))

(assert (=> b!7296823 d!2267193))

(declare-fun d!2267215 () Bool)

(assert (=> d!2267215 (= (isEmpty!40809 (exprs!8313 ct1!250)) ((_ is Nil!70940) (exprs!8313 ct1!250)))))

(assert (=> b!7296817 d!2267215))

(declare-fun d!2267217 () Bool)

(declare-fun c!1356324 () Bool)

(declare-fun isEmpty!40811 (List!71063) Bool)

(assert (=> d!2267217 (= c!1356324 (isEmpty!40811 (t!385139 s!7854)))))

(declare-fun e!4370424 () Bool)

(assert (=> d!2267217 (= (matchZipper!3777 lt!2598654 (t!385139 s!7854)) e!4370424)))

(declare-fun b!7296926 () Bool)

(declare-fun nullableZipper!3063 ((InoxSet Context!15626)) Bool)

(assert (=> b!7296926 (= e!4370424 (nullableZipper!3063 lt!2598654))))

(declare-fun b!7296927 () Bool)

(declare-fun head!15061 (List!71063) C!38020)

(declare-fun tail!14594 (List!71063) List!71063)

(assert (=> b!7296927 (= e!4370424 (matchZipper!3777 (derivationStepZipper!3606 lt!2598654 (head!15061 (t!385139 s!7854))) (tail!14594 (t!385139 s!7854))))))

(assert (= (and d!2267217 c!1356324) b!7296926))

(assert (= (and d!2267217 (not c!1356324)) b!7296927))

(declare-fun m!7968886 () Bool)

(assert (=> d!2267217 m!7968886))

(declare-fun m!7968888 () Bool)

(assert (=> b!7296926 m!7968888))

(declare-fun m!7968890 () Bool)

(assert (=> b!7296927 m!7968890))

(assert (=> b!7296927 m!7968890))

(declare-fun m!7968892 () Bool)

(assert (=> b!7296927 m!7968892))

(declare-fun m!7968894 () Bool)

(assert (=> b!7296927 m!7968894))

(assert (=> b!7296927 m!7968892))

(assert (=> b!7296927 m!7968894))

(declare-fun m!7968896 () Bool)

(assert (=> b!7296927 m!7968896))

(assert (=> b!7296816 d!2267217))

(declare-fun d!2267221 () Bool)

(declare-fun c!1356325 () Bool)

(assert (=> d!2267221 (= c!1356325 (isEmpty!40811 s!7854))))

(declare-fun e!4370425 () Bool)

(assert (=> d!2267221 (= (matchZipper!3777 lt!2598628 s!7854) e!4370425)))

(declare-fun b!7296928 () Bool)

(assert (=> b!7296928 (= e!4370425 (nullableZipper!3063 lt!2598628))))

(declare-fun b!7296929 () Bool)

(assert (=> b!7296929 (= e!4370425 (matchZipper!3777 (derivationStepZipper!3606 lt!2598628 (head!15061 s!7854)) (tail!14594 s!7854)))))

(assert (= (and d!2267221 c!1356325) b!7296928))

(assert (= (and d!2267221 (not c!1356325)) b!7296929))

(declare-fun m!7968898 () Bool)

(assert (=> d!2267221 m!7968898))

(declare-fun m!7968900 () Bool)

(assert (=> b!7296928 m!7968900))

(declare-fun m!7968902 () Bool)

(assert (=> b!7296929 m!7968902))

(assert (=> b!7296929 m!7968902))

(declare-fun m!7968904 () Bool)

(assert (=> b!7296929 m!7968904))

(declare-fun m!7968906 () Bool)

(assert (=> b!7296929 m!7968906))

(assert (=> b!7296929 m!7968904))

(assert (=> b!7296929 m!7968906))

(declare-fun m!7968908 () Bool)

(assert (=> b!7296929 m!7968908))

(assert (=> b!7296816 d!2267221))

(declare-fun d!2267223 () Bool)

(declare-fun choose!56551 ((InoxSet Context!15626) Int) (InoxSet Context!15626))

(assert (=> d!2267223 (= (flatMap!2968 lt!2598628 lambda!450681) (choose!56551 lt!2598628 lambda!450681))))

(declare-fun bs!1913124 () Bool)

(assert (= bs!1913124 d!2267223))

(declare-fun m!7968910 () Bool)

(assert (=> bs!1913124 m!7968910))

(assert (=> b!7296816 d!2267223))

(declare-fun bs!1913125 () Bool)

(declare-fun d!2267225 () Bool)

(assert (= bs!1913125 (and d!2267225 b!7296826)))

(declare-fun lambda!450687 () Int)

(assert (=> bs!1913125 (= lambda!450687 lambda!450680)))

(declare-fun bs!1913126 () Bool)

(assert (= bs!1913126 (and d!2267225 d!2267213)))

(assert (=> bs!1913126 (= lambda!450687 lambda!450684)))

(assert (=> d!2267225 (matchZipper!3777 (store ((as const (Array Context!15626 Bool)) false) (Context!15627 (++!16763 (exprs!8313 lt!2598638) (exprs!8313 ct2!346))) true) s!7854)))

(declare-fun lt!2598673 () Unit!164344)

(assert (=> d!2267225 (= lt!2598673 (lemmaConcatPreservesForall!1620 (exprs!8313 lt!2598638) (exprs!8313 ct2!346) lambda!450687))))

(declare-fun lt!2598672 () Unit!164344)

(declare-fun choose!56552 (Context!15626 Context!15626 List!71063) Unit!164344)

(assert (=> d!2267225 (= lt!2598672 (choose!56552 lt!2598638 ct2!346 s!7854))))

(assert (=> d!2267225 (matchZipper!3777 (store ((as const (Array Context!15626 Bool)) false) ct2!346 true) s!7854)))

(assert (=> d!2267225 (= (lemmaPrependingNullableCtxStillMatches!56 lt!2598638 ct2!346 s!7854) lt!2598672)))

(declare-fun bs!1913127 () Bool)

(assert (= bs!1913127 d!2267225))

(declare-fun m!7968912 () Bool)

(assert (=> bs!1913127 m!7968912))

(declare-fun m!7968914 () Bool)

(assert (=> bs!1913127 m!7968914))

(declare-fun m!7968916 () Bool)

(assert (=> bs!1913127 m!7968916))

(assert (=> bs!1913127 m!7968784))

(assert (=> bs!1913127 m!7968786))

(assert (=> bs!1913127 m!7968784))

(assert (=> bs!1913127 m!7968916))

(declare-fun m!7968918 () Bool)

(assert (=> bs!1913127 m!7968918))

(declare-fun m!7968920 () Bool)

(assert (=> bs!1913127 m!7968920))

(assert (=> b!7296816 d!2267225))

(assert (=> b!7296816 d!2267193))

(declare-fun d!2267227 () Bool)

(declare-fun dynLambda!29009 (Int Context!15626) (InoxSet Context!15626))

(assert (=> d!2267227 (= (flatMap!2968 lt!2598628 lambda!450681) (dynLambda!29009 lambda!450681 lt!2598629))))

(declare-fun lt!2598678 () Unit!164344)

(declare-fun choose!56553 ((InoxSet Context!15626) Context!15626 Int) Unit!164344)

(assert (=> d!2267227 (= lt!2598678 (choose!56553 lt!2598628 lt!2598629 lambda!450681))))

(assert (=> d!2267227 (= lt!2598628 (store ((as const (Array Context!15626 Bool)) false) lt!2598629 true))))

(assert (=> d!2267227 (= (lemmaFlatMapOnSingletonSet!2366 lt!2598628 lt!2598629 lambda!450681) lt!2598678)))

(declare-fun b_lambda!281429 () Bool)

(assert (=> (not b_lambda!281429) (not d!2267227)))

(declare-fun bs!1913128 () Bool)

(assert (= bs!1913128 d!2267227))

(assert (=> bs!1913128 m!7968806))

(declare-fun m!7968930 () Bool)

(assert (=> bs!1913128 m!7968930))

(declare-fun m!7968932 () Bool)

(assert (=> bs!1913128 m!7968932))

(assert (=> bs!1913128 m!7968812))

(assert (=> b!7296816 d!2267227))

(assert (=> b!7296816 d!2267195))

(declare-fun bs!1913130 () Bool)

(declare-fun d!2267231 () Bool)

(assert (= bs!1913130 (and d!2267231 b!7296826)))

(declare-fun lambda!450690 () Int)

(assert (=> bs!1913130 (not (= lambda!450690 lambda!450680))))

(declare-fun bs!1913131 () Bool)

(assert (= bs!1913131 (and d!2267231 d!2267213)))

(assert (=> bs!1913131 (not (= lambda!450690 lambda!450684))))

(declare-fun bs!1913132 () Bool)

(assert (= bs!1913132 (and d!2267231 d!2267225)))

(assert (=> bs!1913132 (not (= lambda!450690 lambda!450687))))

(assert (=> d!2267231 (= (nullableContext!363 ct1!250) (forall!17693 (exprs!8313 ct1!250) lambda!450690))))

(declare-fun bs!1913133 () Bool)

(assert (= bs!1913133 d!2267231))

(declare-fun m!7968938 () Bool)

(assert (=> bs!1913133 m!7968938))

(assert (=> b!7296821 d!2267231))

(declare-fun d!2267235 () Bool)

(assert (=> d!2267235 (forall!17693 (++!16763 (exprs!8313 ct1!250) (exprs!8313 ct2!346)) lambda!450680)))

(declare-fun lt!2598680 () Unit!164344)

(assert (=> d!2267235 (= lt!2598680 (choose!56546 (exprs!8313 ct1!250) (exprs!8313 ct2!346) lambda!450680))))

(assert (=> d!2267235 (forall!17693 (exprs!8313 ct1!250) lambda!450680)))

(assert (=> d!2267235 (= (lemmaConcatPreservesForall!1620 (exprs!8313 ct1!250) (exprs!8313 ct2!346) lambda!450680) lt!2598680)))

(declare-fun bs!1913134 () Bool)

(assert (= bs!1913134 d!2267235))

(assert (=> bs!1913134 m!7968772))

(assert (=> bs!1913134 m!7968772))

(declare-fun m!7968940 () Bool)

(assert (=> bs!1913134 m!7968940))

(declare-fun m!7968942 () Bool)

(assert (=> bs!1913134 m!7968942))

(declare-fun m!7968944 () Bool)

(assert (=> bs!1913134 m!7968944))

(assert (=> b!7296826 d!2267235))

(declare-fun bs!1913135 () Bool)

(declare-fun d!2267237 () Bool)

(assert (= bs!1913135 (and d!2267237 b!7296826)))

(declare-fun lambda!450693 () Int)

(assert (=> bs!1913135 (= lambda!450693 lambda!450681)))

(assert (=> d!2267237 true))

(assert (=> d!2267237 (= (derivationStepZipper!3606 lt!2598643 (h!77387 s!7854)) (flatMap!2968 lt!2598643 lambda!450693))))

(declare-fun bs!1913136 () Bool)

(assert (= bs!1913136 d!2267237))

(declare-fun m!7968946 () Bool)

(assert (=> bs!1913136 m!7968946))

(assert (=> b!7296826 d!2267237))

(declare-fun d!2267239 () Bool)

(assert (=> d!2267239 (= (flatMap!2968 lt!2598631 lambda!450681) (dynLambda!29009 lambda!450681 ct1!250))))

(declare-fun lt!2598681 () Unit!164344)

(assert (=> d!2267239 (= lt!2598681 (choose!56553 lt!2598631 ct1!250 lambda!450681))))

(assert (=> d!2267239 (= lt!2598631 (store ((as const (Array Context!15626 Bool)) false) ct1!250 true))))

(assert (=> d!2267239 (= (lemmaFlatMapOnSingletonSet!2366 lt!2598631 ct1!250 lambda!450681) lt!2598681)))

(declare-fun b_lambda!281433 () Bool)

(assert (=> (not b_lambda!281433) (not d!2267239)))

(declare-fun bs!1913137 () Bool)

(assert (= bs!1913137 d!2267239))

(assert (=> bs!1913137 m!7968756))

(declare-fun m!7968960 () Bool)

(assert (=> bs!1913137 m!7968960))

(declare-fun m!7968962 () Bool)

(assert (=> bs!1913137 m!7968962))

(assert (=> bs!1913137 m!7968768))

(assert (=> b!7296826 d!2267239))

(declare-fun b!7296972 () Bool)

(declare-fun e!4370447 () List!71064)

(assert (=> b!7296972 (= e!4370447 (Cons!70940 (h!77388 (exprs!8313 ct1!250)) (++!16763 (t!385140 (exprs!8313 ct1!250)) (exprs!8313 ct2!346))))))

(declare-fun b!7296971 () Bool)

(assert (=> b!7296971 (= e!4370447 (exprs!8313 ct2!346))))

(declare-fun b!7296973 () Bool)

(declare-fun res!2951356 () Bool)

(declare-fun e!4370448 () Bool)

(assert (=> b!7296973 (=> (not res!2951356) (not e!4370448))))

(declare-fun lt!2598682 () List!71064)

(assert (=> b!7296973 (= res!2951356 (= (size!41867 lt!2598682) (+ (size!41867 (exprs!8313 ct1!250)) (size!41867 (exprs!8313 ct2!346)))))))

(declare-fun b!7296974 () Bool)

(assert (=> b!7296974 (= e!4370448 (or (not (= (exprs!8313 ct2!346) Nil!70940)) (= lt!2598682 (exprs!8313 ct1!250))))))

(declare-fun d!2267243 () Bool)

(assert (=> d!2267243 e!4370448))

(declare-fun res!2951355 () Bool)

(assert (=> d!2267243 (=> (not res!2951355) (not e!4370448))))

(assert (=> d!2267243 (= res!2951355 (= (content!14821 lt!2598682) ((_ map or) (content!14821 (exprs!8313 ct1!250)) (content!14821 (exprs!8313 ct2!346)))))))

(assert (=> d!2267243 (= lt!2598682 e!4370447)))

(declare-fun c!1356347 () Bool)

(assert (=> d!2267243 (= c!1356347 ((_ is Nil!70940) (exprs!8313 ct1!250)))))

(assert (=> d!2267243 (= (++!16763 (exprs!8313 ct1!250) (exprs!8313 ct2!346)) lt!2598682)))

(assert (= (and d!2267243 c!1356347) b!7296971))

(assert (= (and d!2267243 (not c!1356347)) b!7296972))

(assert (= (and d!2267243 res!2951355) b!7296973))

(assert (= (and b!7296973 res!2951356) b!7296974))

(declare-fun m!7968964 () Bool)

(assert (=> b!7296972 m!7968964))

(declare-fun m!7968966 () Bool)

(assert (=> b!7296973 m!7968966))

(declare-fun m!7968968 () Bool)

(assert (=> b!7296973 m!7968968))

(assert (=> b!7296973 m!7968850))

(declare-fun m!7968970 () Bool)

(assert (=> d!2267243 m!7968970))

(declare-fun m!7968972 () Bool)

(assert (=> d!2267243 m!7968972))

(assert (=> d!2267243 m!7968856))

(assert (=> b!7296826 d!2267243))

(declare-fun b!7296975 () Bool)

(declare-fun e!4370451 () (InoxSet Context!15626))

(declare-fun e!4370449 () (InoxSet Context!15626))

(assert (=> b!7296975 (= e!4370451 e!4370449)))

(declare-fun c!1356348 () Bool)

(assert (=> b!7296975 (= c!1356348 ((_ is Cons!70940) (exprs!8313 lt!2598648)))))

(declare-fun call!664935 () (InoxSet Context!15626))

(declare-fun b!7296976 () Bool)

(assert (=> b!7296976 (= e!4370451 ((_ map or) call!664935 (derivationStepZipperUp!2623 (Context!15627 (t!385140 (exprs!8313 lt!2598648))) (h!77387 s!7854))))))

(declare-fun b!7296977 () Bool)

(declare-fun e!4370450 () Bool)

(assert (=> b!7296977 (= e!4370450 (nullable!8050 (h!77388 (exprs!8313 lt!2598648))))))

(declare-fun bm!664930 () Bool)

(assert (=> bm!664930 (= call!664935 (derivationStepZipperDown!2779 (h!77388 (exprs!8313 lt!2598648)) (Context!15627 (t!385140 (exprs!8313 lt!2598648))) (h!77387 s!7854)))))

(declare-fun b!7296978 () Bool)

(assert (=> b!7296978 (= e!4370449 call!664935)))

(declare-fun d!2267245 () Bool)

(declare-fun c!1356349 () Bool)

(assert (=> d!2267245 (= c!1356349 e!4370450)))

(declare-fun res!2951357 () Bool)

(assert (=> d!2267245 (=> (not res!2951357) (not e!4370450))))

(assert (=> d!2267245 (= res!2951357 ((_ is Cons!70940) (exprs!8313 lt!2598648)))))

(assert (=> d!2267245 (= (derivationStepZipperUp!2623 lt!2598648 (h!77387 s!7854)) e!4370451)))

(declare-fun b!7296979 () Bool)

(assert (=> b!7296979 (= e!4370449 ((as const (Array Context!15626 Bool)) false))))

(assert (= (and d!2267245 res!2951357) b!7296977))

(assert (= (and d!2267245 c!1356349) b!7296976))

(assert (= (and d!2267245 (not c!1356349)) b!7296975))

(assert (= (and b!7296975 c!1356348) b!7296978))

(assert (= (and b!7296975 (not c!1356348)) b!7296979))

(assert (= (or b!7296976 b!7296978) bm!664930))

(declare-fun m!7968974 () Bool)

(assert (=> b!7296976 m!7968974))

(declare-fun m!7968976 () Bool)

(assert (=> b!7296977 m!7968976))

(declare-fun m!7968978 () Bool)

(assert (=> bm!664930 m!7968978))

(assert (=> b!7296826 d!2267245))

(declare-fun d!2267247 () Bool)

(assert (=> d!2267247 (= (flatMap!2968 lt!2598631 lambda!450681) (choose!56551 lt!2598631 lambda!450681))))

(declare-fun bs!1913138 () Bool)

(assert (= bs!1913138 d!2267247))

(declare-fun m!7968980 () Bool)

(assert (=> bs!1913138 m!7968980))

(assert (=> b!7296826 d!2267247))

(declare-fun d!2267249 () Bool)

(assert (=> d!2267249 (= (flatMap!2968 lt!2598643 lambda!450681) (dynLambda!29009 lambda!450681 lt!2598648))))

(declare-fun lt!2598683 () Unit!164344)

(assert (=> d!2267249 (= lt!2598683 (choose!56553 lt!2598643 lt!2598648 lambda!450681))))

(assert (=> d!2267249 (= lt!2598643 (store ((as const (Array Context!15626 Bool)) false) lt!2598648 true))))

(assert (=> d!2267249 (= (lemmaFlatMapOnSingletonSet!2366 lt!2598643 lt!2598648 lambda!450681) lt!2598683)))

(declare-fun b_lambda!281435 () Bool)

(assert (=> (not b_lambda!281435) (not d!2267249)))

(declare-fun bs!1913139 () Bool)

(assert (= bs!1913139 d!2267249))

(assert (=> bs!1913139 m!7968758))

(declare-fun m!7968982 () Bool)

(assert (=> bs!1913139 m!7968982))

(declare-fun m!7968984 () Bool)

(assert (=> bs!1913139 m!7968984))

(assert (=> bs!1913139 m!7968766))

(assert (=> b!7296826 d!2267249))

(declare-fun d!2267251 () Bool)

(assert (=> d!2267251 (= (flatMap!2968 lt!2598643 lambda!450681) (choose!56551 lt!2598643 lambda!450681))))

(declare-fun bs!1913140 () Bool)

(assert (= bs!1913140 d!2267251))

(declare-fun m!7968986 () Bool)

(assert (=> bs!1913140 m!7968986))

(assert (=> b!7296826 d!2267251))

(assert (=> b!7296826 d!2267207))

(declare-fun d!2267253 () Bool)

(declare-fun c!1356350 () Bool)

(assert (=> d!2267253 (= c!1356350 (isEmpty!40811 s!7854))))

(declare-fun e!4370452 () Bool)

(assert (=> d!2267253 (= (matchZipper!3777 (store ((as const (Array Context!15626 Bool)) false) ct2!346 true) s!7854) e!4370452)))

(declare-fun b!7296980 () Bool)

(assert (=> b!7296980 (= e!4370452 (nullableZipper!3063 (store ((as const (Array Context!15626 Bool)) false) ct2!346 true)))))

(declare-fun b!7296981 () Bool)

(assert (=> b!7296981 (= e!4370452 (matchZipper!3777 (derivationStepZipper!3606 (store ((as const (Array Context!15626 Bool)) false) ct2!346 true) (head!15061 s!7854)) (tail!14594 s!7854)))))

(assert (= (and d!2267253 c!1356350) b!7296980))

(assert (= (and d!2267253 (not c!1356350)) b!7296981))

(assert (=> d!2267253 m!7968898))

(assert (=> b!7296980 m!7968784))

(declare-fun m!7968988 () Bool)

(assert (=> b!7296980 m!7968988))

(assert (=> b!7296981 m!7968902))

(assert (=> b!7296981 m!7968784))

(assert (=> b!7296981 m!7968902))

(declare-fun m!7968990 () Bool)

(assert (=> b!7296981 m!7968990))

(assert (=> b!7296981 m!7968906))

(assert (=> b!7296981 m!7968990))

(assert (=> b!7296981 m!7968906))

(declare-fun m!7968992 () Bool)

(assert (=> b!7296981 m!7968992))

(assert (=> start!711374 d!2267253))

(declare-fun bs!1913141 () Bool)

(declare-fun d!2267255 () Bool)

(assert (= bs!1913141 (and d!2267255 b!7296826)))

(declare-fun lambda!450694 () Int)

(assert (=> bs!1913141 (= lambda!450694 lambda!450680)))

(declare-fun bs!1913142 () Bool)

(assert (= bs!1913142 (and d!2267255 d!2267213)))

(assert (=> bs!1913142 (= lambda!450694 lambda!450684)))

(declare-fun bs!1913143 () Bool)

(assert (= bs!1913143 (and d!2267255 d!2267225)))

(assert (=> bs!1913143 (= lambda!450694 lambda!450687)))

(declare-fun bs!1913144 () Bool)

(assert (= bs!1913144 (and d!2267255 d!2267231)))

(assert (=> bs!1913144 (not (= lambda!450694 lambda!450690))))

(assert (=> d!2267255 (= (inv!90192 ct2!346) (forall!17693 (exprs!8313 ct2!346) lambda!450694))))

(declare-fun bs!1913145 () Bool)

(assert (= bs!1913145 d!2267255))

(declare-fun m!7968994 () Bool)

(assert (=> bs!1913145 m!7968994))

(assert (=> start!711374 d!2267255))

(declare-fun bs!1913146 () Bool)

(declare-fun d!2267257 () Bool)

(assert (= bs!1913146 (and d!2267257 d!2267231)))

(declare-fun lambda!450695 () Int)

(assert (=> bs!1913146 (not (= lambda!450695 lambda!450690))))

(declare-fun bs!1913147 () Bool)

(assert (= bs!1913147 (and d!2267257 d!2267255)))

(assert (=> bs!1913147 (= lambda!450695 lambda!450694)))

(declare-fun bs!1913148 () Bool)

(assert (= bs!1913148 (and d!2267257 d!2267213)))

(assert (=> bs!1913148 (= lambda!450695 lambda!450684)))

(declare-fun bs!1913149 () Bool)

(assert (= bs!1913149 (and d!2267257 d!2267225)))

(assert (=> bs!1913149 (= lambda!450695 lambda!450687)))

(declare-fun bs!1913150 () Bool)

(assert (= bs!1913150 (and d!2267257 b!7296826)))

(assert (=> bs!1913150 (= lambda!450695 lambda!450680)))

(assert (=> d!2267257 (= (inv!90192 ct1!250) (forall!17693 (exprs!8313 ct1!250) lambda!450695))))

(declare-fun bs!1913151 () Bool)

(assert (= bs!1913151 d!2267257))

(declare-fun m!7968996 () Bool)

(assert (=> bs!1913151 m!7968996))

(assert (=> start!711374 d!2267257))

(declare-fun d!2267259 () Bool)

(declare-fun c!1356352 () Bool)

(assert (=> d!2267259 (= c!1356352 (and ((_ is ElementMatch!18873) (h!77388 (exprs!8313 ct1!250))) (= (c!1356286 (h!77388 (exprs!8313 ct1!250))) (h!77387 s!7854))))))

(declare-fun e!4370454 () (InoxSet Context!15626))

(assert (=> d!2267259 (= (derivationStepZipperDown!2779 (h!77388 (exprs!8313 ct1!250)) lt!2598638 (h!77387 s!7854)) e!4370454)))

(declare-fun b!7296982 () Bool)

(assert (=> b!7296982 (= e!4370454 (store ((as const (Array Context!15626 Bool)) false) lt!2598638 true))))

(declare-fun call!664941 () (InoxSet Context!15626))

(declare-fun bm!664931 () Bool)

(declare-fun call!664938 () List!71064)

(declare-fun c!1356351 () Bool)

(assert (=> bm!664931 (= call!664941 (derivationStepZipperDown!2779 (ite c!1356351 (regOne!38259 (h!77388 (exprs!8313 ct1!250))) (regOne!38258 (h!77388 (exprs!8313 ct1!250)))) (ite c!1356351 lt!2598638 (Context!15627 call!664938)) (h!77387 s!7854)))))

(declare-fun b!7296983 () Bool)

(declare-fun e!4370455 () (InoxSet Context!15626))

(declare-fun e!4370453 () (InoxSet Context!15626))

(assert (=> b!7296983 (= e!4370455 e!4370453)))

(declare-fun c!1356353 () Bool)

(assert (=> b!7296983 (= c!1356353 ((_ is Concat!27718) (h!77388 (exprs!8313 ct1!250))))))

(declare-fun bm!664932 () Bool)

(declare-fun call!664939 () (InoxSet Context!15626))

(declare-fun call!664940 () (InoxSet Context!15626))

(assert (=> bm!664932 (= call!664939 call!664940)))

(declare-fun b!7296984 () Bool)

(assert (=> b!7296984 (= e!4370455 ((_ map or) call!664941 call!664940))))

(declare-fun b!7296985 () Bool)

(declare-fun c!1356354 () Bool)

(declare-fun e!4370458 () Bool)

(assert (=> b!7296985 (= c!1356354 e!4370458)))

(declare-fun res!2951358 () Bool)

(assert (=> b!7296985 (=> (not res!2951358) (not e!4370458))))

(assert (=> b!7296985 (= res!2951358 ((_ is Concat!27718) (h!77388 (exprs!8313 ct1!250))))))

(declare-fun e!4370457 () (InoxSet Context!15626))

(assert (=> b!7296985 (= e!4370457 e!4370455)))

(declare-fun b!7296986 () Bool)

(declare-fun c!1356355 () Bool)

(assert (=> b!7296986 (= c!1356355 ((_ is Star!18873) (h!77388 (exprs!8313 ct1!250))))))

(declare-fun e!4370456 () (InoxSet Context!15626))

(assert (=> b!7296986 (= e!4370453 e!4370456)))

(declare-fun b!7296987 () Bool)

(assert (=> b!7296987 (= e!4370456 call!664939)))

(declare-fun bm!664933 () Bool)

(declare-fun call!664936 () (InoxSet Context!15626))

(declare-fun call!664937 () List!71064)

(assert (=> bm!664933 (= call!664936 (derivationStepZipperDown!2779 (ite c!1356351 (regTwo!38259 (h!77388 (exprs!8313 ct1!250))) (ite c!1356354 (regTwo!38258 (h!77388 (exprs!8313 ct1!250))) (ite c!1356353 (regOne!38258 (h!77388 (exprs!8313 ct1!250))) (reg!19202 (h!77388 (exprs!8313 ct1!250)))))) (ite (or c!1356351 c!1356354) lt!2598638 (Context!15627 call!664937)) (h!77387 s!7854)))))

(declare-fun b!7296988 () Bool)

(assert (=> b!7296988 (= e!4370456 ((as const (Array Context!15626 Bool)) false))))

(declare-fun bm!664934 () Bool)

(assert (=> bm!664934 (= call!664940 call!664936)))

(declare-fun b!7296989 () Bool)

(assert (=> b!7296989 (= e!4370453 call!664939)))

(declare-fun b!7296990 () Bool)

(assert (=> b!7296990 (= e!4370458 (nullable!8050 (regOne!38258 (h!77388 (exprs!8313 ct1!250)))))))

(declare-fun b!7296991 () Bool)

(assert (=> b!7296991 (= e!4370457 ((_ map or) call!664941 call!664936))))

(declare-fun bm!664935 () Bool)

(assert (=> bm!664935 (= call!664938 ($colon$colon!3001 (exprs!8313 lt!2598638) (ite (or c!1356354 c!1356353) (regTwo!38258 (h!77388 (exprs!8313 ct1!250))) (h!77388 (exprs!8313 ct1!250)))))))

(declare-fun b!7296992 () Bool)

(assert (=> b!7296992 (= e!4370454 e!4370457)))

(assert (=> b!7296992 (= c!1356351 ((_ is Union!18873) (h!77388 (exprs!8313 ct1!250))))))

(declare-fun bm!664936 () Bool)

(assert (=> bm!664936 (= call!664937 call!664938)))

(assert (= (and d!2267259 c!1356352) b!7296982))

(assert (= (and d!2267259 (not c!1356352)) b!7296992))

(assert (= (and b!7296992 c!1356351) b!7296991))

(assert (= (and b!7296992 (not c!1356351)) b!7296985))

(assert (= (and b!7296985 res!2951358) b!7296990))

(assert (= (and b!7296985 c!1356354) b!7296984))

(assert (= (and b!7296985 (not c!1356354)) b!7296983))

(assert (= (and b!7296983 c!1356353) b!7296989))

(assert (= (and b!7296983 (not c!1356353)) b!7296986))

(assert (= (and b!7296986 c!1356355) b!7296987))

(assert (= (and b!7296986 (not c!1356355)) b!7296988))

(assert (= (or b!7296989 b!7296987) bm!664936))

(assert (= (or b!7296989 b!7296987) bm!664932))

(assert (= (or b!7296984 bm!664936) bm!664935))

(assert (= (or b!7296984 bm!664932) bm!664934))

(assert (= (or b!7296991 b!7296984) bm!664931))

(assert (= (or b!7296991 bm!664934) bm!664933))

(declare-fun m!7968998 () Bool)

(assert (=> bm!664933 m!7968998))

(declare-fun m!7969000 () Bool)

(assert (=> bm!664931 m!7969000))

(declare-fun m!7969002 () Bool)

(assert (=> bm!664935 m!7969002))

(declare-fun m!7969004 () Bool)

(assert (=> b!7296982 m!7969004))

(assert (=> b!7296990 m!7968836))

(assert (=> b!7296820 d!2267259))

(declare-fun b!7296993 () Bool)

(declare-fun e!4370461 () (InoxSet Context!15626))

(declare-fun e!4370459 () (InoxSet Context!15626))

(assert (=> b!7296993 (= e!4370461 e!4370459)))

(declare-fun c!1356356 () Bool)

(assert (=> b!7296993 (= c!1356356 ((_ is Cons!70940) (exprs!8313 lt!2598638)))))

(declare-fun call!664942 () (InoxSet Context!15626))

(declare-fun b!7296994 () Bool)

(assert (=> b!7296994 (= e!4370461 ((_ map or) call!664942 (derivationStepZipperUp!2623 (Context!15627 (t!385140 (exprs!8313 lt!2598638))) (h!77387 s!7854))))))

(declare-fun b!7296995 () Bool)

(declare-fun e!4370460 () Bool)

(assert (=> b!7296995 (= e!4370460 (nullable!8050 (h!77388 (exprs!8313 lt!2598638))))))

(declare-fun bm!664937 () Bool)

(assert (=> bm!664937 (= call!664942 (derivationStepZipperDown!2779 (h!77388 (exprs!8313 lt!2598638)) (Context!15627 (t!385140 (exprs!8313 lt!2598638))) (h!77387 s!7854)))))

(declare-fun b!7296996 () Bool)

(assert (=> b!7296996 (= e!4370459 call!664942)))

(declare-fun d!2267261 () Bool)

(declare-fun c!1356357 () Bool)

(assert (=> d!2267261 (= c!1356357 e!4370460)))

(declare-fun res!2951359 () Bool)

(assert (=> d!2267261 (=> (not res!2951359) (not e!4370460))))

(assert (=> d!2267261 (= res!2951359 ((_ is Cons!70940) (exprs!8313 lt!2598638)))))

(assert (=> d!2267261 (= (derivationStepZipperUp!2623 lt!2598638 (h!77387 s!7854)) e!4370461)))

(declare-fun b!7296997 () Bool)

(assert (=> b!7296997 (= e!4370459 ((as const (Array Context!15626 Bool)) false))))

(assert (= (and d!2267261 res!2951359) b!7296995))

(assert (= (and d!2267261 c!1356357) b!7296994))

(assert (= (and d!2267261 (not c!1356357)) b!7296993))

(assert (= (and b!7296993 c!1356356) b!7296996))

(assert (= (and b!7296993 (not c!1356356)) b!7296997))

(assert (= (or b!7296994 b!7296996) bm!664937))

(declare-fun m!7969006 () Bool)

(assert (=> b!7296994 m!7969006))

(declare-fun m!7969008 () Bool)

(assert (=> b!7296995 m!7969008))

(declare-fun m!7969010 () Bool)

(assert (=> bm!664937 m!7969010))

(assert (=> b!7296820 d!2267261))

(declare-fun b!7297002 () Bool)

(declare-fun e!4370464 () Bool)

(declare-fun tp!2062497 () Bool)

(declare-fun tp!2062498 () Bool)

(assert (=> b!7297002 (= e!4370464 (and tp!2062497 tp!2062498))))

(assert (=> b!7296818 (= tp!2062490 e!4370464)))

(assert (= (and b!7296818 ((_ is Cons!70940) (exprs!8313 ct2!346))) b!7297002))

(declare-fun b!7297007 () Bool)

(declare-fun e!4370467 () Bool)

(declare-fun tp!2062501 () Bool)

(assert (=> b!7297007 (= e!4370467 (and tp_is_empty!47211 tp!2062501))))

(assert (=> b!7296822 (= tp!2062491 e!4370467)))

(assert (= (and b!7296822 ((_ is Cons!70939) (t!385139 s!7854))) b!7297007))

(declare-fun b!7297008 () Bool)

(declare-fun e!4370468 () Bool)

(declare-fun tp!2062502 () Bool)

(declare-fun tp!2062503 () Bool)

(assert (=> b!7297008 (= e!4370468 (and tp!2062502 tp!2062503))))

(assert (=> b!7296825 (= tp!2062492 e!4370468)))

(assert (= (and b!7296825 ((_ is Cons!70940) (exprs!8313 ct1!250))) b!7297008))

(declare-fun b_lambda!281437 () Bool)

(assert (= b_lambda!281433 (or b!7296826 b_lambda!281437)))

(declare-fun bs!1913152 () Bool)

(declare-fun d!2267263 () Bool)

(assert (= bs!1913152 (and d!2267263 b!7296826)))

(assert (=> bs!1913152 (= (dynLambda!29009 lambda!450681 ct1!250) (derivationStepZipperUp!2623 ct1!250 (h!77387 s!7854)))))

(assert (=> bs!1913152 m!7968760))

(assert (=> d!2267239 d!2267263))

(declare-fun b_lambda!281439 () Bool)

(assert (= b_lambda!281429 (or b!7296826 b_lambda!281439)))

(declare-fun bs!1913154 () Bool)

(declare-fun d!2267265 () Bool)

(assert (= bs!1913154 (and d!2267265 b!7296826)))

(assert (=> bs!1913154 (= (dynLambda!29009 lambda!450681 lt!2598629) (derivationStepZipperUp!2623 lt!2598629 (h!77387 s!7854)))))

(assert (=> bs!1913154 m!7968796))

(assert (=> d!2267227 d!2267265))

(declare-fun b_lambda!281441 () Bool)

(assert (= b_lambda!281435 (or b!7296826 b_lambda!281441)))

(declare-fun bs!1913155 () Bool)

(declare-fun d!2267267 () Bool)

(assert (= bs!1913155 (and d!2267267 b!7296826)))

(assert (=> bs!1913155 (= (dynLambda!29009 lambda!450681 lt!2598648) (derivationStepZipperUp!2623 lt!2598648 (h!77387 s!7854)))))

(assert (=> bs!1913155 m!7968762))

(assert (=> d!2267249 d!2267267))

(check-sat (not b!7296842) (not b!7296990) (not bs!1913154) (not b!7297002) (not d!2267201) (not bm!664889) (not b!7296928) (not b!7296902) (not b_lambda!281437) (not b_lambda!281441) (not b!7296897) (not bm!664937) (not d!2267213) (not d!2267257) (not bm!664933) (not d!2267227) (not bm!664935) (not d!2267247) (not b_lambda!281439) (not bs!1913152) (not d!2267205) (not bm!664902) (not b!7296927) (not d!2267237) (not b!7296977) (not b!7296976) (not bm!664910) tp_is_empty!47211 (not b!7296901) (not d!2267253) (not d!2267249) (not b!7296841) (not b!7296926) (not b!7296973) (not d!2267243) (not d!2267223) (not b!7296981) (not d!2267235) (not bs!1913155) (not d!2267251) (not d!2267231) (not bm!664904) (not d!2267221) (not bm!664930) (not b!7296980) (not b!7296898) (not b!7297007) (not bm!664931) (not d!2267225) (not b!7297008) (not b!7296994) (not d!2267217) (not d!2267239) (not b!7296929) (not b!7296995) (not d!2267255) (not bm!664906) (not b!7296972) (not b!7296875) (not d!2267193))
(check-sat)
