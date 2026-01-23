; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!715880 () Bool)

(assert start!715880)

(declare-fun b!7330779 () Bool)

(declare-fun e!4389653 () Bool)

(declare-fun e!4389656 () Bool)

(assert (=> b!7330779 (= e!4389653 e!4389656)))

(declare-fun res!2962652 () Bool)

(assert (=> b!7330779 (=> (not res!2962652) (not e!4389656))))

(declare-datatypes ((C!38360 0))(
  ( (C!38361 (val!29540 Int)) )
))
(declare-datatypes ((Regex!19043 0))(
  ( (ElementMatch!19043 (c!1361107 C!38360)) (Concat!27888 (regOne!38598 Regex!19043) (regTwo!38598 Regex!19043)) (EmptyExpr!19043) (Star!19043 (reg!19372 Regex!19043)) (EmptyLang!19043) (Union!19043 (regOne!38599 Regex!19043) (regTwo!38599 Regex!19043)) )
))
(declare-datatypes ((List!71539 0))(
  ( (Nil!71415) (Cons!71415 (h!77863 Regex!19043) (t!385926 List!71539)) )
))
(declare-datatypes ((Context!15966 0))(
  ( (Context!15967 (exprs!8483 List!71539)) )
))
(declare-fun ct1!256 () Context!15966)

(get-info :version)

(assert (=> b!7330779 (= res!2962652 ((_ is Cons!71415) (exprs!8483 ct1!256)))))

(declare-fun lt!2607802 () List!71539)

(declare-fun ct2!352 () Context!15966)

(declare-fun ++!16865 (List!71539 List!71539) List!71539)

(assert (=> b!7330779 (= lt!2607802 (++!16865 (exprs!8483 ct1!256) (exprs!8483 ct2!352)))))

(declare-datatypes ((Unit!165047 0))(
  ( (Unit!165048) )
))
(declare-fun lt!2607790 () Unit!165047)

(declare-fun lambda!454677 () Int)

(declare-fun lemmaConcatPreservesForall!1722 (List!71539 List!71539 Int) Unit!165047)

(assert (=> b!7330779 (= lt!2607790 (lemmaConcatPreservesForall!1722 (exprs!8483 ct1!256) (exprs!8483 ct2!352) lambda!454677))))

(declare-fun b!7330780 () Bool)

(declare-fun res!2962654 () Bool)

(assert (=> b!7330780 (=> (not res!2962654) (not e!4389656))))

(declare-fun isEmpty!40955 (List!71539) Bool)

(assert (=> b!7330780 (= res!2962654 (not (isEmpty!40955 (exprs!8483 ct1!256))))))

(declare-fun b!7330781 () Bool)

(declare-fun e!4389654 () Bool)

(declare-fun tp!2081441 () Bool)

(assert (=> b!7330781 (= e!4389654 tp!2081441)))

(declare-fun b!7330782 () Bool)

(declare-fun e!4389652 () Bool)

(declare-fun lt!2607793 () Context!15966)

(declare-fun inv!90947 (Context!15966) Bool)

(assert (=> b!7330782 (= e!4389652 (inv!90947 lt!2607793))))

(declare-fun lt!2607791 () Unit!165047)

(assert (=> b!7330782 (= lt!2607791 (lemmaConcatPreservesForall!1722 (exprs!8483 ct1!256) (exprs!8483 ct2!352) lambda!454677))))

(declare-fun lt!2607800 () Unit!165047)

(declare-fun cWitness!35 () Context!15966)

(assert (=> b!7330782 (= lt!2607800 (lemmaConcatPreservesForall!1722 (exprs!8483 cWitness!35) (exprs!8483 ct2!352) lambda!454677))))

(declare-fun b!7330783 () Bool)

(declare-fun e!4389655 () Bool)

(declare-fun tp!2081439 () Bool)

(assert (=> b!7330783 (= e!4389655 tp!2081439)))

(declare-fun b!7330784 () Bool)

(declare-fun e!4389651 () Bool)

(assert (=> b!7330784 (= e!4389656 e!4389651)))

(declare-fun res!2962651 () Bool)

(assert (=> b!7330784 (=> (not res!2962651) (not e!4389651))))

(declare-fun nullable!8144 (Regex!19043) Bool)

(assert (=> b!7330784 (= res!2962651 (nullable!8144 (h!77863 (exprs!8483 ct1!256))))))

(declare-fun c!10305 () C!38360)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2607795 () (InoxSet Context!15966))

(declare-fun lt!2607803 () Context!15966)

(declare-fun derivationStepZipperDown!2870 (Regex!19043 Context!15966 C!38360) (InoxSet Context!15966))

(assert (=> b!7330784 (= lt!2607795 (derivationStepZipperDown!2870 (h!77863 (exprs!8483 ct1!256)) lt!2607803 c!10305))))

(declare-fun lt!2607797 () List!71539)

(assert (=> b!7330784 (= lt!2607803 (Context!15967 lt!2607797))))

(declare-fun tail!14724 (List!71539) List!71539)

(assert (=> b!7330784 (= lt!2607797 (tail!14724 (exprs!8483 ct1!256)))))

(declare-fun b!7330785 () Bool)

(declare-fun e!4389649 () Bool)

(declare-fun tp!2081440 () Bool)

(assert (=> b!7330785 (= e!4389649 tp!2081440)))

(declare-fun b!7330786 () Bool)

(declare-fun e!4389650 () Bool)

(assert (=> b!7330786 (= e!4389651 e!4389650)))

(declare-fun res!2962650 () Bool)

(assert (=> b!7330786 (=> (not res!2962650) (not e!4389650))))

(declare-fun lt!2607792 () (InoxSet Context!15966))

(declare-fun lt!2607796 () (InoxSet Context!15966))

(assert (=> b!7330786 (= res!2962650 (and (= lt!2607796 ((_ map or) lt!2607795 lt!2607792)) (or (select lt!2607795 cWitness!35) (select lt!2607792 cWitness!35)) (select lt!2607792 cWitness!35)))))

(declare-fun derivationStepZipperUp!2723 (Context!15966 C!38360) (InoxSet Context!15966))

(assert (=> b!7330786 (= lt!2607792 (derivationStepZipperUp!2723 lt!2607803 c!10305))))

(declare-fun b!7330787 () Bool)

(assert (=> b!7330787 (= e!4389650 (not e!4389652))))

(declare-fun res!2962649 () Bool)

(assert (=> b!7330787 (=> res!2962649 e!4389652)))

(assert (=> b!7330787 (= res!2962649 (not (select (derivationStepZipperUp!2723 (Context!15967 lt!2607802) c!10305) lt!2607793)))))

(declare-fun lt!2607801 () Unit!165047)

(assert (=> b!7330787 (= lt!2607801 (lemmaConcatPreservesForall!1722 (exprs!8483 cWitness!35) (exprs!8483 ct2!352) lambda!454677))))

(assert (=> b!7330787 (select (derivationStepZipperUp!2723 (Context!15967 (++!16865 lt!2607797 (exprs!8483 ct2!352))) c!10305) lt!2607793)))

(assert (=> b!7330787 (= lt!2607793 (Context!15967 (++!16865 (exprs!8483 cWitness!35) (exprs!8483 ct2!352))))))

(declare-fun lt!2607794 () Unit!165047)

(assert (=> b!7330787 (= lt!2607794 (lemmaConcatPreservesForall!1722 lt!2607797 (exprs!8483 ct2!352) lambda!454677))))

(declare-fun lt!2607798 () Unit!165047)

(assert (=> b!7330787 (= lt!2607798 (lemmaConcatPreservesForall!1722 (exprs!8483 cWitness!35) (exprs!8483 ct2!352) lambda!454677))))

(declare-fun lt!2607799 () Unit!165047)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!58 (Context!15966 Context!15966 Context!15966 C!38360) Unit!165047)

(assert (=> b!7330787 (= lt!2607799 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!58 lt!2607803 ct2!352 cWitness!35 c!10305))))

(declare-fun res!2962653 () Bool)

(assert (=> start!715880 (=> (not res!2962653) (not e!4389653))))

(assert (=> start!715880 (= res!2962653 (select lt!2607796 cWitness!35))))

(assert (=> start!715880 (= lt!2607796 (derivationStepZipperUp!2723 ct1!256 c!10305))))

(assert (=> start!715880 e!4389653))

(declare-fun tp_is_empty!48331 () Bool)

(assert (=> start!715880 tp_is_empty!48331))

(assert (=> start!715880 (and (inv!90947 cWitness!35) e!4389649)))

(assert (=> start!715880 (and (inv!90947 ct1!256) e!4389654)))

(assert (=> start!715880 (and (inv!90947 ct2!352) e!4389655)))

(assert (= (and start!715880 res!2962653) b!7330779))

(assert (= (and b!7330779 res!2962652) b!7330780))

(assert (= (and b!7330780 res!2962654) b!7330784))

(assert (= (and b!7330784 res!2962651) b!7330786))

(assert (= (and b!7330786 res!2962650) b!7330787))

(assert (= (and b!7330787 (not res!2962649)) b!7330782))

(assert (= start!715880 b!7330785))

(assert (= start!715880 b!7330781))

(assert (= start!715880 b!7330783))

(declare-fun m!7996822 () Bool)

(assert (=> b!7330786 m!7996822))

(declare-fun m!7996824 () Bool)

(assert (=> b!7330786 m!7996824))

(declare-fun m!7996826 () Bool)

(assert (=> b!7330786 m!7996826))

(declare-fun m!7996828 () Bool)

(assert (=> b!7330784 m!7996828))

(declare-fun m!7996830 () Bool)

(assert (=> b!7330784 m!7996830))

(declare-fun m!7996832 () Bool)

(assert (=> b!7330784 m!7996832))

(declare-fun m!7996834 () Bool)

(assert (=> b!7330780 m!7996834))

(declare-fun m!7996836 () Bool)

(assert (=> b!7330782 m!7996836))

(declare-fun m!7996838 () Bool)

(assert (=> b!7330782 m!7996838))

(declare-fun m!7996840 () Bool)

(assert (=> b!7330782 m!7996840))

(declare-fun m!7996842 () Bool)

(assert (=> b!7330779 m!7996842))

(assert (=> b!7330779 m!7996838))

(declare-fun m!7996844 () Bool)

(assert (=> b!7330787 m!7996844))

(declare-fun m!7996846 () Bool)

(assert (=> b!7330787 m!7996846))

(declare-fun m!7996848 () Bool)

(assert (=> b!7330787 m!7996848))

(declare-fun m!7996850 () Bool)

(assert (=> b!7330787 m!7996850))

(assert (=> b!7330787 m!7996840))

(declare-fun m!7996852 () Bool)

(assert (=> b!7330787 m!7996852))

(declare-fun m!7996854 () Bool)

(assert (=> b!7330787 m!7996854))

(assert (=> b!7330787 m!7996840))

(declare-fun m!7996856 () Bool)

(assert (=> b!7330787 m!7996856))

(declare-fun m!7996858 () Bool)

(assert (=> b!7330787 m!7996858))

(declare-fun m!7996860 () Bool)

(assert (=> start!715880 m!7996860))

(declare-fun m!7996862 () Bool)

(assert (=> start!715880 m!7996862))

(declare-fun m!7996864 () Bool)

(assert (=> start!715880 m!7996864))

(declare-fun m!7996866 () Bool)

(assert (=> start!715880 m!7996866))

(declare-fun m!7996868 () Bool)

(assert (=> start!715880 m!7996868))

(check-sat (not start!715880) (not b!7330780) (not b!7330785) (not b!7330787) (not b!7330786) (not b!7330779) tp_is_empty!48331 (not b!7330781) (not b!7330783) (not b!7330782) (not b!7330784))
(check-sat)
(get-model)

(declare-fun d!2276482 () Bool)

(declare-fun nullableFct!3241 (Regex!19043) Bool)

(assert (=> d!2276482 (= (nullable!8144 (h!77863 (exprs!8483 ct1!256))) (nullableFct!3241 (h!77863 (exprs!8483 ct1!256))))))

(declare-fun bs!1917355 () Bool)

(assert (= bs!1917355 d!2276482))

(declare-fun m!7996872 () Bool)

(assert (=> bs!1917355 m!7996872))

(assert (=> b!7330784 d!2276482))

(declare-fun b!7330843 () Bool)

(declare-fun e!4389688 () (InoxSet Context!15966))

(assert (=> b!7330843 (= e!4389688 (store ((as const (Array Context!15966 Bool)) false) lt!2607803 true))))

(declare-fun b!7330844 () Bool)

(declare-fun e!4389691 () (InoxSet Context!15966))

(assert (=> b!7330844 (= e!4389691 ((as const (Array Context!15966 Bool)) false))))

(declare-fun c!1361137 () Bool)

(declare-fun call!667745 () (InoxSet Context!15966))

(declare-fun bm!667735 () Bool)

(declare-fun call!667744 () List!71539)

(assert (=> bm!667735 (= call!667745 (derivationStepZipperDown!2870 (ite c!1361137 (regOne!38599 (h!77863 (exprs!8483 ct1!256))) (regOne!38598 (h!77863 (exprs!8483 ct1!256)))) (ite c!1361137 lt!2607803 (Context!15967 call!667744)) c!10305))))

(declare-fun bm!667736 () Bool)

(declare-fun call!667743 () (InoxSet Context!15966))

(declare-fun call!667741 () (InoxSet Context!15966))

(assert (=> bm!667736 (= call!667743 call!667741)))

(declare-fun b!7330845 () Bool)

(declare-fun call!667740 () (InoxSet Context!15966))

(assert (=> b!7330845 (= e!4389691 call!667740)))

(declare-fun b!7330846 () Bool)

(declare-fun e!4389690 () (InoxSet Context!15966))

(assert (=> b!7330846 (= e!4389688 e!4389690)))

(assert (=> b!7330846 (= c!1361137 ((_ is Union!19043) (h!77863 (exprs!8483 ct1!256))))))

(declare-fun d!2276484 () Bool)

(declare-fun c!1361134 () Bool)

(assert (=> d!2276484 (= c!1361134 (and ((_ is ElementMatch!19043) (h!77863 (exprs!8483 ct1!256))) (= (c!1361107 (h!77863 (exprs!8483 ct1!256))) c!10305)))))

(assert (=> d!2276484 (= (derivationStepZipperDown!2870 (h!77863 (exprs!8483 ct1!256)) lt!2607803 c!10305) e!4389688)))

(declare-fun b!7330847 () Bool)

(declare-fun e!4389692 () (InoxSet Context!15966))

(assert (=> b!7330847 (= e!4389692 ((_ map or) call!667745 call!667743))))

(declare-fun b!7330848 () Bool)

(declare-fun e!4389689 () (InoxSet Context!15966))

(assert (=> b!7330848 (= e!4389692 e!4389689)))

(declare-fun c!1361135 () Bool)

(assert (=> b!7330848 (= c!1361135 ((_ is Concat!27888) (h!77863 (exprs!8483 ct1!256))))))

(declare-fun b!7330849 () Bool)

(declare-fun e!4389687 () Bool)

(assert (=> b!7330849 (= e!4389687 (nullable!8144 (regOne!38598 (h!77863 (exprs!8483 ct1!256)))))))

(declare-fun c!1361133 () Bool)

(declare-fun bm!667737 () Bool)

(declare-fun $colon$colon!3058 (List!71539 Regex!19043) List!71539)

(assert (=> bm!667737 (= call!667744 ($colon$colon!3058 (exprs!8483 lt!2607803) (ite (or c!1361133 c!1361135) (regTwo!38598 (h!77863 (exprs!8483 ct1!256))) (h!77863 (exprs!8483 ct1!256)))))))

(declare-fun b!7330850 () Bool)

(assert (=> b!7330850 (= e!4389689 call!667740)))

(declare-fun bm!667738 () Bool)

(declare-fun call!667742 () List!71539)

(assert (=> bm!667738 (= call!667742 call!667744)))

(declare-fun b!7330851 () Bool)

(assert (=> b!7330851 (= e!4389690 ((_ map or) call!667745 call!667741))))

(declare-fun bm!667739 () Bool)

(assert (=> bm!667739 (= call!667741 (derivationStepZipperDown!2870 (ite c!1361137 (regTwo!38599 (h!77863 (exprs!8483 ct1!256))) (ite c!1361133 (regTwo!38598 (h!77863 (exprs!8483 ct1!256))) (ite c!1361135 (regOne!38598 (h!77863 (exprs!8483 ct1!256))) (reg!19372 (h!77863 (exprs!8483 ct1!256)))))) (ite (or c!1361137 c!1361133) lt!2607803 (Context!15967 call!667742)) c!10305))))

(declare-fun b!7330852 () Bool)

(assert (=> b!7330852 (= c!1361133 e!4389687)))

(declare-fun res!2962660 () Bool)

(assert (=> b!7330852 (=> (not res!2962660) (not e!4389687))))

(assert (=> b!7330852 (= res!2962660 ((_ is Concat!27888) (h!77863 (exprs!8483 ct1!256))))))

(assert (=> b!7330852 (= e!4389690 e!4389692)))

(declare-fun b!7330853 () Bool)

(declare-fun c!1361136 () Bool)

(assert (=> b!7330853 (= c!1361136 ((_ is Star!19043) (h!77863 (exprs!8483 ct1!256))))))

(assert (=> b!7330853 (= e!4389689 e!4389691)))

(declare-fun bm!667740 () Bool)

(assert (=> bm!667740 (= call!667740 call!667743)))

(assert (= (and d!2276484 c!1361134) b!7330843))

(assert (= (and d!2276484 (not c!1361134)) b!7330846))

(assert (= (and b!7330846 c!1361137) b!7330851))

(assert (= (and b!7330846 (not c!1361137)) b!7330852))

(assert (= (and b!7330852 res!2962660) b!7330849))

(assert (= (and b!7330852 c!1361133) b!7330847))

(assert (= (and b!7330852 (not c!1361133)) b!7330848))

(assert (= (and b!7330848 c!1361135) b!7330850))

(assert (= (and b!7330848 (not c!1361135)) b!7330853))

(assert (= (and b!7330853 c!1361136) b!7330845))

(assert (= (and b!7330853 (not c!1361136)) b!7330844))

(assert (= (or b!7330850 b!7330845) bm!667738))

(assert (= (or b!7330850 b!7330845) bm!667740))

(assert (= (or b!7330847 bm!667740) bm!667736))

(assert (= (or b!7330847 bm!667738) bm!667737))

(assert (= (or b!7330851 bm!667736) bm!667739))

(assert (= (or b!7330851 b!7330847) bm!667735))

(declare-fun m!7996886 () Bool)

(assert (=> bm!667735 m!7996886))

(declare-fun m!7996888 () Bool)

(assert (=> b!7330849 m!7996888))

(declare-fun m!7996890 () Bool)

(assert (=> b!7330843 m!7996890))

(declare-fun m!7996892 () Bool)

(assert (=> bm!667739 m!7996892))

(declare-fun m!7996894 () Bool)

(assert (=> bm!667737 m!7996894))

(assert (=> b!7330784 d!2276484))

(declare-fun d!2276492 () Bool)

(assert (=> d!2276492 (= (tail!14724 (exprs!8483 ct1!256)) (t!385926 (exprs!8483 ct1!256)))))

(assert (=> b!7330784 d!2276492))

(declare-fun b!7330876 () Bool)

(declare-fun e!4389705 () (InoxSet Context!15966))

(declare-fun call!667748 () (InoxSet Context!15966))

(assert (=> b!7330876 (= e!4389705 call!667748)))

(declare-fun d!2276498 () Bool)

(declare-fun c!1361145 () Bool)

(declare-fun e!4389706 () Bool)

(assert (=> d!2276498 (= c!1361145 e!4389706)))

(declare-fun res!2962669 () Bool)

(assert (=> d!2276498 (=> (not res!2962669) (not e!4389706))))

(assert (=> d!2276498 (= res!2962669 ((_ is Cons!71415) (exprs!8483 (Context!15967 lt!2607802))))))

(declare-fun e!4389707 () (InoxSet Context!15966))

(assert (=> d!2276498 (= (derivationStepZipperUp!2723 (Context!15967 lt!2607802) c!10305) e!4389707)))

(declare-fun bm!667743 () Bool)

(assert (=> bm!667743 (= call!667748 (derivationStepZipperDown!2870 (h!77863 (exprs!8483 (Context!15967 lt!2607802))) (Context!15967 (t!385926 (exprs!8483 (Context!15967 lt!2607802)))) c!10305))))

(declare-fun b!7330877 () Bool)

(assert (=> b!7330877 (= e!4389707 ((_ map or) call!667748 (derivationStepZipperUp!2723 (Context!15967 (t!385926 (exprs!8483 (Context!15967 lt!2607802)))) c!10305)))))

(declare-fun b!7330878 () Bool)

(assert (=> b!7330878 (= e!4389707 e!4389705)))

(declare-fun c!1361146 () Bool)

(assert (=> b!7330878 (= c!1361146 ((_ is Cons!71415) (exprs!8483 (Context!15967 lt!2607802))))))

(declare-fun b!7330879 () Bool)

(assert (=> b!7330879 (= e!4389705 ((as const (Array Context!15966 Bool)) false))))

(declare-fun b!7330880 () Bool)

(assert (=> b!7330880 (= e!4389706 (nullable!8144 (h!77863 (exprs!8483 (Context!15967 lt!2607802)))))))

(assert (= (and d!2276498 res!2962669) b!7330880))

(assert (= (and d!2276498 c!1361145) b!7330877))

(assert (= (and d!2276498 (not c!1361145)) b!7330878))

(assert (= (and b!7330878 c!1361146) b!7330876))

(assert (= (and b!7330878 (not c!1361146)) b!7330879))

(assert (= (or b!7330877 b!7330876) bm!667743))

(declare-fun m!7996922 () Bool)

(assert (=> bm!667743 m!7996922))

(declare-fun m!7996924 () Bool)

(assert (=> b!7330877 m!7996924))

(declare-fun m!7996926 () Bool)

(assert (=> b!7330880 m!7996926))

(assert (=> b!7330787 d!2276498))

(declare-fun d!2276504 () Bool)

(declare-fun forall!17884 (List!71539 Int) Bool)

(assert (=> d!2276504 (forall!17884 (++!16865 lt!2607797 (exprs!8483 ct2!352)) lambda!454677)))

(declare-fun lt!2607813 () Unit!165047)

(declare-fun choose!57023 (List!71539 List!71539 Int) Unit!165047)

(assert (=> d!2276504 (= lt!2607813 (choose!57023 lt!2607797 (exprs!8483 ct2!352) lambda!454677))))

(assert (=> d!2276504 (forall!17884 lt!2607797 lambda!454677)))

(assert (=> d!2276504 (= (lemmaConcatPreservesForall!1722 lt!2607797 (exprs!8483 ct2!352) lambda!454677) lt!2607813)))

(declare-fun bs!1917360 () Bool)

(assert (= bs!1917360 d!2276504))

(assert (=> bs!1917360 m!7996858))

(assert (=> bs!1917360 m!7996858))

(declare-fun m!7996928 () Bool)

(assert (=> bs!1917360 m!7996928))

(declare-fun m!7996930 () Bool)

(assert (=> bs!1917360 m!7996930))

(declare-fun m!7996932 () Bool)

(assert (=> bs!1917360 m!7996932))

(assert (=> b!7330787 d!2276504))

(declare-fun d!2276506 () Bool)

(assert (=> d!2276506 (forall!17884 (++!16865 (exprs!8483 cWitness!35) (exprs!8483 ct2!352)) lambda!454677)))

(declare-fun lt!2607814 () Unit!165047)

(assert (=> d!2276506 (= lt!2607814 (choose!57023 (exprs!8483 cWitness!35) (exprs!8483 ct2!352) lambda!454677))))

(assert (=> d!2276506 (forall!17884 (exprs!8483 cWitness!35) lambda!454677)))

(assert (=> d!2276506 (= (lemmaConcatPreservesForall!1722 (exprs!8483 cWitness!35) (exprs!8483 ct2!352) lambda!454677) lt!2607814)))

(declare-fun bs!1917361 () Bool)

(assert (= bs!1917361 d!2276506))

(assert (=> bs!1917361 m!7996848))

(assert (=> bs!1917361 m!7996848))

(declare-fun m!7996934 () Bool)

(assert (=> bs!1917361 m!7996934))

(declare-fun m!7996936 () Bool)

(assert (=> bs!1917361 m!7996936))

(declare-fun m!7996938 () Bool)

(assert (=> bs!1917361 m!7996938))

(assert (=> b!7330787 d!2276506))

(declare-fun b!7330890 () Bool)

(declare-fun e!4389713 () List!71539)

(assert (=> b!7330890 (= e!4389713 (Cons!71415 (h!77863 (exprs!8483 cWitness!35)) (++!16865 (t!385926 (exprs!8483 cWitness!35)) (exprs!8483 ct2!352))))))

(declare-fun d!2276508 () Bool)

(declare-fun e!4389712 () Bool)

(assert (=> d!2276508 e!4389712))

(declare-fun res!2962674 () Bool)

(assert (=> d!2276508 (=> (not res!2962674) (not e!4389712))))

(declare-fun lt!2607826 () List!71539)

(declare-fun content!14975 (List!71539) (InoxSet Regex!19043))

(assert (=> d!2276508 (= res!2962674 (= (content!14975 lt!2607826) ((_ map or) (content!14975 (exprs!8483 cWitness!35)) (content!14975 (exprs!8483 ct2!352)))))))

(assert (=> d!2276508 (= lt!2607826 e!4389713)))

(declare-fun c!1361150 () Bool)

(assert (=> d!2276508 (= c!1361150 ((_ is Nil!71415) (exprs!8483 cWitness!35)))))

(assert (=> d!2276508 (= (++!16865 (exprs!8483 cWitness!35) (exprs!8483 ct2!352)) lt!2607826)))

(declare-fun b!7330891 () Bool)

(declare-fun res!2962675 () Bool)

(assert (=> b!7330891 (=> (not res!2962675) (not e!4389712))))

(declare-fun size!41954 (List!71539) Int)

(assert (=> b!7330891 (= res!2962675 (= (size!41954 lt!2607826) (+ (size!41954 (exprs!8483 cWitness!35)) (size!41954 (exprs!8483 ct2!352)))))))

(declare-fun b!7330889 () Bool)

(assert (=> b!7330889 (= e!4389713 (exprs!8483 ct2!352))))

(declare-fun b!7330892 () Bool)

(assert (=> b!7330892 (= e!4389712 (or (not (= (exprs!8483 ct2!352) Nil!71415)) (= lt!2607826 (exprs!8483 cWitness!35))))))

(assert (= (and d!2276508 c!1361150) b!7330889))

(assert (= (and d!2276508 (not c!1361150)) b!7330890))

(assert (= (and d!2276508 res!2962674) b!7330891))

(assert (= (and b!7330891 res!2962675) b!7330892))

(declare-fun m!7996954 () Bool)

(assert (=> b!7330890 m!7996954))

(declare-fun m!7996956 () Bool)

(assert (=> d!2276508 m!7996956))

(declare-fun m!7996958 () Bool)

(assert (=> d!2276508 m!7996958))

(declare-fun m!7996960 () Bool)

(assert (=> d!2276508 m!7996960))

(declare-fun m!7996962 () Bool)

(assert (=> b!7330891 m!7996962))

(declare-fun m!7996964 () Bool)

(assert (=> b!7330891 m!7996964))

(declare-fun m!7996966 () Bool)

(assert (=> b!7330891 m!7996966))

(assert (=> b!7330787 d!2276508))

(declare-fun b!7330903 () Bool)

(declare-fun e!4389720 () (InoxSet Context!15966))

(declare-fun call!667749 () (InoxSet Context!15966))

(assert (=> b!7330903 (= e!4389720 call!667749)))

(declare-fun d!2276512 () Bool)

(declare-fun c!1361155 () Bool)

(declare-fun e!4389721 () Bool)

(assert (=> d!2276512 (= c!1361155 e!4389721)))

(declare-fun res!2962678 () Bool)

(assert (=> d!2276512 (=> (not res!2962678) (not e!4389721))))

(assert (=> d!2276512 (= res!2962678 ((_ is Cons!71415) (exprs!8483 (Context!15967 (++!16865 lt!2607797 (exprs!8483 ct2!352))))))))

(declare-fun e!4389722 () (InoxSet Context!15966))

(assert (=> d!2276512 (= (derivationStepZipperUp!2723 (Context!15967 (++!16865 lt!2607797 (exprs!8483 ct2!352))) c!10305) e!4389722)))

(declare-fun bm!667744 () Bool)

(assert (=> bm!667744 (= call!667749 (derivationStepZipperDown!2870 (h!77863 (exprs!8483 (Context!15967 (++!16865 lt!2607797 (exprs!8483 ct2!352))))) (Context!15967 (t!385926 (exprs!8483 (Context!15967 (++!16865 lt!2607797 (exprs!8483 ct2!352)))))) c!10305))))

(declare-fun b!7330904 () Bool)

(assert (=> b!7330904 (= e!4389722 ((_ map or) call!667749 (derivationStepZipperUp!2723 (Context!15967 (t!385926 (exprs!8483 (Context!15967 (++!16865 lt!2607797 (exprs!8483 ct2!352)))))) c!10305)))))

(declare-fun b!7330905 () Bool)

(assert (=> b!7330905 (= e!4389722 e!4389720)))

(declare-fun c!1361156 () Bool)

(assert (=> b!7330905 (= c!1361156 ((_ is Cons!71415) (exprs!8483 (Context!15967 (++!16865 lt!2607797 (exprs!8483 ct2!352))))))))

(declare-fun b!7330906 () Bool)

(assert (=> b!7330906 (= e!4389720 ((as const (Array Context!15966 Bool)) false))))

(declare-fun b!7330907 () Bool)

(assert (=> b!7330907 (= e!4389721 (nullable!8144 (h!77863 (exprs!8483 (Context!15967 (++!16865 lt!2607797 (exprs!8483 ct2!352)))))))))

(assert (= (and d!2276512 res!2962678) b!7330907))

(assert (= (and d!2276512 c!1361155) b!7330904))

(assert (= (and d!2276512 (not c!1361155)) b!7330905))

(assert (= (and b!7330905 c!1361156) b!7330903))

(assert (= (and b!7330905 (not c!1361156)) b!7330906))

(assert (= (or b!7330904 b!7330903) bm!667744))

(declare-fun m!7996968 () Bool)

(assert (=> bm!667744 m!7996968))

(declare-fun m!7996970 () Bool)

(assert (=> b!7330904 m!7996970))

(declare-fun m!7996972 () Bool)

(assert (=> b!7330907 m!7996972))

(assert (=> b!7330787 d!2276512))

(declare-fun bs!1917381 () Bool)

(declare-fun d!2276514 () Bool)

(assert (= bs!1917381 (and d!2276514 b!7330779)))

(declare-fun lambda!454693 () Int)

(assert (=> bs!1917381 (= lambda!454693 lambda!454677)))

(assert (=> d!2276514 (select (derivationStepZipperUp!2723 (Context!15967 (++!16865 (exprs!8483 lt!2607803) (exprs!8483 ct2!352))) c!10305) (Context!15967 (++!16865 (exprs!8483 cWitness!35) (exprs!8483 ct2!352))))))

(declare-fun lt!2607838 () Unit!165047)

(assert (=> d!2276514 (= lt!2607838 (lemmaConcatPreservesForall!1722 (exprs!8483 lt!2607803) (exprs!8483 ct2!352) lambda!454693))))

(declare-fun lt!2607837 () Unit!165047)

(assert (=> d!2276514 (= lt!2607837 (lemmaConcatPreservesForall!1722 (exprs!8483 cWitness!35) (exprs!8483 ct2!352) lambda!454693))))

(declare-fun lt!2607836 () Unit!165047)

(declare-fun choose!57024 (Context!15966 Context!15966 Context!15966 C!38360) Unit!165047)

(assert (=> d!2276514 (= lt!2607836 (choose!57024 lt!2607803 ct2!352 cWitness!35 c!10305))))

(assert (=> d!2276514 (select (derivationStepZipperUp!2723 lt!2607803 c!10305) cWitness!35)))

(assert (=> d!2276514 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!58 lt!2607803 ct2!352 cWitness!35 c!10305) lt!2607836)))

(declare-fun bs!1917382 () Bool)

(assert (= bs!1917382 d!2276514))

(declare-fun m!7997028 () Bool)

(assert (=> bs!1917382 m!7997028))

(assert (=> bs!1917382 m!7996848))

(declare-fun m!7997030 () Bool)

(assert (=> bs!1917382 m!7997030))

(declare-fun m!7997032 () Bool)

(assert (=> bs!1917382 m!7997032))

(declare-fun m!7997034 () Bool)

(assert (=> bs!1917382 m!7997034))

(declare-fun m!7997036 () Bool)

(assert (=> bs!1917382 m!7997036))

(declare-fun m!7997038 () Bool)

(assert (=> bs!1917382 m!7997038))

(assert (=> bs!1917382 m!7996826))

(declare-fun m!7997040 () Bool)

(assert (=> bs!1917382 m!7997040))

(assert (=> b!7330787 d!2276514))

(declare-fun b!7330944 () Bool)

(declare-fun e!4389745 () List!71539)

(assert (=> b!7330944 (= e!4389745 (Cons!71415 (h!77863 lt!2607797) (++!16865 (t!385926 lt!2607797) (exprs!8483 ct2!352))))))

(declare-fun d!2276534 () Bool)

(declare-fun e!4389744 () Bool)

(assert (=> d!2276534 e!4389744))

(declare-fun res!2962687 () Bool)

(assert (=> d!2276534 (=> (not res!2962687) (not e!4389744))))

(declare-fun lt!2607839 () List!71539)

(assert (=> d!2276534 (= res!2962687 (= (content!14975 lt!2607839) ((_ map or) (content!14975 lt!2607797) (content!14975 (exprs!8483 ct2!352)))))))

(assert (=> d!2276534 (= lt!2607839 e!4389745)))

(declare-fun c!1361168 () Bool)

(assert (=> d!2276534 (= c!1361168 ((_ is Nil!71415) lt!2607797))))

(assert (=> d!2276534 (= (++!16865 lt!2607797 (exprs!8483 ct2!352)) lt!2607839)))

(declare-fun b!7330945 () Bool)

(declare-fun res!2962688 () Bool)

(assert (=> b!7330945 (=> (not res!2962688) (not e!4389744))))

(assert (=> b!7330945 (= res!2962688 (= (size!41954 lt!2607839) (+ (size!41954 lt!2607797) (size!41954 (exprs!8483 ct2!352)))))))

(declare-fun b!7330943 () Bool)

(assert (=> b!7330943 (= e!4389745 (exprs!8483 ct2!352))))

(declare-fun b!7330946 () Bool)

(assert (=> b!7330946 (= e!4389744 (or (not (= (exprs!8483 ct2!352) Nil!71415)) (= lt!2607839 lt!2607797)))))

(assert (= (and d!2276534 c!1361168) b!7330943))

(assert (= (and d!2276534 (not c!1361168)) b!7330944))

(assert (= (and d!2276534 res!2962687) b!7330945))

(assert (= (and b!7330945 res!2962688) b!7330946))

(declare-fun m!7997042 () Bool)

(assert (=> b!7330944 m!7997042))

(declare-fun m!7997044 () Bool)

(assert (=> d!2276534 m!7997044))

(declare-fun m!7997046 () Bool)

(assert (=> d!2276534 m!7997046))

(assert (=> d!2276534 m!7996960))

(declare-fun m!7997048 () Bool)

(assert (=> b!7330945 m!7997048))

(declare-fun m!7997050 () Bool)

(assert (=> b!7330945 m!7997050))

(assert (=> b!7330945 m!7996966))

(assert (=> b!7330787 d!2276534))

(declare-fun bs!1917383 () Bool)

(declare-fun d!2276536 () Bool)

(assert (= bs!1917383 (and d!2276536 b!7330779)))

(declare-fun lambda!454696 () Int)

(assert (=> bs!1917383 (= lambda!454696 lambda!454677)))

(declare-fun bs!1917384 () Bool)

(assert (= bs!1917384 (and d!2276536 d!2276514)))

(assert (=> bs!1917384 (= lambda!454696 lambda!454693)))

(assert (=> d!2276536 (= (inv!90947 lt!2607793) (forall!17884 (exprs!8483 lt!2607793) lambda!454696))))

(declare-fun bs!1917385 () Bool)

(assert (= bs!1917385 d!2276536))

(declare-fun m!7997052 () Bool)

(assert (=> bs!1917385 m!7997052))

(assert (=> b!7330782 d!2276536))

(declare-fun d!2276538 () Bool)

(assert (=> d!2276538 (forall!17884 (++!16865 (exprs!8483 ct1!256) (exprs!8483 ct2!352)) lambda!454677)))

(declare-fun lt!2607840 () Unit!165047)

(assert (=> d!2276538 (= lt!2607840 (choose!57023 (exprs!8483 ct1!256) (exprs!8483 ct2!352) lambda!454677))))

(assert (=> d!2276538 (forall!17884 (exprs!8483 ct1!256) lambda!454677)))

(assert (=> d!2276538 (= (lemmaConcatPreservesForall!1722 (exprs!8483 ct1!256) (exprs!8483 ct2!352) lambda!454677) lt!2607840)))

(declare-fun bs!1917386 () Bool)

(assert (= bs!1917386 d!2276538))

(assert (=> bs!1917386 m!7996842))

(assert (=> bs!1917386 m!7996842))

(declare-fun m!7997054 () Bool)

(assert (=> bs!1917386 m!7997054))

(declare-fun m!7997056 () Bool)

(assert (=> bs!1917386 m!7997056))

(declare-fun m!7997058 () Bool)

(assert (=> bs!1917386 m!7997058))

(assert (=> b!7330782 d!2276538))

(assert (=> b!7330782 d!2276506))

(declare-fun b!7330947 () Bool)

(declare-fun e!4389746 () (InoxSet Context!15966))

(declare-fun call!667756 () (InoxSet Context!15966))

(assert (=> b!7330947 (= e!4389746 call!667756)))

(declare-fun d!2276540 () Bool)

(declare-fun c!1361169 () Bool)

(declare-fun e!4389747 () Bool)

(assert (=> d!2276540 (= c!1361169 e!4389747)))

(declare-fun res!2962689 () Bool)

(assert (=> d!2276540 (=> (not res!2962689) (not e!4389747))))

(assert (=> d!2276540 (= res!2962689 ((_ is Cons!71415) (exprs!8483 ct1!256)))))

(declare-fun e!4389748 () (InoxSet Context!15966))

(assert (=> d!2276540 (= (derivationStepZipperUp!2723 ct1!256 c!10305) e!4389748)))

(declare-fun bm!667751 () Bool)

(assert (=> bm!667751 (= call!667756 (derivationStepZipperDown!2870 (h!77863 (exprs!8483 ct1!256)) (Context!15967 (t!385926 (exprs!8483 ct1!256))) c!10305))))

(declare-fun b!7330948 () Bool)

(assert (=> b!7330948 (= e!4389748 ((_ map or) call!667756 (derivationStepZipperUp!2723 (Context!15967 (t!385926 (exprs!8483 ct1!256))) c!10305)))))

(declare-fun b!7330949 () Bool)

(assert (=> b!7330949 (= e!4389748 e!4389746)))

(declare-fun c!1361170 () Bool)

(assert (=> b!7330949 (= c!1361170 ((_ is Cons!71415) (exprs!8483 ct1!256)))))

(declare-fun b!7330950 () Bool)

(assert (=> b!7330950 (= e!4389746 ((as const (Array Context!15966 Bool)) false))))

(declare-fun b!7330951 () Bool)

(assert (=> b!7330951 (= e!4389747 (nullable!8144 (h!77863 (exprs!8483 ct1!256))))))

(assert (= (and d!2276540 res!2962689) b!7330951))

(assert (= (and d!2276540 c!1361169) b!7330948))

(assert (= (and d!2276540 (not c!1361169)) b!7330949))

(assert (= (and b!7330949 c!1361170) b!7330947))

(assert (= (and b!7330949 (not c!1361170)) b!7330950))

(assert (= (or b!7330948 b!7330947) bm!667751))

(declare-fun m!7997060 () Bool)

(assert (=> bm!667751 m!7997060))

(declare-fun m!7997062 () Bool)

(assert (=> b!7330948 m!7997062))

(assert (=> b!7330951 m!7996828))

(assert (=> start!715880 d!2276540))

(declare-fun bs!1917387 () Bool)

(declare-fun d!2276542 () Bool)

(assert (= bs!1917387 (and d!2276542 b!7330779)))

(declare-fun lambda!454697 () Int)

(assert (=> bs!1917387 (= lambda!454697 lambda!454677)))

(declare-fun bs!1917388 () Bool)

(assert (= bs!1917388 (and d!2276542 d!2276514)))

(assert (=> bs!1917388 (= lambda!454697 lambda!454693)))

(declare-fun bs!1917389 () Bool)

(assert (= bs!1917389 (and d!2276542 d!2276536)))

(assert (=> bs!1917389 (= lambda!454697 lambda!454696)))

(assert (=> d!2276542 (= (inv!90947 cWitness!35) (forall!17884 (exprs!8483 cWitness!35) lambda!454697))))

(declare-fun bs!1917390 () Bool)

(assert (= bs!1917390 d!2276542))

(declare-fun m!7997064 () Bool)

(assert (=> bs!1917390 m!7997064))

(assert (=> start!715880 d!2276542))

(declare-fun bs!1917391 () Bool)

(declare-fun d!2276544 () Bool)

(assert (= bs!1917391 (and d!2276544 b!7330779)))

(declare-fun lambda!454698 () Int)

(assert (=> bs!1917391 (= lambda!454698 lambda!454677)))

(declare-fun bs!1917392 () Bool)

(assert (= bs!1917392 (and d!2276544 d!2276514)))

(assert (=> bs!1917392 (= lambda!454698 lambda!454693)))

(declare-fun bs!1917393 () Bool)

(assert (= bs!1917393 (and d!2276544 d!2276536)))

(assert (=> bs!1917393 (= lambda!454698 lambda!454696)))

(declare-fun bs!1917394 () Bool)

(assert (= bs!1917394 (and d!2276544 d!2276542)))

(assert (=> bs!1917394 (= lambda!454698 lambda!454697)))

(assert (=> d!2276544 (= (inv!90947 ct1!256) (forall!17884 (exprs!8483 ct1!256) lambda!454698))))

(declare-fun bs!1917395 () Bool)

(assert (= bs!1917395 d!2276544))

(declare-fun m!7997066 () Bool)

(assert (=> bs!1917395 m!7997066))

(assert (=> start!715880 d!2276544))

(declare-fun bs!1917396 () Bool)

(declare-fun d!2276546 () Bool)

(assert (= bs!1917396 (and d!2276546 d!2276536)))

(declare-fun lambda!454699 () Int)

(assert (=> bs!1917396 (= lambda!454699 lambda!454696)))

(declare-fun bs!1917397 () Bool)

(assert (= bs!1917397 (and d!2276546 d!2276544)))

(assert (=> bs!1917397 (= lambda!454699 lambda!454698)))

(declare-fun bs!1917398 () Bool)

(assert (= bs!1917398 (and d!2276546 b!7330779)))

(assert (=> bs!1917398 (= lambda!454699 lambda!454677)))

(declare-fun bs!1917399 () Bool)

(assert (= bs!1917399 (and d!2276546 d!2276514)))

(assert (=> bs!1917399 (= lambda!454699 lambda!454693)))

(declare-fun bs!1917400 () Bool)

(assert (= bs!1917400 (and d!2276546 d!2276542)))

(assert (=> bs!1917400 (= lambda!454699 lambda!454697)))

(assert (=> d!2276546 (= (inv!90947 ct2!352) (forall!17884 (exprs!8483 ct2!352) lambda!454699))))

(declare-fun bs!1917401 () Bool)

(assert (= bs!1917401 d!2276546))

(declare-fun m!7997068 () Bool)

(assert (=> bs!1917401 m!7997068))

(assert (=> start!715880 d!2276546))

(declare-fun b!7330952 () Bool)

(declare-fun e!4389749 () (InoxSet Context!15966))

(declare-fun call!667757 () (InoxSet Context!15966))

(assert (=> b!7330952 (= e!4389749 call!667757)))

(declare-fun d!2276548 () Bool)

(declare-fun c!1361171 () Bool)

(declare-fun e!4389750 () Bool)

(assert (=> d!2276548 (= c!1361171 e!4389750)))

(declare-fun res!2962690 () Bool)

(assert (=> d!2276548 (=> (not res!2962690) (not e!4389750))))

(assert (=> d!2276548 (= res!2962690 ((_ is Cons!71415) (exprs!8483 lt!2607803)))))

(declare-fun e!4389751 () (InoxSet Context!15966))

(assert (=> d!2276548 (= (derivationStepZipperUp!2723 lt!2607803 c!10305) e!4389751)))

(declare-fun bm!667752 () Bool)

(assert (=> bm!667752 (= call!667757 (derivationStepZipperDown!2870 (h!77863 (exprs!8483 lt!2607803)) (Context!15967 (t!385926 (exprs!8483 lt!2607803))) c!10305))))

(declare-fun b!7330953 () Bool)

(assert (=> b!7330953 (= e!4389751 ((_ map or) call!667757 (derivationStepZipperUp!2723 (Context!15967 (t!385926 (exprs!8483 lt!2607803))) c!10305)))))

(declare-fun b!7330954 () Bool)

(assert (=> b!7330954 (= e!4389751 e!4389749)))

(declare-fun c!1361172 () Bool)

(assert (=> b!7330954 (= c!1361172 ((_ is Cons!71415) (exprs!8483 lt!2607803)))))

(declare-fun b!7330955 () Bool)

(assert (=> b!7330955 (= e!4389749 ((as const (Array Context!15966 Bool)) false))))

(declare-fun b!7330956 () Bool)

(assert (=> b!7330956 (= e!4389750 (nullable!8144 (h!77863 (exprs!8483 lt!2607803))))))

(assert (= (and d!2276548 res!2962690) b!7330956))

(assert (= (and d!2276548 c!1361171) b!7330953))

(assert (= (and d!2276548 (not c!1361171)) b!7330954))

(assert (= (and b!7330954 c!1361172) b!7330952))

(assert (= (and b!7330954 (not c!1361172)) b!7330955))

(assert (= (or b!7330953 b!7330952) bm!667752))

(declare-fun m!7997070 () Bool)

(assert (=> bm!667752 m!7997070))

(declare-fun m!7997072 () Bool)

(assert (=> b!7330953 m!7997072))

(declare-fun m!7997074 () Bool)

(assert (=> b!7330956 m!7997074))

(assert (=> b!7330786 d!2276548))

(declare-fun d!2276550 () Bool)

(assert (=> d!2276550 (= (isEmpty!40955 (exprs!8483 ct1!256)) ((_ is Nil!71415) (exprs!8483 ct1!256)))))

(assert (=> b!7330780 d!2276550))

(declare-fun b!7330958 () Bool)

(declare-fun e!4389753 () List!71539)

(assert (=> b!7330958 (= e!4389753 (Cons!71415 (h!77863 (exprs!8483 ct1!256)) (++!16865 (t!385926 (exprs!8483 ct1!256)) (exprs!8483 ct2!352))))))

(declare-fun d!2276552 () Bool)

(declare-fun e!4389752 () Bool)

(assert (=> d!2276552 e!4389752))

(declare-fun res!2962691 () Bool)

(assert (=> d!2276552 (=> (not res!2962691) (not e!4389752))))

(declare-fun lt!2607841 () List!71539)

(assert (=> d!2276552 (= res!2962691 (= (content!14975 lt!2607841) ((_ map or) (content!14975 (exprs!8483 ct1!256)) (content!14975 (exprs!8483 ct2!352)))))))

(assert (=> d!2276552 (= lt!2607841 e!4389753)))

(declare-fun c!1361173 () Bool)

(assert (=> d!2276552 (= c!1361173 ((_ is Nil!71415) (exprs!8483 ct1!256)))))

(assert (=> d!2276552 (= (++!16865 (exprs!8483 ct1!256) (exprs!8483 ct2!352)) lt!2607841)))

(declare-fun b!7330959 () Bool)

(declare-fun res!2962692 () Bool)

(assert (=> b!7330959 (=> (not res!2962692) (not e!4389752))))

(assert (=> b!7330959 (= res!2962692 (= (size!41954 lt!2607841) (+ (size!41954 (exprs!8483 ct1!256)) (size!41954 (exprs!8483 ct2!352)))))))

(declare-fun b!7330957 () Bool)

(assert (=> b!7330957 (= e!4389753 (exprs!8483 ct2!352))))

(declare-fun b!7330960 () Bool)

(assert (=> b!7330960 (= e!4389752 (or (not (= (exprs!8483 ct2!352) Nil!71415)) (= lt!2607841 (exprs!8483 ct1!256))))))

(assert (= (and d!2276552 c!1361173) b!7330957))

(assert (= (and d!2276552 (not c!1361173)) b!7330958))

(assert (= (and d!2276552 res!2962691) b!7330959))

(assert (= (and b!7330959 res!2962692) b!7330960))

(declare-fun m!7997076 () Bool)

(assert (=> b!7330958 m!7997076))

(declare-fun m!7997078 () Bool)

(assert (=> d!2276552 m!7997078))

(declare-fun m!7997080 () Bool)

(assert (=> d!2276552 m!7997080))

(assert (=> d!2276552 m!7996960))

(declare-fun m!7997082 () Bool)

(assert (=> b!7330959 m!7997082))

(declare-fun m!7997084 () Bool)

(assert (=> b!7330959 m!7997084))

(assert (=> b!7330959 m!7996966))

(assert (=> b!7330779 d!2276552))

(assert (=> b!7330779 d!2276538))

(declare-fun b!7330965 () Bool)

(declare-fun e!4389756 () Bool)

(declare-fun tp!2081456 () Bool)

(declare-fun tp!2081457 () Bool)

(assert (=> b!7330965 (= e!4389756 (and tp!2081456 tp!2081457))))

(assert (=> b!7330783 (= tp!2081439 e!4389756)))

(assert (= (and b!7330783 ((_ is Cons!71415) (exprs!8483 ct2!352))) b!7330965))

(declare-fun b!7330966 () Bool)

(declare-fun e!4389757 () Bool)

(declare-fun tp!2081458 () Bool)

(declare-fun tp!2081459 () Bool)

(assert (=> b!7330966 (= e!4389757 (and tp!2081458 tp!2081459))))

(assert (=> b!7330781 (= tp!2081441 e!4389757)))

(assert (= (and b!7330781 ((_ is Cons!71415) (exprs!8483 ct1!256))) b!7330966))

(declare-fun b!7330967 () Bool)

(declare-fun e!4389758 () Bool)

(declare-fun tp!2081460 () Bool)

(declare-fun tp!2081461 () Bool)

(assert (=> b!7330967 (= e!4389758 (and tp!2081460 tp!2081461))))

(assert (=> b!7330785 (= tp!2081440 e!4389758)))

(assert (= (and b!7330785 ((_ is Cons!71415) (exprs!8483 cWitness!35))) b!7330967))

(check-sat (not b!7330948) (not b!7330966) (not b!7330880) (not bm!667743) (not d!2276546) (not d!2276482) (not d!2276552) (not d!2276542) (not b!7330953) (not bm!667752) (not d!2276504) (not bm!667739) (not b!7330877) (not b!7330904) (not b!7330965) (not bm!667744) (not d!2276536) (not bm!667751) (not b!7330849) (not bm!667735) tp_is_empty!48331 (not d!2276514) (not b!7330959) (not b!7330958) (not b!7330890) (not b!7330951) (not d!2276538) (not b!7330944) (not d!2276506) (not b!7330907) (not b!7330891) (not b!7330945) (not d!2276508) (not b!7330967) (not b!7330956) (not d!2276544) (not bm!667737) (not d!2276534))
(check-sat)
