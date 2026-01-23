; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691060 () Bool)

(assert start!691060)

(declare-fun b!7099218 () Bool)

(declare-fun res!2898841 () Bool)

(declare-fun e!4267200 () Bool)

(assert (=> b!7099218 (=> (not res!2898841) (not e!4267200))))

(declare-datatypes ((C!35992 0))(
  ( (C!35993 (val!27702 Int)) )
))
(declare-datatypes ((Regex!17861 0))(
  ( (ElementMatch!17861 (c!1324700 C!35992)) (Concat!26706 (regOne!36234 Regex!17861) (regTwo!36234 Regex!17861)) (EmptyExpr!17861) (Star!17861 (reg!18190 Regex!17861)) (EmptyLang!17861) (Union!17861 (regOne!36235 Regex!17861) (regTwo!36235 Regex!17861)) )
))
(declare-fun r!11554 () Regex!17861)

(get-info :version)

(assert (=> b!7099218 (= res!2898841 (and (not ((_ is Concat!26706) r!11554)) ((_ is Star!17861) r!11554)))))

(declare-fun b!7099219 () Bool)

(declare-fun e!4267204 () Bool)

(declare-fun e!4267202 () Bool)

(assert (=> b!7099219 (= e!4267204 e!4267202)))

(declare-fun res!2898840 () Bool)

(assert (=> b!7099219 (=> (not res!2898840) (not e!4267202))))

(declare-datatypes ((List!68824 0))(
  ( (Nil!68700) (Cons!68700 (h!75148 Regex!17861) (t!382633 List!68824)) )
))
(declare-fun lt!2557866 () List!68824)

(declare-fun a!1901 () C!35992)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Context!13714 0))(
  ( (Context!13715 (exprs!7357 List!68824)) )
))
(declare-fun lt!2557864 () (InoxSet Context!13714))

(declare-fun derivationStepZipperDown!2400 (Regex!17861 Context!13714 C!35992) (InoxSet Context!13714))

(declare-fun $colon$colon!2744 (List!68824 Regex!17861) List!68824)

(assert (=> b!7099219 (= res!2898840 (= lt!2557864 (derivationStepZipperDown!2400 (reg!18190 r!11554) (Context!13715 ($colon$colon!2744 lt!2557866 r!11554)) a!1901)))))

(assert (=> b!7099219 (= lt!2557864 (derivationStepZipperDown!2400 r!11554 (Context!13715 lt!2557866) a!1901))))

(declare-fun b!7099220 () Bool)

(declare-fun e!4267203 () Bool)

(declare-fun nullable!7501 (Regex!17861) Bool)

(assert (=> b!7099220 (= e!4267203 (not (nullable!7501 (regOne!36234 r!11554))))))

(declare-fun b!7099221 () Bool)

(declare-fun e!4267198 () Bool)

(declare-fun tp!1951346 () Bool)

(declare-fun tp!1951345 () Bool)

(assert (=> b!7099221 (= e!4267198 (and tp!1951346 tp!1951345))))

(declare-fun b!7099222 () Bool)

(declare-fun tp_is_empty!44955 () Bool)

(assert (=> b!7099222 (= e!4267198 tp_is_empty!44955)))

(declare-fun b!7099223 () Bool)

(declare-fun res!2898842 () Bool)

(assert (=> b!7099223 (=> (not res!2898842) (not e!4267200))))

(assert (=> b!7099223 (= res!2898842 e!4267203)))

(declare-fun res!2898839 () Bool)

(assert (=> b!7099223 (=> res!2898839 e!4267203)))

(assert (=> b!7099223 (= res!2898839 (not ((_ is Concat!26706) r!11554)))))

(declare-fun b!7099224 () Bool)

(declare-fun tp!1951347 () Bool)

(declare-fun tp!1951344 () Bool)

(assert (=> b!7099224 (= e!4267198 (and tp!1951347 tp!1951344))))

(declare-fun b!7099225 () Bool)

(declare-fun e!4267201 () Bool)

(declare-fun tp!1951349 () Bool)

(assert (=> b!7099225 (= e!4267201 tp!1951349)))

(declare-fun res!2898836 () Bool)

(assert (=> start!691060 (=> (not res!2898836) (not e!4267200))))

(declare-fun validRegex!9136 (Regex!17861) Bool)

(assert (=> start!691060 (= res!2898836 (validRegex!9136 r!11554))))

(assert (=> start!691060 e!4267200))

(assert (=> start!691060 e!4267198))

(assert (=> start!691060 tp_is_empty!44955))

(declare-fun c!9994 () Context!13714)

(declare-fun e!4267206 () Bool)

(declare-fun inv!87517 (Context!13714) Bool)

(assert (=> start!691060 (and (inv!87517 c!9994) e!4267206)))

(declare-fun auxCtx!45 () Context!13714)

(assert (=> start!691060 (and (inv!87517 auxCtx!45) e!4267201)))

(declare-fun b!7099226 () Bool)

(declare-fun tp!1951350 () Bool)

(assert (=> b!7099226 (= e!4267198 tp!1951350)))

(declare-fun b!7099227 () Bool)

(declare-fun e!4267199 () Bool)

(declare-fun e!4267205 () Bool)

(assert (=> b!7099227 (= e!4267199 e!4267205)))

(declare-fun res!2898837 () Bool)

(assert (=> b!7099227 (=> res!2898837 e!4267205)))

(declare-fun lambda!430817 () Int)

(declare-fun forall!16775 (List!68824 Int) Bool)

(assert (=> b!7099227 (= res!2898837 (not (forall!16775 (exprs!7357 c!9994) lambda!430817)))))

(declare-fun b!7099228 () Bool)

(assert (=> b!7099228 (= e!4267202 (not e!4267199))))

(declare-fun res!2898834 () Bool)

(assert (=> b!7099228 (=> res!2898834 e!4267199)))

(declare-fun appendTo!904 ((InoxSet Context!13714) Context!13714) (InoxSet Context!13714))

(assert (=> b!7099228 (= res!2898834 (not (= lt!2557864 (appendTo!904 (derivationStepZipperDown!2400 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-datatypes ((Unit!162397 0))(
  ( (Unit!162398) )
))
(declare-fun lt!2557861 () Unit!162397)

(declare-fun lemmaConcatPreservesForall!1152 (List!68824 List!68824 Int) Unit!162397)

(assert (=> b!7099228 (= lt!2557861 (lemmaConcatPreservesForall!1152 (exprs!7357 c!9994) (exprs!7357 auxCtx!45) lambda!430817))))

(declare-fun lt!2557859 () List!68824)

(declare-fun lt!2557862 () Context!13714)

(declare-fun ++!16021 (List!68824 List!68824) List!68824)

(assert (=> b!7099228 (= (derivationStepZipperDown!2400 (reg!18190 r!11554) (Context!13715 (++!16021 lt!2557859 (exprs!7357 auxCtx!45))) a!1901) (appendTo!904 (derivationStepZipperDown!2400 (reg!18190 r!11554) lt!2557862 a!1901) auxCtx!45))))

(declare-fun lt!2557863 () Unit!162397)

(assert (=> b!7099228 (= lt!2557863 (lemmaConcatPreservesForall!1152 lt!2557859 (exprs!7357 auxCtx!45) lambda!430817))))

(declare-fun lt!2557858 () Unit!162397)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!212 (Context!13714 Regex!17861 C!35992 Context!13714) Unit!162397)

(assert (=> b!7099228 (= lt!2557858 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!212 lt!2557862 (reg!18190 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7099228 (= lt!2557862 (Context!13715 lt!2557859))))

(assert (=> b!7099228 (= lt!2557859 ($colon$colon!2744 (exprs!7357 c!9994) r!11554))))

(declare-fun b!7099229 () Bool)

(declare-fun res!2898835 () Bool)

(assert (=> b!7099229 (=> (not res!2898835) (not e!4267200))))

(assert (=> b!7099229 (= res!2898835 (and (or (not ((_ is ElementMatch!17861) r!11554)) (not (= (c!1324700 r!11554) a!1901))) (not ((_ is Union!17861) r!11554))))))

(declare-fun b!7099230 () Bool)

(declare-fun tp!1951348 () Bool)

(assert (=> b!7099230 (= e!4267206 tp!1951348)))

(declare-fun b!7099231 () Bool)

(assert (=> b!7099231 (= e!4267205 (forall!16775 (exprs!7357 auxCtx!45) lambda!430817))))

(declare-fun b!7099232 () Bool)

(assert (=> b!7099232 (= e!4267200 e!4267204)))

(declare-fun res!2898838 () Bool)

(assert (=> b!7099232 (=> (not res!2898838) (not e!4267204))))

(assert (=> b!7099232 (= res!2898838 (validRegex!9136 r!11554))))

(assert (=> b!7099232 (= lt!2557866 (++!16021 (exprs!7357 c!9994) (exprs!7357 auxCtx!45)))))

(declare-fun lt!2557860 () Unit!162397)

(assert (=> b!7099232 (= lt!2557860 (lemmaConcatPreservesForall!1152 (exprs!7357 c!9994) (exprs!7357 auxCtx!45) lambda!430817))))

(declare-fun lt!2557865 () Unit!162397)

(assert (=> b!7099232 (= lt!2557865 (lemmaConcatPreservesForall!1152 (exprs!7357 c!9994) (exprs!7357 auxCtx!45) lambda!430817))))

(assert (= (and start!691060 res!2898836) b!7099229))

(assert (= (and b!7099229 res!2898835) b!7099223))

(assert (= (and b!7099223 (not res!2898839)) b!7099220))

(assert (= (and b!7099223 res!2898842) b!7099218))

(assert (= (and b!7099218 res!2898841) b!7099232))

(assert (= (and b!7099232 res!2898838) b!7099219))

(assert (= (and b!7099219 res!2898840) b!7099228))

(assert (= (and b!7099228 (not res!2898834)) b!7099227))

(assert (= (and b!7099227 (not res!2898837)) b!7099231))

(assert (= (and start!691060 ((_ is ElementMatch!17861) r!11554)) b!7099222))

(assert (= (and start!691060 ((_ is Concat!26706) r!11554)) b!7099221))

(assert (= (and start!691060 ((_ is Star!17861) r!11554)) b!7099226))

(assert (= (and start!691060 ((_ is Union!17861) r!11554)) b!7099224))

(assert (= start!691060 b!7099230))

(assert (= start!691060 b!7099225))

(declare-fun m!7825480 () Bool)

(assert (=> b!7099231 m!7825480))

(declare-fun m!7825482 () Bool)

(assert (=> b!7099227 m!7825482))

(declare-fun m!7825484 () Bool)

(assert (=> start!691060 m!7825484))

(declare-fun m!7825486 () Bool)

(assert (=> start!691060 m!7825486))

(declare-fun m!7825488 () Bool)

(assert (=> start!691060 m!7825488))

(assert (=> b!7099232 m!7825484))

(declare-fun m!7825490 () Bool)

(assert (=> b!7099232 m!7825490))

(declare-fun m!7825492 () Bool)

(assert (=> b!7099232 m!7825492))

(assert (=> b!7099232 m!7825492))

(declare-fun m!7825494 () Bool)

(assert (=> b!7099228 m!7825494))

(assert (=> b!7099228 m!7825492))

(declare-fun m!7825496 () Bool)

(assert (=> b!7099228 m!7825496))

(declare-fun m!7825498 () Bool)

(assert (=> b!7099228 m!7825498))

(declare-fun m!7825500 () Bool)

(assert (=> b!7099228 m!7825500))

(declare-fun m!7825502 () Bool)

(assert (=> b!7099228 m!7825502))

(assert (=> b!7099228 m!7825496))

(declare-fun m!7825504 () Bool)

(assert (=> b!7099228 m!7825504))

(declare-fun m!7825506 () Bool)

(assert (=> b!7099228 m!7825506))

(declare-fun m!7825508 () Bool)

(assert (=> b!7099228 m!7825508))

(assert (=> b!7099228 m!7825500))

(declare-fun m!7825510 () Bool)

(assert (=> b!7099228 m!7825510))

(declare-fun m!7825512 () Bool)

(assert (=> b!7099220 m!7825512))

(declare-fun m!7825514 () Bool)

(assert (=> b!7099219 m!7825514))

(declare-fun m!7825516 () Bool)

(assert (=> b!7099219 m!7825516))

(declare-fun m!7825518 () Bool)

(assert (=> b!7099219 m!7825518))

(check-sat (not b!7099231) tp_is_empty!44955 (not b!7099225) (not b!7099230) (not b!7099220) (not b!7099232) (not b!7099224) (not b!7099227) (not b!7099226) (not start!691060) (not b!7099219) (not b!7099221) (not b!7099228))
(check-sat)
(get-model)

(declare-fun d!2218320 () Bool)

(declare-fun res!2898847 () Bool)

(declare-fun e!4267211 () Bool)

(assert (=> d!2218320 (=> res!2898847 e!4267211)))

(assert (=> d!2218320 (= res!2898847 ((_ is Nil!68700) (exprs!7357 c!9994)))))

(assert (=> d!2218320 (= (forall!16775 (exprs!7357 c!9994) lambda!430817) e!4267211)))

(declare-fun b!7099237 () Bool)

(declare-fun e!4267212 () Bool)

(assert (=> b!7099237 (= e!4267211 e!4267212)))

(declare-fun res!2898848 () Bool)

(assert (=> b!7099237 (=> (not res!2898848) (not e!4267212))))

(declare-fun dynLambda!28038 (Int Regex!17861) Bool)

(assert (=> b!7099237 (= res!2898848 (dynLambda!28038 lambda!430817 (h!75148 (exprs!7357 c!9994))))))

(declare-fun b!7099238 () Bool)

(assert (=> b!7099238 (= e!4267212 (forall!16775 (t!382633 (exprs!7357 c!9994)) lambda!430817))))

(assert (= (and d!2218320 (not res!2898847)) b!7099237))

(assert (= (and b!7099237 res!2898848) b!7099238))

(declare-fun b_lambda!271249 () Bool)

(assert (=> (not b_lambda!271249) (not b!7099237)))

(declare-fun m!7825520 () Bool)

(assert (=> b!7099237 m!7825520))

(declare-fun m!7825522 () Bool)

(assert (=> b!7099238 m!7825522))

(assert (=> b!7099227 d!2218320))

(declare-fun b!7099265 () Bool)

(declare-fun e!4267236 () Bool)

(declare-fun e!4267239 () Bool)

(assert (=> b!7099265 (= e!4267236 e!4267239)))

(declare-fun c!1324707 () Bool)

(assert (=> b!7099265 (= c!1324707 ((_ is Star!17861) r!11554))))

(declare-fun b!7099266 () Bool)

(declare-fun res!2898865 () Bool)

(declare-fun e!4267237 () Bool)

(assert (=> b!7099266 (=> (not res!2898865) (not e!4267237))))

(declare-fun call!646292 () Bool)

(assert (=> b!7099266 (= res!2898865 call!646292)))

(declare-fun e!4267238 () Bool)

(assert (=> b!7099266 (= e!4267238 e!4267237)))

(declare-fun b!7099267 () Bool)

(declare-fun e!4267233 () Bool)

(declare-fun e!4267234 () Bool)

(assert (=> b!7099267 (= e!4267233 e!4267234)))

(declare-fun res!2898868 () Bool)

(assert (=> b!7099267 (=> (not res!2898868) (not e!4267234))))

(declare-fun call!646290 () Bool)

(assert (=> b!7099267 (= res!2898868 call!646290)))

(declare-fun b!7099268 () Bool)

(assert (=> b!7099268 (= e!4267234 call!646292)))

(declare-fun b!7099269 () Bool)

(assert (=> b!7099269 (= e!4267237 call!646290)))

(declare-fun c!1324706 () Bool)

(declare-fun call!646291 () Bool)

(declare-fun bm!646285 () Bool)

(assert (=> bm!646285 (= call!646291 (validRegex!9136 (ite c!1324707 (reg!18190 r!11554) (ite c!1324706 (regOne!36235 r!11554) (regTwo!36234 r!11554)))))))

(declare-fun bm!646286 () Bool)

(assert (=> bm!646286 (= call!646292 call!646291)))

(declare-fun d!2218322 () Bool)

(declare-fun res!2898869 () Bool)

(assert (=> d!2218322 (=> res!2898869 e!4267236)))

(assert (=> d!2218322 (= res!2898869 ((_ is ElementMatch!17861) r!11554))))

(assert (=> d!2218322 (= (validRegex!9136 r!11554) e!4267236)))

(declare-fun b!7099270 () Bool)

(declare-fun res!2898867 () Bool)

(assert (=> b!7099270 (=> res!2898867 e!4267233)))

(assert (=> b!7099270 (= res!2898867 (not ((_ is Concat!26706) r!11554)))))

(assert (=> b!7099270 (= e!4267238 e!4267233)))

(declare-fun b!7099271 () Bool)

(declare-fun e!4267235 () Bool)

(assert (=> b!7099271 (= e!4267239 e!4267235)))

(declare-fun res!2898866 () Bool)

(assert (=> b!7099271 (= res!2898866 (not (nullable!7501 (reg!18190 r!11554))))))

(assert (=> b!7099271 (=> (not res!2898866) (not e!4267235))))

(declare-fun bm!646287 () Bool)

(assert (=> bm!646287 (= call!646290 (validRegex!9136 (ite c!1324706 (regTwo!36235 r!11554) (regOne!36234 r!11554))))))

(declare-fun b!7099272 () Bool)

(assert (=> b!7099272 (= e!4267235 call!646291)))

(declare-fun b!7099273 () Bool)

(assert (=> b!7099273 (= e!4267239 e!4267238)))

(assert (=> b!7099273 (= c!1324706 ((_ is Union!17861) r!11554))))

(assert (= (and d!2218322 (not res!2898869)) b!7099265))

(assert (= (and b!7099265 c!1324707) b!7099271))

(assert (= (and b!7099265 (not c!1324707)) b!7099273))

(assert (= (and b!7099271 res!2898866) b!7099272))

(assert (= (and b!7099273 c!1324706) b!7099266))

(assert (= (and b!7099273 (not c!1324706)) b!7099270))

(assert (= (and b!7099266 res!2898865) b!7099269))

(assert (= (and b!7099270 (not res!2898867)) b!7099267))

(assert (= (and b!7099267 res!2898868) b!7099268))

(assert (= (or b!7099266 b!7099268) bm!646286))

(assert (= (or b!7099269 b!7099267) bm!646287))

(assert (= (or b!7099272 bm!646286) bm!646285))

(declare-fun m!7825530 () Bool)

(assert (=> bm!646285 m!7825530))

(declare-fun m!7825532 () Bool)

(assert (=> b!7099271 m!7825532))

(declare-fun m!7825534 () Bool)

(assert (=> bm!646287 m!7825534))

(assert (=> b!7099232 d!2218322))

(declare-fun b!7099294 () Bool)

(declare-fun e!4267251 () List!68824)

(assert (=> b!7099294 (= e!4267251 (exprs!7357 auxCtx!45))))

(declare-fun b!7099295 () Bool)

(assert (=> b!7099295 (= e!4267251 (Cons!68700 (h!75148 (exprs!7357 c!9994)) (++!16021 (t!382633 (exprs!7357 c!9994)) (exprs!7357 auxCtx!45))))))

(declare-fun d!2218330 () Bool)

(declare-fun e!4267250 () Bool)

(assert (=> d!2218330 e!4267250))

(declare-fun res!2898881 () Bool)

(assert (=> d!2218330 (=> (not res!2898881) (not e!4267250))))

(declare-fun lt!2557880 () List!68824)

(declare-fun content!13966 (List!68824) (InoxSet Regex!17861))

(assert (=> d!2218330 (= res!2898881 (= (content!13966 lt!2557880) ((_ map or) (content!13966 (exprs!7357 c!9994)) (content!13966 (exprs!7357 auxCtx!45)))))))

(assert (=> d!2218330 (= lt!2557880 e!4267251)))

(declare-fun c!1324714 () Bool)

(assert (=> d!2218330 (= c!1324714 ((_ is Nil!68700) (exprs!7357 c!9994)))))

(assert (=> d!2218330 (= (++!16021 (exprs!7357 c!9994) (exprs!7357 auxCtx!45)) lt!2557880)))

(declare-fun b!7099296 () Bool)

(declare-fun res!2898880 () Bool)

(assert (=> b!7099296 (=> (not res!2898880) (not e!4267250))))

(declare-fun size!41341 (List!68824) Int)

(assert (=> b!7099296 (= res!2898880 (= (size!41341 lt!2557880) (+ (size!41341 (exprs!7357 c!9994)) (size!41341 (exprs!7357 auxCtx!45)))))))

(declare-fun b!7099297 () Bool)

(assert (=> b!7099297 (= e!4267250 (or (not (= (exprs!7357 auxCtx!45) Nil!68700)) (= lt!2557880 (exprs!7357 c!9994))))))

(assert (= (and d!2218330 c!1324714) b!7099294))

(assert (= (and d!2218330 (not c!1324714)) b!7099295))

(assert (= (and d!2218330 res!2898881) b!7099296))

(assert (= (and b!7099296 res!2898880) b!7099297))

(declare-fun m!7825560 () Bool)

(assert (=> b!7099295 m!7825560))

(declare-fun m!7825562 () Bool)

(assert (=> d!2218330 m!7825562))

(declare-fun m!7825564 () Bool)

(assert (=> d!2218330 m!7825564))

(declare-fun m!7825566 () Bool)

(assert (=> d!2218330 m!7825566))

(declare-fun m!7825568 () Bool)

(assert (=> b!7099296 m!7825568))

(declare-fun m!7825570 () Bool)

(assert (=> b!7099296 m!7825570))

(declare-fun m!7825572 () Bool)

(assert (=> b!7099296 m!7825572))

(assert (=> b!7099232 d!2218330))

(declare-fun d!2218338 () Bool)

(assert (=> d!2218338 (forall!16775 (++!16021 (exprs!7357 c!9994) (exprs!7357 auxCtx!45)) lambda!430817)))

(declare-fun lt!2557883 () Unit!162397)

(declare-fun choose!54739 (List!68824 List!68824 Int) Unit!162397)

(assert (=> d!2218338 (= lt!2557883 (choose!54739 (exprs!7357 c!9994) (exprs!7357 auxCtx!45) lambda!430817))))

(assert (=> d!2218338 (forall!16775 (exprs!7357 c!9994) lambda!430817)))

(assert (=> d!2218338 (= (lemmaConcatPreservesForall!1152 (exprs!7357 c!9994) (exprs!7357 auxCtx!45) lambda!430817) lt!2557883)))

(declare-fun bs!1884160 () Bool)

(assert (= bs!1884160 d!2218338))

(assert (=> bs!1884160 m!7825490))

(assert (=> bs!1884160 m!7825490))

(declare-fun m!7825574 () Bool)

(assert (=> bs!1884160 m!7825574))

(declare-fun m!7825576 () Bool)

(assert (=> bs!1884160 m!7825576))

(assert (=> bs!1884160 m!7825482))

(assert (=> b!7099232 d!2218338))

(declare-fun d!2218340 () Bool)

(declare-fun res!2898884 () Bool)

(declare-fun e!4267264 () Bool)

(assert (=> d!2218340 (=> res!2898884 e!4267264)))

(assert (=> d!2218340 (= res!2898884 ((_ is Nil!68700) (exprs!7357 auxCtx!45)))))

(assert (=> d!2218340 (= (forall!16775 (exprs!7357 auxCtx!45) lambda!430817) e!4267264)))

(declare-fun b!7099320 () Bool)

(declare-fun e!4267265 () Bool)

(assert (=> b!7099320 (= e!4267264 e!4267265)))

(declare-fun res!2898885 () Bool)

(assert (=> b!7099320 (=> (not res!2898885) (not e!4267265))))

(assert (=> b!7099320 (= res!2898885 (dynLambda!28038 lambda!430817 (h!75148 (exprs!7357 auxCtx!45))))))

(declare-fun b!7099321 () Bool)

(assert (=> b!7099321 (= e!4267265 (forall!16775 (t!382633 (exprs!7357 auxCtx!45)) lambda!430817))))

(assert (= (and d!2218340 (not res!2898884)) b!7099320))

(assert (= (and b!7099320 res!2898885) b!7099321))

(declare-fun b_lambda!271253 () Bool)

(assert (=> (not b_lambda!271253) (not b!7099320)))

(declare-fun m!7825578 () Bool)

(assert (=> b!7099320 m!7825578))

(declare-fun m!7825580 () Bool)

(assert (=> b!7099321 m!7825580))

(assert (=> b!7099231 d!2218340))

(declare-fun d!2218342 () Bool)

(declare-fun nullableFct!2891 (Regex!17861) Bool)

(assert (=> d!2218342 (= (nullable!7501 (regOne!36234 r!11554)) (nullableFct!2891 (regOne!36234 r!11554)))))

(declare-fun bs!1884161 () Bool)

(assert (= bs!1884161 d!2218342))

(declare-fun m!7825582 () Bool)

(assert (=> bs!1884161 m!7825582))

(assert (=> b!7099220 d!2218342))

(assert (=> start!691060 d!2218322))

(declare-fun bs!1884162 () Bool)

(declare-fun d!2218344 () Bool)

(assert (= bs!1884162 (and d!2218344 b!7099232)))

(declare-fun lambda!430828 () Int)

(assert (=> bs!1884162 (= lambda!430828 lambda!430817)))

(assert (=> d!2218344 (= (inv!87517 c!9994) (forall!16775 (exprs!7357 c!9994) lambda!430828))))

(declare-fun bs!1884164 () Bool)

(assert (= bs!1884164 d!2218344))

(declare-fun m!7825596 () Bool)

(assert (=> bs!1884164 m!7825596))

(assert (=> start!691060 d!2218344))

(declare-fun bs!1884165 () Bool)

(declare-fun d!2218350 () Bool)

(assert (= bs!1884165 (and d!2218350 b!7099232)))

(declare-fun lambda!430829 () Int)

(assert (=> bs!1884165 (= lambda!430829 lambda!430817)))

(declare-fun bs!1884167 () Bool)

(assert (= bs!1884167 (and d!2218350 d!2218344)))

(assert (=> bs!1884167 (= lambda!430829 lambda!430828)))

(assert (=> d!2218350 (= (inv!87517 auxCtx!45) (forall!16775 (exprs!7357 auxCtx!45) lambda!430829))))

(declare-fun bs!1884169 () Bool)

(assert (= bs!1884169 d!2218350))

(declare-fun m!7825602 () Bool)

(assert (=> bs!1884169 m!7825602))

(assert (=> start!691060 d!2218350))

(declare-fun b!7099468 () Bool)

(declare-fun e!4267345 () (InoxSet Context!13714))

(declare-fun call!646359 () (InoxSet Context!13714))

(assert (=> b!7099468 (= e!4267345 call!646359)))

(declare-fun b!7099470 () Bool)

(declare-fun c!1324767 () Bool)

(assert (=> b!7099470 (= c!1324767 ((_ is Star!17861) (reg!18190 r!11554)))))

(declare-fun e!4267347 () (InoxSet Context!13714))

(assert (=> b!7099470 (= e!4267347 e!4267345)))

(declare-fun b!7099471 () Bool)

(assert (=> b!7099471 (= e!4267345 ((as const (Array Context!13714 Bool)) false))))

(declare-fun b!7099472 () Bool)

(declare-fun e!4267348 () (InoxSet Context!13714))

(declare-fun call!646361 () (InoxSet Context!13714))

(declare-fun call!646357 () (InoxSet Context!13714))

(assert (=> b!7099472 (= e!4267348 ((_ map or) call!646361 call!646357))))

(declare-fun c!1324771 () Bool)

(declare-fun c!1324770 () Bool)

(declare-fun bm!646351 () Bool)

(declare-fun call!646360 () List!68824)

(assert (=> bm!646351 (= call!646360 ($colon$colon!2744 (exprs!7357 (Context!13715 ($colon$colon!2744 lt!2557866 r!11554))) (ite (or c!1324771 c!1324770) (regTwo!36234 (reg!18190 r!11554)) (reg!18190 r!11554))))))

(declare-fun b!7099473 () Bool)

(declare-fun e!4267344 () (InoxSet Context!13714))

(declare-fun call!646356 () (InoxSet Context!13714))

(assert (=> b!7099473 (= e!4267344 ((_ map or) call!646361 call!646356))))

(declare-fun bm!646352 () Bool)

(assert (=> bm!646352 (= call!646359 call!646356)))

(declare-fun call!646358 () List!68824)

(declare-fun bm!646353 () Bool)

(declare-fun c!1324769 () Bool)

(assert (=> bm!646353 (= call!646357 (derivationStepZipperDown!2400 (ite c!1324769 (regTwo!36235 (reg!18190 r!11554)) (ite c!1324771 (regTwo!36234 (reg!18190 r!11554)) (ite c!1324770 (regOne!36234 (reg!18190 r!11554)) (reg!18190 (reg!18190 r!11554))))) (ite (or c!1324769 c!1324771) (Context!13715 ($colon$colon!2744 lt!2557866 r!11554)) (Context!13715 call!646358)) a!1901))))

(declare-fun b!7099474 () Bool)

(declare-fun e!4267346 () Bool)

(assert (=> b!7099474 (= c!1324771 e!4267346)))

(declare-fun res!2898912 () Bool)

(assert (=> b!7099474 (=> (not res!2898912) (not e!4267346))))

(assert (=> b!7099474 (= res!2898912 ((_ is Concat!26706) (reg!18190 r!11554)))))

(assert (=> b!7099474 (= e!4267348 e!4267344)))

(declare-fun bm!646354 () Bool)

(assert (=> bm!646354 (= call!646361 (derivationStepZipperDown!2400 (ite c!1324769 (regOne!36235 (reg!18190 r!11554)) (regOne!36234 (reg!18190 r!11554))) (ite c!1324769 (Context!13715 ($colon$colon!2744 lt!2557866 r!11554)) (Context!13715 call!646360)) a!1901))))

(declare-fun d!2218354 () Bool)

(declare-fun c!1324768 () Bool)

(assert (=> d!2218354 (= c!1324768 (and ((_ is ElementMatch!17861) (reg!18190 r!11554)) (= (c!1324700 (reg!18190 r!11554)) a!1901)))))

(declare-fun e!4267349 () (InoxSet Context!13714))

(assert (=> d!2218354 (= (derivationStepZipperDown!2400 (reg!18190 r!11554) (Context!13715 ($colon$colon!2744 lt!2557866 r!11554)) a!1901) e!4267349)))

(declare-fun b!7099469 () Bool)

(assert (=> b!7099469 (= e!4267344 e!4267347)))

(assert (=> b!7099469 (= c!1324770 ((_ is Concat!26706) (reg!18190 r!11554)))))

(declare-fun b!7099475 () Bool)

(assert (=> b!7099475 (= e!4267347 call!646359)))

(declare-fun b!7099476 () Bool)

(assert (=> b!7099476 (= e!4267349 e!4267348)))

(assert (=> b!7099476 (= c!1324769 ((_ is Union!17861) (reg!18190 r!11554)))))

(declare-fun b!7099477 () Bool)

(assert (=> b!7099477 (= e!4267349 (store ((as const (Array Context!13714 Bool)) false) (Context!13715 ($colon$colon!2744 lt!2557866 r!11554)) true))))

(declare-fun bm!646355 () Bool)

(assert (=> bm!646355 (= call!646356 call!646357)))

(declare-fun bm!646356 () Bool)

(assert (=> bm!646356 (= call!646358 call!646360)))

(declare-fun b!7099478 () Bool)

(assert (=> b!7099478 (= e!4267346 (nullable!7501 (regOne!36234 (reg!18190 r!11554))))))

(assert (= (and d!2218354 c!1324768) b!7099477))

(assert (= (and d!2218354 (not c!1324768)) b!7099476))

(assert (= (and b!7099476 c!1324769) b!7099472))

(assert (= (and b!7099476 (not c!1324769)) b!7099474))

(assert (= (and b!7099474 res!2898912) b!7099478))

(assert (= (and b!7099474 c!1324771) b!7099473))

(assert (= (and b!7099474 (not c!1324771)) b!7099469))

(assert (= (and b!7099469 c!1324770) b!7099475))

(assert (= (and b!7099469 (not c!1324770)) b!7099470))

(assert (= (and b!7099470 c!1324767) b!7099468))

(assert (= (and b!7099470 (not c!1324767)) b!7099471))

(assert (= (or b!7099475 b!7099468) bm!646356))

(assert (= (or b!7099475 b!7099468) bm!646352))

(assert (= (or b!7099473 bm!646352) bm!646355))

(assert (= (or b!7099473 bm!646356) bm!646351))

(assert (= (or b!7099472 bm!646355) bm!646353))

(assert (= (or b!7099472 b!7099473) bm!646354))

(declare-fun m!7825672 () Bool)

(assert (=> bm!646354 m!7825672))

(declare-fun m!7825674 () Bool)

(assert (=> b!7099478 m!7825674))

(declare-fun m!7825676 () Bool)

(assert (=> bm!646351 m!7825676))

(declare-fun m!7825678 () Bool)

(assert (=> bm!646353 m!7825678))

(declare-fun m!7825680 () Bool)

(assert (=> b!7099477 m!7825680))

(assert (=> b!7099219 d!2218354))

(declare-fun d!2218382 () Bool)

(assert (=> d!2218382 (= ($colon$colon!2744 lt!2557866 r!11554) (Cons!68700 r!11554 lt!2557866))))

(assert (=> b!7099219 d!2218382))

(declare-fun b!7099479 () Bool)

(declare-fun e!4267351 () (InoxSet Context!13714))

(declare-fun call!646365 () (InoxSet Context!13714))

(assert (=> b!7099479 (= e!4267351 call!646365)))

(declare-fun b!7099481 () Bool)

(declare-fun c!1324772 () Bool)

(assert (=> b!7099481 (= c!1324772 ((_ is Star!17861) r!11554))))

(declare-fun e!4267353 () (InoxSet Context!13714))

(assert (=> b!7099481 (= e!4267353 e!4267351)))

(declare-fun b!7099482 () Bool)

(assert (=> b!7099482 (= e!4267351 ((as const (Array Context!13714 Bool)) false))))

(declare-fun b!7099483 () Bool)

(declare-fun e!4267354 () (InoxSet Context!13714))

(declare-fun call!646367 () (InoxSet Context!13714))

(declare-fun call!646363 () (InoxSet Context!13714))

(assert (=> b!7099483 (= e!4267354 ((_ map or) call!646367 call!646363))))

(declare-fun c!1324775 () Bool)

(declare-fun c!1324776 () Bool)

(declare-fun call!646366 () List!68824)

(declare-fun bm!646357 () Bool)

(assert (=> bm!646357 (= call!646366 ($colon$colon!2744 (exprs!7357 (Context!13715 lt!2557866)) (ite (or c!1324776 c!1324775) (regTwo!36234 r!11554) r!11554)))))

(declare-fun b!7099484 () Bool)

(declare-fun e!4267350 () (InoxSet Context!13714))

(declare-fun call!646362 () (InoxSet Context!13714))

(assert (=> b!7099484 (= e!4267350 ((_ map or) call!646367 call!646362))))

(declare-fun bm!646358 () Bool)

(assert (=> bm!646358 (= call!646365 call!646362)))

(declare-fun call!646364 () List!68824)

(declare-fun c!1324774 () Bool)

(declare-fun bm!646359 () Bool)

(assert (=> bm!646359 (= call!646363 (derivationStepZipperDown!2400 (ite c!1324774 (regTwo!36235 r!11554) (ite c!1324776 (regTwo!36234 r!11554) (ite c!1324775 (regOne!36234 r!11554) (reg!18190 r!11554)))) (ite (or c!1324774 c!1324776) (Context!13715 lt!2557866) (Context!13715 call!646364)) a!1901))))

(declare-fun b!7099485 () Bool)

(declare-fun e!4267352 () Bool)

(assert (=> b!7099485 (= c!1324776 e!4267352)))

(declare-fun res!2898913 () Bool)

(assert (=> b!7099485 (=> (not res!2898913) (not e!4267352))))

(assert (=> b!7099485 (= res!2898913 ((_ is Concat!26706) r!11554))))

(assert (=> b!7099485 (= e!4267354 e!4267350)))

(declare-fun bm!646360 () Bool)

(assert (=> bm!646360 (= call!646367 (derivationStepZipperDown!2400 (ite c!1324774 (regOne!36235 r!11554) (regOne!36234 r!11554)) (ite c!1324774 (Context!13715 lt!2557866) (Context!13715 call!646366)) a!1901))))

(declare-fun d!2218384 () Bool)

(declare-fun c!1324773 () Bool)

(assert (=> d!2218384 (= c!1324773 (and ((_ is ElementMatch!17861) r!11554) (= (c!1324700 r!11554) a!1901)))))

(declare-fun e!4267355 () (InoxSet Context!13714))

(assert (=> d!2218384 (= (derivationStepZipperDown!2400 r!11554 (Context!13715 lt!2557866) a!1901) e!4267355)))

(declare-fun b!7099480 () Bool)

(assert (=> b!7099480 (= e!4267350 e!4267353)))

(assert (=> b!7099480 (= c!1324775 ((_ is Concat!26706) r!11554))))

(declare-fun b!7099486 () Bool)

(assert (=> b!7099486 (= e!4267353 call!646365)))

(declare-fun b!7099487 () Bool)

(assert (=> b!7099487 (= e!4267355 e!4267354)))

(assert (=> b!7099487 (= c!1324774 ((_ is Union!17861) r!11554))))

(declare-fun b!7099488 () Bool)

(assert (=> b!7099488 (= e!4267355 (store ((as const (Array Context!13714 Bool)) false) (Context!13715 lt!2557866) true))))

(declare-fun bm!646361 () Bool)

(assert (=> bm!646361 (= call!646362 call!646363)))

(declare-fun bm!646362 () Bool)

(assert (=> bm!646362 (= call!646364 call!646366)))

(declare-fun b!7099489 () Bool)

(assert (=> b!7099489 (= e!4267352 (nullable!7501 (regOne!36234 r!11554)))))

(assert (= (and d!2218384 c!1324773) b!7099488))

(assert (= (and d!2218384 (not c!1324773)) b!7099487))

(assert (= (and b!7099487 c!1324774) b!7099483))

(assert (= (and b!7099487 (not c!1324774)) b!7099485))

(assert (= (and b!7099485 res!2898913) b!7099489))

(assert (= (and b!7099485 c!1324776) b!7099484))

(assert (= (and b!7099485 (not c!1324776)) b!7099480))

(assert (= (and b!7099480 c!1324775) b!7099486))

(assert (= (and b!7099480 (not c!1324775)) b!7099481))

(assert (= (and b!7099481 c!1324772) b!7099479))

(assert (= (and b!7099481 (not c!1324772)) b!7099482))

(assert (= (or b!7099486 b!7099479) bm!646362))

(assert (= (or b!7099486 b!7099479) bm!646358))

(assert (= (or b!7099484 bm!646358) bm!646361))

(assert (= (or b!7099484 bm!646362) bm!646357))

(assert (= (or b!7099483 bm!646361) bm!646359))

(assert (= (or b!7099483 b!7099484) bm!646360))

(declare-fun m!7825682 () Bool)

(assert (=> bm!646360 m!7825682))

(assert (=> b!7099489 m!7825512))

(declare-fun m!7825684 () Bool)

(assert (=> bm!646357 m!7825684))

(declare-fun m!7825686 () Bool)

(assert (=> bm!646359 m!7825686))

(declare-fun m!7825688 () Bool)

(assert (=> b!7099488 m!7825688))

(assert (=> b!7099219 d!2218384))

(declare-fun b!7099490 () Bool)

(declare-fun e!4267357 () (InoxSet Context!13714))

(declare-fun call!646371 () (InoxSet Context!13714))

(assert (=> b!7099490 (= e!4267357 call!646371)))

(declare-fun b!7099492 () Bool)

(declare-fun c!1324777 () Bool)

(assert (=> b!7099492 (= c!1324777 ((_ is Star!17861) (reg!18190 r!11554)))))

(declare-fun e!4267359 () (InoxSet Context!13714))

(assert (=> b!7099492 (= e!4267359 e!4267357)))

(declare-fun b!7099493 () Bool)

(assert (=> b!7099493 (= e!4267357 ((as const (Array Context!13714 Bool)) false))))

(declare-fun b!7099494 () Bool)

(declare-fun e!4267360 () (InoxSet Context!13714))

(declare-fun call!646373 () (InoxSet Context!13714))

(declare-fun call!646369 () (InoxSet Context!13714))

(assert (=> b!7099494 (= e!4267360 ((_ map or) call!646373 call!646369))))

(declare-fun bm!646363 () Bool)

(declare-fun call!646372 () List!68824)

(declare-fun c!1324780 () Bool)

(declare-fun c!1324781 () Bool)

(assert (=> bm!646363 (= call!646372 ($colon$colon!2744 (exprs!7357 (Context!13715 (++!16021 lt!2557859 (exprs!7357 auxCtx!45)))) (ite (or c!1324781 c!1324780) (regTwo!36234 (reg!18190 r!11554)) (reg!18190 r!11554))))))

(declare-fun b!7099495 () Bool)

(declare-fun e!4267356 () (InoxSet Context!13714))

(declare-fun call!646368 () (InoxSet Context!13714))

(assert (=> b!7099495 (= e!4267356 ((_ map or) call!646373 call!646368))))

(declare-fun bm!646364 () Bool)

(assert (=> bm!646364 (= call!646371 call!646368)))

(declare-fun c!1324779 () Bool)

(declare-fun bm!646365 () Bool)

(declare-fun call!646370 () List!68824)

(assert (=> bm!646365 (= call!646369 (derivationStepZipperDown!2400 (ite c!1324779 (regTwo!36235 (reg!18190 r!11554)) (ite c!1324781 (regTwo!36234 (reg!18190 r!11554)) (ite c!1324780 (regOne!36234 (reg!18190 r!11554)) (reg!18190 (reg!18190 r!11554))))) (ite (or c!1324779 c!1324781) (Context!13715 (++!16021 lt!2557859 (exprs!7357 auxCtx!45))) (Context!13715 call!646370)) a!1901))))

(declare-fun b!7099496 () Bool)

(declare-fun e!4267358 () Bool)

(assert (=> b!7099496 (= c!1324781 e!4267358)))

(declare-fun res!2898914 () Bool)

(assert (=> b!7099496 (=> (not res!2898914) (not e!4267358))))

(assert (=> b!7099496 (= res!2898914 ((_ is Concat!26706) (reg!18190 r!11554)))))

(assert (=> b!7099496 (= e!4267360 e!4267356)))

(declare-fun bm!646366 () Bool)

(assert (=> bm!646366 (= call!646373 (derivationStepZipperDown!2400 (ite c!1324779 (regOne!36235 (reg!18190 r!11554)) (regOne!36234 (reg!18190 r!11554))) (ite c!1324779 (Context!13715 (++!16021 lt!2557859 (exprs!7357 auxCtx!45))) (Context!13715 call!646372)) a!1901))))

(declare-fun d!2218386 () Bool)

(declare-fun c!1324778 () Bool)

(assert (=> d!2218386 (= c!1324778 (and ((_ is ElementMatch!17861) (reg!18190 r!11554)) (= (c!1324700 (reg!18190 r!11554)) a!1901)))))

(declare-fun e!4267361 () (InoxSet Context!13714))

(assert (=> d!2218386 (= (derivationStepZipperDown!2400 (reg!18190 r!11554) (Context!13715 (++!16021 lt!2557859 (exprs!7357 auxCtx!45))) a!1901) e!4267361)))

(declare-fun b!7099491 () Bool)

(assert (=> b!7099491 (= e!4267356 e!4267359)))

(assert (=> b!7099491 (= c!1324780 ((_ is Concat!26706) (reg!18190 r!11554)))))

(declare-fun b!7099497 () Bool)

(assert (=> b!7099497 (= e!4267359 call!646371)))

(declare-fun b!7099498 () Bool)

(assert (=> b!7099498 (= e!4267361 e!4267360)))

(assert (=> b!7099498 (= c!1324779 ((_ is Union!17861) (reg!18190 r!11554)))))

(declare-fun b!7099499 () Bool)

(assert (=> b!7099499 (= e!4267361 (store ((as const (Array Context!13714 Bool)) false) (Context!13715 (++!16021 lt!2557859 (exprs!7357 auxCtx!45))) true))))

(declare-fun bm!646367 () Bool)

(assert (=> bm!646367 (= call!646368 call!646369)))

(declare-fun bm!646368 () Bool)

(assert (=> bm!646368 (= call!646370 call!646372)))

(declare-fun b!7099500 () Bool)

(assert (=> b!7099500 (= e!4267358 (nullable!7501 (regOne!36234 (reg!18190 r!11554))))))

(assert (= (and d!2218386 c!1324778) b!7099499))

(assert (= (and d!2218386 (not c!1324778)) b!7099498))

(assert (= (and b!7099498 c!1324779) b!7099494))

(assert (= (and b!7099498 (not c!1324779)) b!7099496))

(assert (= (and b!7099496 res!2898914) b!7099500))

(assert (= (and b!7099496 c!1324781) b!7099495))

(assert (= (and b!7099496 (not c!1324781)) b!7099491))

(assert (= (and b!7099491 c!1324780) b!7099497))

(assert (= (and b!7099491 (not c!1324780)) b!7099492))

(assert (= (and b!7099492 c!1324777) b!7099490))

(assert (= (and b!7099492 (not c!1324777)) b!7099493))

(assert (= (or b!7099497 b!7099490) bm!646368))

(assert (= (or b!7099497 b!7099490) bm!646364))

(assert (= (or b!7099495 bm!646364) bm!646367))

(assert (= (or b!7099495 bm!646368) bm!646363))

(assert (= (or b!7099494 bm!646367) bm!646365))

(assert (= (or b!7099494 b!7099495) bm!646366))

(declare-fun m!7825690 () Bool)

(assert (=> bm!646366 m!7825690))

(assert (=> b!7099500 m!7825674))

(declare-fun m!7825692 () Bool)

(assert (=> bm!646363 m!7825692))

(declare-fun m!7825694 () Bool)

(assert (=> bm!646365 m!7825694))

(declare-fun m!7825696 () Bool)

(assert (=> b!7099499 m!7825696))

(assert (=> b!7099228 d!2218386))

(declare-fun d!2218388 () Bool)

(assert (=> d!2218388 true))

(declare-fun lambda!430839 () Int)

(declare-fun map!16202 ((InoxSet Context!13714) Int) (InoxSet Context!13714))

(assert (=> d!2218388 (= (appendTo!904 (derivationStepZipperDown!2400 r!11554 c!9994 a!1901) auxCtx!45) (map!16202 (derivationStepZipperDown!2400 r!11554 c!9994 a!1901) lambda!430839))))

(declare-fun bs!1884181 () Bool)

(assert (= bs!1884181 d!2218388))

(assert (=> bs!1884181 m!7825496))

(declare-fun m!7825698 () Bool)

(assert (=> bs!1884181 m!7825698))

(assert (=> b!7099228 d!2218388))

(assert (=> b!7099228 d!2218338))

(declare-fun d!2218390 () Bool)

(assert (=> d!2218390 (forall!16775 (++!16021 lt!2557859 (exprs!7357 auxCtx!45)) lambda!430817)))

(declare-fun lt!2557891 () Unit!162397)

(assert (=> d!2218390 (= lt!2557891 (choose!54739 lt!2557859 (exprs!7357 auxCtx!45) lambda!430817))))

(assert (=> d!2218390 (forall!16775 lt!2557859 lambda!430817)))

(assert (=> d!2218390 (= (lemmaConcatPreservesForall!1152 lt!2557859 (exprs!7357 auxCtx!45) lambda!430817) lt!2557891)))

(declare-fun bs!1884182 () Bool)

(assert (= bs!1884182 d!2218390))

(assert (=> bs!1884182 m!7825494))

(assert (=> bs!1884182 m!7825494))

(declare-fun m!7825700 () Bool)

(assert (=> bs!1884182 m!7825700))

(declare-fun m!7825702 () Bool)

(assert (=> bs!1884182 m!7825702))

(declare-fun m!7825704 () Bool)

(assert (=> bs!1884182 m!7825704))

(assert (=> b!7099228 d!2218390))

(declare-fun b!7099503 () Bool)

(declare-fun e!4267363 () (InoxSet Context!13714))

(declare-fun call!646377 () (InoxSet Context!13714))

(assert (=> b!7099503 (= e!4267363 call!646377)))

(declare-fun b!7099505 () Bool)

(declare-fun c!1324783 () Bool)

(assert (=> b!7099505 (= c!1324783 ((_ is Star!17861) r!11554))))

(declare-fun e!4267365 () (InoxSet Context!13714))

(assert (=> b!7099505 (= e!4267365 e!4267363)))

(declare-fun b!7099506 () Bool)

(assert (=> b!7099506 (= e!4267363 ((as const (Array Context!13714 Bool)) false))))

(declare-fun b!7099507 () Bool)

(declare-fun e!4267366 () (InoxSet Context!13714))

(declare-fun call!646379 () (InoxSet Context!13714))

(declare-fun call!646375 () (InoxSet Context!13714))

(assert (=> b!7099507 (= e!4267366 ((_ map or) call!646379 call!646375))))

(declare-fun call!646378 () List!68824)

(declare-fun c!1324787 () Bool)

(declare-fun c!1324786 () Bool)

(declare-fun bm!646369 () Bool)

(assert (=> bm!646369 (= call!646378 ($colon$colon!2744 (exprs!7357 c!9994) (ite (or c!1324787 c!1324786) (regTwo!36234 r!11554) r!11554)))))

(declare-fun b!7099508 () Bool)

(declare-fun e!4267362 () (InoxSet Context!13714))

(declare-fun call!646374 () (InoxSet Context!13714))

(assert (=> b!7099508 (= e!4267362 ((_ map or) call!646379 call!646374))))

(declare-fun bm!646370 () Bool)

(assert (=> bm!646370 (= call!646377 call!646374)))

(declare-fun bm!646371 () Bool)

(declare-fun c!1324785 () Bool)

(declare-fun call!646376 () List!68824)

(assert (=> bm!646371 (= call!646375 (derivationStepZipperDown!2400 (ite c!1324785 (regTwo!36235 r!11554) (ite c!1324787 (regTwo!36234 r!11554) (ite c!1324786 (regOne!36234 r!11554) (reg!18190 r!11554)))) (ite (or c!1324785 c!1324787) c!9994 (Context!13715 call!646376)) a!1901))))

(declare-fun b!7099509 () Bool)

(declare-fun e!4267364 () Bool)

(assert (=> b!7099509 (= c!1324787 e!4267364)))

(declare-fun res!2898915 () Bool)

(assert (=> b!7099509 (=> (not res!2898915) (not e!4267364))))

(assert (=> b!7099509 (= res!2898915 ((_ is Concat!26706) r!11554))))

(assert (=> b!7099509 (= e!4267366 e!4267362)))

(declare-fun bm!646372 () Bool)

(assert (=> bm!646372 (= call!646379 (derivationStepZipperDown!2400 (ite c!1324785 (regOne!36235 r!11554) (regOne!36234 r!11554)) (ite c!1324785 c!9994 (Context!13715 call!646378)) a!1901))))

(declare-fun d!2218392 () Bool)

(declare-fun c!1324784 () Bool)

(assert (=> d!2218392 (= c!1324784 (and ((_ is ElementMatch!17861) r!11554) (= (c!1324700 r!11554) a!1901)))))

(declare-fun e!4267367 () (InoxSet Context!13714))

(assert (=> d!2218392 (= (derivationStepZipperDown!2400 r!11554 c!9994 a!1901) e!4267367)))

(declare-fun b!7099504 () Bool)

(assert (=> b!7099504 (= e!4267362 e!4267365)))

(assert (=> b!7099504 (= c!1324786 ((_ is Concat!26706) r!11554))))

(declare-fun b!7099510 () Bool)

(assert (=> b!7099510 (= e!4267365 call!646377)))

(declare-fun b!7099511 () Bool)

(assert (=> b!7099511 (= e!4267367 e!4267366)))

(assert (=> b!7099511 (= c!1324785 ((_ is Union!17861) r!11554))))

(declare-fun b!7099512 () Bool)

(assert (=> b!7099512 (= e!4267367 (store ((as const (Array Context!13714 Bool)) false) c!9994 true))))

(declare-fun bm!646373 () Bool)

(assert (=> bm!646373 (= call!646374 call!646375)))

(declare-fun bm!646374 () Bool)

(assert (=> bm!646374 (= call!646376 call!646378)))

(declare-fun b!7099513 () Bool)

(assert (=> b!7099513 (= e!4267364 (nullable!7501 (regOne!36234 r!11554)))))

(assert (= (and d!2218392 c!1324784) b!7099512))

(assert (= (and d!2218392 (not c!1324784)) b!7099511))

(assert (= (and b!7099511 c!1324785) b!7099507))

(assert (= (and b!7099511 (not c!1324785)) b!7099509))

(assert (= (and b!7099509 res!2898915) b!7099513))

(assert (= (and b!7099509 c!1324787) b!7099508))

(assert (= (and b!7099509 (not c!1324787)) b!7099504))

(assert (= (and b!7099504 c!1324786) b!7099510))

(assert (= (and b!7099504 (not c!1324786)) b!7099505))

(assert (= (and b!7099505 c!1324783) b!7099503))

(assert (= (and b!7099505 (not c!1324783)) b!7099506))

(assert (= (or b!7099510 b!7099503) bm!646374))

(assert (= (or b!7099510 b!7099503) bm!646370))

(assert (= (or b!7099508 bm!646370) bm!646373))

(assert (= (or b!7099508 bm!646374) bm!646369))

(assert (= (or b!7099507 bm!646373) bm!646371))

(assert (= (or b!7099507 b!7099508) bm!646372))

(declare-fun m!7825706 () Bool)

(assert (=> bm!646372 m!7825706))

(assert (=> b!7099513 m!7825512))

(declare-fun m!7825708 () Bool)

(assert (=> bm!646369 m!7825708))

(declare-fun m!7825710 () Bool)

(assert (=> bm!646371 m!7825710))

(declare-fun m!7825712 () Bool)

(assert (=> b!7099512 m!7825712))

(assert (=> b!7099228 d!2218392))

(declare-fun b!7099514 () Bool)

(declare-fun e!4267369 () (InoxSet Context!13714))

(declare-fun call!646383 () (InoxSet Context!13714))

(assert (=> b!7099514 (= e!4267369 call!646383)))

(declare-fun b!7099516 () Bool)

(declare-fun c!1324788 () Bool)

(assert (=> b!7099516 (= c!1324788 ((_ is Star!17861) (reg!18190 r!11554)))))

(declare-fun e!4267371 () (InoxSet Context!13714))

(assert (=> b!7099516 (= e!4267371 e!4267369)))

(declare-fun b!7099517 () Bool)

(assert (=> b!7099517 (= e!4267369 ((as const (Array Context!13714 Bool)) false))))

(declare-fun b!7099518 () Bool)

(declare-fun e!4267372 () (InoxSet Context!13714))

(declare-fun call!646385 () (InoxSet Context!13714))

(declare-fun call!646381 () (InoxSet Context!13714))

(assert (=> b!7099518 (= e!4267372 ((_ map or) call!646385 call!646381))))

(declare-fun c!1324792 () Bool)

(declare-fun bm!646375 () Bool)

(declare-fun call!646384 () List!68824)

(declare-fun c!1324791 () Bool)

(assert (=> bm!646375 (= call!646384 ($colon$colon!2744 (exprs!7357 lt!2557862) (ite (or c!1324792 c!1324791) (regTwo!36234 (reg!18190 r!11554)) (reg!18190 r!11554))))))

(declare-fun b!7099519 () Bool)

(declare-fun e!4267368 () (InoxSet Context!13714))

(declare-fun call!646380 () (InoxSet Context!13714))

(assert (=> b!7099519 (= e!4267368 ((_ map or) call!646385 call!646380))))

(declare-fun bm!646376 () Bool)

(assert (=> bm!646376 (= call!646383 call!646380)))

(declare-fun call!646382 () List!68824)

(declare-fun bm!646377 () Bool)

(declare-fun c!1324790 () Bool)

(assert (=> bm!646377 (= call!646381 (derivationStepZipperDown!2400 (ite c!1324790 (regTwo!36235 (reg!18190 r!11554)) (ite c!1324792 (regTwo!36234 (reg!18190 r!11554)) (ite c!1324791 (regOne!36234 (reg!18190 r!11554)) (reg!18190 (reg!18190 r!11554))))) (ite (or c!1324790 c!1324792) lt!2557862 (Context!13715 call!646382)) a!1901))))

(declare-fun b!7099520 () Bool)

(declare-fun e!4267370 () Bool)

(assert (=> b!7099520 (= c!1324792 e!4267370)))

(declare-fun res!2898916 () Bool)

(assert (=> b!7099520 (=> (not res!2898916) (not e!4267370))))

(assert (=> b!7099520 (= res!2898916 ((_ is Concat!26706) (reg!18190 r!11554)))))

(assert (=> b!7099520 (= e!4267372 e!4267368)))

(declare-fun bm!646378 () Bool)

(assert (=> bm!646378 (= call!646385 (derivationStepZipperDown!2400 (ite c!1324790 (regOne!36235 (reg!18190 r!11554)) (regOne!36234 (reg!18190 r!11554))) (ite c!1324790 lt!2557862 (Context!13715 call!646384)) a!1901))))

(declare-fun d!2218394 () Bool)

(declare-fun c!1324789 () Bool)

(assert (=> d!2218394 (= c!1324789 (and ((_ is ElementMatch!17861) (reg!18190 r!11554)) (= (c!1324700 (reg!18190 r!11554)) a!1901)))))

(declare-fun e!4267373 () (InoxSet Context!13714))

(assert (=> d!2218394 (= (derivationStepZipperDown!2400 (reg!18190 r!11554) lt!2557862 a!1901) e!4267373)))

(declare-fun b!7099515 () Bool)

(assert (=> b!7099515 (= e!4267368 e!4267371)))

(assert (=> b!7099515 (= c!1324791 ((_ is Concat!26706) (reg!18190 r!11554)))))

(declare-fun b!7099521 () Bool)

(assert (=> b!7099521 (= e!4267371 call!646383)))

(declare-fun b!7099522 () Bool)

(assert (=> b!7099522 (= e!4267373 e!4267372)))

(assert (=> b!7099522 (= c!1324790 ((_ is Union!17861) (reg!18190 r!11554)))))

(declare-fun b!7099523 () Bool)

(assert (=> b!7099523 (= e!4267373 (store ((as const (Array Context!13714 Bool)) false) lt!2557862 true))))

(declare-fun bm!646379 () Bool)

(assert (=> bm!646379 (= call!646380 call!646381)))

(declare-fun bm!646380 () Bool)

(assert (=> bm!646380 (= call!646382 call!646384)))

(declare-fun b!7099524 () Bool)

(assert (=> b!7099524 (= e!4267370 (nullable!7501 (regOne!36234 (reg!18190 r!11554))))))

(assert (= (and d!2218394 c!1324789) b!7099523))

(assert (= (and d!2218394 (not c!1324789)) b!7099522))

(assert (= (and b!7099522 c!1324790) b!7099518))

(assert (= (and b!7099522 (not c!1324790)) b!7099520))

(assert (= (and b!7099520 res!2898916) b!7099524))

(assert (= (and b!7099520 c!1324792) b!7099519))

(assert (= (and b!7099520 (not c!1324792)) b!7099515))

(assert (= (and b!7099515 c!1324791) b!7099521))

(assert (= (and b!7099515 (not c!1324791)) b!7099516))

(assert (= (and b!7099516 c!1324788) b!7099514))

(assert (= (and b!7099516 (not c!1324788)) b!7099517))

(assert (= (or b!7099521 b!7099514) bm!646380))

(assert (= (or b!7099521 b!7099514) bm!646376))

(assert (= (or b!7099519 bm!646376) bm!646379))

(assert (= (or b!7099519 bm!646380) bm!646375))

(assert (= (or b!7099518 bm!646379) bm!646377))

(assert (= (or b!7099518 b!7099519) bm!646378))

(declare-fun m!7825714 () Bool)

(assert (=> bm!646378 m!7825714))

(assert (=> b!7099524 m!7825674))

(declare-fun m!7825716 () Bool)

(assert (=> bm!646375 m!7825716))

(declare-fun m!7825718 () Bool)

(assert (=> bm!646377 m!7825718))

(declare-fun m!7825720 () Bool)

(assert (=> b!7099523 m!7825720))

(assert (=> b!7099228 d!2218394))

(declare-fun bs!1884183 () Bool)

(declare-fun d!2218396 () Bool)

(assert (= bs!1884183 (and d!2218396 b!7099232)))

(declare-fun lambda!430842 () Int)

(assert (=> bs!1884183 (= lambda!430842 lambda!430817)))

(declare-fun bs!1884184 () Bool)

(assert (= bs!1884184 (and d!2218396 d!2218344)))

(assert (=> bs!1884184 (= lambda!430842 lambda!430828)))

(declare-fun bs!1884185 () Bool)

(assert (= bs!1884185 (and d!2218396 d!2218350)))

(assert (=> bs!1884185 (= lambda!430842 lambda!430829)))

(assert (=> d!2218396 (= (derivationStepZipperDown!2400 (reg!18190 r!11554) (Context!13715 (++!16021 (exprs!7357 lt!2557862) (exprs!7357 auxCtx!45))) a!1901) (appendTo!904 (derivationStepZipperDown!2400 (reg!18190 r!11554) lt!2557862 a!1901) auxCtx!45))))

(declare-fun lt!2557897 () Unit!162397)

(assert (=> d!2218396 (= lt!2557897 (lemmaConcatPreservesForall!1152 (exprs!7357 lt!2557862) (exprs!7357 auxCtx!45) lambda!430842))))

(declare-fun lt!2557896 () Unit!162397)

(declare-fun choose!54740 (Context!13714 Regex!17861 C!35992 Context!13714) Unit!162397)

(assert (=> d!2218396 (= lt!2557896 (choose!54740 lt!2557862 (reg!18190 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2218396 (validRegex!9136 (reg!18190 r!11554))))

(assert (=> d!2218396 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!212 lt!2557862 (reg!18190 r!11554) a!1901 auxCtx!45) lt!2557896)))

(declare-fun bs!1884186 () Bool)

(assert (= bs!1884186 d!2218396))

(declare-fun m!7825722 () Bool)

(assert (=> bs!1884186 m!7825722))

(assert (=> bs!1884186 m!7825500))

(assert (=> bs!1884186 m!7825510))

(declare-fun m!7825724 () Bool)

(assert (=> bs!1884186 m!7825724))

(declare-fun m!7825726 () Bool)

(assert (=> bs!1884186 m!7825726))

(declare-fun m!7825728 () Bool)

(assert (=> bs!1884186 m!7825728))

(declare-fun m!7825730 () Bool)

(assert (=> bs!1884186 m!7825730))

(assert (=> bs!1884186 m!7825500))

(assert (=> b!7099228 d!2218396))

(declare-fun b!7099525 () Bool)

(declare-fun e!4267375 () List!68824)

(assert (=> b!7099525 (= e!4267375 (exprs!7357 auxCtx!45))))

(declare-fun b!7099526 () Bool)

(assert (=> b!7099526 (= e!4267375 (Cons!68700 (h!75148 lt!2557859) (++!16021 (t!382633 lt!2557859) (exprs!7357 auxCtx!45))))))

(declare-fun d!2218398 () Bool)

(declare-fun e!4267374 () Bool)

(assert (=> d!2218398 e!4267374))

(declare-fun res!2898918 () Bool)

(assert (=> d!2218398 (=> (not res!2898918) (not e!4267374))))

(declare-fun lt!2557898 () List!68824)

(assert (=> d!2218398 (= res!2898918 (= (content!13966 lt!2557898) ((_ map or) (content!13966 lt!2557859) (content!13966 (exprs!7357 auxCtx!45)))))))

(assert (=> d!2218398 (= lt!2557898 e!4267375)))

(declare-fun c!1324794 () Bool)

(assert (=> d!2218398 (= c!1324794 ((_ is Nil!68700) lt!2557859))))

(assert (=> d!2218398 (= (++!16021 lt!2557859 (exprs!7357 auxCtx!45)) lt!2557898)))

(declare-fun b!7099527 () Bool)

(declare-fun res!2898917 () Bool)

(assert (=> b!7099527 (=> (not res!2898917) (not e!4267374))))

(assert (=> b!7099527 (= res!2898917 (= (size!41341 lt!2557898) (+ (size!41341 lt!2557859) (size!41341 (exprs!7357 auxCtx!45)))))))

(declare-fun b!7099528 () Bool)

(assert (=> b!7099528 (= e!4267374 (or (not (= (exprs!7357 auxCtx!45) Nil!68700)) (= lt!2557898 lt!2557859)))))

(assert (= (and d!2218398 c!1324794) b!7099525))

(assert (= (and d!2218398 (not c!1324794)) b!7099526))

(assert (= (and d!2218398 res!2898918) b!7099527))

(assert (= (and b!7099527 res!2898917) b!7099528))

(declare-fun m!7825732 () Bool)

(assert (=> b!7099526 m!7825732))

(declare-fun m!7825734 () Bool)

(assert (=> d!2218398 m!7825734))

(declare-fun m!7825736 () Bool)

(assert (=> d!2218398 m!7825736))

(assert (=> d!2218398 m!7825566))

(declare-fun m!7825738 () Bool)

(assert (=> b!7099527 m!7825738))

(declare-fun m!7825740 () Bool)

(assert (=> b!7099527 m!7825740))

(assert (=> b!7099527 m!7825572))

(assert (=> b!7099228 d!2218398))

(declare-fun bs!1884187 () Bool)

(declare-fun d!2218400 () Bool)

(assert (= bs!1884187 (and d!2218400 d!2218388)))

(declare-fun lambda!430843 () Int)

(assert (=> bs!1884187 (= lambda!430843 lambda!430839)))

(assert (=> d!2218400 true))

(assert (=> d!2218400 (= (appendTo!904 (derivationStepZipperDown!2400 (reg!18190 r!11554) lt!2557862 a!1901) auxCtx!45) (map!16202 (derivationStepZipperDown!2400 (reg!18190 r!11554) lt!2557862 a!1901) lambda!430843))))

(declare-fun bs!1884188 () Bool)

(assert (= bs!1884188 d!2218400))

(assert (=> bs!1884188 m!7825500))

(declare-fun m!7825742 () Bool)

(assert (=> bs!1884188 m!7825742))

(assert (=> b!7099228 d!2218400))

(declare-fun d!2218402 () Bool)

(assert (=> d!2218402 (= ($colon$colon!2744 (exprs!7357 c!9994) r!11554) (Cons!68700 r!11554 (exprs!7357 c!9994)))))

(assert (=> b!7099228 d!2218402))

(declare-fun b!7099541 () Bool)

(declare-fun e!4267378 () Bool)

(declare-fun tp!1951405 () Bool)

(assert (=> b!7099541 (= e!4267378 tp!1951405)))

(declare-fun b!7099539 () Bool)

(assert (=> b!7099539 (= e!4267378 tp_is_empty!44955)))

(assert (=> b!7099221 (= tp!1951346 e!4267378)))

(declare-fun b!7099542 () Bool)

(declare-fun tp!1951408 () Bool)

(declare-fun tp!1951407 () Bool)

(assert (=> b!7099542 (= e!4267378 (and tp!1951408 tp!1951407))))

(declare-fun b!7099540 () Bool)

(declare-fun tp!1951404 () Bool)

(declare-fun tp!1951406 () Bool)

(assert (=> b!7099540 (= e!4267378 (and tp!1951404 tp!1951406))))

(assert (= (and b!7099221 ((_ is ElementMatch!17861) (regOne!36234 r!11554))) b!7099539))

(assert (= (and b!7099221 ((_ is Concat!26706) (regOne!36234 r!11554))) b!7099540))

(assert (= (and b!7099221 ((_ is Star!17861) (regOne!36234 r!11554))) b!7099541))

(assert (= (and b!7099221 ((_ is Union!17861) (regOne!36234 r!11554))) b!7099542))

(declare-fun b!7099545 () Bool)

(declare-fun e!4267379 () Bool)

(declare-fun tp!1951410 () Bool)

(assert (=> b!7099545 (= e!4267379 tp!1951410)))

(declare-fun b!7099543 () Bool)

(assert (=> b!7099543 (= e!4267379 tp_is_empty!44955)))

(assert (=> b!7099221 (= tp!1951345 e!4267379)))

(declare-fun b!7099546 () Bool)

(declare-fun tp!1951413 () Bool)

(declare-fun tp!1951412 () Bool)

(assert (=> b!7099546 (= e!4267379 (and tp!1951413 tp!1951412))))

(declare-fun b!7099544 () Bool)

(declare-fun tp!1951409 () Bool)

(declare-fun tp!1951411 () Bool)

(assert (=> b!7099544 (= e!4267379 (and tp!1951409 tp!1951411))))

(assert (= (and b!7099221 ((_ is ElementMatch!17861) (regTwo!36234 r!11554))) b!7099543))

(assert (= (and b!7099221 ((_ is Concat!26706) (regTwo!36234 r!11554))) b!7099544))

(assert (= (and b!7099221 ((_ is Star!17861) (regTwo!36234 r!11554))) b!7099545))

(assert (= (and b!7099221 ((_ is Union!17861) (regTwo!36234 r!11554))) b!7099546))

(declare-fun b!7099549 () Bool)

(declare-fun e!4267380 () Bool)

(declare-fun tp!1951415 () Bool)

(assert (=> b!7099549 (= e!4267380 tp!1951415)))

(declare-fun b!7099547 () Bool)

(assert (=> b!7099547 (= e!4267380 tp_is_empty!44955)))

(assert (=> b!7099226 (= tp!1951350 e!4267380)))

(declare-fun b!7099550 () Bool)

(declare-fun tp!1951418 () Bool)

(declare-fun tp!1951417 () Bool)

(assert (=> b!7099550 (= e!4267380 (and tp!1951418 tp!1951417))))

(declare-fun b!7099548 () Bool)

(declare-fun tp!1951414 () Bool)

(declare-fun tp!1951416 () Bool)

(assert (=> b!7099548 (= e!4267380 (and tp!1951414 tp!1951416))))

(assert (= (and b!7099226 ((_ is ElementMatch!17861) (reg!18190 r!11554))) b!7099547))

(assert (= (and b!7099226 ((_ is Concat!26706) (reg!18190 r!11554))) b!7099548))

(assert (= (and b!7099226 ((_ is Star!17861) (reg!18190 r!11554))) b!7099549))

(assert (= (and b!7099226 ((_ is Union!17861) (reg!18190 r!11554))) b!7099550))

(declare-fun b!7099553 () Bool)

(declare-fun e!4267381 () Bool)

(declare-fun tp!1951420 () Bool)

(assert (=> b!7099553 (= e!4267381 tp!1951420)))

(declare-fun b!7099551 () Bool)

(assert (=> b!7099551 (= e!4267381 tp_is_empty!44955)))

(assert (=> b!7099224 (= tp!1951347 e!4267381)))

(declare-fun b!7099554 () Bool)

(declare-fun tp!1951423 () Bool)

(declare-fun tp!1951422 () Bool)

(assert (=> b!7099554 (= e!4267381 (and tp!1951423 tp!1951422))))

(declare-fun b!7099552 () Bool)

(declare-fun tp!1951419 () Bool)

(declare-fun tp!1951421 () Bool)

(assert (=> b!7099552 (= e!4267381 (and tp!1951419 tp!1951421))))

(assert (= (and b!7099224 ((_ is ElementMatch!17861) (regOne!36235 r!11554))) b!7099551))

(assert (= (and b!7099224 ((_ is Concat!26706) (regOne!36235 r!11554))) b!7099552))

(assert (= (and b!7099224 ((_ is Star!17861) (regOne!36235 r!11554))) b!7099553))

(assert (= (and b!7099224 ((_ is Union!17861) (regOne!36235 r!11554))) b!7099554))

(declare-fun b!7099557 () Bool)

(declare-fun e!4267382 () Bool)

(declare-fun tp!1951425 () Bool)

(assert (=> b!7099557 (= e!4267382 tp!1951425)))

(declare-fun b!7099555 () Bool)

(assert (=> b!7099555 (= e!4267382 tp_is_empty!44955)))

(assert (=> b!7099224 (= tp!1951344 e!4267382)))

(declare-fun b!7099558 () Bool)

(declare-fun tp!1951428 () Bool)

(declare-fun tp!1951427 () Bool)

(assert (=> b!7099558 (= e!4267382 (and tp!1951428 tp!1951427))))

(declare-fun b!7099556 () Bool)

(declare-fun tp!1951424 () Bool)

(declare-fun tp!1951426 () Bool)

(assert (=> b!7099556 (= e!4267382 (and tp!1951424 tp!1951426))))

(assert (= (and b!7099224 ((_ is ElementMatch!17861) (regTwo!36235 r!11554))) b!7099555))

(assert (= (and b!7099224 ((_ is Concat!26706) (regTwo!36235 r!11554))) b!7099556))

(assert (= (and b!7099224 ((_ is Star!17861) (regTwo!36235 r!11554))) b!7099557))

(assert (= (and b!7099224 ((_ is Union!17861) (regTwo!36235 r!11554))) b!7099558))

(declare-fun b!7099563 () Bool)

(declare-fun e!4267385 () Bool)

(declare-fun tp!1951433 () Bool)

(declare-fun tp!1951434 () Bool)

(assert (=> b!7099563 (= e!4267385 (and tp!1951433 tp!1951434))))

(assert (=> b!7099225 (= tp!1951349 e!4267385)))

(assert (= (and b!7099225 ((_ is Cons!68700) (exprs!7357 auxCtx!45))) b!7099563))

(declare-fun b!7099564 () Bool)

(declare-fun e!4267386 () Bool)

(declare-fun tp!1951435 () Bool)

(declare-fun tp!1951436 () Bool)

(assert (=> b!7099564 (= e!4267386 (and tp!1951435 tp!1951436))))

(assert (=> b!7099230 (= tp!1951348 e!4267386)))

(assert (= (and b!7099230 ((_ is Cons!68700) (exprs!7357 c!9994))) b!7099564))

(declare-fun b_lambda!271261 () Bool)

(assert (= b_lambda!271253 (or b!7099232 b_lambda!271261)))

(declare-fun bs!1884189 () Bool)

(declare-fun d!2218404 () Bool)

(assert (= bs!1884189 (and d!2218404 b!7099232)))

(assert (=> bs!1884189 (= (dynLambda!28038 lambda!430817 (h!75148 (exprs!7357 auxCtx!45))) (validRegex!9136 (h!75148 (exprs!7357 auxCtx!45))))))

(declare-fun m!7825744 () Bool)

(assert (=> bs!1884189 m!7825744))

(assert (=> b!7099320 d!2218404))

(declare-fun b_lambda!271263 () Bool)

(assert (= b_lambda!271249 (or b!7099232 b_lambda!271263)))

(declare-fun bs!1884190 () Bool)

(declare-fun d!2218406 () Bool)

(assert (= bs!1884190 (and d!2218406 b!7099232)))

(assert (=> bs!1884190 (= (dynLambda!28038 lambda!430817 (h!75148 (exprs!7357 c!9994))) (validRegex!9136 (h!75148 (exprs!7357 c!9994))))))

(declare-fun m!7825746 () Bool)

(assert (=> bs!1884190 m!7825746))

(assert (=> b!7099237 d!2218406))

(check-sat (not d!2218398) (not b!7099546) (not b!7099527) (not d!2218344) (not b!7099271) (not bm!646375) (not b!7099296) (not bs!1884190) (not b!7099563) (not bm!646285) (not b!7099540) (not d!2218330) (not b!7099321) (not d!2218388) (not bm!646357) (not b!7099557) tp_is_empty!44955 (not bm!646363) (not bm!646287) (not b!7099549) (not bm!646359) (not b!7099554) (not b!7099545) (not b!7099552) (not bs!1884189) (not b!7099544) (not d!2218350) (not b!7099564) (not b!7099558) (not bm!646378) (not b!7099556) (not bm!646372) (not b!7099500) (not b_lambda!271263) (not bm!646369) (not b!7099550) (not b!7099526) (not d!2218338) (not bm!646371) (not bm!646360) (not d!2218396) (not b!7099238) (not b!7099541) (not bm!646365) (not b!7099513) (not bm!646377) (not d!2218390) (not b!7099489) (not bm!646353) (not b!7099524) (not b!7099478) (not d!2218400) (not b!7099548) (not d!2218342) (not b!7099553) (not bm!646351) (not b!7099295) (not b!7099542) (not bm!646366) (not b_lambda!271261) (not bm!646354))
(check-sat)
