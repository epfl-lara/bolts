; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!682150 () Bool)

(assert start!682150)

(declare-fun b!7046567 () Bool)

(assert (=> b!7046567 true))

(declare-fun b!7046563 () Bool)

(assert (=> b!7046563 true))

(declare-fun b!7046574 () Bool)

(assert (=> b!7046574 true))

(declare-fun b!7046561 () Bool)

(declare-fun res!2876698 () Bool)

(declare-fun e!4236164 () Bool)

(assert (=> b!7046561 (=> res!2876698 e!4236164)))

(declare-datatypes ((C!35288 0))(
  ( (C!35289 (val!27346 Int)) )
))
(declare-datatypes ((Regex!17509 0))(
  ( (ElementMatch!17509 (c!1312139 C!35288)) (Concat!26354 (regOne!35530 Regex!17509) (regTwo!35530 Regex!17509)) (EmptyExpr!17509) (Star!17509 (reg!17838 Regex!17509)) (EmptyLang!17509) (Union!17509 (regOne!35531 Regex!17509) (regTwo!35531 Regex!17509)) )
))
(declare-datatypes ((List!68055 0))(
  ( (Nil!67931) (Cons!67931 (h!74379 Regex!17509) (t!381832 List!68055)) )
))
(declare-datatypes ((Context!13010 0))(
  ( (Context!13011 (exprs!7005 List!68055)) )
))
(declare-fun lt!2527232 () Context!13010)

(declare-fun isEmpty!39647 (List!68055) Bool)

(assert (=> b!7046561 (= res!2876698 (isEmpty!39647 (exprs!7005 lt!2527232)))))

(declare-fun b!7046562 () Bool)

(declare-fun res!2876705 () Bool)

(assert (=> b!7046562 (=> res!2876705 e!4236164)))

(get-info :version)

(assert (=> b!7046562 (= res!2876705 (not ((_ is Cons!67931) (exprs!7005 lt!2527232))))))

(declare-fun e!4236165 () Bool)

(declare-fun e!4236172 () Bool)

(assert (=> b!7046563 (= e!4236165 e!4236172)))

(declare-fun res!2876696 () Bool)

(assert (=> b!7046563 (=> res!2876696 e!4236172)))

(declare-fun lt!2527223 () Context!13010)

(declare-fun lt!2527230 () Context!13010)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!13010))

(assert (=> b!7046563 (= res!2876696 (or (not (= lt!2527230 lt!2527223)) (not (select z1!570 lt!2527232))))))

(declare-fun ct2!306 () Context!13010)

(declare-fun ++!15588 (List!68055 List!68055) List!68055)

(assert (=> b!7046563 (= lt!2527230 (Context!13011 (++!15588 (exprs!7005 lt!2527232) (exprs!7005 ct2!306))))))

(declare-datatypes ((Unit!161704 0))(
  ( (Unit!161705) )
))
(declare-fun lt!2527222 () Unit!161704)

(declare-fun lambda!417923 () Int)

(declare-fun lemmaConcatPreservesForall!830 (List!68055 List!68055 Int) Unit!161704)

(assert (=> b!7046563 (= lt!2527222 (lemmaConcatPreservesForall!830 (exprs!7005 lt!2527232) (exprs!7005 ct2!306) lambda!417923))))

(declare-fun lambda!417922 () Int)

(declare-fun mapPost2!350 ((InoxSet Context!13010) Int Context!13010) Context!13010)

(assert (=> b!7046563 (= lt!2527232 (mapPost2!350 z1!570 lambda!417922 lt!2527223))))

(declare-fun b!7046564 () Bool)

(declare-fun e!4236170 () Bool)

(declare-fun e!4236168 () Bool)

(assert (=> b!7046564 (= e!4236170 e!4236168)))

(declare-fun res!2876703 () Bool)

(assert (=> b!7046564 (=> res!2876703 e!4236168)))

(declare-fun lt!2527220 () (InoxSet Context!13010))

(declare-datatypes ((List!68056 0))(
  ( (Nil!67932) (Cons!67932 (h!74380 C!35288) (t!381833 List!68056)) )
))
(declare-datatypes ((tuple2!68148 0))(
  ( (tuple2!68149 (_1!37377 List!68056) (_2!37377 List!68056)) )
))
(declare-fun lt!2527215 () tuple2!68148)

(declare-fun matchZipper!3049 ((InoxSet Context!13010) List!68056) Bool)

(assert (=> b!7046564 (= res!2876703 (not (matchZipper!3049 lt!2527220 (_1!37377 lt!2527215))))))

(declare-datatypes ((Option!16906 0))(
  ( (None!16905) (Some!16905 (v!53195 tuple2!68148)) )
))
(declare-fun lt!2527229 () Option!16906)

(declare-fun get!23811 (Option!16906) tuple2!68148)

(assert (=> b!7046564 (= lt!2527215 (get!23811 lt!2527229))))

(declare-fun isDefined!13607 (Option!16906) Bool)

(assert (=> b!7046564 (isDefined!13607 lt!2527229)))

(declare-fun lt!2527236 () (InoxSet Context!13010))

(declare-fun s!7408 () List!68056)

(declare-fun findConcatSeparationZippers!422 ((InoxSet Context!13010) (InoxSet Context!13010) List!68056 List!68056 List!68056) Option!16906)

(assert (=> b!7046564 (= lt!2527229 (findConcatSeparationZippers!422 lt!2527220 lt!2527236 Nil!67932 (t!381833 s!7408) (t!381833 s!7408)))))

(assert (=> b!7046564 (= lt!2527236 (store ((as const (Array Context!13010 Bool)) false) ct2!306 true))))

(declare-fun lt!2527234 () Unit!161704)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!410 ((InoxSet Context!13010) Context!13010 List!68056) Unit!161704)

(assert (=> b!7046564 (= lt!2527234 (lemmaConcatZipperMatchesStringThenFindConcatDefined!410 lt!2527220 ct2!306 (t!381833 s!7408)))))

(declare-fun lt!2527221 () (InoxSet Context!13010))

(declare-fun appendTo!630 ((InoxSet Context!13010) Context!13010) (InoxSet Context!13010))

(assert (=> b!7046564 (= lt!2527221 (appendTo!630 lt!2527220 ct2!306))))

(declare-fun lt!2527214 () Context!13010)

(declare-fun derivationStepZipperDown!2173 (Regex!17509 Context!13010 C!35288) (InoxSet Context!13010))

(assert (=> b!7046564 (= lt!2527220 (derivationStepZipperDown!2173 (h!74379 (exprs!7005 lt!2527232)) lt!2527214 (h!74380 s!7408)))))

(declare-fun lt!2527225 () List!68055)

(declare-fun lt!2527217 () Unit!161704)

(assert (=> b!7046564 (= lt!2527217 (lemmaConcatPreservesForall!830 lt!2527225 (exprs!7005 ct2!306) lambda!417923))))

(declare-fun lt!2527231 () Unit!161704)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!86 (Context!13010 Regex!17509 C!35288 Context!13010) Unit!161704)

(assert (=> b!7046564 (= lt!2527231 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!86 lt!2527214 (h!74379 (exprs!7005 lt!2527232)) (h!74380 s!7408) ct2!306))))

(declare-fun b!7046565 () Bool)

(declare-fun e!4236173 () Bool)

(assert (=> b!7046565 (= e!4236164 e!4236173)))

(declare-fun res!2876700 () Bool)

(assert (=> b!7046565 (=> res!2876700 e!4236173)))

(declare-fun nullable!7220 (Regex!17509) Bool)

(assert (=> b!7046565 (= res!2876700 (nullable!7220 (h!74379 (exprs!7005 lt!2527232))))))

(assert (=> b!7046565 (= lt!2527214 (Context!13011 lt!2527225))))

(declare-fun tail!13629 (List!68055) List!68055)

(assert (=> b!7046565 (= lt!2527225 (tail!13629 (exprs!7005 lt!2527232)))))

(declare-fun b!7046566 () Bool)

(declare-fun e!4236169 () Bool)

(declare-fun tp!1938127 () Bool)

(assert (=> b!7046566 (= e!4236169 tp!1938127)))

(declare-fun e!4236174 () Bool)

(assert (=> b!7046567 (= e!4236174 (not e!4236165))))

(declare-fun res!2876701 () Bool)

(assert (=> b!7046567 (=> res!2876701 e!4236165)))

(declare-fun lt!2527227 () (InoxSet Context!13010))

(assert (=> b!7046567 (= res!2876701 (not (matchZipper!3049 lt!2527227 s!7408)))))

(assert (=> b!7046567 (= lt!2527227 (store ((as const (Array Context!13010 Bool)) false) lt!2527223 true))))

(declare-fun lt!2527233 () (InoxSet Context!13010))

(declare-fun lambda!417921 () Int)

(declare-fun getWitness!1544 ((InoxSet Context!13010) Int) Context!13010)

(assert (=> b!7046567 (= lt!2527223 (getWitness!1544 lt!2527233 lambda!417921))))

(declare-datatypes ((List!68057 0))(
  ( (Nil!67933) (Cons!67933 (h!74381 Context!13010) (t!381834 List!68057)) )
))
(declare-fun lt!2527213 () List!68057)

(declare-fun exists!3465 (List!68057 Int) Bool)

(assert (=> b!7046567 (exists!3465 lt!2527213 lambda!417921)))

(declare-fun lt!2527216 () Unit!161704)

(declare-fun lemmaZipperMatchesExistsMatchingContext!448 (List!68057 List!68056) Unit!161704)

(assert (=> b!7046567 (= lt!2527216 (lemmaZipperMatchesExistsMatchingContext!448 lt!2527213 s!7408))))

(declare-fun toList!10852 ((InoxSet Context!13010)) List!68057)

(assert (=> b!7046567 (= lt!2527213 (toList!10852 lt!2527233))))

(declare-fun b!7046568 () Bool)

(declare-fun e!4236166 () Bool)

(declare-fun tp!1938126 () Bool)

(assert (=> b!7046568 (= e!4236166 tp!1938126)))

(declare-fun b!7046569 () Bool)

(declare-fun res!2876699 () Bool)

(assert (=> b!7046569 (=> (not res!2876699) (not e!4236174))))

(assert (=> b!7046569 (= res!2876699 ((_ is Cons!67932) s!7408))))

(declare-fun b!7046570 () Bool)

(assert (=> b!7046570 (= e!4236173 e!4236170)))

(declare-fun res!2876702 () Bool)

(assert (=> b!7046570 (=> res!2876702 e!4236170)))

(assert (=> b!7046570 (= res!2876702 (not (matchZipper!3049 lt!2527221 (t!381833 s!7408))))))

(assert (=> b!7046570 (= lt!2527221 (derivationStepZipperDown!2173 (h!74379 (exprs!7005 lt!2527232)) (Context!13011 (++!15588 lt!2527225 (exprs!7005 ct2!306))) (h!74380 s!7408)))))

(declare-fun lt!2527228 () Unit!161704)

(assert (=> b!7046570 (= lt!2527228 (lemmaConcatPreservesForall!830 lt!2527225 (exprs!7005 ct2!306) lambda!417923))))

(declare-fun res!2876697 () Bool)

(assert (=> start!682150 (=> (not res!2876697) (not e!4236174))))

(assert (=> start!682150 (= res!2876697 (matchZipper!3049 lt!2527233 s!7408))))

(assert (=> start!682150 (= lt!2527233 (appendTo!630 z1!570 ct2!306))))

(assert (=> start!682150 e!4236174))

(declare-fun condSetEmpty!49472 () Bool)

(assert (=> start!682150 (= condSetEmpty!49472 (= z1!570 ((as const (Array Context!13010 Bool)) false)))))

(declare-fun setRes!49472 () Bool)

(assert (=> start!682150 setRes!49472))

(declare-fun inv!86631 (Context!13010) Bool)

(assert (=> start!682150 (and (inv!86631 ct2!306) e!4236166)))

(declare-fun e!4236171 () Bool)

(assert (=> start!682150 e!4236171))

(declare-fun setIsEmpty!49472 () Bool)

(assert (=> setIsEmpty!49472 setRes!49472))

(declare-fun b!7046571 () Bool)

(assert (=> b!7046571 (= e!4236168 (matchZipper!3049 lt!2527236 (_2!37377 lt!2527215)))))

(declare-fun b!7046572 () Bool)

(declare-fun res!2876704 () Bool)

(assert (=> b!7046572 (=> res!2876704 e!4236165)))

(assert (=> b!7046572 (= res!2876704 (not (select lt!2527233 lt!2527223)))))

(declare-fun b!7046573 () Bool)

(declare-fun tp_is_empty!44243 () Bool)

(declare-fun tp!1938124 () Bool)

(assert (=> b!7046573 (= e!4236171 (and tp_is_empty!44243 tp!1938124))))

(declare-fun e!4236167 () Bool)

(assert (=> b!7046574 (= e!4236167 e!4236164)))

(declare-fun res!2876706 () Bool)

(assert (=> b!7046574 (=> res!2876706 e!4236164)))

(declare-fun lt!2527226 () (InoxSet Context!13010))

(declare-fun lt!2527224 () (InoxSet Context!13010))

(declare-fun derivationStepZipper!2965 ((InoxSet Context!13010) C!35288) (InoxSet Context!13010))

(assert (=> b!7046574 (= res!2876706 (not (= (derivationStepZipper!2965 lt!2527224 (h!74380 s!7408)) lt!2527226)))))

(declare-fun lambda!417924 () Int)

(declare-fun flatMap!2456 ((InoxSet Context!13010) Int) (InoxSet Context!13010))

(declare-fun derivationStepZipperUp!2119 (Context!13010 C!35288) (InoxSet Context!13010))

(assert (=> b!7046574 (= (flatMap!2456 lt!2527224 lambda!417924) (derivationStepZipperUp!2119 lt!2527230 (h!74380 s!7408)))))

(declare-fun lt!2527219 () Unit!161704)

(declare-fun lemmaFlatMapOnSingletonSet!1970 ((InoxSet Context!13010) Context!13010 Int) Unit!161704)

(assert (=> b!7046574 (= lt!2527219 (lemmaFlatMapOnSingletonSet!1970 lt!2527224 lt!2527230 lambda!417924))))

(assert (=> b!7046574 (= lt!2527226 (derivationStepZipperUp!2119 lt!2527230 (h!74380 s!7408)))))

(declare-fun lt!2527218 () Unit!161704)

(assert (=> b!7046574 (= lt!2527218 (lemmaConcatPreservesForall!830 (exprs!7005 lt!2527232) (exprs!7005 ct2!306) lambda!417923))))

(declare-fun tp!1938125 () Bool)

(declare-fun setElem!49472 () Context!13010)

(declare-fun setNonEmpty!49472 () Bool)

(assert (=> setNonEmpty!49472 (= setRes!49472 (and tp!1938125 (inv!86631 setElem!49472) e!4236169))))

(declare-fun setRest!49472 () (InoxSet Context!13010))

(assert (=> setNonEmpty!49472 (= z1!570 ((_ map or) (store ((as const (Array Context!13010 Bool)) false) setElem!49472 true) setRest!49472))))

(declare-fun b!7046575 () Bool)

(assert (=> b!7046575 (= e!4236172 e!4236167)))

(declare-fun res!2876695 () Bool)

(assert (=> b!7046575 (=> res!2876695 e!4236167)))

(assert (=> b!7046575 (= res!2876695 (not (= lt!2527224 lt!2527227)))))

(assert (=> b!7046575 (= lt!2527224 (store ((as const (Array Context!13010 Bool)) false) lt!2527230 true))))

(declare-fun lt!2527235 () Unit!161704)

(assert (=> b!7046575 (= lt!2527235 (lemmaConcatPreservesForall!830 (exprs!7005 lt!2527232) (exprs!7005 ct2!306) lambda!417923))))

(assert (= (and start!682150 res!2876697) b!7046569))

(assert (= (and b!7046569 res!2876699) b!7046567))

(assert (= (and b!7046567 (not res!2876701)) b!7046572))

(assert (= (and b!7046572 (not res!2876704)) b!7046563))

(assert (= (and b!7046563 (not res!2876696)) b!7046575))

(assert (= (and b!7046575 (not res!2876695)) b!7046574))

(assert (= (and b!7046574 (not res!2876706)) b!7046562))

(assert (= (and b!7046562 (not res!2876705)) b!7046561))

(assert (= (and b!7046561 (not res!2876698)) b!7046565))

(assert (= (and b!7046565 (not res!2876700)) b!7046570))

(assert (= (and b!7046570 (not res!2876702)) b!7046564))

(assert (= (and b!7046564 (not res!2876703)) b!7046571))

(assert (= (and start!682150 condSetEmpty!49472) setIsEmpty!49472))

(assert (= (and start!682150 (not condSetEmpty!49472)) setNonEmpty!49472))

(assert (= setNonEmpty!49472 b!7046566))

(assert (= start!682150 b!7046568))

(assert (= (and start!682150 ((_ is Cons!67932) s!7408)) b!7046573))

(declare-fun m!7760544 () Bool)

(assert (=> setNonEmpty!49472 m!7760544))

(declare-fun m!7760546 () Bool)

(assert (=> b!7046564 m!7760546))

(declare-fun m!7760548 () Bool)

(assert (=> b!7046564 m!7760548))

(declare-fun m!7760550 () Bool)

(assert (=> b!7046564 m!7760550))

(declare-fun m!7760552 () Bool)

(assert (=> b!7046564 m!7760552))

(declare-fun m!7760554 () Bool)

(assert (=> b!7046564 m!7760554))

(declare-fun m!7760556 () Bool)

(assert (=> b!7046564 m!7760556))

(declare-fun m!7760558 () Bool)

(assert (=> b!7046564 m!7760558))

(declare-fun m!7760560 () Bool)

(assert (=> b!7046564 m!7760560))

(declare-fun m!7760562 () Bool)

(assert (=> b!7046564 m!7760562))

(declare-fun m!7760564 () Bool)

(assert (=> b!7046564 m!7760564))

(declare-fun m!7760566 () Bool)

(assert (=> b!7046575 m!7760566))

(declare-fun m!7760568 () Bool)

(assert (=> b!7046575 m!7760568))

(declare-fun m!7760570 () Bool)

(assert (=> b!7046571 m!7760570))

(declare-fun m!7760572 () Bool)

(assert (=> start!682150 m!7760572))

(declare-fun m!7760574 () Bool)

(assert (=> start!682150 m!7760574))

(declare-fun m!7760576 () Bool)

(assert (=> start!682150 m!7760576))

(declare-fun m!7760578 () Bool)

(assert (=> b!7046565 m!7760578))

(declare-fun m!7760580 () Bool)

(assert (=> b!7046565 m!7760580))

(declare-fun m!7760582 () Bool)

(assert (=> b!7046570 m!7760582))

(declare-fun m!7760584 () Bool)

(assert (=> b!7046570 m!7760584))

(declare-fun m!7760586 () Bool)

(assert (=> b!7046570 m!7760586))

(assert (=> b!7046570 m!7760564))

(declare-fun m!7760588 () Bool)

(assert (=> b!7046574 m!7760588))

(assert (=> b!7046574 m!7760568))

(declare-fun m!7760590 () Bool)

(assert (=> b!7046574 m!7760590))

(declare-fun m!7760592 () Bool)

(assert (=> b!7046574 m!7760592))

(declare-fun m!7760594 () Bool)

(assert (=> b!7046574 m!7760594))

(declare-fun m!7760596 () Bool)

(assert (=> b!7046563 m!7760596))

(declare-fun m!7760598 () Bool)

(assert (=> b!7046563 m!7760598))

(assert (=> b!7046563 m!7760568))

(declare-fun m!7760600 () Bool)

(assert (=> b!7046563 m!7760600))

(declare-fun m!7760602 () Bool)

(assert (=> b!7046567 m!7760602))

(declare-fun m!7760604 () Bool)

(assert (=> b!7046567 m!7760604))

(declare-fun m!7760606 () Bool)

(assert (=> b!7046567 m!7760606))

(declare-fun m!7760608 () Bool)

(assert (=> b!7046567 m!7760608))

(declare-fun m!7760610 () Bool)

(assert (=> b!7046567 m!7760610))

(declare-fun m!7760612 () Bool)

(assert (=> b!7046567 m!7760612))

(declare-fun m!7760614 () Bool)

(assert (=> b!7046561 m!7760614))

(declare-fun m!7760616 () Bool)

(assert (=> b!7046572 m!7760616))

(check-sat tp_is_empty!44243 (not b!7046567) (not b!7046564) (not b!7046568) (not b!7046570) (not b!7046566) (not b!7046574) (not b!7046571) (not start!682150) (not setNonEmpty!49472) (not b!7046563) (not b!7046575) (not b!7046573) (not b!7046565) (not b!7046561))
(check-sat)
(get-model)

(declare-fun d!2200956 () Bool)

(declare-fun c!1312144 () Bool)

(declare-fun isEmpty!39649 (List!68056) Bool)

(assert (=> d!2200956 (= c!1312144 (isEmpty!39649 (_2!37377 lt!2527215)))))

(declare-fun e!4236177 () Bool)

(assert (=> d!2200956 (= (matchZipper!3049 lt!2527236 (_2!37377 lt!2527215)) e!4236177)))

(declare-fun b!7046588 () Bool)

(declare-fun nullableZipper!2611 ((InoxSet Context!13010)) Bool)

(assert (=> b!7046588 (= e!4236177 (nullableZipper!2611 lt!2527236))))

(declare-fun b!7046589 () Bool)

(declare-fun head!14308 (List!68056) C!35288)

(declare-fun tail!13631 (List!68056) List!68056)

(assert (=> b!7046589 (= e!4236177 (matchZipper!3049 (derivationStepZipper!2965 lt!2527236 (head!14308 (_2!37377 lt!2527215))) (tail!13631 (_2!37377 lt!2527215))))))

(assert (= (and d!2200956 c!1312144) b!7046588))

(assert (= (and d!2200956 (not c!1312144)) b!7046589))

(declare-fun m!7760634 () Bool)

(assert (=> d!2200956 m!7760634))

(declare-fun m!7760636 () Bool)

(assert (=> b!7046588 m!7760636))

(declare-fun m!7760638 () Bool)

(assert (=> b!7046589 m!7760638))

(assert (=> b!7046589 m!7760638))

(declare-fun m!7760640 () Bool)

(assert (=> b!7046589 m!7760640))

(declare-fun m!7760642 () Bool)

(assert (=> b!7046589 m!7760642))

(assert (=> b!7046589 m!7760640))

(assert (=> b!7046589 m!7760642))

(declare-fun m!7760644 () Bool)

(assert (=> b!7046589 m!7760644))

(assert (=> b!7046571 d!2200956))

(declare-fun bs!1874969 () Bool)

(declare-fun d!2200964 () Bool)

(assert (= bs!1874969 (and d!2200964 b!7046567)))

(declare-fun lambda!417933 () Int)

(assert (=> bs!1874969 (not (= lambda!417933 lambda!417921))))

(assert (=> d!2200964 true))

(declare-fun order!28237 () Int)

(declare-fun dynLambda!27508 (Int Int) Int)

(assert (=> d!2200964 (< (dynLambda!27508 order!28237 lambda!417921) (dynLambda!27508 order!28237 lambda!417933))))

(declare-fun forall!16440 (List!68057 Int) Bool)

(assert (=> d!2200964 (= (exists!3465 lt!2527213 lambda!417921) (not (forall!16440 lt!2527213 lambda!417933)))))

(declare-fun bs!1874970 () Bool)

(assert (= bs!1874970 d!2200964))

(declare-fun m!7760652 () Bool)

(assert (=> bs!1874970 m!7760652))

(assert (=> b!7046567 d!2200964))

(declare-fun bs!1874971 () Bool)

(declare-fun d!2200968 () Bool)

(assert (= bs!1874971 (and d!2200968 b!7046567)))

(declare-fun lambda!417936 () Int)

(assert (=> bs!1874971 (= lambda!417936 lambda!417921)))

(declare-fun bs!1874972 () Bool)

(assert (= bs!1874972 (and d!2200968 d!2200964)))

(assert (=> bs!1874972 (not (= lambda!417936 lambda!417933))))

(assert (=> d!2200968 true))

(assert (=> d!2200968 (exists!3465 lt!2527213 lambda!417936)))

(declare-fun lt!2527245 () Unit!161704)

(declare-fun choose!53566 (List!68057 List!68056) Unit!161704)

(assert (=> d!2200968 (= lt!2527245 (choose!53566 lt!2527213 s!7408))))

(declare-fun content!13613 (List!68057) (InoxSet Context!13010))

(assert (=> d!2200968 (matchZipper!3049 (content!13613 lt!2527213) s!7408)))

(assert (=> d!2200968 (= (lemmaZipperMatchesExistsMatchingContext!448 lt!2527213 s!7408) lt!2527245)))

(declare-fun bs!1874973 () Bool)

(assert (= bs!1874973 d!2200968))

(declare-fun m!7760666 () Bool)

(assert (=> bs!1874973 m!7760666))

(declare-fun m!7760668 () Bool)

(assert (=> bs!1874973 m!7760668))

(declare-fun m!7760670 () Bool)

(assert (=> bs!1874973 m!7760670))

(assert (=> bs!1874973 m!7760670))

(declare-fun m!7760672 () Bool)

(assert (=> bs!1874973 m!7760672))

(assert (=> b!7046567 d!2200968))

(declare-fun d!2200972 () Bool)

(declare-fun e!4236204 () Bool)

(assert (=> d!2200972 e!4236204))

(declare-fun res!2876716 () Bool)

(assert (=> d!2200972 (=> (not res!2876716) (not e!4236204))))

(declare-fun lt!2527248 () List!68057)

(declare-fun noDuplicate!2657 (List!68057) Bool)

(assert (=> d!2200972 (= res!2876716 (noDuplicate!2657 lt!2527248))))

(declare-fun choose!53567 ((InoxSet Context!13010)) List!68057)

(assert (=> d!2200972 (= lt!2527248 (choose!53567 lt!2527233))))

(assert (=> d!2200972 (= (toList!10852 lt!2527233) lt!2527248)))

(declare-fun b!7046637 () Bool)

(assert (=> b!7046637 (= e!4236204 (= (content!13613 lt!2527248) lt!2527233))))

(assert (= (and d!2200972 res!2876716) b!7046637))

(declare-fun m!7760674 () Bool)

(assert (=> d!2200972 m!7760674))

(declare-fun m!7760676 () Bool)

(assert (=> d!2200972 m!7760676))

(declare-fun m!7760678 () Bool)

(assert (=> b!7046637 m!7760678))

(assert (=> b!7046567 d!2200972))

(declare-fun d!2200974 () Bool)

(declare-fun e!4236219 () Bool)

(assert (=> d!2200974 e!4236219))

(declare-fun res!2876726 () Bool)

(assert (=> d!2200974 (=> (not res!2876726) (not e!4236219))))

(declare-fun lt!2527255 () Context!13010)

(declare-fun dynLambda!27510 (Int Context!13010) Bool)

(assert (=> d!2200974 (= res!2876726 (dynLambda!27510 lambda!417921 lt!2527255))))

(declare-fun getWitness!1546 (List!68057 Int) Context!13010)

(assert (=> d!2200974 (= lt!2527255 (getWitness!1546 (toList!10852 lt!2527233) lambda!417921))))

(declare-fun exists!3467 ((InoxSet Context!13010) Int) Bool)

(assert (=> d!2200974 (exists!3467 lt!2527233 lambda!417921)))

(assert (=> d!2200974 (= (getWitness!1544 lt!2527233 lambda!417921) lt!2527255)))

(declare-fun b!7046663 () Bool)

(assert (=> b!7046663 (= e!4236219 (select lt!2527233 lt!2527255))))

(assert (= (and d!2200974 res!2876726) b!7046663))

(declare-fun b_lambda!267781 () Bool)

(assert (=> (not b_lambda!267781) (not d!2200974)))

(declare-fun m!7760710 () Bool)

(assert (=> d!2200974 m!7760710))

(assert (=> d!2200974 m!7760604))

(assert (=> d!2200974 m!7760604))

(declare-fun m!7760712 () Bool)

(assert (=> d!2200974 m!7760712))

(declare-fun m!7760714 () Bool)

(assert (=> d!2200974 m!7760714))

(declare-fun m!7760716 () Bool)

(assert (=> b!7046663 m!7760716))

(assert (=> b!7046567 d!2200974))

(declare-fun d!2200982 () Bool)

(declare-fun c!1312174 () Bool)

(assert (=> d!2200982 (= c!1312174 (isEmpty!39649 s!7408))))

(declare-fun e!4236220 () Bool)

(assert (=> d!2200982 (= (matchZipper!3049 lt!2527227 s!7408) e!4236220)))

(declare-fun b!7046664 () Bool)

(assert (=> b!7046664 (= e!4236220 (nullableZipper!2611 lt!2527227))))

(declare-fun b!7046665 () Bool)

(assert (=> b!7046665 (= e!4236220 (matchZipper!3049 (derivationStepZipper!2965 lt!2527227 (head!14308 s!7408)) (tail!13631 s!7408)))))

(assert (= (and d!2200982 c!1312174) b!7046664))

(assert (= (and d!2200982 (not c!1312174)) b!7046665))

(declare-fun m!7760720 () Bool)

(assert (=> d!2200982 m!7760720))

(declare-fun m!7760722 () Bool)

(assert (=> b!7046664 m!7760722))

(declare-fun m!7760724 () Bool)

(assert (=> b!7046665 m!7760724))

(assert (=> b!7046665 m!7760724))

(declare-fun m!7760726 () Bool)

(assert (=> b!7046665 m!7760726))

(declare-fun m!7760728 () Bool)

(assert (=> b!7046665 m!7760728))

(assert (=> b!7046665 m!7760726))

(assert (=> b!7046665 m!7760728))

(declare-fun m!7760730 () Bool)

(assert (=> b!7046665 m!7760730))

(assert (=> b!7046567 d!2200982))

(declare-fun d!2200988 () Bool)

(assert (=> d!2200988 (= (isEmpty!39647 (exprs!7005 lt!2527232)) ((_ is Nil!67931) (exprs!7005 lt!2527232)))))

(assert (=> b!7046561 d!2200988))

(declare-fun d!2200992 () Bool)

(declare-fun forall!16441 (List!68055 Int) Bool)

(assert (=> d!2200992 (forall!16441 (++!15588 (exprs!7005 lt!2527232) (exprs!7005 ct2!306)) lambda!417923)))

(declare-fun lt!2527264 () Unit!161704)

(declare-fun choose!53568 (List!68055 List!68055 Int) Unit!161704)

(assert (=> d!2200992 (= lt!2527264 (choose!53568 (exprs!7005 lt!2527232) (exprs!7005 ct2!306) lambda!417923))))

(assert (=> d!2200992 (forall!16441 (exprs!7005 lt!2527232) lambda!417923)))

(assert (=> d!2200992 (= (lemmaConcatPreservesForall!830 (exprs!7005 lt!2527232) (exprs!7005 ct2!306) lambda!417923) lt!2527264)))

(declare-fun bs!1874976 () Bool)

(assert (= bs!1874976 d!2200992))

(assert (=> bs!1874976 m!7760598))

(assert (=> bs!1874976 m!7760598))

(declare-fun m!7760752 () Bool)

(assert (=> bs!1874976 m!7760752))

(declare-fun m!7760754 () Bool)

(assert (=> bs!1874976 m!7760754))

(declare-fun m!7760756 () Bool)

(assert (=> bs!1874976 m!7760756))

(assert (=> b!7046575 d!2200992))

(declare-fun b!7046692 () Bool)

(declare-fun e!4236235 () Bool)

(declare-fun lt!2527271 () List!68055)

(assert (=> b!7046692 (= e!4236235 (or (not (= (exprs!7005 ct2!306) Nil!67931)) (= lt!2527271 (exprs!7005 lt!2527232))))))

(declare-fun d!2200996 () Bool)

(assert (=> d!2200996 e!4236235))

(declare-fun res!2876739 () Bool)

(assert (=> d!2200996 (=> (not res!2876739) (not e!4236235))))

(declare-fun content!13614 (List!68055) (InoxSet Regex!17509))

(assert (=> d!2200996 (= res!2876739 (= (content!13614 lt!2527271) ((_ map or) (content!13614 (exprs!7005 lt!2527232)) (content!13614 (exprs!7005 ct2!306)))))))

(declare-fun e!4236234 () List!68055)

(assert (=> d!2200996 (= lt!2527271 e!4236234)))

(declare-fun c!1312181 () Bool)

(assert (=> d!2200996 (= c!1312181 ((_ is Nil!67931) (exprs!7005 lt!2527232)))))

(assert (=> d!2200996 (= (++!15588 (exprs!7005 lt!2527232) (exprs!7005 ct2!306)) lt!2527271)))

(declare-fun b!7046691 () Bool)

(declare-fun res!2876740 () Bool)

(assert (=> b!7046691 (=> (not res!2876740) (not e!4236235))))

(declare-fun size!41113 (List!68055) Int)

(assert (=> b!7046691 (= res!2876740 (= (size!41113 lt!2527271) (+ (size!41113 (exprs!7005 lt!2527232)) (size!41113 (exprs!7005 ct2!306)))))))

(declare-fun b!7046689 () Bool)

(assert (=> b!7046689 (= e!4236234 (exprs!7005 ct2!306))))

(declare-fun b!7046690 () Bool)

(assert (=> b!7046690 (= e!4236234 (Cons!67931 (h!74379 (exprs!7005 lt!2527232)) (++!15588 (t!381832 (exprs!7005 lt!2527232)) (exprs!7005 ct2!306))))))

(assert (= (and d!2200996 c!1312181) b!7046689))

(assert (= (and d!2200996 (not c!1312181)) b!7046690))

(assert (= (and d!2200996 res!2876739) b!7046691))

(assert (= (and b!7046691 res!2876740) b!7046692))

(declare-fun m!7760786 () Bool)

(assert (=> d!2200996 m!7760786))

(declare-fun m!7760788 () Bool)

(assert (=> d!2200996 m!7760788))

(declare-fun m!7760790 () Bool)

(assert (=> d!2200996 m!7760790))

(declare-fun m!7760792 () Bool)

(assert (=> b!7046691 m!7760792))

(declare-fun m!7760794 () Bool)

(assert (=> b!7046691 m!7760794))

(declare-fun m!7760796 () Bool)

(assert (=> b!7046691 m!7760796))

(declare-fun m!7760798 () Bool)

(assert (=> b!7046690 m!7760798))

(assert (=> b!7046563 d!2200996))

(assert (=> b!7046563 d!2200992))

(declare-fun d!2201006 () Bool)

(declare-fun e!4236243 () Bool)

(assert (=> d!2201006 e!4236243))

(declare-fun res!2876746 () Bool)

(assert (=> d!2201006 (=> (not res!2876746) (not e!4236243))))

(declare-fun lt!2527277 () Context!13010)

(declare-fun dynLambda!27511 (Int Context!13010) Context!13010)

(assert (=> d!2201006 (= res!2876746 (= lt!2527223 (dynLambda!27511 lambda!417922 lt!2527277)))))

(declare-fun choose!53570 ((InoxSet Context!13010) Int Context!13010) Context!13010)

(assert (=> d!2201006 (= lt!2527277 (choose!53570 z1!570 lambda!417922 lt!2527223))))

(declare-fun map!15821 ((InoxSet Context!13010) Int) (InoxSet Context!13010))

(assert (=> d!2201006 (select (map!15821 z1!570 lambda!417922) lt!2527223)))

(assert (=> d!2201006 (= (mapPost2!350 z1!570 lambda!417922 lt!2527223) lt!2527277)))

(declare-fun b!7046703 () Bool)

(assert (=> b!7046703 (= e!4236243 (select z1!570 lt!2527277))))

(assert (= (and d!2201006 res!2876746) b!7046703))

(declare-fun b_lambda!267787 () Bool)

(assert (=> (not b_lambda!267787) (not d!2201006)))

(declare-fun m!7760826 () Bool)

(assert (=> d!2201006 m!7760826))

(declare-fun m!7760828 () Bool)

(assert (=> d!2201006 m!7760828))

(declare-fun m!7760830 () Bool)

(assert (=> d!2201006 m!7760830))

(declare-fun m!7760832 () Bool)

(assert (=> d!2201006 m!7760832))

(declare-fun m!7760834 () Bool)

(assert (=> b!7046703 m!7760834))

(assert (=> b!7046563 d!2201006))

(declare-fun b!7046757 () Bool)

(declare-fun e!4236274 () (InoxSet Context!13010))

(assert (=> b!7046757 (= e!4236274 (store ((as const (Array Context!13010 Bool)) false) lt!2527214 true))))

(declare-fun b!7046758 () Bool)

(declare-fun c!1312207 () Bool)

(assert (=> b!7046758 (= c!1312207 ((_ is Star!17509) (h!74379 (exprs!7005 lt!2527232))))))

(declare-fun e!4236273 () (InoxSet Context!13010))

(declare-fun e!4236277 () (InoxSet Context!13010))

(assert (=> b!7046758 (= e!4236273 e!4236277)))

(declare-fun b!7046759 () Bool)

(declare-fun c!1312206 () Bool)

(declare-fun e!4236276 () Bool)

(assert (=> b!7046759 (= c!1312206 e!4236276)))

(declare-fun res!2876760 () Bool)

(assert (=> b!7046759 (=> (not res!2876760) (not e!4236276))))

(assert (=> b!7046759 (= res!2876760 ((_ is Concat!26354) (h!74379 (exprs!7005 lt!2527232))))))

(declare-fun e!4236278 () (InoxSet Context!13010))

(declare-fun e!4236275 () (InoxSet Context!13010))

(assert (=> b!7046759 (= e!4236278 e!4236275)))

(declare-fun call!640259 () List!68055)

(declare-fun c!1312205 () Bool)

(declare-fun call!640258 () (InoxSet Context!13010))

(declare-fun bm!640250 () Bool)

(assert (=> bm!640250 (= call!640258 (derivationStepZipperDown!2173 (ite c!1312205 (regTwo!35531 (h!74379 (exprs!7005 lt!2527232))) (regOne!35530 (h!74379 (exprs!7005 lt!2527232)))) (ite c!1312205 lt!2527214 (Context!13011 call!640259)) (h!74380 s!7408)))))

(declare-fun bm!640251 () Bool)

(declare-fun call!640256 () (InoxSet Context!13010))

(declare-fun call!640257 () (InoxSet Context!13010))

(assert (=> bm!640251 (= call!640256 call!640257)))

(declare-fun b!7046760 () Bool)

(declare-fun call!640255 () (InoxSet Context!13010))

(assert (=> b!7046760 (= e!4236273 call!640255)))

(declare-fun c!1312208 () Bool)

(declare-fun bm!640252 () Bool)

(declare-fun $colon$colon!2604 (List!68055 Regex!17509) List!68055)

(assert (=> bm!640252 (= call!640259 ($colon$colon!2604 (exprs!7005 lt!2527214) (ite (or c!1312206 c!1312208) (regTwo!35530 (h!74379 (exprs!7005 lt!2527232))) (h!74379 (exprs!7005 lt!2527232)))))))

(declare-fun call!640260 () List!68055)

(declare-fun bm!640253 () Bool)

(assert (=> bm!640253 (= call!640257 (derivationStepZipperDown!2173 (ite c!1312205 (regOne!35531 (h!74379 (exprs!7005 lt!2527232))) (ite c!1312206 (regTwo!35530 (h!74379 (exprs!7005 lt!2527232))) (ite c!1312208 (regOne!35530 (h!74379 (exprs!7005 lt!2527232))) (reg!17838 (h!74379 (exprs!7005 lt!2527232)))))) (ite (or c!1312205 c!1312206) lt!2527214 (Context!13011 call!640260)) (h!74380 s!7408)))))

(declare-fun b!7046761 () Bool)

(assert (=> b!7046761 (= e!4236275 e!4236273)))

(assert (=> b!7046761 (= c!1312208 ((_ is Concat!26354) (h!74379 (exprs!7005 lt!2527232))))))

(declare-fun b!7046763 () Bool)

(assert (=> b!7046763 (= e!4236275 ((_ map or) call!640258 call!640256))))

(declare-fun b!7046764 () Bool)

(assert (=> b!7046764 (= e!4236274 e!4236278)))

(assert (=> b!7046764 (= c!1312205 ((_ is Union!17509) (h!74379 (exprs!7005 lt!2527232))))))

(declare-fun b!7046765 () Bool)

(assert (=> b!7046765 (= e!4236276 (nullable!7220 (regOne!35530 (h!74379 (exprs!7005 lt!2527232)))))))

(declare-fun b!7046766 () Bool)

(assert (=> b!7046766 (= e!4236278 ((_ map or) call!640257 call!640258))))

(declare-fun bm!640254 () Bool)

(assert (=> bm!640254 (= call!640255 call!640256)))

(declare-fun d!2201016 () Bool)

(declare-fun c!1312209 () Bool)

(assert (=> d!2201016 (= c!1312209 (and ((_ is ElementMatch!17509) (h!74379 (exprs!7005 lt!2527232))) (= (c!1312139 (h!74379 (exprs!7005 lt!2527232))) (h!74380 s!7408))))))

(assert (=> d!2201016 (= (derivationStepZipperDown!2173 (h!74379 (exprs!7005 lt!2527232)) lt!2527214 (h!74380 s!7408)) e!4236274)))

(declare-fun b!7046762 () Bool)

(assert (=> b!7046762 (= e!4236277 ((as const (Array Context!13010 Bool)) false))))

(declare-fun b!7046767 () Bool)

(assert (=> b!7046767 (= e!4236277 call!640255)))

(declare-fun bm!640255 () Bool)

(assert (=> bm!640255 (= call!640260 call!640259)))

(assert (= (and d!2201016 c!1312209) b!7046757))

(assert (= (and d!2201016 (not c!1312209)) b!7046764))

(assert (= (and b!7046764 c!1312205) b!7046766))

(assert (= (and b!7046764 (not c!1312205)) b!7046759))

(assert (= (and b!7046759 res!2876760) b!7046765))

(assert (= (and b!7046759 c!1312206) b!7046763))

(assert (= (and b!7046759 (not c!1312206)) b!7046761))

(assert (= (and b!7046761 c!1312208) b!7046760))

(assert (= (and b!7046761 (not c!1312208)) b!7046758))

(assert (= (and b!7046758 c!1312207) b!7046767))

(assert (= (and b!7046758 (not c!1312207)) b!7046762))

(assert (= (or b!7046760 b!7046767) bm!640255))

(assert (= (or b!7046760 b!7046767) bm!640254))

(assert (= (or b!7046763 bm!640254) bm!640251))

(assert (= (or b!7046763 bm!640255) bm!640252))

(assert (= (or b!7046766 bm!640251) bm!640253))

(assert (= (or b!7046766 b!7046763) bm!640250))

(declare-fun m!7760870 () Bool)

(assert (=> b!7046757 m!7760870))

(declare-fun m!7760872 () Bool)

(assert (=> bm!640253 m!7760872))

(declare-fun m!7760874 () Bool)

(assert (=> b!7046765 m!7760874))

(declare-fun m!7760876 () Bool)

(assert (=> bm!640250 m!7760876))

(declare-fun m!7760878 () Bool)

(assert (=> bm!640252 m!7760878))

(assert (=> b!7046564 d!2201016))

(declare-fun d!2201030 () Bool)

(assert (=> d!2201030 (= (get!23811 lt!2527229) (v!53195 lt!2527229))))

(assert (=> b!7046564 d!2201030))

(declare-fun bs!1874994 () Bool)

(declare-fun d!2201032 () Bool)

(assert (= bs!1874994 (and d!2201032 b!7046563)))

(declare-fun lambda!417955 () Int)

(assert (=> bs!1874994 (= lambda!417955 lambda!417923)))

(assert (=> d!2201032 (= (derivationStepZipperDown!2173 (h!74379 (exprs!7005 lt!2527232)) (Context!13011 (++!15588 (exprs!7005 lt!2527214) (exprs!7005 ct2!306))) (h!74380 s!7408)) (appendTo!630 (derivationStepZipperDown!2173 (h!74379 (exprs!7005 lt!2527232)) lt!2527214 (h!74380 s!7408)) ct2!306))))

(declare-fun lt!2527303 () Unit!161704)

(assert (=> d!2201032 (= lt!2527303 (lemmaConcatPreservesForall!830 (exprs!7005 lt!2527214) (exprs!7005 ct2!306) lambda!417955))))

(declare-fun lt!2527302 () Unit!161704)

(declare-fun choose!53571 (Context!13010 Regex!17509 C!35288 Context!13010) Unit!161704)

(assert (=> d!2201032 (= lt!2527302 (choose!53571 lt!2527214 (h!74379 (exprs!7005 lt!2527232)) (h!74380 s!7408) ct2!306))))

(declare-fun validRegex!8948 (Regex!17509) Bool)

(assert (=> d!2201032 (validRegex!8948 (h!74379 (exprs!7005 lt!2527232)))))

(assert (=> d!2201032 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!86 lt!2527214 (h!74379 (exprs!7005 lt!2527232)) (h!74380 s!7408) ct2!306) lt!2527302)))

(declare-fun bs!1874996 () Bool)

(assert (= bs!1874996 d!2201032))

(declare-fun m!7760916 () Bool)

(assert (=> bs!1874996 m!7760916))

(assert (=> bs!1874996 m!7760556))

(declare-fun m!7760918 () Bool)

(assert (=> bs!1874996 m!7760918))

(assert (=> bs!1874996 m!7760556))

(declare-fun m!7760920 () Bool)

(assert (=> bs!1874996 m!7760920))

(declare-fun m!7760922 () Bool)

(assert (=> bs!1874996 m!7760922))

(declare-fun m!7760924 () Bool)

(assert (=> bs!1874996 m!7760924))

(declare-fun m!7760926 () Bool)

(assert (=> bs!1874996 m!7760926))

(assert (=> b!7046564 d!2201032))

(declare-fun d!2201040 () Bool)

(declare-fun c!1312214 () Bool)

(assert (=> d!2201040 (= c!1312214 (isEmpty!39649 (_1!37377 lt!2527215)))))

(declare-fun e!4236284 () Bool)

(assert (=> d!2201040 (= (matchZipper!3049 lt!2527220 (_1!37377 lt!2527215)) e!4236284)))

(declare-fun b!7046777 () Bool)

(assert (=> b!7046777 (= e!4236284 (nullableZipper!2611 lt!2527220))))

(declare-fun b!7046778 () Bool)

(assert (=> b!7046778 (= e!4236284 (matchZipper!3049 (derivationStepZipper!2965 lt!2527220 (head!14308 (_1!37377 lt!2527215))) (tail!13631 (_1!37377 lt!2527215))))))

(assert (= (and d!2201040 c!1312214) b!7046777))

(assert (= (and d!2201040 (not c!1312214)) b!7046778))

(declare-fun m!7760930 () Bool)

(assert (=> d!2201040 m!7760930))

(declare-fun m!7760932 () Bool)

(assert (=> b!7046777 m!7760932))

(declare-fun m!7760934 () Bool)

(assert (=> b!7046778 m!7760934))

(assert (=> b!7046778 m!7760934))

(declare-fun m!7760936 () Bool)

(assert (=> b!7046778 m!7760936))

(declare-fun m!7760938 () Bool)

(assert (=> b!7046778 m!7760938))

(assert (=> b!7046778 m!7760936))

(assert (=> b!7046778 m!7760938))

(declare-fun m!7760940 () Bool)

(assert (=> b!7046778 m!7760940))

(assert (=> b!7046564 d!2201040))

(declare-fun bs!1875001 () Bool)

(declare-fun d!2201042 () Bool)

(assert (= bs!1875001 (and d!2201042 b!7046563)))

(declare-fun lambda!417960 () Int)

(assert (=> bs!1875001 (= lambda!417960 lambda!417922)))

(assert (=> d!2201042 true))

(assert (=> d!2201042 (= (appendTo!630 lt!2527220 ct2!306) (map!15821 lt!2527220 lambda!417960))))

(declare-fun bs!1875002 () Bool)

(assert (= bs!1875002 d!2201042))

(declare-fun m!7760952 () Bool)

(assert (=> bs!1875002 m!7760952))

(assert (=> b!7046564 d!2201042))

(declare-fun d!2201050 () Bool)

(assert (=> d!2201050 (isDefined!13607 (findConcatSeparationZippers!422 lt!2527220 (store ((as const (Array Context!13010 Bool)) false) ct2!306 true) Nil!67932 (t!381833 s!7408) (t!381833 s!7408)))))

(declare-fun lt!2527309 () Unit!161704)

(declare-fun choose!53572 ((InoxSet Context!13010) Context!13010 List!68056) Unit!161704)

(assert (=> d!2201050 (= lt!2527309 (choose!53572 lt!2527220 ct2!306 (t!381833 s!7408)))))

(assert (=> d!2201050 (matchZipper!3049 (appendTo!630 lt!2527220 ct2!306) (t!381833 s!7408))))

(assert (=> d!2201050 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!410 lt!2527220 ct2!306 (t!381833 s!7408)) lt!2527309)))

(declare-fun bs!1875003 () Bool)

(assert (= bs!1875003 d!2201050))

(declare-fun m!7760954 () Bool)

(assert (=> bs!1875003 m!7760954))

(declare-fun m!7760956 () Bool)

(assert (=> bs!1875003 m!7760956))

(declare-fun m!7760958 () Bool)

(assert (=> bs!1875003 m!7760958))

(assert (=> bs!1875003 m!7760548))

(assert (=> bs!1875003 m!7760548))

(assert (=> bs!1875003 m!7760956))

(assert (=> bs!1875003 m!7760552))

(assert (=> bs!1875003 m!7760552))

(declare-fun m!7760960 () Bool)

(assert (=> bs!1875003 m!7760960))

(assert (=> b!7046564 d!2201050))

(declare-fun b!7046813 () Bool)

(declare-fun e!4236307 () Option!16906)

(declare-fun e!4236306 () Option!16906)

(assert (=> b!7046813 (= e!4236307 e!4236306)))

(declare-fun c!1312221 () Bool)

(assert (=> b!7046813 (= c!1312221 ((_ is Nil!67932) (t!381833 s!7408)))))

(declare-fun b!7046814 () Bool)

(assert (=> b!7046814 (= e!4236307 (Some!16905 (tuple2!68149 Nil!67932 (t!381833 s!7408))))))

(declare-fun b!7046815 () Bool)

(declare-fun res!2876778 () Bool)

(declare-fun e!4236309 () Bool)

(assert (=> b!7046815 (=> (not res!2876778) (not e!4236309))))

(declare-fun lt!2527316 () Option!16906)

(assert (=> b!7046815 (= res!2876778 (matchZipper!3049 lt!2527220 (_1!37377 (get!23811 lt!2527316))))))

(declare-fun b!7046816 () Bool)

(declare-fun e!4236308 () Bool)

(assert (=> b!7046816 (= e!4236308 (matchZipper!3049 lt!2527236 (t!381833 s!7408)))))

(declare-fun d!2201052 () Bool)

(declare-fun e!4236305 () Bool)

(assert (=> d!2201052 e!4236305))

(declare-fun res!2876779 () Bool)

(assert (=> d!2201052 (=> res!2876779 e!4236305)))

(assert (=> d!2201052 (= res!2876779 e!4236309)))

(declare-fun res!2876780 () Bool)

(assert (=> d!2201052 (=> (not res!2876780) (not e!4236309))))

(assert (=> d!2201052 (= res!2876780 (isDefined!13607 lt!2527316))))

(assert (=> d!2201052 (= lt!2527316 e!4236307)))

(declare-fun c!1312220 () Bool)

(assert (=> d!2201052 (= c!1312220 e!4236308)))

(declare-fun res!2876777 () Bool)

(assert (=> d!2201052 (=> (not res!2876777) (not e!4236308))))

(assert (=> d!2201052 (= res!2876777 (matchZipper!3049 lt!2527220 Nil!67932))))

(declare-fun ++!15590 (List!68056 List!68056) List!68056)

(assert (=> d!2201052 (= (++!15590 Nil!67932 (t!381833 s!7408)) (t!381833 s!7408))))

(assert (=> d!2201052 (= (findConcatSeparationZippers!422 lt!2527220 lt!2527236 Nil!67932 (t!381833 s!7408) (t!381833 s!7408)) lt!2527316)))

(declare-fun b!7046817 () Bool)

(assert (=> b!7046817 (= e!4236309 (= (++!15590 (_1!37377 (get!23811 lt!2527316)) (_2!37377 (get!23811 lt!2527316))) (t!381833 s!7408)))))

(declare-fun b!7046818 () Bool)

(assert (=> b!7046818 (= e!4236306 None!16905)))

(declare-fun b!7046819 () Bool)

(assert (=> b!7046819 (= e!4236305 (not (isDefined!13607 lt!2527316)))))

(declare-fun b!7046820 () Bool)

(declare-fun res!2876776 () Bool)

(assert (=> b!7046820 (=> (not res!2876776) (not e!4236309))))

(assert (=> b!7046820 (= res!2876776 (matchZipper!3049 lt!2527236 (_2!37377 (get!23811 lt!2527316))))))

(declare-fun b!7046821 () Bool)

(declare-fun lt!2527317 () Unit!161704)

(declare-fun lt!2527318 () Unit!161704)

(assert (=> b!7046821 (= lt!2527317 lt!2527318)))

(assert (=> b!7046821 (= (++!15590 (++!15590 Nil!67932 (Cons!67932 (h!74380 (t!381833 s!7408)) Nil!67932)) (t!381833 (t!381833 s!7408))) (t!381833 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2949 (List!68056 C!35288 List!68056 List!68056) Unit!161704)

(assert (=> b!7046821 (= lt!2527318 (lemmaMoveElementToOtherListKeepsConcatEq!2949 Nil!67932 (h!74380 (t!381833 s!7408)) (t!381833 (t!381833 s!7408)) (t!381833 s!7408)))))

(assert (=> b!7046821 (= e!4236306 (findConcatSeparationZippers!422 lt!2527220 lt!2527236 (++!15590 Nil!67932 (Cons!67932 (h!74380 (t!381833 s!7408)) Nil!67932)) (t!381833 (t!381833 s!7408)) (t!381833 s!7408)))))

(assert (= (and d!2201052 res!2876777) b!7046816))

(assert (= (and d!2201052 c!1312220) b!7046814))

(assert (= (and d!2201052 (not c!1312220)) b!7046813))

(assert (= (and b!7046813 c!1312221) b!7046818))

(assert (= (and b!7046813 (not c!1312221)) b!7046821))

(assert (= (and d!2201052 res!2876780) b!7046815))

(assert (= (and b!7046815 res!2876778) b!7046820))

(assert (= (and b!7046820 res!2876776) b!7046817))

(assert (= (and d!2201052 (not res!2876779)) b!7046819))

(declare-fun m!7760962 () Bool)

(assert (=> b!7046815 m!7760962))

(declare-fun m!7760964 () Bool)

(assert (=> b!7046815 m!7760964))

(declare-fun m!7760966 () Bool)

(assert (=> b!7046819 m!7760966))

(assert (=> d!2201052 m!7760966))

(declare-fun m!7760968 () Bool)

(assert (=> d!2201052 m!7760968))

(declare-fun m!7760970 () Bool)

(assert (=> d!2201052 m!7760970))

(declare-fun m!7760972 () Bool)

(assert (=> b!7046816 m!7760972))

(declare-fun m!7760974 () Bool)

(assert (=> b!7046821 m!7760974))

(assert (=> b!7046821 m!7760974))

(declare-fun m!7760976 () Bool)

(assert (=> b!7046821 m!7760976))

(declare-fun m!7760978 () Bool)

(assert (=> b!7046821 m!7760978))

(assert (=> b!7046821 m!7760974))

(declare-fun m!7760980 () Bool)

(assert (=> b!7046821 m!7760980))

(assert (=> b!7046820 m!7760962))

(declare-fun m!7760982 () Bool)

(assert (=> b!7046820 m!7760982))

(assert (=> b!7046817 m!7760962))

(declare-fun m!7760984 () Bool)

(assert (=> b!7046817 m!7760984))

(assert (=> b!7046564 d!2201052))

(declare-fun d!2201054 () Bool)

(assert (=> d!2201054 (forall!16441 (++!15588 lt!2527225 (exprs!7005 ct2!306)) lambda!417923)))

(declare-fun lt!2527319 () Unit!161704)

(assert (=> d!2201054 (= lt!2527319 (choose!53568 lt!2527225 (exprs!7005 ct2!306) lambda!417923))))

(assert (=> d!2201054 (forall!16441 lt!2527225 lambda!417923)))

(assert (=> d!2201054 (= (lemmaConcatPreservesForall!830 lt!2527225 (exprs!7005 ct2!306) lambda!417923) lt!2527319)))

(declare-fun bs!1875004 () Bool)

(assert (= bs!1875004 d!2201054))

(assert (=> bs!1875004 m!7760584))

(assert (=> bs!1875004 m!7760584))

(declare-fun m!7760986 () Bool)

(assert (=> bs!1875004 m!7760986))

(declare-fun m!7760988 () Bool)

(assert (=> bs!1875004 m!7760988))

(declare-fun m!7760990 () Bool)

(assert (=> bs!1875004 m!7760990))

(assert (=> b!7046564 d!2201054))

(declare-fun d!2201056 () Bool)

(declare-fun isEmpty!39651 (Option!16906) Bool)

(assert (=> d!2201056 (= (isDefined!13607 lt!2527229) (not (isEmpty!39651 lt!2527229)))))

(declare-fun bs!1875005 () Bool)

(assert (= bs!1875005 d!2201056))

(declare-fun m!7760992 () Bool)

(assert (=> bs!1875005 m!7760992))

(assert (=> b!7046564 d!2201056))

(declare-fun d!2201058 () Bool)

(declare-fun c!1312222 () Bool)

(assert (=> d!2201058 (= c!1312222 (isEmpty!39649 s!7408))))

(declare-fun e!4236310 () Bool)

(assert (=> d!2201058 (= (matchZipper!3049 lt!2527233 s!7408) e!4236310)))

(declare-fun b!7046822 () Bool)

(assert (=> b!7046822 (= e!4236310 (nullableZipper!2611 lt!2527233))))

(declare-fun b!7046823 () Bool)

(assert (=> b!7046823 (= e!4236310 (matchZipper!3049 (derivationStepZipper!2965 lt!2527233 (head!14308 s!7408)) (tail!13631 s!7408)))))

(assert (= (and d!2201058 c!1312222) b!7046822))

(assert (= (and d!2201058 (not c!1312222)) b!7046823))

(assert (=> d!2201058 m!7760720))

(declare-fun m!7760994 () Bool)

(assert (=> b!7046822 m!7760994))

(assert (=> b!7046823 m!7760724))

(assert (=> b!7046823 m!7760724))

(declare-fun m!7760996 () Bool)

(assert (=> b!7046823 m!7760996))

(assert (=> b!7046823 m!7760728))

(assert (=> b!7046823 m!7760996))

(assert (=> b!7046823 m!7760728))

(declare-fun m!7760998 () Bool)

(assert (=> b!7046823 m!7760998))

(assert (=> start!682150 d!2201058))

(declare-fun bs!1875006 () Bool)

(declare-fun d!2201060 () Bool)

(assert (= bs!1875006 (and d!2201060 b!7046563)))

(declare-fun lambda!417961 () Int)

(assert (=> bs!1875006 (= lambda!417961 lambda!417922)))

(declare-fun bs!1875007 () Bool)

(assert (= bs!1875007 (and d!2201060 d!2201042)))

(assert (=> bs!1875007 (= lambda!417961 lambda!417960)))

(assert (=> d!2201060 true))

(assert (=> d!2201060 (= (appendTo!630 z1!570 ct2!306) (map!15821 z1!570 lambda!417961))))

(declare-fun bs!1875008 () Bool)

(assert (= bs!1875008 d!2201060))

(declare-fun m!7761000 () Bool)

(assert (=> bs!1875008 m!7761000))

(assert (=> start!682150 d!2201060))

(declare-fun bs!1875009 () Bool)

(declare-fun d!2201062 () Bool)

(assert (= bs!1875009 (and d!2201062 b!7046563)))

(declare-fun lambda!417964 () Int)

(assert (=> bs!1875009 (= lambda!417964 lambda!417923)))

(declare-fun bs!1875010 () Bool)

(assert (= bs!1875010 (and d!2201062 d!2201032)))

(assert (=> bs!1875010 (= lambda!417964 lambda!417955)))

(assert (=> d!2201062 (= (inv!86631 ct2!306) (forall!16441 (exprs!7005 ct2!306) lambda!417964))))

(declare-fun bs!1875011 () Bool)

(assert (= bs!1875011 d!2201062))

(declare-fun m!7761002 () Bool)

(assert (=> bs!1875011 m!7761002))

(assert (=> start!682150 d!2201062))

(declare-fun b!7046834 () Bool)

(declare-fun e!4236318 () Bool)

(assert (=> b!7046834 (= e!4236318 (nullable!7220 (h!74379 (exprs!7005 lt!2527230))))))

(declare-fun b!7046835 () Bool)

(declare-fun e!4236319 () (InoxSet Context!13010))

(assert (=> b!7046835 (= e!4236319 ((as const (Array Context!13010 Bool)) false))))

(declare-fun d!2201064 () Bool)

(declare-fun c!1312228 () Bool)

(assert (=> d!2201064 (= c!1312228 e!4236318)))

(declare-fun res!2876783 () Bool)

(assert (=> d!2201064 (=> (not res!2876783) (not e!4236318))))

(assert (=> d!2201064 (= res!2876783 ((_ is Cons!67931) (exprs!7005 lt!2527230)))))

(declare-fun e!4236317 () (InoxSet Context!13010))

(assert (=> d!2201064 (= (derivationStepZipperUp!2119 lt!2527230 (h!74380 s!7408)) e!4236317)))

(declare-fun bm!640258 () Bool)

(declare-fun call!640263 () (InoxSet Context!13010))

(assert (=> bm!640258 (= call!640263 (derivationStepZipperDown!2173 (h!74379 (exprs!7005 lt!2527230)) (Context!13011 (t!381832 (exprs!7005 lt!2527230))) (h!74380 s!7408)))))

(declare-fun b!7046836 () Bool)

(assert (=> b!7046836 (= e!4236317 ((_ map or) call!640263 (derivationStepZipperUp!2119 (Context!13011 (t!381832 (exprs!7005 lt!2527230))) (h!74380 s!7408))))))

(declare-fun b!7046837 () Bool)

(assert (=> b!7046837 (= e!4236317 e!4236319)))

(declare-fun c!1312227 () Bool)

(assert (=> b!7046837 (= c!1312227 ((_ is Cons!67931) (exprs!7005 lt!2527230)))))

(declare-fun b!7046838 () Bool)

(assert (=> b!7046838 (= e!4236319 call!640263)))

(assert (= (and d!2201064 res!2876783) b!7046834))

(assert (= (and d!2201064 c!1312228) b!7046836))

(assert (= (and d!2201064 (not c!1312228)) b!7046837))

(assert (= (and b!7046837 c!1312227) b!7046838))

(assert (= (and b!7046837 (not c!1312227)) b!7046835))

(assert (= (or b!7046836 b!7046838) bm!640258))

(declare-fun m!7761004 () Bool)

(assert (=> b!7046834 m!7761004))

(declare-fun m!7761006 () Bool)

(assert (=> bm!640258 m!7761006))

(declare-fun m!7761008 () Bool)

(assert (=> b!7046836 m!7761008))

(assert (=> b!7046574 d!2201064))

(declare-fun d!2201066 () Bool)

(declare-fun dynLambda!27512 (Int Context!13010) (InoxSet Context!13010))

(assert (=> d!2201066 (= (flatMap!2456 lt!2527224 lambda!417924) (dynLambda!27512 lambda!417924 lt!2527230))))

(declare-fun lt!2527322 () Unit!161704)

(declare-fun choose!53574 ((InoxSet Context!13010) Context!13010 Int) Unit!161704)

(assert (=> d!2201066 (= lt!2527322 (choose!53574 lt!2527224 lt!2527230 lambda!417924))))

(assert (=> d!2201066 (= lt!2527224 (store ((as const (Array Context!13010 Bool)) false) lt!2527230 true))))

(assert (=> d!2201066 (= (lemmaFlatMapOnSingletonSet!1970 lt!2527224 lt!2527230 lambda!417924) lt!2527322)))

(declare-fun b_lambda!267795 () Bool)

(assert (=> (not b_lambda!267795) (not d!2201066)))

(declare-fun bs!1875012 () Bool)

(assert (= bs!1875012 d!2201066))

(assert (=> bs!1875012 m!7760592))

(declare-fun m!7761010 () Bool)

(assert (=> bs!1875012 m!7761010))

(declare-fun m!7761012 () Bool)

(assert (=> bs!1875012 m!7761012))

(assert (=> bs!1875012 m!7760566))

(assert (=> b!7046574 d!2201066))

(declare-fun d!2201068 () Bool)

(declare-fun choose!53575 ((InoxSet Context!13010) Int) (InoxSet Context!13010))

(assert (=> d!2201068 (= (flatMap!2456 lt!2527224 lambda!417924) (choose!53575 lt!2527224 lambda!417924))))

(declare-fun bs!1875013 () Bool)

(assert (= bs!1875013 d!2201068))

(declare-fun m!7761014 () Bool)

(assert (=> bs!1875013 m!7761014))

(assert (=> b!7046574 d!2201068))

(assert (=> b!7046574 d!2200992))

(declare-fun bs!1875014 () Bool)

(declare-fun d!2201070 () Bool)

(assert (= bs!1875014 (and d!2201070 b!7046574)))

(declare-fun lambda!417967 () Int)

(assert (=> bs!1875014 (= lambda!417967 lambda!417924)))

(assert (=> d!2201070 true))

(assert (=> d!2201070 (= (derivationStepZipper!2965 lt!2527224 (h!74380 s!7408)) (flatMap!2456 lt!2527224 lambda!417967))))

(declare-fun bs!1875015 () Bool)

(assert (= bs!1875015 d!2201070))

(declare-fun m!7761016 () Bool)

(assert (=> bs!1875015 m!7761016))

(assert (=> b!7046574 d!2201070))

(declare-fun bs!1875016 () Bool)

(declare-fun d!2201072 () Bool)

(assert (= bs!1875016 (and d!2201072 b!7046563)))

(declare-fun lambda!417968 () Int)

(assert (=> bs!1875016 (= lambda!417968 lambda!417923)))

(declare-fun bs!1875017 () Bool)

(assert (= bs!1875017 (and d!2201072 d!2201032)))

(assert (=> bs!1875017 (= lambda!417968 lambda!417955)))

(declare-fun bs!1875018 () Bool)

(assert (= bs!1875018 (and d!2201072 d!2201062)))

(assert (=> bs!1875018 (= lambda!417968 lambda!417964)))

(assert (=> d!2201072 (= (inv!86631 setElem!49472) (forall!16441 (exprs!7005 setElem!49472) lambda!417968))))

(declare-fun bs!1875019 () Bool)

(assert (= bs!1875019 d!2201072))

(declare-fun m!7761018 () Bool)

(assert (=> bs!1875019 m!7761018))

(assert (=> setNonEmpty!49472 d!2201072))

(declare-fun d!2201074 () Bool)

(declare-fun c!1312231 () Bool)

(assert (=> d!2201074 (= c!1312231 (isEmpty!39649 (t!381833 s!7408)))))

(declare-fun e!4236320 () Bool)

(assert (=> d!2201074 (= (matchZipper!3049 lt!2527221 (t!381833 s!7408)) e!4236320)))

(declare-fun b!7046841 () Bool)

(assert (=> b!7046841 (= e!4236320 (nullableZipper!2611 lt!2527221))))

(declare-fun b!7046842 () Bool)

(assert (=> b!7046842 (= e!4236320 (matchZipper!3049 (derivationStepZipper!2965 lt!2527221 (head!14308 (t!381833 s!7408))) (tail!13631 (t!381833 s!7408))))))

(assert (= (and d!2201074 c!1312231) b!7046841))

(assert (= (and d!2201074 (not c!1312231)) b!7046842))

(declare-fun m!7761020 () Bool)

(assert (=> d!2201074 m!7761020))

(declare-fun m!7761022 () Bool)

(assert (=> b!7046841 m!7761022))

(declare-fun m!7761024 () Bool)

(assert (=> b!7046842 m!7761024))

(assert (=> b!7046842 m!7761024))

(declare-fun m!7761026 () Bool)

(assert (=> b!7046842 m!7761026))

(declare-fun m!7761028 () Bool)

(assert (=> b!7046842 m!7761028))

(assert (=> b!7046842 m!7761026))

(assert (=> b!7046842 m!7761028))

(declare-fun m!7761030 () Bool)

(assert (=> b!7046842 m!7761030))

(assert (=> b!7046570 d!2201074))

(declare-fun b!7046843 () Bool)

(declare-fun e!4236322 () (InoxSet Context!13010))

(assert (=> b!7046843 (= e!4236322 (store ((as const (Array Context!13010 Bool)) false) (Context!13011 (++!15588 lt!2527225 (exprs!7005 ct2!306))) true))))

(declare-fun b!7046844 () Bool)

(declare-fun c!1312234 () Bool)

(assert (=> b!7046844 (= c!1312234 ((_ is Star!17509) (h!74379 (exprs!7005 lt!2527232))))))

(declare-fun e!4236321 () (InoxSet Context!13010))

(declare-fun e!4236325 () (InoxSet Context!13010))

(assert (=> b!7046844 (= e!4236321 e!4236325)))

(declare-fun b!7046845 () Bool)

(declare-fun c!1312233 () Bool)

(declare-fun e!4236324 () Bool)

(assert (=> b!7046845 (= c!1312233 e!4236324)))

(declare-fun res!2876784 () Bool)

(assert (=> b!7046845 (=> (not res!2876784) (not e!4236324))))

(assert (=> b!7046845 (= res!2876784 ((_ is Concat!26354) (h!74379 (exprs!7005 lt!2527232))))))

(declare-fun e!4236326 () (InoxSet Context!13010))

(declare-fun e!4236323 () (InoxSet Context!13010))

(assert (=> b!7046845 (= e!4236326 e!4236323)))

(declare-fun c!1312232 () Bool)

(declare-fun bm!640259 () Bool)

(declare-fun call!640268 () List!68055)

(declare-fun call!640267 () (InoxSet Context!13010))

(assert (=> bm!640259 (= call!640267 (derivationStepZipperDown!2173 (ite c!1312232 (regTwo!35531 (h!74379 (exprs!7005 lt!2527232))) (regOne!35530 (h!74379 (exprs!7005 lt!2527232)))) (ite c!1312232 (Context!13011 (++!15588 lt!2527225 (exprs!7005 ct2!306))) (Context!13011 call!640268)) (h!74380 s!7408)))))

(declare-fun bm!640260 () Bool)

(declare-fun call!640265 () (InoxSet Context!13010))

(declare-fun call!640266 () (InoxSet Context!13010))

(assert (=> bm!640260 (= call!640265 call!640266)))

(declare-fun b!7046846 () Bool)

(declare-fun call!640264 () (InoxSet Context!13010))

(assert (=> b!7046846 (= e!4236321 call!640264)))

(declare-fun bm!640261 () Bool)

(declare-fun c!1312235 () Bool)

(assert (=> bm!640261 (= call!640268 ($colon$colon!2604 (exprs!7005 (Context!13011 (++!15588 lt!2527225 (exprs!7005 ct2!306)))) (ite (or c!1312233 c!1312235) (regTwo!35530 (h!74379 (exprs!7005 lt!2527232))) (h!74379 (exprs!7005 lt!2527232)))))))

(declare-fun call!640269 () List!68055)

(declare-fun bm!640262 () Bool)

(assert (=> bm!640262 (= call!640266 (derivationStepZipperDown!2173 (ite c!1312232 (regOne!35531 (h!74379 (exprs!7005 lt!2527232))) (ite c!1312233 (regTwo!35530 (h!74379 (exprs!7005 lt!2527232))) (ite c!1312235 (regOne!35530 (h!74379 (exprs!7005 lt!2527232))) (reg!17838 (h!74379 (exprs!7005 lt!2527232)))))) (ite (or c!1312232 c!1312233) (Context!13011 (++!15588 lt!2527225 (exprs!7005 ct2!306))) (Context!13011 call!640269)) (h!74380 s!7408)))))

(declare-fun b!7046847 () Bool)

(assert (=> b!7046847 (= e!4236323 e!4236321)))

(assert (=> b!7046847 (= c!1312235 ((_ is Concat!26354) (h!74379 (exprs!7005 lt!2527232))))))

(declare-fun b!7046849 () Bool)

(assert (=> b!7046849 (= e!4236323 ((_ map or) call!640267 call!640265))))

(declare-fun b!7046850 () Bool)

(assert (=> b!7046850 (= e!4236322 e!4236326)))

(assert (=> b!7046850 (= c!1312232 ((_ is Union!17509) (h!74379 (exprs!7005 lt!2527232))))))

(declare-fun b!7046851 () Bool)

(assert (=> b!7046851 (= e!4236324 (nullable!7220 (regOne!35530 (h!74379 (exprs!7005 lt!2527232)))))))

(declare-fun b!7046852 () Bool)

(assert (=> b!7046852 (= e!4236326 ((_ map or) call!640266 call!640267))))

(declare-fun bm!640263 () Bool)

(assert (=> bm!640263 (= call!640264 call!640265)))

(declare-fun d!2201076 () Bool)

(declare-fun c!1312236 () Bool)

(assert (=> d!2201076 (= c!1312236 (and ((_ is ElementMatch!17509) (h!74379 (exprs!7005 lt!2527232))) (= (c!1312139 (h!74379 (exprs!7005 lt!2527232))) (h!74380 s!7408))))))

(assert (=> d!2201076 (= (derivationStepZipperDown!2173 (h!74379 (exprs!7005 lt!2527232)) (Context!13011 (++!15588 lt!2527225 (exprs!7005 ct2!306))) (h!74380 s!7408)) e!4236322)))

(declare-fun b!7046848 () Bool)

(assert (=> b!7046848 (= e!4236325 ((as const (Array Context!13010 Bool)) false))))

(declare-fun b!7046853 () Bool)

(assert (=> b!7046853 (= e!4236325 call!640264)))

(declare-fun bm!640264 () Bool)

(assert (=> bm!640264 (= call!640269 call!640268)))

(assert (= (and d!2201076 c!1312236) b!7046843))

(assert (= (and d!2201076 (not c!1312236)) b!7046850))

(assert (= (and b!7046850 c!1312232) b!7046852))

(assert (= (and b!7046850 (not c!1312232)) b!7046845))

(assert (= (and b!7046845 res!2876784) b!7046851))

(assert (= (and b!7046845 c!1312233) b!7046849))

(assert (= (and b!7046845 (not c!1312233)) b!7046847))

(assert (= (and b!7046847 c!1312235) b!7046846))

(assert (= (and b!7046847 (not c!1312235)) b!7046844))

(assert (= (and b!7046844 c!1312234) b!7046853))

(assert (= (and b!7046844 (not c!1312234)) b!7046848))

(assert (= (or b!7046846 b!7046853) bm!640264))

(assert (= (or b!7046846 b!7046853) bm!640263))

(assert (= (or b!7046849 bm!640263) bm!640260))

(assert (= (or b!7046849 bm!640264) bm!640261))

(assert (= (or b!7046852 bm!640260) bm!640262))

(assert (= (or b!7046852 b!7046849) bm!640259))

(declare-fun m!7761032 () Bool)

(assert (=> b!7046843 m!7761032))

(declare-fun m!7761034 () Bool)

(assert (=> bm!640262 m!7761034))

(assert (=> b!7046851 m!7760874))

(declare-fun m!7761036 () Bool)

(assert (=> bm!640259 m!7761036))

(declare-fun m!7761038 () Bool)

(assert (=> bm!640261 m!7761038))

(assert (=> b!7046570 d!2201076))

(declare-fun b!7046857 () Bool)

(declare-fun e!4236328 () Bool)

(declare-fun lt!2527323 () List!68055)

(assert (=> b!7046857 (= e!4236328 (or (not (= (exprs!7005 ct2!306) Nil!67931)) (= lt!2527323 lt!2527225)))))

(declare-fun d!2201078 () Bool)

(assert (=> d!2201078 e!4236328))

(declare-fun res!2876785 () Bool)

(assert (=> d!2201078 (=> (not res!2876785) (not e!4236328))))

(assert (=> d!2201078 (= res!2876785 (= (content!13614 lt!2527323) ((_ map or) (content!13614 lt!2527225) (content!13614 (exprs!7005 ct2!306)))))))

(declare-fun e!4236327 () List!68055)

(assert (=> d!2201078 (= lt!2527323 e!4236327)))

(declare-fun c!1312237 () Bool)

(assert (=> d!2201078 (= c!1312237 ((_ is Nil!67931) lt!2527225))))

(assert (=> d!2201078 (= (++!15588 lt!2527225 (exprs!7005 ct2!306)) lt!2527323)))

(declare-fun b!7046856 () Bool)

(declare-fun res!2876786 () Bool)

(assert (=> b!7046856 (=> (not res!2876786) (not e!4236328))))

(assert (=> b!7046856 (= res!2876786 (= (size!41113 lt!2527323) (+ (size!41113 lt!2527225) (size!41113 (exprs!7005 ct2!306)))))))

(declare-fun b!7046854 () Bool)

(assert (=> b!7046854 (= e!4236327 (exprs!7005 ct2!306))))

(declare-fun b!7046855 () Bool)

(assert (=> b!7046855 (= e!4236327 (Cons!67931 (h!74379 lt!2527225) (++!15588 (t!381832 lt!2527225) (exprs!7005 ct2!306))))))

(assert (= (and d!2201078 c!1312237) b!7046854))

(assert (= (and d!2201078 (not c!1312237)) b!7046855))

(assert (= (and d!2201078 res!2876785) b!7046856))

(assert (= (and b!7046856 res!2876786) b!7046857))

(declare-fun m!7761040 () Bool)

(assert (=> d!2201078 m!7761040))

(declare-fun m!7761042 () Bool)

(assert (=> d!2201078 m!7761042))

(assert (=> d!2201078 m!7760790))

(declare-fun m!7761044 () Bool)

(assert (=> b!7046856 m!7761044))

(declare-fun m!7761046 () Bool)

(assert (=> b!7046856 m!7761046))

(assert (=> b!7046856 m!7760796))

(declare-fun m!7761048 () Bool)

(assert (=> b!7046855 m!7761048))

(assert (=> b!7046570 d!2201078))

(assert (=> b!7046570 d!2201054))

(declare-fun d!2201080 () Bool)

(declare-fun nullableFct!2756 (Regex!17509) Bool)

(assert (=> d!2201080 (= (nullable!7220 (h!74379 (exprs!7005 lt!2527232))) (nullableFct!2756 (h!74379 (exprs!7005 lt!2527232))))))

(declare-fun bs!1875020 () Bool)

(assert (= bs!1875020 d!2201080))

(declare-fun m!7761050 () Bool)

(assert (=> bs!1875020 m!7761050))

(assert (=> b!7046565 d!2201080))

(declare-fun d!2201082 () Bool)

(assert (=> d!2201082 (= (tail!13629 (exprs!7005 lt!2527232)) (t!381832 (exprs!7005 lt!2527232)))))

(assert (=> b!7046565 d!2201082))

(declare-fun b!7046862 () Bool)

(declare-fun e!4236331 () Bool)

(declare-fun tp!1938149 () Bool)

(declare-fun tp!1938150 () Bool)

(assert (=> b!7046862 (= e!4236331 (and tp!1938149 tp!1938150))))

(assert (=> b!7046566 (= tp!1938127 e!4236331)))

(assert (= (and b!7046566 ((_ is Cons!67931) (exprs!7005 setElem!49472))) b!7046862))

(declare-fun b!7046863 () Bool)

(declare-fun e!4236332 () Bool)

(declare-fun tp!1938151 () Bool)

(declare-fun tp!1938152 () Bool)

(assert (=> b!7046863 (= e!4236332 (and tp!1938151 tp!1938152))))

(assert (=> b!7046568 (= tp!1938126 e!4236332)))

(assert (= (and b!7046568 ((_ is Cons!67931) (exprs!7005 ct2!306))) b!7046863))

(declare-fun b!7046868 () Bool)

(declare-fun e!4236335 () Bool)

(declare-fun tp!1938155 () Bool)

(assert (=> b!7046868 (= e!4236335 (and tp_is_empty!44243 tp!1938155))))

(assert (=> b!7046573 (= tp!1938124 e!4236335)))

(assert (= (and b!7046573 ((_ is Cons!67932) (t!381833 s!7408))) b!7046868))

(declare-fun condSetEmpty!49478 () Bool)

(assert (=> setNonEmpty!49472 (= condSetEmpty!49478 (= setRest!49472 ((as const (Array Context!13010 Bool)) false)))))

(declare-fun setRes!49478 () Bool)

(assert (=> setNonEmpty!49472 (= tp!1938125 setRes!49478)))

(declare-fun setIsEmpty!49478 () Bool)

(assert (=> setIsEmpty!49478 setRes!49478))

(declare-fun tp!1938160 () Bool)

(declare-fun setNonEmpty!49478 () Bool)

(declare-fun setElem!49478 () Context!13010)

(declare-fun e!4236338 () Bool)

(assert (=> setNonEmpty!49478 (= setRes!49478 (and tp!1938160 (inv!86631 setElem!49478) e!4236338))))

(declare-fun setRest!49478 () (InoxSet Context!13010))

(assert (=> setNonEmpty!49478 (= setRest!49472 ((_ map or) (store ((as const (Array Context!13010 Bool)) false) setElem!49478 true) setRest!49478))))

(declare-fun b!7046873 () Bool)

(declare-fun tp!1938161 () Bool)

(assert (=> b!7046873 (= e!4236338 tp!1938161)))

(assert (= (and setNonEmpty!49472 condSetEmpty!49478) setIsEmpty!49478))

(assert (= (and setNonEmpty!49472 (not condSetEmpty!49478)) setNonEmpty!49478))

(assert (= setNonEmpty!49478 b!7046873))

(declare-fun m!7761052 () Bool)

(assert (=> setNonEmpty!49478 m!7761052))

(declare-fun b_lambda!267797 () Bool)

(assert (= b_lambda!267787 (or b!7046563 b_lambda!267797)))

(declare-fun bs!1875021 () Bool)

(declare-fun d!2201084 () Bool)

(assert (= bs!1875021 (and d!2201084 b!7046563)))

(declare-fun lt!2527324 () Unit!161704)

(assert (=> bs!1875021 (= lt!2527324 (lemmaConcatPreservesForall!830 (exprs!7005 lt!2527277) (exprs!7005 ct2!306) lambda!417923))))

(assert (=> bs!1875021 (= (dynLambda!27511 lambda!417922 lt!2527277) (Context!13011 (++!15588 (exprs!7005 lt!2527277) (exprs!7005 ct2!306))))))

(declare-fun m!7761054 () Bool)

(assert (=> bs!1875021 m!7761054))

(declare-fun m!7761056 () Bool)

(assert (=> bs!1875021 m!7761056))

(assert (=> d!2201006 d!2201084))

(declare-fun b_lambda!267799 () Bool)

(assert (= b_lambda!267795 (or b!7046574 b_lambda!267799)))

(declare-fun bs!1875022 () Bool)

(declare-fun d!2201086 () Bool)

(assert (= bs!1875022 (and d!2201086 b!7046574)))

(assert (=> bs!1875022 (= (dynLambda!27512 lambda!417924 lt!2527230) (derivationStepZipperUp!2119 lt!2527230 (h!74380 s!7408)))))

(assert (=> bs!1875022 m!7760594))

(assert (=> d!2201066 d!2201086))

(declare-fun b_lambda!267801 () Bool)

(assert (= b_lambda!267781 (or b!7046567 b_lambda!267801)))

(declare-fun bs!1875023 () Bool)

(declare-fun d!2201088 () Bool)

(assert (= bs!1875023 (and d!2201088 b!7046567)))

(assert (=> bs!1875023 (= (dynLambda!27510 lambda!417921 lt!2527255) (matchZipper!3049 (store ((as const (Array Context!13010 Bool)) false) lt!2527255 true) s!7408))))

(declare-fun m!7761058 () Bool)

(assert (=> bs!1875023 m!7761058))

(assert (=> bs!1875023 m!7761058))

(declare-fun m!7761060 () Bool)

(assert (=> bs!1875023 m!7761060))

(assert (=> d!2200974 d!2201088))

(check-sat tp_is_empty!44243 (not d!2201058) (not b!7046691) (not b!7046868) (not b!7046822) (not b!7046820) (not b!7046823) (not b!7046834) (not bm!640250) (not d!2201062) (not d!2201078) (not bm!640252) (not b_lambda!267801) (not d!2200982) (not b!7046841) (not b!7046778) (not b!7046863) (not setNonEmpty!49478) (not d!2200972) (not bs!1875022) (not bs!1875023) (not bs!1875021) (not d!2201042) (not b!7046862) (not bm!640253) (not d!2201032) (not d!2201072) (not b!7046589) (not b!7046817) (not d!2201040) (not b!7046637) (not b!7046856) (not d!2201054) (not b!7046836) (not b!7046873) (not d!2201050) (not d!2200964) (not bm!640259) (not bm!640261) (not b_lambda!267797) (not d!2201074) (not b!7046588) (not b!7046821) (not b!7046816) (not bm!640262) (not b!7046690) (not d!2201066) (not d!2200992) (not d!2201060) (not d!2201070) (not d!2201006) (not d!2200974) (not d!2201056) (not b!7046851) (not b!7046815) (not d!2201068) (not d!2200996) (not b!7046665) (not bm!640258) (not b!7046855) (not d!2201080) (not b!7046842) (not d!2200956) (not b!7046777) (not b_lambda!267799) (not b!7046765) (not b!7046664) (not b!7046819) (not d!2201052) (not d!2200968))
(check-sat)
