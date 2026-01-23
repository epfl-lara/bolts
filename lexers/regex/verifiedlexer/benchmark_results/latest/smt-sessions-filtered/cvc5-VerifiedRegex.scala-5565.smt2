; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279404 () Bool)

(assert start!279404)

(declare-fun bs!521215 () Bool)

(declare-fun b!2865278 () Bool)

(declare-fun b!2865279 () Bool)

(assert (= bs!521215 (and b!2865278 b!2865279)))

(declare-fun lambda!106455 () Int)

(declare-fun lambda!106454 () Int)

(assert (=> bs!521215 (not (= lambda!106455 lambda!106454))))

(declare-fun setIsEmpty!25676 () Bool)

(declare-fun setRes!25676 () Bool)

(assert (=> setIsEmpty!25676 setRes!25676))

(declare-fun b!2865275 () Bool)

(declare-fun e!1813912 () Bool)

(declare-fun tp!922776 () Bool)

(assert (=> b!2865275 (= e!1813912 tp!922776)))

(declare-fun b!2865276 () Bool)

(declare-fun res!1189560 () Bool)

(declare-fun e!1813913 () Bool)

(assert (=> b!2865276 (=> (not res!1189560) (not e!1813913))))

(declare-datatypes ((C!17550 0))(
  ( (C!17551 (val!10809 Int)) )
))
(declare-datatypes ((Regex!8684 0))(
  ( (ElementMatch!8684 (c!462403 C!17550)) (Concat!14005 (regOne!17880 Regex!8684) (regTwo!17880 Regex!8684)) (EmptyExpr!8684) (Star!8684 (reg!9013 Regex!8684)) (EmptyLang!8684) (Union!8684 (regOne!17881 Regex!8684) (regTwo!17881 Regex!8684)) )
))
(declare-datatypes ((List!34383 0))(
  ( (Nil!34259) (Cons!34259 (h!39679 Regex!8684) (t!233426 List!34383)) )
))
(declare-datatypes ((Context!5288 0))(
  ( (Context!5289 (exprs!3144 List!34383)) )
))
(declare-fun z!691 () (Set Context!5288))

(declare-datatypes ((List!34384 0))(
  ( (Nil!34260) (Cons!34260 (h!39680 C!17550) (t!233427 List!34384)) )
))
(declare-datatypes ((Option!6363 0))(
  ( (None!6362) (Some!6362 (v!34484 List!34384)) )
))
(declare-fun isDefined!4983 (Option!6363) Bool)

(declare-fun getLanguageWitness!330 ((Set Context!5288)) Option!6363)

(assert (=> b!2865276 (= res!1189560 (isDefined!4983 (getLanguageWitness!330 z!691)))))

(declare-fun b!2865277 () Bool)

(declare-fun e!1813914 () Bool)

(declare-fun lostCause!777 (Context!5288) Bool)

(declare-fun getWitness!614 ((Set Context!5288) Int) Context!5288)

(assert (=> b!2865277 (= e!1813914 (not (lostCause!777 (getWitness!614 z!691 lambda!106455))))))

(assert (=> b!2865278 (= e!1813913 (not e!1813914))))

(declare-fun res!1189557 () Bool)

(assert (=> b!2865278 (=> res!1189557 e!1813914)))

(declare-fun exists!1112 ((Set Context!5288) Int) Bool)

(assert (=> b!2865278 (= res!1189557 (not (exists!1112 z!691 lambda!106455)))))

(declare-datatypes ((List!34385 0))(
  ( (Nil!34261) (Cons!34261 (h!39681 Context!5288) (t!233428 List!34385)) )
))
(declare-fun lt!1016187 () List!34385)

(declare-fun exists!1113 (List!34385 Int) Bool)

(assert (=> b!2865278 (exists!1113 lt!1016187 lambda!106455)))

(declare-datatypes ((Unit!47903 0))(
  ( (Unit!47904) )
))
(declare-fun lt!1016188 () Unit!47903)

(declare-fun lemmaNotForallThenExists!152 (List!34385 Int) Unit!47903)

(assert (=> b!2865278 (= lt!1016188 (lemmaNotForallThenExists!152 lt!1016187 lambda!106454))))

(declare-fun toList!2013 ((Set Context!5288)) List!34385)

(assert (=> b!2865278 (= lt!1016187 (toList!2013 z!691))))

(declare-fun res!1189558 () Bool)

(assert (=> start!279404 (=> (not res!1189558) (not e!1813913))))

(declare-fun lostCauseZipper!588 ((Set Context!5288)) Bool)

(assert (=> start!279404 (= res!1189558 (not (lostCauseZipper!588 z!691)))))

(assert (=> start!279404 e!1813913))

(declare-fun condSetEmpty!25676 () Bool)

(assert (=> start!279404 (= condSetEmpty!25676 (= z!691 (as set.empty (Set Context!5288))))))

(assert (=> start!279404 setRes!25676))

(declare-fun res!1189559 () Bool)

(assert (=> b!2865279 (=> (not res!1189559) (not e!1813913))))

(declare-fun forall!7041 ((Set Context!5288) Int) Bool)

(assert (=> b!2865279 (= res!1189559 (not (forall!7041 z!691 lambda!106454)))))

(declare-fun setElem!25676 () Context!5288)

(declare-fun setNonEmpty!25676 () Bool)

(declare-fun tp!922775 () Bool)

(declare-fun inv!46298 (Context!5288) Bool)

(assert (=> setNonEmpty!25676 (= setRes!25676 (and tp!922775 (inv!46298 setElem!25676) e!1813912))))

(declare-fun setRest!25676 () (Set Context!5288))

(assert (=> setNonEmpty!25676 (= z!691 (set.union (set.insert setElem!25676 (as set.empty (Set Context!5288))) setRest!25676))))

(assert (= (and start!279404 res!1189558) b!2865276))

(assert (= (and b!2865276 res!1189560) b!2865279))

(assert (= (and b!2865279 res!1189559) b!2865278))

(assert (= (and b!2865278 (not res!1189557)) b!2865277))

(assert (= (and start!279404 condSetEmpty!25676) setIsEmpty!25676))

(assert (= (and start!279404 (not condSetEmpty!25676)) setNonEmpty!25676))

(assert (= setNonEmpty!25676 b!2865275))

(declare-fun m!3285391 () Bool)

(assert (=> b!2865276 m!3285391))

(assert (=> b!2865276 m!3285391))

(declare-fun m!3285393 () Bool)

(assert (=> b!2865276 m!3285393))

(declare-fun m!3285395 () Bool)

(assert (=> setNonEmpty!25676 m!3285395))

(declare-fun m!3285397 () Bool)

(assert (=> b!2865277 m!3285397))

(assert (=> b!2865277 m!3285397))

(declare-fun m!3285399 () Bool)

(assert (=> b!2865277 m!3285399))

(declare-fun m!3285401 () Bool)

(assert (=> b!2865278 m!3285401))

(declare-fun m!3285403 () Bool)

(assert (=> b!2865278 m!3285403))

(declare-fun m!3285405 () Bool)

(assert (=> b!2865278 m!3285405))

(declare-fun m!3285407 () Bool)

(assert (=> b!2865278 m!3285407))

(declare-fun m!3285409 () Bool)

(assert (=> start!279404 m!3285409))

(declare-fun m!3285411 () Bool)

(assert (=> b!2865279 m!3285411))

(push 1)

(assert (not b!2865277))

(assert (not start!279404))

(assert (not b!2865279))

(assert (not setNonEmpty!25676))

(assert (not b!2865278))

(assert (not b!2865275))

(assert (not b!2865276))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!828450 () Bool)

(declare-fun isEmpty!18667 (Option!6363) Bool)

(assert (=> d!828450 (= (isDefined!4983 (getLanguageWitness!330 z!691)) (not (isEmpty!18667 (getLanguageWitness!330 z!691))))))

(declare-fun bs!521217 () Bool)

(assert (= bs!521217 d!828450))

(assert (=> bs!521217 m!3285391))

(declare-fun m!3285435 () Bool)

(assert (=> bs!521217 m!3285435))

(assert (=> b!2865276 d!828450))

(declare-fun bs!521218 () Bool)

(declare-fun d!828452 () Bool)

(assert (= bs!521218 (and d!828452 b!2865279)))

(declare-fun lambda!106474 () Int)

(assert (=> bs!521218 (not (= lambda!106474 lambda!106454))))

(declare-fun bs!521219 () Bool)

(assert (= bs!521219 (and d!828452 b!2865278)))

(assert (=> bs!521219 (= lambda!106474 lambda!106455)))

(declare-fun lt!1016197 () Option!6363)

(assert (=> d!828452 (= (isDefined!4983 lt!1016197) (exists!1112 z!691 lambda!106474))))

(declare-fun e!1813928 () Option!6363)

(assert (=> d!828452 (= lt!1016197 e!1813928)))

(declare-fun c!462421 () Bool)

(assert (=> d!828452 (= c!462421 (exists!1112 z!691 lambda!106474))))

(assert (=> d!828452 (= (getLanguageWitness!330 z!691) lt!1016197)))

(declare-fun b!2865299 () Bool)

(declare-fun getLanguageWitness!332 (Context!5288) Option!6363)

(assert (=> b!2865299 (= e!1813928 (getLanguageWitness!332 (getWitness!614 z!691 lambda!106474)))))

(declare-fun b!2865300 () Bool)

(assert (=> b!2865300 (= e!1813928 None!6362)))

(assert (= (and d!828452 c!462421) b!2865299))

(assert (= (and d!828452 (not c!462421)) b!2865300))

(declare-fun m!3285437 () Bool)

(assert (=> d!828452 m!3285437))

(declare-fun m!3285439 () Bool)

(assert (=> d!828452 m!3285439))

(assert (=> d!828452 m!3285439))

(declare-fun m!3285441 () Bool)

(assert (=> b!2865299 m!3285441))

(assert (=> b!2865299 m!3285441))

(declare-fun m!3285443 () Bool)

(assert (=> b!2865299 m!3285443))

(assert (=> b!2865276 d!828452))

(declare-fun d!828454 () Bool)

(declare-fun lambda!106477 () Int)

(declare-fun exists!1116 (List!34383 Int) Bool)

(assert (=> d!828454 (= (lostCause!777 (getWitness!614 z!691 lambda!106455)) (exists!1116 (exprs!3144 (getWitness!614 z!691 lambda!106455)) lambda!106477))))

(declare-fun bs!521220 () Bool)

(assert (= bs!521220 d!828454))

(declare-fun m!3285445 () Bool)

(assert (=> bs!521220 m!3285445))

(assert (=> b!2865277 d!828454))

(declare-fun d!828458 () Bool)

(declare-fun e!1813931 () Bool)

(assert (=> d!828458 e!1813931))

(declare-fun res!1189575 () Bool)

(assert (=> d!828458 (=> (not res!1189575) (not e!1813931))))

(declare-fun lt!1016202 () Context!5288)

(declare-fun dynLambda!14279 (Int Context!5288) Bool)

(assert (=> d!828458 (= res!1189575 (dynLambda!14279 lambda!106455 lt!1016202))))

(declare-fun getWitness!616 (List!34385 Int) Context!5288)

(assert (=> d!828458 (= lt!1016202 (getWitness!616 (toList!2013 z!691) lambda!106455))))

(assert (=> d!828458 (exists!1112 z!691 lambda!106455)))

(assert (=> d!828458 (= (getWitness!614 z!691 lambda!106455) lt!1016202)))

(declare-fun b!2865303 () Bool)

(assert (=> b!2865303 (= e!1813931 (set.member lt!1016202 z!691))))

(assert (= (and d!828458 res!1189575) b!2865303))

(declare-fun b_lambda!85919 () Bool)

(assert (=> (not b_lambda!85919) (not d!828458)))

(declare-fun m!3285447 () Bool)

(assert (=> d!828458 m!3285447))

(assert (=> d!828458 m!3285407))

(assert (=> d!828458 m!3285407))

(declare-fun m!3285449 () Bool)

(assert (=> d!828458 m!3285449))

(assert (=> d!828458 m!3285401))

(declare-fun m!3285451 () Bool)

(assert (=> b!2865303 m!3285451))

(assert (=> b!2865277 d!828458))

(declare-fun d!828460 () Bool)

(declare-fun lt!1016206 () Bool)

(assert (=> d!828460 (= lt!1016206 (exists!1113 (toList!2013 z!691) lambda!106455))))

(declare-fun choose!16923 ((Set Context!5288) Int) Bool)

(assert (=> d!828460 (= lt!1016206 (choose!16923 z!691 lambda!106455))))

(assert (=> d!828460 (= (exists!1112 z!691 lambda!106455) lt!1016206)))

(declare-fun bs!521222 () Bool)

(assert (= bs!521222 d!828460))

(assert (=> bs!521222 m!3285407))

(assert (=> bs!521222 m!3285407))

(declare-fun m!3285457 () Bool)

(assert (=> bs!521222 m!3285457))

(declare-fun m!3285459 () Bool)

(assert (=> bs!521222 m!3285459))

(assert (=> b!2865278 d!828460))

(declare-fun bs!521224 () Bool)

(declare-fun d!828464 () Bool)

(assert (= bs!521224 (and d!828464 b!2865279)))

(declare-fun lambda!106480 () Int)

(assert (=> bs!521224 (not (= lambda!106480 lambda!106454))))

(declare-fun bs!521225 () Bool)

(assert (= bs!521225 (and d!828464 b!2865278)))

(assert (=> bs!521225 (not (= lambda!106480 lambda!106455))))

(declare-fun bs!521226 () Bool)

(assert (= bs!521226 (and d!828464 d!828452)))

(assert (=> bs!521226 (not (= lambda!106480 lambda!106474))))

(assert (=> d!828464 true))

(declare-fun order!18093 () Int)

(declare-fun dynLambda!14280 (Int Int) Int)

(assert (=> d!828464 (< (dynLambda!14280 order!18093 lambda!106455) (dynLambda!14280 order!18093 lambda!106480))))

(declare-fun forall!7043 (List!34385 Int) Bool)

(assert (=> d!828464 (= (exists!1113 lt!1016187 lambda!106455) (not (forall!7043 lt!1016187 lambda!106480)))))

(declare-fun bs!521227 () Bool)

(assert (= bs!521227 d!828464))

(declare-fun m!3285463 () Bool)

(assert (=> bs!521227 m!3285463))

(assert (=> b!2865278 d!828464))

(declare-fun bs!521228 () Bool)

(declare-fun d!828468 () Bool)

(assert (= bs!521228 (and d!828468 b!2865279)))

(declare-fun lambda!106483 () Int)

(assert (=> bs!521228 (not (= lambda!106483 lambda!106454))))

(declare-fun bs!521229 () Bool)

(assert (= bs!521229 (and d!828468 b!2865278)))

(assert (=> bs!521229 (not (= lambda!106483 lambda!106455))))

(declare-fun bs!521230 () Bool)

(assert (= bs!521230 (and d!828468 d!828452)))

(assert (=> bs!521230 (not (= lambda!106483 lambda!106474))))

(declare-fun bs!521231 () Bool)

(assert (= bs!521231 (and d!828468 d!828464)))

(assert (=> bs!521231 (= (= lambda!106454 lambda!106455) (= lambda!106483 lambda!106480))))

(assert (=> d!828468 true))

(assert (=> d!828468 (< (dynLambda!14280 order!18093 lambda!106454) (dynLambda!14280 order!18093 lambda!106483))))

(assert (=> d!828468 (exists!1113 lt!1016187 lambda!106483)))

(declare-fun lt!1016209 () Unit!47903)

(declare-fun choose!16924 (List!34385 Int) Unit!47903)

(assert (=> d!828468 (= lt!1016209 (choose!16924 lt!1016187 lambda!106454))))

(assert (=> d!828468 (not (forall!7043 lt!1016187 lambda!106454))))

(assert (=> d!828468 (= (lemmaNotForallThenExists!152 lt!1016187 lambda!106454) lt!1016209)))

(declare-fun bs!521232 () Bool)

(assert (= bs!521232 d!828468))

(declare-fun m!3285465 () Bool)

(assert (=> bs!521232 m!3285465))

(declare-fun m!3285467 () Bool)

(assert (=> bs!521232 m!3285467))

(declare-fun m!3285469 () Bool)

(assert (=> bs!521232 m!3285469))

(assert (=> b!2865278 d!828468))

(declare-fun d!828470 () Bool)

(declare-fun e!1813936 () Bool)

(assert (=> d!828470 e!1813936))

(declare-fun res!1189578 () Bool)

(assert (=> d!828470 (=> (not res!1189578) (not e!1813936))))

(declare-fun lt!1016212 () List!34385)

(declare-fun noDuplicate!576 (List!34385) Bool)

(assert (=> d!828470 (= res!1189578 (noDuplicate!576 lt!1016212))))

(declare-fun choose!16925 ((Set Context!5288)) List!34385)

(assert (=> d!828470 (= lt!1016212 (choose!16925 z!691))))

(assert (=> d!828470 (= (toList!2013 z!691) lt!1016212)))

(declare-fun b!2865308 () Bool)

(declare-fun content!4679 (List!34385) (Set Context!5288))

(assert (=> b!2865308 (= e!1813936 (= (content!4679 lt!1016212) z!691))))

(assert (= (and d!828470 res!1189578) b!2865308))

(declare-fun m!3285471 () Bool)

(assert (=> d!828470 m!3285471))

(declare-fun m!3285473 () Bool)

(assert (=> d!828470 m!3285473))

(declare-fun m!3285475 () Bool)

(assert (=> b!2865308 m!3285475))

(assert (=> b!2865278 d!828470))

(declare-fun d!828472 () Bool)

(declare-fun lt!1016217 () Bool)

(assert (=> d!828472 (= lt!1016217 (forall!7043 (toList!2013 z!691) lambda!106454))))

(declare-fun choose!16926 ((Set Context!5288) Int) Bool)

(assert (=> d!828472 (= lt!1016217 (choose!16926 z!691 lambda!106454))))

(assert (=> d!828472 (= (forall!7041 z!691 lambda!106454) lt!1016217)))

(declare-fun bs!521233 () Bool)

(assert (= bs!521233 d!828472))

(assert (=> bs!521233 m!3285407))

(assert (=> bs!521233 m!3285407))

(declare-fun m!3285477 () Bool)

(assert (=> bs!521233 m!3285477))

(declare-fun m!3285479 () Bool)

(assert (=> bs!521233 m!3285479))

(assert (=> b!2865279 d!828472))

(declare-fun bs!521234 () Bool)

(declare-fun d!828474 () Bool)

(assert (= bs!521234 (and d!828474 d!828454)))

(declare-fun lambda!106492 () Int)

(assert (=> bs!521234 (not (= lambda!106492 lambda!106477))))

(declare-fun forall!7044 (List!34383 Int) Bool)

(assert (=> d!828474 (= (inv!46298 setElem!25676) (forall!7044 (exprs!3144 setElem!25676) lambda!106492))))

(declare-fun bs!521235 () Bool)

(assert (= bs!521235 d!828474))

(declare-fun m!3285481 () Bool)

(assert (=> bs!521235 m!3285481))

(assert (=> setNonEmpty!25676 d!828474))

(declare-fun bs!521240 () Bool)

(declare-fun d!828476 () Bool)

(assert (= bs!521240 (and d!828476 b!2865278)))

(declare-fun lambda!106509 () Int)

(assert (=> bs!521240 (not (= lambda!106509 lambda!106455))))

(declare-fun bs!521241 () Bool)

(assert (= bs!521241 (and d!828476 d!828468)))

(assert (=> bs!521241 (not (= lambda!106509 lambda!106483))))

(declare-fun bs!521242 () Bool)

(assert (= bs!521242 (and d!828476 d!828464)))

(assert (=> bs!521242 (not (= lambda!106509 lambda!106480))))

(declare-fun bs!521244 () Bool)

(assert (= bs!521244 (and d!828476 b!2865279)))

(assert (=> bs!521244 (= lambda!106509 lambda!106454)))

(declare-fun bs!521245 () Bool)

(assert (= bs!521245 (and d!828476 d!828452)))

(assert (=> bs!521245 (not (= lambda!106509 lambda!106474))))

(declare-fun bs!521247 () Bool)

(declare-fun b!2865321 () Bool)

(assert (= bs!521247 (and b!2865321 b!2865278)))

(declare-fun lambda!106510 () Int)

(assert (=> bs!521247 (= lambda!106510 lambda!106455)))

(declare-fun bs!521248 () Bool)

(assert (= bs!521248 (and b!2865321 d!828468)))

(assert (=> bs!521248 (not (= lambda!106510 lambda!106483))))

(declare-fun bs!521250 () Bool)

(assert (= bs!521250 (and b!2865321 d!828464)))

(assert (=> bs!521250 (not (= lambda!106510 lambda!106480))))

(declare-fun bs!521251 () Bool)

(assert (= bs!521251 (and b!2865321 b!2865279)))

(assert (=> bs!521251 (not (= lambda!106510 lambda!106454))))

(declare-fun bs!521252 () Bool)

(assert (= bs!521252 (and b!2865321 d!828476)))

(assert (=> bs!521252 (not (= lambda!106510 lambda!106509))))

(declare-fun bs!521253 () Bool)

(assert (= bs!521253 (and b!2865321 d!828452)))

(assert (=> bs!521253 (= lambda!106510 lambda!106474)))

(declare-fun bs!521254 () Bool)

(declare-fun b!2865322 () Bool)

(assert (= bs!521254 (and b!2865322 b!2865321)))

(declare-fun lambda!106511 () Int)

(assert (=> bs!521254 (= lambda!106511 lambda!106510)))

(declare-fun bs!521255 () Bool)

(assert (= bs!521255 (and b!2865322 b!2865278)))

(assert (=> bs!521255 (= lambda!106511 lambda!106455)))

(declare-fun bs!521256 () Bool)

(assert (= bs!521256 (and b!2865322 d!828468)))

(assert (=> bs!521256 (not (= lambda!106511 lambda!106483))))

(declare-fun bs!521257 () Bool)

(assert (= bs!521257 (and b!2865322 d!828464)))

(assert (=> bs!521257 (not (= lambda!106511 lambda!106480))))

(declare-fun bs!521258 () Bool)

(assert (= bs!521258 (and b!2865322 b!2865279)))

(assert (=> bs!521258 (not (= lambda!106511 lambda!106454))))

(declare-fun bs!521259 () Bool)

(assert (= bs!521259 (and b!2865322 d!828476)))

(assert (=> bs!521259 (not (= lambda!106511 lambda!106509))))

(declare-fun bs!521260 () Bool)

(assert (= bs!521260 (and b!2865322 d!828452)))

(assert (=> bs!521260 (= lambda!106511 lambda!106474)))

(declare-fun e!1813946 () Unit!47903)

(declare-fun Unit!47907 () Unit!47903)

(assert (=> b!2865322 (= e!1813946 Unit!47907)))

(declare-fun lt!1016244 () List!34385)

(declare-fun call!184854 () List!34385)

(assert (=> b!2865322 (= lt!1016244 call!184854)))

(declare-fun lt!1016243 () Unit!47903)

(declare-fun lemmaForallThenNotExists!138 (List!34385 Int) Unit!47903)

(assert (=> b!2865322 (= lt!1016243 (lemmaForallThenNotExists!138 lt!1016244 lambda!106509))))

(declare-fun call!184853 () Bool)

(assert (=> b!2865322 (not call!184853)))

(declare-fun lt!1016241 () Unit!47903)

(assert (=> b!2865322 (= lt!1016241 lt!1016243)))

(declare-fun bm!184849 () Bool)

(declare-fun c!462441 () Bool)

(declare-fun lt!1016238 () List!34385)

(assert (=> bm!184849 (= call!184853 (exists!1113 (ite c!462441 lt!1016238 lt!1016244) (ite c!462441 lambda!106510 lambda!106511)))))

(declare-fun Unit!47908 () Unit!47903)

(assert (=> b!2865321 (= e!1813946 Unit!47908)))

(assert (=> b!2865321 (= lt!1016238 call!184854)))

(declare-fun lt!1016242 () Unit!47903)

(assert (=> b!2865321 (= lt!1016242 (lemmaNotForallThenExists!152 lt!1016238 lambda!106509))))

(assert (=> b!2865321 call!184853))

(declare-fun lt!1016245 () Unit!47903)

(assert (=> b!2865321 (= lt!1016245 lt!1016242)))

(declare-fun bm!184848 () Bool)

(assert (=> bm!184848 (= call!184854 (toList!2013 z!691))))

(declare-fun lt!1016240 () Bool)

(assert (=> d!828476 (= lt!1016240 (isEmpty!18667 (getLanguageWitness!330 z!691)))))

(assert (=> d!828476 (= lt!1016240 (forall!7041 z!691 lambda!106509))))

(declare-fun lt!1016239 () Unit!47903)

(assert (=> d!828476 (= lt!1016239 e!1813946)))

(assert (=> d!828476 (= c!462441 (not (forall!7041 z!691 lambda!106509)))))

(assert (=> d!828476 (= (lostCauseZipper!588 z!691) lt!1016240)))

(assert (= (and d!828476 c!462441) b!2865321))

(assert (= (and d!828476 (not c!462441)) b!2865322))

(assert (= (or b!2865321 b!2865322) bm!184848))

(assert (= (or b!2865321 b!2865322) bm!184849))

(declare-fun m!3285497 () Bool)

(assert (=> b!2865322 m!3285497))

(declare-fun m!3285499 () Bool)

(assert (=> bm!184849 m!3285499))

(assert (=> bm!184848 m!3285407))

(assert (=> d!828476 m!3285391))

(assert (=> d!828476 m!3285391))

(assert (=> d!828476 m!3285435))

(declare-fun m!3285501 () Bool)

(assert (=> d!828476 m!3285501))

(assert (=> d!828476 m!3285501))

(declare-fun m!3285503 () Bool)

(assert (=> b!2865321 m!3285503))

(assert (=> start!279404 d!828476))

(declare-fun condSetEmpty!25682 () Bool)

(assert (=> setNonEmpty!25676 (= condSetEmpty!25682 (= setRest!25676 (as set.empty (Set Context!5288))))))

(declare-fun setRes!25682 () Bool)

(assert (=> setNonEmpty!25676 (= tp!922775 setRes!25682)))

(declare-fun setIsEmpty!25682 () Bool)

(assert (=> setIsEmpty!25682 setRes!25682))

(declare-fun tp!922787 () Bool)

(declare-fun e!1813949 () Bool)

(declare-fun setNonEmpty!25682 () Bool)

(declare-fun setElem!25682 () Context!5288)

(assert (=> setNonEmpty!25682 (= setRes!25682 (and tp!922787 (inv!46298 setElem!25682) e!1813949))))

(declare-fun setRest!25682 () (Set Context!5288))

(assert (=> setNonEmpty!25682 (= setRest!25676 (set.union (set.insert setElem!25682 (as set.empty (Set Context!5288))) setRest!25682))))

(declare-fun b!2865327 () Bool)

(declare-fun tp!922788 () Bool)

(assert (=> b!2865327 (= e!1813949 tp!922788)))

(assert (= (and setNonEmpty!25676 condSetEmpty!25682) setIsEmpty!25682))

(assert (= (and setNonEmpty!25676 (not condSetEmpty!25682)) setNonEmpty!25682))

(assert (= setNonEmpty!25682 b!2865327))

(declare-fun m!3285505 () Bool)

(assert (=> setNonEmpty!25682 m!3285505))

(declare-fun b!2865332 () Bool)

(declare-fun e!1813954 () Bool)

(declare-fun tp!922793 () Bool)

(declare-fun tp!922794 () Bool)

(assert (=> b!2865332 (= e!1813954 (and tp!922793 tp!922794))))

(assert (=> b!2865275 (= tp!922776 e!1813954)))

(assert (= (and b!2865275 (is-Cons!34259 (exprs!3144 setElem!25676))) b!2865332))

(declare-fun b_lambda!85921 () Bool)

(assert (= b_lambda!85919 (or b!2865278 b_lambda!85921)))

(declare-fun bs!521261 () Bool)

(declare-fun d!828484 () Bool)

(assert (= bs!521261 (and d!828484 b!2865278)))

(assert (=> bs!521261 (= (dynLambda!14279 lambda!106455 lt!1016202) (not (lostCause!777 lt!1016202)))))

(declare-fun m!3285507 () Bool)

(assert (=> bs!521261 m!3285507))

(assert (=> d!828458 d!828484))

(push 1)

(assert (not d!828468))

(assert (not d!828464))

(assert (not b_lambda!85921))

(assert (not d!828458))

(assert (not bs!521261))

(assert (not d!828450))

(assert (not d!828472))

(assert (not d!828460))

(assert (not b!2865332))

(assert (not d!828454))

(assert (not d!828474))

(assert (not b!2865327))

(assert (not bm!184849))

(assert (not b!2865322))

(assert (not b!2865308))

(assert (not setNonEmpty!25682))

(assert (not d!828452))

(assert (not b!2865299))

(assert (not d!828476))

(assert (not b!2865321))

(assert (not bm!184848))

(assert (not d!828470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

