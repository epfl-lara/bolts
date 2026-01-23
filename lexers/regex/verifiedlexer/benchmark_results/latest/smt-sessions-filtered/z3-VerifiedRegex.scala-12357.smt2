; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!692524 () Bool)

(assert start!692524)

(declare-fun b!7115162 () Bool)

(declare-fun e!4275659 () Bool)

(declare-fun tp!1957987 () Bool)

(declare-fun tp!1957986 () Bool)

(assert (=> b!7115162 (= e!4275659 (and tp!1957987 tp!1957986))))

(declare-fun b!7115163 () Bool)

(declare-fun tp!1957990 () Bool)

(declare-fun tp!1957992 () Bool)

(assert (=> b!7115163 (= e!4275659 (and tp!1957990 tp!1957992))))

(declare-fun b!7115164 () Bool)

(declare-fun e!4275661 () Bool)

(declare-fun e!4275662 () Bool)

(assert (=> b!7115164 (= e!4275661 e!4275662)))

(declare-fun res!2903158 () Bool)

(assert (=> b!7115164 (=> (not res!2903158) (not e!4275662))))

(declare-datatypes ((C!36184 0))(
  ( (C!36185 (val!27798 Int)) )
))
(declare-datatypes ((Regex!17957 0))(
  ( (ElementMatch!17957 (c!1327860 C!36184)) (Concat!26802 (regOne!36426 Regex!17957) (regTwo!36426 Regex!17957)) (EmptyExpr!17957) (Star!17957 (reg!18286 Regex!17957)) (EmptyLang!17957) (Union!17957 (regOne!36427 Regex!17957) (regTwo!36427 Regex!17957)) )
))
(declare-fun r!11554 () Regex!17957)

(declare-fun validRegex!9230 (Regex!17957) Bool)

(assert (=> b!7115164 (= res!2903158 (validRegex!9230 (regTwo!36426 r!11554)))))

(declare-datatypes ((List!68918 0))(
  ( (Nil!68794) (Cons!68794 (h!75242 Regex!17957) (t!382763 List!68918)) )
))
(declare-fun lt!2560532 () List!68918)

(declare-datatypes ((Context!13902 0))(
  ( (Context!13903 (exprs!7451 List!68918)) )
))
(declare-fun c!9994 () Context!13902)

(declare-fun auxCtx!45 () Context!13902)

(declare-fun ++!16109 (List!68918 List!68918) List!68918)

(assert (=> b!7115164 (= lt!2560532 (++!16109 (exprs!7451 c!9994) (exprs!7451 auxCtx!45)))))

(declare-datatypes ((Unit!162585 0))(
  ( (Unit!162586) )
))
(declare-fun lt!2560529 () Unit!162585)

(declare-fun lambda!432287 () Int)

(declare-fun lemmaConcatPreservesForall!1242 (List!68918 List!68918 Int) Unit!162585)

(assert (=> b!7115164 (= lt!2560529 (lemmaConcatPreservesForall!1242 (exprs!7451 c!9994) (exprs!7451 auxCtx!45) lambda!432287))))

(declare-fun lt!2560527 () Unit!162585)

(assert (=> b!7115164 (= lt!2560527 (lemmaConcatPreservesForall!1242 (exprs!7451 c!9994) (exprs!7451 auxCtx!45) lambda!432287))))

(declare-fun b!7115165 () Bool)

(declare-fun res!2903157 () Bool)

(assert (=> b!7115165 (=> (not res!2903157) (not e!4275661))))

(get-info :version)

(assert (=> b!7115165 (= res!2903157 ((_ is Concat!26802) r!11554))))

(declare-fun b!7115166 () Bool)

(declare-fun res!2903155 () Bool)

(assert (=> b!7115166 (=> (not res!2903155) (not e!4275661))))

(declare-fun a!1901 () C!36184)

(assert (=> b!7115166 (= res!2903155 (and (or (not ((_ is ElementMatch!17957) r!11554)) (not (= (c!1327860 r!11554) a!1901))) (not ((_ is Union!17957) r!11554))))))

(declare-fun res!2903156 () Bool)

(assert (=> start!692524 (=> (not res!2903156) (not e!4275661))))

(assert (=> start!692524 (= res!2903156 (validRegex!9230 r!11554))))

(assert (=> start!692524 e!4275661))

(assert (=> start!692524 e!4275659))

(declare-fun tp_is_empty!45147 () Bool)

(assert (=> start!692524 tp_is_empty!45147))

(declare-fun e!4275664 () Bool)

(declare-fun inv!87755 (Context!13902) Bool)

(assert (=> start!692524 (and (inv!87755 c!9994) e!4275664)))

(declare-fun e!4275660 () Bool)

(assert (=> start!692524 (and (inv!87755 auxCtx!45) e!4275660)))

(declare-fun b!7115167 () Bool)

(declare-fun tp!1957991 () Bool)

(assert (=> b!7115167 (= e!4275659 tp!1957991)))

(declare-fun b!7115168 () Bool)

(declare-fun tp!1957988 () Bool)

(assert (=> b!7115168 (= e!4275660 tp!1957988)))

(declare-fun b!7115169 () Bool)

(declare-fun e!4275658 () Bool)

(declare-fun nullable!7594 (Regex!17957) Bool)

(assert (=> b!7115169 (= e!4275658 (not (nullable!7594 (regOne!36426 r!11554))))))

(declare-fun b!7115170 () Bool)

(declare-fun e!4275663 () Bool)

(assert (=> b!7115170 (= e!4275662 e!4275663)))

(declare-fun res!2903153 () Bool)

(assert (=> b!7115170 (=> (not res!2903153) (not e!4275663))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2560524 () (InoxSet Context!13902))

(declare-fun derivationStepZipperDown!2464 (Regex!17957 Context!13902 C!36184) (InoxSet Context!13902))

(declare-fun $colon$colon!2809 (List!68918 Regex!17957) List!68918)

(assert (=> b!7115170 (= res!2903153 (= lt!2560524 (derivationStepZipperDown!2464 (regOne!36426 r!11554) (Context!13903 ($colon$colon!2809 lt!2560532 (regTwo!36426 r!11554))) a!1901)))))

(assert (=> b!7115170 (= lt!2560524 (derivationStepZipperDown!2464 r!11554 (Context!13903 lt!2560532) a!1901))))

(declare-fun b!7115171 () Bool)

(declare-fun tp!1957989 () Bool)

(assert (=> b!7115171 (= e!4275664 tp!1957989)))

(declare-fun b!7115172 () Bool)

(declare-fun appendTo!940 ((InoxSet Context!13902) Context!13902) (InoxSet Context!13902))

(assert (=> b!7115172 (= e!4275663 (not (= lt!2560524 (appendTo!940 (derivationStepZipperDown!2464 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2560528 () Unit!162585)

(assert (=> b!7115172 (= lt!2560528 (lemmaConcatPreservesForall!1242 (exprs!7451 c!9994) (exprs!7451 auxCtx!45) lambda!432287))))

(declare-fun lt!2560530 () List!68918)

(declare-fun lt!2560525 () Context!13902)

(assert (=> b!7115172 (= (derivationStepZipperDown!2464 (regOne!36426 r!11554) (Context!13903 (++!16109 lt!2560530 (exprs!7451 auxCtx!45))) a!1901) (appendTo!940 (derivationStepZipperDown!2464 (regOne!36426 r!11554) lt!2560525 a!1901) auxCtx!45))))

(declare-fun lt!2560531 () Unit!162585)

(assert (=> b!7115172 (= lt!2560531 (lemmaConcatPreservesForall!1242 lt!2560530 (exprs!7451 auxCtx!45) lambda!432287))))

(declare-fun lt!2560526 () Unit!162585)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!238 (Context!13902 Regex!17957 C!36184 Context!13902) Unit!162585)

(assert (=> b!7115172 (= lt!2560526 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!238 lt!2560525 (regOne!36426 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7115172 (= lt!2560525 (Context!13903 lt!2560530))))

(assert (=> b!7115172 (= lt!2560530 ($colon$colon!2809 (exprs!7451 c!9994) (regTwo!36426 r!11554)))))

(declare-fun b!7115173 () Bool)

(declare-fun res!2903154 () Bool)

(assert (=> b!7115173 (=> (not res!2903154) (not e!4275661))))

(assert (=> b!7115173 (= res!2903154 e!4275658)))

(declare-fun res!2903152 () Bool)

(assert (=> b!7115173 (=> res!2903152 e!4275658)))

(assert (=> b!7115173 (= res!2903152 (not ((_ is Concat!26802) r!11554)))))

(declare-fun b!7115174 () Bool)

(assert (=> b!7115174 (= e!4275659 tp_is_empty!45147)))

(assert (= (and start!692524 res!2903156) b!7115166))

(assert (= (and b!7115166 res!2903155) b!7115173))

(assert (= (and b!7115173 (not res!2903152)) b!7115169))

(assert (= (and b!7115173 res!2903154) b!7115165))

(assert (= (and b!7115165 res!2903157) b!7115164))

(assert (= (and b!7115164 res!2903158) b!7115170))

(assert (= (and b!7115170 res!2903153) b!7115172))

(assert (= (and start!692524 ((_ is ElementMatch!17957) r!11554)) b!7115174))

(assert (= (and start!692524 ((_ is Concat!26802) r!11554)) b!7115162))

(assert (= (and start!692524 ((_ is Star!17957) r!11554)) b!7115167))

(assert (= (and start!692524 ((_ is Union!17957) r!11554)) b!7115163))

(assert (= start!692524 b!7115171))

(assert (= start!692524 b!7115168))

(declare-fun m!7834538 () Bool)

(assert (=> b!7115164 m!7834538))

(declare-fun m!7834540 () Bool)

(assert (=> b!7115164 m!7834540))

(declare-fun m!7834542 () Bool)

(assert (=> b!7115164 m!7834542))

(assert (=> b!7115164 m!7834542))

(declare-fun m!7834544 () Bool)

(assert (=> b!7115169 m!7834544))

(declare-fun m!7834546 () Bool)

(assert (=> start!692524 m!7834546))

(declare-fun m!7834548 () Bool)

(assert (=> start!692524 m!7834548))

(declare-fun m!7834550 () Bool)

(assert (=> start!692524 m!7834550))

(declare-fun m!7834552 () Bool)

(assert (=> b!7115170 m!7834552))

(declare-fun m!7834554 () Bool)

(assert (=> b!7115170 m!7834554))

(declare-fun m!7834556 () Bool)

(assert (=> b!7115170 m!7834556))

(declare-fun m!7834558 () Bool)

(assert (=> b!7115172 m!7834558))

(declare-fun m!7834560 () Bool)

(assert (=> b!7115172 m!7834560))

(declare-fun m!7834562 () Bool)

(assert (=> b!7115172 m!7834562))

(declare-fun m!7834564 () Bool)

(assert (=> b!7115172 m!7834564))

(assert (=> b!7115172 m!7834558))

(declare-fun m!7834566 () Bool)

(assert (=> b!7115172 m!7834566))

(assert (=> b!7115172 m!7834542))

(assert (=> b!7115172 m!7834560))

(declare-fun m!7834568 () Bool)

(assert (=> b!7115172 m!7834568))

(declare-fun m!7834570 () Bool)

(assert (=> b!7115172 m!7834570))

(declare-fun m!7834572 () Bool)

(assert (=> b!7115172 m!7834572))

(declare-fun m!7834574 () Bool)

(assert (=> b!7115172 m!7834574))

(check-sat (not b!7115168) (not b!7115171) (not b!7115170) (not b!7115162) (not b!7115167) (not start!692524) (not b!7115164) (not b!7115163) (not b!7115172) tp_is_empty!45147 (not b!7115169))
(check-sat)
(get-model)

(declare-fun b!7115197 () Bool)

(declare-fun e!4275678 () (InoxSet Context!13902))

(declare-fun call!649669 () (InoxSet Context!13902))

(declare-fun call!649668 () (InoxSet Context!13902))

(assert (=> b!7115197 (= e!4275678 ((_ map or) call!649669 call!649668))))

(declare-fun b!7115198 () Bool)

(declare-fun c!1327873 () Bool)

(declare-fun e!4275679 () Bool)

(assert (=> b!7115198 (= c!1327873 e!4275679)))

(declare-fun res!2903161 () Bool)

(assert (=> b!7115198 (=> (not res!2903161) (not e!4275679))))

(assert (=> b!7115198 (= res!2903161 ((_ is Concat!26802) (regOne!36426 r!11554)))))

(declare-fun e!4275682 () (InoxSet Context!13902))

(assert (=> b!7115198 (= e!4275682 e!4275678)))

(declare-fun b!7115199 () Bool)

(declare-fun c!1327874 () Bool)

(assert (=> b!7115199 (= c!1327874 ((_ is Star!17957) (regOne!36426 r!11554)))))

(declare-fun e!4275680 () (InoxSet Context!13902))

(declare-fun e!4275681 () (InoxSet Context!13902))

(assert (=> b!7115199 (= e!4275680 e!4275681)))

(declare-fun call!649671 () List!68918)

(declare-fun c!1327872 () Bool)

(declare-fun call!649666 () (InoxSet Context!13902))

(declare-fun c!1327875 () Bool)

(declare-fun bm!649661 () Bool)

(assert (=> bm!649661 (= call!649666 (derivationStepZipperDown!2464 (ite c!1327875 (regTwo!36427 (regOne!36426 r!11554)) (ite c!1327873 (regTwo!36426 (regOne!36426 r!11554)) (ite c!1327872 (regOne!36426 (regOne!36426 r!11554)) (reg!18286 (regOne!36426 r!11554))))) (ite (or c!1327875 c!1327873) (Context!13903 (++!16109 lt!2560530 (exprs!7451 auxCtx!45))) (Context!13903 call!649671)) a!1901))))

(declare-fun d!2220976 () Bool)

(declare-fun c!1327871 () Bool)

(assert (=> d!2220976 (= c!1327871 (and ((_ is ElementMatch!17957) (regOne!36426 r!11554)) (= (c!1327860 (regOne!36426 r!11554)) a!1901)))))

(declare-fun e!4275677 () (InoxSet Context!13902))

(assert (=> d!2220976 (= (derivationStepZipperDown!2464 (regOne!36426 r!11554) (Context!13903 (++!16109 lt!2560530 (exprs!7451 auxCtx!45))) a!1901) e!4275677)))

(declare-fun b!7115200 () Bool)

(assert (=> b!7115200 (= e!4275678 e!4275680)))

(assert (=> b!7115200 (= c!1327872 ((_ is Concat!26802) (regOne!36426 r!11554)))))

(declare-fun call!649670 () List!68918)

(declare-fun bm!649662 () Bool)

(assert (=> bm!649662 (= call!649669 (derivationStepZipperDown!2464 (ite c!1327875 (regOne!36427 (regOne!36426 r!11554)) (regOne!36426 (regOne!36426 r!11554))) (ite c!1327875 (Context!13903 (++!16109 lt!2560530 (exprs!7451 auxCtx!45))) (Context!13903 call!649670)) a!1901))))

(declare-fun b!7115201 () Bool)

(assert (=> b!7115201 (= e!4275681 ((as const (Array Context!13902 Bool)) false))))

(declare-fun b!7115202 () Bool)

(declare-fun call!649667 () (InoxSet Context!13902))

(assert (=> b!7115202 (= e!4275681 call!649667)))

(declare-fun bm!649663 () Bool)

(assert (=> bm!649663 (= call!649668 call!649666)))

(declare-fun b!7115203 () Bool)

(assert (=> b!7115203 (= e!4275680 call!649667)))

(declare-fun b!7115204 () Bool)

(assert (=> b!7115204 (= e!4275677 (store ((as const (Array Context!13902 Bool)) false) (Context!13903 (++!16109 lt!2560530 (exprs!7451 auxCtx!45))) true))))

(declare-fun b!7115205 () Bool)

(assert (=> b!7115205 (= e!4275677 e!4275682)))

(assert (=> b!7115205 (= c!1327875 ((_ is Union!17957) (regOne!36426 r!11554)))))

(declare-fun b!7115206 () Bool)

(assert (=> b!7115206 (= e!4275679 (nullable!7594 (regOne!36426 (regOne!36426 r!11554))))))

(declare-fun b!7115207 () Bool)

(assert (=> b!7115207 (= e!4275682 ((_ map or) call!649669 call!649666))))

(declare-fun bm!649664 () Bool)

(assert (=> bm!649664 (= call!649671 call!649670)))

(declare-fun bm!649665 () Bool)

(assert (=> bm!649665 (= call!649670 ($colon$colon!2809 (exprs!7451 (Context!13903 (++!16109 lt!2560530 (exprs!7451 auxCtx!45)))) (ite (or c!1327873 c!1327872) (regTwo!36426 (regOne!36426 r!11554)) (regOne!36426 r!11554))))))

(declare-fun bm!649666 () Bool)

(assert (=> bm!649666 (= call!649667 call!649668)))

(assert (= (and d!2220976 c!1327871) b!7115204))

(assert (= (and d!2220976 (not c!1327871)) b!7115205))

(assert (= (and b!7115205 c!1327875) b!7115207))

(assert (= (and b!7115205 (not c!1327875)) b!7115198))

(assert (= (and b!7115198 res!2903161) b!7115206))

(assert (= (and b!7115198 c!1327873) b!7115197))

(assert (= (and b!7115198 (not c!1327873)) b!7115200))

(assert (= (and b!7115200 c!1327872) b!7115203))

(assert (= (and b!7115200 (not c!1327872)) b!7115199))

(assert (= (and b!7115199 c!1327874) b!7115202))

(assert (= (and b!7115199 (not c!1327874)) b!7115201))

(assert (= (or b!7115203 b!7115202) bm!649664))

(assert (= (or b!7115203 b!7115202) bm!649666))

(assert (= (or b!7115197 bm!649666) bm!649663))

(assert (= (or b!7115197 bm!649664) bm!649665))

(assert (= (or b!7115207 bm!649663) bm!649661))

(assert (= (or b!7115207 b!7115197) bm!649662))

(declare-fun m!7834576 () Bool)

(assert (=> b!7115206 m!7834576))

(declare-fun m!7834578 () Bool)

(assert (=> b!7115204 m!7834578))

(declare-fun m!7834580 () Bool)

(assert (=> bm!649662 m!7834580))

(declare-fun m!7834582 () Bool)

(assert (=> bm!649661 m!7834582))

(declare-fun m!7834584 () Bool)

(assert (=> bm!649665 m!7834584))

(assert (=> b!7115172 d!2220976))

(declare-fun b!7115225 () Bool)

(declare-fun e!4275692 () List!68918)

(assert (=> b!7115225 (= e!4275692 (Cons!68794 (h!75242 lt!2560530) (++!16109 (t!382763 lt!2560530) (exprs!7451 auxCtx!45))))))

(declare-fun b!7115224 () Bool)

(assert (=> b!7115224 (= e!4275692 (exprs!7451 auxCtx!45))))

(declare-fun d!2220978 () Bool)

(declare-fun e!4275691 () Bool)

(assert (=> d!2220978 e!4275691))

(declare-fun res!2903170 () Bool)

(assert (=> d!2220978 (=> (not res!2903170) (not e!4275691))))

(declare-fun lt!2560537 () List!68918)

(declare-fun content!14037 (List!68918) (InoxSet Regex!17957))

(assert (=> d!2220978 (= res!2903170 (= (content!14037 lt!2560537) ((_ map or) (content!14037 lt!2560530) (content!14037 (exprs!7451 auxCtx!45)))))))

(assert (=> d!2220978 (= lt!2560537 e!4275692)))

(declare-fun c!1327880 () Bool)

(assert (=> d!2220978 (= c!1327880 ((_ is Nil!68794) lt!2560530))))

(assert (=> d!2220978 (= (++!16109 lt!2560530 (exprs!7451 auxCtx!45)) lt!2560537)))

(declare-fun b!7115226 () Bool)

(declare-fun res!2903171 () Bool)

(assert (=> b!7115226 (=> (not res!2903171) (not e!4275691))))

(declare-fun size!41412 (List!68918) Int)

(assert (=> b!7115226 (= res!2903171 (= (size!41412 lt!2560537) (+ (size!41412 lt!2560530) (size!41412 (exprs!7451 auxCtx!45)))))))

(declare-fun b!7115227 () Bool)

(assert (=> b!7115227 (= e!4275691 (or (not (= (exprs!7451 auxCtx!45) Nil!68794)) (= lt!2560537 lt!2560530)))))

(assert (= (and d!2220978 c!1327880) b!7115224))

(assert (= (and d!2220978 (not c!1327880)) b!7115225))

(assert (= (and d!2220978 res!2903170) b!7115226))

(assert (= (and b!7115226 res!2903171) b!7115227))

(declare-fun m!7834588 () Bool)

(assert (=> b!7115225 m!7834588))

(declare-fun m!7834594 () Bool)

(assert (=> d!2220978 m!7834594))

(declare-fun m!7834598 () Bool)

(assert (=> d!2220978 m!7834598))

(declare-fun m!7834602 () Bool)

(assert (=> d!2220978 m!7834602))

(declare-fun m!7834604 () Bool)

(assert (=> b!7115226 m!7834604))

(declare-fun m!7834608 () Bool)

(assert (=> b!7115226 m!7834608))

(declare-fun m!7834612 () Bool)

(assert (=> b!7115226 m!7834612))

(assert (=> b!7115172 d!2220978))

(declare-fun d!2220984 () Bool)

(assert (=> d!2220984 true))

(declare-fun lambda!432297 () Int)

(declare-fun map!16294 ((InoxSet Context!13902) Int) (InoxSet Context!13902))

(assert (=> d!2220984 (= (appendTo!940 (derivationStepZipperDown!2464 r!11554 c!9994 a!1901) auxCtx!45) (map!16294 (derivationStepZipperDown!2464 r!11554 c!9994 a!1901) lambda!432297))))

(declare-fun bs!1885461 () Bool)

(assert (= bs!1885461 d!2220984))

(assert (=> bs!1885461 m!7834560))

(declare-fun m!7834615 () Bool)

(assert (=> bs!1885461 m!7834615))

(assert (=> b!7115172 d!2220984))

(declare-fun bs!1885463 () Bool)

(declare-fun d!2220988 () Bool)

(assert (= bs!1885463 (and d!2220988 b!7115164)))

(declare-fun lambda!432300 () Int)

(assert (=> bs!1885463 (= lambda!432300 lambda!432287)))

(assert (=> d!2220988 (= (derivationStepZipperDown!2464 (regOne!36426 r!11554) (Context!13903 (++!16109 (exprs!7451 lt!2560525) (exprs!7451 auxCtx!45))) a!1901) (appendTo!940 (derivationStepZipperDown!2464 (regOne!36426 r!11554) lt!2560525 a!1901) auxCtx!45))))

(declare-fun lt!2560548 () Unit!162585)

(assert (=> d!2220988 (= lt!2560548 (lemmaConcatPreservesForall!1242 (exprs!7451 lt!2560525) (exprs!7451 auxCtx!45) lambda!432300))))

(declare-fun lt!2560547 () Unit!162585)

(declare-fun choose!54882 (Context!13902 Regex!17957 C!36184 Context!13902) Unit!162585)

(assert (=> d!2220988 (= lt!2560547 (choose!54882 lt!2560525 (regOne!36426 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2220988 (validRegex!9230 (regOne!36426 r!11554))))

(assert (=> d!2220988 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!238 lt!2560525 (regOne!36426 r!11554) a!1901 auxCtx!45) lt!2560547)))

(declare-fun bs!1885464 () Bool)

(assert (= bs!1885464 d!2220988))

(declare-fun m!7834618 () Bool)

(assert (=> bs!1885464 m!7834618))

(assert (=> bs!1885464 m!7834558))

(assert (=> bs!1885464 m!7834566))

(declare-fun m!7834620 () Bool)

(assert (=> bs!1885464 m!7834620))

(declare-fun m!7834622 () Bool)

(assert (=> bs!1885464 m!7834622))

(assert (=> bs!1885464 m!7834558))

(declare-fun m!7834624 () Bool)

(assert (=> bs!1885464 m!7834624))

(declare-fun m!7834626 () Bool)

(assert (=> bs!1885464 m!7834626))

(assert (=> b!7115172 d!2220988))

(declare-fun b!7115258 () Bool)

(declare-fun e!4275708 () (InoxSet Context!13902))

(declare-fun call!649687 () (InoxSet Context!13902))

(declare-fun call!649686 () (InoxSet Context!13902))

(assert (=> b!7115258 (= e!4275708 ((_ map or) call!649687 call!649686))))

(declare-fun b!7115259 () Bool)

(declare-fun c!1327897 () Bool)

(declare-fun e!4275709 () Bool)

(assert (=> b!7115259 (= c!1327897 e!4275709)))

(declare-fun res!2903176 () Bool)

(assert (=> b!7115259 (=> (not res!2903176) (not e!4275709))))

(assert (=> b!7115259 (= res!2903176 ((_ is Concat!26802) (regOne!36426 r!11554)))))

(declare-fun e!4275712 () (InoxSet Context!13902))

(assert (=> b!7115259 (= e!4275712 e!4275708)))

(declare-fun b!7115260 () Bool)

(declare-fun c!1327898 () Bool)

(assert (=> b!7115260 (= c!1327898 ((_ is Star!17957) (regOne!36426 r!11554)))))

(declare-fun e!4275710 () (InoxSet Context!13902))

(declare-fun e!4275711 () (InoxSet Context!13902))

(assert (=> b!7115260 (= e!4275710 e!4275711)))

(declare-fun bm!649679 () Bool)

(declare-fun call!649684 () (InoxSet Context!13902))

(declare-fun call!649689 () List!68918)

(declare-fun c!1327896 () Bool)

(declare-fun c!1327899 () Bool)

(assert (=> bm!649679 (= call!649684 (derivationStepZipperDown!2464 (ite c!1327899 (regTwo!36427 (regOne!36426 r!11554)) (ite c!1327897 (regTwo!36426 (regOne!36426 r!11554)) (ite c!1327896 (regOne!36426 (regOne!36426 r!11554)) (reg!18286 (regOne!36426 r!11554))))) (ite (or c!1327899 c!1327897) lt!2560525 (Context!13903 call!649689)) a!1901))))

(declare-fun d!2220990 () Bool)

(declare-fun c!1327895 () Bool)

(assert (=> d!2220990 (= c!1327895 (and ((_ is ElementMatch!17957) (regOne!36426 r!11554)) (= (c!1327860 (regOne!36426 r!11554)) a!1901)))))

(declare-fun e!4275707 () (InoxSet Context!13902))

(assert (=> d!2220990 (= (derivationStepZipperDown!2464 (regOne!36426 r!11554) lt!2560525 a!1901) e!4275707)))

(declare-fun b!7115261 () Bool)

(assert (=> b!7115261 (= e!4275708 e!4275710)))

(assert (=> b!7115261 (= c!1327896 ((_ is Concat!26802) (regOne!36426 r!11554)))))

(declare-fun call!649688 () List!68918)

(declare-fun bm!649680 () Bool)

(assert (=> bm!649680 (= call!649687 (derivationStepZipperDown!2464 (ite c!1327899 (regOne!36427 (regOne!36426 r!11554)) (regOne!36426 (regOne!36426 r!11554))) (ite c!1327899 lt!2560525 (Context!13903 call!649688)) a!1901))))

(declare-fun b!7115262 () Bool)

(assert (=> b!7115262 (= e!4275711 ((as const (Array Context!13902 Bool)) false))))

(declare-fun b!7115263 () Bool)

(declare-fun call!649685 () (InoxSet Context!13902))

(assert (=> b!7115263 (= e!4275711 call!649685)))

(declare-fun bm!649681 () Bool)

(assert (=> bm!649681 (= call!649686 call!649684)))

(declare-fun b!7115264 () Bool)

(assert (=> b!7115264 (= e!4275710 call!649685)))

(declare-fun b!7115265 () Bool)

(assert (=> b!7115265 (= e!4275707 (store ((as const (Array Context!13902 Bool)) false) lt!2560525 true))))

(declare-fun b!7115266 () Bool)

(assert (=> b!7115266 (= e!4275707 e!4275712)))

(assert (=> b!7115266 (= c!1327899 ((_ is Union!17957) (regOne!36426 r!11554)))))

(declare-fun b!7115267 () Bool)

(assert (=> b!7115267 (= e!4275709 (nullable!7594 (regOne!36426 (regOne!36426 r!11554))))))

(declare-fun b!7115268 () Bool)

(assert (=> b!7115268 (= e!4275712 ((_ map or) call!649687 call!649684))))

(declare-fun bm!649682 () Bool)

(assert (=> bm!649682 (= call!649689 call!649688)))

(declare-fun bm!649683 () Bool)

(assert (=> bm!649683 (= call!649688 ($colon$colon!2809 (exprs!7451 lt!2560525) (ite (or c!1327897 c!1327896) (regTwo!36426 (regOne!36426 r!11554)) (regOne!36426 r!11554))))))

(declare-fun bm!649684 () Bool)

(assert (=> bm!649684 (= call!649685 call!649686)))

(assert (= (and d!2220990 c!1327895) b!7115265))

(assert (= (and d!2220990 (not c!1327895)) b!7115266))

(assert (= (and b!7115266 c!1327899) b!7115268))

(assert (= (and b!7115266 (not c!1327899)) b!7115259))

(assert (= (and b!7115259 res!2903176) b!7115267))

(assert (= (and b!7115259 c!1327897) b!7115258))

(assert (= (and b!7115259 (not c!1327897)) b!7115261))

(assert (= (and b!7115261 c!1327896) b!7115264))

(assert (= (and b!7115261 (not c!1327896)) b!7115260))

(assert (= (and b!7115260 c!1327898) b!7115263))

(assert (= (and b!7115260 (not c!1327898)) b!7115262))

(assert (= (or b!7115264 b!7115263) bm!649682))

(assert (= (or b!7115264 b!7115263) bm!649684))

(assert (= (or b!7115258 bm!649684) bm!649681))

(assert (= (or b!7115258 bm!649682) bm!649683))

(assert (= (or b!7115268 bm!649681) bm!649679))

(assert (= (or b!7115268 b!7115258) bm!649680))

(assert (=> b!7115267 m!7834576))

(declare-fun m!7834628 () Bool)

(assert (=> b!7115265 m!7834628))

(declare-fun m!7834630 () Bool)

(assert (=> bm!649680 m!7834630))

(declare-fun m!7834632 () Bool)

(assert (=> bm!649679 m!7834632))

(declare-fun m!7834634 () Bool)

(assert (=> bm!649683 m!7834634))

(assert (=> b!7115172 d!2220990))

(declare-fun b!7115269 () Bool)

(declare-fun e!4275714 () (InoxSet Context!13902))

(declare-fun call!649693 () (InoxSet Context!13902))

(declare-fun call!649692 () (InoxSet Context!13902))

(assert (=> b!7115269 (= e!4275714 ((_ map or) call!649693 call!649692))))

(declare-fun b!7115270 () Bool)

(declare-fun c!1327902 () Bool)

(declare-fun e!4275715 () Bool)

(assert (=> b!7115270 (= c!1327902 e!4275715)))

(declare-fun res!2903177 () Bool)

(assert (=> b!7115270 (=> (not res!2903177) (not e!4275715))))

(assert (=> b!7115270 (= res!2903177 ((_ is Concat!26802) r!11554))))

(declare-fun e!4275718 () (InoxSet Context!13902))

(assert (=> b!7115270 (= e!4275718 e!4275714)))

(declare-fun b!7115271 () Bool)

(declare-fun c!1327903 () Bool)

(assert (=> b!7115271 (= c!1327903 ((_ is Star!17957) r!11554))))

(declare-fun e!4275716 () (InoxSet Context!13902))

(declare-fun e!4275717 () (InoxSet Context!13902))

(assert (=> b!7115271 (= e!4275716 e!4275717)))

(declare-fun c!1327904 () Bool)

(declare-fun bm!649685 () Bool)

(declare-fun call!649695 () List!68918)

(declare-fun c!1327901 () Bool)

(declare-fun call!649690 () (InoxSet Context!13902))

(assert (=> bm!649685 (= call!649690 (derivationStepZipperDown!2464 (ite c!1327904 (regTwo!36427 r!11554) (ite c!1327902 (regTwo!36426 r!11554) (ite c!1327901 (regOne!36426 r!11554) (reg!18286 r!11554)))) (ite (or c!1327904 c!1327902) c!9994 (Context!13903 call!649695)) a!1901))))

(declare-fun d!2220992 () Bool)

(declare-fun c!1327900 () Bool)

(assert (=> d!2220992 (= c!1327900 (and ((_ is ElementMatch!17957) r!11554) (= (c!1327860 r!11554) a!1901)))))

(declare-fun e!4275713 () (InoxSet Context!13902))

(assert (=> d!2220992 (= (derivationStepZipperDown!2464 r!11554 c!9994 a!1901) e!4275713)))

(declare-fun b!7115272 () Bool)

(assert (=> b!7115272 (= e!4275714 e!4275716)))

(assert (=> b!7115272 (= c!1327901 ((_ is Concat!26802) r!11554))))

(declare-fun bm!649686 () Bool)

(declare-fun call!649694 () List!68918)

(assert (=> bm!649686 (= call!649693 (derivationStepZipperDown!2464 (ite c!1327904 (regOne!36427 r!11554) (regOne!36426 r!11554)) (ite c!1327904 c!9994 (Context!13903 call!649694)) a!1901))))

(declare-fun b!7115273 () Bool)

(assert (=> b!7115273 (= e!4275717 ((as const (Array Context!13902 Bool)) false))))

(declare-fun b!7115274 () Bool)

(declare-fun call!649691 () (InoxSet Context!13902))

(assert (=> b!7115274 (= e!4275717 call!649691)))

(declare-fun bm!649687 () Bool)

(assert (=> bm!649687 (= call!649692 call!649690)))

(declare-fun b!7115275 () Bool)

(assert (=> b!7115275 (= e!4275716 call!649691)))

(declare-fun b!7115276 () Bool)

(assert (=> b!7115276 (= e!4275713 (store ((as const (Array Context!13902 Bool)) false) c!9994 true))))

(declare-fun b!7115277 () Bool)

(assert (=> b!7115277 (= e!4275713 e!4275718)))

(assert (=> b!7115277 (= c!1327904 ((_ is Union!17957) r!11554))))

(declare-fun b!7115278 () Bool)

(assert (=> b!7115278 (= e!4275715 (nullable!7594 (regOne!36426 r!11554)))))

(declare-fun b!7115279 () Bool)

(assert (=> b!7115279 (= e!4275718 ((_ map or) call!649693 call!649690))))

(declare-fun bm!649688 () Bool)

(assert (=> bm!649688 (= call!649695 call!649694)))

(declare-fun bm!649689 () Bool)

(assert (=> bm!649689 (= call!649694 ($colon$colon!2809 (exprs!7451 c!9994) (ite (or c!1327902 c!1327901) (regTwo!36426 r!11554) r!11554)))))

(declare-fun bm!649690 () Bool)

(assert (=> bm!649690 (= call!649691 call!649692)))

(assert (= (and d!2220992 c!1327900) b!7115276))

(assert (= (and d!2220992 (not c!1327900)) b!7115277))

(assert (= (and b!7115277 c!1327904) b!7115279))

(assert (= (and b!7115277 (not c!1327904)) b!7115270))

(assert (= (and b!7115270 res!2903177) b!7115278))

(assert (= (and b!7115270 c!1327902) b!7115269))

(assert (= (and b!7115270 (not c!1327902)) b!7115272))

(assert (= (and b!7115272 c!1327901) b!7115275))

(assert (= (and b!7115272 (not c!1327901)) b!7115271))

(assert (= (and b!7115271 c!1327903) b!7115274))

(assert (= (and b!7115271 (not c!1327903)) b!7115273))

(assert (= (or b!7115275 b!7115274) bm!649688))

(assert (= (or b!7115275 b!7115274) bm!649690))

(assert (= (or b!7115269 bm!649690) bm!649687))

(assert (= (or b!7115269 bm!649688) bm!649689))

(assert (= (or b!7115279 bm!649687) bm!649685))

(assert (= (or b!7115279 b!7115269) bm!649686))

(assert (=> b!7115278 m!7834544))

(declare-fun m!7834636 () Bool)

(assert (=> b!7115276 m!7834636))

(declare-fun m!7834638 () Bool)

(assert (=> bm!649686 m!7834638))

(declare-fun m!7834640 () Bool)

(assert (=> bm!649685 m!7834640))

(declare-fun m!7834642 () Bool)

(assert (=> bm!649689 m!7834642))

(assert (=> b!7115172 d!2220992))

(declare-fun d!2220994 () Bool)

(declare-fun forall!16852 (List!68918 Int) Bool)

(assert (=> d!2220994 (forall!16852 (++!16109 lt!2560530 (exprs!7451 auxCtx!45)) lambda!432287)))

(declare-fun lt!2560551 () Unit!162585)

(declare-fun choose!54885 (List!68918 List!68918 Int) Unit!162585)

(assert (=> d!2220994 (= lt!2560551 (choose!54885 lt!2560530 (exprs!7451 auxCtx!45) lambda!432287))))

(assert (=> d!2220994 (forall!16852 lt!2560530 lambda!432287)))

(assert (=> d!2220994 (= (lemmaConcatPreservesForall!1242 lt!2560530 (exprs!7451 auxCtx!45) lambda!432287) lt!2560551)))

(declare-fun bs!1885465 () Bool)

(assert (= bs!1885465 d!2220994))

(assert (=> bs!1885465 m!7834568))

(assert (=> bs!1885465 m!7834568))

(declare-fun m!7834644 () Bool)

(assert (=> bs!1885465 m!7834644))

(declare-fun m!7834646 () Bool)

(assert (=> bs!1885465 m!7834646))

(declare-fun m!7834648 () Bool)

(assert (=> bs!1885465 m!7834648))

(assert (=> b!7115172 d!2220994))

(declare-fun d!2220996 () Bool)

(assert (=> d!2220996 (forall!16852 (++!16109 (exprs!7451 c!9994) (exprs!7451 auxCtx!45)) lambda!432287)))

(declare-fun lt!2560552 () Unit!162585)

(assert (=> d!2220996 (= lt!2560552 (choose!54885 (exprs!7451 c!9994) (exprs!7451 auxCtx!45) lambda!432287))))

(assert (=> d!2220996 (forall!16852 (exprs!7451 c!9994) lambda!432287)))

(assert (=> d!2220996 (= (lemmaConcatPreservesForall!1242 (exprs!7451 c!9994) (exprs!7451 auxCtx!45) lambda!432287) lt!2560552)))

(declare-fun bs!1885466 () Bool)

(assert (= bs!1885466 d!2220996))

(assert (=> bs!1885466 m!7834540))

(assert (=> bs!1885466 m!7834540))

(declare-fun m!7834660 () Bool)

(assert (=> bs!1885466 m!7834660))

(declare-fun m!7834662 () Bool)

(assert (=> bs!1885466 m!7834662))

(declare-fun m!7834664 () Bool)

(assert (=> bs!1885466 m!7834664))

(assert (=> b!7115172 d!2220996))

(declare-fun bs!1885467 () Bool)

(declare-fun d!2221000 () Bool)

(assert (= bs!1885467 (and d!2221000 d!2220984)))

(declare-fun lambda!432301 () Int)

(assert (=> bs!1885467 (= lambda!432301 lambda!432297)))

(assert (=> d!2221000 true))

(assert (=> d!2221000 (= (appendTo!940 (derivationStepZipperDown!2464 (regOne!36426 r!11554) lt!2560525 a!1901) auxCtx!45) (map!16294 (derivationStepZipperDown!2464 (regOne!36426 r!11554) lt!2560525 a!1901) lambda!432301))))

(declare-fun bs!1885468 () Bool)

(assert (= bs!1885468 d!2221000))

(assert (=> bs!1885468 m!7834558))

(declare-fun m!7834666 () Bool)

(assert (=> bs!1885468 m!7834666))

(assert (=> b!7115172 d!2221000))

(declare-fun d!2221002 () Bool)

(assert (=> d!2221002 (= ($colon$colon!2809 (exprs!7451 c!9994) (regTwo!36426 r!11554)) (Cons!68794 (regTwo!36426 r!11554) (exprs!7451 c!9994)))))

(assert (=> b!7115172 d!2221002))

(declare-fun bm!649715 () Bool)

(declare-fun call!649722 () Bool)

(declare-fun c!1327925 () Bool)

(assert (=> bm!649715 (= call!649722 (validRegex!9230 (ite c!1327925 (regTwo!36427 r!11554) (regOne!36426 r!11554))))))

(declare-fun b!7115331 () Bool)

(declare-fun res!2903194 () Bool)

(declare-fun e!4275756 () Bool)

(assert (=> b!7115331 (=> res!2903194 e!4275756)))

(assert (=> b!7115331 (= res!2903194 (not ((_ is Concat!26802) r!11554)))))

(declare-fun e!4275751 () Bool)

(assert (=> b!7115331 (= e!4275751 e!4275756)))

(declare-fun b!7115332 () Bool)

(declare-fun e!4275753 () Bool)

(declare-fun e!4275755 () Bool)

(assert (=> b!7115332 (= e!4275753 e!4275755)))

(declare-fun res!2903192 () Bool)

(assert (=> b!7115332 (= res!2903192 (not (nullable!7594 (reg!18286 r!11554))))))

(assert (=> b!7115332 (=> (not res!2903192) (not e!4275755))))

(declare-fun b!7115333 () Bool)

(declare-fun call!649720 () Bool)

(assert (=> b!7115333 (= e!4275755 call!649720)))

(declare-fun d!2221004 () Bool)

(declare-fun res!2903193 () Bool)

(declare-fun e!4275754 () Bool)

(assert (=> d!2221004 (=> res!2903193 e!4275754)))

(assert (=> d!2221004 (= res!2903193 ((_ is ElementMatch!17957) r!11554))))

(assert (=> d!2221004 (= (validRegex!9230 r!11554) e!4275754)))

(declare-fun bm!649716 () Bool)

(declare-fun call!649721 () Bool)

(assert (=> bm!649716 (= call!649721 call!649720)))

(declare-fun b!7115334 () Bool)

(assert (=> b!7115334 (= e!4275754 e!4275753)))

(declare-fun c!1327924 () Bool)

(assert (=> b!7115334 (= c!1327924 ((_ is Star!17957) r!11554))))

(declare-fun b!7115335 () Bool)

(declare-fun e!4275752 () Bool)

(assert (=> b!7115335 (= e!4275752 call!649721)))

(declare-fun b!7115336 () Bool)

(declare-fun res!2903191 () Bool)

(declare-fun e!4275757 () Bool)

(assert (=> b!7115336 (=> (not res!2903191) (not e!4275757))))

(assert (=> b!7115336 (= res!2903191 call!649721)))

(assert (=> b!7115336 (= e!4275751 e!4275757)))

(declare-fun b!7115337 () Bool)

(assert (=> b!7115337 (= e!4275757 call!649722)))

(declare-fun b!7115338 () Bool)

(assert (=> b!7115338 (= e!4275756 e!4275752)))

(declare-fun res!2903195 () Bool)

(assert (=> b!7115338 (=> (not res!2903195) (not e!4275752))))

(assert (=> b!7115338 (= res!2903195 call!649722)))

(declare-fun b!7115339 () Bool)

(assert (=> b!7115339 (= e!4275753 e!4275751)))

(assert (=> b!7115339 (= c!1327925 ((_ is Union!17957) r!11554))))

(declare-fun bm!649717 () Bool)

(assert (=> bm!649717 (= call!649720 (validRegex!9230 (ite c!1327924 (reg!18286 r!11554) (ite c!1327925 (regOne!36427 r!11554) (regTwo!36426 r!11554)))))))

(assert (= (and d!2221004 (not res!2903193)) b!7115334))

(assert (= (and b!7115334 c!1327924) b!7115332))

(assert (= (and b!7115334 (not c!1327924)) b!7115339))

(assert (= (and b!7115332 res!2903192) b!7115333))

(assert (= (and b!7115339 c!1327925) b!7115336))

(assert (= (and b!7115339 (not c!1327925)) b!7115331))

(assert (= (and b!7115336 res!2903191) b!7115337))

(assert (= (and b!7115331 (not res!2903194)) b!7115338))

(assert (= (and b!7115338 res!2903195) b!7115335))

(assert (= (or b!7115336 b!7115335) bm!649716))

(assert (= (or b!7115337 b!7115338) bm!649715))

(assert (= (or b!7115333 bm!649716) bm!649717))

(declare-fun m!7834696 () Bool)

(assert (=> bm!649715 m!7834696))

(declare-fun m!7834698 () Bool)

(assert (=> b!7115332 m!7834698))

(declare-fun m!7834700 () Bool)

(assert (=> bm!649717 m!7834700))

(assert (=> start!692524 d!2221004))

(declare-fun bs!1885471 () Bool)

(declare-fun d!2221016 () Bool)

(assert (= bs!1885471 (and d!2221016 b!7115164)))

(declare-fun lambda!432304 () Int)

(assert (=> bs!1885471 (= lambda!432304 lambda!432287)))

(declare-fun bs!1885472 () Bool)

(assert (= bs!1885472 (and d!2221016 d!2220988)))

(assert (=> bs!1885472 (= lambda!432304 lambda!432300)))

(assert (=> d!2221016 (= (inv!87755 c!9994) (forall!16852 (exprs!7451 c!9994) lambda!432304))))

(declare-fun bs!1885473 () Bool)

(assert (= bs!1885473 d!2221016))

(declare-fun m!7834702 () Bool)

(assert (=> bs!1885473 m!7834702))

(assert (=> start!692524 d!2221016))

(declare-fun bs!1885474 () Bool)

(declare-fun d!2221018 () Bool)

(assert (= bs!1885474 (and d!2221018 b!7115164)))

(declare-fun lambda!432305 () Int)

(assert (=> bs!1885474 (= lambda!432305 lambda!432287)))

(declare-fun bs!1885475 () Bool)

(assert (= bs!1885475 (and d!2221018 d!2220988)))

(assert (=> bs!1885475 (= lambda!432305 lambda!432300)))

(declare-fun bs!1885476 () Bool)

(assert (= bs!1885476 (and d!2221018 d!2221016)))

(assert (=> bs!1885476 (= lambda!432305 lambda!432304)))

(assert (=> d!2221018 (= (inv!87755 auxCtx!45) (forall!16852 (exprs!7451 auxCtx!45) lambda!432305))))

(declare-fun bs!1885477 () Bool)

(assert (= bs!1885477 d!2221018))

(declare-fun m!7834704 () Bool)

(assert (=> bs!1885477 m!7834704))

(assert (=> start!692524 d!2221018))

(declare-fun bm!649718 () Bool)

(declare-fun call!649725 () Bool)

(declare-fun c!1327928 () Bool)

(assert (=> bm!649718 (= call!649725 (validRegex!9230 (ite c!1327928 (regTwo!36427 (regTwo!36426 r!11554)) (regOne!36426 (regTwo!36426 r!11554)))))))

(declare-fun b!7115340 () Bool)

(declare-fun res!2903199 () Bool)

(declare-fun e!4275763 () Bool)

(assert (=> b!7115340 (=> res!2903199 e!4275763)))

(assert (=> b!7115340 (= res!2903199 (not ((_ is Concat!26802) (regTwo!36426 r!11554))))))

(declare-fun e!4275758 () Bool)

(assert (=> b!7115340 (= e!4275758 e!4275763)))

(declare-fun b!7115341 () Bool)

(declare-fun e!4275760 () Bool)

(declare-fun e!4275762 () Bool)

(assert (=> b!7115341 (= e!4275760 e!4275762)))

(declare-fun res!2903197 () Bool)

(assert (=> b!7115341 (= res!2903197 (not (nullable!7594 (reg!18286 (regTwo!36426 r!11554)))))))

(assert (=> b!7115341 (=> (not res!2903197) (not e!4275762))))

(declare-fun b!7115342 () Bool)

(declare-fun call!649723 () Bool)

(assert (=> b!7115342 (= e!4275762 call!649723)))

(declare-fun d!2221020 () Bool)

(declare-fun res!2903198 () Bool)

(declare-fun e!4275761 () Bool)

(assert (=> d!2221020 (=> res!2903198 e!4275761)))

(assert (=> d!2221020 (= res!2903198 ((_ is ElementMatch!17957) (regTwo!36426 r!11554)))))

(assert (=> d!2221020 (= (validRegex!9230 (regTwo!36426 r!11554)) e!4275761)))

(declare-fun bm!649719 () Bool)

(declare-fun call!649724 () Bool)

(assert (=> bm!649719 (= call!649724 call!649723)))

(declare-fun b!7115343 () Bool)

(assert (=> b!7115343 (= e!4275761 e!4275760)))

(declare-fun c!1327927 () Bool)

(assert (=> b!7115343 (= c!1327927 ((_ is Star!17957) (regTwo!36426 r!11554)))))

(declare-fun b!7115344 () Bool)

(declare-fun e!4275759 () Bool)

(assert (=> b!7115344 (= e!4275759 call!649724)))

(declare-fun b!7115345 () Bool)

(declare-fun res!2903196 () Bool)

(declare-fun e!4275764 () Bool)

(assert (=> b!7115345 (=> (not res!2903196) (not e!4275764))))

(assert (=> b!7115345 (= res!2903196 call!649724)))

(assert (=> b!7115345 (= e!4275758 e!4275764)))

(declare-fun b!7115346 () Bool)

(assert (=> b!7115346 (= e!4275764 call!649725)))

(declare-fun b!7115347 () Bool)

(assert (=> b!7115347 (= e!4275763 e!4275759)))

(declare-fun res!2903200 () Bool)

(assert (=> b!7115347 (=> (not res!2903200) (not e!4275759))))

(assert (=> b!7115347 (= res!2903200 call!649725)))

(declare-fun b!7115348 () Bool)

(assert (=> b!7115348 (= e!4275760 e!4275758)))

(assert (=> b!7115348 (= c!1327928 ((_ is Union!17957) (regTwo!36426 r!11554)))))

(declare-fun bm!649720 () Bool)

(assert (=> bm!649720 (= call!649723 (validRegex!9230 (ite c!1327927 (reg!18286 (regTwo!36426 r!11554)) (ite c!1327928 (regOne!36427 (regTwo!36426 r!11554)) (regTwo!36426 (regTwo!36426 r!11554))))))))

(assert (= (and d!2221020 (not res!2903198)) b!7115343))

(assert (= (and b!7115343 c!1327927) b!7115341))

(assert (= (and b!7115343 (not c!1327927)) b!7115348))

(assert (= (and b!7115341 res!2903197) b!7115342))

(assert (= (and b!7115348 c!1327928) b!7115345))

(assert (= (and b!7115348 (not c!1327928)) b!7115340))

(assert (= (and b!7115345 res!2903196) b!7115346))

(assert (= (and b!7115340 (not res!2903199)) b!7115347))

(assert (= (and b!7115347 res!2903200) b!7115344))

(assert (= (or b!7115345 b!7115344) bm!649719))

(assert (= (or b!7115346 b!7115347) bm!649718))

(assert (= (or b!7115342 bm!649719) bm!649720))

(declare-fun m!7834706 () Bool)

(assert (=> bm!649718 m!7834706))

(declare-fun m!7834708 () Bool)

(assert (=> b!7115341 m!7834708))

(declare-fun m!7834710 () Bool)

(assert (=> bm!649720 m!7834710))

(assert (=> b!7115164 d!2221020))

(declare-fun b!7115350 () Bool)

(declare-fun e!4275766 () List!68918)

(assert (=> b!7115350 (= e!4275766 (Cons!68794 (h!75242 (exprs!7451 c!9994)) (++!16109 (t!382763 (exprs!7451 c!9994)) (exprs!7451 auxCtx!45))))))

(declare-fun b!7115349 () Bool)

(assert (=> b!7115349 (= e!4275766 (exprs!7451 auxCtx!45))))

(declare-fun d!2221022 () Bool)

(declare-fun e!4275765 () Bool)

(assert (=> d!2221022 e!4275765))

(declare-fun res!2903201 () Bool)

(assert (=> d!2221022 (=> (not res!2903201) (not e!4275765))))

(declare-fun lt!2560561 () List!68918)

(assert (=> d!2221022 (= res!2903201 (= (content!14037 lt!2560561) ((_ map or) (content!14037 (exprs!7451 c!9994)) (content!14037 (exprs!7451 auxCtx!45)))))))

(assert (=> d!2221022 (= lt!2560561 e!4275766)))

(declare-fun c!1327929 () Bool)

(assert (=> d!2221022 (= c!1327929 ((_ is Nil!68794) (exprs!7451 c!9994)))))

(assert (=> d!2221022 (= (++!16109 (exprs!7451 c!9994) (exprs!7451 auxCtx!45)) lt!2560561)))

(declare-fun b!7115351 () Bool)

(declare-fun res!2903202 () Bool)

(assert (=> b!7115351 (=> (not res!2903202) (not e!4275765))))

(assert (=> b!7115351 (= res!2903202 (= (size!41412 lt!2560561) (+ (size!41412 (exprs!7451 c!9994)) (size!41412 (exprs!7451 auxCtx!45)))))))

(declare-fun b!7115352 () Bool)

(assert (=> b!7115352 (= e!4275765 (or (not (= (exprs!7451 auxCtx!45) Nil!68794)) (= lt!2560561 (exprs!7451 c!9994))))))

(assert (= (and d!2221022 c!1327929) b!7115349))

(assert (= (and d!2221022 (not c!1327929)) b!7115350))

(assert (= (and d!2221022 res!2903201) b!7115351))

(assert (= (and b!7115351 res!2903202) b!7115352))

(declare-fun m!7834712 () Bool)

(assert (=> b!7115350 m!7834712))

(declare-fun m!7834714 () Bool)

(assert (=> d!2221022 m!7834714))

(declare-fun m!7834716 () Bool)

(assert (=> d!2221022 m!7834716))

(assert (=> d!2221022 m!7834602))

(declare-fun m!7834718 () Bool)

(assert (=> b!7115351 m!7834718))

(declare-fun m!7834720 () Bool)

(assert (=> b!7115351 m!7834720))

(assert (=> b!7115351 m!7834612))

(assert (=> b!7115164 d!2221022))

(assert (=> b!7115164 d!2220996))

(declare-fun b!7115353 () Bool)

(declare-fun e!4275768 () (InoxSet Context!13902))

(declare-fun call!649729 () (InoxSet Context!13902))

(declare-fun call!649728 () (InoxSet Context!13902))

(assert (=> b!7115353 (= e!4275768 ((_ map or) call!649729 call!649728))))

(declare-fun b!7115354 () Bool)

(declare-fun c!1327932 () Bool)

(declare-fun e!4275769 () Bool)

(assert (=> b!7115354 (= c!1327932 e!4275769)))

(declare-fun res!2903203 () Bool)

(assert (=> b!7115354 (=> (not res!2903203) (not e!4275769))))

(assert (=> b!7115354 (= res!2903203 ((_ is Concat!26802) (regOne!36426 r!11554)))))

(declare-fun e!4275772 () (InoxSet Context!13902))

(assert (=> b!7115354 (= e!4275772 e!4275768)))

(declare-fun b!7115355 () Bool)

(declare-fun c!1327933 () Bool)

(assert (=> b!7115355 (= c!1327933 ((_ is Star!17957) (regOne!36426 r!11554)))))

(declare-fun e!4275770 () (InoxSet Context!13902))

(declare-fun e!4275771 () (InoxSet Context!13902))

(assert (=> b!7115355 (= e!4275770 e!4275771)))

(declare-fun bm!649721 () Bool)

(declare-fun call!649726 () (InoxSet Context!13902))

(declare-fun c!1327931 () Bool)

(declare-fun c!1327934 () Bool)

(declare-fun call!649731 () List!68918)

(assert (=> bm!649721 (= call!649726 (derivationStepZipperDown!2464 (ite c!1327934 (regTwo!36427 (regOne!36426 r!11554)) (ite c!1327932 (regTwo!36426 (regOne!36426 r!11554)) (ite c!1327931 (regOne!36426 (regOne!36426 r!11554)) (reg!18286 (regOne!36426 r!11554))))) (ite (or c!1327934 c!1327932) (Context!13903 ($colon$colon!2809 lt!2560532 (regTwo!36426 r!11554))) (Context!13903 call!649731)) a!1901))))

(declare-fun d!2221024 () Bool)

(declare-fun c!1327930 () Bool)

(assert (=> d!2221024 (= c!1327930 (and ((_ is ElementMatch!17957) (regOne!36426 r!11554)) (= (c!1327860 (regOne!36426 r!11554)) a!1901)))))

(declare-fun e!4275767 () (InoxSet Context!13902))

(assert (=> d!2221024 (= (derivationStepZipperDown!2464 (regOne!36426 r!11554) (Context!13903 ($colon$colon!2809 lt!2560532 (regTwo!36426 r!11554))) a!1901) e!4275767)))

(declare-fun b!7115356 () Bool)

(assert (=> b!7115356 (= e!4275768 e!4275770)))

(assert (=> b!7115356 (= c!1327931 ((_ is Concat!26802) (regOne!36426 r!11554)))))

(declare-fun call!649730 () List!68918)

(declare-fun bm!649722 () Bool)

(assert (=> bm!649722 (= call!649729 (derivationStepZipperDown!2464 (ite c!1327934 (regOne!36427 (regOne!36426 r!11554)) (regOne!36426 (regOne!36426 r!11554))) (ite c!1327934 (Context!13903 ($colon$colon!2809 lt!2560532 (regTwo!36426 r!11554))) (Context!13903 call!649730)) a!1901))))

(declare-fun b!7115357 () Bool)

(assert (=> b!7115357 (= e!4275771 ((as const (Array Context!13902 Bool)) false))))

(declare-fun b!7115358 () Bool)

(declare-fun call!649727 () (InoxSet Context!13902))

(assert (=> b!7115358 (= e!4275771 call!649727)))

(declare-fun bm!649723 () Bool)

(assert (=> bm!649723 (= call!649728 call!649726)))

(declare-fun b!7115359 () Bool)

(assert (=> b!7115359 (= e!4275770 call!649727)))

(declare-fun b!7115360 () Bool)

(assert (=> b!7115360 (= e!4275767 (store ((as const (Array Context!13902 Bool)) false) (Context!13903 ($colon$colon!2809 lt!2560532 (regTwo!36426 r!11554))) true))))

(declare-fun b!7115361 () Bool)

(assert (=> b!7115361 (= e!4275767 e!4275772)))

(assert (=> b!7115361 (= c!1327934 ((_ is Union!17957) (regOne!36426 r!11554)))))

(declare-fun b!7115362 () Bool)

(assert (=> b!7115362 (= e!4275769 (nullable!7594 (regOne!36426 (regOne!36426 r!11554))))))

(declare-fun b!7115363 () Bool)

(assert (=> b!7115363 (= e!4275772 ((_ map or) call!649729 call!649726))))

(declare-fun bm!649724 () Bool)

(assert (=> bm!649724 (= call!649731 call!649730)))

(declare-fun bm!649725 () Bool)

(assert (=> bm!649725 (= call!649730 ($colon$colon!2809 (exprs!7451 (Context!13903 ($colon$colon!2809 lt!2560532 (regTwo!36426 r!11554)))) (ite (or c!1327932 c!1327931) (regTwo!36426 (regOne!36426 r!11554)) (regOne!36426 r!11554))))))

(declare-fun bm!649726 () Bool)

(assert (=> bm!649726 (= call!649727 call!649728)))

(assert (= (and d!2221024 c!1327930) b!7115360))

(assert (= (and d!2221024 (not c!1327930)) b!7115361))

(assert (= (and b!7115361 c!1327934) b!7115363))

(assert (= (and b!7115361 (not c!1327934)) b!7115354))

(assert (= (and b!7115354 res!2903203) b!7115362))

(assert (= (and b!7115354 c!1327932) b!7115353))

(assert (= (and b!7115354 (not c!1327932)) b!7115356))

(assert (= (and b!7115356 c!1327931) b!7115359))

(assert (= (and b!7115356 (not c!1327931)) b!7115355))

(assert (= (and b!7115355 c!1327933) b!7115358))

(assert (= (and b!7115355 (not c!1327933)) b!7115357))

(assert (= (or b!7115359 b!7115358) bm!649724))

(assert (= (or b!7115359 b!7115358) bm!649726))

(assert (= (or b!7115353 bm!649726) bm!649723))

(assert (= (or b!7115353 bm!649724) bm!649725))

(assert (= (or b!7115363 bm!649723) bm!649721))

(assert (= (or b!7115363 b!7115353) bm!649722))

(assert (=> b!7115362 m!7834576))

(declare-fun m!7834732 () Bool)

(assert (=> b!7115360 m!7834732))

(declare-fun m!7834734 () Bool)

(assert (=> bm!649722 m!7834734))

(declare-fun m!7834736 () Bool)

(assert (=> bm!649721 m!7834736))

(declare-fun m!7834738 () Bool)

(assert (=> bm!649725 m!7834738))

(assert (=> b!7115170 d!2221024))

(declare-fun d!2221028 () Bool)

(assert (=> d!2221028 (= ($colon$colon!2809 lt!2560532 (regTwo!36426 r!11554)) (Cons!68794 (regTwo!36426 r!11554) lt!2560532))))

(assert (=> b!7115170 d!2221028))

(declare-fun b!7115364 () Bool)

(declare-fun e!4275774 () (InoxSet Context!13902))

(declare-fun call!649735 () (InoxSet Context!13902))

(declare-fun call!649734 () (InoxSet Context!13902))

(assert (=> b!7115364 (= e!4275774 ((_ map or) call!649735 call!649734))))

(declare-fun b!7115365 () Bool)

(declare-fun c!1327937 () Bool)

(declare-fun e!4275775 () Bool)

(assert (=> b!7115365 (= c!1327937 e!4275775)))

(declare-fun res!2903204 () Bool)

(assert (=> b!7115365 (=> (not res!2903204) (not e!4275775))))

(assert (=> b!7115365 (= res!2903204 ((_ is Concat!26802) r!11554))))

(declare-fun e!4275778 () (InoxSet Context!13902))

(assert (=> b!7115365 (= e!4275778 e!4275774)))

(declare-fun b!7115366 () Bool)

(declare-fun c!1327938 () Bool)

(assert (=> b!7115366 (= c!1327938 ((_ is Star!17957) r!11554))))

(declare-fun e!4275776 () (InoxSet Context!13902))

(declare-fun e!4275777 () (InoxSet Context!13902))

(assert (=> b!7115366 (= e!4275776 e!4275777)))

(declare-fun c!1327939 () Bool)

(declare-fun call!649737 () List!68918)

(declare-fun call!649732 () (InoxSet Context!13902))

(declare-fun c!1327936 () Bool)

(declare-fun bm!649727 () Bool)

(assert (=> bm!649727 (= call!649732 (derivationStepZipperDown!2464 (ite c!1327939 (regTwo!36427 r!11554) (ite c!1327937 (regTwo!36426 r!11554) (ite c!1327936 (regOne!36426 r!11554) (reg!18286 r!11554)))) (ite (or c!1327939 c!1327937) (Context!13903 lt!2560532) (Context!13903 call!649737)) a!1901))))

(declare-fun d!2221032 () Bool)

(declare-fun c!1327935 () Bool)

(assert (=> d!2221032 (= c!1327935 (and ((_ is ElementMatch!17957) r!11554) (= (c!1327860 r!11554) a!1901)))))

(declare-fun e!4275773 () (InoxSet Context!13902))

(assert (=> d!2221032 (= (derivationStepZipperDown!2464 r!11554 (Context!13903 lt!2560532) a!1901) e!4275773)))

(declare-fun b!7115367 () Bool)

(assert (=> b!7115367 (= e!4275774 e!4275776)))

(assert (=> b!7115367 (= c!1327936 ((_ is Concat!26802) r!11554))))

(declare-fun call!649736 () List!68918)

(declare-fun bm!649728 () Bool)

(assert (=> bm!649728 (= call!649735 (derivationStepZipperDown!2464 (ite c!1327939 (regOne!36427 r!11554) (regOne!36426 r!11554)) (ite c!1327939 (Context!13903 lt!2560532) (Context!13903 call!649736)) a!1901))))

(declare-fun b!7115368 () Bool)

(assert (=> b!7115368 (= e!4275777 ((as const (Array Context!13902 Bool)) false))))

(declare-fun b!7115369 () Bool)

(declare-fun call!649733 () (InoxSet Context!13902))

(assert (=> b!7115369 (= e!4275777 call!649733)))

(declare-fun bm!649729 () Bool)

(assert (=> bm!649729 (= call!649734 call!649732)))

(declare-fun b!7115370 () Bool)

(assert (=> b!7115370 (= e!4275776 call!649733)))

(declare-fun b!7115371 () Bool)

(assert (=> b!7115371 (= e!4275773 (store ((as const (Array Context!13902 Bool)) false) (Context!13903 lt!2560532) true))))

(declare-fun b!7115372 () Bool)

(assert (=> b!7115372 (= e!4275773 e!4275778)))

(assert (=> b!7115372 (= c!1327939 ((_ is Union!17957) r!11554))))

(declare-fun b!7115373 () Bool)

(assert (=> b!7115373 (= e!4275775 (nullable!7594 (regOne!36426 r!11554)))))

(declare-fun b!7115374 () Bool)

(assert (=> b!7115374 (= e!4275778 ((_ map or) call!649735 call!649732))))

(declare-fun bm!649730 () Bool)

(assert (=> bm!649730 (= call!649737 call!649736)))

(declare-fun bm!649731 () Bool)

(assert (=> bm!649731 (= call!649736 ($colon$colon!2809 (exprs!7451 (Context!13903 lt!2560532)) (ite (or c!1327937 c!1327936) (regTwo!36426 r!11554) r!11554)))))

(declare-fun bm!649732 () Bool)

(assert (=> bm!649732 (= call!649733 call!649734)))

(assert (= (and d!2221032 c!1327935) b!7115371))

(assert (= (and d!2221032 (not c!1327935)) b!7115372))

(assert (= (and b!7115372 c!1327939) b!7115374))

(assert (= (and b!7115372 (not c!1327939)) b!7115365))

(assert (= (and b!7115365 res!2903204) b!7115373))

(assert (= (and b!7115365 c!1327937) b!7115364))

(assert (= (and b!7115365 (not c!1327937)) b!7115367))

(assert (= (and b!7115367 c!1327936) b!7115370))

(assert (= (and b!7115367 (not c!1327936)) b!7115366))

(assert (= (and b!7115366 c!1327938) b!7115369))

(assert (= (and b!7115366 (not c!1327938)) b!7115368))

(assert (= (or b!7115370 b!7115369) bm!649730))

(assert (= (or b!7115370 b!7115369) bm!649732))

(assert (= (or b!7115364 bm!649732) bm!649729))

(assert (= (or b!7115364 bm!649730) bm!649731))

(assert (= (or b!7115374 bm!649729) bm!649727))

(assert (= (or b!7115374 b!7115364) bm!649728))

(assert (=> b!7115373 m!7834544))

(declare-fun m!7834742 () Bool)

(assert (=> b!7115371 m!7834742))

(declare-fun m!7834744 () Bool)

(assert (=> bm!649728 m!7834744))

(declare-fun m!7834746 () Bool)

(assert (=> bm!649727 m!7834746))

(declare-fun m!7834748 () Bool)

(assert (=> bm!649731 m!7834748))

(assert (=> b!7115170 d!2221032))

(declare-fun d!2221034 () Bool)

(declare-fun nullableFct!2943 (Regex!17957) Bool)

(assert (=> d!2221034 (= (nullable!7594 (regOne!36426 r!11554)) (nullableFct!2943 (regOne!36426 r!11554)))))

(declare-fun bs!1885482 () Bool)

(assert (= bs!1885482 d!2221034))

(declare-fun m!7834750 () Bool)

(assert (=> bs!1885482 m!7834750))

(assert (=> b!7115169 d!2221034))

(declare-fun b!7115406 () Bool)

(declare-fun e!4275795 () Bool)

(declare-fun tp!1958005 () Bool)

(declare-fun tp!1958007 () Bool)

(assert (=> b!7115406 (= e!4275795 (and tp!1958005 tp!1958007))))

(declare-fun b!7115404 () Bool)

(declare-fun tp!1958006 () Bool)

(declare-fun tp!1958003 () Bool)

(assert (=> b!7115404 (= e!4275795 (and tp!1958006 tp!1958003))))

(declare-fun b!7115405 () Bool)

(declare-fun tp!1958004 () Bool)

(assert (=> b!7115405 (= e!4275795 tp!1958004)))

(declare-fun b!7115403 () Bool)

(assert (=> b!7115403 (= e!4275795 tp_is_empty!45147)))

(assert (=> b!7115167 (= tp!1957991 e!4275795)))

(assert (= (and b!7115167 ((_ is ElementMatch!17957) (reg!18286 r!11554))) b!7115403))

(assert (= (and b!7115167 ((_ is Concat!26802) (reg!18286 r!11554))) b!7115404))

(assert (= (and b!7115167 ((_ is Star!17957) (reg!18286 r!11554))) b!7115405))

(assert (= (and b!7115167 ((_ is Union!17957) (reg!18286 r!11554))) b!7115406))

(declare-fun b!7115410 () Bool)

(declare-fun e!4275796 () Bool)

(declare-fun tp!1958010 () Bool)

(declare-fun tp!1958012 () Bool)

(assert (=> b!7115410 (= e!4275796 (and tp!1958010 tp!1958012))))

(declare-fun b!7115408 () Bool)

(declare-fun tp!1958011 () Bool)

(declare-fun tp!1958008 () Bool)

(assert (=> b!7115408 (= e!4275796 (and tp!1958011 tp!1958008))))

(declare-fun b!7115409 () Bool)

(declare-fun tp!1958009 () Bool)

(assert (=> b!7115409 (= e!4275796 tp!1958009)))

(declare-fun b!7115407 () Bool)

(assert (=> b!7115407 (= e!4275796 tp_is_empty!45147)))

(assert (=> b!7115162 (= tp!1957987 e!4275796)))

(assert (= (and b!7115162 ((_ is ElementMatch!17957) (regOne!36426 r!11554))) b!7115407))

(assert (= (and b!7115162 ((_ is Concat!26802) (regOne!36426 r!11554))) b!7115408))

(assert (= (and b!7115162 ((_ is Star!17957) (regOne!36426 r!11554))) b!7115409))

(assert (= (and b!7115162 ((_ is Union!17957) (regOne!36426 r!11554))) b!7115410))

(declare-fun b!7115414 () Bool)

(declare-fun e!4275797 () Bool)

(declare-fun tp!1958015 () Bool)

(declare-fun tp!1958017 () Bool)

(assert (=> b!7115414 (= e!4275797 (and tp!1958015 tp!1958017))))

(declare-fun b!7115412 () Bool)

(declare-fun tp!1958016 () Bool)

(declare-fun tp!1958013 () Bool)

(assert (=> b!7115412 (= e!4275797 (and tp!1958016 tp!1958013))))

(declare-fun b!7115413 () Bool)

(declare-fun tp!1958014 () Bool)

(assert (=> b!7115413 (= e!4275797 tp!1958014)))

(declare-fun b!7115411 () Bool)

(assert (=> b!7115411 (= e!4275797 tp_is_empty!45147)))

(assert (=> b!7115162 (= tp!1957986 e!4275797)))

(assert (= (and b!7115162 ((_ is ElementMatch!17957) (regTwo!36426 r!11554))) b!7115411))

(assert (= (and b!7115162 ((_ is Concat!26802) (regTwo!36426 r!11554))) b!7115412))

(assert (= (and b!7115162 ((_ is Star!17957) (regTwo!36426 r!11554))) b!7115413))

(assert (= (and b!7115162 ((_ is Union!17957) (regTwo!36426 r!11554))) b!7115414))

(declare-fun b!7115419 () Bool)

(declare-fun e!4275800 () Bool)

(declare-fun tp!1958022 () Bool)

(declare-fun tp!1958023 () Bool)

(assert (=> b!7115419 (= e!4275800 (and tp!1958022 tp!1958023))))

(assert (=> b!7115171 (= tp!1957989 e!4275800)))

(assert (= (and b!7115171 ((_ is Cons!68794) (exprs!7451 c!9994))) b!7115419))

(declare-fun b!7115423 () Bool)

(declare-fun e!4275801 () Bool)

(declare-fun tp!1958026 () Bool)

(declare-fun tp!1958028 () Bool)

(assert (=> b!7115423 (= e!4275801 (and tp!1958026 tp!1958028))))

(declare-fun b!7115421 () Bool)

(declare-fun tp!1958027 () Bool)

(declare-fun tp!1958024 () Bool)

(assert (=> b!7115421 (= e!4275801 (and tp!1958027 tp!1958024))))

(declare-fun b!7115422 () Bool)

(declare-fun tp!1958025 () Bool)

(assert (=> b!7115422 (= e!4275801 tp!1958025)))

(declare-fun b!7115420 () Bool)

(assert (=> b!7115420 (= e!4275801 tp_is_empty!45147)))

(assert (=> b!7115163 (= tp!1957990 e!4275801)))

(assert (= (and b!7115163 ((_ is ElementMatch!17957) (regOne!36427 r!11554))) b!7115420))

(assert (= (and b!7115163 ((_ is Concat!26802) (regOne!36427 r!11554))) b!7115421))

(assert (= (and b!7115163 ((_ is Star!17957) (regOne!36427 r!11554))) b!7115422))

(assert (= (and b!7115163 ((_ is Union!17957) (regOne!36427 r!11554))) b!7115423))

(declare-fun b!7115427 () Bool)

(declare-fun e!4275802 () Bool)

(declare-fun tp!1958031 () Bool)

(declare-fun tp!1958033 () Bool)

(assert (=> b!7115427 (= e!4275802 (and tp!1958031 tp!1958033))))

(declare-fun b!7115425 () Bool)

(declare-fun tp!1958032 () Bool)

(declare-fun tp!1958029 () Bool)

(assert (=> b!7115425 (= e!4275802 (and tp!1958032 tp!1958029))))

(declare-fun b!7115426 () Bool)

(declare-fun tp!1958030 () Bool)

(assert (=> b!7115426 (= e!4275802 tp!1958030)))

(declare-fun b!7115424 () Bool)

(assert (=> b!7115424 (= e!4275802 tp_is_empty!45147)))

(assert (=> b!7115163 (= tp!1957992 e!4275802)))

(assert (= (and b!7115163 ((_ is ElementMatch!17957) (regTwo!36427 r!11554))) b!7115424))

(assert (= (and b!7115163 ((_ is Concat!26802) (regTwo!36427 r!11554))) b!7115425))

(assert (= (and b!7115163 ((_ is Star!17957) (regTwo!36427 r!11554))) b!7115426))

(assert (= (and b!7115163 ((_ is Union!17957) (regTwo!36427 r!11554))) b!7115427))

(declare-fun b!7115428 () Bool)

(declare-fun e!4275803 () Bool)

(declare-fun tp!1958034 () Bool)

(declare-fun tp!1958035 () Bool)

(assert (=> b!7115428 (= e!4275803 (and tp!1958034 tp!1958035))))

(assert (=> b!7115168 (= tp!1957988 e!4275803)))

(assert (= (and b!7115168 ((_ is Cons!68794) (exprs!7451 auxCtx!45))) b!7115428))

(check-sat (not bm!649683) (not b!7115404) (not bm!649720) (not bm!649715) (not b!7115405) (not bm!649722) (not bm!649727) (not b!7115225) (not d!2221034) (not b!7115278) (not bm!649728) (not bm!649665) (not b!7115406) (not b!7115427) (not d!2221022) (not b!7115410) (not bm!649689) (not b!7115423) (not b!7115351) (not bm!649718) (not b!7115373) (not bm!649680) (not b!7115412) (not bm!649685) (not b!7115414) (not d!2220984) (not b!7115226) (not d!2220994) (not b!7115332) (not b!7115413) (not d!2221016) (not b!7115341) (not bm!649661) (not bm!649731) (not b!7115206) (not bm!649679) (not b!7115422) (not bm!649662) (not bm!649721) (not bm!649725) (not b!7115419) (not bm!649686) (not b!7115408) (not b!7115425) (not b!7115421) (not d!2220978) (not d!2221000) (not d!2220988) (not b!7115267) (not d!2221018) (not b!7115428) (not d!2220996) (not b!7115426) (not b!7115362) tp_is_empty!45147 (not bm!649717) (not b!7115409) (not b!7115350))
(check-sat)
