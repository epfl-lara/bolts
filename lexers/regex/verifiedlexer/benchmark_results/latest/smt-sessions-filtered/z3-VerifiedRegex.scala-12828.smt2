; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!708538 () Bool)

(assert start!708538)

(declare-fun b!7265561 () Bool)

(assert (=> b!7265561 true))

(declare-fun b!7265557 () Bool)

(declare-fun e!4356998 () Bool)

(declare-fun tp!2040390 () Bool)

(assert (=> b!7265557 (= e!4356998 tp!2040390)))

(declare-fun b!7265558 () Bool)

(declare-fun res!2945637 () Bool)

(declare-fun e!4356997 () Bool)

(assert (=> b!7265558 (=> res!2945637 e!4356997)))

(declare-datatypes ((C!37804 0))(
  ( (C!37805 (val!28850 Int)) )
))
(declare-datatypes ((Regex!18765 0))(
  ( (ElementMatch!18765 (c!1351865 C!37804)) (Concat!27610 (regOne!38042 Regex!18765) (regTwo!38042 Regex!18765)) (EmptyExpr!18765) (Star!18765 (reg!19094 Regex!18765)) (EmptyLang!18765) (Union!18765 (regOne!38043 Regex!18765) (regTwo!38043 Regex!18765)) )
))
(declare-datatypes ((List!70845 0))(
  ( (Nil!70721) (Cons!70721 (h!77169 Regex!18765) (t!384913 List!70845)) )
))
(declare-datatypes ((Context!15410 0))(
  ( (Context!15411 (exprs!8205 List!70845)) )
))
(declare-fun ct1!250 () Context!15410)

(declare-datatypes ((List!70846 0))(
  ( (Nil!70722) (Cons!70722 (h!77170 C!37804) (t!384914 List!70846)) )
))
(declare-fun s!7854 () List!70846)

(declare-fun lt!2592244 () Context!15410)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2592241 () (InoxSet Context!15410))

(declare-fun derivationStepZipperDown!2699 (Regex!18765 Context!15410 C!37804) (InoxSet Context!15410))

(declare-fun derivationStepZipperUp!2535 (Context!15410 C!37804) (InoxSet Context!15410))

(assert (=> b!7265558 (= res!2945637 (not (= lt!2592241 ((_ map or) (derivationStepZipperDown!2699 (h!77169 (exprs!8205 ct1!250)) lt!2592244 (h!77170 s!7854)) (derivationStepZipperUp!2535 lt!2592244 (h!77170 s!7854))))))))

(declare-fun b!7265559 () Bool)

(declare-fun lt!2592242 () List!70845)

(declare-fun lambda!447376 () Int)

(declare-fun forall!17598 (List!70845 Int) Bool)

(assert (=> b!7265559 (= e!4356997 (forall!17598 lt!2592242 lambda!447376))))

(declare-datatypes ((Unit!164148 0))(
  ( (Unit!164149) )
))
(declare-fun lt!2592234 () Unit!164148)

(declare-fun ct2!346 () Context!15410)

(declare-fun lemmaConcatPreservesForall!1522 (List!70845 List!70845 Int) Unit!164148)

(assert (=> b!7265559 (= lt!2592234 (lemmaConcatPreservesForall!1522 lt!2592242 (exprs!8205 ct2!346) lambda!447376))))

(declare-fun res!2945638 () Bool)

(declare-fun e!4356999 () Bool)

(assert (=> start!708538 (=> (not res!2945638) (not e!4356999))))

(declare-fun matchZipper!3669 ((InoxSet Context!15410) List!70846) Bool)

(assert (=> start!708538 (= res!2945638 (matchZipper!3669 (store ((as const (Array Context!15410 Bool)) false) ct2!346 true) s!7854))))

(assert (=> start!708538 e!4356999))

(declare-fun inv!89922 (Context!15410) Bool)

(assert (=> start!708538 (and (inv!89922 ct2!346) e!4356998)))

(declare-fun e!4356996 () Bool)

(assert (=> start!708538 e!4356996))

(declare-fun e!4356994 () Bool)

(assert (=> start!708538 (and (inv!89922 ct1!250) e!4356994)))

(declare-fun b!7265560 () Bool)

(declare-fun res!2945640 () Bool)

(declare-fun e!4356995 () Bool)

(assert (=> b!7265560 (=> res!2945640 e!4356995)))

(declare-fun isEmpty!40651 (List!70845) Bool)

(assert (=> b!7265560 (= res!2945640 (isEmpty!40651 (exprs!8205 ct1!250)))))

(assert (=> b!7265561 (= e!4356999 (not e!4356995))))

(declare-fun res!2945642 () Bool)

(assert (=> b!7265561 (=> res!2945642 e!4356995)))

(declare-fun lt!2592238 () (InoxSet Context!15410))

(declare-fun lt!2592235 () (InoxSet Context!15410))

(declare-fun derivationStepZipper!3505 ((InoxSet Context!15410) C!37804) (InoxSet Context!15410))

(assert (=> b!7265561 (= res!2945642 (not (= lt!2592238 (derivationStepZipper!3505 lt!2592235 (h!77170 s!7854)))))))

(declare-fun lt!2592237 () Unit!164148)

(assert (=> b!7265561 (= lt!2592237 (lemmaConcatPreservesForall!1522 (exprs!8205 ct1!250) (exprs!8205 ct2!346) lambda!447376))))

(declare-fun lt!2592247 () Context!15410)

(declare-fun lambda!447377 () Int)

(declare-fun flatMap!2878 ((InoxSet Context!15410) Int) (InoxSet Context!15410))

(assert (=> b!7265561 (= (flatMap!2878 lt!2592235 lambda!447377) (derivationStepZipperUp!2535 lt!2592247 (h!77170 s!7854)))))

(declare-fun lt!2592236 () Unit!164148)

(declare-fun lemmaFlatMapOnSingletonSet!2278 ((InoxSet Context!15410) Context!15410 Int) Unit!164148)

(assert (=> b!7265561 (= lt!2592236 (lemmaFlatMapOnSingletonSet!2278 lt!2592235 lt!2592247 lambda!447377))))

(assert (=> b!7265561 (= lt!2592235 (store ((as const (Array Context!15410 Bool)) false) lt!2592247 true))))

(declare-fun lt!2592246 () Unit!164148)

(assert (=> b!7265561 (= lt!2592246 (lemmaConcatPreservesForall!1522 (exprs!8205 ct1!250) (exprs!8205 ct2!346) lambda!447376))))

(declare-fun lt!2592239 () Unit!164148)

(assert (=> b!7265561 (= lt!2592239 (lemmaConcatPreservesForall!1522 (exprs!8205 ct1!250) (exprs!8205 ct2!346) lambda!447376))))

(declare-fun lt!2592240 () (InoxSet Context!15410))

(assert (=> b!7265561 (= (flatMap!2878 lt!2592240 lambda!447377) (derivationStepZipperUp!2535 ct1!250 (h!77170 s!7854)))))

(declare-fun lt!2592245 () Unit!164148)

(assert (=> b!7265561 (= lt!2592245 (lemmaFlatMapOnSingletonSet!2278 lt!2592240 ct1!250 lambda!447377))))

(assert (=> b!7265561 (= lt!2592240 (store ((as const (Array Context!15410 Bool)) false) ct1!250 true))))

(assert (=> b!7265561 (= lt!2592238 (derivationStepZipperUp!2535 lt!2592247 (h!77170 s!7854)))))

(declare-fun ++!16665 (List!70845 List!70845) List!70845)

(assert (=> b!7265561 (= lt!2592247 (Context!15411 (++!16665 (exprs!8205 ct1!250) (exprs!8205 ct2!346))))))

(declare-fun lt!2592243 () Unit!164148)

(assert (=> b!7265561 (= lt!2592243 (lemmaConcatPreservesForall!1522 (exprs!8205 ct1!250) (exprs!8205 ct2!346) lambda!447376))))

(declare-fun b!7265562 () Bool)

(declare-fun res!2945636 () Bool)

(assert (=> b!7265562 (=> (not res!2945636) (not e!4356999))))

(declare-fun nullableContext!255 (Context!15410) Bool)

(assert (=> b!7265562 (= res!2945636 (nullableContext!255 ct1!250))))

(declare-fun b!7265563 () Bool)

(declare-fun tp!2040392 () Bool)

(assert (=> b!7265563 (= e!4356994 tp!2040392)))

(declare-fun b!7265564 () Bool)

(declare-fun res!2945639 () Bool)

(assert (=> b!7265564 (=> (not res!2945639) (not e!4356999))))

(get-info :version)

(assert (=> b!7265564 (= res!2945639 ((_ is Cons!70722) s!7854))))

(declare-fun b!7265565 () Bool)

(assert (=> b!7265565 (= e!4356995 e!4356997)))

(declare-fun res!2945641 () Bool)

(assert (=> b!7265565 (=> res!2945641 e!4356997)))

(declare-fun nullable!7965 (Regex!18765) Bool)

(assert (=> b!7265565 (= res!2945641 (not (nullable!7965 (h!77169 (exprs!8205 ct1!250)))))))

(assert (=> b!7265565 (= lt!2592241 (derivationStepZipperUp!2535 ct1!250 (h!77170 s!7854)))))

(assert (=> b!7265565 (= lt!2592244 (Context!15411 lt!2592242))))

(declare-fun tail!14439 (List!70845) List!70845)

(assert (=> b!7265565 (= lt!2592242 (tail!14439 (exprs!8205 ct1!250)))))

(declare-fun b!7265566 () Bool)

(declare-fun res!2945643 () Bool)

(assert (=> b!7265566 (=> res!2945643 e!4356995)))

(assert (=> b!7265566 (= res!2945643 (not ((_ is Cons!70721) (exprs!8205 ct1!250))))))

(declare-fun b!7265567 () Bool)

(declare-fun tp_is_empty!46995 () Bool)

(declare-fun tp!2040391 () Bool)

(assert (=> b!7265567 (= e!4356996 (and tp_is_empty!46995 tp!2040391))))

(assert (= (and start!708538 res!2945638) b!7265562))

(assert (= (and b!7265562 res!2945636) b!7265564))

(assert (= (and b!7265564 res!2945639) b!7265561))

(assert (= (and b!7265561 (not res!2945642)) b!7265566))

(assert (= (and b!7265566 (not res!2945643)) b!7265560))

(assert (= (and b!7265560 (not res!2945640)) b!7265565))

(assert (= (and b!7265565 (not res!2945641)) b!7265558))

(assert (= (and b!7265558 (not res!2945637)) b!7265559))

(assert (= start!708538 b!7265557))

(assert (= (and start!708538 ((_ is Cons!70722) s!7854)) b!7265567))

(assert (= start!708538 b!7265563))

(declare-fun m!7950208 () Bool)

(assert (=> b!7265565 m!7950208))

(declare-fun m!7950210 () Bool)

(assert (=> b!7265565 m!7950210))

(declare-fun m!7950212 () Bool)

(assert (=> b!7265565 m!7950212))

(declare-fun m!7950214 () Bool)

(assert (=> b!7265561 m!7950214))

(declare-fun m!7950216 () Bool)

(assert (=> b!7265561 m!7950216))

(assert (=> b!7265561 m!7950210))

(assert (=> b!7265561 m!7950214))

(declare-fun m!7950218 () Bool)

(assert (=> b!7265561 m!7950218))

(declare-fun m!7950220 () Bool)

(assert (=> b!7265561 m!7950220))

(declare-fun m!7950222 () Bool)

(assert (=> b!7265561 m!7950222))

(assert (=> b!7265561 m!7950214))

(assert (=> b!7265561 m!7950214))

(declare-fun m!7950224 () Bool)

(assert (=> b!7265561 m!7950224))

(declare-fun m!7950226 () Bool)

(assert (=> b!7265561 m!7950226))

(declare-fun m!7950228 () Bool)

(assert (=> b!7265561 m!7950228))

(declare-fun m!7950230 () Bool)

(assert (=> b!7265561 m!7950230))

(declare-fun m!7950232 () Bool)

(assert (=> b!7265561 m!7950232))

(declare-fun m!7950234 () Bool)

(assert (=> b!7265560 m!7950234))

(declare-fun m!7950236 () Bool)

(assert (=> start!708538 m!7950236))

(assert (=> start!708538 m!7950236))

(declare-fun m!7950238 () Bool)

(assert (=> start!708538 m!7950238))

(declare-fun m!7950240 () Bool)

(assert (=> start!708538 m!7950240))

(declare-fun m!7950242 () Bool)

(assert (=> start!708538 m!7950242))

(declare-fun m!7950244 () Bool)

(assert (=> b!7265559 m!7950244))

(declare-fun m!7950246 () Bool)

(assert (=> b!7265559 m!7950246))

(declare-fun m!7950248 () Bool)

(assert (=> b!7265562 m!7950248))

(declare-fun m!7950250 () Bool)

(assert (=> b!7265558 m!7950250))

(declare-fun m!7950252 () Bool)

(assert (=> b!7265558 m!7950252))

(check-sat (not b!7265557) (not b!7265562) (not b!7265567) (not b!7265561) (not b!7265560) (not b!7265559) (not b!7265565) (not start!708538) tp_is_empty!46995 (not b!7265563) (not b!7265558))
(check-sat)
(get-model)

(declare-fun d!2260545 () Bool)

(declare-fun c!1351868 () Bool)

(declare-fun isEmpty!40652 (List!70846) Bool)

(assert (=> d!2260545 (= c!1351868 (isEmpty!40652 s!7854))))

(declare-fun e!4357002 () Bool)

(assert (=> d!2260545 (= (matchZipper!3669 (store ((as const (Array Context!15410 Bool)) false) ct2!346 true) s!7854) e!4357002)))

(declare-fun b!7265574 () Bool)

(declare-fun nullableZipper!2976 ((InoxSet Context!15410)) Bool)

(assert (=> b!7265574 (= e!4357002 (nullableZipper!2976 (store ((as const (Array Context!15410 Bool)) false) ct2!346 true)))))

(declare-fun b!7265575 () Bool)

(declare-fun head!14975 (List!70846) C!37804)

(declare-fun tail!14440 (List!70846) List!70846)

(assert (=> b!7265575 (= e!4357002 (matchZipper!3669 (derivationStepZipper!3505 (store ((as const (Array Context!15410 Bool)) false) ct2!346 true) (head!14975 s!7854)) (tail!14440 s!7854)))))

(assert (= (and d!2260545 c!1351868) b!7265574))

(assert (= (and d!2260545 (not c!1351868)) b!7265575))

(declare-fun m!7950254 () Bool)

(assert (=> d!2260545 m!7950254))

(assert (=> b!7265574 m!7950236))

(declare-fun m!7950256 () Bool)

(assert (=> b!7265574 m!7950256))

(declare-fun m!7950258 () Bool)

(assert (=> b!7265575 m!7950258))

(assert (=> b!7265575 m!7950236))

(assert (=> b!7265575 m!7950258))

(declare-fun m!7950260 () Bool)

(assert (=> b!7265575 m!7950260))

(declare-fun m!7950262 () Bool)

(assert (=> b!7265575 m!7950262))

(assert (=> b!7265575 m!7950260))

(assert (=> b!7265575 m!7950262))

(declare-fun m!7950264 () Bool)

(assert (=> b!7265575 m!7950264))

(assert (=> start!708538 d!2260545))

(declare-fun bs!1910185 () Bool)

(declare-fun d!2260547 () Bool)

(assert (= bs!1910185 (and d!2260547 b!7265561)))

(declare-fun lambda!447380 () Int)

(assert (=> bs!1910185 (= lambda!447380 lambda!447376)))

(assert (=> d!2260547 (= (inv!89922 ct2!346) (forall!17598 (exprs!8205 ct2!346) lambda!447380))))

(declare-fun bs!1910186 () Bool)

(assert (= bs!1910186 d!2260547))

(declare-fun m!7950266 () Bool)

(assert (=> bs!1910186 m!7950266))

(assert (=> start!708538 d!2260547))

(declare-fun bs!1910187 () Bool)

(declare-fun d!2260549 () Bool)

(assert (= bs!1910187 (and d!2260549 b!7265561)))

(declare-fun lambda!447381 () Int)

(assert (=> bs!1910187 (= lambda!447381 lambda!447376)))

(declare-fun bs!1910188 () Bool)

(assert (= bs!1910188 (and d!2260549 d!2260547)))

(assert (=> bs!1910188 (= lambda!447381 lambda!447380)))

(assert (=> d!2260549 (= (inv!89922 ct1!250) (forall!17598 (exprs!8205 ct1!250) lambda!447381))))

(declare-fun bs!1910189 () Bool)

(assert (= bs!1910189 d!2260549))

(declare-fun m!7950268 () Bool)

(assert (=> bs!1910189 m!7950268))

(assert (=> start!708538 d!2260549))

(declare-fun bs!1910190 () Bool)

(declare-fun d!2260551 () Bool)

(assert (= bs!1910190 (and d!2260551 b!7265561)))

(declare-fun lambda!447384 () Int)

(assert (=> bs!1910190 (not (= lambda!447384 lambda!447376))))

(declare-fun bs!1910191 () Bool)

(assert (= bs!1910191 (and d!2260551 d!2260547)))

(assert (=> bs!1910191 (not (= lambda!447384 lambda!447380))))

(declare-fun bs!1910192 () Bool)

(assert (= bs!1910192 (and d!2260551 d!2260549)))

(assert (=> bs!1910192 (not (= lambda!447384 lambda!447381))))

(assert (=> d!2260551 (= (nullableContext!255 ct1!250) (forall!17598 (exprs!8205 ct1!250) lambda!447384))))

(declare-fun bs!1910193 () Bool)

(assert (= bs!1910193 d!2260551))

(declare-fun m!7950270 () Bool)

(assert (=> bs!1910193 m!7950270))

(assert (=> b!7265562 d!2260551))

(declare-fun d!2260553 () Bool)

(declare-fun dynLambda!28880 (Int Context!15410) (InoxSet Context!15410))

(assert (=> d!2260553 (= (flatMap!2878 lt!2592235 lambda!447377) (dynLambda!28880 lambda!447377 lt!2592247))))

(declare-fun lt!2592250 () Unit!164148)

(declare-fun choose!56305 ((InoxSet Context!15410) Context!15410 Int) Unit!164148)

(assert (=> d!2260553 (= lt!2592250 (choose!56305 lt!2592235 lt!2592247 lambda!447377))))

(assert (=> d!2260553 (= lt!2592235 (store ((as const (Array Context!15410 Bool)) false) lt!2592247 true))))

(assert (=> d!2260553 (= (lemmaFlatMapOnSingletonSet!2278 lt!2592235 lt!2592247 lambda!447377) lt!2592250)))

(declare-fun b_lambda!279733 () Bool)

(assert (=> (not b_lambda!279733) (not d!2260553)))

(declare-fun bs!1910194 () Bool)

(assert (= bs!1910194 d!2260553))

(assert (=> bs!1910194 m!7950216))

(declare-fun m!7950272 () Bool)

(assert (=> bs!1910194 m!7950272))

(declare-fun m!7950274 () Bool)

(assert (=> bs!1910194 m!7950274))

(assert (=> bs!1910194 m!7950222))

(assert (=> b!7265561 d!2260553))

(declare-fun bm!662133 () Bool)

(declare-fun call!662138 () (InoxSet Context!15410))

(assert (=> bm!662133 (= call!662138 (derivationStepZipperDown!2699 (h!77169 (exprs!8205 ct1!250)) (Context!15411 (t!384913 (exprs!8205 ct1!250))) (h!77170 s!7854)))))

(declare-fun b!7265586 () Bool)

(declare-fun e!4357010 () (InoxSet Context!15410))

(assert (=> b!7265586 (= e!4357010 call!662138)))

(declare-fun d!2260555 () Bool)

(declare-fun c!1351874 () Bool)

(declare-fun e!4357011 () Bool)

(assert (=> d!2260555 (= c!1351874 e!4357011)))

(declare-fun res!2945646 () Bool)

(assert (=> d!2260555 (=> (not res!2945646) (not e!4357011))))

(assert (=> d!2260555 (= res!2945646 ((_ is Cons!70721) (exprs!8205 ct1!250)))))

(declare-fun e!4357009 () (InoxSet Context!15410))

(assert (=> d!2260555 (= (derivationStepZipperUp!2535 ct1!250 (h!77170 s!7854)) e!4357009)))

(declare-fun b!7265587 () Bool)

(assert (=> b!7265587 (= e!4357009 ((_ map or) call!662138 (derivationStepZipperUp!2535 (Context!15411 (t!384913 (exprs!8205 ct1!250))) (h!77170 s!7854))))))

(declare-fun b!7265588 () Bool)

(assert (=> b!7265588 (= e!4357011 (nullable!7965 (h!77169 (exprs!8205 ct1!250))))))

(declare-fun b!7265589 () Bool)

(assert (=> b!7265589 (= e!4357010 ((as const (Array Context!15410 Bool)) false))))

(declare-fun b!7265590 () Bool)

(assert (=> b!7265590 (= e!4357009 e!4357010)))

(declare-fun c!1351875 () Bool)

(assert (=> b!7265590 (= c!1351875 ((_ is Cons!70721) (exprs!8205 ct1!250)))))

(assert (= (and d!2260555 res!2945646) b!7265588))

(assert (= (and d!2260555 c!1351874) b!7265587))

(assert (= (and d!2260555 (not c!1351874)) b!7265590))

(assert (= (and b!7265590 c!1351875) b!7265586))

(assert (= (and b!7265590 (not c!1351875)) b!7265589))

(assert (= (or b!7265587 b!7265586) bm!662133))

(declare-fun m!7950276 () Bool)

(assert (=> bm!662133 m!7950276))

(declare-fun m!7950278 () Bool)

(assert (=> b!7265587 m!7950278))

(assert (=> b!7265588 m!7950208))

(assert (=> b!7265561 d!2260555))

(declare-fun d!2260557 () Bool)

(declare-fun choose!56308 ((InoxSet Context!15410) Int) (InoxSet Context!15410))

(assert (=> d!2260557 (= (flatMap!2878 lt!2592235 lambda!447377) (choose!56308 lt!2592235 lambda!447377))))

(declare-fun bs!1910195 () Bool)

(assert (= bs!1910195 d!2260557))

(declare-fun m!7950280 () Bool)

(assert (=> bs!1910195 m!7950280))

(assert (=> b!7265561 d!2260557))

(declare-fun bs!1910196 () Bool)

(declare-fun d!2260561 () Bool)

(assert (= bs!1910196 (and d!2260561 b!7265561)))

(declare-fun lambda!447387 () Int)

(assert (=> bs!1910196 (= lambda!447387 lambda!447377)))

(assert (=> d!2260561 true))

(assert (=> d!2260561 (= (derivationStepZipper!3505 lt!2592235 (h!77170 s!7854)) (flatMap!2878 lt!2592235 lambda!447387))))

(declare-fun bs!1910197 () Bool)

(assert (= bs!1910197 d!2260561))

(declare-fun m!7950286 () Bool)

(assert (=> bs!1910197 m!7950286))

(assert (=> b!7265561 d!2260561))

(declare-fun lt!2592256 () List!70845)

(declare-fun b!7265610 () Bool)

(declare-fun e!4357023 () Bool)

(assert (=> b!7265610 (= e!4357023 (or (not (= (exprs!8205 ct2!346) Nil!70721)) (= lt!2592256 (exprs!8205 ct1!250))))))

(declare-fun b!7265607 () Bool)

(declare-fun e!4357022 () List!70845)

(assert (=> b!7265607 (= e!4357022 (exprs!8205 ct2!346))))

(declare-fun b!7265609 () Bool)

(declare-fun res!2945657 () Bool)

(assert (=> b!7265609 (=> (not res!2945657) (not e!4357023))))

(declare-fun size!41796 (List!70845) Int)

(assert (=> b!7265609 (= res!2945657 (= (size!41796 lt!2592256) (+ (size!41796 (exprs!8205 ct1!250)) (size!41796 (exprs!8205 ct2!346)))))))

(declare-fun d!2260565 () Bool)

(assert (=> d!2260565 e!4357023))

(declare-fun res!2945658 () Bool)

(assert (=> d!2260565 (=> (not res!2945658) (not e!4357023))))

(declare-fun content!14748 (List!70845) (InoxSet Regex!18765))

(assert (=> d!2260565 (= res!2945658 (= (content!14748 lt!2592256) ((_ map or) (content!14748 (exprs!8205 ct1!250)) (content!14748 (exprs!8205 ct2!346)))))))

(assert (=> d!2260565 (= lt!2592256 e!4357022)))

(declare-fun c!1351880 () Bool)

(assert (=> d!2260565 (= c!1351880 ((_ is Nil!70721) (exprs!8205 ct1!250)))))

(assert (=> d!2260565 (= (++!16665 (exprs!8205 ct1!250) (exprs!8205 ct2!346)) lt!2592256)))

(declare-fun b!7265608 () Bool)

(assert (=> b!7265608 (= e!4357022 (Cons!70721 (h!77169 (exprs!8205 ct1!250)) (++!16665 (t!384913 (exprs!8205 ct1!250)) (exprs!8205 ct2!346))))))

(assert (= (and d!2260565 c!1351880) b!7265607))

(assert (= (and d!2260565 (not c!1351880)) b!7265608))

(assert (= (and d!2260565 res!2945658) b!7265609))

(assert (= (and b!7265609 res!2945657) b!7265610))

(declare-fun m!7950298 () Bool)

(assert (=> b!7265609 m!7950298))

(declare-fun m!7950300 () Bool)

(assert (=> b!7265609 m!7950300))

(declare-fun m!7950302 () Bool)

(assert (=> b!7265609 m!7950302))

(declare-fun m!7950304 () Bool)

(assert (=> d!2260565 m!7950304))

(declare-fun m!7950306 () Bool)

(assert (=> d!2260565 m!7950306))

(declare-fun m!7950308 () Bool)

(assert (=> d!2260565 m!7950308))

(declare-fun m!7950310 () Bool)

(assert (=> b!7265608 m!7950310))

(assert (=> b!7265561 d!2260565))

(declare-fun bm!662134 () Bool)

(declare-fun call!662139 () (InoxSet Context!15410))

(assert (=> bm!662134 (= call!662139 (derivationStepZipperDown!2699 (h!77169 (exprs!8205 lt!2592247)) (Context!15411 (t!384913 (exprs!8205 lt!2592247))) (h!77170 s!7854)))))

(declare-fun b!7265611 () Bool)

(declare-fun e!4357025 () (InoxSet Context!15410))

(assert (=> b!7265611 (= e!4357025 call!662139)))

(declare-fun d!2260573 () Bool)

(declare-fun c!1351881 () Bool)

(declare-fun e!4357026 () Bool)

(assert (=> d!2260573 (= c!1351881 e!4357026)))

(declare-fun res!2945659 () Bool)

(assert (=> d!2260573 (=> (not res!2945659) (not e!4357026))))

(assert (=> d!2260573 (= res!2945659 ((_ is Cons!70721) (exprs!8205 lt!2592247)))))

(declare-fun e!4357024 () (InoxSet Context!15410))

(assert (=> d!2260573 (= (derivationStepZipperUp!2535 lt!2592247 (h!77170 s!7854)) e!4357024)))

(declare-fun b!7265612 () Bool)

(assert (=> b!7265612 (= e!4357024 ((_ map or) call!662139 (derivationStepZipperUp!2535 (Context!15411 (t!384913 (exprs!8205 lt!2592247))) (h!77170 s!7854))))))

(declare-fun b!7265613 () Bool)

(assert (=> b!7265613 (= e!4357026 (nullable!7965 (h!77169 (exprs!8205 lt!2592247))))))

(declare-fun b!7265614 () Bool)

(assert (=> b!7265614 (= e!4357025 ((as const (Array Context!15410 Bool)) false))))

(declare-fun b!7265615 () Bool)

(assert (=> b!7265615 (= e!4357024 e!4357025)))

(declare-fun c!1351882 () Bool)

(assert (=> b!7265615 (= c!1351882 ((_ is Cons!70721) (exprs!8205 lt!2592247)))))

(assert (= (and d!2260573 res!2945659) b!7265613))

(assert (= (and d!2260573 c!1351881) b!7265612))

(assert (= (and d!2260573 (not c!1351881)) b!7265615))

(assert (= (and b!7265615 c!1351882) b!7265611))

(assert (= (and b!7265615 (not c!1351882)) b!7265614))

(assert (= (or b!7265612 b!7265611) bm!662134))

(declare-fun m!7950312 () Bool)

(assert (=> bm!662134 m!7950312))

(declare-fun m!7950314 () Bool)

(assert (=> b!7265612 m!7950314))

(declare-fun m!7950316 () Bool)

(assert (=> b!7265613 m!7950316))

(assert (=> b!7265561 d!2260573))

(declare-fun d!2260575 () Bool)

(assert (=> d!2260575 (forall!17598 (++!16665 (exprs!8205 ct1!250) (exprs!8205 ct2!346)) lambda!447376)))

(declare-fun lt!2592259 () Unit!164148)

(declare-fun choose!56310 (List!70845 List!70845 Int) Unit!164148)

(assert (=> d!2260575 (= lt!2592259 (choose!56310 (exprs!8205 ct1!250) (exprs!8205 ct2!346) lambda!447376))))

(assert (=> d!2260575 (forall!17598 (exprs!8205 ct1!250) lambda!447376)))

(assert (=> d!2260575 (= (lemmaConcatPreservesForall!1522 (exprs!8205 ct1!250) (exprs!8205 ct2!346) lambda!447376) lt!2592259)))

(declare-fun bs!1910201 () Bool)

(assert (= bs!1910201 d!2260575))

(assert (=> bs!1910201 m!7950224))

(assert (=> bs!1910201 m!7950224))

(declare-fun m!7950318 () Bool)

(assert (=> bs!1910201 m!7950318))

(declare-fun m!7950320 () Bool)

(assert (=> bs!1910201 m!7950320))

(declare-fun m!7950322 () Bool)

(assert (=> bs!1910201 m!7950322))

(assert (=> b!7265561 d!2260575))

(declare-fun d!2260577 () Bool)

(assert (=> d!2260577 (= (flatMap!2878 lt!2592240 lambda!447377) (dynLambda!28880 lambda!447377 ct1!250))))

(declare-fun lt!2592260 () Unit!164148)

(assert (=> d!2260577 (= lt!2592260 (choose!56305 lt!2592240 ct1!250 lambda!447377))))

(assert (=> d!2260577 (= lt!2592240 (store ((as const (Array Context!15410 Bool)) false) ct1!250 true))))

(assert (=> d!2260577 (= (lemmaFlatMapOnSingletonSet!2278 lt!2592240 ct1!250 lambda!447377) lt!2592260)))

(declare-fun b_lambda!279737 () Bool)

(assert (=> (not b_lambda!279737) (not d!2260577)))

(declare-fun bs!1910202 () Bool)

(assert (= bs!1910202 d!2260577))

(assert (=> bs!1910202 m!7950232))

(declare-fun m!7950326 () Bool)

(assert (=> bs!1910202 m!7950326))

(declare-fun m!7950330 () Bool)

(assert (=> bs!1910202 m!7950330))

(assert (=> bs!1910202 m!7950228))

(assert (=> b!7265561 d!2260577))

(declare-fun d!2260581 () Bool)

(assert (=> d!2260581 (= (flatMap!2878 lt!2592240 lambda!447377) (choose!56308 lt!2592240 lambda!447377))))

(declare-fun bs!1910203 () Bool)

(assert (= bs!1910203 d!2260581))

(declare-fun m!7950332 () Bool)

(assert (=> bs!1910203 m!7950332))

(assert (=> b!7265561 d!2260581))

(declare-fun d!2260583 () Bool)

(declare-fun nullableFct!3132 (Regex!18765) Bool)

(assert (=> d!2260583 (= (nullable!7965 (h!77169 (exprs!8205 ct1!250))) (nullableFct!3132 (h!77169 (exprs!8205 ct1!250))))))

(declare-fun bs!1910204 () Bool)

(assert (= bs!1910204 d!2260583))

(declare-fun m!7950334 () Bool)

(assert (=> bs!1910204 m!7950334))

(assert (=> b!7265565 d!2260583))

(assert (=> b!7265565 d!2260555))

(declare-fun d!2260585 () Bool)

(assert (=> d!2260585 (= (tail!14439 (exprs!8205 ct1!250)) (t!384913 (exprs!8205 ct1!250)))))

(assert (=> b!7265565 d!2260585))

(declare-fun d!2260587 () Bool)

(assert (=> d!2260587 (= (isEmpty!40651 (exprs!8205 ct1!250)) ((_ is Nil!70721) (exprs!8205 ct1!250)))))

(assert (=> b!7265560 d!2260587))

(declare-fun d!2260589 () Bool)

(declare-fun res!2945667 () Bool)

(declare-fun e!4357040 () Bool)

(assert (=> d!2260589 (=> res!2945667 e!4357040)))

(assert (=> d!2260589 (= res!2945667 ((_ is Nil!70721) lt!2592242))))

(assert (=> d!2260589 (= (forall!17598 lt!2592242 lambda!447376) e!4357040)))

(declare-fun b!7265635 () Bool)

(declare-fun e!4357041 () Bool)

(assert (=> b!7265635 (= e!4357040 e!4357041)))

(declare-fun res!2945668 () Bool)

(assert (=> b!7265635 (=> (not res!2945668) (not e!4357041))))

(declare-fun dynLambda!28883 (Int Regex!18765) Bool)

(assert (=> b!7265635 (= res!2945668 (dynLambda!28883 lambda!447376 (h!77169 lt!2592242)))))

(declare-fun b!7265636 () Bool)

(assert (=> b!7265636 (= e!4357041 (forall!17598 (t!384913 lt!2592242) lambda!447376))))

(assert (= (and d!2260589 (not res!2945667)) b!7265635))

(assert (= (and b!7265635 res!2945668) b!7265636))

(declare-fun b_lambda!279741 () Bool)

(assert (=> (not b_lambda!279741) (not b!7265635)))

(declare-fun m!7950340 () Bool)

(assert (=> b!7265635 m!7950340))

(declare-fun m!7950342 () Bool)

(assert (=> b!7265636 m!7950342))

(assert (=> b!7265559 d!2260589))

(declare-fun d!2260593 () Bool)

(assert (=> d!2260593 (forall!17598 (++!16665 lt!2592242 (exprs!8205 ct2!346)) lambda!447376)))

(declare-fun lt!2592264 () Unit!164148)

(assert (=> d!2260593 (= lt!2592264 (choose!56310 lt!2592242 (exprs!8205 ct2!346) lambda!447376))))

(assert (=> d!2260593 (forall!17598 lt!2592242 lambda!447376)))

(assert (=> d!2260593 (= (lemmaConcatPreservesForall!1522 lt!2592242 (exprs!8205 ct2!346) lambda!447376) lt!2592264)))

(declare-fun bs!1910206 () Bool)

(assert (= bs!1910206 d!2260593))

(declare-fun m!7950344 () Bool)

(assert (=> bs!1910206 m!7950344))

(assert (=> bs!1910206 m!7950344))

(declare-fun m!7950346 () Bool)

(assert (=> bs!1910206 m!7950346))

(declare-fun m!7950348 () Bool)

(assert (=> bs!1910206 m!7950348))

(assert (=> bs!1910206 m!7950244))

(assert (=> b!7265559 d!2260593))

(declare-fun bm!662151 () Bool)

(declare-fun call!662156 () (InoxSet Context!15410))

(declare-fun call!662157 () (InoxSet Context!15410))

(assert (=> bm!662151 (= call!662156 call!662157)))

(declare-fun b!7265678 () Bool)

(declare-fun e!4357068 () (InoxSet Context!15410))

(declare-fun call!662161 () (InoxSet Context!15410))

(assert (=> b!7265678 (= e!4357068 ((_ map or) call!662161 call!662156))))

(declare-fun b!7265679 () Bool)

(declare-fun c!1351910 () Bool)

(assert (=> b!7265679 (= c!1351910 ((_ is Star!18765) (h!77169 (exprs!8205 ct1!250))))))

(declare-fun e!4357064 () (InoxSet Context!15410))

(declare-fun e!4357065 () (InoxSet Context!15410))

(assert (=> b!7265679 (= e!4357064 e!4357065)))

(declare-fun c!1351908 () Bool)

(declare-fun call!662159 () List!70845)

(declare-fun c!1351907 () Bool)

(declare-fun c!1351909 () Bool)

(declare-fun bm!662152 () Bool)

(assert (=> bm!662152 (= call!662157 (derivationStepZipperDown!2699 (ite c!1351907 (regTwo!38043 (h!77169 (exprs!8205 ct1!250))) (ite c!1351908 (regTwo!38042 (h!77169 (exprs!8205 ct1!250))) (ite c!1351909 (regOne!38042 (h!77169 (exprs!8205 ct1!250))) (reg!19094 (h!77169 (exprs!8205 ct1!250)))))) (ite (or c!1351907 c!1351908) lt!2592244 (Context!15411 call!662159)) (h!77170 s!7854)))))

(declare-fun call!662158 () List!70845)

(declare-fun bm!662153 () Bool)

(declare-fun $colon$colon!2946 (List!70845 Regex!18765) List!70845)

(assert (=> bm!662153 (= call!662158 ($colon$colon!2946 (exprs!8205 lt!2592244) (ite (or c!1351908 c!1351909) (regTwo!38042 (h!77169 (exprs!8205 ct1!250))) (h!77169 (exprs!8205 ct1!250)))))))

(declare-fun b!7265681 () Bool)

(declare-fun call!662160 () (InoxSet Context!15410))

(assert (=> b!7265681 (= e!4357064 call!662160)))

(declare-fun b!7265682 () Bool)

(declare-fun e!4357066 () Bool)

(assert (=> b!7265682 (= c!1351908 e!4357066)))

(declare-fun res!2945678 () Bool)

(assert (=> b!7265682 (=> (not res!2945678) (not e!4357066))))

(assert (=> b!7265682 (= res!2945678 ((_ is Concat!27610) (h!77169 (exprs!8205 ct1!250))))))

(declare-fun e!4357063 () (InoxSet Context!15410))

(assert (=> b!7265682 (= e!4357063 e!4357068)))

(declare-fun bm!662154 () Bool)

(assert (=> bm!662154 (= call!662161 (derivationStepZipperDown!2699 (ite c!1351907 (regOne!38043 (h!77169 (exprs!8205 ct1!250))) (regOne!38042 (h!77169 (exprs!8205 ct1!250)))) (ite c!1351907 lt!2592244 (Context!15411 call!662158)) (h!77170 s!7854)))))

(declare-fun b!7265683 () Bool)

(assert (=> b!7265683 (= e!4357065 ((as const (Array Context!15410 Bool)) false))))

(declare-fun b!7265684 () Bool)

(assert (=> b!7265684 (= e!4357065 call!662160)))

(declare-fun b!7265685 () Bool)

(assert (=> b!7265685 (= e!4357063 ((_ map or) call!662161 call!662157))))

(declare-fun d!2260595 () Bool)

(declare-fun c!1351906 () Bool)

(assert (=> d!2260595 (= c!1351906 (and ((_ is ElementMatch!18765) (h!77169 (exprs!8205 ct1!250))) (= (c!1351865 (h!77169 (exprs!8205 ct1!250))) (h!77170 s!7854))))))

(declare-fun e!4357067 () (InoxSet Context!15410))

(assert (=> d!2260595 (= (derivationStepZipperDown!2699 (h!77169 (exprs!8205 ct1!250)) lt!2592244 (h!77170 s!7854)) e!4357067)))

(declare-fun b!7265680 () Bool)

(assert (=> b!7265680 (= e!4357068 e!4357064)))

(assert (=> b!7265680 (= c!1351909 ((_ is Concat!27610) (h!77169 (exprs!8205 ct1!250))))))

(declare-fun b!7265686 () Bool)

(assert (=> b!7265686 (= e!4357067 e!4357063)))

(assert (=> b!7265686 (= c!1351907 ((_ is Union!18765) (h!77169 (exprs!8205 ct1!250))))))

(declare-fun bm!662155 () Bool)

(assert (=> bm!662155 (= call!662159 call!662158)))

(declare-fun b!7265687 () Bool)

(assert (=> b!7265687 (= e!4357067 (store ((as const (Array Context!15410 Bool)) false) lt!2592244 true))))

(declare-fun bm!662156 () Bool)

(assert (=> bm!662156 (= call!662160 call!662156)))

(declare-fun b!7265688 () Bool)

(assert (=> b!7265688 (= e!4357066 (nullable!7965 (regOne!38042 (h!77169 (exprs!8205 ct1!250)))))))

(assert (= (and d!2260595 c!1351906) b!7265687))

(assert (= (and d!2260595 (not c!1351906)) b!7265686))

(assert (= (and b!7265686 c!1351907) b!7265685))

(assert (= (and b!7265686 (not c!1351907)) b!7265682))

(assert (= (and b!7265682 res!2945678) b!7265688))

(assert (= (and b!7265682 c!1351908) b!7265678))

(assert (= (and b!7265682 (not c!1351908)) b!7265680))

(assert (= (and b!7265680 c!1351909) b!7265681))

(assert (= (and b!7265680 (not c!1351909)) b!7265679))

(assert (= (and b!7265679 c!1351910) b!7265684))

(assert (= (and b!7265679 (not c!1351910)) b!7265683))

(assert (= (or b!7265681 b!7265684) bm!662155))

(assert (= (or b!7265681 b!7265684) bm!662156))

(assert (= (or b!7265678 bm!662155) bm!662153))

(assert (= (or b!7265678 bm!662156) bm!662151))

(assert (= (or b!7265685 b!7265678) bm!662154))

(assert (= (or b!7265685 bm!662151) bm!662152))

(declare-fun m!7950384 () Bool)

(assert (=> bm!662154 m!7950384))

(declare-fun m!7950386 () Bool)

(assert (=> b!7265687 m!7950386))

(declare-fun m!7950388 () Bool)

(assert (=> bm!662153 m!7950388))

(declare-fun m!7950390 () Bool)

(assert (=> b!7265688 m!7950390))

(declare-fun m!7950392 () Bool)

(assert (=> bm!662152 m!7950392))

(assert (=> b!7265558 d!2260595))

(declare-fun bm!662157 () Bool)

(declare-fun call!662162 () (InoxSet Context!15410))

(assert (=> bm!662157 (= call!662162 (derivationStepZipperDown!2699 (h!77169 (exprs!8205 lt!2592244)) (Context!15411 (t!384913 (exprs!8205 lt!2592244))) (h!77170 s!7854)))))

(declare-fun b!7265701 () Bool)

(declare-fun e!4357075 () (InoxSet Context!15410))

(assert (=> b!7265701 (= e!4357075 call!662162)))

(declare-fun d!2260611 () Bool)

(declare-fun c!1351915 () Bool)

(declare-fun e!4357077 () Bool)

(assert (=> d!2260611 (= c!1351915 e!4357077)))

(declare-fun res!2945679 () Bool)

(assert (=> d!2260611 (=> (not res!2945679) (not e!4357077))))

(assert (=> d!2260611 (= res!2945679 ((_ is Cons!70721) (exprs!8205 lt!2592244)))))

(declare-fun e!4357074 () (InoxSet Context!15410))

(assert (=> d!2260611 (= (derivationStepZipperUp!2535 lt!2592244 (h!77170 s!7854)) e!4357074)))

(declare-fun b!7265702 () Bool)

(assert (=> b!7265702 (= e!4357074 ((_ map or) call!662162 (derivationStepZipperUp!2535 (Context!15411 (t!384913 (exprs!8205 lt!2592244))) (h!77170 s!7854))))))

(declare-fun b!7265703 () Bool)

(assert (=> b!7265703 (= e!4357077 (nullable!7965 (h!77169 (exprs!8205 lt!2592244))))))

(declare-fun b!7265704 () Bool)

(assert (=> b!7265704 (= e!4357075 ((as const (Array Context!15410 Bool)) false))))

(declare-fun b!7265705 () Bool)

(assert (=> b!7265705 (= e!4357074 e!4357075)))

(declare-fun c!1351918 () Bool)

(assert (=> b!7265705 (= c!1351918 ((_ is Cons!70721) (exprs!8205 lt!2592244)))))

(assert (= (and d!2260611 res!2945679) b!7265703))

(assert (= (and d!2260611 c!1351915) b!7265702))

(assert (= (and d!2260611 (not c!1351915)) b!7265705))

(assert (= (and b!7265705 c!1351918) b!7265701))

(assert (= (and b!7265705 (not c!1351918)) b!7265704))

(assert (= (or b!7265702 b!7265701) bm!662157))

(declare-fun m!7950394 () Bool)

(assert (=> bm!662157 m!7950394))

(declare-fun m!7950396 () Bool)

(assert (=> b!7265702 m!7950396))

(declare-fun m!7950398 () Bool)

(assert (=> b!7265703 m!7950398))

(assert (=> b!7265558 d!2260611))

(declare-fun b!7265720 () Bool)

(declare-fun e!4357086 () Bool)

(declare-fun tp!2040397 () Bool)

(declare-fun tp!2040398 () Bool)

(assert (=> b!7265720 (= e!4357086 (and tp!2040397 tp!2040398))))

(assert (=> b!7265557 (= tp!2040390 e!4357086)))

(assert (= (and b!7265557 ((_ is Cons!70721) (exprs!8205 ct2!346))) b!7265720))

(declare-fun b!7265725 () Bool)

(declare-fun e!4357089 () Bool)

(declare-fun tp!2040401 () Bool)

(assert (=> b!7265725 (= e!4357089 (and tp_is_empty!46995 tp!2040401))))

(assert (=> b!7265567 (= tp!2040391 e!4357089)))

(assert (= (and b!7265567 ((_ is Cons!70722) (t!384914 s!7854))) b!7265725))

(declare-fun b!7265726 () Bool)

(declare-fun e!4357090 () Bool)

(declare-fun tp!2040402 () Bool)

(declare-fun tp!2040403 () Bool)

(assert (=> b!7265726 (= e!4357090 (and tp!2040402 tp!2040403))))

(assert (=> b!7265563 (= tp!2040392 e!4357090)))

(assert (= (and b!7265563 ((_ is Cons!70721) (exprs!8205 ct1!250))) b!7265726))

(declare-fun b_lambda!279745 () Bool)

(assert (= b_lambda!279741 (or b!7265561 b_lambda!279745)))

(declare-fun bs!1910212 () Bool)

(declare-fun d!2260613 () Bool)

(assert (= bs!1910212 (and d!2260613 b!7265561)))

(declare-fun validRegex!9569 (Regex!18765) Bool)

(assert (=> bs!1910212 (= (dynLambda!28883 lambda!447376 (h!77169 lt!2592242)) (validRegex!9569 (h!77169 lt!2592242)))))

(declare-fun m!7950400 () Bool)

(assert (=> bs!1910212 m!7950400))

(assert (=> b!7265635 d!2260613))

(declare-fun b_lambda!279747 () Bool)

(assert (= b_lambda!279737 (or b!7265561 b_lambda!279747)))

(declare-fun bs!1910213 () Bool)

(declare-fun d!2260615 () Bool)

(assert (= bs!1910213 (and d!2260615 b!7265561)))

(assert (=> bs!1910213 (= (dynLambda!28880 lambda!447377 ct1!250) (derivationStepZipperUp!2535 ct1!250 (h!77170 s!7854)))))

(assert (=> bs!1910213 m!7950210))

(assert (=> d!2260577 d!2260615))

(declare-fun b_lambda!279749 () Bool)

(assert (= b_lambda!279733 (or b!7265561 b_lambda!279749)))

(declare-fun bs!1910214 () Bool)

(declare-fun d!2260617 () Bool)

(assert (= bs!1910214 (and d!2260617 b!7265561)))

(assert (=> bs!1910214 (= (dynLambda!28880 lambda!447377 lt!2592247) (derivationStepZipperUp!2535 lt!2592247 (h!77170 s!7854)))))

(assert (=> bs!1910214 m!7950230))

(assert (=> d!2260553 d!2260617))

(check-sat (not d!2260545) (not d!2260561) (not d!2260575) (not b!7265613) (not b!7265636) (not b!7265587) (not bs!1910214) (not bm!662153) (not bm!662134) tp_is_empty!46995 (not b!7265588) (not bm!662157) (not d!2260593) (not d!2260583) (not b!7265609) (not b_lambda!279749) (not bs!1910213) (not d!2260547) (not b!7265574) (not b!7265688) (not b_lambda!279745) (not bs!1910212) (not d!2260557) (not d!2260581) (not bm!662133) (not b!7265702) (not b!7265725) (not d!2260565) (not b!7265720) (not b!7265726) (not d!2260551) (not bm!662152) (not b!7265575) (not b!7265612) (not d!2260577) (not bm!662154) (not b_lambda!279747) (not d!2260549) (not b!7265703) (not d!2260553) (not b!7265608))
(check-sat)
