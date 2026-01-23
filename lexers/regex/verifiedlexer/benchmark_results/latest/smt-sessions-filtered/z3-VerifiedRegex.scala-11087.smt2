; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573766 () Bool)

(assert start!573766)

(declare-fun b!5488045 () Bool)

(assert (=> b!5488045 true))

(declare-fun b!5488034 () Bool)

(assert (=> b!5488034 true))

(declare-fun b!5488029 () Bool)

(declare-fun e!3395928 () Bool)

(declare-fun tp!1508439 () Bool)

(assert (=> b!5488029 (= e!3395928 tp!1508439)))

(declare-fun b!5488031 () Bool)

(declare-fun res!2340471 () Bool)

(declare-fun e!3395933 () Bool)

(assert (=> b!5488031 (=> (not res!2340471) (not e!3395933))))

(declare-datatypes ((C!31112 0))(
  ( (C!31113 (val!25258 Int)) )
))
(declare-datatypes ((Regex!15421 0))(
  ( (ElementMatch!15421 (c!958557 C!31112)) (Concat!24266 (regOne!31354 Regex!15421) (regTwo!31354 Regex!15421)) (EmptyExpr!15421) (Star!15421 (reg!15750 Regex!15421)) (EmptyLang!15421) (Union!15421 (regOne!31355 Regex!15421) (regTwo!31355 Regex!15421)) )
))
(declare-fun r!7292 () Regex!15421)

(declare-datatypes ((List!62562 0))(
  ( (Nil!62438) (Cons!62438 (h!68886 Regex!15421) (t!375793 List!62562)) )
))
(declare-datatypes ((Context!9610 0))(
  ( (Context!9611 (exprs!5305 List!62562)) )
))
(declare-datatypes ((List!62563 0))(
  ( (Nil!62439) (Cons!62439 (h!68887 Context!9610) (t!375794 List!62563)) )
))
(declare-fun zl!343 () List!62563)

(declare-fun unfocusZipper!1163 (List!62563) Regex!15421)

(assert (=> b!5488031 (= res!2340471 (= r!7292 (unfocusZipper!1163 zl!343)))))

(declare-fun b!5488032 () Bool)

(declare-fun e!3395932 () Bool)

(declare-fun tp!1508438 () Bool)

(assert (=> b!5488032 (= e!3395932 tp!1508438)))

(declare-fun b!5488033 () Bool)

(declare-fun e!3395927 () Bool)

(declare-fun tp!1508436 () Bool)

(declare-fun tp!1508431 () Bool)

(assert (=> b!5488033 (= e!3395927 (and tp!1508436 tp!1508431))))

(declare-fun e!3395934 () Bool)

(declare-fun e!3395931 () Bool)

(assert (=> b!5488034 (= e!3395934 e!3395931)))

(declare-fun res!2340461 () Bool)

(assert (=> b!5488034 (=> res!2340461 e!3395931)))

(declare-fun lambda!293563 () Int)

(declare-fun exists!2064 (List!62563 Int) Bool)

(assert (=> b!5488034 (= res!2340461 (not (exists!2064 zl!343 lambda!293563)))))

(assert (=> b!5488034 (exists!2064 zl!343 lambda!293563)))

(declare-datatypes ((Unit!155298 0))(
  ( (Unit!155299) )
))
(declare-fun lt!2241373 () Unit!155298)

(declare-fun lt!2241371 () Regex!15421)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!12 (List!62563 Regex!15421) Unit!155298)

(assert (=> b!5488034 (= lt!2241373 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!12 zl!343 lt!2241371))))

(declare-fun b!5488035 () Bool)

(declare-fun tp!1508430 () Bool)

(declare-fun tp!1508433 () Bool)

(assert (=> b!5488035 (= e!3395927 (and tp!1508430 tp!1508433))))

(declare-fun b!5488036 () Bool)

(declare-fun e!3395930 () Bool)

(assert (=> b!5488036 (= e!3395930 true)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2241365 () (InoxSet Context!9610))

(declare-datatypes ((List!62564 0))(
  ( (Nil!62440) (Cons!62440 (h!68888 C!31112) (t!375795 List!62564)) )
))
(declare-fun s!2326 () List!62564)

(declare-fun matchZipper!1607 ((InoxSet Context!9610) List!62564) Bool)

(assert (=> b!5488036 (matchZipper!1607 lt!2241365 s!2326)))

(declare-fun lt!2241374 () Unit!155298)

(declare-fun lt!2241363 () List!62563)

(declare-fun theoremZipperRegexEquiv!593 ((InoxSet Context!9610) List!62563 Regex!15421 List!62564) Unit!155298)

(assert (=> b!5488036 (= lt!2241374 (theoremZipperRegexEquiv!593 lt!2241365 lt!2241363 lt!2241371 s!2326))))

(declare-fun lt!2241369 () Context!9610)

(assert (=> b!5488036 (= lt!2241365 (store ((as const (Array Context!9610 Bool)) false) lt!2241369 true))))

(declare-fun b!5488037 () Bool)

(declare-fun e!3395937 () Bool)

(assert (=> b!5488037 (= e!3395933 (not e!3395937))))

(declare-fun res!2340462 () Bool)

(assert (=> b!5488037 (=> res!2340462 e!3395937)))

(declare-fun e!3395938 () Bool)

(assert (=> b!5488037 (= res!2340462 e!3395938)))

(declare-fun res!2340469 () Bool)

(assert (=> b!5488037 (=> (not res!2340469) (not e!3395938))))

(get-info :version)

(assert (=> b!5488037 (= res!2340469 ((_ is Cons!62439) zl!343))))

(declare-fun lt!2241364 () Bool)

(declare-fun matchRSpec!2524 (Regex!15421 List!62564) Bool)

(assert (=> b!5488037 (= lt!2241364 (matchRSpec!2524 r!7292 s!2326))))

(declare-fun matchR!7606 (Regex!15421 List!62564) Bool)

(assert (=> b!5488037 (= lt!2241364 (matchR!7606 r!7292 s!2326))))

(declare-fun lt!2241370 () Unit!155298)

(declare-fun mainMatchTheorem!2524 (Regex!15421 List!62564) Unit!155298)

(assert (=> b!5488037 (= lt!2241370 (mainMatchTheorem!2524 r!7292 s!2326))))

(declare-fun res!2340459 () Bool)

(assert (=> start!573766 (=> (not res!2340459) (not e!3395933))))

(declare-fun validRegex!7157 (Regex!15421) Bool)

(assert (=> start!573766 (= res!2340459 (validRegex!7157 r!7292))))

(assert (=> start!573766 e!3395933))

(assert (=> start!573766 e!3395927))

(declare-fun condSetEmpty!36231 () Bool)

(declare-fun z!1189 () (InoxSet Context!9610))

(assert (=> start!573766 (= condSetEmpty!36231 (= z!1189 ((as const (Array Context!9610 Bool)) false)))))

(declare-fun setRes!36231 () Bool)

(assert (=> start!573766 setRes!36231))

(declare-fun e!3395935 () Bool)

(assert (=> start!573766 e!3395935))

(declare-fun e!3395929 () Bool)

(assert (=> start!573766 e!3395929))

(declare-fun b!5488030 () Bool)

(declare-fun isEmpty!34311 (List!62563) Bool)

(assert (=> b!5488030 (= e!3395938 (isEmpty!34311 (t!375794 zl!343)))))

(declare-fun tp!1508434 () Bool)

(declare-fun setElem!36231 () Context!9610)

(declare-fun setNonEmpty!36231 () Bool)

(declare-fun inv!81799 (Context!9610) Bool)

(assert (=> setNonEmpty!36231 (= setRes!36231 (and tp!1508434 (inv!81799 setElem!36231) e!3395928))))

(declare-fun setRest!36231 () (InoxSet Context!9610))

(assert (=> setNonEmpty!36231 (= z!1189 ((_ map or) (store ((as const (Array Context!9610 Bool)) false) setElem!36231 true) setRest!36231))))

(declare-fun b!5488038 () Bool)

(declare-fun res!2340472 () Bool)

(declare-fun e!3395936 () Bool)

(assert (=> b!5488038 (=> res!2340472 e!3395936)))

(declare-fun lt!2241375 () List!62562)

(declare-fun lambda!293562 () Int)

(declare-fun exists!2065 (List!62562 Int) Bool)

(assert (=> b!5488038 (= res!2340472 (not (exists!2065 lt!2241375 lambda!293562)))))

(declare-fun b!5488039 () Bool)

(declare-fun res!2340467 () Bool)

(assert (=> b!5488039 (=> res!2340467 e!3395937)))

(assert (=> b!5488039 (= res!2340467 (isEmpty!34311 (t!375794 zl!343)))))

(declare-fun b!5488040 () Bool)

(assert (=> b!5488040 (= e!3395936 e!3395934)))

(declare-fun res!2340470 () Bool)

(assert (=> b!5488040 (=> res!2340470 e!3395934)))

(declare-fun contains!19745 (List!62562 Regex!15421) Bool)

(assert (=> b!5488040 (= res!2340470 (not (contains!19745 lt!2241375 lt!2241371)))))

(declare-fun getWitness!881 (List!62562 Int) Regex!15421)

(assert (=> b!5488040 (= lt!2241371 (getWitness!881 lt!2241375 lambda!293562))))

(declare-fun b!5488041 () Bool)

(assert (=> b!5488041 (= e!3395931 e!3395930)))

(declare-fun res!2340464 () Bool)

(assert (=> b!5488041 (=> res!2340464 e!3395930)))

(declare-fun lt!2241372 () Int)

(declare-fun zipperDepthTotal!196 (List!62563) Int)

(assert (=> b!5488041 (= res!2340464 (<= lt!2241372 (zipperDepthTotal!196 lt!2241363)))))

(assert (=> b!5488041 (= lt!2241363 (Cons!62439 lt!2241369 Nil!62439))))

(declare-fun lt!2241367 () Int)

(assert (=> b!5488041 (< lt!2241367 lt!2241372)))

(assert (=> b!5488041 (= lt!2241372 (zipperDepthTotal!196 zl!343))))

(declare-fun contextDepthTotal!176 (Context!9610) Int)

(assert (=> b!5488041 (= lt!2241367 (contextDepthTotal!176 lt!2241369))))

(declare-fun lt!2241368 () Unit!155298)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!4 (List!62563 Context!9610) Unit!155298)

(assert (=> b!5488041 (= lt!2241368 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!4 zl!343 lt!2241369))))

(declare-fun getWitness!882 (List!62563 Int) Context!9610)

(assert (=> b!5488041 (= lt!2241369 (getWitness!882 zl!343 lambda!293563))))

(declare-fun setIsEmpty!36231 () Bool)

(assert (=> setIsEmpty!36231 setRes!36231))

(declare-fun b!5488042 () Bool)

(declare-fun res!2340468 () Bool)

(assert (=> b!5488042 (=> res!2340468 e!3395934)))

(assert (=> b!5488042 (= res!2340468 (not (matchR!7606 lt!2241371 s!2326)))))

(declare-fun b!5488043 () Bool)

(declare-fun res!2340460 () Bool)

(assert (=> b!5488043 (=> (not res!2340460) (not e!3395933))))

(declare-fun toList!9205 ((InoxSet Context!9610)) List!62563)

(assert (=> b!5488043 (= res!2340460 (= (toList!9205 z!1189) zl!343))))

(declare-fun b!5488044 () Bool)

(declare-fun res!2340465 () Bool)

(assert (=> b!5488044 (=> res!2340465 e!3395937)))

(assert (=> b!5488044 (= res!2340465 (or (not ((_ is Cons!62439) zl!343)) ((_ is Nil!62440) s!2326) (not (= zl!343 (Cons!62439 (h!68887 zl!343) (t!375794 zl!343))))))))

(assert (=> b!5488045 (= e!3395937 e!3395936)))

(declare-fun res!2340466 () Bool)

(assert (=> b!5488045 (=> res!2340466 e!3395936)))

(assert (=> b!5488045 (= res!2340466 (not lt!2241364))))

(assert (=> b!5488045 (= lt!2241364 (exists!2065 lt!2241375 lambda!293562))))

(declare-fun lt!2241366 () Unit!155298)

(declare-fun matchRGenUnionSpec!254 (Regex!15421 List!62562 List!62564) Unit!155298)

(assert (=> b!5488045 (= lt!2241366 (matchRGenUnionSpec!254 r!7292 lt!2241375 s!2326))))

(declare-fun unfocusZipperList!853 (List!62563) List!62562)

(assert (=> b!5488045 (= lt!2241375 (unfocusZipperList!853 zl!343))))

(declare-fun b!5488046 () Bool)

(declare-fun tp_is_empty!40095 () Bool)

(declare-fun tp!1508432 () Bool)

(assert (=> b!5488046 (= e!3395929 (and tp_is_empty!40095 tp!1508432))))

(declare-fun b!5488047 () Bool)

(declare-fun tp!1508437 () Bool)

(assert (=> b!5488047 (= e!3395927 tp!1508437)))

(declare-fun b!5488048 () Bool)

(assert (=> b!5488048 (= e!3395927 tp_is_empty!40095)))

(declare-fun b!5488049 () Bool)

(declare-fun res!2340463 () Bool)

(assert (=> b!5488049 (=> res!2340463 e!3395934)))

(assert (=> b!5488049 (= res!2340463 (not (validRegex!7157 lt!2241371)))))

(declare-fun b!5488050 () Bool)

(declare-fun tp!1508435 () Bool)

(assert (=> b!5488050 (= e!3395935 (and (inv!81799 (h!68887 zl!343)) e!3395932 tp!1508435))))

(assert (= (and start!573766 res!2340459) b!5488043))

(assert (= (and b!5488043 res!2340460) b!5488031))

(assert (= (and b!5488031 res!2340471) b!5488037))

(assert (= (and b!5488037 res!2340469) b!5488030))

(assert (= (and b!5488037 (not res!2340462)) b!5488044))

(assert (= (and b!5488044 (not res!2340465)) b!5488039))

(assert (= (and b!5488039 (not res!2340467)) b!5488045))

(assert (= (and b!5488045 (not res!2340466)) b!5488038))

(assert (= (and b!5488038 (not res!2340472)) b!5488040))

(assert (= (and b!5488040 (not res!2340470)) b!5488049))

(assert (= (and b!5488049 (not res!2340463)) b!5488042))

(assert (= (and b!5488042 (not res!2340468)) b!5488034))

(assert (= (and b!5488034 (not res!2340461)) b!5488041))

(assert (= (and b!5488041 (not res!2340464)) b!5488036))

(assert (= (and start!573766 ((_ is ElementMatch!15421) r!7292)) b!5488048))

(assert (= (and start!573766 ((_ is Concat!24266) r!7292)) b!5488035))

(assert (= (and start!573766 ((_ is Star!15421) r!7292)) b!5488047))

(assert (= (and start!573766 ((_ is Union!15421) r!7292)) b!5488033))

(assert (= (and start!573766 condSetEmpty!36231) setIsEmpty!36231))

(assert (= (and start!573766 (not condSetEmpty!36231)) setNonEmpty!36231))

(assert (= setNonEmpty!36231 b!5488029))

(assert (= b!5488050 b!5488032))

(assert (= (and start!573766 ((_ is Cons!62439) zl!343)) b!5488050))

(assert (= (and start!573766 ((_ is Cons!62440) s!2326)) b!5488046))

(declare-fun m!6502008 () Bool)

(assert (=> b!5488043 m!6502008))

(declare-fun m!6502010 () Bool)

(assert (=> b!5488041 m!6502010))

(declare-fun m!6502012 () Bool)

(assert (=> b!5488041 m!6502012))

(declare-fun m!6502014 () Bool)

(assert (=> b!5488041 m!6502014))

(declare-fun m!6502016 () Bool)

(assert (=> b!5488041 m!6502016))

(declare-fun m!6502018 () Bool)

(assert (=> b!5488041 m!6502018))

(declare-fun m!6502020 () Bool)

(assert (=> setNonEmpty!36231 m!6502020))

(declare-fun m!6502022 () Bool)

(assert (=> b!5488039 m!6502022))

(declare-fun m!6502024 () Bool)

(assert (=> b!5488036 m!6502024))

(declare-fun m!6502026 () Bool)

(assert (=> b!5488036 m!6502026))

(declare-fun m!6502028 () Bool)

(assert (=> b!5488036 m!6502028))

(declare-fun m!6502030 () Bool)

(assert (=> b!5488050 m!6502030))

(declare-fun m!6502032 () Bool)

(assert (=> start!573766 m!6502032))

(declare-fun m!6502034 () Bool)

(assert (=> b!5488040 m!6502034))

(declare-fun m!6502036 () Bool)

(assert (=> b!5488040 m!6502036))

(declare-fun m!6502038 () Bool)

(assert (=> b!5488034 m!6502038))

(assert (=> b!5488034 m!6502038))

(declare-fun m!6502040 () Bool)

(assert (=> b!5488034 m!6502040))

(declare-fun m!6502042 () Bool)

(assert (=> b!5488031 m!6502042))

(declare-fun m!6502044 () Bool)

(assert (=> b!5488042 m!6502044))

(assert (=> b!5488030 m!6502022))

(declare-fun m!6502046 () Bool)

(assert (=> b!5488037 m!6502046))

(declare-fun m!6502048 () Bool)

(assert (=> b!5488037 m!6502048))

(declare-fun m!6502050 () Bool)

(assert (=> b!5488037 m!6502050))

(declare-fun m!6502052 () Bool)

(assert (=> b!5488038 m!6502052))

(declare-fun m!6502054 () Bool)

(assert (=> b!5488049 m!6502054))

(assert (=> b!5488045 m!6502052))

(declare-fun m!6502056 () Bool)

(assert (=> b!5488045 m!6502056))

(declare-fun m!6502058 () Bool)

(assert (=> b!5488045 m!6502058))

(check-sat (not b!5488043) (not b!5488049) (not b!5488036) (not b!5488032) (not b!5488034) tp_is_empty!40095 (not b!5488030) (not b!5488035) (not b!5488038) (not b!5488029) (not b!5488040) (not b!5488037) (not b!5488042) (not b!5488033) (not setNonEmpty!36231) (not b!5488031) (not b!5488039) (not start!573766) (not b!5488045) (not b!5488050) (not b!5488046) (not b!5488047) (not b!5488041))
(check-sat)
