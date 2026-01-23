; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689876 () Bool)

(assert start!689876)

(declare-fun b!7087823 () Bool)

(assert (=> b!7087823 true))

(declare-fun b!7087822 () Bool)

(declare-fun e!4261007 () Bool)

(declare-datatypes ((C!35800 0))(
  ( (C!35801 (val!27606 Int)) )
))
(declare-datatypes ((Regex!17765 0))(
  ( (ElementMatch!17765 (c!1322764 C!35800)) (Concat!26610 (regOne!36042 Regex!17765) (regTwo!36042 Regex!17765)) (EmptyExpr!17765) (Star!17765 (reg!18094 Regex!17765)) (EmptyLang!17765) (Union!17765 (regOne!36043 Regex!17765) (regTwo!36043 Regex!17765)) )
))
(declare-datatypes ((List!68728 0))(
  ( (Nil!68604) (Cons!68604 (h!75052 Regex!17765) (t!382513 List!68728)) )
))
(declare-datatypes ((Context!13522 0))(
  ( (Context!13523 (exprs!7261 List!68728)) )
))
(declare-fun c!9994 () Context!13522)

(declare-fun lambda!429327 () Int)

(declare-fun forall!16709 (List!68728 Int) Bool)

(assert (=> b!7087822 (= e!4261007 (not (forall!16709 (exprs!7261 c!9994) lambda!429327)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2555038 () (InoxSet Context!13522))

(declare-fun lambda!429326 () Int)

(declare-fun lt!2555029 () (InoxSet Context!13522))

(declare-fun map!16116 ((InoxSet Context!13522) Int) (InoxSet Context!13522))

(assert (=> b!7087822 (= ((_ map or) (map!16116 lt!2555038 lambda!429326) (map!16116 lt!2555029 lambda!429326)) (map!16116 ((_ map or) lt!2555038 lt!2555029) lambda!429326))))

(declare-datatypes ((Unit!162229 0))(
  ( (Unit!162230) )
))
(declare-fun lt!2555034 () Unit!162229)

(declare-fun lemmaMapAssociative!2 ((InoxSet Context!13522) (InoxSet Context!13522) Int) Unit!162229)

(assert (=> b!7087822 (= lt!2555034 (lemmaMapAssociative!2 lt!2555038 lt!2555029 lambda!429326))))

(declare-fun lt!2555033 () (InoxSet Context!13522))

(declare-fun auxCtx!45 () Context!13522)

(declare-fun appendTo!854 ((InoxSet Context!13522) Context!13522) (InoxSet Context!13522))

(assert (=> b!7087822 (= lt!2555033 (appendTo!854 lt!2555029 auxCtx!45))))

(declare-fun a!1901 () C!35800)

(declare-fun r!11554 () Regex!17765)

(declare-fun derivationStepZipperDown!2344 (Regex!17765 Context!13522 C!35800) (InoxSet Context!13522))

(assert (=> b!7087822 (= lt!2555029 (derivationStepZipperDown!2344 (regTwo!36043 r!11554) c!9994 a!1901))))

(declare-fun lt!2555036 () Unit!162229)

(declare-fun lemmaConcatPreservesForall!1068 (List!68728 List!68728 Int) Unit!162229)

(assert (=> b!7087822 (= lt!2555036 (lemmaConcatPreservesForall!1068 (exprs!7261 c!9994) (exprs!7261 auxCtx!45) lambda!429327))))

(declare-fun lt!2555032 () Unit!162229)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!162 (Context!13522 Regex!17765 C!35800 Context!13522) Unit!162229)

(assert (=> b!7087822 (= lt!2555032 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!162 c!9994 (regTwo!36043 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2555035 () (InoxSet Context!13522))

(assert (=> b!7087822 (= lt!2555035 (appendTo!854 lt!2555038 auxCtx!45))))

(assert (=> b!7087822 (= lt!2555038 (derivationStepZipperDown!2344 (regOne!36043 r!11554) c!9994 a!1901))))

(declare-fun lt!2555039 () Unit!162229)

(assert (=> b!7087822 (= lt!2555039 (lemmaConcatPreservesForall!1068 (exprs!7261 c!9994) (exprs!7261 auxCtx!45) lambda!429327))))

(declare-fun lt!2555037 () Unit!162229)

(assert (=> b!7087822 (= lt!2555037 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!162 c!9994 (regOne!36043 r!11554) a!1901 auxCtx!45))))

(declare-fun e!4261011 () Bool)

(declare-fun e!4261010 () Bool)

(assert (=> b!7087823 (= e!4261011 e!4261010)))

(declare-fun res!2895134 () Bool)

(assert (=> b!7087823 (=> (not res!2895134) (not e!4261010))))

(get-info :version)

(assert (=> b!7087823 (= res!2895134 (and (or (not ((_ is ElementMatch!17765) r!11554)) (not (= (c!1322764 r!11554) a!1901))) ((_ is Union!17765) r!11554)))))

(declare-fun b!7087824 () Bool)

(declare-fun e!4261009 () Bool)

(declare-fun tp!1946523 () Bool)

(declare-fun tp!1946521 () Bool)

(assert (=> b!7087824 (= e!4261009 (and tp!1946523 tp!1946521))))

(declare-fun b!7087825 () Bool)

(declare-fun tp!1946524 () Bool)

(declare-fun tp!1946522 () Bool)

(assert (=> b!7087825 (= e!4261009 (and tp!1946524 tp!1946522))))

(declare-fun b!7087826 () Bool)

(declare-fun e!4261012 () Bool)

(declare-fun tp!1946526 () Bool)

(assert (=> b!7087826 (= e!4261012 tp!1946526)))

(declare-fun b!7087827 () Bool)

(assert (=> b!7087827 (= e!4261010 e!4261007)))

(declare-fun res!2895133 () Bool)

(assert (=> b!7087827 (=> (not res!2895133) (not e!4261007))))

(declare-fun lt!2555031 () Context!13522)

(assert (=> b!7087827 (= res!2895133 (= (derivationStepZipperDown!2344 r!11554 lt!2555031 a!1901) ((_ map or) lt!2555035 lt!2555033)))))

(assert (=> b!7087827 (= lt!2555033 (derivationStepZipperDown!2344 (regTwo!36043 r!11554) lt!2555031 a!1901))))

(assert (=> b!7087827 (= lt!2555035 (derivationStepZipperDown!2344 (regOne!36043 r!11554) lt!2555031 a!1901))))

(declare-fun ++!15938 (List!68728 List!68728) List!68728)

(assert (=> b!7087827 (= lt!2555031 (Context!13523 (++!15938 (exprs!7261 c!9994) (exprs!7261 auxCtx!45))))))

(declare-fun lt!2555028 () Unit!162229)

(assert (=> b!7087827 (= lt!2555028 (lemmaConcatPreservesForall!1068 (exprs!7261 c!9994) (exprs!7261 auxCtx!45) lambda!429327))))

(declare-fun lt!2555030 () Unit!162229)

(assert (=> b!7087827 (= lt!2555030 (lemmaConcatPreservesForall!1068 (exprs!7261 c!9994) (exprs!7261 auxCtx!45) lambda!429327))))

(declare-fun lt!2555040 () Unit!162229)

(assert (=> b!7087827 (= lt!2555040 (lemmaConcatPreservesForall!1068 (exprs!7261 c!9994) (exprs!7261 auxCtx!45) lambda!429327))))

(declare-fun b!7087828 () Bool)

(declare-fun tp!1946520 () Bool)

(assert (=> b!7087828 (= e!4261009 tp!1946520)))

(declare-fun res!2895132 () Bool)

(assert (=> start!689876 (=> (not res!2895132) (not e!4261011))))

(declare-fun validRegex!9040 (Regex!17765) Bool)

(assert (=> start!689876 (= res!2895132 (validRegex!9040 r!11554))))

(assert (=> start!689876 e!4261011))

(assert (=> start!689876 e!4261009))

(declare-fun inv!87277 (Context!13522) Bool)

(assert (=> start!689876 (and (inv!87277 c!9994) e!4261012)))

(declare-fun tp_is_empty!44763 () Bool)

(assert (=> start!689876 tp_is_empty!44763))

(declare-fun e!4261008 () Bool)

(assert (=> start!689876 (and (inv!87277 auxCtx!45) e!4261008)))

(declare-fun b!7087829 () Bool)

(assert (=> b!7087829 (= e!4261009 tp_is_empty!44763)))

(declare-fun b!7087830 () Bool)

(declare-fun tp!1946525 () Bool)

(assert (=> b!7087830 (= e!4261008 tp!1946525)))

(assert (= (and start!689876 res!2895132) b!7087823))

(assert (= (and b!7087823 res!2895134) b!7087827))

(assert (= (and b!7087827 res!2895133) b!7087822))

(assert (= (and start!689876 ((_ is ElementMatch!17765) r!11554)) b!7087829))

(assert (= (and start!689876 ((_ is Concat!26610) r!11554)) b!7087825))

(assert (= (and start!689876 ((_ is Star!17765) r!11554)) b!7087828))

(assert (= (and start!689876 ((_ is Union!17765) r!11554)) b!7087824))

(assert (= start!689876 b!7087826))

(assert (= start!689876 b!7087830))

(declare-fun m!7817926 () Bool)

(assert (=> b!7087822 m!7817926))

(declare-fun m!7817928 () Bool)

(assert (=> b!7087822 m!7817928))

(declare-fun m!7817930 () Bool)

(assert (=> b!7087822 m!7817930))

(assert (=> b!7087822 m!7817928))

(declare-fun m!7817932 () Bool)

(assert (=> b!7087822 m!7817932))

(declare-fun m!7817934 () Bool)

(assert (=> b!7087822 m!7817934))

(declare-fun m!7817936 () Bool)

(assert (=> b!7087822 m!7817936))

(declare-fun m!7817938 () Bool)

(assert (=> b!7087822 m!7817938))

(declare-fun m!7817940 () Bool)

(assert (=> b!7087822 m!7817940))

(declare-fun m!7817942 () Bool)

(assert (=> b!7087822 m!7817942))

(declare-fun m!7817944 () Bool)

(assert (=> b!7087822 m!7817944))

(declare-fun m!7817946 () Bool)

(assert (=> b!7087822 m!7817946))

(declare-fun m!7817948 () Bool)

(assert (=> b!7087822 m!7817948))

(declare-fun m!7817950 () Bool)

(assert (=> b!7087827 m!7817950))

(declare-fun m!7817952 () Bool)

(assert (=> b!7087827 m!7817952))

(assert (=> b!7087827 m!7817928))

(assert (=> b!7087827 m!7817928))

(assert (=> b!7087827 m!7817928))

(declare-fun m!7817954 () Bool)

(assert (=> b!7087827 m!7817954))

(declare-fun m!7817956 () Bool)

(assert (=> b!7087827 m!7817956))

(declare-fun m!7817958 () Bool)

(assert (=> start!689876 m!7817958))

(declare-fun m!7817960 () Bool)

(assert (=> start!689876 m!7817960))

(declare-fun m!7817962 () Bool)

(assert (=> start!689876 m!7817962))

(check-sat (not b!7087822) (not b!7087824) (not b!7087827) (not b!7087830) tp_is_empty!44763 (not start!689876) (not b!7087828) (not b!7087825) (not b!7087826))
(check-sat)
(get-model)

(declare-fun bs!1883101 () Bool)

(declare-fun d!2216288 () Bool)

(assert (= bs!1883101 (and d!2216288 b!7087827)))

(declare-fun lambda!429330 () Int)

(assert (=> bs!1883101 (= lambda!429330 lambda!429327)))

(assert (=> d!2216288 (= (derivationStepZipperDown!2344 (regOne!36043 r!11554) (Context!13523 (++!15938 (exprs!7261 c!9994) (exprs!7261 auxCtx!45))) a!1901) (appendTo!854 (derivationStepZipperDown!2344 (regOne!36043 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2555046 () Unit!162229)

(assert (=> d!2216288 (= lt!2555046 (lemmaConcatPreservesForall!1068 (exprs!7261 c!9994) (exprs!7261 auxCtx!45) lambda!429330))))

(declare-fun lt!2555045 () Unit!162229)

(declare-fun choose!54626 (Context!13522 Regex!17765 C!35800 Context!13522) Unit!162229)

(assert (=> d!2216288 (= lt!2555045 (choose!54626 c!9994 (regOne!36043 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216288 (validRegex!9040 (regOne!36043 r!11554))))

(assert (=> d!2216288 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!162 c!9994 (regOne!36043 r!11554) a!1901 auxCtx!45) lt!2555045)))

(declare-fun bs!1883102 () Bool)

(assert (= bs!1883102 d!2216288))

(declare-fun m!7817964 () Bool)

(assert (=> bs!1883102 m!7817964))

(declare-fun m!7817966 () Bool)

(assert (=> bs!1883102 m!7817966))

(declare-fun m!7817968 () Bool)

(assert (=> bs!1883102 m!7817968))

(assert (=> bs!1883102 m!7817934))

(declare-fun m!7817970 () Bool)

(assert (=> bs!1883102 m!7817970))

(declare-fun m!7817972 () Bool)

(assert (=> bs!1883102 m!7817972))

(assert (=> bs!1883102 m!7817934))

(assert (=> bs!1883102 m!7817956))

(assert (=> b!7087822 d!2216288))

(declare-fun bs!1883103 () Bool)

(declare-fun d!2216292 () Bool)

(assert (= bs!1883103 (and d!2216292 b!7087823)))

(declare-fun lambda!429335 () Int)

(assert (=> bs!1883103 (= lambda!429335 lambda!429326)))

(assert (=> d!2216292 true))

(assert (=> d!2216292 (= (appendTo!854 lt!2555038 auxCtx!45) (map!16116 lt!2555038 lambda!429335))))

(declare-fun bs!1883104 () Bool)

(assert (= bs!1883104 d!2216292))

(declare-fun m!7817974 () Bool)

(assert (=> bs!1883104 m!7817974))

(assert (=> b!7087822 d!2216292))

(declare-fun b!7087899 () Bool)

(declare-fun c!1322799 () Bool)

(declare-fun e!4261050 () Bool)

(assert (=> b!7087899 (= c!1322799 e!4261050)))

(declare-fun res!2895143 () Bool)

(assert (=> b!7087899 (=> (not res!2895143) (not e!4261050))))

(assert (=> b!7087899 (= res!2895143 ((_ is Concat!26610) (regTwo!36043 r!11554)))))

(declare-fun e!4261051 () (InoxSet Context!13522))

(declare-fun e!4261049 () (InoxSet Context!13522))

(assert (=> b!7087899 (= e!4261051 e!4261049)))

(declare-fun b!7087900 () Bool)

(declare-fun e!4261053 () (InoxSet Context!13522))

(assert (=> b!7087900 (= e!4261053 (store ((as const (Array Context!13522 Bool)) false) c!9994 true))))

(declare-fun b!7087901 () Bool)

(declare-fun e!4261054 () (InoxSet Context!13522))

(assert (=> b!7087901 (= e!4261054 ((as const (Array Context!13522 Bool)) false))))

(declare-fun bm!644227 () Bool)

(declare-fun call!644234 () List!68728)

(declare-fun call!644237 () List!68728)

(assert (=> bm!644227 (= call!644234 call!644237)))

(declare-fun b!7087902 () Bool)

(declare-fun call!644232 () (InoxSet Context!13522))

(declare-fun call!644233 () (InoxSet Context!13522))

(assert (=> b!7087902 (= e!4261051 ((_ map or) call!644232 call!644233))))

(declare-fun c!1322800 () Bool)

(declare-fun c!1322801 () Bool)

(declare-fun bm!644228 () Bool)

(assert (=> bm!644228 (= call!644232 (derivationStepZipperDown!2344 (ite c!1322801 (regOne!36043 (regTwo!36043 r!11554)) (ite c!1322799 (regTwo!36042 (regTwo!36043 r!11554)) (ite c!1322800 (regOne!36042 (regTwo!36043 r!11554)) (reg!18094 (regTwo!36043 r!11554))))) (ite (or c!1322801 c!1322799) c!9994 (Context!13523 call!644234)) a!1901))))

(declare-fun d!2216294 () Bool)

(declare-fun c!1322802 () Bool)

(assert (=> d!2216294 (= c!1322802 (and ((_ is ElementMatch!17765) (regTwo!36043 r!11554)) (= (c!1322764 (regTwo!36043 r!11554)) a!1901)))))

(assert (=> d!2216294 (= (derivationStepZipperDown!2344 (regTwo!36043 r!11554) c!9994 a!1901) e!4261053)))

(declare-fun b!7087903 () Bool)

(declare-fun e!4261052 () (InoxSet Context!13522))

(assert (=> b!7087903 (= e!4261049 e!4261052)))

(assert (=> b!7087903 (= c!1322800 ((_ is Concat!26610) (regTwo!36043 r!11554)))))

(declare-fun bm!644229 () Bool)

(declare-fun $colon$colon!2691 (List!68728 Regex!17765) List!68728)

(assert (=> bm!644229 (= call!644237 ($colon$colon!2691 (exprs!7261 c!9994) (ite (or c!1322799 c!1322800) (regTwo!36042 (regTwo!36043 r!11554)) (regTwo!36043 r!11554))))))

(declare-fun b!7087904 () Bool)

(declare-fun call!644235 () (InoxSet Context!13522))

(assert (=> b!7087904 (= e!4261052 call!644235)))

(declare-fun b!7087905 () Bool)

(declare-fun nullable!7409 (Regex!17765) Bool)

(assert (=> b!7087905 (= e!4261050 (nullable!7409 (regOne!36042 (regTwo!36043 r!11554))))))

(declare-fun bm!644230 () Bool)

(assert (=> bm!644230 (= call!644233 (derivationStepZipperDown!2344 (ite c!1322801 (regTwo!36043 (regTwo!36043 r!11554)) (regOne!36042 (regTwo!36043 r!11554))) (ite c!1322801 c!9994 (Context!13523 call!644237)) a!1901))))

(declare-fun bm!644231 () Bool)

(declare-fun call!644236 () (InoxSet Context!13522))

(assert (=> bm!644231 (= call!644235 call!644236)))

(declare-fun b!7087906 () Bool)

(assert (=> b!7087906 (= e!4261053 e!4261051)))

(assert (=> b!7087906 (= c!1322801 ((_ is Union!17765) (regTwo!36043 r!11554)))))

(declare-fun bm!644232 () Bool)

(assert (=> bm!644232 (= call!644236 call!644232)))

(declare-fun b!7087907 () Bool)

(declare-fun c!1322798 () Bool)

(assert (=> b!7087907 (= c!1322798 ((_ is Star!17765) (regTwo!36043 r!11554)))))

(assert (=> b!7087907 (= e!4261052 e!4261054)))

(declare-fun b!7087908 () Bool)

(assert (=> b!7087908 (= e!4261049 ((_ map or) call!644233 call!644236))))

(declare-fun b!7087909 () Bool)

(assert (=> b!7087909 (= e!4261054 call!644235)))

(assert (= (and d!2216294 c!1322802) b!7087900))

(assert (= (and d!2216294 (not c!1322802)) b!7087906))

(assert (= (and b!7087906 c!1322801) b!7087902))

(assert (= (and b!7087906 (not c!1322801)) b!7087899))

(assert (= (and b!7087899 res!2895143) b!7087905))

(assert (= (and b!7087899 c!1322799) b!7087908))

(assert (= (and b!7087899 (not c!1322799)) b!7087903))

(assert (= (and b!7087903 c!1322800) b!7087904))

(assert (= (and b!7087903 (not c!1322800)) b!7087907))

(assert (= (and b!7087907 c!1322798) b!7087909))

(assert (= (and b!7087907 (not c!1322798)) b!7087901))

(assert (= (or b!7087904 b!7087909) bm!644227))

(assert (= (or b!7087904 b!7087909) bm!644231))

(assert (= (or b!7087908 bm!644231) bm!644232))

(assert (= (or b!7087908 bm!644227) bm!644229))

(assert (= (or b!7087902 b!7087908) bm!644230))

(assert (= (or b!7087902 bm!644232) bm!644228))

(declare-fun m!7817996 () Bool)

(assert (=> bm!644229 m!7817996))

(declare-fun m!7818000 () Bool)

(assert (=> b!7087900 m!7818000))

(declare-fun m!7818002 () Bool)

(assert (=> bm!644228 m!7818002))

(declare-fun m!7818004 () Bool)

(assert (=> b!7087905 m!7818004))

(declare-fun m!7818006 () Bool)

(assert (=> bm!644230 m!7818006))

(assert (=> b!7087822 d!2216294))

(declare-fun bs!1883108 () Bool)

(declare-fun d!2216304 () Bool)

(assert (= bs!1883108 (and d!2216304 b!7087823)))

(declare-fun lambda!429341 () Int)

(assert (=> bs!1883108 (= lambda!429341 lambda!429326)))

(declare-fun bs!1883109 () Bool)

(assert (= bs!1883109 (and d!2216304 d!2216292)))

(assert (=> bs!1883109 (= lambda!429341 lambda!429335)))

(assert (=> d!2216304 true))

(assert (=> d!2216304 (= (appendTo!854 lt!2555029 auxCtx!45) (map!16116 lt!2555029 lambda!429341))))

(declare-fun bs!1883110 () Bool)

(assert (= bs!1883110 d!2216304))

(declare-fun m!7818008 () Bool)

(assert (=> bs!1883110 m!7818008))

(assert (=> b!7087822 d!2216304))

(declare-fun d!2216306 () Bool)

(declare-fun choose!54627 ((InoxSet Context!13522) Int) (InoxSet Context!13522))

(assert (=> d!2216306 (= (map!16116 lt!2555038 lambda!429326) (choose!54627 lt!2555038 lambda!429326))))

(declare-fun bs!1883111 () Bool)

(assert (= bs!1883111 d!2216306))

(declare-fun m!7818010 () Bool)

(assert (=> bs!1883111 m!7818010))

(assert (=> b!7087822 d!2216306))

(declare-fun bs!1883112 () Bool)

(declare-fun d!2216308 () Bool)

(assert (= bs!1883112 (and d!2216308 b!7087827)))

(declare-fun lambda!429342 () Int)

(assert (=> bs!1883112 (= lambda!429342 lambda!429327)))

(declare-fun bs!1883113 () Bool)

(assert (= bs!1883113 (and d!2216308 d!2216288)))

(assert (=> bs!1883113 (= lambda!429342 lambda!429330)))

(assert (=> d!2216308 (= (derivationStepZipperDown!2344 (regTwo!36043 r!11554) (Context!13523 (++!15938 (exprs!7261 c!9994) (exprs!7261 auxCtx!45))) a!1901) (appendTo!854 (derivationStepZipperDown!2344 (regTwo!36043 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2555052 () Unit!162229)

(assert (=> d!2216308 (= lt!2555052 (lemmaConcatPreservesForall!1068 (exprs!7261 c!9994) (exprs!7261 auxCtx!45) lambda!429342))))

(declare-fun lt!2555051 () Unit!162229)

(assert (=> d!2216308 (= lt!2555051 (choose!54626 c!9994 (regTwo!36043 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216308 (validRegex!9040 (regTwo!36043 r!11554))))

(assert (=> d!2216308 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!162 c!9994 (regTwo!36043 r!11554) a!1901 auxCtx!45) lt!2555051)))

(declare-fun bs!1883114 () Bool)

(assert (= bs!1883114 d!2216308))

(declare-fun m!7818016 () Bool)

(assert (=> bs!1883114 m!7818016))

(declare-fun m!7818018 () Bool)

(assert (=> bs!1883114 m!7818018))

(declare-fun m!7818020 () Bool)

(assert (=> bs!1883114 m!7818020))

(assert (=> bs!1883114 m!7817932))

(declare-fun m!7818022 () Bool)

(assert (=> bs!1883114 m!7818022))

(declare-fun m!7818024 () Bool)

(assert (=> bs!1883114 m!7818024))

(assert (=> bs!1883114 m!7817932))

(assert (=> bs!1883114 m!7817956))

(assert (=> b!7087822 d!2216308))

(declare-fun d!2216312 () Bool)

(assert (=> d!2216312 (= (map!16116 ((_ map or) lt!2555038 lt!2555029) lambda!429326) (choose!54627 ((_ map or) lt!2555038 lt!2555029) lambda!429326))))

(declare-fun bs!1883115 () Bool)

(assert (= bs!1883115 d!2216312))

(declare-fun m!7818026 () Bool)

(assert (=> bs!1883115 m!7818026))

(assert (=> b!7087822 d!2216312))

(declare-fun b!7087916 () Bool)

(declare-fun c!1322804 () Bool)

(declare-fun e!4261062 () Bool)

(assert (=> b!7087916 (= c!1322804 e!4261062)))

(declare-fun res!2895150 () Bool)

(assert (=> b!7087916 (=> (not res!2895150) (not e!4261062))))

(assert (=> b!7087916 (= res!2895150 ((_ is Concat!26610) (regOne!36043 r!11554)))))

(declare-fun e!4261063 () (InoxSet Context!13522))

(declare-fun e!4261061 () (InoxSet Context!13522))

(assert (=> b!7087916 (= e!4261063 e!4261061)))

(declare-fun b!7087917 () Bool)

(declare-fun e!4261065 () (InoxSet Context!13522))

(assert (=> b!7087917 (= e!4261065 (store ((as const (Array Context!13522 Bool)) false) c!9994 true))))

(declare-fun b!7087918 () Bool)

(declare-fun e!4261066 () (InoxSet Context!13522))

(assert (=> b!7087918 (= e!4261066 ((as const (Array Context!13522 Bool)) false))))

(declare-fun bm!644233 () Bool)

(declare-fun call!644240 () List!68728)

(declare-fun call!644243 () List!68728)

(assert (=> bm!644233 (= call!644240 call!644243)))

(declare-fun b!7087919 () Bool)

(declare-fun call!644238 () (InoxSet Context!13522))

(declare-fun call!644239 () (InoxSet Context!13522))

(assert (=> b!7087919 (= e!4261063 ((_ map or) call!644238 call!644239))))

(declare-fun c!1322806 () Bool)

(declare-fun bm!644234 () Bool)

(declare-fun c!1322805 () Bool)

(assert (=> bm!644234 (= call!644238 (derivationStepZipperDown!2344 (ite c!1322806 (regOne!36043 (regOne!36043 r!11554)) (ite c!1322804 (regTwo!36042 (regOne!36043 r!11554)) (ite c!1322805 (regOne!36042 (regOne!36043 r!11554)) (reg!18094 (regOne!36043 r!11554))))) (ite (or c!1322806 c!1322804) c!9994 (Context!13523 call!644240)) a!1901))))

(declare-fun d!2216314 () Bool)

(declare-fun c!1322807 () Bool)

(assert (=> d!2216314 (= c!1322807 (and ((_ is ElementMatch!17765) (regOne!36043 r!11554)) (= (c!1322764 (regOne!36043 r!11554)) a!1901)))))

(assert (=> d!2216314 (= (derivationStepZipperDown!2344 (regOne!36043 r!11554) c!9994 a!1901) e!4261065)))

(declare-fun b!7087920 () Bool)

(declare-fun e!4261064 () (InoxSet Context!13522))

(assert (=> b!7087920 (= e!4261061 e!4261064)))

(assert (=> b!7087920 (= c!1322805 ((_ is Concat!26610) (regOne!36043 r!11554)))))

(declare-fun bm!644235 () Bool)

(assert (=> bm!644235 (= call!644243 ($colon$colon!2691 (exprs!7261 c!9994) (ite (or c!1322804 c!1322805) (regTwo!36042 (regOne!36043 r!11554)) (regOne!36043 r!11554))))))

(declare-fun b!7087921 () Bool)

(declare-fun call!644241 () (InoxSet Context!13522))

(assert (=> b!7087921 (= e!4261064 call!644241)))

(declare-fun b!7087922 () Bool)

(assert (=> b!7087922 (= e!4261062 (nullable!7409 (regOne!36042 (regOne!36043 r!11554))))))

(declare-fun bm!644236 () Bool)

(assert (=> bm!644236 (= call!644239 (derivationStepZipperDown!2344 (ite c!1322806 (regTwo!36043 (regOne!36043 r!11554)) (regOne!36042 (regOne!36043 r!11554))) (ite c!1322806 c!9994 (Context!13523 call!644243)) a!1901))))

(declare-fun bm!644237 () Bool)

(declare-fun call!644242 () (InoxSet Context!13522))

(assert (=> bm!644237 (= call!644241 call!644242)))

(declare-fun b!7087923 () Bool)

(assert (=> b!7087923 (= e!4261065 e!4261063)))

(assert (=> b!7087923 (= c!1322806 ((_ is Union!17765) (regOne!36043 r!11554)))))

(declare-fun bm!644238 () Bool)

(assert (=> bm!644238 (= call!644242 call!644238)))

(declare-fun b!7087924 () Bool)

(declare-fun c!1322803 () Bool)

(assert (=> b!7087924 (= c!1322803 ((_ is Star!17765) (regOne!36043 r!11554)))))

(assert (=> b!7087924 (= e!4261064 e!4261066)))

(declare-fun b!7087925 () Bool)

(assert (=> b!7087925 (= e!4261061 ((_ map or) call!644239 call!644242))))

(declare-fun b!7087926 () Bool)

(assert (=> b!7087926 (= e!4261066 call!644241)))

(assert (= (and d!2216314 c!1322807) b!7087917))

(assert (= (and d!2216314 (not c!1322807)) b!7087923))

(assert (= (and b!7087923 c!1322806) b!7087919))

(assert (= (and b!7087923 (not c!1322806)) b!7087916))

(assert (= (and b!7087916 res!2895150) b!7087922))

(assert (= (and b!7087916 c!1322804) b!7087925))

(assert (= (and b!7087916 (not c!1322804)) b!7087920))

(assert (= (and b!7087920 c!1322805) b!7087921))

(assert (= (and b!7087920 (not c!1322805)) b!7087924))

(assert (= (and b!7087924 c!1322803) b!7087926))

(assert (= (and b!7087924 (not c!1322803)) b!7087918))

(assert (= (or b!7087921 b!7087926) bm!644233))

(assert (= (or b!7087921 b!7087926) bm!644237))

(assert (= (or b!7087925 bm!644237) bm!644238))

(assert (= (or b!7087925 bm!644233) bm!644235))

(assert (= (or b!7087919 b!7087925) bm!644236))

(assert (= (or b!7087919 bm!644238) bm!644234))

(declare-fun m!7818028 () Bool)

(assert (=> bm!644235 m!7818028))

(assert (=> b!7087917 m!7818000))

(declare-fun m!7818030 () Bool)

(assert (=> bm!644234 m!7818030))

(declare-fun m!7818032 () Bool)

(assert (=> b!7087922 m!7818032))

(declare-fun m!7818034 () Bool)

(assert (=> bm!644236 m!7818034))

(assert (=> b!7087822 d!2216314))

(declare-fun d!2216316 () Bool)

(assert (=> d!2216316 (forall!16709 (++!15938 (exprs!7261 c!9994) (exprs!7261 auxCtx!45)) lambda!429327)))

(declare-fun lt!2555055 () Unit!162229)

(declare-fun choose!54629 (List!68728 List!68728 Int) Unit!162229)

(assert (=> d!2216316 (= lt!2555055 (choose!54629 (exprs!7261 c!9994) (exprs!7261 auxCtx!45) lambda!429327))))

(assert (=> d!2216316 (forall!16709 (exprs!7261 c!9994) lambda!429327)))

(assert (=> d!2216316 (= (lemmaConcatPreservesForall!1068 (exprs!7261 c!9994) (exprs!7261 auxCtx!45) lambda!429327) lt!2555055)))

(declare-fun bs!1883116 () Bool)

(assert (= bs!1883116 d!2216316))

(assert (=> bs!1883116 m!7817956))

(assert (=> bs!1883116 m!7817956))

(declare-fun m!7818036 () Bool)

(assert (=> bs!1883116 m!7818036))

(declare-fun m!7818038 () Bool)

(assert (=> bs!1883116 m!7818038))

(assert (=> bs!1883116 m!7817926))

(assert (=> b!7087822 d!2216316))

(declare-fun d!2216318 () Bool)

(assert (=> d!2216318 (= (map!16116 lt!2555029 lambda!429326) (choose!54627 lt!2555029 lambda!429326))))

(declare-fun bs!1883117 () Bool)

(assert (= bs!1883117 d!2216318))

(declare-fun m!7818040 () Bool)

(assert (=> bs!1883117 m!7818040))

(assert (=> b!7087822 d!2216318))

(declare-fun d!2216320 () Bool)

(declare-fun res!2895155 () Bool)

(declare-fun e!4261071 () Bool)

(assert (=> d!2216320 (=> res!2895155 e!4261071)))

(assert (=> d!2216320 (= res!2895155 ((_ is Nil!68604) (exprs!7261 c!9994)))))

(assert (=> d!2216320 (= (forall!16709 (exprs!7261 c!9994) lambda!429327) e!4261071)))

(declare-fun b!7087931 () Bool)

(declare-fun e!4261072 () Bool)

(assert (=> b!7087931 (= e!4261071 e!4261072)))

(declare-fun res!2895156 () Bool)

(assert (=> b!7087931 (=> (not res!2895156) (not e!4261072))))

(declare-fun dynLambda!27980 (Int Regex!17765) Bool)

(assert (=> b!7087931 (= res!2895156 (dynLambda!27980 lambda!429327 (h!75052 (exprs!7261 c!9994))))))

(declare-fun b!7087932 () Bool)

(assert (=> b!7087932 (= e!4261072 (forall!16709 (t!382513 (exprs!7261 c!9994)) lambda!429327))))

(assert (= (and d!2216320 (not res!2895155)) b!7087931))

(assert (= (and b!7087931 res!2895156) b!7087932))

(declare-fun b_lambda!270907 () Bool)

(assert (=> (not b_lambda!270907) (not b!7087931)))

(declare-fun m!7818052 () Bool)

(assert (=> b!7087931 m!7818052))

(declare-fun m!7818054 () Bool)

(assert (=> b!7087932 m!7818054))

(assert (=> b!7087822 d!2216320))

(declare-fun d!2216324 () Bool)

(assert (=> d!2216324 (= ((_ map or) (map!16116 lt!2555038 lambda!429326) (map!16116 lt!2555029 lambda!429326)) (map!16116 ((_ map or) lt!2555038 lt!2555029) lambda!429326))))

(declare-fun lt!2555066 () Unit!162229)

(declare-fun choose!54630 ((InoxSet Context!13522) (InoxSet Context!13522) Int) Unit!162229)

(assert (=> d!2216324 (= lt!2555066 (choose!54630 lt!2555038 lt!2555029 lambda!429326))))

(assert (=> d!2216324 (= (lemmaMapAssociative!2 lt!2555038 lt!2555029 lambda!429326) lt!2555066)))

(declare-fun bs!1883121 () Bool)

(assert (= bs!1883121 d!2216324))

(assert (=> bs!1883121 m!7817930))

(assert (=> bs!1883121 m!7817940))

(assert (=> bs!1883121 m!7817946))

(declare-fun m!7818058 () Bool)

(assert (=> bs!1883121 m!7818058))

(assert (=> b!7087822 d!2216324))

(declare-fun b!7087933 () Bool)

(declare-fun c!1322810 () Bool)

(declare-fun e!4261074 () Bool)

(assert (=> b!7087933 (= c!1322810 e!4261074)))

(declare-fun res!2895157 () Bool)

(assert (=> b!7087933 (=> (not res!2895157) (not e!4261074))))

(assert (=> b!7087933 (= res!2895157 ((_ is Concat!26610) (regTwo!36043 r!11554)))))

(declare-fun e!4261075 () (InoxSet Context!13522))

(declare-fun e!4261073 () (InoxSet Context!13522))

(assert (=> b!7087933 (= e!4261075 e!4261073)))

(declare-fun b!7087934 () Bool)

(declare-fun e!4261077 () (InoxSet Context!13522))

(assert (=> b!7087934 (= e!4261077 (store ((as const (Array Context!13522 Bool)) false) lt!2555031 true))))

(declare-fun b!7087935 () Bool)

(declare-fun e!4261078 () (InoxSet Context!13522))

(assert (=> b!7087935 (= e!4261078 ((as const (Array Context!13522 Bool)) false))))

(declare-fun bm!644239 () Bool)

(declare-fun call!644246 () List!68728)

(declare-fun call!644249 () List!68728)

(assert (=> bm!644239 (= call!644246 call!644249)))

(declare-fun b!7087936 () Bool)

(declare-fun call!644244 () (InoxSet Context!13522))

(declare-fun call!644245 () (InoxSet Context!13522))

(assert (=> b!7087936 (= e!4261075 ((_ map or) call!644244 call!644245))))

(declare-fun bm!644240 () Bool)

(declare-fun c!1322811 () Bool)

(declare-fun c!1322812 () Bool)

(assert (=> bm!644240 (= call!644244 (derivationStepZipperDown!2344 (ite c!1322812 (regOne!36043 (regTwo!36043 r!11554)) (ite c!1322810 (regTwo!36042 (regTwo!36043 r!11554)) (ite c!1322811 (regOne!36042 (regTwo!36043 r!11554)) (reg!18094 (regTwo!36043 r!11554))))) (ite (or c!1322812 c!1322810) lt!2555031 (Context!13523 call!644246)) a!1901))))

(declare-fun d!2216328 () Bool)

(declare-fun c!1322813 () Bool)

(assert (=> d!2216328 (= c!1322813 (and ((_ is ElementMatch!17765) (regTwo!36043 r!11554)) (= (c!1322764 (regTwo!36043 r!11554)) a!1901)))))

(assert (=> d!2216328 (= (derivationStepZipperDown!2344 (regTwo!36043 r!11554) lt!2555031 a!1901) e!4261077)))

(declare-fun b!7087937 () Bool)

(declare-fun e!4261076 () (InoxSet Context!13522))

(assert (=> b!7087937 (= e!4261073 e!4261076)))

(assert (=> b!7087937 (= c!1322811 ((_ is Concat!26610) (regTwo!36043 r!11554)))))

(declare-fun bm!644241 () Bool)

(assert (=> bm!644241 (= call!644249 ($colon$colon!2691 (exprs!7261 lt!2555031) (ite (or c!1322810 c!1322811) (regTwo!36042 (regTwo!36043 r!11554)) (regTwo!36043 r!11554))))))

(declare-fun b!7087938 () Bool)

(declare-fun call!644247 () (InoxSet Context!13522))

(assert (=> b!7087938 (= e!4261076 call!644247)))

(declare-fun b!7087939 () Bool)

(assert (=> b!7087939 (= e!4261074 (nullable!7409 (regOne!36042 (regTwo!36043 r!11554))))))

(declare-fun bm!644242 () Bool)

(assert (=> bm!644242 (= call!644245 (derivationStepZipperDown!2344 (ite c!1322812 (regTwo!36043 (regTwo!36043 r!11554)) (regOne!36042 (regTwo!36043 r!11554))) (ite c!1322812 lt!2555031 (Context!13523 call!644249)) a!1901))))

(declare-fun bm!644243 () Bool)

(declare-fun call!644248 () (InoxSet Context!13522))

(assert (=> bm!644243 (= call!644247 call!644248)))

(declare-fun b!7087940 () Bool)

(assert (=> b!7087940 (= e!4261077 e!4261075)))

(assert (=> b!7087940 (= c!1322812 ((_ is Union!17765) (regTwo!36043 r!11554)))))

(declare-fun bm!644244 () Bool)

(assert (=> bm!644244 (= call!644248 call!644244)))

(declare-fun b!7087941 () Bool)

(declare-fun c!1322809 () Bool)

(assert (=> b!7087941 (= c!1322809 ((_ is Star!17765) (regTwo!36043 r!11554)))))

(assert (=> b!7087941 (= e!4261076 e!4261078)))

(declare-fun b!7087942 () Bool)

(assert (=> b!7087942 (= e!4261073 ((_ map or) call!644245 call!644248))))

(declare-fun b!7087943 () Bool)

(assert (=> b!7087943 (= e!4261078 call!644247)))

(assert (= (and d!2216328 c!1322813) b!7087934))

(assert (= (and d!2216328 (not c!1322813)) b!7087940))

(assert (= (and b!7087940 c!1322812) b!7087936))

(assert (= (and b!7087940 (not c!1322812)) b!7087933))

(assert (= (and b!7087933 res!2895157) b!7087939))

(assert (= (and b!7087933 c!1322810) b!7087942))

(assert (= (and b!7087933 (not c!1322810)) b!7087937))

(assert (= (and b!7087937 c!1322811) b!7087938))

(assert (= (and b!7087937 (not c!1322811)) b!7087941))

(assert (= (and b!7087941 c!1322809) b!7087943))

(assert (= (and b!7087941 (not c!1322809)) b!7087935))

(assert (= (or b!7087938 b!7087943) bm!644239))

(assert (= (or b!7087938 b!7087943) bm!644243))

(assert (= (or b!7087942 bm!644243) bm!644244))

(assert (= (or b!7087942 bm!644239) bm!644241))

(assert (= (or b!7087936 b!7087942) bm!644242))

(assert (= (or b!7087936 bm!644244) bm!644240))

(declare-fun m!7818074 () Bool)

(assert (=> bm!644241 m!7818074))

(declare-fun m!7818076 () Bool)

(assert (=> b!7087934 m!7818076))

(declare-fun m!7818080 () Bool)

(assert (=> bm!644240 m!7818080))

(assert (=> b!7087939 m!7818004))

(declare-fun m!7818082 () Bool)

(assert (=> bm!644242 m!7818082))

(assert (=> b!7087827 d!2216328))

(declare-fun b!7087954 () Bool)

(declare-fun e!4261085 () List!68728)

(assert (=> b!7087954 (= e!4261085 (exprs!7261 auxCtx!45))))

(declare-fun d!2216336 () Bool)

(declare-fun e!4261086 () Bool)

(assert (=> d!2216336 e!4261086))

(declare-fun res!2895164 () Bool)

(assert (=> d!2216336 (=> (not res!2895164) (not e!4261086))))

(declare-fun lt!2555075 () List!68728)

(declare-fun content!13925 (List!68728) (InoxSet Regex!17765))

(assert (=> d!2216336 (= res!2895164 (= (content!13925 lt!2555075) ((_ map or) (content!13925 (exprs!7261 c!9994)) (content!13925 (exprs!7261 auxCtx!45)))))))

(assert (=> d!2216336 (= lt!2555075 e!4261085)))

(declare-fun c!1322816 () Bool)

(assert (=> d!2216336 (= c!1322816 ((_ is Nil!68604) (exprs!7261 c!9994)))))

(assert (=> d!2216336 (= (++!15938 (exprs!7261 c!9994) (exprs!7261 auxCtx!45)) lt!2555075)))

(declare-fun b!7087959 () Bool)

(assert (=> b!7087959 (= e!4261086 (or (not (= (exprs!7261 auxCtx!45) Nil!68604)) (= lt!2555075 (exprs!7261 c!9994))))))

(declare-fun b!7087955 () Bool)

(assert (=> b!7087955 (= e!4261085 (Cons!68604 (h!75052 (exprs!7261 c!9994)) (++!15938 (t!382513 (exprs!7261 c!9994)) (exprs!7261 auxCtx!45))))))

(declare-fun b!7087958 () Bool)

(declare-fun res!2895165 () Bool)

(assert (=> b!7087958 (=> (not res!2895165) (not e!4261086))))

(declare-fun size!41300 (List!68728) Int)

(assert (=> b!7087958 (= res!2895165 (= (size!41300 lt!2555075) (+ (size!41300 (exprs!7261 c!9994)) (size!41300 (exprs!7261 auxCtx!45)))))))

(assert (= (and d!2216336 c!1322816) b!7087954))

(assert (= (and d!2216336 (not c!1322816)) b!7087955))

(assert (= (and d!2216336 res!2895164) b!7087958))

(assert (= (and b!7087958 res!2895165) b!7087959))

(declare-fun m!7818088 () Bool)

(assert (=> d!2216336 m!7818088))

(declare-fun m!7818090 () Bool)

(assert (=> d!2216336 m!7818090))

(declare-fun m!7818092 () Bool)

(assert (=> d!2216336 m!7818092))

(declare-fun m!7818094 () Bool)

(assert (=> b!7087955 m!7818094))

(declare-fun m!7818096 () Bool)

(assert (=> b!7087958 m!7818096))

(declare-fun m!7818098 () Bool)

(assert (=> b!7087958 m!7818098))

(declare-fun m!7818100 () Bool)

(assert (=> b!7087958 m!7818100))

(assert (=> b!7087827 d!2216336))

(assert (=> b!7087827 d!2216316))

(declare-fun b!7087974 () Bool)

(declare-fun c!1322822 () Bool)

(declare-fun e!4261100 () Bool)

(assert (=> b!7087974 (= c!1322822 e!4261100)))

(declare-fun res!2895174 () Bool)

(assert (=> b!7087974 (=> (not res!2895174) (not e!4261100))))

(assert (=> b!7087974 (= res!2895174 ((_ is Concat!26610) (regOne!36043 r!11554)))))

(declare-fun e!4261101 () (InoxSet Context!13522))

(declare-fun e!4261099 () (InoxSet Context!13522))

(assert (=> b!7087974 (= e!4261101 e!4261099)))

(declare-fun b!7087975 () Bool)

(declare-fun e!4261103 () (InoxSet Context!13522))

(assert (=> b!7087975 (= e!4261103 (store ((as const (Array Context!13522 Bool)) false) lt!2555031 true))))

(declare-fun b!7087976 () Bool)

(declare-fun e!4261104 () (InoxSet Context!13522))

(assert (=> b!7087976 (= e!4261104 ((as const (Array Context!13522 Bool)) false))))

(declare-fun bm!644247 () Bool)

(declare-fun call!644254 () List!68728)

(declare-fun call!644257 () List!68728)

(assert (=> bm!644247 (= call!644254 call!644257)))

(declare-fun b!7087977 () Bool)

(declare-fun call!644252 () (InoxSet Context!13522))

(declare-fun call!644253 () (InoxSet Context!13522))

(assert (=> b!7087977 (= e!4261101 ((_ map or) call!644252 call!644253))))

(declare-fun c!1322824 () Bool)

(declare-fun bm!644248 () Bool)

(declare-fun c!1322823 () Bool)

(assert (=> bm!644248 (= call!644252 (derivationStepZipperDown!2344 (ite c!1322824 (regOne!36043 (regOne!36043 r!11554)) (ite c!1322822 (regTwo!36042 (regOne!36043 r!11554)) (ite c!1322823 (regOne!36042 (regOne!36043 r!11554)) (reg!18094 (regOne!36043 r!11554))))) (ite (or c!1322824 c!1322822) lt!2555031 (Context!13523 call!644254)) a!1901))))

(declare-fun d!2216342 () Bool)

(declare-fun c!1322825 () Bool)

(assert (=> d!2216342 (= c!1322825 (and ((_ is ElementMatch!17765) (regOne!36043 r!11554)) (= (c!1322764 (regOne!36043 r!11554)) a!1901)))))

(assert (=> d!2216342 (= (derivationStepZipperDown!2344 (regOne!36043 r!11554) lt!2555031 a!1901) e!4261103)))

(declare-fun b!7087978 () Bool)

(declare-fun e!4261102 () (InoxSet Context!13522))

(assert (=> b!7087978 (= e!4261099 e!4261102)))

(assert (=> b!7087978 (= c!1322823 ((_ is Concat!26610) (regOne!36043 r!11554)))))

(declare-fun bm!644249 () Bool)

(assert (=> bm!644249 (= call!644257 ($colon$colon!2691 (exprs!7261 lt!2555031) (ite (or c!1322822 c!1322823) (regTwo!36042 (regOne!36043 r!11554)) (regOne!36043 r!11554))))))

(declare-fun b!7087979 () Bool)

(declare-fun call!644255 () (InoxSet Context!13522))

(assert (=> b!7087979 (= e!4261102 call!644255)))

(declare-fun b!7087980 () Bool)

(assert (=> b!7087980 (= e!4261100 (nullable!7409 (regOne!36042 (regOne!36043 r!11554))))))

(declare-fun bm!644250 () Bool)

(assert (=> bm!644250 (= call!644253 (derivationStepZipperDown!2344 (ite c!1322824 (regTwo!36043 (regOne!36043 r!11554)) (regOne!36042 (regOne!36043 r!11554))) (ite c!1322824 lt!2555031 (Context!13523 call!644257)) a!1901))))

(declare-fun bm!644251 () Bool)

(declare-fun call!644256 () (InoxSet Context!13522))

(assert (=> bm!644251 (= call!644255 call!644256)))

(declare-fun b!7087981 () Bool)

(assert (=> b!7087981 (= e!4261103 e!4261101)))

(assert (=> b!7087981 (= c!1322824 ((_ is Union!17765) (regOne!36043 r!11554)))))

(declare-fun bm!644252 () Bool)

(assert (=> bm!644252 (= call!644256 call!644252)))

(declare-fun b!7087982 () Bool)

(declare-fun c!1322821 () Bool)

(assert (=> b!7087982 (= c!1322821 ((_ is Star!17765) (regOne!36043 r!11554)))))

(assert (=> b!7087982 (= e!4261102 e!4261104)))

(declare-fun b!7087983 () Bool)

(assert (=> b!7087983 (= e!4261099 ((_ map or) call!644253 call!644256))))

(declare-fun b!7087984 () Bool)

(assert (=> b!7087984 (= e!4261104 call!644255)))

(assert (= (and d!2216342 c!1322825) b!7087975))

(assert (= (and d!2216342 (not c!1322825)) b!7087981))

(assert (= (and b!7087981 c!1322824) b!7087977))

(assert (= (and b!7087981 (not c!1322824)) b!7087974))

(assert (= (and b!7087974 res!2895174) b!7087980))

(assert (= (and b!7087974 c!1322822) b!7087983))

(assert (= (and b!7087974 (not c!1322822)) b!7087978))

(assert (= (and b!7087978 c!1322823) b!7087979))

(assert (= (and b!7087978 (not c!1322823)) b!7087982))

(assert (= (and b!7087982 c!1322821) b!7087984))

(assert (= (and b!7087982 (not c!1322821)) b!7087976))

(assert (= (or b!7087979 b!7087984) bm!644247))

(assert (= (or b!7087979 b!7087984) bm!644251))

(assert (= (or b!7087983 bm!644251) bm!644252))

(assert (= (or b!7087983 bm!644247) bm!644249))

(assert (= (or b!7087977 b!7087983) bm!644250))

(assert (= (or b!7087977 bm!644252) bm!644248))

(declare-fun m!7818102 () Bool)

(assert (=> bm!644249 m!7818102))

(assert (=> b!7087975 m!7818076))

(declare-fun m!7818104 () Bool)

(assert (=> bm!644248 m!7818104))

(assert (=> b!7087980 m!7818032))

(declare-fun m!7818106 () Bool)

(assert (=> bm!644250 m!7818106))

(assert (=> b!7087827 d!2216342))

(declare-fun b!7087985 () Bool)

(declare-fun c!1322827 () Bool)

(declare-fun e!4261106 () Bool)

(assert (=> b!7087985 (= c!1322827 e!4261106)))

(declare-fun res!2895175 () Bool)

(assert (=> b!7087985 (=> (not res!2895175) (not e!4261106))))

(assert (=> b!7087985 (= res!2895175 ((_ is Concat!26610) r!11554))))

(declare-fun e!4261107 () (InoxSet Context!13522))

(declare-fun e!4261105 () (InoxSet Context!13522))

(assert (=> b!7087985 (= e!4261107 e!4261105)))

(declare-fun b!7087986 () Bool)

(declare-fun e!4261109 () (InoxSet Context!13522))

(assert (=> b!7087986 (= e!4261109 (store ((as const (Array Context!13522 Bool)) false) lt!2555031 true))))

(declare-fun b!7087987 () Bool)

(declare-fun e!4261110 () (InoxSet Context!13522))

(assert (=> b!7087987 (= e!4261110 ((as const (Array Context!13522 Bool)) false))))

(declare-fun bm!644257 () Bool)

(declare-fun call!644264 () List!68728)

(declare-fun call!644267 () List!68728)

(assert (=> bm!644257 (= call!644264 call!644267)))

(declare-fun b!7087988 () Bool)

(declare-fun call!644262 () (InoxSet Context!13522))

(declare-fun call!644263 () (InoxSet Context!13522))

(assert (=> b!7087988 (= e!4261107 ((_ map or) call!644262 call!644263))))

(declare-fun bm!644258 () Bool)

(declare-fun c!1322828 () Bool)

(declare-fun c!1322829 () Bool)

(assert (=> bm!644258 (= call!644262 (derivationStepZipperDown!2344 (ite c!1322829 (regOne!36043 r!11554) (ite c!1322827 (regTwo!36042 r!11554) (ite c!1322828 (regOne!36042 r!11554) (reg!18094 r!11554)))) (ite (or c!1322829 c!1322827) lt!2555031 (Context!13523 call!644264)) a!1901))))

(declare-fun d!2216344 () Bool)

(declare-fun c!1322830 () Bool)

(assert (=> d!2216344 (= c!1322830 (and ((_ is ElementMatch!17765) r!11554) (= (c!1322764 r!11554) a!1901)))))

(assert (=> d!2216344 (= (derivationStepZipperDown!2344 r!11554 lt!2555031 a!1901) e!4261109)))

(declare-fun b!7087989 () Bool)

(declare-fun e!4261108 () (InoxSet Context!13522))

(assert (=> b!7087989 (= e!4261105 e!4261108)))

(assert (=> b!7087989 (= c!1322828 ((_ is Concat!26610) r!11554))))

(declare-fun bm!644259 () Bool)

(assert (=> bm!644259 (= call!644267 ($colon$colon!2691 (exprs!7261 lt!2555031) (ite (or c!1322827 c!1322828) (regTwo!36042 r!11554) r!11554)))))

(declare-fun b!7087990 () Bool)

(declare-fun call!644265 () (InoxSet Context!13522))

(assert (=> b!7087990 (= e!4261108 call!644265)))

(declare-fun b!7087991 () Bool)

(assert (=> b!7087991 (= e!4261106 (nullable!7409 (regOne!36042 r!11554)))))

(declare-fun bm!644260 () Bool)

(assert (=> bm!644260 (= call!644263 (derivationStepZipperDown!2344 (ite c!1322829 (regTwo!36043 r!11554) (regOne!36042 r!11554)) (ite c!1322829 lt!2555031 (Context!13523 call!644267)) a!1901))))

(declare-fun bm!644261 () Bool)

(declare-fun call!644266 () (InoxSet Context!13522))

(assert (=> bm!644261 (= call!644265 call!644266)))

(declare-fun b!7087992 () Bool)

(assert (=> b!7087992 (= e!4261109 e!4261107)))

(assert (=> b!7087992 (= c!1322829 ((_ is Union!17765) r!11554))))

(declare-fun bm!644262 () Bool)

(assert (=> bm!644262 (= call!644266 call!644262)))

(declare-fun b!7087993 () Bool)

(declare-fun c!1322826 () Bool)

(assert (=> b!7087993 (= c!1322826 ((_ is Star!17765) r!11554))))

(assert (=> b!7087993 (= e!4261108 e!4261110)))

(declare-fun b!7087994 () Bool)

(assert (=> b!7087994 (= e!4261105 ((_ map or) call!644263 call!644266))))

(declare-fun b!7087995 () Bool)

(assert (=> b!7087995 (= e!4261110 call!644265)))

(assert (= (and d!2216344 c!1322830) b!7087986))

(assert (= (and d!2216344 (not c!1322830)) b!7087992))

(assert (= (and b!7087992 c!1322829) b!7087988))

(assert (= (and b!7087992 (not c!1322829)) b!7087985))

(assert (= (and b!7087985 res!2895175) b!7087991))

(assert (= (and b!7087985 c!1322827) b!7087994))

(assert (= (and b!7087985 (not c!1322827)) b!7087989))

(assert (= (and b!7087989 c!1322828) b!7087990))

(assert (= (and b!7087989 (not c!1322828)) b!7087993))

(assert (= (and b!7087993 c!1322826) b!7087995))

(assert (= (and b!7087993 (not c!1322826)) b!7087987))

(assert (= (or b!7087990 b!7087995) bm!644257))

(assert (= (or b!7087990 b!7087995) bm!644261))

(assert (= (or b!7087994 bm!644261) bm!644262))

(assert (= (or b!7087994 bm!644257) bm!644259))

(assert (= (or b!7087988 b!7087994) bm!644260))

(assert (= (or b!7087988 bm!644262) bm!644258))

(declare-fun m!7818108 () Bool)

(assert (=> bm!644259 m!7818108))

(assert (=> b!7087986 m!7818076))

(declare-fun m!7818110 () Bool)

(assert (=> bm!644258 m!7818110))

(declare-fun m!7818112 () Bool)

(assert (=> b!7087991 m!7818112))

(declare-fun m!7818114 () Bool)

(assert (=> bm!644260 m!7818114))

(assert (=> b!7087827 d!2216344))

(declare-fun b!7088034 () Bool)

(declare-fun res!2895193 () Bool)

(declare-fun e!4261142 () Bool)

(assert (=> b!7088034 (=> (not res!2895193) (not e!4261142))))

(declare-fun call!644283 () Bool)

(assert (=> b!7088034 (= res!2895193 call!644283)))

(declare-fun e!4261141 () Bool)

(assert (=> b!7088034 (= e!4261141 e!4261142)))

(declare-fun b!7088035 () Bool)

(declare-fun e!4261138 () Bool)

(declare-fun e!4261143 () Bool)

(assert (=> b!7088035 (= e!4261138 e!4261143)))

(declare-fun res!2895192 () Bool)

(assert (=> b!7088035 (= res!2895192 (not (nullable!7409 (reg!18094 r!11554))))))

(assert (=> b!7088035 (=> (not res!2895192) (not e!4261143))))

(declare-fun bm!644278 () Bool)

(declare-fun call!644285 () Bool)

(declare-fun call!644284 () Bool)

(assert (=> bm!644278 (= call!644285 call!644284)))

(declare-fun d!2216346 () Bool)

(declare-fun res!2895196 () Bool)

(declare-fun e!4261139 () Bool)

(assert (=> d!2216346 (=> res!2895196 e!4261139)))

(assert (=> d!2216346 (= res!2895196 ((_ is ElementMatch!17765) r!11554))))

(assert (=> d!2216346 (= (validRegex!9040 r!11554) e!4261139)))

(declare-fun c!1322843 () Bool)

(declare-fun c!1322842 () Bool)

(declare-fun bm!644279 () Bool)

(assert (=> bm!644279 (= call!644284 (validRegex!9040 (ite c!1322843 (reg!18094 r!11554) (ite c!1322842 (regTwo!36043 r!11554) (regOne!36042 r!11554)))))))

(declare-fun b!7088036 () Bool)

(declare-fun res!2895194 () Bool)

(declare-fun e!4261144 () Bool)

(assert (=> b!7088036 (=> res!2895194 e!4261144)))

(assert (=> b!7088036 (= res!2895194 (not ((_ is Concat!26610) r!11554)))))

(assert (=> b!7088036 (= e!4261141 e!4261144)))

(declare-fun b!7088037 () Bool)

(declare-fun e!4261140 () Bool)

(assert (=> b!7088037 (= e!4261140 call!644283)))

(declare-fun b!7088038 () Bool)

(assert (=> b!7088038 (= e!4261143 call!644284)))

(declare-fun b!7088039 () Bool)

(assert (=> b!7088039 (= e!4261138 e!4261141)))

(assert (=> b!7088039 (= c!1322842 ((_ is Union!17765) r!11554))))

(declare-fun b!7088040 () Bool)

(assert (=> b!7088040 (= e!4261142 call!644285)))

(declare-fun b!7088041 () Bool)

(assert (=> b!7088041 (= e!4261139 e!4261138)))

(assert (=> b!7088041 (= c!1322843 ((_ is Star!17765) r!11554))))

(declare-fun b!7088042 () Bool)

(assert (=> b!7088042 (= e!4261144 e!4261140)))

(declare-fun res!2895195 () Bool)

(assert (=> b!7088042 (=> (not res!2895195) (not e!4261140))))

(assert (=> b!7088042 (= res!2895195 call!644285)))

(declare-fun bm!644280 () Bool)

(assert (=> bm!644280 (= call!644283 (validRegex!9040 (ite c!1322842 (regOne!36043 r!11554) (regTwo!36042 r!11554))))))

(assert (= (and d!2216346 (not res!2895196)) b!7088041))

(assert (= (and b!7088041 c!1322843) b!7088035))

(assert (= (and b!7088041 (not c!1322843)) b!7088039))

(assert (= (and b!7088035 res!2895192) b!7088038))

(assert (= (and b!7088039 c!1322842) b!7088034))

(assert (= (and b!7088039 (not c!1322842)) b!7088036))

(assert (= (and b!7088034 res!2895193) b!7088040))

(assert (= (and b!7088036 (not res!2895194)) b!7088042))

(assert (= (and b!7088042 res!2895195) b!7088037))

(assert (= (or b!7088034 b!7088037) bm!644280))

(assert (= (or b!7088040 b!7088042) bm!644278))

(assert (= (or b!7088038 bm!644278) bm!644279))

(declare-fun m!7818134 () Bool)

(assert (=> b!7088035 m!7818134))

(declare-fun m!7818136 () Bool)

(assert (=> bm!644279 m!7818136))

(declare-fun m!7818138 () Bool)

(assert (=> bm!644280 m!7818138))

(assert (=> start!689876 d!2216346))

(declare-fun bs!1883140 () Bool)

(declare-fun d!2216356 () Bool)

(assert (= bs!1883140 (and d!2216356 b!7087827)))

(declare-fun lambda!429354 () Int)

(assert (=> bs!1883140 (= lambda!429354 lambda!429327)))

(declare-fun bs!1883141 () Bool)

(assert (= bs!1883141 (and d!2216356 d!2216288)))

(assert (=> bs!1883141 (= lambda!429354 lambda!429330)))

(declare-fun bs!1883142 () Bool)

(assert (= bs!1883142 (and d!2216356 d!2216308)))

(assert (=> bs!1883142 (= lambda!429354 lambda!429342)))

(assert (=> d!2216356 (= (inv!87277 c!9994) (forall!16709 (exprs!7261 c!9994) lambda!429354))))

(declare-fun bs!1883143 () Bool)

(assert (= bs!1883143 d!2216356))

(declare-fun m!7818140 () Bool)

(assert (=> bs!1883143 m!7818140))

(assert (=> start!689876 d!2216356))

(declare-fun bs!1883144 () Bool)

(declare-fun d!2216358 () Bool)

(assert (= bs!1883144 (and d!2216358 b!7087827)))

(declare-fun lambda!429355 () Int)

(assert (=> bs!1883144 (= lambda!429355 lambda!429327)))

(declare-fun bs!1883145 () Bool)

(assert (= bs!1883145 (and d!2216358 d!2216288)))

(assert (=> bs!1883145 (= lambda!429355 lambda!429330)))

(declare-fun bs!1883146 () Bool)

(assert (= bs!1883146 (and d!2216358 d!2216308)))

(assert (=> bs!1883146 (= lambda!429355 lambda!429342)))

(declare-fun bs!1883147 () Bool)

(assert (= bs!1883147 (and d!2216358 d!2216356)))

(assert (=> bs!1883147 (= lambda!429355 lambda!429354)))

(assert (=> d!2216358 (= (inv!87277 auxCtx!45) (forall!16709 (exprs!7261 auxCtx!45) lambda!429355))))

(declare-fun bs!1883148 () Bool)

(assert (= bs!1883148 d!2216358))

(declare-fun m!7818142 () Bool)

(assert (=> bs!1883148 m!7818142))

(assert (=> start!689876 d!2216358))

(declare-fun e!4261159 () Bool)

(assert (=> b!7087824 (= tp!1946523 e!4261159)))

(declare-fun b!7088079 () Bool)

(declare-fun tp!1946540 () Bool)

(declare-fun tp!1946538 () Bool)

(assert (=> b!7088079 (= e!4261159 (and tp!1946540 tp!1946538))))

(declare-fun b!7088077 () Bool)

(declare-fun tp!1946541 () Bool)

(declare-fun tp!1946539 () Bool)

(assert (=> b!7088077 (= e!4261159 (and tp!1946541 tp!1946539))))

(declare-fun b!7088078 () Bool)

(declare-fun tp!1946537 () Bool)

(assert (=> b!7088078 (= e!4261159 tp!1946537)))

(declare-fun b!7088076 () Bool)

(assert (=> b!7088076 (= e!4261159 tp_is_empty!44763)))

(assert (= (and b!7087824 ((_ is ElementMatch!17765) (regOne!36043 r!11554))) b!7088076))

(assert (= (and b!7087824 ((_ is Concat!26610) (regOne!36043 r!11554))) b!7088077))

(assert (= (and b!7087824 ((_ is Star!17765) (regOne!36043 r!11554))) b!7088078))

(assert (= (and b!7087824 ((_ is Union!17765) (regOne!36043 r!11554))) b!7088079))

(declare-fun e!4261160 () Bool)

(assert (=> b!7087824 (= tp!1946521 e!4261160)))

(declare-fun b!7088083 () Bool)

(declare-fun tp!1946545 () Bool)

(declare-fun tp!1946543 () Bool)

(assert (=> b!7088083 (= e!4261160 (and tp!1946545 tp!1946543))))

(declare-fun b!7088081 () Bool)

(declare-fun tp!1946546 () Bool)

(declare-fun tp!1946544 () Bool)

(assert (=> b!7088081 (= e!4261160 (and tp!1946546 tp!1946544))))

(declare-fun b!7088082 () Bool)

(declare-fun tp!1946542 () Bool)

(assert (=> b!7088082 (= e!4261160 tp!1946542)))

(declare-fun b!7088080 () Bool)

(assert (=> b!7088080 (= e!4261160 tp_is_empty!44763)))

(assert (= (and b!7087824 ((_ is ElementMatch!17765) (regTwo!36043 r!11554))) b!7088080))

(assert (= (and b!7087824 ((_ is Concat!26610) (regTwo!36043 r!11554))) b!7088081))

(assert (= (and b!7087824 ((_ is Star!17765) (regTwo!36043 r!11554))) b!7088082))

(assert (= (and b!7087824 ((_ is Union!17765) (regTwo!36043 r!11554))) b!7088083))

(declare-fun e!4261161 () Bool)

(assert (=> b!7087828 (= tp!1946520 e!4261161)))

(declare-fun b!7088087 () Bool)

(declare-fun tp!1946550 () Bool)

(declare-fun tp!1946548 () Bool)

(assert (=> b!7088087 (= e!4261161 (and tp!1946550 tp!1946548))))

(declare-fun b!7088085 () Bool)

(declare-fun tp!1946551 () Bool)

(declare-fun tp!1946549 () Bool)

(assert (=> b!7088085 (= e!4261161 (and tp!1946551 tp!1946549))))

(declare-fun b!7088086 () Bool)

(declare-fun tp!1946547 () Bool)

(assert (=> b!7088086 (= e!4261161 tp!1946547)))

(declare-fun b!7088084 () Bool)

(assert (=> b!7088084 (= e!4261161 tp_is_empty!44763)))

(assert (= (and b!7087828 ((_ is ElementMatch!17765) (reg!18094 r!11554))) b!7088084))

(assert (= (and b!7087828 ((_ is Concat!26610) (reg!18094 r!11554))) b!7088085))

(assert (= (and b!7087828 ((_ is Star!17765) (reg!18094 r!11554))) b!7088086))

(assert (= (and b!7087828 ((_ is Union!17765) (reg!18094 r!11554))) b!7088087))

(declare-fun b!7088103 () Bool)

(declare-fun e!4261170 () Bool)

(declare-fun tp!1946556 () Bool)

(declare-fun tp!1946557 () Bool)

(assert (=> b!7088103 (= e!4261170 (and tp!1946556 tp!1946557))))

(assert (=> b!7087826 (= tp!1946526 e!4261170)))

(assert (= (and b!7087826 ((_ is Cons!68604) (exprs!7261 c!9994))) b!7088103))

(declare-fun b!7088104 () Bool)

(declare-fun e!4261171 () Bool)

(declare-fun tp!1946558 () Bool)

(declare-fun tp!1946559 () Bool)

(assert (=> b!7088104 (= e!4261171 (and tp!1946558 tp!1946559))))

(assert (=> b!7087830 (= tp!1946525 e!4261171)))

(assert (= (and b!7087830 ((_ is Cons!68604) (exprs!7261 auxCtx!45))) b!7088104))

(declare-fun e!4261172 () Bool)

(assert (=> b!7087825 (= tp!1946524 e!4261172)))

(declare-fun b!7088108 () Bool)

(declare-fun tp!1946563 () Bool)

(declare-fun tp!1946561 () Bool)

(assert (=> b!7088108 (= e!4261172 (and tp!1946563 tp!1946561))))

(declare-fun b!7088106 () Bool)

(declare-fun tp!1946564 () Bool)

(declare-fun tp!1946562 () Bool)

(assert (=> b!7088106 (= e!4261172 (and tp!1946564 tp!1946562))))

(declare-fun b!7088107 () Bool)

(declare-fun tp!1946560 () Bool)

(assert (=> b!7088107 (= e!4261172 tp!1946560)))

(declare-fun b!7088105 () Bool)

(assert (=> b!7088105 (= e!4261172 tp_is_empty!44763)))

(assert (= (and b!7087825 ((_ is ElementMatch!17765) (regOne!36042 r!11554))) b!7088105))

(assert (= (and b!7087825 ((_ is Concat!26610) (regOne!36042 r!11554))) b!7088106))

(assert (= (and b!7087825 ((_ is Star!17765) (regOne!36042 r!11554))) b!7088107))

(assert (= (and b!7087825 ((_ is Union!17765) (regOne!36042 r!11554))) b!7088108))

(declare-fun e!4261173 () Bool)

(assert (=> b!7087825 (= tp!1946522 e!4261173)))

(declare-fun b!7088112 () Bool)

(declare-fun tp!1946568 () Bool)

(declare-fun tp!1946566 () Bool)

(assert (=> b!7088112 (= e!4261173 (and tp!1946568 tp!1946566))))

(declare-fun b!7088110 () Bool)

(declare-fun tp!1946569 () Bool)

(declare-fun tp!1946567 () Bool)

(assert (=> b!7088110 (= e!4261173 (and tp!1946569 tp!1946567))))

(declare-fun b!7088111 () Bool)

(declare-fun tp!1946565 () Bool)

(assert (=> b!7088111 (= e!4261173 tp!1946565)))

(declare-fun b!7088109 () Bool)

(assert (=> b!7088109 (= e!4261173 tp_is_empty!44763)))

(assert (= (and b!7087825 ((_ is ElementMatch!17765) (regTwo!36042 r!11554))) b!7088109))

(assert (= (and b!7087825 ((_ is Concat!26610) (regTwo!36042 r!11554))) b!7088110))

(assert (= (and b!7087825 ((_ is Star!17765) (regTwo!36042 r!11554))) b!7088111))

(assert (= (and b!7087825 ((_ is Union!17765) (regTwo!36042 r!11554))) b!7088112))

(declare-fun b_lambda!270909 () Bool)

(assert (= b_lambda!270907 (or b!7087827 b_lambda!270909)))

(declare-fun bs!1883149 () Bool)

(declare-fun d!2216364 () Bool)

(assert (= bs!1883149 (and d!2216364 b!7087827)))

(assert (=> bs!1883149 (= (dynLambda!27980 lambda!429327 (h!75052 (exprs!7261 c!9994))) (validRegex!9040 (h!75052 (exprs!7261 c!9994))))))

(declare-fun m!7818172 () Bool)

(assert (=> bs!1883149 m!7818172))

(assert (=> b!7087931 d!2216364))

(check-sat (not b!7087991) (not d!2216312) (not b!7088108) (not b!7087955) (not d!2216318) (not b!7087905) (not b!7088079) (not bm!644241) (not d!2216324) (not b!7087939) (not bm!644249) (not b_lambda!270909) (not bm!644230) (not d!2216304) (not bs!1883149) (not d!2216306) (not b!7088083) (not b!7087980) (not d!2216308) (not d!2216316) (not bm!644236) (not bm!644258) (not d!2216358) (not d!2216356) (not b!7088087) tp_is_empty!44763 (not bm!644248) (not b!7088112) (not bm!644280) (not bm!644229) (not bm!644260) (not b!7088082) (not b!7088078) (not bm!644279) (not d!2216288) (not b!7087922) (not bm!644235) (not bm!644242) (not b!7088110) (not bm!644259) (not b!7088077) (not bm!644228) (not b!7088103) (not bm!644240) (not b!7088107) (not b!7088104) (not d!2216336) (not b!7088081) (not d!2216292) (not bm!644234) (not b!7088106) (not bm!644250) (not b!7088111) (not b!7088035) (not b!7088085) (not b!7087958) (not b!7088086) (not b!7087932))
(check-sat)
