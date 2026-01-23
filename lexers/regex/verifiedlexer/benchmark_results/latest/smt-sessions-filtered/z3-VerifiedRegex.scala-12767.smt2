; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!705564 () Bool)

(assert start!705564)

(declare-fun b!7250242 () Bool)

(assert (=> b!7250242 true))

(declare-fun b!7250251 () Bool)

(assert (=> b!7250251 true))

(declare-fun b!7250241 () Bool)

(declare-fun e!4347283 () Bool)

(declare-fun tp_is_empty!46751 () Bool)

(declare-fun tp!2037370 () Bool)

(assert (=> b!7250241 (= e!4347283 (and tp_is_empty!46751 tp!2037370))))

(declare-fun e!4347276 () Bool)

(declare-fun e!4347284 () Bool)

(assert (=> b!7250242 (= e!4347276 (not e!4347284))))

(declare-fun res!2940583 () Bool)

(assert (=> b!7250242 (=> res!2940583 e!4347284)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37560 0))(
  ( (C!37561 (val!28728 Int)) )
))
(declare-datatypes ((Regex!18643 0))(
  ( (ElementMatch!18643 (c!1347277 C!37560)) (Concat!27488 (regOne!37798 Regex!18643) (regTwo!37798 Regex!18643)) (EmptyExpr!18643) (Star!18643 (reg!18972 Regex!18643)) (EmptyLang!18643) (Union!18643 (regOne!37799 Regex!18643) (regTwo!37799 Regex!18643)) )
))
(declare-datatypes ((List!70509 0))(
  ( (Nil!70385) (Cons!70385 (h!76833 Regex!18643) (t!384563 List!70509)) )
))
(declare-datatypes ((Context!15166 0))(
  ( (Context!15167 (exprs!8083 List!70509)) )
))
(declare-fun lt!2584751 () (InoxSet Context!15166))

(declare-fun lambda!444097 () Int)

(declare-fun exists!4364 ((InoxSet Context!15166) Int) Bool)

(assert (=> b!7250242 (= res!2940583 (not (exists!4364 lt!2584751 lambda!444097)))))

(declare-datatypes ((List!70510 0))(
  ( (Nil!70386) (Cons!70386 (h!76834 Context!15166) (t!384564 List!70510)) )
))
(declare-fun lt!2584734 () List!70510)

(declare-fun exists!4365 (List!70510 Int) Bool)

(assert (=> b!7250242 (exists!4365 lt!2584734 lambda!444097)))

(declare-datatypes ((Unit!163871 0))(
  ( (Unit!163872) )
))
(declare-fun lt!2584742 () Unit!163871)

(declare-datatypes ((List!70511 0))(
  ( (Nil!70387) (Cons!70387 (h!76835 C!37560) (t!384565 List!70511)) )
))
(declare-fun s1!1971 () List!70511)

(declare-fun lemmaZipperMatchesExistsMatchingContext!746 (List!70510 List!70511) Unit!163871)

(assert (=> b!7250242 (= lt!2584742 (lemmaZipperMatchesExistsMatchingContext!746 lt!2584734 (t!384565 s1!1971)))))

(declare-fun toList!11472 ((InoxSet Context!15166)) List!70510)

(assert (=> b!7250242 (= lt!2584734 (toList!11472 lt!2584751))))

(declare-fun b!7250243 () Bool)

(declare-fun res!2940585 () Bool)

(declare-fun e!4347274 () Bool)

(assert (=> b!7250243 (=> (not res!2940585) (not e!4347274))))

(declare-fun ct2!328 () Context!15166)

(declare-fun s2!1849 () List!70511)

(declare-fun matchZipper!3553 ((InoxSet Context!15166) List!70511) Bool)

(assert (=> b!7250243 (= res!2940585 (matchZipper!3553 (store ((as const (Array Context!15166 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun res!2940589 () Bool)

(assert (=> start!705564 (=> (not res!2940589) (not e!4347274))))

(declare-fun lt!2584744 () (InoxSet Context!15166))

(assert (=> start!705564 (= res!2940589 (matchZipper!3553 lt!2584744 s1!1971))))

(declare-fun ct1!232 () Context!15166)

(assert (=> start!705564 (= lt!2584744 (store ((as const (Array Context!15166 Bool)) false) ct1!232 true))))

(assert (=> start!705564 e!4347274))

(declare-fun e!4347277 () Bool)

(declare-fun inv!89617 (Context!15166) Bool)

(assert (=> start!705564 (and (inv!89617 ct1!232) e!4347277)))

(declare-fun e!4347281 () Bool)

(assert (=> start!705564 e!4347281))

(assert (=> start!705564 e!4347283))

(declare-fun e!4347280 () Bool)

(assert (=> start!705564 (and (inv!89617 ct2!328) e!4347280)))

(declare-fun b!7250244 () Bool)

(declare-fun tp!2037368 () Bool)

(assert (=> b!7250244 (= e!4347281 (and tp_is_empty!46751 tp!2037368))))

(declare-fun b!7250245 () Bool)

(declare-fun e!4347278 () Bool)

(assert (=> b!7250245 (= e!4347278 e!4347276)))

(declare-fun res!2940590 () Bool)

(assert (=> b!7250245 (=> (not res!2940590) (not e!4347276))))

(assert (=> b!7250245 (= res!2940590 (matchZipper!3553 lt!2584751 (t!384565 s1!1971)))))

(declare-fun derivationStepZipper!3421 ((InoxSet Context!15166) C!37560) (InoxSet Context!15166))

(assert (=> b!7250245 (= lt!2584751 (derivationStepZipper!3421 lt!2584744 (h!76835 s1!1971)))))

(declare-fun b!7250246 () Bool)

(declare-fun tp!2037369 () Bool)

(assert (=> b!7250246 (= e!4347277 tp!2037369)))

(declare-fun b!7250247 () Bool)

(assert (=> b!7250247 (= e!4347274 e!4347278)))

(declare-fun res!2940584 () Bool)

(assert (=> b!7250247 (=> (not res!2940584) (not e!4347278))))

(get-info :version)

(assert (=> b!7250247 (= res!2940584 (and (not ((_ is Nil!70385) (exprs!8083 ct1!232))) ((_ is Cons!70387) s1!1971)))))

(declare-fun lt!2584736 () (InoxSet Context!15166))

(declare-fun lt!2584738 () Context!15166)

(assert (=> b!7250247 (= lt!2584736 (store ((as const (Array Context!15166 Bool)) false) lt!2584738 true))))

(declare-fun lt!2584739 () List!70509)

(assert (=> b!7250247 (= lt!2584738 (Context!15167 lt!2584739))))

(declare-fun ++!16548 (List!70509 List!70509) List!70509)

(assert (=> b!7250247 (= lt!2584739 (++!16548 (exprs!8083 ct1!232) (exprs!8083 ct2!328)))))

(declare-fun lambda!444096 () Int)

(declare-fun lt!2584749 () Unit!163871)

(declare-fun lemmaConcatPreservesForall!1450 (List!70509 List!70509 Int) Unit!163871)

(assert (=> b!7250247 (= lt!2584749 (lemmaConcatPreservesForall!1450 (exprs!8083 ct1!232) (exprs!8083 ct2!328) lambda!444096))))

(declare-fun b!7250248 () Bool)

(declare-fun e!4347279 () Bool)

(declare-fun e!4347275 () Bool)

(assert (=> b!7250248 (= e!4347279 e!4347275)))

(declare-fun res!2940587 () Bool)

(assert (=> b!7250248 (=> res!2940587 e!4347275)))

(declare-fun isEmpty!40533 (List!70509) Bool)

(assert (=> b!7250248 (= res!2940587 (isEmpty!40533 lt!2584739))))

(declare-fun lt!2584745 () Unit!163871)

(assert (=> b!7250248 (= lt!2584745 (lemmaConcatPreservesForall!1450 (exprs!8083 ct1!232) (exprs!8083 ct2!328) lambda!444096))))

(declare-fun lt!2584748 () (InoxSet Context!15166))

(declare-fun derivationStepZipperUp!2467 (Context!15166 C!37560) (InoxSet Context!15166))

(assert (=> b!7250248 (= lt!2584748 (derivationStepZipperUp!2467 lt!2584738 (h!76835 s1!1971)))))

(declare-fun lt!2584741 () Unit!163871)

(assert (=> b!7250248 (= lt!2584741 (lemmaConcatPreservesForall!1450 (exprs!8083 ct1!232) (exprs!8083 ct2!328) lambda!444096))))

(declare-fun lt!2584755 () (InoxSet Context!15166))

(declare-fun lt!2584743 () Context!15166)

(declare-fun derivationStepZipperDown!2637 (Regex!18643 Context!15166 C!37560) (InoxSet Context!15166))

(assert (=> b!7250248 (= lt!2584755 (derivationStepZipperDown!2637 (h!76833 (exprs!8083 ct1!232)) lt!2584743 (h!76835 s1!1971)))))

(declare-fun tail!14316 (List!70509) List!70509)

(assert (=> b!7250248 (= lt!2584743 (Context!15167 (tail!14316 (exprs!8083 ct1!232))))))

(declare-fun b!7250249 () Bool)

(declare-fun e!4347282 () Bool)

(assert (=> b!7250249 (= e!4347282 (inv!89617 lt!2584743))))

(declare-fun b!7250250 () Bool)

(declare-fun tp!2037367 () Bool)

(assert (=> b!7250250 (= e!4347280 tp!2037367)))

(assert (=> b!7250251 (= e!4347275 e!4347282)))

(declare-fun res!2940586 () Bool)

(assert (=> b!7250251 (=> res!2940586 e!4347282)))

(declare-fun nullable!7903 (Regex!18643) Bool)

(assert (=> b!7250251 (= res!2940586 (not (nullable!7903 (h!76833 (exprs!8083 ct1!232)))))))

(declare-fun lambda!444098 () Int)

(declare-fun flatMap!2808 ((InoxSet Context!15166) Int) (InoxSet Context!15166))

(assert (=> b!7250251 (= (flatMap!2808 lt!2584736 lambda!444098) (derivationStepZipperUp!2467 lt!2584738 (h!76835 s1!1971)))))

(declare-fun lt!2584747 () Unit!163871)

(declare-fun lemmaFlatMapOnSingletonSet!2212 ((InoxSet Context!15166) Context!15166 Int) Unit!163871)

(assert (=> b!7250251 (= lt!2584747 (lemmaFlatMapOnSingletonSet!2212 lt!2584736 lt!2584738 lambda!444098))))

(declare-fun lt!2584740 () Unit!163871)

(assert (=> b!7250251 (= lt!2584740 (lemmaConcatPreservesForall!1450 (exprs!8083 ct1!232) (exprs!8083 ct2!328) lambda!444096))))

(assert (=> b!7250251 (= (flatMap!2808 lt!2584744 lambda!444098) (derivationStepZipperUp!2467 ct1!232 (h!76835 s1!1971)))))

(declare-fun lt!2584753 () Unit!163871)

(assert (=> b!7250251 (= lt!2584753 (lemmaFlatMapOnSingletonSet!2212 lt!2584744 ct1!232 lambda!444098))))

(declare-fun lt!2584746 () (InoxSet Context!15166))

(assert (=> b!7250251 (= lt!2584746 (derivationStepZipperDown!2637 (h!76833 (exprs!8083 ct1!232)) (Context!15167 (tail!14316 lt!2584739)) (h!76835 s1!1971)))))

(declare-fun b!7250252 () Bool)

(assert (=> b!7250252 (= e!4347284 e!4347279)))

(declare-fun res!2940588 () Bool)

(assert (=> b!7250252 (=> res!2940588 e!4347279)))

(assert (=> b!7250252 (= res!2940588 (isEmpty!40533 (exprs!8083 ct1!232)))))

(declare-fun lt!2584750 () (InoxSet Context!15166))

(assert (=> b!7250252 (= lt!2584750 (derivationStepZipperUp!2467 ct1!232 (h!76835 s1!1971)))))

(declare-fun lt!2584752 () Unit!163871)

(declare-fun lt!2584735 () Context!15166)

(assert (=> b!7250252 (= lt!2584752 (lemmaConcatPreservesForall!1450 (exprs!8083 lt!2584735) (exprs!8083 ct2!328) lambda!444096))))

(declare-fun ++!16549 (List!70511 List!70511) List!70511)

(assert (=> b!7250252 (matchZipper!3553 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true) (++!16549 (t!384565 s1!1971) s2!1849))))

(declare-fun lt!2584754 () Unit!163871)

(assert (=> b!7250252 (= lt!2584754 (lemmaConcatPreservesForall!1450 (exprs!8083 lt!2584735) (exprs!8083 ct2!328) lambda!444096))))

(declare-fun lt!2584737 () Unit!163871)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!388 (Context!15166 Context!15166 List!70511 List!70511) Unit!163871)

(assert (=> b!7250252 (= lt!2584737 (lemmaConcatenateContextMatchesConcatOfStrings!388 lt!2584735 ct2!328 (t!384565 s1!1971) s2!1849))))

(declare-fun getWitness!2199 ((InoxSet Context!15166) Int) Context!15166)

(assert (=> b!7250252 (= lt!2584735 (getWitness!2199 lt!2584751 lambda!444097))))

(assert (= (and start!705564 res!2940589) b!7250243))

(assert (= (and b!7250243 res!2940585) b!7250247))

(assert (= (and b!7250247 res!2940584) b!7250245))

(assert (= (and b!7250245 res!2940590) b!7250242))

(assert (= (and b!7250242 (not res!2940583)) b!7250252))

(assert (= (and b!7250252 (not res!2940588)) b!7250248))

(assert (= (and b!7250248 (not res!2940587)) b!7250251))

(assert (= (and b!7250251 (not res!2940586)) b!7250249))

(assert (= start!705564 b!7250246))

(assert (= (and start!705564 ((_ is Cons!70387) s1!1971)) b!7250244))

(assert (= (and start!705564 ((_ is Cons!70387) s2!1849)) b!7250241))

(assert (= start!705564 b!7250250))

(declare-fun m!7928950 () Bool)

(assert (=> b!7250252 m!7928950))

(declare-fun m!7928952 () Bool)

(assert (=> b!7250252 m!7928952))

(declare-fun m!7928954 () Bool)

(assert (=> b!7250252 m!7928954))

(declare-fun m!7928956 () Bool)

(assert (=> b!7250252 m!7928956))

(declare-fun m!7928958 () Bool)

(assert (=> b!7250252 m!7928958))

(declare-fun m!7928960 () Bool)

(assert (=> b!7250252 m!7928960))

(assert (=> b!7250252 m!7928958))

(declare-fun m!7928962 () Bool)

(assert (=> b!7250252 m!7928962))

(declare-fun m!7928964 () Bool)

(assert (=> b!7250252 m!7928964))

(assert (=> b!7250252 m!7928950))

(assert (=> b!7250252 m!7928956))

(declare-fun m!7928966 () Bool)

(assert (=> b!7250252 m!7928966))

(declare-fun m!7928968 () Bool)

(assert (=> b!7250242 m!7928968))

(declare-fun m!7928970 () Bool)

(assert (=> b!7250242 m!7928970))

(declare-fun m!7928972 () Bool)

(assert (=> b!7250242 m!7928972))

(declare-fun m!7928974 () Bool)

(assert (=> b!7250242 m!7928974))

(declare-fun m!7928976 () Bool)

(assert (=> b!7250243 m!7928976))

(assert (=> b!7250243 m!7928976))

(declare-fun m!7928978 () Bool)

(assert (=> b!7250243 m!7928978))

(declare-fun m!7928980 () Bool)

(assert (=> start!705564 m!7928980))

(declare-fun m!7928982 () Bool)

(assert (=> start!705564 m!7928982))

(declare-fun m!7928984 () Bool)

(assert (=> start!705564 m!7928984))

(declare-fun m!7928986 () Bool)

(assert (=> start!705564 m!7928986))

(declare-fun m!7928988 () Bool)

(assert (=> b!7250245 m!7928988))

(declare-fun m!7928990 () Bool)

(assert (=> b!7250245 m!7928990))

(declare-fun m!7928992 () Bool)

(assert (=> b!7250251 m!7928992))

(declare-fun m!7928994 () Bool)

(assert (=> b!7250251 m!7928994))

(declare-fun m!7928996 () Bool)

(assert (=> b!7250251 m!7928996))

(assert (=> b!7250251 m!7928954))

(declare-fun m!7928998 () Bool)

(assert (=> b!7250251 m!7928998))

(declare-fun m!7929000 () Bool)

(assert (=> b!7250251 m!7929000))

(declare-fun m!7929002 () Bool)

(assert (=> b!7250251 m!7929002))

(declare-fun m!7929004 () Bool)

(assert (=> b!7250251 m!7929004))

(declare-fun m!7929006 () Bool)

(assert (=> b!7250251 m!7929006))

(declare-fun m!7929008 () Bool)

(assert (=> b!7250251 m!7929008))

(declare-fun m!7929010 () Bool)

(assert (=> b!7250248 m!7929010))

(declare-fun m!7929012 () Bool)

(assert (=> b!7250248 m!7929012))

(assert (=> b!7250248 m!7929002))

(assert (=> b!7250248 m!7929002))

(assert (=> b!7250248 m!7929008))

(declare-fun m!7929014 () Bool)

(assert (=> b!7250248 m!7929014))

(declare-fun m!7929016 () Bool)

(assert (=> b!7250249 m!7929016))

(declare-fun m!7929018 () Bool)

(assert (=> b!7250247 m!7929018))

(declare-fun m!7929020 () Bool)

(assert (=> b!7250247 m!7929020))

(assert (=> b!7250247 m!7929002))

(check-sat (not b!7250247) (not b!7250252) (not b!7250243) tp_is_empty!46751 (not b!7250248) (not b!7250250) (not b!7250249) (not b!7250244) (not b!7250245) (not b!7250241) (not b!7250251) (not b!7250242) (not b!7250246) (not start!705564))
(check-sat)
(get-model)

(declare-fun d!2253468 () Bool)

(assert (=> d!2253468 (= (isEmpty!40533 (exprs!8083 ct1!232)) ((_ is Nil!70385) (exprs!8083 ct1!232)))))

(assert (=> b!7250252 d!2253468))

(declare-fun d!2253470 () Bool)

(declare-fun e!4347287 () Bool)

(assert (=> d!2253470 e!4347287))

(declare-fun res!2940593 () Bool)

(assert (=> d!2253470 (=> (not res!2940593) (not e!4347287))))

(declare-fun lt!2584758 () Context!15166)

(declare-fun dynLambda!28732 (Int Context!15166) Bool)

(assert (=> d!2253470 (= res!2940593 (dynLambda!28732 lambda!444097 lt!2584758))))

(declare-fun getWitness!2200 (List!70510 Int) Context!15166)

(assert (=> d!2253470 (= lt!2584758 (getWitness!2200 (toList!11472 lt!2584751) lambda!444097))))

(assert (=> d!2253470 (exists!4364 lt!2584751 lambda!444097)))

(assert (=> d!2253470 (= (getWitness!2199 lt!2584751 lambda!444097) lt!2584758)))

(declare-fun b!7250259 () Bool)

(assert (=> b!7250259 (= e!4347287 (select lt!2584751 lt!2584758))))

(assert (= (and d!2253470 res!2940593) b!7250259))

(declare-fun b_lambda!278351 () Bool)

(assert (=> (not b_lambda!278351) (not d!2253470)))

(declare-fun m!7929022 () Bool)

(assert (=> d!2253470 m!7929022))

(assert (=> d!2253470 m!7928974))

(assert (=> d!2253470 m!7928974))

(declare-fun m!7929024 () Bool)

(assert (=> d!2253470 m!7929024))

(assert (=> d!2253470 m!7928968))

(declare-fun m!7929026 () Bool)

(assert (=> b!7250259 m!7929026))

(assert (=> b!7250252 d!2253470))

(declare-fun bs!1906064 () Bool)

(declare-fun d!2253472 () Bool)

(assert (= bs!1906064 (and d!2253472 b!7250247)))

(declare-fun lambda!444101 () Int)

(assert (=> bs!1906064 (= lambda!444101 lambda!444096)))

(assert (=> d!2253472 (matchZipper!3553 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true) (++!16549 (t!384565 s1!1971) s2!1849))))

(declare-fun lt!2584764 () Unit!163871)

(assert (=> d!2253472 (= lt!2584764 (lemmaConcatPreservesForall!1450 (exprs!8083 lt!2584735) (exprs!8083 ct2!328) lambda!444101))))

(declare-fun lt!2584763 () Unit!163871)

(declare-fun choose!55999 (Context!15166 Context!15166 List!70511 List!70511) Unit!163871)

(assert (=> d!2253472 (= lt!2584763 (choose!55999 lt!2584735 ct2!328 (t!384565 s1!1971) s2!1849))))

(assert (=> d!2253472 (matchZipper!3553 (store ((as const (Array Context!15166 Bool)) false) lt!2584735 true) (t!384565 s1!1971))))

(assert (=> d!2253472 (= (lemmaConcatenateContextMatchesConcatOfStrings!388 lt!2584735 ct2!328 (t!384565 s1!1971) s2!1849) lt!2584763)))

(declare-fun bs!1906065 () Bool)

(assert (= bs!1906065 d!2253472))

(assert (=> bs!1906065 m!7928956))

(declare-fun m!7929028 () Bool)

(assert (=> bs!1906065 m!7929028))

(declare-fun m!7929030 () Bool)

(assert (=> bs!1906065 m!7929030))

(assert (=> bs!1906065 m!7929028))

(declare-fun m!7929032 () Bool)

(assert (=> bs!1906065 m!7929032))

(assert (=> bs!1906065 m!7928958))

(assert (=> bs!1906065 m!7928962))

(declare-fun m!7929034 () Bool)

(assert (=> bs!1906065 m!7929034))

(assert (=> bs!1906065 m!7928956))

(assert (=> bs!1906065 m!7928958))

(assert (=> bs!1906065 m!7928960))

(assert (=> b!7250252 d!2253472))

(declare-fun d!2253474 () Bool)

(declare-fun c!1347282 () Bool)

(declare-fun isEmpty!40534 (List!70511) Bool)

(assert (=> d!2253474 (= c!1347282 (isEmpty!40534 (++!16549 (t!384565 s1!1971) s2!1849)))))

(declare-fun e!4347294 () Bool)

(assert (=> d!2253474 (= (matchZipper!3553 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true) (++!16549 (t!384565 s1!1971) s2!1849)) e!4347294)))

(declare-fun b!7250270 () Bool)

(declare-fun nullableZipper!2911 ((InoxSet Context!15166)) Bool)

(assert (=> b!7250270 (= e!4347294 (nullableZipper!2911 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true)))))

(declare-fun b!7250271 () Bool)

(declare-fun head!14901 (List!70511) C!37560)

(declare-fun tail!14317 (List!70511) List!70511)

(assert (=> b!7250271 (= e!4347294 (matchZipper!3553 (derivationStepZipper!3421 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true) (head!14901 (++!16549 (t!384565 s1!1971) s2!1849))) (tail!14317 (++!16549 (t!384565 s1!1971) s2!1849))))))

(assert (= (and d!2253474 c!1347282) b!7250270))

(assert (= (and d!2253474 (not c!1347282)) b!7250271))

(assert (=> d!2253474 m!7928958))

(declare-fun m!7929036 () Bool)

(assert (=> d!2253474 m!7929036))

(assert (=> b!7250270 m!7928956))

(declare-fun m!7929038 () Bool)

(assert (=> b!7250270 m!7929038))

(assert (=> b!7250271 m!7928958))

(declare-fun m!7929040 () Bool)

(assert (=> b!7250271 m!7929040))

(assert (=> b!7250271 m!7928956))

(assert (=> b!7250271 m!7929040))

(declare-fun m!7929042 () Bool)

(assert (=> b!7250271 m!7929042))

(assert (=> b!7250271 m!7928958))

(declare-fun m!7929044 () Bool)

(assert (=> b!7250271 m!7929044))

(assert (=> b!7250271 m!7929042))

(assert (=> b!7250271 m!7929044))

(declare-fun m!7929046 () Bool)

(assert (=> b!7250271 m!7929046))

(assert (=> b!7250252 d!2253474))

(declare-fun b!7250291 () Bool)

(declare-fun res!2940601 () Bool)

(declare-fun e!4347305 () Bool)

(assert (=> b!7250291 (=> (not res!2940601) (not e!4347305))))

(declare-fun lt!2584769 () List!70511)

(declare-fun size!41711 (List!70511) Int)

(assert (=> b!7250291 (= res!2940601 (= (size!41711 lt!2584769) (+ (size!41711 (t!384565 s1!1971)) (size!41711 s2!1849))))))

(declare-fun b!7250292 () Bool)

(assert (=> b!7250292 (= e!4347305 (or (not (= s2!1849 Nil!70387)) (= lt!2584769 (t!384565 s1!1971))))))

(declare-fun b!7250289 () Bool)

(declare-fun e!4347304 () List!70511)

(assert (=> b!7250289 (= e!4347304 s2!1849)))

(declare-fun d!2253480 () Bool)

(assert (=> d!2253480 e!4347305))

(declare-fun res!2940602 () Bool)

(assert (=> d!2253480 (=> (not res!2940602) (not e!4347305))))

(declare-fun content!14602 (List!70511) (InoxSet C!37560))

(assert (=> d!2253480 (= res!2940602 (= (content!14602 lt!2584769) ((_ map or) (content!14602 (t!384565 s1!1971)) (content!14602 s2!1849))))))

(assert (=> d!2253480 (= lt!2584769 e!4347304)))

(declare-fun c!1347289 () Bool)

(assert (=> d!2253480 (= c!1347289 ((_ is Nil!70387) (t!384565 s1!1971)))))

(assert (=> d!2253480 (= (++!16549 (t!384565 s1!1971) s2!1849) lt!2584769)))

(declare-fun b!7250290 () Bool)

(assert (=> b!7250290 (= e!4347304 (Cons!70387 (h!76835 (t!384565 s1!1971)) (++!16549 (t!384565 (t!384565 s1!1971)) s2!1849)))))

(assert (= (and d!2253480 c!1347289) b!7250289))

(assert (= (and d!2253480 (not c!1347289)) b!7250290))

(assert (= (and d!2253480 res!2940602) b!7250291))

(assert (= (and b!7250291 res!2940601) b!7250292))

(declare-fun m!7929054 () Bool)

(assert (=> b!7250291 m!7929054))

(declare-fun m!7929056 () Bool)

(assert (=> b!7250291 m!7929056))

(declare-fun m!7929058 () Bool)

(assert (=> b!7250291 m!7929058))

(declare-fun m!7929060 () Bool)

(assert (=> d!2253480 m!7929060))

(declare-fun m!7929062 () Bool)

(assert (=> d!2253480 m!7929062))

(declare-fun m!7929064 () Bool)

(assert (=> d!2253480 m!7929064))

(declare-fun m!7929066 () Bool)

(assert (=> b!7250290 m!7929066))

(assert (=> b!7250252 d!2253480))

(declare-fun e!4347316 () (InoxSet Context!15166))

(declare-fun b!7250307 () Bool)

(declare-fun call!660296 () (InoxSet Context!15166))

(assert (=> b!7250307 (= e!4347316 ((_ map or) call!660296 (derivationStepZipperUp!2467 (Context!15167 (t!384563 (exprs!8083 ct1!232))) (h!76835 s1!1971))))))

(declare-fun b!7250308 () Bool)

(declare-fun e!4347315 () Bool)

(assert (=> b!7250308 (= e!4347315 (nullable!7903 (h!76833 (exprs!8083 ct1!232))))))

(declare-fun bm!660291 () Bool)

(assert (=> bm!660291 (= call!660296 (derivationStepZipperDown!2637 (h!76833 (exprs!8083 ct1!232)) (Context!15167 (t!384563 (exprs!8083 ct1!232))) (h!76835 s1!1971)))))

(declare-fun d!2253484 () Bool)

(declare-fun c!1347295 () Bool)

(assert (=> d!2253484 (= c!1347295 e!4347315)))

(declare-fun res!2940605 () Bool)

(assert (=> d!2253484 (=> (not res!2940605) (not e!4347315))))

(assert (=> d!2253484 (= res!2940605 ((_ is Cons!70385) (exprs!8083 ct1!232)))))

(assert (=> d!2253484 (= (derivationStepZipperUp!2467 ct1!232 (h!76835 s1!1971)) e!4347316)))

(declare-fun b!7250309 () Bool)

(declare-fun e!4347313 () (InoxSet Context!15166))

(assert (=> b!7250309 (= e!4347316 e!4347313)))

(declare-fun c!1347296 () Bool)

(assert (=> b!7250309 (= c!1347296 ((_ is Cons!70385) (exprs!8083 ct1!232)))))

(declare-fun b!7250310 () Bool)

(assert (=> b!7250310 (= e!4347313 call!660296)))

(declare-fun b!7250311 () Bool)

(assert (=> b!7250311 (= e!4347313 ((as const (Array Context!15166 Bool)) false))))

(assert (= (and d!2253484 res!2940605) b!7250308))

(assert (= (and d!2253484 c!1347295) b!7250307))

(assert (= (and d!2253484 (not c!1347295)) b!7250309))

(assert (= (and b!7250309 c!1347296) b!7250310))

(assert (= (and b!7250309 (not c!1347296)) b!7250311))

(assert (= (or b!7250307 b!7250310) bm!660291))

(declare-fun m!7929074 () Bool)

(assert (=> b!7250307 m!7929074))

(assert (=> b!7250308 m!7928994))

(declare-fun m!7929076 () Bool)

(assert (=> bm!660291 m!7929076))

(assert (=> b!7250252 d!2253484))

(declare-fun d!2253490 () Bool)

(declare-fun forall!17487 (List!70509 Int) Bool)

(assert (=> d!2253490 (forall!17487 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328)) lambda!444096)))

(declare-fun lt!2584773 () Unit!163871)

(declare-fun choose!56000 (List!70509 List!70509 Int) Unit!163871)

(assert (=> d!2253490 (= lt!2584773 (choose!56000 (exprs!8083 lt!2584735) (exprs!8083 ct2!328) lambda!444096))))

(assert (=> d!2253490 (forall!17487 (exprs!8083 lt!2584735) lambda!444096)))

(assert (=> d!2253490 (= (lemmaConcatPreservesForall!1450 (exprs!8083 lt!2584735) (exprs!8083 ct2!328) lambda!444096) lt!2584773)))

(declare-fun bs!1906067 () Bool)

(assert (= bs!1906067 d!2253490))

(assert (=> bs!1906067 m!7928962))

(assert (=> bs!1906067 m!7928962))

(declare-fun m!7929078 () Bool)

(assert (=> bs!1906067 m!7929078))

(declare-fun m!7929080 () Bool)

(assert (=> bs!1906067 m!7929080))

(declare-fun m!7929082 () Bool)

(assert (=> bs!1906067 m!7929082))

(assert (=> b!7250252 d!2253490))

(declare-fun d!2253492 () Bool)

(declare-fun e!4347337 () Bool)

(assert (=> d!2253492 e!4347337))

(declare-fun res!2940613 () Bool)

(assert (=> d!2253492 (=> (not res!2940613) (not e!4347337))))

(declare-fun lt!2584776 () List!70509)

(declare-fun content!14603 (List!70509) (InoxSet Regex!18643))

(assert (=> d!2253492 (= res!2940613 (= (content!14603 lt!2584776) ((_ map or) (content!14603 (exprs!8083 lt!2584735)) (content!14603 (exprs!8083 ct2!328)))))))

(declare-fun e!4347338 () List!70509)

(assert (=> d!2253492 (= lt!2584776 e!4347338)))

(declare-fun c!1347313 () Bool)

(assert (=> d!2253492 (= c!1347313 ((_ is Nil!70385) (exprs!8083 lt!2584735)))))

(assert (=> d!2253492 (= (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328)) lt!2584776)))

(declare-fun b!7250352 () Bool)

(assert (=> b!7250352 (= e!4347337 (or (not (= (exprs!8083 ct2!328) Nil!70385)) (= lt!2584776 (exprs!8083 lt!2584735))))))

(declare-fun b!7250351 () Bool)

(declare-fun res!2940614 () Bool)

(assert (=> b!7250351 (=> (not res!2940614) (not e!4347337))))

(declare-fun size!41712 (List!70509) Int)

(assert (=> b!7250351 (= res!2940614 (= (size!41712 lt!2584776) (+ (size!41712 (exprs!8083 lt!2584735)) (size!41712 (exprs!8083 ct2!328)))))))

(declare-fun b!7250350 () Bool)

(assert (=> b!7250350 (= e!4347338 (Cons!70385 (h!76833 (exprs!8083 lt!2584735)) (++!16548 (t!384563 (exprs!8083 lt!2584735)) (exprs!8083 ct2!328))))))

(declare-fun b!7250349 () Bool)

(assert (=> b!7250349 (= e!4347338 (exprs!8083 ct2!328))))

(assert (= (and d!2253492 c!1347313) b!7250349))

(assert (= (and d!2253492 (not c!1347313)) b!7250350))

(assert (= (and d!2253492 res!2940613) b!7250351))

(assert (= (and b!7250351 res!2940614) b!7250352))

(declare-fun m!7929084 () Bool)

(assert (=> d!2253492 m!7929084))

(declare-fun m!7929086 () Bool)

(assert (=> d!2253492 m!7929086))

(declare-fun m!7929088 () Bool)

(assert (=> d!2253492 m!7929088))

(declare-fun m!7929090 () Bool)

(assert (=> b!7250351 m!7929090))

(declare-fun m!7929092 () Bool)

(assert (=> b!7250351 m!7929092))

(declare-fun m!7929094 () Bool)

(assert (=> b!7250351 m!7929094))

(declare-fun m!7929096 () Bool)

(assert (=> b!7250350 m!7929096))

(assert (=> b!7250252 d!2253492))

(declare-fun d!2253494 () Bool)

(declare-fun e!4347339 () Bool)

(assert (=> d!2253494 e!4347339))

(declare-fun res!2940615 () Bool)

(assert (=> d!2253494 (=> (not res!2940615) (not e!4347339))))

(declare-fun lt!2584777 () List!70509)

(assert (=> d!2253494 (= res!2940615 (= (content!14603 lt!2584777) ((_ map or) (content!14603 (exprs!8083 ct1!232)) (content!14603 (exprs!8083 ct2!328)))))))

(declare-fun e!4347340 () List!70509)

(assert (=> d!2253494 (= lt!2584777 e!4347340)))

(declare-fun c!1347314 () Bool)

(assert (=> d!2253494 (= c!1347314 ((_ is Nil!70385) (exprs!8083 ct1!232)))))

(assert (=> d!2253494 (= (++!16548 (exprs!8083 ct1!232) (exprs!8083 ct2!328)) lt!2584777)))

(declare-fun b!7250356 () Bool)

(assert (=> b!7250356 (= e!4347339 (or (not (= (exprs!8083 ct2!328) Nil!70385)) (= lt!2584777 (exprs!8083 ct1!232))))))

(declare-fun b!7250355 () Bool)

(declare-fun res!2940616 () Bool)

(assert (=> b!7250355 (=> (not res!2940616) (not e!4347339))))

(assert (=> b!7250355 (= res!2940616 (= (size!41712 lt!2584777) (+ (size!41712 (exprs!8083 ct1!232)) (size!41712 (exprs!8083 ct2!328)))))))

(declare-fun b!7250354 () Bool)

(assert (=> b!7250354 (= e!4347340 (Cons!70385 (h!76833 (exprs!8083 ct1!232)) (++!16548 (t!384563 (exprs!8083 ct1!232)) (exprs!8083 ct2!328))))))

(declare-fun b!7250353 () Bool)

(assert (=> b!7250353 (= e!4347340 (exprs!8083 ct2!328))))

(assert (= (and d!2253494 c!1347314) b!7250353))

(assert (= (and d!2253494 (not c!1347314)) b!7250354))

(assert (= (and d!2253494 res!2940615) b!7250355))

(assert (= (and b!7250355 res!2940616) b!7250356))

(declare-fun m!7929108 () Bool)

(assert (=> d!2253494 m!7929108))

(declare-fun m!7929110 () Bool)

(assert (=> d!2253494 m!7929110))

(assert (=> d!2253494 m!7929088))

(declare-fun m!7929112 () Bool)

(assert (=> b!7250355 m!7929112))

(declare-fun m!7929114 () Bool)

(assert (=> b!7250355 m!7929114))

(assert (=> b!7250355 m!7929094))

(declare-fun m!7929116 () Bool)

(assert (=> b!7250354 m!7929116))

(assert (=> b!7250247 d!2253494))

(declare-fun d!2253498 () Bool)

(assert (=> d!2253498 (forall!17487 (++!16548 (exprs!8083 ct1!232) (exprs!8083 ct2!328)) lambda!444096)))

(declare-fun lt!2584778 () Unit!163871)

(assert (=> d!2253498 (= lt!2584778 (choose!56000 (exprs!8083 ct1!232) (exprs!8083 ct2!328) lambda!444096))))

(assert (=> d!2253498 (forall!17487 (exprs!8083 ct1!232) lambda!444096)))

(assert (=> d!2253498 (= (lemmaConcatPreservesForall!1450 (exprs!8083 ct1!232) (exprs!8083 ct2!328) lambda!444096) lt!2584778)))

(declare-fun bs!1906068 () Bool)

(assert (= bs!1906068 d!2253498))

(assert (=> bs!1906068 m!7929020))

(assert (=> bs!1906068 m!7929020))

(declare-fun m!7929118 () Bool)

(assert (=> bs!1906068 m!7929118))

(declare-fun m!7929120 () Bool)

(assert (=> bs!1906068 m!7929120))

(declare-fun m!7929122 () Bool)

(assert (=> bs!1906068 m!7929122))

(assert (=> b!7250247 d!2253498))

(declare-fun d!2253500 () Bool)

(assert (=> d!2253500 (= (tail!14316 lt!2584739) (t!384563 lt!2584739))))

(assert (=> b!7250251 d!2253500))

(declare-fun bm!660329 () Bool)

(declare-fun call!660336 () List!70509)

(declare-fun call!660339 () List!70509)

(assert (=> bm!660329 (= call!660336 call!660339)))

(declare-fun b!7250401 () Bool)

(declare-fun e!4347370 () (InoxSet Context!15166))

(declare-fun e!4347368 () (InoxSet Context!15166))

(assert (=> b!7250401 (= e!4347370 e!4347368)))

(declare-fun c!1347338 () Bool)

(assert (=> b!7250401 (= c!1347338 ((_ is Union!18643) (h!76833 (exprs!8083 ct1!232))))))

(declare-fun b!7250403 () Bool)

(declare-fun e!4347365 () (InoxSet Context!15166))

(declare-fun call!660335 () (InoxSet Context!15166))

(declare-fun call!660337 () (InoxSet Context!15166))

(assert (=> b!7250403 (= e!4347365 ((_ map or) call!660335 call!660337))))

(declare-fun b!7250404 () Bool)

(declare-fun e!4347366 () (InoxSet Context!15166))

(assert (=> b!7250404 (= e!4347365 e!4347366)))

(declare-fun c!1347336 () Bool)

(assert (=> b!7250404 (= c!1347336 ((_ is Concat!27488) (h!76833 (exprs!8083 ct1!232))))))

(declare-fun bm!660330 () Bool)

(declare-fun c!1347335 () Bool)

(declare-fun $colon$colon!2916 (List!70509 Regex!18643) List!70509)

(assert (=> bm!660330 (= call!660339 ($colon$colon!2916 (exprs!8083 (Context!15167 (tail!14316 lt!2584739))) (ite (or c!1347335 c!1347336) (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (h!76833 (exprs!8083 ct1!232)))))))

(declare-fun b!7250405 () Bool)

(declare-fun c!1347337 () Bool)

(assert (=> b!7250405 (= c!1347337 ((_ is Star!18643) (h!76833 (exprs!8083 ct1!232))))))

(declare-fun e!4347369 () (InoxSet Context!15166))

(assert (=> b!7250405 (= e!4347366 e!4347369)))

(declare-fun b!7250406 () Bool)

(declare-fun call!660334 () (InoxSet Context!15166))

(assert (=> b!7250406 (= e!4347369 call!660334)))

(declare-fun bm!660331 () Bool)

(assert (=> bm!660331 (= call!660334 call!660337)))

(declare-fun b!7250402 () Bool)

(assert (=> b!7250402 (= e!4347366 call!660334)))

(declare-fun d!2253502 () Bool)

(declare-fun c!1347339 () Bool)

(assert (=> d!2253502 (= c!1347339 (and ((_ is ElementMatch!18643) (h!76833 (exprs!8083 ct1!232))) (= (c!1347277 (h!76833 (exprs!8083 ct1!232))) (h!76835 s1!1971))))))

(assert (=> d!2253502 (= (derivationStepZipperDown!2637 (h!76833 (exprs!8083 ct1!232)) (Context!15167 (tail!14316 lt!2584739)) (h!76835 s1!1971)) e!4347370)))

(declare-fun b!7250407 () Bool)

(declare-fun e!4347367 () Bool)

(assert (=> b!7250407 (= c!1347335 e!4347367)))

(declare-fun res!2940621 () Bool)

(assert (=> b!7250407 (=> (not res!2940621) (not e!4347367))))

(assert (=> b!7250407 (= res!2940621 ((_ is Concat!27488) (h!76833 (exprs!8083 ct1!232))))))

(assert (=> b!7250407 (= e!4347368 e!4347365)))

(declare-fun b!7250408 () Bool)

(declare-fun call!660338 () (InoxSet Context!15166))

(assert (=> b!7250408 (= e!4347368 ((_ map or) call!660338 call!660335))))

(declare-fun b!7250409 () Bool)

(assert (=> b!7250409 (= e!4347367 (nullable!7903 (regOne!37798 (h!76833 (exprs!8083 ct1!232)))))))

(declare-fun b!7250410 () Bool)

(assert (=> b!7250410 (= e!4347370 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (tail!14316 lt!2584739)) true))))

(declare-fun bm!660332 () Bool)

(assert (=> bm!660332 (= call!660338 (derivationStepZipperDown!2637 (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))) (ite (or c!1347338 c!1347335) (Context!15167 (tail!14316 lt!2584739)) (Context!15167 call!660336)) (h!76835 s1!1971)))))

(declare-fun b!7250411 () Bool)

(assert (=> b!7250411 (= e!4347369 ((as const (Array Context!15166 Bool)) false))))

(declare-fun bm!660333 () Bool)

(assert (=> bm!660333 (= call!660335 (derivationStepZipperDown!2637 (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))) (ite c!1347338 (Context!15167 (tail!14316 lt!2584739)) (Context!15167 call!660339)) (h!76835 s1!1971)))))

(declare-fun bm!660334 () Bool)

(assert (=> bm!660334 (= call!660337 call!660338)))

(assert (= (and d!2253502 c!1347339) b!7250410))

(assert (= (and d!2253502 (not c!1347339)) b!7250401))

(assert (= (and b!7250401 c!1347338) b!7250408))

(assert (= (and b!7250401 (not c!1347338)) b!7250407))

(assert (= (and b!7250407 res!2940621) b!7250409))

(assert (= (and b!7250407 c!1347335) b!7250403))

(assert (= (and b!7250407 (not c!1347335)) b!7250404))

(assert (= (and b!7250404 c!1347336) b!7250402))

(assert (= (and b!7250404 (not c!1347336)) b!7250405))

(assert (= (and b!7250405 c!1347337) b!7250406))

(assert (= (and b!7250405 (not c!1347337)) b!7250411))

(assert (= (or b!7250402 b!7250406) bm!660329))

(assert (= (or b!7250402 b!7250406) bm!660331))

(assert (= (or b!7250403 bm!660329) bm!660330))

(assert (= (or b!7250403 bm!660331) bm!660334))

(assert (= (or b!7250408 b!7250403) bm!660333))

(assert (= (or b!7250408 bm!660334) bm!660332))

(declare-fun m!7929164 () Bool)

(assert (=> b!7250410 m!7929164))

(declare-fun m!7929166 () Bool)

(assert (=> bm!660330 m!7929166))

(declare-fun m!7929168 () Bool)

(assert (=> bm!660333 m!7929168))

(declare-fun m!7929170 () Bool)

(assert (=> bm!660332 m!7929170))

(declare-fun m!7929172 () Bool)

(assert (=> b!7250409 m!7929172))

(assert (=> b!7250251 d!2253502))

(assert (=> b!7250251 d!2253498))

(assert (=> b!7250251 d!2253484))

(declare-fun d!2253524 () Bool)

(declare-fun dynLambda!28734 (Int Context!15166) (InoxSet Context!15166))

(assert (=> d!2253524 (= (flatMap!2808 lt!2584736 lambda!444098) (dynLambda!28734 lambda!444098 lt!2584738))))

(declare-fun lt!2584785 () Unit!163871)

(declare-fun choose!56003 ((InoxSet Context!15166) Context!15166 Int) Unit!163871)

(assert (=> d!2253524 (= lt!2584785 (choose!56003 lt!2584736 lt!2584738 lambda!444098))))

(assert (=> d!2253524 (= lt!2584736 (store ((as const (Array Context!15166 Bool)) false) lt!2584738 true))))

(assert (=> d!2253524 (= (lemmaFlatMapOnSingletonSet!2212 lt!2584736 lt!2584738 lambda!444098) lt!2584785)))

(declare-fun b_lambda!278357 () Bool)

(assert (=> (not b_lambda!278357) (not d!2253524)))

(declare-fun bs!1906078 () Bool)

(assert (= bs!1906078 d!2253524))

(assert (=> bs!1906078 m!7928998))

(declare-fun m!7929188 () Bool)

(assert (=> bs!1906078 m!7929188))

(declare-fun m!7929190 () Bool)

(assert (=> bs!1906078 m!7929190))

(assert (=> bs!1906078 m!7929018))

(assert (=> b!7250251 d!2253524))

(declare-fun d!2253530 () Bool)

(declare-fun choose!56005 ((InoxSet Context!15166) Int) (InoxSet Context!15166))

(assert (=> d!2253530 (= (flatMap!2808 lt!2584736 lambda!444098) (choose!56005 lt!2584736 lambda!444098))))

(declare-fun bs!1906079 () Bool)

(assert (= bs!1906079 d!2253530))

(declare-fun m!7929192 () Bool)

(assert (=> bs!1906079 m!7929192))

(assert (=> b!7250251 d!2253530))

(declare-fun d!2253532 () Bool)

(declare-fun nullableFct!3100 (Regex!18643) Bool)

(assert (=> d!2253532 (= (nullable!7903 (h!76833 (exprs!8083 ct1!232))) (nullableFct!3100 (h!76833 (exprs!8083 ct1!232))))))

(declare-fun bs!1906080 () Bool)

(assert (= bs!1906080 d!2253532))

(declare-fun m!7929194 () Bool)

(assert (=> bs!1906080 m!7929194))

(assert (=> b!7250251 d!2253532))

(declare-fun d!2253534 () Bool)

(assert (=> d!2253534 (= (flatMap!2808 lt!2584744 lambda!444098) (choose!56005 lt!2584744 lambda!444098))))

(declare-fun bs!1906081 () Bool)

(assert (= bs!1906081 d!2253534))

(declare-fun m!7929196 () Bool)

(assert (=> bs!1906081 m!7929196))

(assert (=> b!7250251 d!2253534))

(declare-fun d!2253536 () Bool)

(assert (=> d!2253536 (= (flatMap!2808 lt!2584744 lambda!444098) (dynLambda!28734 lambda!444098 ct1!232))))

(declare-fun lt!2584788 () Unit!163871)

(assert (=> d!2253536 (= lt!2584788 (choose!56003 lt!2584744 ct1!232 lambda!444098))))

(assert (=> d!2253536 (= lt!2584744 (store ((as const (Array Context!15166 Bool)) false) ct1!232 true))))

(assert (=> d!2253536 (= (lemmaFlatMapOnSingletonSet!2212 lt!2584744 ct1!232 lambda!444098) lt!2584788)))

(declare-fun b_lambda!278359 () Bool)

(assert (=> (not b_lambda!278359) (not d!2253536)))

(declare-fun bs!1906082 () Bool)

(assert (= bs!1906082 d!2253536))

(assert (=> bs!1906082 m!7929004))

(declare-fun m!7929198 () Bool)

(assert (=> bs!1906082 m!7929198))

(declare-fun m!7929200 () Bool)

(assert (=> bs!1906082 m!7929200))

(assert (=> bs!1906082 m!7928982))

(assert (=> b!7250251 d!2253536))

(declare-fun call!660340 () (InoxSet Context!15166))

(declare-fun b!7250424 () Bool)

(declare-fun e!4347378 () (InoxSet Context!15166))

(assert (=> b!7250424 (= e!4347378 ((_ map or) call!660340 (derivationStepZipperUp!2467 (Context!15167 (t!384563 (exprs!8083 lt!2584738))) (h!76835 s1!1971))))))

(declare-fun b!7250425 () Bool)

(declare-fun e!4347377 () Bool)

(assert (=> b!7250425 (= e!4347377 (nullable!7903 (h!76833 (exprs!8083 lt!2584738))))))

(declare-fun bm!660335 () Bool)

(assert (=> bm!660335 (= call!660340 (derivationStepZipperDown!2637 (h!76833 (exprs!8083 lt!2584738)) (Context!15167 (t!384563 (exprs!8083 lt!2584738))) (h!76835 s1!1971)))))

(declare-fun d!2253538 () Bool)

(declare-fun c!1347345 () Bool)

(assert (=> d!2253538 (= c!1347345 e!4347377)))

(declare-fun res!2940626 () Bool)

(assert (=> d!2253538 (=> (not res!2940626) (not e!4347377))))

(assert (=> d!2253538 (= res!2940626 ((_ is Cons!70385) (exprs!8083 lt!2584738)))))

(assert (=> d!2253538 (= (derivationStepZipperUp!2467 lt!2584738 (h!76835 s1!1971)) e!4347378)))

(declare-fun b!7250426 () Bool)

(declare-fun e!4347376 () (InoxSet Context!15166))

(assert (=> b!7250426 (= e!4347378 e!4347376)))

(declare-fun c!1347346 () Bool)

(assert (=> b!7250426 (= c!1347346 ((_ is Cons!70385) (exprs!8083 lt!2584738)))))

(declare-fun b!7250427 () Bool)

(assert (=> b!7250427 (= e!4347376 call!660340)))

(declare-fun b!7250428 () Bool)

(assert (=> b!7250428 (= e!4347376 ((as const (Array Context!15166 Bool)) false))))

(assert (= (and d!2253538 res!2940626) b!7250425))

(assert (= (and d!2253538 c!1347345) b!7250424))

(assert (= (and d!2253538 (not c!1347345)) b!7250426))

(assert (= (and b!7250426 c!1347346) b!7250427))

(assert (= (and b!7250426 (not c!1347346)) b!7250428))

(assert (= (or b!7250424 b!7250427) bm!660335))

(declare-fun m!7929202 () Bool)

(assert (=> b!7250424 m!7929202))

(declare-fun m!7929204 () Bool)

(assert (=> b!7250425 m!7929204))

(declare-fun m!7929206 () Bool)

(assert (=> bm!660335 m!7929206))

(assert (=> b!7250251 d!2253538))

(declare-fun d!2253540 () Bool)

(declare-fun c!1347347 () Bool)

(assert (=> d!2253540 (= c!1347347 (isEmpty!40534 (t!384565 s1!1971)))))

(declare-fun e!4347379 () Bool)

(assert (=> d!2253540 (= (matchZipper!3553 lt!2584751 (t!384565 s1!1971)) e!4347379)))

(declare-fun b!7250429 () Bool)

(assert (=> b!7250429 (= e!4347379 (nullableZipper!2911 lt!2584751))))

(declare-fun b!7250430 () Bool)

(assert (=> b!7250430 (= e!4347379 (matchZipper!3553 (derivationStepZipper!3421 lt!2584751 (head!14901 (t!384565 s1!1971))) (tail!14317 (t!384565 s1!1971))))))

(assert (= (and d!2253540 c!1347347) b!7250429))

(assert (= (and d!2253540 (not c!1347347)) b!7250430))

(declare-fun m!7929208 () Bool)

(assert (=> d!2253540 m!7929208))

(declare-fun m!7929210 () Bool)

(assert (=> b!7250429 m!7929210))

(declare-fun m!7929212 () Bool)

(assert (=> b!7250430 m!7929212))

(assert (=> b!7250430 m!7929212))

(declare-fun m!7929214 () Bool)

(assert (=> b!7250430 m!7929214))

(declare-fun m!7929216 () Bool)

(assert (=> b!7250430 m!7929216))

(assert (=> b!7250430 m!7929214))

(assert (=> b!7250430 m!7929216))

(declare-fun m!7929218 () Bool)

(assert (=> b!7250430 m!7929218))

(assert (=> b!7250245 d!2253540))

(declare-fun bs!1906083 () Bool)

(declare-fun d!2253542 () Bool)

(assert (= bs!1906083 (and d!2253542 b!7250251)))

(declare-fun lambda!444110 () Int)

(assert (=> bs!1906083 (= lambda!444110 lambda!444098)))

(assert (=> d!2253542 true))

(assert (=> d!2253542 (= (derivationStepZipper!3421 lt!2584744 (h!76835 s1!1971)) (flatMap!2808 lt!2584744 lambda!444110))))

(declare-fun bs!1906084 () Bool)

(assert (= bs!1906084 d!2253542))

(declare-fun m!7929234 () Bool)

(assert (=> bs!1906084 m!7929234))

(assert (=> b!7250245 d!2253542))

(declare-fun d!2253546 () Bool)

(declare-fun c!1347351 () Bool)

(assert (=> d!2253546 (= c!1347351 (isEmpty!40534 s1!1971))))

(declare-fun e!4347382 () Bool)

(assert (=> d!2253546 (= (matchZipper!3553 lt!2584744 s1!1971) e!4347382)))

(declare-fun b!7250437 () Bool)

(assert (=> b!7250437 (= e!4347382 (nullableZipper!2911 lt!2584744))))

(declare-fun b!7250438 () Bool)

(assert (=> b!7250438 (= e!4347382 (matchZipper!3553 (derivationStepZipper!3421 lt!2584744 (head!14901 s1!1971)) (tail!14317 s1!1971)))))

(assert (= (and d!2253546 c!1347351) b!7250437))

(assert (= (and d!2253546 (not c!1347351)) b!7250438))

(declare-fun m!7929236 () Bool)

(assert (=> d!2253546 m!7929236))

(declare-fun m!7929238 () Bool)

(assert (=> b!7250437 m!7929238))

(declare-fun m!7929240 () Bool)

(assert (=> b!7250438 m!7929240))

(assert (=> b!7250438 m!7929240))

(declare-fun m!7929242 () Bool)

(assert (=> b!7250438 m!7929242))

(declare-fun m!7929244 () Bool)

(assert (=> b!7250438 m!7929244))

(assert (=> b!7250438 m!7929242))

(assert (=> b!7250438 m!7929244))

(declare-fun m!7929246 () Bool)

(assert (=> b!7250438 m!7929246))

(assert (=> start!705564 d!2253546))

(declare-fun bs!1906085 () Bool)

(declare-fun d!2253548 () Bool)

(assert (= bs!1906085 (and d!2253548 b!7250247)))

(declare-fun lambda!444113 () Int)

(assert (=> bs!1906085 (= lambda!444113 lambda!444096)))

(declare-fun bs!1906086 () Bool)

(assert (= bs!1906086 (and d!2253548 d!2253472)))

(assert (=> bs!1906086 (= lambda!444113 lambda!444101)))

(assert (=> d!2253548 (= (inv!89617 ct1!232) (forall!17487 (exprs!8083 ct1!232) lambda!444113))))

(declare-fun bs!1906087 () Bool)

(assert (= bs!1906087 d!2253548))

(declare-fun m!7929248 () Bool)

(assert (=> bs!1906087 m!7929248))

(assert (=> start!705564 d!2253548))

(declare-fun bs!1906088 () Bool)

(declare-fun d!2253550 () Bool)

(assert (= bs!1906088 (and d!2253550 b!7250247)))

(declare-fun lambda!444114 () Int)

(assert (=> bs!1906088 (= lambda!444114 lambda!444096)))

(declare-fun bs!1906089 () Bool)

(assert (= bs!1906089 (and d!2253550 d!2253472)))

(assert (=> bs!1906089 (= lambda!444114 lambda!444101)))

(declare-fun bs!1906090 () Bool)

(assert (= bs!1906090 (and d!2253550 d!2253548)))

(assert (=> bs!1906090 (= lambda!444114 lambda!444113)))

(assert (=> d!2253550 (= (inv!89617 ct2!328) (forall!17487 (exprs!8083 ct2!328) lambda!444114))))

(declare-fun bs!1906091 () Bool)

(assert (= bs!1906091 d!2253550))

(declare-fun m!7929250 () Bool)

(assert (=> bs!1906091 m!7929250))

(assert (=> start!705564 d!2253550))

(declare-fun bs!1906092 () Bool)

(declare-fun d!2253552 () Bool)

(assert (= bs!1906092 (and d!2253552 b!7250247)))

(declare-fun lambda!444115 () Int)

(assert (=> bs!1906092 (= lambda!444115 lambda!444096)))

(declare-fun bs!1906093 () Bool)

(assert (= bs!1906093 (and d!2253552 d!2253472)))

(assert (=> bs!1906093 (= lambda!444115 lambda!444101)))

(declare-fun bs!1906094 () Bool)

(assert (= bs!1906094 (and d!2253552 d!2253548)))

(assert (=> bs!1906094 (= lambda!444115 lambda!444113)))

(declare-fun bs!1906095 () Bool)

(assert (= bs!1906095 (and d!2253552 d!2253550)))

(assert (=> bs!1906095 (= lambda!444115 lambda!444114)))

(assert (=> d!2253552 (= (inv!89617 lt!2584743) (forall!17487 (exprs!8083 lt!2584743) lambda!444115))))

(declare-fun bs!1906096 () Bool)

(assert (= bs!1906096 d!2253552))

(declare-fun m!7929252 () Bool)

(assert (=> bs!1906096 m!7929252))

(assert (=> b!7250249 d!2253552))

(declare-fun d!2253554 () Bool)

(assert (=> d!2253554 (= (tail!14316 (exprs!8083 ct1!232)) (t!384563 (exprs!8083 ct1!232)))))

(assert (=> b!7250248 d!2253554))

(assert (=> b!7250248 d!2253498))

(declare-fun bm!660336 () Bool)

(declare-fun call!660343 () List!70509)

(declare-fun call!660346 () List!70509)

(assert (=> bm!660336 (= call!660343 call!660346)))

(declare-fun b!7250439 () Bool)

(declare-fun e!4347388 () (InoxSet Context!15166))

(declare-fun e!4347386 () (InoxSet Context!15166))

(assert (=> b!7250439 (= e!4347388 e!4347386)))

(declare-fun c!1347355 () Bool)

(assert (=> b!7250439 (= c!1347355 ((_ is Union!18643) (h!76833 (exprs!8083 ct1!232))))))

(declare-fun b!7250441 () Bool)

(declare-fun e!4347383 () (InoxSet Context!15166))

(declare-fun call!660342 () (InoxSet Context!15166))

(declare-fun call!660344 () (InoxSet Context!15166))

(assert (=> b!7250441 (= e!4347383 ((_ map or) call!660342 call!660344))))

(declare-fun b!7250442 () Bool)

(declare-fun e!4347384 () (InoxSet Context!15166))

(assert (=> b!7250442 (= e!4347383 e!4347384)))

(declare-fun c!1347353 () Bool)

(assert (=> b!7250442 (= c!1347353 ((_ is Concat!27488) (h!76833 (exprs!8083 ct1!232))))))

(declare-fun bm!660337 () Bool)

(declare-fun c!1347352 () Bool)

(assert (=> bm!660337 (= call!660346 ($colon$colon!2916 (exprs!8083 lt!2584743) (ite (or c!1347352 c!1347353) (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (h!76833 (exprs!8083 ct1!232)))))))

(declare-fun b!7250443 () Bool)

(declare-fun c!1347354 () Bool)

(assert (=> b!7250443 (= c!1347354 ((_ is Star!18643) (h!76833 (exprs!8083 ct1!232))))))

(declare-fun e!4347387 () (InoxSet Context!15166))

(assert (=> b!7250443 (= e!4347384 e!4347387)))

(declare-fun b!7250444 () Bool)

(declare-fun call!660341 () (InoxSet Context!15166))

(assert (=> b!7250444 (= e!4347387 call!660341)))

(declare-fun bm!660338 () Bool)

(assert (=> bm!660338 (= call!660341 call!660344)))

(declare-fun b!7250440 () Bool)

(assert (=> b!7250440 (= e!4347384 call!660341)))

(declare-fun d!2253556 () Bool)

(declare-fun c!1347356 () Bool)

(assert (=> d!2253556 (= c!1347356 (and ((_ is ElementMatch!18643) (h!76833 (exprs!8083 ct1!232))) (= (c!1347277 (h!76833 (exprs!8083 ct1!232))) (h!76835 s1!1971))))))

(assert (=> d!2253556 (= (derivationStepZipperDown!2637 (h!76833 (exprs!8083 ct1!232)) lt!2584743 (h!76835 s1!1971)) e!4347388)))

(declare-fun b!7250445 () Bool)

(declare-fun e!4347385 () Bool)

(assert (=> b!7250445 (= c!1347352 e!4347385)))

(declare-fun res!2940629 () Bool)

(assert (=> b!7250445 (=> (not res!2940629) (not e!4347385))))

(assert (=> b!7250445 (= res!2940629 ((_ is Concat!27488) (h!76833 (exprs!8083 ct1!232))))))

(assert (=> b!7250445 (= e!4347386 e!4347383)))

(declare-fun b!7250446 () Bool)

(declare-fun call!660345 () (InoxSet Context!15166))

(assert (=> b!7250446 (= e!4347386 ((_ map or) call!660345 call!660342))))

(declare-fun b!7250447 () Bool)

(assert (=> b!7250447 (= e!4347385 (nullable!7903 (regOne!37798 (h!76833 (exprs!8083 ct1!232)))))))

(declare-fun b!7250448 () Bool)

(assert (=> b!7250448 (= e!4347388 (store ((as const (Array Context!15166 Bool)) false) lt!2584743 true))))

(declare-fun bm!660339 () Bool)

(assert (=> bm!660339 (= call!660345 (derivationStepZipperDown!2637 (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))) (ite (or c!1347355 c!1347352) lt!2584743 (Context!15167 call!660343)) (h!76835 s1!1971)))))

(declare-fun b!7250449 () Bool)

(assert (=> b!7250449 (= e!4347387 ((as const (Array Context!15166 Bool)) false))))

(declare-fun bm!660340 () Bool)

(assert (=> bm!660340 (= call!660342 (derivationStepZipperDown!2637 (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))) (ite c!1347355 lt!2584743 (Context!15167 call!660346)) (h!76835 s1!1971)))))

(declare-fun bm!660341 () Bool)

(assert (=> bm!660341 (= call!660344 call!660345)))

(assert (= (and d!2253556 c!1347356) b!7250448))

(assert (= (and d!2253556 (not c!1347356)) b!7250439))

(assert (= (and b!7250439 c!1347355) b!7250446))

(assert (= (and b!7250439 (not c!1347355)) b!7250445))

(assert (= (and b!7250445 res!2940629) b!7250447))

(assert (= (and b!7250445 c!1347352) b!7250441))

(assert (= (and b!7250445 (not c!1347352)) b!7250442))

(assert (= (and b!7250442 c!1347353) b!7250440))

(assert (= (and b!7250442 (not c!1347353)) b!7250443))

(assert (= (and b!7250443 c!1347354) b!7250444))

(assert (= (and b!7250443 (not c!1347354)) b!7250449))

(assert (= (or b!7250440 b!7250444) bm!660336))

(assert (= (or b!7250440 b!7250444) bm!660338))

(assert (= (or b!7250441 bm!660336) bm!660337))

(assert (= (or b!7250441 bm!660338) bm!660341))

(assert (= (or b!7250446 b!7250441) bm!660340))

(assert (= (or b!7250446 bm!660341) bm!660339))

(declare-fun m!7929254 () Bool)

(assert (=> b!7250448 m!7929254))

(declare-fun m!7929256 () Bool)

(assert (=> bm!660337 m!7929256))

(declare-fun m!7929258 () Bool)

(assert (=> bm!660340 m!7929258))

(declare-fun m!7929260 () Bool)

(assert (=> bm!660339 m!7929260))

(assert (=> b!7250447 m!7929172))

(assert (=> b!7250248 d!2253556))

(declare-fun d!2253558 () Bool)

(assert (=> d!2253558 (= (isEmpty!40533 lt!2584739) ((_ is Nil!70385) lt!2584739))))

(assert (=> b!7250248 d!2253558))

(assert (=> b!7250248 d!2253538))

(declare-fun d!2253560 () Bool)

(declare-fun c!1347357 () Bool)

(assert (=> d!2253560 (= c!1347357 (isEmpty!40534 s2!1849))))

(declare-fun e!4347389 () Bool)

(assert (=> d!2253560 (= (matchZipper!3553 (store ((as const (Array Context!15166 Bool)) false) ct2!328 true) s2!1849) e!4347389)))

(declare-fun b!7250450 () Bool)

(assert (=> b!7250450 (= e!4347389 (nullableZipper!2911 (store ((as const (Array Context!15166 Bool)) false) ct2!328 true)))))

(declare-fun b!7250451 () Bool)

(assert (=> b!7250451 (= e!4347389 (matchZipper!3553 (derivationStepZipper!3421 (store ((as const (Array Context!15166 Bool)) false) ct2!328 true) (head!14901 s2!1849)) (tail!14317 s2!1849)))))

(assert (= (and d!2253560 c!1347357) b!7250450))

(assert (= (and d!2253560 (not c!1347357)) b!7250451))

(declare-fun m!7929262 () Bool)

(assert (=> d!2253560 m!7929262))

(assert (=> b!7250450 m!7928976))

(declare-fun m!7929264 () Bool)

(assert (=> b!7250450 m!7929264))

(declare-fun m!7929266 () Bool)

(assert (=> b!7250451 m!7929266))

(assert (=> b!7250451 m!7928976))

(assert (=> b!7250451 m!7929266))

(declare-fun m!7929268 () Bool)

(assert (=> b!7250451 m!7929268))

(declare-fun m!7929270 () Bool)

(assert (=> b!7250451 m!7929270))

(assert (=> b!7250451 m!7929268))

(assert (=> b!7250451 m!7929270))

(declare-fun m!7929272 () Bool)

(assert (=> b!7250451 m!7929272))

(assert (=> b!7250243 d!2253560))

(declare-fun d!2253562 () Bool)

(declare-fun lt!2584798 () Bool)

(assert (=> d!2253562 (= lt!2584798 (exists!4365 (toList!11472 lt!2584751) lambda!444097))))

(declare-fun choose!56006 ((InoxSet Context!15166) Int) Bool)

(assert (=> d!2253562 (= lt!2584798 (choose!56006 lt!2584751 lambda!444097))))

(assert (=> d!2253562 (= (exists!4364 lt!2584751 lambda!444097) lt!2584798)))

(declare-fun bs!1906100 () Bool)

(assert (= bs!1906100 d!2253562))

(assert (=> bs!1906100 m!7928974))

(assert (=> bs!1906100 m!7928974))

(declare-fun m!7929282 () Bool)

(assert (=> bs!1906100 m!7929282))

(declare-fun m!7929284 () Bool)

(assert (=> bs!1906100 m!7929284))

(assert (=> b!7250242 d!2253562))

(declare-fun bs!1906102 () Bool)

(declare-fun d!2253568 () Bool)

(assert (= bs!1906102 (and d!2253568 b!7250242)))

(declare-fun lambda!444121 () Int)

(assert (=> bs!1906102 (not (= lambda!444121 lambda!444097))))

(assert (=> d!2253568 true))

(declare-fun order!28975 () Int)

(declare-fun dynLambda!28735 (Int Int) Int)

(assert (=> d!2253568 (< (dynLambda!28735 order!28975 lambda!444097) (dynLambda!28735 order!28975 lambda!444121))))

(declare-fun forall!17489 (List!70510 Int) Bool)

(assert (=> d!2253568 (= (exists!4365 lt!2584734 lambda!444097) (not (forall!17489 lt!2584734 lambda!444121)))))

(declare-fun bs!1906103 () Bool)

(assert (= bs!1906103 d!2253568))

(declare-fun m!7929304 () Bool)

(assert (=> bs!1906103 m!7929304))

(assert (=> b!7250242 d!2253568))

(declare-fun bs!1906104 () Bool)

(declare-fun d!2253574 () Bool)

(assert (= bs!1906104 (and d!2253574 b!7250242)))

(declare-fun lambda!444124 () Int)

(assert (=> bs!1906104 (= lambda!444124 lambda!444097)))

(declare-fun bs!1906105 () Bool)

(assert (= bs!1906105 (and d!2253574 d!2253568)))

(assert (=> bs!1906105 (not (= lambda!444124 lambda!444121))))

(assert (=> d!2253574 true))

(assert (=> d!2253574 (exists!4365 lt!2584734 lambda!444124)))

(declare-fun lt!2584806 () Unit!163871)

(declare-fun choose!56007 (List!70510 List!70511) Unit!163871)

(assert (=> d!2253574 (= lt!2584806 (choose!56007 lt!2584734 (t!384565 s1!1971)))))

(declare-fun content!14604 (List!70510) (InoxSet Context!15166))

(assert (=> d!2253574 (matchZipper!3553 (content!14604 lt!2584734) (t!384565 s1!1971))))

(assert (=> d!2253574 (= (lemmaZipperMatchesExistsMatchingContext!746 lt!2584734 (t!384565 s1!1971)) lt!2584806)))

(declare-fun bs!1906106 () Bool)

(assert (= bs!1906106 d!2253574))

(declare-fun m!7929330 () Bool)

(assert (=> bs!1906106 m!7929330))

(declare-fun m!7929332 () Bool)

(assert (=> bs!1906106 m!7929332))

(declare-fun m!7929334 () Bool)

(assert (=> bs!1906106 m!7929334))

(assert (=> bs!1906106 m!7929334))

(declare-fun m!7929336 () Bool)

(assert (=> bs!1906106 m!7929336))

(assert (=> b!7250242 d!2253574))

(declare-fun d!2253580 () Bool)

(declare-fun e!4347404 () Bool)

(assert (=> d!2253580 e!4347404))

(declare-fun res!2940643 () Bool)

(assert (=> d!2253580 (=> (not res!2940643) (not e!4347404))))

(declare-fun lt!2584812 () List!70510)

(declare-fun noDuplicate!2987 (List!70510) Bool)

(assert (=> d!2253580 (= res!2940643 (noDuplicate!2987 lt!2584812))))

(declare-fun choose!56008 ((InoxSet Context!15166)) List!70510)

(assert (=> d!2253580 (= lt!2584812 (choose!56008 lt!2584751))))

(assert (=> d!2253580 (= (toList!11472 lt!2584751) lt!2584812)))

(declare-fun b!7250477 () Bool)

(assert (=> b!7250477 (= e!4347404 (= (content!14604 lt!2584812) lt!2584751))))

(assert (= (and d!2253580 res!2940643) b!7250477))

(declare-fun m!7929340 () Bool)

(assert (=> d!2253580 m!7929340))

(declare-fun m!7929342 () Bool)

(assert (=> d!2253580 m!7929342))

(declare-fun m!7929346 () Bool)

(assert (=> b!7250477 m!7929346))

(assert (=> b!7250242 d!2253580))

(declare-fun b!7250484 () Bool)

(declare-fun e!4347408 () Bool)

(declare-fun tp!2037375 () Bool)

(declare-fun tp!2037376 () Bool)

(assert (=> b!7250484 (= e!4347408 (and tp!2037375 tp!2037376))))

(assert (=> b!7250246 (= tp!2037369 e!4347408)))

(assert (= (and b!7250246 ((_ is Cons!70385) (exprs!8083 ct1!232))) b!7250484))

(declare-fun b!7250489 () Bool)

(declare-fun e!4347411 () Bool)

(declare-fun tp!2037379 () Bool)

(assert (=> b!7250489 (= e!4347411 (and tp_is_empty!46751 tp!2037379))))

(assert (=> b!7250241 (= tp!2037370 e!4347411)))

(assert (= (and b!7250241 ((_ is Cons!70387) (t!384565 s2!1849))) b!7250489))

(declare-fun b!7250490 () Bool)

(declare-fun e!4347412 () Bool)

(declare-fun tp!2037380 () Bool)

(declare-fun tp!2037381 () Bool)

(assert (=> b!7250490 (= e!4347412 (and tp!2037380 tp!2037381))))

(assert (=> b!7250250 (= tp!2037367 e!4347412)))

(assert (= (and b!7250250 ((_ is Cons!70385) (exprs!8083 ct2!328))) b!7250490))

(declare-fun b!7250491 () Bool)

(declare-fun e!4347413 () Bool)

(declare-fun tp!2037382 () Bool)

(assert (=> b!7250491 (= e!4347413 (and tp_is_empty!46751 tp!2037382))))

(assert (=> b!7250244 (= tp!2037368 e!4347413)))

(assert (= (and b!7250244 ((_ is Cons!70387) (t!384565 s1!1971))) b!7250491))

(declare-fun b_lambda!278363 () Bool)

(assert (= b_lambda!278359 (or b!7250251 b_lambda!278363)))

(declare-fun bs!1906116 () Bool)

(declare-fun d!2253588 () Bool)

(assert (= bs!1906116 (and d!2253588 b!7250251)))

(assert (=> bs!1906116 (= (dynLambda!28734 lambda!444098 ct1!232) (derivationStepZipperUp!2467 ct1!232 (h!76835 s1!1971)))))

(assert (=> bs!1906116 m!7928954))

(assert (=> d!2253536 d!2253588))

(declare-fun b_lambda!278365 () Bool)

(assert (= b_lambda!278351 (or b!7250242 b_lambda!278365)))

(declare-fun bs!1906117 () Bool)

(declare-fun d!2253592 () Bool)

(assert (= bs!1906117 (and d!2253592 b!7250242)))

(assert (=> bs!1906117 (= (dynLambda!28732 lambda!444097 lt!2584758) (matchZipper!3553 (store ((as const (Array Context!15166 Bool)) false) lt!2584758 true) (t!384565 s1!1971)))))

(declare-fun m!7929366 () Bool)

(assert (=> bs!1906117 m!7929366))

(assert (=> bs!1906117 m!7929366))

(declare-fun m!7929368 () Bool)

(assert (=> bs!1906117 m!7929368))

(assert (=> d!2253470 d!2253592))

(declare-fun b_lambda!278367 () Bool)

(assert (= b_lambda!278357 (or b!7250251 b_lambda!278367)))

(declare-fun bs!1906118 () Bool)

(declare-fun d!2253594 () Bool)

(assert (= bs!1906118 (and d!2253594 b!7250251)))

(assert (=> bs!1906118 (= (dynLambda!28734 lambda!444098 lt!2584738) (derivationStepZipperUp!2467 lt!2584738 (h!76835 s1!1971)))))

(assert (=> bs!1906118 m!7929008))

(assert (=> d!2253524 d!2253594))

(check-sat (not bm!660340) (not b!7250477) (not d!2253580) (not b!7250354) (not b!7250489) (not b!7250291) (not b!7250451) (not d!2253474) (not d!2253490) (not d!2253480) (not b_lambda!278363) (not bs!1906117) (not d!2253550) (not b!7250307) (not d!2253532) (not bm!660330) (not d!2253494) (not b!7250308) (not bs!1906118) (not b!7250271) (not b!7250450) (not d!2253568) (not d!2253534) (not bm!660339) (not bm!660337) (not d!2253560) (not bs!1906116) (not b!7250350) (not d!2253470) (not b!7250491) tp_is_empty!46751 (not bm!660335) (not d!2253536) (not b!7250351) (not d!2253498) (not b_lambda!278365) (not b!7250437) (not b!7250355) (not d!2253542) (not b!7250270) (not b!7250430) (not b!7250484) (not b!7250425) (not b!7250409) (not d!2253562) (not b_lambda!278367) (not b!7250490) (not bm!660333) (not bm!660332) (not b!7250290) (not d!2253552) (not d!2253540) (not d!2253546) (not b!7250429) (not bm!660291) (not b!7250424) (not d!2253492) (not b!7250438) (not d!2253472) (not d!2253548) (not b!7250447) (not d!2253574) (not d!2253530) (not d!2253524))
(check-sat)
(get-model)

(declare-fun b!7250511 () Bool)

(declare-fun res!2940647 () Bool)

(declare-fun e!4347426 () Bool)

(assert (=> b!7250511 (=> (not res!2940647) (not e!4347426))))

(declare-fun lt!2584822 () List!70511)

(assert (=> b!7250511 (= res!2940647 (= (size!41711 lt!2584822) (+ (size!41711 (t!384565 (t!384565 s1!1971))) (size!41711 s2!1849))))))

(declare-fun b!7250512 () Bool)

(assert (=> b!7250512 (= e!4347426 (or (not (= s2!1849 Nil!70387)) (= lt!2584822 (t!384565 (t!384565 s1!1971)))))))

(declare-fun b!7250509 () Bool)

(declare-fun e!4347425 () List!70511)

(assert (=> b!7250509 (= e!4347425 s2!1849)))

(declare-fun d!2253608 () Bool)

(assert (=> d!2253608 e!4347426))

(declare-fun res!2940648 () Bool)

(assert (=> d!2253608 (=> (not res!2940648) (not e!4347426))))

(assert (=> d!2253608 (= res!2940648 (= (content!14602 lt!2584822) ((_ map or) (content!14602 (t!384565 (t!384565 s1!1971))) (content!14602 s2!1849))))))

(assert (=> d!2253608 (= lt!2584822 e!4347425)))

(declare-fun c!1347368 () Bool)

(assert (=> d!2253608 (= c!1347368 ((_ is Nil!70387) (t!384565 (t!384565 s1!1971))))))

(assert (=> d!2253608 (= (++!16549 (t!384565 (t!384565 s1!1971)) s2!1849) lt!2584822)))

(declare-fun b!7250510 () Bool)

(assert (=> b!7250510 (= e!4347425 (Cons!70387 (h!76835 (t!384565 (t!384565 s1!1971))) (++!16549 (t!384565 (t!384565 (t!384565 s1!1971))) s2!1849)))))

(assert (= (and d!2253608 c!1347368) b!7250509))

(assert (= (and d!2253608 (not c!1347368)) b!7250510))

(assert (= (and d!2253608 res!2940648) b!7250511))

(assert (= (and b!7250511 res!2940647) b!7250512))

(declare-fun m!7929394 () Bool)

(assert (=> b!7250511 m!7929394))

(declare-fun m!7929396 () Bool)

(assert (=> b!7250511 m!7929396))

(assert (=> b!7250511 m!7929058))

(declare-fun m!7929398 () Bool)

(assert (=> d!2253608 m!7929398))

(declare-fun m!7929400 () Bool)

(assert (=> d!2253608 m!7929400))

(assert (=> d!2253608 m!7929064))

(declare-fun m!7929402 () Bool)

(assert (=> b!7250510 m!7929402))

(assert (=> b!7250290 d!2253608))

(declare-fun d!2253610 () Bool)

(declare-fun res!2940653 () Bool)

(declare-fun e!4347431 () Bool)

(assert (=> d!2253610 (=> res!2940653 e!4347431)))

(assert (=> d!2253610 (= res!2940653 ((_ is Nil!70385) (exprs!8083 lt!2584743)))))

(assert (=> d!2253610 (= (forall!17487 (exprs!8083 lt!2584743) lambda!444115) e!4347431)))

(declare-fun b!7250517 () Bool)

(declare-fun e!4347432 () Bool)

(assert (=> b!7250517 (= e!4347431 e!4347432)))

(declare-fun res!2940654 () Bool)

(assert (=> b!7250517 (=> (not res!2940654) (not e!4347432))))

(declare-fun dynLambda!28738 (Int Regex!18643) Bool)

(assert (=> b!7250517 (= res!2940654 (dynLambda!28738 lambda!444115 (h!76833 (exprs!8083 lt!2584743))))))

(declare-fun b!7250518 () Bool)

(assert (=> b!7250518 (= e!4347432 (forall!17487 (t!384563 (exprs!8083 lt!2584743)) lambda!444115))))

(assert (= (and d!2253610 (not res!2940653)) b!7250517))

(assert (= (and b!7250517 res!2940654) b!7250518))

(declare-fun b_lambda!278375 () Bool)

(assert (=> (not b_lambda!278375) (not b!7250517)))

(declare-fun m!7929404 () Bool)

(assert (=> b!7250517 m!7929404))

(declare-fun m!7929406 () Bool)

(assert (=> b!7250518 m!7929406))

(assert (=> d!2253552 d!2253610))

(declare-fun d!2253612 () Bool)

(declare-fun c!1347369 () Bool)

(assert (=> d!2253612 (= c!1347369 (isEmpty!40534 (tail!14317 (++!16549 (t!384565 s1!1971) s2!1849))))))

(declare-fun e!4347433 () Bool)

(assert (=> d!2253612 (= (matchZipper!3553 (derivationStepZipper!3421 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true) (head!14901 (++!16549 (t!384565 s1!1971) s2!1849))) (tail!14317 (++!16549 (t!384565 s1!1971) s2!1849))) e!4347433)))

(declare-fun b!7250519 () Bool)

(assert (=> b!7250519 (= e!4347433 (nullableZipper!2911 (derivationStepZipper!3421 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true) (head!14901 (++!16549 (t!384565 s1!1971) s2!1849)))))))

(declare-fun b!7250520 () Bool)

(assert (=> b!7250520 (= e!4347433 (matchZipper!3553 (derivationStepZipper!3421 (derivationStepZipper!3421 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true) (head!14901 (++!16549 (t!384565 s1!1971) s2!1849))) (head!14901 (tail!14317 (++!16549 (t!384565 s1!1971) s2!1849)))) (tail!14317 (tail!14317 (++!16549 (t!384565 s1!1971) s2!1849)))))))

(assert (= (and d!2253612 c!1347369) b!7250519))

(assert (= (and d!2253612 (not c!1347369)) b!7250520))

(assert (=> d!2253612 m!7929044))

(declare-fun m!7929408 () Bool)

(assert (=> d!2253612 m!7929408))

(assert (=> b!7250519 m!7929042))

(declare-fun m!7929410 () Bool)

(assert (=> b!7250519 m!7929410))

(assert (=> b!7250520 m!7929044))

(declare-fun m!7929412 () Bool)

(assert (=> b!7250520 m!7929412))

(assert (=> b!7250520 m!7929042))

(assert (=> b!7250520 m!7929412))

(declare-fun m!7929414 () Bool)

(assert (=> b!7250520 m!7929414))

(assert (=> b!7250520 m!7929044))

(declare-fun m!7929416 () Bool)

(assert (=> b!7250520 m!7929416))

(assert (=> b!7250520 m!7929414))

(assert (=> b!7250520 m!7929416))

(declare-fun m!7929418 () Bool)

(assert (=> b!7250520 m!7929418))

(assert (=> b!7250271 d!2253612))

(declare-fun bs!1906128 () Bool)

(declare-fun d!2253614 () Bool)

(assert (= bs!1906128 (and d!2253614 b!7250251)))

(declare-fun lambda!444133 () Int)

(assert (=> bs!1906128 (= (= (head!14901 (++!16549 (t!384565 s1!1971) s2!1849)) (h!76835 s1!1971)) (= lambda!444133 lambda!444098))))

(declare-fun bs!1906129 () Bool)

(assert (= bs!1906129 (and d!2253614 d!2253542)))

(assert (=> bs!1906129 (= (= (head!14901 (++!16549 (t!384565 s1!1971) s2!1849)) (h!76835 s1!1971)) (= lambda!444133 lambda!444110))))

(assert (=> d!2253614 true))

(assert (=> d!2253614 (= (derivationStepZipper!3421 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true) (head!14901 (++!16549 (t!384565 s1!1971) s2!1849))) (flatMap!2808 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true) lambda!444133))))

(declare-fun bs!1906130 () Bool)

(assert (= bs!1906130 d!2253614))

(assert (=> bs!1906130 m!7928956))

(declare-fun m!7929420 () Bool)

(assert (=> bs!1906130 m!7929420))

(assert (=> b!7250271 d!2253614))

(declare-fun d!2253616 () Bool)

(assert (=> d!2253616 (= (head!14901 (++!16549 (t!384565 s1!1971) s2!1849)) (h!76835 (++!16549 (t!384565 s1!1971) s2!1849)))))

(assert (=> b!7250271 d!2253616))

(declare-fun d!2253618 () Bool)

(assert (=> d!2253618 (= (tail!14317 (++!16549 (t!384565 s1!1971) s2!1849)) (t!384565 (++!16549 (t!384565 s1!1971) s2!1849)))))

(assert (=> b!7250271 d!2253618))

(declare-fun d!2253620 () Bool)

(assert (=> d!2253620 (= (isEmpty!40534 s1!1971) ((_ is Nil!70387) s1!1971))))

(assert (=> d!2253546 d!2253620))

(declare-fun b!7250521 () Bool)

(declare-fun call!660347 () (InoxSet Context!15166))

(declare-fun e!4347436 () (InoxSet Context!15166))

(assert (=> b!7250521 (= e!4347436 ((_ map or) call!660347 (derivationStepZipperUp!2467 (Context!15167 (t!384563 (exprs!8083 (Context!15167 (t!384563 (exprs!8083 ct1!232)))))) (h!76835 s1!1971))))))

(declare-fun b!7250522 () Bool)

(declare-fun e!4347435 () Bool)

(assert (=> b!7250522 (= e!4347435 (nullable!7903 (h!76833 (exprs!8083 (Context!15167 (t!384563 (exprs!8083 ct1!232)))))))))

(declare-fun bm!660342 () Bool)

(assert (=> bm!660342 (= call!660347 (derivationStepZipperDown!2637 (h!76833 (exprs!8083 (Context!15167 (t!384563 (exprs!8083 ct1!232))))) (Context!15167 (t!384563 (exprs!8083 (Context!15167 (t!384563 (exprs!8083 ct1!232)))))) (h!76835 s1!1971)))))

(declare-fun d!2253622 () Bool)

(declare-fun c!1347370 () Bool)

(assert (=> d!2253622 (= c!1347370 e!4347435)))

(declare-fun res!2940655 () Bool)

(assert (=> d!2253622 (=> (not res!2940655) (not e!4347435))))

(assert (=> d!2253622 (= res!2940655 ((_ is Cons!70385) (exprs!8083 (Context!15167 (t!384563 (exprs!8083 ct1!232))))))))

(assert (=> d!2253622 (= (derivationStepZipperUp!2467 (Context!15167 (t!384563 (exprs!8083 ct1!232))) (h!76835 s1!1971)) e!4347436)))

(declare-fun b!7250523 () Bool)

(declare-fun e!4347434 () (InoxSet Context!15166))

(assert (=> b!7250523 (= e!4347436 e!4347434)))

(declare-fun c!1347371 () Bool)

(assert (=> b!7250523 (= c!1347371 ((_ is Cons!70385) (exprs!8083 (Context!15167 (t!384563 (exprs!8083 ct1!232))))))))

(declare-fun b!7250524 () Bool)

(assert (=> b!7250524 (= e!4347434 call!660347)))

(declare-fun b!7250525 () Bool)

(assert (=> b!7250525 (= e!4347434 ((as const (Array Context!15166 Bool)) false))))

(assert (= (and d!2253622 res!2940655) b!7250522))

(assert (= (and d!2253622 c!1347370) b!7250521))

(assert (= (and d!2253622 (not c!1347370)) b!7250523))

(assert (= (and b!7250523 c!1347371) b!7250524))

(assert (= (and b!7250523 (not c!1347371)) b!7250525))

(assert (= (or b!7250521 b!7250524) bm!660342))

(declare-fun m!7929422 () Bool)

(assert (=> b!7250521 m!7929422))

(declare-fun m!7929424 () Bool)

(assert (=> b!7250522 m!7929424))

(declare-fun m!7929426 () Bool)

(assert (=> bm!660342 m!7929426))

(assert (=> b!7250307 d!2253622))

(declare-fun d!2253624 () Bool)

(assert (=> d!2253624 (= (nullable!7903 (regOne!37798 (h!76833 (exprs!8083 ct1!232)))) (nullableFct!3100 (regOne!37798 (h!76833 (exprs!8083 ct1!232)))))))

(declare-fun bs!1906131 () Bool)

(assert (= bs!1906131 d!2253624))

(declare-fun m!7929428 () Bool)

(assert (=> bs!1906131 m!7929428))

(assert (=> b!7250447 d!2253624))

(declare-fun bs!1906132 () Bool)

(declare-fun d!2253626 () Bool)

(assert (= bs!1906132 (and d!2253626 b!7250242)))

(declare-fun lambda!444136 () Int)

(assert (=> bs!1906132 (not (= lambda!444136 lambda!444097))))

(declare-fun bs!1906133 () Bool)

(assert (= bs!1906133 (and d!2253626 d!2253568)))

(assert (=> bs!1906133 (not (= lambda!444136 lambda!444121))))

(declare-fun bs!1906134 () Bool)

(assert (= bs!1906134 (and d!2253626 d!2253574)))

(assert (=> bs!1906134 (not (= lambda!444136 lambda!444124))))

(assert (=> d!2253626 (= (nullableZipper!2911 (store ((as const (Array Context!15166 Bool)) false) ct2!328 true)) (exists!4364 (store ((as const (Array Context!15166 Bool)) false) ct2!328 true) lambda!444136))))

(declare-fun bs!1906135 () Bool)

(assert (= bs!1906135 d!2253626))

(assert (=> bs!1906135 m!7928976))

(declare-fun m!7929430 () Bool)

(assert (=> bs!1906135 m!7929430))

(assert (=> b!7250450 d!2253626))

(declare-fun d!2253628 () Bool)

(declare-fun e!4347437 () Bool)

(assert (=> d!2253628 e!4347437))

(declare-fun res!2940656 () Bool)

(assert (=> d!2253628 (=> (not res!2940656) (not e!4347437))))

(declare-fun lt!2584823 () List!70509)

(assert (=> d!2253628 (= res!2940656 (= (content!14603 lt!2584823) ((_ map or) (content!14603 (t!384563 (exprs!8083 ct1!232))) (content!14603 (exprs!8083 ct2!328)))))))

(declare-fun e!4347438 () List!70509)

(assert (=> d!2253628 (= lt!2584823 e!4347438)))

(declare-fun c!1347374 () Bool)

(assert (=> d!2253628 (= c!1347374 ((_ is Nil!70385) (t!384563 (exprs!8083 ct1!232))))))

(assert (=> d!2253628 (= (++!16548 (t!384563 (exprs!8083 ct1!232)) (exprs!8083 ct2!328)) lt!2584823)))

(declare-fun b!7250529 () Bool)

(assert (=> b!7250529 (= e!4347437 (or (not (= (exprs!8083 ct2!328) Nil!70385)) (= lt!2584823 (t!384563 (exprs!8083 ct1!232)))))))

(declare-fun b!7250528 () Bool)

(declare-fun res!2940657 () Bool)

(assert (=> b!7250528 (=> (not res!2940657) (not e!4347437))))

(assert (=> b!7250528 (= res!2940657 (= (size!41712 lt!2584823) (+ (size!41712 (t!384563 (exprs!8083 ct1!232))) (size!41712 (exprs!8083 ct2!328)))))))

(declare-fun b!7250527 () Bool)

(assert (=> b!7250527 (= e!4347438 (Cons!70385 (h!76833 (t!384563 (exprs!8083 ct1!232))) (++!16548 (t!384563 (t!384563 (exprs!8083 ct1!232))) (exprs!8083 ct2!328))))))

(declare-fun b!7250526 () Bool)

(assert (=> b!7250526 (= e!4347438 (exprs!8083 ct2!328))))

(assert (= (and d!2253628 c!1347374) b!7250526))

(assert (= (and d!2253628 (not c!1347374)) b!7250527))

(assert (= (and d!2253628 res!2940656) b!7250528))

(assert (= (and b!7250528 res!2940657) b!7250529))

(declare-fun m!7929432 () Bool)

(assert (=> d!2253628 m!7929432))

(declare-fun m!7929434 () Bool)

(assert (=> d!2253628 m!7929434))

(assert (=> d!2253628 m!7929088))

(declare-fun m!7929436 () Bool)

(assert (=> b!7250528 m!7929436))

(declare-fun m!7929438 () Bool)

(assert (=> b!7250528 m!7929438))

(assert (=> b!7250528 m!7929094))

(declare-fun m!7929440 () Bool)

(assert (=> b!7250527 m!7929440))

(assert (=> b!7250354 d!2253628))

(declare-fun bm!660347 () Bool)

(declare-fun call!660352 () Bool)

(declare-fun c!1347377 () Bool)

(assert (=> bm!660347 (= call!660352 (nullable!7903 (ite c!1347377 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regTwo!37798 (h!76833 (exprs!8083 ct1!232))))))))

(declare-fun b!7250544 () Bool)

(declare-fun e!4347456 () Bool)

(declare-fun e!4347454 () Bool)

(assert (=> b!7250544 (= e!4347456 e!4347454)))

(assert (=> b!7250544 (= c!1347377 ((_ is Union!18643) (h!76833 (exprs!8083 ct1!232))))))

(declare-fun b!7250545 () Bool)

(declare-fun e!4347451 () Bool)

(assert (=> b!7250545 (= e!4347454 e!4347451)))

(declare-fun res!2940670 () Bool)

(declare-fun call!660353 () Bool)

(assert (=> b!7250545 (= res!2940670 call!660353)))

(assert (=> b!7250545 (=> res!2940670 e!4347451)))

(declare-fun b!7250546 () Bool)

(declare-fun e!4347455 () Bool)

(assert (=> b!7250546 (= e!4347455 call!660352)))

(declare-fun b!7250547 () Bool)

(assert (=> b!7250547 (= e!4347451 call!660352)))

(declare-fun b!7250548 () Bool)

(declare-fun e!4347453 () Bool)

(declare-fun e!4347452 () Bool)

(assert (=> b!7250548 (= e!4347453 e!4347452)))

(declare-fun res!2940672 () Bool)

(assert (=> b!7250548 (=> (not res!2940672) (not e!4347452))))

(assert (=> b!7250548 (= res!2940672 (and (not ((_ is EmptyLang!18643) (h!76833 (exprs!8083 ct1!232)))) (not ((_ is ElementMatch!18643) (h!76833 (exprs!8083 ct1!232))))))))

(declare-fun b!7250549 () Bool)

(assert (=> b!7250549 (= e!4347454 e!4347455)))

(declare-fun res!2940668 () Bool)

(assert (=> b!7250549 (= res!2940668 call!660353)))

(assert (=> b!7250549 (=> (not res!2940668) (not e!4347455))))

(declare-fun b!7250550 () Bool)

(assert (=> b!7250550 (= e!4347452 e!4347456)))

(declare-fun res!2940669 () Bool)

(assert (=> b!7250550 (=> res!2940669 e!4347456)))

(assert (=> b!7250550 (= res!2940669 ((_ is Star!18643) (h!76833 (exprs!8083 ct1!232))))))

(declare-fun bm!660348 () Bool)

(assert (=> bm!660348 (= call!660353 (nullable!7903 (ite c!1347377 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))))))

(declare-fun d!2253630 () Bool)

(declare-fun res!2940671 () Bool)

(assert (=> d!2253630 (=> res!2940671 e!4347453)))

(assert (=> d!2253630 (= res!2940671 ((_ is EmptyExpr!18643) (h!76833 (exprs!8083 ct1!232))))))

(assert (=> d!2253630 (= (nullableFct!3100 (h!76833 (exprs!8083 ct1!232))) e!4347453)))

(assert (= (and d!2253630 (not res!2940671)) b!7250548))

(assert (= (and b!7250548 res!2940672) b!7250550))

(assert (= (and b!7250550 (not res!2940669)) b!7250544))

(assert (= (and b!7250544 c!1347377) b!7250545))

(assert (= (and b!7250544 (not c!1347377)) b!7250549))

(assert (= (and b!7250545 (not res!2940670)) b!7250547))

(assert (= (and b!7250549 res!2940668) b!7250546))

(assert (= (or b!7250547 b!7250546) bm!660347))

(assert (= (or b!7250545 b!7250549) bm!660348))

(declare-fun m!7929442 () Bool)

(assert (=> bm!660347 m!7929442))

(declare-fun m!7929444 () Bool)

(assert (=> bm!660348 m!7929444))

(assert (=> d!2253532 d!2253630))

(declare-fun d!2253632 () Bool)

(assert (=> d!2253632 (= (flatMap!2808 lt!2584744 lambda!444110) (choose!56005 lt!2584744 lambda!444110))))

(declare-fun bs!1906136 () Bool)

(assert (= bs!1906136 d!2253632))

(declare-fun m!7929446 () Bool)

(assert (=> bs!1906136 m!7929446))

(assert (=> d!2253542 d!2253632))

(declare-fun d!2253634 () Bool)

(assert (=> d!2253634 (= ($colon$colon!2916 (exprs!8083 lt!2584743) (ite (or c!1347352 c!1347353) (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (h!76833 (exprs!8083 ct1!232)))) (Cons!70385 (ite (or c!1347352 c!1347353) (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (h!76833 (exprs!8083 ct1!232))) (exprs!8083 lt!2584743)))))

(assert (=> bm!660337 d!2253634))

(declare-fun d!2253636 () Bool)

(declare-fun c!1347380 () Bool)

(assert (=> d!2253636 (= c!1347380 ((_ is Nil!70386) lt!2584812))))

(declare-fun e!4347459 () (InoxSet Context!15166))

(assert (=> d!2253636 (= (content!14604 lt!2584812) e!4347459)))

(declare-fun b!7250555 () Bool)

(assert (=> b!7250555 (= e!4347459 ((as const (Array Context!15166 Bool)) false))))

(declare-fun b!7250556 () Bool)

(assert (=> b!7250556 (= e!4347459 ((_ map or) (store ((as const (Array Context!15166 Bool)) false) (h!76834 lt!2584812) true) (content!14604 (t!384564 lt!2584812))))))

(assert (= (and d!2253636 c!1347380) b!7250555))

(assert (= (and d!2253636 (not c!1347380)) b!7250556))

(declare-fun m!7929448 () Bool)

(assert (=> b!7250556 m!7929448))

(declare-fun m!7929450 () Bool)

(assert (=> b!7250556 m!7929450))

(assert (=> b!7250477 d!2253636))

(declare-fun bm!660349 () Bool)

(declare-fun call!660356 () List!70509)

(declare-fun call!660359 () List!70509)

(assert (=> bm!660349 (= call!660356 call!660359)))

(declare-fun b!7250557 () Bool)

(declare-fun e!4347465 () (InoxSet Context!15166))

(declare-fun e!4347463 () (InoxSet Context!15166))

(assert (=> b!7250557 (= e!4347465 e!4347463)))

(declare-fun c!1347384 () Bool)

(assert (=> b!7250557 (= c!1347384 ((_ is Union!18643) (h!76833 (exprs!8083 lt!2584738))))))

(declare-fun b!7250559 () Bool)

(declare-fun e!4347460 () (InoxSet Context!15166))

(declare-fun call!660355 () (InoxSet Context!15166))

(declare-fun call!660357 () (InoxSet Context!15166))

(assert (=> b!7250559 (= e!4347460 ((_ map or) call!660355 call!660357))))

(declare-fun b!7250560 () Bool)

(declare-fun e!4347461 () (InoxSet Context!15166))

(assert (=> b!7250560 (= e!4347460 e!4347461)))

(declare-fun c!1347382 () Bool)

(assert (=> b!7250560 (= c!1347382 ((_ is Concat!27488) (h!76833 (exprs!8083 lt!2584738))))))

(declare-fun bm!660350 () Bool)

(declare-fun c!1347381 () Bool)

(assert (=> bm!660350 (= call!660359 ($colon$colon!2916 (exprs!8083 (Context!15167 (t!384563 (exprs!8083 lt!2584738)))) (ite (or c!1347381 c!1347382) (regTwo!37798 (h!76833 (exprs!8083 lt!2584738))) (h!76833 (exprs!8083 lt!2584738)))))))

(declare-fun b!7250561 () Bool)

(declare-fun c!1347383 () Bool)

(assert (=> b!7250561 (= c!1347383 ((_ is Star!18643) (h!76833 (exprs!8083 lt!2584738))))))

(declare-fun e!4347464 () (InoxSet Context!15166))

(assert (=> b!7250561 (= e!4347461 e!4347464)))

(declare-fun b!7250562 () Bool)

(declare-fun call!660354 () (InoxSet Context!15166))

(assert (=> b!7250562 (= e!4347464 call!660354)))

(declare-fun bm!660351 () Bool)

(assert (=> bm!660351 (= call!660354 call!660357)))

(declare-fun b!7250558 () Bool)

(assert (=> b!7250558 (= e!4347461 call!660354)))

(declare-fun d!2253638 () Bool)

(declare-fun c!1347385 () Bool)

(assert (=> d!2253638 (= c!1347385 (and ((_ is ElementMatch!18643) (h!76833 (exprs!8083 lt!2584738))) (= (c!1347277 (h!76833 (exprs!8083 lt!2584738))) (h!76835 s1!1971))))))

(assert (=> d!2253638 (= (derivationStepZipperDown!2637 (h!76833 (exprs!8083 lt!2584738)) (Context!15167 (t!384563 (exprs!8083 lt!2584738))) (h!76835 s1!1971)) e!4347465)))

(declare-fun b!7250563 () Bool)

(declare-fun e!4347462 () Bool)

(assert (=> b!7250563 (= c!1347381 e!4347462)))

(declare-fun res!2940673 () Bool)

(assert (=> b!7250563 (=> (not res!2940673) (not e!4347462))))

(assert (=> b!7250563 (= res!2940673 ((_ is Concat!27488) (h!76833 (exprs!8083 lt!2584738))))))

(assert (=> b!7250563 (= e!4347463 e!4347460)))

(declare-fun b!7250564 () Bool)

(declare-fun call!660358 () (InoxSet Context!15166))

(assert (=> b!7250564 (= e!4347463 ((_ map or) call!660358 call!660355))))

(declare-fun b!7250565 () Bool)

(assert (=> b!7250565 (= e!4347462 (nullable!7903 (regOne!37798 (h!76833 (exprs!8083 lt!2584738)))))))

(declare-fun b!7250566 () Bool)

(assert (=> b!7250566 (= e!4347465 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (t!384563 (exprs!8083 lt!2584738))) true))))

(declare-fun bm!660352 () Bool)

(assert (=> bm!660352 (= call!660358 (derivationStepZipperDown!2637 (ite c!1347384 (regOne!37799 (h!76833 (exprs!8083 lt!2584738))) (ite c!1347381 (regTwo!37798 (h!76833 (exprs!8083 lt!2584738))) (ite c!1347382 (regOne!37798 (h!76833 (exprs!8083 lt!2584738))) (reg!18972 (h!76833 (exprs!8083 lt!2584738)))))) (ite (or c!1347384 c!1347381) (Context!15167 (t!384563 (exprs!8083 lt!2584738))) (Context!15167 call!660356)) (h!76835 s1!1971)))))

(declare-fun b!7250567 () Bool)

(assert (=> b!7250567 (= e!4347464 ((as const (Array Context!15166 Bool)) false))))

(declare-fun bm!660353 () Bool)

(assert (=> bm!660353 (= call!660355 (derivationStepZipperDown!2637 (ite c!1347384 (regTwo!37799 (h!76833 (exprs!8083 lt!2584738))) (regOne!37798 (h!76833 (exprs!8083 lt!2584738)))) (ite c!1347384 (Context!15167 (t!384563 (exprs!8083 lt!2584738))) (Context!15167 call!660359)) (h!76835 s1!1971)))))

(declare-fun bm!660354 () Bool)

(assert (=> bm!660354 (= call!660357 call!660358)))

(assert (= (and d!2253638 c!1347385) b!7250566))

(assert (= (and d!2253638 (not c!1347385)) b!7250557))

(assert (= (and b!7250557 c!1347384) b!7250564))

(assert (= (and b!7250557 (not c!1347384)) b!7250563))

(assert (= (and b!7250563 res!2940673) b!7250565))

(assert (= (and b!7250563 c!1347381) b!7250559))

(assert (= (and b!7250563 (not c!1347381)) b!7250560))

(assert (= (and b!7250560 c!1347382) b!7250558))

(assert (= (and b!7250560 (not c!1347382)) b!7250561))

(assert (= (and b!7250561 c!1347383) b!7250562))

(assert (= (and b!7250561 (not c!1347383)) b!7250567))

(assert (= (or b!7250558 b!7250562) bm!660349))

(assert (= (or b!7250558 b!7250562) bm!660351))

(assert (= (or b!7250559 bm!660349) bm!660350))

(assert (= (or b!7250559 bm!660351) bm!660354))

(assert (= (or b!7250564 b!7250559) bm!660353))

(assert (= (or b!7250564 bm!660354) bm!660352))

(declare-fun m!7929452 () Bool)

(assert (=> b!7250566 m!7929452))

(declare-fun m!7929454 () Bool)

(assert (=> bm!660350 m!7929454))

(declare-fun m!7929456 () Bool)

(assert (=> bm!660353 m!7929456))

(declare-fun m!7929458 () Bool)

(assert (=> bm!660352 m!7929458))

(declare-fun m!7929460 () Bool)

(assert (=> b!7250565 m!7929460))

(assert (=> bm!660335 d!2253638))

(declare-fun d!2253640 () Bool)

(declare-fun lt!2584826 () Int)

(assert (=> d!2253640 (>= lt!2584826 0)))

(declare-fun e!4347468 () Int)

(assert (=> d!2253640 (= lt!2584826 e!4347468)))

(declare-fun c!1347388 () Bool)

(assert (=> d!2253640 (= c!1347388 ((_ is Nil!70385) lt!2584776))))

(assert (=> d!2253640 (= (size!41712 lt!2584776) lt!2584826)))

(declare-fun b!7250572 () Bool)

(assert (=> b!7250572 (= e!4347468 0)))

(declare-fun b!7250573 () Bool)

(assert (=> b!7250573 (= e!4347468 (+ 1 (size!41712 (t!384563 lt!2584776))))))

(assert (= (and d!2253640 c!1347388) b!7250572))

(assert (= (and d!2253640 (not c!1347388)) b!7250573))

(declare-fun m!7929462 () Bool)

(assert (=> b!7250573 m!7929462))

(assert (=> b!7250351 d!2253640))

(declare-fun d!2253642 () Bool)

(declare-fun lt!2584827 () Int)

(assert (=> d!2253642 (>= lt!2584827 0)))

(declare-fun e!4347469 () Int)

(assert (=> d!2253642 (= lt!2584827 e!4347469)))

(declare-fun c!1347389 () Bool)

(assert (=> d!2253642 (= c!1347389 ((_ is Nil!70385) (exprs!8083 lt!2584735)))))

(assert (=> d!2253642 (= (size!41712 (exprs!8083 lt!2584735)) lt!2584827)))

(declare-fun b!7250574 () Bool)

(assert (=> b!7250574 (= e!4347469 0)))

(declare-fun b!7250575 () Bool)

(assert (=> b!7250575 (= e!4347469 (+ 1 (size!41712 (t!384563 (exprs!8083 lt!2584735)))))))

(assert (= (and d!2253642 c!1347389) b!7250574))

(assert (= (and d!2253642 (not c!1347389)) b!7250575))

(declare-fun m!7929464 () Bool)

(assert (=> b!7250575 m!7929464))

(assert (=> b!7250351 d!2253642))

(declare-fun d!2253644 () Bool)

(declare-fun lt!2584828 () Int)

(assert (=> d!2253644 (>= lt!2584828 0)))

(declare-fun e!4347470 () Int)

(assert (=> d!2253644 (= lt!2584828 e!4347470)))

(declare-fun c!1347390 () Bool)

(assert (=> d!2253644 (= c!1347390 ((_ is Nil!70385) (exprs!8083 ct2!328)))))

(assert (=> d!2253644 (= (size!41712 (exprs!8083 ct2!328)) lt!2584828)))

(declare-fun b!7250576 () Bool)

(assert (=> b!7250576 (= e!4347470 0)))

(declare-fun b!7250577 () Bool)

(assert (=> b!7250577 (= e!4347470 (+ 1 (size!41712 (t!384563 (exprs!8083 ct2!328)))))))

(assert (= (and d!2253644 c!1347390) b!7250576))

(assert (= (and d!2253644 (not c!1347390)) b!7250577))

(declare-fun m!7929466 () Bool)

(assert (=> b!7250577 m!7929466))

(assert (=> b!7250351 d!2253644))

(declare-fun b!7250578 () Bool)

(declare-fun e!4347473 () (InoxSet Context!15166))

(declare-fun call!660360 () (InoxSet Context!15166))

(assert (=> b!7250578 (= e!4347473 ((_ map or) call!660360 (derivationStepZipperUp!2467 (Context!15167 (t!384563 (exprs!8083 (Context!15167 (t!384563 (exprs!8083 lt!2584738)))))) (h!76835 s1!1971))))))

(declare-fun b!7250579 () Bool)

(declare-fun e!4347472 () Bool)

(assert (=> b!7250579 (= e!4347472 (nullable!7903 (h!76833 (exprs!8083 (Context!15167 (t!384563 (exprs!8083 lt!2584738)))))))))

(declare-fun bm!660355 () Bool)

(assert (=> bm!660355 (= call!660360 (derivationStepZipperDown!2637 (h!76833 (exprs!8083 (Context!15167 (t!384563 (exprs!8083 lt!2584738))))) (Context!15167 (t!384563 (exprs!8083 (Context!15167 (t!384563 (exprs!8083 lt!2584738)))))) (h!76835 s1!1971)))))

(declare-fun d!2253646 () Bool)

(declare-fun c!1347391 () Bool)

(assert (=> d!2253646 (= c!1347391 e!4347472)))

(declare-fun res!2940674 () Bool)

(assert (=> d!2253646 (=> (not res!2940674) (not e!4347472))))

(assert (=> d!2253646 (= res!2940674 ((_ is Cons!70385) (exprs!8083 (Context!15167 (t!384563 (exprs!8083 lt!2584738))))))))

(assert (=> d!2253646 (= (derivationStepZipperUp!2467 (Context!15167 (t!384563 (exprs!8083 lt!2584738))) (h!76835 s1!1971)) e!4347473)))

(declare-fun b!7250580 () Bool)

(declare-fun e!4347471 () (InoxSet Context!15166))

(assert (=> b!7250580 (= e!4347473 e!4347471)))

(declare-fun c!1347392 () Bool)

(assert (=> b!7250580 (= c!1347392 ((_ is Cons!70385) (exprs!8083 (Context!15167 (t!384563 (exprs!8083 lt!2584738))))))))

(declare-fun b!7250581 () Bool)

(assert (=> b!7250581 (= e!4347471 call!660360)))

(declare-fun b!7250582 () Bool)

(assert (=> b!7250582 (= e!4347471 ((as const (Array Context!15166 Bool)) false))))

(assert (= (and d!2253646 res!2940674) b!7250579))

(assert (= (and d!2253646 c!1347391) b!7250578))

(assert (= (and d!2253646 (not c!1347391)) b!7250580))

(assert (= (and b!7250580 c!1347392) b!7250581))

(assert (= (and b!7250580 (not c!1347392)) b!7250582))

(assert (= (or b!7250578 b!7250581) bm!660355))

(declare-fun m!7929468 () Bool)

(assert (=> b!7250578 m!7929468))

(declare-fun m!7929470 () Bool)

(assert (=> b!7250579 m!7929470))

(declare-fun m!7929472 () Bool)

(assert (=> bm!660355 m!7929472))

(assert (=> b!7250424 d!2253646))

(declare-fun d!2253648 () Bool)

(declare-fun c!1347393 () Bool)

(assert (=> d!2253648 (= c!1347393 (isEmpty!40534 (t!384565 s1!1971)))))

(declare-fun e!4347474 () Bool)

(assert (=> d!2253648 (= (matchZipper!3553 (store ((as const (Array Context!15166 Bool)) false) lt!2584758 true) (t!384565 s1!1971)) e!4347474)))

(declare-fun b!7250583 () Bool)

(assert (=> b!7250583 (= e!4347474 (nullableZipper!2911 (store ((as const (Array Context!15166 Bool)) false) lt!2584758 true)))))

(declare-fun b!7250584 () Bool)

(assert (=> b!7250584 (= e!4347474 (matchZipper!3553 (derivationStepZipper!3421 (store ((as const (Array Context!15166 Bool)) false) lt!2584758 true) (head!14901 (t!384565 s1!1971))) (tail!14317 (t!384565 s1!1971))))))

(assert (= (and d!2253648 c!1347393) b!7250583))

(assert (= (and d!2253648 (not c!1347393)) b!7250584))

(assert (=> d!2253648 m!7929208))

(assert (=> b!7250583 m!7929366))

(declare-fun m!7929474 () Bool)

(assert (=> b!7250583 m!7929474))

(assert (=> b!7250584 m!7929212))

(assert (=> b!7250584 m!7929366))

(assert (=> b!7250584 m!7929212))

(declare-fun m!7929476 () Bool)

(assert (=> b!7250584 m!7929476))

(assert (=> b!7250584 m!7929216))

(assert (=> b!7250584 m!7929476))

(assert (=> b!7250584 m!7929216))

(declare-fun m!7929478 () Bool)

(assert (=> b!7250584 m!7929478))

(assert (=> bs!1906117 d!2253648))

(declare-fun d!2253650 () Bool)

(declare-fun c!1347394 () Bool)

(assert (=> d!2253650 (= c!1347394 (isEmpty!40534 (tail!14317 (t!384565 s1!1971))))))

(declare-fun e!4347475 () Bool)

(assert (=> d!2253650 (= (matchZipper!3553 (derivationStepZipper!3421 lt!2584751 (head!14901 (t!384565 s1!1971))) (tail!14317 (t!384565 s1!1971))) e!4347475)))

(declare-fun b!7250585 () Bool)

(assert (=> b!7250585 (= e!4347475 (nullableZipper!2911 (derivationStepZipper!3421 lt!2584751 (head!14901 (t!384565 s1!1971)))))))

(declare-fun b!7250586 () Bool)

(assert (=> b!7250586 (= e!4347475 (matchZipper!3553 (derivationStepZipper!3421 (derivationStepZipper!3421 lt!2584751 (head!14901 (t!384565 s1!1971))) (head!14901 (tail!14317 (t!384565 s1!1971)))) (tail!14317 (tail!14317 (t!384565 s1!1971)))))))

(assert (= (and d!2253650 c!1347394) b!7250585))

(assert (= (and d!2253650 (not c!1347394)) b!7250586))

(assert (=> d!2253650 m!7929216))

(declare-fun m!7929480 () Bool)

(assert (=> d!2253650 m!7929480))

(assert (=> b!7250585 m!7929214))

(declare-fun m!7929482 () Bool)

(assert (=> b!7250585 m!7929482))

(assert (=> b!7250586 m!7929216))

(declare-fun m!7929484 () Bool)

(assert (=> b!7250586 m!7929484))

(assert (=> b!7250586 m!7929214))

(assert (=> b!7250586 m!7929484))

(declare-fun m!7929486 () Bool)

(assert (=> b!7250586 m!7929486))

(assert (=> b!7250586 m!7929216))

(declare-fun m!7929488 () Bool)

(assert (=> b!7250586 m!7929488))

(assert (=> b!7250586 m!7929486))

(assert (=> b!7250586 m!7929488))

(declare-fun m!7929490 () Bool)

(assert (=> b!7250586 m!7929490))

(assert (=> b!7250430 d!2253650))

(declare-fun bs!1906137 () Bool)

(declare-fun d!2253652 () Bool)

(assert (= bs!1906137 (and d!2253652 b!7250251)))

(declare-fun lambda!444137 () Int)

(assert (=> bs!1906137 (= (= (head!14901 (t!384565 s1!1971)) (h!76835 s1!1971)) (= lambda!444137 lambda!444098))))

(declare-fun bs!1906138 () Bool)

(assert (= bs!1906138 (and d!2253652 d!2253542)))

(assert (=> bs!1906138 (= (= (head!14901 (t!384565 s1!1971)) (h!76835 s1!1971)) (= lambda!444137 lambda!444110))))

(declare-fun bs!1906139 () Bool)

(assert (= bs!1906139 (and d!2253652 d!2253614)))

(assert (=> bs!1906139 (= (= (head!14901 (t!384565 s1!1971)) (head!14901 (++!16549 (t!384565 s1!1971) s2!1849))) (= lambda!444137 lambda!444133))))

(assert (=> d!2253652 true))

(assert (=> d!2253652 (= (derivationStepZipper!3421 lt!2584751 (head!14901 (t!384565 s1!1971))) (flatMap!2808 lt!2584751 lambda!444137))))

(declare-fun bs!1906140 () Bool)

(assert (= bs!1906140 d!2253652))

(declare-fun m!7929492 () Bool)

(assert (=> bs!1906140 m!7929492))

(assert (=> b!7250430 d!2253652))

(declare-fun d!2253654 () Bool)

(assert (=> d!2253654 (= (head!14901 (t!384565 s1!1971)) (h!76835 (t!384565 s1!1971)))))

(assert (=> b!7250430 d!2253654))

(declare-fun d!2253656 () Bool)

(assert (=> d!2253656 (= (tail!14317 (t!384565 s1!1971)) (t!384565 (t!384565 s1!1971)))))

(assert (=> b!7250430 d!2253656))

(declare-fun bs!1906141 () Bool)

(declare-fun d!2253658 () Bool)

(assert (= bs!1906141 (and d!2253658 b!7250242)))

(declare-fun lambda!444138 () Int)

(assert (=> bs!1906141 (not (= lambda!444138 lambda!444097))))

(declare-fun bs!1906142 () Bool)

(assert (= bs!1906142 (and d!2253658 d!2253568)))

(assert (=> bs!1906142 (not (= lambda!444138 lambda!444121))))

(declare-fun bs!1906143 () Bool)

(assert (= bs!1906143 (and d!2253658 d!2253574)))

(assert (=> bs!1906143 (not (= lambda!444138 lambda!444124))))

(declare-fun bs!1906144 () Bool)

(assert (= bs!1906144 (and d!2253658 d!2253626)))

(assert (=> bs!1906144 (= lambda!444138 lambda!444136)))

(assert (=> d!2253658 (= (nullableZipper!2911 lt!2584744) (exists!4364 lt!2584744 lambda!444138))))

(declare-fun bs!1906145 () Bool)

(assert (= bs!1906145 d!2253658))

(declare-fun m!7929494 () Bool)

(assert (=> bs!1906145 m!7929494))

(assert (=> b!7250437 d!2253658))

(declare-fun d!2253660 () Bool)

(declare-fun lt!2584831 () Int)

(assert (=> d!2253660 (>= lt!2584831 0)))

(declare-fun e!4347478 () Int)

(assert (=> d!2253660 (= lt!2584831 e!4347478)))

(declare-fun c!1347397 () Bool)

(assert (=> d!2253660 (= c!1347397 ((_ is Nil!70387) lt!2584769))))

(assert (=> d!2253660 (= (size!41711 lt!2584769) lt!2584831)))

(declare-fun b!7250591 () Bool)

(assert (=> b!7250591 (= e!4347478 0)))

(declare-fun b!7250592 () Bool)

(assert (=> b!7250592 (= e!4347478 (+ 1 (size!41711 (t!384565 lt!2584769))))))

(assert (= (and d!2253660 c!1347397) b!7250591))

(assert (= (and d!2253660 (not c!1347397)) b!7250592))

(declare-fun m!7929496 () Bool)

(assert (=> b!7250592 m!7929496))

(assert (=> b!7250291 d!2253660))

(declare-fun d!2253662 () Bool)

(declare-fun lt!2584832 () Int)

(assert (=> d!2253662 (>= lt!2584832 0)))

(declare-fun e!4347479 () Int)

(assert (=> d!2253662 (= lt!2584832 e!4347479)))

(declare-fun c!1347398 () Bool)

(assert (=> d!2253662 (= c!1347398 ((_ is Nil!70387) (t!384565 s1!1971)))))

(assert (=> d!2253662 (= (size!41711 (t!384565 s1!1971)) lt!2584832)))

(declare-fun b!7250593 () Bool)

(assert (=> b!7250593 (= e!4347479 0)))

(declare-fun b!7250594 () Bool)

(assert (=> b!7250594 (= e!4347479 (+ 1 (size!41711 (t!384565 (t!384565 s1!1971)))))))

(assert (= (and d!2253662 c!1347398) b!7250593))

(assert (= (and d!2253662 (not c!1347398)) b!7250594))

(assert (=> b!7250594 m!7929396))

(assert (=> b!7250291 d!2253662))

(declare-fun d!2253664 () Bool)

(declare-fun lt!2584833 () Int)

(assert (=> d!2253664 (>= lt!2584833 0)))

(declare-fun e!4347480 () Int)

(assert (=> d!2253664 (= lt!2584833 e!4347480)))

(declare-fun c!1347399 () Bool)

(assert (=> d!2253664 (= c!1347399 ((_ is Nil!70387) s2!1849))))

(assert (=> d!2253664 (= (size!41711 s2!1849) lt!2584833)))

(declare-fun b!7250595 () Bool)

(assert (=> b!7250595 (= e!4347480 0)))

(declare-fun b!7250596 () Bool)

(assert (=> b!7250596 (= e!4347480 (+ 1 (size!41711 (t!384565 s2!1849))))))

(assert (= (and d!2253664 c!1347399) b!7250595))

(assert (= (and d!2253664 (not c!1347399)) b!7250596))

(declare-fun m!7929498 () Bool)

(assert (=> b!7250596 m!7929498))

(assert (=> b!7250291 d!2253664))

(declare-fun d!2253666 () Bool)

(assert (=> d!2253666 (= (isEmpty!40534 (++!16549 (t!384565 s1!1971) s2!1849)) ((_ is Nil!70387) (++!16549 (t!384565 s1!1971) s2!1849)))))

(assert (=> d!2253474 d!2253666))

(declare-fun d!2253668 () Bool)

(declare-fun res!2940675 () Bool)

(declare-fun e!4347481 () Bool)

(assert (=> d!2253668 (=> res!2940675 e!4347481)))

(assert (=> d!2253668 (= res!2940675 ((_ is Nil!70385) (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))))))

(assert (=> d!2253668 (= (forall!17487 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328)) lambda!444096) e!4347481)))

(declare-fun b!7250597 () Bool)

(declare-fun e!4347482 () Bool)

(assert (=> b!7250597 (= e!4347481 e!4347482)))

(declare-fun res!2940676 () Bool)

(assert (=> b!7250597 (=> (not res!2940676) (not e!4347482))))

(assert (=> b!7250597 (= res!2940676 (dynLambda!28738 lambda!444096 (h!76833 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328)))))))

(declare-fun b!7250598 () Bool)

(assert (=> b!7250598 (= e!4347482 (forall!17487 (t!384563 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) lambda!444096))))

(assert (= (and d!2253668 (not res!2940675)) b!7250597))

(assert (= (and b!7250597 res!2940676) b!7250598))

(declare-fun b_lambda!278377 () Bool)

(assert (=> (not b_lambda!278377) (not b!7250597)))

(declare-fun m!7929500 () Bool)

(assert (=> b!7250597 m!7929500))

(declare-fun m!7929502 () Bool)

(assert (=> b!7250598 m!7929502))

(assert (=> d!2253490 d!2253668))

(assert (=> d!2253490 d!2253492))

(declare-fun d!2253670 () Bool)

(assert (=> d!2253670 (forall!17487 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328)) lambda!444096)))

(assert (=> d!2253670 true))

(declare-fun _$78!760 () Unit!163871)

(assert (=> d!2253670 (= (choose!56000 (exprs!8083 lt!2584735) (exprs!8083 ct2!328) lambda!444096) _$78!760)))

(declare-fun bs!1906146 () Bool)

(assert (= bs!1906146 d!2253670))

(assert (=> bs!1906146 m!7928962))

(assert (=> bs!1906146 m!7928962))

(assert (=> bs!1906146 m!7929078))

(assert (=> d!2253490 d!2253670))

(declare-fun d!2253672 () Bool)

(declare-fun res!2940677 () Bool)

(declare-fun e!4347483 () Bool)

(assert (=> d!2253672 (=> res!2940677 e!4347483)))

(assert (=> d!2253672 (= res!2940677 ((_ is Nil!70385) (exprs!8083 lt!2584735)))))

(assert (=> d!2253672 (= (forall!17487 (exprs!8083 lt!2584735) lambda!444096) e!4347483)))

(declare-fun b!7250599 () Bool)

(declare-fun e!4347484 () Bool)

(assert (=> b!7250599 (= e!4347483 e!4347484)))

(declare-fun res!2940678 () Bool)

(assert (=> b!7250599 (=> (not res!2940678) (not e!4347484))))

(assert (=> b!7250599 (= res!2940678 (dynLambda!28738 lambda!444096 (h!76833 (exprs!8083 lt!2584735))))))

(declare-fun b!7250600 () Bool)

(assert (=> b!7250600 (= e!4347484 (forall!17487 (t!384563 (exprs!8083 lt!2584735)) lambda!444096))))

(assert (= (and d!2253672 (not res!2940677)) b!7250599))

(assert (= (and b!7250599 res!2940678) b!7250600))

(declare-fun b_lambda!278379 () Bool)

(assert (=> (not b_lambda!278379) (not b!7250599)))

(declare-fun m!7929504 () Bool)

(assert (=> b!7250599 m!7929504))

(declare-fun m!7929506 () Bool)

(assert (=> b!7250600 m!7929506))

(assert (=> d!2253490 d!2253672))

(declare-fun bs!1906147 () Bool)

(declare-fun d!2253674 () Bool)

(assert (= bs!1906147 (and d!2253674 b!7250242)))

(declare-fun lambda!444139 () Int)

(assert (=> bs!1906147 (not (= lambda!444139 lambda!444097))))

(declare-fun bs!1906148 () Bool)

(assert (= bs!1906148 (and d!2253674 d!2253574)))

(assert (=> bs!1906148 (not (= lambda!444139 lambda!444124))))

(declare-fun bs!1906149 () Bool)

(assert (= bs!1906149 (and d!2253674 d!2253626)))

(assert (=> bs!1906149 (not (= lambda!444139 lambda!444136))))

(declare-fun bs!1906150 () Bool)

(assert (= bs!1906150 (and d!2253674 d!2253658)))

(assert (=> bs!1906150 (not (= lambda!444139 lambda!444138))))

(declare-fun bs!1906151 () Bool)

(assert (= bs!1906151 (and d!2253674 d!2253568)))

(assert (=> bs!1906151 (= lambda!444139 lambda!444121)))

(assert (=> d!2253674 true))

(assert (=> d!2253674 (< (dynLambda!28735 order!28975 lambda!444097) (dynLambda!28735 order!28975 lambda!444139))))

(assert (=> d!2253674 (= (exists!4365 (toList!11472 lt!2584751) lambda!444097) (not (forall!17489 (toList!11472 lt!2584751) lambda!444139)))))

(declare-fun bs!1906152 () Bool)

(assert (= bs!1906152 d!2253674))

(assert (=> bs!1906152 m!7928974))

(declare-fun m!7929508 () Bool)

(assert (=> bs!1906152 m!7929508))

(assert (=> d!2253562 d!2253674))

(assert (=> d!2253562 d!2253580))

(declare-fun d!2253676 () Bool)

(declare-fun res!2940681 () Bool)

(assert (=> d!2253676 (= res!2940681 (exists!4365 (toList!11472 lt!2584751) lambda!444097))))

(assert (=> d!2253676 true))

(assert (=> d!2253676 (= (choose!56006 lt!2584751 lambda!444097) res!2940681)))

(declare-fun bs!1906153 () Bool)

(assert (= bs!1906153 d!2253676))

(assert (=> bs!1906153 m!7928974))

(assert (=> bs!1906153 m!7928974))

(assert (=> bs!1906153 m!7929282))

(assert (=> d!2253562 d!2253676))

(declare-fun d!2253678 () Bool)

(assert (=> d!2253678 true))

(declare-fun setRes!53567 () Bool)

(assert (=> d!2253678 setRes!53567))

(declare-fun condSetEmpty!53567 () Bool)

(declare-fun res!2940684 () (InoxSet Context!15166))

(assert (=> d!2253678 (= condSetEmpty!53567 (= res!2940684 ((as const (Array Context!15166 Bool)) false)))))

(assert (=> d!2253678 (= (choose!56005 lt!2584744 lambda!444098) res!2940684)))

(declare-fun setIsEmpty!53567 () Bool)

(assert (=> setIsEmpty!53567 setRes!53567))

(declare-fun setNonEmpty!53567 () Bool)

(declare-fun tp!2037399 () Bool)

(declare-fun setElem!53567 () Context!15166)

(declare-fun e!4347487 () Bool)

(assert (=> setNonEmpty!53567 (= setRes!53567 (and tp!2037399 (inv!89617 setElem!53567) e!4347487))))

(declare-fun setRest!53567 () (InoxSet Context!15166))

(assert (=> setNonEmpty!53567 (= res!2940684 ((_ map or) (store ((as const (Array Context!15166 Bool)) false) setElem!53567 true) setRest!53567))))

(declare-fun b!7250603 () Bool)

(declare-fun tp!2037400 () Bool)

(assert (=> b!7250603 (= e!4347487 tp!2037400)))

(assert (= (and d!2253678 condSetEmpty!53567) setIsEmpty!53567))

(assert (= (and d!2253678 (not condSetEmpty!53567)) setNonEmpty!53567))

(assert (= setNonEmpty!53567 b!7250603))

(declare-fun m!7929510 () Bool)

(assert (=> setNonEmpty!53567 m!7929510))

(assert (=> d!2253534 d!2253678))

(declare-fun bs!1906154 () Bool)

(declare-fun d!2253680 () Bool)

(assert (= bs!1906154 (and d!2253680 b!7250242)))

(declare-fun lambda!444140 () Int)

(assert (=> bs!1906154 (not (= lambda!444140 lambda!444097))))

(declare-fun bs!1906155 () Bool)

(assert (= bs!1906155 (and d!2253680 d!2253674)))

(assert (=> bs!1906155 (= (= lambda!444124 lambda!444097) (= lambda!444140 lambda!444139))))

(declare-fun bs!1906156 () Bool)

(assert (= bs!1906156 (and d!2253680 d!2253574)))

(assert (=> bs!1906156 (not (= lambda!444140 lambda!444124))))

(declare-fun bs!1906157 () Bool)

(assert (= bs!1906157 (and d!2253680 d!2253626)))

(assert (=> bs!1906157 (not (= lambda!444140 lambda!444136))))

(declare-fun bs!1906158 () Bool)

(assert (= bs!1906158 (and d!2253680 d!2253658)))

(assert (=> bs!1906158 (not (= lambda!444140 lambda!444138))))

(declare-fun bs!1906159 () Bool)

(assert (= bs!1906159 (and d!2253680 d!2253568)))

(assert (=> bs!1906159 (= (= lambda!444124 lambda!444097) (= lambda!444140 lambda!444121))))

(assert (=> d!2253680 true))

(assert (=> d!2253680 (< (dynLambda!28735 order!28975 lambda!444124) (dynLambda!28735 order!28975 lambda!444140))))

(assert (=> d!2253680 (= (exists!4365 lt!2584734 lambda!444124) (not (forall!17489 lt!2584734 lambda!444140)))))

(declare-fun bs!1906160 () Bool)

(assert (= bs!1906160 d!2253680))

(declare-fun m!7929512 () Bool)

(assert (=> bs!1906160 m!7929512))

(assert (=> d!2253574 d!2253680))

(declare-fun bs!1906161 () Bool)

(declare-fun d!2253682 () Bool)

(assert (= bs!1906161 (and d!2253682 b!7250242)))

(declare-fun lambda!444143 () Int)

(assert (=> bs!1906161 (= lambda!444143 lambda!444097)))

(declare-fun bs!1906162 () Bool)

(assert (= bs!1906162 (and d!2253682 d!2253674)))

(assert (=> bs!1906162 (not (= lambda!444143 lambda!444139))))

(declare-fun bs!1906163 () Bool)

(assert (= bs!1906163 (and d!2253682 d!2253680)))

(assert (=> bs!1906163 (not (= lambda!444143 lambda!444140))))

(declare-fun bs!1906164 () Bool)

(assert (= bs!1906164 (and d!2253682 d!2253574)))

(assert (=> bs!1906164 (= lambda!444143 lambda!444124)))

(declare-fun bs!1906165 () Bool)

(assert (= bs!1906165 (and d!2253682 d!2253626)))

(assert (=> bs!1906165 (not (= lambda!444143 lambda!444136))))

(declare-fun bs!1906166 () Bool)

(assert (= bs!1906166 (and d!2253682 d!2253658)))

(assert (=> bs!1906166 (not (= lambda!444143 lambda!444138))))

(declare-fun bs!1906167 () Bool)

(assert (= bs!1906167 (and d!2253682 d!2253568)))

(assert (=> bs!1906167 (not (= lambda!444143 lambda!444121))))

(assert (=> d!2253682 true))

(assert (=> d!2253682 (exists!4365 lt!2584734 lambda!444143)))

(assert (=> d!2253682 true))

(declare-fun _$60!1222 () Unit!163871)

(assert (=> d!2253682 (= (choose!56007 lt!2584734 (t!384565 s1!1971)) _$60!1222)))

(declare-fun bs!1906168 () Bool)

(assert (= bs!1906168 d!2253682))

(declare-fun m!7929514 () Bool)

(assert (=> bs!1906168 m!7929514))

(assert (=> d!2253574 d!2253682))

(declare-fun d!2253684 () Bool)

(declare-fun c!1347402 () Bool)

(assert (=> d!2253684 (= c!1347402 (isEmpty!40534 (t!384565 s1!1971)))))

(declare-fun e!4347488 () Bool)

(assert (=> d!2253684 (= (matchZipper!3553 (content!14604 lt!2584734) (t!384565 s1!1971)) e!4347488)))

(declare-fun b!7250604 () Bool)

(assert (=> b!7250604 (= e!4347488 (nullableZipper!2911 (content!14604 lt!2584734)))))

(declare-fun b!7250605 () Bool)

(assert (=> b!7250605 (= e!4347488 (matchZipper!3553 (derivationStepZipper!3421 (content!14604 lt!2584734) (head!14901 (t!384565 s1!1971))) (tail!14317 (t!384565 s1!1971))))))

(assert (= (and d!2253684 c!1347402) b!7250604))

(assert (= (and d!2253684 (not c!1347402)) b!7250605))

(assert (=> d!2253684 m!7929208))

(assert (=> b!7250604 m!7929334))

(declare-fun m!7929516 () Bool)

(assert (=> b!7250604 m!7929516))

(assert (=> b!7250605 m!7929212))

(assert (=> b!7250605 m!7929334))

(assert (=> b!7250605 m!7929212))

(declare-fun m!7929518 () Bool)

(assert (=> b!7250605 m!7929518))

(assert (=> b!7250605 m!7929216))

(assert (=> b!7250605 m!7929518))

(assert (=> b!7250605 m!7929216))

(declare-fun m!7929520 () Bool)

(assert (=> b!7250605 m!7929520))

(assert (=> d!2253574 d!2253684))

(declare-fun d!2253686 () Bool)

(declare-fun c!1347403 () Bool)

(assert (=> d!2253686 (= c!1347403 ((_ is Nil!70386) lt!2584734))))

(declare-fun e!4347489 () (InoxSet Context!15166))

(assert (=> d!2253686 (= (content!14604 lt!2584734) e!4347489)))

(declare-fun b!7250606 () Bool)

(assert (=> b!7250606 (= e!4347489 ((as const (Array Context!15166 Bool)) false))))

(declare-fun b!7250607 () Bool)

(assert (=> b!7250607 (= e!4347489 ((_ map or) (store ((as const (Array Context!15166 Bool)) false) (h!76834 lt!2584734) true) (content!14604 (t!384564 lt!2584734))))))

(assert (= (and d!2253686 c!1347403) b!7250606))

(assert (= (and d!2253686 (not c!1347403)) b!7250607))

(declare-fun m!7929522 () Bool)

(assert (=> b!7250607 m!7929522))

(declare-fun m!7929524 () Bool)

(assert (=> b!7250607 m!7929524))

(assert (=> d!2253574 d!2253686))

(declare-fun d!2253688 () Bool)

(declare-fun c!1347406 () Bool)

(assert (=> d!2253688 (= c!1347406 ((_ is Nil!70385) lt!2584777))))

(declare-fun e!4347492 () (InoxSet Regex!18643))

(assert (=> d!2253688 (= (content!14603 lt!2584777) e!4347492)))

(declare-fun b!7250612 () Bool)

(assert (=> b!7250612 (= e!4347492 ((as const (Array Regex!18643 Bool)) false))))

(declare-fun b!7250613 () Bool)

(assert (=> b!7250613 (= e!4347492 ((_ map or) (store ((as const (Array Regex!18643 Bool)) false) (h!76833 lt!2584777) true) (content!14603 (t!384563 lt!2584777))))))

(assert (= (and d!2253688 c!1347406) b!7250612))

(assert (= (and d!2253688 (not c!1347406)) b!7250613))

(declare-fun m!7929526 () Bool)

(assert (=> b!7250613 m!7929526))

(declare-fun m!7929528 () Bool)

(assert (=> b!7250613 m!7929528))

(assert (=> d!2253494 d!2253688))

(declare-fun d!2253690 () Bool)

(declare-fun c!1347407 () Bool)

(assert (=> d!2253690 (= c!1347407 ((_ is Nil!70385) (exprs!8083 ct1!232)))))

(declare-fun e!4347493 () (InoxSet Regex!18643))

(assert (=> d!2253690 (= (content!14603 (exprs!8083 ct1!232)) e!4347493)))

(declare-fun b!7250614 () Bool)

(assert (=> b!7250614 (= e!4347493 ((as const (Array Regex!18643 Bool)) false))))

(declare-fun b!7250615 () Bool)

(assert (=> b!7250615 (= e!4347493 ((_ map or) (store ((as const (Array Regex!18643 Bool)) false) (h!76833 (exprs!8083 ct1!232)) true) (content!14603 (t!384563 (exprs!8083 ct1!232)))))))

(assert (= (and d!2253690 c!1347407) b!7250614))

(assert (= (and d!2253690 (not c!1347407)) b!7250615))

(declare-fun m!7929530 () Bool)

(assert (=> b!7250615 m!7929530))

(assert (=> b!7250615 m!7929434))

(assert (=> d!2253494 d!2253690))

(declare-fun d!2253692 () Bool)

(declare-fun c!1347408 () Bool)

(assert (=> d!2253692 (= c!1347408 ((_ is Nil!70385) (exprs!8083 ct2!328)))))

(declare-fun e!4347494 () (InoxSet Regex!18643))

(assert (=> d!2253692 (= (content!14603 (exprs!8083 ct2!328)) e!4347494)))

(declare-fun b!7250616 () Bool)

(assert (=> b!7250616 (= e!4347494 ((as const (Array Regex!18643 Bool)) false))))

(declare-fun b!7250617 () Bool)

(assert (=> b!7250617 (= e!4347494 ((_ map or) (store ((as const (Array Regex!18643 Bool)) false) (h!76833 (exprs!8083 ct2!328)) true) (content!14603 (t!384563 (exprs!8083 ct2!328)))))))

(assert (= (and d!2253692 c!1347408) b!7250616))

(assert (= (and d!2253692 (not c!1347408)) b!7250617))

(declare-fun m!7929532 () Bool)

(assert (=> b!7250617 m!7929532))

(declare-fun m!7929534 () Bool)

(assert (=> b!7250617 m!7929534))

(assert (=> d!2253494 d!2253692))

(declare-fun d!2253694 () Bool)

(declare-fun res!2940685 () Bool)

(declare-fun e!4347495 () Bool)

(assert (=> d!2253694 (=> res!2940685 e!4347495)))

(assert (=> d!2253694 (= res!2940685 ((_ is Nil!70385) (exprs!8083 ct1!232)))))

(assert (=> d!2253694 (= (forall!17487 (exprs!8083 ct1!232) lambda!444113) e!4347495)))

(declare-fun b!7250618 () Bool)

(declare-fun e!4347496 () Bool)

(assert (=> b!7250618 (= e!4347495 e!4347496)))

(declare-fun res!2940686 () Bool)

(assert (=> b!7250618 (=> (not res!2940686) (not e!4347496))))

(assert (=> b!7250618 (= res!2940686 (dynLambda!28738 lambda!444113 (h!76833 (exprs!8083 ct1!232))))))

(declare-fun b!7250619 () Bool)

(assert (=> b!7250619 (= e!4347496 (forall!17487 (t!384563 (exprs!8083 ct1!232)) lambda!444113))))

(assert (= (and d!2253694 (not res!2940685)) b!7250618))

(assert (= (and b!7250618 res!2940686) b!7250619))

(declare-fun b_lambda!278381 () Bool)

(assert (=> (not b_lambda!278381) (not b!7250618)))

(declare-fun m!7929536 () Bool)

(assert (=> b!7250618 m!7929536))

(declare-fun m!7929538 () Bool)

(assert (=> b!7250619 m!7929538))

(assert (=> d!2253548 d!2253694))

(assert (=> b!7250409 d!2253624))

(assert (=> b!7250308 d!2253532))

(declare-fun d!2253696 () Bool)

(declare-fun c!1347411 () Bool)

(assert (=> d!2253696 (= c!1347411 ((_ is Nil!70387) lt!2584769))))

(declare-fun e!4347499 () (InoxSet C!37560))

(assert (=> d!2253696 (= (content!14602 lt!2584769) e!4347499)))

(declare-fun b!7250624 () Bool)

(assert (=> b!7250624 (= e!4347499 ((as const (Array C!37560 Bool)) false))))

(declare-fun b!7250625 () Bool)

(assert (=> b!7250625 (= e!4347499 ((_ map or) (store ((as const (Array C!37560 Bool)) false) (h!76835 lt!2584769) true) (content!14602 (t!384565 lt!2584769))))))

(assert (= (and d!2253696 c!1347411) b!7250624))

(assert (= (and d!2253696 (not c!1347411)) b!7250625))

(declare-fun m!7929540 () Bool)

(assert (=> b!7250625 m!7929540))

(declare-fun m!7929542 () Bool)

(assert (=> b!7250625 m!7929542))

(assert (=> d!2253480 d!2253696))

(declare-fun d!2253698 () Bool)

(declare-fun c!1347412 () Bool)

(assert (=> d!2253698 (= c!1347412 ((_ is Nil!70387) (t!384565 s1!1971)))))

(declare-fun e!4347500 () (InoxSet C!37560))

(assert (=> d!2253698 (= (content!14602 (t!384565 s1!1971)) e!4347500)))

(declare-fun b!7250626 () Bool)

(assert (=> b!7250626 (= e!4347500 ((as const (Array C!37560 Bool)) false))))

(declare-fun b!7250627 () Bool)

(assert (=> b!7250627 (= e!4347500 ((_ map or) (store ((as const (Array C!37560 Bool)) false) (h!76835 (t!384565 s1!1971)) true) (content!14602 (t!384565 (t!384565 s1!1971)))))))

(assert (= (and d!2253698 c!1347412) b!7250626))

(assert (= (and d!2253698 (not c!1347412)) b!7250627))

(declare-fun m!7929544 () Bool)

(assert (=> b!7250627 m!7929544))

(assert (=> b!7250627 m!7929400))

(assert (=> d!2253480 d!2253698))

(declare-fun d!2253700 () Bool)

(declare-fun c!1347413 () Bool)

(assert (=> d!2253700 (= c!1347413 ((_ is Nil!70387) s2!1849))))

(declare-fun e!4347501 () (InoxSet C!37560))

(assert (=> d!2253700 (= (content!14602 s2!1849) e!4347501)))

(declare-fun b!7250628 () Bool)

(assert (=> b!7250628 (= e!4347501 ((as const (Array C!37560 Bool)) false))))

(declare-fun b!7250629 () Bool)

(assert (=> b!7250629 (= e!4347501 ((_ map or) (store ((as const (Array C!37560 Bool)) false) (h!76835 s2!1849) true) (content!14602 (t!384565 s2!1849))))))

(assert (= (and d!2253700 c!1347413) b!7250628))

(assert (= (and d!2253700 (not c!1347413)) b!7250629))

(declare-fun m!7929546 () Bool)

(assert (=> b!7250629 m!7929546))

(declare-fun m!7929548 () Bool)

(assert (=> b!7250629 m!7929548))

(assert (=> d!2253480 d!2253700))

(declare-fun bm!660356 () Bool)

(declare-fun call!660363 () List!70509)

(declare-fun call!660366 () List!70509)

(assert (=> bm!660356 (= call!660363 call!660366)))

(declare-fun b!7250630 () Bool)

(declare-fun e!4347507 () (InoxSet Context!15166))

(declare-fun e!4347505 () (InoxSet Context!15166))

(assert (=> b!7250630 (= e!4347507 e!4347505)))

(declare-fun c!1347417 () Bool)

(assert (=> b!7250630 (= c!1347417 ((_ is Union!18643) (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))))))

(declare-fun b!7250632 () Bool)

(declare-fun e!4347502 () (InoxSet Context!15166))

(declare-fun call!660362 () (InoxSet Context!15166))

(declare-fun call!660364 () (InoxSet Context!15166))

(assert (=> b!7250632 (= e!4347502 ((_ map or) call!660362 call!660364))))

(declare-fun b!7250633 () Bool)

(declare-fun e!4347503 () (InoxSet Context!15166))

(assert (=> b!7250633 (= e!4347502 e!4347503)))

(declare-fun c!1347415 () Bool)

(assert (=> b!7250633 (= c!1347415 ((_ is Concat!27488) (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))))))

(declare-fun bm!660357 () Bool)

(declare-fun c!1347414 () Bool)

(assert (=> bm!660357 (= call!660366 ($colon$colon!2916 (exprs!8083 (ite c!1347338 (Context!15167 (tail!14316 lt!2584739)) (Context!15167 call!660339))) (ite (or c!1347414 c!1347415) (regTwo!37798 (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))))))))

(declare-fun b!7250634 () Bool)

(declare-fun c!1347416 () Bool)

(assert (=> b!7250634 (= c!1347416 ((_ is Star!18643) (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))))))

(declare-fun e!4347506 () (InoxSet Context!15166))

(assert (=> b!7250634 (= e!4347503 e!4347506)))

(declare-fun b!7250635 () Bool)

(declare-fun call!660361 () (InoxSet Context!15166))

(assert (=> b!7250635 (= e!4347506 call!660361)))

(declare-fun bm!660358 () Bool)

(assert (=> bm!660358 (= call!660361 call!660364)))

(declare-fun b!7250631 () Bool)

(assert (=> b!7250631 (= e!4347503 call!660361)))

(declare-fun c!1347418 () Bool)

(declare-fun d!2253702 () Bool)

(assert (=> d!2253702 (= c!1347418 (and ((_ is ElementMatch!18643) (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (= (c!1347277 (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (h!76835 s1!1971))))))

(assert (=> d!2253702 (= (derivationStepZipperDown!2637 (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))) (ite c!1347338 (Context!15167 (tail!14316 lt!2584739)) (Context!15167 call!660339)) (h!76835 s1!1971)) e!4347507)))

(declare-fun b!7250636 () Bool)

(declare-fun e!4347504 () Bool)

(assert (=> b!7250636 (= c!1347414 e!4347504)))

(declare-fun res!2940687 () Bool)

(assert (=> b!7250636 (=> (not res!2940687) (not e!4347504))))

(assert (=> b!7250636 (= res!2940687 ((_ is Concat!27488) (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))))))

(assert (=> b!7250636 (= e!4347505 e!4347502)))

(declare-fun b!7250637 () Bool)

(declare-fun call!660365 () (InoxSet Context!15166))

(assert (=> b!7250637 (= e!4347505 ((_ map or) call!660365 call!660362))))

(declare-fun b!7250638 () Bool)

(assert (=> b!7250638 (= e!4347504 (nullable!7903 (regOne!37798 (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))))))))

(declare-fun b!7250639 () Bool)

(assert (=> b!7250639 (= e!4347507 (store ((as const (Array Context!15166 Bool)) false) (ite c!1347338 (Context!15167 (tail!14316 lt!2584739)) (Context!15167 call!660339)) true))))

(declare-fun bm!660359 () Bool)

(assert (=> bm!660359 (= call!660365 (derivationStepZipperDown!2637 (ite c!1347417 (regOne!37799 (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (ite c!1347414 (regTwo!37798 (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (ite c!1347415 (regOne!37798 (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (reg!18972 (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))))))) (ite (or c!1347417 c!1347414) (ite c!1347338 (Context!15167 (tail!14316 lt!2584739)) (Context!15167 call!660339)) (Context!15167 call!660363)) (h!76835 s1!1971)))))

(declare-fun b!7250640 () Bool)

(assert (=> b!7250640 (= e!4347506 ((as const (Array Context!15166 Bool)) false))))

(declare-fun bm!660360 () Bool)

(assert (=> bm!660360 (= call!660362 (derivationStepZipperDown!2637 (ite c!1347417 (regTwo!37799 (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (regOne!37798 (ite c!1347338 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))))) (ite c!1347417 (ite c!1347338 (Context!15167 (tail!14316 lt!2584739)) (Context!15167 call!660339)) (Context!15167 call!660366)) (h!76835 s1!1971)))))

(declare-fun bm!660361 () Bool)

(assert (=> bm!660361 (= call!660364 call!660365)))

(assert (= (and d!2253702 c!1347418) b!7250639))

(assert (= (and d!2253702 (not c!1347418)) b!7250630))

(assert (= (and b!7250630 c!1347417) b!7250637))

(assert (= (and b!7250630 (not c!1347417)) b!7250636))

(assert (= (and b!7250636 res!2940687) b!7250638))

(assert (= (and b!7250636 c!1347414) b!7250632))

(assert (= (and b!7250636 (not c!1347414)) b!7250633))

(assert (= (and b!7250633 c!1347415) b!7250631))

(assert (= (and b!7250633 (not c!1347415)) b!7250634))

(assert (= (and b!7250634 c!1347416) b!7250635))

(assert (= (and b!7250634 (not c!1347416)) b!7250640))

(assert (= (or b!7250631 b!7250635) bm!660356))

(assert (= (or b!7250631 b!7250635) bm!660358))

(assert (= (or b!7250632 bm!660356) bm!660357))

(assert (= (or b!7250632 bm!660358) bm!660361))

(assert (= (or b!7250637 b!7250632) bm!660360))

(assert (= (or b!7250637 bm!660361) bm!660359))

(declare-fun m!7929550 () Bool)

(assert (=> b!7250639 m!7929550))

(declare-fun m!7929552 () Bool)

(assert (=> bm!660357 m!7929552))

(declare-fun m!7929554 () Bool)

(assert (=> bm!660360 m!7929554))

(declare-fun m!7929556 () Bool)

(assert (=> bm!660359 m!7929556))

(declare-fun m!7929558 () Bool)

(assert (=> b!7250638 m!7929558))

(assert (=> bm!660333 d!2253702))

(declare-fun bs!1906169 () Bool)

(declare-fun d!2253704 () Bool)

(assert (= bs!1906169 (and d!2253704 b!7250242)))

(declare-fun lambda!444144 () Int)

(assert (=> bs!1906169 (not (= lambda!444144 lambda!444097))))

(declare-fun bs!1906170 () Bool)

(assert (= bs!1906170 (and d!2253704 d!2253674)))

(assert (=> bs!1906170 (not (= lambda!444144 lambda!444139))))

(declare-fun bs!1906171 () Bool)

(assert (= bs!1906171 (and d!2253704 d!2253680)))

(assert (=> bs!1906171 (not (= lambda!444144 lambda!444140))))

(declare-fun bs!1906172 () Bool)

(assert (= bs!1906172 (and d!2253704 d!2253574)))

(assert (=> bs!1906172 (not (= lambda!444144 lambda!444124))))

(declare-fun bs!1906173 () Bool)

(assert (= bs!1906173 (and d!2253704 d!2253682)))

(assert (=> bs!1906173 (not (= lambda!444144 lambda!444143))))

(declare-fun bs!1906174 () Bool)

(assert (= bs!1906174 (and d!2253704 d!2253626)))

(assert (=> bs!1906174 (= lambda!444144 lambda!444136)))

(declare-fun bs!1906175 () Bool)

(assert (= bs!1906175 (and d!2253704 d!2253658)))

(assert (=> bs!1906175 (= lambda!444144 lambda!444138)))

(declare-fun bs!1906176 () Bool)

(assert (= bs!1906176 (and d!2253704 d!2253568)))

(assert (=> bs!1906176 (not (= lambda!444144 lambda!444121))))

(assert (=> d!2253704 (= (nullableZipper!2911 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true)) (exists!4364 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true) lambda!444144))))

(declare-fun bs!1906177 () Bool)

(assert (= bs!1906177 d!2253704))

(assert (=> bs!1906177 m!7928956))

(declare-fun m!7929560 () Bool)

(assert (=> bs!1906177 m!7929560))

(assert (=> b!7250270 d!2253704))

(declare-fun bm!660362 () Bool)

(declare-fun call!660369 () List!70509)

(declare-fun call!660372 () List!70509)

(assert (=> bm!660362 (= call!660369 call!660372)))

(declare-fun b!7250641 () Bool)

(declare-fun e!4347513 () (InoxSet Context!15166))

(declare-fun e!4347511 () (InoxSet Context!15166))

(assert (=> b!7250641 (= e!4347513 e!4347511)))

(declare-fun c!1347422 () Bool)

(assert (=> b!7250641 (= c!1347422 ((_ is Union!18643) (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))))))

(declare-fun b!7250643 () Bool)

(declare-fun e!4347508 () (InoxSet Context!15166))

(declare-fun call!660368 () (InoxSet Context!15166))

(declare-fun call!660370 () (InoxSet Context!15166))

(assert (=> b!7250643 (= e!4347508 ((_ map or) call!660368 call!660370))))

(declare-fun b!7250644 () Bool)

(declare-fun e!4347509 () (InoxSet Context!15166))

(assert (=> b!7250644 (= e!4347508 e!4347509)))

(declare-fun c!1347420 () Bool)

(assert (=> b!7250644 (= c!1347420 ((_ is Concat!27488) (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))))))

(declare-fun c!1347419 () Bool)

(declare-fun bm!660363 () Bool)

(assert (=> bm!660363 (= call!660372 ($colon$colon!2916 (exprs!8083 (ite (or c!1347338 c!1347335) (Context!15167 (tail!14316 lt!2584739)) (Context!15167 call!660336))) (ite (or c!1347419 c!1347420) (regTwo!37798 (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))))))))

(declare-fun c!1347421 () Bool)

(declare-fun b!7250645 () Bool)

(assert (=> b!7250645 (= c!1347421 ((_ is Star!18643) (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))))))

(declare-fun e!4347512 () (InoxSet Context!15166))

(assert (=> b!7250645 (= e!4347509 e!4347512)))

(declare-fun b!7250646 () Bool)

(declare-fun call!660367 () (InoxSet Context!15166))

(assert (=> b!7250646 (= e!4347512 call!660367)))

(declare-fun bm!660364 () Bool)

(assert (=> bm!660364 (= call!660367 call!660370)))

(declare-fun b!7250642 () Bool)

(assert (=> b!7250642 (= e!4347509 call!660367)))

(declare-fun d!2253706 () Bool)

(declare-fun c!1347423 () Bool)

(assert (=> d!2253706 (= c!1347423 (and ((_ is ElementMatch!18643) (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (= (c!1347277 (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (h!76835 s1!1971))))))

(assert (=> d!2253706 (= (derivationStepZipperDown!2637 (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))) (ite (or c!1347338 c!1347335) (Context!15167 (tail!14316 lt!2584739)) (Context!15167 call!660336)) (h!76835 s1!1971)) e!4347513)))

(declare-fun b!7250647 () Bool)

(declare-fun e!4347510 () Bool)

(assert (=> b!7250647 (= c!1347419 e!4347510)))

(declare-fun res!2940688 () Bool)

(assert (=> b!7250647 (=> (not res!2940688) (not e!4347510))))

(assert (=> b!7250647 (= res!2940688 ((_ is Concat!27488) (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))))))

(assert (=> b!7250647 (= e!4347511 e!4347508)))

(declare-fun b!7250648 () Bool)

(declare-fun call!660371 () (InoxSet Context!15166))

(assert (=> b!7250648 (= e!4347511 ((_ map or) call!660371 call!660368))))

(declare-fun b!7250649 () Bool)

(assert (=> b!7250649 (= e!4347510 (nullable!7903 (regOne!37798 (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))))))))

(declare-fun b!7250650 () Bool)

(assert (=> b!7250650 (= e!4347513 (store ((as const (Array Context!15166 Bool)) false) (ite (or c!1347338 c!1347335) (Context!15167 (tail!14316 lt!2584739)) (Context!15167 call!660336)) true))))

(declare-fun bm!660365 () Bool)

(assert (=> bm!660365 (= call!660371 (derivationStepZipperDown!2637 (ite c!1347422 (regOne!37799 (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (ite c!1347419 (regTwo!37798 (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (ite c!1347420 (regOne!37798 (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (reg!18972 (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))))))) (ite (or c!1347422 c!1347419) (ite (or c!1347338 c!1347335) (Context!15167 (tail!14316 lt!2584739)) (Context!15167 call!660336)) (Context!15167 call!660369)) (h!76835 s1!1971)))))

(declare-fun b!7250651 () Bool)

(assert (=> b!7250651 (= e!4347512 ((as const (Array Context!15166 Bool)) false))))

(declare-fun bm!660366 () Bool)

(assert (=> bm!660366 (= call!660368 (derivationStepZipperDown!2637 (ite c!1347422 (regTwo!37799 (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (regOne!37798 (ite c!1347338 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347335 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347336 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))))) (ite c!1347422 (ite (or c!1347338 c!1347335) (Context!15167 (tail!14316 lt!2584739)) (Context!15167 call!660336)) (Context!15167 call!660372)) (h!76835 s1!1971)))))

(declare-fun bm!660367 () Bool)

(assert (=> bm!660367 (= call!660370 call!660371)))

(assert (= (and d!2253706 c!1347423) b!7250650))

(assert (= (and d!2253706 (not c!1347423)) b!7250641))

(assert (= (and b!7250641 c!1347422) b!7250648))

(assert (= (and b!7250641 (not c!1347422)) b!7250647))

(assert (= (and b!7250647 res!2940688) b!7250649))

(assert (= (and b!7250647 c!1347419) b!7250643))

(assert (= (and b!7250647 (not c!1347419)) b!7250644))

(assert (= (and b!7250644 c!1347420) b!7250642))

(assert (= (and b!7250644 (not c!1347420)) b!7250645))

(assert (= (and b!7250645 c!1347421) b!7250646))

(assert (= (and b!7250645 (not c!1347421)) b!7250651))

(assert (= (or b!7250642 b!7250646) bm!660362))

(assert (= (or b!7250642 b!7250646) bm!660364))

(assert (= (or b!7250643 bm!660362) bm!660363))

(assert (= (or b!7250643 bm!660364) bm!660367))

(assert (= (or b!7250648 b!7250643) bm!660366))

(assert (= (or b!7250648 bm!660367) bm!660365))

(declare-fun m!7929562 () Bool)

(assert (=> b!7250650 m!7929562))

(declare-fun m!7929564 () Bool)

(assert (=> bm!660363 m!7929564))

(declare-fun m!7929566 () Bool)

(assert (=> bm!660366 m!7929566))

(declare-fun m!7929568 () Bool)

(assert (=> bm!660365 m!7929568))

(declare-fun m!7929570 () Bool)

(assert (=> b!7250649 m!7929570))

(assert (=> bm!660332 d!2253706))

(declare-fun d!2253708 () Bool)

(declare-fun res!2940693 () Bool)

(declare-fun e!4347518 () Bool)

(assert (=> d!2253708 (=> res!2940693 e!4347518)))

(assert (=> d!2253708 (= res!2940693 ((_ is Nil!70386) lt!2584734))))

(assert (=> d!2253708 (= (forall!17489 lt!2584734 lambda!444121) e!4347518)))

(declare-fun b!7250656 () Bool)

(declare-fun e!4347519 () Bool)

(assert (=> b!7250656 (= e!4347518 e!4347519)))

(declare-fun res!2940694 () Bool)

(assert (=> b!7250656 (=> (not res!2940694) (not e!4347519))))

(assert (=> b!7250656 (= res!2940694 (dynLambda!28732 lambda!444121 (h!76834 lt!2584734)))))

(declare-fun b!7250657 () Bool)

(assert (=> b!7250657 (= e!4347519 (forall!17489 (t!384564 lt!2584734) lambda!444121))))

(assert (= (and d!2253708 (not res!2940693)) b!7250656))

(assert (= (and b!7250656 res!2940694) b!7250657))

(declare-fun b_lambda!278383 () Bool)

(assert (=> (not b_lambda!278383) (not b!7250656)))

(declare-fun m!7929572 () Bool)

(assert (=> b!7250656 m!7929572))

(declare-fun m!7929574 () Bool)

(assert (=> b!7250657 m!7929574))

(assert (=> d!2253568 d!2253708))

(declare-fun d!2253710 () Bool)

(declare-fun res!2940699 () Bool)

(declare-fun e!4347524 () Bool)

(assert (=> d!2253710 (=> res!2940699 e!4347524)))

(assert (=> d!2253710 (= res!2940699 ((_ is Nil!70386) lt!2584812))))

(assert (=> d!2253710 (= (noDuplicate!2987 lt!2584812) e!4347524)))

(declare-fun b!7250662 () Bool)

(declare-fun e!4347525 () Bool)

(assert (=> b!7250662 (= e!4347524 e!4347525)))

(declare-fun res!2940700 () Bool)

(assert (=> b!7250662 (=> (not res!2940700) (not e!4347525))))

(declare-fun contains!20742 (List!70510 Context!15166) Bool)

(assert (=> b!7250662 (= res!2940700 (not (contains!20742 (t!384564 lt!2584812) (h!76834 lt!2584812))))))

(declare-fun b!7250663 () Bool)

(assert (=> b!7250663 (= e!4347525 (noDuplicate!2987 (t!384564 lt!2584812)))))

(assert (= (and d!2253710 (not res!2940699)) b!7250662))

(assert (= (and b!7250662 res!2940700) b!7250663))

(declare-fun m!7929576 () Bool)

(assert (=> b!7250662 m!7929576))

(declare-fun m!7929578 () Bool)

(assert (=> b!7250663 m!7929578))

(assert (=> d!2253580 d!2253710))

(declare-fun d!2253712 () Bool)

(declare-fun e!4347533 () Bool)

(assert (=> d!2253712 e!4347533))

(declare-fun res!2940706 () Bool)

(assert (=> d!2253712 (=> (not res!2940706) (not e!4347533))))

(declare-fun res!2940705 () List!70510)

(assert (=> d!2253712 (= res!2940706 (noDuplicate!2987 res!2940705))))

(declare-fun e!4347532 () Bool)

(assert (=> d!2253712 e!4347532))

(assert (=> d!2253712 (= (choose!56008 lt!2584751) res!2940705)))

(declare-fun b!7250671 () Bool)

(declare-fun e!4347534 () Bool)

(declare-fun tp!2037405 () Bool)

(assert (=> b!7250671 (= e!4347534 tp!2037405)))

(declare-fun b!7250670 () Bool)

(declare-fun tp!2037406 () Bool)

(assert (=> b!7250670 (= e!4347532 (and (inv!89617 (h!76834 res!2940705)) e!4347534 tp!2037406))))

(declare-fun b!7250672 () Bool)

(assert (=> b!7250672 (= e!4347533 (= (content!14604 res!2940705) lt!2584751))))

(assert (= b!7250670 b!7250671))

(assert (= (and d!2253712 ((_ is Cons!70386) res!2940705)) b!7250670))

(assert (= (and d!2253712 res!2940706) b!7250672))

(declare-fun m!7929580 () Bool)

(assert (=> d!2253712 m!7929580))

(declare-fun m!7929582 () Bool)

(assert (=> b!7250670 m!7929582))

(declare-fun m!7929584 () Bool)

(assert (=> b!7250672 m!7929584))

(assert (=> d!2253580 d!2253712))

(declare-fun d!2253714 () Bool)

(assert (=> d!2253714 (= (isEmpty!40534 (t!384565 s1!1971)) ((_ is Nil!70387) (t!384565 s1!1971)))))

(assert (=> d!2253540 d!2253714))

(declare-fun b!7250685 () Bool)

(declare-fun e!4347546 () Bool)

(declare-fun lt!2584838 () Context!15166)

(assert (=> b!7250685 (= e!4347546 (contains!20742 (toList!11472 lt!2584751) lt!2584838))))

(declare-fun b!7250686 () Bool)

(declare-fun e!4347544 () Context!15166)

(assert (=> b!7250686 (= e!4347544 (h!76834 (toList!11472 lt!2584751)))))

(declare-fun b!7250687 () Bool)

(declare-fun e!4347545 () Bool)

(assert (=> b!7250687 (= e!4347545 (dynLambda!28732 lambda!444097 (h!76834 (toList!11472 lt!2584751))))))

(declare-fun b!7250689 () Bool)

(declare-fun lt!2584839 () Unit!163871)

(declare-fun Unit!163873 () Unit!163871)

(assert (=> b!7250689 (= lt!2584839 Unit!163873)))

(assert (=> b!7250689 false))

(declare-fun e!4347543 () Context!15166)

(declare-fun head!14903 (List!70510) Context!15166)

(assert (=> b!7250689 (= e!4347543 (head!14903 (toList!11472 lt!2584751)))))

(declare-fun b!7250690 () Bool)

(assert (=> b!7250690 (= e!4347543 (getWitness!2200 (t!384564 (toList!11472 lt!2584751)) lambda!444097))))

(declare-fun b!7250688 () Bool)

(assert (=> b!7250688 (= e!4347544 e!4347543)))

(declare-fun c!1347428 () Bool)

(assert (=> b!7250688 (= c!1347428 ((_ is Cons!70386) (toList!11472 lt!2584751)))))

(declare-fun d!2253716 () Bool)

(assert (=> d!2253716 e!4347546))

(declare-fun res!2940711 () Bool)

(assert (=> d!2253716 (=> (not res!2940711) (not e!4347546))))

(assert (=> d!2253716 (= res!2940711 (dynLambda!28732 lambda!444097 lt!2584838))))

(assert (=> d!2253716 (= lt!2584838 e!4347544)))

(declare-fun c!1347429 () Bool)

(assert (=> d!2253716 (= c!1347429 e!4347545)))

(declare-fun res!2940712 () Bool)

(assert (=> d!2253716 (=> (not res!2940712) (not e!4347545))))

(assert (=> d!2253716 (= res!2940712 ((_ is Cons!70386) (toList!11472 lt!2584751)))))

(assert (=> d!2253716 (exists!4365 (toList!11472 lt!2584751) lambda!444097)))

(assert (=> d!2253716 (= (getWitness!2200 (toList!11472 lt!2584751) lambda!444097) lt!2584838)))

(assert (= (and d!2253716 res!2940712) b!7250687))

(assert (= (and d!2253716 c!1347429) b!7250686))

(assert (= (and d!2253716 (not c!1347429)) b!7250688))

(assert (= (and b!7250688 c!1347428) b!7250690))

(assert (= (and b!7250688 (not c!1347428)) b!7250689))

(assert (= (and d!2253716 res!2940711) b!7250685))

(declare-fun b_lambda!278385 () Bool)

(assert (=> (not b_lambda!278385) (not b!7250687)))

(declare-fun b_lambda!278387 () Bool)

(assert (=> (not b_lambda!278387) (not d!2253716)))

(declare-fun m!7929586 () Bool)

(assert (=> b!7250687 m!7929586))

(assert (=> b!7250689 m!7928974))

(declare-fun m!7929588 () Bool)

(assert (=> b!7250689 m!7929588))

(declare-fun m!7929590 () Bool)

(assert (=> b!7250690 m!7929590))

(declare-fun m!7929592 () Bool)

(assert (=> d!2253716 m!7929592))

(assert (=> d!2253716 m!7928974))

(assert (=> d!2253716 m!7929282))

(assert (=> b!7250685 m!7928974))

(declare-fun m!7929594 () Bool)

(assert (=> b!7250685 m!7929594))

(assert (=> d!2253470 d!2253716))

(assert (=> d!2253470 d!2253580))

(assert (=> d!2253470 d!2253562))

(assert (=> bs!1906118 d!2253538))

(declare-fun d!2253718 () Bool)

(assert (=> d!2253718 (= ($colon$colon!2916 (exprs!8083 (Context!15167 (tail!14316 lt!2584739))) (ite (or c!1347335 c!1347336) (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (h!76833 (exprs!8083 ct1!232)))) (Cons!70385 (ite (or c!1347335 c!1347336) (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (h!76833 (exprs!8083 ct1!232))) (exprs!8083 (Context!15167 (tail!14316 lt!2584739)))))))

(assert (=> bm!660330 d!2253718))

(declare-fun d!2253720 () Bool)

(declare-fun res!2940713 () Bool)

(declare-fun e!4347547 () Bool)

(assert (=> d!2253720 (=> res!2940713 e!4347547)))

(assert (=> d!2253720 (= res!2940713 ((_ is Nil!70385) (exprs!8083 ct2!328)))))

(assert (=> d!2253720 (= (forall!17487 (exprs!8083 ct2!328) lambda!444114) e!4347547)))

(declare-fun b!7250691 () Bool)

(declare-fun e!4347548 () Bool)

(assert (=> b!7250691 (= e!4347547 e!4347548)))

(declare-fun res!2940714 () Bool)

(assert (=> b!7250691 (=> (not res!2940714) (not e!4347548))))

(assert (=> b!7250691 (= res!2940714 (dynLambda!28738 lambda!444114 (h!76833 (exprs!8083 ct2!328))))))

(declare-fun b!7250692 () Bool)

(assert (=> b!7250692 (= e!4347548 (forall!17487 (t!384563 (exprs!8083 ct2!328)) lambda!444114))))

(assert (= (and d!2253720 (not res!2940713)) b!7250691))

(assert (= (and b!7250691 res!2940714) b!7250692))

(declare-fun b_lambda!278389 () Bool)

(assert (=> (not b_lambda!278389) (not b!7250691)))

(declare-fun m!7929596 () Bool)

(assert (=> b!7250691 m!7929596))

(declare-fun m!7929598 () Bool)

(assert (=> b!7250692 m!7929598))

(assert (=> d!2253550 d!2253720))

(declare-fun d!2253722 () Bool)

(declare-fun lt!2584840 () Int)

(assert (=> d!2253722 (>= lt!2584840 0)))

(declare-fun e!4347549 () Int)

(assert (=> d!2253722 (= lt!2584840 e!4347549)))

(declare-fun c!1347430 () Bool)

(assert (=> d!2253722 (= c!1347430 ((_ is Nil!70385) lt!2584777))))

(assert (=> d!2253722 (= (size!41712 lt!2584777) lt!2584840)))

(declare-fun b!7250693 () Bool)

(assert (=> b!7250693 (= e!4347549 0)))

(declare-fun b!7250694 () Bool)

(assert (=> b!7250694 (= e!4347549 (+ 1 (size!41712 (t!384563 lt!2584777))))))

(assert (= (and d!2253722 c!1347430) b!7250693))

(assert (= (and d!2253722 (not c!1347430)) b!7250694))

(declare-fun m!7929600 () Bool)

(assert (=> b!7250694 m!7929600))

(assert (=> b!7250355 d!2253722))

(declare-fun d!2253724 () Bool)

(declare-fun lt!2584841 () Int)

(assert (=> d!2253724 (>= lt!2584841 0)))

(declare-fun e!4347550 () Int)

(assert (=> d!2253724 (= lt!2584841 e!4347550)))

(declare-fun c!1347431 () Bool)

(assert (=> d!2253724 (= c!1347431 ((_ is Nil!70385) (exprs!8083 ct1!232)))))

(assert (=> d!2253724 (= (size!41712 (exprs!8083 ct1!232)) lt!2584841)))

(declare-fun b!7250695 () Bool)

(assert (=> b!7250695 (= e!4347550 0)))

(declare-fun b!7250696 () Bool)

(assert (=> b!7250696 (= e!4347550 (+ 1 (size!41712 (t!384563 (exprs!8083 ct1!232)))))))

(assert (= (and d!2253724 c!1347431) b!7250695))

(assert (= (and d!2253724 (not c!1347431)) b!7250696))

(assert (=> b!7250696 m!7929438))

(assert (=> b!7250355 d!2253724))

(assert (=> b!7250355 d!2253644))

(declare-fun d!2253726 () Bool)

(declare-fun c!1347432 () Bool)

(assert (=> d!2253726 (= c!1347432 (isEmpty!40534 (tail!14317 s2!1849)))))

(declare-fun e!4347551 () Bool)

(assert (=> d!2253726 (= (matchZipper!3553 (derivationStepZipper!3421 (store ((as const (Array Context!15166 Bool)) false) ct2!328 true) (head!14901 s2!1849)) (tail!14317 s2!1849)) e!4347551)))

(declare-fun b!7250697 () Bool)

(assert (=> b!7250697 (= e!4347551 (nullableZipper!2911 (derivationStepZipper!3421 (store ((as const (Array Context!15166 Bool)) false) ct2!328 true) (head!14901 s2!1849))))))

(declare-fun b!7250698 () Bool)

(assert (=> b!7250698 (= e!4347551 (matchZipper!3553 (derivationStepZipper!3421 (derivationStepZipper!3421 (store ((as const (Array Context!15166 Bool)) false) ct2!328 true) (head!14901 s2!1849)) (head!14901 (tail!14317 s2!1849))) (tail!14317 (tail!14317 s2!1849))))))

(assert (= (and d!2253726 c!1347432) b!7250697))

(assert (= (and d!2253726 (not c!1347432)) b!7250698))

(assert (=> d!2253726 m!7929270))

(declare-fun m!7929602 () Bool)

(assert (=> d!2253726 m!7929602))

(assert (=> b!7250697 m!7929268))

(declare-fun m!7929604 () Bool)

(assert (=> b!7250697 m!7929604))

(assert (=> b!7250698 m!7929270))

(declare-fun m!7929606 () Bool)

(assert (=> b!7250698 m!7929606))

(assert (=> b!7250698 m!7929268))

(assert (=> b!7250698 m!7929606))

(declare-fun m!7929608 () Bool)

(assert (=> b!7250698 m!7929608))

(assert (=> b!7250698 m!7929270))

(declare-fun m!7929610 () Bool)

(assert (=> b!7250698 m!7929610))

(assert (=> b!7250698 m!7929608))

(assert (=> b!7250698 m!7929610))

(declare-fun m!7929612 () Bool)

(assert (=> b!7250698 m!7929612))

(assert (=> b!7250451 d!2253726))

(declare-fun bs!1906178 () Bool)

(declare-fun d!2253728 () Bool)

(assert (= bs!1906178 (and d!2253728 b!7250251)))

(declare-fun lambda!444145 () Int)

(assert (=> bs!1906178 (= (= (head!14901 s2!1849) (h!76835 s1!1971)) (= lambda!444145 lambda!444098))))

(declare-fun bs!1906179 () Bool)

(assert (= bs!1906179 (and d!2253728 d!2253542)))

(assert (=> bs!1906179 (= (= (head!14901 s2!1849) (h!76835 s1!1971)) (= lambda!444145 lambda!444110))))

(declare-fun bs!1906180 () Bool)

(assert (= bs!1906180 (and d!2253728 d!2253614)))

(assert (=> bs!1906180 (= (= (head!14901 s2!1849) (head!14901 (++!16549 (t!384565 s1!1971) s2!1849))) (= lambda!444145 lambda!444133))))

(declare-fun bs!1906181 () Bool)

(assert (= bs!1906181 (and d!2253728 d!2253652)))

(assert (=> bs!1906181 (= (= (head!14901 s2!1849) (head!14901 (t!384565 s1!1971))) (= lambda!444145 lambda!444137))))

(assert (=> d!2253728 true))

(assert (=> d!2253728 (= (derivationStepZipper!3421 (store ((as const (Array Context!15166 Bool)) false) ct2!328 true) (head!14901 s2!1849)) (flatMap!2808 (store ((as const (Array Context!15166 Bool)) false) ct2!328 true) lambda!444145))))

(declare-fun bs!1906182 () Bool)

(assert (= bs!1906182 d!2253728))

(assert (=> bs!1906182 m!7928976))

(declare-fun m!7929614 () Bool)

(assert (=> bs!1906182 m!7929614))

(assert (=> b!7250451 d!2253728))

(declare-fun d!2253730 () Bool)

(assert (=> d!2253730 (= (head!14901 s2!1849) (h!76835 s2!1849))))

(assert (=> b!7250451 d!2253730))

(declare-fun d!2253732 () Bool)

(assert (=> d!2253732 (= (tail!14317 s2!1849) (t!384565 s2!1849))))

(assert (=> b!7250451 d!2253732))

(declare-fun d!2253734 () Bool)

(declare-fun res!2940715 () Bool)

(declare-fun e!4347552 () Bool)

(assert (=> d!2253734 (=> res!2940715 e!4347552)))

(assert (=> d!2253734 (= res!2940715 ((_ is Nil!70385) (++!16548 (exprs!8083 ct1!232) (exprs!8083 ct2!328))))))

(assert (=> d!2253734 (= (forall!17487 (++!16548 (exprs!8083 ct1!232) (exprs!8083 ct2!328)) lambda!444096) e!4347552)))

(declare-fun b!7250699 () Bool)

(declare-fun e!4347553 () Bool)

(assert (=> b!7250699 (= e!4347552 e!4347553)))

(declare-fun res!2940716 () Bool)

(assert (=> b!7250699 (=> (not res!2940716) (not e!4347553))))

(assert (=> b!7250699 (= res!2940716 (dynLambda!28738 lambda!444096 (h!76833 (++!16548 (exprs!8083 ct1!232) (exprs!8083 ct2!328)))))))

(declare-fun b!7250700 () Bool)

(assert (=> b!7250700 (= e!4347553 (forall!17487 (t!384563 (++!16548 (exprs!8083 ct1!232) (exprs!8083 ct2!328))) lambda!444096))))

(assert (= (and d!2253734 (not res!2940715)) b!7250699))

(assert (= (and b!7250699 res!2940716) b!7250700))

(declare-fun b_lambda!278391 () Bool)

(assert (=> (not b_lambda!278391) (not b!7250699)))

(declare-fun m!7929616 () Bool)

(assert (=> b!7250699 m!7929616))

(declare-fun m!7929618 () Bool)

(assert (=> b!7250700 m!7929618))

(assert (=> d!2253498 d!2253734))

(assert (=> d!2253498 d!2253494))

(declare-fun d!2253736 () Bool)

(assert (=> d!2253736 (forall!17487 (++!16548 (exprs!8083 ct1!232) (exprs!8083 ct2!328)) lambda!444096)))

(assert (=> d!2253736 true))

(declare-fun _$78!761 () Unit!163871)

(assert (=> d!2253736 (= (choose!56000 (exprs!8083 ct1!232) (exprs!8083 ct2!328) lambda!444096) _$78!761)))

(declare-fun bs!1906183 () Bool)

(assert (= bs!1906183 d!2253736))

(assert (=> bs!1906183 m!7929020))

(assert (=> bs!1906183 m!7929020))

(assert (=> bs!1906183 m!7929118))

(assert (=> d!2253498 d!2253736))

(declare-fun d!2253738 () Bool)

(declare-fun res!2940717 () Bool)

(declare-fun e!4347554 () Bool)

(assert (=> d!2253738 (=> res!2940717 e!4347554)))

(assert (=> d!2253738 (= res!2940717 ((_ is Nil!70385) (exprs!8083 ct1!232)))))

(assert (=> d!2253738 (= (forall!17487 (exprs!8083 ct1!232) lambda!444096) e!4347554)))

(declare-fun b!7250701 () Bool)

(declare-fun e!4347555 () Bool)

(assert (=> b!7250701 (= e!4347554 e!4347555)))

(declare-fun res!2940718 () Bool)

(assert (=> b!7250701 (=> (not res!2940718) (not e!4347555))))

(assert (=> b!7250701 (= res!2940718 (dynLambda!28738 lambda!444096 (h!76833 (exprs!8083 ct1!232))))))

(declare-fun b!7250702 () Bool)

(assert (=> b!7250702 (= e!4347555 (forall!17487 (t!384563 (exprs!8083 ct1!232)) lambda!444096))))

(assert (= (and d!2253738 (not res!2940717)) b!7250701))

(assert (= (and b!7250701 res!2940718) b!7250702))

(declare-fun b_lambda!278393 () Bool)

(assert (=> (not b_lambda!278393) (not b!7250701)))

(declare-fun m!7929620 () Bool)

(assert (=> b!7250701 m!7929620))

(declare-fun m!7929622 () Bool)

(assert (=> b!7250702 m!7929622))

(assert (=> d!2253498 d!2253738))

(declare-fun d!2253740 () Bool)

(assert (=> d!2253740 (= (nullable!7903 (h!76833 (exprs!8083 lt!2584738))) (nullableFct!3100 (h!76833 (exprs!8083 lt!2584738))))))

(declare-fun bs!1906184 () Bool)

(assert (= bs!1906184 d!2253740))

(declare-fun m!7929624 () Bool)

(assert (=> bs!1906184 m!7929624))

(assert (=> b!7250425 d!2253740))

(declare-fun d!2253742 () Bool)

(assert (=> d!2253742 (= (isEmpty!40534 s2!1849) ((_ is Nil!70387) s2!1849))))

(assert (=> d!2253560 d!2253742))

(declare-fun d!2253744 () Bool)

(declare-fun e!4347556 () Bool)

(assert (=> d!2253744 e!4347556))

(declare-fun res!2940719 () Bool)

(assert (=> d!2253744 (=> (not res!2940719) (not e!4347556))))

(declare-fun lt!2584842 () List!70509)

(assert (=> d!2253744 (= res!2940719 (= (content!14603 lt!2584842) ((_ map or) (content!14603 (t!384563 (exprs!8083 lt!2584735))) (content!14603 (exprs!8083 ct2!328)))))))

(declare-fun e!4347557 () List!70509)

(assert (=> d!2253744 (= lt!2584842 e!4347557)))

(declare-fun c!1347433 () Bool)

(assert (=> d!2253744 (= c!1347433 ((_ is Nil!70385) (t!384563 (exprs!8083 lt!2584735))))))

(assert (=> d!2253744 (= (++!16548 (t!384563 (exprs!8083 lt!2584735)) (exprs!8083 ct2!328)) lt!2584842)))

(declare-fun b!7250706 () Bool)

(assert (=> b!7250706 (= e!4347556 (or (not (= (exprs!8083 ct2!328) Nil!70385)) (= lt!2584842 (t!384563 (exprs!8083 lt!2584735)))))))

(declare-fun b!7250705 () Bool)

(declare-fun res!2940720 () Bool)

(assert (=> b!7250705 (=> (not res!2940720) (not e!4347556))))

(assert (=> b!7250705 (= res!2940720 (= (size!41712 lt!2584842) (+ (size!41712 (t!384563 (exprs!8083 lt!2584735))) (size!41712 (exprs!8083 ct2!328)))))))

(declare-fun b!7250704 () Bool)

(assert (=> b!7250704 (= e!4347557 (Cons!70385 (h!76833 (t!384563 (exprs!8083 lt!2584735))) (++!16548 (t!384563 (t!384563 (exprs!8083 lt!2584735))) (exprs!8083 ct2!328))))))

(declare-fun b!7250703 () Bool)

(assert (=> b!7250703 (= e!4347557 (exprs!8083 ct2!328))))

(assert (= (and d!2253744 c!1347433) b!7250703))

(assert (= (and d!2253744 (not c!1347433)) b!7250704))

(assert (= (and d!2253744 res!2940719) b!7250705))

(assert (= (and b!7250705 res!2940720) b!7250706))

(declare-fun m!7929626 () Bool)

(assert (=> d!2253744 m!7929626))

(declare-fun m!7929628 () Bool)

(assert (=> d!2253744 m!7929628))

(assert (=> d!2253744 m!7929088))

(declare-fun m!7929630 () Bool)

(assert (=> b!7250705 m!7929630))

(assert (=> b!7250705 m!7929464))

(assert (=> b!7250705 m!7929094))

(declare-fun m!7929632 () Bool)

(assert (=> b!7250704 m!7929632))

(assert (=> b!7250350 d!2253744))

(declare-fun d!2253746 () Bool)

(assert (=> d!2253746 true))

(declare-fun setRes!53568 () Bool)

(assert (=> d!2253746 setRes!53568))

(declare-fun condSetEmpty!53568 () Bool)

(declare-fun res!2940721 () (InoxSet Context!15166))

(assert (=> d!2253746 (= condSetEmpty!53568 (= res!2940721 ((as const (Array Context!15166 Bool)) false)))))

(assert (=> d!2253746 (= (choose!56005 lt!2584736 lambda!444098) res!2940721)))

(declare-fun setIsEmpty!53568 () Bool)

(assert (=> setIsEmpty!53568 setRes!53568))

(declare-fun e!4347558 () Bool)

(declare-fun setElem!53568 () Context!15166)

(declare-fun setNonEmpty!53568 () Bool)

(declare-fun tp!2037407 () Bool)

(assert (=> setNonEmpty!53568 (= setRes!53568 (and tp!2037407 (inv!89617 setElem!53568) e!4347558))))

(declare-fun setRest!53568 () (InoxSet Context!15166))

(assert (=> setNonEmpty!53568 (= res!2940721 ((_ map or) (store ((as const (Array Context!15166 Bool)) false) setElem!53568 true) setRest!53568))))

(declare-fun b!7250707 () Bool)

(declare-fun tp!2037408 () Bool)

(assert (=> b!7250707 (= e!4347558 tp!2037408)))

(assert (= (and d!2253746 condSetEmpty!53568) setIsEmpty!53568))

(assert (= (and d!2253746 (not condSetEmpty!53568)) setNonEmpty!53568))

(assert (= setNonEmpty!53568 b!7250707))

(declare-fun m!7929634 () Bool)

(assert (=> setNonEmpty!53568 m!7929634))

(assert (=> d!2253530 d!2253746))

(assert (=> d!2253536 d!2253534))

(declare-fun d!2253748 () Bool)

(assert (=> d!2253748 (= (flatMap!2808 lt!2584744 lambda!444098) (dynLambda!28734 lambda!444098 ct1!232))))

(assert (=> d!2253748 true))

(declare-fun _$13!4568 () Unit!163871)

(assert (=> d!2253748 (= (choose!56003 lt!2584744 ct1!232 lambda!444098) _$13!4568)))

(declare-fun b_lambda!278395 () Bool)

(assert (=> (not b_lambda!278395) (not d!2253748)))

(declare-fun bs!1906185 () Bool)

(assert (= bs!1906185 d!2253748))

(assert (=> bs!1906185 m!7929004))

(assert (=> bs!1906185 m!7929198))

(assert (=> d!2253536 d!2253748))

(declare-fun d!2253750 () Bool)

(assert (=> d!2253750 (forall!17487 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328)) lambda!444101)))

(declare-fun lt!2584843 () Unit!163871)

(assert (=> d!2253750 (= lt!2584843 (choose!56000 (exprs!8083 lt!2584735) (exprs!8083 ct2!328) lambda!444101))))

(assert (=> d!2253750 (forall!17487 (exprs!8083 lt!2584735) lambda!444101)))

(assert (=> d!2253750 (= (lemmaConcatPreservesForall!1450 (exprs!8083 lt!2584735) (exprs!8083 ct2!328) lambda!444101) lt!2584843)))

(declare-fun bs!1906186 () Bool)

(assert (= bs!1906186 d!2253750))

(assert (=> bs!1906186 m!7928962))

(assert (=> bs!1906186 m!7928962))

(declare-fun m!7929636 () Bool)

(assert (=> bs!1906186 m!7929636))

(declare-fun m!7929638 () Bool)

(assert (=> bs!1906186 m!7929638))

(declare-fun m!7929640 () Bool)

(assert (=> bs!1906186 m!7929640))

(assert (=> d!2253472 d!2253750))

(declare-fun d!2253752 () Bool)

(declare-fun c!1347434 () Bool)

(assert (=> d!2253752 (= c!1347434 (isEmpty!40534 (t!384565 s1!1971)))))

(declare-fun e!4347559 () Bool)

(assert (=> d!2253752 (= (matchZipper!3553 (store ((as const (Array Context!15166 Bool)) false) lt!2584735 true) (t!384565 s1!1971)) e!4347559)))

(declare-fun b!7250708 () Bool)

(assert (=> b!7250708 (= e!4347559 (nullableZipper!2911 (store ((as const (Array Context!15166 Bool)) false) lt!2584735 true)))))

(declare-fun b!7250709 () Bool)

(assert (=> b!7250709 (= e!4347559 (matchZipper!3553 (derivationStepZipper!3421 (store ((as const (Array Context!15166 Bool)) false) lt!2584735 true) (head!14901 (t!384565 s1!1971))) (tail!14317 (t!384565 s1!1971))))))

(assert (= (and d!2253752 c!1347434) b!7250708))

(assert (= (and d!2253752 (not c!1347434)) b!7250709))

(assert (=> d!2253752 m!7929208))

(assert (=> b!7250708 m!7929028))

(declare-fun m!7929642 () Bool)

(assert (=> b!7250708 m!7929642))

(assert (=> b!7250709 m!7929212))

(assert (=> b!7250709 m!7929028))

(assert (=> b!7250709 m!7929212))

(declare-fun m!7929644 () Bool)

(assert (=> b!7250709 m!7929644))

(assert (=> b!7250709 m!7929216))

(assert (=> b!7250709 m!7929644))

(assert (=> b!7250709 m!7929216))

(declare-fun m!7929646 () Bool)

(assert (=> b!7250709 m!7929646))

(assert (=> d!2253472 d!2253752))

(assert (=> d!2253472 d!2253474))

(assert (=> d!2253472 d!2253480))

(declare-fun bs!1906187 () Bool)

(declare-fun d!2253754 () Bool)

(assert (= bs!1906187 (and d!2253754 d!2253548)))

(declare-fun lambda!444148 () Int)

(assert (=> bs!1906187 (= lambda!444148 lambda!444113)))

(declare-fun bs!1906188 () Bool)

(assert (= bs!1906188 (and d!2253754 d!2253552)))

(assert (=> bs!1906188 (= lambda!444148 lambda!444115)))

(declare-fun bs!1906189 () Bool)

(assert (= bs!1906189 (and d!2253754 d!2253472)))

(assert (=> bs!1906189 (= lambda!444148 lambda!444101)))

(declare-fun bs!1906190 () Bool)

(assert (= bs!1906190 (and d!2253754 b!7250247)))

(assert (=> bs!1906190 (= lambda!444148 lambda!444096)))

(declare-fun bs!1906191 () Bool)

(assert (= bs!1906191 (and d!2253754 d!2253550)))

(assert (=> bs!1906191 (= lambda!444148 lambda!444114)))

(assert (=> d!2253754 (matchZipper!3553 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328))) true) (++!16549 (t!384565 s1!1971) s2!1849))))

(declare-fun lt!2584846 () Unit!163871)

(assert (=> d!2253754 (= lt!2584846 (lemmaConcatPreservesForall!1450 (exprs!8083 lt!2584735) (exprs!8083 ct2!328) lambda!444148))))

(assert (=> d!2253754 true))

(declare-fun _$56!506 () Unit!163871)

(assert (=> d!2253754 (= (choose!55999 lt!2584735 ct2!328 (t!384565 s1!1971) s2!1849) _$56!506)))

(declare-fun bs!1906192 () Bool)

(assert (= bs!1906192 d!2253754))

(assert (=> bs!1906192 m!7928956))

(declare-fun m!7929648 () Bool)

(assert (=> bs!1906192 m!7929648))

(assert (=> bs!1906192 m!7928962))

(assert (=> bs!1906192 m!7928956))

(assert (=> bs!1906192 m!7928958))

(assert (=> bs!1906192 m!7928960))

(assert (=> bs!1906192 m!7928958))

(assert (=> d!2253472 d!2253754))

(assert (=> d!2253472 d!2253492))

(assert (=> bs!1906116 d!2253484))

(declare-fun bm!660368 () Bool)

(declare-fun call!660375 () List!70509)

(declare-fun call!660378 () List!70509)

(assert (=> bm!660368 (= call!660375 call!660378)))

(declare-fun b!7250710 () Bool)

(declare-fun e!4347565 () (InoxSet Context!15166))

(declare-fun e!4347563 () (InoxSet Context!15166))

(assert (=> b!7250710 (= e!4347565 e!4347563)))

(declare-fun c!1347438 () Bool)

(assert (=> b!7250710 (= c!1347438 ((_ is Union!18643) (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))))))

(declare-fun b!7250712 () Bool)

(declare-fun e!4347560 () (InoxSet Context!15166))

(declare-fun call!660374 () (InoxSet Context!15166))

(declare-fun call!660376 () (InoxSet Context!15166))

(assert (=> b!7250712 (= e!4347560 ((_ map or) call!660374 call!660376))))

(declare-fun b!7250713 () Bool)

(declare-fun e!4347561 () (InoxSet Context!15166))

(assert (=> b!7250713 (= e!4347560 e!4347561)))

(declare-fun c!1347436 () Bool)

(assert (=> b!7250713 (= c!1347436 ((_ is Concat!27488) (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))))))

(declare-fun c!1347435 () Bool)

(declare-fun bm!660369 () Bool)

(assert (=> bm!660369 (= call!660378 ($colon$colon!2916 (exprs!8083 (ite c!1347355 lt!2584743 (Context!15167 call!660346))) (ite (or c!1347435 c!1347436) (regTwo!37798 (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))))))))

(declare-fun b!7250714 () Bool)

(declare-fun c!1347437 () Bool)

(assert (=> b!7250714 (= c!1347437 ((_ is Star!18643) (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))))))

(declare-fun e!4347564 () (InoxSet Context!15166))

(assert (=> b!7250714 (= e!4347561 e!4347564)))

(declare-fun b!7250715 () Bool)

(declare-fun call!660373 () (InoxSet Context!15166))

(assert (=> b!7250715 (= e!4347564 call!660373)))

(declare-fun bm!660370 () Bool)

(assert (=> bm!660370 (= call!660373 call!660376)))

(declare-fun b!7250711 () Bool)

(assert (=> b!7250711 (= e!4347561 call!660373)))

(declare-fun d!2253756 () Bool)

(declare-fun c!1347439 () Bool)

(assert (=> d!2253756 (= c!1347439 (and ((_ is ElementMatch!18643) (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (= (c!1347277 (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (h!76835 s1!1971))))))

(assert (=> d!2253756 (= (derivationStepZipperDown!2637 (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))) (ite c!1347355 lt!2584743 (Context!15167 call!660346)) (h!76835 s1!1971)) e!4347565)))

(declare-fun b!7250716 () Bool)

(declare-fun e!4347562 () Bool)

(assert (=> b!7250716 (= c!1347435 e!4347562)))

(declare-fun res!2940722 () Bool)

(assert (=> b!7250716 (=> (not res!2940722) (not e!4347562))))

(assert (=> b!7250716 (= res!2940722 ((_ is Concat!27488) (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))))))

(assert (=> b!7250716 (= e!4347563 e!4347560)))

(declare-fun b!7250717 () Bool)

(declare-fun call!660377 () (InoxSet Context!15166))

(assert (=> b!7250717 (= e!4347563 ((_ map or) call!660377 call!660374))))

(declare-fun b!7250718 () Bool)

(assert (=> b!7250718 (= e!4347562 (nullable!7903 (regOne!37798 (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))))))))

(declare-fun b!7250719 () Bool)

(assert (=> b!7250719 (= e!4347565 (store ((as const (Array Context!15166 Bool)) false) (ite c!1347355 lt!2584743 (Context!15167 call!660346)) true))))

(declare-fun bm!660371 () Bool)

(assert (=> bm!660371 (= call!660377 (derivationStepZipperDown!2637 (ite c!1347438 (regOne!37799 (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (ite c!1347435 (regTwo!37798 (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (ite c!1347436 (regOne!37798 (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (reg!18972 (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))))))) (ite (or c!1347438 c!1347435) (ite c!1347355 lt!2584743 (Context!15167 call!660346)) (Context!15167 call!660375)) (h!76835 s1!1971)))))

(declare-fun b!7250720 () Bool)

(assert (=> b!7250720 (= e!4347564 ((as const (Array Context!15166 Bool)) false))))

(declare-fun bm!660372 () Bool)

(assert (=> bm!660372 (= call!660374 (derivationStepZipperDown!2637 (ite c!1347438 (regTwo!37799 (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232))))) (regOne!37798 (ite c!1347355 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))))) (ite c!1347438 (ite c!1347355 lt!2584743 (Context!15167 call!660346)) (Context!15167 call!660378)) (h!76835 s1!1971)))))

(declare-fun bm!660373 () Bool)

(assert (=> bm!660373 (= call!660376 call!660377)))

(assert (= (and d!2253756 c!1347439) b!7250719))

(assert (= (and d!2253756 (not c!1347439)) b!7250710))

(assert (= (and b!7250710 c!1347438) b!7250717))

(assert (= (and b!7250710 (not c!1347438)) b!7250716))

(assert (= (and b!7250716 res!2940722) b!7250718))

(assert (= (and b!7250716 c!1347435) b!7250712))

(assert (= (and b!7250716 (not c!1347435)) b!7250713))

(assert (= (and b!7250713 c!1347436) b!7250711))

(assert (= (and b!7250713 (not c!1347436)) b!7250714))

(assert (= (and b!7250714 c!1347437) b!7250715))

(assert (= (and b!7250714 (not c!1347437)) b!7250720))

(assert (= (or b!7250711 b!7250715) bm!660368))

(assert (= (or b!7250711 b!7250715) bm!660370))

(assert (= (or b!7250712 bm!660368) bm!660369))

(assert (= (or b!7250712 bm!660370) bm!660373))

(assert (= (or b!7250717 b!7250712) bm!660372))

(assert (= (or b!7250717 bm!660373) bm!660371))

(declare-fun m!7929650 () Bool)

(assert (=> b!7250719 m!7929650))

(declare-fun m!7929652 () Bool)

(assert (=> bm!660369 m!7929652))

(declare-fun m!7929654 () Bool)

(assert (=> bm!660372 m!7929654))

(declare-fun m!7929656 () Bool)

(assert (=> bm!660371 m!7929656))

(declare-fun m!7929658 () Bool)

(assert (=> b!7250718 m!7929658))

(assert (=> bm!660340 d!2253756))

(assert (=> d!2253524 d!2253530))

(declare-fun d!2253758 () Bool)

(assert (=> d!2253758 (= (flatMap!2808 lt!2584736 lambda!444098) (dynLambda!28734 lambda!444098 lt!2584738))))

(assert (=> d!2253758 true))

(declare-fun _$13!4569 () Unit!163871)

(assert (=> d!2253758 (= (choose!56003 lt!2584736 lt!2584738 lambda!444098) _$13!4569)))

(declare-fun b_lambda!278397 () Bool)

(assert (=> (not b_lambda!278397) (not d!2253758)))

(declare-fun bs!1906193 () Bool)

(assert (= bs!1906193 d!2253758))

(assert (=> bs!1906193 m!7928998))

(assert (=> bs!1906193 m!7929188))

(assert (=> d!2253524 d!2253758))

(declare-fun bs!1906194 () Bool)

(declare-fun d!2253760 () Bool)

(assert (= bs!1906194 (and d!2253760 b!7250242)))

(declare-fun lambda!444149 () Int)

(assert (=> bs!1906194 (not (= lambda!444149 lambda!444097))))

(declare-fun bs!1906195 () Bool)

(assert (= bs!1906195 (and d!2253760 d!2253674)))

(assert (=> bs!1906195 (not (= lambda!444149 lambda!444139))))

(declare-fun bs!1906196 () Bool)

(assert (= bs!1906196 (and d!2253760 d!2253680)))

(assert (=> bs!1906196 (not (= lambda!444149 lambda!444140))))

(declare-fun bs!1906197 () Bool)

(assert (= bs!1906197 (and d!2253760 d!2253682)))

(assert (=> bs!1906197 (not (= lambda!444149 lambda!444143))))

(declare-fun bs!1906198 () Bool)

(assert (= bs!1906198 (and d!2253760 d!2253626)))

(assert (=> bs!1906198 (= lambda!444149 lambda!444136)))

(declare-fun bs!1906199 () Bool)

(assert (= bs!1906199 (and d!2253760 d!2253658)))

(assert (=> bs!1906199 (= lambda!444149 lambda!444138)))

(declare-fun bs!1906200 () Bool)

(assert (= bs!1906200 (and d!2253760 d!2253568)))

(assert (=> bs!1906200 (not (= lambda!444149 lambda!444121))))

(declare-fun bs!1906201 () Bool)

(assert (= bs!1906201 (and d!2253760 d!2253704)))

(assert (=> bs!1906201 (= lambda!444149 lambda!444144)))

(declare-fun bs!1906202 () Bool)

(assert (= bs!1906202 (and d!2253760 d!2253574)))

(assert (=> bs!1906202 (not (= lambda!444149 lambda!444124))))

(assert (=> d!2253760 (= (nullableZipper!2911 lt!2584751) (exists!4364 lt!2584751 lambda!444149))))

(declare-fun bs!1906203 () Bool)

(assert (= bs!1906203 d!2253760))

(declare-fun m!7929660 () Bool)

(assert (=> bs!1906203 m!7929660))

(assert (=> b!7250429 d!2253760))

(declare-fun bm!660374 () Bool)

(declare-fun call!660381 () List!70509)

(declare-fun call!660384 () List!70509)

(assert (=> bm!660374 (= call!660381 call!660384)))

(declare-fun b!7250721 () Bool)

(declare-fun e!4347571 () (InoxSet Context!15166))

(declare-fun e!4347569 () (InoxSet Context!15166))

(assert (=> b!7250721 (= e!4347571 e!4347569)))

(declare-fun c!1347443 () Bool)

(assert (=> b!7250721 (= c!1347443 ((_ is Union!18643) (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))))))

(declare-fun b!7250723 () Bool)

(declare-fun e!4347566 () (InoxSet Context!15166))

(declare-fun call!660380 () (InoxSet Context!15166))

(declare-fun call!660382 () (InoxSet Context!15166))

(assert (=> b!7250723 (= e!4347566 ((_ map or) call!660380 call!660382))))

(declare-fun b!7250724 () Bool)

(declare-fun e!4347567 () (InoxSet Context!15166))

(assert (=> b!7250724 (= e!4347566 e!4347567)))

(declare-fun c!1347441 () Bool)

(assert (=> b!7250724 (= c!1347441 ((_ is Concat!27488) (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))))))

(declare-fun c!1347440 () Bool)

(declare-fun bm!660375 () Bool)

(assert (=> bm!660375 (= call!660384 ($colon$colon!2916 (exprs!8083 (ite (or c!1347355 c!1347352) lt!2584743 (Context!15167 call!660343))) (ite (or c!1347440 c!1347441) (regTwo!37798 (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))))))))

(declare-fun b!7250725 () Bool)

(declare-fun c!1347442 () Bool)

(assert (=> b!7250725 (= c!1347442 ((_ is Star!18643) (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))))))

(declare-fun e!4347570 () (InoxSet Context!15166))

(assert (=> b!7250725 (= e!4347567 e!4347570)))

(declare-fun b!7250726 () Bool)

(declare-fun call!660379 () (InoxSet Context!15166))

(assert (=> b!7250726 (= e!4347570 call!660379)))

(declare-fun bm!660376 () Bool)

(assert (=> bm!660376 (= call!660379 call!660382)))

(declare-fun b!7250722 () Bool)

(assert (=> b!7250722 (= e!4347567 call!660379)))

(declare-fun d!2253762 () Bool)

(declare-fun c!1347444 () Bool)

(assert (=> d!2253762 (= c!1347444 (and ((_ is ElementMatch!18643) (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (= (c!1347277 (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (h!76835 s1!1971))))))

(assert (=> d!2253762 (= (derivationStepZipperDown!2637 (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))) (ite (or c!1347355 c!1347352) lt!2584743 (Context!15167 call!660343)) (h!76835 s1!1971)) e!4347571)))

(declare-fun b!7250727 () Bool)

(declare-fun e!4347568 () Bool)

(assert (=> b!7250727 (= c!1347440 e!4347568)))

(declare-fun res!2940723 () Bool)

(assert (=> b!7250727 (=> (not res!2940723) (not e!4347568))))

(assert (=> b!7250727 (= res!2940723 ((_ is Concat!27488) (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))))))

(assert (=> b!7250727 (= e!4347569 e!4347566)))

(declare-fun b!7250728 () Bool)

(declare-fun call!660383 () (InoxSet Context!15166))

(assert (=> b!7250728 (= e!4347569 ((_ map or) call!660383 call!660380))))

(declare-fun b!7250729 () Bool)

(assert (=> b!7250729 (= e!4347568 (nullable!7903 (regOne!37798 (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))))))))

(declare-fun b!7250730 () Bool)

(assert (=> b!7250730 (= e!4347571 (store ((as const (Array Context!15166 Bool)) false) (ite (or c!1347355 c!1347352) lt!2584743 (Context!15167 call!660343)) true))))

(declare-fun bm!660377 () Bool)

(assert (=> bm!660377 (= call!660383 (derivationStepZipperDown!2637 (ite c!1347443 (regOne!37799 (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (ite c!1347440 (regTwo!37798 (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (ite c!1347441 (regOne!37798 (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (reg!18972 (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))))))) (ite (or c!1347443 c!1347440) (ite (or c!1347355 c!1347352) lt!2584743 (Context!15167 call!660343)) (Context!15167 call!660381)) (h!76835 s1!1971)))))

(declare-fun b!7250731 () Bool)

(assert (=> b!7250731 (= e!4347570 ((as const (Array Context!15166 Bool)) false))))

(declare-fun bm!660378 () Bool)

(assert (=> bm!660378 (= call!660380 (derivationStepZipperDown!2637 (ite c!1347443 (regTwo!37799 (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232))))))) (regOne!37798 (ite c!1347355 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347352 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347353 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))))) (ite c!1347443 (ite (or c!1347355 c!1347352) lt!2584743 (Context!15167 call!660343)) (Context!15167 call!660384)) (h!76835 s1!1971)))))

(declare-fun bm!660379 () Bool)

(assert (=> bm!660379 (= call!660382 call!660383)))

(assert (= (and d!2253762 c!1347444) b!7250730))

(assert (= (and d!2253762 (not c!1347444)) b!7250721))

(assert (= (and b!7250721 c!1347443) b!7250728))

(assert (= (and b!7250721 (not c!1347443)) b!7250727))

(assert (= (and b!7250727 res!2940723) b!7250729))

(assert (= (and b!7250727 c!1347440) b!7250723))

(assert (= (and b!7250727 (not c!1347440)) b!7250724))

(assert (= (and b!7250724 c!1347441) b!7250722))

(assert (= (and b!7250724 (not c!1347441)) b!7250725))

(assert (= (and b!7250725 c!1347442) b!7250726))

(assert (= (and b!7250725 (not c!1347442)) b!7250731))

(assert (= (or b!7250722 b!7250726) bm!660374))

(assert (= (or b!7250722 b!7250726) bm!660376))

(assert (= (or b!7250723 bm!660374) bm!660375))

(assert (= (or b!7250723 bm!660376) bm!660379))

(assert (= (or b!7250728 b!7250723) bm!660378))

(assert (= (or b!7250728 bm!660379) bm!660377))

(declare-fun m!7929662 () Bool)

(assert (=> b!7250730 m!7929662))

(declare-fun m!7929664 () Bool)

(assert (=> bm!660375 m!7929664))

(declare-fun m!7929666 () Bool)

(assert (=> bm!660378 m!7929666))

(declare-fun m!7929668 () Bool)

(assert (=> bm!660377 m!7929668))

(declare-fun m!7929670 () Bool)

(assert (=> b!7250729 m!7929670))

(assert (=> bm!660339 d!2253762))

(declare-fun bm!660380 () Bool)

(declare-fun call!660387 () List!70509)

(declare-fun call!660390 () List!70509)

(assert (=> bm!660380 (= call!660387 call!660390)))

(declare-fun b!7250732 () Bool)

(declare-fun e!4347577 () (InoxSet Context!15166))

(declare-fun e!4347575 () (InoxSet Context!15166))

(assert (=> b!7250732 (= e!4347577 e!4347575)))

(declare-fun c!1347448 () Bool)

(assert (=> b!7250732 (= c!1347448 ((_ is Union!18643) (h!76833 (exprs!8083 ct1!232))))))

(declare-fun b!7250734 () Bool)

(declare-fun e!4347572 () (InoxSet Context!15166))

(declare-fun call!660386 () (InoxSet Context!15166))

(declare-fun call!660388 () (InoxSet Context!15166))

(assert (=> b!7250734 (= e!4347572 ((_ map or) call!660386 call!660388))))

(declare-fun b!7250735 () Bool)

(declare-fun e!4347573 () (InoxSet Context!15166))

(assert (=> b!7250735 (= e!4347572 e!4347573)))

(declare-fun c!1347446 () Bool)

(assert (=> b!7250735 (= c!1347446 ((_ is Concat!27488) (h!76833 (exprs!8083 ct1!232))))))

(declare-fun bm!660381 () Bool)

(declare-fun c!1347445 () Bool)

(assert (=> bm!660381 (= call!660390 ($colon$colon!2916 (exprs!8083 (Context!15167 (t!384563 (exprs!8083 ct1!232)))) (ite (or c!1347445 c!1347446) (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (h!76833 (exprs!8083 ct1!232)))))))

(declare-fun b!7250736 () Bool)

(declare-fun c!1347447 () Bool)

(assert (=> b!7250736 (= c!1347447 ((_ is Star!18643) (h!76833 (exprs!8083 ct1!232))))))

(declare-fun e!4347576 () (InoxSet Context!15166))

(assert (=> b!7250736 (= e!4347573 e!4347576)))

(declare-fun b!7250737 () Bool)

(declare-fun call!660385 () (InoxSet Context!15166))

(assert (=> b!7250737 (= e!4347576 call!660385)))

(declare-fun bm!660382 () Bool)

(assert (=> bm!660382 (= call!660385 call!660388)))

(declare-fun b!7250733 () Bool)

(assert (=> b!7250733 (= e!4347573 call!660385)))

(declare-fun d!2253764 () Bool)

(declare-fun c!1347449 () Bool)

(assert (=> d!2253764 (= c!1347449 (and ((_ is ElementMatch!18643) (h!76833 (exprs!8083 ct1!232))) (= (c!1347277 (h!76833 (exprs!8083 ct1!232))) (h!76835 s1!1971))))))

(assert (=> d!2253764 (= (derivationStepZipperDown!2637 (h!76833 (exprs!8083 ct1!232)) (Context!15167 (t!384563 (exprs!8083 ct1!232))) (h!76835 s1!1971)) e!4347577)))

(declare-fun b!7250738 () Bool)

(declare-fun e!4347574 () Bool)

(assert (=> b!7250738 (= c!1347445 e!4347574)))

(declare-fun res!2940724 () Bool)

(assert (=> b!7250738 (=> (not res!2940724) (not e!4347574))))

(assert (=> b!7250738 (= res!2940724 ((_ is Concat!27488) (h!76833 (exprs!8083 ct1!232))))))

(assert (=> b!7250738 (= e!4347575 e!4347572)))

(declare-fun b!7250739 () Bool)

(declare-fun call!660389 () (InoxSet Context!15166))

(assert (=> b!7250739 (= e!4347575 ((_ map or) call!660389 call!660386))))

(declare-fun b!7250740 () Bool)

(assert (=> b!7250740 (= e!4347574 (nullable!7903 (regOne!37798 (h!76833 (exprs!8083 ct1!232)))))))

(declare-fun b!7250741 () Bool)

(assert (=> b!7250741 (= e!4347577 (store ((as const (Array Context!15166 Bool)) false) (Context!15167 (t!384563 (exprs!8083 ct1!232))) true))))

(declare-fun bm!660383 () Bool)

(assert (=> bm!660383 (= call!660389 (derivationStepZipperDown!2637 (ite c!1347448 (regOne!37799 (h!76833 (exprs!8083 ct1!232))) (ite c!1347445 (regTwo!37798 (h!76833 (exprs!8083 ct1!232))) (ite c!1347446 (regOne!37798 (h!76833 (exprs!8083 ct1!232))) (reg!18972 (h!76833 (exprs!8083 ct1!232)))))) (ite (or c!1347448 c!1347445) (Context!15167 (t!384563 (exprs!8083 ct1!232))) (Context!15167 call!660387)) (h!76835 s1!1971)))))

(declare-fun b!7250742 () Bool)

(assert (=> b!7250742 (= e!4347576 ((as const (Array Context!15166 Bool)) false))))

(declare-fun bm!660384 () Bool)

(assert (=> bm!660384 (= call!660386 (derivationStepZipperDown!2637 (ite c!1347448 (regTwo!37799 (h!76833 (exprs!8083 ct1!232))) (regOne!37798 (h!76833 (exprs!8083 ct1!232)))) (ite c!1347448 (Context!15167 (t!384563 (exprs!8083 ct1!232))) (Context!15167 call!660390)) (h!76835 s1!1971)))))

(declare-fun bm!660385 () Bool)

(assert (=> bm!660385 (= call!660388 call!660389)))

(assert (= (and d!2253764 c!1347449) b!7250741))

(assert (= (and d!2253764 (not c!1347449)) b!7250732))

(assert (= (and b!7250732 c!1347448) b!7250739))

(assert (= (and b!7250732 (not c!1347448)) b!7250738))

(assert (= (and b!7250738 res!2940724) b!7250740))

(assert (= (and b!7250738 c!1347445) b!7250734))

(assert (= (and b!7250738 (not c!1347445)) b!7250735))

(assert (= (and b!7250735 c!1347446) b!7250733))

(assert (= (and b!7250735 (not c!1347446)) b!7250736))

(assert (= (and b!7250736 c!1347447) b!7250737))

(assert (= (and b!7250736 (not c!1347447)) b!7250742))

(assert (= (or b!7250733 b!7250737) bm!660380))

(assert (= (or b!7250733 b!7250737) bm!660382))

(assert (= (or b!7250734 bm!660380) bm!660381))

(assert (= (or b!7250734 bm!660382) bm!660385))

(assert (= (or b!7250739 b!7250734) bm!660384))

(assert (= (or b!7250739 bm!660385) bm!660383))

(declare-fun m!7929672 () Bool)

(assert (=> b!7250741 m!7929672))

(declare-fun m!7929674 () Bool)

(assert (=> bm!660381 m!7929674))

(declare-fun m!7929676 () Bool)

(assert (=> bm!660384 m!7929676))

(declare-fun m!7929678 () Bool)

(assert (=> bm!660383 m!7929678))

(assert (=> b!7250740 m!7929172))

(assert (=> bm!660291 d!2253764))

(declare-fun d!2253766 () Bool)

(declare-fun c!1347450 () Bool)

(assert (=> d!2253766 (= c!1347450 ((_ is Nil!70385) lt!2584776))))

(declare-fun e!4347578 () (InoxSet Regex!18643))

(assert (=> d!2253766 (= (content!14603 lt!2584776) e!4347578)))

(declare-fun b!7250743 () Bool)

(assert (=> b!7250743 (= e!4347578 ((as const (Array Regex!18643 Bool)) false))))

(declare-fun b!7250744 () Bool)

(assert (=> b!7250744 (= e!4347578 ((_ map or) (store ((as const (Array Regex!18643 Bool)) false) (h!76833 lt!2584776) true) (content!14603 (t!384563 lt!2584776))))))

(assert (= (and d!2253766 c!1347450) b!7250743))

(assert (= (and d!2253766 (not c!1347450)) b!7250744))

(declare-fun m!7929680 () Bool)

(assert (=> b!7250744 m!7929680))

(declare-fun m!7929682 () Bool)

(assert (=> b!7250744 m!7929682))

(assert (=> d!2253492 d!2253766))

(declare-fun d!2253768 () Bool)

(declare-fun c!1347451 () Bool)

(assert (=> d!2253768 (= c!1347451 ((_ is Nil!70385) (exprs!8083 lt!2584735)))))

(declare-fun e!4347579 () (InoxSet Regex!18643))

(assert (=> d!2253768 (= (content!14603 (exprs!8083 lt!2584735)) e!4347579)))

(declare-fun b!7250745 () Bool)

(assert (=> b!7250745 (= e!4347579 ((as const (Array Regex!18643 Bool)) false))))

(declare-fun b!7250746 () Bool)

(assert (=> b!7250746 (= e!4347579 ((_ map or) (store ((as const (Array Regex!18643 Bool)) false) (h!76833 (exprs!8083 lt!2584735)) true) (content!14603 (t!384563 (exprs!8083 lt!2584735)))))))

(assert (= (and d!2253768 c!1347451) b!7250745))

(assert (= (and d!2253768 (not c!1347451)) b!7250746))

(declare-fun m!7929684 () Bool)

(assert (=> b!7250746 m!7929684))

(assert (=> b!7250746 m!7929628))

(assert (=> d!2253492 d!2253768))

(assert (=> d!2253492 d!2253692))

(declare-fun d!2253770 () Bool)

(declare-fun c!1347452 () Bool)

(assert (=> d!2253770 (= c!1347452 (isEmpty!40534 (tail!14317 s1!1971)))))

(declare-fun e!4347580 () Bool)

(assert (=> d!2253770 (= (matchZipper!3553 (derivationStepZipper!3421 lt!2584744 (head!14901 s1!1971)) (tail!14317 s1!1971)) e!4347580)))

(declare-fun b!7250747 () Bool)

(assert (=> b!7250747 (= e!4347580 (nullableZipper!2911 (derivationStepZipper!3421 lt!2584744 (head!14901 s1!1971))))))

(declare-fun b!7250748 () Bool)

(assert (=> b!7250748 (= e!4347580 (matchZipper!3553 (derivationStepZipper!3421 (derivationStepZipper!3421 lt!2584744 (head!14901 s1!1971)) (head!14901 (tail!14317 s1!1971))) (tail!14317 (tail!14317 s1!1971))))))

(assert (= (and d!2253770 c!1347452) b!7250747))

(assert (= (and d!2253770 (not c!1347452)) b!7250748))

(assert (=> d!2253770 m!7929244))

(declare-fun m!7929686 () Bool)

(assert (=> d!2253770 m!7929686))

(assert (=> b!7250747 m!7929242))

(declare-fun m!7929688 () Bool)

(assert (=> b!7250747 m!7929688))

(assert (=> b!7250748 m!7929244))

(declare-fun m!7929690 () Bool)

(assert (=> b!7250748 m!7929690))

(assert (=> b!7250748 m!7929242))

(assert (=> b!7250748 m!7929690))

(declare-fun m!7929692 () Bool)

(assert (=> b!7250748 m!7929692))

(assert (=> b!7250748 m!7929244))

(declare-fun m!7929694 () Bool)

(assert (=> b!7250748 m!7929694))

(assert (=> b!7250748 m!7929692))

(assert (=> b!7250748 m!7929694))

(declare-fun m!7929696 () Bool)

(assert (=> b!7250748 m!7929696))

(assert (=> b!7250438 d!2253770))

(declare-fun bs!1906204 () Bool)

(declare-fun d!2253772 () Bool)

(assert (= bs!1906204 (and d!2253772 d!2253542)))

(declare-fun lambda!444150 () Int)

(assert (=> bs!1906204 (= (= (head!14901 s1!1971) (h!76835 s1!1971)) (= lambda!444150 lambda!444110))))

(declare-fun bs!1906205 () Bool)

(assert (= bs!1906205 (and d!2253772 d!2253652)))

(assert (=> bs!1906205 (= (= (head!14901 s1!1971) (head!14901 (t!384565 s1!1971))) (= lambda!444150 lambda!444137))))

(declare-fun bs!1906206 () Bool)

(assert (= bs!1906206 (and d!2253772 d!2253614)))

(assert (=> bs!1906206 (= (= (head!14901 s1!1971) (head!14901 (++!16549 (t!384565 s1!1971) s2!1849))) (= lambda!444150 lambda!444133))))

(declare-fun bs!1906207 () Bool)

(assert (= bs!1906207 (and d!2253772 d!2253728)))

(assert (=> bs!1906207 (= (= (head!14901 s1!1971) (head!14901 s2!1849)) (= lambda!444150 lambda!444145))))

(declare-fun bs!1906208 () Bool)

(assert (= bs!1906208 (and d!2253772 b!7250251)))

(assert (=> bs!1906208 (= (= (head!14901 s1!1971) (h!76835 s1!1971)) (= lambda!444150 lambda!444098))))

(assert (=> d!2253772 true))

(assert (=> d!2253772 (= (derivationStepZipper!3421 lt!2584744 (head!14901 s1!1971)) (flatMap!2808 lt!2584744 lambda!444150))))

(declare-fun bs!1906209 () Bool)

(assert (= bs!1906209 d!2253772))

(declare-fun m!7929698 () Bool)

(assert (=> bs!1906209 m!7929698))

(assert (=> b!7250438 d!2253772))

(declare-fun d!2253774 () Bool)

(assert (=> d!2253774 (= (head!14901 s1!1971) (h!76835 s1!1971))))

(assert (=> b!7250438 d!2253774))

(declare-fun d!2253776 () Bool)

(assert (=> d!2253776 (= (tail!14317 s1!1971) (t!384565 s1!1971))))

(assert (=> b!7250438 d!2253776))

(declare-fun b!7250759 () Bool)

(declare-fun e!4347583 () Bool)

(assert (=> b!7250759 (= e!4347583 tp_is_empty!46751)))

(assert (=> b!7250484 (= tp!2037375 e!4347583)))

(declare-fun b!7250761 () Bool)

(declare-fun tp!2037420 () Bool)

(assert (=> b!7250761 (= e!4347583 tp!2037420)))

(declare-fun b!7250762 () Bool)

(declare-fun tp!2037423 () Bool)

(declare-fun tp!2037422 () Bool)

(assert (=> b!7250762 (= e!4347583 (and tp!2037423 tp!2037422))))

(declare-fun b!7250760 () Bool)

(declare-fun tp!2037419 () Bool)

(declare-fun tp!2037421 () Bool)

(assert (=> b!7250760 (= e!4347583 (and tp!2037419 tp!2037421))))

(assert (= (and b!7250484 ((_ is ElementMatch!18643) (h!76833 (exprs!8083 ct1!232)))) b!7250759))

(assert (= (and b!7250484 ((_ is Concat!27488) (h!76833 (exprs!8083 ct1!232)))) b!7250760))

(assert (= (and b!7250484 ((_ is Star!18643) (h!76833 (exprs!8083 ct1!232)))) b!7250761))

(assert (= (and b!7250484 ((_ is Union!18643) (h!76833 (exprs!8083 ct1!232)))) b!7250762))

(declare-fun b!7250763 () Bool)

(declare-fun e!4347584 () Bool)

(declare-fun tp!2037424 () Bool)

(declare-fun tp!2037425 () Bool)

(assert (=> b!7250763 (= e!4347584 (and tp!2037424 tp!2037425))))

(assert (=> b!7250484 (= tp!2037376 e!4347584)))

(assert (= (and b!7250484 ((_ is Cons!70385) (t!384563 (exprs!8083 ct1!232)))) b!7250763))

(declare-fun b!7250764 () Bool)

(declare-fun e!4347585 () Bool)

(declare-fun tp!2037426 () Bool)

(assert (=> b!7250764 (= e!4347585 (and tp_is_empty!46751 tp!2037426))))

(assert (=> b!7250489 (= tp!2037379 e!4347585)))

(assert (= (and b!7250489 ((_ is Cons!70387) (t!384565 (t!384565 s2!1849)))) b!7250764))

(declare-fun b!7250765 () Bool)

(declare-fun e!4347586 () Bool)

(assert (=> b!7250765 (= e!4347586 tp_is_empty!46751)))

(assert (=> b!7250490 (= tp!2037380 e!4347586)))

(declare-fun b!7250767 () Bool)

(declare-fun tp!2037428 () Bool)

(assert (=> b!7250767 (= e!4347586 tp!2037428)))

(declare-fun b!7250768 () Bool)

(declare-fun tp!2037431 () Bool)

(declare-fun tp!2037430 () Bool)

(assert (=> b!7250768 (= e!4347586 (and tp!2037431 tp!2037430))))

(declare-fun b!7250766 () Bool)

(declare-fun tp!2037427 () Bool)

(declare-fun tp!2037429 () Bool)

(assert (=> b!7250766 (= e!4347586 (and tp!2037427 tp!2037429))))

(assert (= (and b!7250490 ((_ is ElementMatch!18643) (h!76833 (exprs!8083 ct2!328)))) b!7250765))

(assert (= (and b!7250490 ((_ is Concat!27488) (h!76833 (exprs!8083 ct2!328)))) b!7250766))

(assert (= (and b!7250490 ((_ is Star!18643) (h!76833 (exprs!8083 ct2!328)))) b!7250767))

(assert (= (and b!7250490 ((_ is Union!18643) (h!76833 (exprs!8083 ct2!328)))) b!7250768))

(declare-fun b!7250769 () Bool)

(declare-fun e!4347587 () Bool)

(declare-fun tp!2037432 () Bool)

(declare-fun tp!2037433 () Bool)

(assert (=> b!7250769 (= e!4347587 (and tp!2037432 tp!2037433))))

(assert (=> b!7250490 (= tp!2037381 e!4347587)))

(assert (= (and b!7250490 ((_ is Cons!70385) (t!384563 (exprs!8083 ct2!328)))) b!7250769))

(declare-fun b!7250770 () Bool)

(declare-fun e!4347588 () Bool)

(declare-fun tp!2037434 () Bool)

(assert (=> b!7250770 (= e!4347588 (and tp_is_empty!46751 tp!2037434))))

(assert (=> b!7250491 (= tp!2037382 e!4347588)))

(assert (= (and b!7250491 ((_ is Cons!70387) (t!384565 (t!384565 s1!1971)))) b!7250770))

(declare-fun b_lambda!278399 () Bool)

(assert (= b_lambda!278387 (or b!7250242 b_lambda!278399)))

(declare-fun bs!1906210 () Bool)

(declare-fun d!2253778 () Bool)

(assert (= bs!1906210 (and d!2253778 b!7250242)))

(assert (=> bs!1906210 (= (dynLambda!28732 lambda!444097 lt!2584838) (matchZipper!3553 (store ((as const (Array Context!15166 Bool)) false) lt!2584838 true) (t!384565 s1!1971)))))

(declare-fun m!7929700 () Bool)

(assert (=> bs!1906210 m!7929700))

(assert (=> bs!1906210 m!7929700))

(declare-fun m!7929702 () Bool)

(assert (=> bs!1906210 m!7929702))

(assert (=> d!2253716 d!2253778))

(declare-fun b_lambda!278401 () Bool)

(assert (= b_lambda!278383 (or d!2253568 b_lambda!278401)))

(declare-fun bs!1906211 () Bool)

(declare-fun d!2253780 () Bool)

(assert (= bs!1906211 (and d!2253780 d!2253568)))

(assert (=> bs!1906211 (= (dynLambda!28732 lambda!444121 (h!76834 lt!2584734)) (not (dynLambda!28732 lambda!444097 (h!76834 lt!2584734))))))

(declare-fun b_lambda!278423 () Bool)

(assert (=> (not b_lambda!278423) (not bs!1906211)))

(declare-fun m!7929704 () Bool)

(assert (=> bs!1906211 m!7929704))

(assert (=> b!7250656 d!2253780))

(declare-fun b_lambda!278403 () Bool)

(assert (= b_lambda!278375 (or d!2253552 b_lambda!278403)))

(declare-fun bs!1906212 () Bool)

(declare-fun d!2253782 () Bool)

(assert (= bs!1906212 (and d!2253782 d!2253552)))

(declare-fun validRegex!9541 (Regex!18643) Bool)

(assert (=> bs!1906212 (= (dynLambda!28738 lambda!444115 (h!76833 (exprs!8083 lt!2584743))) (validRegex!9541 (h!76833 (exprs!8083 lt!2584743))))))

(declare-fun m!7929706 () Bool)

(assert (=> bs!1906212 m!7929706))

(assert (=> b!7250517 d!2253782))

(declare-fun b_lambda!278405 () Bool)

(assert (= b_lambda!278395 (or b!7250251 b_lambda!278405)))

(assert (=> d!2253748 d!2253588))

(declare-fun b_lambda!278407 () Bool)

(assert (= b_lambda!278377 (or b!7250247 b_lambda!278407)))

(declare-fun bs!1906213 () Bool)

(declare-fun d!2253784 () Bool)

(assert (= bs!1906213 (and d!2253784 b!7250247)))

(assert (=> bs!1906213 (= (dynLambda!28738 lambda!444096 (h!76833 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328)))) (validRegex!9541 (h!76833 (++!16548 (exprs!8083 lt!2584735) (exprs!8083 ct2!328)))))))

(declare-fun m!7929708 () Bool)

(assert (=> bs!1906213 m!7929708))

(assert (=> b!7250597 d!2253784))

(declare-fun b_lambda!278409 () Bool)

(assert (= b_lambda!278391 (or b!7250247 b_lambda!278409)))

(declare-fun bs!1906214 () Bool)

(declare-fun d!2253786 () Bool)

(assert (= bs!1906214 (and d!2253786 b!7250247)))

(assert (=> bs!1906214 (= (dynLambda!28738 lambda!444096 (h!76833 (++!16548 (exprs!8083 ct1!232) (exprs!8083 ct2!328)))) (validRegex!9541 (h!76833 (++!16548 (exprs!8083 ct1!232) (exprs!8083 ct2!328)))))))

(declare-fun m!7929710 () Bool)

(assert (=> bs!1906214 m!7929710))

(assert (=> b!7250699 d!2253786))

(declare-fun b_lambda!278411 () Bool)

(assert (= b_lambda!278393 (or b!7250247 b_lambda!278411)))

(declare-fun bs!1906215 () Bool)

(declare-fun d!2253788 () Bool)

(assert (= bs!1906215 (and d!2253788 b!7250247)))

(assert (=> bs!1906215 (= (dynLambda!28738 lambda!444096 (h!76833 (exprs!8083 ct1!232))) (validRegex!9541 (h!76833 (exprs!8083 ct1!232))))))

(declare-fun m!7929712 () Bool)

(assert (=> bs!1906215 m!7929712))

(assert (=> b!7250701 d!2253788))

(declare-fun b_lambda!278413 () Bool)

(assert (= b_lambda!278385 (or b!7250242 b_lambda!278413)))

(declare-fun bs!1906216 () Bool)

(declare-fun d!2253790 () Bool)

(assert (= bs!1906216 (and d!2253790 b!7250242)))

(assert (=> bs!1906216 (= (dynLambda!28732 lambda!444097 (h!76834 (toList!11472 lt!2584751))) (matchZipper!3553 (store ((as const (Array Context!15166 Bool)) false) (h!76834 (toList!11472 lt!2584751)) true) (t!384565 s1!1971)))))

(declare-fun m!7929714 () Bool)

(assert (=> bs!1906216 m!7929714))

(assert (=> bs!1906216 m!7929714))

(declare-fun m!7929716 () Bool)

(assert (=> bs!1906216 m!7929716))

(assert (=> b!7250687 d!2253790))

(declare-fun b_lambda!278415 () Bool)

(assert (= b_lambda!278379 (or b!7250247 b_lambda!278415)))

(declare-fun bs!1906217 () Bool)

(declare-fun d!2253792 () Bool)

(assert (= bs!1906217 (and d!2253792 b!7250247)))

(assert (=> bs!1906217 (= (dynLambda!28738 lambda!444096 (h!76833 (exprs!8083 lt!2584735))) (validRegex!9541 (h!76833 (exprs!8083 lt!2584735))))))

(declare-fun m!7929718 () Bool)

(assert (=> bs!1906217 m!7929718))

(assert (=> b!7250599 d!2253792))

(declare-fun b_lambda!278417 () Bool)

(assert (= b_lambda!278397 (or b!7250251 b_lambda!278417)))

(assert (=> d!2253758 d!2253594))

(declare-fun b_lambda!278419 () Bool)

(assert (= b_lambda!278381 (or d!2253548 b_lambda!278419)))

(declare-fun bs!1906218 () Bool)

(declare-fun d!2253794 () Bool)

(assert (= bs!1906218 (and d!2253794 d!2253548)))

(assert (=> bs!1906218 (= (dynLambda!28738 lambda!444113 (h!76833 (exprs!8083 ct1!232))) (validRegex!9541 (h!76833 (exprs!8083 ct1!232))))))

(assert (=> bs!1906218 m!7929712))

(assert (=> b!7250618 d!2253794))

(declare-fun b_lambda!278421 () Bool)

(assert (= b_lambda!278389 (or d!2253550 b_lambda!278421)))

(declare-fun bs!1906219 () Bool)

(declare-fun d!2253796 () Bool)

(assert (= bs!1906219 (and d!2253796 d!2253550)))

(assert (=> bs!1906219 (= (dynLambda!28738 lambda!444114 (h!76833 (exprs!8083 ct2!328))) (validRegex!9541 (h!76833 (exprs!8083 ct2!328))))))

(declare-fun m!7929720 () Bool)

(assert (=> bs!1906219 m!7929720))

(assert (=> b!7250691 d!2253796))

(check-sat (not d!2253652) (not bm!660383) (not b!7250615) (not b_lambda!278363) (not bs!1906214) (not b!7250670) (not d!2253608) (not bm!660363) (not b!7250583) (not b!7250577) (not b!7250672) (not b!7250600) (not bm!660342) (not b!7250638) (not b_lambda!278417) (not b!7250613) (not bm!660369) (not b!7250607) (not b!7250510) (not b_lambda!278405) (not b!7250685) (not b_lambda!278421) (not d!2253650) (not bs!1906219) (not bm!660366) (not b!7250694) (not d!2253624) (not d!2253680) (not b!7250556) (not b!7250579) (not bm!660375) (not b!7250700) (not b!7250702) (not b!7250619) (not b!7250662) (not bm!660381) (not d!2253682) (not b!7250709) (not bm!660384) (not b!7250708) (not b!7250629) (not d!2253670) (not b!7250766) (not d!2253772) (not bm!660372) (not b!7250592) (not b!7250718) (not bm!660355) (not d!2253770) (not bs!1906218) (not b!7250604) (not b!7250527) (not d!2253716) (not b!7250521) (not bm!660357) (not b!7250729) (not bm!660365) (not b!7250704) (not b!7250627) (not b!7250586) (not bm!660378) (not b!7250746) (not setNonEmpty!53568) (not d!2253736) (not d!2253744) (not d!2253712) (not bs!1906213) (not bm!660353) (not bm!660352) (not b!7250585) (not b!7250605) (not b!7250519) (not d!2253754) (not b!7250747) (not d!2253760) (not d!2253758) (not b!7250575) (not b_lambda!278419) (not d!2253750) (not b!7250770) (not d!2253728) (not d!2253628) (not b!7250578) (not d!2253726) (not b_lambda!278399) (not b!7250617) (not b!7250649) (not b!7250744) (not b_lambda!278411) (not b_lambda!278401) tp_is_empty!46751 (not b!7250565) (not bs!1906212) (not d!2253684) (not b_lambda!278407) (not bs!1906216) (not b_lambda!278409) (not b!7250690) (not bs!1906210) (not b!7250769) (not d!2253676) (not b_lambda!278365) (not d!2253626) (not b!7250698) (not bs!1906215) (not bm!660359) (not d!2253632) (not d!2253614) (not b!7250596) (not b!7250760) (not b!7250520) (not d!2253748) (not b!7250696) (not b_lambda!278423) (not b!7250697) (not bm!660371) (not d!2253648) (not b!7250761) (not b!7250763) (not bm!660377) (not bm!660360) (not b!7250671) (not b_lambda!278415) (not b!7250762) (not b!7250705) (not d!2253740) (not b_lambda!278413) (not b!7250573) (not bm!660348) (not b!7250584) (not b!7250692) (not b!7250657) (not b_lambda!278367) (not setNonEmpty!53567) (not b!7250663) (not b!7250522) (not b!7250689) (not b!7250767) (not b!7250740) (not b!7250625) (not b!7250603) (not bm!660350) (not bs!1906217) (not b!7250528) (not b!7250748) (not d!2253612) (not d!2253752) (not b!7250511) (not b!7250707) (not b!7250598) (not b!7250518) (not b!7250768) (not bm!660347) (not b!7250594) (not b_lambda!278403) (not d!2253658) (not b!7250764) (not d!2253674) (not d!2253704))
(check-sat)
