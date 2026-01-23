; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690012 () Bool)

(assert start!690012)

(declare-fun b!7089053 () Bool)

(assert (=> b!7089053 true))

(declare-fun b!7089050 () Bool)

(declare-fun e!4261707 () Bool)

(declare-fun tp!1946948 () Bool)

(declare-fun tp!1946949 () Bool)

(assert (=> b!7089050 (= e!4261707 (and tp!1946948 tp!1946949))))

(declare-fun b!7089051 () Bool)

(declare-fun e!4261712 () Bool)

(declare-fun tp!1946946 () Bool)

(assert (=> b!7089051 (= e!4261712 tp!1946946)))

(declare-fun b!7089052 () Bool)

(declare-fun e!4261705 () Bool)

(declare-fun e!4261709 () Bool)

(assert (=> b!7089052 (= e!4261705 (not e!4261709))))

(declare-fun res!2895442 () Bool)

(assert (=> b!7089052 (=> res!2895442 e!4261709)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35816 0))(
  ( (C!35817 (val!27614 Int)) )
))
(declare-datatypes ((Regex!17773 0))(
  ( (ElementMatch!17773 (c!1323058 C!35816)) (Concat!26618 (regOne!36058 Regex!17773) (regTwo!36058 Regex!17773)) (EmptyExpr!17773) (Star!17773 (reg!18102 Regex!17773)) (EmptyLang!17773) (Union!17773 (regOne!36059 Regex!17773) (regTwo!36059 Regex!17773)) )
))
(declare-datatypes ((List!68736 0))(
  ( (Nil!68612) (Cons!68612 (h!75060 Regex!17773) (t!382521 List!68736)) )
))
(declare-datatypes ((Context!13538 0))(
  ( (Context!13539 (exprs!7269 List!68736)) )
))
(declare-fun lt!2555500 () (InoxSet Context!13538))

(declare-fun c!9994 () Context!13538)

(declare-fun a!1901 () C!35816)

(declare-fun r!11554 () Regex!17773)

(declare-fun auxCtx!45 () Context!13538)

(declare-fun appendTo!862 ((InoxSet Context!13538) Context!13538) (InoxSet Context!13538))

(declare-fun derivationStepZipperDown!2352 (Regex!17773 Context!13538 C!35816) (InoxSet Context!13538))

(assert (=> b!7089052 (= res!2895442 (not (= lt!2555500 (appendTo!862 (derivationStepZipperDown!2352 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-datatypes ((Unit!162245 0))(
  ( (Unit!162246) )
))
(declare-fun lt!2555501 () Unit!162245)

(declare-fun lambda!429565 () Int)

(declare-fun lemmaConcatPreservesForall!1076 (List!68736 List!68736 Int) Unit!162245)

(assert (=> b!7089052 (= lt!2555501 (lemmaConcatPreservesForall!1076 (exprs!7269 c!9994) (exprs!7269 auxCtx!45) lambda!429565))))

(declare-fun lt!2555498 () (InoxSet Context!13538))

(declare-fun lambda!429564 () Int)

(declare-fun lt!2555503 () (InoxSet Context!13538))

(declare-fun map!16128 ((InoxSet Context!13538) Int) (InoxSet Context!13538))

(assert (=> b!7089052 (= ((_ map or) (map!16128 lt!2555498 lambda!429564) (map!16128 lt!2555503 lambda!429564)) (map!16128 ((_ map or) lt!2555498 lt!2555503) lambda!429564))))

(declare-fun lt!2555510 () Unit!162245)

(declare-fun lemmaMapAssociative!10 ((InoxSet Context!13538) (InoxSet Context!13538) Int) Unit!162245)

(assert (=> b!7089052 (= lt!2555510 (lemmaMapAssociative!10 lt!2555498 lt!2555503 lambda!429564))))

(declare-fun lt!2555506 () (InoxSet Context!13538))

(assert (=> b!7089052 (= lt!2555506 (appendTo!862 lt!2555503 auxCtx!45))))

(assert (=> b!7089052 (= lt!2555503 (derivationStepZipperDown!2352 (regTwo!36059 r!11554) c!9994 a!1901))))

(declare-fun lt!2555507 () Unit!162245)

(assert (=> b!7089052 (= lt!2555507 (lemmaConcatPreservesForall!1076 (exprs!7269 c!9994) (exprs!7269 auxCtx!45) lambda!429565))))

(declare-fun lt!2555508 () Unit!162245)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!170 (Context!13538 Regex!17773 C!35816 Context!13538) Unit!162245)

(assert (=> b!7089052 (= lt!2555508 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!170 c!9994 (regTwo!36059 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2555511 () (InoxSet Context!13538))

(assert (=> b!7089052 (= lt!2555511 (appendTo!862 lt!2555498 auxCtx!45))))

(assert (=> b!7089052 (= lt!2555498 (derivationStepZipperDown!2352 (regOne!36059 r!11554) c!9994 a!1901))))

(declare-fun lt!2555499 () Unit!162245)

(assert (=> b!7089052 (= lt!2555499 (lemmaConcatPreservesForall!1076 (exprs!7269 c!9994) (exprs!7269 auxCtx!45) lambda!429565))))

(declare-fun lt!2555512 () Unit!162245)

(assert (=> b!7089052 (= lt!2555512 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!170 c!9994 (regOne!36059 r!11554) a!1901 auxCtx!45))))

(declare-fun e!4261710 () Bool)

(declare-fun e!4261706 () Bool)

(assert (=> b!7089053 (= e!4261710 e!4261706)))

(declare-fun res!2895445 () Bool)

(assert (=> b!7089053 (=> (not res!2895445) (not e!4261706))))

(get-info :version)

(assert (=> b!7089053 (= res!2895445 (and (or (not ((_ is ElementMatch!17773) r!11554)) (not (= (c!1323058 r!11554) a!1901))) ((_ is Union!17773) r!11554)))))

(declare-fun b!7089054 () Bool)

(declare-fun e!4261711 () Bool)

(declare-fun forall!16715 (List!68736 Int) Bool)

(assert (=> b!7089054 (= e!4261711 (forall!16715 (exprs!7269 auxCtx!45) lambda!429565))))

(declare-fun b!7089055 () Bool)

(assert (=> b!7089055 (= e!4261706 e!4261705)))

(declare-fun res!2895443 () Bool)

(assert (=> b!7089055 (=> (not res!2895443) (not e!4261705))))

(assert (=> b!7089055 (= res!2895443 (= lt!2555500 ((_ map or) lt!2555511 lt!2555506)))))

(declare-fun lt!2555505 () Context!13538)

(assert (=> b!7089055 (= lt!2555500 (derivationStepZipperDown!2352 r!11554 lt!2555505 a!1901))))

(assert (=> b!7089055 (= lt!2555506 (derivationStepZipperDown!2352 (regTwo!36059 r!11554) lt!2555505 a!1901))))

(assert (=> b!7089055 (= lt!2555511 (derivationStepZipperDown!2352 (regOne!36059 r!11554) lt!2555505 a!1901))))

(declare-fun ++!15946 (List!68736 List!68736) List!68736)

(assert (=> b!7089055 (= lt!2555505 (Context!13539 (++!15946 (exprs!7269 c!9994) (exprs!7269 auxCtx!45))))))

(declare-fun lt!2555502 () Unit!162245)

(assert (=> b!7089055 (= lt!2555502 (lemmaConcatPreservesForall!1076 (exprs!7269 c!9994) (exprs!7269 auxCtx!45) lambda!429565))))

(declare-fun lt!2555509 () Unit!162245)

(assert (=> b!7089055 (= lt!2555509 (lemmaConcatPreservesForall!1076 (exprs!7269 c!9994) (exprs!7269 auxCtx!45) lambda!429565))))

(declare-fun lt!2555504 () Unit!162245)

(assert (=> b!7089055 (= lt!2555504 (lemmaConcatPreservesForall!1076 (exprs!7269 c!9994) (exprs!7269 auxCtx!45) lambda!429565))))

(declare-fun res!2895446 () Bool)

(assert (=> start!690012 (=> (not res!2895446) (not e!4261710))))

(declare-fun validRegex!9048 (Regex!17773) Bool)

(assert (=> start!690012 (= res!2895446 (validRegex!9048 r!11554))))

(assert (=> start!690012 e!4261710))

(assert (=> start!690012 e!4261707))

(declare-fun e!4261708 () Bool)

(declare-fun inv!87297 (Context!13538) Bool)

(assert (=> start!690012 (and (inv!87297 c!9994) e!4261708)))

(declare-fun tp_is_empty!44779 () Bool)

(assert (=> start!690012 tp_is_empty!44779))

(assert (=> start!690012 (and (inv!87297 auxCtx!45) e!4261712)))

(declare-fun b!7089056 () Bool)

(declare-fun tp!1946947 () Bool)

(assert (=> b!7089056 (= e!4261707 tp!1946947)))

(declare-fun b!7089057 () Bool)

(assert (=> b!7089057 (= e!4261707 tp_is_empty!44779)))

(declare-fun b!7089058 () Bool)

(declare-fun tp!1946951 () Bool)

(assert (=> b!7089058 (= e!4261708 tp!1946951)))

(declare-fun b!7089059 () Bool)

(declare-fun tp!1946952 () Bool)

(declare-fun tp!1946950 () Bool)

(assert (=> b!7089059 (= e!4261707 (and tp!1946952 tp!1946950))))

(declare-fun b!7089060 () Bool)

(assert (=> b!7089060 (= e!4261709 e!4261711)))

(declare-fun res!2895444 () Bool)

(assert (=> b!7089060 (=> res!2895444 e!4261711)))

(assert (=> b!7089060 (= res!2895444 (not (forall!16715 (exprs!7269 c!9994) lambda!429565)))))

(assert (= (and start!690012 res!2895446) b!7089053))

(assert (= (and b!7089053 res!2895445) b!7089055))

(assert (= (and b!7089055 res!2895443) b!7089052))

(assert (= (and b!7089052 (not res!2895442)) b!7089060))

(assert (= (and b!7089060 (not res!2895444)) b!7089054))

(assert (= (and start!690012 ((_ is ElementMatch!17773) r!11554)) b!7089057))

(assert (= (and start!690012 ((_ is Concat!26618) r!11554)) b!7089050))

(assert (= (and start!690012 ((_ is Star!17773) r!11554)) b!7089056))

(assert (= (and start!690012 ((_ is Union!17773) r!11554)) b!7089059))

(assert (= start!690012 b!7089058))

(assert (= start!690012 b!7089051))

(declare-fun m!7818908 () Bool)

(assert (=> b!7089060 m!7818908))

(declare-fun m!7818910 () Bool)

(assert (=> b!7089054 m!7818910))

(declare-fun m!7818912 () Bool)

(assert (=> start!690012 m!7818912))

(declare-fun m!7818914 () Bool)

(assert (=> start!690012 m!7818914))

(declare-fun m!7818916 () Bool)

(assert (=> start!690012 m!7818916))

(declare-fun m!7818918 () Bool)

(assert (=> b!7089052 m!7818918))

(declare-fun m!7818920 () Bool)

(assert (=> b!7089052 m!7818920))

(declare-fun m!7818922 () Bool)

(assert (=> b!7089052 m!7818922))

(declare-fun m!7818924 () Bool)

(assert (=> b!7089052 m!7818924))

(declare-fun m!7818926 () Bool)

(assert (=> b!7089052 m!7818926))

(assert (=> b!7089052 m!7818922))

(declare-fun m!7818928 () Bool)

(assert (=> b!7089052 m!7818928))

(declare-fun m!7818930 () Bool)

(assert (=> b!7089052 m!7818930))

(declare-fun m!7818932 () Bool)

(assert (=> b!7089052 m!7818932))

(declare-fun m!7818934 () Bool)

(assert (=> b!7089052 m!7818934))

(declare-fun m!7818936 () Bool)

(assert (=> b!7089052 m!7818936))

(declare-fun m!7818938 () Bool)

(assert (=> b!7089052 m!7818938))

(declare-fun m!7818940 () Bool)

(assert (=> b!7089052 m!7818940))

(assert (=> b!7089052 m!7818920))

(assert (=> b!7089052 m!7818920))

(declare-fun m!7818942 () Bool)

(assert (=> b!7089052 m!7818942))

(assert (=> b!7089055 m!7818920))

(declare-fun m!7818944 () Bool)

(assert (=> b!7089055 m!7818944))

(declare-fun m!7818946 () Bool)

(assert (=> b!7089055 m!7818946))

(assert (=> b!7089055 m!7818920))

(declare-fun m!7818948 () Bool)

(assert (=> b!7089055 m!7818948))

(declare-fun m!7818950 () Bool)

(assert (=> b!7089055 m!7818950))

(assert (=> b!7089055 m!7818920))

(check-sat (not b!7089051) (not b!7089050) (not b!7089060) (not b!7089054) (not b!7089052) (not b!7089059) (not b!7089056) (not b!7089058) (not start!690012) (not b!7089055) tp_is_empty!44779)
(check-sat)
(get-model)

(declare-fun d!2216550 () Bool)

(declare-fun res!2895468 () Bool)

(declare-fun e!4261738 () Bool)

(assert (=> d!2216550 (=> res!2895468 e!4261738)))

(assert (=> d!2216550 (= res!2895468 ((_ is Nil!68612) (exprs!7269 c!9994)))))

(assert (=> d!2216550 (= (forall!16715 (exprs!7269 c!9994) lambda!429565) e!4261738)))

(declare-fun b!7089094 () Bool)

(declare-fun e!4261739 () Bool)

(assert (=> b!7089094 (= e!4261738 e!4261739)))

(declare-fun res!2895469 () Bool)

(assert (=> b!7089094 (=> (not res!2895469) (not e!4261739))))

(declare-fun dynLambda!27987 (Int Regex!17773) Bool)

(assert (=> b!7089094 (= res!2895469 (dynLambda!27987 lambda!429565 (h!75060 (exprs!7269 c!9994))))))

(declare-fun b!7089095 () Bool)

(assert (=> b!7089095 (= e!4261739 (forall!16715 (t!382521 (exprs!7269 c!9994)) lambda!429565))))

(assert (= (and d!2216550 (not res!2895468)) b!7089094))

(assert (= (and b!7089094 res!2895469) b!7089095))

(declare-fun b_lambda!270937 () Bool)

(assert (=> (not b_lambda!270937) (not b!7089094)))

(declare-fun m!7818962 () Bool)

(assert (=> b!7089094 m!7818962))

(declare-fun m!7818964 () Bool)

(assert (=> b!7089095 m!7818964))

(assert (=> b!7089060 d!2216550))

(declare-fun b!7089168 () Bool)

(declare-fun e!4261784 () (InoxSet Context!13538))

(declare-fun call!644560 () (InoxSet Context!13538))

(declare-fun call!644561 () (InoxSet Context!13538))

(assert (=> b!7089168 (= e!4261784 ((_ map or) call!644560 call!644561))))

(declare-fun bm!644554 () Bool)

(declare-fun call!644562 () (InoxSet Context!13538))

(declare-fun call!644564 () (InoxSet Context!13538))

(assert (=> bm!644554 (= call!644562 call!644564)))

(declare-fun b!7089169 () Bool)

(declare-fun e!4261787 () (InoxSet Context!13538))

(assert (=> b!7089169 (= e!4261787 e!4261784)))

(declare-fun c!1323098 () Bool)

(assert (=> b!7089169 (= c!1323098 ((_ is Union!17773) r!11554))))

(declare-fun b!7089170 () Bool)

(declare-fun e!4261786 () (InoxSet Context!13538))

(assert (=> b!7089170 (= e!4261786 ((_ map or) call!644561 call!644564))))

(declare-fun b!7089171 () Bool)

(declare-fun e!4261785 () Bool)

(declare-fun nullable!7415 (Regex!17773) Bool)

(assert (=> b!7089171 (= e!4261785 (nullable!7415 (regOne!36058 r!11554)))))

(declare-fun b!7089172 () Bool)

(declare-fun c!1323100 () Bool)

(assert (=> b!7089172 (= c!1323100 e!4261785)))

(declare-fun res!2895482 () Bool)

(assert (=> b!7089172 (=> (not res!2895482) (not e!4261785))))

(assert (=> b!7089172 (= res!2895482 ((_ is Concat!26618) r!11554))))

(assert (=> b!7089172 (= e!4261784 e!4261786)))

(declare-fun call!644559 () List!68736)

(declare-fun bm!644555 () Bool)

(assert (=> bm!644555 (= call!644561 (derivationStepZipperDown!2352 (ite c!1323098 (regTwo!36059 r!11554) (regOne!36058 r!11554)) (ite c!1323098 lt!2555505 (Context!13539 call!644559)) a!1901))))

(declare-fun bm!644556 () Bool)

(assert (=> bm!644556 (= call!644564 call!644560)))

(declare-fun b!7089173 () Bool)

(declare-fun e!4261783 () (InoxSet Context!13538))

(assert (=> b!7089173 (= e!4261783 call!644562)))

(declare-fun b!7089174 () Bool)

(assert (=> b!7089174 (= e!4261783 ((as const (Array Context!13538 Bool)) false))))

(declare-fun b!7089175 () Bool)

(declare-fun c!1323099 () Bool)

(assert (=> b!7089175 (= c!1323099 ((_ is Star!17773) r!11554))))

(declare-fun e!4261782 () (InoxSet Context!13538))

(assert (=> b!7089175 (= e!4261782 e!4261783)))

(declare-fun d!2216558 () Bool)

(declare-fun c!1323101 () Bool)

(assert (=> d!2216558 (= c!1323101 (and ((_ is ElementMatch!17773) r!11554) (= (c!1323058 r!11554) a!1901)))))

(assert (=> d!2216558 (= (derivationStepZipperDown!2352 r!11554 lt!2555505 a!1901) e!4261787)))

(declare-fun bm!644557 () Bool)

(declare-fun c!1323097 () Bool)

(declare-fun $colon$colon!2698 (List!68736 Regex!17773) List!68736)

(assert (=> bm!644557 (= call!644559 ($colon$colon!2698 (exprs!7269 lt!2555505) (ite (or c!1323100 c!1323097) (regTwo!36058 r!11554) r!11554)))))

(declare-fun bm!644558 () Bool)

(declare-fun call!644563 () List!68736)

(assert (=> bm!644558 (= call!644563 call!644559)))

(declare-fun b!7089176 () Bool)

(assert (=> b!7089176 (= e!4261787 (store ((as const (Array Context!13538 Bool)) false) lt!2555505 true))))

(declare-fun b!7089177 () Bool)

(assert (=> b!7089177 (= e!4261786 e!4261782)))

(assert (=> b!7089177 (= c!1323097 ((_ is Concat!26618) r!11554))))

(declare-fun b!7089178 () Bool)

(assert (=> b!7089178 (= e!4261782 call!644562)))

(declare-fun bm!644559 () Bool)

(assert (=> bm!644559 (= call!644560 (derivationStepZipperDown!2352 (ite c!1323098 (regOne!36059 r!11554) (ite c!1323100 (regTwo!36058 r!11554) (ite c!1323097 (regOne!36058 r!11554) (reg!18102 r!11554)))) (ite (or c!1323098 c!1323100) lt!2555505 (Context!13539 call!644563)) a!1901))))

(assert (= (and d!2216558 c!1323101) b!7089176))

(assert (= (and d!2216558 (not c!1323101)) b!7089169))

(assert (= (and b!7089169 c!1323098) b!7089168))

(assert (= (and b!7089169 (not c!1323098)) b!7089172))

(assert (= (and b!7089172 res!2895482) b!7089171))

(assert (= (and b!7089172 c!1323100) b!7089170))

(assert (= (and b!7089172 (not c!1323100)) b!7089177))

(assert (= (and b!7089177 c!1323097) b!7089178))

(assert (= (and b!7089177 (not c!1323097)) b!7089175))

(assert (= (and b!7089175 c!1323099) b!7089173))

(assert (= (and b!7089175 (not c!1323099)) b!7089174))

(assert (= (or b!7089178 b!7089173) bm!644558))

(assert (= (or b!7089178 b!7089173) bm!644554))

(assert (= (or b!7089170 bm!644554) bm!644556))

(assert (= (or b!7089170 bm!644558) bm!644557))

(assert (= (or b!7089168 b!7089170) bm!644555))

(assert (= (or b!7089168 bm!644556) bm!644559))

(declare-fun m!7819014 () Bool)

(assert (=> bm!644555 m!7819014))

(declare-fun m!7819016 () Bool)

(assert (=> bm!644557 m!7819016))

(declare-fun m!7819018 () Bool)

(assert (=> b!7089171 m!7819018))

(declare-fun m!7819020 () Bool)

(assert (=> b!7089176 m!7819020))

(declare-fun m!7819022 () Bool)

(assert (=> bm!644559 m!7819022))

(assert (=> b!7089055 d!2216558))

(declare-fun b!7089179 () Bool)

(declare-fun e!4261790 () (InoxSet Context!13538))

(declare-fun call!644566 () (InoxSet Context!13538))

(declare-fun call!644567 () (InoxSet Context!13538))

(assert (=> b!7089179 (= e!4261790 ((_ map or) call!644566 call!644567))))

(declare-fun bm!644560 () Bool)

(declare-fun call!644568 () (InoxSet Context!13538))

(declare-fun call!644570 () (InoxSet Context!13538))

(assert (=> bm!644560 (= call!644568 call!644570)))

(declare-fun b!7089180 () Bool)

(declare-fun e!4261793 () (InoxSet Context!13538))

(assert (=> b!7089180 (= e!4261793 e!4261790)))

(declare-fun c!1323103 () Bool)

(assert (=> b!7089180 (= c!1323103 ((_ is Union!17773) (regTwo!36059 r!11554)))))

(declare-fun b!7089181 () Bool)

(declare-fun e!4261792 () (InoxSet Context!13538))

(assert (=> b!7089181 (= e!4261792 ((_ map or) call!644567 call!644570))))

(declare-fun b!7089182 () Bool)

(declare-fun e!4261791 () Bool)

(assert (=> b!7089182 (= e!4261791 (nullable!7415 (regOne!36058 (regTwo!36059 r!11554))))))

(declare-fun b!7089183 () Bool)

(declare-fun c!1323105 () Bool)

(assert (=> b!7089183 (= c!1323105 e!4261791)))

(declare-fun res!2895483 () Bool)

(assert (=> b!7089183 (=> (not res!2895483) (not e!4261791))))

(assert (=> b!7089183 (= res!2895483 ((_ is Concat!26618) (regTwo!36059 r!11554)))))

(assert (=> b!7089183 (= e!4261790 e!4261792)))

(declare-fun bm!644561 () Bool)

(declare-fun call!644565 () List!68736)

(assert (=> bm!644561 (= call!644567 (derivationStepZipperDown!2352 (ite c!1323103 (regTwo!36059 (regTwo!36059 r!11554)) (regOne!36058 (regTwo!36059 r!11554))) (ite c!1323103 lt!2555505 (Context!13539 call!644565)) a!1901))))

(declare-fun bm!644562 () Bool)

(assert (=> bm!644562 (= call!644570 call!644566)))

(declare-fun b!7089184 () Bool)

(declare-fun e!4261789 () (InoxSet Context!13538))

(assert (=> b!7089184 (= e!4261789 call!644568)))

(declare-fun b!7089185 () Bool)

(assert (=> b!7089185 (= e!4261789 ((as const (Array Context!13538 Bool)) false))))

(declare-fun b!7089186 () Bool)

(declare-fun c!1323104 () Bool)

(assert (=> b!7089186 (= c!1323104 ((_ is Star!17773) (regTwo!36059 r!11554)))))

(declare-fun e!4261788 () (InoxSet Context!13538))

(assert (=> b!7089186 (= e!4261788 e!4261789)))

(declare-fun d!2216576 () Bool)

(declare-fun c!1323106 () Bool)

(assert (=> d!2216576 (= c!1323106 (and ((_ is ElementMatch!17773) (regTwo!36059 r!11554)) (= (c!1323058 (regTwo!36059 r!11554)) a!1901)))))

(assert (=> d!2216576 (= (derivationStepZipperDown!2352 (regTwo!36059 r!11554) lt!2555505 a!1901) e!4261793)))

(declare-fun bm!644563 () Bool)

(declare-fun c!1323102 () Bool)

(assert (=> bm!644563 (= call!644565 ($colon$colon!2698 (exprs!7269 lt!2555505) (ite (or c!1323105 c!1323102) (regTwo!36058 (regTwo!36059 r!11554)) (regTwo!36059 r!11554))))))

(declare-fun bm!644564 () Bool)

(declare-fun call!644569 () List!68736)

(assert (=> bm!644564 (= call!644569 call!644565)))

(declare-fun b!7089187 () Bool)

(assert (=> b!7089187 (= e!4261793 (store ((as const (Array Context!13538 Bool)) false) lt!2555505 true))))

(declare-fun b!7089188 () Bool)

(assert (=> b!7089188 (= e!4261792 e!4261788)))

(assert (=> b!7089188 (= c!1323102 ((_ is Concat!26618) (regTwo!36059 r!11554)))))

(declare-fun b!7089189 () Bool)

(assert (=> b!7089189 (= e!4261788 call!644568)))

(declare-fun bm!644565 () Bool)

(assert (=> bm!644565 (= call!644566 (derivationStepZipperDown!2352 (ite c!1323103 (regOne!36059 (regTwo!36059 r!11554)) (ite c!1323105 (regTwo!36058 (regTwo!36059 r!11554)) (ite c!1323102 (regOne!36058 (regTwo!36059 r!11554)) (reg!18102 (regTwo!36059 r!11554))))) (ite (or c!1323103 c!1323105) lt!2555505 (Context!13539 call!644569)) a!1901))))

(assert (= (and d!2216576 c!1323106) b!7089187))

(assert (= (and d!2216576 (not c!1323106)) b!7089180))

(assert (= (and b!7089180 c!1323103) b!7089179))

(assert (= (and b!7089180 (not c!1323103)) b!7089183))

(assert (= (and b!7089183 res!2895483) b!7089182))

(assert (= (and b!7089183 c!1323105) b!7089181))

(assert (= (and b!7089183 (not c!1323105)) b!7089188))

(assert (= (and b!7089188 c!1323102) b!7089189))

(assert (= (and b!7089188 (not c!1323102)) b!7089186))

(assert (= (and b!7089186 c!1323104) b!7089184))

(assert (= (and b!7089186 (not c!1323104)) b!7089185))

(assert (= (or b!7089189 b!7089184) bm!644564))

(assert (= (or b!7089189 b!7089184) bm!644560))

(assert (= (or b!7089181 bm!644560) bm!644562))

(assert (= (or b!7089181 bm!644564) bm!644563))

(assert (= (or b!7089179 b!7089181) bm!644561))

(assert (= (or b!7089179 bm!644562) bm!644565))

(declare-fun m!7819026 () Bool)

(assert (=> bm!644561 m!7819026))

(declare-fun m!7819028 () Bool)

(assert (=> bm!644563 m!7819028))

(declare-fun m!7819030 () Bool)

(assert (=> b!7089182 m!7819030))

(assert (=> b!7089187 m!7819020))

(declare-fun m!7819032 () Bool)

(assert (=> bm!644565 m!7819032))

(assert (=> b!7089055 d!2216576))

(declare-fun b!7089255 () Bool)

(declare-fun e!4261829 () Bool)

(declare-fun lt!2555533 () List!68736)

(assert (=> b!7089255 (= e!4261829 (or (not (= (exprs!7269 auxCtx!45) Nil!68612)) (= lt!2555533 (exprs!7269 c!9994))))))

(declare-fun b!7089252 () Bool)

(declare-fun e!4261828 () List!68736)

(assert (=> b!7089252 (= e!4261828 (exprs!7269 auxCtx!45))))

(declare-fun b!7089254 () Bool)

(declare-fun res!2895499 () Bool)

(assert (=> b!7089254 (=> (not res!2895499) (not e!4261829))))

(declare-fun size!41306 (List!68736) Int)

(assert (=> b!7089254 (= res!2895499 (= (size!41306 lt!2555533) (+ (size!41306 (exprs!7269 c!9994)) (size!41306 (exprs!7269 auxCtx!45)))))))

(declare-fun b!7089253 () Bool)

(assert (=> b!7089253 (= e!4261828 (Cons!68612 (h!75060 (exprs!7269 c!9994)) (++!15946 (t!382521 (exprs!7269 c!9994)) (exprs!7269 auxCtx!45))))))

(declare-fun d!2216580 () Bool)

(assert (=> d!2216580 e!4261829))

(declare-fun res!2895498 () Bool)

(assert (=> d!2216580 (=> (not res!2895498) (not e!4261829))))

(declare-fun content!13931 (List!68736) (InoxSet Regex!17773))

(assert (=> d!2216580 (= res!2895498 (= (content!13931 lt!2555533) ((_ map or) (content!13931 (exprs!7269 c!9994)) (content!13931 (exprs!7269 auxCtx!45)))))))

(assert (=> d!2216580 (= lt!2555533 e!4261828)))

(declare-fun c!1323131 () Bool)

(assert (=> d!2216580 (= c!1323131 ((_ is Nil!68612) (exprs!7269 c!9994)))))

(assert (=> d!2216580 (= (++!15946 (exprs!7269 c!9994) (exprs!7269 auxCtx!45)) lt!2555533)))

(assert (= (and d!2216580 c!1323131) b!7089252))

(assert (= (and d!2216580 (not c!1323131)) b!7089253))

(assert (= (and d!2216580 res!2895498) b!7089254))

(assert (= (and b!7089254 res!2895499) b!7089255))

(declare-fun m!7819090 () Bool)

(assert (=> b!7089254 m!7819090))

(declare-fun m!7819092 () Bool)

(assert (=> b!7089254 m!7819092))

(declare-fun m!7819094 () Bool)

(assert (=> b!7089254 m!7819094))

(declare-fun m!7819096 () Bool)

(assert (=> b!7089253 m!7819096))

(declare-fun m!7819098 () Bool)

(assert (=> d!2216580 m!7819098))

(declare-fun m!7819100 () Bool)

(assert (=> d!2216580 m!7819100))

(declare-fun m!7819102 () Bool)

(assert (=> d!2216580 m!7819102))

(assert (=> b!7089055 d!2216580))

(declare-fun d!2216600 () Bool)

(assert (=> d!2216600 (forall!16715 (++!15946 (exprs!7269 c!9994) (exprs!7269 auxCtx!45)) lambda!429565)))

(declare-fun lt!2555537 () Unit!162245)

(declare-fun choose!54654 (List!68736 List!68736 Int) Unit!162245)

(assert (=> d!2216600 (= lt!2555537 (choose!54654 (exprs!7269 c!9994) (exprs!7269 auxCtx!45) lambda!429565))))

(assert (=> d!2216600 (forall!16715 (exprs!7269 c!9994) lambda!429565)))

(assert (=> d!2216600 (= (lemmaConcatPreservesForall!1076 (exprs!7269 c!9994) (exprs!7269 auxCtx!45) lambda!429565) lt!2555537)))

(declare-fun bs!1883299 () Bool)

(assert (= bs!1883299 d!2216600))

(assert (=> bs!1883299 m!7818948))

(assert (=> bs!1883299 m!7818948))

(declare-fun m!7819108 () Bool)

(assert (=> bs!1883299 m!7819108))

(declare-fun m!7819110 () Bool)

(assert (=> bs!1883299 m!7819110))

(assert (=> bs!1883299 m!7818908))

(assert (=> b!7089055 d!2216600))

(declare-fun b!7089296 () Bool)

(declare-fun e!4261845 () (InoxSet Context!13538))

(declare-fun call!644596 () (InoxSet Context!13538))

(declare-fun call!644597 () (InoxSet Context!13538))

(assert (=> b!7089296 (= e!4261845 ((_ map or) call!644596 call!644597))))

(declare-fun bm!644590 () Bool)

(declare-fun call!644598 () (InoxSet Context!13538))

(declare-fun call!644600 () (InoxSet Context!13538))

(assert (=> bm!644590 (= call!644598 call!644600)))

(declare-fun b!7089297 () Bool)

(declare-fun e!4261848 () (InoxSet Context!13538))

(assert (=> b!7089297 (= e!4261848 e!4261845)))

(declare-fun c!1323134 () Bool)

(assert (=> b!7089297 (= c!1323134 ((_ is Union!17773) (regOne!36059 r!11554)))))

(declare-fun b!7089298 () Bool)

(declare-fun e!4261847 () (InoxSet Context!13538))

(assert (=> b!7089298 (= e!4261847 ((_ map or) call!644597 call!644600))))

(declare-fun b!7089299 () Bool)

(declare-fun e!4261846 () Bool)

(assert (=> b!7089299 (= e!4261846 (nullable!7415 (regOne!36058 (regOne!36059 r!11554))))))

(declare-fun b!7089300 () Bool)

(declare-fun c!1323136 () Bool)

(assert (=> b!7089300 (= c!1323136 e!4261846)))

(declare-fun res!2895502 () Bool)

(assert (=> b!7089300 (=> (not res!2895502) (not e!4261846))))

(assert (=> b!7089300 (= res!2895502 ((_ is Concat!26618) (regOne!36059 r!11554)))))

(assert (=> b!7089300 (= e!4261845 e!4261847)))

(declare-fun bm!644591 () Bool)

(declare-fun call!644595 () List!68736)

(assert (=> bm!644591 (= call!644597 (derivationStepZipperDown!2352 (ite c!1323134 (regTwo!36059 (regOne!36059 r!11554)) (regOne!36058 (regOne!36059 r!11554))) (ite c!1323134 lt!2555505 (Context!13539 call!644595)) a!1901))))

(declare-fun bm!644592 () Bool)

(assert (=> bm!644592 (= call!644600 call!644596)))

(declare-fun b!7089301 () Bool)

(declare-fun e!4261844 () (InoxSet Context!13538))

(assert (=> b!7089301 (= e!4261844 call!644598)))

(declare-fun b!7089302 () Bool)

(assert (=> b!7089302 (= e!4261844 ((as const (Array Context!13538 Bool)) false))))

(declare-fun b!7089303 () Bool)

(declare-fun c!1323135 () Bool)

(assert (=> b!7089303 (= c!1323135 ((_ is Star!17773) (regOne!36059 r!11554)))))

(declare-fun e!4261843 () (InoxSet Context!13538))

(assert (=> b!7089303 (= e!4261843 e!4261844)))

(declare-fun d!2216606 () Bool)

(declare-fun c!1323137 () Bool)

(assert (=> d!2216606 (= c!1323137 (and ((_ is ElementMatch!17773) (regOne!36059 r!11554)) (= (c!1323058 (regOne!36059 r!11554)) a!1901)))))

(assert (=> d!2216606 (= (derivationStepZipperDown!2352 (regOne!36059 r!11554) lt!2555505 a!1901) e!4261848)))

(declare-fun c!1323133 () Bool)

(declare-fun bm!644593 () Bool)

(assert (=> bm!644593 (= call!644595 ($colon$colon!2698 (exprs!7269 lt!2555505) (ite (or c!1323136 c!1323133) (regTwo!36058 (regOne!36059 r!11554)) (regOne!36059 r!11554))))))

(declare-fun bm!644594 () Bool)

(declare-fun call!644599 () List!68736)

(assert (=> bm!644594 (= call!644599 call!644595)))

(declare-fun b!7089304 () Bool)

(assert (=> b!7089304 (= e!4261848 (store ((as const (Array Context!13538 Bool)) false) lt!2555505 true))))

(declare-fun b!7089305 () Bool)

(assert (=> b!7089305 (= e!4261847 e!4261843)))

(assert (=> b!7089305 (= c!1323133 ((_ is Concat!26618) (regOne!36059 r!11554)))))

(declare-fun b!7089306 () Bool)

(assert (=> b!7089306 (= e!4261843 call!644598)))

(declare-fun bm!644595 () Bool)

(assert (=> bm!644595 (= call!644596 (derivationStepZipperDown!2352 (ite c!1323134 (regOne!36059 (regOne!36059 r!11554)) (ite c!1323136 (regTwo!36058 (regOne!36059 r!11554)) (ite c!1323133 (regOne!36058 (regOne!36059 r!11554)) (reg!18102 (regOne!36059 r!11554))))) (ite (or c!1323134 c!1323136) lt!2555505 (Context!13539 call!644599)) a!1901))))

(assert (= (and d!2216606 c!1323137) b!7089304))

(assert (= (and d!2216606 (not c!1323137)) b!7089297))

(assert (= (and b!7089297 c!1323134) b!7089296))

(assert (= (and b!7089297 (not c!1323134)) b!7089300))

(assert (= (and b!7089300 res!2895502) b!7089299))

(assert (= (and b!7089300 c!1323136) b!7089298))

(assert (= (and b!7089300 (not c!1323136)) b!7089305))

(assert (= (and b!7089305 c!1323133) b!7089306))

(assert (= (and b!7089305 (not c!1323133)) b!7089303))

(assert (= (and b!7089303 c!1323135) b!7089301))

(assert (= (and b!7089303 (not c!1323135)) b!7089302))

(assert (= (or b!7089306 b!7089301) bm!644594))

(assert (= (or b!7089306 b!7089301) bm!644590))

(assert (= (or b!7089298 bm!644590) bm!644592))

(assert (= (or b!7089298 bm!644594) bm!644593))

(assert (= (or b!7089296 b!7089298) bm!644591))

(assert (= (or b!7089296 bm!644592) bm!644595))

(declare-fun m!7819112 () Bool)

(assert (=> bm!644591 m!7819112))

(declare-fun m!7819114 () Bool)

(assert (=> bm!644593 m!7819114))

(declare-fun m!7819116 () Bool)

(assert (=> b!7089299 m!7819116))

(assert (=> b!7089304 m!7819020))

(declare-fun m!7819118 () Bool)

(assert (=> bm!644595 m!7819118))

(assert (=> b!7089055 d!2216606))

(declare-fun d!2216608 () Bool)

(declare-fun res!2895503 () Bool)

(declare-fun e!4261849 () Bool)

(assert (=> d!2216608 (=> res!2895503 e!4261849)))

(assert (=> d!2216608 (= res!2895503 ((_ is Nil!68612) (exprs!7269 auxCtx!45)))))

(assert (=> d!2216608 (= (forall!16715 (exprs!7269 auxCtx!45) lambda!429565) e!4261849)))

(declare-fun b!7089307 () Bool)

(declare-fun e!4261850 () Bool)

(assert (=> b!7089307 (= e!4261849 e!4261850)))

(declare-fun res!2895504 () Bool)

(assert (=> b!7089307 (=> (not res!2895504) (not e!4261850))))

(assert (=> b!7089307 (= res!2895504 (dynLambda!27987 lambda!429565 (h!75060 (exprs!7269 auxCtx!45))))))

(declare-fun b!7089308 () Bool)

(assert (=> b!7089308 (= e!4261850 (forall!16715 (t!382521 (exprs!7269 auxCtx!45)) lambda!429565))))

(assert (= (and d!2216608 (not res!2895503)) b!7089307))

(assert (= (and b!7089307 res!2895504) b!7089308))

(declare-fun b_lambda!270947 () Bool)

(assert (=> (not b_lambda!270947) (not b!7089307)))

(declare-fun m!7819120 () Bool)

(assert (=> b!7089307 m!7819120))

(declare-fun m!7819122 () Bool)

(assert (=> b!7089308 m!7819122))

(assert (=> b!7089054 d!2216608))

(declare-fun bs!1883300 () Bool)

(declare-fun d!2216610 () Bool)

(assert (= bs!1883300 (and d!2216610 b!7089055)))

(declare-fun lambda!429583 () Int)

(assert (=> bs!1883300 (= lambda!429583 lambda!429565)))

(assert (=> d!2216610 (= (derivationStepZipperDown!2352 (regOne!36059 r!11554) (Context!13539 (++!15946 (exprs!7269 c!9994) (exprs!7269 auxCtx!45))) a!1901) (appendTo!862 (derivationStepZipperDown!2352 (regOne!36059 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2555543 () Unit!162245)

(assert (=> d!2216610 (= lt!2555543 (lemmaConcatPreservesForall!1076 (exprs!7269 c!9994) (exprs!7269 auxCtx!45) lambda!429583))))

(declare-fun lt!2555542 () Unit!162245)

(declare-fun choose!54655 (Context!13538 Regex!17773 C!35816 Context!13538) Unit!162245)

(assert (=> d!2216610 (= lt!2555542 (choose!54655 c!9994 (regOne!36059 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216610 (validRegex!9048 (regOne!36059 r!11554))))

(assert (=> d!2216610 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!170 c!9994 (regOne!36059 r!11554) a!1901 auxCtx!45) lt!2555542)))

(declare-fun bs!1883301 () Bool)

(assert (= bs!1883301 d!2216610))

(declare-fun m!7819124 () Bool)

(assert (=> bs!1883301 m!7819124))

(declare-fun m!7819126 () Bool)

(assert (=> bs!1883301 m!7819126))

(declare-fun m!7819128 () Bool)

(assert (=> bs!1883301 m!7819128))

(assert (=> bs!1883301 m!7818926))

(assert (=> bs!1883301 m!7818926))

(declare-fun m!7819130 () Bool)

(assert (=> bs!1883301 m!7819130))

(assert (=> bs!1883301 m!7818948))

(declare-fun m!7819132 () Bool)

(assert (=> bs!1883301 m!7819132))

(assert (=> b!7089052 d!2216610))

(declare-fun d!2216612 () Bool)

(declare-fun choose!54656 ((InoxSet Context!13538) Int) (InoxSet Context!13538))

(assert (=> d!2216612 (= (map!16128 lt!2555503 lambda!429564) (choose!54656 lt!2555503 lambda!429564))))

(declare-fun bs!1883302 () Bool)

(assert (= bs!1883302 d!2216612))

(declare-fun m!7819134 () Bool)

(assert (=> bs!1883302 m!7819134))

(assert (=> b!7089052 d!2216612))

(declare-fun bs!1883303 () Bool)

(declare-fun d!2216614 () Bool)

(assert (= bs!1883303 (and d!2216614 b!7089053)))

(declare-fun lambda!429588 () Int)

(assert (=> bs!1883303 (= lambda!429588 lambda!429564)))

(assert (=> d!2216614 true))

(assert (=> d!2216614 (= (appendTo!862 lt!2555503 auxCtx!45) (map!16128 lt!2555503 lambda!429588))))

(declare-fun bs!1883304 () Bool)

(assert (= bs!1883304 d!2216614))

(declare-fun m!7819136 () Bool)

(assert (=> bs!1883304 m!7819136))

(assert (=> b!7089052 d!2216614))

(declare-fun bs!1883305 () Bool)

(declare-fun d!2216616 () Bool)

(assert (= bs!1883305 (and d!2216616 b!7089053)))

(declare-fun lambda!429589 () Int)

(assert (=> bs!1883305 (= lambda!429589 lambda!429564)))

(declare-fun bs!1883306 () Bool)

(assert (= bs!1883306 (and d!2216616 d!2216614)))

(assert (=> bs!1883306 (= lambda!429589 lambda!429588)))

(assert (=> d!2216616 true))

(assert (=> d!2216616 (= (appendTo!862 lt!2555498 auxCtx!45) (map!16128 lt!2555498 lambda!429589))))

(declare-fun bs!1883307 () Bool)

(assert (= bs!1883307 d!2216616))

(declare-fun m!7819138 () Bool)

(assert (=> bs!1883307 m!7819138))

(assert (=> b!7089052 d!2216616))

(declare-fun b!7089309 () Bool)

(declare-fun e!4261853 () (InoxSet Context!13538))

(declare-fun call!644602 () (InoxSet Context!13538))

(declare-fun call!644603 () (InoxSet Context!13538))

(assert (=> b!7089309 (= e!4261853 ((_ map or) call!644602 call!644603))))

(declare-fun bm!644596 () Bool)

(declare-fun call!644604 () (InoxSet Context!13538))

(declare-fun call!644606 () (InoxSet Context!13538))

(assert (=> bm!644596 (= call!644604 call!644606)))

(declare-fun b!7089310 () Bool)

(declare-fun e!4261856 () (InoxSet Context!13538))

(assert (=> b!7089310 (= e!4261856 e!4261853)))

(declare-fun c!1323141 () Bool)

(assert (=> b!7089310 (= c!1323141 ((_ is Union!17773) r!11554))))

(declare-fun b!7089311 () Bool)

(declare-fun e!4261855 () (InoxSet Context!13538))

(assert (=> b!7089311 (= e!4261855 ((_ map or) call!644603 call!644606))))

(declare-fun b!7089312 () Bool)

(declare-fun e!4261854 () Bool)

(assert (=> b!7089312 (= e!4261854 (nullable!7415 (regOne!36058 r!11554)))))

(declare-fun b!7089313 () Bool)

(declare-fun c!1323143 () Bool)

(assert (=> b!7089313 (= c!1323143 e!4261854)))

(declare-fun res!2895505 () Bool)

(assert (=> b!7089313 (=> (not res!2895505) (not e!4261854))))

(assert (=> b!7089313 (= res!2895505 ((_ is Concat!26618) r!11554))))

(assert (=> b!7089313 (= e!4261853 e!4261855)))

(declare-fun bm!644597 () Bool)

(declare-fun call!644601 () List!68736)

(assert (=> bm!644597 (= call!644603 (derivationStepZipperDown!2352 (ite c!1323141 (regTwo!36059 r!11554) (regOne!36058 r!11554)) (ite c!1323141 c!9994 (Context!13539 call!644601)) a!1901))))

(declare-fun bm!644598 () Bool)

(assert (=> bm!644598 (= call!644606 call!644602)))

(declare-fun b!7089314 () Bool)

(declare-fun e!4261852 () (InoxSet Context!13538))

(assert (=> b!7089314 (= e!4261852 call!644604)))

(declare-fun b!7089315 () Bool)

(assert (=> b!7089315 (= e!4261852 ((as const (Array Context!13538 Bool)) false))))

(declare-fun b!7089316 () Bool)

(declare-fun c!1323142 () Bool)

(assert (=> b!7089316 (= c!1323142 ((_ is Star!17773) r!11554))))

(declare-fun e!4261851 () (InoxSet Context!13538))

(assert (=> b!7089316 (= e!4261851 e!4261852)))

(declare-fun d!2216618 () Bool)

(declare-fun c!1323144 () Bool)

(assert (=> d!2216618 (= c!1323144 (and ((_ is ElementMatch!17773) r!11554) (= (c!1323058 r!11554) a!1901)))))

(assert (=> d!2216618 (= (derivationStepZipperDown!2352 r!11554 c!9994 a!1901) e!4261856)))

(declare-fun c!1323140 () Bool)

(declare-fun bm!644599 () Bool)

(assert (=> bm!644599 (= call!644601 ($colon$colon!2698 (exprs!7269 c!9994) (ite (or c!1323143 c!1323140) (regTwo!36058 r!11554) r!11554)))))

(declare-fun bm!644600 () Bool)

(declare-fun call!644605 () List!68736)

(assert (=> bm!644600 (= call!644605 call!644601)))

(declare-fun b!7089317 () Bool)

(assert (=> b!7089317 (= e!4261856 (store ((as const (Array Context!13538 Bool)) false) c!9994 true))))

(declare-fun b!7089318 () Bool)

(assert (=> b!7089318 (= e!4261855 e!4261851)))

(assert (=> b!7089318 (= c!1323140 ((_ is Concat!26618) r!11554))))

(declare-fun b!7089319 () Bool)

(assert (=> b!7089319 (= e!4261851 call!644604)))

(declare-fun bm!644601 () Bool)

(assert (=> bm!644601 (= call!644602 (derivationStepZipperDown!2352 (ite c!1323141 (regOne!36059 r!11554) (ite c!1323143 (regTwo!36058 r!11554) (ite c!1323140 (regOne!36058 r!11554) (reg!18102 r!11554)))) (ite (or c!1323141 c!1323143) c!9994 (Context!13539 call!644605)) a!1901))))

(assert (= (and d!2216618 c!1323144) b!7089317))

(assert (= (and d!2216618 (not c!1323144)) b!7089310))

(assert (= (and b!7089310 c!1323141) b!7089309))

(assert (= (and b!7089310 (not c!1323141)) b!7089313))

(assert (= (and b!7089313 res!2895505) b!7089312))

(assert (= (and b!7089313 c!1323143) b!7089311))

(assert (= (and b!7089313 (not c!1323143)) b!7089318))

(assert (= (and b!7089318 c!1323140) b!7089319))

(assert (= (and b!7089318 (not c!1323140)) b!7089316))

(assert (= (and b!7089316 c!1323142) b!7089314))

(assert (= (and b!7089316 (not c!1323142)) b!7089315))

(assert (= (or b!7089319 b!7089314) bm!644600))

(assert (= (or b!7089319 b!7089314) bm!644596))

(assert (= (or b!7089311 bm!644596) bm!644598))

(assert (= (or b!7089311 bm!644600) bm!644599))

(assert (= (or b!7089309 b!7089311) bm!644597))

(assert (= (or b!7089309 bm!644598) bm!644601))

(declare-fun m!7819140 () Bool)

(assert (=> bm!644597 m!7819140))

(declare-fun m!7819142 () Bool)

(assert (=> bm!644599 m!7819142))

(assert (=> b!7089312 m!7819018))

(declare-fun m!7819144 () Bool)

(assert (=> b!7089317 m!7819144))

(declare-fun m!7819146 () Bool)

(assert (=> bm!644601 m!7819146))

(assert (=> b!7089052 d!2216618))

(declare-fun bs!1883308 () Bool)

(declare-fun d!2216620 () Bool)

(assert (= bs!1883308 (and d!2216620 b!7089055)))

(declare-fun lambda!429590 () Int)

(assert (=> bs!1883308 (= lambda!429590 lambda!429565)))

(declare-fun bs!1883309 () Bool)

(assert (= bs!1883309 (and d!2216620 d!2216610)))

(assert (=> bs!1883309 (= lambda!429590 lambda!429583)))

(assert (=> d!2216620 (= (derivationStepZipperDown!2352 (regTwo!36059 r!11554) (Context!13539 (++!15946 (exprs!7269 c!9994) (exprs!7269 auxCtx!45))) a!1901) (appendTo!862 (derivationStepZipperDown!2352 (regTwo!36059 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2555547 () Unit!162245)

(assert (=> d!2216620 (= lt!2555547 (lemmaConcatPreservesForall!1076 (exprs!7269 c!9994) (exprs!7269 auxCtx!45) lambda!429590))))

(declare-fun lt!2555546 () Unit!162245)

(assert (=> d!2216620 (= lt!2555546 (choose!54655 c!9994 (regTwo!36059 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2216620 (validRegex!9048 (regTwo!36059 r!11554))))

(assert (=> d!2216620 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!170 c!9994 (regTwo!36059 r!11554) a!1901 auxCtx!45) lt!2555546)))

(declare-fun bs!1883310 () Bool)

(assert (= bs!1883310 d!2216620))

(declare-fun m!7819148 () Bool)

(assert (=> bs!1883310 m!7819148))

(declare-fun m!7819150 () Bool)

(assert (=> bs!1883310 m!7819150))

(declare-fun m!7819152 () Bool)

(assert (=> bs!1883310 m!7819152))

(assert (=> bs!1883310 m!7818936))

(assert (=> bs!1883310 m!7818936))

(declare-fun m!7819154 () Bool)

(assert (=> bs!1883310 m!7819154))

(assert (=> bs!1883310 m!7818948))

(declare-fun m!7819156 () Bool)

(assert (=> bs!1883310 m!7819156))

(assert (=> b!7089052 d!2216620))

(assert (=> b!7089052 d!2216600))

(declare-fun b!7089320 () Bool)

(declare-fun e!4261859 () (InoxSet Context!13538))

(declare-fun call!644608 () (InoxSet Context!13538))

(declare-fun call!644609 () (InoxSet Context!13538))

(assert (=> b!7089320 (= e!4261859 ((_ map or) call!644608 call!644609))))

(declare-fun bm!644602 () Bool)

(declare-fun call!644610 () (InoxSet Context!13538))

(declare-fun call!644612 () (InoxSet Context!13538))

(assert (=> bm!644602 (= call!644610 call!644612)))

(declare-fun b!7089321 () Bool)

(declare-fun e!4261862 () (InoxSet Context!13538))

(assert (=> b!7089321 (= e!4261862 e!4261859)))

(declare-fun c!1323146 () Bool)

(assert (=> b!7089321 (= c!1323146 ((_ is Union!17773) (regOne!36059 r!11554)))))

(declare-fun b!7089322 () Bool)

(declare-fun e!4261861 () (InoxSet Context!13538))

(assert (=> b!7089322 (= e!4261861 ((_ map or) call!644609 call!644612))))

(declare-fun b!7089323 () Bool)

(declare-fun e!4261860 () Bool)

(assert (=> b!7089323 (= e!4261860 (nullable!7415 (regOne!36058 (regOne!36059 r!11554))))))

(declare-fun b!7089324 () Bool)

(declare-fun c!1323148 () Bool)

(assert (=> b!7089324 (= c!1323148 e!4261860)))

(declare-fun res!2895506 () Bool)

(assert (=> b!7089324 (=> (not res!2895506) (not e!4261860))))

(assert (=> b!7089324 (= res!2895506 ((_ is Concat!26618) (regOne!36059 r!11554)))))

(assert (=> b!7089324 (= e!4261859 e!4261861)))

(declare-fun bm!644603 () Bool)

(declare-fun call!644607 () List!68736)

(assert (=> bm!644603 (= call!644609 (derivationStepZipperDown!2352 (ite c!1323146 (regTwo!36059 (regOne!36059 r!11554)) (regOne!36058 (regOne!36059 r!11554))) (ite c!1323146 c!9994 (Context!13539 call!644607)) a!1901))))

(declare-fun bm!644604 () Bool)

(assert (=> bm!644604 (= call!644612 call!644608)))

(declare-fun b!7089325 () Bool)

(declare-fun e!4261858 () (InoxSet Context!13538))

(assert (=> b!7089325 (= e!4261858 call!644610)))

(declare-fun b!7089326 () Bool)

(assert (=> b!7089326 (= e!4261858 ((as const (Array Context!13538 Bool)) false))))

(declare-fun b!7089327 () Bool)

(declare-fun c!1323147 () Bool)

(assert (=> b!7089327 (= c!1323147 ((_ is Star!17773) (regOne!36059 r!11554)))))

(declare-fun e!4261857 () (InoxSet Context!13538))

(assert (=> b!7089327 (= e!4261857 e!4261858)))

(declare-fun d!2216622 () Bool)

(declare-fun c!1323149 () Bool)

(assert (=> d!2216622 (= c!1323149 (and ((_ is ElementMatch!17773) (regOne!36059 r!11554)) (= (c!1323058 (regOne!36059 r!11554)) a!1901)))))

(assert (=> d!2216622 (= (derivationStepZipperDown!2352 (regOne!36059 r!11554) c!9994 a!1901) e!4261862)))

(declare-fun bm!644605 () Bool)

(declare-fun c!1323145 () Bool)

(assert (=> bm!644605 (= call!644607 ($colon$colon!2698 (exprs!7269 c!9994) (ite (or c!1323148 c!1323145) (regTwo!36058 (regOne!36059 r!11554)) (regOne!36059 r!11554))))))

(declare-fun bm!644606 () Bool)

(declare-fun call!644611 () List!68736)

(assert (=> bm!644606 (= call!644611 call!644607)))

(declare-fun b!7089328 () Bool)

(assert (=> b!7089328 (= e!4261862 (store ((as const (Array Context!13538 Bool)) false) c!9994 true))))

(declare-fun b!7089329 () Bool)

(assert (=> b!7089329 (= e!4261861 e!4261857)))

(assert (=> b!7089329 (= c!1323145 ((_ is Concat!26618) (regOne!36059 r!11554)))))

(declare-fun b!7089330 () Bool)

(assert (=> b!7089330 (= e!4261857 call!644610)))

(declare-fun bm!644607 () Bool)

(assert (=> bm!644607 (= call!644608 (derivationStepZipperDown!2352 (ite c!1323146 (regOne!36059 (regOne!36059 r!11554)) (ite c!1323148 (regTwo!36058 (regOne!36059 r!11554)) (ite c!1323145 (regOne!36058 (regOne!36059 r!11554)) (reg!18102 (regOne!36059 r!11554))))) (ite (or c!1323146 c!1323148) c!9994 (Context!13539 call!644611)) a!1901))))

(assert (= (and d!2216622 c!1323149) b!7089328))

(assert (= (and d!2216622 (not c!1323149)) b!7089321))

(assert (= (and b!7089321 c!1323146) b!7089320))

(assert (= (and b!7089321 (not c!1323146)) b!7089324))

(assert (= (and b!7089324 res!2895506) b!7089323))

(assert (= (and b!7089324 c!1323148) b!7089322))

(assert (= (and b!7089324 (not c!1323148)) b!7089329))

(assert (= (and b!7089329 c!1323145) b!7089330))

(assert (= (and b!7089329 (not c!1323145)) b!7089327))

(assert (= (and b!7089327 c!1323147) b!7089325))

(assert (= (and b!7089327 (not c!1323147)) b!7089326))

(assert (= (or b!7089330 b!7089325) bm!644606))

(assert (= (or b!7089330 b!7089325) bm!644602))

(assert (= (or b!7089322 bm!644602) bm!644604))

(assert (= (or b!7089322 bm!644606) bm!644605))

(assert (= (or b!7089320 b!7089322) bm!644603))

(assert (= (or b!7089320 bm!644604) bm!644607))

(declare-fun m!7819158 () Bool)

(assert (=> bm!644603 m!7819158))

(declare-fun m!7819160 () Bool)

(assert (=> bm!644605 m!7819160))

(assert (=> b!7089323 m!7819116))

(assert (=> b!7089328 m!7819144))

(declare-fun m!7819162 () Bool)

(assert (=> bm!644607 m!7819162))

(assert (=> b!7089052 d!2216622))

(declare-fun d!2216624 () Bool)

(assert (=> d!2216624 (= ((_ map or) (map!16128 lt!2555498 lambda!429564) (map!16128 lt!2555503 lambda!429564)) (map!16128 ((_ map or) lt!2555498 lt!2555503) lambda!429564))))

(declare-fun lt!2555550 () Unit!162245)

(declare-fun choose!54657 ((InoxSet Context!13538) (InoxSet Context!13538) Int) Unit!162245)

(assert (=> d!2216624 (= lt!2555550 (choose!54657 lt!2555498 lt!2555503 lambda!429564))))

(assert (=> d!2216624 (= (lemmaMapAssociative!10 lt!2555498 lt!2555503 lambda!429564) lt!2555550)))

(declare-fun bs!1883311 () Bool)

(assert (= bs!1883311 d!2216624))

(assert (=> bs!1883311 m!7818940))

(assert (=> bs!1883311 m!7818930))

(assert (=> bs!1883311 m!7818918))

(declare-fun m!7819164 () Bool)

(assert (=> bs!1883311 m!7819164))

(assert (=> b!7089052 d!2216624))

(declare-fun d!2216626 () Bool)

(assert (=> d!2216626 (= (map!16128 lt!2555498 lambda!429564) (choose!54656 lt!2555498 lambda!429564))))

(declare-fun bs!1883312 () Bool)

(assert (= bs!1883312 d!2216626))

(declare-fun m!7819166 () Bool)

(assert (=> bs!1883312 m!7819166))

(assert (=> b!7089052 d!2216626))

(declare-fun bs!1883313 () Bool)

(declare-fun d!2216628 () Bool)

(assert (= bs!1883313 (and d!2216628 b!7089053)))

(declare-fun lambda!429591 () Int)

(assert (=> bs!1883313 (= lambda!429591 lambda!429564)))

(declare-fun bs!1883314 () Bool)

(assert (= bs!1883314 (and d!2216628 d!2216614)))

(assert (=> bs!1883314 (= lambda!429591 lambda!429588)))

(declare-fun bs!1883315 () Bool)

(assert (= bs!1883315 (and d!2216628 d!2216616)))

(assert (=> bs!1883315 (= lambda!429591 lambda!429589)))

(assert (=> d!2216628 true))

(assert (=> d!2216628 (= (appendTo!862 (derivationStepZipperDown!2352 r!11554 c!9994 a!1901) auxCtx!45) (map!16128 (derivationStepZipperDown!2352 r!11554 c!9994 a!1901) lambda!429591))))

(declare-fun bs!1883316 () Bool)

(assert (= bs!1883316 d!2216628))

(assert (=> bs!1883316 m!7818922))

(declare-fun m!7819168 () Bool)

(assert (=> bs!1883316 m!7819168))

(assert (=> b!7089052 d!2216628))

(declare-fun d!2216630 () Bool)

(assert (=> d!2216630 (= (map!16128 ((_ map or) lt!2555498 lt!2555503) lambda!429564) (choose!54656 ((_ map or) lt!2555498 lt!2555503) lambda!429564))))

(declare-fun bs!1883317 () Bool)

(assert (= bs!1883317 d!2216630))

(declare-fun m!7819170 () Bool)

(assert (=> bs!1883317 m!7819170))

(assert (=> b!7089052 d!2216630))

(declare-fun b!7089331 () Bool)

(declare-fun e!4261865 () (InoxSet Context!13538))

(declare-fun call!644614 () (InoxSet Context!13538))

(declare-fun call!644615 () (InoxSet Context!13538))

(assert (=> b!7089331 (= e!4261865 ((_ map or) call!644614 call!644615))))

(declare-fun bm!644608 () Bool)

(declare-fun call!644616 () (InoxSet Context!13538))

(declare-fun call!644618 () (InoxSet Context!13538))

(assert (=> bm!644608 (= call!644616 call!644618)))

(declare-fun b!7089332 () Bool)

(declare-fun e!4261868 () (InoxSet Context!13538))

(assert (=> b!7089332 (= e!4261868 e!4261865)))

(declare-fun c!1323151 () Bool)

(assert (=> b!7089332 (= c!1323151 ((_ is Union!17773) (regTwo!36059 r!11554)))))

(declare-fun b!7089333 () Bool)

(declare-fun e!4261867 () (InoxSet Context!13538))

(assert (=> b!7089333 (= e!4261867 ((_ map or) call!644615 call!644618))))

(declare-fun b!7089334 () Bool)

(declare-fun e!4261866 () Bool)

(assert (=> b!7089334 (= e!4261866 (nullable!7415 (regOne!36058 (regTwo!36059 r!11554))))))

(declare-fun b!7089335 () Bool)

(declare-fun c!1323153 () Bool)

(assert (=> b!7089335 (= c!1323153 e!4261866)))

(declare-fun res!2895507 () Bool)

(assert (=> b!7089335 (=> (not res!2895507) (not e!4261866))))

(assert (=> b!7089335 (= res!2895507 ((_ is Concat!26618) (regTwo!36059 r!11554)))))

(assert (=> b!7089335 (= e!4261865 e!4261867)))

(declare-fun call!644613 () List!68736)

(declare-fun bm!644609 () Bool)

(assert (=> bm!644609 (= call!644615 (derivationStepZipperDown!2352 (ite c!1323151 (regTwo!36059 (regTwo!36059 r!11554)) (regOne!36058 (regTwo!36059 r!11554))) (ite c!1323151 c!9994 (Context!13539 call!644613)) a!1901))))

(declare-fun bm!644610 () Bool)

(assert (=> bm!644610 (= call!644618 call!644614)))

(declare-fun b!7089336 () Bool)

(declare-fun e!4261864 () (InoxSet Context!13538))

(assert (=> b!7089336 (= e!4261864 call!644616)))

(declare-fun b!7089337 () Bool)

(assert (=> b!7089337 (= e!4261864 ((as const (Array Context!13538 Bool)) false))))

(declare-fun b!7089338 () Bool)

(declare-fun c!1323152 () Bool)

(assert (=> b!7089338 (= c!1323152 ((_ is Star!17773) (regTwo!36059 r!11554)))))

(declare-fun e!4261863 () (InoxSet Context!13538))

(assert (=> b!7089338 (= e!4261863 e!4261864)))

(declare-fun d!2216632 () Bool)

(declare-fun c!1323154 () Bool)

(assert (=> d!2216632 (= c!1323154 (and ((_ is ElementMatch!17773) (regTwo!36059 r!11554)) (= (c!1323058 (regTwo!36059 r!11554)) a!1901)))))

(assert (=> d!2216632 (= (derivationStepZipperDown!2352 (regTwo!36059 r!11554) c!9994 a!1901) e!4261868)))

(declare-fun c!1323150 () Bool)

(declare-fun bm!644611 () Bool)

(assert (=> bm!644611 (= call!644613 ($colon$colon!2698 (exprs!7269 c!9994) (ite (or c!1323153 c!1323150) (regTwo!36058 (regTwo!36059 r!11554)) (regTwo!36059 r!11554))))))

(declare-fun bm!644612 () Bool)

(declare-fun call!644617 () List!68736)

(assert (=> bm!644612 (= call!644617 call!644613)))

(declare-fun b!7089339 () Bool)

(assert (=> b!7089339 (= e!4261868 (store ((as const (Array Context!13538 Bool)) false) c!9994 true))))

(declare-fun b!7089340 () Bool)

(assert (=> b!7089340 (= e!4261867 e!4261863)))

(assert (=> b!7089340 (= c!1323150 ((_ is Concat!26618) (regTwo!36059 r!11554)))))

(declare-fun b!7089341 () Bool)

(assert (=> b!7089341 (= e!4261863 call!644616)))

(declare-fun bm!644613 () Bool)

(assert (=> bm!644613 (= call!644614 (derivationStepZipperDown!2352 (ite c!1323151 (regOne!36059 (regTwo!36059 r!11554)) (ite c!1323153 (regTwo!36058 (regTwo!36059 r!11554)) (ite c!1323150 (regOne!36058 (regTwo!36059 r!11554)) (reg!18102 (regTwo!36059 r!11554))))) (ite (or c!1323151 c!1323153) c!9994 (Context!13539 call!644617)) a!1901))))

(assert (= (and d!2216632 c!1323154) b!7089339))

(assert (= (and d!2216632 (not c!1323154)) b!7089332))

(assert (= (and b!7089332 c!1323151) b!7089331))

(assert (= (and b!7089332 (not c!1323151)) b!7089335))

(assert (= (and b!7089335 res!2895507) b!7089334))

(assert (= (and b!7089335 c!1323153) b!7089333))

(assert (= (and b!7089335 (not c!1323153)) b!7089340))

(assert (= (and b!7089340 c!1323150) b!7089341))

(assert (= (and b!7089340 (not c!1323150)) b!7089338))

(assert (= (and b!7089338 c!1323152) b!7089336))

(assert (= (and b!7089338 (not c!1323152)) b!7089337))

(assert (= (or b!7089341 b!7089336) bm!644612))

(assert (= (or b!7089341 b!7089336) bm!644608))

(assert (= (or b!7089333 bm!644608) bm!644610))

(assert (= (or b!7089333 bm!644612) bm!644611))

(assert (= (or b!7089331 b!7089333) bm!644609))

(assert (= (or b!7089331 bm!644610) bm!644613))

(declare-fun m!7819172 () Bool)

(assert (=> bm!644609 m!7819172))

(declare-fun m!7819174 () Bool)

(assert (=> bm!644611 m!7819174))

(assert (=> b!7089334 m!7819030))

(assert (=> b!7089339 m!7819144))

(declare-fun m!7819176 () Bool)

(assert (=> bm!644613 m!7819176))

(assert (=> b!7089052 d!2216632))

(declare-fun b!7089360 () Bool)

(declare-fun e!4261886 () Bool)

(declare-fun call!644626 () Bool)

(assert (=> b!7089360 (= e!4261886 call!644626)))

(declare-fun b!7089361 () Bool)

(declare-fun res!2895519 () Bool)

(assert (=> b!7089361 (=> (not res!2895519) (not e!4261886))))

(declare-fun call!644625 () Bool)

(assert (=> b!7089361 (= res!2895519 call!644625)))

(declare-fun e!4261884 () Bool)

(assert (=> b!7089361 (= e!4261884 e!4261886)))

(declare-fun bm!644620 () Bool)

(declare-fun c!1323159 () Bool)

(assert (=> bm!644620 (= call!644625 (validRegex!9048 (ite c!1323159 (regOne!36059 r!11554) (regTwo!36058 r!11554))))))

(declare-fun b!7089362 () Bool)

(declare-fun e!4261887 () Bool)

(assert (=> b!7089362 (= e!4261887 e!4261884)))

(assert (=> b!7089362 (= c!1323159 ((_ is Union!17773) r!11554))))

(declare-fun b!7089363 () Bool)

(declare-fun e!4261883 () Bool)

(declare-fun call!644627 () Bool)

(assert (=> b!7089363 (= e!4261883 call!644627)))

(declare-fun bm!644621 () Bool)

(assert (=> bm!644621 (= call!644626 call!644627)))

(declare-fun b!7089365 () Bool)

(declare-fun e!4261889 () Bool)

(assert (=> b!7089365 (= e!4261889 call!644625)))

(declare-fun b!7089366 () Bool)

(declare-fun e!4261885 () Bool)

(assert (=> b!7089366 (= e!4261885 e!4261889)))

(declare-fun res!2895521 () Bool)

(assert (=> b!7089366 (=> (not res!2895521) (not e!4261889))))

(assert (=> b!7089366 (= res!2895521 call!644626)))

(declare-fun bm!644622 () Bool)

(declare-fun c!1323160 () Bool)

(assert (=> bm!644622 (= call!644627 (validRegex!9048 (ite c!1323160 (reg!18102 r!11554) (ite c!1323159 (regTwo!36059 r!11554) (regOne!36058 r!11554)))))))

(declare-fun b!7089367 () Bool)

(declare-fun res!2895518 () Bool)

(assert (=> b!7089367 (=> res!2895518 e!4261885)))

(assert (=> b!7089367 (= res!2895518 (not ((_ is Concat!26618) r!11554)))))

(assert (=> b!7089367 (= e!4261884 e!4261885)))

(declare-fun b!7089368 () Bool)

(declare-fun e!4261888 () Bool)

(assert (=> b!7089368 (= e!4261888 e!4261887)))

(assert (=> b!7089368 (= c!1323160 ((_ is Star!17773) r!11554))))

(declare-fun b!7089364 () Bool)

(assert (=> b!7089364 (= e!4261887 e!4261883)))

(declare-fun res!2895520 () Bool)

(assert (=> b!7089364 (= res!2895520 (not (nullable!7415 (reg!18102 r!11554))))))

(assert (=> b!7089364 (=> (not res!2895520) (not e!4261883))))

(declare-fun d!2216634 () Bool)

(declare-fun res!2895522 () Bool)

(assert (=> d!2216634 (=> res!2895522 e!4261888)))

(assert (=> d!2216634 (= res!2895522 ((_ is ElementMatch!17773) r!11554))))

(assert (=> d!2216634 (= (validRegex!9048 r!11554) e!4261888)))

(assert (= (and d!2216634 (not res!2895522)) b!7089368))

(assert (= (and b!7089368 c!1323160) b!7089364))

(assert (= (and b!7089368 (not c!1323160)) b!7089362))

(assert (= (and b!7089364 res!2895520) b!7089363))

(assert (= (and b!7089362 c!1323159) b!7089361))

(assert (= (and b!7089362 (not c!1323159)) b!7089367))

(assert (= (and b!7089361 res!2895519) b!7089360))

(assert (= (and b!7089367 (not res!2895518)) b!7089366))

(assert (= (and b!7089366 res!2895521) b!7089365))

(assert (= (or b!7089361 b!7089365) bm!644620))

(assert (= (or b!7089360 b!7089366) bm!644621))

(assert (= (or b!7089363 bm!644621) bm!644622))

(declare-fun m!7819178 () Bool)

(assert (=> bm!644620 m!7819178))

(declare-fun m!7819180 () Bool)

(assert (=> bm!644622 m!7819180))

(declare-fun m!7819182 () Bool)

(assert (=> b!7089364 m!7819182))

(assert (=> start!690012 d!2216634))

(declare-fun bs!1883318 () Bool)

(declare-fun d!2216636 () Bool)

(assert (= bs!1883318 (and d!2216636 b!7089055)))

(declare-fun lambda!429594 () Int)

(assert (=> bs!1883318 (= lambda!429594 lambda!429565)))

(declare-fun bs!1883319 () Bool)

(assert (= bs!1883319 (and d!2216636 d!2216610)))

(assert (=> bs!1883319 (= lambda!429594 lambda!429583)))

(declare-fun bs!1883320 () Bool)

(assert (= bs!1883320 (and d!2216636 d!2216620)))

(assert (=> bs!1883320 (= lambda!429594 lambda!429590)))

(assert (=> d!2216636 (= (inv!87297 c!9994) (forall!16715 (exprs!7269 c!9994) lambda!429594))))

(declare-fun bs!1883321 () Bool)

(assert (= bs!1883321 d!2216636))

(declare-fun m!7819184 () Bool)

(assert (=> bs!1883321 m!7819184))

(assert (=> start!690012 d!2216636))

(declare-fun bs!1883322 () Bool)

(declare-fun d!2216638 () Bool)

(assert (= bs!1883322 (and d!2216638 b!7089055)))

(declare-fun lambda!429595 () Int)

(assert (=> bs!1883322 (= lambda!429595 lambda!429565)))

(declare-fun bs!1883323 () Bool)

(assert (= bs!1883323 (and d!2216638 d!2216610)))

(assert (=> bs!1883323 (= lambda!429595 lambda!429583)))

(declare-fun bs!1883324 () Bool)

(assert (= bs!1883324 (and d!2216638 d!2216620)))

(assert (=> bs!1883324 (= lambda!429595 lambda!429590)))

(declare-fun bs!1883325 () Bool)

(assert (= bs!1883325 (and d!2216638 d!2216636)))

(assert (=> bs!1883325 (= lambda!429595 lambda!429594)))

(assert (=> d!2216638 (= (inv!87297 auxCtx!45) (forall!16715 (exprs!7269 auxCtx!45) lambda!429595))))

(declare-fun bs!1883326 () Bool)

(assert (= bs!1883326 d!2216638))

(declare-fun m!7819186 () Bool)

(assert (=> bs!1883326 m!7819186))

(assert (=> start!690012 d!2216638))

(declare-fun b!7089382 () Bool)

(declare-fun e!4261892 () Bool)

(declare-fun tp!1947008 () Bool)

(declare-fun tp!1947010 () Bool)

(assert (=> b!7089382 (= e!4261892 (and tp!1947008 tp!1947010))))

(declare-fun b!7089381 () Bool)

(declare-fun tp!1947007 () Bool)

(assert (=> b!7089381 (= e!4261892 tp!1947007)))

(assert (=> b!7089056 (= tp!1946947 e!4261892)))

(declare-fun b!7089380 () Bool)

(declare-fun tp!1947006 () Bool)

(declare-fun tp!1947009 () Bool)

(assert (=> b!7089380 (= e!4261892 (and tp!1947006 tp!1947009))))

(declare-fun b!7089379 () Bool)

(assert (=> b!7089379 (= e!4261892 tp_is_empty!44779)))

(assert (= (and b!7089056 ((_ is ElementMatch!17773) (reg!18102 r!11554))) b!7089379))

(assert (= (and b!7089056 ((_ is Concat!26618) (reg!18102 r!11554))) b!7089380))

(assert (= (and b!7089056 ((_ is Star!17773) (reg!18102 r!11554))) b!7089381))

(assert (= (and b!7089056 ((_ is Union!17773) (reg!18102 r!11554))) b!7089382))

(declare-fun b!7089387 () Bool)

(declare-fun e!4261895 () Bool)

(declare-fun tp!1947015 () Bool)

(declare-fun tp!1947016 () Bool)

(assert (=> b!7089387 (= e!4261895 (and tp!1947015 tp!1947016))))

(assert (=> b!7089051 (= tp!1946946 e!4261895)))

(assert (= (and b!7089051 ((_ is Cons!68612) (exprs!7269 auxCtx!45))) b!7089387))

(declare-fun b!7089391 () Bool)

(declare-fun e!4261896 () Bool)

(declare-fun tp!1947019 () Bool)

(declare-fun tp!1947021 () Bool)

(assert (=> b!7089391 (= e!4261896 (and tp!1947019 tp!1947021))))

(declare-fun b!7089390 () Bool)

(declare-fun tp!1947018 () Bool)

(assert (=> b!7089390 (= e!4261896 tp!1947018)))

(assert (=> b!7089050 (= tp!1946948 e!4261896)))

(declare-fun b!7089389 () Bool)

(declare-fun tp!1947017 () Bool)

(declare-fun tp!1947020 () Bool)

(assert (=> b!7089389 (= e!4261896 (and tp!1947017 tp!1947020))))

(declare-fun b!7089388 () Bool)

(assert (=> b!7089388 (= e!4261896 tp_is_empty!44779)))

(assert (= (and b!7089050 ((_ is ElementMatch!17773) (regOne!36058 r!11554))) b!7089388))

(assert (= (and b!7089050 ((_ is Concat!26618) (regOne!36058 r!11554))) b!7089389))

(assert (= (and b!7089050 ((_ is Star!17773) (regOne!36058 r!11554))) b!7089390))

(assert (= (and b!7089050 ((_ is Union!17773) (regOne!36058 r!11554))) b!7089391))

(declare-fun b!7089395 () Bool)

(declare-fun e!4261897 () Bool)

(declare-fun tp!1947024 () Bool)

(declare-fun tp!1947026 () Bool)

(assert (=> b!7089395 (= e!4261897 (and tp!1947024 tp!1947026))))

(declare-fun b!7089394 () Bool)

(declare-fun tp!1947023 () Bool)

(assert (=> b!7089394 (= e!4261897 tp!1947023)))

(assert (=> b!7089050 (= tp!1946949 e!4261897)))

(declare-fun b!7089393 () Bool)

(declare-fun tp!1947022 () Bool)

(declare-fun tp!1947025 () Bool)

(assert (=> b!7089393 (= e!4261897 (and tp!1947022 tp!1947025))))

(declare-fun b!7089392 () Bool)

(assert (=> b!7089392 (= e!4261897 tp_is_empty!44779)))

(assert (= (and b!7089050 ((_ is ElementMatch!17773) (regTwo!36058 r!11554))) b!7089392))

(assert (= (and b!7089050 ((_ is Concat!26618) (regTwo!36058 r!11554))) b!7089393))

(assert (= (and b!7089050 ((_ is Star!17773) (regTwo!36058 r!11554))) b!7089394))

(assert (= (and b!7089050 ((_ is Union!17773) (regTwo!36058 r!11554))) b!7089395))

(declare-fun b!7089399 () Bool)

(declare-fun e!4261898 () Bool)

(declare-fun tp!1947029 () Bool)

(declare-fun tp!1947031 () Bool)

(assert (=> b!7089399 (= e!4261898 (and tp!1947029 tp!1947031))))

(declare-fun b!7089398 () Bool)

(declare-fun tp!1947028 () Bool)

(assert (=> b!7089398 (= e!4261898 tp!1947028)))

(assert (=> b!7089059 (= tp!1946952 e!4261898)))

(declare-fun b!7089397 () Bool)

(declare-fun tp!1947027 () Bool)

(declare-fun tp!1947030 () Bool)

(assert (=> b!7089397 (= e!4261898 (and tp!1947027 tp!1947030))))

(declare-fun b!7089396 () Bool)

(assert (=> b!7089396 (= e!4261898 tp_is_empty!44779)))

(assert (= (and b!7089059 ((_ is ElementMatch!17773) (regOne!36059 r!11554))) b!7089396))

(assert (= (and b!7089059 ((_ is Concat!26618) (regOne!36059 r!11554))) b!7089397))

(assert (= (and b!7089059 ((_ is Star!17773) (regOne!36059 r!11554))) b!7089398))

(assert (= (and b!7089059 ((_ is Union!17773) (regOne!36059 r!11554))) b!7089399))

(declare-fun b!7089403 () Bool)

(declare-fun e!4261899 () Bool)

(declare-fun tp!1947034 () Bool)

(declare-fun tp!1947036 () Bool)

(assert (=> b!7089403 (= e!4261899 (and tp!1947034 tp!1947036))))

(declare-fun b!7089402 () Bool)

(declare-fun tp!1947033 () Bool)

(assert (=> b!7089402 (= e!4261899 tp!1947033)))

(assert (=> b!7089059 (= tp!1946950 e!4261899)))

(declare-fun b!7089401 () Bool)

(declare-fun tp!1947032 () Bool)

(declare-fun tp!1947035 () Bool)

(assert (=> b!7089401 (= e!4261899 (and tp!1947032 tp!1947035))))

(declare-fun b!7089400 () Bool)

(assert (=> b!7089400 (= e!4261899 tp_is_empty!44779)))

(assert (= (and b!7089059 ((_ is ElementMatch!17773) (regTwo!36059 r!11554))) b!7089400))

(assert (= (and b!7089059 ((_ is Concat!26618) (regTwo!36059 r!11554))) b!7089401))

(assert (= (and b!7089059 ((_ is Star!17773) (regTwo!36059 r!11554))) b!7089402))

(assert (= (and b!7089059 ((_ is Union!17773) (regTwo!36059 r!11554))) b!7089403))

(declare-fun b!7089404 () Bool)

(declare-fun e!4261900 () Bool)

(declare-fun tp!1947037 () Bool)

(declare-fun tp!1947038 () Bool)

(assert (=> b!7089404 (= e!4261900 (and tp!1947037 tp!1947038))))

(assert (=> b!7089058 (= tp!1946951 e!4261900)))

(assert (= (and b!7089058 ((_ is Cons!68612) (exprs!7269 c!9994))) b!7089404))

(declare-fun b_lambda!270949 () Bool)

(assert (= b_lambda!270947 (or b!7089055 b_lambda!270949)))

(declare-fun bs!1883327 () Bool)

(declare-fun d!2216640 () Bool)

(assert (= bs!1883327 (and d!2216640 b!7089055)))

(assert (=> bs!1883327 (= (dynLambda!27987 lambda!429565 (h!75060 (exprs!7269 auxCtx!45))) (validRegex!9048 (h!75060 (exprs!7269 auxCtx!45))))))

(declare-fun m!7819188 () Bool)

(assert (=> bs!1883327 m!7819188))

(assert (=> b!7089307 d!2216640))

(declare-fun b_lambda!270951 () Bool)

(assert (= b_lambda!270937 (or b!7089055 b_lambda!270951)))

(declare-fun bs!1883328 () Bool)

(declare-fun d!2216642 () Bool)

(assert (= bs!1883328 (and d!2216642 b!7089055)))

(assert (=> bs!1883328 (= (dynLambda!27987 lambda!429565 (h!75060 (exprs!7269 c!9994))) (validRegex!9048 (h!75060 (exprs!7269 c!9994))))))

(declare-fun m!7819190 () Bool)

(assert (=> bs!1883328 m!7819190))

(assert (=> b!7089094 d!2216642))

(check-sat (not bm!644595) (not b!7089171) (not bm!644591) (not b!7089393) (not b!7089299) (not d!2216624) (not bm!644603) (not bm!644609) (not bm!644557) (not bm!644620) (not d!2216626) (not b!7089398) (not bm!644601) (not b!7089364) (not d!2216600) (not b!7089395) (not d!2216612) (not b!7089334) (not b_lambda!270951) (not b!7089391) (not b!7089389) (not bm!644555) (not b!7089382) (not bs!1883328) (not bm!644561) (not bm!644597) (not b!7089308) tp_is_empty!44779 (not bm!644599) (not d!2216616) (not bm!644593) (not bm!644559) (not b!7089182) (not bm!644565) (not d!2216630) (not b!7089401) (not b!7089397) (not bm!644611) (not b!7089390) (not d!2216628) (not d!2216620) (not bm!644605) (not d!2216614) (not bm!644607) (not b!7089387) (not d!2216580) (not b!7089254) (not bm!644613) (not b!7089404) (not b!7089402) (not d!2216636) (not b!7089323) (not b_lambda!270949) (not bm!644563) (not b!7089394) (not d!2216638) (not d!2216610) (not b!7089381) (not bm!644622) (not bs!1883327) (not b!7089253) (not b!7089380) (not b!7089095) (not b!7089399) (not b!7089403) (not b!7089312))
(check-sat)
