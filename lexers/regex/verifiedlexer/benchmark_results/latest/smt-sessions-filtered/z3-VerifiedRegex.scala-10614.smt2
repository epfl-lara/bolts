; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545486 () Bool)

(assert start!545486)

(declare-fun res!2193283 () Bool)

(declare-fun e!3213705 () Bool)

(assert (=> start!545486 (=> (not res!2193283) (not e!3213705))))

(declare-datatypes ((C!29304 0))(
  ( (C!29305 (val!24304 Int)) )
))
(declare-datatypes ((Regex!14519 0))(
  ( (ElementMatch!14519 (c!887444 C!29304)) (Concat!23364 (regOne!29550 Regex!14519) (regTwo!29550 Regex!14519)) (EmptyExpr!14519) (Star!14519 (reg!14848 Regex!14519)) (EmptyLang!14519) (Union!14519 (regOne!29551 Regex!14519) (regTwo!29551 Regex!14519)) )
))
(declare-fun expr!117 () Regex!14519)

(declare-fun validRegex!6374 (Regex!14519) Bool)

(assert (=> start!545486 (= res!2193283 (validRegex!6374 expr!117))))

(assert (=> start!545486 e!3213705))

(declare-fun e!3213706 () Bool)

(assert (=> start!545486 e!3213706))

(declare-datatypes ((List!59954 0))(
  ( (Nil!59830) (Cons!59830 (h!66278 Regex!14519) (t!373015 List!59954)) )
))
(declare-datatypes ((Context!7806 0))(
  ( (Context!7807 (exprs!4403 List!59954)) )
))
(declare-fun ctx!100 () Context!7806)

(declare-fun e!3213701 () Bool)

(declare-fun inv!79478 (Context!7806) Bool)

(assert (=> start!545486 (and (inv!79478 ctx!100) e!3213701)))

(declare-fun tp_is_empty!38187 () Bool)

(assert (=> start!545486 tp_is_empty!38187))

(declare-fun b!5156176 () Bool)

(declare-fun tp!1443463 () Bool)

(declare-fun tp!1443459 () Bool)

(assert (=> b!5156176 (= e!3213706 (and tp!1443463 tp!1443459))))

(declare-fun e!3213703 () Bool)

(declare-fun b!5156177 () Bool)

(declare-fun a!1296 () C!29304)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1295 ((InoxSet Context!7806)) Bool)

(declare-fun derivationStepZipperDown!176 (Regex!14519 Context!7806 C!29304) (InoxSet Context!7806))

(assert (=> b!5156177 (= e!3213703 (not (lostCauseZipper!1295 (derivationStepZipperDown!176 expr!117 ctx!100 a!1296))))))

(declare-fun lt!2121988 () Context!7806)

(assert (=> b!5156177 (lostCauseZipper!1295 (derivationStepZipperDown!176 (regOne!29550 expr!117) lt!2121988 a!1296))))

(declare-datatypes ((Unit!151259 0))(
  ( (Unit!151260) )
))
(declare-fun lt!2121989 () Unit!151259)

(declare-fun lemmaLostCauseFixPointDerivDown!66 (Regex!14519 Context!7806 C!29304) Unit!151259)

(assert (=> b!5156177 (= lt!2121989 (lemmaLostCauseFixPointDerivDown!66 (regOne!29550 expr!117) lt!2121988 a!1296))))

(declare-fun b!5156178 () Bool)

(declare-fun tp!1443462 () Bool)

(declare-fun tp!1443460 () Bool)

(assert (=> b!5156178 (= e!3213706 (and tp!1443462 tp!1443460))))

(declare-fun b!5156179 () Bool)

(assert (=> b!5156179 (= e!3213705 e!3213703)))

(declare-fun res!2193287 () Bool)

(assert (=> b!5156179 (=> (not res!2193287) (not e!3213703))))

(assert (=> b!5156179 (= res!2193287 (validRegex!6374 (regOne!29550 expr!117)))))

(declare-fun $colon$colon!1237 (List!59954 Regex!14519) List!59954)

(assert (=> b!5156179 (= lt!2121988 (Context!7807 ($colon$colon!1237 (exprs!4403 ctx!100) (regTwo!29550 expr!117))))))

(declare-fun b!5156180 () Bool)

(declare-fun tp!1443458 () Bool)

(assert (=> b!5156180 (= e!3213701 tp!1443458)))

(declare-fun b!5156181 () Bool)

(declare-fun tp!1443461 () Bool)

(assert (=> b!5156181 (= e!3213706 tp!1443461)))

(declare-fun b!5156182 () Bool)

(declare-fun e!3213702 () Bool)

(declare-fun lostCause!1590 (Context!7806) Bool)

(assert (=> b!5156182 (= e!3213702 (lostCause!1590 lt!2121988))))

(declare-fun b!5156183 () Bool)

(declare-fun res!2193289 () Bool)

(assert (=> b!5156183 (=> (not res!2193289) (not e!3213703))))

(assert (=> b!5156183 (= res!2193289 e!3213702)))

(declare-fun res!2193288 () Bool)

(assert (=> b!5156183 (=> res!2193288 e!3213702)))

(declare-fun lostCause!1591 (Regex!14519) Bool)

(assert (=> b!5156183 (= res!2193288 (lostCause!1591 (regOne!29550 expr!117)))))

(declare-fun b!5156184 () Bool)

(declare-fun e!3213704 () Bool)

(assert (=> b!5156184 (= e!3213704 (lostCause!1590 ctx!100))))

(declare-fun b!5156185 () Bool)

(declare-fun res!2193282 () Bool)

(assert (=> b!5156185 (=> (not res!2193282) (not e!3213705))))

(get-info :version)

(assert (=> b!5156185 (= res!2193282 (and (or (not ((_ is ElementMatch!14519) expr!117)) (not (= (c!887444 expr!117) a!1296))) (not ((_ is Union!14519) expr!117))))))

(declare-fun b!5156186 () Bool)

(declare-fun res!2193286 () Bool)

(assert (=> b!5156186 (=> (not res!2193286) (not e!3213705))))

(assert (=> b!5156186 (= res!2193286 ((_ is Concat!23364) expr!117))))

(declare-fun b!5156187 () Bool)

(declare-fun res!2193284 () Bool)

(assert (=> b!5156187 (=> (not res!2193284) (not e!3213705))))

(assert (=> b!5156187 (= res!2193284 e!3213704)))

(declare-fun res!2193280 () Bool)

(assert (=> b!5156187 (=> res!2193280 e!3213704)))

(assert (=> b!5156187 (= res!2193280 (lostCause!1591 expr!117))))

(declare-fun b!5156188 () Bool)

(declare-fun e!3213700 () Bool)

(declare-fun nullable!4875 (Regex!14519) Bool)

(assert (=> b!5156188 (= e!3213700 (not (nullable!4875 (regOne!29550 expr!117))))))

(declare-fun b!5156189 () Bool)

(declare-fun res!2193281 () Bool)

(assert (=> b!5156189 (=> (not res!2193281) (not e!3213705))))

(assert (=> b!5156189 (= res!2193281 e!3213700)))

(declare-fun res!2193285 () Bool)

(assert (=> b!5156189 (=> res!2193285 e!3213700)))

(assert (=> b!5156189 (= res!2193285 (not ((_ is Concat!23364) expr!117)))))

(declare-fun b!5156190 () Bool)

(assert (=> b!5156190 (= e!3213706 tp_is_empty!38187)))

(declare-fun b!5156191 () Bool)

(declare-fun res!2193290 () Bool)

(assert (=> b!5156191 (=> (not res!2193290) (not e!3213705))))

(assert (=> b!5156191 (= res!2193290 (validRegex!6374 (regTwo!29550 expr!117)))))

(assert (= (and start!545486 res!2193283) b!5156187))

(assert (= (and b!5156187 (not res!2193280)) b!5156184))

(assert (= (and b!5156187 res!2193284) b!5156185))

(assert (= (and b!5156185 res!2193282) b!5156189))

(assert (= (and b!5156189 (not res!2193285)) b!5156188))

(assert (= (and b!5156189 res!2193281) b!5156186))

(assert (= (and b!5156186 res!2193286) b!5156191))

(assert (= (and b!5156191 res!2193290) b!5156179))

(assert (= (and b!5156179 res!2193287) b!5156183))

(assert (= (and b!5156183 (not res!2193288)) b!5156182))

(assert (= (and b!5156183 res!2193289) b!5156177))

(assert (= (and start!545486 ((_ is ElementMatch!14519) expr!117)) b!5156190))

(assert (= (and start!545486 ((_ is Concat!23364) expr!117)) b!5156176))

(assert (= (and start!545486 ((_ is Star!14519) expr!117)) b!5156181))

(assert (= (and start!545486 ((_ is Union!14519) expr!117)) b!5156178))

(assert (= start!545486 b!5156180))

(declare-fun m!6210762 () Bool)

(assert (=> b!5156184 m!6210762))

(declare-fun m!6210764 () Bool)

(assert (=> b!5156188 m!6210764))

(declare-fun m!6210766 () Bool)

(assert (=> b!5156183 m!6210766))

(declare-fun m!6210768 () Bool)

(assert (=> b!5156182 m!6210768))

(declare-fun m!6210770 () Bool)

(assert (=> b!5156187 m!6210770))

(declare-fun m!6210772 () Bool)

(assert (=> b!5156191 m!6210772))

(declare-fun m!6210774 () Bool)

(assert (=> b!5156179 m!6210774))

(declare-fun m!6210776 () Bool)

(assert (=> b!5156179 m!6210776))

(declare-fun m!6210778 () Bool)

(assert (=> b!5156177 m!6210778))

(declare-fun m!6210780 () Bool)

(assert (=> b!5156177 m!6210780))

(declare-fun m!6210782 () Bool)

(assert (=> b!5156177 m!6210782))

(declare-fun m!6210784 () Bool)

(assert (=> b!5156177 m!6210784))

(assert (=> b!5156177 m!6210782))

(declare-fun m!6210786 () Bool)

(assert (=> b!5156177 m!6210786))

(assert (=> b!5156177 m!6210778))

(declare-fun m!6210788 () Bool)

(assert (=> start!545486 m!6210788))

(declare-fun m!6210790 () Bool)

(assert (=> start!545486 m!6210790))

(check-sat (not b!5156180) (not b!5156187) (not b!5156178) (not start!545486) (not b!5156181) (not b!5156176) (not b!5156184) (not b!5156188) (not b!5156177) (not b!5156182) tp_is_empty!38187 (not b!5156183) (not b!5156191) (not b!5156179))
(check-sat)
(get-model)

(declare-fun c!887455 () Bool)

(declare-fun c!887456 () Bool)

(declare-fun call!361315 () Bool)

(declare-fun bm!361308 () Bool)

(assert (=> bm!361308 (= call!361315 (validRegex!6374 (ite c!887455 (reg!14848 (regOne!29550 expr!117)) (ite c!887456 (regOne!29551 (regOne!29550 expr!117)) (regOne!29550 (regOne!29550 expr!117))))))))

(declare-fun b!5156237 () Bool)

(declare-fun e!3213746 () Bool)

(assert (=> b!5156237 (= e!3213746 call!361315)))

(declare-fun b!5156238 () Bool)

(declare-fun e!3213745 () Bool)

(declare-fun e!3213743 () Bool)

(assert (=> b!5156238 (= e!3213745 e!3213743)))

(declare-fun res!2193318 () Bool)

(assert (=> b!5156238 (=> (not res!2193318) (not e!3213743))))

(declare-fun call!361313 () Bool)

(assert (=> b!5156238 (= res!2193318 call!361313)))

(declare-fun b!5156239 () Bool)

(declare-fun e!3213747 () Bool)

(assert (=> b!5156239 (= e!3213747 e!3213746)))

(declare-fun res!2193319 () Bool)

(assert (=> b!5156239 (= res!2193319 (not (nullable!4875 (reg!14848 (regOne!29550 expr!117)))))))

(assert (=> b!5156239 (=> (not res!2193319) (not e!3213746))))

(declare-fun b!5156240 () Bool)

(declare-fun e!3213744 () Bool)

(assert (=> b!5156240 (= e!3213744 e!3213747)))

(assert (=> b!5156240 (= c!887455 ((_ is Star!14519) (regOne!29550 expr!117)))))

(declare-fun bm!361310 () Bool)

(declare-fun call!361314 () Bool)

(assert (=> bm!361310 (= call!361314 (validRegex!6374 (ite c!887456 (regTwo!29551 (regOne!29550 expr!117)) (regTwo!29550 (regOne!29550 expr!117)))))))

(declare-fun b!5156241 () Bool)

(declare-fun e!3213742 () Bool)

(assert (=> b!5156241 (= e!3213742 call!361314)))

(declare-fun b!5156242 () Bool)

(declare-fun e!3213748 () Bool)

(assert (=> b!5156242 (= e!3213747 e!3213748)))

(assert (=> b!5156242 (= c!887456 ((_ is Union!14519) (regOne!29550 expr!117)))))

(declare-fun b!5156243 () Bool)

(assert (=> b!5156243 (= e!3213743 call!361314)))

(declare-fun b!5156244 () Bool)

(declare-fun res!2193320 () Bool)

(assert (=> b!5156244 (=> res!2193320 e!3213745)))

(assert (=> b!5156244 (= res!2193320 (not ((_ is Concat!23364) (regOne!29550 expr!117))))))

(assert (=> b!5156244 (= e!3213748 e!3213745)))

(declare-fun b!5156245 () Bool)

(declare-fun res!2193316 () Bool)

(assert (=> b!5156245 (=> (not res!2193316) (not e!3213742))))

(assert (=> b!5156245 (= res!2193316 call!361313)))

(assert (=> b!5156245 (= e!3213748 e!3213742)))

(declare-fun d!1665015 () Bool)

(declare-fun res!2193317 () Bool)

(assert (=> d!1665015 (=> res!2193317 e!3213744)))

(assert (=> d!1665015 (= res!2193317 ((_ is ElementMatch!14519) (regOne!29550 expr!117)))))

(assert (=> d!1665015 (= (validRegex!6374 (regOne!29550 expr!117)) e!3213744)))

(declare-fun bm!361309 () Bool)

(assert (=> bm!361309 (= call!361313 call!361315)))

(assert (= (and d!1665015 (not res!2193317)) b!5156240))

(assert (= (and b!5156240 c!887455) b!5156239))

(assert (= (and b!5156240 (not c!887455)) b!5156242))

(assert (= (and b!5156239 res!2193319) b!5156237))

(assert (= (and b!5156242 c!887456) b!5156245))

(assert (= (and b!5156242 (not c!887456)) b!5156244))

(assert (= (and b!5156245 res!2193316) b!5156241))

(assert (= (and b!5156244 (not res!2193320)) b!5156238))

(assert (= (and b!5156238 res!2193318) b!5156243))

(assert (= (or b!5156241 b!5156243) bm!361310))

(assert (= (or b!5156245 b!5156238) bm!361309))

(assert (= (or b!5156237 bm!361309) bm!361308))

(declare-fun m!6210804 () Bool)

(assert (=> bm!361308 m!6210804))

(declare-fun m!6210806 () Bool)

(assert (=> b!5156239 m!6210806))

(declare-fun m!6210808 () Bool)

(assert (=> bm!361310 m!6210808))

(assert (=> b!5156179 d!1665015))

(declare-fun d!1665023 () Bool)

(assert (=> d!1665023 (= ($colon$colon!1237 (exprs!4403 ctx!100) (regTwo!29550 expr!117)) (Cons!59830 (regTwo!29550 expr!117) (exprs!4403 ctx!100)))))

(assert (=> b!5156179 d!1665023))

(declare-fun d!1665027 () Bool)

(declare-fun lambda!257437 () Int)

(declare-fun exists!1861 (List!59954 Int) Bool)

(assert (=> d!1665027 (= (lostCause!1590 ctx!100) (exists!1861 (exprs!4403 ctx!100) lambda!257437))))

(declare-fun bs!1202212 () Bool)

(assert (= bs!1202212 d!1665027))

(declare-fun m!6210876 () Bool)

(assert (=> bs!1202212 m!6210876))

(assert (=> b!5156184 d!1665027))

(declare-fun c!887494 () Bool)

(declare-fun c!887493 () Bool)

(declare-fun bm!361349 () Bool)

(declare-fun call!361356 () Bool)

(assert (=> bm!361349 (= call!361356 (validRegex!6374 (ite c!887493 (reg!14848 expr!117) (ite c!887494 (regOne!29551 expr!117) (regOne!29550 expr!117)))))))

(declare-fun b!5156351 () Bool)

(declare-fun e!3213809 () Bool)

(assert (=> b!5156351 (= e!3213809 call!361356)))

(declare-fun b!5156352 () Bool)

(declare-fun e!3213808 () Bool)

(declare-fun e!3213806 () Bool)

(assert (=> b!5156352 (= e!3213808 e!3213806)))

(declare-fun res!2193337 () Bool)

(assert (=> b!5156352 (=> (not res!2193337) (not e!3213806))))

(declare-fun call!361354 () Bool)

(assert (=> b!5156352 (= res!2193337 call!361354)))

(declare-fun b!5156353 () Bool)

(declare-fun e!3213810 () Bool)

(assert (=> b!5156353 (= e!3213810 e!3213809)))

(declare-fun res!2193338 () Bool)

(assert (=> b!5156353 (= res!2193338 (not (nullable!4875 (reg!14848 expr!117))))))

(assert (=> b!5156353 (=> (not res!2193338) (not e!3213809))))

(declare-fun b!5156354 () Bool)

(declare-fun e!3213807 () Bool)

(assert (=> b!5156354 (= e!3213807 e!3213810)))

(assert (=> b!5156354 (= c!887493 ((_ is Star!14519) expr!117))))

(declare-fun bm!361351 () Bool)

(declare-fun call!361355 () Bool)

(assert (=> bm!361351 (= call!361355 (validRegex!6374 (ite c!887494 (regTwo!29551 expr!117) (regTwo!29550 expr!117))))))

(declare-fun b!5156355 () Bool)

(declare-fun e!3213805 () Bool)

(assert (=> b!5156355 (= e!3213805 call!361355)))

(declare-fun b!5156356 () Bool)

(declare-fun e!3213811 () Bool)

(assert (=> b!5156356 (= e!3213810 e!3213811)))

(assert (=> b!5156356 (= c!887494 ((_ is Union!14519) expr!117))))

(declare-fun b!5156357 () Bool)

(assert (=> b!5156357 (= e!3213806 call!361355)))

(declare-fun b!5156358 () Bool)

(declare-fun res!2193339 () Bool)

(assert (=> b!5156358 (=> res!2193339 e!3213808)))

(assert (=> b!5156358 (= res!2193339 (not ((_ is Concat!23364) expr!117)))))

(assert (=> b!5156358 (= e!3213811 e!3213808)))

(declare-fun b!5156359 () Bool)

(declare-fun res!2193335 () Bool)

(assert (=> b!5156359 (=> (not res!2193335) (not e!3213805))))

(assert (=> b!5156359 (= res!2193335 call!361354)))

(assert (=> b!5156359 (= e!3213811 e!3213805)))

(declare-fun d!1665051 () Bool)

(declare-fun res!2193336 () Bool)

(assert (=> d!1665051 (=> res!2193336 e!3213807)))

(assert (=> d!1665051 (= res!2193336 ((_ is ElementMatch!14519) expr!117))))

(assert (=> d!1665051 (= (validRegex!6374 expr!117) e!3213807)))

(declare-fun bm!361350 () Bool)

(assert (=> bm!361350 (= call!361354 call!361356)))

(assert (= (and d!1665051 (not res!2193336)) b!5156354))

(assert (= (and b!5156354 c!887493) b!5156353))

(assert (= (and b!5156354 (not c!887493)) b!5156356))

(assert (= (and b!5156353 res!2193338) b!5156351))

(assert (= (and b!5156356 c!887494) b!5156359))

(assert (= (and b!5156356 (not c!887494)) b!5156358))

(assert (= (and b!5156359 res!2193335) b!5156355))

(assert (= (and b!5156358 (not res!2193339)) b!5156352))

(assert (= (and b!5156352 res!2193337) b!5156357))

(assert (= (or b!5156355 b!5156357) bm!361351))

(assert (= (or b!5156359 b!5156352) bm!361350))

(assert (= (or b!5156351 bm!361350) bm!361349))

(declare-fun m!6210878 () Bool)

(assert (=> bm!361349 m!6210878))

(declare-fun m!6210880 () Bool)

(assert (=> b!5156353 m!6210880))

(declare-fun m!6210882 () Bool)

(assert (=> bm!361351 m!6210882))

(assert (=> start!545486 d!1665051))

(declare-fun bs!1202213 () Bool)

(declare-fun d!1665053 () Bool)

(assert (= bs!1202213 (and d!1665053 d!1665027)))

(declare-fun lambda!257440 () Int)

(assert (=> bs!1202213 (not (= lambda!257440 lambda!257437))))

(declare-fun forall!14011 (List!59954 Int) Bool)

(assert (=> d!1665053 (= (inv!79478 ctx!100) (forall!14011 (exprs!4403 ctx!100) lambda!257440))))

(declare-fun bs!1202214 () Bool)

(assert (= bs!1202214 d!1665053))

(declare-fun m!6210884 () Bool)

(assert (=> bs!1202214 m!6210884))

(assert (=> start!545486 d!1665053))

(declare-fun bm!361352 () Bool)

(declare-fun c!887495 () Bool)

(declare-fun c!887496 () Bool)

(declare-fun call!361359 () Bool)

(assert (=> bm!361352 (= call!361359 (validRegex!6374 (ite c!887495 (reg!14848 (regTwo!29550 expr!117)) (ite c!887496 (regOne!29551 (regTwo!29550 expr!117)) (regOne!29550 (regTwo!29550 expr!117))))))))

(declare-fun b!5156360 () Bool)

(declare-fun e!3213816 () Bool)

(assert (=> b!5156360 (= e!3213816 call!361359)))

(declare-fun b!5156361 () Bool)

(declare-fun e!3213815 () Bool)

(declare-fun e!3213813 () Bool)

(assert (=> b!5156361 (= e!3213815 e!3213813)))

(declare-fun res!2193342 () Bool)

(assert (=> b!5156361 (=> (not res!2193342) (not e!3213813))))

(declare-fun call!361357 () Bool)

(assert (=> b!5156361 (= res!2193342 call!361357)))

(declare-fun b!5156362 () Bool)

(declare-fun e!3213817 () Bool)

(assert (=> b!5156362 (= e!3213817 e!3213816)))

(declare-fun res!2193343 () Bool)

(assert (=> b!5156362 (= res!2193343 (not (nullable!4875 (reg!14848 (regTwo!29550 expr!117)))))))

(assert (=> b!5156362 (=> (not res!2193343) (not e!3213816))))

(declare-fun b!5156363 () Bool)

(declare-fun e!3213814 () Bool)

(assert (=> b!5156363 (= e!3213814 e!3213817)))

(assert (=> b!5156363 (= c!887495 ((_ is Star!14519) (regTwo!29550 expr!117)))))

(declare-fun bm!361354 () Bool)

(declare-fun call!361358 () Bool)

(assert (=> bm!361354 (= call!361358 (validRegex!6374 (ite c!887496 (regTwo!29551 (regTwo!29550 expr!117)) (regTwo!29550 (regTwo!29550 expr!117)))))))

(declare-fun b!5156364 () Bool)

(declare-fun e!3213812 () Bool)

(assert (=> b!5156364 (= e!3213812 call!361358)))

(declare-fun b!5156365 () Bool)

(declare-fun e!3213818 () Bool)

(assert (=> b!5156365 (= e!3213817 e!3213818)))

(assert (=> b!5156365 (= c!887496 ((_ is Union!14519) (regTwo!29550 expr!117)))))

(declare-fun b!5156366 () Bool)

(assert (=> b!5156366 (= e!3213813 call!361358)))

(declare-fun b!5156367 () Bool)

(declare-fun res!2193344 () Bool)

(assert (=> b!5156367 (=> res!2193344 e!3213815)))

(assert (=> b!5156367 (= res!2193344 (not ((_ is Concat!23364) (regTwo!29550 expr!117))))))

(assert (=> b!5156367 (= e!3213818 e!3213815)))

(declare-fun b!5156368 () Bool)

(declare-fun res!2193340 () Bool)

(assert (=> b!5156368 (=> (not res!2193340) (not e!3213812))))

(assert (=> b!5156368 (= res!2193340 call!361357)))

(assert (=> b!5156368 (= e!3213818 e!3213812)))

(declare-fun d!1665055 () Bool)

(declare-fun res!2193341 () Bool)

(assert (=> d!1665055 (=> res!2193341 e!3213814)))

(assert (=> d!1665055 (= res!2193341 ((_ is ElementMatch!14519) (regTwo!29550 expr!117)))))

(assert (=> d!1665055 (= (validRegex!6374 (regTwo!29550 expr!117)) e!3213814)))

(declare-fun bm!361353 () Bool)

(assert (=> bm!361353 (= call!361357 call!361359)))

(assert (= (and d!1665055 (not res!2193341)) b!5156363))

(assert (= (and b!5156363 c!887495) b!5156362))

(assert (= (and b!5156363 (not c!887495)) b!5156365))

(assert (= (and b!5156362 res!2193343) b!5156360))

(assert (= (and b!5156365 c!887496) b!5156368))

(assert (= (and b!5156365 (not c!887496)) b!5156367))

(assert (= (and b!5156368 res!2193340) b!5156364))

(assert (= (and b!5156367 (not res!2193344)) b!5156361))

(assert (= (and b!5156361 res!2193342) b!5156366))

(assert (= (or b!5156364 b!5156366) bm!361354))

(assert (= (or b!5156368 b!5156361) bm!361353))

(assert (= (or b!5156360 bm!361353) bm!361352))

(declare-fun m!6210886 () Bool)

(assert (=> bm!361352 m!6210886))

(declare-fun m!6210888 () Bool)

(assert (=> b!5156362 m!6210888))

(declare-fun m!6210890 () Bool)

(assert (=> bm!361354 m!6210890))

(assert (=> b!5156191 d!1665055))

(declare-fun d!1665057 () Bool)

(declare-fun lostCauseFct!394 (Regex!14519) Bool)

(assert (=> d!1665057 (= (lostCause!1591 expr!117) (lostCauseFct!394 expr!117))))

(declare-fun bs!1202215 () Bool)

(assert (= bs!1202215 d!1665057))

(declare-fun m!6210892 () Bool)

(assert (=> bs!1202215 m!6210892))

(assert (=> b!5156187 d!1665057))

(declare-fun bs!1202216 () Bool)

(declare-fun d!1665059 () Bool)

(assert (= bs!1202216 (and d!1665059 d!1665027)))

(declare-fun lambda!257441 () Int)

(assert (=> bs!1202216 (= lambda!257441 lambda!257437)))

(declare-fun bs!1202217 () Bool)

(assert (= bs!1202217 (and d!1665059 d!1665053)))

(assert (=> bs!1202217 (not (= lambda!257441 lambda!257440))))

(assert (=> d!1665059 (= (lostCause!1590 lt!2121988) (exists!1861 (exprs!4403 lt!2121988) lambda!257441))))

(declare-fun bs!1202218 () Bool)

(assert (= bs!1202218 d!1665059))

(declare-fun m!6210894 () Bool)

(assert (=> bs!1202218 m!6210894))

(assert (=> b!5156182 d!1665059))

(declare-fun d!1665061 () Bool)

(assert (=> d!1665061 (= (lostCause!1591 (regOne!29550 expr!117)) (lostCauseFct!394 (regOne!29550 expr!117)))))

(declare-fun bs!1202219 () Bool)

(assert (= bs!1202219 d!1665061))

(declare-fun m!6210896 () Bool)

(assert (=> bs!1202219 m!6210896))

(assert (=> b!5156183 d!1665061))

(declare-fun bm!361367 () Bool)

(declare-fun call!361373 () List!59954)

(declare-fun call!361372 () List!59954)

(assert (=> bm!361367 (= call!361373 call!361372)))

(declare-fun b!5156391 () Bool)

(declare-fun e!3213834 () (InoxSet Context!7806))

(declare-fun call!361374 () (InoxSet Context!7806))

(assert (=> b!5156391 (= e!3213834 call!361374)))

(declare-fun call!361376 () (InoxSet Context!7806))

(declare-fun bm!361368 () Bool)

(declare-fun c!887511 () Bool)

(assert (=> bm!361368 (= call!361376 (derivationStepZipperDown!176 (ite c!887511 (regTwo!29551 (regOne!29550 expr!117)) (regOne!29550 (regOne!29550 expr!117))) (ite c!887511 lt!2121988 (Context!7807 call!361372)) a!1296))))

(declare-fun b!5156392 () Bool)

(declare-fun e!3213831 () (InoxSet Context!7806))

(assert (=> b!5156392 (= e!3213831 (store ((as const (Array Context!7806 Bool)) false) lt!2121988 true))))

(declare-fun b!5156393 () Bool)

(declare-fun c!887508 () Bool)

(declare-fun e!3213832 () Bool)

(assert (=> b!5156393 (= c!887508 e!3213832)))

(declare-fun res!2193347 () Bool)

(assert (=> b!5156393 (=> (not res!2193347) (not e!3213832))))

(assert (=> b!5156393 (= res!2193347 ((_ is Concat!23364) (regOne!29550 expr!117)))))

(declare-fun e!3213835 () (InoxSet Context!7806))

(declare-fun e!3213836 () (InoxSet Context!7806))

(assert (=> b!5156393 (= e!3213835 e!3213836)))

(declare-fun b!5156394 () Bool)

(assert (=> b!5156394 (= e!3213832 (nullable!4875 (regOne!29550 (regOne!29550 expr!117))))))

(declare-fun b!5156395 () Bool)

(declare-fun call!361377 () (InoxSet Context!7806))

(assert (=> b!5156395 (= e!3213836 ((_ map or) call!361376 call!361377))))

(declare-fun d!1665063 () Bool)

(declare-fun c!887507 () Bool)

(assert (=> d!1665063 (= c!887507 (and ((_ is ElementMatch!14519) (regOne!29550 expr!117)) (= (c!887444 (regOne!29550 expr!117)) a!1296)))))

(assert (=> d!1665063 (= (derivationStepZipperDown!176 (regOne!29550 expr!117) lt!2121988 a!1296) e!3213831)))

(declare-fun b!5156396 () Bool)

(declare-fun c!887510 () Bool)

(assert (=> b!5156396 (= c!887510 ((_ is Star!14519) (regOne!29550 expr!117)))))

(declare-fun e!3213833 () (InoxSet Context!7806))

(assert (=> b!5156396 (= e!3213833 e!3213834)))

(declare-fun b!5156397 () Bool)

(assert (=> b!5156397 (= e!3213833 call!361374)))

(declare-fun b!5156398 () Bool)

(declare-fun call!361375 () (InoxSet Context!7806))

(assert (=> b!5156398 (= e!3213835 ((_ map or) call!361375 call!361376))))

(declare-fun bm!361369 () Bool)

(declare-fun c!887509 () Bool)

(assert (=> bm!361369 (= call!361372 ($colon$colon!1237 (exprs!4403 lt!2121988) (ite (or c!887508 c!887509) (regTwo!29550 (regOne!29550 expr!117)) (regOne!29550 expr!117))))))

(declare-fun b!5156399 () Bool)

(assert (=> b!5156399 (= e!3213836 e!3213833)))

(assert (=> b!5156399 (= c!887509 ((_ is Concat!23364) (regOne!29550 expr!117)))))

(declare-fun bm!361370 () Bool)

(assert (=> bm!361370 (= call!361375 (derivationStepZipperDown!176 (ite c!887511 (regOne!29551 (regOne!29550 expr!117)) (ite c!887508 (regTwo!29550 (regOne!29550 expr!117)) (ite c!887509 (regOne!29550 (regOne!29550 expr!117)) (reg!14848 (regOne!29550 expr!117))))) (ite (or c!887511 c!887508) lt!2121988 (Context!7807 call!361373)) a!1296))))

(declare-fun bm!361371 () Bool)

(assert (=> bm!361371 (= call!361377 call!361375)))

(declare-fun b!5156400 () Bool)

(assert (=> b!5156400 (= e!3213834 ((as const (Array Context!7806 Bool)) false))))

(declare-fun bm!361372 () Bool)

(assert (=> bm!361372 (= call!361374 call!361377)))

(declare-fun b!5156401 () Bool)

(assert (=> b!5156401 (= e!3213831 e!3213835)))

(assert (=> b!5156401 (= c!887511 ((_ is Union!14519) (regOne!29550 expr!117)))))

(assert (= (and d!1665063 c!887507) b!5156392))

(assert (= (and d!1665063 (not c!887507)) b!5156401))

(assert (= (and b!5156401 c!887511) b!5156398))

(assert (= (and b!5156401 (not c!887511)) b!5156393))

(assert (= (and b!5156393 res!2193347) b!5156394))

(assert (= (and b!5156393 c!887508) b!5156395))

(assert (= (and b!5156393 (not c!887508)) b!5156399))

(assert (= (and b!5156399 c!887509) b!5156397))

(assert (= (and b!5156399 (not c!887509)) b!5156396))

(assert (= (and b!5156396 c!887510) b!5156391))

(assert (= (and b!5156396 (not c!887510)) b!5156400))

(assert (= (or b!5156397 b!5156391) bm!361367))

(assert (= (or b!5156397 b!5156391) bm!361372))

(assert (= (or b!5156395 bm!361367) bm!361369))

(assert (= (or b!5156395 bm!361372) bm!361371))

(assert (= (or b!5156398 b!5156395) bm!361368))

(assert (= (or b!5156398 bm!361371) bm!361370))

(declare-fun m!6210898 () Bool)

(assert (=> b!5156392 m!6210898))

(declare-fun m!6210900 () Bool)

(assert (=> bm!361369 m!6210900))

(declare-fun m!6210902 () Bool)

(assert (=> bm!361370 m!6210902))

(declare-fun m!6210904 () Bool)

(assert (=> b!5156394 m!6210904))

(declare-fun m!6210906 () Bool)

(assert (=> bm!361368 m!6210906))

(assert (=> b!5156177 d!1665063))

(declare-fun d!1665065 () Bool)

(assert (=> d!1665065 (lostCauseZipper!1295 (derivationStepZipperDown!176 (regOne!29550 expr!117) lt!2121988 a!1296))))

(declare-fun lt!2122027 () Unit!151259)

(declare-fun choose!38130 (Regex!14519 Context!7806 C!29304) Unit!151259)

(assert (=> d!1665065 (= lt!2122027 (choose!38130 (regOne!29550 expr!117) lt!2121988 a!1296))))

(assert (=> d!1665065 (validRegex!6374 (regOne!29550 expr!117))))

(assert (=> d!1665065 (= (lemmaLostCauseFixPointDerivDown!66 (regOne!29550 expr!117) lt!2121988 a!1296) lt!2122027)))

(declare-fun bs!1202220 () Bool)

(assert (= bs!1202220 d!1665065))

(assert (=> bs!1202220 m!6210778))

(assert (=> bs!1202220 m!6210778))

(assert (=> bs!1202220 m!6210780))

(declare-fun m!6210908 () Bool)

(assert (=> bs!1202220 m!6210908))

(assert (=> bs!1202220 m!6210774))

(assert (=> b!5156177 d!1665065))

(declare-fun bs!1202221 () Bool)

(declare-fun b!5156406 () Bool)

(declare-fun d!1665067 () Bool)

(assert (= bs!1202221 (and b!5156406 d!1665067)))

(declare-fun lambda!257455 () Int)

(declare-fun lambda!257454 () Int)

(assert (=> bs!1202221 (not (= lambda!257455 lambda!257454))))

(declare-fun bs!1202222 () Bool)

(declare-fun b!5156407 () Bool)

(assert (= bs!1202222 (and b!5156407 d!1665067)))

(declare-fun lambda!257456 () Int)

(assert (=> bs!1202222 (not (= lambda!257456 lambda!257454))))

(declare-fun bs!1202223 () Bool)

(assert (= bs!1202223 (and b!5156407 b!5156406)))

(assert (=> bs!1202223 (= lambda!257456 lambda!257455)))

(declare-datatypes ((List!59957 0))(
  ( (Nil!59833) (Cons!59833 (h!66281 Context!7806) (t!373020 List!59957)) )
))
(declare-fun lt!2122046 () List!59957)

(declare-fun call!361382 () Bool)

(declare-fun c!887522 () Bool)

(declare-fun bm!361377 () Bool)

(declare-fun lt!2122048 () List!59957)

(declare-fun exists!1862 (List!59957 Int) Bool)

(assert (=> bm!361377 (= call!361382 (exists!1862 (ite c!887522 lt!2122046 lt!2122048) (ite c!887522 lambda!257455 lambda!257456)))))

(declare-fun e!3213843 () Unit!151259)

(declare-fun Unit!151265 () Unit!151259)

(assert (=> b!5156406 (= e!3213843 Unit!151265)))

(declare-fun call!361383 () List!59957)

(assert (=> b!5156406 (= lt!2122046 call!361383)))

(declare-fun lt!2122049 () Unit!151259)

(declare-fun lemmaNotForallThenExists!455 (List!59957 Int) Unit!151259)

(assert (=> b!5156406 (= lt!2122049 (lemmaNotForallThenExists!455 lt!2122046 lambda!257454))))

(assert (=> b!5156406 call!361382))

(declare-fun lt!2122051 () Unit!151259)

(assert (=> b!5156406 (= lt!2122051 lt!2122049)))

(declare-fun Unit!151266 () Unit!151259)

(assert (=> b!5156407 (= e!3213843 Unit!151266)))

(assert (=> b!5156407 (= lt!2122048 call!361383)))

(declare-fun lt!2122047 () Unit!151259)

(declare-fun lemmaForallThenNotExists!422 (List!59957 Int) Unit!151259)

(assert (=> b!5156407 (= lt!2122047 (lemmaForallThenNotExists!422 lt!2122048 lambda!257454))))

(assert (=> b!5156407 (not call!361382)))

(declare-fun lt!2122045 () Unit!151259)

(assert (=> b!5156407 (= lt!2122045 lt!2122047)))

(declare-fun bm!361378 () Bool)

(declare-fun toList!8409 ((InoxSet Context!7806)) List!59957)

(assert (=> bm!361378 (= call!361383 (toList!8409 (derivationStepZipperDown!176 expr!117 ctx!100 a!1296)))))

(declare-fun lt!2122050 () Bool)

(declare-datatypes ((List!59958 0))(
  ( (Nil!59834) (Cons!59834 (h!66282 C!29304) (t!373021 List!59958)) )
))
(declare-datatypes ((Option!14816 0))(
  ( (None!14815) (Some!14815 (v!50844 List!59958)) )
))
(declare-fun isEmpty!32077 (Option!14816) Bool)

(declare-fun getLanguageWitness!981 ((InoxSet Context!7806)) Option!14816)

(assert (=> d!1665067 (= lt!2122050 (isEmpty!32077 (getLanguageWitness!981 (derivationStepZipperDown!176 expr!117 ctx!100 a!1296))))))

(declare-fun forall!14013 ((InoxSet Context!7806) Int) Bool)

(assert (=> d!1665067 (= lt!2122050 (forall!14013 (derivationStepZipperDown!176 expr!117 ctx!100 a!1296) lambda!257454))))

(declare-fun lt!2122044 () Unit!151259)

(assert (=> d!1665067 (= lt!2122044 e!3213843)))

(assert (=> d!1665067 (= c!887522 (not (forall!14013 (derivationStepZipperDown!176 expr!117 ctx!100 a!1296) lambda!257454)))))

(assert (=> d!1665067 (= (lostCauseZipper!1295 (derivationStepZipperDown!176 expr!117 ctx!100 a!1296)) lt!2122050)))

(assert (= (and d!1665067 c!887522) b!5156406))

(assert (= (and d!1665067 (not c!887522)) b!5156407))

(assert (= (or b!5156406 b!5156407) bm!361377))

(assert (= (or b!5156406 b!5156407) bm!361378))

(declare-fun m!6210910 () Bool)

(assert (=> b!5156407 m!6210910))

(declare-fun m!6210912 () Bool)

(assert (=> bm!361377 m!6210912))

(assert (=> d!1665067 m!6210782))

(declare-fun m!6210914 () Bool)

(assert (=> d!1665067 m!6210914))

(assert (=> d!1665067 m!6210914))

(declare-fun m!6210916 () Bool)

(assert (=> d!1665067 m!6210916))

(assert (=> d!1665067 m!6210782))

(declare-fun m!6210918 () Bool)

(assert (=> d!1665067 m!6210918))

(assert (=> d!1665067 m!6210782))

(assert (=> d!1665067 m!6210918))

(declare-fun m!6210920 () Bool)

(assert (=> b!5156406 m!6210920))

(assert (=> bm!361378 m!6210782))

(declare-fun m!6210922 () Bool)

(assert (=> bm!361378 m!6210922))

(assert (=> b!5156177 d!1665067))

(declare-fun bm!361379 () Bool)

(declare-fun call!361385 () List!59954)

(declare-fun call!361384 () List!59954)

(assert (=> bm!361379 (= call!361385 call!361384)))

(declare-fun b!5156408 () Bool)

(declare-fun e!3213847 () (InoxSet Context!7806))

(declare-fun call!361386 () (InoxSet Context!7806))

(assert (=> b!5156408 (= e!3213847 call!361386)))

(declare-fun c!887527 () Bool)

(declare-fun bm!361380 () Bool)

(declare-fun call!361388 () (InoxSet Context!7806))

(assert (=> bm!361380 (= call!361388 (derivationStepZipperDown!176 (ite c!887527 (regTwo!29551 expr!117) (regOne!29550 expr!117)) (ite c!887527 ctx!100 (Context!7807 call!361384)) a!1296))))

(declare-fun b!5156409 () Bool)

(declare-fun e!3213844 () (InoxSet Context!7806))

(assert (=> b!5156409 (= e!3213844 (store ((as const (Array Context!7806 Bool)) false) ctx!100 true))))

(declare-fun b!5156410 () Bool)

(declare-fun c!887524 () Bool)

(declare-fun e!3213845 () Bool)

(assert (=> b!5156410 (= c!887524 e!3213845)))

(declare-fun res!2193348 () Bool)

(assert (=> b!5156410 (=> (not res!2193348) (not e!3213845))))

(assert (=> b!5156410 (= res!2193348 ((_ is Concat!23364) expr!117))))

(declare-fun e!3213848 () (InoxSet Context!7806))

(declare-fun e!3213849 () (InoxSet Context!7806))

(assert (=> b!5156410 (= e!3213848 e!3213849)))

(declare-fun b!5156411 () Bool)

(assert (=> b!5156411 (= e!3213845 (nullable!4875 (regOne!29550 expr!117)))))

(declare-fun b!5156412 () Bool)

(declare-fun call!361389 () (InoxSet Context!7806))

(assert (=> b!5156412 (= e!3213849 ((_ map or) call!361388 call!361389))))

(declare-fun d!1665069 () Bool)

(declare-fun c!887523 () Bool)

(assert (=> d!1665069 (= c!887523 (and ((_ is ElementMatch!14519) expr!117) (= (c!887444 expr!117) a!1296)))))

(assert (=> d!1665069 (= (derivationStepZipperDown!176 expr!117 ctx!100 a!1296) e!3213844)))

(declare-fun b!5156413 () Bool)

(declare-fun c!887526 () Bool)

(assert (=> b!5156413 (= c!887526 ((_ is Star!14519) expr!117))))

(declare-fun e!3213846 () (InoxSet Context!7806))

(assert (=> b!5156413 (= e!3213846 e!3213847)))

(declare-fun b!5156414 () Bool)

(assert (=> b!5156414 (= e!3213846 call!361386)))

(declare-fun b!5156415 () Bool)

(declare-fun call!361387 () (InoxSet Context!7806))

(assert (=> b!5156415 (= e!3213848 ((_ map or) call!361387 call!361388))))

(declare-fun bm!361381 () Bool)

(declare-fun c!887525 () Bool)

(assert (=> bm!361381 (= call!361384 ($colon$colon!1237 (exprs!4403 ctx!100) (ite (or c!887524 c!887525) (regTwo!29550 expr!117) expr!117)))))

(declare-fun b!5156416 () Bool)

(assert (=> b!5156416 (= e!3213849 e!3213846)))

(assert (=> b!5156416 (= c!887525 ((_ is Concat!23364) expr!117))))

(declare-fun bm!361382 () Bool)

(assert (=> bm!361382 (= call!361387 (derivationStepZipperDown!176 (ite c!887527 (regOne!29551 expr!117) (ite c!887524 (regTwo!29550 expr!117) (ite c!887525 (regOne!29550 expr!117) (reg!14848 expr!117)))) (ite (or c!887527 c!887524) ctx!100 (Context!7807 call!361385)) a!1296))))

(declare-fun bm!361383 () Bool)

(assert (=> bm!361383 (= call!361389 call!361387)))

(declare-fun b!5156417 () Bool)

(assert (=> b!5156417 (= e!3213847 ((as const (Array Context!7806 Bool)) false))))

(declare-fun bm!361384 () Bool)

(assert (=> bm!361384 (= call!361386 call!361389)))

(declare-fun b!5156418 () Bool)

(assert (=> b!5156418 (= e!3213844 e!3213848)))

(assert (=> b!5156418 (= c!887527 ((_ is Union!14519) expr!117))))

(assert (= (and d!1665069 c!887523) b!5156409))

(assert (= (and d!1665069 (not c!887523)) b!5156418))

(assert (= (and b!5156418 c!887527) b!5156415))

(assert (= (and b!5156418 (not c!887527)) b!5156410))

(assert (= (and b!5156410 res!2193348) b!5156411))

(assert (= (and b!5156410 c!887524) b!5156412))

(assert (= (and b!5156410 (not c!887524)) b!5156416))

(assert (= (and b!5156416 c!887525) b!5156414))

(assert (= (and b!5156416 (not c!887525)) b!5156413))

(assert (= (and b!5156413 c!887526) b!5156408))

(assert (= (and b!5156413 (not c!887526)) b!5156417))

(assert (= (or b!5156414 b!5156408) bm!361379))

(assert (= (or b!5156414 b!5156408) bm!361384))

(assert (= (or b!5156412 bm!361379) bm!361381))

(assert (= (or b!5156412 bm!361384) bm!361383))

(assert (= (or b!5156415 b!5156412) bm!361380))

(assert (= (or b!5156415 bm!361383) bm!361382))

(declare-fun m!6210924 () Bool)

(assert (=> b!5156409 m!6210924))

(declare-fun m!6210926 () Bool)

(assert (=> bm!361381 m!6210926))

(declare-fun m!6210928 () Bool)

(assert (=> bm!361382 m!6210928))

(assert (=> b!5156411 m!6210764))

(declare-fun m!6210930 () Bool)

(assert (=> bm!361380 m!6210930))

(assert (=> b!5156177 d!1665069))

(declare-fun bs!1202224 () Bool)

(declare-fun d!1665071 () Bool)

(assert (= bs!1202224 (and d!1665071 d!1665067)))

(declare-fun lambda!257457 () Int)

(assert (=> bs!1202224 (= lambda!257457 lambda!257454)))

(declare-fun bs!1202225 () Bool)

(assert (= bs!1202225 (and d!1665071 b!5156406)))

(assert (=> bs!1202225 (not (= lambda!257457 lambda!257455))))

(declare-fun bs!1202226 () Bool)

(assert (= bs!1202226 (and d!1665071 b!5156407)))

(assert (=> bs!1202226 (not (= lambda!257457 lambda!257456))))

(declare-fun bs!1202227 () Bool)

(declare-fun b!5156419 () Bool)

(assert (= bs!1202227 (and b!5156419 d!1665067)))

(declare-fun lambda!257458 () Int)

(assert (=> bs!1202227 (not (= lambda!257458 lambda!257454))))

(declare-fun bs!1202228 () Bool)

(assert (= bs!1202228 (and b!5156419 b!5156406)))

(assert (=> bs!1202228 (= lambda!257458 lambda!257455)))

(declare-fun bs!1202229 () Bool)

(assert (= bs!1202229 (and b!5156419 b!5156407)))

(assert (=> bs!1202229 (= lambda!257458 lambda!257456)))

(declare-fun bs!1202230 () Bool)

(assert (= bs!1202230 (and b!5156419 d!1665071)))

(assert (=> bs!1202230 (not (= lambda!257458 lambda!257457))))

(declare-fun bs!1202231 () Bool)

(declare-fun b!5156420 () Bool)

(assert (= bs!1202231 (and b!5156420 d!1665071)))

(declare-fun lambda!257459 () Int)

(assert (=> bs!1202231 (not (= lambda!257459 lambda!257457))))

(declare-fun bs!1202232 () Bool)

(assert (= bs!1202232 (and b!5156420 b!5156407)))

(assert (=> bs!1202232 (= lambda!257459 lambda!257456)))

(declare-fun bs!1202233 () Bool)

(assert (= bs!1202233 (and b!5156420 b!5156406)))

(assert (=> bs!1202233 (= lambda!257459 lambda!257455)))

(declare-fun bs!1202234 () Bool)

(assert (= bs!1202234 (and b!5156420 b!5156419)))

(assert (=> bs!1202234 (= lambda!257459 lambda!257458)))

(declare-fun bs!1202235 () Bool)

(assert (= bs!1202235 (and b!5156420 d!1665067)))

(assert (=> bs!1202235 (not (= lambda!257459 lambda!257454))))

(declare-fun lt!2122054 () List!59957)

(declare-fun call!361390 () Bool)

(declare-fun bm!361385 () Bool)

(declare-fun c!887528 () Bool)

(declare-fun lt!2122056 () List!59957)

(assert (=> bm!361385 (= call!361390 (exists!1862 (ite c!887528 lt!2122054 lt!2122056) (ite c!887528 lambda!257458 lambda!257459)))))

(declare-fun e!3213850 () Unit!151259)

(declare-fun Unit!151267 () Unit!151259)

(assert (=> b!5156419 (= e!3213850 Unit!151267)))

(declare-fun call!361391 () List!59957)

(assert (=> b!5156419 (= lt!2122054 call!361391)))

(declare-fun lt!2122057 () Unit!151259)

(assert (=> b!5156419 (= lt!2122057 (lemmaNotForallThenExists!455 lt!2122054 lambda!257457))))

(assert (=> b!5156419 call!361390))

(declare-fun lt!2122059 () Unit!151259)

(assert (=> b!5156419 (= lt!2122059 lt!2122057)))

(declare-fun Unit!151268 () Unit!151259)

(assert (=> b!5156420 (= e!3213850 Unit!151268)))

(assert (=> b!5156420 (= lt!2122056 call!361391)))

(declare-fun lt!2122055 () Unit!151259)

(assert (=> b!5156420 (= lt!2122055 (lemmaForallThenNotExists!422 lt!2122056 lambda!257457))))

(assert (=> b!5156420 (not call!361390)))

(declare-fun lt!2122053 () Unit!151259)

(assert (=> b!5156420 (= lt!2122053 lt!2122055)))

(declare-fun bm!361386 () Bool)

(assert (=> bm!361386 (= call!361391 (toList!8409 (derivationStepZipperDown!176 (regOne!29550 expr!117) lt!2121988 a!1296)))))

(declare-fun lt!2122058 () Bool)

(assert (=> d!1665071 (= lt!2122058 (isEmpty!32077 (getLanguageWitness!981 (derivationStepZipperDown!176 (regOne!29550 expr!117) lt!2121988 a!1296))))))

(assert (=> d!1665071 (= lt!2122058 (forall!14013 (derivationStepZipperDown!176 (regOne!29550 expr!117) lt!2121988 a!1296) lambda!257457))))

(declare-fun lt!2122052 () Unit!151259)

(assert (=> d!1665071 (= lt!2122052 e!3213850)))

(assert (=> d!1665071 (= c!887528 (not (forall!14013 (derivationStepZipperDown!176 (regOne!29550 expr!117) lt!2121988 a!1296) lambda!257457)))))

(assert (=> d!1665071 (= (lostCauseZipper!1295 (derivationStepZipperDown!176 (regOne!29550 expr!117) lt!2121988 a!1296)) lt!2122058)))

(assert (= (and d!1665071 c!887528) b!5156419))

(assert (= (and d!1665071 (not c!887528)) b!5156420))

(assert (= (or b!5156419 b!5156420) bm!361385))

(assert (= (or b!5156419 b!5156420) bm!361386))

(declare-fun m!6210932 () Bool)

(assert (=> b!5156420 m!6210932))

(declare-fun m!6210934 () Bool)

(assert (=> bm!361385 m!6210934))

(assert (=> d!1665071 m!6210778))

(declare-fun m!6210936 () Bool)

(assert (=> d!1665071 m!6210936))

(assert (=> d!1665071 m!6210936))

(declare-fun m!6210938 () Bool)

(assert (=> d!1665071 m!6210938))

(assert (=> d!1665071 m!6210778))

(declare-fun m!6210940 () Bool)

(assert (=> d!1665071 m!6210940))

(assert (=> d!1665071 m!6210778))

(assert (=> d!1665071 m!6210940))

(declare-fun m!6210942 () Bool)

(assert (=> b!5156419 m!6210942))

(assert (=> bm!361386 m!6210778))

(declare-fun m!6210944 () Bool)

(assert (=> bm!361386 m!6210944))

(assert (=> b!5156177 d!1665071))

(declare-fun d!1665073 () Bool)

(declare-fun nullableFct!1353 (Regex!14519) Bool)

(assert (=> d!1665073 (= (nullable!4875 (regOne!29550 expr!117)) (nullableFct!1353 (regOne!29550 expr!117)))))

(declare-fun bs!1202236 () Bool)

(assert (= bs!1202236 d!1665073))

(declare-fun m!6210946 () Bool)

(assert (=> bs!1202236 m!6210946))

(assert (=> b!5156188 d!1665073))

(declare-fun b!5156425 () Bool)

(declare-fun e!3213853 () Bool)

(declare-fun tp!1443509 () Bool)

(declare-fun tp!1443510 () Bool)

(assert (=> b!5156425 (= e!3213853 (and tp!1443509 tp!1443510))))

(assert (=> b!5156180 (= tp!1443458 e!3213853)))

(assert (= (and b!5156180 ((_ is Cons!59830) (exprs!4403 ctx!100))) b!5156425))

(declare-fun e!3213856 () Bool)

(assert (=> b!5156181 (= tp!1443461 e!3213856)))

(declare-fun b!5156437 () Bool)

(declare-fun tp!1443523 () Bool)

(declare-fun tp!1443525 () Bool)

(assert (=> b!5156437 (= e!3213856 (and tp!1443523 tp!1443525))))

(declare-fun b!5156438 () Bool)

(declare-fun tp!1443524 () Bool)

(assert (=> b!5156438 (= e!3213856 tp!1443524)))

(declare-fun b!5156439 () Bool)

(declare-fun tp!1443521 () Bool)

(declare-fun tp!1443522 () Bool)

(assert (=> b!5156439 (= e!3213856 (and tp!1443521 tp!1443522))))

(declare-fun b!5156436 () Bool)

(assert (=> b!5156436 (= e!3213856 tp_is_empty!38187)))

(assert (= (and b!5156181 ((_ is ElementMatch!14519) (reg!14848 expr!117))) b!5156436))

(assert (= (and b!5156181 ((_ is Concat!23364) (reg!14848 expr!117))) b!5156437))

(assert (= (and b!5156181 ((_ is Star!14519) (reg!14848 expr!117))) b!5156438))

(assert (= (and b!5156181 ((_ is Union!14519) (reg!14848 expr!117))) b!5156439))

(declare-fun e!3213857 () Bool)

(assert (=> b!5156176 (= tp!1443463 e!3213857)))

(declare-fun b!5156441 () Bool)

(declare-fun tp!1443528 () Bool)

(declare-fun tp!1443530 () Bool)

(assert (=> b!5156441 (= e!3213857 (and tp!1443528 tp!1443530))))

(declare-fun b!5156442 () Bool)

(declare-fun tp!1443529 () Bool)

(assert (=> b!5156442 (= e!3213857 tp!1443529)))

(declare-fun b!5156443 () Bool)

(declare-fun tp!1443526 () Bool)

(declare-fun tp!1443527 () Bool)

(assert (=> b!5156443 (= e!3213857 (and tp!1443526 tp!1443527))))

(declare-fun b!5156440 () Bool)

(assert (=> b!5156440 (= e!3213857 tp_is_empty!38187)))

(assert (= (and b!5156176 ((_ is ElementMatch!14519) (regOne!29550 expr!117))) b!5156440))

(assert (= (and b!5156176 ((_ is Concat!23364) (regOne!29550 expr!117))) b!5156441))

(assert (= (and b!5156176 ((_ is Star!14519) (regOne!29550 expr!117))) b!5156442))

(assert (= (and b!5156176 ((_ is Union!14519) (regOne!29550 expr!117))) b!5156443))

(declare-fun e!3213858 () Bool)

(assert (=> b!5156176 (= tp!1443459 e!3213858)))

(declare-fun b!5156445 () Bool)

(declare-fun tp!1443533 () Bool)

(declare-fun tp!1443535 () Bool)

(assert (=> b!5156445 (= e!3213858 (and tp!1443533 tp!1443535))))

(declare-fun b!5156446 () Bool)

(declare-fun tp!1443534 () Bool)

(assert (=> b!5156446 (= e!3213858 tp!1443534)))

(declare-fun b!5156447 () Bool)

(declare-fun tp!1443531 () Bool)

(declare-fun tp!1443532 () Bool)

(assert (=> b!5156447 (= e!3213858 (and tp!1443531 tp!1443532))))

(declare-fun b!5156444 () Bool)

(assert (=> b!5156444 (= e!3213858 tp_is_empty!38187)))

(assert (= (and b!5156176 ((_ is ElementMatch!14519) (regTwo!29550 expr!117))) b!5156444))

(assert (= (and b!5156176 ((_ is Concat!23364) (regTwo!29550 expr!117))) b!5156445))

(assert (= (and b!5156176 ((_ is Star!14519) (regTwo!29550 expr!117))) b!5156446))

(assert (= (and b!5156176 ((_ is Union!14519) (regTwo!29550 expr!117))) b!5156447))

(declare-fun e!3213859 () Bool)

(assert (=> b!5156178 (= tp!1443462 e!3213859)))

(declare-fun b!5156449 () Bool)

(declare-fun tp!1443538 () Bool)

(declare-fun tp!1443540 () Bool)

(assert (=> b!5156449 (= e!3213859 (and tp!1443538 tp!1443540))))

(declare-fun b!5156450 () Bool)

(declare-fun tp!1443539 () Bool)

(assert (=> b!5156450 (= e!3213859 tp!1443539)))

(declare-fun b!5156451 () Bool)

(declare-fun tp!1443536 () Bool)

(declare-fun tp!1443537 () Bool)

(assert (=> b!5156451 (= e!3213859 (and tp!1443536 tp!1443537))))

(declare-fun b!5156448 () Bool)

(assert (=> b!5156448 (= e!3213859 tp_is_empty!38187)))

(assert (= (and b!5156178 ((_ is ElementMatch!14519) (regOne!29551 expr!117))) b!5156448))

(assert (= (and b!5156178 ((_ is Concat!23364) (regOne!29551 expr!117))) b!5156449))

(assert (= (and b!5156178 ((_ is Star!14519) (regOne!29551 expr!117))) b!5156450))

(assert (= (and b!5156178 ((_ is Union!14519) (regOne!29551 expr!117))) b!5156451))

(declare-fun e!3213860 () Bool)

(assert (=> b!5156178 (= tp!1443460 e!3213860)))

(declare-fun b!5156453 () Bool)

(declare-fun tp!1443543 () Bool)

(declare-fun tp!1443545 () Bool)

(assert (=> b!5156453 (= e!3213860 (and tp!1443543 tp!1443545))))

(declare-fun b!5156454 () Bool)

(declare-fun tp!1443544 () Bool)

(assert (=> b!5156454 (= e!3213860 tp!1443544)))

(declare-fun b!5156455 () Bool)

(declare-fun tp!1443541 () Bool)

(declare-fun tp!1443542 () Bool)

(assert (=> b!5156455 (= e!3213860 (and tp!1443541 tp!1443542))))

(declare-fun b!5156452 () Bool)

(assert (=> b!5156452 (= e!3213860 tp_is_empty!38187)))

(assert (= (and b!5156178 ((_ is ElementMatch!14519) (regTwo!29551 expr!117))) b!5156452))

(assert (= (and b!5156178 ((_ is Concat!23364) (regTwo!29551 expr!117))) b!5156453))

(assert (= (and b!5156178 ((_ is Star!14519) (regTwo!29551 expr!117))) b!5156454))

(assert (= (and b!5156178 ((_ is Union!14519) (regTwo!29551 expr!117))) b!5156455))

(check-sat (not d!1665053) (not bm!361369) (not b!5156446) (not b!5156455) (not d!1665027) (not b!5156442) (not b!5156425) (not bm!361378) (not b!5156407) (not bm!361381) (not bm!361351) (not b!5156239) (not d!1665071) (not d!1665073) (not b!5156443) (not bm!361382) (not b!5156353) tp_is_empty!38187 (not b!5156406) (not d!1665061) (not b!5156438) (not d!1665067) (not b!5156394) (not bm!361385) (not b!5156454) (not b!5156447) (not d!1665059) (not b!5156439) (not bm!361380) (not b!5156453) (not bm!361310) (not bm!361354) (not b!5156441) (not bm!361349) (not bm!361370) (not b!5156450) (not b!5156449) (not b!5156437) (not bm!361308) (not b!5156445) (not b!5156419) (not b!5156451) (not bm!361352) (not bm!361368) (not d!1665057) (not d!1665065) (not bm!361386) (not b!5156362) (not b!5156411) (not bm!361377) (not b!5156420))
(check-sat)
