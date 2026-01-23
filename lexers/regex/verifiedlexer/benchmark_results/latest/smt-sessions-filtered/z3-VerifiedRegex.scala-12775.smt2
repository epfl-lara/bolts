; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!706244 () Bool)

(assert start!706244)

(declare-fun b!7254034 () Bool)

(assert (=> b!7254034 true))

(declare-fun b!7254035 () Bool)

(assert (=> b!7254035 true))

(declare-fun b!7254027 () Bool)

(declare-fun e!4349656 () Bool)

(declare-fun e!4349648 () Bool)

(assert (=> b!7254027 (= e!4349656 e!4349648)))

(declare-fun res!2941889 () Bool)

(assert (=> b!7254027 (=> (not res!2941889) (not e!4349648))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37592 0))(
  ( (C!37593 (val!28744 Int)) )
))
(declare-datatypes ((Regex!18659 0))(
  ( (ElementMatch!18659 (c!1348485 C!37592)) (Concat!27504 (regOne!37830 Regex!18659) (regTwo!37830 Regex!18659)) (EmptyExpr!18659) (Star!18659 (reg!18988 Regex!18659)) (EmptyLang!18659) (Union!18659 (regOne!37831 Regex!18659) (regTwo!37831 Regex!18659)) )
))
(declare-datatypes ((List!70557 0))(
  ( (Nil!70433) (Cons!70433 (h!76881 Regex!18659) (t!384617 List!70557)) )
))
(declare-datatypes ((Context!15198 0))(
  ( (Context!15199 (exprs!8099 List!70557)) )
))
(declare-fun lt!2586454 () (InoxSet Context!15198))

(declare-datatypes ((List!70558 0))(
  ( (Nil!70434) (Cons!70434 (h!76882 C!37592) (t!384618 List!70558)) )
))
(declare-fun s1!1971 () List!70558)

(declare-fun matchZipper!3569 ((InoxSet Context!15198) List!70558) Bool)

(assert (=> b!7254027 (= res!2941889 (matchZipper!3569 lt!2586454 (t!384618 s1!1971)))))

(declare-fun lt!2586453 () (InoxSet Context!15198))

(declare-fun derivationStepZipper!3437 ((InoxSet Context!15198) C!37592) (InoxSet Context!15198))

(assert (=> b!7254027 (= lt!2586454 (derivationStepZipper!3437 lt!2586453 (h!76882 s1!1971)))))

(declare-fun b!7254028 () Bool)

(declare-fun e!4349654 () Bool)

(declare-fun tp!2037920 () Bool)

(assert (=> b!7254028 (= e!4349654 tp!2037920)))

(declare-fun res!2941888 () Bool)

(declare-fun e!4349651 () Bool)

(assert (=> start!706244 (=> (not res!2941888) (not e!4349651))))

(assert (=> start!706244 (= res!2941888 (matchZipper!3569 lt!2586453 s1!1971))))

(declare-fun ct1!232 () Context!15198)

(assert (=> start!706244 (= lt!2586453 (store ((as const (Array Context!15198 Bool)) false) ct1!232 true))))

(assert (=> start!706244 e!4349651))

(declare-fun inv!89657 (Context!15198) Bool)

(assert (=> start!706244 (and (inv!89657 ct1!232) e!4349654)))

(declare-fun e!4349647 () Bool)

(assert (=> start!706244 e!4349647))

(declare-fun e!4349649 () Bool)

(assert (=> start!706244 e!4349649))

(declare-fun ct2!328 () Context!15198)

(declare-fun e!4349646 () Bool)

(assert (=> start!706244 (and (inv!89657 ct2!328) e!4349646)))

(declare-fun b!7254029 () Bool)

(declare-fun e!4349653 () Bool)

(declare-fun e!4349655 () Bool)

(assert (=> b!7254029 (= e!4349653 e!4349655)))

(declare-fun res!2941890 () Bool)

(assert (=> b!7254029 (=> res!2941890 e!4349655)))

(declare-fun lt!2586459 () (InoxSet Context!15198))

(declare-fun lt!2586432 () (InoxSet Context!15198))

(assert (=> b!7254029 (= res!2941890 (or (not (= lt!2586432 lt!2586459)) (not (= lt!2586454 lt!2586432))))))

(declare-fun lt!2586443 () (InoxSet Context!15198))

(declare-fun lt!2586441 () (InoxSet Context!15198))

(assert (=> b!7254029 (= lt!2586459 ((_ map or) lt!2586443 lt!2586441))))

(declare-fun lt!2586433 () Context!15198)

(declare-fun derivationStepZipperUp!2483 (Context!15198 C!37592) (InoxSet Context!15198))

(assert (=> b!7254029 (= lt!2586441 (derivationStepZipperUp!2483 lt!2586433 (h!76882 s1!1971)))))

(declare-fun b!7254030 () Bool)

(assert (=> b!7254030 (= e!4349651 e!4349656)))

(declare-fun res!2941887 () Bool)

(assert (=> b!7254030 (=> (not res!2941887) (not e!4349656))))

(get-info :version)

(assert (=> b!7254030 (= res!2941887 (and (not ((_ is Nil!70433) (exprs!8099 ct1!232))) ((_ is Cons!70434) s1!1971)))))

(declare-fun lt!2586442 () (InoxSet Context!15198))

(declare-fun lt!2586455 () Context!15198)

(assert (=> b!7254030 (= lt!2586442 (store ((as const (Array Context!15198 Bool)) false) lt!2586455 true))))

(declare-fun lt!2586446 () List!70557)

(assert (=> b!7254030 (= lt!2586455 (Context!15199 lt!2586446))))

(declare-fun ++!16580 (List!70557 List!70557) List!70557)

(assert (=> b!7254030 (= lt!2586446 (++!16580 (exprs!8099 ct1!232) (exprs!8099 ct2!328)))))

(declare-fun lambda!444822 () Int)

(declare-datatypes ((Unit!163907 0))(
  ( (Unit!163908) )
))
(declare-fun lt!2586440 () Unit!163907)

(declare-fun lemmaConcatPreservesForall!1466 (List!70557 List!70557 Int) Unit!163907)

(assert (=> b!7254030 (= lt!2586440 (lemmaConcatPreservesForall!1466 (exprs!8099 ct1!232) (exprs!8099 ct2!328) lambda!444822))))

(declare-fun b!7254031 () Bool)

(declare-fun e!4349645 () Bool)

(assert (=> b!7254031 (= e!4349655 e!4349645)))

(declare-fun res!2941894 () Bool)

(assert (=> b!7254031 (=> res!2941894 e!4349645)))

(declare-fun lt!2586436 () (InoxSet Context!15198))

(declare-fun lt!2586448 () (InoxSet Context!15198))

(declare-fun lt!2586452 () Context!15198)

(assert (=> b!7254031 (= res!2941894 (not (= lt!2586448 ((_ map or) lt!2586436 (derivationStepZipperUp!2483 lt!2586452 (h!76882 s1!1971))))))))

(declare-fun lt!2586450 () Unit!163907)

(assert (=> b!7254031 (= lt!2586450 (lemmaConcatPreservesForall!1466 (exprs!8099 ct1!232) (exprs!8099 ct2!328) lambda!444822))))

(declare-fun b!7254032 () Bool)

(declare-fun tp_is_empty!46783 () Bool)

(declare-fun tp!2037922 () Bool)

(assert (=> b!7254032 (= e!4349647 (and tp_is_empty!46783 tp!2037922))))

(declare-fun b!7254033 () Bool)

(declare-fun e!4349658 () Bool)

(declare-fun e!4349650 () Bool)

(assert (=> b!7254033 (= e!4349658 e!4349650)))

(declare-fun res!2941896 () Bool)

(assert (=> b!7254033 (=> res!2941896 e!4349650)))

(declare-fun isEmpty!40559 (List!70557) Bool)

(assert (=> b!7254033 (= res!2941896 (isEmpty!40559 (exprs!8099 ct1!232)))))

(assert (=> b!7254033 (= lt!2586432 (derivationStepZipperUp!2483 ct1!232 (h!76882 s1!1971)))))

(declare-fun lt!2586445 () Unit!163907)

(declare-fun lt!2586451 () Context!15198)

(assert (=> b!7254033 (= lt!2586445 (lemmaConcatPreservesForall!1466 (exprs!8099 lt!2586451) (exprs!8099 ct2!328) lambda!444822))))

(declare-fun s2!1849 () List!70558)

(declare-fun ++!16581 (List!70558 List!70558) List!70558)

(assert (=> b!7254033 (matchZipper!3569 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true) (++!16581 (t!384618 s1!1971) s2!1849))))

(declare-fun lt!2586458 () Unit!163907)

(assert (=> b!7254033 (= lt!2586458 (lemmaConcatPreservesForall!1466 (exprs!8099 lt!2586451) (exprs!8099 ct2!328) lambda!444822))))

(declare-fun lt!2586439 () Unit!163907)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!404 (Context!15198 Context!15198 List!70558 List!70558) Unit!163907)

(assert (=> b!7254033 (= lt!2586439 (lemmaConcatenateContextMatchesConcatOfStrings!404 lt!2586451 ct2!328 (t!384618 s1!1971) s2!1849))))

(declare-fun lambda!444823 () Int)

(declare-fun getWitness!2224 ((InoxSet Context!15198) Int) Context!15198)

(assert (=> b!7254033 (= lt!2586451 (getWitness!2224 lt!2586454 lambda!444823))))

(assert (=> b!7254034 (= e!4349648 (not e!4349658))))

(declare-fun res!2941892 () Bool)

(assert (=> b!7254034 (=> res!2941892 e!4349658)))

(declare-fun exists!4396 ((InoxSet Context!15198) Int) Bool)

(assert (=> b!7254034 (= res!2941892 (not (exists!4396 lt!2586454 lambda!444823)))))

(declare-datatypes ((List!70559 0))(
  ( (Nil!70435) (Cons!70435 (h!76883 Context!15198) (t!384619 List!70559)) )
))
(declare-fun lt!2586444 () List!70559)

(declare-fun exists!4397 (List!70559 Int) Bool)

(assert (=> b!7254034 (exists!4397 lt!2586444 lambda!444823)))

(declare-fun lt!2586435 () Unit!163907)

(declare-fun lemmaZipperMatchesExistsMatchingContext!762 (List!70559 List!70558) Unit!163907)

(assert (=> b!7254034 (= lt!2586435 (lemmaZipperMatchesExistsMatchingContext!762 lt!2586444 (t!384618 s1!1971)))))

(declare-fun toList!11488 ((InoxSet Context!15198)) List!70559)

(assert (=> b!7254034 (= lt!2586444 (toList!11488 lt!2586454))))

(declare-fun e!4349657 () Bool)

(assert (=> b!7254035 (= e!4349657 e!4349653)))

(declare-fun res!2941886 () Bool)

(assert (=> b!7254035 (=> res!2941886 e!4349653)))

(declare-fun nullable!7919 (Regex!18659) Bool)

(assert (=> b!7254035 (= res!2941886 (not (nullable!7919 (h!76881 (exprs!8099 ct1!232)))))))

(declare-fun lambda!444824 () Int)

(declare-fun flatMap!2824 ((InoxSet Context!15198) Int) (InoxSet Context!15198))

(assert (=> b!7254035 (= (flatMap!2824 lt!2586442 lambda!444824) (derivationStepZipperUp!2483 lt!2586455 (h!76882 s1!1971)))))

(declare-fun lt!2586457 () Unit!163907)

(declare-fun lemmaFlatMapOnSingletonSet!2228 ((InoxSet Context!15198) Context!15198 Int) Unit!163907)

(assert (=> b!7254035 (= lt!2586457 (lemmaFlatMapOnSingletonSet!2228 lt!2586442 lt!2586455 lambda!444824))))

(declare-fun lt!2586437 () Unit!163907)

(assert (=> b!7254035 (= lt!2586437 (lemmaConcatPreservesForall!1466 (exprs!8099 ct1!232) (exprs!8099 ct2!328) lambda!444822))))

(assert (=> b!7254035 (= (flatMap!2824 lt!2586453 lambda!444824) (derivationStepZipperUp!2483 ct1!232 (h!76882 s1!1971)))))

(declare-fun lt!2586449 () Unit!163907)

(assert (=> b!7254035 (= lt!2586449 (lemmaFlatMapOnSingletonSet!2228 lt!2586453 ct1!232 lambda!444824))))

(declare-fun derivationStepZipperDown!2653 (Regex!18659 Context!15198 C!37592) (InoxSet Context!15198))

(assert (=> b!7254035 (= lt!2586436 (derivationStepZipperDown!2653 (h!76881 (exprs!8099 ct1!232)) lt!2586452 (h!76882 s1!1971)))))

(declare-fun tail!14341 (List!70557) List!70557)

(assert (=> b!7254035 (= lt!2586452 (Context!15199 (tail!14341 lt!2586446)))))

(declare-fun b!7254036 () Bool)

(declare-fun tp!2037919 () Bool)

(assert (=> b!7254036 (= e!4349646 tp!2037919)))

(declare-fun b!7254037 () Bool)

(assert (=> b!7254037 (= e!4349645 (inv!89657 lt!2586452))))

(declare-fun lt!2586438 () Unit!163907)

(assert (=> b!7254037 (= lt!2586438 (lemmaConcatPreservesForall!1466 (exprs!8099 ct1!232) (exprs!8099 ct2!328) lambda!444822))))

(declare-fun e!4349652 () Bool)

(assert (=> b!7254037 (= (matchZipper!3569 lt!2586459 (t!384618 s1!1971)) e!4349652)))

(declare-fun res!2941895 () Bool)

(assert (=> b!7254037 (=> res!2941895 e!4349652)))

(assert (=> b!7254037 (= res!2941895 (matchZipper!3569 lt!2586443 (t!384618 s1!1971)))))

(declare-fun lt!2586456 () Unit!163907)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1714 ((InoxSet Context!15198) (InoxSet Context!15198) List!70558) Unit!163907)

(assert (=> b!7254037 (= lt!2586456 (lemmaZipperConcatMatchesSameAsBothZippers!1714 lt!2586443 lt!2586441 (t!384618 s1!1971)))))

(declare-fun b!7254038 () Bool)

(declare-fun res!2941885 () Bool)

(assert (=> b!7254038 (=> (not res!2941885) (not e!4349651))))

(assert (=> b!7254038 (= res!2941885 (matchZipper!3569 (store ((as const (Array Context!15198 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7254039 () Bool)

(assert (=> b!7254039 (= e!4349650 e!4349657)))

(declare-fun res!2941893 () Bool)

(assert (=> b!7254039 (=> res!2941893 e!4349657)))

(assert (=> b!7254039 (= res!2941893 (isEmpty!40559 lt!2586446))))

(declare-fun lt!2586447 () Unit!163907)

(assert (=> b!7254039 (= lt!2586447 (lemmaConcatPreservesForall!1466 (exprs!8099 ct1!232) (exprs!8099 ct2!328) lambda!444822))))

(assert (=> b!7254039 (= lt!2586448 (derivationStepZipperUp!2483 lt!2586455 (h!76882 s1!1971)))))

(declare-fun lt!2586434 () Unit!163907)

(assert (=> b!7254039 (= lt!2586434 (lemmaConcatPreservesForall!1466 (exprs!8099 ct1!232) (exprs!8099 ct2!328) lambda!444822))))

(assert (=> b!7254039 (= lt!2586443 (derivationStepZipperDown!2653 (h!76881 (exprs!8099 ct1!232)) lt!2586433 (h!76882 s1!1971)))))

(assert (=> b!7254039 (= lt!2586433 (Context!15199 (tail!14341 (exprs!8099 ct1!232))))))

(declare-fun b!7254040 () Bool)

(assert (=> b!7254040 (= e!4349652 (matchZipper!3569 lt!2586441 (t!384618 s1!1971)))))

(declare-fun b!7254041 () Bool)

(declare-fun tp!2037921 () Bool)

(assert (=> b!7254041 (= e!4349649 (and tp_is_empty!46783 tp!2037921))))

(declare-fun b!7254042 () Bool)

(declare-fun res!2941891 () Bool)

(assert (=> b!7254042 (=> res!2941891 e!4349645)))

(assert (=> b!7254042 (= res!2941891 (not (= (derivationStepZipper!3437 lt!2586442 (h!76882 s1!1971)) lt!2586448)))))

(assert (= (and start!706244 res!2941888) b!7254038))

(assert (= (and b!7254038 res!2941885) b!7254030))

(assert (= (and b!7254030 res!2941887) b!7254027))

(assert (= (and b!7254027 res!2941889) b!7254034))

(assert (= (and b!7254034 (not res!2941892)) b!7254033))

(assert (= (and b!7254033 (not res!2941896)) b!7254039))

(assert (= (and b!7254039 (not res!2941893)) b!7254035))

(assert (= (and b!7254035 (not res!2941886)) b!7254029))

(assert (= (and b!7254029 (not res!2941890)) b!7254031))

(assert (= (and b!7254031 (not res!2941894)) b!7254042))

(assert (= (and b!7254042 (not res!2941891)) b!7254037))

(assert (= (and b!7254037 (not res!2941895)) b!7254040))

(assert (= start!706244 b!7254028))

(assert (= (and start!706244 ((_ is Cons!70434) s1!1971)) b!7254032))

(assert (= (and start!706244 ((_ is Cons!70434) s2!1849)) b!7254041))

(assert (= start!706244 b!7254036))

(declare-fun m!7934256 () Bool)

(assert (=> b!7254037 m!7934256))

(declare-fun m!7934258 () Bool)

(assert (=> b!7254037 m!7934258))

(declare-fun m!7934260 () Bool)

(assert (=> b!7254037 m!7934260))

(declare-fun m!7934262 () Bool)

(assert (=> b!7254037 m!7934262))

(declare-fun m!7934264 () Bool)

(assert (=> b!7254037 m!7934264))

(declare-fun m!7934266 () Bool)

(assert (=> b!7254042 m!7934266))

(declare-fun m!7934268 () Bool)

(assert (=> b!7254029 m!7934268))

(declare-fun m!7934270 () Bool)

(assert (=> b!7254035 m!7934270))

(declare-fun m!7934272 () Bool)

(assert (=> b!7254035 m!7934272))

(declare-fun m!7934274 () Bool)

(assert (=> b!7254035 m!7934274))

(declare-fun m!7934276 () Bool)

(assert (=> b!7254035 m!7934276))

(declare-fun m!7934278 () Bool)

(assert (=> b!7254035 m!7934278))

(declare-fun m!7934280 () Bool)

(assert (=> b!7254035 m!7934280))

(declare-fun m!7934282 () Bool)

(assert (=> b!7254035 m!7934282))

(declare-fun m!7934284 () Bool)

(assert (=> b!7254035 m!7934284))

(assert (=> b!7254035 m!7934262))

(declare-fun m!7934286 () Bool)

(assert (=> b!7254035 m!7934286))

(declare-fun m!7934288 () Bool)

(assert (=> b!7254034 m!7934288))

(declare-fun m!7934290 () Bool)

(assert (=> b!7254034 m!7934290))

(declare-fun m!7934292 () Bool)

(assert (=> b!7254034 m!7934292))

(declare-fun m!7934294 () Bool)

(assert (=> b!7254034 m!7934294))

(declare-fun m!7934296 () Bool)

(assert (=> b!7254027 m!7934296))

(declare-fun m!7934298 () Bool)

(assert (=> b!7254027 m!7934298))

(assert (=> b!7254039 m!7934270))

(declare-fun m!7934300 () Bool)

(assert (=> b!7254039 m!7934300))

(assert (=> b!7254039 m!7934262))

(declare-fun m!7934302 () Bool)

(assert (=> b!7254039 m!7934302))

(assert (=> b!7254039 m!7934262))

(declare-fun m!7934304 () Bool)

(assert (=> b!7254039 m!7934304))

(declare-fun m!7934306 () Bool)

(assert (=> b!7254030 m!7934306))

(declare-fun m!7934308 () Bool)

(assert (=> b!7254030 m!7934308))

(assert (=> b!7254030 m!7934262))

(declare-fun m!7934310 () Bool)

(assert (=> b!7254040 m!7934310))

(declare-fun m!7934312 () Bool)

(assert (=> b!7254031 m!7934312))

(assert (=> b!7254031 m!7934262))

(declare-fun m!7934314 () Bool)

(assert (=> start!706244 m!7934314))

(declare-fun m!7934316 () Bool)

(assert (=> start!706244 m!7934316))

(declare-fun m!7934318 () Bool)

(assert (=> start!706244 m!7934318))

(declare-fun m!7934320 () Bool)

(assert (=> start!706244 m!7934320))

(declare-fun m!7934322 () Bool)

(assert (=> b!7254033 m!7934322))

(declare-fun m!7934324 () Bool)

(assert (=> b!7254033 m!7934324))

(declare-fun m!7934326 () Bool)

(assert (=> b!7254033 m!7934326))

(assert (=> b!7254033 m!7934276))

(assert (=> b!7254033 m!7934322))

(declare-fun m!7934328 () Bool)

(assert (=> b!7254033 m!7934328))

(declare-fun m!7934330 () Bool)

(assert (=> b!7254033 m!7934330))

(assert (=> b!7254033 m!7934328))

(declare-fun m!7934332 () Bool)

(assert (=> b!7254033 m!7934332))

(assert (=> b!7254033 m!7934332))

(declare-fun m!7934334 () Bool)

(assert (=> b!7254033 m!7934334))

(declare-fun m!7934336 () Bool)

(assert (=> b!7254033 m!7934336))

(declare-fun m!7934338 () Bool)

(assert (=> b!7254038 m!7934338))

(assert (=> b!7254038 m!7934338))

(declare-fun m!7934340 () Bool)

(assert (=> b!7254038 m!7934340))

(check-sat (not b!7254039) (not b!7254038) (not b!7254041) (not b!7254030) (not b!7254042) (not b!7254027) (not b!7254028) (not b!7254036) (not b!7254032) (not b!7254037) tp_is_empty!46783 (not b!7254033) (not b!7254040) (not start!706244) (not b!7254034) (not b!7254029) (not b!7254031) (not b!7254035))
(check-sat)
(get-model)

(declare-fun bm!660916 () Bool)

(declare-fun call!660921 () (InoxSet Context!15198))

(assert (=> bm!660916 (= call!660921 (derivationStepZipperDown!2653 (h!76881 (exprs!8099 lt!2586433)) (Context!15199 (t!384617 (exprs!8099 lt!2586433))) (h!76882 s1!1971)))))

(declare-fun d!2255488 () Bool)

(declare-fun c!1348542 () Bool)

(declare-fun e!4349747 () Bool)

(assert (=> d!2255488 (= c!1348542 e!4349747)))

(declare-fun res!2941932 () Bool)

(assert (=> d!2255488 (=> (not res!2941932) (not e!4349747))))

(assert (=> d!2255488 (= res!2941932 ((_ is Cons!70433) (exprs!8099 lt!2586433)))))

(declare-fun e!4349748 () (InoxSet Context!15198))

(assert (=> d!2255488 (= (derivationStepZipperUp!2483 lt!2586433 (h!76882 s1!1971)) e!4349748)))

(declare-fun b!7254202 () Bool)

(assert (=> b!7254202 (= e!4349748 ((_ map or) call!660921 (derivationStepZipperUp!2483 (Context!15199 (t!384617 (exprs!8099 lt!2586433))) (h!76882 s1!1971))))))

(declare-fun b!7254203 () Bool)

(declare-fun e!4349749 () (InoxSet Context!15198))

(assert (=> b!7254203 (= e!4349748 e!4349749)))

(declare-fun c!1348543 () Bool)

(assert (=> b!7254203 (= c!1348543 ((_ is Cons!70433) (exprs!8099 lt!2586433)))))

(declare-fun b!7254204 () Bool)

(assert (=> b!7254204 (= e!4349747 (nullable!7919 (h!76881 (exprs!8099 lt!2586433))))))

(declare-fun b!7254205 () Bool)

(assert (=> b!7254205 (= e!4349749 ((as const (Array Context!15198 Bool)) false))))

(declare-fun b!7254206 () Bool)

(assert (=> b!7254206 (= e!4349749 call!660921)))

(assert (= (and d!2255488 res!2941932) b!7254204))

(assert (= (and d!2255488 c!1348542) b!7254202))

(assert (= (and d!2255488 (not c!1348542)) b!7254203))

(assert (= (and b!7254203 c!1348543) b!7254206))

(assert (= (and b!7254203 (not c!1348543)) b!7254205))

(assert (= (or b!7254202 b!7254206) bm!660916))

(declare-fun m!7934564 () Bool)

(assert (=> bm!660916 m!7934564))

(declare-fun m!7934566 () Bool)

(assert (=> b!7254202 m!7934566))

(declare-fun m!7934568 () Bool)

(assert (=> b!7254204 m!7934568))

(assert (=> b!7254029 d!2255488))

(declare-fun d!2255490 () Bool)

(declare-fun c!1348546 () Bool)

(declare-fun isEmpty!40561 (List!70558) Bool)

(assert (=> d!2255490 (= c!1348546 (isEmpty!40561 (t!384618 s1!1971)))))

(declare-fun e!4349752 () Bool)

(assert (=> d!2255490 (= (matchZipper!3569 lt!2586441 (t!384618 s1!1971)) e!4349752)))

(declare-fun b!7254211 () Bool)

(declare-fun nullableZipper!2921 ((InoxSet Context!15198)) Bool)

(assert (=> b!7254211 (= e!4349752 (nullableZipper!2921 lt!2586441))))

(declare-fun b!7254212 () Bool)

(declare-fun head!14915 (List!70558) C!37592)

(declare-fun tail!14343 (List!70558) List!70558)

(assert (=> b!7254212 (= e!4349752 (matchZipper!3569 (derivationStepZipper!3437 lt!2586441 (head!14915 (t!384618 s1!1971))) (tail!14343 (t!384618 s1!1971))))))

(assert (= (and d!2255490 c!1348546) b!7254211))

(assert (= (and d!2255490 (not c!1348546)) b!7254212))

(declare-fun m!7934570 () Bool)

(assert (=> d!2255490 m!7934570))

(declare-fun m!7934572 () Bool)

(assert (=> b!7254211 m!7934572))

(declare-fun m!7934574 () Bool)

(assert (=> b!7254212 m!7934574))

(assert (=> b!7254212 m!7934574))

(declare-fun m!7934576 () Bool)

(assert (=> b!7254212 m!7934576))

(declare-fun m!7934578 () Bool)

(assert (=> b!7254212 m!7934578))

(assert (=> b!7254212 m!7934576))

(assert (=> b!7254212 m!7934578))

(declare-fun m!7934580 () Bool)

(assert (=> b!7254212 m!7934580))

(assert (=> b!7254040 d!2255490))

(declare-fun d!2255492 () Bool)

(assert (=> d!2255492 (= (tail!14341 (exprs!8099 ct1!232)) (t!384617 (exprs!8099 ct1!232)))))

(assert (=> b!7254039 d!2255492))

(declare-fun d!2255494 () Bool)

(declare-fun forall!17508 (List!70557 Int) Bool)

(assert (=> d!2255494 (forall!17508 (++!16580 (exprs!8099 ct1!232) (exprs!8099 ct2!328)) lambda!444822)))

(declare-fun lt!2586498 () Unit!163907)

(declare-fun choose!56072 (List!70557 List!70557 Int) Unit!163907)

(assert (=> d!2255494 (= lt!2586498 (choose!56072 (exprs!8099 ct1!232) (exprs!8099 ct2!328) lambda!444822))))

(assert (=> d!2255494 (forall!17508 (exprs!8099 ct1!232) lambda!444822)))

(assert (=> d!2255494 (= (lemmaConcatPreservesForall!1466 (exprs!8099 ct1!232) (exprs!8099 ct2!328) lambda!444822) lt!2586498)))

(declare-fun bs!1907015 () Bool)

(assert (= bs!1907015 d!2255494))

(assert (=> bs!1907015 m!7934308))

(assert (=> bs!1907015 m!7934308))

(declare-fun m!7934582 () Bool)

(assert (=> bs!1907015 m!7934582))

(declare-fun m!7934584 () Bool)

(assert (=> bs!1907015 m!7934584))

(declare-fun m!7934586 () Bool)

(assert (=> bs!1907015 m!7934586))

(assert (=> b!7254039 d!2255494))

(declare-fun bm!660917 () Bool)

(declare-fun call!660922 () (InoxSet Context!15198))

(assert (=> bm!660917 (= call!660922 (derivationStepZipperDown!2653 (h!76881 (exprs!8099 lt!2586455)) (Context!15199 (t!384617 (exprs!8099 lt!2586455))) (h!76882 s1!1971)))))

(declare-fun d!2255496 () Bool)

(declare-fun c!1348547 () Bool)

(declare-fun e!4349753 () Bool)

(assert (=> d!2255496 (= c!1348547 e!4349753)))

(declare-fun res!2941933 () Bool)

(assert (=> d!2255496 (=> (not res!2941933) (not e!4349753))))

(assert (=> d!2255496 (= res!2941933 ((_ is Cons!70433) (exprs!8099 lt!2586455)))))

(declare-fun e!4349754 () (InoxSet Context!15198))

(assert (=> d!2255496 (= (derivationStepZipperUp!2483 lt!2586455 (h!76882 s1!1971)) e!4349754)))

(declare-fun b!7254213 () Bool)

(assert (=> b!7254213 (= e!4349754 ((_ map or) call!660922 (derivationStepZipperUp!2483 (Context!15199 (t!384617 (exprs!8099 lt!2586455))) (h!76882 s1!1971))))))

(declare-fun b!7254214 () Bool)

(declare-fun e!4349755 () (InoxSet Context!15198))

(assert (=> b!7254214 (= e!4349754 e!4349755)))

(declare-fun c!1348548 () Bool)

(assert (=> b!7254214 (= c!1348548 ((_ is Cons!70433) (exprs!8099 lt!2586455)))))

(declare-fun b!7254215 () Bool)

(assert (=> b!7254215 (= e!4349753 (nullable!7919 (h!76881 (exprs!8099 lt!2586455))))))

(declare-fun b!7254216 () Bool)

(assert (=> b!7254216 (= e!4349755 ((as const (Array Context!15198 Bool)) false))))

(declare-fun b!7254217 () Bool)

(assert (=> b!7254217 (= e!4349755 call!660922)))

(assert (= (and d!2255496 res!2941933) b!7254215))

(assert (= (and d!2255496 c!1348547) b!7254213))

(assert (= (and d!2255496 (not c!1348547)) b!7254214))

(assert (= (and b!7254214 c!1348548) b!7254217))

(assert (= (and b!7254214 (not c!1348548)) b!7254216))

(assert (= (or b!7254213 b!7254217) bm!660917))

(declare-fun m!7934588 () Bool)

(assert (=> bm!660917 m!7934588))

(declare-fun m!7934590 () Bool)

(assert (=> b!7254213 m!7934590))

(declare-fun m!7934592 () Bool)

(assert (=> b!7254215 m!7934592))

(assert (=> b!7254039 d!2255496))

(declare-fun d!2255498 () Bool)

(assert (=> d!2255498 (= (isEmpty!40559 lt!2586446) ((_ is Nil!70433) lt!2586446))))

(assert (=> b!7254039 d!2255498))

(declare-fun call!660937 () (InoxSet Context!15198))

(declare-fun c!1348562 () Bool)

(declare-fun c!1348561 () Bool)

(declare-fun bm!660930 () Bool)

(declare-fun call!660939 () List!70557)

(declare-fun c!1348559 () Bool)

(assert (=> bm!660930 (= call!660937 (derivationStepZipperDown!2653 (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))) (ite (or c!1348562 c!1348559) lt!2586433 (Context!15199 call!660939)) (h!76882 s1!1971)))))

(declare-fun b!7254240 () Bool)

(declare-fun e!4349769 () Bool)

(assert (=> b!7254240 (= e!4349769 (nullable!7919 (regOne!37830 (h!76881 (exprs!8099 ct1!232)))))))

(declare-fun bm!660931 () Bool)

(declare-fun call!660936 () (InoxSet Context!15198))

(assert (=> bm!660931 (= call!660936 call!660937)))

(declare-fun b!7254241 () Bool)

(declare-fun e!4349773 () (InoxSet Context!15198))

(declare-fun e!4349772 () (InoxSet Context!15198))

(assert (=> b!7254241 (= e!4349773 e!4349772)))

(assert (=> b!7254241 (= c!1348562 ((_ is Union!18659) (h!76881 (exprs!8099 ct1!232))))))

(declare-fun b!7254242 () Bool)

(declare-fun e!4349771 () (InoxSet Context!15198))

(declare-fun e!4349770 () (InoxSet Context!15198))

(assert (=> b!7254242 (= e!4349771 e!4349770)))

(assert (=> b!7254242 (= c!1348561 ((_ is Concat!27504) (h!76881 (exprs!8099 ct1!232))))))

(declare-fun bm!660932 () Bool)

(declare-fun call!660935 () List!70557)

(assert (=> bm!660932 (= call!660939 call!660935)))

(declare-fun b!7254243 () Bool)

(declare-fun e!4349768 () (InoxSet Context!15198))

(assert (=> b!7254243 (= e!4349768 ((as const (Array Context!15198 Bool)) false))))

(declare-fun d!2255500 () Bool)

(declare-fun c!1348560 () Bool)

(assert (=> d!2255500 (= c!1348560 (and ((_ is ElementMatch!18659) (h!76881 (exprs!8099 ct1!232))) (= (c!1348485 (h!76881 (exprs!8099 ct1!232))) (h!76882 s1!1971))))))

(assert (=> d!2255500 (= (derivationStepZipperDown!2653 (h!76881 (exprs!8099 ct1!232)) lt!2586433 (h!76882 s1!1971)) e!4349773)))

(declare-fun b!7254244 () Bool)

(declare-fun c!1348563 () Bool)

(assert (=> b!7254244 (= c!1348563 ((_ is Star!18659) (h!76881 (exprs!8099 ct1!232))))))

(assert (=> b!7254244 (= e!4349770 e!4349768)))

(declare-fun bm!660933 () Bool)

(declare-fun call!660938 () (InoxSet Context!15198))

(assert (=> bm!660933 (= call!660938 call!660936)))

(declare-fun b!7254245 () Bool)

(assert (=> b!7254245 (= e!4349768 call!660938)))

(declare-fun b!7254246 () Bool)

(declare-fun call!660940 () (InoxSet Context!15198))

(assert (=> b!7254246 (= e!4349772 ((_ map or) call!660937 call!660940))))

(declare-fun b!7254247 () Bool)

(assert (=> b!7254247 (= e!4349773 (store ((as const (Array Context!15198 Bool)) false) lt!2586433 true))))

(declare-fun b!7254248 () Bool)

(assert (=> b!7254248 (= c!1348559 e!4349769)))

(declare-fun res!2941936 () Bool)

(assert (=> b!7254248 (=> (not res!2941936) (not e!4349769))))

(assert (=> b!7254248 (= res!2941936 ((_ is Concat!27504) (h!76881 (exprs!8099 ct1!232))))))

(assert (=> b!7254248 (= e!4349772 e!4349771)))

(declare-fun bm!660934 () Bool)

(assert (=> bm!660934 (= call!660940 (derivationStepZipperDown!2653 (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))) (ite c!1348562 lt!2586433 (Context!15199 call!660935)) (h!76882 s1!1971)))))

(declare-fun bm!660935 () Bool)

(declare-fun $colon$colon!2925 (List!70557 Regex!18659) List!70557)

(assert (=> bm!660935 (= call!660935 ($colon$colon!2925 (exprs!8099 lt!2586433) (ite (or c!1348559 c!1348561) (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (h!76881 (exprs!8099 ct1!232)))))))

(declare-fun b!7254249 () Bool)

(assert (=> b!7254249 (= e!4349771 ((_ map or) call!660940 call!660936))))

(declare-fun b!7254250 () Bool)

(assert (=> b!7254250 (= e!4349770 call!660938)))

(assert (= (and d!2255500 c!1348560) b!7254247))

(assert (= (and d!2255500 (not c!1348560)) b!7254241))

(assert (= (and b!7254241 c!1348562) b!7254246))

(assert (= (and b!7254241 (not c!1348562)) b!7254248))

(assert (= (and b!7254248 res!2941936) b!7254240))

(assert (= (and b!7254248 c!1348559) b!7254249))

(assert (= (and b!7254248 (not c!1348559)) b!7254242))

(assert (= (and b!7254242 c!1348561) b!7254250))

(assert (= (and b!7254242 (not c!1348561)) b!7254244))

(assert (= (and b!7254244 c!1348563) b!7254245))

(assert (= (and b!7254244 (not c!1348563)) b!7254243))

(assert (= (or b!7254250 b!7254245) bm!660932))

(assert (= (or b!7254250 b!7254245) bm!660933))

(assert (= (or b!7254249 bm!660932) bm!660935))

(assert (= (or b!7254249 bm!660933) bm!660931))

(assert (= (or b!7254246 b!7254249) bm!660934))

(assert (= (or b!7254246 bm!660931) bm!660930))

(declare-fun m!7934594 () Bool)

(assert (=> bm!660930 m!7934594))

(declare-fun m!7934596 () Bool)

(assert (=> b!7254247 m!7934596))

(declare-fun m!7934598 () Bool)

(assert (=> b!7254240 m!7934598))

(declare-fun m!7934600 () Bool)

(assert (=> bm!660935 m!7934600))

(declare-fun m!7934602 () Bool)

(assert (=> bm!660934 m!7934602))

(assert (=> b!7254039 d!2255500))

(declare-fun d!2255502 () Bool)

(declare-fun c!1348564 () Bool)

(assert (=> d!2255502 (= c!1348564 (isEmpty!40561 (t!384618 s1!1971)))))

(declare-fun e!4349774 () Bool)

(assert (=> d!2255502 (= (matchZipper!3569 lt!2586454 (t!384618 s1!1971)) e!4349774)))

(declare-fun b!7254251 () Bool)

(assert (=> b!7254251 (= e!4349774 (nullableZipper!2921 lt!2586454))))

(declare-fun b!7254252 () Bool)

(assert (=> b!7254252 (= e!4349774 (matchZipper!3569 (derivationStepZipper!3437 lt!2586454 (head!14915 (t!384618 s1!1971))) (tail!14343 (t!384618 s1!1971))))))

(assert (= (and d!2255502 c!1348564) b!7254251))

(assert (= (and d!2255502 (not c!1348564)) b!7254252))

(assert (=> d!2255502 m!7934570))

(declare-fun m!7934604 () Bool)

(assert (=> b!7254251 m!7934604))

(assert (=> b!7254252 m!7934574))

(assert (=> b!7254252 m!7934574))

(declare-fun m!7934606 () Bool)

(assert (=> b!7254252 m!7934606))

(assert (=> b!7254252 m!7934578))

(assert (=> b!7254252 m!7934606))

(assert (=> b!7254252 m!7934578))

(declare-fun m!7934608 () Bool)

(assert (=> b!7254252 m!7934608))

(assert (=> b!7254027 d!2255502))

(declare-fun bs!1907016 () Bool)

(declare-fun d!2255504 () Bool)

(assert (= bs!1907016 (and d!2255504 b!7254035)))

(declare-fun lambda!444845 () Int)

(assert (=> bs!1907016 (= lambda!444845 lambda!444824)))

(assert (=> d!2255504 true))

(assert (=> d!2255504 (= (derivationStepZipper!3437 lt!2586453 (h!76882 s1!1971)) (flatMap!2824 lt!2586453 lambda!444845))))

(declare-fun bs!1907017 () Bool)

(assert (= bs!1907017 d!2255504))

(declare-fun m!7934610 () Bool)

(assert (=> bs!1907017 m!7934610))

(assert (=> b!7254027 d!2255504))

(declare-fun d!2255506 () Bool)

(declare-fun c!1348567 () Bool)

(assert (=> d!2255506 (= c!1348567 (isEmpty!40561 s2!1849))))

(declare-fun e!4349775 () Bool)

(assert (=> d!2255506 (= (matchZipper!3569 (store ((as const (Array Context!15198 Bool)) false) ct2!328 true) s2!1849) e!4349775)))

(declare-fun b!7254255 () Bool)

(assert (=> b!7254255 (= e!4349775 (nullableZipper!2921 (store ((as const (Array Context!15198 Bool)) false) ct2!328 true)))))

(declare-fun b!7254256 () Bool)

(assert (=> b!7254256 (= e!4349775 (matchZipper!3569 (derivationStepZipper!3437 (store ((as const (Array Context!15198 Bool)) false) ct2!328 true) (head!14915 s2!1849)) (tail!14343 s2!1849)))))

(assert (= (and d!2255506 c!1348567) b!7254255))

(assert (= (and d!2255506 (not c!1348567)) b!7254256))

(declare-fun m!7934612 () Bool)

(assert (=> d!2255506 m!7934612))

(assert (=> b!7254255 m!7934338))

(declare-fun m!7934614 () Bool)

(assert (=> b!7254255 m!7934614))

(declare-fun m!7934616 () Bool)

(assert (=> b!7254256 m!7934616))

(assert (=> b!7254256 m!7934338))

(assert (=> b!7254256 m!7934616))

(declare-fun m!7934618 () Bool)

(assert (=> b!7254256 m!7934618))

(declare-fun m!7934620 () Bool)

(assert (=> b!7254256 m!7934620))

(assert (=> b!7254256 m!7934618))

(assert (=> b!7254256 m!7934620))

(declare-fun m!7934622 () Bool)

(assert (=> b!7254256 m!7934622))

(assert (=> b!7254038 d!2255506))

(declare-fun d!2255508 () Bool)

(declare-fun c!1348568 () Bool)

(assert (=> d!2255508 (= c!1348568 (isEmpty!40561 (t!384618 s1!1971)))))

(declare-fun e!4349776 () Bool)

(assert (=> d!2255508 (= (matchZipper!3569 lt!2586459 (t!384618 s1!1971)) e!4349776)))

(declare-fun b!7254257 () Bool)

(assert (=> b!7254257 (= e!4349776 (nullableZipper!2921 lt!2586459))))

(declare-fun b!7254258 () Bool)

(assert (=> b!7254258 (= e!4349776 (matchZipper!3569 (derivationStepZipper!3437 lt!2586459 (head!14915 (t!384618 s1!1971))) (tail!14343 (t!384618 s1!1971))))))

(assert (= (and d!2255508 c!1348568) b!7254257))

(assert (= (and d!2255508 (not c!1348568)) b!7254258))

(assert (=> d!2255508 m!7934570))

(declare-fun m!7934624 () Bool)

(assert (=> b!7254257 m!7934624))

(assert (=> b!7254258 m!7934574))

(assert (=> b!7254258 m!7934574))

(declare-fun m!7934626 () Bool)

(assert (=> b!7254258 m!7934626))

(assert (=> b!7254258 m!7934578))

(assert (=> b!7254258 m!7934626))

(assert (=> b!7254258 m!7934578))

(declare-fun m!7934628 () Bool)

(assert (=> b!7254258 m!7934628))

(assert (=> b!7254037 d!2255508))

(assert (=> b!7254037 d!2255494))

(declare-fun bs!1907018 () Bool)

(declare-fun d!2255510 () Bool)

(assert (= bs!1907018 (and d!2255510 b!7254030)))

(declare-fun lambda!444848 () Int)

(assert (=> bs!1907018 (= lambda!444848 lambda!444822)))

(assert (=> d!2255510 (= (inv!89657 lt!2586452) (forall!17508 (exprs!8099 lt!2586452) lambda!444848))))

(declare-fun bs!1907019 () Bool)

(assert (= bs!1907019 d!2255510))

(declare-fun m!7934630 () Bool)

(assert (=> bs!1907019 m!7934630))

(assert (=> b!7254037 d!2255510))

(declare-fun e!4349779 () Bool)

(declare-fun d!2255512 () Bool)

(assert (=> d!2255512 (= (matchZipper!3569 ((_ map or) lt!2586443 lt!2586441) (t!384618 s1!1971)) e!4349779)))

(declare-fun res!2941939 () Bool)

(assert (=> d!2255512 (=> res!2941939 e!4349779)))

(assert (=> d!2255512 (= res!2941939 (matchZipper!3569 lt!2586443 (t!384618 s1!1971)))))

(declare-fun lt!2586501 () Unit!163907)

(declare-fun choose!56073 ((InoxSet Context!15198) (InoxSet Context!15198) List!70558) Unit!163907)

(assert (=> d!2255512 (= lt!2586501 (choose!56073 lt!2586443 lt!2586441 (t!384618 s1!1971)))))

(assert (=> d!2255512 (= (lemmaZipperConcatMatchesSameAsBothZippers!1714 lt!2586443 lt!2586441 (t!384618 s1!1971)) lt!2586501)))

(declare-fun b!7254261 () Bool)

(assert (=> b!7254261 (= e!4349779 (matchZipper!3569 lt!2586441 (t!384618 s1!1971)))))

(assert (= (and d!2255512 (not res!2941939)) b!7254261))

(declare-fun m!7934632 () Bool)

(assert (=> d!2255512 m!7934632))

(assert (=> d!2255512 m!7934258))

(declare-fun m!7934634 () Bool)

(assert (=> d!2255512 m!7934634))

(assert (=> b!7254261 m!7934310))

(assert (=> b!7254037 d!2255512))

(declare-fun d!2255514 () Bool)

(declare-fun c!1348569 () Bool)

(assert (=> d!2255514 (= c!1348569 (isEmpty!40561 (t!384618 s1!1971)))))

(declare-fun e!4349780 () Bool)

(assert (=> d!2255514 (= (matchZipper!3569 lt!2586443 (t!384618 s1!1971)) e!4349780)))

(declare-fun b!7254262 () Bool)

(assert (=> b!7254262 (= e!4349780 (nullableZipper!2921 lt!2586443))))

(declare-fun b!7254263 () Bool)

(assert (=> b!7254263 (= e!4349780 (matchZipper!3569 (derivationStepZipper!3437 lt!2586443 (head!14915 (t!384618 s1!1971))) (tail!14343 (t!384618 s1!1971))))))

(assert (= (and d!2255514 c!1348569) b!7254262))

(assert (= (and d!2255514 (not c!1348569)) b!7254263))

(assert (=> d!2255514 m!7934570))

(declare-fun m!7934636 () Bool)

(assert (=> b!7254262 m!7934636))

(assert (=> b!7254263 m!7934574))

(assert (=> b!7254263 m!7934574))

(declare-fun m!7934638 () Bool)

(assert (=> b!7254263 m!7934638))

(assert (=> b!7254263 m!7934578))

(assert (=> b!7254263 m!7934638))

(assert (=> b!7254263 m!7934578))

(declare-fun m!7934640 () Bool)

(assert (=> b!7254263 m!7934640))

(assert (=> b!7254037 d!2255514))

(assert (=> b!7254035 d!2255494))

(declare-fun c!1348572 () Bool)

(declare-fun call!660943 () (InoxSet Context!15198))

(declare-fun bm!660936 () Bool)

(declare-fun c!1348570 () Bool)

(declare-fun call!660945 () List!70557)

(declare-fun c!1348573 () Bool)

(assert (=> bm!660936 (= call!660943 (derivationStepZipperDown!2653 (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))) (ite (or c!1348573 c!1348570) lt!2586452 (Context!15199 call!660945)) (h!76882 s1!1971)))))

(declare-fun b!7254264 () Bool)

(declare-fun e!4349782 () Bool)

(assert (=> b!7254264 (= e!4349782 (nullable!7919 (regOne!37830 (h!76881 (exprs!8099 ct1!232)))))))

(declare-fun bm!660937 () Bool)

(declare-fun call!660942 () (InoxSet Context!15198))

(assert (=> bm!660937 (= call!660942 call!660943)))

(declare-fun b!7254265 () Bool)

(declare-fun e!4349786 () (InoxSet Context!15198))

(declare-fun e!4349785 () (InoxSet Context!15198))

(assert (=> b!7254265 (= e!4349786 e!4349785)))

(assert (=> b!7254265 (= c!1348573 ((_ is Union!18659) (h!76881 (exprs!8099 ct1!232))))))

(declare-fun b!7254266 () Bool)

(declare-fun e!4349784 () (InoxSet Context!15198))

(declare-fun e!4349783 () (InoxSet Context!15198))

(assert (=> b!7254266 (= e!4349784 e!4349783)))

(assert (=> b!7254266 (= c!1348572 ((_ is Concat!27504) (h!76881 (exprs!8099 ct1!232))))))

(declare-fun bm!660938 () Bool)

(declare-fun call!660941 () List!70557)

(assert (=> bm!660938 (= call!660945 call!660941)))

(declare-fun b!7254267 () Bool)

(declare-fun e!4349781 () (InoxSet Context!15198))

(assert (=> b!7254267 (= e!4349781 ((as const (Array Context!15198 Bool)) false))))

(declare-fun d!2255516 () Bool)

(declare-fun c!1348571 () Bool)

(assert (=> d!2255516 (= c!1348571 (and ((_ is ElementMatch!18659) (h!76881 (exprs!8099 ct1!232))) (= (c!1348485 (h!76881 (exprs!8099 ct1!232))) (h!76882 s1!1971))))))

(assert (=> d!2255516 (= (derivationStepZipperDown!2653 (h!76881 (exprs!8099 ct1!232)) lt!2586452 (h!76882 s1!1971)) e!4349786)))

(declare-fun b!7254268 () Bool)

(declare-fun c!1348574 () Bool)

(assert (=> b!7254268 (= c!1348574 ((_ is Star!18659) (h!76881 (exprs!8099 ct1!232))))))

(assert (=> b!7254268 (= e!4349783 e!4349781)))

(declare-fun bm!660939 () Bool)

(declare-fun call!660944 () (InoxSet Context!15198))

(assert (=> bm!660939 (= call!660944 call!660942)))

(declare-fun b!7254269 () Bool)

(assert (=> b!7254269 (= e!4349781 call!660944)))

(declare-fun b!7254270 () Bool)

(declare-fun call!660946 () (InoxSet Context!15198))

(assert (=> b!7254270 (= e!4349785 ((_ map or) call!660943 call!660946))))

(declare-fun b!7254271 () Bool)

(assert (=> b!7254271 (= e!4349786 (store ((as const (Array Context!15198 Bool)) false) lt!2586452 true))))

(declare-fun b!7254272 () Bool)

(assert (=> b!7254272 (= c!1348570 e!4349782)))

(declare-fun res!2941940 () Bool)

(assert (=> b!7254272 (=> (not res!2941940) (not e!4349782))))

(assert (=> b!7254272 (= res!2941940 ((_ is Concat!27504) (h!76881 (exprs!8099 ct1!232))))))

(assert (=> b!7254272 (= e!4349785 e!4349784)))

(declare-fun bm!660940 () Bool)

(assert (=> bm!660940 (= call!660946 (derivationStepZipperDown!2653 (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))) (ite c!1348573 lt!2586452 (Context!15199 call!660941)) (h!76882 s1!1971)))))

(declare-fun bm!660941 () Bool)

(assert (=> bm!660941 (= call!660941 ($colon$colon!2925 (exprs!8099 lt!2586452) (ite (or c!1348570 c!1348572) (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (h!76881 (exprs!8099 ct1!232)))))))

(declare-fun b!7254273 () Bool)

(assert (=> b!7254273 (= e!4349784 ((_ map or) call!660946 call!660942))))

(declare-fun b!7254274 () Bool)

(assert (=> b!7254274 (= e!4349783 call!660944)))

(assert (= (and d!2255516 c!1348571) b!7254271))

(assert (= (and d!2255516 (not c!1348571)) b!7254265))

(assert (= (and b!7254265 c!1348573) b!7254270))

(assert (= (and b!7254265 (not c!1348573)) b!7254272))

(assert (= (and b!7254272 res!2941940) b!7254264))

(assert (= (and b!7254272 c!1348570) b!7254273))

(assert (= (and b!7254272 (not c!1348570)) b!7254266))

(assert (= (and b!7254266 c!1348572) b!7254274))

(assert (= (and b!7254266 (not c!1348572)) b!7254268))

(assert (= (and b!7254268 c!1348574) b!7254269))

(assert (= (and b!7254268 (not c!1348574)) b!7254267))

(assert (= (or b!7254274 b!7254269) bm!660938))

(assert (= (or b!7254274 b!7254269) bm!660939))

(assert (= (or b!7254273 bm!660938) bm!660941))

(assert (= (or b!7254273 bm!660939) bm!660937))

(assert (= (or b!7254270 b!7254273) bm!660940))

(assert (= (or b!7254270 bm!660937) bm!660936))

(declare-fun m!7934642 () Bool)

(assert (=> bm!660936 m!7934642))

(declare-fun m!7934644 () Bool)

(assert (=> b!7254271 m!7934644))

(assert (=> b!7254264 m!7934598))

(declare-fun m!7934646 () Bool)

(assert (=> bm!660941 m!7934646))

(declare-fun m!7934648 () Bool)

(assert (=> bm!660940 m!7934648))

(assert (=> b!7254035 d!2255516))

(assert (=> b!7254035 d!2255496))

(declare-fun d!2255518 () Bool)

(assert (=> d!2255518 (= (tail!14341 lt!2586446) (t!384617 lt!2586446))))

(assert (=> b!7254035 d!2255518))

(declare-fun d!2255520 () Bool)

(declare-fun dynLambda!28768 (Int Context!15198) (InoxSet Context!15198))

(assert (=> d!2255520 (= (flatMap!2824 lt!2586442 lambda!444824) (dynLambda!28768 lambda!444824 lt!2586455))))

(declare-fun lt!2586504 () Unit!163907)

(declare-fun choose!56074 ((InoxSet Context!15198) Context!15198 Int) Unit!163907)

(assert (=> d!2255520 (= lt!2586504 (choose!56074 lt!2586442 lt!2586455 lambda!444824))))

(assert (=> d!2255520 (= lt!2586442 (store ((as const (Array Context!15198 Bool)) false) lt!2586455 true))))

(assert (=> d!2255520 (= (lemmaFlatMapOnSingletonSet!2228 lt!2586442 lt!2586455 lambda!444824) lt!2586504)))

(declare-fun b_lambda!278783 () Bool)

(assert (=> (not b_lambda!278783) (not d!2255520)))

(declare-fun bs!1907020 () Bool)

(assert (= bs!1907020 d!2255520))

(assert (=> bs!1907020 m!7934284))

(declare-fun m!7934650 () Bool)

(assert (=> bs!1907020 m!7934650))

(declare-fun m!7934652 () Bool)

(assert (=> bs!1907020 m!7934652))

(assert (=> bs!1907020 m!7934306))

(assert (=> b!7254035 d!2255520))

(declare-fun d!2255522 () Bool)

(declare-fun nullableFct!3110 (Regex!18659) Bool)

(assert (=> d!2255522 (= (nullable!7919 (h!76881 (exprs!8099 ct1!232))) (nullableFct!3110 (h!76881 (exprs!8099 ct1!232))))))

(declare-fun bs!1907021 () Bool)

(assert (= bs!1907021 d!2255522))

(declare-fun m!7934654 () Bool)

(assert (=> bs!1907021 m!7934654))

(assert (=> b!7254035 d!2255522))

(declare-fun bm!660942 () Bool)

(declare-fun call!660947 () (InoxSet Context!15198))

(assert (=> bm!660942 (= call!660947 (derivationStepZipperDown!2653 (h!76881 (exprs!8099 ct1!232)) (Context!15199 (t!384617 (exprs!8099 ct1!232))) (h!76882 s1!1971)))))

(declare-fun d!2255524 () Bool)

(declare-fun c!1348575 () Bool)

(declare-fun e!4349787 () Bool)

(assert (=> d!2255524 (= c!1348575 e!4349787)))

(declare-fun res!2941941 () Bool)

(assert (=> d!2255524 (=> (not res!2941941) (not e!4349787))))

(assert (=> d!2255524 (= res!2941941 ((_ is Cons!70433) (exprs!8099 ct1!232)))))

(declare-fun e!4349788 () (InoxSet Context!15198))

(assert (=> d!2255524 (= (derivationStepZipperUp!2483 ct1!232 (h!76882 s1!1971)) e!4349788)))

(declare-fun b!7254275 () Bool)

(assert (=> b!7254275 (= e!4349788 ((_ map or) call!660947 (derivationStepZipperUp!2483 (Context!15199 (t!384617 (exprs!8099 ct1!232))) (h!76882 s1!1971))))))

(declare-fun b!7254276 () Bool)

(declare-fun e!4349789 () (InoxSet Context!15198))

(assert (=> b!7254276 (= e!4349788 e!4349789)))

(declare-fun c!1348576 () Bool)

(assert (=> b!7254276 (= c!1348576 ((_ is Cons!70433) (exprs!8099 ct1!232)))))

(declare-fun b!7254277 () Bool)

(assert (=> b!7254277 (= e!4349787 (nullable!7919 (h!76881 (exprs!8099 ct1!232))))))

(declare-fun b!7254278 () Bool)

(assert (=> b!7254278 (= e!4349789 ((as const (Array Context!15198 Bool)) false))))

(declare-fun b!7254279 () Bool)

(assert (=> b!7254279 (= e!4349789 call!660947)))

(assert (= (and d!2255524 res!2941941) b!7254277))

(assert (= (and d!2255524 c!1348575) b!7254275))

(assert (= (and d!2255524 (not c!1348575)) b!7254276))

(assert (= (and b!7254276 c!1348576) b!7254279))

(assert (= (and b!7254276 (not c!1348576)) b!7254278))

(assert (= (or b!7254275 b!7254279) bm!660942))

(declare-fun m!7934656 () Bool)

(assert (=> bm!660942 m!7934656))

(declare-fun m!7934658 () Bool)

(assert (=> b!7254275 m!7934658))

(assert (=> b!7254277 m!7934272))

(assert (=> b!7254035 d!2255524))

(declare-fun d!2255526 () Bool)

(declare-fun choose!56075 ((InoxSet Context!15198) Int) (InoxSet Context!15198))

(assert (=> d!2255526 (= (flatMap!2824 lt!2586442 lambda!444824) (choose!56075 lt!2586442 lambda!444824))))

(declare-fun bs!1907022 () Bool)

(assert (= bs!1907022 d!2255526))

(declare-fun m!7934660 () Bool)

(assert (=> bs!1907022 m!7934660))

(assert (=> b!7254035 d!2255526))

(declare-fun d!2255528 () Bool)

(assert (=> d!2255528 (= (flatMap!2824 lt!2586453 lambda!444824) (dynLambda!28768 lambda!444824 ct1!232))))

(declare-fun lt!2586505 () Unit!163907)

(assert (=> d!2255528 (= lt!2586505 (choose!56074 lt!2586453 ct1!232 lambda!444824))))

(assert (=> d!2255528 (= lt!2586453 (store ((as const (Array Context!15198 Bool)) false) ct1!232 true))))

(assert (=> d!2255528 (= (lemmaFlatMapOnSingletonSet!2228 lt!2586453 ct1!232 lambda!444824) lt!2586505)))

(declare-fun b_lambda!278785 () Bool)

(assert (=> (not b_lambda!278785) (not d!2255528)))

(declare-fun bs!1907023 () Bool)

(assert (= bs!1907023 d!2255528))

(assert (=> bs!1907023 m!7934282))

(declare-fun m!7934662 () Bool)

(assert (=> bs!1907023 m!7934662))

(declare-fun m!7934664 () Bool)

(assert (=> bs!1907023 m!7934664))

(assert (=> bs!1907023 m!7934316))

(assert (=> b!7254035 d!2255528))

(declare-fun d!2255530 () Bool)

(assert (=> d!2255530 (= (flatMap!2824 lt!2586453 lambda!444824) (choose!56075 lt!2586453 lambda!444824))))

(declare-fun bs!1907024 () Bool)

(assert (= bs!1907024 d!2255530))

(declare-fun m!7934666 () Bool)

(assert (=> bs!1907024 m!7934666))

(assert (=> b!7254035 d!2255530))

(declare-fun d!2255532 () Bool)

(declare-fun c!1348577 () Bool)

(assert (=> d!2255532 (= c!1348577 (isEmpty!40561 s1!1971))))

(declare-fun e!4349790 () Bool)

(assert (=> d!2255532 (= (matchZipper!3569 lt!2586453 s1!1971) e!4349790)))

(declare-fun b!7254280 () Bool)

(assert (=> b!7254280 (= e!4349790 (nullableZipper!2921 lt!2586453))))

(declare-fun b!7254281 () Bool)

(assert (=> b!7254281 (= e!4349790 (matchZipper!3569 (derivationStepZipper!3437 lt!2586453 (head!14915 s1!1971)) (tail!14343 s1!1971)))))

(assert (= (and d!2255532 c!1348577) b!7254280))

(assert (= (and d!2255532 (not c!1348577)) b!7254281))

(declare-fun m!7934668 () Bool)

(assert (=> d!2255532 m!7934668))

(declare-fun m!7934670 () Bool)

(assert (=> b!7254280 m!7934670))

(declare-fun m!7934672 () Bool)

(assert (=> b!7254281 m!7934672))

(assert (=> b!7254281 m!7934672))

(declare-fun m!7934674 () Bool)

(assert (=> b!7254281 m!7934674))

(declare-fun m!7934676 () Bool)

(assert (=> b!7254281 m!7934676))

(assert (=> b!7254281 m!7934674))

(assert (=> b!7254281 m!7934676))

(declare-fun m!7934678 () Bool)

(assert (=> b!7254281 m!7934678))

(assert (=> start!706244 d!2255532))

(declare-fun bs!1907025 () Bool)

(declare-fun d!2255534 () Bool)

(assert (= bs!1907025 (and d!2255534 b!7254030)))

(declare-fun lambda!444849 () Int)

(assert (=> bs!1907025 (= lambda!444849 lambda!444822)))

(declare-fun bs!1907026 () Bool)

(assert (= bs!1907026 (and d!2255534 d!2255510)))

(assert (=> bs!1907026 (= lambda!444849 lambda!444848)))

(assert (=> d!2255534 (= (inv!89657 ct1!232) (forall!17508 (exprs!8099 ct1!232) lambda!444849))))

(declare-fun bs!1907027 () Bool)

(assert (= bs!1907027 d!2255534))

(declare-fun m!7934680 () Bool)

(assert (=> bs!1907027 m!7934680))

(assert (=> start!706244 d!2255534))

(declare-fun bs!1907028 () Bool)

(declare-fun d!2255536 () Bool)

(assert (= bs!1907028 (and d!2255536 b!7254030)))

(declare-fun lambda!444850 () Int)

(assert (=> bs!1907028 (= lambda!444850 lambda!444822)))

(declare-fun bs!1907029 () Bool)

(assert (= bs!1907029 (and d!2255536 d!2255510)))

(assert (=> bs!1907029 (= lambda!444850 lambda!444848)))

(declare-fun bs!1907030 () Bool)

(assert (= bs!1907030 (and d!2255536 d!2255534)))

(assert (=> bs!1907030 (= lambda!444850 lambda!444849)))

(assert (=> d!2255536 (= (inv!89657 ct2!328) (forall!17508 (exprs!8099 ct2!328) lambda!444850))))

(declare-fun bs!1907031 () Bool)

(assert (= bs!1907031 d!2255536))

(declare-fun m!7934682 () Bool)

(assert (=> bs!1907031 m!7934682))

(assert (=> start!706244 d!2255536))

(declare-fun d!2255538 () Bool)

(declare-fun lt!2586508 () Bool)

(assert (=> d!2255538 (= lt!2586508 (exists!4397 (toList!11488 lt!2586454) lambda!444823))))

(declare-fun choose!56076 ((InoxSet Context!15198) Int) Bool)

(assert (=> d!2255538 (= lt!2586508 (choose!56076 lt!2586454 lambda!444823))))

(assert (=> d!2255538 (= (exists!4396 lt!2586454 lambda!444823) lt!2586508)))

(declare-fun bs!1907032 () Bool)

(assert (= bs!1907032 d!2255538))

(assert (=> bs!1907032 m!7934294))

(assert (=> bs!1907032 m!7934294))

(declare-fun m!7934684 () Bool)

(assert (=> bs!1907032 m!7934684))

(declare-fun m!7934686 () Bool)

(assert (=> bs!1907032 m!7934686))

(assert (=> b!7254034 d!2255538))

(declare-fun bs!1907033 () Bool)

(declare-fun d!2255540 () Bool)

(assert (= bs!1907033 (and d!2255540 b!7254034)))

(declare-fun lambda!444853 () Int)

(assert (=> bs!1907033 (not (= lambda!444853 lambda!444823))))

(assert (=> d!2255540 true))

(declare-fun order!28997 () Int)

(declare-fun dynLambda!28769 (Int Int) Int)

(assert (=> d!2255540 (< (dynLambda!28769 order!28997 lambda!444823) (dynLambda!28769 order!28997 lambda!444853))))

(declare-fun forall!17509 (List!70559 Int) Bool)

(assert (=> d!2255540 (= (exists!4397 lt!2586444 lambda!444823) (not (forall!17509 lt!2586444 lambda!444853)))))

(declare-fun bs!1907034 () Bool)

(assert (= bs!1907034 d!2255540))

(declare-fun m!7934688 () Bool)

(assert (=> bs!1907034 m!7934688))

(assert (=> b!7254034 d!2255540))

(declare-fun bs!1907035 () Bool)

(declare-fun d!2255542 () Bool)

(assert (= bs!1907035 (and d!2255542 b!7254034)))

(declare-fun lambda!444856 () Int)

(assert (=> bs!1907035 (= lambda!444856 lambda!444823)))

(declare-fun bs!1907036 () Bool)

(assert (= bs!1907036 (and d!2255542 d!2255540)))

(assert (=> bs!1907036 (not (= lambda!444856 lambda!444853))))

(assert (=> d!2255542 true))

(assert (=> d!2255542 (exists!4397 lt!2586444 lambda!444856)))

(declare-fun lt!2586511 () Unit!163907)

(declare-fun choose!56077 (List!70559 List!70558) Unit!163907)

(assert (=> d!2255542 (= lt!2586511 (choose!56077 lt!2586444 (t!384618 s1!1971)))))

(declare-fun content!14632 (List!70559) (InoxSet Context!15198))

(assert (=> d!2255542 (matchZipper!3569 (content!14632 lt!2586444) (t!384618 s1!1971))))

(assert (=> d!2255542 (= (lemmaZipperMatchesExistsMatchingContext!762 lt!2586444 (t!384618 s1!1971)) lt!2586511)))

(declare-fun bs!1907037 () Bool)

(assert (= bs!1907037 d!2255542))

(declare-fun m!7934690 () Bool)

(assert (=> bs!1907037 m!7934690))

(declare-fun m!7934692 () Bool)

(assert (=> bs!1907037 m!7934692))

(declare-fun m!7934694 () Bool)

(assert (=> bs!1907037 m!7934694))

(assert (=> bs!1907037 m!7934694))

(declare-fun m!7934696 () Bool)

(assert (=> bs!1907037 m!7934696))

(assert (=> b!7254034 d!2255542))

(declare-fun d!2255544 () Bool)

(declare-fun e!4349793 () Bool)

(assert (=> d!2255544 e!4349793))

(declare-fun res!2941944 () Bool)

(assert (=> d!2255544 (=> (not res!2941944) (not e!4349793))))

(declare-fun lt!2586514 () List!70559)

(declare-fun noDuplicate!2997 (List!70559) Bool)

(assert (=> d!2255544 (= res!2941944 (noDuplicate!2997 lt!2586514))))

(declare-fun choose!56078 ((InoxSet Context!15198)) List!70559)

(assert (=> d!2255544 (= lt!2586514 (choose!56078 lt!2586454))))

(assert (=> d!2255544 (= (toList!11488 lt!2586454) lt!2586514)))

(declare-fun b!7254286 () Bool)

(assert (=> b!7254286 (= e!4349793 (= (content!14632 lt!2586514) lt!2586454))))

(assert (= (and d!2255544 res!2941944) b!7254286))

(declare-fun m!7934698 () Bool)

(assert (=> d!2255544 m!7934698))

(declare-fun m!7934700 () Bool)

(assert (=> d!2255544 m!7934700))

(declare-fun m!7934702 () Bool)

(assert (=> b!7254286 m!7934702))

(assert (=> b!7254034 d!2255544))

(declare-fun d!2255546 () Bool)

(assert (=> d!2255546 (forall!17508 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328)) lambda!444822)))

(declare-fun lt!2586515 () Unit!163907)

(assert (=> d!2255546 (= lt!2586515 (choose!56072 (exprs!8099 lt!2586451) (exprs!8099 ct2!328) lambda!444822))))

(assert (=> d!2255546 (forall!17508 (exprs!8099 lt!2586451) lambda!444822)))

(assert (=> d!2255546 (= (lemmaConcatPreservesForall!1466 (exprs!8099 lt!2586451) (exprs!8099 ct2!328) lambda!444822) lt!2586515)))

(declare-fun bs!1907038 () Bool)

(assert (= bs!1907038 d!2255546))

(assert (=> bs!1907038 m!7934336))

(assert (=> bs!1907038 m!7934336))

(declare-fun m!7934704 () Bool)

(assert (=> bs!1907038 m!7934704))

(declare-fun m!7934706 () Bool)

(assert (=> bs!1907038 m!7934706))

(declare-fun m!7934708 () Bool)

(assert (=> bs!1907038 m!7934708))

(assert (=> b!7254033 d!2255546))

(declare-fun d!2255548 () Bool)

(assert (=> d!2255548 (= (isEmpty!40559 (exprs!8099 ct1!232)) ((_ is Nil!70433) (exprs!8099 ct1!232)))))

(assert (=> b!7254033 d!2255548))

(declare-fun b!7254297 () Bool)

(declare-fun res!2941950 () Bool)

(declare-fun e!4349799 () Bool)

(assert (=> b!7254297 (=> (not res!2941950) (not e!4349799))))

(declare-fun lt!2586518 () List!70557)

(declare-fun size!41731 (List!70557) Int)

(assert (=> b!7254297 (= res!2941950 (= (size!41731 lt!2586518) (+ (size!41731 (exprs!8099 lt!2586451)) (size!41731 (exprs!8099 ct2!328)))))))

(declare-fun b!7254296 () Bool)

(declare-fun e!4349798 () List!70557)

(assert (=> b!7254296 (= e!4349798 (Cons!70433 (h!76881 (exprs!8099 lt!2586451)) (++!16580 (t!384617 (exprs!8099 lt!2586451)) (exprs!8099 ct2!328))))))

(declare-fun b!7254295 () Bool)

(assert (=> b!7254295 (= e!4349798 (exprs!8099 ct2!328))))

(declare-fun d!2255550 () Bool)

(assert (=> d!2255550 e!4349799))

(declare-fun res!2941949 () Bool)

(assert (=> d!2255550 (=> (not res!2941949) (not e!4349799))))

(declare-fun content!14633 (List!70557) (InoxSet Regex!18659))

(assert (=> d!2255550 (= res!2941949 (= (content!14633 lt!2586518) ((_ map or) (content!14633 (exprs!8099 lt!2586451)) (content!14633 (exprs!8099 ct2!328)))))))

(assert (=> d!2255550 (= lt!2586518 e!4349798)))

(declare-fun c!1348582 () Bool)

(assert (=> d!2255550 (= c!1348582 ((_ is Nil!70433) (exprs!8099 lt!2586451)))))

(assert (=> d!2255550 (= (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328)) lt!2586518)))

(declare-fun b!7254298 () Bool)

(assert (=> b!7254298 (= e!4349799 (or (not (= (exprs!8099 ct2!328) Nil!70433)) (= lt!2586518 (exprs!8099 lt!2586451))))))

(assert (= (and d!2255550 c!1348582) b!7254295))

(assert (= (and d!2255550 (not c!1348582)) b!7254296))

(assert (= (and d!2255550 res!2941949) b!7254297))

(assert (= (and b!7254297 res!2941950) b!7254298))

(declare-fun m!7934710 () Bool)

(assert (=> b!7254297 m!7934710))

(declare-fun m!7934712 () Bool)

(assert (=> b!7254297 m!7934712))

(declare-fun m!7934714 () Bool)

(assert (=> b!7254297 m!7934714))

(declare-fun m!7934716 () Bool)

(assert (=> b!7254296 m!7934716))

(declare-fun m!7934718 () Bool)

(assert (=> d!2255550 m!7934718))

(declare-fun m!7934720 () Bool)

(assert (=> d!2255550 m!7934720))

(declare-fun m!7934722 () Bool)

(assert (=> d!2255550 m!7934722))

(assert (=> b!7254033 d!2255550))

(declare-fun d!2255552 () Bool)

(declare-fun e!4349802 () Bool)

(assert (=> d!2255552 e!4349802))

(declare-fun res!2941953 () Bool)

(assert (=> d!2255552 (=> (not res!2941953) (not e!4349802))))

(declare-fun lt!2586521 () Context!15198)

(declare-fun dynLambda!28770 (Int Context!15198) Bool)

(assert (=> d!2255552 (= res!2941953 (dynLambda!28770 lambda!444823 lt!2586521))))

(declare-fun getWitness!2226 (List!70559 Int) Context!15198)

(assert (=> d!2255552 (= lt!2586521 (getWitness!2226 (toList!11488 lt!2586454) lambda!444823))))

(assert (=> d!2255552 (exists!4396 lt!2586454 lambda!444823)))

(assert (=> d!2255552 (= (getWitness!2224 lt!2586454 lambda!444823) lt!2586521)))

(declare-fun b!7254301 () Bool)

(assert (=> b!7254301 (= e!4349802 (select lt!2586454 lt!2586521))))

(assert (= (and d!2255552 res!2941953) b!7254301))

(declare-fun b_lambda!278787 () Bool)

(assert (=> (not b_lambda!278787) (not d!2255552)))

(declare-fun m!7934724 () Bool)

(assert (=> d!2255552 m!7934724))

(assert (=> d!2255552 m!7934294))

(assert (=> d!2255552 m!7934294))

(declare-fun m!7934726 () Bool)

(assert (=> d!2255552 m!7934726))

(assert (=> d!2255552 m!7934288))

(declare-fun m!7934728 () Bool)

(assert (=> b!7254301 m!7934728))

(assert (=> b!7254033 d!2255552))

(declare-fun d!2255554 () Bool)

(declare-fun e!4349808 () Bool)

(assert (=> d!2255554 e!4349808))

(declare-fun res!2941959 () Bool)

(assert (=> d!2255554 (=> (not res!2941959) (not e!4349808))))

(declare-fun lt!2586524 () List!70558)

(declare-fun content!14634 (List!70558) (InoxSet C!37592))

(assert (=> d!2255554 (= res!2941959 (= (content!14634 lt!2586524) ((_ map or) (content!14634 (t!384618 s1!1971)) (content!14634 s2!1849))))))

(declare-fun e!4349807 () List!70558)

(assert (=> d!2255554 (= lt!2586524 e!4349807)))

(declare-fun c!1348585 () Bool)

(assert (=> d!2255554 (= c!1348585 ((_ is Nil!70434) (t!384618 s1!1971)))))

(assert (=> d!2255554 (= (++!16581 (t!384618 s1!1971) s2!1849) lt!2586524)))

(declare-fun b!7254311 () Bool)

(assert (=> b!7254311 (= e!4349807 (Cons!70434 (h!76882 (t!384618 s1!1971)) (++!16581 (t!384618 (t!384618 s1!1971)) s2!1849)))))

(declare-fun b!7254313 () Bool)

(assert (=> b!7254313 (= e!4349808 (or (not (= s2!1849 Nil!70434)) (= lt!2586524 (t!384618 s1!1971))))))

(declare-fun b!7254310 () Bool)

(assert (=> b!7254310 (= e!4349807 s2!1849)))

(declare-fun b!7254312 () Bool)

(declare-fun res!2941958 () Bool)

(assert (=> b!7254312 (=> (not res!2941958) (not e!4349808))))

(declare-fun size!41732 (List!70558) Int)

(assert (=> b!7254312 (= res!2941958 (= (size!41732 lt!2586524) (+ (size!41732 (t!384618 s1!1971)) (size!41732 s2!1849))))))

(assert (= (and d!2255554 c!1348585) b!7254310))

(assert (= (and d!2255554 (not c!1348585)) b!7254311))

(assert (= (and d!2255554 res!2941959) b!7254312))

(assert (= (and b!7254312 res!2941958) b!7254313))

(declare-fun m!7934730 () Bool)

(assert (=> d!2255554 m!7934730))

(declare-fun m!7934732 () Bool)

(assert (=> d!2255554 m!7934732))

(declare-fun m!7934734 () Bool)

(assert (=> d!2255554 m!7934734))

(declare-fun m!7934736 () Bool)

(assert (=> b!7254311 m!7934736))

(declare-fun m!7934738 () Bool)

(assert (=> b!7254312 m!7934738))

(declare-fun m!7934740 () Bool)

(assert (=> b!7254312 m!7934740))

(declare-fun m!7934742 () Bool)

(assert (=> b!7254312 m!7934742))

(assert (=> b!7254033 d!2255554))

(assert (=> b!7254033 d!2255524))

(declare-fun d!2255556 () Bool)

(declare-fun c!1348586 () Bool)

(assert (=> d!2255556 (= c!1348586 (isEmpty!40561 (++!16581 (t!384618 s1!1971) s2!1849)))))

(declare-fun e!4349809 () Bool)

(assert (=> d!2255556 (= (matchZipper!3569 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true) (++!16581 (t!384618 s1!1971) s2!1849)) e!4349809)))

(declare-fun b!7254314 () Bool)

(assert (=> b!7254314 (= e!4349809 (nullableZipper!2921 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true)))))

(declare-fun b!7254315 () Bool)

(assert (=> b!7254315 (= e!4349809 (matchZipper!3569 (derivationStepZipper!3437 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true) (head!14915 (++!16581 (t!384618 s1!1971) s2!1849))) (tail!14343 (++!16581 (t!384618 s1!1971) s2!1849))))))

(assert (= (and d!2255556 c!1348586) b!7254314))

(assert (= (and d!2255556 (not c!1348586)) b!7254315))

(assert (=> d!2255556 m!7934328))

(declare-fun m!7934744 () Bool)

(assert (=> d!2255556 m!7934744))

(assert (=> b!7254314 m!7934322))

(declare-fun m!7934746 () Bool)

(assert (=> b!7254314 m!7934746))

(assert (=> b!7254315 m!7934328))

(declare-fun m!7934748 () Bool)

(assert (=> b!7254315 m!7934748))

(assert (=> b!7254315 m!7934322))

(assert (=> b!7254315 m!7934748))

(declare-fun m!7934750 () Bool)

(assert (=> b!7254315 m!7934750))

(assert (=> b!7254315 m!7934328))

(declare-fun m!7934752 () Bool)

(assert (=> b!7254315 m!7934752))

(assert (=> b!7254315 m!7934750))

(assert (=> b!7254315 m!7934752))

(declare-fun m!7934754 () Bool)

(assert (=> b!7254315 m!7934754))

(assert (=> b!7254033 d!2255556))

(declare-fun bs!1907039 () Bool)

(declare-fun d!2255558 () Bool)

(assert (= bs!1907039 (and d!2255558 b!7254030)))

(declare-fun lambda!444859 () Int)

(assert (=> bs!1907039 (= lambda!444859 lambda!444822)))

(declare-fun bs!1907040 () Bool)

(assert (= bs!1907040 (and d!2255558 d!2255510)))

(assert (=> bs!1907040 (= lambda!444859 lambda!444848)))

(declare-fun bs!1907041 () Bool)

(assert (= bs!1907041 (and d!2255558 d!2255534)))

(assert (=> bs!1907041 (= lambda!444859 lambda!444849)))

(declare-fun bs!1907042 () Bool)

(assert (= bs!1907042 (and d!2255558 d!2255536)))

(assert (=> bs!1907042 (= lambda!444859 lambda!444850)))

(assert (=> d!2255558 (matchZipper!3569 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true) (++!16581 (t!384618 s1!1971) s2!1849))))

(declare-fun lt!2586530 () Unit!163907)

(assert (=> d!2255558 (= lt!2586530 (lemmaConcatPreservesForall!1466 (exprs!8099 lt!2586451) (exprs!8099 ct2!328) lambda!444859))))

(declare-fun lt!2586529 () Unit!163907)

(declare-fun choose!56079 (Context!15198 Context!15198 List!70558 List!70558) Unit!163907)

(assert (=> d!2255558 (= lt!2586529 (choose!56079 lt!2586451 ct2!328 (t!384618 s1!1971) s2!1849))))

(assert (=> d!2255558 (matchZipper!3569 (store ((as const (Array Context!15198 Bool)) false) lt!2586451 true) (t!384618 s1!1971))))

(assert (=> d!2255558 (= (lemmaConcatenateContextMatchesConcatOfStrings!404 lt!2586451 ct2!328 (t!384618 s1!1971) s2!1849) lt!2586529)))

(declare-fun bs!1907043 () Bool)

(assert (= bs!1907043 d!2255558))

(assert (=> bs!1907043 m!7934336))

(declare-fun m!7934756 () Bool)

(assert (=> bs!1907043 m!7934756))

(assert (=> bs!1907043 m!7934322))

(assert (=> bs!1907043 m!7934328))

(assert (=> bs!1907043 m!7934330))

(assert (=> bs!1907043 m!7934322))

(declare-fun m!7934758 () Bool)

(assert (=> bs!1907043 m!7934758))

(declare-fun m!7934760 () Bool)

(assert (=> bs!1907043 m!7934760))

(assert (=> bs!1907043 m!7934328))

(assert (=> bs!1907043 m!7934758))

(declare-fun m!7934762 () Bool)

(assert (=> bs!1907043 m!7934762))

(assert (=> b!7254033 d!2255558))

(declare-fun bm!660943 () Bool)

(declare-fun call!660948 () (InoxSet Context!15198))

(assert (=> bm!660943 (= call!660948 (derivationStepZipperDown!2653 (h!76881 (exprs!8099 lt!2586452)) (Context!15199 (t!384617 (exprs!8099 lt!2586452))) (h!76882 s1!1971)))))

(declare-fun d!2255560 () Bool)

(declare-fun c!1348587 () Bool)

(declare-fun e!4349810 () Bool)

(assert (=> d!2255560 (= c!1348587 e!4349810)))

(declare-fun res!2941960 () Bool)

(assert (=> d!2255560 (=> (not res!2941960) (not e!4349810))))

(assert (=> d!2255560 (= res!2941960 ((_ is Cons!70433) (exprs!8099 lt!2586452)))))

(declare-fun e!4349811 () (InoxSet Context!15198))

(assert (=> d!2255560 (= (derivationStepZipperUp!2483 lt!2586452 (h!76882 s1!1971)) e!4349811)))

(declare-fun b!7254316 () Bool)

(assert (=> b!7254316 (= e!4349811 ((_ map or) call!660948 (derivationStepZipperUp!2483 (Context!15199 (t!384617 (exprs!8099 lt!2586452))) (h!76882 s1!1971))))))

(declare-fun b!7254317 () Bool)

(declare-fun e!4349812 () (InoxSet Context!15198))

(assert (=> b!7254317 (= e!4349811 e!4349812)))

(declare-fun c!1348588 () Bool)

(assert (=> b!7254317 (= c!1348588 ((_ is Cons!70433) (exprs!8099 lt!2586452)))))

(declare-fun b!7254318 () Bool)

(assert (=> b!7254318 (= e!4349810 (nullable!7919 (h!76881 (exprs!8099 lt!2586452))))))

(declare-fun b!7254319 () Bool)

(assert (=> b!7254319 (= e!4349812 ((as const (Array Context!15198 Bool)) false))))

(declare-fun b!7254320 () Bool)

(assert (=> b!7254320 (= e!4349812 call!660948)))

(assert (= (and d!2255560 res!2941960) b!7254318))

(assert (= (and d!2255560 c!1348587) b!7254316))

(assert (= (and d!2255560 (not c!1348587)) b!7254317))

(assert (= (and b!7254317 c!1348588) b!7254320))

(assert (= (and b!7254317 (not c!1348588)) b!7254319))

(assert (= (or b!7254316 b!7254320) bm!660943))

(declare-fun m!7934764 () Bool)

(assert (=> bm!660943 m!7934764))

(declare-fun m!7934766 () Bool)

(assert (=> b!7254316 m!7934766))

(declare-fun m!7934768 () Bool)

(assert (=> b!7254318 m!7934768))

(assert (=> b!7254031 d!2255560))

(assert (=> b!7254031 d!2255494))

(declare-fun bs!1907044 () Bool)

(declare-fun d!2255562 () Bool)

(assert (= bs!1907044 (and d!2255562 b!7254035)))

(declare-fun lambda!444860 () Int)

(assert (=> bs!1907044 (= lambda!444860 lambda!444824)))

(declare-fun bs!1907045 () Bool)

(assert (= bs!1907045 (and d!2255562 d!2255504)))

(assert (=> bs!1907045 (= lambda!444860 lambda!444845)))

(assert (=> d!2255562 true))

(assert (=> d!2255562 (= (derivationStepZipper!3437 lt!2586442 (h!76882 s1!1971)) (flatMap!2824 lt!2586442 lambda!444860))))

(declare-fun bs!1907046 () Bool)

(assert (= bs!1907046 d!2255562))

(declare-fun m!7934770 () Bool)

(assert (=> bs!1907046 m!7934770))

(assert (=> b!7254042 d!2255562))

(declare-fun b!7254323 () Bool)

(declare-fun res!2941962 () Bool)

(declare-fun e!4349814 () Bool)

(assert (=> b!7254323 (=> (not res!2941962) (not e!4349814))))

(declare-fun lt!2586531 () List!70557)

(assert (=> b!7254323 (= res!2941962 (= (size!41731 lt!2586531) (+ (size!41731 (exprs!8099 ct1!232)) (size!41731 (exprs!8099 ct2!328)))))))

(declare-fun b!7254322 () Bool)

(declare-fun e!4349813 () List!70557)

(assert (=> b!7254322 (= e!4349813 (Cons!70433 (h!76881 (exprs!8099 ct1!232)) (++!16580 (t!384617 (exprs!8099 ct1!232)) (exprs!8099 ct2!328))))))

(declare-fun b!7254321 () Bool)

(assert (=> b!7254321 (= e!4349813 (exprs!8099 ct2!328))))

(declare-fun d!2255564 () Bool)

(assert (=> d!2255564 e!4349814))

(declare-fun res!2941961 () Bool)

(assert (=> d!2255564 (=> (not res!2941961) (not e!4349814))))

(assert (=> d!2255564 (= res!2941961 (= (content!14633 lt!2586531) ((_ map or) (content!14633 (exprs!8099 ct1!232)) (content!14633 (exprs!8099 ct2!328)))))))

(assert (=> d!2255564 (= lt!2586531 e!4349813)))

(declare-fun c!1348589 () Bool)

(assert (=> d!2255564 (= c!1348589 ((_ is Nil!70433) (exprs!8099 ct1!232)))))

(assert (=> d!2255564 (= (++!16580 (exprs!8099 ct1!232) (exprs!8099 ct2!328)) lt!2586531)))

(declare-fun b!7254324 () Bool)

(assert (=> b!7254324 (= e!4349814 (or (not (= (exprs!8099 ct2!328) Nil!70433)) (= lt!2586531 (exprs!8099 ct1!232))))))

(assert (= (and d!2255564 c!1348589) b!7254321))

(assert (= (and d!2255564 (not c!1348589)) b!7254322))

(assert (= (and d!2255564 res!2941961) b!7254323))

(assert (= (and b!7254323 res!2941962) b!7254324))

(declare-fun m!7934772 () Bool)

(assert (=> b!7254323 m!7934772))

(declare-fun m!7934774 () Bool)

(assert (=> b!7254323 m!7934774))

(assert (=> b!7254323 m!7934714))

(declare-fun m!7934776 () Bool)

(assert (=> b!7254322 m!7934776))

(declare-fun m!7934778 () Bool)

(assert (=> d!2255564 m!7934778))

(declare-fun m!7934780 () Bool)

(assert (=> d!2255564 m!7934780))

(assert (=> d!2255564 m!7934722))

(assert (=> b!7254030 d!2255564))

(assert (=> b!7254030 d!2255494))

(declare-fun b!7254329 () Bool)

(declare-fun e!4349817 () Bool)

(declare-fun tp!2037939 () Bool)

(declare-fun tp!2037940 () Bool)

(assert (=> b!7254329 (= e!4349817 (and tp!2037939 tp!2037940))))

(assert (=> b!7254028 (= tp!2037920 e!4349817)))

(assert (= (and b!7254028 ((_ is Cons!70433) (exprs!8099 ct1!232))) b!7254329))

(declare-fun b!7254334 () Bool)

(declare-fun e!4349820 () Bool)

(declare-fun tp!2037943 () Bool)

(assert (=> b!7254334 (= e!4349820 (and tp_is_empty!46783 tp!2037943))))

(assert (=> b!7254032 (= tp!2037922 e!4349820)))

(assert (= (and b!7254032 ((_ is Cons!70434) (t!384618 s1!1971))) b!7254334))

(declare-fun b!7254335 () Bool)

(declare-fun e!4349821 () Bool)

(declare-fun tp!2037944 () Bool)

(assert (=> b!7254335 (= e!4349821 (and tp_is_empty!46783 tp!2037944))))

(assert (=> b!7254041 (= tp!2037921 e!4349821)))

(assert (= (and b!7254041 ((_ is Cons!70434) (t!384618 s2!1849))) b!7254335))

(declare-fun b!7254336 () Bool)

(declare-fun e!4349822 () Bool)

(declare-fun tp!2037945 () Bool)

(declare-fun tp!2037946 () Bool)

(assert (=> b!7254336 (= e!4349822 (and tp!2037945 tp!2037946))))

(assert (=> b!7254036 (= tp!2037919 e!4349822)))

(assert (= (and b!7254036 ((_ is Cons!70433) (exprs!8099 ct2!328))) b!7254336))

(declare-fun b_lambda!278789 () Bool)

(assert (= b_lambda!278783 (or b!7254035 b_lambda!278789)))

(declare-fun bs!1907047 () Bool)

(declare-fun d!2255566 () Bool)

(assert (= bs!1907047 (and d!2255566 b!7254035)))

(assert (=> bs!1907047 (= (dynLambda!28768 lambda!444824 lt!2586455) (derivationStepZipperUp!2483 lt!2586455 (h!76882 s1!1971)))))

(assert (=> bs!1907047 m!7934270))

(assert (=> d!2255520 d!2255566))

(declare-fun b_lambda!278791 () Bool)

(assert (= b_lambda!278787 (or b!7254034 b_lambda!278791)))

(declare-fun bs!1907048 () Bool)

(declare-fun d!2255568 () Bool)

(assert (= bs!1907048 (and d!2255568 b!7254034)))

(assert (=> bs!1907048 (= (dynLambda!28770 lambda!444823 lt!2586521) (matchZipper!3569 (store ((as const (Array Context!15198 Bool)) false) lt!2586521 true) (t!384618 s1!1971)))))

(declare-fun m!7934782 () Bool)

(assert (=> bs!1907048 m!7934782))

(assert (=> bs!1907048 m!7934782))

(declare-fun m!7934784 () Bool)

(assert (=> bs!1907048 m!7934784))

(assert (=> d!2255552 d!2255568))

(declare-fun b_lambda!278793 () Bool)

(assert (= b_lambda!278785 (or b!7254035 b_lambda!278793)))

(declare-fun bs!1907049 () Bool)

(declare-fun d!2255570 () Bool)

(assert (= bs!1907049 (and d!2255570 b!7254035)))

(assert (=> bs!1907049 (= (dynLambda!28768 lambda!444824 ct1!232) (derivationStepZipperUp!2483 ct1!232 (h!76882 s1!1971)))))

(assert (=> bs!1907049 m!7934276))

(assert (=> d!2255528 d!2255570))

(check-sat (not bm!660943) (not b!7254315) (not d!2255502) (not b!7254252) (not d!2255530) (not bs!1907047) (not d!2255506) (not b!7254257) (not d!2255552) (not b!7254286) (not bm!660930) (not b!7254258) (not b!7254335) (not b!7254314) (not d!2255504) (not d!2255556) (not d!2255550) (not d!2255508) (not d!2255510) (not d!2255542) (not d!2255538) (not b!7254280) (not bm!660917) (not d!2255544) (not bm!660916) (not b!7254296) (not d!2255490) (not bs!1907048) (not b!7254316) (not bm!660940) (not d!2255562) (not b!7254213) (not d!2255526) (not d!2255540) (not b!7254311) (not d!2255520) (not d!2255558) (not b!7254329) (not b!7254297) (not b!7254251) (not b!7254211) (not d!2255522) (not b!7254336) (not b!7254334) (not b!7254261) (not b!7254240) (not b!7254312) (not d!2255514) (not bm!660941) (not b!7254318) (not bs!1907049) (not bm!660935) (not b!7254262) (not b_lambda!278793) (not bm!660942) (not b!7254275) (not b!7254212) (not b_lambda!278789) (not b!7254322) (not b!7254277) (not b!7254255) (not bm!660936) (not b!7254215) (not bm!660934) tp_is_empty!46783 (not d!2255554) (not d!2255536) (not b!7254264) (not b!7254323) (not d!2255564) (not b!7254281) (not b!7254263) (not b_lambda!278791) (not d!2255546) (not d!2255532) (not b!7254202) (not d!2255494) (not d!2255528) (not b!7254256) (not d!2255534) (not b!7254204) (not d!2255512))
(check-sat)
(get-model)

(declare-fun c!1348695 () Bool)

(declare-fun c!1348696 () Bool)

(declare-fun call!661011 () List!70557)

(declare-fun c!1348693 () Bool)

(declare-fun call!661009 () (InoxSet Context!15198))

(declare-fun bm!661002 () Bool)

(assert (=> bm!661002 (= call!661009 (derivationStepZipperDown!2653 (ite c!1348696 (regOne!37831 (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (ite c!1348693 (regTwo!37830 (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (ite c!1348695 (regOne!37830 (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (reg!18988 (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))))))) (ite (or c!1348696 c!1348693) (ite c!1348562 lt!2586433 (Context!15199 call!660935)) (Context!15199 call!661011)) (h!76882 s1!1971)))))

(declare-fun b!7254642 () Bool)

(declare-fun e!4350013 () Bool)

(assert (=> b!7254642 (= e!4350013 (nullable!7919 (regOne!37830 (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))))))))

(declare-fun bm!661003 () Bool)

(declare-fun call!661008 () (InoxSet Context!15198))

(assert (=> bm!661003 (= call!661008 call!661009)))

(declare-fun b!7254643 () Bool)

(declare-fun e!4350017 () (InoxSet Context!15198))

(declare-fun e!4350016 () (InoxSet Context!15198))

(assert (=> b!7254643 (= e!4350017 e!4350016)))

(assert (=> b!7254643 (= c!1348696 ((_ is Union!18659) (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))))))

(declare-fun b!7254644 () Bool)

(declare-fun e!4350015 () (InoxSet Context!15198))

(declare-fun e!4350014 () (InoxSet Context!15198))

(assert (=> b!7254644 (= e!4350015 e!4350014)))

(assert (=> b!7254644 (= c!1348695 ((_ is Concat!27504) (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))))))

(declare-fun bm!661004 () Bool)

(declare-fun call!661007 () List!70557)

(assert (=> bm!661004 (= call!661011 call!661007)))

(declare-fun b!7254645 () Bool)

(declare-fun e!4350012 () (InoxSet Context!15198))

(assert (=> b!7254645 (= e!4350012 ((as const (Array Context!15198 Bool)) false))))

(declare-fun c!1348694 () Bool)

(declare-fun d!2255798 () Bool)

(assert (=> d!2255798 (= c!1348694 (and ((_ is ElementMatch!18659) (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (= (c!1348485 (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (h!76882 s1!1971))))))

(assert (=> d!2255798 (= (derivationStepZipperDown!2653 (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))) (ite c!1348562 lt!2586433 (Context!15199 call!660935)) (h!76882 s1!1971)) e!4350017)))

(declare-fun b!7254646 () Bool)

(declare-fun c!1348697 () Bool)

(assert (=> b!7254646 (= c!1348697 ((_ is Star!18659) (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))))))

(assert (=> b!7254646 (= e!4350014 e!4350012)))

(declare-fun bm!661005 () Bool)

(declare-fun call!661010 () (InoxSet Context!15198))

(assert (=> bm!661005 (= call!661010 call!661008)))

(declare-fun b!7254647 () Bool)

(assert (=> b!7254647 (= e!4350012 call!661010)))

(declare-fun b!7254648 () Bool)

(declare-fun call!661012 () (InoxSet Context!15198))

(assert (=> b!7254648 (= e!4350016 ((_ map or) call!661009 call!661012))))

(declare-fun b!7254649 () Bool)

(assert (=> b!7254649 (= e!4350017 (store ((as const (Array Context!15198 Bool)) false) (ite c!1348562 lt!2586433 (Context!15199 call!660935)) true))))

(declare-fun b!7254650 () Bool)

(assert (=> b!7254650 (= c!1348693 e!4350013)))

(declare-fun res!2942048 () Bool)

(assert (=> b!7254650 (=> (not res!2942048) (not e!4350013))))

(assert (=> b!7254650 (= res!2942048 ((_ is Concat!27504) (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))))))

(assert (=> b!7254650 (= e!4350016 e!4350015)))

(declare-fun bm!661006 () Bool)

(assert (=> bm!661006 (= call!661012 (derivationStepZipperDown!2653 (ite c!1348696 (regTwo!37831 (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (regOne!37830 (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))))) (ite c!1348696 (ite c!1348562 lt!2586433 (Context!15199 call!660935)) (Context!15199 call!661007)) (h!76882 s1!1971)))))

(declare-fun bm!661007 () Bool)

(assert (=> bm!661007 (= call!661007 ($colon$colon!2925 (exprs!8099 (ite c!1348562 lt!2586433 (Context!15199 call!660935))) (ite (or c!1348693 c!1348695) (regTwo!37830 (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (ite c!1348562 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))))))))

(declare-fun b!7254651 () Bool)

(assert (=> b!7254651 (= e!4350015 ((_ map or) call!661012 call!661008))))

(declare-fun b!7254652 () Bool)

(assert (=> b!7254652 (= e!4350014 call!661010)))

(assert (= (and d!2255798 c!1348694) b!7254649))

(assert (= (and d!2255798 (not c!1348694)) b!7254643))

(assert (= (and b!7254643 c!1348696) b!7254648))

(assert (= (and b!7254643 (not c!1348696)) b!7254650))

(assert (= (and b!7254650 res!2942048) b!7254642))

(assert (= (and b!7254650 c!1348693) b!7254651))

(assert (= (and b!7254650 (not c!1348693)) b!7254644))

(assert (= (and b!7254644 c!1348695) b!7254652))

(assert (= (and b!7254644 (not c!1348695)) b!7254646))

(assert (= (and b!7254646 c!1348697) b!7254647))

(assert (= (and b!7254646 (not c!1348697)) b!7254645))

(assert (= (or b!7254652 b!7254647) bm!661004))

(assert (= (or b!7254652 b!7254647) bm!661005))

(assert (= (or b!7254651 bm!661004) bm!661007))

(assert (= (or b!7254651 bm!661005) bm!661003))

(assert (= (or b!7254648 b!7254651) bm!661006))

(assert (= (or b!7254648 bm!661003) bm!661002))

(declare-fun m!7935188 () Bool)

(assert (=> bm!661002 m!7935188))

(declare-fun m!7935190 () Bool)

(assert (=> b!7254649 m!7935190))

(declare-fun m!7935192 () Bool)

(assert (=> b!7254642 m!7935192))

(declare-fun m!7935194 () Bool)

(assert (=> bm!661007 m!7935194))

(declare-fun m!7935196 () Bool)

(assert (=> bm!661006 m!7935196))

(assert (=> bm!660934 d!2255798))

(declare-fun d!2255800 () Bool)

(declare-fun c!1348698 () Bool)

(assert (=> d!2255800 (= c!1348698 (isEmpty!40561 (tail!14343 (++!16581 (t!384618 s1!1971) s2!1849))))))

(declare-fun e!4350018 () Bool)

(assert (=> d!2255800 (= (matchZipper!3569 (derivationStepZipper!3437 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true) (head!14915 (++!16581 (t!384618 s1!1971) s2!1849))) (tail!14343 (++!16581 (t!384618 s1!1971) s2!1849))) e!4350018)))

(declare-fun b!7254653 () Bool)

(assert (=> b!7254653 (= e!4350018 (nullableZipper!2921 (derivationStepZipper!3437 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true) (head!14915 (++!16581 (t!384618 s1!1971) s2!1849)))))))

(declare-fun b!7254654 () Bool)

(assert (=> b!7254654 (= e!4350018 (matchZipper!3569 (derivationStepZipper!3437 (derivationStepZipper!3437 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true) (head!14915 (++!16581 (t!384618 s1!1971) s2!1849))) (head!14915 (tail!14343 (++!16581 (t!384618 s1!1971) s2!1849)))) (tail!14343 (tail!14343 (++!16581 (t!384618 s1!1971) s2!1849)))))))

(assert (= (and d!2255800 c!1348698) b!7254653))

(assert (= (and d!2255800 (not c!1348698)) b!7254654))

(assert (=> d!2255800 m!7934752))

(declare-fun m!7935198 () Bool)

(assert (=> d!2255800 m!7935198))

(assert (=> b!7254653 m!7934750))

(declare-fun m!7935200 () Bool)

(assert (=> b!7254653 m!7935200))

(assert (=> b!7254654 m!7934752))

(declare-fun m!7935202 () Bool)

(assert (=> b!7254654 m!7935202))

(assert (=> b!7254654 m!7934750))

(assert (=> b!7254654 m!7935202))

(declare-fun m!7935204 () Bool)

(assert (=> b!7254654 m!7935204))

(assert (=> b!7254654 m!7934752))

(declare-fun m!7935206 () Bool)

(assert (=> b!7254654 m!7935206))

(assert (=> b!7254654 m!7935204))

(assert (=> b!7254654 m!7935206))

(declare-fun m!7935208 () Bool)

(assert (=> b!7254654 m!7935208))

(assert (=> b!7254315 d!2255800))

(declare-fun bs!1907212 () Bool)

(declare-fun d!2255802 () Bool)

(assert (= bs!1907212 (and d!2255802 b!7254035)))

(declare-fun lambda!444885 () Int)

(assert (=> bs!1907212 (= (= (head!14915 (++!16581 (t!384618 s1!1971) s2!1849)) (h!76882 s1!1971)) (= lambda!444885 lambda!444824))))

(declare-fun bs!1907213 () Bool)

(assert (= bs!1907213 (and d!2255802 d!2255504)))

(assert (=> bs!1907213 (= (= (head!14915 (++!16581 (t!384618 s1!1971) s2!1849)) (h!76882 s1!1971)) (= lambda!444885 lambda!444845))))

(declare-fun bs!1907214 () Bool)

(assert (= bs!1907214 (and d!2255802 d!2255562)))

(assert (=> bs!1907214 (= (= (head!14915 (++!16581 (t!384618 s1!1971) s2!1849)) (h!76882 s1!1971)) (= lambda!444885 lambda!444860))))

(assert (=> d!2255802 true))

(assert (=> d!2255802 (= (derivationStepZipper!3437 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true) (head!14915 (++!16581 (t!384618 s1!1971) s2!1849))) (flatMap!2824 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true) lambda!444885))))

(declare-fun bs!1907215 () Bool)

(assert (= bs!1907215 d!2255802))

(assert (=> bs!1907215 m!7934322))

(declare-fun m!7935210 () Bool)

(assert (=> bs!1907215 m!7935210))

(assert (=> b!7254315 d!2255802))

(declare-fun d!2255804 () Bool)

(assert (=> d!2255804 (= (head!14915 (++!16581 (t!384618 s1!1971) s2!1849)) (h!76882 (++!16581 (t!384618 s1!1971) s2!1849)))))

(assert (=> b!7254315 d!2255804))

(declare-fun d!2255806 () Bool)

(assert (=> d!2255806 (= (tail!14343 (++!16581 (t!384618 s1!1971) s2!1849)) (t!384618 (++!16581 (t!384618 s1!1971) s2!1849)))))

(assert (=> b!7254315 d!2255806))

(declare-fun d!2255808 () Bool)

(declare-fun lt!2586559 () Int)

(assert (=> d!2255808 (>= lt!2586559 0)))

(declare-fun e!4350021 () Int)

(assert (=> d!2255808 (= lt!2586559 e!4350021)))

(declare-fun c!1348701 () Bool)

(assert (=> d!2255808 (= c!1348701 ((_ is Nil!70434) lt!2586524))))

(assert (=> d!2255808 (= (size!41732 lt!2586524) lt!2586559)))

(declare-fun b!7254659 () Bool)

(assert (=> b!7254659 (= e!4350021 0)))

(declare-fun b!7254660 () Bool)

(assert (=> b!7254660 (= e!4350021 (+ 1 (size!41732 (t!384618 lt!2586524))))))

(assert (= (and d!2255808 c!1348701) b!7254659))

(assert (= (and d!2255808 (not c!1348701)) b!7254660))

(declare-fun m!7935212 () Bool)

(assert (=> b!7254660 m!7935212))

(assert (=> b!7254312 d!2255808))

(declare-fun d!2255810 () Bool)

(declare-fun lt!2586560 () Int)

(assert (=> d!2255810 (>= lt!2586560 0)))

(declare-fun e!4350022 () Int)

(assert (=> d!2255810 (= lt!2586560 e!4350022)))

(declare-fun c!1348702 () Bool)

(assert (=> d!2255810 (= c!1348702 ((_ is Nil!70434) (t!384618 s1!1971)))))

(assert (=> d!2255810 (= (size!41732 (t!384618 s1!1971)) lt!2586560)))

(declare-fun b!7254661 () Bool)

(assert (=> b!7254661 (= e!4350022 0)))

(declare-fun b!7254662 () Bool)

(assert (=> b!7254662 (= e!4350022 (+ 1 (size!41732 (t!384618 (t!384618 s1!1971)))))))

(assert (= (and d!2255810 c!1348702) b!7254661))

(assert (= (and d!2255810 (not c!1348702)) b!7254662))

(declare-fun m!7935214 () Bool)

(assert (=> b!7254662 m!7935214))

(assert (=> b!7254312 d!2255810))

(declare-fun d!2255812 () Bool)

(declare-fun lt!2586561 () Int)

(assert (=> d!2255812 (>= lt!2586561 0)))

(declare-fun e!4350023 () Int)

(assert (=> d!2255812 (= lt!2586561 e!4350023)))

(declare-fun c!1348703 () Bool)

(assert (=> d!2255812 (= c!1348703 ((_ is Nil!70434) s2!1849))))

(assert (=> d!2255812 (= (size!41732 s2!1849) lt!2586561)))

(declare-fun b!7254663 () Bool)

(assert (=> b!7254663 (= e!4350023 0)))

(declare-fun b!7254664 () Bool)

(assert (=> b!7254664 (= e!4350023 (+ 1 (size!41732 (t!384618 s2!1849))))))

(assert (= (and d!2255812 c!1348703) b!7254663))

(assert (= (and d!2255812 (not c!1348703)) b!7254664))

(declare-fun m!7935216 () Bool)

(assert (=> b!7254664 m!7935216))

(assert (=> b!7254312 d!2255812))

(declare-fun d!2255814 () Bool)

(declare-fun lt!2586564 () Int)

(assert (=> d!2255814 (>= lt!2586564 0)))

(declare-fun e!4350026 () Int)

(assert (=> d!2255814 (= lt!2586564 e!4350026)))

(declare-fun c!1348706 () Bool)

(assert (=> d!2255814 (= c!1348706 ((_ is Nil!70433) lt!2586531))))

(assert (=> d!2255814 (= (size!41731 lt!2586531) lt!2586564)))

(declare-fun b!7254669 () Bool)

(assert (=> b!7254669 (= e!4350026 0)))

(declare-fun b!7254670 () Bool)

(assert (=> b!7254670 (= e!4350026 (+ 1 (size!41731 (t!384617 lt!2586531))))))

(assert (= (and d!2255814 c!1348706) b!7254669))

(assert (= (and d!2255814 (not c!1348706)) b!7254670))

(declare-fun m!7935218 () Bool)

(assert (=> b!7254670 m!7935218))

(assert (=> b!7254323 d!2255814))

(declare-fun d!2255816 () Bool)

(declare-fun lt!2586565 () Int)

(assert (=> d!2255816 (>= lt!2586565 0)))

(declare-fun e!4350027 () Int)

(assert (=> d!2255816 (= lt!2586565 e!4350027)))

(declare-fun c!1348707 () Bool)

(assert (=> d!2255816 (= c!1348707 ((_ is Nil!70433) (exprs!8099 ct1!232)))))

(assert (=> d!2255816 (= (size!41731 (exprs!8099 ct1!232)) lt!2586565)))

(declare-fun b!7254671 () Bool)

(assert (=> b!7254671 (= e!4350027 0)))

(declare-fun b!7254672 () Bool)

(assert (=> b!7254672 (= e!4350027 (+ 1 (size!41731 (t!384617 (exprs!8099 ct1!232)))))))

(assert (= (and d!2255816 c!1348707) b!7254671))

(assert (= (and d!2255816 (not c!1348707)) b!7254672))

(declare-fun m!7935220 () Bool)

(assert (=> b!7254672 m!7935220))

(assert (=> b!7254323 d!2255816))

(declare-fun d!2255818 () Bool)

(declare-fun lt!2586566 () Int)

(assert (=> d!2255818 (>= lt!2586566 0)))

(declare-fun e!4350028 () Int)

(assert (=> d!2255818 (= lt!2586566 e!4350028)))

(declare-fun c!1348708 () Bool)

(assert (=> d!2255818 (= c!1348708 ((_ is Nil!70433) (exprs!8099 ct2!328)))))

(assert (=> d!2255818 (= (size!41731 (exprs!8099 ct2!328)) lt!2586566)))

(declare-fun b!7254673 () Bool)

(assert (=> b!7254673 (= e!4350028 0)))

(declare-fun b!7254674 () Bool)

(assert (=> b!7254674 (= e!4350028 (+ 1 (size!41731 (t!384617 (exprs!8099 ct2!328)))))))

(assert (= (and d!2255818 c!1348708) b!7254673))

(assert (= (and d!2255818 (not c!1348708)) b!7254674))

(declare-fun m!7935222 () Bool)

(assert (=> b!7254674 m!7935222))

(assert (=> b!7254323 d!2255818))

(declare-fun d!2255820 () Bool)

(declare-fun c!1348709 () Bool)

(assert (=> d!2255820 (= c!1348709 (isEmpty!40561 (tail!14343 (t!384618 s1!1971))))))

(declare-fun e!4350029 () Bool)

(assert (=> d!2255820 (= (matchZipper!3569 (derivationStepZipper!3437 lt!2586454 (head!14915 (t!384618 s1!1971))) (tail!14343 (t!384618 s1!1971))) e!4350029)))

(declare-fun b!7254675 () Bool)

(assert (=> b!7254675 (= e!4350029 (nullableZipper!2921 (derivationStepZipper!3437 lt!2586454 (head!14915 (t!384618 s1!1971)))))))

(declare-fun b!7254676 () Bool)

(assert (=> b!7254676 (= e!4350029 (matchZipper!3569 (derivationStepZipper!3437 (derivationStepZipper!3437 lt!2586454 (head!14915 (t!384618 s1!1971))) (head!14915 (tail!14343 (t!384618 s1!1971)))) (tail!14343 (tail!14343 (t!384618 s1!1971)))))))

(assert (= (and d!2255820 c!1348709) b!7254675))

(assert (= (and d!2255820 (not c!1348709)) b!7254676))

(assert (=> d!2255820 m!7934578))

(declare-fun m!7935224 () Bool)

(assert (=> d!2255820 m!7935224))

(assert (=> b!7254675 m!7934606))

(declare-fun m!7935226 () Bool)

(assert (=> b!7254675 m!7935226))

(assert (=> b!7254676 m!7934578))

(declare-fun m!7935228 () Bool)

(assert (=> b!7254676 m!7935228))

(assert (=> b!7254676 m!7934606))

(assert (=> b!7254676 m!7935228))

(declare-fun m!7935230 () Bool)

(assert (=> b!7254676 m!7935230))

(assert (=> b!7254676 m!7934578))

(declare-fun m!7935232 () Bool)

(assert (=> b!7254676 m!7935232))

(assert (=> b!7254676 m!7935230))

(assert (=> b!7254676 m!7935232))

(declare-fun m!7935234 () Bool)

(assert (=> b!7254676 m!7935234))

(assert (=> b!7254252 d!2255820))

(declare-fun bs!1907216 () Bool)

(declare-fun d!2255822 () Bool)

(assert (= bs!1907216 (and d!2255822 b!7254035)))

(declare-fun lambda!444886 () Int)

(assert (=> bs!1907216 (= (= (head!14915 (t!384618 s1!1971)) (h!76882 s1!1971)) (= lambda!444886 lambda!444824))))

(declare-fun bs!1907217 () Bool)

(assert (= bs!1907217 (and d!2255822 d!2255504)))

(assert (=> bs!1907217 (= (= (head!14915 (t!384618 s1!1971)) (h!76882 s1!1971)) (= lambda!444886 lambda!444845))))

(declare-fun bs!1907218 () Bool)

(assert (= bs!1907218 (and d!2255822 d!2255562)))

(assert (=> bs!1907218 (= (= (head!14915 (t!384618 s1!1971)) (h!76882 s1!1971)) (= lambda!444886 lambda!444860))))

(declare-fun bs!1907219 () Bool)

(assert (= bs!1907219 (and d!2255822 d!2255802)))

(assert (=> bs!1907219 (= (= (head!14915 (t!384618 s1!1971)) (head!14915 (++!16581 (t!384618 s1!1971) s2!1849))) (= lambda!444886 lambda!444885))))

(assert (=> d!2255822 true))

(assert (=> d!2255822 (= (derivationStepZipper!3437 lt!2586454 (head!14915 (t!384618 s1!1971))) (flatMap!2824 lt!2586454 lambda!444886))))

(declare-fun bs!1907220 () Bool)

(assert (= bs!1907220 d!2255822))

(declare-fun m!7935236 () Bool)

(assert (=> bs!1907220 m!7935236))

(assert (=> b!7254252 d!2255822))

(declare-fun d!2255824 () Bool)

(assert (=> d!2255824 (= (head!14915 (t!384618 s1!1971)) (h!76882 (t!384618 s1!1971)))))

(assert (=> b!7254252 d!2255824))

(declare-fun d!2255826 () Bool)

(assert (=> d!2255826 (= (tail!14343 (t!384618 s1!1971)) (t!384618 (t!384618 s1!1971)))))

(assert (=> b!7254252 d!2255826))

(declare-fun c!1348710 () Bool)

(declare-fun call!661015 () (InoxSet Context!15198))

(declare-fun bm!661008 () Bool)

(declare-fun c!1348712 () Bool)

(declare-fun call!661017 () List!70557)

(declare-fun c!1348713 () Bool)

(assert (=> bm!661008 (= call!661015 (derivationStepZipperDown!2653 (ite c!1348713 (regOne!37831 (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (ite c!1348710 (regTwo!37830 (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (ite c!1348712 (regOne!37830 (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (reg!18988 (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))))))) (ite (or c!1348713 c!1348710) (ite (or c!1348573 c!1348570) lt!2586452 (Context!15199 call!660945)) (Context!15199 call!661017)) (h!76882 s1!1971)))))

(declare-fun b!7254677 () Bool)

(declare-fun e!4350031 () Bool)

(assert (=> b!7254677 (= e!4350031 (nullable!7919 (regOne!37830 (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))))))))

(declare-fun bm!661009 () Bool)

(declare-fun call!661014 () (InoxSet Context!15198))

(assert (=> bm!661009 (= call!661014 call!661015)))

(declare-fun b!7254678 () Bool)

(declare-fun e!4350035 () (InoxSet Context!15198))

(declare-fun e!4350034 () (InoxSet Context!15198))

(assert (=> b!7254678 (= e!4350035 e!4350034)))

(assert (=> b!7254678 (= c!1348713 ((_ is Union!18659) (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))))))

(declare-fun b!7254679 () Bool)

(declare-fun e!4350033 () (InoxSet Context!15198))

(declare-fun e!4350032 () (InoxSet Context!15198))

(assert (=> b!7254679 (= e!4350033 e!4350032)))

(assert (=> b!7254679 (= c!1348712 ((_ is Concat!27504) (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))))))

(declare-fun bm!661010 () Bool)

(declare-fun call!661013 () List!70557)

(assert (=> bm!661010 (= call!661017 call!661013)))

(declare-fun b!7254680 () Bool)

(declare-fun e!4350030 () (InoxSet Context!15198))

(assert (=> b!7254680 (= e!4350030 ((as const (Array Context!15198 Bool)) false))))

(declare-fun d!2255828 () Bool)

(declare-fun c!1348711 () Bool)

(assert (=> d!2255828 (= c!1348711 (and ((_ is ElementMatch!18659) (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (= (c!1348485 (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (h!76882 s1!1971))))))

(assert (=> d!2255828 (= (derivationStepZipperDown!2653 (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))) (ite (or c!1348573 c!1348570) lt!2586452 (Context!15199 call!660945)) (h!76882 s1!1971)) e!4350035)))

(declare-fun c!1348714 () Bool)

(declare-fun b!7254681 () Bool)

(assert (=> b!7254681 (= c!1348714 ((_ is Star!18659) (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))))))

(assert (=> b!7254681 (= e!4350032 e!4350030)))

(declare-fun bm!661011 () Bool)

(declare-fun call!661016 () (InoxSet Context!15198))

(assert (=> bm!661011 (= call!661016 call!661014)))

(declare-fun b!7254682 () Bool)

(assert (=> b!7254682 (= e!4350030 call!661016)))

(declare-fun b!7254683 () Bool)

(declare-fun call!661018 () (InoxSet Context!15198))

(assert (=> b!7254683 (= e!4350034 ((_ map or) call!661015 call!661018))))

(declare-fun b!7254684 () Bool)

(assert (=> b!7254684 (= e!4350035 (store ((as const (Array Context!15198 Bool)) false) (ite (or c!1348573 c!1348570) lt!2586452 (Context!15199 call!660945)) true))))

(declare-fun b!7254685 () Bool)

(assert (=> b!7254685 (= c!1348710 e!4350031)))

(declare-fun res!2942049 () Bool)

(assert (=> b!7254685 (=> (not res!2942049) (not e!4350031))))

(assert (=> b!7254685 (= res!2942049 ((_ is Concat!27504) (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))))))

(assert (=> b!7254685 (= e!4350034 e!4350033)))

(declare-fun bm!661012 () Bool)

(assert (=> bm!661012 (= call!661018 (derivationStepZipperDown!2653 (ite c!1348713 (regTwo!37831 (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (regOne!37830 (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))))) (ite c!1348713 (ite (or c!1348573 c!1348570) lt!2586452 (Context!15199 call!660945)) (Context!15199 call!661013)) (h!76882 s1!1971)))))

(declare-fun bm!661013 () Bool)

(assert (=> bm!661013 (= call!661013 ($colon$colon!2925 (exprs!8099 (ite (or c!1348573 c!1348570) lt!2586452 (Context!15199 call!660945))) (ite (or c!1348710 c!1348712) (regTwo!37830 (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (ite c!1348573 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348570 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348572 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))))))))

(declare-fun b!7254686 () Bool)

(assert (=> b!7254686 (= e!4350033 ((_ map or) call!661018 call!661014))))

(declare-fun b!7254687 () Bool)

(assert (=> b!7254687 (= e!4350032 call!661016)))

(assert (= (and d!2255828 c!1348711) b!7254684))

(assert (= (and d!2255828 (not c!1348711)) b!7254678))

(assert (= (and b!7254678 c!1348713) b!7254683))

(assert (= (and b!7254678 (not c!1348713)) b!7254685))

(assert (= (and b!7254685 res!2942049) b!7254677))

(assert (= (and b!7254685 c!1348710) b!7254686))

(assert (= (and b!7254685 (not c!1348710)) b!7254679))

(assert (= (and b!7254679 c!1348712) b!7254687))

(assert (= (and b!7254679 (not c!1348712)) b!7254681))

(assert (= (and b!7254681 c!1348714) b!7254682))

(assert (= (and b!7254681 (not c!1348714)) b!7254680))

(assert (= (or b!7254687 b!7254682) bm!661010))

(assert (= (or b!7254687 b!7254682) bm!661011))

(assert (= (or b!7254686 bm!661010) bm!661013))

(assert (= (or b!7254686 bm!661011) bm!661009))

(assert (= (or b!7254683 b!7254686) bm!661012))

(assert (= (or b!7254683 bm!661009) bm!661008))

(declare-fun m!7935238 () Bool)

(assert (=> bm!661008 m!7935238))

(declare-fun m!7935240 () Bool)

(assert (=> b!7254684 m!7935240))

(declare-fun m!7935242 () Bool)

(assert (=> b!7254677 m!7935242))

(declare-fun m!7935244 () Bool)

(assert (=> bm!661013 m!7935244))

(declare-fun m!7935246 () Bool)

(assert (=> bm!661012 m!7935246))

(assert (=> bm!660936 d!2255828))

(declare-fun d!2255830 () Bool)

(declare-fun c!1348715 () Bool)

(assert (=> d!2255830 (= c!1348715 (isEmpty!40561 (t!384618 s1!1971)))))

(declare-fun e!4350036 () Bool)

(assert (=> d!2255830 (= (matchZipper!3569 (store ((as const (Array Context!15198 Bool)) false) lt!2586521 true) (t!384618 s1!1971)) e!4350036)))

(declare-fun b!7254688 () Bool)

(assert (=> b!7254688 (= e!4350036 (nullableZipper!2921 (store ((as const (Array Context!15198 Bool)) false) lt!2586521 true)))))

(declare-fun b!7254689 () Bool)

(assert (=> b!7254689 (= e!4350036 (matchZipper!3569 (derivationStepZipper!3437 (store ((as const (Array Context!15198 Bool)) false) lt!2586521 true) (head!14915 (t!384618 s1!1971))) (tail!14343 (t!384618 s1!1971))))))

(assert (= (and d!2255830 c!1348715) b!7254688))

(assert (= (and d!2255830 (not c!1348715)) b!7254689))

(assert (=> d!2255830 m!7934570))

(assert (=> b!7254688 m!7934782))

(declare-fun m!7935248 () Bool)

(assert (=> b!7254688 m!7935248))

(assert (=> b!7254689 m!7934574))

(assert (=> b!7254689 m!7934782))

(assert (=> b!7254689 m!7934574))

(declare-fun m!7935250 () Bool)

(assert (=> b!7254689 m!7935250))

(assert (=> b!7254689 m!7934578))

(assert (=> b!7254689 m!7935250))

(assert (=> b!7254689 m!7934578))

(declare-fun m!7935252 () Bool)

(assert (=> b!7254689 m!7935252))

(assert (=> bs!1907048 d!2255830))

(declare-fun d!2255832 () Bool)

(declare-fun c!1348718 () Bool)

(assert (=> d!2255832 (= c!1348718 ((_ is Nil!70433) lt!2586518))))

(declare-fun e!4350039 () (InoxSet Regex!18659))

(assert (=> d!2255832 (= (content!14633 lt!2586518) e!4350039)))

(declare-fun b!7254694 () Bool)

(assert (=> b!7254694 (= e!4350039 ((as const (Array Regex!18659 Bool)) false))))

(declare-fun b!7254695 () Bool)

(assert (=> b!7254695 (= e!4350039 ((_ map or) (store ((as const (Array Regex!18659 Bool)) false) (h!76881 lt!2586518) true) (content!14633 (t!384617 lt!2586518))))))

(assert (= (and d!2255832 c!1348718) b!7254694))

(assert (= (and d!2255832 (not c!1348718)) b!7254695))

(declare-fun m!7935254 () Bool)

(assert (=> b!7254695 m!7935254))

(declare-fun m!7935256 () Bool)

(assert (=> b!7254695 m!7935256))

(assert (=> d!2255550 d!2255832))

(declare-fun d!2255834 () Bool)

(declare-fun c!1348719 () Bool)

(assert (=> d!2255834 (= c!1348719 ((_ is Nil!70433) (exprs!8099 lt!2586451)))))

(declare-fun e!4350040 () (InoxSet Regex!18659))

(assert (=> d!2255834 (= (content!14633 (exprs!8099 lt!2586451)) e!4350040)))

(declare-fun b!7254696 () Bool)

(assert (=> b!7254696 (= e!4350040 ((as const (Array Regex!18659 Bool)) false))))

(declare-fun b!7254697 () Bool)

(assert (=> b!7254697 (= e!4350040 ((_ map or) (store ((as const (Array Regex!18659 Bool)) false) (h!76881 (exprs!8099 lt!2586451)) true) (content!14633 (t!384617 (exprs!8099 lt!2586451)))))))

(assert (= (and d!2255834 c!1348719) b!7254696))

(assert (= (and d!2255834 (not c!1348719)) b!7254697))

(declare-fun m!7935258 () Bool)

(assert (=> b!7254697 m!7935258))

(declare-fun m!7935260 () Bool)

(assert (=> b!7254697 m!7935260))

(assert (=> d!2255550 d!2255834))

(declare-fun d!2255836 () Bool)

(declare-fun c!1348720 () Bool)

(assert (=> d!2255836 (= c!1348720 ((_ is Nil!70433) (exprs!8099 ct2!328)))))

(declare-fun e!4350041 () (InoxSet Regex!18659))

(assert (=> d!2255836 (= (content!14633 (exprs!8099 ct2!328)) e!4350041)))

(declare-fun b!7254698 () Bool)

(assert (=> b!7254698 (= e!4350041 ((as const (Array Regex!18659 Bool)) false))))

(declare-fun b!7254699 () Bool)

(assert (=> b!7254699 (= e!4350041 ((_ map or) (store ((as const (Array Regex!18659 Bool)) false) (h!76881 (exprs!8099 ct2!328)) true) (content!14633 (t!384617 (exprs!8099 ct2!328)))))))

(assert (= (and d!2255836 c!1348720) b!7254698))

(assert (= (and d!2255836 (not c!1348720)) b!7254699))

(declare-fun m!7935262 () Bool)

(assert (=> b!7254699 m!7935262))

(declare-fun m!7935264 () Bool)

(assert (=> b!7254699 m!7935264))

(assert (=> d!2255550 d!2255836))

(declare-fun d!2255838 () Bool)

(assert (=> d!2255838 (= (isEmpty!40561 (++!16581 (t!384618 s1!1971) s2!1849)) ((_ is Nil!70434) (++!16581 (t!384618 s1!1971) s2!1849)))))

(assert (=> d!2255556 d!2255838))

(declare-fun c!1348724 () Bool)

(declare-fun call!661023 () List!70557)

(declare-fun call!661021 () (InoxSet Context!15198))

(declare-fun c!1348723 () Bool)

(declare-fun bm!661014 () Bool)

(declare-fun c!1348721 () Bool)

(assert (=> bm!661014 (= call!661021 (derivationStepZipperDown!2653 (ite c!1348724 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348721 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348723 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))) (ite (or c!1348724 c!1348721) (Context!15199 (t!384617 (exprs!8099 ct1!232))) (Context!15199 call!661023)) (h!76882 s1!1971)))))

(declare-fun b!7254700 () Bool)

(declare-fun e!4350043 () Bool)

(assert (=> b!7254700 (= e!4350043 (nullable!7919 (regOne!37830 (h!76881 (exprs!8099 ct1!232)))))))

(declare-fun bm!661015 () Bool)

(declare-fun call!661020 () (InoxSet Context!15198))

(assert (=> bm!661015 (= call!661020 call!661021)))

(declare-fun b!7254701 () Bool)

(declare-fun e!4350047 () (InoxSet Context!15198))

(declare-fun e!4350046 () (InoxSet Context!15198))

(assert (=> b!7254701 (= e!4350047 e!4350046)))

(assert (=> b!7254701 (= c!1348724 ((_ is Union!18659) (h!76881 (exprs!8099 ct1!232))))))

(declare-fun b!7254702 () Bool)

(declare-fun e!4350045 () (InoxSet Context!15198))

(declare-fun e!4350044 () (InoxSet Context!15198))

(assert (=> b!7254702 (= e!4350045 e!4350044)))

(assert (=> b!7254702 (= c!1348723 ((_ is Concat!27504) (h!76881 (exprs!8099 ct1!232))))))

(declare-fun bm!661016 () Bool)

(declare-fun call!661019 () List!70557)

(assert (=> bm!661016 (= call!661023 call!661019)))

(declare-fun b!7254703 () Bool)

(declare-fun e!4350042 () (InoxSet Context!15198))

(assert (=> b!7254703 (= e!4350042 ((as const (Array Context!15198 Bool)) false))))

(declare-fun d!2255840 () Bool)

(declare-fun c!1348722 () Bool)

(assert (=> d!2255840 (= c!1348722 (and ((_ is ElementMatch!18659) (h!76881 (exprs!8099 ct1!232))) (= (c!1348485 (h!76881 (exprs!8099 ct1!232))) (h!76882 s1!1971))))))

(assert (=> d!2255840 (= (derivationStepZipperDown!2653 (h!76881 (exprs!8099 ct1!232)) (Context!15199 (t!384617 (exprs!8099 ct1!232))) (h!76882 s1!1971)) e!4350047)))

(declare-fun b!7254704 () Bool)

(declare-fun c!1348725 () Bool)

(assert (=> b!7254704 (= c!1348725 ((_ is Star!18659) (h!76881 (exprs!8099 ct1!232))))))

(assert (=> b!7254704 (= e!4350044 e!4350042)))

(declare-fun bm!661017 () Bool)

(declare-fun call!661022 () (InoxSet Context!15198))

(assert (=> bm!661017 (= call!661022 call!661020)))

(declare-fun b!7254705 () Bool)

(assert (=> b!7254705 (= e!4350042 call!661022)))

(declare-fun b!7254706 () Bool)

(declare-fun call!661024 () (InoxSet Context!15198))

(assert (=> b!7254706 (= e!4350046 ((_ map or) call!661021 call!661024))))

(declare-fun b!7254707 () Bool)

(assert (=> b!7254707 (= e!4350047 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (t!384617 (exprs!8099 ct1!232))) true))))

(declare-fun b!7254708 () Bool)

(assert (=> b!7254708 (= c!1348721 e!4350043)))

(declare-fun res!2942050 () Bool)

(assert (=> b!7254708 (=> (not res!2942050) (not e!4350043))))

(assert (=> b!7254708 (= res!2942050 ((_ is Concat!27504) (h!76881 (exprs!8099 ct1!232))))))

(assert (=> b!7254708 (= e!4350046 e!4350045)))

(declare-fun bm!661018 () Bool)

(assert (=> bm!661018 (= call!661024 (derivationStepZipperDown!2653 (ite c!1348724 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))) (ite c!1348724 (Context!15199 (t!384617 (exprs!8099 ct1!232))) (Context!15199 call!661019)) (h!76882 s1!1971)))))

(declare-fun bm!661019 () Bool)

(assert (=> bm!661019 (= call!661019 ($colon$colon!2925 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 ct1!232)))) (ite (or c!1348721 c!1348723) (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (h!76881 (exprs!8099 ct1!232)))))))

(declare-fun b!7254709 () Bool)

(assert (=> b!7254709 (= e!4350045 ((_ map or) call!661024 call!661020))))

(declare-fun b!7254710 () Bool)

(assert (=> b!7254710 (= e!4350044 call!661022)))

(assert (= (and d!2255840 c!1348722) b!7254707))

(assert (= (and d!2255840 (not c!1348722)) b!7254701))

(assert (= (and b!7254701 c!1348724) b!7254706))

(assert (= (and b!7254701 (not c!1348724)) b!7254708))

(assert (= (and b!7254708 res!2942050) b!7254700))

(assert (= (and b!7254708 c!1348721) b!7254709))

(assert (= (and b!7254708 (not c!1348721)) b!7254702))

(assert (= (and b!7254702 c!1348723) b!7254710))

(assert (= (and b!7254702 (not c!1348723)) b!7254704))

(assert (= (and b!7254704 c!1348725) b!7254705))

(assert (= (and b!7254704 (not c!1348725)) b!7254703))

(assert (= (or b!7254710 b!7254705) bm!661016))

(assert (= (or b!7254710 b!7254705) bm!661017))

(assert (= (or b!7254709 bm!661016) bm!661019))

(assert (= (or b!7254709 bm!661017) bm!661015))

(assert (= (or b!7254706 b!7254709) bm!661018))

(assert (= (or b!7254706 bm!661015) bm!661014))

(declare-fun m!7935266 () Bool)

(assert (=> bm!661014 m!7935266))

(declare-fun m!7935268 () Bool)

(assert (=> b!7254707 m!7935268))

(assert (=> b!7254700 m!7934598))

(declare-fun m!7935270 () Bool)

(assert (=> bm!661019 m!7935270))

(declare-fun m!7935272 () Bool)

(assert (=> bm!661018 m!7935272))

(assert (=> bm!660942 d!2255840))

(declare-fun bm!661020 () Bool)

(declare-fun c!1348729 () Bool)

(declare-fun c!1348728 () Bool)

(declare-fun call!661029 () List!70557)

(declare-fun call!661027 () (InoxSet Context!15198))

(declare-fun c!1348726 () Bool)

(assert (=> bm!661020 (= call!661027 (derivationStepZipperDown!2653 (ite c!1348729 (regOne!37831 (h!76881 (exprs!8099 lt!2586433))) (ite c!1348726 (regTwo!37830 (h!76881 (exprs!8099 lt!2586433))) (ite c!1348728 (regOne!37830 (h!76881 (exprs!8099 lt!2586433))) (reg!18988 (h!76881 (exprs!8099 lt!2586433)))))) (ite (or c!1348729 c!1348726) (Context!15199 (t!384617 (exprs!8099 lt!2586433))) (Context!15199 call!661029)) (h!76882 s1!1971)))))

(declare-fun b!7254711 () Bool)

(declare-fun e!4350049 () Bool)

(assert (=> b!7254711 (= e!4350049 (nullable!7919 (regOne!37830 (h!76881 (exprs!8099 lt!2586433)))))))

(declare-fun bm!661021 () Bool)

(declare-fun call!661026 () (InoxSet Context!15198))

(assert (=> bm!661021 (= call!661026 call!661027)))

(declare-fun b!7254712 () Bool)

(declare-fun e!4350053 () (InoxSet Context!15198))

(declare-fun e!4350052 () (InoxSet Context!15198))

(assert (=> b!7254712 (= e!4350053 e!4350052)))

(assert (=> b!7254712 (= c!1348729 ((_ is Union!18659) (h!76881 (exprs!8099 lt!2586433))))))

(declare-fun b!7254713 () Bool)

(declare-fun e!4350051 () (InoxSet Context!15198))

(declare-fun e!4350050 () (InoxSet Context!15198))

(assert (=> b!7254713 (= e!4350051 e!4350050)))

(assert (=> b!7254713 (= c!1348728 ((_ is Concat!27504) (h!76881 (exprs!8099 lt!2586433))))))

(declare-fun bm!661022 () Bool)

(declare-fun call!661025 () List!70557)

(assert (=> bm!661022 (= call!661029 call!661025)))

(declare-fun b!7254714 () Bool)

(declare-fun e!4350048 () (InoxSet Context!15198))

(assert (=> b!7254714 (= e!4350048 ((as const (Array Context!15198 Bool)) false))))

(declare-fun d!2255842 () Bool)

(declare-fun c!1348727 () Bool)

(assert (=> d!2255842 (= c!1348727 (and ((_ is ElementMatch!18659) (h!76881 (exprs!8099 lt!2586433))) (= (c!1348485 (h!76881 (exprs!8099 lt!2586433))) (h!76882 s1!1971))))))

(assert (=> d!2255842 (= (derivationStepZipperDown!2653 (h!76881 (exprs!8099 lt!2586433)) (Context!15199 (t!384617 (exprs!8099 lt!2586433))) (h!76882 s1!1971)) e!4350053)))

(declare-fun b!7254715 () Bool)

(declare-fun c!1348730 () Bool)

(assert (=> b!7254715 (= c!1348730 ((_ is Star!18659) (h!76881 (exprs!8099 lt!2586433))))))

(assert (=> b!7254715 (= e!4350050 e!4350048)))

(declare-fun bm!661023 () Bool)

(declare-fun call!661028 () (InoxSet Context!15198))

(assert (=> bm!661023 (= call!661028 call!661026)))

(declare-fun b!7254716 () Bool)

(assert (=> b!7254716 (= e!4350048 call!661028)))

(declare-fun b!7254717 () Bool)

(declare-fun call!661030 () (InoxSet Context!15198))

(assert (=> b!7254717 (= e!4350052 ((_ map or) call!661027 call!661030))))

(declare-fun b!7254718 () Bool)

(assert (=> b!7254718 (= e!4350053 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (t!384617 (exprs!8099 lt!2586433))) true))))

(declare-fun b!7254719 () Bool)

(assert (=> b!7254719 (= c!1348726 e!4350049)))

(declare-fun res!2942051 () Bool)

(assert (=> b!7254719 (=> (not res!2942051) (not e!4350049))))

(assert (=> b!7254719 (= res!2942051 ((_ is Concat!27504) (h!76881 (exprs!8099 lt!2586433))))))

(assert (=> b!7254719 (= e!4350052 e!4350051)))

(declare-fun bm!661024 () Bool)

(assert (=> bm!661024 (= call!661030 (derivationStepZipperDown!2653 (ite c!1348729 (regTwo!37831 (h!76881 (exprs!8099 lt!2586433))) (regOne!37830 (h!76881 (exprs!8099 lt!2586433)))) (ite c!1348729 (Context!15199 (t!384617 (exprs!8099 lt!2586433))) (Context!15199 call!661025)) (h!76882 s1!1971)))))

(declare-fun bm!661025 () Bool)

(assert (=> bm!661025 (= call!661025 ($colon$colon!2925 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586433)))) (ite (or c!1348726 c!1348728) (regTwo!37830 (h!76881 (exprs!8099 lt!2586433))) (h!76881 (exprs!8099 lt!2586433)))))))

(declare-fun b!7254720 () Bool)

(assert (=> b!7254720 (= e!4350051 ((_ map or) call!661030 call!661026))))

(declare-fun b!7254721 () Bool)

(assert (=> b!7254721 (= e!4350050 call!661028)))

(assert (= (and d!2255842 c!1348727) b!7254718))

(assert (= (and d!2255842 (not c!1348727)) b!7254712))

(assert (= (and b!7254712 c!1348729) b!7254717))

(assert (= (and b!7254712 (not c!1348729)) b!7254719))

(assert (= (and b!7254719 res!2942051) b!7254711))

(assert (= (and b!7254719 c!1348726) b!7254720))

(assert (= (and b!7254719 (not c!1348726)) b!7254713))

(assert (= (and b!7254713 c!1348728) b!7254721))

(assert (= (and b!7254713 (not c!1348728)) b!7254715))

(assert (= (and b!7254715 c!1348730) b!7254716))

(assert (= (and b!7254715 (not c!1348730)) b!7254714))

(assert (= (or b!7254721 b!7254716) bm!661022))

(assert (= (or b!7254721 b!7254716) bm!661023))

(assert (= (or b!7254720 bm!661022) bm!661025))

(assert (= (or b!7254720 bm!661023) bm!661021))

(assert (= (or b!7254717 b!7254720) bm!661024))

(assert (= (or b!7254717 bm!661021) bm!661020))

(declare-fun m!7935274 () Bool)

(assert (=> bm!661020 m!7935274))

(declare-fun m!7935276 () Bool)

(assert (=> b!7254718 m!7935276))

(declare-fun m!7935278 () Bool)

(assert (=> b!7254711 m!7935278))

(declare-fun m!7935280 () Bool)

(assert (=> bm!661025 m!7935280))

(declare-fun m!7935282 () Bool)

(assert (=> bm!661024 m!7935282))

(assert (=> bm!660916 d!2255842))

(declare-fun d!2255844 () Bool)

(declare-fun res!2942056 () Bool)

(declare-fun e!4350058 () Bool)

(assert (=> d!2255844 (=> res!2942056 e!4350058)))

(assert (=> d!2255844 (= res!2942056 ((_ is Nil!70435) lt!2586444))))

(assert (=> d!2255844 (= (forall!17509 lt!2586444 lambda!444853) e!4350058)))

(declare-fun b!7254726 () Bool)

(declare-fun e!4350059 () Bool)

(assert (=> b!7254726 (= e!4350058 e!4350059)))

(declare-fun res!2942057 () Bool)

(assert (=> b!7254726 (=> (not res!2942057) (not e!4350059))))

(assert (=> b!7254726 (= res!2942057 (dynLambda!28770 lambda!444853 (h!76883 lt!2586444)))))

(declare-fun b!7254727 () Bool)

(assert (=> b!7254727 (= e!4350059 (forall!17509 (t!384619 lt!2586444) lambda!444853))))

(assert (= (and d!2255844 (not res!2942056)) b!7254726))

(assert (= (and b!7254726 res!2942057) b!7254727))

(declare-fun b_lambda!278845 () Bool)

(assert (=> (not b_lambda!278845) (not b!7254726)))

(declare-fun m!7935284 () Bool)

(assert (=> b!7254726 m!7935284))

(declare-fun m!7935286 () Bool)

(assert (=> b!7254727 m!7935286))

(assert (=> d!2255540 d!2255844))

(declare-fun d!2255846 () Bool)

(assert (=> d!2255846 (= (isEmpty!40561 (t!384618 s1!1971)) ((_ is Nil!70434) (t!384618 s1!1971)))))

(assert (=> d!2255502 d!2255846))

(declare-fun d!2255848 () Bool)

(declare-fun res!2942062 () Bool)

(declare-fun e!4350064 () Bool)

(assert (=> d!2255848 (=> res!2942062 e!4350064)))

(assert (=> d!2255848 (= res!2942062 ((_ is Nil!70433) (exprs!8099 ct2!328)))))

(assert (=> d!2255848 (= (forall!17508 (exprs!8099 ct2!328) lambda!444850) e!4350064)))

(declare-fun b!7254732 () Bool)

(declare-fun e!4350065 () Bool)

(assert (=> b!7254732 (= e!4350064 e!4350065)))

(declare-fun res!2942063 () Bool)

(assert (=> b!7254732 (=> (not res!2942063) (not e!4350065))))

(declare-fun dynLambda!28772 (Int Regex!18659) Bool)

(assert (=> b!7254732 (= res!2942063 (dynLambda!28772 lambda!444850 (h!76881 (exprs!8099 ct2!328))))))

(declare-fun b!7254733 () Bool)

(assert (=> b!7254733 (= e!4350065 (forall!17508 (t!384617 (exprs!8099 ct2!328)) lambda!444850))))

(assert (= (and d!2255848 (not res!2942062)) b!7254732))

(assert (= (and b!7254732 res!2942063) b!7254733))

(declare-fun b_lambda!278847 () Bool)

(assert (=> (not b_lambda!278847) (not b!7254732)))

(declare-fun m!7935288 () Bool)

(assert (=> b!7254732 m!7935288))

(declare-fun m!7935290 () Bool)

(assert (=> b!7254733 m!7935290))

(assert (=> d!2255536 d!2255848))

(declare-fun d!2255850 () Bool)

(declare-fun c!1348731 () Bool)

(assert (=> d!2255850 (= c!1348731 (isEmpty!40561 (tail!14343 (t!384618 s1!1971))))))

(declare-fun e!4350066 () Bool)

(assert (=> d!2255850 (= (matchZipper!3569 (derivationStepZipper!3437 lt!2586443 (head!14915 (t!384618 s1!1971))) (tail!14343 (t!384618 s1!1971))) e!4350066)))

(declare-fun b!7254734 () Bool)

(assert (=> b!7254734 (= e!4350066 (nullableZipper!2921 (derivationStepZipper!3437 lt!2586443 (head!14915 (t!384618 s1!1971)))))))

(declare-fun b!7254735 () Bool)

(assert (=> b!7254735 (= e!4350066 (matchZipper!3569 (derivationStepZipper!3437 (derivationStepZipper!3437 lt!2586443 (head!14915 (t!384618 s1!1971))) (head!14915 (tail!14343 (t!384618 s1!1971)))) (tail!14343 (tail!14343 (t!384618 s1!1971)))))))

(assert (= (and d!2255850 c!1348731) b!7254734))

(assert (= (and d!2255850 (not c!1348731)) b!7254735))

(assert (=> d!2255850 m!7934578))

(assert (=> d!2255850 m!7935224))

(assert (=> b!7254734 m!7934638))

(declare-fun m!7935292 () Bool)

(assert (=> b!7254734 m!7935292))

(assert (=> b!7254735 m!7934578))

(assert (=> b!7254735 m!7935228))

(assert (=> b!7254735 m!7934638))

(assert (=> b!7254735 m!7935228))

(declare-fun m!7935294 () Bool)

(assert (=> b!7254735 m!7935294))

(assert (=> b!7254735 m!7934578))

(assert (=> b!7254735 m!7935232))

(assert (=> b!7254735 m!7935294))

(assert (=> b!7254735 m!7935232))

(declare-fun m!7935296 () Bool)

(assert (=> b!7254735 m!7935296))

(assert (=> b!7254263 d!2255850))

(declare-fun bs!1907221 () Bool)

(declare-fun d!2255852 () Bool)

(assert (= bs!1907221 (and d!2255852 d!2255802)))

(declare-fun lambda!444887 () Int)

(assert (=> bs!1907221 (= (= (head!14915 (t!384618 s1!1971)) (head!14915 (++!16581 (t!384618 s1!1971) s2!1849))) (= lambda!444887 lambda!444885))))

(declare-fun bs!1907222 () Bool)

(assert (= bs!1907222 (and d!2255852 d!2255562)))

(assert (=> bs!1907222 (= (= (head!14915 (t!384618 s1!1971)) (h!76882 s1!1971)) (= lambda!444887 lambda!444860))))

(declare-fun bs!1907223 () Bool)

(assert (= bs!1907223 (and d!2255852 b!7254035)))

(assert (=> bs!1907223 (= (= (head!14915 (t!384618 s1!1971)) (h!76882 s1!1971)) (= lambda!444887 lambda!444824))))

(declare-fun bs!1907224 () Bool)

(assert (= bs!1907224 (and d!2255852 d!2255504)))

(assert (=> bs!1907224 (= (= (head!14915 (t!384618 s1!1971)) (h!76882 s1!1971)) (= lambda!444887 lambda!444845))))

(declare-fun bs!1907225 () Bool)

(assert (= bs!1907225 (and d!2255852 d!2255822)))

(assert (=> bs!1907225 (= lambda!444887 lambda!444886)))

(assert (=> d!2255852 true))

(assert (=> d!2255852 (= (derivationStepZipper!3437 lt!2586443 (head!14915 (t!384618 s1!1971))) (flatMap!2824 lt!2586443 lambda!444887))))

(declare-fun bs!1907226 () Bool)

(assert (= bs!1907226 d!2255852))

(declare-fun m!7935298 () Bool)

(assert (=> bs!1907226 m!7935298))

(assert (=> b!7254263 d!2255852))

(assert (=> b!7254263 d!2255824))

(assert (=> b!7254263 d!2255826))

(declare-fun bs!1907227 () Bool)

(declare-fun d!2255854 () Bool)

(assert (= bs!1907227 (and d!2255854 b!7254034)))

(declare-fun lambda!444890 () Int)

(assert (=> bs!1907227 (not (= lambda!444890 lambda!444823))))

(declare-fun bs!1907228 () Bool)

(assert (= bs!1907228 (and d!2255854 d!2255540)))

(assert (=> bs!1907228 (not (= lambda!444890 lambda!444853))))

(declare-fun bs!1907229 () Bool)

(assert (= bs!1907229 (and d!2255854 d!2255542)))

(assert (=> bs!1907229 (not (= lambda!444890 lambda!444856))))

(assert (=> d!2255854 (= (nullableZipper!2921 lt!2586453) (exists!4396 lt!2586453 lambda!444890))))

(declare-fun bs!1907230 () Bool)

(assert (= bs!1907230 d!2255854))

(declare-fun m!7935300 () Bool)

(assert (=> bs!1907230 m!7935300))

(assert (=> b!7254280 d!2255854))

(declare-fun d!2255856 () Bool)

(assert (=> d!2255856 (= (nullable!7919 (h!76881 (exprs!8099 lt!2586452))) (nullableFct!3110 (h!76881 (exprs!8099 lt!2586452))))))

(declare-fun bs!1907231 () Bool)

(assert (= bs!1907231 d!2255856))

(declare-fun m!7935302 () Bool)

(assert (=> bs!1907231 m!7935302))

(assert (=> b!7254318 d!2255856))

(declare-fun d!2255858 () Bool)

(declare-fun c!1348734 () Bool)

(assert (=> d!2255858 (= c!1348734 ((_ is Nil!70433) lt!2586531))))

(declare-fun e!4350067 () (InoxSet Regex!18659))

(assert (=> d!2255858 (= (content!14633 lt!2586531) e!4350067)))

(declare-fun b!7254736 () Bool)

(assert (=> b!7254736 (= e!4350067 ((as const (Array Regex!18659 Bool)) false))))

(declare-fun b!7254737 () Bool)

(assert (=> b!7254737 (= e!4350067 ((_ map or) (store ((as const (Array Regex!18659 Bool)) false) (h!76881 lt!2586531) true) (content!14633 (t!384617 lt!2586531))))))

(assert (= (and d!2255858 c!1348734) b!7254736))

(assert (= (and d!2255858 (not c!1348734)) b!7254737))

(declare-fun m!7935304 () Bool)

(assert (=> b!7254737 m!7935304))

(declare-fun m!7935306 () Bool)

(assert (=> b!7254737 m!7935306))

(assert (=> d!2255564 d!2255858))

(declare-fun d!2255860 () Bool)

(declare-fun c!1348735 () Bool)

(assert (=> d!2255860 (= c!1348735 ((_ is Nil!70433) (exprs!8099 ct1!232)))))

(declare-fun e!4350068 () (InoxSet Regex!18659))

(assert (=> d!2255860 (= (content!14633 (exprs!8099 ct1!232)) e!4350068)))

(declare-fun b!7254738 () Bool)

(assert (=> b!7254738 (= e!4350068 ((as const (Array Regex!18659 Bool)) false))))

(declare-fun b!7254739 () Bool)

(assert (=> b!7254739 (= e!4350068 ((_ map or) (store ((as const (Array Regex!18659 Bool)) false) (h!76881 (exprs!8099 ct1!232)) true) (content!14633 (t!384617 (exprs!8099 ct1!232)))))))

(assert (= (and d!2255860 c!1348735) b!7254738))

(assert (= (and d!2255860 (not c!1348735)) b!7254739))

(declare-fun m!7935308 () Bool)

(assert (=> b!7254739 m!7935308))

(declare-fun m!7935310 () Bool)

(assert (=> b!7254739 m!7935310))

(assert (=> d!2255564 d!2255860))

(assert (=> d!2255564 d!2255836))

(declare-fun call!661033 () (InoxSet Context!15198))

(declare-fun c!1348739 () Bool)

(declare-fun c!1348738 () Bool)

(declare-fun call!661035 () List!70557)

(declare-fun c!1348736 () Bool)

(declare-fun bm!661026 () Bool)

(assert (=> bm!661026 (= call!661033 (derivationStepZipperDown!2653 (ite c!1348739 (regOne!37831 (h!76881 (exprs!8099 lt!2586452))) (ite c!1348736 (regTwo!37830 (h!76881 (exprs!8099 lt!2586452))) (ite c!1348738 (regOne!37830 (h!76881 (exprs!8099 lt!2586452))) (reg!18988 (h!76881 (exprs!8099 lt!2586452)))))) (ite (or c!1348739 c!1348736) (Context!15199 (t!384617 (exprs!8099 lt!2586452))) (Context!15199 call!661035)) (h!76882 s1!1971)))))

(declare-fun b!7254740 () Bool)

(declare-fun e!4350070 () Bool)

(assert (=> b!7254740 (= e!4350070 (nullable!7919 (regOne!37830 (h!76881 (exprs!8099 lt!2586452)))))))

(declare-fun bm!661027 () Bool)

(declare-fun call!661032 () (InoxSet Context!15198))

(assert (=> bm!661027 (= call!661032 call!661033)))

(declare-fun b!7254741 () Bool)

(declare-fun e!4350074 () (InoxSet Context!15198))

(declare-fun e!4350073 () (InoxSet Context!15198))

(assert (=> b!7254741 (= e!4350074 e!4350073)))

(assert (=> b!7254741 (= c!1348739 ((_ is Union!18659) (h!76881 (exprs!8099 lt!2586452))))))

(declare-fun b!7254742 () Bool)

(declare-fun e!4350072 () (InoxSet Context!15198))

(declare-fun e!4350071 () (InoxSet Context!15198))

(assert (=> b!7254742 (= e!4350072 e!4350071)))

(assert (=> b!7254742 (= c!1348738 ((_ is Concat!27504) (h!76881 (exprs!8099 lt!2586452))))))

(declare-fun bm!661028 () Bool)

(declare-fun call!661031 () List!70557)

(assert (=> bm!661028 (= call!661035 call!661031)))

(declare-fun b!7254743 () Bool)

(declare-fun e!4350069 () (InoxSet Context!15198))

(assert (=> b!7254743 (= e!4350069 ((as const (Array Context!15198 Bool)) false))))

(declare-fun d!2255862 () Bool)

(declare-fun c!1348737 () Bool)

(assert (=> d!2255862 (= c!1348737 (and ((_ is ElementMatch!18659) (h!76881 (exprs!8099 lt!2586452))) (= (c!1348485 (h!76881 (exprs!8099 lt!2586452))) (h!76882 s1!1971))))))

(assert (=> d!2255862 (= (derivationStepZipperDown!2653 (h!76881 (exprs!8099 lt!2586452)) (Context!15199 (t!384617 (exprs!8099 lt!2586452))) (h!76882 s1!1971)) e!4350074)))

(declare-fun b!7254744 () Bool)

(declare-fun c!1348740 () Bool)

(assert (=> b!7254744 (= c!1348740 ((_ is Star!18659) (h!76881 (exprs!8099 lt!2586452))))))

(assert (=> b!7254744 (= e!4350071 e!4350069)))

(declare-fun bm!661029 () Bool)

(declare-fun call!661034 () (InoxSet Context!15198))

(assert (=> bm!661029 (= call!661034 call!661032)))

(declare-fun b!7254745 () Bool)

(assert (=> b!7254745 (= e!4350069 call!661034)))

(declare-fun b!7254746 () Bool)

(declare-fun call!661036 () (InoxSet Context!15198))

(assert (=> b!7254746 (= e!4350073 ((_ map or) call!661033 call!661036))))

(declare-fun b!7254747 () Bool)

(assert (=> b!7254747 (= e!4350074 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (t!384617 (exprs!8099 lt!2586452))) true))))

(declare-fun b!7254748 () Bool)

(assert (=> b!7254748 (= c!1348736 e!4350070)))

(declare-fun res!2942064 () Bool)

(assert (=> b!7254748 (=> (not res!2942064) (not e!4350070))))

(assert (=> b!7254748 (= res!2942064 ((_ is Concat!27504) (h!76881 (exprs!8099 lt!2586452))))))

(assert (=> b!7254748 (= e!4350073 e!4350072)))

(declare-fun bm!661030 () Bool)

(assert (=> bm!661030 (= call!661036 (derivationStepZipperDown!2653 (ite c!1348739 (regTwo!37831 (h!76881 (exprs!8099 lt!2586452))) (regOne!37830 (h!76881 (exprs!8099 lt!2586452)))) (ite c!1348739 (Context!15199 (t!384617 (exprs!8099 lt!2586452))) (Context!15199 call!661031)) (h!76882 s1!1971)))))

(declare-fun bm!661031 () Bool)

(assert (=> bm!661031 (= call!661031 ($colon$colon!2925 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586452)))) (ite (or c!1348736 c!1348738) (regTwo!37830 (h!76881 (exprs!8099 lt!2586452))) (h!76881 (exprs!8099 lt!2586452)))))))

(declare-fun b!7254749 () Bool)

(assert (=> b!7254749 (= e!4350072 ((_ map or) call!661036 call!661032))))

(declare-fun b!7254750 () Bool)

(assert (=> b!7254750 (= e!4350071 call!661034)))

(assert (= (and d!2255862 c!1348737) b!7254747))

(assert (= (and d!2255862 (not c!1348737)) b!7254741))

(assert (= (and b!7254741 c!1348739) b!7254746))

(assert (= (and b!7254741 (not c!1348739)) b!7254748))

(assert (= (and b!7254748 res!2942064) b!7254740))

(assert (= (and b!7254748 c!1348736) b!7254749))

(assert (= (and b!7254748 (not c!1348736)) b!7254742))

(assert (= (and b!7254742 c!1348738) b!7254750))

(assert (= (and b!7254742 (not c!1348738)) b!7254744))

(assert (= (and b!7254744 c!1348740) b!7254745))

(assert (= (and b!7254744 (not c!1348740)) b!7254743))

(assert (= (or b!7254750 b!7254745) bm!661028))

(assert (= (or b!7254750 b!7254745) bm!661029))

(assert (= (or b!7254749 bm!661028) bm!661031))

(assert (= (or b!7254749 bm!661029) bm!661027))

(assert (= (or b!7254746 b!7254749) bm!661030))

(assert (= (or b!7254746 bm!661027) bm!661026))

(declare-fun m!7935312 () Bool)

(assert (=> bm!661026 m!7935312))

(declare-fun m!7935314 () Bool)

(assert (=> b!7254747 m!7935314))

(declare-fun m!7935316 () Bool)

(assert (=> b!7254740 m!7935316))

(declare-fun m!7935318 () Bool)

(assert (=> bm!661031 m!7935318))

(declare-fun m!7935320 () Bool)

(assert (=> bm!661030 m!7935320))

(assert (=> bm!660943 d!2255862))

(declare-fun bs!1907232 () Bool)

(declare-fun d!2255864 () Bool)

(assert (= bs!1907232 (and d!2255864 b!7254034)))

(declare-fun lambda!444891 () Int)

(assert (=> bs!1907232 (not (= lambda!444891 lambda!444823))))

(declare-fun bs!1907233 () Bool)

(assert (= bs!1907233 (and d!2255864 d!2255540)))

(assert (=> bs!1907233 (not (= lambda!444891 lambda!444853))))

(declare-fun bs!1907234 () Bool)

(assert (= bs!1907234 (and d!2255864 d!2255542)))

(assert (=> bs!1907234 (not (= lambda!444891 lambda!444856))))

(declare-fun bs!1907235 () Bool)

(assert (= bs!1907235 (and d!2255864 d!2255854)))

(assert (=> bs!1907235 (= lambda!444891 lambda!444890)))

(assert (=> d!2255864 (= (nullableZipper!2921 (store ((as const (Array Context!15198 Bool)) false) ct2!328 true)) (exists!4396 (store ((as const (Array Context!15198 Bool)) false) ct2!328 true) lambda!444891))))

(declare-fun bs!1907236 () Bool)

(assert (= bs!1907236 d!2255864))

(assert (=> bs!1907236 m!7934338))

(declare-fun m!7935322 () Bool)

(assert (=> bs!1907236 m!7935322))

(assert (=> b!7254255 d!2255864))

(declare-fun d!2255866 () Bool)

(declare-fun lt!2586567 () Int)

(assert (=> d!2255866 (>= lt!2586567 0)))

(declare-fun e!4350075 () Int)

(assert (=> d!2255866 (= lt!2586567 e!4350075)))

(declare-fun c!1348741 () Bool)

(assert (=> d!2255866 (= c!1348741 ((_ is Nil!70433) lt!2586518))))

(assert (=> d!2255866 (= (size!41731 lt!2586518) lt!2586567)))

(declare-fun b!7254751 () Bool)

(assert (=> b!7254751 (= e!4350075 0)))

(declare-fun b!7254752 () Bool)

(assert (=> b!7254752 (= e!4350075 (+ 1 (size!41731 (t!384617 lt!2586518))))))

(assert (= (and d!2255866 c!1348741) b!7254751))

(assert (= (and d!2255866 (not c!1348741)) b!7254752))

(declare-fun m!7935324 () Bool)

(assert (=> b!7254752 m!7935324))

(assert (=> b!7254297 d!2255866))

(declare-fun d!2255868 () Bool)

(declare-fun lt!2586568 () Int)

(assert (=> d!2255868 (>= lt!2586568 0)))

(declare-fun e!4350076 () Int)

(assert (=> d!2255868 (= lt!2586568 e!4350076)))

(declare-fun c!1348742 () Bool)

(assert (=> d!2255868 (= c!1348742 ((_ is Nil!70433) (exprs!8099 lt!2586451)))))

(assert (=> d!2255868 (= (size!41731 (exprs!8099 lt!2586451)) lt!2586568)))

(declare-fun b!7254753 () Bool)

(assert (=> b!7254753 (= e!4350076 0)))

(declare-fun b!7254754 () Bool)

(assert (=> b!7254754 (= e!4350076 (+ 1 (size!41731 (t!384617 (exprs!8099 lt!2586451)))))))

(assert (= (and d!2255868 c!1348742) b!7254753))

(assert (= (and d!2255868 (not c!1348742)) b!7254754))

(declare-fun m!7935326 () Bool)

(assert (=> b!7254754 m!7935326))

(assert (=> b!7254297 d!2255868))

(assert (=> b!7254297 d!2255818))

(declare-fun c!1348746 () Bool)

(declare-fun call!661039 () (InoxSet Context!15198))

(declare-fun c!1348743 () Bool)

(declare-fun call!661041 () List!70557)

(declare-fun c!1348745 () Bool)

(declare-fun bm!661032 () Bool)

(assert (=> bm!661032 (= call!661039 (derivationStepZipperDown!2653 (ite c!1348746 (regOne!37831 (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (ite c!1348743 (regTwo!37830 (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (ite c!1348745 (regOne!37830 (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (reg!18988 (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))))))) (ite (or c!1348746 c!1348743) (ite (or c!1348562 c!1348559) lt!2586433 (Context!15199 call!660939)) (Context!15199 call!661041)) (h!76882 s1!1971)))))

(declare-fun b!7254755 () Bool)

(declare-fun e!4350078 () Bool)

(assert (=> b!7254755 (= e!4350078 (nullable!7919 (regOne!37830 (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))))))))

(declare-fun bm!661033 () Bool)

(declare-fun call!661038 () (InoxSet Context!15198))

(assert (=> bm!661033 (= call!661038 call!661039)))

(declare-fun b!7254756 () Bool)

(declare-fun e!4350082 () (InoxSet Context!15198))

(declare-fun e!4350081 () (InoxSet Context!15198))

(assert (=> b!7254756 (= e!4350082 e!4350081)))

(assert (=> b!7254756 (= c!1348746 ((_ is Union!18659) (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))))))

(declare-fun b!7254757 () Bool)

(declare-fun e!4350080 () (InoxSet Context!15198))

(declare-fun e!4350079 () (InoxSet Context!15198))

(assert (=> b!7254757 (= e!4350080 e!4350079)))

(assert (=> b!7254757 (= c!1348745 ((_ is Concat!27504) (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))))))

(declare-fun bm!661034 () Bool)

(declare-fun call!661037 () List!70557)

(assert (=> bm!661034 (= call!661041 call!661037)))

(declare-fun b!7254758 () Bool)

(declare-fun e!4350077 () (InoxSet Context!15198))

(assert (=> b!7254758 (= e!4350077 ((as const (Array Context!15198 Bool)) false))))

(declare-fun d!2255870 () Bool)

(declare-fun c!1348744 () Bool)

(assert (=> d!2255870 (= c!1348744 (and ((_ is ElementMatch!18659) (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (= (c!1348485 (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (h!76882 s1!1971))))))

(assert (=> d!2255870 (= (derivationStepZipperDown!2653 (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))) (ite (or c!1348562 c!1348559) lt!2586433 (Context!15199 call!660939)) (h!76882 s1!1971)) e!4350082)))

(declare-fun b!7254759 () Bool)

(declare-fun c!1348747 () Bool)

(assert (=> b!7254759 (= c!1348747 ((_ is Star!18659) (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))))))

(assert (=> b!7254759 (= e!4350079 e!4350077)))

(declare-fun bm!661035 () Bool)

(declare-fun call!661040 () (InoxSet Context!15198))

(assert (=> bm!661035 (= call!661040 call!661038)))

(declare-fun b!7254760 () Bool)

(assert (=> b!7254760 (= e!4350077 call!661040)))

(declare-fun b!7254761 () Bool)

(declare-fun call!661042 () (InoxSet Context!15198))

(assert (=> b!7254761 (= e!4350081 ((_ map or) call!661039 call!661042))))

(declare-fun b!7254762 () Bool)

(assert (=> b!7254762 (= e!4350082 (store ((as const (Array Context!15198 Bool)) false) (ite (or c!1348562 c!1348559) lt!2586433 (Context!15199 call!660939)) true))))

(declare-fun b!7254763 () Bool)

(assert (=> b!7254763 (= c!1348743 e!4350078)))

(declare-fun res!2942065 () Bool)

(assert (=> b!7254763 (=> (not res!2942065) (not e!4350078))))

(assert (=> b!7254763 (= res!2942065 ((_ is Concat!27504) (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))))))

(assert (=> b!7254763 (= e!4350081 e!4350080)))

(declare-fun bm!661036 () Bool)

(assert (=> bm!661036 (= call!661042 (derivationStepZipperDown!2653 (ite c!1348746 (regTwo!37831 (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (regOne!37830 (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))))) (ite c!1348746 (ite (or c!1348562 c!1348559) lt!2586433 (Context!15199 call!660939)) (Context!15199 call!661037)) (h!76882 s1!1971)))))

(declare-fun bm!661037 () Bool)

(assert (=> bm!661037 (= call!661037 ($colon$colon!2925 (exprs!8099 (ite (or c!1348562 c!1348559) lt!2586433 (Context!15199 call!660939))) (ite (or c!1348743 c!1348745) (regTwo!37830 (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232))))))) (ite c!1348562 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (ite c!1348559 (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (ite c!1348561 (regOne!37830 (h!76881 (exprs!8099 ct1!232))) (reg!18988 (h!76881 (exprs!8099 ct1!232)))))))))))

(declare-fun b!7254764 () Bool)

(assert (=> b!7254764 (= e!4350080 ((_ map or) call!661042 call!661038))))

(declare-fun b!7254765 () Bool)

(assert (=> b!7254765 (= e!4350079 call!661040)))

(assert (= (and d!2255870 c!1348744) b!7254762))

(assert (= (and d!2255870 (not c!1348744)) b!7254756))

(assert (= (and b!7254756 c!1348746) b!7254761))

(assert (= (and b!7254756 (not c!1348746)) b!7254763))

(assert (= (and b!7254763 res!2942065) b!7254755))

(assert (= (and b!7254763 c!1348743) b!7254764))

(assert (= (and b!7254763 (not c!1348743)) b!7254757))

(assert (= (and b!7254757 c!1348745) b!7254765))

(assert (= (and b!7254757 (not c!1348745)) b!7254759))

(assert (= (and b!7254759 c!1348747) b!7254760))

(assert (= (and b!7254759 (not c!1348747)) b!7254758))

(assert (= (or b!7254765 b!7254760) bm!661034))

(assert (= (or b!7254765 b!7254760) bm!661035))

(assert (= (or b!7254764 bm!661034) bm!661037))

(assert (= (or b!7254764 bm!661035) bm!661033))

(assert (= (or b!7254761 b!7254764) bm!661036))

(assert (= (or b!7254761 bm!661033) bm!661032))

(declare-fun m!7935328 () Bool)

(assert (=> bm!661032 m!7935328))

(declare-fun m!7935330 () Bool)

(assert (=> b!7254762 m!7935330))

(declare-fun m!7935332 () Bool)

(assert (=> b!7254755 m!7935332))

(declare-fun m!7935334 () Bool)

(assert (=> bm!661037 m!7935334))

(declare-fun m!7935336 () Bool)

(assert (=> bm!661036 m!7935336))

(assert (=> bm!660930 d!2255870))

(declare-fun d!2255872 () Bool)

(assert (=> d!2255872 (= (isEmpty!40561 s1!1971) ((_ is Nil!70434) s1!1971))))

(assert (=> d!2255532 d!2255872))

(declare-fun d!2255874 () Bool)

(assert (=> d!2255874 (= (nullable!7919 (h!76881 (exprs!8099 lt!2586455))) (nullableFct!3110 (h!76881 (exprs!8099 lt!2586455))))))

(declare-fun bs!1907237 () Bool)

(assert (= bs!1907237 d!2255874))

(declare-fun m!7935338 () Bool)

(assert (=> bs!1907237 m!7935338))

(assert (=> b!7254215 d!2255874))

(declare-fun d!2255876 () Bool)

(declare-fun c!1348748 () Bool)

(assert (=> d!2255876 (= c!1348748 (isEmpty!40561 (tail!14343 (t!384618 s1!1971))))))

(declare-fun e!4350083 () Bool)

(assert (=> d!2255876 (= (matchZipper!3569 (derivationStepZipper!3437 lt!2586459 (head!14915 (t!384618 s1!1971))) (tail!14343 (t!384618 s1!1971))) e!4350083)))

(declare-fun b!7254766 () Bool)

(assert (=> b!7254766 (= e!4350083 (nullableZipper!2921 (derivationStepZipper!3437 lt!2586459 (head!14915 (t!384618 s1!1971)))))))

(declare-fun b!7254767 () Bool)

(assert (=> b!7254767 (= e!4350083 (matchZipper!3569 (derivationStepZipper!3437 (derivationStepZipper!3437 lt!2586459 (head!14915 (t!384618 s1!1971))) (head!14915 (tail!14343 (t!384618 s1!1971)))) (tail!14343 (tail!14343 (t!384618 s1!1971)))))))

(assert (= (and d!2255876 c!1348748) b!7254766))

(assert (= (and d!2255876 (not c!1348748)) b!7254767))

(assert (=> d!2255876 m!7934578))

(assert (=> d!2255876 m!7935224))

(assert (=> b!7254766 m!7934626))

(declare-fun m!7935340 () Bool)

(assert (=> b!7254766 m!7935340))

(assert (=> b!7254767 m!7934578))

(assert (=> b!7254767 m!7935228))

(assert (=> b!7254767 m!7934626))

(assert (=> b!7254767 m!7935228))

(declare-fun m!7935342 () Bool)

(assert (=> b!7254767 m!7935342))

(assert (=> b!7254767 m!7934578))

(assert (=> b!7254767 m!7935232))

(assert (=> b!7254767 m!7935342))

(assert (=> b!7254767 m!7935232))

(declare-fun m!7935344 () Bool)

(assert (=> b!7254767 m!7935344))

(assert (=> b!7254258 d!2255876))

(declare-fun bs!1907238 () Bool)

(declare-fun d!2255878 () Bool)

(assert (= bs!1907238 (and d!2255878 d!2255802)))

(declare-fun lambda!444892 () Int)

(assert (=> bs!1907238 (= (= (head!14915 (t!384618 s1!1971)) (head!14915 (++!16581 (t!384618 s1!1971) s2!1849))) (= lambda!444892 lambda!444885))))

(declare-fun bs!1907239 () Bool)

(assert (= bs!1907239 (and d!2255878 d!2255562)))

(assert (=> bs!1907239 (= (= (head!14915 (t!384618 s1!1971)) (h!76882 s1!1971)) (= lambda!444892 lambda!444860))))

(declare-fun bs!1907240 () Bool)

(assert (= bs!1907240 (and d!2255878 d!2255852)))

(assert (=> bs!1907240 (= lambda!444892 lambda!444887)))

(declare-fun bs!1907241 () Bool)

(assert (= bs!1907241 (and d!2255878 b!7254035)))

(assert (=> bs!1907241 (= (= (head!14915 (t!384618 s1!1971)) (h!76882 s1!1971)) (= lambda!444892 lambda!444824))))

(declare-fun bs!1907242 () Bool)

(assert (= bs!1907242 (and d!2255878 d!2255504)))

(assert (=> bs!1907242 (= (= (head!14915 (t!384618 s1!1971)) (h!76882 s1!1971)) (= lambda!444892 lambda!444845))))

(declare-fun bs!1907243 () Bool)

(assert (= bs!1907243 (and d!2255878 d!2255822)))

(assert (=> bs!1907243 (= lambda!444892 lambda!444886)))

(assert (=> d!2255878 true))

(assert (=> d!2255878 (= (derivationStepZipper!3437 lt!2586459 (head!14915 (t!384618 s1!1971))) (flatMap!2824 lt!2586459 lambda!444892))))

(declare-fun bs!1907244 () Bool)

(assert (= bs!1907244 d!2255878))

(declare-fun m!7935346 () Bool)

(assert (=> bs!1907244 m!7935346))

(assert (=> b!7254258 d!2255878))

(assert (=> b!7254258 d!2255824))

(assert (=> b!7254258 d!2255826))

(declare-fun d!2255880 () Bool)

(assert (=> d!2255880 (= (flatMap!2824 lt!2586453 lambda!444845) (choose!56075 lt!2586453 lambda!444845))))

(declare-fun bs!1907245 () Bool)

(assert (= bs!1907245 d!2255880))

(declare-fun m!7935348 () Bool)

(assert (=> bs!1907245 m!7935348))

(assert (=> d!2255504 d!2255880))

(declare-fun d!2255882 () Bool)

(declare-fun e!4350094 () Bool)

(assert (=> d!2255882 e!4350094))

(declare-fun res!2942071 () Bool)

(assert (=> d!2255882 (=> (not res!2942071) (not e!4350094))))

(declare-fun lt!2586574 () Context!15198)

(assert (=> d!2255882 (= res!2942071 (dynLambda!28770 lambda!444823 lt!2586574))))

(declare-fun e!4350093 () Context!15198)

(assert (=> d!2255882 (= lt!2586574 e!4350093)))

(declare-fun c!1348753 () Bool)

(declare-fun e!4350095 () Bool)

(assert (=> d!2255882 (= c!1348753 e!4350095)))

(declare-fun res!2942070 () Bool)

(assert (=> d!2255882 (=> (not res!2942070) (not e!4350095))))

(assert (=> d!2255882 (= res!2942070 ((_ is Cons!70435) (toList!11488 lt!2586454)))))

(assert (=> d!2255882 (exists!4397 (toList!11488 lt!2586454) lambda!444823)))

(assert (=> d!2255882 (= (getWitness!2226 (toList!11488 lt!2586454) lambda!444823) lt!2586574)))

(declare-fun b!7254780 () Bool)

(declare-fun e!4350092 () Context!15198)

(assert (=> b!7254780 (= e!4350092 (getWitness!2226 (t!384619 (toList!11488 lt!2586454)) lambda!444823))))

(declare-fun b!7254781 () Bool)

(declare-fun lt!2586573 () Unit!163907)

(declare-fun Unit!163910 () Unit!163907)

(assert (=> b!7254781 (= lt!2586573 Unit!163910)))

(assert (=> b!7254781 false))

(declare-fun head!14917 (List!70559) Context!15198)

(assert (=> b!7254781 (= e!4350092 (head!14917 (toList!11488 lt!2586454)))))

(declare-fun b!7254782 () Bool)

(declare-fun contains!20747 (List!70559 Context!15198) Bool)

(assert (=> b!7254782 (= e!4350094 (contains!20747 (toList!11488 lt!2586454) lt!2586574))))

(declare-fun b!7254783 () Bool)

(assert (=> b!7254783 (= e!4350093 (h!76883 (toList!11488 lt!2586454)))))

(declare-fun b!7254784 () Bool)

(assert (=> b!7254784 (= e!4350095 (dynLambda!28770 lambda!444823 (h!76883 (toList!11488 lt!2586454))))))

(declare-fun b!7254785 () Bool)

(assert (=> b!7254785 (= e!4350093 e!4350092)))

(declare-fun c!1348754 () Bool)

(assert (=> b!7254785 (= c!1348754 ((_ is Cons!70435) (toList!11488 lt!2586454)))))

(assert (= (and d!2255882 res!2942070) b!7254784))

(assert (= (and d!2255882 c!1348753) b!7254783))

(assert (= (and d!2255882 (not c!1348753)) b!7254785))

(assert (= (and b!7254785 c!1348754) b!7254780))

(assert (= (and b!7254785 (not c!1348754)) b!7254781))

(assert (= (and d!2255882 res!2942071) b!7254782))

(declare-fun b_lambda!278849 () Bool)

(assert (=> (not b_lambda!278849) (not d!2255882)))

(declare-fun b_lambda!278851 () Bool)

(assert (=> (not b_lambda!278851) (not b!7254784)))

(declare-fun m!7935350 () Bool)

(assert (=> d!2255882 m!7935350))

(assert (=> d!2255882 m!7934294))

(assert (=> d!2255882 m!7934684))

(assert (=> b!7254781 m!7934294))

(declare-fun m!7935352 () Bool)

(assert (=> b!7254781 m!7935352))

(assert (=> b!7254782 m!7934294))

(declare-fun m!7935354 () Bool)

(assert (=> b!7254782 m!7935354))

(declare-fun m!7935356 () Bool)

(assert (=> b!7254784 m!7935356))

(declare-fun m!7935358 () Bool)

(assert (=> b!7254780 m!7935358))

(assert (=> d!2255552 d!2255882))

(assert (=> d!2255552 d!2255544))

(assert (=> d!2255552 d!2255538))

(declare-fun bm!661038 () Bool)

(declare-fun call!661043 () (InoxSet Context!15198))

(assert (=> bm!661038 (= call!661043 (derivationStepZipperDown!2653 (h!76881 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586455))))) (Context!15199 (t!384617 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586455)))))) (h!76882 s1!1971)))))

(declare-fun d!2255884 () Bool)

(declare-fun c!1348755 () Bool)

(declare-fun e!4350096 () Bool)

(assert (=> d!2255884 (= c!1348755 e!4350096)))

(declare-fun res!2942072 () Bool)

(assert (=> d!2255884 (=> (not res!2942072) (not e!4350096))))

(assert (=> d!2255884 (= res!2942072 ((_ is Cons!70433) (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586455))))))))

(declare-fun e!4350097 () (InoxSet Context!15198))

(assert (=> d!2255884 (= (derivationStepZipperUp!2483 (Context!15199 (t!384617 (exprs!8099 lt!2586455))) (h!76882 s1!1971)) e!4350097)))

(declare-fun b!7254786 () Bool)

(assert (=> b!7254786 (= e!4350097 ((_ map or) call!661043 (derivationStepZipperUp!2483 (Context!15199 (t!384617 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586455)))))) (h!76882 s1!1971))))))

(declare-fun b!7254787 () Bool)

(declare-fun e!4350098 () (InoxSet Context!15198))

(assert (=> b!7254787 (= e!4350097 e!4350098)))

(declare-fun c!1348756 () Bool)

(assert (=> b!7254787 (= c!1348756 ((_ is Cons!70433) (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586455))))))))

(declare-fun b!7254788 () Bool)

(assert (=> b!7254788 (= e!4350096 (nullable!7919 (h!76881 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586455)))))))))

(declare-fun b!7254789 () Bool)

(assert (=> b!7254789 (= e!4350098 ((as const (Array Context!15198 Bool)) false))))

(declare-fun b!7254790 () Bool)

(assert (=> b!7254790 (= e!4350098 call!661043)))

(assert (= (and d!2255884 res!2942072) b!7254788))

(assert (= (and d!2255884 c!1348755) b!7254786))

(assert (= (and d!2255884 (not c!1348755)) b!7254787))

(assert (= (and b!7254787 c!1348756) b!7254790))

(assert (= (and b!7254787 (not c!1348756)) b!7254789))

(assert (= (or b!7254786 b!7254790) bm!661038))

(declare-fun m!7935360 () Bool)

(assert (=> bm!661038 m!7935360))

(declare-fun m!7935362 () Bool)

(assert (=> b!7254786 m!7935362))

(declare-fun m!7935364 () Bool)

(assert (=> b!7254788 m!7935364))

(assert (=> b!7254213 d!2255884))

(assert (=> d!2255508 d!2255846))

(declare-fun bs!1907246 () Bool)

(declare-fun d!2255886 () Bool)

(assert (= bs!1907246 (and d!2255886 b!7254034)))

(declare-fun lambda!444893 () Int)

(assert (=> bs!1907246 (not (= lambda!444893 lambda!444823))))

(declare-fun bs!1907247 () Bool)

(assert (= bs!1907247 (and d!2255886 d!2255540)))

(assert (=> bs!1907247 (not (= lambda!444893 lambda!444853))))

(declare-fun bs!1907248 () Bool)

(assert (= bs!1907248 (and d!2255886 d!2255542)))

(assert (=> bs!1907248 (not (= lambda!444893 lambda!444856))))

(declare-fun bs!1907249 () Bool)

(assert (= bs!1907249 (and d!2255886 d!2255854)))

(assert (=> bs!1907249 (= lambda!444893 lambda!444890)))

(declare-fun bs!1907250 () Bool)

(assert (= bs!1907250 (and d!2255886 d!2255864)))

(assert (=> bs!1907250 (= lambda!444893 lambda!444891)))

(assert (=> d!2255886 (= (nullableZipper!2921 lt!2586441) (exists!4396 lt!2586441 lambda!444893))))

(declare-fun bs!1907251 () Bool)

(assert (= bs!1907251 d!2255886))

(declare-fun m!7935366 () Bool)

(assert (=> bs!1907251 m!7935366))

(assert (=> b!7254211 d!2255886))

(declare-fun d!2255888 () Bool)

(assert (=> d!2255888 (= (flatMap!2824 lt!2586442 lambda!444860) (choose!56075 lt!2586442 lambda!444860))))

(declare-fun bs!1907252 () Bool)

(assert (= bs!1907252 d!2255888))

(declare-fun m!7935368 () Bool)

(assert (=> bs!1907252 m!7935368))

(assert (=> d!2255562 d!2255888))

(declare-fun d!2255890 () Bool)

(declare-fun res!2942073 () Bool)

(declare-fun e!4350099 () Bool)

(assert (=> d!2255890 (=> res!2942073 e!4350099)))

(assert (=> d!2255890 (= res!2942073 ((_ is Nil!70433) (++!16580 (exprs!8099 ct1!232) (exprs!8099 ct2!328))))))

(assert (=> d!2255890 (= (forall!17508 (++!16580 (exprs!8099 ct1!232) (exprs!8099 ct2!328)) lambda!444822) e!4350099)))

(declare-fun b!7254791 () Bool)

(declare-fun e!4350100 () Bool)

(assert (=> b!7254791 (= e!4350099 e!4350100)))

(declare-fun res!2942074 () Bool)

(assert (=> b!7254791 (=> (not res!2942074) (not e!4350100))))

(assert (=> b!7254791 (= res!2942074 (dynLambda!28772 lambda!444822 (h!76881 (++!16580 (exprs!8099 ct1!232) (exprs!8099 ct2!328)))))))

(declare-fun b!7254792 () Bool)

(assert (=> b!7254792 (= e!4350100 (forall!17508 (t!384617 (++!16580 (exprs!8099 ct1!232) (exprs!8099 ct2!328))) lambda!444822))))

(assert (= (and d!2255890 (not res!2942073)) b!7254791))

(assert (= (and b!7254791 res!2942074) b!7254792))

(declare-fun b_lambda!278853 () Bool)

(assert (=> (not b_lambda!278853) (not b!7254791)))

(declare-fun m!7935370 () Bool)

(assert (=> b!7254791 m!7935370))

(declare-fun m!7935372 () Bool)

(assert (=> b!7254792 m!7935372))

(assert (=> d!2255494 d!2255890))

(assert (=> d!2255494 d!2255564))

(declare-fun d!2255892 () Bool)

(assert (=> d!2255892 (forall!17508 (++!16580 (exprs!8099 ct1!232) (exprs!8099 ct2!328)) lambda!444822)))

(assert (=> d!2255892 true))

(declare-fun _$78!788 () Unit!163907)

(assert (=> d!2255892 (= (choose!56072 (exprs!8099 ct1!232) (exprs!8099 ct2!328) lambda!444822) _$78!788)))

(declare-fun bs!1907253 () Bool)

(assert (= bs!1907253 d!2255892))

(assert (=> bs!1907253 m!7934308))

(assert (=> bs!1907253 m!7934308))

(assert (=> bs!1907253 m!7934582))

(assert (=> d!2255494 d!2255892))

(declare-fun d!2255894 () Bool)

(declare-fun res!2942075 () Bool)

(declare-fun e!4350101 () Bool)

(assert (=> d!2255894 (=> res!2942075 e!4350101)))

(assert (=> d!2255894 (= res!2942075 ((_ is Nil!70433) (exprs!8099 ct1!232)))))

(assert (=> d!2255894 (= (forall!17508 (exprs!8099 ct1!232) lambda!444822) e!4350101)))

(declare-fun b!7254793 () Bool)

(declare-fun e!4350102 () Bool)

(assert (=> b!7254793 (= e!4350101 e!4350102)))

(declare-fun res!2942076 () Bool)

(assert (=> b!7254793 (=> (not res!2942076) (not e!4350102))))

(assert (=> b!7254793 (= res!2942076 (dynLambda!28772 lambda!444822 (h!76881 (exprs!8099 ct1!232))))))

(declare-fun b!7254794 () Bool)

(assert (=> b!7254794 (= e!4350102 (forall!17508 (t!384617 (exprs!8099 ct1!232)) lambda!444822))))

(assert (= (and d!2255894 (not res!2942075)) b!7254793))

(assert (= (and b!7254793 res!2942076) b!7254794))

(declare-fun b_lambda!278855 () Bool)

(assert (=> (not b_lambda!278855) (not b!7254793)))

(declare-fun m!7935374 () Bool)

(assert (=> b!7254793 m!7935374))

(declare-fun m!7935376 () Bool)

(assert (=> b!7254794 m!7935376))

(assert (=> d!2255494 d!2255894))

(declare-fun b!7254809 () Bool)

(declare-fun e!4350118 () Bool)

(declare-fun e!4350119 () Bool)

(assert (=> b!7254809 (= e!4350118 e!4350119)))

(declare-fun res!2942091 () Bool)

(assert (=> b!7254809 (=> res!2942091 e!4350119)))

(assert (=> b!7254809 (= res!2942091 ((_ is Star!18659) (h!76881 (exprs!8099 ct1!232))))))

(declare-fun b!7254810 () Bool)

(declare-fun e!4350116 () Bool)

(assert (=> b!7254810 (= e!4350119 e!4350116)))

(declare-fun c!1348759 () Bool)

(assert (=> b!7254810 (= c!1348759 ((_ is Union!18659) (h!76881 (exprs!8099 ct1!232))))))

(declare-fun b!7254811 () Bool)

(declare-fun e!4350120 () Bool)

(assert (=> b!7254811 (= e!4350116 e!4350120)))

(declare-fun res!2942089 () Bool)

(declare-fun call!661048 () Bool)

(assert (=> b!7254811 (= res!2942089 call!661048)))

(assert (=> b!7254811 (=> (not res!2942089) (not e!4350120))))

(declare-fun bm!661043 () Bool)

(declare-fun call!661049 () Bool)

(assert (=> bm!661043 (= call!661049 (nullable!7919 (ite c!1348759 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regTwo!37830 (h!76881 (exprs!8099 ct1!232))))))))

(declare-fun b!7254813 () Bool)

(declare-fun e!4350115 () Bool)

(assert (=> b!7254813 (= e!4350115 call!661049)))

(declare-fun b!7254814 () Bool)

(assert (=> b!7254814 (= e!4350116 e!4350115)))

(declare-fun res!2942087 () Bool)

(assert (=> b!7254814 (= res!2942087 call!661048)))

(assert (=> b!7254814 (=> res!2942087 e!4350115)))

(declare-fun b!7254812 () Bool)

(assert (=> b!7254812 (= e!4350120 call!661049)))

(declare-fun d!2255896 () Bool)

(declare-fun res!2942090 () Bool)

(declare-fun e!4350117 () Bool)

(assert (=> d!2255896 (=> res!2942090 e!4350117)))

(assert (=> d!2255896 (= res!2942090 ((_ is EmptyExpr!18659) (h!76881 (exprs!8099 ct1!232))))))

(assert (=> d!2255896 (= (nullableFct!3110 (h!76881 (exprs!8099 ct1!232))) e!4350117)))

(declare-fun bm!661044 () Bool)

(assert (=> bm!661044 (= call!661048 (nullable!7919 (ite c!1348759 (regOne!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))))))

(declare-fun b!7254815 () Bool)

(assert (=> b!7254815 (= e!4350117 e!4350118)))

(declare-fun res!2942088 () Bool)

(assert (=> b!7254815 (=> (not res!2942088) (not e!4350118))))

(assert (=> b!7254815 (= res!2942088 (and (not ((_ is EmptyLang!18659) (h!76881 (exprs!8099 ct1!232)))) (not ((_ is ElementMatch!18659) (h!76881 (exprs!8099 ct1!232))))))))

(assert (= (and d!2255896 (not res!2942090)) b!7254815))

(assert (= (and b!7254815 res!2942088) b!7254809))

(assert (= (and b!7254809 (not res!2942091)) b!7254810))

(assert (= (and b!7254810 c!1348759) b!7254814))

(assert (= (and b!7254810 (not c!1348759)) b!7254811))

(assert (= (and b!7254814 (not res!2942087)) b!7254813))

(assert (= (and b!7254811 res!2942089) b!7254812))

(assert (= (or b!7254813 b!7254812) bm!661043))

(assert (= (or b!7254814 b!7254811) bm!661044))

(declare-fun m!7935378 () Bool)

(assert (=> bm!661043 m!7935378))

(declare-fun m!7935380 () Bool)

(assert (=> bm!661044 m!7935380))

(assert (=> d!2255522 d!2255896))

(declare-fun bs!1907254 () Bool)

(declare-fun d!2255898 () Bool)

(assert (= bs!1907254 (and d!2255898 b!7254034)))

(declare-fun lambda!444894 () Int)

(assert (=> bs!1907254 (not (= lambda!444894 lambda!444823))))

(declare-fun bs!1907255 () Bool)

(assert (= bs!1907255 (and d!2255898 d!2255886)))

(assert (=> bs!1907255 (not (= lambda!444894 lambda!444893))))

(declare-fun bs!1907256 () Bool)

(assert (= bs!1907256 (and d!2255898 d!2255540)))

(assert (=> bs!1907256 (= (= lambda!444856 lambda!444823) (= lambda!444894 lambda!444853))))

(declare-fun bs!1907257 () Bool)

(assert (= bs!1907257 (and d!2255898 d!2255542)))

(assert (=> bs!1907257 (not (= lambda!444894 lambda!444856))))

(declare-fun bs!1907258 () Bool)

(assert (= bs!1907258 (and d!2255898 d!2255854)))

(assert (=> bs!1907258 (not (= lambda!444894 lambda!444890))))

(declare-fun bs!1907259 () Bool)

(assert (= bs!1907259 (and d!2255898 d!2255864)))

(assert (=> bs!1907259 (not (= lambda!444894 lambda!444891))))

(assert (=> d!2255898 true))

(assert (=> d!2255898 (< (dynLambda!28769 order!28997 lambda!444856) (dynLambda!28769 order!28997 lambda!444894))))

(assert (=> d!2255898 (= (exists!4397 lt!2586444 lambda!444856) (not (forall!17509 lt!2586444 lambda!444894)))))

(declare-fun bs!1907260 () Bool)

(assert (= bs!1907260 d!2255898))

(declare-fun m!7935382 () Bool)

(assert (=> bs!1907260 m!7935382))

(assert (=> d!2255542 d!2255898))

(declare-fun bs!1907261 () Bool)

(declare-fun d!2255900 () Bool)

(assert (= bs!1907261 (and d!2255900 d!2255898)))

(declare-fun lambda!444897 () Int)

(assert (=> bs!1907261 (not (= lambda!444897 lambda!444894))))

(declare-fun bs!1907262 () Bool)

(assert (= bs!1907262 (and d!2255900 b!7254034)))

(assert (=> bs!1907262 (= lambda!444897 lambda!444823)))

(declare-fun bs!1907263 () Bool)

(assert (= bs!1907263 (and d!2255900 d!2255886)))

(assert (=> bs!1907263 (not (= lambda!444897 lambda!444893))))

(declare-fun bs!1907264 () Bool)

(assert (= bs!1907264 (and d!2255900 d!2255540)))

(assert (=> bs!1907264 (not (= lambda!444897 lambda!444853))))

(declare-fun bs!1907265 () Bool)

(assert (= bs!1907265 (and d!2255900 d!2255542)))

(assert (=> bs!1907265 (= lambda!444897 lambda!444856)))

(declare-fun bs!1907266 () Bool)

(assert (= bs!1907266 (and d!2255900 d!2255854)))

(assert (=> bs!1907266 (not (= lambda!444897 lambda!444890))))

(declare-fun bs!1907267 () Bool)

(assert (= bs!1907267 (and d!2255900 d!2255864)))

(assert (=> bs!1907267 (not (= lambda!444897 lambda!444891))))

(assert (=> d!2255900 true))

(assert (=> d!2255900 (exists!4397 lt!2586444 lambda!444897)))

(assert (=> d!2255900 true))

(declare-fun _$60!1243 () Unit!163907)

(assert (=> d!2255900 (= (choose!56077 lt!2586444 (t!384618 s1!1971)) _$60!1243)))

(declare-fun bs!1907268 () Bool)

(assert (= bs!1907268 d!2255900))

(declare-fun m!7935384 () Bool)

(assert (=> bs!1907268 m!7935384))

(assert (=> d!2255542 d!2255900))

(declare-fun d!2255902 () Bool)

(declare-fun c!1348762 () Bool)

(assert (=> d!2255902 (= c!1348762 (isEmpty!40561 (t!384618 s1!1971)))))

(declare-fun e!4350121 () Bool)

(assert (=> d!2255902 (= (matchZipper!3569 (content!14632 lt!2586444) (t!384618 s1!1971)) e!4350121)))

(declare-fun b!7254816 () Bool)

(assert (=> b!7254816 (= e!4350121 (nullableZipper!2921 (content!14632 lt!2586444)))))

(declare-fun b!7254817 () Bool)

(assert (=> b!7254817 (= e!4350121 (matchZipper!3569 (derivationStepZipper!3437 (content!14632 lt!2586444) (head!14915 (t!384618 s1!1971))) (tail!14343 (t!384618 s1!1971))))))

(assert (= (and d!2255902 c!1348762) b!7254816))

(assert (= (and d!2255902 (not c!1348762)) b!7254817))

(assert (=> d!2255902 m!7934570))

(assert (=> b!7254816 m!7934694))

(declare-fun m!7935386 () Bool)

(assert (=> b!7254816 m!7935386))

(assert (=> b!7254817 m!7934574))

(assert (=> b!7254817 m!7934694))

(assert (=> b!7254817 m!7934574))

(declare-fun m!7935388 () Bool)

(assert (=> b!7254817 m!7935388))

(assert (=> b!7254817 m!7934578))

(assert (=> b!7254817 m!7935388))

(assert (=> b!7254817 m!7934578))

(declare-fun m!7935390 () Bool)

(assert (=> b!7254817 m!7935390))

(assert (=> d!2255542 d!2255902))

(declare-fun d!2255904 () Bool)

(declare-fun c!1348765 () Bool)

(assert (=> d!2255904 (= c!1348765 ((_ is Nil!70435) lt!2586444))))

(declare-fun e!4350124 () (InoxSet Context!15198))

(assert (=> d!2255904 (= (content!14632 lt!2586444) e!4350124)))

(declare-fun b!7254822 () Bool)

(assert (=> b!7254822 (= e!4350124 ((as const (Array Context!15198 Bool)) false))))

(declare-fun b!7254823 () Bool)

(assert (=> b!7254823 (= e!4350124 ((_ map or) (store ((as const (Array Context!15198 Bool)) false) (h!76883 lt!2586444) true) (content!14632 (t!384619 lt!2586444))))))

(assert (= (and d!2255904 c!1348765) b!7254822))

(assert (= (and d!2255904 (not c!1348765)) b!7254823))

(declare-fun m!7935392 () Bool)

(assert (=> b!7254823 m!7935392))

(declare-fun m!7935394 () Bool)

(assert (=> b!7254823 m!7935394))

(assert (=> d!2255542 d!2255904))

(declare-fun d!2255906 () Bool)

(assert (=> d!2255906 (= (nullable!7919 (regOne!37830 (h!76881 (exprs!8099 ct1!232)))) (nullableFct!3110 (regOne!37830 (h!76881 (exprs!8099 ct1!232)))))))

(declare-fun bs!1907269 () Bool)

(assert (= bs!1907269 d!2255906))

(declare-fun m!7935396 () Bool)

(assert (=> bs!1907269 m!7935396))

(assert (=> b!7254264 d!2255906))

(declare-fun bs!1907270 () Bool)

(declare-fun d!2255908 () Bool)

(assert (= bs!1907270 (and d!2255908 d!2255898)))

(declare-fun lambda!444898 () Int)

(assert (=> bs!1907270 (not (= lambda!444898 lambda!444894))))

(declare-fun bs!1907271 () Bool)

(assert (= bs!1907271 (and d!2255908 b!7254034)))

(assert (=> bs!1907271 (not (= lambda!444898 lambda!444823))))

(declare-fun bs!1907272 () Bool)

(assert (= bs!1907272 (and d!2255908 d!2255540)))

(assert (=> bs!1907272 (not (= lambda!444898 lambda!444853))))

(declare-fun bs!1907273 () Bool)

(assert (= bs!1907273 (and d!2255908 d!2255542)))

(assert (=> bs!1907273 (not (= lambda!444898 lambda!444856))))

(declare-fun bs!1907274 () Bool)

(assert (= bs!1907274 (and d!2255908 d!2255854)))

(assert (=> bs!1907274 (= lambda!444898 lambda!444890)))

(declare-fun bs!1907275 () Bool)

(assert (= bs!1907275 (and d!2255908 d!2255864)))

(assert (=> bs!1907275 (= lambda!444898 lambda!444891)))

(declare-fun bs!1907276 () Bool)

(assert (= bs!1907276 (and d!2255908 d!2255900)))

(assert (=> bs!1907276 (not (= lambda!444898 lambda!444897))))

(declare-fun bs!1907277 () Bool)

(assert (= bs!1907277 (and d!2255908 d!2255886)))

(assert (=> bs!1907277 (= lambda!444898 lambda!444893)))

(assert (=> d!2255908 (= (nullableZipper!2921 lt!2586454) (exists!4396 lt!2586454 lambda!444898))))

(declare-fun bs!1907278 () Bool)

(assert (= bs!1907278 d!2255908))

(declare-fun m!7935398 () Bool)

(assert (=> bs!1907278 m!7935398))

(assert (=> b!7254251 d!2255908))

(declare-fun bs!1907279 () Bool)

(declare-fun d!2255910 () Bool)

(assert (= bs!1907279 (and d!2255910 d!2255898)))

(declare-fun lambda!444899 () Int)

(assert (=> bs!1907279 (not (= lambda!444899 lambda!444894))))

(declare-fun bs!1907280 () Bool)

(assert (= bs!1907280 (and d!2255910 b!7254034)))

(assert (=> bs!1907280 (not (= lambda!444899 lambda!444823))))

(declare-fun bs!1907281 () Bool)

(assert (= bs!1907281 (and d!2255910 d!2255908)))

(assert (=> bs!1907281 (= lambda!444899 lambda!444898)))

(declare-fun bs!1907282 () Bool)

(assert (= bs!1907282 (and d!2255910 d!2255540)))

(assert (=> bs!1907282 (not (= lambda!444899 lambda!444853))))

(declare-fun bs!1907283 () Bool)

(assert (= bs!1907283 (and d!2255910 d!2255542)))

(assert (=> bs!1907283 (not (= lambda!444899 lambda!444856))))

(declare-fun bs!1907284 () Bool)

(assert (= bs!1907284 (and d!2255910 d!2255854)))

(assert (=> bs!1907284 (= lambda!444899 lambda!444890)))

(declare-fun bs!1907285 () Bool)

(assert (= bs!1907285 (and d!2255910 d!2255864)))

(assert (=> bs!1907285 (= lambda!444899 lambda!444891)))

(declare-fun bs!1907286 () Bool)

(assert (= bs!1907286 (and d!2255910 d!2255900)))

(assert (=> bs!1907286 (not (= lambda!444899 lambda!444897))))

(declare-fun bs!1907287 () Bool)

(assert (= bs!1907287 (and d!2255910 d!2255886)))

(assert (=> bs!1907287 (= lambda!444899 lambda!444893)))

(assert (=> d!2255910 (= (nullableZipper!2921 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true)) (exists!4396 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true) lambda!444899))))

(declare-fun bs!1907288 () Bool)

(assert (= bs!1907288 d!2255910))

(assert (=> bs!1907288 m!7934322))

(declare-fun m!7935400 () Bool)

(assert (=> bs!1907288 m!7935400))

(assert (=> b!7254314 d!2255910))

(declare-fun d!2255912 () Bool)

(declare-fun e!4350126 () Bool)

(assert (=> d!2255912 e!4350126))

(declare-fun res!2942093 () Bool)

(assert (=> d!2255912 (=> (not res!2942093) (not e!4350126))))

(declare-fun lt!2586575 () List!70558)

(assert (=> d!2255912 (= res!2942093 (= (content!14634 lt!2586575) ((_ map or) (content!14634 (t!384618 (t!384618 s1!1971))) (content!14634 s2!1849))))))

(declare-fun e!4350125 () List!70558)

(assert (=> d!2255912 (= lt!2586575 e!4350125)))

(declare-fun c!1348766 () Bool)

(assert (=> d!2255912 (= c!1348766 ((_ is Nil!70434) (t!384618 (t!384618 s1!1971))))))

(assert (=> d!2255912 (= (++!16581 (t!384618 (t!384618 s1!1971)) s2!1849) lt!2586575)))

(declare-fun b!7254825 () Bool)

(assert (=> b!7254825 (= e!4350125 (Cons!70434 (h!76882 (t!384618 (t!384618 s1!1971))) (++!16581 (t!384618 (t!384618 (t!384618 s1!1971))) s2!1849)))))

(declare-fun b!7254827 () Bool)

(assert (=> b!7254827 (= e!4350126 (or (not (= s2!1849 Nil!70434)) (= lt!2586575 (t!384618 (t!384618 s1!1971)))))))

(declare-fun b!7254824 () Bool)

(assert (=> b!7254824 (= e!4350125 s2!1849)))

(declare-fun b!7254826 () Bool)

(declare-fun res!2942092 () Bool)

(assert (=> b!7254826 (=> (not res!2942092) (not e!4350126))))

(assert (=> b!7254826 (= res!2942092 (= (size!41732 lt!2586575) (+ (size!41732 (t!384618 (t!384618 s1!1971))) (size!41732 s2!1849))))))

(assert (= (and d!2255912 c!1348766) b!7254824))

(assert (= (and d!2255912 (not c!1348766)) b!7254825))

(assert (= (and d!2255912 res!2942093) b!7254826))

(assert (= (and b!7254826 res!2942092) b!7254827))

(declare-fun m!7935402 () Bool)

(assert (=> d!2255912 m!7935402))

(declare-fun m!7935404 () Bool)

(assert (=> d!2255912 m!7935404))

(assert (=> d!2255912 m!7934734))

(declare-fun m!7935406 () Bool)

(assert (=> b!7254825 m!7935406))

(declare-fun m!7935408 () Bool)

(assert (=> b!7254826 m!7935408))

(assert (=> b!7254826 m!7935214))

(assert (=> b!7254826 m!7934742))

(assert (=> b!7254311 d!2255912))

(declare-fun d!2255914 () Bool)

(declare-fun c!1348767 () Bool)

(assert (=> d!2255914 (= c!1348767 ((_ is Nil!70435) lt!2586514))))

(declare-fun e!4350127 () (InoxSet Context!15198))

(assert (=> d!2255914 (= (content!14632 lt!2586514) e!4350127)))

(declare-fun b!7254828 () Bool)

(assert (=> b!7254828 (= e!4350127 ((as const (Array Context!15198 Bool)) false))))

(declare-fun b!7254829 () Bool)

(assert (=> b!7254829 (= e!4350127 ((_ map or) (store ((as const (Array Context!15198 Bool)) false) (h!76883 lt!2586514) true) (content!14632 (t!384619 lt!2586514))))))

(assert (= (and d!2255914 c!1348767) b!7254828))

(assert (= (and d!2255914 (not c!1348767)) b!7254829))

(declare-fun m!7935410 () Bool)

(assert (=> b!7254829 m!7935410))

(declare-fun m!7935412 () Bool)

(assert (=> b!7254829 m!7935412))

(assert (=> b!7254286 d!2255914))

(assert (=> b!7254277 d!2255522))

(declare-fun b!7254832 () Bool)

(declare-fun res!2942095 () Bool)

(declare-fun e!4350129 () Bool)

(assert (=> b!7254832 (=> (not res!2942095) (not e!4350129))))

(declare-fun lt!2586576 () List!70557)

(assert (=> b!7254832 (= res!2942095 (= (size!41731 lt!2586576) (+ (size!41731 (t!384617 (exprs!8099 ct1!232))) (size!41731 (exprs!8099 ct2!328)))))))

(declare-fun b!7254831 () Bool)

(declare-fun e!4350128 () List!70557)

(assert (=> b!7254831 (= e!4350128 (Cons!70433 (h!76881 (t!384617 (exprs!8099 ct1!232))) (++!16580 (t!384617 (t!384617 (exprs!8099 ct1!232))) (exprs!8099 ct2!328))))))

(declare-fun b!7254830 () Bool)

(assert (=> b!7254830 (= e!4350128 (exprs!8099 ct2!328))))

(declare-fun d!2255916 () Bool)

(assert (=> d!2255916 e!4350129))

(declare-fun res!2942094 () Bool)

(assert (=> d!2255916 (=> (not res!2942094) (not e!4350129))))

(assert (=> d!2255916 (= res!2942094 (= (content!14633 lt!2586576) ((_ map or) (content!14633 (t!384617 (exprs!8099 ct1!232))) (content!14633 (exprs!8099 ct2!328)))))))

(assert (=> d!2255916 (= lt!2586576 e!4350128)))

(declare-fun c!1348768 () Bool)

(assert (=> d!2255916 (= c!1348768 ((_ is Nil!70433) (t!384617 (exprs!8099 ct1!232))))))

(assert (=> d!2255916 (= (++!16580 (t!384617 (exprs!8099 ct1!232)) (exprs!8099 ct2!328)) lt!2586576)))

(declare-fun b!7254833 () Bool)

(assert (=> b!7254833 (= e!4350129 (or (not (= (exprs!8099 ct2!328) Nil!70433)) (= lt!2586576 (t!384617 (exprs!8099 ct1!232)))))))

(assert (= (and d!2255916 c!1348768) b!7254830))

(assert (= (and d!2255916 (not c!1348768)) b!7254831))

(assert (= (and d!2255916 res!2942094) b!7254832))

(assert (= (and b!7254832 res!2942095) b!7254833))

(declare-fun m!7935414 () Bool)

(assert (=> b!7254832 m!7935414))

(assert (=> b!7254832 m!7935220))

(assert (=> b!7254832 m!7934714))

(declare-fun m!7935416 () Bool)

(assert (=> b!7254831 m!7935416))

(declare-fun m!7935418 () Bool)

(assert (=> d!2255916 m!7935418))

(assert (=> d!2255916 m!7935310))

(assert (=> d!2255916 m!7934722))

(assert (=> b!7254322 d!2255916))

(declare-fun bm!661045 () Bool)

(declare-fun call!661050 () (InoxSet Context!15198))

(assert (=> bm!661045 (= call!661050 (derivationStepZipperDown!2653 (h!76881 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 ct1!232))))) (Context!15199 (t!384617 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 ct1!232)))))) (h!76882 s1!1971)))))

(declare-fun d!2255918 () Bool)

(declare-fun c!1348769 () Bool)

(declare-fun e!4350130 () Bool)

(assert (=> d!2255918 (= c!1348769 e!4350130)))

(declare-fun res!2942096 () Bool)

(assert (=> d!2255918 (=> (not res!2942096) (not e!4350130))))

(assert (=> d!2255918 (= res!2942096 ((_ is Cons!70433) (exprs!8099 (Context!15199 (t!384617 (exprs!8099 ct1!232))))))))

(declare-fun e!4350131 () (InoxSet Context!15198))

(assert (=> d!2255918 (= (derivationStepZipperUp!2483 (Context!15199 (t!384617 (exprs!8099 ct1!232))) (h!76882 s1!1971)) e!4350131)))

(declare-fun b!7254834 () Bool)

(assert (=> b!7254834 (= e!4350131 ((_ map or) call!661050 (derivationStepZipperUp!2483 (Context!15199 (t!384617 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 ct1!232)))))) (h!76882 s1!1971))))))

(declare-fun b!7254835 () Bool)

(declare-fun e!4350132 () (InoxSet Context!15198))

(assert (=> b!7254835 (= e!4350131 e!4350132)))

(declare-fun c!1348770 () Bool)

(assert (=> b!7254835 (= c!1348770 ((_ is Cons!70433) (exprs!8099 (Context!15199 (t!384617 (exprs!8099 ct1!232))))))))

(declare-fun b!7254836 () Bool)

(assert (=> b!7254836 (= e!4350130 (nullable!7919 (h!76881 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 ct1!232)))))))))

(declare-fun b!7254837 () Bool)

(assert (=> b!7254837 (= e!4350132 ((as const (Array Context!15198 Bool)) false))))

(declare-fun b!7254838 () Bool)

(assert (=> b!7254838 (= e!4350132 call!661050)))

(assert (= (and d!2255918 res!2942096) b!7254836))

(assert (= (and d!2255918 c!1348769) b!7254834))

(assert (= (and d!2255918 (not c!1348769)) b!7254835))

(assert (= (and b!7254835 c!1348770) b!7254838))

(assert (= (and b!7254835 (not c!1348770)) b!7254837))

(assert (= (or b!7254834 b!7254838) bm!661045))

(declare-fun m!7935420 () Bool)

(assert (=> bm!661045 m!7935420))

(declare-fun m!7935422 () Bool)

(assert (=> b!7254834 m!7935422))

(declare-fun m!7935424 () Bool)

(assert (=> b!7254836 m!7935424))

(assert (=> b!7254275 d!2255918))

(declare-fun d!2255920 () Bool)

(assert (=> d!2255920 (= (nullable!7919 (h!76881 (exprs!8099 lt!2586433))) (nullableFct!3110 (h!76881 (exprs!8099 lt!2586433))))))

(declare-fun bs!1907289 () Bool)

(assert (= bs!1907289 d!2255920))

(declare-fun m!7935426 () Bool)

(assert (=> bs!1907289 m!7935426))

(assert (=> b!7254204 d!2255920))

(declare-fun bm!661046 () Bool)

(declare-fun call!661051 () (InoxSet Context!15198))

(assert (=> bm!661046 (= call!661051 (derivationStepZipperDown!2653 (h!76881 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586433))))) (Context!15199 (t!384617 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586433)))))) (h!76882 s1!1971)))))

(declare-fun d!2255922 () Bool)

(declare-fun c!1348771 () Bool)

(declare-fun e!4350133 () Bool)

(assert (=> d!2255922 (= c!1348771 e!4350133)))

(declare-fun res!2942097 () Bool)

(assert (=> d!2255922 (=> (not res!2942097) (not e!4350133))))

(assert (=> d!2255922 (= res!2942097 ((_ is Cons!70433) (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586433))))))))

(declare-fun e!4350134 () (InoxSet Context!15198))

(assert (=> d!2255922 (= (derivationStepZipperUp!2483 (Context!15199 (t!384617 (exprs!8099 lt!2586433))) (h!76882 s1!1971)) e!4350134)))

(declare-fun b!7254839 () Bool)

(assert (=> b!7254839 (= e!4350134 ((_ map or) call!661051 (derivationStepZipperUp!2483 (Context!15199 (t!384617 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586433)))))) (h!76882 s1!1971))))))

(declare-fun b!7254840 () Bool)

(declare-fun e!4350135 () (InoxSet Context!15198))

(assert (=> b!7254840 (= e!4350134 e!4350135)))

(declare-fun c!1348772 () Bool)

(assert (=> b!7254840 (= c!1348772 ((_ is Cons!70433) (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586433))))))))

(declare-fun b!7254841 () Bool)

(assert (=> b!7254841 (= e!4350133 (nullable!7919 (h!76881 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586433)))))))))

(declare-fun b!7254842 () Bool)

(assert (=> b!7254842 (= e!4350135 ((as const (Array Context!15198 Bool)) false))))

(declare-fun b!7254843 () Bool)

(assert (=> b!7254843 (= e!4350135 call!661051)))

(assert (= (and d!2255922 res!2942097) b!7254841))

(assert (= (and d!2255922 c!1348771) b!7254839))

(assert (= (and d!2255922 (not c!1348771)) b!7254840))

(assert (= (and b!7254840 c!1348772) b!7254843))

(assert (= (and b!7254840 (not c!1348772)) b!7254842))

(assert (= (or b!7254839 b!7254843) bm!661046))

(declare-fun m!7935428 () Bool)

(assert (=> bm!661046 m!7935428))

(declare-fun m!7935430 () Bool)

(assert (=> b!7254839 m!7935430))

(declare-fun m!7935432 () Bool)

(assert (=> b!7254841 m!7935432))

(assert (=> b!7254202 d!2255922))

(assert (=> bs!1907047 d!2255496))

(assert (=> d!2255528 d!2255530))

(declare-fun d!2255924 () Bool)

(assert (=> d!2255924 (= (flatMap!2824 lt!2586453 lambda!444824) (dynLambda!28768 lambda!444824 ct1!232))))

(assert (=> d!2255924 true))

(declare-fun _$13!4596 () Unit!163907)

(assert (=> d!2255924 (= (choose!56074 lt!2586453 ct1!232 lambda!444824) _$13!4596)))

(declare-fun b_lambda!278857 () Bool)

(assert (=> (not b_lambda!278857) (not d!2255924)))

(declare-fun bs!1907290 () Bool)

(assert (= bs!1907290 d!2255924))

(assert (=> bs!1907290 m!7934282))

(assert (=> bs!1907290 m!7934662))

(assert (=> d!2255528 d!2255924))

(declare-fun d!2255926 () Bool)

(declare-fun res!2942098 () Bool)

(declare-fun e!4350136 () Bool)

(assert (=> d!2255926 (=> res!2942098 e!4350136)))

(assert (=> d!2255926 (= res!2942098 ((_ is Nil!70433) (exprs!8099 lt!2586452)))))

(assert (=> d!2255926 (= (forall!17508 (exprs!8099 lt!2586452) lambda!444848) e!4350136)))

(declare-fun b!7254844 () Bool)

(declare-fun e!4350137 () Bool)

(assert (=> b!7254844 (= e!4350136 e!4350137)))

(declare-fun res!2942099 () Bool)

(assert (=> b!7254844 (=> (not res!2942099) (not e!4350137))))

(assert (=> b!7254844 (= res!2942099 (dynLambda!28772 lambda!444848 (h!76881 (exprs!8099 lt!2586452))))))

(declare-fun b!7254845 () Bool)

(assert (=> b!7254845 (= e!4350137 (forall!17508 (t!384617 (exprs!8099 lt!2586452)) lambda!444848))))

(assert (= (and d!2255926 (not res!2942098)) b!7254844))

(assert (= (and b!7254844 res!2942099) b!7254845))

(declare-fun b_lambda!278859 () Bool)

(assert (=> (not b_lambda!278859) (not b!7254844)))

(declare-fun m!7935434 () Bool)

(assert (=> b!7254844 m!7935434))

(declare-fun m!7935436 () Bool)

(assert (=> b!7254845 m!7935436))

(assert (=> d!2255510 d!2255926))

(declare-fun d!2255928 () Bool)

(assert (=> d!2255928 (= ($colon$colon!2925 (exprs!8099 lt!2586452) (ite (or c!1348570 c!1348572) (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (h!76881 (exprs!8099 ct1!232)))) (Cons!70433 (ite (or c!1348570 c!1348572) (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (h!76881 (exprs!8099 ct1!232))) (exprs!8099 lt!2586452)))))

(assert (=> bm!660941 d!2255928))

(declare-fun d!2255930 () Bool)

(assert (=> d!2255930 (forall!17508 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328)) lambda!444859)))

(declare-fun lt!2586577 () Unit!163907)

(assert (=> d!2255930 (= lt!2586577 (choose!56072 (exprs!8099 lt!2586451) (exprs!8099 ct2!328) lambda!444859))))

(assert (=> d!2255930 (forall!17508 (exprs!8099 lt!2586451) lambda!444859)))

(assert (=> d!2255930 (= (lemmaConcatPreservesForall!1466 (exprs!8099 lt!2586451) (exprs!8099 ct2!328) lambda!444859) lt!2586577)))

(declare-fun bs!1907291 () Bool)

(assert (= bs!1907291 d!2255930))

(assert (=> bs!1907291 m!7934336))

(assert (=> bs!1907291 m!7934336))

(declare-fun m!7935438 () Bool)

(assert (=> bs!1907291 m!7935438))

(declare-fun m!7935440 () Bool)

(assert (=> bs!1907291 m!7935440))

(declare-fun m!7935442 () Bool)

(assert (=> bs!1907291 m!7935442))

(assert (=> d!2255558 d!2255930))

(declare-fun bs!1907292 () Bool)

(declare-fun d!2255932 () Bool)

(assert (= bs!1907292 (and d!2255932 d!2255510)))

(declare-fun lambda!444902 () Int)

(assert (=> bs!1907292 (= lambda!444902 lambda!444848)))

(declare-fun bs!1907293 () Bool)

(assert (= bs!1907293 (and d!2255932 d!2255558)))

(assert (=> bs!1907293 (= lambda!444902 lambda!444859)))

(declare-fun bs!1907294 () Bool)

(assert (= bs!1907294 (and d!2255932 b!7254030)))

(assert (=> bs!1907294 (= lambda!444902 lambda!444822)))

(declare-fun bs!1907295 () Bool)

(assert (= bs!1907295 (and d!2255932 d!2255534)))

(assert (=> bs!1907295 (= lambda!444902 lambda!444849)))

(declare-fun bs!1907296 () Bool)

(assert (= bs!1907296 (and d!2255932 d!2255536)))

(assert (=> bs!1907296 (= lambda!444902 lambda!444850)))

(assert (=> d!2255932 (matchZipper!3569 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) true) (++!16581 (t!384618 s1!1971) s2!1849))))

(declare-fun lt!2586580 () Unit!163907)

(assert (=> d!2255932 (= lt!2586580 (lemmaConcatPreservesForall!1466 (exprs!8099 lt!2586451) (exprs!8099 ct2!328) lambda!444902))))

(assert (=> d!2255932 true))

(declare-fun _$56!527 () Unit!163907)

(assert (=> d!2255932 (= (choose!56079 lt!2586451 ct2!328 (t!384618 s1!1971) s2!1849) _$56!527)))

(declare-fun bs!1907297 () Bool)

(assert (= bs!1907297 d!2255932))

(assert (=> bs!1907297 m!7934328))

(declare-fun m!7935444 () Bool)

(assert (=> bs!1907297 m!7935444))

(assert (=> bs!1907297 m!7934322))

(assert (=> bs!1907297 m!7934336))

(assert (=> bs!1907297 m!7934322))

(assert (=> bs!1907297 m!7934328))

(assert (=> bs!1907297 m!7934330))

(assert (=> d!2255558 d!2255932))

(assert (=> d!2255558 d!2255550))

(declare-fun d!2255934 () Bool)

(declare-fun c!1348773 () Bool)

(assert (=> d!2255934 (= c!1348773 (isEmpty!40561 (t!384618 s1!1971)))))

(declare-fun e!4350138 () Bool)

(assert (=> d!2255934 (= (matchZipper!3569 (store ((as const (Array Context!15198 Bool)) false) lt!2586451 true) (t!384618 s1!1971)) e!4350138)))

(declare-fun b!7254846 () Bool)

(assert (=> b!7254846 (= e!4350138 (nullableZipper!2921 (store ((as const (Array Context!15198 Bool)) false) lt!2586451 true)))))

(declare-fun b!7254847 () Bool)

(assert (=> b!7254847 (= e!4350138 (matchZipper!3569 (derivationStepZipper!3437 (store ((as const (Array Context!15198 Bool)) false) lt!2586451 true) (head!14915 (t!384618 s1!1971))) (tail!14343 (t!384618 s1!1971))))))

(assert (= (and d!2255934 c!1348773) b!7254846))

(assert (= (and d!2255934 (not c!1348773)) b!7254847))

(assert (=> d!2255934 m!7934570))

(assert (=> b!7254846 m!7934758))

(declare-fun m!7935446 () Bool)

(assert (=> b!7254846 m!7935446))

(assert (=> b!7254847 m!7934574))

(assert (=> b!7254847 m!7934758))

(assert (=> b!7254847 m!7934574))

(declare-fun m!7935448 () Bool)

(assert (=> b!7254847 m!7935448))

(assert (=> b!7254847 m!7934578))

(assert (=> b!7254847 m!7935448))

(assert (=> b!7254847 m!7934578))

(declare-fun m!7935450 () Bool)

(assert (=> b!7254847 m!7935450))

(assert (=> d!2255558 d!2255934))

(assert (=> d!2255558 d!2255554))

(assert (=> d!2255558 d!2255556))

(declare-fun bs!1907298 () Bool)

(declare-fun d!2255936 () Bool)

(assert (= bs!1907298 (and d!2255936 d!2255898)))

(declare-fun lambda!444903 () Int)

(assert (=> bs!1907298 (not (= lambda!444903 lambda!444894))))

(declare-fun bs!1907299 () Bool)

(assert (= bs!1907299 (and d!2255936 d!2255910)))

(assert (=> bs!1907299 (= lambda!444903 lambda!444899)))

(declare-fun bs!1907300 () Bool)

(assert (= bs!1907300 (and d!2255936 b!7254034)))

(assert (=> bs!1907300 (not (= lambda!444903 lambda!444823))))

(declare-fun bs!1907301 () Bool)

(assert (= bs!1907301 (and d!2255936 d!2255908)))

(assert (=> bs!1907301 (= lambda!444903 lambda!444898)))

(declare-fun bs!1907302 () Bool)

(assert (= bs!1907302 (and d!2255936 d!2255540)))

(assert (=> bs!1907302 (not (= lambda!444903 lambda!444853))))

(declare-fun bs!1907303 () Bool)

(assert (= bs!1907303 (and d!2255936 d!2255542)))

(assert (=> bs!1907303 (not (= lambda!444903 lambda!444856))))

(declare-fun bs!1907304 () Bool)

(assert (= bs!1907304 (and d!2255936 d!2255854)))

(assert (=> bs!1907304 (= lambda!444903 lambda!444890)))

(declare-fun bs!1907305 () Bool)

(assert (= bs!1907305 (and d!2255936 d!2255864)))

(assert (=> bs!1907305 (= lambda!444903 lambda!444891)))

(declare-fun bs!1907306 () Bool)

(assert (= bs!1907306 (and d!2255936 d!2255900)))

(assert (=> bs!1907306 (not (= lambda!444903 lambda!444897))))

(declare-fun bs!1907307 () Bool)

(assert (= bs!1907307 (and d!2255936 d!2255886)))

(assert (=> bs!1907307 (= lambda!444903 lambda!444893)))

(assert (=> d!2255936 (= (nullableZipper!2921 lt!2586443) (exists!4396 lt!2586443 lambda!444903))))

(declare-fun bs!1907308 () Bool)

(assert (= bs!1907308 d!2255936))

(declare-fun m!7935452 () Bool)

(assert (=> bs!1907308 m!7935452))

(assert (=> b!7254262 d!2255936))

(declare-fun d!2255938 () Bool)

(declare-fun c!1348774 () Bool)

(assert (=> d!2255938 (= c!1348774 (isEmpty!40561 (tail!14343 s1!1971)))))

(declare-fun e!4350139 () Bool)

(assert (=> d!2255938 (= (matchZipper!3569 (derivationStepZipper!3437 lt!2586453 (head!14915 s1!1971)) (tail!14343 s1!1971)) e!4350139)))

(declare-fun b!7254848 () Bool)

(assert (=> b!7254848 (= e!4350139 (nullableZipper!2921 (derivationStepZipper!3437 lt!2586453 (head!14915 s1!1971))))))

(declare-fun b!7254849 () Bool)

(assert (=> b!7254849 (= e!4350139 (matchZipper!3569 (derivationStepZipper!3437 (derivationStepZipper!3437 lt!2586453 (head!14915 s1!1971)) (head!14915 (tail!14343 s1!1971))) (tail!14343 (tail!14343 s1!1971))))))

(assert (= (and d!2255938 c!1348774) b!7254848))

(assert (= (and d!2255938 (not c!1348774)) b!7254849))

(assert (=> d!2255938 m!7934676))

(declare-fun m!7935454 () Bool)

(assert (=> d!2255938 m!7935454))

(assert (=> b!7254848 m!7934674))

(declare-fun m!7935456 () Bool)

(assert (=> b!7254848 m!7935456))

(assert (=> b!7254849 m!7934676))

(declare-fun m!7935458 () Bool)

(assert (=> b!7254849 m!7935458))

(assert (=> b!7254849 m!7934674))

(assert (=> b!7254849 m!7935458))

(declare-fun m!7935460 () Bool)

(assert (=> b!7254849 m!7935460))

(assert (=> b!7254849 m!7934676))

(declare-fun m!7935462 () Bool)

(assert (=> b!7254849 m!7935462))

(assert (=> b!7254849 m!7935460))

(assert (=> b!7254849 m!7935462))

(declare-fun m!7935464 () Bool)

(assert (=> b!7254849 m!7935464))

(assert (=> b!7254281 d!2255938))

(declare-fun bs!1907309 () Bool)

(declare-fun d!2255940 () Bool)

(assert (= bs!1907309 (and d!2255940 d!2255802)))

(declare-fun lambda!444904 () Int)

(assert (=> bs!1907309 (= (= (head!14915 s1!1971) (head!14915 (++!16581 (t!384618 s1!1971) s2!1849))) (= lambda!444904 lambda!444885))))

(declare-fun bs!1907310 () Bool)

(assert (= bs!1907310 (and d!2255940 d!2255878)))

(assert (=> bs!1907310 (= (= (head!14915 s1!1971) (head!14915 (t!384618 s1!1971))) (= lambda!444904 lambda!444892))))

(declare-fun bs!1907311 () Bool)

(assert (= bs!1907311 (and d!2255940 d!2255562)))

(assert (=> bs!1907311 (= (= (head!14915 s1!1971) (h!76882 s1!1971)) (= lambda!444904 lambda!444860))))

(declare-fun bs!1907312 () Bool)

(assert (= bs!1907312 (and d!2255940 d!2255852)))

(assert (=> bs!1907312 (= (= (head!14915 s1!1971) (head!14915 (t!384618 s1!1971))) (= lambda!444904 lambda!444887))))

(declare-fun bs!1907313 () Bool)

(assert (= bs!1907313 (and d!2255940 b!7254035)))

(assert (=> bs!1907313 (= (= (head!14915 s1!1971) (h!76882 s1!1971)) (= lambda!444904 lambda!444824))))

(declare-fun bs!1907314 () Bool)

(assert (= bs!1907314 (and d!2255940 d!2255504)))

(assert (=> bs!1907314 (= (= (head!14915 s1!1971) (h!76882 s1!1971)) (= lambda!444904 lambda!444845))))

(declare-fun bs!1907315 () Bool)

(assert (= bs!1907315 (and d!2255940 d!2255822)))

(assert (=> bs!1907315 (= (= (head!14915 s1!1971) (head!14915 (t!384618 s1!1971))) (= lambda!444904 lambda!444886))))

(assert (=> d!2255940 true))

(assert (=> d!2255940 (= (derivationStepZipper!3437 lt!2586453 (head!14915 s1!1971)) (flatMap!2824 lt!2586453 lambda!444904))))

(declare-fun bs!1907316 () Bool)

(assert (= bs!1907316 d!2255940))

(declare-fun m!7935466 () Bool)

(assert (=> bs!1907316 m!7935466))

(assert (=> b!7254281 d!2255940))

(declare-fun d!2255942 () Bool)

(assert (=> d!2255942 (= (head!14915 s1!1971) (h!76882 s1!1971))))

(assert (=> b!7254281 d!2255942))

(declare-fun d!2255944 () Bool)

(assert (=> d!2255944 (= (tail!14343 s1!1971) (t!384618 s1!1971))))

(assert (=> b!7254281 d!2255944))

(declare-fun bm!661047 () Bool)

(declare-fun call!661052 () (InoxSet Context!15198))

(assert (=> bm!661047 (= call!661052 (derivationStepZipperDown!2653 (h!76881 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586452))))) (Context!15199 (t!384617 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586452)))))) (h!76882 s1!1971)))))

(declare-fun d!2255946 () Bool)

(declare-fun c!1348775 () Bool)

(declare-fun e!4350140 () Bool)

(assert (=> d!2255946 (= c!1348775 e!4350140)))

(declare-fun res!2942100 () Bool)

(assert (=> d!2255946 (=> (not res!2942100) (not e!4350140))))

(assert (=> d!2255946 (= res!2942100 ((_ is Cons!70433) (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586452))))))))

(declare-fun e!4350141 () (InoxSet Context!15198))

(assert (=> d!2255946 (= (derivationStepZipperUp!2483 (Context!15199 (t!384617 (exprs!8099 lt!2586452))) (h!76882 s1!1971)) e!4350141)))

(declare-fun b!7254850 () Bool)

(assert (=> b!7254850 (= e!4350141 ((_ map or) call!661052 (derivationStepZipperUp!2483 (Context!15199 (t!384617 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586452)))))) (h!76882 s1!1971))))))

(declare-fun b!7254851 () Bool)

(declare-fun e!4350142 () (InoxSet Context!15198))

(assert (=> b!7254851 (= e!4350141 e!4350142)))

(declare-fun c!1348776 () Bool)

(assert (=> b!7254851 (= c!1348776 ((_ is Cons!70433) (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586452))))))))

(declare-fun b!7254852 () Bool)

(assert (=> b!7254852 (= e!4350140 (nullable!7919 (h!76881 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586452)))))))))

(declare-fun b!7254853 () Bool)

(assert (=> b!7254853 (= e!4350142 ((as const (Array Context!15198 Bool)) false))))

(declare-fun b!7254854 () Bool)

(assert (=> b!7254854 (= e!4350142 call!661052)))

(assert (= (and d!2255946 res!2942100) b!7254852))

(assert (= (and d!2255946 c!1348775) b!7254850))

(assert (= (and d!2255946 (not c!1348775)) b!7254851))

(assert (= (and b!7254851 c!1348776) b!7254854))

(assert (= (and b!7254851 (not c!1348776)) b!7254853))

(assert (= (or b!7254850 b!7254854) bm!661047))

(declare-fun m!7935468 () Bool)

(assert (=> bm!661047 m!7935468))

(declare-fun m!7935470 () Bool)

(assert (=> b!7254850 m!7935470))

(declare-fun m!7935472 () Bool)

(assert (=> b!7254852 m!7935472))

(assert (=> b!7254316 d!2255946))

(declare-fun d!2255948 () Bool)

(declare-fun c!1348777 () Bool)

(assert (=> d!2255948 (= c!1348777 (isEmpty!40561 (tail!14343 s2!1849)))))

(declare-fun e!4350143 () Bool)

(assert (=> d!2255948 (= (matchZipper!3569 (derivationStepZipper!3437 (store ((as const (Array Context!15198 Bool)) false) ct2!328 true) (head!14915 s2!1849)) (tail!14343 s2!1849)) e!4350143)))

(declare-fun b!7254855 () Bool)

(assert (=> b!7254855 (= e!4350143 (nullableZipper!2921 (derivationStepZipper!3437 (store ((as const (Array Context!15198 Bool)) false) ct2!328 true) (head!14915 s2!1849))))))

(declare-fun b!7254856 () Bool)

(assert (=> b!7254856 (= e!4350143 (matchZipper!3569 (derivationStepZipper!3437 (derivationStepZipper!3437 (store ((as const (Array Context!15198 Bool)) false) ct2!328 true) (head!14915 s2!1849)) (head!14915 (tail!14343 s2!1849))) (tail!14343 (tail!14343 s2!1849))))))

(assert (= (and d!2255948 c!1348777) b!7254855))

(assert (= (and d!2255948 (not c!1348777)) b!7254856))

(assert (=> d!2255948 m!7934620))

(declare-fun m!7935474 () Bool)

(assert (=> d!2255948 m!7935474))

(assert (=> b!7254855 m!7934618))

(declare-fun m!7935476 () Bool)

(assert (=> b!7254855 m!7935476))

(assert (=> b!7254856 m!7934620))

(declare-fun m!7935478 () Bool)

(assert (=> b!7254856 m!7935478))

(assert (=> b!7254856 m!7934618))

(assert (=> b!7254856 m!7935478))

(declare-fun m!7935480 () Bool)

(assert (=> b!7254856 m!7935480))

(assert (=> b!7254856 m!7934620))

(declare-fun m!7935482 () Bool)

(assert (=> b!7254856 m!7935482))

(assert (=> b!7254856 m!7935480))

(assert (=> b!7254856 m!7935482))

(declare-fun m!7935484 () Bool)

(assert (=> b!7254856 m!7935484))

(assert (=> b!7254256 d!2255948))

(declare-fun bs!1907317 () Bool)

(declare-fun d!2255950 () Bool)

(assert (= bs!1907317 (and d!2255950 d!2255802)))

(declare-fun lambda!444905 () Int)

(assert (=> bs!1907317 (= (= (head!14915 s2!1849) (head!14915 (++!16581 (t!384618 s1!1971) s2!1849))) (= lambda!444905 lambda!444885))))

(declare-fun bs!1907318 () Bool)

(assert (= bs!1907318 (and d!2255950 d!2255878)))

(assert (=> bs!1907318 (= (= (head!14915 s2!1849) (head!14915 (t!384618 s1!1971))) (= lambda!444905 lambda!444892))))

(declare-fun bs!1907319 () Bool)

(assert (= bs!1907319 (and d!2255950 d!2255562)))

(assert (=> bs!1907319 (= (= (head!14915 s2!1849) (h!76882 s1!1971)) (= lambda!444905 lambda!444860))))

(declare-fun bs!1907320 () Bool)

(assert (= bs!1907320 (and d!2255950 d!2255852)))

(assert (=> bs!1907320 (= (= (head!14915 s2!1849) (head!14915 (t!384618 s1!1971))) (= lambda!444905 lambda!444887))))

(declare-fun bs!1907321 () Bool)

(assert (= bs!1907321 (and d!2255950 b!7254035)))

(assert (=> bs!1907321 (= (= (head!14915 s2!1849) (h!76882 s1!1971)) (= lambda!444905 lambda!444824))))

(declare-fun bs!1907322 () Bool)

(assert (= bs!1907322 (and d!2255950 d!2255504)))

(assert (=> bs!1907322 (= (= (head!14915 s2!1849) (h!76882 s1!1971)) (= lambda!444905 lambda!444845))))

(declare-fun bs!1907323 () Bool)

(assert (= bs!1907323 (and d!2255950 d!2255940)))

(assert (=> bs!1907323 (= (= (head!14915 s2!1849) (head!14915 s1!1971)) (= lambda!444905 lambda!444904))))

(declare-fun bs!1907324 () Bool)

(assert (= bs!1907324 (and d!2255950 d!2255822)))

(assert (=> bs!1907324 (= (= (head!14915 s2!1849) (head!14915 (t!384618 s1!1971))) (= lambda!444905 lambda!444886))))

(assert (=> d!2255950 true))

(assert (=> d!2255950 (= (derivationStepZipper!3437 (store ((as const (Array Context!15198 Bool)) false) ct2!328 true) (head!14915 s2!1849)) (flatMap!2824 (store ((as const (Array Context!15198 Bool)) false) ct2!328 true) lambda!444905))))

(declare-fun bs!1907325 () Bool)

(assert (= bs!1907325 d!2255950))

(assert (=> bs!1907325 m!7934338))

(declare-fun m!7935486 () Bool)

(assert (=> bs!1907325 m!7935486))

(assert (=> b!7254256 d!2255950))

(declare-fun d!2255952 () Bool)

(assert (=> d!2255952 (= (head!14915 s2!1849) (h!76882 s2!1849))))

(assert (=> b!7254256 d!2255952))

(declare-fun d!2255954 () Bool)

(assert (=> d!2255954 (= (tail!14343 s2!1849) (t!384618 s2!1849))))

(assert (=> b!7254256 d!2255954))

(declare-fun c!1348781 () Bool)

(declare-fun c!1348780 () Bool)

(declare-fun c!1348778 () Bool)

(declare-fun bm!661048 () Bool)

(declare-fun call!661057 () List!70557)

(declare-fun call!661055 () (InoxSet Context!15198))

(assert (=> bm!661048 (= call!661055 (derivationStepZipperDown!2653 (ite c!1348781 (regOne!37831 (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (ite c!1348778 (regTwo!37830 (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (ite c!1348780 (regOne!37830 (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (reg!18988 (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))))))) (ite (or c!1348781 c!1348778) (ite c!1348573 lt!2586452 (Context!15199 call!660941)) (Context!15199 call!661057)) (h!76882 s1!1971)))))

(declare-fun b!7254857 () Bool)

(declare-fun e!4350145 () Bool)

(assert (=> b!7254857 (= e!4350145 (nullable!7919 (regOne!37830 (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))))))))

(declare-fun bm!661049 () Bool)

(declare-fun call!661054 () (InoxSet Context!15198))

(assert (=> bm!661049 (= call!661054 call!661055)))

(declare-fun b!7254858 () Bool)

(declare-fun e!4350149 () (InoxSet Context!15198))

(declare-fun e!4350148 () (InoxSet Context!15198))

(assert (=> b!7254858 (= e!4350149 e!4350148)))

(assert (=> b!7254858 (= c!1348781 ((_ is Union!18659) (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))))))

(declare-fun b!7254859 () Bool)

(declare-fun e!4350147 () (InoxSet Context!15198))

(declare-fun e!4350146 () (InoxSet Context!15198))

(assert (=> b!7254859 (= e!4350147 e!4350146)))

(assert (=> b!7254859 (= c!1348780 ((_ is Concat!27504) (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))))))

(declare-fun bm!661050 () Bool)

(declare-fun call!661053 () List!70557)

(assert (=> bm!661050 (= call!661057 call!661053)))

(declare-fun b!7254860 () Bool)

(declare-fun e!4350144 () (InoxSet Context!15198))

(assert (=> b!7254860 (= e!4350144 ((as const (Array Context!15198 Bool)) false))))

(declare-fun c!1348779 () Bool)

(declare-fun d!2255956 () Bool)

(assert (=> d!2255956 (= c!1348779 (and ((_ is ElementMatch!18659) (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (= (c!1348485 (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (h!76882 s1!1971))))))

(assert (=> d!2255956 (= (derivationStepZipperDown!2653 (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))) (ite c!1348573 lt!2586452 (Context!15199 call!660941)) (h!76882 s1!1971)) e!4350149)))

(declare-fun b!7254861 () Bool)

(declare-fun c!1348782 () Bool)

(assert (=> b!7254861 (= c!1348782 ((_ is Star!18659) (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))))))

(assert (=> b!7254861 (= e!4350146 e!4350144)))

(declare-fun bm!661051 () Bool)

(declare-fun call!661056 () (InoxSet Context!15198))

(assert (=> bm!661051 (= call!661056 call!661054)))

(declare-fun b!7254862 () Bool)

(assert (=> b!7254862 (= e!4350144 call!661056)))

(declare-fun b!7254863 () Bool)

(declare-fun call!661058 () (InoxSet Context!15198))

(assert (=> b!7254863 (= e!4350148 ((_ map or) call!661055 call!661058))))

(declare-fun b!7254864 () Bool)

(assert (=> b!7254864 (= e!4350149 (store ((as const (Array Context!15198 Bool)) false) (ite c!1348573 lt!2586452 (Context!15199 call!660941)) true))))

(declare-fun b!7254865 () Bool)

(assert (=> b!7254865 (= c!1348778 e!4350145)))

(declare-fun res!2942101 () Bool)

(assert (=> b!7254865 (=> (not res!2942101) (not e!4350145))))

(assert (=> b!7254865 (= res!2942101 ((_ is Concat!27504) (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))))))

(assert (=> b!7254865 (= e!4350148 e!4350147)))

(declare-fun bm!661052 () Bool)

(assert (=> bm!661052 (= call!661058 (derivationStepZipperDown!2653 (ite c!1348781 (regTwo!37831 (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (regOne!37830 (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))))) (ite c!1348781 (ite c!1348573 lt!2586452 (Context!15199 call!660941)) (Context!15199 call!661053)) (h!76882 s1!1971)))))

(declare-fun bm!661053 () Bool)

(assert (=> bm!661053 (= call!661053 ($colon$colon!2925 (exprs!8099 (ite c!1348573 lt!2586452 (Context!15199 call!660941))) (ite (or c!1348778 c!1348780) (regTwo!37830 (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232))))) (ite c!1348573 (regTwo!37831 (h!76881 (exprs!8099 ct1!232))) (regOne!37830 (h!76881 (exprs!8099 ct1!232)))))))))

(declare-fun b!7254866 () Bool)

(assert (=> b!7254866 (= e!4350147 ((_ map or) call!661058 call!661054))))

(declare-fun b!7254867 () Bool)

(assert (=> b!7254867 (= e!4350146 call!661056)))

(assert (= (and d!2255956 c!1348779) b!7254864))

(assert (= (and d!2255956 (not c!1348779)) b!7254858))

(assert (= (and b!7254858 c!1348781) b!7254863))

(assert (= (and b!7254858 (not c!1348781)) b!7254865))

(assert (= (and b!7254865 res!2942101) b!7254857))

(assert (= (and b!7254865 c!1348778) b!7254866))

(assert (= (and b!7254865 (not c!1348778)) b!7254859))

(assert (= (and b!7254859 c!1348780) b!7254867))

(assert (= (and b!7254859 (not c!1348780)) b!7254861))

(assert (= (and b!7254861 c!1348782) b!7254862))

(assert (= (and b!7254861 (not c!1348782)) b!7254860))

(assert (= (or b!7254867 b!7254862) bm!661050))

(assert (= (or b!7254867 b!7254862) bm!661051))

(assert (= (or b!7254866 bm!661050) bm!661053))

(assert (= (or b!7254866 bm!661051) bm!661049))

(assert (= (or b!7254863 b!7254866) bm!661052))

(assert (= (or b!7254863 bm!661049) bm!661048))

(declare-fun m!7935488 () Bool)

(assert (=> bm!661048 m!7935488))

(declare-fun m!7935490 () Bool)

(assert (=> b!7254864 m!7935490))

(declare-fun m!7935492 () Bool)

(assert (=> b!7254857 m!7935492))

(declare-fun m!7935494 () Bool)

(assert (=> bm!661053 m!7935494))

(declare-fun m!7935496 () Bool)

(assert (=> bm!661052 m!7935496))

(assert (=> bm!660940 d!2255956))

(assert (=> b!7254240 d!2255906))

(assert (=> d!2255514 d!2255846))

(declare-fun d!2255958 () Bool)

(declare-fun c!1348783 () Bool)

(assert (=> d!2255958 (= c!1348783 (isEmpty!40561 (t!384618 s1!1971)))))

(declare-fun e!4350150 () Bool)

(assert (=> d!2255958 (= (matchZipper!3569 ((_ map or) lt!2586443 lt!2586441) (t!384618 s1!1971)) e!4350150)))

(declare-fun b!7254868 () Bool)

(assert (=> b!7254868 (= e!4350150 (nullableZipper!2921 ((_ map or) lt!2586443 lt!2586441)))))

(declare-fun b!7254869 () Bool)

(assert (=> b!7254869 (= e!4350150 (matchZipper!3569 (derivationStepZipper!3437 ((_ map or) lt!2586443 lt!2586441) (head!14915 (t!384618 s1!1971))) (tail!14343 (t!384618 s1!1971))))))

(assert (= (and d!2255958 c!1348783) b!7254868))

(assert (= (and d!2255958 (not c!1348783)) b!7254869))

(assert (=> d!2255958 m!7934570))

(declare-fun m!7935498 () Bool)

(assert (=> b!7254868 m!7935498))

(assert (=> b!7254869 m!7934574))

(assert (=> b!7254869 m!7934574))

(declare-fun m!7935500 () Bool)

(assert (=> b!7254869 m!7935500))

(assert (=> b!7254869 m!7934578))

(assert (=> b!7254869 m!7935500))

(assert (=> b!7254869 m!7934578))

(declare-fun m!7935502 () Bool)

(assert (=> b!7254869 m!7935502))

(assert (=> d!2255512 d!2255958))

(assert (=> d!2255512 d!2255514))

(declare-fun d!2255960 () Bool)

(declare-fun e!4350153 () Bool)

(assert (=> d!2255960 (= (matchZipper!3569 ((_ map or) lt!2586443 lt!2586441) (t!384618 s1!1971)) e!4350153)))

(declare-fun res!2942104 () Bool)

(assert (=> d!2255960 (=> res!2942104 e!4350153)))

(assert (=> d!2255960 (= res!2942104 (matchZipper!3569 lt!2586443 (t!384618 s1!1971)))))

(assert (=> d!2255960 true))

(declare-fun _$48!2540 () Unit!163907)

(assert (=> d!2255960 (= (choose!56073 lt!2586443 lt!2586441 (t!384618 s1!1971)) _$48!2540)))

(declare-fun b!7254872 () Bool)

(assert (=> b!7254872 (= e!4350153 (matchZipper!3569 lt!2586441 (t!384618 s1!1971)))))

(assert (= (and d!2255960 (not res!2942104)) b!7254872))

(assert (=> d!2255960 m!7934632))

(assert (=> d!2255960 m!7934258))

(assert (=> b!7254872 m!7934310))

(assert (=> d!2255512 d!2255960))

(declare-fun d!2255962 () Bool)

(declare-fun c!1348786 () Bool)

(assert (=> d!2255962 (= c!1348786 ((_ is Nil!70434) lt!2586524))))

(declare-fun e!4350156 () (InoxSet C!37592))

(assert (=> d!2255962 (= (content!14634 lt!2586524) e!4350156)))

(declare-fun b!7254877 () Bool)

(assert (=> b!7254877 (= e!4350156 ((as const (Array C!37592 Bool)) false))))

(declare-fun b!7254878 () Bool)

(assert (=> b!7254878 (= e!4350156 ((_ map or) (store ((as const (Array C!37592 Bool)) false) (h!76882 lt!2586524) true) (content!14634 (t!384618 lt!2586524))))))

(assert (= (and d!2255962 c!1348786) b!7254877))

(assert (= (and d!2255962 (not c!1348786)) b!7254878))

(declare-fun m!7935504 () Bool)

(assert (=> b!7254878 m!7935504))

(declare-fun m!7935506 () Bool)

(assert (=> b!7254878 m!7935506))

(assert (=> d!2255554 d!2255962))

(declare-fun d!2255964 () Bool)

(declare-fun c!1348787 () Bool)

(assert (=> d!2255964 (= c!1348787 ((_ is Nil!70434) (t!384618 s1!1971)))))

(declare-fun e!4350157 () (InoxSet C!37592))

(assert (=> d!2255964 (= (content!14634 (t!384618 s1!1971)) e!4350157)))

(declare-fun b!7254879 () Bool)

(assert (=> b!7254879 (= e!4350157 ((as const (Array C!37592 Bool)) false))))

(declare-fun b!7254880 () Bool)

(assert (=> b!7254880 (= e!4350157 ((_ map or) (store ((as const (Array C!37592 Bool)) false) (h!76882 (t!384618 s1!1971)) true) (content!14634 (t!384618 (t!384618 s1!1971)))))))

(assert (= (and d!2255964 c!1348787) b!7254879))

(assert (= (and d!2255964 (not c!1348787)) b!7254880))

(declare-fun m!7935508 () Bool)

(assert (=> b!7254880 m!7935508))

(assert (=> b!7254880 m!7935404))

(assert (=> d!2255554 d!2255964))

(declare-fun d!2255966 () Bool)

(declare-fun c!1348788 () Bool)

(assert (=> d!2255966 (= c!1348788 ((_ is Nil!70434) s2!1849))))

(declare-fun e!4350158 () (InoxSet C!37592))

(assert (=> d!2255966 (= (content!14634 s2!1849) e!4350158)))

(declare-fun b!7254881 () Bool)

(assert (=> b!7254881 (= e!4350158 ((as const (Array C!37592 Bool)) false))))

(declare-fun b!7254882 () Bool)

(assert (=> b!7254882 (= e!4350158 ((_ map or) (store ((as const (Array C!37592 Bool)) false) (h!76882 s2!1849) true) (content!14634 (t!384618 s2!1849))))))

(assert (= (and d!2255966 c!1348788) b!7254881))

(assert (= (and d!2255966 (not c!1348788)) b!7254882))

(declare-fun m!7935510 () Bool)

(assert (=> b!7254882 m!7935510))

(declare-fun m!7935512 () Bool)

(assert (=> b!7254882 m!7935512))

(assert (=> d!2255554 d!2255966))

(declare-fun bs!1907326 () Bool)

(declare-fun d!2255968 () Bool)

(assert (= bs!1907326 (and d!2255968 d!2255898)))

(declare-fun lambda!444906 () Int)

(assert (=> bs!1907326 (not (= lambda!444906 lambda!444894))))

(declare-fun bs!1907327 () Bool)

(assert (= bs!1907327 (and d!2255968 d!2255910)))

(assert (=> bs!1907327 (= lambda!444906 lambda!444899)))

(declare-fun bs!1907328 () Bool)

(assert (= bs!1907328 (and d!2255968 b!7254034)))

(assert (=> bs!1907328 (not (= lambda!444906 lambda!444823))))

(declare-fun bs!1907329 () Bool)

(assert (= bs!1907329 (and d!2255968 d!2255908)))

(assert (=> bs!1907329 (= lambda!444906 lambda!444898)))

(declare-fun bs!1907330 () Bool)

(assert (= bs!1907330 (and d!2255968 d!2255540)))

(assert (=> bs!1907330 (not (= lambda!444906 lambda!444853))))

(declare-fun bs!1907331 () Bool)

(assert (= bs!1907331 (and d!2255968 d!2255542)))

(assert (=> bs!1907331 (not (= lambda!444906 lambda!444856))))

(declare-fun bs!1907332 () Bool)

(assert (= bs!1907332 (and d!2255968 d!2255854)))

(assert (=> bs!1907332 (= lambda!444906 lambda!444890)))

(declare-fun bs!1907333 () Bool)

(assert (= bs!1907333 (and d!2255968 d!2255864)))

(assert (=> bs!1907333 (= lambda!444906 lambda!444891)))

(declare-fun bs!1907334 () Bool)

(assert (= bs!1907334 (and d!2255968 d!2255900)))

(assert (=> bs!1907334 (not (= lambda!444906 lambda!444897))))

(declare-fun bs!1907335 () Bool)

(assert (= bs!1907335 (and d!2255968 d!2255936)))

(assert (=> bs!1907335 (= lambda!444906 lambda!444903)))

(declare-fun bs!1907336 () Bool)

(assert (= bs!1907336 (and d!2255968 d!2255886)))

(assert (=> bs!1907336 (= lambda!444906 lambda!444893)))

(assert (=> d!2255968 (= (nullableZipper!2921 lt!2586459) (exists!4396 lt!2586459 lambda!444906))))

(declare-fun bs!1907337 () Bool)

(assert (= bs!1907337 d!2255968))

(declare-fun m!7935514 () Bool)

(assert (=> bs!1907337 m!7935514))

(assert (=> b!7254257 d!2255968))

(assert (=> d!2255490 d!2255846))

(declare-fun d!2255970 () Bool)

(assert (=> d!2255970 (= (isEmpty!40561 s2!1849) ((_ is Nil!70434) s2!1849))))

(assert (=> d!2255506 d!2255970))

(declare-fun b!7254885 () Bool)

(declare-fun res!2942106 () Bool)

(declare-fun e!4350160 () Bool)

(assert (=> b!7254885 (=> (not res!2942106) (not e!4350160))))

(declare-fun lt!2586581 () List!70557)

(assert (=> b!7254885 (= res!2942106 (= (size!41731 lt!2586581) (+ (size!41731 (t!384617 (exprs!8099 lt!2586451))) (size!41731 (exprs!8099 ct2!328)))))))

(declare-fun b!7254884 () Bool)

(declare-fun e!4350159 () List!70557)

(assert (=> b!7254884 (= e!4350159 (Cons!70433 (h!76881 (t!384617 (exprs!8099 lt!2586451))) (++!16580 (t!384617 (t!384617 (exprs!8099 lt!2586451))) (exprs!8099 ct2!328))))))

(declare-fun b!7254883 () Bool)

(assert (=> b!7254883 (= e!4350159 (exprs!8099 ct2!328))))

(declare-fun d!2255972 () Bool)

(assert (=> d!2255972 e!4350160))

(declare-fun res!2942105 () Bool)

(assert (=> d!2255972 (=> (not res!2942105) (not e!4350160))))

(assert (=> d!2255972 (= res!2942105 (= (content!14633 lt!2586581) ((_ map or) (content!14633 (t!384617 (exprs!8099 lt!2586451))) (content!14633 (exprs!8099 ct2!328)))))))

(assert (=> d!2255972 (= lt!2586581 e!4350159)))

(declare-fun c!1348789 () Bool)

(assert (=> d!2255972 (= c!1348789 ((_ is Nil!70433) (t!384617 (exprs!8099 lt!2586451))))))

(assert (=> d!2255972 (= (++!16580 (t!384617 (exprs!8099 lt!2586451)) (exprs!8099 ct2!328)) lt!2586581)))

(declare-fun b!7254886 () Bool)

(assert (=> b!7254886 (= e!4350160 (or (not (= (exprs!8099 ct2!328) Nil!70433)) (= lt!2586581 (t!384617 (exprs!8099 lt!2586451)))))))

(assert (= (and d!2255972 c!1348789) b!7254883))

(assert (= (and d!2255972 (not c!1348789)) b!7254884))

(assert (= (and d!2255972 res!2942105) b!7254885))

(assert (= (and b!7254885 res!2942106) b!7254886))

(declare-fun m!7935516 () Bool)

(assert (=> b!7254885 m!7935516))

(assert (=> b!7254885 m!7935326))

(assert (=> b!7254885 m!7934714))

(declare-fun m!7935518 () Bool)

(assert (=> b!7254884 m!7935518))

(declare-fun m!7935520 () Bool)

(assert (=> d!2255972 m!7935520))

(assert (=> d!2255972 m!7935260))

(assert (=> d!2255972 m!7934722))

(assert (=> b!7254296 d!2255972))

(declare-fun d!2255974 () Bool)

(declare-fun res!2942107 () Bool)

(declare-fun e!4350161 () Bool)

(assert (=> d!2255974 (=> res!2942107 e!4350161)))

(assert (=> d!2255974 (= res!2942107 ((_ is Nil!70433) (exprs!8099 ct1!232)))))

(assert (=> d!2255974 (= (forall!17508 (exprs!8099 ct1!232) lambda!444849) e!4350161)))

(declare-fun b!7254887 () Bool)

(declare-fun e!4350162 () Bool)

(assert (=> b!7254887 (= e!4350161 e!4350162)))

(declare-fun res!2942108 () Bool)

(assert (=> b!7254887 (=> (not res!2942108) (not e!4350162))))

(assert (=> b!7254887 (= res!2942108 (dynLambda!28772 lambda!444849 (h!76881 (exprs!8099 ct1!232))))))

(declare-fun b!7254888 () Bool)

(assert (=> b!7254888 (= e!4350162 (forall!17508 (t!384617 (exprs!8099 ct1!232)) lambda!444849))))

(assert (= (and d!2255974 (not res!2942107)) b!7254887))

(assert (= (and b!7254887 res!2942108) b!7254888))

(declare-fun b_lambda!278861 () Bool)

(assert (=> (not b_lambda!278861) (not b!7254887)))

(declare-fun m!7935522 () Bool)

(assert (=> b!7254887 m!7935522))

(declare-fun m!7935524 () Bool)

(assert (=> b!7254888 m!7935524))

(assert (=> d!2255534 d!2255974))

(declare-fun d!2255976 () Bool)

(declare-fun res!2942109 () Bool)

(declare-fun e!4350163 () Bool)

(assert (=> d!2255976 (=> res!2942109 e!4350163)))

(assert (=> d!2255976 (= res!2942109 ((_ is Nil!70433) (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))))))

(assert (=> d!2255976 (= (forall!17508 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328)) lambda!444822) e!4350163)))

(declare-fun b!7254889 () Bool)

(declare-fun e!4350164 () Bool)

(assert (=> b!7254889 (= e!4350163 e!4350164)))

(declare-fun res!2942110 () Bool)

(assert (=> b!7254889 (=> (not res!2942110) (not e!4350164))))

(assert (=> b!7254889 (= res!2942110 (dynLambda!28772 lambda!444822 (h!76881 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328)))))))

(declare-fun b!7254890 () Bool)

(assert (=> b!7254890 (= e!4350164 (forall!17508 (t!384617 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328))) lambda!444822))))

(assert (= (and d!2255976 (not res!2942109)) b!7254889))

(assert (= (and b!7254889 res!2942110) b!7254890))

(declare-fun b_lambda!278863 () Bool)

(assert (=> (not b_lambda!278863) (not b!7254889)))

(declare-fun m!7935526 () Bool)

(assert (=> b!7254889 m!7935526))

(declare-fun m!7935528 () Bool)

(assert (=> b!7254890 m!7935528))

(assert (=> d!2255546 d!2255976))

(assert (=> d!2255546 d!2255550))

(declare-fun d!2255978 () Bool)

(assert (=> d!2255978 (forall!17508 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328)) lambda!444822)))

(assert (=> d!2255978 true))

(declare-fun _$78!789 () Unit!163907)

(assert (=> d!2255978 (= (choose!56072 (exprs!8099 lt!2586451) (exprs!8099 ct2!328) lambda!444822) _$78!789)))

(declare-fun bs!1907338 () Bool)

(assert (= bs!1907338 d!2255978))

(assert (=> bs!1907338 m!7934336))

(assert (=> bs!1907338 m!7934336))

(assert (=> bs!1907338 m!7934704))

(assert (=> d!2255546 d!2255978))

(declare-fun d!2255980 () Bool)

(declare-fun res!2942111 () Bool)

(declare-fun e!4350165 () Bool)

(assert (=> d!2255980 (=> res!2942111 e!4350165)))

(assert (=> d!2255980 (= res!2942111 ((_ is Nil!70433) (exprs!8099 lt!2586451)))))

(assert (=> d!2255980 (= (forall!17508 (exprs!8099 lt!2586451) lambda!444822) e!4350165)))

(declare-fun b!7254891 () Bool)

(declare-fun e!4350166 () Bool)

(assert (=> b!7254891 (= e!4350165 e!4350166)))

(declare-fun res!2942112 () Bool)

(assert (=> b!7254891 (=> (not res!2942112) (not e!4350166))))

(assert (=> b!7254891 (= res!2942112 (dynLambda!28772 lambda!444822 (h!76881 (exprs!8099 lt!2586451))))))

(declare-fun b!7254892 () Bool)

(assert (=> b!7254892 (= e!4350166 (forall!17508 (t!384617 (exprs!8099 lt!2586451)) lambda!444822))))

(assert (= (and d!2255980 (not res!2942111)) b!7254891))

(assert (= (and b!7254891 res!2942112) b!7254892))

(declare-fun b_lambda!278865 () Bool)

(assert (=> (not b_lambda!278865) (not b!7254891)))

(declare-fun m!7935530 () Bool)

(assert (=> b!7254891 m!7935530))

(declare-fun m!7935532 () Bool)

(assert (=> b!7254892 m!7935532))

(assert (=> d!2255546 d!2255980))

(declare-fun d!2255982 () Bool)

(assert (=> d!2255982 true))

(declare-fun setRes!53595 () Bool)

(assert (=> d!2255982 setRes!53595))

(declare-fun condSetEmpty!53595 () Bool)

(declare-fun res!2942115 () (InoxSet Context!15198))

(assert (=> d!2255982 (= condSetEmpty!53595 (= res!2942115 ((as const (Array Context!15198 Bool)) false)))))

(assert (=> d!2255982 (= (choose!56075 lt!2586442 lambda!444824) res!2942115)))

(declare-fun setIsEmpty!53595 () Bool)

(assert (=> setIsEmpty!53595 setRes!53595))

(declare-fun tp!2037992 () Bool)

(declare-fun setNonEmpty!53595 () Bool)

(declare-fun e!4350169 () Bool)

(declare-fun setElem!53595 () Context!15198)

(assert (=> setNonEmpty!53595 (= setRes!53595 (and tp!2037992 (inv!89657 setElem!53595) e!4350169))))

(declare-fun setRest!53595 () (InoxSet Context!15198))

(assert (=> setNonEmpty!53595 (= res!2942115 ((_ map or) (store ((as const (Array Context!15198 Bool)) false) setElem!53595 true) setRest!53595))))

(declare-fun b!7254895 () Bool)

(declare-fun tp!2037991 () Bool)

(assert (=> b!7254895 (= e!4350169 tp!2037991)))

(assert (= (and d!2255982 condSetEmpty!53595) setIsEmpty!53595))

(assert (= (and d!2255982 (not condSetEmpty!53595)) setNonEmpty!53595))

(assert (= setNonEmpty!53595 b!7254895))

(declare-fun m!7935534 () Bool)

(assert (=> setNonEmpty!53595 m!7935534))

(assert (=> d!2255526 d!2255982))

(assert (=> b!7254261 d!2255490))

(declare-fun d!2255984 () Bool)

(assert (=> d!2255984 true))

(declare-fun setRes!53596 () Bool)

(assert (=> d!2255984 setRes!53596))

(declare-fun condSetEmpty!53596 () Bool)

(declare-fun res!2942116 () (InoxSet Context!15198))

(assert (=> d!2255984 (= condSetEmpty!53596 (= res!2942116 ((as const (Array Context!15198 Bool)) false)))))

(assert (=> d!2255984 (= (choose!56075 lt!2586453 lambda!444824) res!2942116)))

(declare-fun setIsEmpty!53596 () Bool)

(assert (=> setIsEmpty!53596 setRes!53596))

(declare-fun e!4350170 () Bool)

(declare-fun tp!2037994 () Bool)

(declare-fun setElem!53596 () Context!15198)

(declare-fun setNonEmpty!53596 () Bool)

(assert (=> setNonEmpty!53596 (= setRes!53596 (and tp!2037994 (inv!89657 setElem!53596) e!4350170))))

(declare-fun setRest!53596 () (InoxSet Context!15198))

(assert (=> setNonEmpty!53596 (= res!2942116 ((_ map or) (store ((as const (Array Context!15198 Bool)) false) setElem!53596 true) setRest!53596))))

(declare-fun b!7254896 () Bool)

(declare-fun tp!2037993 () Bool)

(assert (=> b!7254896 (= e!4350170 tp!2037993)))

(assert (= (and d!2255984 condSetEmpty!53596) setIsEmpty!53596))

(assert (= (and d!2255984 (not condSetEmpty!53596)) setNonEmpty!53596))

(assert (= setNonEmpty!53596 b!7254896))

(declare-fun m!7935536 () Bool)

(assert (=> setNonEmpty!53596 m!7935536))

(assert (=> d!2255530 d!2255984))

(declare-fun d!2255986 () Bool)

(declare-fun res!2942121 () Bool)

(declare-fun e!4350175 () Bool)

(assert (=> d!2255986 (=> res!2942121 e!4350175)))

(assert (=> d!2255986 (= res!2942121 ((_ is Nil!70435) lt!2586514))))

(assert (=> d!2255986 (= (noDuplicate!2997 lt!2586514) e!4350175)))

(declare-fun b!7254901 () Bool)

(declare-fun e!4350176 () Bool)

(assert (=> b!7254901 (= e!4350175 e!4350176)))

(declare-fun res!2942122 () Bool)

(assert (=> b!7254901 (=> (not res!2942122) (not e!4350176))))

(assert (=> b!7254901 (= res!2942122 (not (contains!20747 (t!384619 lt!2586514) (h!76883 lt!2586514))))))

(declare-fun b!7254902 () Bool)

(assert (=> b!7254902 (= e!4350176 (noDuplicate!2997 (t!384619 lt!2586514)))))

(assert (= (and d!2255986 (not res!2942121)) b!7254901))

(assert (= (and b!7254901 res!2942122) b!7254902))

(declare-fun m!7935538 () Bool)

(assert (=> b!7254901 m!7935538))

(declare-fun m!7935540 () Bool)

(assert (=> b!7254902 m!7935540))

(assert (=> d!2255544 d!2255986))

(declare-fun d!2255988 () Bool)

(declare-fun e!4350184 () Bool)

(assert (=> d!2255988 e!4350184))

(declare-fun res!2942127 () Bool)

(assert (=> d!2255988 (=> (not res!2942127) (not e!4350184))))

(declare-fun res!2942128 () List!70559)

(assert (=> d!2255988 (= res!2942127 (noDuplicate!2997 res!2942128))))

(declare-fun e!4350183 () Bool)

(assert (=> d!2255988 e!4350183))

(assert (=> d!2255988 (= (choose!56078 lt!2586454) res!2942128)))

(declare-fun b!7254910 () Bool)

(declare-fun e!4350185 () Bool)

(declare-fun tp!2038000 () Bool)

(assert (=> b!7254910 (= e!4350185 tp!2038000)))

(declare-fun b!7254909 () Bool)

(declare-fun tp!2037999 () Bool)

(assert (=> b!7254909 (= e!4350183 (and (inv!89657 (h!76883 res!2942128)) e!4350185 tp!2037999))))

(declare-fun b!7254911 () Bool)

(assert (=> b!7254911 (= e!4350184 (= (content!14632 res!2942128) lt!2586454))))

(assert (= b!7254909 b!7254910))

(assert (= (and d!2255988 ((_ is Cons!70435) res!2942128)) b!7254909))

(assert (= (and d!2255988 res!2942127) b!7254911))

(declare-fun m!7935542 () Bool)

(assert (=> d!2255988 m!7935542))

(declare-fun m!7935544 () Bool)

(assert (=> b!7254909 m!7935544))

(declare-fun m!7935546 () Bool)

(assert (=> b!7254911 m!7935546))

(assert (=> d!2255544 d!2255988))

(assert (=> d!2255520 d!2255526))

(declare-fun d!2255990 () Bool)

(assert (=> d!2255990 (= (flatMap!2824 lt!2586442 lambda!444824) (dynLambda!28768 lambda!444824 lt!2586455))))

(assert (=> d!2255990 true))

(declare-fun _$13!4597 () Unit!163907)

(assert (=> d!2255990 (= (choose!56074 lt!2586442 lt!2586455 lambda!444824) _$13!4597)))

(declare-fun b_lambda!278867 () Bool)

(assert (=> (not b_lambda!278867) (not d!2255990)))

(declare-fun bs!1907339 () Bool)

(assert (= bs!1907339 d!2255990))

(assert (=> bs!1907339 m!7934284))

(assert (=> bs!1907339 m!7934650))

(assert (=> d!2255520 d!2255990))

(declare-fun call!661063 () List!70557)

(declare-fun bm!661054 () Bool)

(declare-fun c!1348790 () Bool)

(declare-fun call!661061 () (InoxSet Context!15198))

(declare-fun c!1348793 () Bool)

(declare-fun c!1348792 () Bool)

(assert (=> bm!661054 (= call!661061 (derivationStepZipperDown!2653 (ite c!1348793 (regOne!37831 (h!76881 (exprs!8099 lt!2586455))) (ite c!1348790 (regTwo!37830 (h!76881 (exprs!8099 lt!2586455))) (ite c!1348792 (regOne!37830 (h!76881 (exprs!8099 lt!2586455))) (reg!18988 (h!76881 (exprs!8099 lt!2586455)))))) (ite (or c!1348793 c!1348790) (Context!15199 (t!384617 (exprs!8099 lt!2586455))) (Context!15199 call!661063)) (h!76882 s1!1971)))))

(declare-fun b!7254912 () Bool)

(declare-fun e!4350187 () Bool)

(assert (=> b!7254912 (= e!4350187 (nullable!7919 (regOne!37830 (h!76881 (exprs!8099 lt!2586455)))))))

(declare-fun bm!661055 () Bool)

(declare-fun call!661060 () (InoxSet Context!15198))

(assert (=> bm!661055 (= call!661060 call!661061)))

(declare-fun b!7254913 () Bool)

(declare-fun e!4350191 () (InoxSet Context!15198))

(declare-fun e!4350190 () (InoxSet Context!15198))

(assert (=> b!7254913 (= e!4350191 e!4350190)))

(assert (=> b!7254913 (= c!1348793 ((_ is Union!18659) (h!76881 (exprs!8099 lt!2586455))))))

(declare-fun b!7254914 () Bool)

(declare-fun e!4350189 () (InoxSet Context!15198))

(declare-fun e!4350188 () (InoxSet Context!15198))

(assert (=> b!7254914 (= e!4350189 e!4350188)))

(assert (=> b!7254914 (= c!1348792 ((_ is Concat!27504) (h!76881 (exprs!8099 lt!2586455))))))

(declare-fun bm!661056 () Bool)

(declare-fun call!661059 () List!70557)

(assert (=> bm!661056 (= call!661063 call!661059)))

(declare-fun b!7254915 () Bool)

(declare-fun e!4350186 () (InoxSet Context!15198))

(assert (=> b!7254915 (= e!4350186 ((as const (Array Context!15198 Bool)) false))))

(declare-fun d!2255992 () Bool)

(declare-fun c!1348791 () Bool)

(assert (=> d!2255992 (= c!1348791 (and ((_ is ElementMatch!18659) (h!76881 (exprs!8099 lt!2586455))) (= (c!1348485 (h!76881 (exprs!8099 lt!2586455))) (h!76882 s1!1971))))))

(assert (=> d!2255992 (= (derivationStepZipperDown!2653 (h!76881 (exprs!8099 lt!2586455)) (Context!15199 (t!384617 (exprs!8099 lt!2586455))) (h!76882 s1!1971)) e!4350191)))

(declare-fun b!7254916 () Bool)

(declare-fun c!1348794 () Bool)

(assert (=> b!7254916 (= c!1348794 ((_ is Star!18659) (h!76881 (exprs!8099 lt!2586455))))))

(assert (=> b!7254916 (= e!4350188 e!4350186)))

(declare-fun bm!661057 () Bool)

(declare-fun call!661062 () (InoxSet Context!15198))

(assert (=> bm!661057 (= call!661062 call!661060)))

(declare-fun b!7254917 () Bool)

(assert (=> b!7254917 (= e!4350186 call!661062)))

(declare-fun b!7254918 () Bool)

(declare-fun call!661064 () (InoxSet Context!15198))

(assert (=> b!7254918 (= e!4350190 ((_ map or) call!661061 call!661064))))

(declare-fun b!7254919 () Bool)

(assert (=> b!7254919 (= e!4350191 (store ((as const (Array Context!15198 Bool)) false) (Context!15199 (t!384617 (exprs!8099 lt!2586455))) true))))

(declare-fun b!7254920 () Bool)

(assert (=> b!7254920 (= c!1348790 e!4350187)))

(declare-fun res!2942129 () Bool)

(assert (=> b!7254920 (=> (not res!2942129) (not e!4350187))))

(assert (=> b!7254920 (= res!2942129 ((_ is Concat!27504) (h!76881 (exprs!8099 lt!2586455))))))

(assert (=> b!7254920 (= e!4350190 e!4350189)))

(declare-fun bm!661058 () Bool)

(assert (=> bm!661058 (= call!661064 (derivationStepZipperDown!2653 (ite c!1348793 (regTwo!37831 (h!76881 (exprs!8099 lt!2586455))) (regOne!37830 (h!76881 (exprs!8099 lt!2586455)))) (ite c!1348793 (Context!15199 (t!384617 (exprs!8099 lt!2586455))) (Context!15199 call!661059)) (h!76882 s1!1971)))))

(declare-fun bm!661059 () Bool)

(assert (=> bm!661059 (= call!661059 ($colon$colon!2925 (exprs!8099 (Context!15199 (t!384617 (exprs!8099 lt!2586455)))) (ite (or c!1348790 c!1348792) (regTwo!37830 (h!76881 (exprs!8099 lt!2586455))) (h!76881 (exprs!8099 lt!2586455)))))))

(declare-fun b!7254921 () Bool)

(assert (=> b!7254921 (= e!4350189 ((_ map or) call!661064 call!661060))))

(declare-fun b!7254922 () Bool)

(assert (=> b!7254922 (= e!4350188 call!661062)))

(assert (= (and d!2255992 c!1348791) b!7254919))

(assert (= (and d!2255992 (not c!1348791)) b!7254913))

(assert (= (and b!7254913 c!1348793) b!7254918))

(assert (= (and b!7254913 (not c!1348793)) b!7254920))

(assert (= (and b!7254920 res!2942129) b!7254912))

(assert (= (and b!7254920 c!1348790) b!7254921))

(assert (= (and b!7254920 (not c!1348790)) b!7254914))

(assert (= (and b!7254914 c!1348792) b!7254922))

(assert (= (and b!7254914 (not c!1348792)) b!7254916))

(assert (= (and b!7254916 c!1348794) b!7254917))

(assert (= (and b!7254916 (not c!1348794)) b!7254915))

(assert (= (or b!7254922 b!7254917) bm!661056))

(assert (= (or b!7254922 b!7254917) bm!661057))

(assert (= (or b!7254921 bm!661056) bm!661059))

(assert (= (or b!7254921 bm!661057) bm!661055))

(assert (= (or b!7254918 b!7254921) bm!661058))

(assert (= (or b!7254918 bm!661055) bm!661054))

(declare-fun m!7935548 () Bool)

(assert (=> bm!661054 m!7935548))

(declare-fun m!7935550 () Bool)

(assert (=> b!7254919 m!7935550))

(declare-fun m!7935552 () Bool)

(assert (=> b!7254912 m!7935552))

(declare-fun m!7935554 () Bool)

(assert (=> bm!661059 m!7935554))

(declare-fun m!7935556 () Bool)

(assert (=> bm!661058 m!7935556))

(assert (=> bm!660917 d!2255992))

(assert (=> bs!1907049 d!2255524))

(declare-fun bs!1907340 () Bool)

(declare-fun d!2255994 () Bool)

(assert (= bs!1907340 (and d!2255994 d!2255898)))

(declare-fun lambda!444907 () Int)

(assert (=> bs!1907340 (= (= lambda!444823 lambda!444856) (= lambda!444907 lambda!444894))))

(declare-fun bs!1907341 () Bool)

(assert (= bs!1907341 (and d!2255994 d!2255910)))

(assert (=> bs!1907341 (not (= lambda!444907 lambda!444899))))

(declare-fun bs!1907342 () Bool)

(assert (= bs!1907342 (and d!2255994 b!7254034)))

(assert (=> bs!1907342 (not (= lambda!444907 lambda!444823))))

(declare-fun bs!1907343 () Bool)

(assert (= bs!1907343 (and d!2255994 d!2255908)))

(assert (=> bs!1907343 (not (= lambda!444907 lambda!444898))))

(declare-fun bs!1907344 () Bool)

(assert (= bs!1907344 (and d!2255994 d!2255540)))

(assert (=> bs!1907344 (= lambda!444907 lambda!444853)))

(declare-fun bs!1907345 () Bool)

(assert (= bs!1907345 (and d!2255994 d!2255542)))

(assert (=> bs!1907345 (not (= lambda!444907 lambda!444856))))

(declare-fun bs!1907346 () Bool)

(assert (= bs!1907346 (and d!2255994 d!2255968)))

(assert (=> bs!1907346 (not (= lambda!444907 lambda!444906))))

(declare-fun bs!1907347 () Bool)

(assert (= bs!1907347 (and d!2255994 d!2255854)))

(assert (=> bs!1907347 (not (= lambda!444907 lambda!444890))))

(declare-fun bs!1907348 () Bool)

(assert (= bs!1907348 (and d!2255994 d!2255864)))

(assert (=> bs!1907348 (not (= lambda!444907 lambda!444891))))

(declare-fun bs!1907349 () Bool)

(assert (= bs!1907349 (and d!2255994 d!2255900)))

(assert (=> bs!1907349 (not (= lambda!444907 lambda!444897))))

(declare-fun bs!1907350 () Bool)

(assert (= bs!1907350 (and d!2255994 d!2255936)))

(assert (=> bs!1907350 (not (= lambda!444907 lambda!444903))))

(declare-fun bs!1907351 () Bool)

(assert (= bs!1907351 (and d!2255994 d!2255886)))

(assert (=> bs!1907351 (not (= lambda!444907 lambda!444893))))

(assert (=> d!2255994 true))

(assert (=> d!2255994 (< (dynLambda!28769 order!28997 lambda!444823) (dynLambda!28769 order!28997 lambda!444907))))

(assert (=> d!2255994 (= (exists!4397 (toList!11488 lt!2586454) lambda!444823) (not (forall!17509 (toList!11488 lt!2586454) lambda!444907)))))

(declare-fun bs!1907352 () Bool)

(assert (= bs!1907352 d!2255994))

(assert (=> bs!1907352 m!7934294))

(declare-fun m!7935558 () Bool)

(assert (=> bs!1907352 m!7935558))

(assert (=> d!2255538 d!2255994))

(assert (=> d!2255538 d!2255544))

(declare-fun d!2255996 () Bool)

(declare-fun res!2942132 () Bool)

(assert (=> d!2255996 (= res!2942132 (exists!4397 (toList!11488 lt!2586454) lambda!444823))))

(assert (=> d!2255996 true))

(assert (=> d!2255996 (= (choose!56076 lt!2586454 lambda!444823) res!2942132)))

(declare-fun bs!1907353 () Bool)

(assert (= bs!1907353 d!2255996))

(assert (=> bs!1907353 m!7934294))

(assert (=> bs!1907353 m!7934294))

(assert (=> bs!1907353 m!7934684))

(assert (=> d!2255538 d!2255996))

(declare-fun d!2255998 () Bool)

(assert (=> d!2255998 (= ($colon$colon!2925 (exprs!8099 lt!2586433) (ite (or c!1348559 c!1348561) (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (h!76881 (exprs!8099 ct1!232)))) (Cons!70433 (ite (or c!1348559 c!1348561) (regTwo!37830 (h!76881 (exprs!8099 ct1!232))) (h!76881 (exprs!8099 ct1!232))) (exprs!8099 lt!2586433)))))

(assert (=> bm!660935 d!2255998))

(declare-fun d!2256000 () Bool)

(declare-fun c!1348795 () Bool)

(assert (=> d!2256000 (= c!1348795 (isEmpty!40561 (tail!14343 (t!384618 s1!1971))))))

(declare-fun e!4350192 () Bool)

(assert (=> d!2256000 (= (matchZipper!3569 (derivationStepZipper!3437 lt!2586441 (head!14915 (t!384618 s1!1971))) (tail!14343 (t!384618 s1!1971))) e!4350192)))

(declare-fun b!7254923 () Bool)

(assert (=> b!7254923 (= e!4350192 (nullableZipper!2921 (derivationStepZipper!3437 lt!2586441 (head!14915 (t!384618 s1!1971)))))))

(declare-fun b!7254924 () Bool)

(assert (=> b!7254924 (= e!4350192 (matchZipper!3569 (derivationStepZipper!3437 (derivationStepZipper!3437 lt!2586441 (head!14915 (t!384618 s1!1971))) (head!14915 (tail!14343 (t!384618 s1!1971)))) (tail!14343 (tail!14343 (t!384618 s1!1971)))))))

(assert (= (and d!2256000 c!1348795) b!7254923))

(assert (= (and d!2256000 (not c!1348795)) b!7254924))

(assert (=> d!2256000 m!7934578))

(assert (=> d!2256000 m!7935224))

(assert (=> b!7254923 m!7934576))

(declare-fun m!7935560 () Bool)

(assert (=> b!7254923 m!7935560))

(assert (=> b!7254924 m!7934578))

(assert (=> b!7254924 m!7935228))

(assert (=> b!7254924 m!7934576))

(assert (=> b!7254924 m!7935228))

(declare-fun m!7935562 () Bool)

(assert (=> b!7254924 m!7935562))

(assert (=> b!7254924 m!7934578))

(assert (=> b!7254924 m!7935232))

(assert (=> b!7254924 m!7935562))

(assert (=> b!7254924 m!7935232))

(declare-fun m!7935564 () Bool)

(assert (=> b!7254924 m!7935564))

(assert (=> b!7254212 d!2256000))

(declare-fun bs!1907354 () Bool)

(declare-fun d!2256002 () Bool)

(assert (= bs!1907354 (and d!2256002 d!2255802)))

(declare-fun lambda!444908 () Int)

(assert (=> bs!1907354 (= (= (head!14915 (t!384618 s1!1971)) (head!14915 (++!16581 (t!384618 s1!1971) s2!1849))) (= lambda!444908 lambda!444885))))

(declare-fun bs!1907355 () Bool)

(assert (= bs!1907355 (and d!2256002 d!2255878)))

(assert (=> bs!1907355 (= lambda!444908 lambda!444892)))

(declare-fun bs!1907356 () Bool)

(assert (= bs!1907356 (and d!2256002 d!2255562)))

(assert (=> bs!1907356 (= (= (head!14915 (t!384618 s1!1971)) (h!76882 s1!1971)) (= lambda!444908 lambda!444860))))

(declare-fun bs!1907357 () Bool)

(assert (= bs!1907357 (and d!2256002 d!2255852)))

(assert (=> bs!1907357 (= lambda!444908 lambda!444887)))

(declare-fun bs!1907358 () Bool)

(assert (= bs!1907358 (and d!2256002 d!2255950)))

(assert (=> bs!1907358 (= (= (head!14915 (t!384618 s1!1971)) (head!14915 s2!1849)) (= lambda!444908 lambda!444905))))

(declare-fun bs!1907359 () Bool)

(assert (= bs!1907359 (and d!2256002 b!7254035)))

(assert (=> bs!1907359 (= (= (head!14915 (t!384618 s1!1971)) (h!76882 s1!1971)) (= lambda!444908 lambda!444824))))

(declare-fun bs!1907360 () Bool)

(assert (= bs!1907360 (and d!2256002 d!2255504)))

(assert (=> bs!1907360 (= (= (head!14915 (t!384618 s1!1971)) (h!76882 s1!1971)) (= lambda!444908 lambda!444845))))

(declare-fun bs!1907361 () Bool)

(assert (= bs!1907361 (and d!2256002 d!2255940)))

(assert (=> bs!1907361 (= (= (head!14915 (t!384618 s1!1971)) (head!14915 s1!1971)) (= lambda!444908 lambda!444904))))

(declare-fun bs!1907362 () Bool)

(assert (= bs!1907362 (and d!2256002 d!2255822)))

(assert (=> bs!1907362 (= lambda!444908 lambda!444886)))

(assert (=> d!2256002 true))

(assert (=> d!2256002 (= (derivationStepZipper!3437 lt!2586441 (head!14915 (t!384618 s1!1971))) (flatMap!2824 lt!2586441 lambda!444908))))

(declare-fun bs!1907363 () Bool)

(assert (= bs!1907363 d!2256002))

(declare-fun m!7935566 () Bool)

(assert (=> bs!1907363 m!7935566))

(assert (=> b!7254212 d!2256002))

(assert (=> b!7254212 d!2255824))

(assert (=> b!7254212 d!2255826))

(declare-fun b!7254938 () Bool)

(declare-fun e!4350195 () Bool)

(declare-fun tp!2038014 () Bool)

(declare-fun tp!2038015 () Bool)

(assert (=> b!7254938 (= e!4350195 (and tp!2038014 tp!2038015))))

(declare-fun b!7254937 () Bool)

(declare-fun tp!2038012 () Bool)

(assert (=> b!7254937 (= e!4350195 tp!2038012)))

(assert (=> b!7254336 (= tp!2037945 e!4350195)))

(declare-fun b!7254936 () Bool)

(declare-fun tp!2038013 () Bool)

(declare-fun tp!2038011 () Bool)

(assert (=> b!7254936 (= e!4350195 (and tp!2038013 tp!2038011))))

(declare-fun b!7254935 () Bool)

(assert (=> b!7254935 (= e!4350195 tp_is_empty!46783)))

(assert (= (and b!7254336 ((_ is ElementMatch!18659) (h!76881 (exprs!8099 ct2!328)))) b!7254935))

(assert (= (and b!7254336 ((_ is Concat!27504) (h!76881 (exprs!8099 ct2!328)))) b!7254936))

(assert (= (and b!7254336 ((_ is Star!18659) (h!76881 (exprs!8099 ct2!328)))) b!7254937))

(assert (= (and b!7254336 ((_ is Union!18659) (h!76881 (exprs!8099 ct2!328)))) b!7254938))

(declare-fun b!7254939 () Bool)

(declare-fun e!4350196 () Bool)

(declare-fun tp!2038016 () Bool)

(declare-fun tp!2038017 () Bool)

(assert (=> b!7254939 (= e!4350196 (and tp!2038016 tp!2038017))))

(assert (=> b!7254336 (= tp!2037946 e!4350196)))

(assert (= (and b!7254336 ((_ is Cons!70433) (t!384617 (exprs!8099 ct2!328)))) b!7254939))

(declare-fun b!7254940 () Bool)

(declare-fun e!4350197 () Bool)

(declare-fun tp!2038018 () Bool)

(assert (=> b!7254940 (= e!4350197 (and tp_is_empty!46783 tp!2038018))))

(assert (=> b!7254334 (= tp!2037943 e!4350197)))

(assert (= (and b!7254334 ((_ is Cons!70434) (t!384618 (t!384618 s1!1971)))) b!7254940))

(declare-fun b!7254944 () Bool)

(declare-fun e!4350198 () Bool)

(declare-fun tp!2038022 () Bool)

(declare-fun tp!2038023 () Bool)

(assert (=> b!7254944 (= e!4350198 (and tp!2038022 tp!2038023))))

(declare-fun b!7254943 () Bool)

(declare-fun tp!2038020 () Bool)

(assert (=> b!7254943 (= e!4350198 tp!2038020)))

(assert (=> b!7254329 (= tp!2037939 e!4350198)))

(declare-fun b!7254942 () Bool)

(declare-fun tp!2038021 () Bool)

(declare-fun tp!2038019 () Bool)

(assert (=> b!7254942 (= e!4350198 (and tp!2038021 tp!2038019))))

(declare-fun b!7254941 () Bool)

(assert (=> b!7254941 (= e!4350198 tp_is_empty!46783)))

(assert (= (and b!7254329 ((_ is ElementMatch!18659) (h!76881 (exprs!8099 ct1!232)))) b!7254941))

(assert (= (and b!7254329 ((_ is Concat!27504) (h!76881 (exprs!8099 ct1!232)))) b!7254942))

(assert (= (and b!7254329 ((_ is Star!18659) (h!76881 (exprs!8099 ct1!232)))) b!7254943))

(assert (= (and b!7254329 ((_ is Union!18659) (h!76881 (exprs!8099 ct1!232)))) b!7254944))

(declare-fun b!7254945 () Bool)

(declare-fun e!4350199 () Bool)

(declare-fun tp!2038024 () Bool)

(declare-fun tp!2038025 () Bool)

(assert (=> b!7254945 (= e!4350199 (and tp!2038024 tp!2038025))))

(assert (=> b!7254329 (= tp!2037940 e!4350199)))

(assert (= (and b!7254329 ((_ is Cons!70433) (t!384617 (exprs!8099 ct1!232)))) b!7254945))

(declare-fun b!7254946 () Bool)

(declare-fun e!4350200 () Bool)

(declare-fun tp!2038026 () Bool)

(assert (=> b!7254946 (= e!4350200 (and tp_is_empty!46783 tp!2038026))))

(assert (=> b!7254335 (= tp!2037944 e!4350200)))

(assert (= (and b!7254335 ((_ is Cons!70434) (t!384618 (t!384618 s2!1849)))) b!7254946))

(declare-fun b_lambda!278869 () Bool)

(assert (= b_lambda!278859 (or d!2255510 b_lambda!278869)))

(declare-fun bs!1907364 () Bool)

(declare-fun d!2256004 () Bool)

(assert (= bs!1907364 (and d!2256004 d!2255510)))

(declare-fun validRegex!9546 (Regex!18659) Bool)

(assert (=> bs!1907364 (= (dynLambda!28772 lambda!444848 (h!76881 (exprs!8099 lt!2586452))) (validRegex!9546 (h!76881 (exprs!8099 lt!2586452))))))

(declare-fun m!7935568 () Bool)

(assert (=> bs!1907364 m!7935568))

(assert (=> b!7254844 d!2256004))

(declare-fun b_lambda!278871 () Bool)

(assert (= b_lambda!278867 (or b!7254035 b_lambda!278871)))

(assert (=> d!2255990 d!2255566))

(declare-fun b_lambda!278873 () Bool)

(assert (= b_lambda!278861 (or d!2255534 b_lambda!278873)))

(declare-fun bs!1907365 () Bool)

(declare-fun d!2256006 () Bool)

(assert (= bs!1907365 (and d!2256006 d!2255534)))

(assert (=> bs!1907365 (= (dynLambda!28772 lambda!444849 (h!76881 (exprs!8099 ct1!232))) (validRegex!9546 (h!76881 (exprs!8099 ct1!232))))))

(declare-fun m!7935570 () Bool)

(assert (=> bs!1907365 m!7935570))

(assert (=> b!7254887 d!2256006))

(declare-fun b_lambda!278875 () Bool)

(assert (= b_lambda!278855 (or b!7254030 b_lambda!278875)))

(declare-fun bs!1907366 () Bool)

(declare-fun d!2256008 () Bool)

(assert (= bs!1907366 (and d!2256008 b!7254030)))

(assert (=> bs!1907366 (= (dynLambda!28772 lambda!444822 (h!76881 (exprs!8099 ct1!232))) (validRegex!9546 (h!76881 (exprs!8099 ct1!232))))))

(assert (=> bs!1907366 m!7935570))

(assert (=> b!7254793 d!2256008))

(declare-fun b_lambda!278877 () Bool)

(assert (= b_lambda!278853 (or b!7254030 b_lambda!278877)))

(declare-fun bs!1907367 () Bool)

(declare-fun d!2256010 () Bool)

(assert (= bs!1907367 (and d!2256010 b!7254030)))

(assert (=> bs!1907367 (= (dynLambda!28772 lambda!444822 (h!76881 (++!16580 (exprs!8099 ct1!232) (exprs!8099 ct2!328)))) (validRegex!9546 (h!76881 (++!16580 (exprs!8099 ct1!232) (exprs!8099 ct2!328)))))))

(declare-fun m!7935572 () Bool)

(assert (=> bs!1907367 m!7935572))

(assert (=> b!7254791 d!2256010))

(declare-fun b_lambda!278879 () Bool)

(assert (= b_lambda!278863 (or b!7254030 b_lambda!278879)))

(declare-fun bs!1907368 () Bool)

(declare-fun d!2256012 () Bool)

(assert (= bs!1907368 (and d!2256012 b!7254030)))

(assert (=> bs!1907368 (= (dynLambda!28772 lambda!444822 (h!76881 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328)))) (validRegex!9546 (h!76881 (++!16580 (exprs!8099 lt!2586451) (exprs!8099 ct2!328)))))))

(declare-fun m!7935574 () Bool)

(assert (=> bs!1907368 m!7935574))

(assert (=> b!7254889 d!2256012))

(declare-fun b_lambda!278881 () Bool)

(assert (= b_lambda!278851 (or b!7254034 b_lambda!278881)))

(declare-fun bs!1907369 () Bool)

(declare-fun d!2256014 () Bool)

(assert (= bs!1907369 (and d!2256014 b!7254034)))

(assert (=> bs!1907369 (= (dynLambda!28770 lambda!444823 (h!76883 (toList!11488 lt!2586454))) (matchZipper!3569 (store ((as const (Array Context!15198 Bool)) false) (h!76883 (toList!11488 lt!2586454)) true) (t!384618 s1!1971)))))

(declare-fun m!7935576 () Bool)

(assert (=> bs!1907369 m!7935576))

(assert (=> bs!1907369 m!7935576))

(declare-fun m!7935578 () Bool)

(assert (=> bs!1907369 m!7935578))

(assert (=> b!7254784 d!2256014))

(declare-fun b_lambda!278883 () Bool)

(assert (= b_lambda!278857 (or b!7254035 b_lambda!278883)))

(assert (=> d!2255924 d!2255570))

(declare-fun b_lambda!278885 () Bool)

(assert (= b_lambda!278847 (or d!2255536 b_lambda!278885)))

(declare-fun bs!1907370 () Bool)

(declare-fun d!2256016 () Bool)

(assert (= bs!1907370 (and d!2256016 d!2255536)))

(assert (=> bs!1907370 (= (dynLambda!28772 lambda!444850 (h!76881 (exprs!8099 ct2!328))) (validRegex!9546 (h!76881 (exprs!8099 ct2!328))))))

(declare-fun m!7935580 () Bool)

(assert (=> bs!1907370 m!7935580))

(assert (=> b!7254732 d!2256016))

(declare-fun b_lambda!278887 () Bool)

(assert (= b_lambda!278849 (or b!7254034 b_lambda!278887)))

(declare-fun bs!1907371 () Bool)

(declare-fun d!2256018 () Bool)

(assert (= bs!1907371 (and d!2256018 b!7254034)))

(assert (=> bs!1907371 (= (dynLambda!28770 lambda!444823 lt!2586574) (matchZipper!3569 (store ((as const (Array Context!15198 Bool)) false) lt!2586574 true) (t!384618 s1!1971)))))

(declare-fun m!7935582 () Bool)

(assert (=> bs!1907371 m!7935582))

(assert (=> bs!1907371 m!7935582))

(declare-fun m!7935584 () Bool)

(assert (=> bs!1907371 m!7935584))

(assert (=> d!2255882 d!2256018))

(declare-fun b_lambda!278889 () Bool)

(assert (= b_lambda!278865 (or b!7254030 b_lambda!278889)))

(declare-fun bs!1907372 () Bool)

(declare-fun d!2256020 () Bool)

(assert (= bs!1907372 (and d!2256020 b!7254030)))

(assert (=> bs!1907372 (= (dynLambda!28772 lambda!444822 (h!76881 (exprs!8099 lt!2586451))) (validRegex!9546 (h!76881 (exprs!8099 lt!2586451))))))

(declare-fun m!7935586 () Bool)

(assert (=> bs!1907372 m!7935586))

(assert (=> b!7254891 d!2256020))

(declare-fun b_lambda!278891 () Bool)

(assert (= b_lambda!278845 (or d!2255540 b_lambda!278891)))

(declare-fun bs!1907373 () Bool)

(declare-fun d!2256022 () Bool)

(assert (= bs!1907373 (and d!2256022 d!2255540)))

(assert (=> bs!1907373 (= (dynLambda!28770 lambda!444853 (h!76883 lt!2586444)) (not (dynLambda!28770 lambda!444823 (h!76883 lt!2586444))))))

(declare-fun b_lambda!278893 () Bool)

(assert (=> (not b_lambda!278893) (not bs!1907373)))

(declare-fun m!7935588 () Bool)

(assert (=> bs!1907373 m!7935588))

(assert (=> b!7254726 d!2256022))

(check-sat (not bm!661024) (not b_lambda!278879) (not bm!661036) (not b!7254740) (not d!2256000) (not b!7254936) (not d!2255888) (not b_lambda!278887) (not d!2255898) (not b!7254677) (not b!7254825) (not b!7254816) (not bs!1907365) (not b!7254672) (not d!2255972) (not d!2255940) (not b!7254857) (not bm!661025) (not d!2255906) (not bm!661047) (not b!7254826) (not b!7254794) (not b!7254850) (not b!7254727) (not b!7254944) (not b!7254780) (not bm!661048) (not d!2255822) (not bs!1907371) (not b!7254841) (not bm!661007) (not d!2255994) (not b_lambda!278877) (not b_lambda!278891) (not b!7254670) (not d!2255938) (not bm!661018) (not d!2255960) (not bs!1907364) (not b!7254662) (not bm!661012) (not b!7254911) (not d!2255950) (not b!7254940) (not bm!661002) (not b!7254836) (not d!2255852) (not b!7254832) (not d!2255990) (not b!7254847) (not b!7254664) (not d!2255854) (not b!7254845) (not d!2255948) (not b!7254817) (not b!7254849) (not bs!1907369) (not setNonEmpty!53596) (not b!7254909) (not setNonEmpty!53595) (not b!7254653) (not b!7254896) (not b!7254689) (not d!2255856) (not d!2255936) (not b!7254829) (not bm!661031) (not bm!661059) (not b!7254848) (not b!7254697) (not b_lambda!278869) (not d!2255850) (not d!2255996) (not bm!661046) (not b!7254755) (not b!7254711) (not bm!661032) (not b!7254642) (not d!2255880) (not bm!661006) (not b!7254674) (not b!7254699) (not b!7254734) (not b!7254942) (not b!7254869) (not bm!661052) (not bm!661044) (not b!7254888) (not d!2255892) (not b!7254924) (not d!2255802) (not bm!661013) (not b!7254695) (not b!7254856) (not bs!1907367) (not d!2255988) (not b!7254846) (not d!2255920) (not d!2255902) (not b_lambda!278889) (not b!7254910) (not d!2255924) (not bm!661045) (not bm!661014) (not b!7254733) (not bm!661043) (not b!7254939) (not b!7254892) (not b!7254945) (not b!7254735) (not b!7254654) (not b!7254688) (not d!2256002) (not d!2255830) (not b!7254895) (not b!7254739) (not bm!661037) (not d!2255878) (not b!7254855) (not b!7254834) (not b!7254660) (not b_lambda!278885) (not b!7254943) (not b!7254868) (not d!2255910) (not b!7254901) (not b!7254754) (not b!7254676) (not d!2255882) (not b!7254885) (not b!7254788) (not b!7254946) (not b!7254766) (not b!7254782) (not bm!661054) (not d!2255912) (not bs!1907372) (not b!7254884) (not b_lambda!278793) (not d!2255968) (not d!2255908) (not b!7254923) (not bm!661030) (not b_lambda!278893) (not d!2255874) (not d!2255820) (not b!7254767) (not b_lambda!278789) (not b!7254831) (not b!7254752) (not b_lambda!278873) (not b!7254912) (not d!2255876) (not b!7254786) (not b_lambda!278871) (not bs!1907368) (not d!2255930) tp_is_empty!46783 (not bm!661058) (not b!7254880) (not b!7254737) (not b_lambda!278875) (not d!2255864) (not b!7254852) (not bs!1907366) (not b!7254938) (not d!2255978) (not b!7254937) (not b_lambda!278883) (not bs!1907370) (not b_lambda!278791) (not b!7254781) (not d!2255916) (not bm!661008) (not d!2255958) (not d!2255900) (not b!7254839) (not b!7254872) (not b!7254792) (not b!7254882) (not bm!661019) (not bm!661020) (not b!7254675) (not d!2255800) (not d!2255934) (not b!7254700) (not b!7254823) (not b_lambda!278881) (not bm!661026) (not b!7254878) (not b!7254902) (not d!2255932) (not b!7254890) (not bm!661053) (not d!2255886) (not bm!661038))
(check-sat)
