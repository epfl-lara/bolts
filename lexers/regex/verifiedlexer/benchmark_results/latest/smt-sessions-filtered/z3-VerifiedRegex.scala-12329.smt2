; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691552 () Bool)

(assert start!691552)

(declare-fun b!7103821 () Bool)

(declare-fun e!4269657 () Bool)

(declare-fun tp!1953467 () Bool)

(assert (=> b!7103821 (= e!4269657 tp!1953467)))

(declare-fun b!7103822 () Bool)

(declare-fun e!4269656 () Bool)

(declare-datatypes ((C!36072 0))(
  ( (C!36073 (val!27742 Int)) )
))
(declare-datatypes ((Regex!17901 0))(
  ( (ElementMatch!17901 (c!1325484 C!36072)) (Concat!26746 (regOne!36314 Regex!17901) (regTwo!36314 Regex!17901)) (EmptyExpr!17901) (Star!17901 (reg!18230 Regex!17901)) (EmptyLang!17901) (Union!17901 (regOne!36315 Regex!17901) (regTwo!36315 Regex!17901)) )
))
(declare-fun r!11554 () Regex!17901)

(declare-fun regexDepth!388 (Regex!17901) Int)

(assert (=> b!7103822 (= e!4269656 (>= (regexDepth!388 (regOne!36315 r!11554)) (regexDepth!388 r!11554)))))

(declare-fun b!7103823 () Bool)

(declare-fun e!4269654 () Bool)

(declare-fun tp!1953465 () Bool)

(declare-fun tp!1953462 () Bool)

(assert (=> b!7103823 (= e!4269654 (and tp!1953465 tp!1953462))))

(declare-fun b!7103824 () Bool)

(declare-fun res!2900156 () Bool)

(declare-fun e!4269658 () Bool)

(assert (=> b!7103824 (=> (not res!2900156) (not e!4269658))))

(declare-fun a!1901 () C!36072)

(get-info :version)

(assert (=> b!7103824 (= res!2900156 (and (or (not ((_ is ElementMatch!17901) r!11554)) (not (= (c!1325484 r!11554) a!1901))) ((_ is Union!17901) r!11554)))))

(declare-fun b!7103825 () Bool)

(declare-fun tp!1953466 () Bool)

(declare-fun tp!1953468 () Bool)

(assert (=> b!7103825 (= e!4269654 (and tp!1953466 tp!1953468))))

(declare-fun b!7103826 () Bool)

(declare-fun tp!1953463 () Bool)

(assert (=> b!7103826 (= e!4269654 tp!1953463)))

(declare-fun b!7103827 () Bool)

(declare-fun e!4269655 () Bool)

(declare-fun tp!1953464 () Bool)

(assert (=> b!7103827 (= e!4269655 tp!1953464)))

(declare-fun b!7103828 () Bool)

(assert (=> b!7103828 (= e!4269658 e!4269656)))

(declare-fun res!2900157 () Bool)

(assert (=> b!7103828 (=> (not res!2900157) (not e!4269656))))

(declare-datatypes ((List!68862 0))(
  ( (Nil!68738) (Cons!68738 (h!75186 Regex!17901) (t!382679 List!68862)) )
))
(declare-datatypes ((Context!13790 0))(
  ( (Context!13791 (exprs!7395 List!68862)) )
))
(declare-fun lt!2558534 () Context!13790)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2424 (Regex!17901 Context!13790 C!36072) (InoxSet Context!13790))

(assert (=> b!7103828 (= res!2900157 (= (derivationStepZipperDown!2424 r!11554 lt!2558534 a!1901) ((_ map or) (derivationStepZipperDown!2424 (regOne!36315 r!11554) lt!2558534 a!1901) (derivationStepZipperDown!2424 (regTwo!36315 r!11554) lt!2558534 a!1901))))))

(declare-fun c!9994 () Context!13790)

(declare-fun auxCtx!45 () Context!13790)

(declare-fun ++!16053 (List!68862 List!68862) List!68862)

(assert (=> b!7103828 (= lt!2558534 (Context!13791 (++!16053 (exprs!7395 c!9994) (exprs!7395 auxCtx!45))))))

(declare-fun lambda!431315 () Int)

(declare-datatypes ((Unit!162473 0))(
  ( (Unit!162474) )
))
(declare-fun lt!2558533 () Unit!162473)

(declare-fun lemmaConcatPreservesForall!1186 (List!68862 List!68862 Int) Unit!162473)

(assert (=> b!7103828 (= lt!2558533 (lemmaConcatPreservesForall!1186 (exprs!7395 c!9994) (exprs!7395 auxCtx!45) lambda!431315))))

(declare-fun lt!2558535 () Unit!162473)

(assert (=> b!7103828 (= lt!2558535 (lemmaConcatPreservesForall!1186 (exprs!7395 c!9994) (exprs!7395 auxCtx!45) lambda!431315))))

(declare-fun lt!2558536 () Unit!162473)

(assert (=> b!7103828 (= lt!2558536 (lemmaConcatPreservesForall!1186 (exprs!7395 c!9994) (exprs!7395 auxCtx!45) lambda!431315))))

(declare-fun res!2900155 () Bool)

(assert (=> start!691552 (=> (not res!2900155) (not e!4269658))))

(declare-fun validRegex!9174 (Regex!17901) Bool)

(assert (=> start!691552 (= res!2900155 (validRegex!9174 r!11554))))

(assert (=> start!691552 e!4269658))

(assert (=> start!691552 e!4269654))

(declare-fun tp_is_empty!45035 () Bool)

(assert (=> start!691552 tp_is_empty!45035))

(declare-fun inv!87615 (Context!13790) Bool)

(assert (=> start!691552 (and (inv!87615 c!9994) e!4269655)))

(assert (=> start!691552 (and (inv!87615 auxCtx!45) e!4269657)))

(declare-fun b!7103829 () Bool)

(declare-fun res!2900158 () Bool)

(assert (=> b!7103829 (=> (not res!2900158) (not e!4269656))))

(assert (=> b!7103829 (= res!2900158 (validRegex!9174 (regOne!36315 r!11554)))))

(declare-fun b!7103830 () Bool)

(assert (=> b!7103830 (= e!4269654 tp_is_empty!45035)))

(assert (= (and start!691552 res!2900155) b!7103824))

(assert (= (and b!7103824 res!2900156) b!7103828))

(assert (= (and b!7103828 res!2900157) b!7103829))

(assert (= (and b!7103829 res!2900158) b!7103822))

(assert (= (and start!691552 ((_ is ElementMatch!17901) r!11554)) b!7103830))

(assert (= (and start!691552 ((_ is Concat!26746) r!11554)) b!7103825))

(assert (= (and start!691552 ((_ is Star!17901) r!11554)) b!7103826))

(assert (= (and start!691552 ((_ is Union!17901) r!11554)) b!7103823))

(assert (= start!691552 b!7103827))

(assert (= start!691552 b!7103821))

(declare-fun m!7827846 () Bool)

(assert (=> b!7103822 m!7827846))

(declare-fun m!7827848 () Bool)

(assert (=> b!7103822 m!7827848))

(declare-fun m!7827850 () Bool)

(assert (=> b!7103828 m!7827850))

(declare-fun m!7827852 () Bool)

(assert (=> b!7103828 m!7827852))

(declare-fun m!7827854 () Bool)

(assert (=> b!7103828 m!7827854))

(declare-fun m!7827856 () Bool)

(assert (=> b!7103828 m!7827856))

(declare-fun m!7827858 () Bool)

(assert (=> b!7103828 m!7827858))

(assert (=> b!7103828 m!7827856))

(assert (=> b!7103828 m!7827856))

(declare-fun m!7827860 () Bool)

(assert (=> start!691552 m!7827860))

(declare-fun m!7827862 () Bool)

(assert (=> start!691552 m!7827862))

(declare-fun m!7827864 () Bool)

(assert (=> start!691552 m!7827864))

(declare-fun m!7827866 () Bool)

(assert (=> b!7103829 m!7827866))

(check-sat (not b!7103825) (not b!7103821) (not b!7103823) (not b!7103822) (not b!7103827) (not start!691552) (not b!7103829) (not b!7103826) tp_is_empty!45035 (not b!7103828))
(check-sat)
(get-model)

(declare-fun b!7103849 () Bool)

(declare-fun e!4269673 () Bool)

(declare-fun e!4269679 () Bool)

(assert (=> b!7103849 (= e!4269673 e!4269679)))

(declare-fun res!2900173 () Bool)

(assert (=> b!7103849 (=> (not res!2900173) (not e!4269679))))

(declare-fun call!647131 () Bool)

(assert (=> b!7103849 (= res!2900173 call!647131)))

(declare-fun b!7103850 () Bool)

(declare-fun e!4269675 () Bool)

(assert (=> b!7103850 (= e!4269675 call!647131)))

(declare-fun b!7103851 () Bool)

(declare-fun e!4269677 () Bool)

(declare-fun e!4269676 () Bool)

(assert (=> b!7103851 (= e!4269677 e!4269676)))

(declare-fun res!2900172 () Bool)

(declare-fun nullable!7537 (Regex!17901) Bool)

(assert (=> b!7103851 (= res!2900172 (not (nullable!7537 (reg!18230 (regOne!36315 r!11554)))))))

(assert (=> b!7103851 (=> (not res!2900172) (not e!4269676))))

(declare-fun b!7103852 () Bool)

(declare-fun res!2900170 () Bool)

(assert (=> b!7103852 (=> (not res!2900170) (not e!4269675))))

(declare-fun call!647132 () Bool)

(assert (=> b!7103852 (= res!2900170 call!647132)))

(declare-fun e!4269674 () Bool)

(assert (=> b!7103852 (= e!4269674 e!4269675)))

(declare-fun d!2218976 () Bool)

(declare-fun res!2900171 () Bool)

(declare-fun e!4269678 () Bool)

(assert (=> d!2218976 (=> res!2900171 e!4269678)))

(assert (=> d!2218976 (= res!2900171 ((_ is ElementMatch!17901) (regOne!36315 r!11554)))))

(assert (=> d!2218976 (= (validRegex!9174 (regOne!36315 r!11554)) e!4269678)))

(declare-fun b!7103853 () Bool)

(declare-fun res!2900169 () Bool)

(assert (=> b!7103853 (=> res!2900169 e!4269673)))

(assert (=> b!7103853 (= res!2900169 (not ((_ is Concat!26746) (regOne!36315 r!11554))))))

(assert (=> b!7103853 (= e!4269674 e!4269673)))

(declare-fun b!7103854 () Bool)

(assert (=> b!7103854 (= e!4269678 e!4269677)))

(declare-fun c!1325490 () Bool)

(assert (=> b!7103854 (= c!1325490 ((_ is Star!17901) (regOne!36315 r!11554)))))

(declare-fun call!647130 () Bool)

(declare-fun c!1325489 () Bool)

(declare-fun bm!647125 () Bool)

(assert (=> bm!647125 (= call!647130 (validRegex!9174 (ite c!1325490 (reg!18230 (regOne!36315 r!11554)) (ite c!1325489 (regTwo!36315 (regOne!36315 r!11554)) (regOne!36314 (regOne!36315 r!11554))))))))

(declare-fun b!7103855 () Bool)

(assert (=> b!7103855 (= e!4269677 e!4269674)))

(assert (=> b!7103855 (= c!1325489 ((_ is Union!17901) (regOne!36315 r!11554)))))

(declare-fun bm!647126 () Bool)

(assert (=> bm!647126 (= call!647131 call!647130)))

(declare-fun b!7103856 () Bool)

(assert (=> b!7103856 (= e!4269679 call!647132)))

(declare-fun bm!647127 () Bool)

(assert (=> bm!647127 (= call!647132 (validRegex!9174 (ite c!1325489 (regOne!36315 (regOne!36315 r!11554)) (regTwo!36314 (regOne!36315 r!11554)))))))

(declare-fun b!7103857 () Bool)

(assert (=> b!7103857 (= e!4269676 call!647130)))

(assert (= (and d!2218976 (not res!2900171)) b!7103854))

(assert (= (and b!7103854 c!1325490) b!7103851))

(assert (= (and b!7103854 (not c!1325490)) b!7103855))

(assert (= (and b!7103851 res!2900172) b!7103857))

(assert (= (and b!7103855 c!1325489) b!7103852))

(assert (= (and b!7103855 (not c!1325489)) b!7103853))

(assert (= (and b!7103852 res!2900170) b!7103850))

(assert (= (and b!7103853 (not res!2900169)) b!7103849))

(assert (= (and b!7103849 res!2900173) b!7103856))

(assert (= (or b!7103852 b!7103856) bm!647127))

(assert (= (or b!7103850 b!7103849) bm!647126))

(assert (= (or b!7103857 bm!647126) bm!647125))

(declare-fun m!7827868 () Bool)

(assert (=> b!7103851 m!7827868))

(declare-fun m!7827870 () Bool)

(assert (=> bm!647125 m!7827870))

(declare-fun m!7827872 () Bool)

(assert (=> bm!647127 m!7827872))

(assert (=> b!7103829 d!2218976))

(declare-fun b!7103874 () Bool)

(declare-fun e!4269688 () Bool)

(declare-fun e!4269694 () Bool)

(assert (=> b!7103874 (= e!4269688 e!4269694)))

(declare-fun res!2900178 () Bool)

(assert (=> b!7103874 (=> (not res!2900178) (not e!4269694))))

(declare-fun call!647134 () Bool)

(assert (=> b!7103874 (= res!2900178 call!647134)))

(declare-fun b!7103875 () Bool)

(declare-fun e!4269690 () Bool)

(assert (=> b!7103875 (= e!4269690 call!647134)))

(declare-fun b!7103876 () Bool)

(declare-fun e!4269692 () Bool)

(declare-fun e!4269691 () Bool)

(assert (=> b!7103876 (= e!4269692 e!4269691)))

(declare-fun res!2900177 () Bool)

(assert (=> b!7103876 (= res!2900177 (not (nullable!7537 (reg!18230 r!11554))))))

(assert (=> b!7103876 (=> (not res!2900177) (not e!4269691))))

(declare-fun b!7103877 () Bool)

(declare-fun res!2900175 () Bool)

(assert (=> b!7103877 (=> (not res!2900175) (not e!4269690))))

(declare-fun call!647135 () Bool)

(assert (=> b!7103877 (= res!2900175 call!647135)))

(declare-fun e!4269689 () Bool)

(assert (=> b!7103877 (= e!4269689 e!4269690)))

(declare-fun d!2218980 () Bool)

(declare-fun res!2900176 () Bool)

(declare-fun e!4269693 () Bool)

(assert (=> d!2218980 (=> res!2900176 e!4269693)))

(assert (=> d!2218980 (= res!2900176 ((_ is ElementMatch!17901) r!11554))))

(assert (=> d!2218980 (= (validRegex!9174 r!11554) e!4269693)))

(declare-fun b!7103878 () Bool)

(declare-fun res!2900174 () Bool)

(assert (=> b!7103878 (=> res!2900174 e!4269688)))

(assert (=> b!7103878 (= res!2900174 (not ((_ is Concat!26746) r!11554)))))

(assert (=> b!7103878 (= e!4269689 e!4269688)))

(declare-fun b!7103879 () Bool)

(assert (=> b!7103879 (= e!4269693 e!4269692)))

(declare-fun c!1325500 () Bool)

(assert (=> b!7103879 (= c!1325500 ((_ is Star!17901) r!11554))))

(declare-fun call!647133 () Bool)

(declare-fun c!1325499 () Bool)

(declare-fun bm!647128 () Bool)

(assert (=> bm!647128 (= call!647133 (validRegex!9174 (ite c!1325500 (reg!18230 r!11554) (ite c!1325499 (regTwo!36315 r!11554) (regOne!36314 r!11554)))))))

(declare-fun b!7103880 () Bool)

(assert (=> b!7103880 (= e!4269692 e!4269689)))

(assert (=> b!7103880 (= c!1325499 ((_ is Union!17901) r!11554))))

(declare-fun bm!647129 () Bool)

(assert (=> bm!647129 (= call!647134 call!647133)))

(declare-fun b!7103881 () Bool)

(assert (=> b!7103881 (= e!4269694 call!647135)))

(declare-fun bm!647130 () Bool)

(assert (=> bm!647130 (= call!647135 (validRegex!9174 (ite c!1325499 (regOne!36315 r!11554) (regTwo!36314 r!11554))))))

(declare-fun b!7103882 () Bool)

(assert (=> b!7103882 (= e!4269691 call!647133)))

(assert (= (and d!2218980 (not res!2900176)) b!7103879))

(assert (= (and b!7103879 c!1325500) b!7103876))

(assert (= (and b!7103879 (not c!1325500)) b!7103880))

(assert (= (and b!7103876 res!2900177) b!7103882))

(assert (= (and b!7103880 c!1325499) b!7103877))

(assert (= (and b!7103880 (not c!1325499)) b!7103878))

(assert (= (and b!7103877 res!2900175) b!7103875))

(assert (= (and b!7103878 (not res!2900174)) b!7103874))

(assert (= (and b!7103874 res!2900178) b!7103881))

(assert (= (or b!7103877 b!7103881) bm!647130))

(assert (= (or b!7103875 b!7103874) bm!647129))

(assert (= (or b!7103882 bm!647129) bm!647128))

(declare-fun m!7827874 () Bool)

(assert (=> b!7103876 m!7827874))

(declare-fun m!7827876 () Bool)

(assert (=> bm!647128 m!7827876))

(declare-fun m!7827878 () Bool)

(assert (=> bm!647130 m!7827878))

(assert (=> start!691552 d!2218980))

(declare-fun bs!1884525 () Bool)

(declare-fun d!2218982 () Bool)

(assert (= bs!1884525 (and d!2218982 b!7103828)))

(declare-fun lambda!431318 () Int)

(assert (=> bs!1884525 (= lambda!431318 lambda!431315)))

(declare-fun forall!16803 (List!68862 Int) Bool)

(assert (=> d!2218982 (= (inv!87615 c!9994) (forall!16803 (exprs!7395 c!9994) lambda!431318))))

(declare-fun bs!1884526 () Bool)

(assert (= bs!1884526 d!2218982))

(declare-fun m!7827880 () Bool)

(assert (=> bs!1884526 m!7827880))

(assert (=> start!691552 d!2218982))

(declare-fun bs!1884527 () Bool)

(declare-fun d!2218984 () Bool)

(assert (= bs!1884527 (and d!2218984 b!7103828)))

(declare-fun lambda!431319 () Int)

(assert (=> bs!1884527 (= lambda!431319 lambda!431315)))

(declare-fun bs!1884528 () Bool)

(assert (= bs!1884528 (and d!2218984 d!2218982)))

(assert (=> bs!1884528 (= lambda!431319 lambda!431318)))

(assert (=> d!2218984 (= (inv!87615 auxCtx!45) (forall!16803 (exprs!7395 auxCtx!45) lambda!431319))))

(declare-fun bs!1884529 () Bool)

(assert (= bs!1884529 d!2218984))

(declare-fun m!7827882 () Bool)

(assert (=> bs!1884529 m!7827882))

(assert (=> start!691552 d!2218984))

(declare-fun bm!647171 () Bool)

(declare-fun c!1325533 () Bool)

(declare-fun c!1325534 () Bool)

(declare-fun c!1325537 () Bool)

(declare-fun call!647181 () (InoxSet Context!13790))

(declare-fun call!647179 () List!68862)

(assert (=> bm!647171 (= call!647181 (derivationStepZipperDown!2424 (ite c!1325533 (regOne!36315 r!11554) (ite c!1325534 (regTwo!36314 r!11554) (ite c!1325537 (regOne!36314 r!11554) (reg!18230 r!11554)))) (ite (or c!1325533 c!1325534) lt!2558534 (Context!13791 call!647179)) a!1901))))

(declare-fun b!7103961 () Bool)

(declare-fun e!4269744 () (InoxSet Context!13790))

(declare-fun call!647178 () (InoxSet Context!13790))

(declare-fun call!647176 () (InoxSet Context!13790))

(assert (=> b!7103961 (= e!4269744 ((_ map or) call!647178 call!647176))))

(declare-fun bm!647172 () Bool)

(declare-fun call!647177 () List!68862)

(assert (=> bm!647172 (= call!647179 call!647177)))

(declare-fun bm!647173 () Bool)

(declare-fun $colon$colon!2764 (List!68862 Regex!17901) List!68862)

(assert (=> bm!647173 (= call!647177 ($colon$colon!2764 (exprs!7395 lt!2558534) (ite (or c!1325534 c!1325537) (regTwo!36314 r!11554) r!11554)))))

(declare-fun bm!647174 () Bool)

(assert (=> bm!647174 (= call!647176 call!647181)))

(declare-fun b!7103965 () Bool)

(declare-fun e!4269746 () (InoxSet Context!13790))

(assert (=> b!7103965 (= e!4269746 ((_ map or) call!647181 call!647178))))

(declare-fun b!7103966 () Bool)

(declare-fun e!4269742 () Bool)

(assert (=> b!7103966 (= e!4269742 (nullable!7537 (regOne!36314 r!11554)))))

(declare-fun b!7103967 () Bool)

(declare-fun c!1325535 () Bool)

(assert (=> b!7103967 (= c!1325535 ((_ is Star!17901) r!11554))))

(declare-fun e!4269741 () (InoxSet Context!13790))

(declare-fun e!4269743 () (InoxSet Context!13790))

(assert (=> b!7103967 (= e!4269741 e!4269743)))

(declare-fun b!7103969 () Bool)

(declare-fun call!647180 () (InoxSet Context!13790))

(assert (=> b!7103969 (= e!4269741 call!647180)))

(declare-fun b!7103971 () Bool)

(assert (=> b!7103971 (= c!1325534 e!4269742)))

(declare-fun res!2900193 () Bool)

(assert (=> b!7103971 (=> (not res!2900193) (not e!4269742))))

(assert (=> b!7103971 (= res!2900193 ((_ is Concat!26746) r!11554))))

(assert (=> b!7103971 (= e!4269746 e!4269744)))

(declare-fun b!7103972 () Bool)

(assert (=> b!7103972 (= e!4269743 ((as const (Array Context!13790 Bool)) false))))

(declare-fun b!7103973 () Bool)

(assert (=> b!7103973 (= e!4269744 e!4269741)))

(assert (=> b!7103973 (= c!1325537 ((_ is Concat!26746) r!11554))))

(declare-fun bm!647175 () Bool)

(assert (=> bm!647175 (= call!647180 call!647176)))

(declare-fun b!7103974 () Bool)

(declare-fun e!4269745 () (InoxSet Context!13790))

(assert (=> b!7103974 (= e!4269745 (store ((as const (Array Context!13790 Bool)) false) lt!2558534 true))))

(declare-fun d!2218986 () Bool)

(declare-fun c!1325536 () Bool)

(assert (=> d!2218986 (= c!1325536 (and ((_ is ElementMatch!17901) r!11554) (= (c!1325484 r!11554) a!1901)))))

(assert (=> d!2218986 (= (derivationStepZipperDown!2424 r!11554 lt!2558534 a!1901) e!4269745)))

(declare-fun b!7103962 () Bool)

(assert (=> b!7103962 (= e!4269743 call!647180)))

(declare-fun b!7103975 () Bool)

(assert (=> b!7103975 (= e!4269745 e!4269746)))

(assert (=> b!7103975 (= c!1325533 ((_ is Union!17901) r!11554))))

(declare-fun bm!647176 () Bool)

(assert (=> bm!647176 (= call!647178 (derivationStepZipperDown!2424 (ite c!1325533 (regTwo!36315 r!11554) (regOne!36314 r!11554)) (ite c!1325533 lt!2558534 (Context!13791 call!647177)) a!1901))))

(assert (= (and d!2218986 c!1325536) b!7103974))

(assert (= (and d!2218986 (not c!1325536)) b!7103975))

(assert (= (and b!7103975 c!1325533) b!7103965))

(assert (= (and b!7103975 (not c!1325533)) b!7103971))

(assert (= (and b!7103971 res!2900193) b!7103966))

(assert (= (and b!7103971 c!1325534) b!7103961))

(assert (= (and b!7103971 (not c!1325534)) b!7103973))

(assert (= (and b!7103973 c!1325537) b!7103969))

(assert (= (and b!7103973 (not c!1325537)) b!7103967))

(assert (= (and b!7103967 c!1325535) b!7103962))

(assert (= (and b!7103967 (not c!1325535)) b!7103972))

(assert (= (or b!7103969 b!7103962) bm!647172))

(assert (= (or b!7103969 b!7103962) bm!647175))

(assert (= (or b!7103961 bm!647175) bm!647174))

(assert (= (or b!7103961 bm!647172) bm!647173))

(assert (= (or b!7103965 b!7103961) bm!647176))

(assert (= (or b!7103965 bm!647174) bm!647171))

(declare-fun m!7827904 () Bool)

(assert (=> bm!647176 m!7827904))

(declare-fun m!7827906 () Bool)

(assert (=> b!7103966 m!7827906))

(declare-fun m!7827908 () Bool)

(assert (=> bm!647171 m!7827908))

(declare-fun m!7827910 () Bool)

(assert (=> bm!647173 m!7827910))

(declare-fun m!7827912 () Bool)

(assert (=> b!7103974 m!7827912))

(assert (=> b!7103828 d!2218986))

(declare-fun d!2218992 () Bool)

(assert (=> d!2218992 (forall!16803 (++!16053 (exprs!7395 c!9994) (exprs!7395 auxCtx!45)) lambda!431315)))

(declare-fun lt!2558543 () Unit!162473)

(declare-fun choose!54790 (List!68862 List!68862 Int) Unit!162473)

(assert (=> d!2218992 (= lt!2558543 (choose!54790 (exprs!7395 c!9994) (exprs!7395 auxCtx!45) lambda!431315))))

(assert (=> d!2218992 (forall!16803 (exprs!7395 c!9994) lambda!431315)))

(assert (=> d!2218992 (= (lemmaConcatPreservesForall!1186 (exprs!7395 c!9994) (exprs!7395 auxCtx!45) lambda!431315) lt!2558543)))

(declare-fun bs!1884530 () Bool)

(assert (= bs!1884530 d!2218992))

(assert (=> bs!1884530 m!7827858))

(assert (=> bs!1884530 m!7827858))

(declare-fun m!7827914 () Bool)

(assert (=> bs!1884530 m!7827914))

(declare-fun m!7827916 () Bool)

(assert (=> bs!1884530 m!7827916))

(declare-fun m!7827918 () Bool)

(assert (=> bs!1884530 m!7827918))

(assert (=> b!7103828 d!2218992))

(declare-fun c!1325550 () Bool)

(declare-fun c!1325547 () Bool)

(declare-fun bm!647189 () Bool)

(declare-fun call!647199 () (InoxSet Context!13790))

(declare-fun c!1325546 () Bool)

(declare-fun call!647197 () List!68862)

(assert (=> bm!647189 (= call!647199 (derivationStepZipperDown!2424 (ite c!1325546 (regOne!36315 (regTwo!36315 r!11554)) (ite c!1325547 (regTwo!36314 (regTwo!36315 r!11554)) (ite c!1325550 (regOne!36314 (regTwo!36315 r!11554)) (reg!18230 (regTwo!36315 r!11554))))) (ite (or c!1325546 c!1325547) lt!2558534 (Context!13791 call!647197)) a!1901))))

(declare-fun b!7103990 () Bool)

(declare-fun e!4269760 () (InoxSet Context!13790))

(declare-fun call!647196 () (InoxSet Context!13790))

(declare-fun call!647194 () (InoxSet Context!13790))

(assert (=> b!7103990 (= e!4269760 ((_ map or) call!647196 call!647194))))

(declare-fun bm!647190 () Bool)

(declare-fun call!647195 () List!68862)

(assert (=> bm!647190 (= call!647197 call!647195)))

(declare-fun bm!647191 () Bool)

(assert (=> bm!647191 (= call!647195 ($colon$colon!2764 (exprs!7395 lt!2558534) (ite (or c!1325547 c!1325550) (regTwo!36314 (regTwo!36315 r!11554)) (regTwo!36315 r!11554))))))

(declare-fun bm!647192 () Bool)

(assert (=> bm!647192 (= call!647194 call!647199)))

(declare-fun b!7103992 () Bool)

(declare-fun e!4269762 () (InoxSet Context!13790))

(assert (=> b!7103992 (= e!4269762 ((_ map or) call!647199 call!647196))))

(declare-fun b!7103993 () Bool)

(declare-fun e!4269758 () Bool)

(assert (=> b!7103993 (= e!4269758 (nullable!7537 (regOne!36314 (regTwo!36315 r!11554))))))

(declare-fun b!7103994 () Bool)

(declare-fun c!1325548 () Bool)

(assert (=> b!7103994 (= c!1325548 ((_ is Star!17901) (regTwo!36315 r!11554)))))

(declare-fun e!4269757 () (InoxSet Context!13790))

(declare-fun e!4269759 () (InoxSet Context!13790))

(assert (=> b!7103994 (= e!4269757 e!4269759)))

(declare-fun b!7103995 () Bool)

(declare-fun call!647198 () (InoxSet Context!13790))

(assert (=> b!7103995 (= e!4269757 call!647198)))

(declare-fun b!7103996 () Bool)

(assert (=> b!7103996 (= c!1325547 e!4269758)))

(declare-fun res!2900196 () Bool)

(assert (=> b!7103996 (=> (not res!2900196) (not e!4269758))))

(assert (=> b!7103996 (= res!2900196 ((_ is Concat!26746) (regTwo!36315 r!11554)))))

(assert (=> b!7103996 (= e!4269762 e!4269760)))

(declare-fun b!7103997 () Bool)

(assert (=> b!7103997 (= e!4269759 ((as const (Array Context!13790 Bool)) false))))

(declare-fun b!7103998 () Bool)

(assert (=> b!7103998 (= e!4269760 e!4269757)))

(assert (=> b!7103998 (= c!1325550 ((_ is Concat!26746) (regTwo!36315 r!11554)))))

(declare-fun bm!647193 () Bool)

(assert (=> bm!647193 (= call!647198 call!647194)))

(declare-fun b!7103999 () Bool)

(declare-fun e!4269761 () (InoxSet Context!13790))

(assert (=> b!7103999 (= e!4269761 (store ((as const (Array Context!13790 Bool)) false) lt!2558534 true))))

(declare-fun d!2218994 () Bool)

(declare-fun c!1325549 () Bool)

(assert (=> d!2218994 (= c!1325549 (and ((_ is ElementMatch!17901) (regTwo!36315 r!11554)) (= (c!1325484 (regTwo!36315 r!11554)) a!1901)))))

(assert (=> d!2218994 (= (derivationStepZipperDown!2424 (regTwo!36315 r!11554) lt!2558534 a!1901) e!4269761)))

(declare-fun b!7103991 () Bool)

(assert (=> b!7103991 (= e!4269759 call!647198)))

(declare-fun b!7104000 () Bool)

(assert (=> b!7104000 (= e!4269761 e!4269762)))

(assert (=> b!7104000 (= c!1325546 ((_ is Union!17901) (regTwo!36315 r!11554)))))

(declare-fun bm!647194 () Bool)

(assert (=> bm!647194 (= call!647196 (derivationStepZipperDown!2424 (ite c!1325546 (regTwo!36315 (regTwo!36315 r!11554)) (regOne!36314 (regTwo!36315 r!11554))) (ite c!1325546 lt!2558534 (Context!13791 call!647195)) a!1901))))

(assert (= (and d!2218994 c!1325549) b!7103999))

(assert (= (and d!2218994 (not c!1325549)) b!7104000))

(assert (= (and b!7104000 c!1325546) b!7103992))

(assert (= (and b!7104000 (not c!1325546)) b!7103996))

(assert (= (and b!7103996 res!2900196) b!7103993))

(assert (= (and b!7103996 c!1325547) b!7103990))

(assert (= (and b!7103996 (not c!1325547)) b!7103998))

(assert (= (and b!7103998 c!1325550) b!7103995))

(assert (= (and b!7103998 (not c!1325550)) b!7103994))

(assert (= (and b!7103994 c!1325548) b!7103991))

(assert (= (and b!7103994 (not c!1325548)) b!7103997))

(assert (= (or b!7103995 b!7103991) bm!647190))

(assert (= (or b!7103995 b!7103991) bm!647193))

(assert (= (or b!7103990 bm!647193) bm!647192))

(assert (= (or b!7103990 bm!647190) bm!647191))

(assert (= (or b!7103992 b!7103990) bm!647194))

(assert (= (or b!7103992 bm!647192) bm!647189))

(declare-fun m!7827920 () Bool)

(assert (=> bm!647194 m!7827920))

(declare-fun m!7827922 () Bool)

(assert (=> b!7103993 m!7827922))

(declare-fun m!7827924 () Bool)

(assert (=> bm!647189 m!7827924))

(declare-fun m!7827926 () Bool)

(assert (=> bm!647191 m!7827926))

(assert (=> b!7103999 m!7827912))

(assert (=> b!7103828 d!2218994))

(declare-fun b!7104020 () Bool)

(declare-fun e!4269773 () List!68862)

(assert (=> b!7104020 (= e!4269773 (exprs!7395 auxCtx!45))))

(declare-fun b!7104021 () Bool)

(assert (=> b!7104021 (= e!4269773 (Cons!68738 (h!75186 (exprs!7395 c!9994)) (++!16053 (t!382679 (exprs!7395 c!9994)) (exprs!7395 auxCtx!45))))))

(declare-fun b!7104022 () Bool)

(declare-fun res!2900202 () Bool)

(declare-fun e!4269774 () Bool)

(assert (=> b!7104022 (=> (not res!2900202) (not e!4269774))))

(declare-fun lt!2558546 () List!68862)

(declare-fun size!41365 (List!68862) Int)

(assert (=> b!7104022 (= res!2900202 (= (size!41365 lt!2558546) (+ (size!41365 (exprs!7395 c!9994)) (size!41365 (exprs!7395 auxCtx!45)))))))

(declare-fun b!7104023 () Bool)

(assert (=> b!7104023 (= e!4269774 (or (not (= (exprs!7395 auxCtx!45) Nil!68738)) (= lt!2558546 (exprs!7395 c!9994))))))

(declare-fun d!2218996 () Bool)

(assert (=> d!2218996 e!4269774))

(declare-fun res!2900203 () Bool)

(assert (=> d!2218996 (=> (not res!2900203) (not e!4269774))))

(declare-fun content!13990 (List!68862) (InoxSet Regex!17901))

(assert (=> d!2218996 (= res!2900203 (= (content!13990 lt!2558546) ((_ map or) (content!13990 (exprs!7395 c!9994)) (content!13990 (exprs!7395 auxCtx!45)))))))

(assert (=> d!2218996 (= lt!2558546 e!4269773)))

(declare-fun c!1325558 () Bool)

(assert (=> d!2218996 (= c!1325558 ((_ is Nil!68738) (exprs!7395 c!9994)))))

(assert (=> d!2218996 (= (++!16053 (exprs!7395 c!9994) (exprs!7395 auxCtx!45)) lt!2558546)))

(assert (= (and d!2218996 c!1325558) b!7104020))

(assert (= (and d!2218996 (not c!1325558)) b!7104021))

(assert (= (and d!2218996 res!2900203) b!7104022))

(assert (= (and b!7104022 res!2900202) b!7104023))

(declare-fun m!7827938 () Bool)

(assert (=> b!7104021 m!7827938))

(declare-fun m!7827940 () Bool)

(assert (=> b!7104022 m!7827940))

(declare-fun m!7827942 () Bool)

(assert (=> b!7104022 m!7827942))

(declare-fun m!7827944 () Bool)

(assert (=> b!7104022 m!7827944))

(declare-fun m!7827946 () Bool)

(assert (=> d!2218996 m!7827946))

(declare-fun m!7827948 () Bool)

(assert (=> d!2218996 m!7827948))

(declare-fun m!7827950 () Bool)

(assert (=> d!2218996 m!7827950))

(assert (=> b!7103828 d!2218996))

(declare-fun call!647209 () List!68862)

(declare-fun bm!647201 () Bool)

(declare-fun c!1325559 () Bool)

(declare-fun c!1325560 () Bool)

(declare-fun c!1325563 () Bool)

(declare-fun call!647211 () (InoxSet Context!13790))

(assert (=> bm!647201 (= call!647211 (derivationStepZipperDown!2424 (ite c!1325559 (regOne!36315 (regOne!36315 r!11554)) (ite c!1325560 (regTwo!36314 (regOne!36315 r!11554)) (ite c!1325563 (regOne!36314 (regOne!36315 r!11554)) (reg!18230 (regOne!36315 r!11554))))) (ite (or c!1325559 c!1325560) lt!2558534 (Context!13791 call!647209)) a!1901))))

(declare-fun b!7104024 () Bool)

(declare-fun e!4269778 () (InoxSet Context!13790))

(declare-fun call!647208 () (InoxSet Context!13790))

(declare-fun call!647206 () (InoxSet Context!13790))

(assert (=> b!7104024 (= e!4269778 ((_ map or) call!647208 call!647206))))

(declare-fun bm!647202 () Bool)

(declare-fun call!647207 () List!68862)

(assert (=> bm!647202 (= call!647209 call!647207)))

(declare-fun bm!647203 () Bool)

(assert (=> bm!647203 (= call!647207 ($colon$colon!2764 (exprs!7395 lt!2558534) (ite (or c!1325560 c!1325563) (regTwo!36314 (regOne!36315 r!11554)) (regOne!36315 r!11554))))))

(declare-fun bm!647204 () Bool)

(assert (=> bm!647204 (= call!647206 call!647211)))

(declare-fun b!7104026 () Bool)

(declare-fun e!4269780 () (InoxSet Context!13790))

(assert (=> b!7104026 (= e!4269780 ((_ map or) call!647211 call!647208))))

(declare-fun b!7104027 () Bool)

(declare-fun e!4269776 () Bool)

(assert (=> b!7104027 (= e!4269776 (nullable!7537 (regOne!36314 (regOne!36315 r!11554))))))

(declare-fun b!7104028 () Bool)

(declare-fun c!1325561 () Bool)

(assert (=> b!7104028 (= c!1325561 ((_ is Star!17901) (regOne!36315 r!11554)))))

(declare-fun e!4269775 () (InoxSet Context!13790))

(declare-fun e!4269777 () (InoxSet Context!13790))

(assert (=> b!7104028 (= e!4269775 e!4269777)))

(declare-fun b!7104029 () Bool)

(declare-fun call!647210 () (InoxSet Context!13790))

(assert (=> b!7104029 (= e!4269775 call!647210)))

(declare-fun b!7104030 () Bool)

(assert (=> b!7104030 (= c!1325560 e!4269776)))

(declare-fun res!2900204 () Bool)

(assert (=> b!7104030 (=> (not res!2900204) (not e!4269776))))

(assert (=> b!7104030 (= res!2900204 ((_ is Concat!26746) (regOne!36315 r!11554)))))

(assert (=> b!7104030 (= e!4269780 e!4269778)))

(declare-fun b!7104031 () Bool)

(assert (=> b!7104031 (= e!4269777 ((as const (Array Context!13790 Bool)) false))))

(declare-fun b!7104032 () Bool)

(assert (=> b!7104032 (= e!4269778 e!4269775)))

(assert (=> b!7104032 (= c!1325563 ((_ is Concat!26746) (regOne!36315 r!11554)))))

(declare-fun bm!647205 () Bool)

(assert (=> bm!647205 (= call!647210 call!647206)))

(declare-fun b!7104033 () Bool)

(declare-fun e!4269779 () (InoxSet Context!13790))

(assert (=> b!7104033 (= e!4269779 (store ((as const (Array Context!13790 Bool)) false) lt!2558534 true))))

(declare-fun d!2219000 () Bool)

(declare-fun c!1325562 () Bool)

(assert (=> d!2219000 (= c!1325562 (and ((_ is ElementMatch!17901) (regOne!36315 r!11554)) (= (c!1325484 (regOne!36315 r!11554)) a!1901)))))

(assert (=> d!2219000 (= (derivationStepZipperDown!2424 (regOne!36315 r!11554) lt!2558534 a!1901) e!4269779)))

(declare-fun b!7104025 () Bool)

(assert (=> b!7104025 (= e!4269777 call!647210)))

(declare-fun b!7104034 () Bool)

(assert (=> b!7104034 (= e!4269779 e!4269780)))

(assert (=> b!7104034 (= c!1325559 ((_ is Union!17901) (regOne!36315 r!11554)))))

(declare-fun bm!647206 () Bool)

(assert (=> bm!647206 (= call!647208 (derivationStepZipperDown!2424 (ite c!1325559 (regTwo!36315 (regOne!36315 r!11554)) (regOne!36314 (regOne!36315 r!11554))) (ite c!1325559 lt!2558534 (Context!13791 call!647207)) a!1901))))

(assert (= (and d!2219000 c!1325562) b!7104033))

(assert (= (and d!2219000 (not c!1325562)) b!7104034))

(assert (= (and b!7104034 c!1325559) b!7104026))

(assert (= (and b!7104034 (not c!1325559)) b!7104030))

(assert (= (and b!7104030 res!2900204) b!7104027))

(assert (= (and b!7104030 c!1325560) b!7104024))

(assert (= (and b!7104030 (not c!1325560)) b!7104032))

(assert (= (and b!7104032 c!1325563) b!7104029))

(assert (= (and b!7104032 (not c!1325563)) b!7104028))

(assert (= (and b!7104028 c!1325561) b!7104025))

(assert (= (and b!7104028 (not c!1325561)) b!7104031))

(assert (= (or b!7104029 b!7104025) bm!647202))

(assert (= (or b!7104029 b!7104025) bm!647205))

(assert (= (or b!7104024 bm!647205) bm!647204))

(assert (= (or b!7104024 bm!647202) bm!647203))

(assert (= (or b!7104026 b!7104024) bm!647206))

(assert (= (or b!7104026 bm!647204) bm!647201))

(declare-fun m!7827952 () Bool)

(assert (=> bm!647206 m!7827952))

(declare-fun m!7827954 () Bool)

(assert (=> b!7104027 m!7827954))

(declare-fun m!7827956 () Bool)

(assert (=> bm!647201 m!7827956))

(declare-fun m!7827958 () Bool)

(assert (=> bm!647203 m!7827958))

(assert (=> b!7104033 m!7827912))

(assert (=> b!7103828 d!2219000))

(declare-fun b!7104121 () Bool)

(declare-fun c!1325596 () Bool)

(assert (=> b!7104121 (= c!1325596 ((_ is Star!17901) (regOne!36315 r!11554)))))

(declare-fun e!4269838 () Bool)

(declare-fun e!4269833 () Bool)

(assert (=> b!7104121 (= e!4269838 e!4269833)))

(declare-fun b!7104122 () Bool)

(declare-fun e!4269842 () Bool)

(declare-fun e!4269835 () Bool)

(assert (=> b!7104122 (= e!4269842 e!4269835)))

(declare-fun res!2900231 () Bool)

(declare-fun lt!2558555 () Int)

(declare-fun call!647246 () Int)

(assert (=> b!7104122 (= res!2900231 (> lt!2558555 call!647246))))

(assert (=> b!7104122 (=> (not res!2900231) (not e!4269835))))

(declare-fun bm!647239 () Bool)

(declare-fun call!647244 () Int)

(declare-fun call!647247 () Int)

(assert (=> bm!647239 (= call!647244 call!647247)))

(declare-fun bm!647240 () Bool)

(declare-fun call!647245 () Int)

(declare-fun c!1325601 () Bool)

(assert (=> bm!647240 (= call!647245 (regexDepth!388 (ite c!1325601 (regTwo!36315 (regOne!36315 r!11554)) (regOne!36314 (regOne!36315 r!11554)))))))

(declare-fun b!7104124 () Bool)

(declare-fun e!4269839 () Int)

(declare-fun call!647249 () Int)

(assert (=> b!7104124 (= e!4269839 (+ 1 call!647249))))

(declare-fun b!7104125 () Bool)

(declare-fun res!2900229 () Bool)

(declare-fun e!4269836 () Bool)

(assert (=> b!7104125 (=> (not res!2900229) (not e!4269836))))

(assert (=> b!7104125 (= res!2900229 (> lt!2558555 call!647244))))

(assert (=> b!7104125 (= e!4269838 e!4269836)))

(declare-fun b!7104126 () Bool)

(declare-fun e!4269840 () Int)

(assert (=> b!7104126 (= e!4269840 1)))

(declare-fun bm!647241 () Bool)

(declare-fun call!647248 () Int)

(declare-fun c!1325595 () Bool)

(assert (=> bm!647241 (= call!647248 (regexDepth!388 (ite c!1325595 (reg!18230 (regOne!36315 r!11554)) (ite c!1325601 (regOne!36315 (regOne!36315 r!11554)) (regTwo!36314 (regOne!36315 r!11554))))))))

(declare-fun b!7104127 () Bool)

(assert (=> b!7104127 (= e!4269833 (= lt!2558555 1))))

(declare-fun b!7104128 () Bool)

(assert (=> b!7104128 (= e!4269833 (> lt!2558555 call!647244))))

(declare-fun bm!647242 () Bool)

(declare-fun call!647250 () Int)

(assert (=> bm!647242 (= call!647250 call!647248)))

(declare-fun c!1325597 () Bool)

(declare-fun bm!647243 () Bool)

(declare-fun c!1325598 () Bool)

(assert (=> bm!647243 (= call!647247 (regexDepth!388 (ite c!1325598 (regTwo!36315 (regOne!36315 r!11554)) (ite c!1325597 (regOne!36314 (regOne!36315 r!11554)) (reg!18230 (regOne!36315 r!11554))))))))

(declare-fun b!7104129 () Bool)

(assert (=> b!7104129 (= e!4269842 e!4269838)))

(assert (=> b!7104129 (= c!1325597 ((_ is Concat!26746) (regOne!36315 r!11554)))))

(declare-fun b!7104130 () Bool)

(assert (=> b!7104130 (= e!4269839 1)))

(declare-fun b!7104131 () Bool)

(declare-fun e!4269841 () Int)

(assert (=> b!7104131 (= e!4269841 e!4269839)))

(declare-fun c!1325599 () Bool)

(assert (=> b!7104131 (= c!1325599 ((_ is Concat!26746) (regOne!36315 r!11554)))))

(declare-fun bm!647244 () Bool)

(assert (=> bm!647244 (= call!647246 (regexDepth!388 (ite c!1325598 (regOne!36315 (regOne!36315 r!11554)) (regTwo!36314 (regOne!36315 r!11554)))))))

(declare-fun b!7104132 () Bool)

(declare-fun e!4269837 () Bool)

(assert (=> b!7104132 (= e!4269837 e!4269842)))

(assert (=> b!7104132 (= c!1325598 ((_ is Union!17901) (regOne!36315 r!11554)))))

(declare-fun b!7104123 () Bool)

(assert (=> b!7104123 (= c!1325601 ((_ is Union!17901) (regOne!36315 r!11554)))))

(declare-fun e!4269834 () Int)

(assert (=> b!7104123 (= e!4269834 e!4269841)))

(declare-fun d!2219002 () Bool)

(assert (=> d!2219002 e!4269837))

(declare-fun res!2900230 () Bool)

(assert (=> d!2219002 (=> (not res!2900230) (not e!4269837))))

(assert (=> d!2219002 (= res!2900230 (> lt!2558555 0))))

(assert (=> d!2219002 (= lt!2558555 e!4269840)))

(declare-fun c!1325600 () Bool)

(assert (=> d!2219002 (= c!1325600 ((_ is ElementMatch!17901) (regOne!36315 r!11554)))))

(assert (=> d!2219002 (= (regexDepth!388 (regOne!36315 r!11554)) lt!2558555)))

(declare-fun b!7104133 () Bool)

(assert (=> b!7104133 (= e!4269836 (> lt!2558555 call!647246))))

(declare-fun b!7104134 () Bool)

(assert (=> b!7104134 (= e!4269835 (> lt!2558555 call!647247))))

(declare-fun b!7104135 () Bool)

(assert (=> b!7104135 (= e!4269834 (+ 1 call!647248))))

(declare-fun b!7104136 () Bool)

(assert (=> b!7104136 (= e!4269840 e!4269834)))

(assert (=> b!7104136 (= c!1325595 ((_ is Star!17901) (regOne!36315 r!11554)))))

(declare-fun b!7104137 () Bool)

(assert (=> b!7104137 (= e!4269841 (+ 1 call!647249))))

(declare-fun bm!647245 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!647245 (= call!647249 (maxBigInt!0 (ite c!1325601 call!647250 call!647245) (ite c!1325601 call!647245 call!647250)))))

(assert (= (and d!2219002 c!1325600) b!7104126))

(assert (= (and d!2219002 (not c!1325600)) b!7104136))

(assert (= (and b!7104136 c!1325595) b!7104135))

(assert (= (and b!7104136 (not c!1325595)) b!7104123))

(assert (= (and b!7104123 c!1325601) b!7104137))

(assert (= (and b!7104123 (not c!1325601)) b!7104131))

(assert (= (and b!7104131 c!1325599) b!7104124))

(assert (= (and b!7104131 (not c!1325599)) b!7104130))

(assert (= (or b!7104137 b!7104124) bm!647240))

(assert (= (or b!7104137 b!7104124) bm!647242))

(assert (= (or b!7104137 b!7104124) bm!647245))

(assert (= (or b!7104135 bm!647242) bm!647241))

(assert (= (and d!2219002 res!2900230) b!7104132))

(assert (= (and b!7104132 c!1325598) b!7104122))

(assert (= (and b!7104132 (not c!1325598)) b!7104129))

(assert (= (and b!7104122 res!2900231) b!7104134))

(assert (= (and b!7104129 c!1325597) b!7104125))

(assert (= (and b!7104129 (not c!1325597)) b!7104121))

(assert (= (and b!7104125 res!2900229) b!7104133))

(assert (= (and b!7104121 c!1325596) b!7104128))

(assert (= (and b!7104121 (not c!1325596)) b!7104127))

(assert (= (or b!7104125 b!7104128) bm!647239))

(assert (= (or b!7104134 bm!647239) bm!647243))

(assert (= (or b!7104122 b!7104133) bm!647244))

(declare-fun m!7827996 () Bool)

(assert (=> bm!647245 m!7827996))

(declare-fun m!7827998 () Bool)

(assert (=> bm!647243 m!7827998))

(declare-fun m!7828000 () Bool)

(assert (=> bm!647241 m!7828000))

(declare-fun m!7828002 () Bool)

(assert (=> bm!647240 m!7828002))

(declare-fun m!7828004 () Bool)

(assert (=> bm!647244 m!7828004))

(assert (=> b!7103822 d!2219002))

(declare-fun b!7104147 () Bool)

(declare-fun c!1325605 () Bool)

(assert (=> b!7104147 (= c!1325605 ((_ is Star!17901) r!11554))))

(declare-fun e!4269855 () Bool)

(declare-fun e!4269850 () Bool)

(assert (=> b!7104147 (= e!4269855 e!4269850)))

(declare-fun b!7104148 () Bool)

(declare-fun e!4269859 () Bool)

(declare-fun e!4269852 () Bool)

(assert (=> b!7104148 (= e!4269859 e!4269852)))

(declare-fun res!2900239 () Bool)

(declare-fun lt!2558556 () Int)

(declare-fun call!647256 () Int)

(assert (=> b!7104148 (= res!2900239 (> lt!2558556 call!647256))))

(assert (=> b!7104148 (=> (not res!2900239) (not e!4269852))))

(declare-fun bm!647249 () Bool)

(declare-fun call!647254 () Int)

(declare-fun call!647257 () Int)

(assert (=> bm!647249 (= call!647254 call!647257)))

(declare-fun bm!647250 () Bool)

(declare-fun call!647255 () Int)

(declare-fun c!1325610 () Bool)

(assert (=> bm!647250 (= call!647255 (regexDepth!388 (ite c!1325610 (regTwo!36315 r!11554) (regOne!36314 r!11554))))))

(declare-fun b!7104150 () Bool)

(declare-fun e!4269856 () Int)

(declare-fun call!647259 () Int)

(assert (=> b!7104150 (= e!4269856 (+ 1 call!647259))))

(declare-fun b!7104151 () Bool)

(declare-fun res!2900237 () Bool)

(declare-fun e!4269853 () Bool)

(assert (=> b!7104151 (=> (not res!2900237) (not e!4269853))))

(assert (=> b!7104151 (= res!2900237 (> lt!2558556 call!647254))))

(assert (=> b!7104151 (= e!4269855 e!4269853)))

(declare-fun b!7104152 () Bool)

(declare-fun e!4269857 () Int)

(assert (=> b!7104152 (= e!4269857 1)))

(declare-fun c!1325604 () Bool)

(declare-fun bm!647251 () Bool)

(declare-fun call!647258 () Int)

(assert (=> bm!647251 (= call!647258 (regexDepth!388 (ite c!1325604 (reg!18230 r!11554) (ite c!1325610 (regOne!36315 r!11554) (regTwo!36314 r!11554)))))))

(declare-fun b!7104153 () Bool)

(assert (=> b!7104153 (= e!4269850 (= lt!2558556 1))))

(declare-fun b!7104154 () Bool)

(assert (=> b!7104154 (= e!4269850 (> lt!2558556 call!647254))))

(declare-fun bm!647252 () Bool)

(declare-fun call!647260 () Int)

(assert (=> bm!647252 (= call!647260 call!647258)))

(declare-fun c!1325607 () Bool)

(declare-fun c!1325606 () Bool)

(declare-fun bm!647253 () Bool)

(assert (=> bm!647253 (= call!647257 (regexDepth!388 (ite c!1325607 (regTwo!36315 r!11554) (ite c!1325606 (regOne!36314 r!11554) (reg!18230 r!11554)))))))

(declare-fun b!7104155 () Bool)

(assert (=> b!7104155 (= e!4269859 e!4269855)))

(assert (=> b!7104155 (= c!1325606 ((_ is Concat!26746) r!11554))))

(declare-fun b!7104156 () Bool)

(assert (=> b!7104156 (= e!4269856 1)))

(declare-fun b!7104157 () Bool)

(declare-fun e!4269858 () Int)

(assert (=> b!7104157 (= e!4269858 e!4269856)))

(declare-fun c!1325608 () Bool)

(assert (=> b!7104157 (= c!1325608 ((_ is Concat!26746) r!11554))))

(declare-fun bm!647254 () Bool)

(assert (=> bm!647254 (= call!647256 (regexDepth!388 (ite c!1325607 (regOne!36315 r!11554) (regTwo!36314 r!11554))))))

(declare-fun b!7104158 () Bool)

(declare-fun e!4269854 () Bool)

(assert (=> b!7104158 (= e!4269854 e!4269859)))

(assert (=> b!7104158 (= c!1325607 ((_ is Union!17901) r!11554))))

(declare-fun b!7104149 () Bool)

(assert (=> b!7104149 (= c!1325610 ((_ is Union!17901) r!11554))))

(declare-fun e!4269851 () Int)

(assert (=> b!7104149 (= e!4269851 e!4269858)))

(declare-fun d!2219012 () Bool)

(assert (=> d!2219012 e!4269854))

(declare-fun res!2900238 () Bool)

(assert (=> d!2219012 (=> (not res!2900238) (not e!4269854))))

(assert (=> d!2219012 (= res!2900238 (> lt!2558556 0))))

(assert (=> d!2219012 (= lt!2558556 e!4269857)))

(declare-fun c!1325609 () Bool)

(assert (=> d!2219012 (= c!1325609 ((_ is ElementMatch!17901) r!11554))))

(assert (=> d!2219012 (= (regexDepth!388 r!11554) lt!2558556)))

(declare-fun b!7104159 () Bool)

(assert (=> b!7104159 (= e!4269853 (> lt!2558556 call!647256))))

(declare-fun b!7104160 () Bool)

(assert (=> b!7104160 (= e!4269852 (> lt!2558556 call!647257))))

(declare-fun b!7104161 () Bool)

(assert (=> b!7104161 (= e!4269851 (+ 1 call!647258))))

(declare-fun b!7104162 () Bool)

(assert (=> b!7104162 (= e!4269857 e!4269851)))

(assert (=> b!7104162 (= c!1325604 ((_ is Star!17901) r!11554))))

(declare-fun b!7104163 () Bool)

(assert (=> b!7104163 (= e!4269858 (+ 1 call!647259))))

(declare-fun bm!647255 () Bool)

(assert (=> bm!647255 (= call!647259 (maxBigInt!0 (ite c!1325610 call!647260 call!647255) (ite c!1325610 call!647255 call!647260)))))

(assert (= (and d!2219012 c!1325609) b!7104152))

(assert (= (and d!2219012 (not c!1325609)) b!7104162))

(assert (= (and b!7104162 c!1325604) b!7104161))

(assert (= (and b!7104162 (not c!1325604)) b!7104149))

(assert (= (and b!7104149 c!1325610) b!7104163))

(assert (= (and b!7104149 (not c!1325610)) b!7104157))

(assert (= (and b!7104157 c!1325608) b!7104150))

(assert (= (and b!7104157 (not c!1325608)) b!7104156))

(assert (= (or b!7104163 b!7104150) bm!647250))

(assert (= (or b!7104163 b!7104150) bm!647252))

(assert (= (or b!7104163 b!7104150) bm!647255))

(assert (= (or b!7104161 bm!647252) bm!647251))

(assert (= (and d!2219012 res!2900238) b!7104158))

(assert (= (and b!7104158 c!1325607) b!7104148))

(assert (= (and b!7104158 (not c!1325607)) b!7104155))

(assert (= (and b!7104148 res!2900239) b!7104160))

(assert (= (and b!7104155 c!1325606) b!7104151))

(assert (= (and b!7104155 (not c!1325606)) b!7104147))

(assert (= (and b!7104151 res!2900237) b!7104159))

(assert (= (and b!7104147 c!1325605) b!7104154))

(assert (= (and b!7104147 (not c!1325605)) b!7104153))

(assert (= (or b!7104151 b!7104154) bm!647249))

(assert (= (or b!7104160 bm!647249) bm!647253))

(assert (= (or b!7104148 b!7104159) bm!647254))

(declare-fun m!7828012 () Bool)

(assert (=> bm!647255 m!7828012))

(declare-fun m!7828014 () Bool)

(assert (=> bm!647253 m!7828014))

(declare-fun m!7828016 () Bool)

(assert (=> bm!647251 m!7828016))

(declare-fun m!7828018 () Bool)

(assert (=> bm!647250 m!7828018))

(declare-fun m!7828020 () Bool)

(assert (=> bm!647254 m!7828020))

(assert (=> b!7103822 d!2219012))

(declare-fun b!7104184 () Bool)

(declare-fun e!4269869 () Bool)

(declare-fun tp!1953483 () Bool)

(declare-fun tp!1953482 () Bool)

(assert (=> b!7104184 (= e!4269869 (and tp!1953483 tp!1953482))))

(declare-fun b!7104185 () Bool)

(declare-fun tp!1953481 () Bool)

(assert (=> b!7104185 (= e!4269869 tp!1953481)))

(declare-fun b!7104186 () Bool)

(declare-fun tp!1953479 () Bool)

(declare-fun tp!1953480 () Bool)

(assert (=> b!7104186 (= e!4269869 (and tp!1953479 tp!1953480))))

(declare-fun b!7104183 () Bool)

(assert (=> b!7104183 (= e!4269869 tp_is_empty!45035)))

(assert (=> b!7103823 (= tp!1953465 e!4269869)))

(assert (= (and b!7103823 ((_ is ElementMatch!17901) (regOne!36315 r!11554))) b!7104183))

(assert (= (and b!7103823 ((_ is Concat!26746) (regOne!36315 r!11554))) b!7104184))

(assert (= (and b!7103823 ((_ is Star!17901) (regOne!36315 r!11554))) b!7104185))

(assert (= (and b!7103823 ((_ is Union!17901) (regOne!36315 r!11554))) b!7104186))

(declare-fun b!7104188 () Bool)

(declare-fun e!4269870 () Bool)

(declare-fun tp!1953488 () Bool)

(declare-fun tp!1953487 () Bool)

(assert (=> b!7104188 (= e!4269870 (and tp!1953488 tp!1953487))))

(declare-fun b!7104189 () Bool)

(declare-fun tp!1953486 () Bool)

(assert (=> b!7104189 (= e!4269870 tp!1953486)))

(declare-fun b!7104190 () Bool)

(declare-fun tp!1953484 () Bool)

(declare-fun tp!1953485 () Bool)

(assert (=> b!7104190 (= e!4269870 (and tp!1953484 tp!1953485))))

(declare-fun b!7104187 () Bool)

(assert (=> b!7104187 (= e!4269870 tp_is_empty!45035)))

(assert (=> b!7103823 (= tp!1953462 e!4269870)))

(assert (= (and b!7103823 ((_ is ElementMatch!17901) (regTwo!36315 r!11554))) b!7104187))

(assert (= (and b!7103823 ((_ is Concat!26746) (regTwo!36315 r!11554))) b!7104188))

(assert (= (and b!7103823 ((_ is Star!17901) (regTwo!36315 r!11554))) b!7104189))

(assert (= (and b!7103823 ((_ is Union!17901) (regTwo!36315 r!11554))) b!7104190))

(declare-fun b!7104195 () Bool)

(declare-fun e!4269873 () Bool)

(declare-fun tp!1953493 () Bool)

(declare-fun tp!1953494 () Bool)

(assert (=> b!7104195 (= e!4269873 (and tp!1953493 tp!1953494))))

(assert (=> b!7103827 (= tp!1953464 e!4269873)))

(assert (= (and b!7103827 ((_ is Cons!68738) (exprs!7395 c!9994))) b!7104195))

(declare-fun b!7104196 () Bool)

(declare-fun e!4269874 () Bool)

(declare-fun tp!1953495 () Bool)

(declare-fun tp!1953496 () Bool)

(assert (=> b!7104196 (= e!4269874 (and tp!1953495 tp!1953496))))

(assert (=> b!7103821 (= tp!1953467 e!4269874)))

(assert (= (and b!7103821 ((_ is Cons!68738) (exprs!7395 auxCtx!45))) b!7104196))

(declare-fun b!7104198 () Bool)

(declare-fun e!4269875 () Bool)

(declare-fun tp!1953501 () Bool)

(declare-fun tp!1953500 () Bool)

(assert (=> b!7104198 (= e!4269875 (and tp!1953501 tp!1953500))))

(declare-fun b!7104199 () Bool)

(declare-fun tp!1953499 () Bool)

(assert (=> b!7104199 (= e!4269875 tp!1953499)))

(declare-fun b!7104200 () Bool)

(declare-fun tp!1953497 () Bool)

(declare-fun tp!1953498 () Bool)

(assert (=> b!7104200 (= e!4269875 (and tp!1953497 tp!1953498))))

(declare-fun b!7104197 () Bool)

(assert (=> b!7104197 (= e!4269875 tp_is_empty!45035)))

(assert (=> b!7103826 (= tp!1953463 e!4269875)))

(assert (= (and b!7103826 ((_ is ElementMatch!17901) (reg!18230 r!11554))) b!7104197))

(assert (= (and b!7103826 ((_ is Concat!26746) (reg!18230 r!11554))) b!7104198))

(assert (= (and b!7103826 ((_ is Star!17901) (reg!18230 r!11554))) b!7104199))

(assert (= (and b!7103826 ((_ is Union!17901) (reg!18230 r!11554))) b!7104200))

(declare-fun b!7104208 () Bool)

(declare-fun e!4269878 () Bool)

(declare-fun tp!1953510 () Bool)

(declare-fun tp!1953509 () Bool)

(assert (=> b!7104208 (= e!4269878 (and tp!1953510 tp!1953509))))

(declare-fun b!7104209 () Bool)

(declare-fun tp!1953508 () Bool)

(assert (=> b!7104209 (= e!4269878 tp!1953508)))

(declare-fun b!7104210 () Bool)

(declare-fun tp!1953506 () Bool)

(declare-fun tp!1953507 () Bool)

(assert (=> b!7104210 (= e!4269878 (and tp!1953506 tp!1953507))))

(declare-fun b!7104207 () Bool)

(assert (=> b!7104207 (= e!4269878 tp_is_empty!45035)))

(assert (=> b!7103825 (= tp!1953466 e!4269878)))

(assert (= (and b!7103825 ((_ is ElementMatch!17901) (regOne!36314 r!11554))) b!7104207))

(assert (= (and b!7103825 ((_ is Concat!26746) (regOne!36314 r!11554))) b!7104208))

(assert (= (and b!7103825 ((_ is Star!17901) (regOne!36314 r!11554))) b!7104209))

(assert (= (and b!7103825 ((_ is Union!17901) (regOne!36314 r!11554))) b!7104210))

(declare-fun b!7104216 () Bool)

(declare-fun e!4269879 () Bool)

(declare-fun tp!1953521 () Bool)

(declare-fun tp!1953520 () Bool)

(assert (=> b!7104216 (= e!4269879 (and tp!1953521 tp!1953520))))

(declare-fun b!7104217 () Bool)

(declare-fun tp!1953519 () Bool)

(assert (=> b!7104217 (= e!4269879 tp!1953519)))

(declare-fun b!7104218 () Bool)

(declare-fun tp!1953515 () Bool)

(declare-fun tp!1953516 () Bool)

(assert (=> b!7104218 (= e!4269879 (and tp!1953515 tp!1953516))))

(declare-fun b!7104215 () Bool)

(assert (=> b!7104215 (= e!4269879 tp_is_empty!45035)))

(assert (=> b!7103825 (= tp!1953468 e!4269879)))

(assert (= (and b!7103825 ((_ is ElementMatch!17901) (regTwo!36314 r!11554))) b!7104215))

(assert (= (and b!7103825 ((_ is Concat!26746) (regTwo!36314 r!11554))) b!7104216))

(assert (= (and b!7103825 ((_ is Star!17901) (regTwo!36314 r!11554))) b!7104217))

(assert (= (and b!7103825 ((_ is Union!17901) (regTwo!36314 r!11554))) b!7104218))

(check-sat (not b!7103966) (not bm!647128) (not bm!647254) (not d!2218982) (not b!7104209) (not b!7104200) (not bm!647250) (not bm!647176) tp_is_empty!45035 (not b!7104027) (not b!7104216) (not bm!647203) (not bm!647201) (not b!7104185) (not b!7104195) (not d!2218984) (not bm!647189) (not bm!647127) (not b!7104217) (not bm!647206) (not b!7104199) (not bm!647191) (not d!2218992) (not b!7103851) (not bm!647253) (not b!7104208) (not bm!647245) (not d!2218996) (not b!7104210) (not b!7103876) (not bm!647241) (not bm!647173) (not bm!647240) (not bm!647251) (not b!7104198) (not b!7104022) (not bm!647130) (not b!7104184) (not b!7104186) (not bm!647194) (not bm!647243) (not b!7104189) (not bm!647125) (not b!7104196) (not b!7103993) (not bm!647171) (not b!7104188) (not b!7104021) (not bm!647244) (not bm!647255) (not b!7104218) (not b!7104190))
(check-sat)
