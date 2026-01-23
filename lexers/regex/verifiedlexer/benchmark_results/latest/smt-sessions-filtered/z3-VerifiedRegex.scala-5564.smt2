; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279374 () Bool)

(assert start!279374)

(declare-fun res!1189528 () Bool)

(declare-fun e!1813853 () Bool)

(assert (=> start!279374 (=> (not res!1189528) (not e!1813853))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17548 0))(
  ( (C!17549 (val!10808 Int)) )
))
(declare-datatypes ((Regex!8683 0))(
  ( (ElementMatch!8683 (c!462354 C!17548)) (Concat!14004 (regOne!17878 Regex!8683) (regTwo!17878 Regex!8683)) (EmptyExpr!8683) (Star!8683 (reg!9012 Regex!8683)) (EmptyLang!8683) (Union!8683 (regOne!17879 Regex!8683) (regTwo!17879 Regex!8683)) )
))
(declare-datatypes ((List!34380 0))(
  ( (Nil!34256) (Cons!34256 (h!39676 Regex!8683) (t!233423 List!34380)) )
))
(declare-datatypes ((Context!5286 0))(
  ( (Context!5287 (exprs!3143 List!34380)) )
))
(declare-fun z!691 () (InoxSet Context!5286))

(declare-fun lostCauseZipper!587 ((InoxSet Context!5286)) Bool)

(assert (=> start!279374 (= res!1189528 (not (lostCauseZipper!587 z!691)))))

(assert (=> start!279374 e!1813853))

(declare-fun condSetEmpty!25667 () Bool)

(assert (=> start!279374 (= condSetEmpty!25667 (= z!691 ((as const (Array Context!5286 Bool)) false)))))

(declare-fun setRes!25667 () Bool)

(assert (=> start!279374 setRes!25667))

(declare-fun setIsEmpty!25667 () Bool)

(assert (=> setIsEmpty!25667 setRes!25667))

(declare-fun b!2865199 () Bool)

(declare-fun res!1189529 () Bool)

(assert (=> b!2865199 (=> (not res!1189529) (not e!1813853))))

(declare-datatypes ((List!34381 0))(
  ( (Nil!34257) (Cons!34257 (h!39677 C!17548) (t!233424 List!34381)) )
))
(declare-datatypes ((Option!6362 0))(
  ( (None!6361) (Some!6361 (v!34483 List!34381)) )
))
(declare-fun isDefined!4982 (Option!6362) Bool)

(declare-fun getLanguageWitness!327 ((InoxSet Context!5286)) Option!6362)

(assert (=> b!2865199 (= res!1189529 (isDefined!4982 (getLanguageWitness!327 z!691)))))

(declare-fun b!2865200 () Bool)

(declare-fun e!1813852 () Bool)

(declare-fun tp!922745 () Bool)

(assert (=> b!2865200 (= e!1813852 tp!922745)))

(declare-fun setElem!25667 () Context!5286)

(declare-fun tp!922746 () Bool)

(declare-fun setNonEmpty!25667 () Bool)

(declare-fun inv!46294 (Context!5286) Bool)

(assert (=> setNonEmpty!25667 (= setRes!25667 (and tp!922746 (inv!46294 setElem!25667) e!1813852))))

(declare-fun setRest!25667 () (InoxSet Context!5286))

(assert (=> setNonEmpty!25667 (= z!691 ((_ map or) (store ((as const (Array Context!5286 Bool)) false) setElem!25667 true) setRest!25667))))

(declare-fun b!2865201 () Bool)

(declare-fun res!1189530 () Bool)

(assert (=> b!2865201 (=> (not res!1189530) (not e!1813853))))

(declare-fun lambda!106393 () Int)

(declare-fun forall!7037 ((InoxSet Context!5286) Int) Bool)

(assert (=> b!2865201 (= res!1189530 (not (forall!7037 z!691 lambda!106393)))))

(declare-fun b!2865202 () Bool)

(declare-datatypes ((List!34382 0))(
  ( (Nil!34258) (Cons!34258 (h!39678 Context!5286) (t!233425 List!34382)) )
))
(declare-fun forall!7038 (List!34382 Int) Bool)

(declare-fun toList!2012 ((InoxSet Context!5286)) List!34382)

(assert (=> b!2865202 (= e!1813853 (forall!7038 (toList!2012 z!691) lambda!106393))))

(assert (= (and start!279374 res!1189528) b!2865199))

(assert (= (and b!2865199 res!1189529) b!2865201))

(assert (= (and b!2865201 res!1189530) b!2865202))

(assert (= (and start!279374 condSetEmpty!25667) setIsEmpty!25667))

(assert (= (and start!279374 (not condSetEmpty!25667)) setNonEmpty!25667))

(assert (= setNonEmpty!25667 b!2865200))

(declare-fun m!3285305 () Bool)

(assert (=> b!2865202 m!3285305))

(assert (=> b!2865202 m!3285305))

(declare-fun m!3285307 () Bool)

(assert (=> b!2865202 m!3285307))

(declare-fun m!3285309 () Bool)

(assert (=> b!2865199 m!3285309))

(assert (=> b!2865199 m!3285309))

(declare-fun m!3285311 () Bool)

(assert (=> b!2865199 m!3285311))

(declare-fun m!3285313 () Bool)

(assert (=> start!279374 m!3285313))

(declare-fun m!3285315 () Bool)

(assert (=> b!2865201 m!3285315))

(declare-fun m!3285317 () Bool)

(assert (=> setNonEmpty!25667 m!3285317))

(check-sat (not setNonEmpty!25667) (not b!2865200) (not b!2865199) (not b!2865201) (not b!2865202) (not start!279374))
(check-sat)
(get-model)

(declare-fun d!828421 () Bool)

(declare-fun isEmpty!18666 (Option!6362) Bool)

(assert (=> d!828421 (= (isDefined!4982 (getLanguageWitness!327 z!691)) (not (isEmpty!18666 (getLanguageWitness!327 z!691))))))

(declare-fun bs!521186 () Bool)

(assert (= bs!521186 d!828421))

(assert (=> bs!521186 m!3285309))

(declare-fun m!3285331 () Bool)

(assert (=> bs!521186 m!3285331))

(assert (=> b!2865199 d!828421))

(declare-fun bs!521188 () Bool)

(declare-fun d!828427 () Bool)

(assert (= bs!521188 (and d!828427 b!2865201)))

(declare-fun lambda!106407 () Int)

(assert (=> bs!521188 (not (= lambda!106407 lambda!106393))))

(declare-fun lt!1016125 () Option!6362)

(declare-fun exists!1109 ((InoxSet Context!5286) Int) Bool)

(assert (=> d!828427 (= (isDefined!4982 lt!1016125) (exists!1109 z!691 lambda!106407))))

(declare-fun e!1813868 () Option!6362)

(assert (=> d!828427 (= lt!1016125 e!1813868)))

(declare-fun c!462372 () Bool)

(assert (=> d!828427 (= c!462372 (exists!1109 z!691 lambda!106407))))

(assert (=> d!828427 (= (getLanguageWitness!327 z!691) lt!1016125)))

(declare-fun b!2865222 () Bool)

(declare-fun getLanguageWitness!329 (Context!5286) Option!6362)

(declare-fun getWitness!613 ((InoxSet Context!5286) Int) Context!5286)

(assert (=> b!2865222 (= e!1813868 (getLanguageWitness!329 (getWitness!613 z!691 lambda!106407)))))

(declare-fun b!2865223 () Bool)

(assert (=> b!2865223 (= e!1813868 None!6361)))

(assert (= (and d!828427 c!462372) b!2865222))

(assert (= (and d!828427 (not c!462372)) b!2865223))

(declare-fun m!3285341 () Bool)

(assert (=> d!828427 m!3285341))

(declare-fun m!3285343 () Bool)

(assert (=> d!828427 m!3285343))

(assert (=> d!828427 m!3285343))

(declare-fun m!3285345 () Bool)

(assert (=> b!2865222 m!3285345))

(assert (=> b!2865222 m!3285345))

(declare-fun m!3285347 () Bool)

(assert (=> b!2865222 m!3285347))

(assert (=> b!2865199 d!828427))

(declare-fun d!828431 () Bool)

(declare-fun lambda!106413 () Int)

(declare-fun forall!7040 (List!34380 Int) Bool)

(assert (=> d!828431 (= (inv!46294 setElem!25667) (forall!7040 (exprs!3143 setElem!25667) lambda!106413))))

(declare-fun bs!521190 () Bool)

(assert (= bs!521190 d!828431))

(declare-fun m!3285351 () Bool)

(assert (=> bs!521190 m!3285351))

(assert (=> setNonEmpty!25667 d!828431))

(declare-fun d!828435 () Bool)

(declare-fun lt!1016128 () Bool)

(assert (=> d!828435 (= lt!1016128 (forall!7038 (toList!2012 z!691) lambda!106393))))

(declare-fun choose!16920 ((InoxSet Context!5286) Int) Bool)

(assert (=> d!828435 (= lt!1016128 (choose!16920 z!691 lambda!106393))))

(assert (=> d!828435 (= (forall!7037 z!691 lambda!106393) lt!1016128)))

(declare-fun bs!521191 () Bool)

(assert (= bs!521191 d!828435))

(assert (=> bs!521191 m!3285305))

(assert (=> bs!521191 m!3285305))

(assert (=> bs!521191 m!3285307))

(declare-fun m!3285353 () Bool)

(assert (=> bs!521191 m!3285353))

(assert (=> b!2865201 d!828435))

(declare-fun d!828437 () Bool)

(declare-fun res!1189544 () Bool)

(declare-fun e!1813873 () Bool)

(assert (=> d!828437 (=> res!1189544 e!1813873)))

(get-info :version)

(assert (=> d!828437 (= res!1189544 ((_ is Nil!34258) (toList!2012 z!691)))))

(assert (=> d!828437 (= (forall!7038 (toList!2012 z!691) lambda!106393) e!1813873)))

(declare-fun b!2865228 () Bool)

(declare-fun e!1813874 () Bool)

(assert (=> b!2865228 (= e!1813873 e!1813874)))

(declare-fun res!1189545 () Bool)

(assert (=> b!2865228 (=> (not res!1189545) (not e!1813874))))

(declare-fun dynLambda!14278 (Int Context!5286) Bool)

(assert (=> b!2865228 (= res!1189545 (dynLambda!14278 lambda!106393 (h!39678 (toList!2012 z!691))))))

(declare-fun b!2865229 () Bool)

(assert (=> b!2865229 (= e!1813874 (forall!7038 (t!233425 (toList!2012 z!691)) lambda!106393))))

(assert (= (and d!828437 (not res!1189544)) b!2865228))

(assert (= (and b!2865228 res!1189545) b!2865229))

(declare-fun b_lambda!85913 () Bool)

(assert (=> (not b_lambda!85913) (not b!2865228)))

(declare-fun m!3285355 () Bool)

(assert (=> b!2865228 m!3285355))

(declare-fun m!3285357 () Bool)

(assert (=> b!2865229 m!3285357))

(assert (=> b!2865202 d!828437))

(declare-fun d!828439 () Bool)

(declare-fun e!1813879 () Bool)

(assert (=> d!828439 e!1813879))

(declare-fun res!1189548 () Bool)

(assert (=> d!828439 (=> (not res!1189548) (not e!1813879))))

(declare-fun lt!1016141 () List!34382)

(declare-fun noDuplicate!575 (List!34382) Bool)

(assert (=> d!828439 (= res!1189548 (noDuplicate!575 lt!1016141))))

(declare-fun choose!16921 ((InoxSet Context!5286)) List!34382)

(assert (=> d!828439 (= lt!1016141 (choose!16921 z!691))))

(assert (=> d!828439 (= (toList!2012 z!691) lt!1016141)))

(declare-fun b!2865236 () Bool)

(declare-fun content!4678 (List!34382) (InoxSet Context!5286))

(assert (=> b!2865236 (= e!1813879 (= (content!4678 lt!1016141) z!691))))

(assert (= (and d!828439 res!1189548) b!2865236))

(declare-fun m!3285359 () Bool)

(assert (=> d!828439 m!3285359))

(declare-fun m!3285361 () Bool)

(assert (=> d!828439 m!3285361))

(declare-fun m!3285363 () Bool)

(assert (=> b!2865236 m!3285363))

(assert (=> b!2865202 d!828439))

(declare-fun bs!521203 () Bool)

(declare-fun d!828441 () Bool)

(assert (= bs!521203 (and d!828441 b!2865201)))

(declare-fun lambda!106441 () Int)

(assert (=> bs!521203 (= lambda!106441 lambda!106393)))

(declare-fun bs!521204 () Bool)

(assert (= bs!521204 (and d!828441 d!828427)))

(assert (=> bs!521204 (not (= lambda!106441 lambda!106407))))

(declare-fun bs!521205 () Bool)

(declare-fun b!2865253 () Bool)

(assert (= bs!521205 (and b!2865253 b!2865201)))

(declare-fun lambda!106442 () Int)

(assert (=> bs!521205 (not (= lambda!106442 lambda!106393))))

(declare-fun bs!521206 () Bool)

(assert (= bs!521206 (and b!2865253 d!828427)))

(assert (=> bs!521206 (= lambda!106442 lambda!106407)))

(declare-fun bs!521207 () Bool)

(assert (= bs!521207 (and b!2865253 d!828441)))

(assert (=> bs!521207 (not (= lambda!106442 lambda!106441))))

(declare-fun bs!521208 () Bool)

(declare-fun b!2865254 () Bool)

(assert (= bs!521208 (and b!2865254 b!2865201)))

(declare-fun lambda!106443 () Int)

(assert (=> bs!521208 (not (= lambda!106443 lambda!106393))))

(declare-fun bs!521209 () Bool)

(assert (= bs!521209 (and b!2865254 d!828427)))

(assert (=> bs!521209 (= lambda!106443 lambda!106407)))

(declare-fun bs!521210 () Bool)

(assert (= bs!521210 (and b!2865254 d!828441)))

(assert (=> bs!521210 (not (= lambda!106443 lambda!106441))))

(declare-fun bs!521211 () Bool)

(assert (= bs!521211 (and b!2865254 b!2865253)))

(assert (=> bs!521211 (= lambda!106443 lambda!106442)))

(declare-fun bm!184842 () Bool)

(declare-fun call!184847 () List!34382)

(assert (=> bm!184842 (= call!184847 (toList!2012 z!691))))

(declare-fun c!462394 () Bool)

(declare-fun lt!1016180 () List!34382)

(declare-fun call!184848 () Bool)

(declare-fun bm!184843 () Bool)

(declare-fun lt!1016177 () List!34382)

(declare-fun exists!1111 (List!34382 Int) Bool)

(assert (=> bm!184843 (= call!184848 (exists!1111 (ite c!462394 lt!1016180 lt!1016177) (ite c!462394 lambda!106442 lambda!106443)))))

(declare-datatypes ((Unit!47899 0))(
  ( (Unit!47900) )
))
(declare-fun e!1813897 () Unit!47899)

(declare-fun Unit!47901 () Unit!47899)

(assert (=> b!2865254 (= e!1813897 Unit!47901)))

(assert (=> b!2865254 (= lt!1016177 call!184847)))

(declare-fun lt!1016175 () Unit!47899)

(declare-fun lemmaForallThenNotExists!137 (List!34382 Int) Unit!47899)

(assert (=> b!2865254 (= lt!1016175 (lemmaForallThenNotExists!137 lt!1016177 lambda!106441))))

(assert (=> b!2865254 (not call!184848)))

(declare-fun lt!1016181 () Unit!47899)

(assert (=> b!2865254 (= lt!1016181 lt!1016175)))

(declare-fun Unit!47902 () Unit!47899)

(assert (=> b!2865253 (= e!1813897 Unit!47902)))

(assert (=> b!2865253 (= lt!1016180 call!184847)))

(declare-fun lt!1016176 () Unit!47899)

(declare-fun lemmaNotForallThenExists!151 (List!34382 Int) Unit!47899)

(assert (=> b!2865253 (= lt!1016176 (lemmaNotForallThenExists!151 lt!1016180 lambda!106441))))

(assert (=> b!2865253 call!184848))

(declare-fun lt!1016179 () Unit!47899)

(assert (=> b!2865253 (= lt!1016179 lt!1016176)))

(declare-fun lt!1016182 () Bool)

(assert (=> d!828441 (= lt!1016182 (isEmpty!18666 (getLanguageWitness!327 z!691)))))

(assert (=> d!828441 (= lt!1016182 (forall!7037 z!691 lambda!106441))))

(declare-fun lt!1016178 () Unit!47899)

(assert (=> d!828441 (= lt!1016178 e!1813897)))

(assert (=> d!828441 (= c!462394 (not (forall!7037 z!691 lambda!106441)))))

(assert (=> d!828441 (= (lostCauseZipper!587 z!691) lt!1016182)))

(assert (= (and d!828441 c!462394) b!2865253))

(assert (= (and d!828441 (not c!462394)) b!2865254))

(assert (= (or b!2865253 b!2865254) bm!184842))

(assert (= (or b!2865253 b!2865254) bm!184843))

(declare-fun m!3285379 () Bool)

(assert (=> b!2865254 m!3285379))

(assert (=> d!828441 m!3285309))

(assert (=> d!828441 m!3285309))

(assert (=> d!828441 m!3285331))

(declare-fun m!3285381 () Bool)

(assert (=> d!828441 m!3285381))

(assert (=> d!828441 m!3285381))

(assert (=> bm!184842 m!3285305))

(declare-fun m!3285383 () Bool)

(assert (=> bm!184843 m!3285383))

(declare-fun m!3285385 () Bool)

(assert (=> b!2865253 m!3285385))

(assert (=> start!279374 d!828441))

(declare-fun b!2865259 () Bool)

(declare-fun e!1813900 () Bool)

(declare-fun tp!922763 () Bool)

(declare-fun tp!922764 () Bool)

(assert (=> b!2865259 (= e!1813900 (and tp!922763 tp!922764))))

(assert (=> b!2865200 (= tp!922745 e!1813900)))

(assert (= (and b!2865200 ((_ is Cons!34256) (exprs!3143 setElem!25667))) b!2865259))

(declare-fun condSetEmpty!25673 () Bool)

(assert (=> setNonEmpty!25667 (= condSetEmpty!25673 (= setRest!25667 ((as const (Array Context!5286 Bool)) false)))))

(declare-fun setRes!25673 () Bool)

(assert (=> setNonEmpty!25667 (= tp!922746 setRes!25673)))

(declare-fun setIsEmpty!25673 () Bool)

(assert (=> setIsEmpty!25673 setRes!25673))

(declare-fun setElem!25673 () Context!5286)

(declare-fun setNonEmpty!25673 () Bool)

(declare-fun tp!922770 () Bool)

(declare-fun e!1813903 () Bool)

(assert (=> setNonEmpty!25673 (= setRes!25673 (and tp!922770 (inv!46294 setElem!25673) e!1813903))))

(declare-fun setRest!25673 () (InoxSet Context!5286))

(assert (=> setNonEmpty!25673 (= setRest!25667 ((_ map or) (store ((as const (Array Context!5286 Bool)) false) setElem!25673 true) setRest!25673))))

(declare-fun b!2865264 () Bool)

(declare-fun tp!922769 () Bool)

(assert (=> b!2865264 (= e!1813903 tp!922769)))

(assert (= (and setNonEmpty!25667 condSetEmpty!25673) setIsEmpty!25673))

(assert (= (and setNonEmpty!25667 (not condSetEmpty!25673)) setNonEmpty!25673))

(assert (= setNonEmpty!25673 b!2865264))

(declare-fun m!3285387 () Bool)

(assert (=> setNonEmpty!25673 m!3285387))

(declare-fun b_lambda!85917 () Bool)

(assert (= b_lambda!85913 (or b!2865201 b_lambda!85917)))

(declare-fun bs!521212 () Bool)

(declare-fun d!828447 () Bool)

(assert (= bs!521212 (and d!828447 b!2865201)))

(declare-fun lostCause!776 (Context!5286) Bool)

(assert (=> bs!521212 (= (dynLambda!14278 lambda!106393 (h!39678 (toList!2012 z!691))) (lostCause!776 (h!39678 (toList!2012 z!691))))))

(declare-fun m!3285389 () Bool)

(assert (=> bs!521212 m!3285389))

(assert (=> b!2865228 d!828447))

(check-sat (not bm!184842) (not d!828431) (not bs!521212) (not d!828441) (not d!828435) (not setNonEmpty!25673) (not b!2865254) (not b!2865229) (not b!2865253) (not bm!184843) (not d!828421) (not b!2865236) (not b_lambda!85917) (not d!828427) (not b!2865259) (not b!2865264) (not d!828439) (not b!2865222))
(check-sat)
