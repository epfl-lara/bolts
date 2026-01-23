; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!596334 () Bool)

(assert start!596334)

(declare-fun b!5820342 () Bool)

(assert (=> b!5820342 true))

(declare-fun b!5820339 () Bool)

(assert (=> b!5820339 true))

(declare-fun bs!1373236 () Bool)

(declare-fun b!5820352 () Bool)

(assert (= bs!1373236 (and b!5820352 b!5820342)))

(declare-fun lambda!318451 () Int)

(declare-fun lambda!318449 () Int)

(assert (=> bs!1373236 (not (= lambda!318451 lambda!318449))))

(declare-fun b!5820333 () Bool)

(declare-fun e!3572030 () Bool)

(declare-fun tp!1606125 () Bool)

(assert (=> b!5820333 (= e!3572030 tp!1606125)))

(declare-datatypes ((C!31994 0))(
  ( (C!31995 (val!25699 Int)) )
))
(declare-datatypes ((Regex!15862 0))(
  ( (ElementMatch!15862 (c!1031430 C!31994)) (Concat!24707 (regOne!32236 Regex!15862) (regTwo!32236 Regex!15862)) (EmptyExpr!15862) (Star!15862 (reg!16191 Regex!15862)) (EmptyLang!15862) (Union!15862 (regOne!32237 Regex!15862) (regTwo!32237 Regex!15862)) )
))
(declare-datatypes ((List!63885 0))(
  ( (Nil!63761) (Cons!63761 (h!70209 Regex!15862) (t!377240 List!63885)) )
))
(declare-datatypes ((Context!10492 0))(
  ( (Context!10493 (exprs!5746 List!63885)) )
))
(declare-fun setElem!39297 () Context!10492)

(declare-fun setNonEmpty!39297 () Bool)

(declare-fun setRes!39297 () Bool)

(declare-fun tp!1606129 () Bool)

(declare-fun inv!82903 (Context!10492) Bool)

(assert (=> setNonEmpty!39297 (= setRes!39297 (and tp!1606129 (inv!82903 setElem!39297) e!3572030))))

(declare-fun z!1189 () (Set Context!10492))

(declare-fun setRest!39297 () (Set Context!10492))

(assert (=> setNonEmpty!39297 (= z!1189 (set.union (set.insert setElem!39297 (as set.empty (Set Context!10492))) setRest!39297))))

(declare-fun b!5820334 () Bool)

(declare-fun res!2454403 () Bool)

(declare-fun e!3572039 () Bool)

(assert (=> b!5820334 (=> (not res!2454403) (not e!3572039))))

(declare-fun r!7292 () Regex!15862)

(declare-datatypes ((List!63886 0))(
  ( (Nil!63762) (Cons!63762 (h!70210 Context!10492) (t!377241 List!63886)) )
))
(declare-fun zl!343 () List!63886)

(declare-fun unfocusZipper!1604 (List!63886) Regex!15862)

(assert (=> b!5820334 (= res!2454403 (= r!7292 (unfocusZipper!1604 zl!343)))))

(declare-fun b!5820335 () Bool)

(declare-fun res!2454407 () Bool)

(declare-fun e!3572036 () Bool)

(assert (=> b!5820335 (=> res!2454407 e!3572036)))

(declare-datatypes ((List!63887 0))(
  ( (Nil!63763) (Cons!63763 (h!70211 C!31994) (t!377242 List!63887)) )
))
(declare-fun s!2326 () List!63887)

(assert (=> b!5820335 (= res!2454407 (or (not (is-Cons!63762 zl!343)) (is-Nil!63763 s!2326) (not (= zl!343 (Cons!63762 (h!70210 zl!343) (t!377241 zl!343))))))))

(declare-fun setIsEmpty!39297 () Bool)

(assert (=> setIsEmpty!39297 setRes!39297))

(declare-fun res!2454408 () Bool)

(assert (=> start!596334 (=> (not res!2454408) (not e!3572039))))

(declare-fun validRegex!7598 (Regex!15862) Bool)

(assert (=> start!596334 (= res!2454408 (validRegex!7598 r!7292))))

(assert (=> start!596334 e!3572039))

(declare-fun e!3572040 () Bool)

(assert (=> start!596334 e!3572040))

(declare-fun condSetEmpty!39297 () Bool)

(assert (=> start!596334 (= condSetEmpty!39297 (= z!1189 (as set.empty (Set Context!10492))))))

(assert (=> start!596334 setRes!39297))

(declare-fun e!3572032 () Bool)

(assert (=> start!596334 e!3572032))

(declare-fun e!3572033 () Bool)

(assert (=> start!596334 e!3572033))

(declare-fun b!5820336 () Bool)

(declare-fun tp!1606126 () Bool)

(declare-fun tp!1606128 () Bool)

(assert (=> b!5820336 (= e!3572040 (and tp!1606126 tp!1606128))))

(declare-fun b!5820337 () Bool)

(declare-fun tp_is_empty!40977 () Bool)

(assert (=> b!5820337 (= e!3572040 tp_is_empty!40977)))

(declare-fun b!5820338 () Bool)

(declare-fun res!2454399 () Bool)

(declare-fun e!3572034 () Bool)

(assert (=> b!5820338 (=> res!2454399 e!3572034)))

(declare-fun matchZipper!1968 ((Set Context!10492) List!63887) Bool)

(assert (=> b!5820338 (= res!2454399 (not (matchZipper!1968 z!1189 s!2326)))))

(declare-fun e!3572035 () Bool)

(assert (=> b!5820339 (= e!3572034 e!3572035)))

(declare-fun res!2454409 () Bool)

(assert (=> b!5820339 (=> res!2454409 e!3572035)))

(declare-fun lambda!318450 () Int)

(declare-fun exists!2286 (List!63886 Int) Bool)

(assert (=> b!5820339 (= res!2454409 (not (exists!2286 zl!343 lambda!318450)))))

(assert (=> b!5820339 (exists!2286 zl!343 lambda!318450)))

(declare-datatypes ((Unit!156996 0))(
  ( (Unit!156997) )
))
(declare-fun lt!2302079 () Unit!156996)

(declare-fun lemmaZipperMatchesExistsMatchingContext!83 (List!63886 List!63887) Unit!156996)

(assert (=> b!5820339 (= lt!2302079 (lemmaZipperMatchesExistsMatchingContext!83 zl!343 s!2326))))

(declare-fun b!5820340 () Bool)

(declare-fun res!2454401 () Bool)

(assert (=> b!5820340 (=> res!2454401 e!3572034)))

(declare-fun lt!2302084 () List!63885)

(declare-fun exists!2287 (List!63885 Int) Bool)

(assert (=> b!5820340 (= res!2454401 (exists!2287 lt!2302084 lambda!318449))))

(declare-fun b!5820341 () Bool)

(declare-fun tp!1606130 () Bool)

(declare-fun tp!1606123 () Bool)

(assert (=> b!5820341 (= e!3572040 (and tp!1606130 tp!1606123))))

(assert (=> b!5820342 (= e!3572036 e!3572034)))

(declare-fun res!2454405 () Bool)

(assert (=> b!5820342 (=> res!2454405 e!3572034)))

(declare-fun lt!2302080 () Bool)

(assert (=> b!5820342 (= res!2454405 lt!2302080)))

(assert (=> b!5820342 (= lt!2302080 (exists!2287 lt!2302084 lambda!318449))))

(declare-fun lt!2302081 () Unit!156996)

(declare-fun matchRGenUnionSpec!303 (Regex!15862 List!63885 List!63887) Unit!156996)

(assert (=> b!5820342 (= lt!2302081 (matchRGenUnionSpec!303 r!7292 lt!2302084 s!2326))))

(declare-fun unfocusZipperList!1284 (List!63886) List!63885)

(assert (=> b!5820342 (= lt!2302084 (unfocusZipperList!1284 zl!343))))

(declare-fun tp!1606127 () Bool)

(declare-fun b!5820343 () Bool)

(declare-fun e!3572031 () Bool)

(assert (=> b!5820343 (= e!3572032 (and (inv!82903 (h!70210 zl!343)) e!3572031 tp!1606127))))

(declare-fun b!5820344 () Bool)

(declare-fun res!2454410 () Bool)

(assert (=> b!5820344 (=> res!2454410 e!3572036)))

(declare-fun isEmpty!35645 (List!63886) Bool)

(assert (=> b!5820344 (= res!2454410 (isEmpty!35645 (t!377241 zl!343)))))

(declare-fun b!5820345 () Bool)

(declare-fun tp!1606121 () Bool)

(assert (=> b!5820345 (= e!3572031 tp!1606121)))

(declare-fun b!5820346 () Bool)

(declare-fun e!3572038 () Bool)

(assert (=> b!5820346 (= e!3572038 (isEmpty!35645 (t!377241 zl!343)))))

(declare-fun b!5820347 () Bool)

(declare-fun tp!1606122 () Bool)

(assert (=> b!5820347 (= e!3572040 tp!1606122)))

(declare-fun b!5820348 () Bool)

(declare-fun e!3572037 () Bool)

(declare-fun lt!2302075 () Int)

(declare-fun lt!2302077 () Context!10492)

(declare-fun zipperDepthTotal!265 (List!63886) Int)

(assert (=> b!5820348 (= e!3572037 (> lt!2302075 (zipperDepthTotal!265 (Cons!63762 lt!2302077 Nil!63762))))))

(declare-fun lt!2302076 () Int)

(assert (=> b!5820348 (< lt!2302076 lt!2302075)))

(assert (=> b!5820348 (= lt!2302075 (zipperDepthTotal!265 zl!343))))

(declare-fun contextDepthTotal!243 (Context!10492) Int)

(assert (=> b!5820348 (= lt!2302076 (contextDepthTotal!243 lt!2302077))))

(declare-fun lt!2302082 () Unit!156996)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!27 (List!63886 Context!10492) Unit!156996)

(assert (=> b!5820348 (= lt!2302082 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!27 zl!343 lt!2302077))))

(declare-fun b!5820349 () Bool)

(declare-fun tp!1606124 () Bool)

(assert (=> b!5820349 (= e!3572033 (and tp_is_empty!40977 tp!1606124))))

(declare-fun b!5820350 () Bool)

(assert (=> b!5820350 (= e!3572039 (not e!3572036))))

(declare-fun res!2454400 () Bool)

(assert (=> b!5820350 (=> res!2454400 e!3572036)))

(assert (=> b!5820350 (= res!2454400 e!3572038)))

(declare-fun res!2454402 () Bool)

(assert (=> b!5820350 (=> (not res!2454402) (not e!3572038))))

(assert (=> b!5820350 (= res!2454402 (is-Cons!63762 zl!343))))

(declare-fun matchRSpec!2965 (Regex!15862 List!63887) Bool)

(assert (=> b!5820350 (= lt!2302080 (matchRSpec!2965 r!7292 s!2326))))

(declare-fun matchR!8047 (Regex!15862 List!63887) Bool)

(assert (=> b!5820350 (= lt!2302080 (matchR!8047 r!7292 s!2326))))

(declare-fun lt!2302078 () Unit!156996)

(declare-fun mainMatchTheorem!2965 (Regex!15862 List!63887) Unit!156996)

(assert (=> b!5820350 (= lt!2302078 (mainMatchTheorem!2965 r!7292 s!2326))))

(declare-fun b!5820351 () Bool)

(declare-fun res!2454404 () Bool)

(assert (=> b!5820351 (=> (not res!2454404) (not e!3572039))))

(declare-fun toList!9646 ((Set Context!10492)) List!63886)

(assert (=> b!5820351 (= res!2454404 (= (toList!9646 z!1189) zl!343))))

(assert (=> b!5820352 (= e!3572035 e!3572037)))

(declare-fun res!2454406 () Bool)

(assert (=> b!5820352 (=> res!2454406 e!3572037)))

(declare-fun forall!14954 (List!63885 Int) Bool)

(assert (=> b!5820352 (= res!2454406 (not (forall!14954 (exprs!5746 lt!2302077) lambda!318451)))))

(assert (=> b!5820352 (forall!14954 (exprs!5746 lt!2302077) lambda!318451)))

(declare-fun lt!2302083 () Unit!156996)

(declare-fun lemmaContextForallValidExprs!59 (Context!10492 List!63885) Unit!156996)

(assert (=> b!5820352 (= lt!2302083 (lemmaContextForallValidExprs!59 lt!2302077 (exprs!5746 lt!2302077)))))

(declare-fun getWitness!927 (List!63886 Int) Context!10492)

(assert (=> b!5820352 (= lt!2302077 (getWitness!927 zl!343 lambda!318450))))

(assert (= (and start!596334 res!2454408) b!5820351))

(assert (= (and b!5820351 res!2454404) b!5820334))

(assert (= (and b!5820334 res!2454403) b!5820350))

(assert (= (and b!5820350 res!2454402) b!5820346))

(assert (= (and b!5820350 (not res!2454400)) b!5820335))

(assert (= (and b!5820335 (not res!2454407)) b!5820344))

(assert (= (and b!5820344 (not res!2454410)) b!5820342))

(assert (= (and b!5820342 (not res!2454405)) b!5820340))

(assert (= (and b!5820340 (not res!2454401)) b!5820338))

(assert (= (and b!5820338 (not res!2454399)) b!5820339))

(assert (= (and b!5820339 (not res!2454409)) b!5820352))

(assert (= (and b!5820352 (not res!2454406)) b!5820348))

(assert (= (and start!596334 (is-ElementMatch!15862 r!7292)) b!5820337))

(assert (= (and start!596334 (is-Concat!24707 r!7292)) b!5820341))

(assert (= (and start!596334 (is-Star!15862 r!7292)) b!5820347))

(assert (= (and start!596334 (is-Union!15862 r!7292)) b!5820336))

(assert (= (and start!596334 condSetEmpty!39297) setIsEmpty!39297))

(assert (= (and start!596334 (not condSetEmpty!39297)) setNonEmpty!39297))

(assert (= setNonEmpty!39297 b!5820333))

(assert (= b!5820343 b!5820345))

(assert (= (and start!596334 (is-Cons!63762 zl!343)) b!5820343))

(assert (= (and start!596334 (is-Cons!63763 s!2326)) b!5820349))

(declare-fun m!6755668 () Bool)

(assert (=> b!5820338 m!6755668))

(declare-fun m!6755670 () Bool)

(assert (=> start!596334 m!6755670))

(declare-fun m!6755672 () Bool)

(assert (=> b!5820350 m!6755672))

(declare-fun m!6755674 () Bool)

(assert (=> b!5820350 m!6755674))

(declare-fun m!6755676 () Bool)

(assert (=> b!5820350 m!6755676))

(declare-fun m!6755678 () Bool)

(assert (=> b!5820340 m!6755678))

(declare-fun m!6755680 () Bool)

(assert (=> b!5820352 m!6755680))

(assert (=> b!5820352 m!6755680))

(declare-fun m!6755682 () Bool)

(assert (=> b!5820352 m!6755682))

(declare-fun m!6755684 () Bool)

(assert (=> b!5820352 m!6755684))

(declare-fun m!6755686 () Bool)

(assert (=> b!5820348 m!6755686))

(declare-fun m!6755688 () Bool)

(assert (=> b!5820348 m!6755688))

(declare-fun m!6755690 () Bool)

(assert (=> b!5820348 m!6755690))

(declare-fun m!6755692 () Bool)

(assert (=> b!5820348 m!6755692))

(declare-fun m!6755694 () Bool)

(assert (=> b!5820344 m!6755694))

(assert (=> b!5820342 m!6755678))

(declare-fun m!6755696 () Bool)

(assert (=> b!5820342 m!6755696))

(declare-fun m!6755698 () Bool)

(assert (=> b!5820342 m!6755698))

(assert (=> b!5820346 m!6755694))

(declare-fun m!6755700 () Bool)

(assert (=> b!5820343 m!6755700))

(declare-fun m!6755702 () Bool)

(assert (=> setNonEmpty!39297 m!6755702))

(declare-fun m!6755704 () Bool)

(assert (=> b!5820334 m!6755704))

(declare-fun m!6755706 () Bool)

(assert (=> b!5820351 m!6755706))

(declare-fun m!6755708 () Bool)

(assert (=> b!5820339 m!6755708))

(assert (=> b!5820339 m!6755708))

(declare-fun m!6755710 () Bool)

(assert (=> b!5820339 m!6755710))

(push 1)

(assert (not b!5820351))

(assert (not b!5820349))

(assert tp_is_empty!40977)

(assert (not b!5820334))

(assert (not b!5820338))

(assert (not b!5820352))

(assert (not b!5820345))

(assert (not start!596334))

(assert (not b!5820344))

(assert (not b!5820343))

(assert (not b!5820341))

(assert (not b!5820346))

(assert (not setNonEmpty!39297))

(assert (not b!5820347))

(assert (not b!5820342))

(assert (not b!5820333))

(assert (not b!5820350))

(assert (not b!5820348))

(assert (not b!5820336))

(assert (not b!5820340))

(assert (not b!5820339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5820458 () Bool)

(assert (=> b!5820458 true))

(assert (=> b!5820458 true))

(declare-fun bs!1373238 () Bool)

(declare-fun b!5820466 () Bool)

(assert (= bs!1373238 (and b!5820466 b!5820458)))

(declare-fun lambda!318474 () Int)

(declare-fun lambda!318473 () Int)

(assert (=> bs!1373238 (not (= lambda!318474 lambda!318473))))

(assert (=> b!5820466 true))

(assert (=> b!5820466 true))

(declare-fun b!5820457 () Bool)

(declare-fun e!3572102 () Bool)

(declare-fun e!3572100 () Bool)

(assert (=> b!5820457 (= e!3572102 e!3572100)))

(declare-fun res!2454468 () Bool)

(assert (=> b!5820457 (= res!2454468 (matchRSpec!2965 (regOne!32237 r!7292) s!2326))))

(assert (=> b!5820457 (=> res!2454468 e!3572100)))

(declare-fun e!3572098 () Bool)

(declare-fun call!454539 () Bool)

(assert (=> b!5820458 (= e!3572098 call!454539)))

(declare-fun b!5820459 () Bool)

(declare-fun res!2454469 () Bool)

(assert (=> b!5820459 (=> res!2454469 e!3572098)))

(declare-fun call!454540 () Bool)

(assert (=> b!5820459 (= res!2454469 call!454540)))

(declare-fun e!3572097 () Bool)

(assert (=> b!5820459 (= e!3572097 e!3572098)))

(declare-fun b!5820460 () Bool)

(assert (=> b!5820460 (= e!3572100 (matchRSpec!2965 (regTwo!32237 r!7292) s!2326))))

(declare-fun b!5820461 () Bool)

(declare-fun e!3572101 () Bool)

(assert (=> b!5820461 (= e!3572101 call!454540)))

(declare-fun b!5820462 () Bool)

(declare-fun c!1031444 () Bool)

(assert (=> b!5820462 (= c!1031444 (is-Union!15862 r!7292))))

(declare-fun e!3572096 () Bool)

(assert (=> b!5820462 (= e!3572096 e!3572102)))

(declare-fun b!5820463 () Bool)

(declare-fun e!3572099 () Bool)

(assert (=> b!5820463 (= e!3572101 e!3572099)))

(declare-fun res!2454467 () Bool)

(assert (=> b!5820463 (= res!2454467 (not (is-EmptyLang!15862 r!7292)))))

(assert (=> b!5820463 (=> (not res!2454467) (not e!3572099))))

(declare-fun d!1831707 () Bool)

(declare-fun c!1031445 () Bool)

(assert (=> d!1831707 (= c!1031445 (is-EmptyExpr!15862 r!7292))))

(assert (=> d!1831707 (= (matchRSpec!2965 r!7292 s!2326) e!3572101)))

(declare-fun b!5820464 () Bool)

(declare-fun c!1031443 () Bool)

(assert (=> b!5820464 (= c!1031443 (is-ElementMatch!15862 r!7292))))

(assert (=> b!5820464 (= e!3572099 e!3572096)))

(declare-fun b!5820465 () Bool)

(assert (=> b!5820465 (= e!3572102 e!3572097)))

(declare-fun c!1031442 () Bool)

(assert (=> b!5820465 (= c!1031442 (is-Star!15862 r!7292))))

(assert (=> b!5820466 (= e!3572097 call!454539)))

(declare-fun b!5820467 () Bool)

(assert (=> b!5820467 (= e!3572096 (= s!2326 (Cons!63763 (c!1031430 r!7292) Nil!63763)))))

(declare-fun bm!454534 () Bool)

(declare-fun Exists!2946 (Int) Bool)

(assert (=> bm!454534 (= call!454539 (Exists!2946 (ite c!1031442 lambda!318473 lambda!318474)))))

(declare-fun bm!454535 () Bool)

(declare-fun isEmpty!35647 (List!63887) Bool)

(assert (=> bm!454535 (= call!454540 (isEmpty!35647 s!2326))))

(assert (= (and d!1831707 c!1031445) b!5820461))

(assert (= (and d!1831707 (not c!1031445)) b!5820463))

(assert (= (and b!5820463 res!2454467) b!5820464))

(assert (= (and b!5820464 c!1031443) b!5820467))

(assert (= (and b!5820464 (not c!1031443)) b!5820462))

(assert (= (and b!5820462 c!1031444) b!5820457))

(assert (= (and b!5820462 (not c!1031444)) b!5820465))

(assert (= (and b!5820457 (not res!2454468)) b!5820460))

(assert (= (and b!5820465 c!1031442) b!5820459))

(assert (= (and b!5820465 (not c!1031442)) b!5820466))

(assert (= (and b!5820459 (not res!2454469)) b!5820458))

(assert (= (or b!5820458 b!5820466) bm!454534))

(assert (= (or b!5820461 b!5820459) bm!454535))

(declare-fun m!6755756 () Bool)

(assert (=> b!5820457 m!6755756))

(declare-fun m!6755758 () Bool)

(assert (=> b!5820460 m!6755758))

(declare-fun m!6755760 () Bool)

(assert (=> bm!454534 m!6755760))

(declare-fun m!6755762 () Bool)

(assert (=> bm!454535 m!6755762))

(assert (=> b!5820350 d!1831707))

(declare-fun b!5820503 () Bool)

(declare-fun e!3572124 () Bool)

(declare-fun e!3572122 () Bool)

(assert (=> b!5820503 (= e!3572124 e!3572122)))

(declare-fun res!2454492 () Bool)

(assert (=> b!5820503 (=> (not res!2454492) (not e!3572122))))

(declare-fun lt!2302120 () Bool)

(assert (=> b!5820503 (= res!2454492 (not lt!2302120))))

(declare-fun b!5820504 () Bool)

(declare-fun res!2454494 () Bool)

(declare-fun e!3572121 () Bool)

(assert (=> b!5820504 (=> res!2454494 e!3572121)))

(declare-fun tail!11385 (List!63887) List!63887)

(assert (=> b!5820504 (= res!2454494 (not (isEmpty!35647 (tail!11385 s!2326))))))

(declare-fun b!5820505 () Bool)

(declare-fun res!2454495 () Bool)

(assert (=> b!5820505 (=> res!2454495 e!3572124)))

(declare-fun e!3572125 () Bool)

(assert (=> b!5820505 (= res!2454495 e!3572125)))

(declare-fun res!2454489 () Bool)

(assert (=> b!5820505 (=> (not res!2454489) (not e!3572125))))

(assert (=> b!5820505 (= res!2454489 lt!2302120)))

(declare-fun b!5820506 () Bool)

(declare-fun e!3572123 () Bool)

(declare-fun call!454543 () Bool)

(assert (=> b!5820506 (= e!3572123 (= lt!2302120 call!454543))))

(declare-fun b!5820507 () Bool)

(declare-fun e!3572120 () Bool)

(declare-fun nullable!5870 (Regex!15862) Bool)

(assert (=> b!5820507 (= e!3572120 (nullable!5870 r!7292))))

(declare-fun b!5820508 () Bool)

(declare-fun res!2454496 () Bool)

(assert (=> b!5820508 (=> (not res!2454496) (not e!3572125))))

(assert (=> b!5820508 (= res!2454496 (isEmpty!35647 (tail!11385 s!2326)))))

(declare-fun b!5820509 () Bool)

(declare-fun e!3572126 () Bool)

(assert (=> b!5820509 (= e!3572126 (not lt!2302120))))

(declare-fun b!5820510 () Bool)

(declare-fun head!12298 (List!63887) C!31994)

(assert (=> b!5820510 (= e!3572125 (= (head!12298 s!2326) (c!1031430 r!7292)))))

(declare-fun b!5820511 () Bool)

(declare-fun derivativeStep!4611 (Regex!15862 C!31994) Regex!15862)

(assert (=> b!5820511 (= e!3572120 (matchR!8047 (derivativeStep!4611 r!7292 (head!12298 s!2326)) (tail!11385 s!2326)))))

(declare-fun b!5820513 () Bool)

(assert (=> b!5820513 (= e!3572121 (not (= (head!12298 s!2326) (c!1031430 r!7292))))))

(declare-fun b!5820514 () Bool)

(assert (=> b!5820514 (= e!3572122 e!3572121)))

(declare-fun res!2454490 () Bool)

(assert (=> b!5820514 (=> res!2454490 e!3572121)))

(assert (=> b!5820514 (= res!2454490 call!454543)))

(declare-fun b!5820515 () Bool)

(declare-fun res!2454491 () Bool)

(assert (=> b!5820515 (=> res!2454491 e!3572124)))

(assert (=> b!5820515 (= res!2454491 (not (is-ElementMatch!15862 r!7292)))))

(assert (=> b!5820515 (= e!3572126 e!3572124)))

(declare-fun d!1831711 () Bool)

(assert (=> d!1831711 e!3572123))

(declare-fun c!1031454 () Bool)

(assert (=> d!1831711 (= c!1031454 (is-EmptyExpr!15862 r!7292))))

(assert (=> d!1831711 (= lt!2302120 e!3572120)))

(declare-fun c!1031453 () Bool)

(assert (=> d!1831711 (= c!1031453 (isEmpty!35647 s!2326))))

(assert (=> d!1831711 (validRegex!7598 r!7292)))

(assert (=> d!1831711 (= (matchR!8047 r!7292 s!2326) lt!2302120)))

(declare-fun b!5820512 () Bool)

(assert (=> b!5820512 (= e!3572123 e!3572126)))

(declare-fun c!1031452 () Bool)

(assert (=> b!5820512 (= c!1031452 (is-EmptyLang!15862 r!7292))))

(declare-fun b!5820516 () Bool)

(declare-fun res!2454493 () Bool)

(assert (=> b!5820516 (=> (not res!2454493) (not e!3572125))))

(assert (=> b!5820516 (= res!2454493 (not call!454543))))

(declare-fun bm!454538 () Bool)

(assert (=> bm!454538 (= call!454543 (isEmpty!35647 s!2326))))

(assert (= (and d!1831711 c!1031453) b!5820507))

(assert (= (and d!1831711 (not c!1031453)) b!5820511))

(assert (= (and d!1831711 c!1031454) b!5820506))

(assert (= (and d!1831711 (not c!1031454)) b!5820512))

(assert (= (and b!5820512 c!1031452) b!5820509))

(assert (= (and b!5820512 (not c!1031452)) b!5820515))

(assert (= (and b!5820515 (not res!2454491)) b!5820505))

(assert (= (and b!5820505 res!2454489) b!5820516))

(assert (= (and b!5820516 res!2454493) b!5820508))

(assert (= (and b!5820508 res!2454496) b!5820510))

(assert (= (and b!5820505 (not res!2454495)) b!5820503))

(assert (= (and b!5820503 res!2454492) b!5820514))

(assert (= (and b!5820514 (not res!2454490)) b!5820504))

(assert (= (and b!5820504 (not res!2454494)) b!5820513))

(assert (= (or b!5820506 b!5820516 b!5820514) bm!454538))

(declare-fun m!6755772 () Bool)

(assert (=> b!5820507 m!6755772))

(declare-fun m!6755774 () Bool)

(assert (=> b!5820511 m!6755774))

(assert (=> b!5820511 m!6755774))

(declare-fun m!6755776 () Bool)

(assert (=> b!5820511 m!6755776))

(declare-fun m!6755778 () Bool)

(assert (=> b!5820511 m!6755778))

(assert (=> b!5820511 m!6755776))

(assert (=> b!5820511 m!6755778))

(declare-fun m!6755780 () Bool)

(assert (=> b!5820511 m!6755780))

(assert (=> b!5820513 m!6755774))

(assert (=> b!5820510 m!6755774))

(assert (=> b!5820504 m!6755778))

(assert (=> b!5820504 m!6755778))

(declare-fun m!6755782 () Bool)

(assert (=> b!5820504 m!6755782))

(assert (=> d!1831711 m!6755762))

(assert (=> d!1831711 m!6755670))

(assert (=> bm!454538 m!6755762))

(assert (=> b!5820508 m!6755778))

(assert (=> b!5820508 m!6755778))

(assert (=> b!5820508 m!6755782))

(assert (=> b!5820350 d!1831711))

(declare-fun d!1831717 () Bool)

(assert (=> d!1831717 (= (matchR!8047 r!7292 s!2326) (matchRSpec!2965 r!7292 s!2326))))

(declare-fun lt!2302123 () Unit!156996)

(declare-fun choose!44237 (Regex!15862 List!63887) Unit!156996)

(assert (=> d!1831717 (= lt!2302123 (choose!44237 r!7292 s!2326))))

(assert (=> d!1831717 (validRegex!7598 r!7292)))

(assert (=> d!1831717 (= (mainMatchTheorem!2965 r!7292 s!2326) lt!2302123)))

(declare-fun bs!1373242 () Bool)

(assert (= bs!1373242 d!1831717))

(assert (=> bs!1373242 m!6755674))

(assert (=> bs!1373242 m!6755672))

(declare-fun m!6755784 () Bool)

(assert (=> bs!1373242 m!6755784))

(assert (=> bs!1373242 m!6755670))

(assert (=> b!5820350 d!1831717))

(declare-fun bs!1373243 () Bool)

(declare-fun d!1831719 () Bool)

(assert (= bs!1373243 (and d!1831719 b!5820339)))

(declare-fun lambda!318480 () Int)

(assert (=> bs!1373243 (not (= lambda!318480 lambda!318450))))

(assert (=> d!1831719 true))

(declare-fun order!27233 () Int)

(declare-fun dynLambda!24957 (Int Int) Int)

(assert (=> d!1831719 (< (dynLambda!24957 order!27233 lambda!318450) (dynLambda!24957 order!27233 lambda!318480))))

(declare-fun forall!14956 (List!63886 Int) Bool)

(assert (=> d!1831719 (= (exists!2286 zl!343 lambda!318450) (not (forall!14956 zl!343 lambda!318480)))))

(declare-fun bs!1373244 () Bool)

(assert (= bs!1373244 d!1831719))

(declare-fun m!6755786 () Bool)

(assert (=> bs!1373244 m!6755786))

(assert (=> b!5820339 d!1831719))

(declare-fun bs!1373245 () Bool)

(declare-fun d!1831721 () Bool)

(assert (= bs!1373245 (and d!1831721 b!5820339)))

(declare-fun lambda!318483 () Int)

(assert (=> bs!1373245 (= lambda!318483 lambda!318450)))

(declare-fun bs!1373246 () Bool)

(assert (= bs!1373246 (and d!1831721 d!1831719)))

(assert (=> bs!1373246 (not (= lambda!318483 lambda!318480))))

(assert (=> d!1831721 true))

(assert (=> d!1831721 (exists!2286 zl!343 lambda!318483)))

(declare-fun lt!2302126 () Unit!156996)

(declare-fun choose!44238 (List!63886 List!63887) Unit!156996)

(assert (=> d!1831721 (= lt!2302126 (choose!44238 zl!343 s!2326))))

(declare-fun content!11703 (List!63886) (Set Context!10492))

(assert (=> d!1831721 (matchZipper!1968 (content!11703 zl!343) s!2326)))

(assert (=> d!1831721 (= (lemmaZipperMatchesExistsMatchingContext!83 zl!343 s!2326) lt!2302126)))

(declare-fun bs!1373247 () Bool)

(assert (= bs!1373247 d!1831721))

(declare-fun m!6755788 () Bool)

(assert (=> bs!1373247 m!6755788))

(declare-fun m!6755790 () Bool)

(assert (=> bs!1373247 m!6755790))

(declare-fun m!6755792 () Bool)

(assert (=> bs!1373247 m!6755792))

(assert (=> bs!1373247 m!6755792))

(declare-fun m!6755794 () Bool)

(assert (=> bs!1373247 m!6755794))

(assert (=> b!5820339 d!1831721))

(declare-fun d!1831723 () Bool)

(declare-fun lt!2302129 () Int)

(assert (=> d!1831723 (>= lt!2302129 0)))

(declare-fun e!3572145 () Int)

(assert (=> d!1831723 (= lt!2302129 e!3572145)))

(declare-fun c!1031467 () Bool)

(assert (=> d!1831723 (= c!1031467 (is-Cons!63762 (Cons!63762 lt!2302077 Nil!63762)))))

(assert (=> d!1831723 (= (zipperDepthTotal!265 (Cons!63762 lt!2302077 Nil!63762)) lt!2302129)))

(declare-fun b!5820551 () Bool)

(assert (=> b!5820551 (= e!3572145 (+ (contextDepthTotal!243 (h!70210 (Cons!63762 lt!2302077 Nil!63762))) (zipperDepthTotal!265 (t!377241 (Cons!63762 lt!2302077 Nil!63762)))))))

(declare-fun b!5820552 () Bool)

(assert (=> b!5820552 (= e!3572145 0)))

(assert (= (and d!1831723 c!1031467) b!5820551))

(assert (= (and d!1831723 (not c!1031467)) b!5820552))

(declare-fun m!6755796 () Bool)

(assert (=> b!5820551 m!6755796))

(declare-fun m!6755798 () Bool)

(assert (=> b!5820551 m!6755798))

(assert (=> b!5820348 d!1831723))

(declare-fun d!1831725 () Bool)

(declare-fun lt!2302130 () Int)

(assert (=> d!1831725 (>= lt!2302130 0)))

(declare-fun e!3572146 () Int)

(assert (=> d!1831725 (= lt!2302130 e!3572146)))

(declare-fun c!1031468 () Bool)

(assert (=> d!1831725 (= c!1031468 (is-Cons!63762 zl!343))))

(assert (=> d!1831725 (= (zipperDepthTotal!265 zl!343) lt!2302130)))

(declare-fun b!5820553 () Bool)

(assert (=> b!5820553 (= e!3572146 (+ (contextDepthTotal!243 (h!70210 zl!343)) (zipperDepthTotal!265 (t!377241 zl!343))))))

(declare-fun b!5820554 () Bool)

(assert (=> b!5820554 (= e!3572146 0)))

(assert (= (and d!1831725 c!1031468) b!5820553))

(assert (= (and d!1831725 (not c!1031468)) b!5820554))

(declare-fun m!6755800 () Bool)

(assert (=> b!5820553 m!6755800))

(declare-fun m!6755802 () Bool)

(assert (=> b!5820553 m!6755802))

(assert (=> b!5820348 d!1831725))

(declare-fun d!1831727 () Bool)

(declare-fun lt!2302133 () Int)

(assert (=> d!1831727 (>= lt!2302133 0)))

(declare-fun e!3572149 () Int)

(assert (=> d!1831727 (= lt!2302133 e!3572149)))

(declare-fun c!1031472 () Bool)

(assert (=> d!1831727 (= c!1031472 (is-Cons!63761 (exprs!5746 lt!2302077)))))

(assert (=> d!1831727 (= (contextDepthTotal!243 lt!2302077) lt!2302133)))

(declare-fun b!5820559 () Bool)

(declare-fun regexDepthTotal!110 (Regex!15862) Int)

(assert (=> b!5820559 (= e!3572149 (+ (regexDepthTotal!110 (h!70209 (exprs!5746 lt!2302077))) (contextDepthTotal!243 (Context!10493 (t!377240 (exprs!5746 lt!2302077))))))))

(declare-fun b!5820560 () Bool)

(assert (=> b!5820560 (= e!3572149 1)))

(assert (= (and d!1831727 c!1031472) b!5820559))

(assert (= (and d!1831727 (not c!1031472)) b!5820560))

(declare-fun m!6755804 () Bool)

(assert (=> b!5820559 m!6755804))

(declare-fun m!6755806 () Bool)

(assert (=> b!5820559 m!6755806))

(assert (=> b!5820348 d!1831727))

(declare-fun d!1831729 () Bool)

(assert (=> d!1831729 (< (contextDepthTotal!243 lt!2302077) (zipperDepthTotal!265 zl!343))))

(declare-fun lt!2302136 () Unit!156996)

(declare-fun choose!44239 (List!63886 Context!10492) Unit!156996)

(assert (=> d!1831729 (= lt!2302136 (choose!44239 zl!343 lt!2302077))))

(declare-fun contains!19898 (List!63886 Context!10492) Bool)

(assert (=> d!1831729 (contains!19898 zl!343 lt!2302077)))

(assert (=> d!1831729 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!27 zl!343 lt!2302077) lt!2302136)))

(declare-fun bs!1373248 () Bool)

(assert (= bs!1373248 d!1831729))

(assert (=> bs!1373248 m!6755690))

(assert (=> bs!1373248 m!6755688))

(declare-fun m!6755808 () Bool)

(assert (=> bs!1373248 m!6755808))

(declare-fun m!6755810 () Bool)

(assert (=> bs!1373248 m!6755810))

(assert (=> b!5820348 d!1831729))

(declare-fun d!1831731 () Bool)

(declare-fun c!1031476 () Bool)

(assert (=> d!1831731 (= c!1031476 (isEmpty!35647 s!2326))))

(declare-fun e!3572154 () Bool)

(assert (=> d!1831731 (= (matchZipper!1968 z!1189 s!2326) e!3572154)))

(declare-fun b!5820569 () Bool)

(declare-fun nullableZipper!1743 ((Set Context!10492)) Bool)

(assert (=> b!5820569 (= e!3572154 (nullableZipper!1743 z!1189))))

(declare-fun b!5820570 () Bool)

(declare-fun derivationStepZipper!1905 ((Set Context!10492) C!31994) (Set Context!10492))

(assert (=> b!5820570 (= e!3572154 (matchZipper!1968 (derivationStepZipper!1905 z!1189 (head!12298 s!2326)) (tail!11385 s!2326)))))

(assert (= (and d!1831731 c!1031476) b!5820569))

(assert (= (and d!1831731 (not c!1031476)) b!5820570))

(assert (=> d!1831731 m!6755762))

(declare-fun m!6755812 () Bool)

(assert (=> b!5820569 m!6755812))

(assert (=> b!5820570 m!6755774))

(assert (=> b!5820570 m!6755774))

(declare-fun m!6755814 () Bool)

(assert (=> b!5820570 m!6755814))

(assert (=> b!5820570 m!6755778))

(assert (=> b!5820570 m!6755814))

(assert (=> b!5820570 m!6755778))

(declare-fun m!6755816 () Bool)

(assert (=> b!5820570 m!6755816))

(assert (=> b!5820338 d!1831731))

(declare-fun d!1831733 () Bool)

(assert (=> d!1831733 (= (isEmpty!35645 (t!377241 zl!343)) (is-Nil!63762 (t!377241 zl!343)))))

(assert (=> b!5820346 d!1831733))

(assert (=> b!5820344 d!1831733))

(declare-fun d!1831735 () Bool)

(declare-fun lt!2302139 () Regex!15862)

(assert (=> d!1831735 (validRegex!7598 lt!2302139)))

(declare-fun generalisedUnion!1709 (List!63885) Regex!15862)

(assert (=> d!1831735 (= lt!2302139 (generalisedUnion!1709 (unfocusZipperList!1284 zl!343)))))

(assert (=> d!1831735 (= (unfocusZipper!1604 zl!343) lt!2302139)))

(declare-fun bs!1373249 () Bool)

(assert (= bs!1373249 d!1831735))

(declare-fun m!6755818 () Bool)

(assert (=> bs!1373249 m!6755818))

(assert (=> bs!1373249 m!6755698))

(assert (=> bs!1373249 m!6755698))

(declare-fun m!6755820 () Bool)

(assert (=> bs!1373249 m!6755820))

(assert (=> b!5820334 d!1831735))

(declare-fun b!5820600 () Bool)

(declare-fun e!3572178 () Bool)

(declare-fun e!3572177 () Bool)

(assert (=> b!5820600 (= e!3572178 e!3572177)))

(declare-fun c!1031485 () Bool)

(assert (=> b!5820600 (= c!1031485 (is-Star!15862 r!7292))))

(declare-fun b!5820601 () Bool)

(declare-fun res!2454528 () Bool)

(declare-fun e!3572182 () Bool)

(assert (=> b!5820601 (=> (not res!2454528) (not e!3572182))))

(declare-fun call!454556 () Bool)

(assert (=> b!5820601 (= res!2454528 call!454556)))

(declare-fun e!3572176 () Bool)

(assert (=> b!5820601 (= e!3572176 e!3572182)))

(declare-fun b!5820602 () Bool)

(declare-fun call!454557 () Bool)

(assert (=> b!5820602 (= e!3572182 call!454557)))

(declare-fun d!1831737 () Bool)

(declare-fun res!2454529 () Bool)

(assert (=> d!1831737 (=> res!2454529 e!3572178)))

(assert (=> d!1831737 (= res!2454529 (is-ElementMatch!15862 r!7292))))

(assert (=> d!1831737 (= (validRegex!7598 r!7292) e!3572178)))

(declare-fun bm!454551 () Bool)

(declare-fun call!454558 () Bool)

(assert (=> bm!454551 (= call!454557 call!454558)))

(declare-fun b!5820603 () Bool)

(declare-fun e!3572181 () Bool)

(assert (=> b!5820603 (= e!3572181 call!454557)))

(declare-fun bm!454552 () Bool)

(declare-fun c!1031486 () Bool)

(assert (=> bm!454552 (= call!454558 (validRegex!7598 (ite c!1031485 (reg!16191 r!7292) (ite c!1031486 (regTwo!32237 r!7292) (regTwo!32236 r!7292)))))))

(declare-fun b!5820604 () Bool)

(assert (=> b!5820604 (= e!3572177 e!3572176)))

(assert (=> b!5820604 (= c!1031486 (is-Union!15862 r!7292))))

(declare-fun b!5820605 () Bool)

(declare-fun e!3572179 () Bool)

(assert (=> b!5820605 (= e!3572179 call!454558)))

(declare-fun bm!454553 () Bool)

(assert (=> bm!454553 (= call!454556 (validRegex!7598 (ite c!1031486 (regOne!32237 r!7292) (regOne!32236 r!7292))))))

(declare-fun b!5820606 () Bool)

(assert (=> b!5820606 (= e!3572177 e!3572179)))

(declare-fun res!2454530 () Bool)

(assert (=> b!5820606 (= res!2454530 (not (nullable!5870 (reg!16191 r!7292))))))

(assert (=> b!5820606 (=> (not res!2454530) (not e!3572179))))

(declare-fun b!5820607 () Bool)

(declare-fun e!3572180 () Bool)

(assert (=> b!5820607 (= e!3572180 e!3572181)))

(declare-fun res!2454526 () Bool)

(assert (=> b!5820607 (=> (not res!2454526) (not e!3572181))))

(assert (=> b!5820607 (= res!2454526 call!454556)))

(declare-fun b!5820608 () Bool)

(declare-fun res!2454527 () Bool)

(assert (=> b!5820608 (=> res!2454527 e!3572180)))

(assert (=> b!5820608 (= res!2454527 (not (is-Concat!24707 r!7292)))))

(assert (=> b!5820608 (= e!3572176 e!3572180)))

(assert (= (and d!1831737 (not res!2454529)) b!5820600))

(assert (= (and b!5820600 c!1031485) b!5820606))

(assert (= (and b!5820600 (not c!1031485)) b!5820604))

(assert (= (and b!5820606 res!2454530) b!5820605))

(assert (= (and b!5820604 c!1031486) b!5820601))

(assert (= (and b!5820604 (not c!1031486)) b!5820608))

(assert (= (and b!5820601 res!2454528) b!5820602))

(assert (= (and b!5820608 (not res!2454527)) b!5820607))

(assert (= (and b!5820607 res!2454526) b!5820603))

(assert (= (or b!5820602 b!5820603) bm!454551))

(assert (= (or b!5820601 b!5820607) bm!454553))

(assert (= (or b!5820605 bm!454551) bm!454552))

(declare-fun m!6755822 () Bool)

(assert (=> bm!454552 m!6755822))

(declare-fun m!6755824 () Bool)

(assert (=> bm!454553 m!6755824))

(declare-fun m!6755826 () Bool)

(assert (=> b!5820606 m!6755826))

(assert (=> start!596334 d!1831737))

(declare-fun bs!1373250 () Bool)

(declare-fun d!1831739 () Bool)

(assert (= bs!1373250 (and d!1831739 b!5820342)))

(declare-fun lambda!318491 () Int)

(assert (=> bs!1373250 (not (= lambda!318491 lambda!318449))))

(declare-fun bs!1373251 () Bool)

(assert (= bs!1373251 (and d!1831739 b!5820352)))

(assert (=> bs!1373251 (= lambda!318491 lambda!318451)))

(assert (=> d!1831739 (= (inv!82903 setElem!39297) (forall!14954 (exprs!5746 setElem!39297) lambda!318491))))

(declare-fun bs!1373252 () Bool)

(assert (= bs!1373252 d!1831739))

(declare-fun m!6755828 () Bool)

(assert (=> bs!1373252 m!6755828))

(assert (=> setNonEmpty!39297 d!1831739))

(declare-fun bs!1373254 () Bool)

(declare-fun d!1831741 () Bool)

(assert (= bs!1373254 (and d!1831741 b!5820342)))

(declare-fun lambda!318493 () Int)

(assert (=> bs!1373254 (not (= lambda!318493 lambda!318449))))

(declare-fun bs!1373255 () Bool)

(assert (= bs!1373255 (and d!1831741 b!5820352)))

(assert (=> bs!1373255 (= lambda!318493 lambda!318451)))

(declare-fun bs!1373256 () Bool)

(assert (= bs!1373256 (and d!1831741 d!1831739)))

(assert (=> bs!1373256 (= lambda!318493 lambda!318491)))

(assert (=> d!1831741 (= (inv!82903 (h!70210 zl!343)) (forall!14954 (exprs!5746 (h!70210 zl!343)) lambda!318493))))

(declare-fun bs!1373257 () Bool)

(assert (= bs!1373257 d!1831741))

(declare-fun m!6755830 () Bool)

(assert (=> bs!1373257 m!6755830))

(assert (=> b!5820343 d!1831741))

(declare-fun d!1831743 () Bool)

(declare-fun res!2454535 () Bool)

(declare-fun e!3572187 () Bool)

(assert (=> d!1831743 (=> res!2454535 e!3572187)))

(assert (=> d!1831743 (= res!2454535 (is-Nil!63761 (exprs!5746 lt!2302077)))))

(assert (=> d!1831743 (= (forall!14954 (exprs!5746 lt!2302077) lambda!318451) e!3572187)))

(declare-fun b!5820617 () Bool)

(declare-fun e!3572188 () Bool)

(assert (=> b!5820617 (= e!3572187 e!3572188)))

(declare-fun res!2454536 () Bool)

(assert (=> b!5820617 (=> (not res!2454536) (not e!3572188))))

(declare-fun dynLambda!24958 (Int Regex!15862) Bool)

(assert (=> b!5820617 (= res!2454536 (dynLambda!24958 lambda!318451 (h!70209 (exprs!5746 lt!2302077))))))

(declare-fun b!5820618 () Bool)

(assert (=> b!5820618 (= e!3572188 (forall!14954 (t!377240 (exprs!5746 lt!2302077)) lambda!318451))))

(assert (= (and d!1831743 (not res!2454535)) b!5820617))

(assert (= (and b!5820617 res!2454536) b!5820618))

(declare-fun b_lambda!219405 () Bool)

(assert (=> (not b_lambda!219405) (not b!5820617)))

(declare-fun m!6755840 () Bool)

(assert (=> b!5820617 m!6755840))

(declare-fun m!6755842 () Bool)

(assert (=> b!5820618 m!6755842))

(assert (=> b!5820352 d!1831743))

(declare-fun bs!1373258 () Bool)

(declare-fun d!1831747 () Bool)

(assert (= bs!1373258 (and d!1831747 b!5820342)))

(declare-fun lambda!318496 () Int)

(assert (=> bs!1373258 (not (= lambda!318496 lambda!318449))))

(declare-fun bs!1373259 () Bool)

(assert (= bs!1373259 (and d!1831747 b!5820352)))

(assert (=> bs!1373259 (= lambda!318496 lambda!318451)))

(declare-fun bs!1373260 () Bool)

(assert (= bs!1373260 (and d!1831747 d!1831739)))

(assert (=> bs!1373260 (= lambda!318496 lambda!318491)))

(declare-fun bs!1373261 () Bool)

(assert (= bs!1373261 (and d!1831747 d!1831741)))

(assert (=> bs!1373261 (= lambda!318496 lambda!318493)))

(assert (=> d!1831747 (forall!14954 (exprs!5746 lt!2302077) lambda!318496)))

(declare-fun lt!2302142 () Unit!156996)

(declare-fun choose!44240 (Context!10492 List!63885) Unit!156996)

(assert (=> d!1831747 (= lt!2302142 (choose!44240 lt!2302077 (exprs!5746 lt!2302077)))))

(assert (=> d!1831747 (= (exprs!5746 lt!2302077) (exprs!5746 lt!2302077))))

(assert (=> d!1831747 (= (lemmaContextForallValidExprs!59 lt!2302077 (exprs!5746 lt!2302077)) lt!2302142)))

(declare-fun bs!1373262 () Bool)

(assert (= bs!1373262 d!1831747))

(declare-fun m!6755844 () Bool)

(assert (=> bs!1373262 m!6755844))

(declare-fun m!6755846 () Bool)

(assert (=> bs!1373262 m!6755846))

(assert (=> b!5820352 d!1831747))

(declare-fun b!5820631 () Bool)

(declare-fun e!3572199 () Bool)

(declare-fun dynLambda!24959 (Int Context!10492) Bool)

(assert (=> b!5820631 (= e!3572199 (dynLambda!24959 lambda!318450 (h!70210 zl!343)))))

(declare-fun d!1831749 () Bool)

(declare-fun e!3572200 () Bool)

(assert (=> d!1831749 e!3572200))

(declare-fun res!2454542 () Bool)

(assert (=> d!1831749 (=> (not res!2454542) (not e!3572200))))

(declare-fun lt!2302147 () Context!10492)

(assert (=> d!1831749 (= res!2454542 (dynLambda!24959 lambda!318450 lt!2302147))))

(declare-fun e!3572198 () Context!10492)

(assert (=> d!1831749 (= lt!2302147 e!3572198)))

(declare-fun c!1031493 () Bool)

(assert (=> d!1831749 (= c!1031493 e!3572199)))

(declare-fun res!2454541 () Bool)

(assert (=> d!1831749 (=> (not res!2454541) (not e!3572199))))

(assert (=> d!1831749 (= res!2454541 (is-Cons!63762 zl!343))))

(assert (=> d!1831749 (exists!2286 zl!343 lambda!318450)))

(assert (=> d!1831749 (= (getWitness!927 zl!343 lambda!318450) lt!2302147)))

(declare-fun b!5820632 () Bool)

(declare-fun lt!2302148 () Unit!156996)

(declare-fun Unit!157000 () Unit!156996)

(assert (=> b!5820632 (= lt!2302148 Unit!157000)))

(assert (=> b!5820632 false))

(declare-fun e!3572197 () Context!10492)

(declare-fun head!12299 (List!63886) Context!10492)

(assert (=> b!5820632 (= e!3572197 (head!12299 zl!343))))

(declare-fun b!5820633 () Bool)

(assert (=> b!5820633 (= e!3572200 (contains!19898 zl!343 lt!2302147))))

(declare-fun b!5820634 () Bool)

(assert (=> b!5820634 (= e!3572198 e!3572197)))

(declare-fun c!1031492 () Bool)

(assert (=> b!5820634 (= c!1031492 (is-Cons!63762 zl!343))))

(declare-fun b!5820635 () Bool)

(assert (=> b!5820635 (= e!3572197 (getWitness!927 (t!377241 zl!343) lambda!318450))))

(declare-fun b!5820636 () Bool)

(assert (=> b!5820636 (= e!3572198 (h!70210 zl!343))))

(assert (= (and d!1831749 res!2454541) b!5820631))

(assert (= (and d!1831749 c!1031493) b!5820636))

(assert (= (and d!1831749 (not c!1031493)) b!5820634))

(assert (= (and b!5820634 c!1031492) b!5820635))

(assert (= (and b!5820634 (not c!1031492)) b!5820632))

(assert (= (and d!1831749 res!2454542) b!5820633))

(declare-fun b_lambda!219407 () Bool)

(assert (=> (not b_lambda!219407) (not b!5820631)))

(declare-fun b_lambda!219409 () Bool)

(assert (=> (not b_lambda!219409) (not d!1831749)))

(declare-fun m!6755848 () Bool)

(assert (=> b!5820631 m!6755848))

(declare-fun m!6755850 () Bool)

(assert (=> d!1831749 m!6755850))

(assert (=> d!1831749 m!6755708))

(declare-fun m!6755852 () Bool)

(assert (=> b!5820633 m!6755852))

(declare-fun m!6755854 () Bool)

(assert (=> b!5820632 m!6755854))

(declare-fun m!6755856 () Bool)

(assert (=> b!5820635 m!6755856))

(assert (=> b!5820352 d!1831749))

(declare-fun bs!1373263 () Bool)

(declare-fun d!1831751 () Bool)

(assert (= bs!1373263 (and d!1831751 d!1831739)))

(declare-fun lambda!318499 () Int)

(assert (=> bs!1373263 (not (= lambda!318499 lambda!318491))))

(declare-fun bs!1373264 () Bool)

(assert (= bs!1373264 (and d!1831751 b!5820342)))

(assert (=> bs!1373264 (not (= lambda!318499 lambda!318449))))

(declare-fun bs!1373265 () Bool)

(assert (= bs!1373265 (and d!1831751 b!5820352)))

(assert (=> bs!1373265 (not (= lambda!318499 lambda!318451))))

(declare-fun bs!1373266 () Bool)

(assert (= bs!1373266 (and d!1831751 d!1831741)))

(assert (=> bs!1373266 (not (= lambda!318499 lambda!318493))))

(declare-fun bs!1373267 () Bool)

(assert (= bs!1373267 (and d!1831751 d!1831747)))

(assert (=> bs!1373267 (not (= lambda!318499 lambda!318496))))

(assert (=> d!1831751 true))

(declare-fun order!27235 () Int)

(declare-fun dynLambda!24960 (Int Int) Int)

(assert (=> d!1831751 (< (dynLambda!24960 order!27235 lambda!318449) (dynLambda!24960 order!27235 lambda!318499))))

(assert (=> d!1831751 (= (exists!2287 lt!2302084 lambda!318449) (not (forall!14954 lt!2302084 lambda!318499)))))

(declare-fun bs!1373268 () Bool)

(assert (= bs!1373268 d!1831751))

(declare-fun m!6755858 () Bool)

(assert (=> bs!1373268 m!6755858))

(assert (=> b!5820342 d!1831751))

(declare-fun bs!1373269 () Bool)

(declare-fun d!1831753 () Bool)

(assert (= bs!1373269 (and d!1831753 b!5820342)))

(declare-fun lambda!318504 () Int)

(assert (=> bs!1373269 (not (= lambda!318504 lambda!318449))))

(declare-fun bs!1373270 () Bool)

(assert (= bs!1373270 (and d!1831753 b!5820352)))

(assert (=> bs!1373270 (= lambda!318504 lambda!318451)))

(declare-fun bs!1373271 () Bool)

(assert (= bs!1373271 (and d!1831753 d!1831741)))

(assert (=> bs!1373271 (= lambda!318504 lambda!318493)))

(declare-fun bs!1373272 () Bool)

(assert (= bs!1373272 (and d!1831753 d!1831747)))

(assert (=> bs!1373272 (= lambda!318504 lambda!318496)))

(declare-fun bs!1373273 () Bool)

(assert (= bs!1373273 (and d!1831753 d!1831739)))

(assert (=> bs!1373273 (= lambda!318504 lambda!318491)))

(declare-fun bs!1373274 () Bool)

(assert (= bs!1373274 (and d!1831753 d!1831751)))

(assert (=> bs!1373274 (not (= lambda!318504 lambda!318499))))

(declare-fun bs!1373275 () Bool)

(assert (= bs!1373275 d!1831753))

(declare-fun lambda!318505 () Int)

(assert (=> bs!1373275 (not (= lambda!318505 lambda!318504))))

(assert (=> bs!1373269 (= lambda!318505 lambda!318449)))

(assert (=> bs!1373270 (not (= lambda!318505 lambda!318451))))

(assert (=> bs!1373271 (not (= lambda!318505 lambda!318493))))

(assert (=> bs!1373272 (not (= lambda!318505 lambda!318496))))

(assert (=> bs!1373273 (not (= lambda!318505 lambda!318491))))

(assert (=> bs!1373274 (not (= lambda!318505 lambda!318499))))

(assert (=> d!1831753 true))

(assert (=> d!1831753 (= (matchR!8047 r!7292 s!2326) (exists!2287 lt!2302084 lambda!318505))))

(declare-fun lt!2302153 () Unit!156996)

(declare-fun choose!44241 (Regex!15862 List!63885 List!63887) Unit!156996)

(assert (=> d!1831753 (= lt!2302153 (choose!44241 r!7292 lt!2302084 s!2326))))

(assert (=> d!1831753 (forall!14954 lt!2302084 lambda!318504)))

(assert (=> d!1831753 (= (matchRGenUnionSpec!303 r!7292 lt!2302084 s!2326) lt!2302153)))

(assert (=> bs!1373275 m!6755674))

(declare-fun m!6755860 () Bool)

(assert (=> bs!1373275 m!6755860))

(declare-fun m!6755862 () Bool)

(assert (=> bs!1373275 m!6755862))

(declare-fun m!6755864 () Bool)

(assert (=> bs!1373275 m!6755864))

(assert (=> b!5820342 d!1831753))

(declare-fun bs!1373276 () Bool)

(declare-fun d!1831755 () Bool)

(assert (= bs!1373276 (and d!1831755 d!1831753)))

(declare-fun lambda!318508 () Int)

(assert (=> bs!1373276 (= lambda!318508 lambda!318504)))

(declare-fun bs!1373277 () Bool)

(assert (= bs!1373277 (and d!1831755 b!5820342)))

(assert (=> bs!1373277 (not (= lambda!318508 lambda!318449))))

(declare-fun bs!1373278 () Bool)

(assert (= bs!1373278 (and d!1831755 b!5820352)))

(assert (=> bs!1373278 (= lambda!318508 lambda!318451)))

(declare-fun bs!1373279 () Bool)

(assert (= bs!1373279 (and d!1831755 d!1831741)))

(assert (=> bs!1373279 (= lambda!318508 lambda!318493)))

(declare-fun bs!1373280 () Bool)

(assert (= bs!1373280 (and d!1831755 d!1831747)))

(assert (=> bs!1373280 (= lambda!318508 lambda!318496)))

(assert (=> bs!1373276 (not (= lambda!318508 lambda!318505))))

(declare-fun bs!1373281 () Bool)

(assert (= bs!1373281 (and d!1831755 d!1831739)))

(assert (=> bs!1373281 (= lambda!318508 lambda!318491)))

(declare-fun bs!1373282 () Bool)

(assert (= bs!1373282 (and d!1831755 d!1831751)))

(assert (=> bs!1373282 (not (= lambda!318508 lambda!318499))))

(declare-fun lt!2302156 () List!63885)

(assert (=> d!1831755 (forall!14954 lt!2302156 lambda!318508)))

(declare-fun e!3572219 () List!63885)

(assert (=> d!1831755 (= lt!2302156 e!3572219)))

(declare-fun c!1031502 () Bool)

(assert (=> d!1831755 (= c!1031502 (is-Cons!63762 zl!343))))

(assert (=> d!1831755 (= (unfocusZipperList!1284 zl!343) lt!2302156)))

(declare-fun b!5820673 () Bool)

(declare-fun generalisedConcat!1461 (List!63885) Regex!15862)

(assert (=> b!5820673 (= e!3572219 (Cons!63761 (generalisedConcat!1461 (exprs!5746 (h!70210 zl!343))) (unfocusZipperList!1284 (t!377241 zl!343))))))

(declare-fun b!5820674 () Bool)

(assert (=> b!5820674 (= e!3572219 Nil!63761)))

(assert (= (and d!1831755 c!1031502) b!5820673))

(assert (= (and d!1831755 (not c!1031502)) b!5820674))

(declare-fun m!6755866 () Bool)

(assert (=> d!1831755 m!6755866))

(declare-fun m!6755868 () Bool)

(assert (=> b!5820673 m!6755868))

(declare-fun m!6755870 () Bool)

(assert (=> b!5820673 m!6755870))

(assert (=> b!5820342 d!1831755))

(assert (=> b!5820340 d!1831751))

(declare-fun d!1831757 () Bool)

(declare-fun e!3572222 () Bool)

(assert (=> d!1831757 e!3572222))

(declare-fun res!2454563 () Bool)

(assert (=> d!1831757 (=> (not res!2454563) (not e!3572222))))

(declare-fun lt!2302159 () List!63886)

(declare-fun noDuplicate!1737 (List!63886) Bool)

(assert (=> d!1831757 (= res!2454563 (noDuplicate!1737 lt!2302159))))

(declare-fun choose!44242 ((Set Context!10492)) List!63886)

(assert (=> d!1831757 (= lt!2302159 (choose!44242 z!1189))))

(assert (=> d!1831757 (= (toList!9646 z!1189) lt!2302159)))

(declare-fun b!5820677 () Bool)

(assert (=> b!5820677 (= e!3572222 (= (content!11703 lt!2302159) z!1189))))

(assert (= (and d!1831757 res!2454563) b!5820677))

(declare-fun m!6755872 () Bool)

(assert (=> d!1831757 m!6755872))

(declare-fun m!6755874 () Bool)

(assert (=> d!1831757 m!6755874))

(declare-fun m!6755876 () Bool)

(assert (=> b!5820677 m!6755876))

(assert (=> b!5820351 d!1831757))

(declare-fun b!5820682 () Bool)

(declare-fun e!3572225 () Bool)

(declare-fun tp!1606163 () Bool)

(assert (=> b!5820682 (= e!3572225 (and tp_is_empty!40977 tp!1606163))))

(assert (=> b!5820349 (= tp!1606124 e!3572225)))

(assert (= (and b!5820349 (is-Cons!63763 (t!377242 s!2326))) b!5820682))

(declare-fun condSetEmpty!39303 () Bool)

(assert (=> setNonEmpty!39297 (= condSetEmpty!39303 (= setRest!39297 (as set.empty (Set Context!10492))))))

(declare-fun setRes!39303 () Bool)

(assert (=> setNonEmpty!39297 (= tp!1606129 setRes!39303)))

(declare-fun setIsEmpty!39303 () Bool)

(assert (=> setIsEmpty!39303 setRes!39303))

(declare-fun e!3572235 () Bool)

(declare-fun setElem!39303 () Context!10492)

(declare-fun setNonEmpty!39303 () Bool)

(declare-fun tp!1606169 () Bool)

(assert (=> setNonEmpty!39303 (= setRes!39303 (and tp!1606169 (inv!82903 setElem!39303) e!3572235))))

(declare-fun setRest!39303 () (Set Context!10492))

(assert (=> setNonEmpty!39303 (= setRest!39297 (set.union (set.insert setElem!39303 (as set.empty (Set Context!10492))) setRest!39303))))

(declare-fun b!5820701 () Bool)

(declare-fun tp!1606168 () Bool)

(assert (=> b!5820701 (= e!3572235 tp!1606168)))

(assert (= (and setNonEmpty!39297 condSetEmpty!39303) setIsEmpty!39303))

(assert (= (and setNonEmpty!39297 (not condSetEmpty!39303)) setNonEmpty!39303))

(assert (= setNonEmpty!39303 b!5820701))

(declare-fun m!6755878 () Bool)

(assert (=> setNonEmpty!39303 m!6755878))

(declare-fun b!5820709 () Bool)

(declare-fun e!3572241 () Bool)

(declare-fun tp!1606174 () Bool)

(assert (=> b!5820709 (= e!3572241 tp!1606174)))

(declare-fun tp!1606175 () Bool)

(declare-fun e!3572240 () Bool)

(declare-fun b!5820708 () Bool)

(assert (=> b!5820708 (= e!3572240 (and (inv!82903 (h!70210 (t!377241 zl!343))) e!3572241 tp!1606175))))

(assert (=> b!5820343 (= tp!1606127 e!3572240)))

(assert (= b!5820708 b!5820709))

(assert (= (and b!5820343 (is-Cons!63762 (t!377241 zl!343))) b!5820708))

(declare-fun m!6755880 () Bool)

(assert (=> b!5820708 m!6755880))

(declare-fun e!3572244 () Bool)

(assert (=> b!5820336 (= tp!1606126 e!3572244)))

(declare-fun b!5820723 () Bool)

(declare-fun tp!1606190 () Bool)

(declare-fun tp!1606188 () Bool)

(assert (=> b!5820723 (= e!3572244 (and tp!1606190 tp!1606188))))

(declare-fun b!5820722 () Bool)

(declare-fun tp!1606189 () Bool)

(assert (=> b!5820722 (= e!3572244 tp!1606189)))

(declare-fun b!5820720 () Bool)

(assert (=> b!5820720 (= e!3572244 tp_is_empty!40977)))

(declare-fun b!5820721 () Bool)

(declare-fun tp!1606187 () Bool)

(declare-fun tp!1606186 () Bool)

(assert (=> b!5820721 (= e!3572244 (and tp!1606187 tp!1606186))))

(assert (= (and b!5820336 (is-ElementMatch!15862 (regOne!32237 r!7292))) b!5820720))

(assert (= (and b!5820336 (is-Concat!24707 (regOne!32237 r!7292))) b!5820721))

(assert (= (and b!5820336 (is-Star!15862 (regOne!32237 r!7292))) b!5820722))

(assert (= (and b!5820336 (is-Union!15862 (regOne!32237 r!7292))) b!5820723))

(declare-fun e!3572245 () Bool)

(assert (=> b!5820336 (= tp!1606128 e!3572245)))

(declare-fun b!5820727 () Bool)

(declare-fun tp!1606195 () Bool)

(declare-fun tp!1606193 () Bool)

(assert (=> b!5820727 (= e!3572245 (and tp!1606195 tp!1606193))))

(declare-fun b!5820726 () Bool)

(declare-fun tp!1606194 () Bool)

(assert (=> b!5820726 (= e!3572245 tp!1606194)))

(declare-fun b!5820724 () Bool)

(assert (=> b!5820724 (= e!3572245 tp_is_empty!40977)))

(declare-fun b!5820725 () Bool)

(declare-fun tp!1606192 () Bool)

(declare-fun tp!1606191 () Bool)

(assert (=> b!5820725 (= e!3572245 (and tp!1606192 tp!1606191))))

(assert (= (and b!5820336 (is-ElementMatch!15862 (regTwo!32237 r!7292))) b!5820724))

(assert (= (and b!5820336 (is-Concat!24707 (regTwo!32237 r!7292))) b!5820725))

(assert (= (and b!5820336 (is-Star!15862 (regTwo!32237 r!7292))) b!5820726))

(assert (= (and b!5820336 (is-Union!15862 (regTwo!32237 r!7292))) b!5820727))

(declare-fun e!3572246 () Bool)

(assert (=> b!5820341 (= tp!1606130 e!3572246)))

(declare-fun b!5820731 () Bool)

(declare-fun tp!1606200 () Bool)

(declare-fun tp!1606198 () Bool)

(assert (=> b!5820731 (= e!3572246 (and tp!1606200 tp!1606198))))

(declare-fun b!5820730 () Bool)

(declare-fun tp!1606199 () Bool)

(assert (=> b!5820730 (= e!3572246 tp!1606199)))

(declare-fun b!5820728 () Bool)

(assert (=> b!5820728 (= e!3572246 tp_is_empty!40977)))

(declare-fun b!5820729 () Bool)

(declare-fun tp!1606197 () Bool)

(declare-fun tp!1606196 () Bool)

(assert (=> b!5820729 (= e!3572246 (and tp!1606197 tp!1606196))))

(assert (= (and b!5820341 (is-ElementMatch!15862 (regOne!32236 r!7292))) b!5820728))

(assert (= (and b!5820341 (is-Concat!24707 (regOne!32236 r!7292))) b!5820729))

(assert (= (and b!5820341 (is-Star!15862 (regOne!32236 r!7292))) b!5820730))

(assert (= (and b!5820341 (is-Union!15862 (regOne!32236 r!7292))) b!5820731))

(declare-fun e!3572247 () Bool)

(assert (=> b!5820341 (= tp!1606123 e!3572247)))

(declare-fun b!5820735 () Bool)

(declare-fun tp!1606205 () Bool)

(declare-fun tp!1606203 () Bool)

(assert (=> b!5820735 (= e!3572247 (and tp!1606205 tp!1606203))))

(declare-fun b!5820734 () Bool)

(declare-fun tp!1606204 () Bool)

(assert (=> b!5820734 (= e!3572247 tp!1606204)))

(declare-fun b!5820732 () Bool)

(assert (=> b!5820732 (= e!3572247 tp_is_empty!40977)))

(declare-fun b!5820733 () Bool)

(declare-fun tp!1606202 () Bool)

(declare-fun tp!1606201 () Bool)

(assert (=> b!5820733 (= e!3572247 (and tp!1606202 tp!1606201))))

(assert (= (and b!5820341 (is-ElementMatch!15862 (regTwo!32236 r!7292))) b!5820732))

(assert (= (and b!5820341 (is-Concat!24707 (regTwo!32236 r!7292))) b!5820733))

(assert (= (and b!5820341 (is-Star!15862 (regTwo!32236 r!7292))) b!5820734))

(assert (= (and b!5820341 (is-Union!15862 (regTwo!32236 r!7292))) b!5820735))

(declare-fun b!5820740 () Bool)

(declare-fun e!3572250 () Bool)

(declare-fun tp!1606210 () Bool)

(declare-fun tp!1606211 () Bool)

(assert (=> b!5820740 (= e!3572250 (and tp!1606210 tp!1606211))))

(assert (=> b!5820333 (= tp!1606125 e!3572250)))

(assert (= (and b!5820333 (is-Cons!63761 (exprs!5746 setElem!39297))) b!5820740))

(declare-fun e!3572251 () Bool)

(assert (=> b!5820347 (= tp!1606122 e!3572251)))

(declare-fun b!5820744 () Bool)

(declare-fun tp!1606216 () Bool)

(declare-fun tp!1606214 () Bool)

(assert (=> b!5820744 (= e!3572251 (and tp!1606216 tp!1606214))))

(declare-fun b!5820743 () Bool)

(declare-fun tp!1606215 () Bool)

(assert (=> b!5820743 (= e!3572251 tp!1606215)))

(declare-fun b!5820741 () Bool)

(assert (=> b!5820741 (= e!3572251 tp_is_empty!40977)))

(declare-fun b!5820742 () Bool)

(declare-fun tp!1606213 () Bool)

(declare-fun tp!1606212 () Bool)

(assert (=> b!5820742 (= e!3572251 (and tp!1606213 tp!1606212))))

(assert (= (and b!5820347 (is-ElementMatch!15862 (reg!16191 r!7292))) b!5820741))

(assert (= (and b!5820347 (is-Concat!24707 (reg!16191 r!7292))) b!5820742))

(assert (= (and b!5820347 (is-Star!15862 (reg!16191 r!7292))) b!5820743))

(assert (= (and b!5820347 (is-Union!15862 (reg!16191 r!7292))) b!5820744))

(declare-fun b!5820745 () Bool)

(declare-fun e!3572252 () Bool)

(declare-fun tp!1606217 () Bool)

(declare-fun tp!1606218 () Bool)

(assert (=> b!5820745 (= e!3572252 (and tp!1606217 tp!1606218))))

(assert (=> b!5820345 (= tp!1606121 e!3572252)))

(assert (= (and b!5820345 (is-Cons!63761 (exprs!5746 (h!70210 zl!343)))) b!5820745))

(declare-fun b_lambda!219411 () Bool)

(assert (= b_lambda!219407 (or b!5820339 b_lambda!219411)))

(declare-fun bs!1373283 () Bool)

(declare-fun d!1831761 () Bool)

(assert (= bs!1373283 (and d!1831761 b!5820339)))

(assert (=> bs!1373283 (= (dynLambda!24959 lambda!318450 (h!70210 zl!343)) (matchZipper!1968 (set.insert (h!70210 zl!343) (as set.empty (Set Context!10492))) s!2326))))

(declare-fun m!6755894 () Bool)

(assert (=> bs!1373283 m!6755894))

(assert (=> bs!1373283 m!6755894))

(declare-fun m!6755896 () Bool)

(assert (=> bs!1373283 m!6755896))

(assert (=> b!5820631 d!1831761))

(declare-fun b_lambda!219413 () Bool)

(assert (= b_lambda!219409 (or b!5820339 b_lambda!219413)))

(declare-fun bs!1373284 () Bool)

(declare-fun d!1831763 () Bool)

(assert (= bs!1373284 (and d!1831763 b!5820339)))

(assert (=> bs!1373284 (= (dynLambda!24959 lambda!318450 lt!2302147) (matchZipper!1968 (set.insert lt!2302147 (as set.empty (Set Context!10492))) s!2326))))

(declare-fun m!6755898 () Bool)

(assert (=> bs!1373284 m!6755898))

(assert (=> bs!1373284 m!6755898))

(declare-fun m!6755900 () Bool)

(assert (=> bs!1373284 m!6755900))

(assert (=> d!1831749 d!1831763))

(declare-fun b_lambda!219415 () Bool)

(assert (= b_lambda!219405 (or b!5820352 b_lambda!219415)))

(declare-fun bs!1373285 () Bool)

(declare-fun d!1831765 () Bool)

(assert (= bs!1373285 (and d!1831765 b!5820352)))

(assert (=> bs!1373285 (= (dynLambda!24958 lambda!318451 (h!70209 (exprs!5746 lt!2302077))) (validRegex!7598 (h!70209 (exprs!5746 lt!2302077))))))

(declare-fun m!6755902 () Bool)

(assert (=> bs!1373285 m!6755902))

(assert (=> b!5820617 d!1831765))

(push 1)

(assert (not b!5820511))

(assert (not b!5820742))

(assert (not b!5820682))

(assert (not b!5820740))

(assert (not b!5820709))

(assert (not b!5820632))

(assert (not b!5820460))

(assert (not b!5820570))

(assert (not b!5820553))

(assert (not b_lambda!219415))

(assert (not b!5820559))

(assert tp_is_empty!40977)

(assert (not bm!454538))

(assert (not b!5820733))

(assert (not b!5820513))

(assert (not d!1831741))

(assert (not b!5820677))

(assert (not b!5820730))

(assert (not b!5820457))

(assert (not b!5820725))

(assert (not b!5820721))

(assert (not d!1831735))

(assert (not b!5820504))

(assert (not d!1831747))

(assert (not b!5820731))

(assert (not b!5820569))

(assert (not b!5820734))

(assert (not d!1831749))

(assert (not b!5820510))

(assert (not b!5820618))

(assert (not bm!454552))

(assert (not d!1831731))

(assert (not b!5820701))

(assert (not d!1831717))

(assert (not d!1831739))

(assert (not b!5820723))

(assert (not d!1831711))

(assert (not b!5820551))

(assert (not d!1831757))

(assert (not d!1831753))

(assert (not b!5820729))

(assert (not b_lambda!219413))

(assert (not b_lambda!219411))

(assert (not b!5820722))

(assert (not d!1831729))

(assert (not b!5820726))

(assert (not bm!454553))

(assert (not d!1831755))

(assert (not b!5820743))

(assert (not bm!454535))

(assert (not b!5820507))

(assert (not b!5820735))

(assert (not b!5820633))

(assert (not d!1831751))

(assert (not b!5820635))

(assert (not b!5820744))

(assert (not bs!1373283))

(assert (not b!5820745))

(assert (not setNonEmpty!39303))

(assert (not bs!1373284))

(assert (not bs!1373285))

(assert (not bm!454534))

(assert (not d!1831721))

(assert (not d!1831719))

(assert (not b!5820727))

(assert (not b!5820673))

(assert (not b!5820606))

(assert (not b!5820508))

(assert (not b!5820708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1831807 () Bool)

(declare-fun c!1031536 () Bool)

(assert (=> d!1831807 (= c!1031536 (isEmpty!35647 s!2326))))

(declare-fun e!3572330 () Bool)

(assert (=> d!1831807 (= (matchZipper!1968 (set.insert (h!70210 zl!343) (as set.empty (Set Context!10492))) s!2326) e!3572330)))

(declare-fun b!5820883 () Bool)

(assert (=> b!5820883 (= e!3572330 (nullableZipper!1743 (set.insert (h!70210 zl!343) (as set.empty (Set Context!10492)))))))

(declare-fun b!5820884 () Bool)

(assert (=> b!5820884 (= e!3572330 (matchZipper!1968 (derivationStepZipper!1905 (set.insert (h!70210 zl!343) (as set.empty (Set Context!10492))) (head!12298 s!2326)) (tail!11385 s!2326)))))

(assert (= (and d!1831807 c!1031536) b!5820883))

(assert (= (and d!1831807 (not c!1031536)) b!5820884))

(assert (=> d!1831807 m!6755762))

(assert (=> b!5820883 m!6755894))

(declare-fun m!6755996 () Bool)

(assert (=> b!5820883 m!6755996))

(assert (=> b!5820884 m!6755774))

(assert (=> b!5820884 m!6755894))

(assert (=> b!5820884 m!6755774))

(declare-fun m!6755998 () Bool)

(assert (=> b!5820884 m!6755998))

(assert (=> b!5820884 m!6755778))

(assert (=> b!5820884 m!6755998))

(assert (=> b!5820884 m!6755778))

(declare-fun m!6756000 () Bool)

(assert (=> b!5820884 m!6756000))

(assert (=> bs!1373283 d!1831807))

(declare-fun d!1831809 () Bool)

(declare-fun res!2454605 () Bool)

(declare-fun e!3572335 () Bool)

(assert (=> d!1831809 (=> res!2454605 e!3572335)))

(assert (=> d!1831809 (= res!2454605 (is-Nil!63762 lt!2302159))))

(assert (=> d!1831809 (= (noDuplicate!1737 lt!2302159) e!3572335)))

(declare-fun b!5820889 () Bool)

(declare-fun e!3572336 () Bool)

(assert (=> b!5820889 (= e!3572335 e!3572336)))

(declare-fun res!2454606 () Bool)

(assert (=> b!5820889 (=> (not res!2454606) (not e!3572336))))

(assert (=> b!5820889 (= res!2454606 (not (contains!19898 (t!377241 lt!2302159) (h!70210 lt!2302159))))))

(declare-fun b!5820890 () Bool)

(assert (=> b!5820890 (= e!3572336 (noDuplicate!1737 (t!377241 lt!2302159)))))

(assert (= (and d!1831809 (not res!2454605)) b!5820889))

(assert (= (and b!5820889 res!2454606) b!5820890))

(declare-fun m!6756002 () Bool)

(assert (=> b!5820889 m!6756002))

(declare-fun m!6756004 () Bool)

(assert (=> b!5820890 m!6756004))

(assert (=> d!1831757 d!1831809))

(declare-fun d!1831811 () Bool)

(declare-fun e!3572344 () Bool)

(assert (=> d!1831811 e!3572344))

(declare-fun res!2454611 () Bool)

(assert (=> d!1831811 (=> (not res!2454611) (not e!3572344))))

(declare-fun res!2454612 () List!63886)

(assert (=> d!1831811 (= res!2454611 (noDuplicate!1737 res!2454612))))

(declare-fun e!3572343 () Bool)

(assert (=> d!1831811 e!3572343))

(assert (=> d!1831811 (= (choose!44242 z!1189) res!2454612)))

(declare-fun b!5820898 () Bool)

(declare-fun e!3572345 () Bool)

(declare-fun tp!1606282 () Bool)

(assert (=> b!5820898 (= e!3572345 tp!1606282)))

(declare-fun b!5820897 () Bool)

(declare-fun tp!1606281 () Bool)

(assert (=> b!5820897 (= e!3572343 (and (inv!82903 (h!70210 res!2454612)) e!3572345 tp!1606281))))

(declare-fun b!5820899 () Bool)

(assert (=> b!5820899 (= e!3572344 (= (content!11703 res!2454612) z!1189))))

(assert (= b!5820897 b!5820898))

(assert (= (and d!1831811 (is-Cons!63762 res!2454612)) b!5820897))

(assert (= (and d!1831811 res!2454611) b!5820899))

(declare-fun m!6756006 () Bool)

(assert (=> d!1831811 m!6756006))

(declare-fun m!6756008 () Bool)

(assert (=> b!5820897 m!6756008))

(declare-fun m!6756010 () Bool)

(assert (=> b!5820899 m!6756010))

(assert (=> d!1831757 d!1831811))

(declare-fun bs!1373326 () Bool)

(declare-fun b!5820901 () Bool)

(assert (= bs!1373326 (and b!5820901 b!5820458)))

(declare-fun lambda!318531 () Int)

(assert (=> bs!1373326 (= (and (= (reg!16191 (regTwo!32237 r!7292)) (reg!16191 r!7292)) (= (regTwo!32237 r!7292) r!7292)) (= lambda!318531 lambda!318473))))

(declare-fun bs!1373327 () Bool)

(assert (= bs!1373327 (and b!5820901 b!5820466)))

(assert (=> bs!1373327 (not (= lambda!318531 lambda!318474))))

(assert (=> b!5820901 true))

(assert (=> b!5820901 true))

(declare-fun bs!1373328 () Bool)

(declare-fun b!5820909 () Bool)

(assert (= bs!1373328 (and b!5820909 b!5820458)))

(declare-fun lambda!318532 () Int)

(assert (=> bs!1373328 (not (= lambda!318532 lambda!318473))))

(declare-fun bs!1373329 () Bool)

(assert (= bs!1373329 (and b!5820909 b!5820466)))

(assert (=> bs!1373329 (= (and (= (regOne!32236 (regTwo!32237 r!7292)) (regOne!32236 r!7292)) (= (regTwo!32236 (regTwo!32237 r!7292)) (regTwo!32236 r!7292))) (= lambda!318532 lambda!318474))))

(declare-fun bs!1373330 () Bool)

(assert (= bs!1373330 (and b!5820909 b!5820901)))

(assert (=> bs!1373330 (not (= lambda!318532 lambda!318531))))

(assert (=> b!5820909 true))

(assert (=> b!5820909 true))

(declare-fun b!5820900 () Bool)

(declare-fun e!3572352 () Bool)

(declare-fun e!3572350 () Bool)

(assert (=> b!5820900 (= e!3572352 e!3572350)))

(declare-fun res!2454614 () Bool)

(assert (=> b!5820900 (= res!2454614 (matchRSpec!2965 (regOne!32237 (regTwo!32237 r!7292)) s!2326))))

(assert (=> b!5820900 (=> res!2454614 e!3572350)))

(declare-fun e!3572348 () Bool)

(declare-fun call!454571 () Bool)

(assert (=> b!5820901 (= e!3572348 call!454571)))

(declare-fun b!5820902 () Bool)

(declare-fun res!2454615 () Bool)

(assert (=> b!5820902 (=> res!2454615 e!3572348)))

(declare-fun call!454572 () Bool)

(assert (=> b!5820902 (= res!2454615 call!454572)))

(declare-fun e!3572347 () Bool)

(assert (=> b!5820902 (= e!3572347 e!3572348)))

(declare-fun b!5820903 () Bool)

(assert (=> b!5820903 (= e!3572350 (matchRSpec!2965 (regTwo!32237 (regTwo!32237 r!7292)) s!2326))))

(declare-fun b!5820904 () Bool)

(declare-fun e!3572351 () Bool)

(assert (=> b!5820904 (= e!3572351 call!454572)))

(declare-fun b!5820905 () Bool)

(declare-fun c!1031539 () Bool)

(assert (=> b!5820905 (= c!1031539 (is-Union!15862 (regTwo!32237 r!7292)))))

(declare-fun e!3572346 () Bool)

(assert (=> b!5820905 (= e!3572346 e!3572352)))

(declare-fun b!5820906 () Bool)

(declare-fun e!3572349 () Bool)

(assert (=> b!5820906 (= e!3572351 e!3572349)))

(declare-fun res!2454613 () Bool)

(assert (=> b!5820906 (= res!2454613 (not (is-EmptyLang!15862 (regTwo!32237 r!7292))))))

(assert (=> b!5820906 (=> (not res!2454613) (not e!3572349))))

(declare-fun d!1831813 () Bool)

(declare-fun c!1031540 () Bool)

(assert (=> d!1831813 (= c!1031540 (is-EmptyExpr!15862 (regTwo!32237 r!7292)))))

(assert (=> d!1831813 (= (matchRSpec!2965 (regTwo!32237 r!7292) s!2326) e!3572351)))

(declare-fun b!5820907 () Bool)

(declare-fun c!1031538 () Bool)

(assert (=> b!5820907 (= c!1031538 (is-ElementMatch!15862 (regTwo!32237 r!7292)))))

(assert (=> b!5820907 (= e!3572349 e!3572346)))

(declare-fun b!5820908 () Bool)

(assert (=> b!5820908 (= e!3572352 e!3572347)))

(declare-fun c!1031537 () Bool)

(assert (=> b!5820908 (= c!1031537 (is-Star!15862 (regTwo!32237 r!7292)))))

(assert (=> b!5820909 (= e!3572347 call!454571)))

(declare-fun b!5820910 () Bool)

(assert (=> b!5820910 (= e!3572346 (= s!2326 (Cons!63763 (c!1031430 (regTwo!32237 r!7292)) Nil!63763)))))

(declare-fun bm!454566 () Bool)

(assert (=> bm!454566 (= call!454571 (Exists!2946 (ite c!1031537 lambda!318531 lambda!318532)))))

(declare-fun bm!454567 () Bool)

(assert (=> bm!454567 (= call!454572 (isEmpty!35647 s!2326))))

(assert (= (and d!1831813 c!1031540) b!5820904))

(assert (= (and d!1831813 (not c!1031540)) b!5820906))

(assert (= (and b!5820906 res!2454613) b!5820907))

(assert (= (and b!5820907 c!1031538) b!5820910))

(assert (= (and b!5820907 (not c!1031538)) b!5820905))

(assert (= (and b!5820905 c!1031539) b!5820900))

(assert (= (and b!5820905 (not c!1031539)) b!5820908))

(assert (= (and b!5820900 (not res!2454614)) b!5820903))

(assert (= (and b!5820908 c!1031537) b!5820902))

(assert (= (and b!5820908 (not c!1031537)) b!5820909))

(assert (= (and b!5820902 (not res!2454615)) b!5820901))

(assert (= (or b!5820901 b!5820909) bm!454566))

(assert (= (or b!5820904 b!5820902) bm!454567))

(declare-fun m!6756012 () Bool)

(assert (=> b!5820900 m!6756012))

(declare-fun m!6756014 () Bool)

(assert (=> b!5820903 m!6756014))

(declare-fun m!6756016 () Bool)

(assert (=> bm!454566 m!6756016))

(assert (=> bm!454567 m!6755762))

(assert (=> b!5820460 d!1831813))

(declare-fun bs!1373331 () Bool)

(declare-fun d!1831815 () Bool)

(assert (= bs!1373331 (and d!1831815 b!5820339)))

(declare-fun lambda!318533 () Int)

(assert (=> bs!1373331 (not (= lambda!318533 lambda!318450))))

(declare-fun bs!1373332 () Bool)

(assert (= bs!1373332 (and d!1831815 d!1831719)))

(assert (=> bs!1373332 (= (= lambda!318483 lambda!318450) (= lambda!318533 lambda!318480))))

(declare-fun bs!1373333 () Bool)

(assert (= bs!1373333 (and d!1831815 d!1831721)))

(assert (=> bs!1373333 (not (= lambda!318533 lambda!318483))))

(assert (=> d!1831815 true))

(assert (=> d!1831815 (< (dynLambda!24957 order!27233 lambda!318483) (dynLambda!24957 order!27233 lambda!318533))))

(assert (=> d!1831815 (= (exists!2286 zl!343 lambda!318483) (not (forall!14956 zl!343 lambda!318533)))))

(declare-fun bs!1373334 () Bool)

(assert (= bs!1373334 d!1831815))

(declare-fun m!6756018 () Bool)

(assert (=> bs!1373334 m!6756018))

(assert (=> d!1831721 d!1831815))

(declare-fun bs!1373335 () Bool)

(declare-fun d!1831817 () Bool)

(assert (= bs!1373335 (and d!1831817 b!5820339)))

(declare-fun lambda!318536 () Int)

(assert (=> bs!1373335 (= lambda!318536 lambda!318450)))

(declare-fun bs!1373336 () Bool)

(assert (= bs!1373336 (and d!1831817 d!1831719)))

(assert (=> bs!1373336 (not (= lambda!318536 lambda!318480))))

(declare-fun bs!1373337 () Bool)

(assert (= bs!1373337 (and d!1831817 d!1831721)))

(assert (=> bs!1373337 (= lambda!318536 lambda!318483)))

(declare-fun bs!1373338 () Bool)

(assert (= bs!1373338 (and d!1831817 d!1831815)))

(assert (=> bs!1373338 (not (= lambda!318536 lambda!318533))))

(assert (=> d!1831817 true))

(assert (=> d!1831817 (exists!2286 zl!343 lambda!318536)))

(assert (=> d!1831817 true))

(declare-fun _$60!1006 () Unit!156996)

(assert (=> d!1831817 (= (choose!44238 zl!343 s!2326) _$60!1006)))

(declare-fun bs!1373339 () Bool)

(assert (= bs!1373339 d!1831817))

(declare-fun m!6756020 () Bool)

(assert (=> bs!1373339 m!6756020))

(assert (=> d!1831721 d!1831817))

(declare-fun d!1831819 () Bool)

(declare-fun c!1031543 () Bool)

(assert (=> d!1831819 (= c!1031543 (isEmpty!35647 s!2326))))

(declare-fun e!3572353 () Bool)

(assert (=> d!1831819 (= (matchZipper!1968 (content!11703 zl!343) s!2326) e!3572353)))

(declare-fun b!5820911 () Bool)

(assert (=> b!5820911 (= e!3572353 (nullableZipper!1743 (content!11703 zl!343)))))

(declare-fun b!5820912 () Bool)

(assert (=> b!5820912 (= e!3572353 (matchZipper!1968 (derivationStepZipper!1905 (content!11703 zl!343) (head!12298 s!2326)) (tail!11385 s!2326)))))

(assert (= (and d!1831819 c!1031543) b!5820911))

(assert (= (and d!1831819 (not c!1031543)) b!5820912))

(assert (=> d!1831819 m!6755762))

(assert (=> b!5820911 m!6755792))

(declare-fun m!6756022 () Bool)

(assert (=> b!5820911 m!6756022))

(assert (=> b!5820912 m!6755774))

(assert (=> b!5820912 m!6755792))

(assert (=> b!5820912 m!6755774))

(declare-fun m!6756024 () Bool)

(assert (=> b!5820912 m!6756024))

(assert (=> b!5820912 m!6755778))

(assert (=> b!5820912 m!6756024))

(assert (=> b!5820912 m!6755778))

(declare-fun m!6756026 () Bool)

(assert (=> b!5820912 m!6756026))

(assert (=> d!1831721 d!1831819))

(declare-fun d!1831821 () Bool)

(declare-fun c!1031546 () Bool)

(assert (=> d!1831821 (= c!1031546 (is-Nil!63762 zl!343))))

(declare-fun e!3572356 () (Set Context!10492))

(assert (=> d!1831821 (= (content!11703 zl!343) e!3572356)))

(declare-fun b!5820917 () Bool)

(assert (=> b!5820917 (= e!3572356 (as set.empty (Set Context!10492)))))

(declare-fun b!5820918 () Bool)

(assert (=> b!5820918 (= e!3572356 (set.union (set.insert (h!70210 zl!343) (as set.empty (Set Context!10492))) (content!11703 (t!377241 zl!343))))))

(assert (= (and d!1831821 c!1031546) b!5820917))

(assert (= (and d!1831821 (not c!1031546)) b!5820918))

(assert (=> b!5820918 m!6755894))

(declare-fun m!6756028 () Bool)

(assert (=> b!5820918 m!6756028))

(assert (=> d!1831721 d!1831821))

(declare-fun d!1831823 () Bool)

(declare-fun nullableFct!1879 (Regex!15862) Bool)

(assert (=> d!1831823 (= (nullable!5870 (reg!16191 r!7292)) (nullableFct!1879 (reg!16191 r!7292)))))

(declare-fun bs!1373340 () Bool)

(assert (= bs!1373340 d!1831823))

(declare-fun m!6756030 () Bool)

(assert (=> bs!1373340 m!6756030))

(assert (=> b!5820606 d!1831823))

(declare-fun d!1831825 () Bool)

(assert (=> d!1831825 (= (isEmpty!35647 (tail!11385 s!2326)) (is-Nil!63763 (tail!11385 s!2326)))))

(assert (=> b!5820504 d!1831825))

(declare-fun d!1831827 () Bool)

(assert (=> d!1831827 (= (tail!11385 s!2326) (t!377242 s!2326))))

(assert (=> b!5820504 d!1831827))

(declare-fun bs!1373341 () Bool)

(declare-fun d!1831829 () Bool)

(assert (= bs!1373341 (and d!1831829 d!1831753)))

(declare-fun lambda!318537 () Int)

(assert (=> bs!1373341 (= lambda!318537 lambda!318504)))

(declare-fun bs!1373342 () Bool)

(assert (= bs!1373342 (and d!1831829 d!1831755)))

(assert (=> bs!1373342 (= lambda!318537 lambda!318508)))

(declare-fun bs!1373343 () Bool)

(assert (= bs!1373343 (and d!1831829 b!5820342)))

(assert (=> bs!1373343 (not (= lambda!318537 lambda!318449))))

(declare-fun bs!1373344 () Bool)

(assert (= bs!1373344 (and d!1831829 b!5820352)))

(assert (=> bs!1373344 (= lambda!318537 lambda!318451)))

(declare-fun bs!1373345 () Bool)

(assert (= bs!1373345 (and d!1831829 d!1831741)))

(assert (=> bs!1373345 (= lambda!318537 lambda!318493)))

(declare-fun bs!1373346 () Bool)

(assert (= bs!1373346 (and d!1831829 d!1831747)))

(assert (=> bs!1373346 (= lambda!318537 lambda!318496)))

(assert (=> bs!1373341 (not (= lambda!318537 lambda!318505))))

(declare-fun bs!1373347 () Bool)

(assert (= bs!1373347 (and d!1831829 d!1831739)))

(assert (=> bs!1373347 (= lambda!318537 lambda!318491)))

(declare-fun bs!1373348 () Bool)

(assert (= bs!1373348 (and d!1831829 d!1831751)))

(assert (=> bs!1373348 (not (= lambda!318537 lambda!318499))))

(assert (=> d!1831829 (= (inv!82903 setElem!39303) (forall!14954 (exprs!5746 setElem!39303) lambda!318537))))

(declare-fun bs!1373349 () Bool)

(assert (= bs!1373349 d!1831829))

(declare-fun m!6756032 () Bool)

(assert (=> bs!1373349 m!6756032))

(assert (=> setNonEmpty!39303 d!1831829))

(declare-fun b!5820919 () Bool)

(declare-fun e!3572359 () Bool)

(declare-fun e!3572358 () Bool)

(assert (=> b!5820919 (= e!3572359 e!3572358)))

(declare-fun c!1031547 () Bool)

(assert (=> b!5820919 (= c!1031547 (is-Star!15862 (ite c!1031486 (regOne!32237 r!7292) (regOne!32236 r!7292))))))

(declare-fun b!5820920 () Bool)

(declare-fun res!2454618 () Bool)

(declare-fun e!3572363 () Bool)

(assert (=> b!5820920 (=> (not res!2454618) (not e!3572363))))

(declare-fun call!454573 () Bool)

(assert (=> b!5820920 (= res!2454618 call!454573)))

(declare-fun e!3572357 () Bool)

(assert (=> b!5820920 (= e!3572357 e!3572363)))

(declare-fun b!5820921 () Bool)

(declare-fun call!454574 () Bool)

(assert (=> b!5820921 (= e!3572363 call!454574)))

(declare-fun d!1831831 () Bool)

(declare-fun res!2454619 () Bool)

(assert (=> d!1831831 (=> res!2454619 e!3572359)))

(assert (=> d!1831831 (= res!2454619 (is-ElementMatch!15862 (ite c!1031486 (regOne!32237 r!7292) (regOne!32236 r!7292))))))

(assert (=> d!1831831 (= (validRegex!7598 (ite c!1031486 (regOne!32237 r!7292) (regOne!32236 r!7292))) e!3572359)))

(declare-fun bm!454568 () Bool)

(declare-fun call!454575 () Bool)

(assert (=> bm!454568 (= call!454574 call!454575)))

(declare-fun b!5820922 () Bool)

(declare-fun e!3572362 () Bool)

(assert (=> b!5820922 (= e!3572362 call!454574)))

(declare-fun bm!454569 () Bool)

(declare-fun c!1031548 () Bool)

(assert (=> bm!454569 (= call!454575 (validRegex!7598 (ite c!1031547 (reg!16191 (ite c!1031486 (regOne!32237 r!7292) (regOne!32236 r!7292))) (ite c!1031548 (regTwo!32237 (ite c!1031486 (regOne!32237 r!7292) (regOne!32236 r!7292))) (regTwo!32236 (ite c!1031486 (regOne!32237 r!7292) (regOne!32236 r!7292)))))))))

(declare-fun b!5820923 () Bool)

(assert (=> b!5820923 (= e!3572358 e!3572357)))

(assert (=> b!5820923 (= c!1031548 (is-Union!15862 (ite c!1031486 (regOne!32237 r!7292) (regOne!32236 r!7292))))))

(declare-fun b!5820924 () Bool)

(declare-fun e!3572360 () Bool)

(assert (=> b!5820924 (= e!3572360 call!454575)))

(declare-fun bm!454570 () Bool)

(assert (=> bm!454570 (= call!454573 (validRegex!7598 (ite c!1031548 (regOne!32237 (ite c!1031486 (regOne!32237 r!7292) (regOne!32236 r!7292))) (regOne!32236 (ite c!1031486 (regOne!32237 r!7292) (regOne!32236 r!7292))))))))

(declare-fun b!5820925 () Bool)

(assert (=> b!5820925 (= e!3572358 e!3572360)))

(declare-fun res!2454620 () Bool)

(assert (=> b!5820925 (= res!2454620 (not (nullable!5870 (reg!16191 (ite c!1031486 (regOne!32237 r!7292) (regOne!32236 r!7292))))))))

(assert (=> b!5820925 (=> (not res!2454620) (not e!3572360))))

(declare-fun b!5820926 () Bool)

(declare-fun e!3572361 () Bool)

(assert (=> b!5820926 (= e!3572361 e!3572362)))

(declare-fun res!2454616 () Bool)

(assert (=> b!5820926 (=> (not res!2454616) (not e!3572362))))

(assert (=> b!5820926 (= res!2454616 call!454573)))

(declare-fun b!5820927 () Bool)

(declare-fun res!2454617 () Bool)

(assert (=> b!5820927 (=> res!2454617 e!3572361)))

(assert (=> b!5820927 (= res!2454617 (not (is-Concat!24707 (ite c!1031486 (regOne!32237 r!7292) (regOne!32236 r!7292)))))))

(assert (=> b!5820927 (= e!3572357 e!3572361)))

(assert (= (and d!1831831 (not res!2454619)) b!5820919))

(assert (= (and b!5820919 c!1031547) b!5820925))

(assert (= (and b!5820919 (not c!1031547)) b!5820923))

(assert (= (and b!5820925 res!2454620) b!5820924))

(assert (= (and b!5820923 c!1031548) b!5820920))

(assert (= (and b!5820923 (not c!1031548)) b!5820927))

(assert (= (and b!5820920 res!2454618) b!5820921))

(assert (= (and b!5820927 (not res!2454617)) b!5820926))

(assert (= (and b!5820926 res!2454616) b!5820922))

(assert (= (or b!5820921 b!5820922) bm!454568))

(assert (= (or b!5820920 b!5820926) bm!454570))

(assert (= (or b!5820924 bm!454568) bm!454569))

(declare-fun m!6756034 () Bool)

(assert (=> bm!454569 m!6756034))

(declare-fun m!6756036 () Bool)

(assert (=> bm!454570 m!6756036))

(declare-fun m!6756038 () Bool)

(assert (=> b!5820925 m!6756038))

(assert (=> bm!454553 d!1831831))

(assert (=> d!1831753 d!1831711))

(declare-fun bs!1373350 () Bool)

(declare-fun d!1831833 () Bool)

(assert (= bs!1373350 (and d!1831833 d!1831829)))

(declare-fun lambda!318538 () Int)

(assert (=> bs!1373350 (not (= lambda!318538 lambda!318537))))

(declare-fun bs!1373351 () Bool)

(assert (= bs!1373351 (and d!1831833 d!1831753)))

(assert (=> bs!1373351 (not (= lambda!318538 lambda!318504))))

(declare-fun bs!1373352 () Bool)

(assert (= bs!1373352 (and d!1831833 d!1831755)))

(assert (=> bs!1373352 (not (= lambda!318538 lambda!318508))))

(declare-fun bs!1373353 () Bool)

(assert (= bs!1373353 (and d!1831833 b!5820342)))

(assert (=> bs!1373353 (not (= lambda!318538 lambda!318449))))

(declare-fun bs!1373354 () Bool)

(assert (= bs!1373354 (and d!1831833 b!5820352)))

(assert (=> bs!1373354 (not (= lambda!318538 lambda!318451))))

(declare-fun bs!1373355 () Bool)

(assert (= bs!1373355 (and d!1831833 d!1831741)))

(assert (=> bs!1373355 (not (= lambda!318538 lambda!318493))))

(declare-fun bs!1373356 () Bool)

(assert (= bs!1373356 (and d!1831833 d!1831747)))

(assert (=> bs!1373356 (not (= lambda!318538 lambda!318496))))

(assert (=> bs!1373351 (not (= lambda!318538 lambda!318505))))

(declare-fun bs!1373357 () Bool)

(assert (= bs!1373357 (and d!1831833 d!1831739)))

(assert (=> bs!1373357 (not (= lambda!318538 lambda!318491))))

(declare-fun bs!1373358 () Bool)

(assert (= bs!1373358 (and d!1831833 d!1831751)))

(assert (=> bs!1373358 (= (= lambda!318505 lambda!318449) (= lambda!318538 lambda!318499))))

(assert (=> d!1831833 true))

(assert (=> d!1831833 (< (dynLambda!24960 order!27235 lambda!318505) (dynLambda!24960 order!27235 lambda!318538))))

(assert (=> d!1831833 (= (exists!2287 lt!2302084 lambda!318505) (not (forall!14954 lt!2302084 lambda!318538)))))

(declare-fun bs!1373359 () Bool)

(assert (= bs!1373359 d!1831833))

(declare-fun m!6756040 () Bool)

(assert (=> bs!1373359 m!6756040))

(assert (=> d!1831753 d!1831833))

(declare-fun bs!1373360 () Bool)

(declare-fun d!1831835 () Bool)

(assert (= bs!1373360 (and d!1831835 d!1831833)))

(declare-fun lambda!318541 () Int)

(assert (=> bs!1373360 (not (= lambda!318541 lambda!318538))))

(declare-fun bs!1373361 () Bool)

(assert (= bs!1373361 (and d!1831835 d!1831829)))

(assert (=> bs!1373361 (not (= lambda!318541 lambda!318537))))

(declare-fun bs!1373362 () Bool)

(assert (= bs!1373362 (and d!1831835 d!1831753)))

(assert (=> bs!1373362 (not (= lambda!318541 lambda!318504))))

(declare-fun bs!1373363 () Bool)

(assert (= bs!1373363 (and d!1831835 d!1831755)))

(assert (=> bs!1373363 (not (= lambda!318541 lambda!318508))))

(declare-fun bs!1373364 () Bool)

(assert (= bs!1373364 (and d!1831835 b!5820342)))

(assert (=> bs!1373364 (= lambda!318541 lambda!318449)))

(declare-fun bs!1373365 () Bool)

(assert (= bs!1373365 (and d!1831835 b!5820352)))

(assert (=> bs!1373365 (not (= lambda!318541 lambda!318451))))

(declare-fun bs!1373366 () Bool)

(assert (= bs!1373366 (and d!1831835 d!1831741)))

(assert (=> bs!1373366 (not (= lambda!318541 lambda!318493))))

(declare-fun bs!1373367 () Bool)

(assert (= bs!1373367 (and d!1831835 d!1831747)))

(assert (=> bs!1373367 (not (= lambda!318541 lambda!318496))))

(assert (=> bs!1373362 (= lambda!318541 lambda!318505)))

(declare-fun bs!1373368 () Bool)

(assert (= bs!1373368 (and d!1831835 d!1831739)))

(assert (=> bs!1373368 (not (= lambda!318541 lambda!318491))))

(declare-fun bs!1373369 () Bool)

(assert (= bs!1373369 (and d!1831835 d!1831751)))

(assert (=> bs!1373369 (not (= lambda!318541 lambda!318499))))

(assert (=> d!1831835 true))

(assert (=> d!1831835 (= (matchR!8047 r!7292 s!2326) (exists!2287 lt!2302084 lambda!318541))))

(assert (=> d!1831835 true))

(declare-fun _$85!182 () Unit!156996)

(assert (=> d!1831835 (= (choose!44241 r!7292 lt!2302084 s!2326) _$85!182)))

(declare-fun bs!1373370 () Bool)

(assert (= bs!1373370 d!1831835))

(assert (=> bs!1373370 m!6755674))

(declare-fun m!6756042 () Bool)

(assert (=> bs!1373370 m!6756042))

(assert (=> d!1831753 d!1831835))

(declare-fun d!1831837 () Bool)

(declare-fun res!2454623 () Bool)

(declare-fun e!3572366 () Bool)

(assert (=> d!1831837 (=> res!2454623 e!3572366)))

(assert (=> d!1831837 (= res!2454623 (is-Nil!63761 lt!2302084))))

(assert (=> d!1831837 (= (forall!14954 lt!2302084 lambda!318504) e!3572366)))

(declare-fun b!5820930 () Bool)

(declare-fun e!3572367 () Bool)

(assert (=> b!5820930 (= e!3572366 e!3572367)))

(declare-fun res!2454624 () Bool)

(assert (=> b!5820930 (=> (not res!2454624) (not e!3572367))))

(assert (=> b!5820930 (= res!2454624 (dynLambda!24958 lambda!318504 (h!70209 lt!2302084)))))

(declare-fun b!5820931 () Bool)

(assert (=> b!5820931 (= e!3572367 (forall!14954 (t!377240 lt!2302084) lambda!318504))))

(assert (= (and d!1831837 (not res!2454623)) b!5820930))

(assert (= (and b!5820930 res!2454624) b!5820931))

(declare-fun b_lambda!219429 () Bool)

(assert (=> (not b_lambda!219429) (not b!5820930)))

(declare-fun m!6756044 () Bool)

(assert (=> b!5820930 m!6756044))

(declare-fun m!6756046 () Bool)

(assert (=> b!5820931 m!6756046))

(assert (=> d!1831753 d!1831837))

(declare-fun d!1831839 () Bool)

(declare-fun res!2454625 () Bool)

(declare-fun e!3572368 () Bool)

(assert (=> d!1831839 (=> res!2454625 e!3572368)))

(assert (=> d!1831839 (= res!2454625 (is-Nil!63761 (t!377240 (exprs!5746 lt!2302077))))))

(assert (=> d!1831839 (= (forall!14954 (t!377240 (exprs!5746 lt!2302077)) lambda!318451) e!3572368)))

(declare-fun b!5820932 () Bool)

(declare-fun e!3572369 () Bool)

(assert (=> b!5820932 (= e!3572368 e!3572369)))

(declare-fun res!2454626 () Bool)

(assert (=> b!5820932 (=> (not res!2454626) (not e!3572369))))

(assert (=> b!5820932 (= res!2454626 (dynLambda!24958 lambda!318451 (h!70209 (t!377240 (exprs!5746 lt!2302077)))))))

(declare-fun b!5820933 () Bool)

(assert (=> b!5820933 (= e!3572369 (forall!14954 (t!377240 (t!377240 (exprs!5746 lt!2302077))) lambda!318451))))

(assert (= (and d!1831839 (not res!2454625)) b!5820932))

(assert (= (and b!5820932 res!2454626) b!5820933))

(declare-fun b_lambda!219431 () Bool)

(assert (=> (not b_lambda!219431) (not b!5820932)))

(declare-fun m!6756048 () Bool)

(assert (=> b!5820932 m!6756048))

(declare-fun m!6756050 () Bool)

(assert (=> b!5820933 m!6756050))

(assert (=> b!5820618 d!1831839))

(declare-fun bs!1373371 () Bool)

(declare-fun b!5820935 () Bool)

(assert (= bs!1373371 (and b!5820935 b!5820458)))

(declare-fun lambda!318542 () Int)

(assert (=> bs!1373371 (= (and (= (reg!16191 (regOne!32237 r!7292)) (reg!16191 r!7292)) (= (regOne!32237 r!7292) r!7292)) (= lambda!318542 lambda!318473))))

(declare-fun bs!1373372 () Bool)

(assert (= bs!1373372 (and b!5820935 b!5820466)))

(assert (=> bs!1373372 (not (= lambda!318542 lambda!318474))))

(declare-fun bs!1373373 () Bool)

(assert (= bs!1373373 (and b!5820935 b!5820901)))

(assert (=> bs!1373373 (= (and (= (reg!16191 (regOne!32237 r!7292)) (reg!16191 (regTwo!32237 r!7292))) (= (regOne!32237 r!7292) (regTwo!32237 r!7292))) (= lambda!318542 lambda!318531))))

(declare-fun bs!1373374 () Bool)

(assert (= bs!1373374 (and b!5820935 b!5820909)))

(assert (=> bs!1373374 (not (= lambda!318542 lambda!318532))))

(assert (=> b!5820935 true))

(assert (=> b!5820935 true))

(declare-fun bs!1373375 () Bool)

(declare-fun b!5820943 () Bool)

(assert (= bs!1373375 (and b!5820943 b!5820935)))

(declare-fun lambda!318543 () Int)

(assert (=> bs!1373375 (not (= lambda!318543 lambda!318542))))

(declare-fun bs!1373376 () Bool)

(assert (= bs!1373376 (and b!5820943 b!5820901)))

(assert (=> bs!1373376 (not (= lambda!318543 lambda!318531))))

(declare-fun bs!1373377 () Bool)

(assert (= bs!1373377 (and b!5820943 b!5820909)))

(assert (=> bs!1373377 (= (and (= (regOne!32236 (regOne!32237 r!7292)) (regOne!32236 (regTwo!32237 r!7292))) (= (regTwo!32236 (regOne!32237 r!7292)) (regTwo!32236 (regTwo!32237 r!7292)))) (= lambda!318543 lambda!318532))))

(declare-fun bs!1373378 () Bool)

(assert (= bs!1373378 (and b!5820943 b!5820458)))

(assert (=> bs!1373378 (not (= lambda!318543 lambda!318473))))

(declare-fun bs!1373379 () Bool)

(assert (= bs!1373379 (and b!5820943 b!5820466)))

(assert (=> bs!1373379 (= (and (= (regOne!32236 (regOne!32237 r!7292)) (regOne!32236 r!7292)) (= (regTwo!32236 (regOne!32237 r!7292)) (regTwo!32236 r!7292))) (= lambda!318543 lambda!318474))))

(assert (=> b!5820943 true))

(assert (=> b!5820943 true))

(declare-fun b!5820934 () Bool)

(declare-fun e!3572376 () Bool)

(declare-fun e!3572374 () Bool)

(assert (=> b!5820934 (= e!3572376 e!3572374)))

(declare-fun res!2454628 () Bool)

(assert (=> b!5820934 (= res!2454628 (matchRSpec!2965 (regOne!32237 (regOne!32237 r!7292)) s!2326))))

(assert (=> b!5820934 (=> res!2454628 e!3572374)))

(declare-fun e!3572372 () Bool)

(declare-fun call!454576 () Bool)

(assert (=> b!5820935 (= e!3572372 call!454576)))

(declare-fun b!5820936 () Bool)

(declare-fun res!2454629 () Bool)

(assert (=> b!5820936 (=> res!2454629 e!3572372)))

(declare-fun call!454577 () Bool)

(assert (=> b!5820936 (= res!2454629 call!454577)))

(declare-fun e!3572371 () Bool)

(assert (=> b!5820936 (= e!3572371 e!3572372)))

(declare-fun b!5820937 () Bool)

(assert (=> b!5820937 (= e!3572374 (matchRSpec!2965 (regTwo!32237 (regOne!32237 r!7292)) s!2326))))

(declare-fun b!5820938 () Bool)

(declare-fun e!3572375 () Bool)

(assert (=> b!5820938 (= e!3572375 call!454577)))

(declare-fun b!5820939 () Bool)

(declare-fun c!1031551 () Bool)

(assert (=> b!5820939 (= c!1031551 (is-Union!15862 (regOne!32237 r!7292)))))

(declare-fun e!3572370 () Bool)

(assert (=> b!5820939 (= e!3572370 e!3572376)))

(declare-fun b!5820940 () Bool)

(declare-fun e!3572373 () Bool)

(assert (=> b!5820940 (= e!3572375 e!3572373)))

(declare-fun res!2454627 () Bool)

(assert (=> b!5820940 (= res!2454627 (not (is-EmptyLang!15862 (regOne!32237 r!7292))))))

(assert (=> b!5820940 (=> (not res!2454627) (not e!3572373))))

(declare-fun d!1831841 () Bool)

(declare-fun c!1031552 () Bool)

(assert (=> d!1831841 (= c!1031552 (is-EmptyExpr!15862 (regOne!32237 r!7292)))))

(assert (=> d!1831841 (= (matchRSpec!2965 (regOne!32237 r!7292) s!2326) e!3572375)))

(declare-fun b!5820941 () Bool)

(declare-fun c!1031550 () Bool)

(assert (=> b!5820941 (= c!1031550 (is-ElementMatch!15862 (regOne!32237 r!7292)))))

(assert (=> b!5820941 (= e!3572373 e!3572370)))

(declare-fun b!5820942 () Bool)

(assert (=> b!5820942 (= e!3572376 e!3572371)))

(declare-fun c!1031549 () Bool)

(assert (=> b!5820942 (= c!1031549 (is-Star!15862 (regOne!32237 r!7292)))))

(assert (=> b!5820943 (= e!3572371 call!454576)))

(declare-fun b!5820944 () Bool)

(assert (=> b!5820944 (= e!3572370 (= s!2326 (Cons!63763 (c!1031430 (regOne!32237 r!7292)) Nil!63763)))))

(declare-fun bm!454571 () Bool)

(assert (=> bm!454571 (= call!454576 (Exists!2946 (ite c!1031549 lambda!318542 lambda!318543)))))

(declare-fun bm!454572 () Bool)

(assert (=> bm!454572 (= call!454577 (isEmpty!35647 s!2326))))

(assert (= (and d!1831841 c!1031552) b!5820938))

(assert (= (and d!1831841 (not c!1031552)) b!5820940))

(assert (= (and b!5820940 res!2454627) b!5820941))

(assert (= (and b!5820941 c!1031550) b!5820944))

(assert (= (and b!5820941 (not c!1031550)) b!5820939))

(assert (= (and b!5820939 c!1031551) b!5820934))

(assert (= (and b!5820939 (not c!1031551)) b!5820942))

(assert (= (and b!5820934 (not res!2454628)) b!5820937))

(assert (= (and b!5820942 c!1031549) b!5820936))

(assert (= (and b!5820942 (not c!1031549)) b!5820943))

(assert (= (and b!5820936 (not res!2454629)) b!5820935))

(assert (= (or b!5820935 b!5820943) bm!454571))

(assert (= (or b!5820938 b!5820936) bm!454572))

(declare-fun m!6756052 () Bool)

(assert (=> b!5820934 m!6756052))

(declare-fun m!6756054 () Bool)

(assert (=> b!5820937 m!6756054))

(declare-fun m!6756056 () Bool)

(assert (=> bm!454571 m!6756056))

(assert (=> bm!454572 m!6755762))

(assert (=> b!5820457 d!1831841))

(declare-fun b!5820945 () Bool)

(declare-fun e!3572379 () Bool)

(declare-fun e!3572378 () Bool)

(assert (=> b!5820945 (= e!3572379 e!3572378)))

(declare-fun c!1031553 () Bool)

(assert (=> b!5820945 (= c!1031553 (is-Star!15862 (ite c!1031485 (reg!16191 r!7292) (ite c!1031486 (regTwo!32237 r!7292) (regTwo!32236 r!7292)))))))

(declare-fun b!5820946 () Bool)

(declare-fun res!2454632 () Bool)

(declare-fun e!3572383 () Bool)

(assert (=> b!5820946 (=> (not res!2454632) (not e!3572383))))

(declare-fun call!454578 () Bool)

(assert (=> b!5820946 (= res!2454632 call!454578)))

(declare-fun e!3572377 () Bool)

(assert (=> b!5820946 (= e!3572377 e!3572383)))

(declare-fun b!5820947 () Bool)

(declare-fun call!454579 () Bool)

(assert (=> b!5820947 (= e!3572383 call!454579)))

(declare-fun d!1831843 () Bool)

(declare-fun res!2454633 () Bool)

(assert (=> d!1831843 (=> res!2454633 e!3572379)))

(assert (=> d!1831843 (= res!2454633 (is-ElementMatch!15862 (ite c!1031485 (reg!16191 r!7292) (ite c!1031486 (regTwo!32237 r!7292) (regTwo!32236 r!7292)))))))

(assert (=> d!1831843 (= (validRegex!7598 (ite c!1031485 (reg!16191 r!7292) (ite c!1031486 (regTwo!32237 r!7292) (regTwo!32236 r!7292)))) e!3572379)))

(declare-fun bm!454573 () Bool)

(declare-fun call!454580 () Bool)

(assert (=> bm!454573 (= call!454579 call!454580)))

(declare-fun b!5820948 () Bool)

(declare-fun e!3572382 () Bool)

(assert (=> b!5820948 (= e!3572382 call!454579)))

(declare-fun c!1031554 () Bool)

(declare-fun bm!454574 () Bool)

(assert (=> bm!454574 (= call!454580 (validRegex!7598 (ite c!1031553 (reg!16191 (ite c!1031485 (reg!16191 r!7292) (ite c!1031486 (regTwo!32237 r!7292) (regTwo!32236 r!7292)))) (ite c!1031554 (regTwo!32237 (ite c!1031485 (reg!16191 r!7292) (ite c!1031486 (regTwo!32237 r!7292) (regTwo!32236 r!7292)))) (regTwo!32236 (ite c!1031485 (reg!16191 r!7292) (ite c!1031486 (regTwo!32237 r!7292) (regTwo!32236 r!7292))))))))))

(declare-fun b!5820949 () Bool)

(assert (=> b!5820949 (= e!3572378 e!3572377)))

(assert (=> b!5820949 (= c!1031554 (is-Union!15862 (ite c!1031485 (reg!16191 r!7292) (ite c!1031486 (regTwo!32237 r!7292) (regTwo!32236 r!7292)))))))

(declare-fun b!5820950 () Bool)

(declare-fun e!3572380 () Bool)

(assert (=> b!5820950 (= e!3572380 call!454580)))

(declare-fun bm!454575 () Bool)

(assert (=> bm!454575 (= call!454578 (validRegex!7598 (ite c!1031554 (regOne!32237 (ite c!1031485 (reg!16191 r!7292) (ite c!1031486 (regTwo!32237 r!7292) (regTwo!32236 r!7292)))) (regOne!32236 (ite c!1031485 (reg!16191 r!7292) (ite c!1031486 (regTwo!32237 r!7292) (regTwo!32236 r!7292)))))))))

(declare-fun b!5820951 () Bool)

(assert (=> b!5820951 (= e!3572378 e!3572380)))

(declare-fun res!2454634 () Bool)

(assert (=> b!5820951 (= res!2454634 (not (nullable!5870 (reg!16191 (ite c!1031485 (reg!16191 r!7292) (ite c!1031486 (regTwo!32237 r!7292) (regTwo!32236 r!7292)))))))))

(assert (=> b!5820951 (=> (not res!2454634) (not e!3572380))))

(declare-fun b!5820952 () Bool)

(declare-fun e!3572381 () Bool)

(assert (=> b!5820952 (= e!3572381 e!3572382)))

(declare-fun res!2454630 () Bool)

(assert (=> b!5820952 (=> (not res!2454630) (not e!3572382))))

(assert (=> b!5820952 (= res!2454630 call!454578)))

(declare-fun b!5820953 () Bool)

(declare-fun res!2454631 () Bool)

(assert (=> b!5820953 (=> res!2454631 e!3572381)))

(assert (=> b!5820953 (= res!2454631 (not (is-Concat!24707 (ite c!1031485 (reg!16191 r!7292) (ite c!1031486 (regTwo!32237 r!7292) (regTwo!32236 r!7292))))))))

(assert (=> b!5820953 (= e!3572377 e!3572381)))

(assert (= (and d!1831843 (not res!2454633)) b!5820945))

(assert (= (and b!5820945 c!1031553) b!5820951))

(assert (= (and b!5820945 (not c!1031553)) b!5820949))

(assert (= (and b!5820951 res!2454634) b!5820950))

(assert (= (and b!5820949 c!1031554) b!5820946))

(assert (= (and b!5820949 (not c!1031554)) b!5820953))

(assert (= (and b!5820946 res!2454632) b!5820947))

(assert (= (and b!5820953 (not res!2454631)) b!5820952))

(assert (= (and b!5820952 res!2454630) b!5820948))

(assert (= (or b!5820947 b!5820948) bm!454573))

(assert (= (or b!5820946 b!5820952) bm!454575))

(assert (= (or b!5820950 bm!454573) bm!454574))

(declare-fun m!6756058 () Bool)

(assert (=> bm!454574 m!6756058))

(declare-fun m!6756060 () Bool)

(assert (=> bm!454575 m!6756060))

(declare-fun m!6756062 () Bool)

(assert (=> b!5820951 m!6756062))

(assert (=> bm!454552 d!1831843))

(assert (=> d!1831729 d!1831727))

(assert (=> d!1831729 d!1831725))

(declare-fun d!1831845 () Bool)

(assert (=> d!1831845 (< (contextDepthTotal!243 lt!2302077) (zipperDepthTotal!265 zl!343))))

(assert (=> d!1831845 true))

(declare-fun _$54!189 () Unit!156996)

(assert (=> d!1831845 (= (choose!44239 zl!343 lt!2302077) _$54!189)))

(declare-fun bs!1373380 () Bool)

(assert (= bs!1373380 d!1831845))

(assert (=> bs!1373380 m!6755690))

(assert (=> bs!1373380 m!6755688))

(assert (=> d!1831729 d!1831845))

(declare-fun d!1831847 () Bool)

(declare-fun lt!2302197 () Bool)

(assert (=> d!1831847 (= lt!2302197 (set.member lt!2302077 (content!11703 zl!343)))))

(declare-fun e!3572389 () Bool)

(assert (=> d!1831847 (= lt!2302197 e!3572389)))

(declare-fun res!2454639 () Bool)

(assert (=> d!1831847 (=> (not res!2454639) (not e!3572389))))

(assert (=> d!1831847 (= res!2454639 (is-Cons!63762 zl!343))))

(assert (=> d!1831847 (= (contains!19898 zl!343 lt!2302077) lt!2302197)))

(declare-fun b!5820958 () Bool)

(declare-fun e!3572388 () Bool)

(assert (=> b!5820958 (= e!3572389 e!3572388)))

(declare-fun res!2454640 () Bool)

(assert (=> b!5820958 (=> res!2454640 e!3572388)))

(assert (=> b!5820958 (= res!2454640 (= (h!70210 zl!343) lt!2302077))))

(declare-fun b!5820959 () Bool)

(assert (=> b!5820959 (= e!3572388 (contains!19898 (t!377241 zl!343) lt!2302077))))

(assert (= (and d!1831847 res!2454639) b!5820958))

(assert (= (and b!5820958 (not res!2454640)) b!5820959))

(assert (=> d!1831847 m!6755792))

(declare-fun m!6756064 () Bool)

(assert (=> d!1831847 m!6756064))

(declare-fun m!6756066 () Bool)

(assert (=> b!5820959 m!6756066))

(assert (=> d!1831729 d!1831847))

(declare-fun d!1831849 () Bool)

(declare-fun res!2454641 () Bool)

(declare-fun e!3572390 () Bool)

(assert (=> d!1831849 (=> res!2454641 e!3572390)))

(assert (=> d!1831849 (= res!2454641 (is-Nil!63761 (exprs!5746 (h!70210 zl!343))))))

(assert (=> d!1831849 (= (forall!14954 (exprs!5746 (h!70210 zl!343)) lambda!318493) e!3572390)))

(declare-fun b!5820960 () Bool)

(declare-fun e!3572391 () Bool)

(assert (=> b!5820960 (= e!3572390 e!3572391)))

(declare-fun res!2454642 () Bool)

(assert (=> b!5820960 (=> (not res!2454642) (not e!3572391))))

(assert (=> b!5820960 (= res!2454642 (dynLambda!24958 lambda!318493 (h!70209 (exprs!5746 (h!70210 zl!343)))))))

(declare-fun b!5820961 () Bool)

(assert (=> b!5820961 (= e!3572391 (forall!14954 (t!377240 (exprs!5746 (h!70210 zl!343))) lambda!318493))))

(assert (= (and d!1831849 (not res!2454641)) b!5820960))

(assert (= (and b!5820960 res!2454642) b!5820961))

(declare-fun b_lambda!219433 () Bool)

(assert (=> (not b_lambda!219433) (not b!5820960)))

(declare-fun m!6756068 () Bool)

(assert (=> b!5820960 m!6756068))

(declare-fun m!6756070 () Bool)

(assert (=> b!5820961 m!6756070))

(assert (=> d!1831741 d!1831849))

(declare-fun b!5820962 () Bool)

(declare-fun e!3572394 () Bool)

(declare-fun e!3572393 () Bool)

(assert (=> b!5820962 (= e!3572394 e!3572393)))

(declare-fun c!1031556 () Bool)

(assert (=> b!5820962 (= c!1031556 (is-Star!15862 lt!2302139))))

(declare-fun b!5820963 () Bool)

(declare-fun res!2454645 () Bool)

(declare-fun e!3572398 () Bool)

(assert (=> b!5820963 (=> (not res!2454645) (not e!3572398))))

(declare-fun call!454581 () Bool)

(assert (=> b!5820963 (= res!2454645 call!454581)))

(declare-fun e!3572392 () Bool)

(assert (=> b!5820963 (= e!3572392 e!3572398)))

(declare-fun b!5820964 () Bool)

(declare-fun call!454582 () Bool)

(assert (=> b!5820964 (= e!3572398 call!454582)))

(declare-fun d!1831851 () Bool)

(declare-fun res!2454646 () Bool)

(assert (=> d!1831851 (=> res!2454646 e!3572394)))

(assert (=> d!1831851 (= res!2454646 (is-ElementMatch!15862 lt!2302139))))

(assert (=> d!1831851 (= (validRegex!7598 lt!2302139) e!3572394)))

(declare-fun bm!454576 () Bool)

(declare-fun call!454583 () Bool)

(assert (=> bm!454576 (= call!454582 call!454583)))

(declare-fun b!5820965 () Bool)

(declare-fun e!3572397 () Bool)

(assert (=> b!5820965 (= e!3572397 call!454582)))

(declare-fun bm!454577 () Bool)

(declare-fun c!1031557 () Bool)

(assert (=> bm!454577 (= call!454583 (validRegex!7598 (ite c!1031556 (reg!16191 lt!2302139) (ite c!1031557 (regTwo!32237 lt!2302139) (regTwo!32236 lt!2302139)))))))

(declare-fun b!5820966 () Bool)

(assert (=> b!5820966 (= e!3572393 e!3572392)))

(assert (=> b!5820966 (= c!1031557 (is-Union!15862 lt!2302139))))

(declare-fun b!5820967 () Bool)

(declare-fun e!3572395 () Bool)

(assert (=> b!5820967 (= e!3572395 call!454583)))

(declare-fun bm!454578 () Bool)

(assert (=> bm!454578 (= call!454581 (validRegex!7598 (ite c!1031557 (regOne!32237 lt!2302139) (regOne!32236 lt!2302139))))))

(declare-fun b!5820968 () Bool)

(assert (=> b!5820968 (= e!3572393 e!3572395)))

(declare-fun res!2454647 () Bool)

(assert (=> b!5820968 (= res!2454647 (not (nullable!5870 (reg!16191 lt!2302139))))))

(assert (=> b!5820968 (=> (not res!2454647) (not e!3572395))))

(declare-fun b!5820969 () Bool)

(declare-fun e!3572396 () Bool)

(assert (=> b!5820969 (= e!3572396 e!3572397)))

(declare-fun res!2454643 () Bool)

(assert (=> b!5820969 (=> (not res!2454643) (not e!3572397))))

(assert (=> b!5820969 (= res!2454643 call!454581)))

(declare-fun b!5820970 () Bool)

(declare-fun res!2454644 () Bool)

(assert (=> b!5820970 (=> res!2454644 e!3572396)))

(assert (=> b!5820970 (= res!2454644 (not (is-Concat!24707 lt!2302139)))))

(assert (=> b!5820970 (= e!3572392 e!3572396)))

(assert (= (and d!1831851 (not res!2454646)) b!5820962))

(assert (= (and b!5820962 c!1031556) b!5820968))

(assert (= (and b!5820962 (not c!1031556)) b!5820966))

(assert (= (and b!5820968 res!2454647) b!5820967))

(assert (= (and b!5820966 c!1031557) b!5820963))

(assert (= (and b!5820966 (not c!1031557)) b!5820970))

(assert (= (and b!5820963 res!2454645) b!5820964))

(assert (= (and b!5820970 (not res!2454644)) b!5820969))

(assert (= (and b!5820969 res!2454643) b!5820965))

(assert (= (or b!5820964 b!5820965) bm!454576))

(assert (= (or b!5820963 b!5820969) bm!454578))

(assert (= (or b!5820967 bm!454576) bm!454577))

(declare-fun m!6756072 () Bool)

(assert (=> bm!454577 m!6756072))

(declare-fun m!6756074 () Bool)

(assert (=> bm!454578 m!6756074))

(declare-fun m!6756076 () Bool)

(assert (=> b!5820968 m!6756076))

(assert (=> d!1831735 d!1831851))

(declare-fun bs!1373381 () Bool)

(declare-fun d!1831853 () Bool)

(assert (= bs!1373381 (and d!1831853 d!1831833)))

(declare-fun lambda!318546 () Int)

(assert (=> bs!1373381 (not (= lambda!318546 lambda!318538))))

(declare-fun bs!1373382 () Bool)

(assert (= bs!1373382 (and d!1831853 d!1831835)))

(assert (=> bs!1373382 (not (= lambda!318546 lambda!318541))))

(declare-fun bs!1373383 () Bool)

(assert (= bs!1373383 (and d!1831853 d!1831829)))

(assert (=> bs!1373383 (= lambda!318546 lambda!318537)))

(declare-fun bs!1373384 () Bool)

(assert (= bs!1373384 (and d!1831853 d!1831753)))

(assert (=> bs!1373384 (= lambda!318546 lambda!318504)))

(declare-fun bs!1373385 () Bool)

(assert (= bs!1373385 (and d!1831853 d!1831755)))

(assert (=> bs!1373385 (= lambda!318546 lambda!318508)))

(declare-fun bs!1373386 () Bool)

(assert (= bs!1373386 (and d!1831853 b!5820342)))

(assert (=> bs!1373386 (not (= lambda!318546 lambda!318449))))

(declare-fun bs!1373387 () Bool)

(assert (= bs!1373387 (and d!1831853 b!5820352)))

(assert (=> bs!1373387 (= lambda!318546 lambda!318451)))

(declare-fun bs!1373388 () Bool)

(assert (= bs!1373388 (and d!1831853 d!1831741)))

(assert (=> bs!1373388 (= lambda!318546 lambda!318493)))

(declare-fun bs!1373389 () Bool)

(assert (= bs!1373389 (and d!1831853 d!1831747)))

(assert (=> bs!1373389 (= lambda!318546 lambda!318496)))

(assert (=> bs!1373384 (not (= lambda!318546 lambda!318505))))

(declare-fun bs!1373390 () Bool)

(assert (= bs!1373390 (and d!1831853 d!1831739)))

(assert (=> bs!1373390 (= lambda!318546 lambda!318491)))

(declare-fun bs!1373391 () Bool)

(assert (= bs!1373391 (and d!1831853 d!1831751)))

(assert (=> bs!1373391 (not (= lambda!318546 lambda!318499))))

(declare-fun b!5820991 () Bool)

(declare-fun e!3572412 () Bool)

(declare-fun lt!2302200 () Regex!15862)

(declare-fun head!12302 (List!63885) Regex!15862)

(assert (=> b!5820991 (= e!3572412 (= lt!2302200 (head!12302 (unfocusZipperList!1284 zl!343))))))

(declare-fun b!5820992 () Bool)

(declare-fun e!3572413 () Bool)

(declare-fun isEmptyLang!1317 (Regex!15862) Bool)

(assert (=> b!5820992 (= e!3572413 (isEmptyLang!1317 lt!2302200))))

(declare-fun b!5820993 () Bool)

(declare-fun e!3572416 () Bool)

(declare-fun isEmpty!35649 (List!63885) Bool)

(assert (=> b!5820993 (= e!3572416 (isEmpty!35649 (t!377240 (unfocusZipperList!1284 zl!343))))))

(declare-fun b!5820994 () Bool)

(declare-fun e!3572411 () Regex!15862)

(assert (=> b!5820994 (= e!3572411 EmptyLang!15862)))

(declare-fun b!5820995 () Bool)

(declare-fun isUnion!747 (Regex!15862) Bool)

(assert (=> b!5820995 (= e!3572412 (isUnion!747 lt!2302200))))

(declare-fun b!5820996 () Bool)

(declare-fun e!3572415 () Regex!15862)

(assert (=> b!5820996 (= e!3572415 e!3572411)))

(declare-fun c!1031569 () Bool)

(assert (=> b!5820996 (= c!1031569 (is-Cons!63761 (unfocusZipperList!1284 zl!343)))))

(declare-fun b!5820997 () Bool)

(assert (=> b!5820997 (= e!3572413 e!3572412)))

(declare-fun c!1031568 () Bool)

(declare-fun tail!11387 (List!63885) List!63885)

(assert (=> b!5820997 (= c!1031568 (isEmpty!35649 (tail!11387 (unfocusZipperList!1284 zl!343))))))

(declare-fun e!3572414 () Bool)

(assert (=> d!1831853 e!3572414))

(declare-fun res!2454652 () Bool)

(assert (=> d!1831853 (=> (not res!2454652) (not e!3572414))))

(assert (=> d!1831853 (= res!2454652 (validRegex!7598 lt!2302200))))

(assert (=> d!1831853 (= lt!2302200 e!3572415)))

(declare-fun c!1031567 () Bool)

(assert (=> d!1831853 (= c!1031567 e!3572416)))

(declare-fun res!2454653 () Bool)

(assert (=> d!1831853 (=> (not res!2454653) (not e!3572416))))

(assert (=> d!1831853 (= res!2454653 (is-Cons!63761 (unfocusZipperList!1284 zl!343)))))

(assert (=> d!1831853 (forall!14954 (unfocusZipperList!1284 zl!343) lambda!318546)))

(assert (=> d!1831853 (= (generalisedUnion!1709 (unfocusZipperList!1284 zl!343)) lt!2302200)))

(declare-fun b!5820998 () Bool)

(assert (=> b!5820998 (= e!3572411 (Union!15862 (h!70209 (unfocusZipperList!1284 zl!343)) (generalisedUnion!1709 (t!377240 (unfocusZipperList!1284 zl!343)))))))

(declare-fun b!5820999 () Bool)

(assert (=> b!5820999 (= e!3572414 e!3572413)))

(declare-fun c!1031566 () Bool)

(assert (=> b!5820999 (= c!1031566 (isEmpty!35649 (unfocusZipperList!1284 zl!343)))))

(declare-fun b!5821000 () Bool)

(assert (=> b!5821000 (= e!3572415 (h!70209 (unfocusZipperList!1284 zl!343)))))

(assert (= (and d!1831853 res!2454653) b!5820993))

(assert (= (and d!1831853 c!1031567) b!5821000))

(assert (= (and d!1831853 (not c!1031567)) b!5820996))

(assert (= (and b!5820996 c!1031569) b!5820998))

(assert (= (and b!5820996 (not c!1031569)) b!5820994))

(assert (= (and d!1831853 res!2454652) b!5820999))

(assert (= (and b!5820999 c!1031566) b!5820992))

(assert (= (and b!5820999 (not c!1031566)) b!5820997))

(assert (= (and b!5820997 c!1031568) b!5820991))

(assert (= (and b!5820997 (not c!1031568)) b!5820995))

(assert (=> b!5820997 m!6755698))

(declare-fun m!6756078 () Bool)

(assert (=> b!5820997 m!6756078))

(assert (=> b!5820997 m!6756078))

(declare-fun m!6756080 () Bool)

(assert (=> b!5820997 m!6756080))

(declare-fun m!6756082 () Bool)

(assert (=> d!1831853 m!6756082))

(assert (=> d!1831853 m!6755698))

(declare-fun m!6756084 () Bool)

(assert (=> d!1831853 m!6756084))

(declare-fun m!6756086 () Bool)

(assert (=> b!5820998 m!6756086))

(declare-fun m!6756088 () Bool)

(assert (=> b!5820993 m!6756088))

(assert (=> b!5820999 m!6755698))

(declare-fun m!6756090 () Bool)

(assert (=> b!5820999 m!6756090))

(declare-fun m!6756092 () Bool)

(assert (=> b!5820995 m!6756092))

(declare-fun m!6756094 () Bool)

(assert (=> b!5820992 m!6756094))

(assert (=> b!5820991 m!6755698))

(declare-fun m!6756096 () Bool)

(assert (=> b!5820991 m!6756096))

(assert (=> d!1831735 d!1831853))

(assert (=> d!1831735 d!1831755))

(declare-fun d!1831855 () Bool)

(declare-fun res!2454658 () Bool)

(declare-fun e!3572421 () Bool)

(assert (=> d!1831855 (=> res!2454658 e!3572421)))

(assert (=> d!1831855 (= res!2454658 (is-Nil!63762 zl!343))))

(assert (=> d!1831855 (= (forall!14956 zl!343 lambda!318480) e!3572421)))

(declare-fun b!5821005 () Bool)

(declare-fun e!3572422 () Bool)

(assert (=> b!5821005 (= e!3572421 e!3572422)))

(declare-fun res!2454659 () Bool)

(assert (=> b!5821005 (=> (not res!2454659) (not e!3572422))))

(assert (=> b!5821005 (= res!2454659 (dynLambda!24959 lambda!318480 (h!70210 zl!343)))))

(declare-fun b!5821006 () Bool)

(assert (=> b!5821006 (= e!3572422 (forall!14956 (t!377241 zl!343) lambda!318480))))

(assert (= (and d!1831855 (not res!2454658)) b!5821005))

(assert (= (and b!5821005 res!2454659) b!5821006))

(declare-fun b_lambda!219435 () Bool)

(assert (=> (not b_lambda!219435) (not b!5821005)))

(declare-fun m!6756098 () Bool)

(assert (=> b!5821005 m!6756098))

(declare-fun m!6756100 () Bool)

(assert (=> b!5821006 m!6756100))

(assert (=> d!1831719 d!1831855))

(declare-fun d!1831857 () Bool)

(declare-fun lt!2302201 () Int)

(assert (=> d!1831857 (>= lt!2302201 0)))

(declare-fun e!3572423 () Int)

(assert (=> d!1831857 (= lt!2302201 e!3572423)))

(declare-fun c!1031570 () Bool)

(assert (=> d!1831857 (= c!1031570 (is-Cons!63761 (exprs!5746 (h!70210 (Cons!63762 lt!2302077 Nil!63762)))))))

(assert (=> d!1831857 (= (contextDepthTotal!243 (h!70210 (Cons!63762 lt!2302077 Nil!63762))) lt!2302201)))

(declare-fun b!5821007 () Bool)

(assert (=> b!5821007 (= e!3572423 (+ (regexDepthTotal!110 (h!70209 (exprs!5746 (h!70210 (Cons!63762 lt!2302077 Nil!63762))))) (contextDepthTotal!243 (Context!10493 (t!377240 (exprs!5746 (h!70210 (Cons!63762 lt!2302077 Nil!63762))))))))))

(declare-fun b!5821008 () Bool)

(assert (=> b!5821008 (= e!3572423 1)))

(assert (= (and d!1831857 c!1031570) b!5821007))

(assert (= (and d!1831857 (not c!1031570)) b!5821008))

(declare-fun m!6756102 () Bool)

(assert (=> b!5821007 m!6756102))

(declare-fun m!6756104 () Bool)

(assert (=> b!5821007 m!6756104))

(assert (=> b!5820551 d!1831857))

(declare-fun d!1831859 () Bool)

(declare-fun lt!2302202 () Int)

(assert (=> d!1831859 (>= lt!2302202 0)))

(declare-fun e!3572424 () Int)

(assert (=> d!1831859 (= lt!2302202 e!3572424)))

(declare-fun c!1031571 () Bool)

(assert (=> d!1831859 (= c!1031571 (is-Cons!63762 (t!377241 (Cons!63762 lt!2302077 Nil!63762))))))

(assert (=> d!1831859 (= (zipperDepthTotal!265 (t!377241 (Cons!63762 lt!2302077 Nil!63762))) lt!2302202)))

(declare-fun b!5821009 () Bool)

(assert (=> b!5821009 (= e!3572424 (+ (contextDepthTotal!243 (h!70210 (t!377241 (Cons!63762 lt!2302077 Nil!63762)))) (zipperDepthTotal!265 (t!377241 (t!377241 (Cons!63762 lt!2302077 Nil!63762))))))))

(declare-fun b!5821010 () Bool)

(assert (=> b!5821010 (= e!3572424 0)))

(assert (= (and d!1831859 c!1031571) b!5821009))

(assert (= (and d!1831859 (not c!1031571)) b!5821010))

(declare-fun m!6756106 () Bool)

(assert (=> b!5821009 m!6756106))

(declare-fun m!6756108 () Bool)

(assert (=> b!5821009 m!6756108))

(assert (=> b!5820551 d!1831859))

(declare-fun d!1831861 () Bool)

(assert (=> d!1831861 (= (isEmpty!35647 s!2326) (is-Nil!63763 s!2326))))

(assert (=> d!1831711 d!1831861))

(assert (=> d!1831711 d!1831737))

(declare-fun d!1831863 () Bool)

(declare-fun c!1031572 () Bool)

(assert (=> d!1831863 (= c!1031572 (is-Nil!63762 lt!2302159))))

(declare-fun e!3572425 () (Set Context!10492))

(assert (=> d!1831863 (= (content!11703 lt!2302159) e!3572425)))

(declare-fun b!5821011 () Bool)

(assert (=> b!5821011 (= e!3572425 (as set.empty (Set Context!10492)))))

(declare-fun b!5821012 () Bool)

(assert (=> b!5821012 (= e!3572425 (set.union (set.insert (h!70210 lt!2302159) (as set.empty (Set Context!10492))) (content!11703 (t!377241 lt!2302159))))))

(assert (= (and d!1831863 c!1031572) b!5821011))

(assert (= (and d!1831863 (not c!1031572)) b!5821012))

(declare-fun m!6756110 () Bool)

(assert (=> b!5821012 m!6756110))

(declare-fun m!6756112 () Bool)

(assert (=> b!5821012 m!6756112))

(assert (=> b!5820677 d!1831863))

(declare-fun b!5821013 () Bool)

(declare-fun e!3572428 () Bool)

(declare-fun e!3572427 () Bool)

(assert (=> b!5821013 (= e!3572428 e!3572427)))

(declare-fun c!1031573 () Bool)

(assert (=> b!5821013 (= c!1031573 (is-Star!15862 (h!70209 (exprs!5746 lt!2302077))))))

(declare-fun b!5821014 () Bool)

(declare-fun res!2454662 () Bool)

(declare-fun e!3572432 () Bool)

(assert (=> b!5821014 (=> (not res!2454662) (not e!3572432))))

(declare-fun call!454584 () Bool)

(assert (=> b!5821014 (= res!2454662 call!454584)))

(declare-fun e!3572426 () Bool)

(assert (=> b!5821014 (= e!3572426 e!3572432)))

(declare-fun b!5821015 () Bool)

(declare-fun call!454585 () Bool)

(assert (=> b!5821015 (= e!3572432 call!454585)))

(declare-fun d!1831865 () Bool)

(declare-fun res!2454663 () Bool)

(assert (=> d!1831865 (=> res!2454663 e!3572428)))

(assert (=> d!1831865 (= res!2454663 (is-ElementMatch!15862 (h!70209 (exprs!5746 lt!2302077))))))

(assert (=> d!1831865 (= (validRegex!7598 (h!70209 (exprs!5746 lt!2302077))) e!3572428)))

(declare-fun bm!454579 () Bool)

(declare-fun call!454586 () Bool)

(assert (=> bm!454579 (= call!454585 call!454586)))

(declare-fun b!5821016 () Bool)

(declare-fun e!3572431 () Bool)

(assert (=> b!5821016 (= e!3572431 call!454585)))

(declare-fun c!1031574 () Bool)

(declare-fun bm!454580 () Bool)

(assert (=> bm!454580 (= call!454586 (validRegex!7598 (ite c!1031573 (reg!16191 (h!70209 (exprs!5746 lt!2302077))) (ite c!1031574 (regTwo!32237 (h!70209 (exprs!5746 lt!2302077))) (regTwo!32236 (h!70209 (exprs!5746 lt!2302077)))))))))

(declare-fun b!5821017 () Bool)

(assert (=> b!5821017 (= e!3572427 e!3572426)))

(assert (=> b!5821017 (= c!1031574 (is-Union!15862 (h!70209 (exprs!5746 lt!2302077))))))

(declare-fun b!5821018 () Bool)

(declare-fun e!3572429 () Bool)

(assert (=> b!5821018 (= e!3572429 call!454586)))

(declare-fun bm!454581 () Bool)

(assert (=> bm!454581 (= call!454584 (validRegex!7598 (ite c!1031574 (regOne!32237 (h!70209 (exprs!5746 lt!2302077))) (regOne!32236 (h!70209 (exprs!5746 lt!2302077))))))))

(declare-fun b!5821019 () Bool)

(assert (=> b!5821019 (= e!3572427 e!3572429)))

(declare-fun res!2454664 () Bool)

(assert (=> b!5821019 (= res!2454664 (not (nullable!5870 (reg!16191 (h!70209 (exprs!5746 lt!2302077))))))))

(assert (=> b!5821019 (=> (not res!2454664) (not e!3572429))))

(declare-fun b!5821020 () Bool)

(declare-fun e!3572430 () Bool)

(assert (=> b!5821020 (= e!3572430 e!3572431)))

(declare-fun res!2454660 () Bool)

(assert (=> b!5821020 (=> (not res!2454660) (not e!3572431))))

(assert (=> b!5821020 (= res!2454660 call!454584)))

(declare-fun b!5821021 () Bool)

(declare-fun res!2454661 () Bool)

(assert (=> b!5821021 (=> res!2454661 e!3572430)))

(assert (=> b!5821021 (= res!2454661 (not (is-Concat!24707 (h!70209 (exprs!5746 lt!2302077)))))))

(assert (=> b!5821021 (= e!3572426 e!3572430)))

(assert (= (and d!1831865 (not res!2454663)) b!5821013))

(assert (= (and b!5821013 c!1031573) b!5821019))

(assert (= (and b!5821013 (not c!1031573)) b!5821017))

(assert (= (and b!5821019 res!2454664) b!5821018))

(assert (= (and b!5821017 c!1031574) b!5821014))

(assert (= (and b!5821017 (not c!1031574)) b!5821021))

(assert (= (and b!5821014 res!2454662) b!5821015))

(assert (= (and b!5821021 (not res!2454661)) b!5821020))

(assert (= (and b!5821020 res!2454660) b!5821016))

(assert (= (or b!5821015 b!5821016) bm!454579))

(assert (= (or b!5821014 b!5821020) bm!454581))

(assert (= (or b!5821018 bm!454579) bm!454580))

(declare-fun m!6756114 () Bool)

(assert (=> bm!454580 m!6756114))

(declare-fun m!6756116 () Bool)

(assert (=> bm!454581 m!6756116))

(declare-fun m!6756118 () Bool)

(assert (=> b!5821019 m!6756118))

(assert (=> bs!1373285 d!1831865))

(declare-fun b!5821022 () Bool)

(declare-fun e!3572435 () Bool)

(assert (=> b!5821022 (= e!3572435 (dynLambda!24959 lambda!318450 (h!70210 (t!377241 zl!343))))))

(declare-fun d!1831867 () Bool)

(declare-fun e!3572436 () Bool)

(assert (=> d!1831867 e!3572436))

(declare-fun res!2454666 () Bool)

(assert (=> d!1831867 (=> (not res!2454666) (not e!3572436))))

(declare-fun lt!2302203 () Context!10492)

(assert (=> d!1831867 (= res!2454666 (dynLambda!24959 lambda!318450 lt!2302203))))

(declare-fun e!3572434 () Context!10492)

(assert (=> d!1831867 (= lt!2302203 e!3572434)))

(declare-fun c!1031576 () Bool)

(assert (=> d!1831867 (= c!1031576 e!3572435)))

(declare-fun res!2454665 () Bool)

(assert (=> d!1831867 (=> (not res!2454665) (not e!3572435))))

(assert (=> d!1831867 (= res!2454665 (is-Cons!63762 (t!377241 zl!343)))))

(assert (=> d!1831867 (exists!2286 (t!377241 zl!343) lambda!318450)))

(assert (=> d!1831867 (= (getWitness!927 (t!377241 zl!343) lambda!318450) lt!2302203)))

(declare-fun b!5821023 () Bool)

(declare-fun lt!2302204 () Unit!156996)

(declare-fun Unit!157002 () Unit!156996)

(assert (=> b!5821023 (= lt!2302204 Unit!157002)))

(assert (=> b!5821023 false))

(declare-fun e!3572433 () Context!10492)

(assert (=> b!5821023 (= e!3572433 (head!12299 (t!377241 zl!343)))))

(declare-fun b!5821024 () Bool)

(assert (=> b!5821024 (= e!3572436 (contains!19898 (t!377241 zl!343) lt!2302203))))

(declare-fun b!5821025 () Bool)

(assert (=> b!5821025 (= e!3572434 e!3572433)))

(declare-fun c!1031575 () Bool)

(assert (=> b!5821025 (= c!1031575 (is-Cons!63762 (t!377241 zl!343)))))

(declare-fun b!5821026 () Bool)

(assert (=> b!5821026 (= e!3572433 (getWitness!927 (t!377241 (t!377241 zl!343)) lambda!318450))))

(declare-fun b!5821027 () Bool)

(assert (=> b!5821027 (= e!3572434 (h!70210 (t!377241 zl!343)))))

(assert (= (and d!1831867 res!2454665) b!5821022))

(assert (= (and d!1831867 c!1031576) b!5821027))

(assert (= (and d!1831867 (not c!1031576)) b!5821025))

(assert (= (and b!5821025 c!1031575) b!5821026))

(assert (= (and b!5821025 (not c!1031575)) b!5821023))

(assert (= (and d!1831867 res!2454666) b!5821024))

(declare-fun b_lambda!219437 () Bool)

(assert (=> (not b_lambda!219437) (not b!5821022)))

(declare-fun b_lambda!219439 () Bool)

(assert (=> (not b_lambda!219439) (not d!1831867)))

(declare-fun m!6756120 () Bool)

(assert (=> b!5821022 m!6756120))

(declare-fun m!6756122 () Bool)

(assert (=> d!1831867 m!6756122))

(declare-fun m!6756124 () Bool)

(assert (=> d!1831867 m!6756124))

(declare-fun m!6756126 () Bool)

(assert (=> b!5821024 m!6756126))

(declare-fun m!6756128 () Bool)

(assert (=> b!5821023 m!6756128))

(declare-fun m!6756130 () Bool)

(assert (=> b!5821026 m!6756130))

(assert (=> b!5820635 d!1831867))

(assert (=> bm!454538 d!1831861))

(declare-fun d!1831869 () Bool)

(declare-fun lt!2302205 () Bool)

(assert (=> d!1831869 (= lt!2302205 (set.member lt!2302147 (content!11703 zl!343)))))

(declare-fun e!3572438 () Bool)

(assert (=> d!1831869 (= lt!2302205 e!3572438)))

(declare-fun res!2454667 () Bool)

(assert (=> d!1831869 (=> (not res!2454667) (not e!3572438))))

(assert (=> d!1831869 (= res!2454667 (is-Cons!63762 zl!343))))

(assert (=> d!1831869 (= (contains!19898 zl!343 lt!2302147) lt!2302205)))

(declare-fun b!5821028 () Bool)

(declare-fun e!3572437 () Bool)

(assert (=> b!5821028 (= e!3572438 e!3572437)))

(declare-fun res!2454668 () Bool)

(assert (=> b!5821028 (=> res!2454668 e!3572437)))

(assert (=> b!5821028 (= res!2454668 (= (h!70210 zl!343) lt!2302147))))

(declare-fun b!5821029 () Bool)

(assert (=> b!5821029 (= e!3572437 (contains!19898 (t!377241 zl!343) lt!2302147))))

(assert (= (and d!1831869 res!2454667) b!5821028))

(assert (= (and b!5821028 (not res!2454668)) b!5821029))

(assert (=> d!1831869 m!6755792))

(declare-fun m!6756132 () Bool)

(assert (=> d!1831869 m!6756132))

(declare-fun m!6756134 () Bool)

(assert (=> b!5821029 m!6756134))

(assert (=> b!5820633 d!1831869))

(declare-fun b!5821046 () Bool)

(declare-fun e!3572447 () Int)

(declare-fun call!454594 () Int)

(assert (=> b!5821046 (= e!3572447 (+ 1 call!454594))))

(declare-fun bm!454588 () Bool)

(declare-fun call!454593 () Int)

(declare-fun c!1031586 () Bool)

(assert (=> bm!454588 (= call!454593 (regexDepthTotal!110 (ite c!1031586 (regOne!32237 (h!70209 (exprs!5746 lt!2302077))) (regOne!32236 (h!70209 (exprs!5746 lt!2302077))))))))

(declare-fun b!5821047 () Bool)

(declare-fun e!3572450 () Int)

(assert (=> b!5821047 (= e!3572450 e!3572447)))

(declare-fun c!1031585 () Bool)

(assert (=> b!5821047 (= c!1031585 (is-Star!15862 (h!70209 (exprs!5746 lt!2302077))))))

(declare-fun b!5821048 () Bool)

(declare-fun e!3572448 () Int)

(declare-fun call!454595 () Int)

(assert (=> b!5821048 (= e!3572448 (+ 1 call!454593 call!454595))))

(declare-fun d!1831871 () Bool)

(declare-fun lt!2302208 () Int)

(assert (=> d!1831871 (> lt!2302208 0)))

(assert (=> d!1831871 (= lt!2302208 e!3572450)))

(declare-fun c!1031588 () Bool)

(assert (=> d!1831871 (= c!1031588 (is-ElementMatch!15862 (h!70209 (exprs!5746 lt!2302077))))))

(assert (=> d!1831871 (= (regexDepthTotal!110 (h!70209 (exprs!5746 lt!2302077))) lt!2302208)))

(declare-fun bm!454589 () Bool)

(assert (=> bm!454589 (= call!454595 call!454594)))

(declare-fun b!5821049 () Bool)

(declare-fun e!3572449 () Int)

(assert (=> b!5821049 (= e!3572449 e!3572448)))

(declare-fun c!1031587 () Bool)

(assert (=> b!5821049 (= c!1031587 (is-Concat!24707 (h!70209 (exprs!5746 lt!2302077))))))

(declare-fun b!5821050 () Bool)

(assert (=> b!5821050 (= e!3572450 1)))

(declare-fun b!5821051 () Bool)

(assert (=> b!5821051 (= c!1031586 (is-Union!15862 (h!70209 (exprs!5746 lt!2302077))))))

(assert (=> b!5821051 (= e!3572447 e!3572449)))

(declare-fun bm!454590 () Bool)

(assert (=> bm!454590 (= call!454594 (regexDepthTotal!110 (ite c!1031585 (reg!16191 (h!70209 (exprs!5746 lt!2302077))) (ite c!1031586 (regTwo!32237 (h!70209 (exprs!5746 lt!2302077))) (regTwo!32236 (h!70209 (exprs!5746 lt!2302077)))))))))

(declare-fun b!5821052 () Bool)

(assert (=> b!5821052 (= e!3572449 (+ 1 call!454593 call!454595))))

(declare-fun b!5821053 () Bool)

(assert (=> b!5821053 (= e!3572448 1)))

(assert (= (and d!1831871 c!1031588) b!5821050))

(assert (= (and d!1831871 (not c!1031588)) b!5821047))

(assert (= (and b!5821047 c!1031585) b!5821046))

(assert (= (and b!5821047 (not c!1031585)) b!5821051))

(assert (= (and b!5821051 c!1031586) b!5821052))

(assert (= (and b!5821051 (not c!1031586)) b!5821049))

(assert (= (and b!5821049 c!1031587) b!5821048))

(assert (= (and b!5821049 (not c!1031587)) b!5821053))

(assert (= (or b!5821052 b!5821048) bm!454589))

(assert (= (or b!5821052 b!5821048) bm!454588))

(assert (= (or b!5821046 bm!454589) bm!454590))

(declare-fun m!6756136 () Bool)

(assert (=> bm!454588 m!6756136))

(declare-fun m!6756138 () Bool)

(assert (=> bm!454590 m!6756138))

(assert (=> b!5820559 d!1831871))

(declare-fun d!1831873 () Bool)

(declare-fun lt!2302209 () Int)

(assert (=> d!1831873 (>= lt!2302209 0)))

(declare-fun e!3572451 () Int)

(assert (=> d!1831873 (= lt!2302209 e!3572451)))

(declare-fun c!1031589 () Bool)

(assert (=> d!1831873 (= c!1031589 (is-Cons!63761 (exprs!5746 (Context!10493 (t!377240 (exprs!5746 lt!2302077))))))))

(assert (=> d!1831873 (= (contextDepthTotal!243 (Context!10493 (t!377240 (exprs!5746 lt!2302077)))) lt!2302209)))

(declare-fun b!5821054 () Bool)

(assert (=> b!5821054 (= e!3572451 (+ (regexDepthTotal!110 (h!70209 (exprs!5746 (Context!10493 (t!377240 (exprs!5746 lt!2302077)))))) (contextDepthTotal!243 (Context!10493 (t!377240 (exprs!5746 (Context!10493 (t!377240 (exprs!5746 lt!2302077)))))))))))

(declare-fun b!5821055 () Bool)

(assert (=> b!5821055 (= e!3572451 1)))

(assert (= (and d!1831873 c!1031589) b!5821054))

(assert (= (and d!1831873 (not c!1031589)) b!5821055))

(declare-fun m!6756140 () Bool)

(assert (=> b!5821054 m!6756140))

(declare-fun m!6756142 () Bool)

(assert (=> b!5821054 m!6756142))

(assert (=> b!5820559 d!1831873))

(declare-fun d!1831875 () Bool)

(assert (=> d!1831875 (= (head!12299 zl!343) (h!70210 zl!343))))

(assert (=> b!5820632 d!1831875))

(declare-fun d!1831877 () Bool)

(declare-fun res!2454669 () Bool)

(declare-fun e!3572452 () Bool)

(assert (=> d!1831877 (=> res!2454669 e!3572452)))

(assert (=> d!1831877 (= res!2454669 (is-Nil!63761 (exprs!5746 setElem!39297)))))

(assert (=> d!1831877 (= (forall!14954 (exprs!5746 setElem!39297) lambda!318491) e!3572452)))

(declare-fun b!5821056 () Bool)

(declare-fun e!3572453 () Bool)

(assert (=> b!5821056 (= e!3572452 e!3572453)))

(declare-fun res!2454670 () Bool)

(assert (=> b!5821056 (=> (not res!2454670) (not e!3572453))))

(assert (=> b!5821056 (= res!2454670 (dynLambda!24958 lambda!318491 (h!70209 (exprs!5746 setElem!39297))))))

(declare-fun b!5821057 () Bool)

(assert (=> b!5821057 (= e!3572453 (forall!14954 (t!377240 (exprs!5746 setElem!39297)) lambda!318491))))

(assert (= (and d!1831877 (not res!2454669)) b!5821056))

(assert (= (and b!5821056 res!2454670) b!5821057))

(declare-fun b_lambda!219441 () Bool)

(assert (=> (not b_lambda!219441) (not b!5821056)))

(declare-fun m!6756144 () Bool)

(assert (=> b!5821056 m!6756144))

(declare-fun m!6756146 () Bool)

(assert (=> b!5821057 m!6756146))

(assert (=> d!1831739 d!1831877))

(declare-fun d!1831879 () Bool)

(declare-fun res!2454671 () Bool)

(declare-fun e!3572454 () Bool)

(assert (=> d!1831879 (=> res!2454671 e!3572454)))

(assert (=> d!1831879 (= res!2454671 (is-Nil!63761 lt!2302084))))

(assert (=> d!1831879 (= (forall!14954 lt!2302084 lambda!318499) e!3572454)))

(declare-fun b!5821058 () Bool)

(declare-fun e!3572455 () Bool)

(assert (=> b!5821058 (= e!3572454 e!3572455)))

(declare-fun res!2454672 () Bool)

(assert (=> b!5821058 (=> (not res!2454672) (not e!3572455))))

(assert (=> b!5821058 (= res!2454672 (dynLambda!24958 lambda!318499 (h!70209 lt!2302084)))))

(declare-fun b!5821059 () Bool)

(assert (=> b!5821059 (= e!3572455 (forall!14954 (t!377240 lt!2302084) lambda!318499))))

(assert (= (and d!1831879 (not res!2454671)) b!5821058))

(assert (= (and b!5821058 res!2454672) b!5821059))

(declare-fun b_lambda!219443 () Bool)

(assert (=> (not b_lambda!219443) (not b!5821058)))

(declare-fun m!6756148 () Bool)

(assert (=> b!5821058 m!6756148))

(declare-fun m!6756150 () Bool)

(assert (=> b!5821059 m!6756150))

(assert (=> d!1831751 d!1831879))

(declare-fun d!1831881 () Bool)

(declare-fun choose!44249 (Int) Bool)

(assert (=> d!1831881 (= (Exists!2946 (ite c!1031442 lambda!318473 lambda!318474)) (choose!44249 (ite c!1031442 lambda!318473 lambda!318474)))))

(declare-fun bs!1373392 () Bool)

(assert (= bs!1373392 d!1831881))

(declare-fun m!6756152 () Bool)

(assert (=> bs!1373392 m!6756152))

(assert (=> bm!454534 d!1831881))

(declare-fun d!1831883 () Bool)

(assert (=> d!1831883 (= (head!12298 s!2326) (h!70211 s!2326))))

(assert (=> b!5820513 d!1831883))

(assert (=> bm!454535 d!1831861))

(declare-fun d!1831885 () Bool)

(declare-fun c!1031590 () Bool)

(assert (=> d!1831885 (= c!1031590 (isEmpty!35647 s!2326))))

(declare-fun e!3572456 () Bool)

(assert (=> d!1831885 (= (matchZipper!1968 (set.insert lt!2302147 (as set.empty (Set Context!10492))) s!2326) e!3572456)))

(declare-fun b!5821060 () Bool)

(assert (=> b!5821060 (= e!3572456 (nullableZipper!1743 (set.insert lt!2302147 (as set.empty (Set Context!10492)))))))

(declare-fun b!5821061 () Bool)

(assert (=> b!5821061 (= e!3572456 (matchZipper!1968 (derivationStepZipper!1905 (set.insert lt!2302147 (as set.empty (Set Context!10492))) (head!12298 s!2326)) (tail!11385 s!2326)))))

(assert (= (and d!1831885 c!1031590) b!5821060))

(assert (= (and d!1831885 (not c!1031590)) b!5821061))

(assert (=> d!1831885 m!6755762))

(assert (=> b!5821060 m!6755898))

(declare-fun m!6756154 () Bool)

(assert (=> b!5821060 m!6756154))

(assert (=> b!5821061 m!6755774))

(assert (=> b!5821061 m!6755898))

(assert (=> b!5821061 m!6755774))

(declare-fun m!6756156 () Bool)

(assert (=> b!5821061 m!6756156))

(assert (=> b!5821061 m!6755778))

(assert (=> b!5821061 m!6756156))

(assert (=> b!5821061 m!6755778))

(declare-fun m!6756158 () Bool)

(assert (=> b!5821061 m!6756158))

(assert (=> bs!1373284 d!1831885))

(assert (=> b!5820510 d!1831883))

(assert (=> d!1831749 d!1831719))

(declare-fun d!1831887 () Bool)

(declare-fun lt!2302210 () Int)

(assert (=> d!1831887 (>= lt!2302210 0)))

(declare-fun e!3572457 () Int)

(assert (=> d!1831887 (= lt!2302210 e!3572457)))

(declare-fun c!1031591 () Bool)

(assert (=> d!1831887 (= c!1031591 (is-Cons!63761 (exprs!5746 (h!70210 zl!343))))))

(assert (=> d!1831887 (= (contextDepthTotal!243 (h!70210 zl!343)) lt!2302210)))

(declare-fun b!5821062 () Bool)

(assert (=> b!5821062 (= e!3572457 (+ (regexDepthTotal!110 (h!70209 (exprs!5746 (h!70210 zl!343)))) (contextDepthTotal!243 (Context!10493 (t!377240 (exprs!5746 (h!70210 zl!343)))))))))

(declare-fun b!5821063 () Bool)

(assert (=> b!5821063 (= e!3572457 1)))

(assert (= (and d!1831887 c!1031591) b!5821062))

(assert (= (and d!1831887 (not c!1031591)) b!5821063))

(declare-fun m!6756160 () Bool)

(assert (=> b!5821062 m!6756160))

(declare-fun m!6756162 () Bool)

(assert (=> b!5821062 m!6756162))

(assert (=> b!5820553 d!1831887))

(declare-fun d!1831889 () Bool)

(declare-fun lt!2302211 () Int)

(assert (=> d!1831889 (>= lt!2302211 0)))

(declare-fun e!3572458 () Int)

(assert (=> d!1831889 (= lt!2302211 e!3572458)))

(declare-fun c!1031592 () Bool)

(assert (=> d!1831889 (= c!1031592 (is-Cons!63762 (t!377241 zl!343)))))

(assert (=> d!1831889 (= (zipperDepthTotal!265 (t!377241 zl!343)) lt!2302211)))

(declare-fun b!5821064 () Bool)

(assert (=> b!5821064 (= e!3572458 (+ (contextDepthTotal!243 (h!70210 (t!377241 zl!343))) (zipperDepthTotal!265 (t!377241 (t!377241 zl!343)))))))

(declare-fun b!5821065 () Bool)

(assert (=> b!5821065 (= e!3572458 0)))

(assert (= (and d!1831889 c!1031592) b!5821064))

(assert (= (and d!1831889 (not c!1031592)) b!5821065))

(declare-fun m!6756164 () Bool)

(assert (=> b!5821064 m!6756164))

(declare-fun m!6756166 () Bool)

(assert (=> b!5821064 m!6756166))

(assert (=> b!5820553 d!1831889))

(declare-fun b!5821066 () Bool)

(declare-fun e!3572463 () Bool)

(declare-fun e!3572461 () Bool)

(assert (=> b!5821066 (= e!3572463 e!3572461)))

(declare-fun res!2454676 () Bool)

(assert (=> b!5821066 (=> (not res!2454676) (not e!3572461))))

(declare-fun lt!2302212 () Bool)

(assert (=> b!5821066 (= res!2454676 (not lt!2302212))))

(declare-fun b!5821067 () Bool)

(declare-fun res!2454678 () Bool)

(declare-fun e!3572460 () Bool)

(assert (=> b!5821067 (=> res!2454678 e!3572460)))

(assert (=> b!5821067 (= res!2454678 (not (isEmpty!35647 (tail!11385 (tail!11385 s!2326)))))))

(declare-fun b!5821068 () Bool)

(declare-fun res!2454679 () Bool)

(assert (=> b!5821068 (=> res!2454679 e!3572463)))

(declare-fun e!3572464 () Bool)

(assert (=> b!5821068 (= res!2454679 e!3572464)))

(declare-fun res!2454673 () Bool)

(assert (=> b!5821068 (=> (not res!2454673) (not e!3572464))))

(assert (=> b!5821068 (= res!2454673 lt!2302212)))

(declare-fun b!5821069 () Bool)

(declare-fun e!3572462 () Bool)

(declare-fun call!454596 () Bool)

(assert (=> b!5821069 (= e!3572462 (= lt!2302212 call!454596))))

(declare-fun b!5821070 () Bool)

(declare-fun e!3572459 () Bool)

(assert (=> b!5821070 (= e!3572459 (nullable!5870 (derivativeStep!4611 r!7292 (head!12298 s!2326))))))

(declare-fun b!5821071 () Bool)

(declare-fun res!2454680 () Bool)

(assert (=> b!5821071 (=> (not res!2454680) (not e!3572464))))

(assert (=> b!5821071 (= res!2454680 (isEmpty!35647 (tail!11385 (tail!11385 s!2326))))))

(declare-fun b!5821072 () Bool)

(declare-fun e!3572465 () Bool)

(assert (=> b!5821072 (= e!3572465 (not lt!2302212))))

(declare-fun b!5821073 () Bool)

(assert (=> b!5821073 (= e!3572464 (= (head!12298 (tail!11385 s!2326)) (c!1031430 (derivativeStep!4611 r!7292 (head!12298 s!2326)))))))

(declare-fun b!5821074 () Bool)

(assert (=> b!5821074 (= e!3572459 (matchR!8047 (derivativeStep!4611 (derivativeStep!4611 r!7292 (head!12298 s!2326)) (head!12298 (tail!11385 s!2326))) (tail!11385 (tail!11385 s!2326))))))

(declare-fun b!5821076 () Bool)

(assert (=> b!5821076 (= e!3572460 (not (= (head!12298 (tail!11385 s!2326)) (c!1031430 (derivativeStep!4611 r!7292 (head!12298 s!2326))))))))

(declare-fun b!5821077 () Bool)

(assert (=> b!5821077 (= e!3572461 e!3572460)))

(declare-fun res!2454674 () Bool)

(assert (=> b!5821077 (=> res!2454674 e!3572460)))

(assert (=> b!5821077 (= res!2454674 call!454596)))

(declare-fun b!5821078 () Bool)

(declare-fun res!2454675 () Bool)

(assert (=> b!5821078 (=> res!2454675 e!3572463)))

(assert (=> b!5821078 (= res!2454675 (not (is-ElementMatch!15862 (derivativeStep!4611 r!7292 (head!12298 s!2326)))))))

(assert (=> b!5821078 (= e!3572465 e!3572463)))

(declare-fun d!1831891 () Bool)

(assert (=> d!1831891 e!3572462))

(declare-fun c!1031595 () Bool)

(assert (=> d!1831891 (= c!1031595 (is-EmptyExpr!15862 (derivativeStep!4611 r!7292 (head!12298 s!2326))))))

(assert (=> d!1831891 (= lt!2302212 e!3572459)))

(declare-fun c!1031594 () Bool)

(assert (=> d!1831891 (= c!1031594 (isEmpty!35647 (tail!11385 s!2326)))))

(assert (=> d!1831891 (validRegex!7598 (derivativeStep!4611 r!7292 (head!12298 s!2326)))))

(assert (=> d!1831891 (= (matchR!8047 (derivativeStep!4611 r!7292 (head!12298 s!2326)) (tail!11385 s!2326)) lt!2302212)))

(declare-fun b!5821075 () Bool)

(assert (=> b!5821075 (= e!3572462 e!3572465)))

(declare-fun c!1031593 () Bool)

(assert (=> b!5821075 (= c!1031593 (is-EmptyLang!15862 (derivativeStep!4611 r!7292 (head!12298 s!2326))))))

(declare-fun b!5821079 () Bool)

(declare-fun res!2454677 () Bool)

(assert (=> b!5821079 (=> (not res!2454677) (not e!3572464))))

(assert (=> b!5821079 (= res!2454677 (not call!454596))))

(declare-fun bm!454591 () Bool)

(assert (=> bm!454591 (= call!454596 (isEmpty!35647 (tail!11385 s!2326)))))

(assert (= (and d!1831891 c!1031594) b!5821070))

(assert (= (and d!1831891 (not c!1031594)) b!5821074))

(assert (= (and d!1831891 c!1031595) b!5821069))

(assert (= (and d!1831891 (not c!1031595)) b!5821075))

(assert (= (and b!5821075 c!1031593) b!5821072))

(assert (= (and b!5821075 (not c!1031593)) b!5821078))

(assert (= (and b!5821078 (not res!2454675)) b!5821068))

(assert (= (and b!5821068 res!2454673) b!5821079))

(assert (= (and b!5821079 res!2454677) b!5821071))

(assert (= (and b!5821071 res!2454680) b!5821073))

(assert (= (and b!5821068 (not res!2454679)) b!5821066))

(assert (= (and b!5821066 res!2454676) b!5821077))

(assert (= (and b!5821077 (not res!2454674)) b!5821067))

(assert (= (and b!5821067 (not res!2454678)) b!5821076))

(assert (= (or b!5821069 b!5821079 b!5821077) bm!454591))

(assert (=> b!5821070 m!6755776))

(declare-fun m!6756168 () Bool)

(assert (=> b!5821070 m!6756168))

(assert (=> b!5821074 m!6755778))

(declare-fun m!6756170 () Bool)

(assert (=> b!5821074 m!6756170))

(assert (=> b!5821074 m!6755776))

(assert (=> b!5821074 m!6756170))

(declare-fun m!6756172 () Bool)

(assert (=> b!5821074 m!6756172))

(assert (=> b!5821074 m!6755778))

(declare-fun m!6756174 () Bool)

(assert (=> b!5821074 m!6756174))

(assert (=> b!5821074 m!6756172))

(assert (=> b!5821074 m!6756174))

(declare-fun m!6756176 () Bool)

(assert (=> b!5821074 m!6756176))

(assert (=> b!5821076 m!6755778))

(assert (=> b!5821076 m!6756170))

(assert (=> b!5821073 m!6755778))

(assert (=> b!5821073 m!6756170))

(assert (=> b!5821067 m!6755778))

(assert (=> b!5821067 m!6756174))

(assert (=> b!5821067 m!6756174))

(declare-fun m!6756178 () Bool)

(assert (=> b!5821067 m!6756178))

(assert (=> d!1831891 m!6755778))

(assert (=> d!1831891 m!6755782))

(assert (=> d!1831891 m!6755776))

(declare-fun m!6756180 () Bool)

(assert (=> d!1831891 m!6756180))

(assert (=> bm!454591 m!6755778))

(assert (=> bm!454591 m!6755782))

(assert (=> b!5821071 m!6755778))

(assert (=> b!5821071 m!6756174))

(assert (=> b!5821071 m!6756174))

(assert (=> b!5821071 m!6756178))

(assert (=> b!5820511 d!1831891))

(declare-fun call!454605 () Regex!15862)

(declare-fun c!1031607 () Bool)

(declare-fun c!1031610 () Bool)

(declare-fun bm!454600 () Bool)

(assert (=> bm!454600 (= call!454605 (derivativeStep!4611 (ite c!1031607 (regTwo!32237 r!7292) (ite c!1031610 (reg!16191 r!7292) (regOne!32236 r!7292))) (head!12298 s!2326)))))

(declare-fun b!5821100 () Bool)

(declare-fun e!3572479 () Regex!15862)

(declare-fun call!454608 () Regex!15862)

(assert (=> b!5821100 (= e!3572479 (Concat!24707 call!454608 r!7292))))

(declare-fun b!5821101 () Bool)

(declare-fun e!3572476 () Regex!15862)

(declare-fun call!454606 () Regex!15862)

(assert (=> b!5821101 (= e!3572476 (Union!15862 (Concat!24707 call!454606 (regTwo!32236 r!7292)) EmptyLang!15862))))

(declare-fun b!5821102 () Bool)

(assert (=> b!5821102 (= e!3572476 (Union!15862 (Concat!24707 call!454608 (regTwo!32236 r!7292)) call!454606))))

(declare-fun c!1031608 () Bool)

(declare-fun bm!454601 () Bool)

(declare-fun call!454607 () Regex!15862)

(assert (=> bm!454601 (= call!454607 (derivativeStep!4611 (ite c!1031607 (regOne!32237 r!7292) (ite c!1031608 (regTwo!32236 r!7292) (regOne!32236 r!7292))) (head!12298 s!2326)))))

(declare-fun d!1831893 () Bool)

(declare-fun lt!2302215 () Regex!15862)

(assert (=> d!1831893 (validRegex!7598 lt!2302215)))

(declare-fun e!3572477 () Regex!15862)

(assert (=> d!1831893 (= lt!2302215 e!3572477)))

(declare-fun c!1031609 () Bool)

(assert (=> d!1831893 (= c!1031609 (or (is-EmptyExpr!15862 r!7292) (is-EmptyLang!15862 r!7292)))))

(assert (=> d!1831893 (validRegex!7598 r!7292)))

(assert (=> d!1831893 (= (derivativeStep!4611 r!7292 (head!12298 s!2326)) lt!2302215)))

(declare-fun b!5821103 () Bool)

(assert (=> b!5821103 (= c!1031608 (nullable!5870 (regOne!32236 r!7292)))))

(assert (=> b!5821103 (= e!3572479 e!3572476)))

(declare-fun b!5821104 () Bool)

(declare-fun e!3572480 () Regex!15862)

(assert (=> b!5821104 (= e!3572480 (Union!15862 call!454607 call!454605))))

(declare-fun b!5821105 () Bool)

(assert (=> b!5821105 (= e!3572480 e!3572479)))

(assert (=> b!5821105 (= c!1031610 (is-Star!15862 r!7292))))

(declare-fun b!5821106 () Bool)

(declare-fun e!3572478 () Regex!15862)

(assert (=> b!5821106 (= e!3572478 (ite (= (head!12298 s!2326) (c!1031430 r!7292)) EmptyExpr!15862 EmptyLang!15862))))

(declare-fun b!5821107 () Bool)

(assert (=> b!5821107 (= c!1031607 (is-Union!15862 r!7292))))

(assert (=> b!5821107 (= e!3572478 e!3572480)))

(declare-fun bm!454602 () Bool)

(assert (=> bm!454602 (= call!454608 call!454605)))

(declare-fun b!5821108 () Bool)

(assert (=> b!5821108 (= e!3572477 e!3572478)))

(declare-fun c!1031606 () Bool)

(assert (=> b!5821108 (= c!1031606 (is-ElementMatch!15862 r!7292))))

(declare-fun b!5821109 () Bool)

(assert (=> b!5821109 (= e!3572477 EmptyLang!15862)))

(declare-fun bm!454603 () Bool)

(assert (=> bm!454603 (= call!454606 call!454607)))

(assert (= (and d!1831893 c!1031609) b!5821109))

(assert (= (and d!1831893 (not c!1031609)) b!5821108))

(assert (= (and b!5821108 c!1031606) b!5821106))

(assert (= (and b!5821108 (not c!1031606)) b!5821107))

(assert (= (and b!5821107 c!1031607) b!5821104))

(assert (= (and b!5821107 (not c!1031607)) b!5821105))

(assert (= (and b!5821105 c!1031610) b!5821100))

(assert (= (and b!5821105 (not c!1031610)) b!5821103))

(assert (= (and b!5821103 c!1031608) b!5821102))

(assert (= (and b!5821103 (not c!1031608)) b!5821101))

(assert (= (or b!5821102 b!5821101) bm!454603))

(assert (= (or b!5821100 b!5821102) bm!454602))

(assert (= (or b!5821104 bm!454602) bm!454600))

(assert (= (or b!5821104 bm!454603) bm!454601))

(assert (=> bm!454600 m!6755774))

(declare-fun m!6756182 () Bool)

(assert (=> bm!454600 m!6756182))

(assert (=> bm!454601 m!6755774))

(declare-fun m!6756184 () Bool)

(assert (=> bm!454601 m!6756184))

(declare-fun m!6756186 () Bool)

(assert (=> d!1831893 m!6756186))

(assert (=> d!1831893 m!6755670))

(declare-fun m!6756188 () Bool)

(assert (=> b!5821103 m!6756188))

(assert (=> b!5820511 d!1831893))

(assert (=> b!5820511 d!1831883))

(assert (=> b!5820511 d!1831827))

(declare-fun bs!1373393 () Bool)

(declare-fun d!1831895 () Bool)

(assert (= bs!1373393 (and d!1831895 d!1831833)))

(declare-fun lambda!318547 () Int)

(assert (=> bs!1373393 (not (= lambda!318547 lambda!318538))))

(declare-fun bs!1373394 () Bool)

(assert (= bs!1373394 (and d!1831895 d!1831835)))

(assert (=> bs!1373394 (not (= lambda!318547 lambda!318541))))

(declare-fun bs!1373395 () Bool)

(assert (= bs!1373395 (and d!1831895 d!1831853)))

(assert (=> bs!1373395 (= lambda!318547 lambda!318546)))

(declare-fun bs!1373396 () Bool)

(assert (= bs!1373396 (and d!1831895 d!1831829)))

(assert (=> bs!1373396 (= lambda!318547 lambda!318537)))

(declare-fun bs!1373397 () Bool)

(assert (= bs!1373397 (and d!1831895 d!1831753)))

(assert (=> bs!1373397 (= lambda!318547 lambda!318504)))

(declare-fun bs!1373398 () Bool)

(assert (= bs!1373398 (and d!1831895 d!1831755)))

(assert (=> bs!1373398 (= lambda!318547 lambda!318508)))

(declare-fun bs!1373399 () Bool)

(assert (= bs!1373399 (and d!1831895 b!5820342)))

(assert (=> bs!1373399 (not (= lambda!318547 lambda!318449))))

(declare-fun bs!1373400 () Bool)

(assert (= bs!1373400 (and d!1831895 b!5820352)))

(assert (=> bs!1373400 (= lambda!318547 lambda!318451)))

(declare-fun bs!1373401 () Bool)

(assert (= bs!1373401 (and d!1831895 d!1831741)))

(assert (=> bs!1373401 (= lambda!318547 lambda!318493)))

(declare-fun bs!1373402 () Bool)

(assert (= bs!1373402 (and d!1831895 d!1831747)))

(assert (=> bs!1373402 (= lambda!318547 lambda!318496)))

(assert (=> bs!1373397 (not (= lambda!318547 lambda!318505))))

(declare-fun bs!1373403 () Bool)

(assert (= bs!1373403 (and d!1831895 d!1831739)))

(assert (=> bs!1373403 (= lambda!318547 lambda!318491)))

(declare-fun bs!1373404 () Bool)

(assert (= bs!1373404 (and d!1831895 d!1831751)))

(assert (=> bs!1373404 (not (= lambda!318547 lambda!318499))))

(assert (=> d!1831895 (= (inv!82903 (h!70210 (t!377241 zl!343))) (forall!14954 (exprs!5746 (h!70210 (t!377241 zl!343))) lambda!318547))))

(declare-fun bs!1373405 () Bool)

(assert (= bs!1373405 d!1831895))

(declare-fun m!6756190 () Bool)

(assert (=> bs!1373405 m!6756190))

(assert (=> b!5820708 d!1831895))

(declare-fun d!1831897 () Bool)

(declare-fun res!2454681 () Bool)

(declare-fun e!3572481 () Bool)

(assert (=> d!1831897 (=> res!2454681 e!3572481)))

(assert (=> d!1831897 (= res!2454681 (is-Nil!63761 (exprs!5746 lt!2302077)))))

(assert (=> d!1831897 (= (forall!14954 (exprs!5746 lt!2302077) lambda!318496) e!3572481)))

(declare-fun b!5821110 () Bool)

(declare-fun e!3572482 () Bool)

(assert (=> b!5821110 (= e!3572481 e!3572482)))

(declare-fun res!2454682 () Bool)

(assert (=> b!5821110 (=> (not res!2454682) (not e!3572482))))

(assert (=> b!5821110 (= res!2454682 (dynLambda!24958 lambda!318496 (h!70209 (exprs!5746 lt!2302077))))))

(declare-fun b!5821111 () Bool)

(assert (=> b!5821111 (= e!3572482 (forall!14954 (t!377240 (exprs!5746 lt!2302077)) lambda!318496))))

(assert (= (and d!1831897 (not res!2454681)) b!5821110))

(assert (= (and b!5821110 res!2454682) b!5821111))

(declare-fun b_lambda!219445 () Bool)

(assert (=> (not b_lambda!219445) (not b!5821110)))

(declare-fun m!6756192 () Bool)

(assert (=> b!5821110 m!6756192))

(declare-fun m!6756194 () Bool)

(assert (=> b!5821111 m!6756194))

(assert (=> d!1831747 d!1831897))

(declare-fun bs!1373406 () Bool)

(declare-fun d!1831899 () Bool)

(assert (= bs!1373406 (and d!1831899 d!1831833)))

(declare-fun lambda!318550 () Int)

(assert (=> bs!1373406 (not (= lambda!318550 lambda!318538))))

(declare-fun bs!1373407 () Bool)

(assert (= bs!1373407 (and d!1831899 d!1831835)))

(assert (=> bs!1373407 (not (= lambda!318550 lambda!318541))))

(declare-fun bs!1373408 () Bool)

(assert (= bs!1373408 (and d!1831899 d!1831853)))

(assert (=> bs!1373408 (= lambda!318550 lambda!318546)))

(declare-fun bs!1373409 () Bool)

(assert (= bs!1373409 (and d!1831899 d!1831829)))

(assert (=> bs!1373409 (= lambda!318550 lambda!318537)))

(declare-fun bs!1373410 () Bool)

(assert (= bs!1373410 (and d!1831899 d!1831755)))

(assert (=> bs!1373410 (= lambda!318550 lambda!318508)))

(declare-fun bs!1373411 () Bool)

(assert (= bs!1373411 (and d!1831899 b!5820342)))

(assert (=> bs!1373411 (not (= lambda!318550 lambda!318449))))

(declare-fun bs!1373412 () Bool)

(assert (= bs!1373412 (and d!1831899 b!5820352)))

(assert (=> bs!1373412 (= lambda!318550 lambda!318451)))

(declare-fun bs!1373413 () Bool)

(assert (= bs!1373413 (and d!1831899 d!1831741)))

(assert (=> bs!1373413 (= lambda!318550 lambda!318493)))

(declare-fun bs!1373414 () Bool)

(assert (= bs!1373414 (and d!1831899 d!1831747)))

(assert (=> bs!1373414 (= lambda!318550 lambda!318496)))

(declare-fun bs!1373415 () Bool)

(assert (= bs!1373415 (and d!1831899 d!1831753)))

(assert (=> bs!1373415 (not (= lambda!318550 lambda!318505))))

(declare-fun bs!1373416 () Bool)

(assert (= bs!1373416 (and d!1831899 d!1831895)))

(assert (=> bs!1373416 (= lambda!318550 lambda!318547)))

(assert (=> bs!1373415 (= lambda!318550 lambda!318504)))

(declare-fun bs!1373417 () Bool)

(assert (= bs!1373417 (and d!1831899 d!1831739)))

(assert (=> bs!1373417 (= lambda!318550 lambda!318491)))

(declare-fun bs!1373418 () Bool)

(assert (= bs!1373418 (and d!1831899 d!1831751)))

(assert (=> bs!1373418 (not (= lambda!318550 lambda!318499))))

(assert (=> d!1831899 (forall!14954 (exprs!5746 lt!2302077) lambda!318550)))

(assert (=> d!1831899 true))

(declare-fun _$47!949 () Unit!156996)

(assert (=> d!1831899 (= (choose!44240 lt!2302077 (exprs!5746 lt!2302077)) _$47!949)))

(declare-fun bs!1373419 () Bool)

(assert (= bs!1373419 d!1831899))

(declare-fun m!6756196 () Bool)

(assert (=> bs!1373419 m!6756196))

(assert (=> d!1831747 d!1831899))

(assert (=> d!1831731 d!1831861))

(declare-fun bs!1373420 () Bool)

(declare-fun d!1831901 () Bool)

(assert (= bs!1373420 (and d!1831901 d!1831833)))

(declare-fun lambda!318553 () Int)

(assert (=> bs!1373420 (not (= lambda!318553 lambda!318538))))

(declare-fun bs!1373421 () Bool)

(assert (= bs!1373421 (and d!1831901 d!1831835)))

(assert (=> bs!1373421 (not (= lambda!318553 lambda!318541))))

(declare-fun bs!1373422 () Bool)

(assert (= bs!1373422 (and d!1831901 d!1831853)))

(assert (=> bs!1373422 (= lambda!318553 lambda!318546)))

(declare-fun bs!1373423 () Bool)

(assert (= bs!1373423 (and d!1831901 d!1831829)))

(assert (=> bs!1373423 (= lambda!318553 lambda!318537)))

(declare-fun bs!1373424 () Bool)

(assert (= bs!1373424 (and d!1831901 d!1831899)))

(assert (=> bs!1373424 (= lambda!318553 lambda!318550)))

(declare-fun bs!1373425 () Bool)

(assert (= bs!1373425 (and d!1831901 d!1831755)))

(assert (=> bs!1373425 (= lambda!318553 lambda!318508)))

(declare-fun bs!1373426 () Bool)

(assert (= bs!1373426 (and d!1831901 b!5820342)))

(assert (=> bs!1373426 (not (= lambda!318553 lambda!318449))))

(declare-fun bs!1373427 () Bool)

(assert (= bs!1373427 (and d!1831901 b!5820352)))

(assert (=> bs!1373427 (= lambda!318553 lambda!318451)))

(declare-fun bs!1373428 () Bool)

(assert (= bs!1373428 (and d!1831901 d!1831741)))

(assert (=> bs!1373428 (= lambda!318553 lambda!318493)))

(declare-fun bs!1373429 () Bool)

(assert (= bs!1373429 (and d!1831901 d!1831747)))

(assert (=> bs!1373429 (= lambda!318553 lambda!318496)))

(declare-fun bs!1373430 () Bool)

(assert (= bs!1373430 (and d!1831901 d!1831753)))

(assert (=> bs!1373430 (not (= lambda!318553 lambda!318505))))

(declare-fun bs!1373431 () Bool)

(assert (= bs!1373431 (and d!1831901 d!1831895)))

(assert (=> bs!1373431 (= lambda!318553 lambda!318547)))

(assert (=> bs!1373430 (= lambda!318553 lambda!318504)))

(declare-fun bs!1373432 () Bool)

(assert (= bs!1373432 (and d!1831901 d!1831739)))

(assert (=> bs!1373432 (= lambda!318553 lambda!318491)))

(declare-fun bs!1373433 () Bool)

(assert (= bs!1373433 (and d!1831901 d!1831751)))

(assert (=> bs!1373433 (not (= lambda!318553 lambda!318499))))

(declare-fun b!5821132 () Bool)

(declare-fun e!3572495 () Bool)

(declare-fun e!3572500 () Bool)

(assert (=> b!5821132 (= e!3572495 e!3572500)))

(declare-fun c!1031622 () Bool)

(assert (=> b!5821132 (= c!1031622 (isEmpty!35649 (exprs!5746 (h!70210 zl!343))))))

(declare-fun b!5821133 () Bool)

(declare-fun e!3572498 () Regex!15862)

(declare-fun e!3572499 () Regex!15862)

(assert (=> b!5821133 (= e!3572498 e!3572499)))

(declare-fun c!1031621 () Bool)

(assert (=> b!5821133 (= c!1031621 (is-Cons!63761 (exprs!5746 (h!70210 zl!343))))))

(declare-fun b!5821134 () Bool)

(declare-fun e!3572497 () Bool)

(declare-fun lt!2302218 () Regex!15862)

(declare-fun isConcat!833 (Regex!15862) Bool)

(assert (=> b!5821134 (= e!3572497 (isConcat!833 lt!2302218))))

(declare-fun b!5821135 () Bool)

(assert (=> b!5821135 (= e!3572498 (h!70209 (exprs!5746 (h!70210 zl!343))))))

(declare-fun b!5821136 () Bool)

(declare-fun isEmptyExpr!1310 (Regex!15862) Bool)

(assert (=> b!5821136 (= e!3572500 (isEmptyExpr!1310 lt!2302218))))

(declare-fun b!5821137 () Bool)

(declare-fun e!3572496 () Bool)

(assert (=> b!5821137 (= e!3572496 (isEmpty!35649 (t!377240 (exprs!5746 (h!70210 zl!343)))))))

(declare-fun b!5821138 () Bool)

(assert (=> b!5821138 (= e!3572499 EmptyExpr!15862)))

(declare-fun b!5821139 () Bool)

(assert (=> b!5821139 (= e!3572497 (= lt!2302218 (head!12302 (exprs!5746 (h!70210 zl!343)))))))

(declare-fun b!5821140 () Bool)

(assert (=> b!5821140 (= e!3572499 (Concat!24707 (h!70209 (exprs!5746 (h!70210 zl!343))) (generalisedConcat!1461 (t!377240 (exprs!5746 (h!70210 zl!343))))))))

(declare-fun b!5821141 () Bool)

(assert (=> b!5821141 (= e!3572500 e!3572497)))

(declare-fun c!1031623 () Bool)

(assert (=> b!5821141 (= c!1031623 (isEmpty!35649 (tail!11387 (exprs!5746 (h!70210 zl!343)))))))

(assert (=> d!1831901 e!3572495))

(declare-fun res!2454687 () Bool)

(assert (=> d!1831901 (=> (not res!2454687) (not e!3572495))))

(assert (=> d!1831901 (= res!2454687 (validRegex!7598 lt!2302218))))

(assert (=> d!1831901 (= lt!2302218 e!3572498)))

(declare-fun c!1031620 () Bool)

(assert (=> d!1831901 (= c!1031620 e!3572496)))

(declare-fun res!2454688 () Bool)

(assert (=> d!1831901 (=> (not res!2454688) (not e!3572496))))

(assert (=> d!1831901 (= res!2454688 (is-Cons!63761 (exprs!5746 (h!70210 zl!343))))))

(assert (=> d!1831901 (forall!14954 (exprs!5746 (h!70210 zl!343)) lambda!318553)))

(assert (=> d!1831901 (= (generalisedConcat!1461 (exprs!5746 (h!70210 zl!343))) lt!2302218)))

(assert (= (and d!1831901 res!2454688) b!5821137))

(assert (= (and d!1831901 c!1031620) b!5821135))

(assert (= (and d!1831901 (not c!1031620)) b!5821133))

(assert (= (and b!5821133 c!1031621) b!5821140))

(assert (= (and b!5821133 (not c!1031621)) b!5821138))

(assert (= (and d!1831901 res!2454687) b!5821132))

(assert (= (and b!5821132 c!1031622) b!5821136))

(assert (= (and b!5821132 (not c!1031622)) b!5821141))

(assert (= (and b!5821141 c!1031623) b!5821139))

(assert (= (and b!5821141 (not c!1031623)) b!5821134))

(declare-fun m!6756198 () Bool)

(assert (=> b!5821140 m!6756198))

(declare-fun m!6756200 () Bool)

(assert (=> b!5821141 m!6756200))

(assert (=> b!5821141 m!6756200))

(declare-fun m!6756202 () Bool)

(assert (=> b!5821141 m!6756202))

(declare-fun m!6756204 () Bool)

(assert (=> b!5821136 m!6756204))

(declare-fun m!6756206 () Bool)

(assert (=> b!5821132 m!6756206))

(declare-fun m!6756208 () Bool)

(assert (=> b!5821134 m!6756208))

(declare-fun m!6756210 () Bool)

(assert (=> b!5821137 m!6756210))

(declare-fun m!6756212 () Bool)

(assert (=> d!1831901 m!6756212))

(declare-fun m!6756214 () Bool)

(assert (=> d!1831901 m!6756214))

(declare-fun m!6756216 () Bool)

(assert (=> b!5821139 m!6756216))

(assert (=> b!5820673 d!1831901))

(declare-fun bs!1373434 () Bool)

(declare-fun d!1831903 () Bool)

(assert (= bs!1373434 (and d!1831903 d!1831833)))

(declare-fun lambda!318554 () Int)

(assert (=> bs!1373434 (not (= lambda!318554 lambda!318538))))

(declare-fun bs!1373435 () Bool)

(assert (= bs!1373435 (and d!1831903 d!1831835)))

(assert (=> bs!1373435 (not (= lambda!318554 lambda!318541))))

(declare-fun bs!1373436 () Bool)

(assert (= bs!1373436 (and d!1831903 d!1831853)))

(assert (=> bs!1373436 (= lambda!318554 lambda!318546)))

(declare-fun bs!1373437 () Bool)

(assert (= bs!1373437 (and d!1831903 d!1831829)))

(assert (=> bs!1373437 (= lambda!318554 lambda!318537)))

(declare-fun bs!1373438 () Bool)

(assert (= bs!1373438 (and d!1831903 d!1831899)))

(assert (=> bs!1373438 (= lambda!318554 lambda!318550)))

(declare-fun bs!1373439 () Bool)

(assert (= bs!1373439 (and d!1831903 d!1831901)))

(assert (=> bs!1373439 (= lambda!318554 lambda!318553)))

(declare-fun bs!1373440 () Bool)

(assert (= bs!1373440 (and d!1831903 d!1831755)))

(assert (=> bs!1373440 (= lambda!318554 lambda!318508)))

(declare-fun bs!1373441 () Bool)

(assert (= bs!1373441 (and d!1831903 b!5820342)))

(assert (=> bs!1373441 (not (= lambda!318554 lambda!318449))))

(declare-fun bs!1373442 () Bool)

(assert (= bs!1373442 (and d!1831903 b!5820352)))

(assert (=> bs!1373442 (= lambda!318554 lambda!318451)))

(declare-fun bs!1373443 () Bool)

(assert (= bs!1373443 (and d!1831903 d!1831741)))

(assert (=> bs!1373443 (= lambda!318554 lambda!318493)))

(declare-fun bs!1373444 () Bool)

(assert (= bs!1373444 (and d!1831903 d!1831747)))

(assert (=> bs!1373444 (= lambda!318554 lambda!318496)))

(declare-fun bs!1373445 () Bool)

(assert (= bs!1373445 (and d!1831903 d!1831753)))

(assert (=> bs!1373445 (not (= lambda!318554 lambda!318505))))

(declare-fun bs!1373446 () Bool)

(assert (= bs!1373446 (and d!1831903 d!1831895)))

(assert (=> bs!1373446 (= lambda!318554 lambda!318547)))

(assert (=> bs!1373445 (= lambda!318554 lambda!318504)))

(declare-fun bs!1373447 () Bool)

(assert (= bs!1373447 (and d!1831903 d!1831739)))

(assert (=> bs!1373447 (= lambda!318554 lambda!318491)))

(declare-fun bs!1373448 () Bool)

(assert (= bs!1373448 (and d!1831903 d!1831751)))

(assert (=> bs!1373448 (not (= lambda!318554 lambda!318499))))

(declare-fun lt!2302219 () List!63885)

(assert (=> d!1831903 (forall!14954 lt!2302219 lambda!318554)))

(declare-fun e!3572501 () List!63885)

(assert (=> d!1831903 (= lt!2302219 e!3572501)))

(declare-fun c!1031624 () Bool)

(assert (=> d!1831903 (= c!1031624 (is-Cons!63762 (t!377241 zl!343)))))

(assert (=> d!1831903 (= (unfocusZipperList!1284 (t!377241 zl!343)) lt!2302219)))

(declare-fun b!5821142 () Bool)

(assert (=> b!5821142 (= e!3572501 (Cons!63761 (generalisedConcat!1461 (exprs!5746 (h!70210 (t!377241 zl!343)))) (unfocusZipperList!1284 (t!377241 (t!377241 zl!343)))))))

(declare-fun b!5821143 () Bool)

(assert (=> b!5821143 (= e!3572501 Nil!63761)))

(assert (= (and d!1831903 c!1031624) b!5821142))

(assert (= (and d!1831903 (not c!1031624)) b!5821143))

(declare-fun m!6756218 () Bool)

(assert (=> d!1831903 m!6756218))

(declare-fun m!6756220 () Bool)

(assert (=> b!5821142 m!6756220))

(declare-fun m!6756222 () Bool)

(assert (=> b!5821142 m!6756222))

(assert (=> b!5820673 d!1831903))

(declare-fun d!1831905 () Bool)

(declare-fun res!2454689 () Bool)

(declare-fun e!3572502 () Bool)

(assert (=> d!1831905 (=> res!2454689 e!3572502)))

(assert (=> d!1831905 (= res!2454689 (is-Nil!63761 lt!2302156))))

(assert (=> d!1831905 (= (forall!14954 lt!2302156 lambda!318508) e!3572502)))

(declare-fun b!5821144 () Bool)

(declare-fun e!3572503 () Bool)

(assert (=> b!5821144 (= e!3572502 e!3572503)))

(declare-fun res!2454690 () Bool)

(assert (=> b!5821144 (=> (not res!2454690) (not e!3572503))))

(assert (=> b!5821144 (= res!2454690 (dynLambda!24958 lambda!318508 (h!70209 lt!2302156)))))

(declare-fun b!5821145 () Bool)

(assert (=> b!5821145 (= e!3572503 (forall!14954 (t!377240 lt!2302156) lambda!318508))))

(assert (= (and d!1831905 (not res!2454689)) b!5821144))

(assert (= (and b!5821144 res!2454690) b!5821145))

(declare-fun b_lambda!219447 () Bool)

(assert (=> (not b_lambda!219447) (not b!5821144)))

(declare-fun m!6756224 () Bool)

(assert (=> b!5821144 m!6756224))

(declare-fun m!6756226 () Bool)

(assert (=> b!5821145 m!6756226))

(assert (=> d!1831755 d!1831905))

(assert (=> d!1831717 d!1831711))

(assert (=> d!1831717 d!1831707))

(declare-fun d!1831907 () Bool)

(assert (=> d!1831907 (= (matchR!8047 r!7292 s!2326) (matchRSpec!2965 r!7292 s!2326))))

(assert (=> d!1831907 true))

(declare-fun _$88!4147 () Unit!156996)

(assert (=> d!1831907 (= (choose!44237 r!7292 s!2326) _$88!4147)))

(declare-fun bs!1373449 () Bool)

(assert (= bs!1373449 d!1831907))

(assert (=> bs!1373449 m!6755674))

(assert (=> bs!1373449 m!6755672))

(assert (=> d!1831717 d!1831907))

(assert (=> d!1831717 d!1831737))

(declare-fun d!1831909 () Bool)

(declare-fun c!1031625 () Bool)

(assert (=> d!1831909 (= c!1031625 (isEmpty!35647 (tail!11385 s!2326)))))

(declare-fun e!3572504 () Bool)

(assert (=> d!1831909 (= (matchZipper!1968 (derivationStepZipper!1905 z!1189 (head!12298 s!2326)) (tail!11385 s!2326)) e!3572504)))

(declare-fun b!5821146 () Bool)

(assert (=> b!5821146 (= e!3572504 (nullableZipper!1743 (derivationStepZipper!1905 z!1189 (head!12298 s!2326))))))

(declare-fun b!5821147 () Bool)

(assert (=> b!5821147 (= e!3572504 (matchZipper!1968 (derivationStepZipper!1905 (derivationStepZipper!1905 z!1189 (head!12298 s!2326)) (head!12298 (tail!11385 s!2326))) (tail!11385 (tail!11385 s!2326))))))

(assert (= (and d!1831909 c!1031625) b!5821146))

(assert (= (and d!1831909 (not c!1031625)) b!5821147))

(assert (=> d!1831909 m!6755778))

(assert (=> d!1831909 m!6755782))

(assert (=> b!5821146 m!6755814))

(declare-fun m!6756228 () Bool)

(assert (=> b!5821146 m!6756228))

(assert (=> b!5821147 m!6755778))

(assert (=> b!5821147 m!6756170))

(assert (=> b!5821147 m!6755814))

(assert (=> b!5821147 m!6756170))

(declare-fun m!6756230 () Bool)

(assert (=> b!5821147 m!6756230))

(assert (=> b!5821147 m!6755778))

(assert (=> b!5821147 m!6756174))

(assert (=> b!5821147 m!6756230))

(assert (=> b!5821147 m!6756174))

(declare-fun m!6756232 () Bool)

(assert (=> b!5821147 m!6756232))

(assert (=> b!5820570 d!1831909))

(declare-fun d!1831911 () Bool)

(assert (=> d!1831911 true))

(declare-fun lambda!318557 () Int)

(declare-fun flatMap!1443 ((Set Context!10492) Int) (Set Context!10492))

(assert (=> d!1831911 (= (derivationStepZipper!1905 z!1189 (head!12298 s!2326)) (flatMap!1443 z!1189 lambda!318557))))

(declare-fun bs!1373450 () Bool)

(assert (= bs!1373450 d!1831911))

(declare-fun m!6756234 () Bool)

(assert (=> bs!1373450 m!6756234))

(assert (=> b!5820570 d!1831911))

(assert (=> b!5820570 d!1831883))

(assert (=> b!5820570 d!1831827))

(assert (=> b!5820508 d!1831825))

(assert (=> b!5820508 d!1831827))

(declare-fun bs!1373451 () Bool)

(declare-fun d!1831913 () Bool)

(assert (= bs!1373451 (and d!1831913 d!1831719)))

(declare-fun lambda!318560 () Int)

(assert (=> bs!1373451 (not (= lambda!318560 lambda!318480))))

(declare-fun bs!1373452 () Bool)

(assert (= bs!1373452 (and d!1831913 d!1831721)))

(assert (=> bs!1373452 (not (= lambda!318560 lambda!318483))))

(declare-fun bs!1373453 () Bool)

(assert (= bs!1373453 (and d!1831913 d!1831817)))

(assert (=> bs!1373453 (not (= lambda!318560 lambda!318536))))

(declare-fun bs!1373454 () Bool)

(assert (= bs!1373454 (and d!1831913 d!1831815)))

(assert (=> bs!1373454 (not (= lambda!318560 lambda!318533))))

(declare-fun bs!1373455 () Bool)

(assert (= bs!1373455 (and d!1831913 b!5820339)))

(assert (=> bs!1373455 (not (= lambda!318560 lambda!318450))))

(declare-fun exists!2290 ((Set Context!10492) Int) Bool)

(assert (=> d!1831913 (= (nullableZipper!1743 z!1189) (exists!2290 z!1189 lambda!318560))))

(declare-fun bs!1373456 () Bool)

(assert (= bs!1373456 d!1831913))

(declare-fun m!6756236 () Bool)

(assert (=> bs!1373456 m!6756236))

(assert (=> b!5820569 d!1831913))

(declare-fun d!1831915 () Bool)

(assert (=> d!1831915 (= (nullable!5870 r!7292) (nullableFct!1879 r!7292))))

(declare-fun bs!1373457 () Bool)

(assert (= bs!1373457 d!1831915))

(declare-fun m!6756238 () Bool)

(assert (=> bs!1373457 m!6756238))

(assert (=> b!5820507 d!1831915))

(declare-fun b!5821150 () Bool)

(declare-fun e!3572505 () Bool)

(declare-fun tp!1606283 () Bool)

(declare-fun tp!1606284 () Bool)

(assert (=> b!5821150 (= e!3572505 (and tp!1606283 tp!1606284))))

(assert (=> b!5820701 (= tp!1606168 e!3572505)))

(assert (= (and b!5820701 (is-Cons!63761 (exprs!5746 setElem!39303))) b!5821150))

(declare-fun e!3572506 () Bool)

(assert (=> b!5820734 (= tp!1606204 e!3572506)))

(declare-fun b!5821154 () Bool)

(declare-fun tp!1606289 () Bool)

(declare-fun tp!1606287 () Bool)

(assert (=> b!5821154 (= e!3572506 (and tp!1606289 tp!1606287))))

(declare-fun b!5821153 () Bool)

(declare-fun tp!1606288 () Bool)

(assert (=> b!5821153 (= e!3572506 tp!1606288)))

(declare-fun b!5821151 () Bool)

(assert (=> b!5821151 (= e!3572506 tp_is_empty!40977)))

(declare-fun b!5821152 () Bool)

(declare-fun tp!1606286 () Bool)

(declare-fun tp!1606285 () Bool)

(assert (=> b!5821152 (= e!3572506 (and tp!1606286 tp!1606285))))

(assert (= (and b!5820734 (is-ElementMatch!15862 (reg!16191 (regTwo!32236 r!7292)))) b!5821151))

(assert (= (and b!5820734 (is-Concat!24707 (reg!16191 (regTwo!32236 r!7292)))) b!5821152))

(assert (= (and b!5820734 (is-Star!15862 (reg!16191 (regTwo!32236 r!7292)))) b!5821153))

(assert (= (and b!5820734 (is-Union!15862 (reg!16191 (regTwo!32236 r!7292)))) b!5821154))

(declare-fun condSetEmpty!39307 () Bool)

(assert (=> setNonEmpty!39303 (= condSetEmpty!39307 (= setRest!39303 (as set.empty (Set Context!10492))))))

(declare-fun setRes!39307 () Bool)

(assert (=> setNonEmpty!39303 (= tp!1606169 setRes!39307)))

(declare-fun setIsEmpty!39307 () Bool)

(assert (=> setIsEmpty!39307 setRes!39307))

(declare-fun tp!1606291 () Bool)

(declare-fun setNonEmpty!39307 () Bool)

(declare-fun setElem!39307 () Context!10492)

(declare-fun e!3572507 () Bool)

(assert (=> setNonEmpty!39307 (= setRes!39307 (and tp!1606291 (inv!82903 setElem!39307) e!3572507))))

(declare-fun setRest!39307 () (Set Context!10492))

(assert (=> setNonEmpty!39307 (= setRest!39303 (set.union (set.insert setElem!39307 (as set.empty (Set Context!10492))) setRest!39307))))

(declare-fun b!5821155 () Bool)

(declare-fun tp!1606290 () Bool)

(assert (=> b!5821155 (= e!3572507 tp!1606290)))

(assert (= (and setNonEmpty!39303 condSetEmpty!39307) setIsEmpty!39307))

(assert (= (and setNonEmpty!39303 (not condSetEmpty!39307)) setNonEmpty!39307))

(assert (= setNonEmpty!39307 b!5821155))

(declare-fun m!6756240 () Bool)

(assert (=> setNonEmpty!39307 m!6756240))

(declare-fun e!3572508 () Bool)

(assert (=> b!5820733 (= tp!1606202 e!3572508)))

(declare-fun b!5821159 () Bool)

(declare-fun tp!1606296 () Bool)

(declare-fun tp!1606294 () Bool)

(assert (=> b!5821159 (= e!3572508 (and tp!1606296 tp!1606294))))

(declare-fun b!5821158 () Bool)

(declare-fun tp!1606295 () Bool)

(assert (=> b!5821158 (= e!3572508 tp!1606295)))

(declare-fun b!5821156 () Bool)

(assert (=> b!5821156 (= e!3572508 tp_is_empty!40977)))

(declare-fun b!5821157 () Bool)

(declare-fun tp!1606293 () Bool)

(declare-fun tp!1606292 () Bool)

(assert (=> b!5821157 (= e!3572508 (and tp!1606293 tp!1606292))))

(assert (= (and b!5820733 (is-ElementMatch!15862 (regOne!32236 (regTwo!32236 r!7292)))) b!5821156))

(assert (= (and b!5820733 (is-Concat!24707 (regOne!32236 (regTwo!32236 r!7292)))) b!5821157))

(assert (= (and b!5820733 (is-Star!15862 (regOne!32236 (regTwo!32236 r!7292)))) b!5821158))

(assert (= (and b!5820733 (is-Union!15862 (regOne!32236 (regTwo!32236 r!7292)))) b!5821159))

(declare-fun e!3572509 () Bool)

(assert (=> b!5820733 (= tp!1606201 e!3572509)))

(declare-fun b!5821163 () Bool)

(declare-fun tp!1606301 () Bool)

(declare-fun tp!1606299 () Bool)

(assert (=> b!5821163 (= e!3572509 (and tp!1606301 tp!1606299))))

(declare-fun b!5821162 () Bool)

(declare-fun tp!1606300 () Bool)

(assert (=> b!5821162 (= e!3572509 tp!1606300)))

(declare-fun b!5821160 () Bool)

(assert (=> b!5821160 (= e!3572509 tp_is_empty!40977)))

(declare-fun b!5821161 () Bool)

(declare-fun tp!1606298 () Bool)

(declare-fun tp!1606297 () Bool)

(assert (=> b!5821161 (= e!3572509 (and tp!1606298 tp!1606297))))

(assert (= (and b!5820733 (is-ElementMatch!15862 (regTwo!32236 (regTwo!32236 r!7292)))) b!5821160))

(assert (= (and b!5820733 (is-Concat!24707 (regTwo!32236 (regTwo!32236 r!7292)))) b!5821161))

(assert (= (and b!5820733 (is-Star!15862 (regTwo!32236 (regTwo!32236 r!7292)))) b!5821162))

(assert (= (and b!5820733 (is-Union!15862 (regTwo!32236 (regTwo!32236 r!7292)))) b!5821163))

(declare-fun e!3572510 () Bool)

(assert (=> b!5820740 (= tp!1606210 e!3572510)))

(declare-fun b!5821167 () Bool)

(declare-fun tp!1606306 () Bool)

(declare-fun tp!1606304 () Bool)

(assert (=> b!5821167 (= e!3572510 (and tp!1606306 tp!1606304))))

(declare-fun b!5821166 () Bool)

(declare-fun tp!1606305 () Bool)

(assert (=> b!5821166 (= e!3572510 tp!1606305)))

(declare-fun b!5821164 () Bool)

(assert (=> b!5821164 (= e!3572510 tp_is_empty!40977)))

(declare-fun b!5821165 () Bool)

(declare-fun tp!1606303 () Bool)

(declare-fun tp!1606302 () Bool)

(assert (=> b!5821165 (= e!3572510 (and tp!1606303 tp!1606302))))

(assert (= (and b!5820740 (is-ElementMatch!15862 (h!70209 (exprs!5746 setElem!39297)))) b!5821164))

(assert (= (and b!5820740 (is-Concat!24707 (h!70209 (exprs!5746 setElem!39297)))) b!5821165))

(assert (= (and b!5820740 (is-Star!15862 (h!70209 (exprs!5746 setElem!39297)))) b!5821166))

(assert (= (and b!5820740 (is-Union!15862 (h!70209 (exprs!5746 setElem!39297)))) b!5821167))

(declare-fun b!5821168 () Bool)

(declare-fun e!3572511 () Bool)

(declare-fun tp!1606307 () Bool)

(declare-fun tp!1606308 () Bool)

(assert (=> b!5821168 (= e!3572511 (and tp!1606307 tp!1606308))))

(assert (=> b!5820740 (= tp!1606211 e!3572511)))

(assert (= (and b!5820740 (is-Cons!63761 (t!377240 (exprs!5746 setElem!39297)))) b!5821168))

(declare-fun e!3572512 () Bool)

(assert (=> b!5820726 (= tp!1606194 e!3572512)))

(declare-fun b!5821172 () Bool)

(declare-fun tp!1606313 () Bool)

(declare-fun tp!1606311 () Bool)

(assert (=> b!5821172 (= e!3572512 (and tp!1606313 tp!1606311))))

(declare-fun b!5821171 () Bool)

(declare-fun tp!1606312 () Bool)

(assert (=> b!5821171 (= e!3572512 tp!1606312)))

(declare-fun b!5821169 () Bool)

(assert (=> b!5821169 (= e!3572512 tp_is_empty!40977)))

(declare-fun b!5821170 () Bool)

(declare-fun tp!1606310 () Bool)

(declare-fun tp!1606309 () Bool)

(assert (=> b!5821170 (= e!3572512 (and tp!1606310 tp!1606309))))

(assert (= (and b!5820726 (is-ElementMatch!15862 (reg!16191 (regTwo!32237 r!7292)))) b!5821169))

(assert (= (and b!5820726 (is-Concat!24707 (reg!16191 (regTwo!32237 r!7292)))) b!5821170))

(assert (= (and b!5820726 (is-Star!15862 (reg!16191 (regTwo!32237 r!7292)))) b!5821171))

(assert (= (and b!5820726 (is-Union!15862 (reg!16191 (regTwo!32237 r!7292)))) b!5821172))

(declare-fun e!3572513 () Bool)

(assert (=> b!5820727 (= tp!1606195 e!3572513)))

(declare-fun b!5821176 () Bool)

(declare-fun tp!1606318 () Bool)

(declare-fun tp!1606316 () Bool)

(assert (=> b!5821176 (= e!3572513 (and tp!1606318 tp!1606316))))

(declare-fun b!5821175 () Bool)

(declare-fun tp!1606317 () Bool)

(assert (=> b!5821175 (= e!3572513 tp!1606317)))

(declare-fun b!5821173 () Bool)

(assert (=> b!5821173 (= e!3572513 tp_is_empty!40977)))

(declare-fun b!5821174 () Bool)

(declare-fun tp!1606315 () Bool)

(declare-fun tp!1606314 () Bool)

(assert (=> b!5821174 (= e!3572513 (and tp!1606315 tp!1606314))))

(assert (= (and b!5820727 (is-ElementMatch!15862 (regOne!32237 (regTwo!32237 r!7292)))) b!5821173))

(assert (= (and b!5820727 (is-Concat!24707 (regOne!32237 (regTwo!32237 r!7292)))) b!5821174))

(assert (= (and b!5820727 (is-Star!15862 (regOne!32237 (regTwo!32237 r!7292)))) b!5821175))

(assert (= (and b!5820727 (is-Union!15862 (regOne!32237 (regTwo!32237 r!7292)))) b!5821176))

(declare-fun e!3572514 () Bool)

(assert (=> b!5820727 (= tp!1606193 e!3572514)))

(declare-fun b!5821180 () Bool)

(declare-fun tp!1606323 () Bool)

(declare-fun tp!1606321 () Bool)

(assert (=> b!5821180 (= e!3572514 (and tp!1606323 tp!1606321))))

(declare-fun b!5821179 () Bool)

(declare-fun tp!1606322 () Bool)

(assert (=> b!5821179 (= e!3572514 tp!1606322)))

(declare-fun b!5821177 () Bool)

(assert (=> b!5821177 (= e!3572514 tp_is_empty!40977)))

(declare-fun b!5821178 () Bool)

(declare-fun tp!1606320 () Bool)

(declare-fun tp!1606319 () Bool)

(assert (=> b!5821178 (= e!3572514 (and tp!1606320 tp!1606319))))

(assert (= (and b!5820727 (is-ElementMatch!15862 (regTwo!32237 (regTwo!32237 r!7292)))) b!5821177))

(assert (= (and b!5820727 (is-Concat!24707 (regTwo!32237 (regTwo!32237 r!7292)))) b!5821178))

(assert (= (and b!5820727 (is-Star!15862 (regTwo!32237 (regTwo!32237 r!7292)))) b!5821179))

(assert (= (and b!5820727 (is-Union!15862 (regTwo!32237 (regTwo!32237 r!7292)))) b!5821180))

(declare-fun e!3572515 () Bool)

(assert (=> b!5820725 (= tp!1606192 e!3572515)))

(declare-fun b!5821184 () Bool)

(declare-fun tp!1606328 () Bool)

(declare-fun tp!1606326 () Bool)

(assert (=> b!5821184 (= e!3572515 (and tp!1606328 tp!1606326))))

(declare-fun b!5821183 () Bool)

(declare-fun tp!1606327 () Bool)

(assert (=> b!5821183 (= e!3572515 tp!1606327)))

(declare-fun b!5821181 () Bool)

(assert (=> b!5821181 (= e!3572515 tp_is_empty!40977)))

(declare-fun b!5821182 () Bool)

(declare-fun tp!1606325 () Bool)

(declare-fun tp!1606324 () Bool)

(assert (=> b!5821182 (= e!3572515 (and tp!1606325 tp!1606324))))

(assert (= (and b!5820725 (is-ElementMatch!15862 (regOne!32236 (regTwo!32237 r!7292)))) b!5821181))

(assert (= (and b!5820725 (is-Concat!24707 (regOne!32236 (regTwo!32237 r!7292)))) b!5821182))

(assert (= (and b!5820725 (is-Star!15862 (regOne!32236 (regTwo!32237 r!7292)))) b!5821183))

(assert (= (and b!5820725 (is-Union!15862 (regOne!32236 (regTwo!32237 r!7292)))) b!5821184))

(declare-fun e!3572516 () Bool)

(assert (=> b!5820725 (= tp!1606191 e!3572516)))

(declare-fun b!5821188 () Bool)

(declare-fun tp!1606333 () Bool)

(declare-fun tp!1606331 () Bool)

(assert (=> b!5821188 (= e!3572516 (and tp!1606333 tp!1606331))))

(declare-fun b!5821187 () Bool)

(declare-fun tp!1606332 () Bool)

(assert (=> b!5821187 (= e!3572516 tp!1606332)))

(declare-fun b!5821185 () Bool)

(assert (=> b!5821185 (= e!3572516 tp_is_empty!40977)))

(declare-fun b!5821186 () Bool)

(declare-fun tp!1606330 () Bool)

(declare-fun tp!1606329 () Bool)

(assert (=> b!5821186 (= e!3572516 (and tp!1606330 tp!1606329))))

(assert (= (and b!5820725 (is-ElementMatch!15862 (regTwo!32236 (regTwo!32237 r!7292)))) b!5821185))

(assert (= (and b!5820725 (is-Concat!24707 (regTwo!32236 (regTwo!32237 r!7292)))) b!5821186))

(assert (= (and b!5820725 (is-Star!15862 (regTwo!32236 (regTwo!32237 r!7292)))) b!5821187))

(assert (= (and b!5820725 (is-Union!15862 (regTwo!32236 (regTwo!32237 r!7292)))) b!5821188))

(declare-fun b!5821189 () Bool)

(declare-fun e!3572517 () Bool)

(declare-fun tp!1606334 () Bool)

(assert (=> b!5821189 (= e!3572517 (and tp_is_empty!40977 tp!1606334))))

(assert (=> b!5820682 (= tp!1606163 e!3572517)))

(assert (= (and b!5820682 (is-Cons!63763 (t!377242 (t!377242 s!2326)))) b!5821189))

(declare-fun e!3572518 () Bool)

(assert (=> b!5820745 (= tp!1606217 e!3572518)))

(declare-fun b!5821193 () Bool)

(declare-fun tp!1606339 () Bool)

(declare-fun tp!1606337 () Bool)

(assert (=> b!5821193 (= e!3572518 (and tp!1606339 tp!1606337))))

(declare-fun b!5821192 () Bool)

(declare-fun tp!1606338 () Bool)

(assert (=> b!5821192 (= e!3572518 tp!1606338)))

(declare-fun b!5821190 () Bool)

(assert (=> b!5821190 (= e!3572518 tp_is_empty!40977)))

(declare-fun b!5821191 () Bool)

(declare-fun tp!1606336 () Bool)

(declare-fun tp!1606335 () Bool)

(assert (=> b!5821191 (= e!3572518 (and tp!1606336 tp!1606335))))

(assert (= (and b!5820745 (is-ElementMatch!15862 (h!70209 (exprs!5746 (h!70210 zl!343))))) b!5821190))

(assert (= (and b!5820745 (is-Concat!24707 (h!70209 (exprs!5746 (h!70210 zl!343))))) b!5821191))

(assert (= (and b!5820745 (is-Star!15862 (h!70209 (exprs!5746 (h!70210 zl!343))))) b!5821192))

(assert (= (and b!5820745 (is-Union!15862 (h!70209 (exprs!5746 (h!70210 zl!343))))) b!5821193))

(declare-fun b!5821194 () Bool)

(declare-fun e!3572519 () Bool)

(declare-fun tp!1606340 () Bool)

(declare-fun tp!1606341 () Bool)

(assert (=> b!5821194 (= e!3572519 (and tp!1606340 tp!1606341))))

(assert (=> b!5820745 (= tp!1606218 e!3572519)))

(assert (= (and b!5820745 (is-Cons!63761 (t!377240 (exprs!5746 (h!70210 zl!343))))) b!5821194))

(declare-fun e!3572520 () Bool)

(assert (=> b!5820731 (= tp!1606200 e!3572520)))

(declare-fun b!5821198 () Bool)

(declare-fun tp!1606346 () Bool)

(declare-fun tp!1606344 () Bool)

(assert (=> b!5821198 (= e!3572520 (and tp!1606346 tp!1606344))))

(declare-fun b!5821197 () Bool)

(declare-fun tp!1606345 () Bool)

(assert (=> b!5821197 (= e!3572520 tp!1606345)))

(declare-fun b!5821195 () Bool)

(assert (=> b!5821195 (= e!3572520 tp_is_empty!40977)))

(declare-fun b!5821196 () Bool)

(declare-fun tp!1606343 () Bool)

(declare-fun tp!1606342 () Bool)

(assert (=> b!5821196 (= e!3572520 (and tp!1606343 tp!1606342))))

(assert (= (and b!5820731 (is-ElementMatch!15862 (regOne!32237 (regOne!32236 r!7292)))) b!5821195))

(assert (= (and b!5820731 (is-Concat!24707 (regOne!32237 (regOne!32236 r!7292)))) b!5821196))

(assert (= (and b!5820731 (is-Star!15862 (regOne!32237 (regOne!32236 r!7292)))) b!5821197))

(assert (= (and b!5820731 (is-Union!15862 (regOne!32237 (regOne!32236 r!7292)))) b!5821198))

(declare-fun e!3572521 () Bool)

(assert (=> b!5820731 (= tp!1606198 e!3572521)))

(declare-fun b!5821202 () Bool)

(declare-fun tp!1606351 () Bool)

(declare-fun tp!1606349 () Bool)

(assert (=> b!5821202 (= e!3572521 (and tp!1606351 tp!1606349))))

(declare-fun b!5821201 () Bool)

(declare-fun tp!1606350 () Bool)

(assert (=> b!5821201 (= e!3572521 tp!1606350)))

(declare-fun b!5821199 () Bool)

(assert (=> b!5821199 (= e!3572521 tp_is_empty!40977)))

(declare-fun b!5821200 () Bool)

(declare-fun tp!1606348 () Bool)

(declare-fun tp!1606347 () Bool)

(assert (=> b!5821200 (= e!3572521 (and tp!1606348 tp!1606347))))

(assert (= (and b!5820731 (is-ElementMatch!15862 (regTwo!32237 (regOne!32236 r!7292)))) b!5821199))

(assert (= (and b!5820731 (is-Concat!24707 (regTwo!32237 (regOne!32236 r!7292)))) b!5821200))

(assert (= (and b!5820731 (is-Star!15862 (regTwo!32237 (regOne!32236 r!7292)))) b!5821201))

(assert (= (and b!5820731 (is-Union!15862 (regTwo!32237 (regOne!32236 r!7292)))) b!5821202))

(declare-fun e!3572522 () Bool)

(assert (=> b!5820730 (= tp!1606199 e!3572522)))

(declare-fun b!5821206 () Bool)

(declare-fun tp!1606356 () Bool)

(declare-fun tp!1606354 () Bool)

(assert (=> b!5821206 (= e!3572522 (and tp!1606356 tp!1606354))))

(declare-fun b!5821205 () Bool)

(declare-fun tp!1606355 () Bool)

(assert (=> b!5821205 (= e!3572522 tp!1606355)))

(declare-fun b!5821203 () Bool)

(assert (=> b!5821203 (= e!3572522 tp_is_empty!40977)))

(declare-fun b!5821204 () Bool)

(declare-fun tp!1606353 () Bool)

(declare-fun tp!1606352 () Bool)

(assert (=> b!5821204 (= e!3572522 (and tp!1606353 tp!1606352))))

(assert (= (and b!5820730 (is-ElementMatch!15862 (reg!16191 (regOne!32236 r!7292)))) b!5821203))

(assert (= (and b!5820730 (is-Concat!24707 (reg!16191 (regOne!32236 r!7292)))) b!5821204))

(assert (= (and b!5820730 (is-Star!15862 (reg!16191 (regOne!32236 r!7292)))) b!5821205))

(assert (= (and b!5820730 (is-Union!15862 (reg!16191 (regOne!32236 r!7292)))) b!5821206))

(declare-fun e!3572523 () Bool)

(assert (=> b!5820744 (= tp!1606216 e!3572523)))

(declare-fun b!5821210 () Bool)

(declare-fun tp!1606361 () Bool)

(declare-fun tp!1606359 () Bool)

(assert (=> b!5821210 (= e!3572523 (and tp!1606361 tp!1606359))))

(declare-fun b!5821209 () Bool)

(declare-fun tp!1606360 () Bool)

(assert (=> b!5821209 (= e!3572523 tp!1606360)))

(declare-fun b!5821207 () Bool)

(assert (=> b!5821207 (= e!3572523 tp_is_empty!40977)))

(declare-fun b!5821208 () Bool)

(declare-fun tp!1606358 () Bool)

(declare-fun tp!1606357 () Bool)

(assert (=> b!5821208 (= e!3572523 (and tp!1606358 tp!1606357))))

(assert (= (and b!5820744 (is-ElementMatch!15862 (regOne!32237 (reg!16191 r!7292)))) b!5821207))

(assert (= (and b!5820744 (is-Concat!24707 (regOne!32237 (reg!16191 r!7292)))) b!5821208))

(assert (= (and b!5820744 (is-Star!15862 (regOne!32237 (reg!16191 r!7292)))) b!5821209))

(assert (= (and b!5820744 (is-Union!15862 (regOne!32237 (reg!16191 r!7292)))) b!5821210))

(declare-fun e!3572524 () Bool)

(assert (=> b!5820744 (= tp!1606214 e!3572524)))

(declare-fun b!5821214 () Bool)

(declare-fun tp!1606366 () Bool)

(declare-fun tp!1606364 () Bool)

(assert (=> b!5821214 (= e!3572524 (and tp!1606366 tp!1606364))))

(declare-fun b!5821213 () Bool)

(declare-fun tp!1606365 () Bool)

(assert (=> b!5821213 (= e!3572524 tp!1606365)))

(declare-fun b!5821211 () Bool)

(assert (=> b!5821211 (= e!3572524 tp_is_empty!40977)))

(declare-fun b!5821212 () Bool)

(declare-fun tp!1606363 () Bool)

(declare-fun tp!1606362 () Bool)

(assert (=> b!5821212 (= e!3572524 (and tp!1606363 tp!1606362))))

(assert (= (and b!5820744 (is-ElementMatch!15862 (regTwo!32237 (reg!16191 r!7292)))) b!5821211))

(assert (= (and b!5820744 (is-Concat!24707 (regTwo!32237 (reg!16191 r!7292)))) b!5821212))

(assert (= (and b!5820744 (is-Star!15862 (regTwo!32237 (reg!16191 r!7292)))) b!5821213))

(assert (= (and b!5820744 (is-Union!15862 (regTwo!32237 (reg!16191 r!7292)))) b!5821214))

(declare-fun e!3572525 () Bool)

(assert (=> b!5820729 (= tp!1606197 e!3572525)))

(declare-fun b!5821218 () Bool)

(declare-fun tp!1606371 () Bool)

(declare-fun tp!1606369 () Bool)

(assert (=> b!5821218 (= e!3572525 (and tp!1606371 tp!1606369))))

(declare-fun b!5821217 () Bool)

(declare-fun tp!1606370 () Bool)

(assert (=> b!5821217 (= e!3572525 tp!1606370)))

(declare-fun b!5821215 () Bool)

(assert (=> b!5821215 (= e!3572525 tp_is_empty!40977)))

(declare-fun b!5821216 () Bool)

(declare-fun tp!1606368 () Bool)

(declare-fun tp!1606367 () Bool)

(assert (=> b!5821216 (= e!3572525 (and tp!1606368 tp!1606367))))

(assert (= (and b!5820729 (is-ElementMatch!15862 (regOne!32236 (regOne!32236 r!7292)))) b!5821215))

(assert (= (and b!5820729 (is-Concat!24707 (regOne!32236 (regOne!32236 r!7292)))) b!5821216))

(assert (= (and b!5820729 (is-Star!15862 (regOne!32236 (regOne!32236 r!7292)))) b!5821217))

(assert (= (and b!5820729 (is-Union!15862 (regOne!32236 (regOne!32236 r!7292)))) b!5821218))

(declare-fun e!3572526 () Bool)

(assert (=> b!5820729 (= tp!1606196 e!3572526)))

(declare-fun b!5821222 () Bool)

(declare-fun tp!1606376 () Bool)

(declare-fun tp!1606374 () Bool)

(assert (=> b!5821222 (= e!3572526 (and tp!1606376 tp!1606374))))

(declare-fun b!5821221 () Bool)

(declare-fun tp!1606375 () Bool)

(assert (=> b!5821221 (= e!3572526 tp!1606375)))

(declare-fun b!5821219 () Bool)

(assert (=> b!5821219 (= e!3572526 tp_is_empty!40977)))

(declare-fun b!5821220 () Bool)

(declare-fun tp!1606373 () Bool)

(declare-fun tp!1606372 () Bool)

(assert (=> b!5821220 (= e!3572526 (and tp!1606373 tp!1606372))))

(assert (= (and b!5820729 (is-ElementMatch!15862 (regTwo!32236 (regOne!32236 r!7292)))) b!5821219))

(assert (= (and b!5820729 (is-Concat!24707 (regTwo!32236 (regOne!32236 r!7292)))) b!5821220))

(assert (= (and b!5820729 (is-Star!15862 (regTwo!32236 (regOne!32236 r!7292)))) b!5821221))

(assert (= (and b!5820729 (is-Union!15862 (regTwo!32236 (regOne!32236 r!7292)))) b!5821222))

(declare-fun e!3572527 () Bool)

(assert (=> b!5820743 (= tp!1606215 e!3572527)))

(declare-fun b!5821226 () Bool)

(declare-fun tp!1606381 () Bool)

(declare-fun tp!1606379 () Bool)

(assert (=> b!5821226 (= e!3572527 (and tp!1606381 tp!1606379))))

(declare-fun b!5821225 () Bool)

(declare-fun tp!1606380 () Bool)

(assert (=> b!5821225 (= e!3572527 tp!1606380)))

(declare-fun b!5821223 () Bool)

(assert (=> b!5821223 (= e!3572527 tp_is_empty!40977)))

(declare-fun b!5821224 () Bool)

(declare-fun tp!1606378 () Bool)

(declare-fun tp!1606377 () Bool)

(assert (=> b!5821224 (= e!3572527 (and tp!1606378 tp!1606377))))

(assert (= (and b!5820743 (is-ElementMatch!15862 (reg!16191 (reg!16191 r!7292)))) b!5821223))

(assert (= (and b!5820743 (is-Concat!24707 (reg!16191 (reg!16191 r!7292)))) b!5821224))

(assert (= (and b!5820743 (is-Star!15862 (reg!16191 (reg!16191 r!7292)))) b!5821225))

(assert (= (and b!5820743 (is-Union!15862 (reg!16191 (reg!16191 r!7292)))) b!5821226))

(declare-fun e!3572528 () Bool)

(assert (=> b!5820742 (= tp!1606213 e!3572528)))

(declare-fun b!5821230 () Bool)

(declare-fun tp!1606386 () Bool)

(declare-fun tp!1606384 () Bool)

(assert (=> b!5821230 (= e!3572528 (and tp!1606386 tp!1606384))))

(declare-fun b!5821229 () Bool)

(declare-fun tp!1606385 () Bool)

(assert (=> b!5821229 (= e!3572528 tp!1606385)))

(declare-fun b!5821227 () Bool)

(assert (=> b!5821227 (= e!3572528 tp_is_empty!40977)))

(declare-fun b!5821228 () Bool)

(declare-fun tp!1606383 () Bool)

(declare-fun tp!1606382 () Bool)

(assert (=> b!5821228 (= e!3572528 (and tp!1606383 tp!1606382))))

(assert (= (and b!5820742 (is-ElementMatch!15862 (regOne!32236 (reg!16191 r!7292)))) b!5821227))

(assert (= (and b!5820742 (is-Concat!24707 (regOne!32236 (reg!16191 r!7292)))) b!5821228))

(assert (= (and b!5820742 (is-Star!15862 (regOne!32236 (reg!16191 r!7292)))) b!5821229))

(assert (= (and b!5820742 (is-Union!15862 (regOne!32236 (reg!16191 r!7292)))) b!5821230))

(declare-fun e!3572529 () Bool)

(assert (=> b!5820742 (= tp!1606212 e!3572529)))

(declare-fun b!5821234 () Bool)

(declare-fun tp!1606391 () Bool)

(declare-fun tp!1606389 () Bool)

(assert (=> b!5821234 (= e!3572529 (and tp!1606391 tp!1606389))))

(declare-fun b!5821233 () Bool)

(declare-fun tp!1606390 () Bool)

(assert (=> b!5821233 (= e!3572529 tp!1606390)))

(declare-fun b!5821231 () Bool)

(assert (=> b!5821231 (= e!3572529 tp_is_empty!40977)))

(declare-fun b!5821232 () Bool)

(declare-fun tp!1606388 () Bool)

(declare-fun tp!1606387 () Bool)

(assert (=> b!5821232 (= e!3572529 (and tp!1606388 tp!1606387))))

(assert (= (and b!5820742 (is-ElementMatch!15862 (regTwo!32236 (reg!16191 r!7292)))) b!5821231))

(assert (= (and b!5820742 (is-Concat!24707 (regTwo!32236 (reg!16191 r!7292)))) b!5821232))

(assert (= (and b!5820742 (is-Star!15862 (regTwo!32236 (reg!16191 r!7292)))) b!5821233))

(assert (= (and b!5820742 (is-Union!15862 (regTwo!32236 (reg!16191 r!7292)))) b!5821234))

(declare-fun b!5821236 () Bool)

(declare-fun e!3572531 () Bool)

(declare-fun tp!1606392 () Bool)

(assert (=> b!5821236 (= e!3572531 tp!1606392)))

(declare-fun tp!1606393 () Bool)

(declare-fun b!5821235 () Bool)

(declare-fun e!3572530 () Bool)

(assert (=> b!5821235 (= e!3572530 (and (inv!82903 (h!70210 (t!377241 (t!377241 zl!343)))) e!3572531 tp!1606393))))

(assert (=> b!5820708 (= tp!1606175 e!3572530)))

(assert (= b!5821235 b!5821236))

(assert (= (and b!5820708 (is-Cons!63762 (t!377241 (t!377241 zl!343)))) b!5821235))

(declare-fun m!6756242 () Bool)

(assert (=> b!5821235 m!6756242))

(declare-fun e!3572532 () Bool)

(assert (=> b!5820723 (= tp!1606190 e!3572532)))

(declare-fun b!5821240 () Bool)

(declare-fun tp!1606398 () Bool)

(declare-fun tp!1606396 () Bool)

(assert (=> b!5821240 (= e!3572532 (and tp!1606398 tp!1606396))))

(declare-fun b!5821239 () Bool)

(declare-fun tp!1606397 () Bool)

(assert (=> b!5821239 (= e!3572532 tp!1606397)))

(declare-fun b!5821237 () Bool)

(assert (=> b!5821237 (= e!3572532 tp_is_empty!40977)))

(declare-fun b!5821238 () Bool)

(declare-fun tp!1606395 () Bool)

(declare-fun tp!1606394 () Bool)

(assert (=> b!5821238 (= e!3572532 (and tp!1606395 tp!1606394))))

(assert (= (and b!5820723 (is-ElementMatch!15862 (regOne!32237 (regOne!32237 r!7292)))) b!5821237))

(assert (= (and b!5820723 (is-Concat!24707 (regOne!32237 (regOne!32237 r!7292)))) b!5821238))

(assert (= (and b!5820723 (is-Star!15862 (regOne!32237 (regOne!32237 r!7292)))) b!5821239))

(assert (= (and b!5820723 (is-Union!15862 (regOne!32237 (regOne!32237 r!7292)))) b!5821240))

(declare-fun e!3572533 () Bool)

(assert (=> b!5820723 (= tp!1606188 e!3572533)))

(declare-fun b!5821244 () Bool)

(declare-fun tp!1606403 () Bool)

(declare-fun tp!1606401 () Bool)

(assert (=> b!5821244 (= e!3572533 (and tp!1606403 tp!1606401))))

(declare-fun b!5821243 () Bool)

(declare-fun tp!1606402 () Bool)

(assert (=> b!5821243 (= e!3572533 tp!1606402)))

(declare-fun b!5821241 () Bool)

(assert (=> b!5821241 (= e!3572533 tp_is_empty!40977)))

(declare-fun b!5821242 () Bool)

(declare-fun tp!1606400 () Bool)

(declare-fun tp!1606399 () Bool)

(assert (=> b!5821242 (= e!3572533 (and tp!1606400 tp!1606399))))

(assert (= (and b!5820723 (is-ElementMatch!15862 (regTwo!32237 (regOne!32237 r!7292)))) b!5821241))

(assert (= (and b!5820723 (is-Concat!24707 (regTwo!32237 (regOne!32237 r!7292)))) b!5821242))

(assert (= (and b!5820723 (is-Star!15862 (regTwo!32237 (regOne!32237 r!7292)))) b!5821243))

(assert (= (and b!5820723 (is-Union!15862 (regTwo!32237 (regOne!32237 r!7292)))) b!5821244))

(declare-fun b!5821245 () Bool)

(declare-fun e!3572534 () Bool)

(declare-fun tp!1606404 () Bool)

(declare-fun tp!1606405 () Bool)

(assert (=> b!5821245 (= e!3572534 (and tp!1606404 tp!1606405))))

(assert (=> b!5820709 (= tp!1606174 e!3572534)))

(assert (= (and b!5820709 (is-Cons!63761 (exprs!5746 (h!70210 (t!377241 zl!343))))) b!5821245))

(declare-fun e!3572535 () Bool)

(assert (=> b!5820722 (= tp!1606189 e!3572535)))

(declare-fun b!5821249 () Bool)

(declare-fun tp!1606410 () Bool)

(declare-fun tp!1606408 () Bool)

(assert (=> b!5821249 (= e!3572535 (and tp!1606410 tp!1606408))))

(declare-fun b!5821248 () Bool)

(declare-fun tp!1606409 () Bool)

(assert (=> b!5821248 (= e!3572535 tp!1606409)))

(declare-fun b!5821246 () Bool)

(assert (=> b!5821246 (= e!3572535 tp_is_empty!40977)))

(declare-fun b!5821247 () Bool)

(declare-fun tp!1606407 () Bool)

(declare-fun tp!1606406 () Bool)

(assert (=> b!5821247 (= e!3572535 (and tp!1606407 tp!1606406))))

(assert (= (and b!5820722 (is-ElementMatch!15862 (reg!16191 (regOne!32237 r!7292)))) b!5821246))

(assert (= (and b!5820722 (is-Concat!24707 (reg!16191 (regOne!32237 r!7292)))) b!5821247))

(assert (= (and b!5820722 (is-Star!15862 (reg!16191 (regOne!32237 r!7292)))) b!5821248))

(assert (= (and b!5820722 (is-Union!15862 (reg!16191 (regOne!32237 r!7292)))) b!5821249))

(declare-fun e!3572536 () Bool)

(assert (=> b!5820735 (= tp!1606205 e!3572536)))

(declare-fun b!5821253 () Bool)

(declare-fun tp!1606415 () Bool)

(declare-fun tp!1606413 () Bool)

(assert (=> b!5821253 (= e!3572536 (and tp!1606415 tp!1606413))))

(declare-fun b!5821252 () Bool)

(declare-fun tp!1606414 () Bool)

(assert (=> b!5821252 (= e!3572536 tp!1606414)))

(declare-fun b!5821250 () Bool)

(assert (=> b!5821250 (= e!3572536 tp_is_empty!40977)))

(declare-fun b!5821251 () Bool)

(declare-fun tp!1606412 () Bool)

(declare-fun tp!1606411 () Bool)

(assert (=> b!5821251 (= e!3572536 (and tp!1606412 tp!1606411))))

(assert (= (and b!5820735 (is-ElementMatch!15862 (regOne!32237 (regTwo!32236 r!7292)))) b!5821250))

(assert (= (and b!5820735 (is-Concat!24707 (regOne!32237 (regTwo!32236 r!7292)))) b!5821251))

(assert (= (and b!5820735 (is-Star!15862 (regOne!32237 (regTwo!32236 r!7292)))) b!5821252))

(assert (= (and b!5820735 (is-Union!15862 (regOne!32237 (regTwo!32236 r!7292)))) b!5821253))

(declare-fun e!3572537 () Bool)

(assert (=> b!5820735 (= tp!1606203 e!3572537)))

(declare-fun b!5821257 () Bool)

(declare-fun tp!1606420 () Bool)

(declare-fun tp!1606418 () Bool)

(assert (=> b!5821257 (= e!3572537 (and tp!1606420 tp!1606418))))

(declare-fun b!5821256 () Bool)

(declare-fun tp!1606419 () Bool)

(assert (=> b!5821256 (= e!3572537 tp!1606419)))

(declare-fun b!5821254 () Bool)

(assert (=> b!5821254 (= e!3572537 tp_is_empty!40977)))

(declare-fun b!5821255 () Bool)

(declare-fun tp!1606417 () Bool)

(declare-fun tp!1606416 () Bool)

(assert (=> b!5821255 (= e!3572537 (and tp!1606417 tp!1606416))))

(assert (= (and b!5820735 (is-ElementMatch!15862 (regTwo!32237 (regTwo!32236 r!7292)))) b!5821254))

(assert (= (and b!5820735 (is-Concat!24707 (regTwo!32237 (regTwo!32236 r!7292)))) b!5821255))

(assert (= (and b!5820735 (is-Star!15862 (regTwo!32237 (regTwo!32236 r!7292)))) b!5821256))

(assert (= (and b!5820735 (is-Union!15862 (regTwo!32237 (regTwo!32236 r!7292)))) b!5821257))

(declare-fun e!3572538 () Bool)

(assert (=> b!5820721 (= tp!1606187 e!3572538)))

(declare-fun b!5821261 () Bool)

(declare-fun tp!1606425 () Bool)

(declare-fun tp!1606423 () Bool)

(assert (=> b!5821261 (= e!3572538 (and tp!1606425 tp!1606423))))

(declare-fun b!5821260 () Bool)

(declare-fun tp!1606424 () Bool)

(assert (=> b!5821260 (= e!3572538 tp!1606424)))

(declare-fun b!5821258 () Bool)

(assert (=> b!5821258 (= e!3572538 tp_is_empty!40977)))

(declare-fun b!5821259 () Bool)

(declare-fun tp!1606422 () Bool)

(declare-fun tp!1606421 () Bool)

(assert (=> b!5821259 (= e!3572538 (and tp!1606422 tp!1606421))))

(assert (= (and b!5820721 (is-ElementMatch!15862 (regOne!32236 (regOne!32237 r!7292)))) b!5821258))

(assert (= (and b!5820721 (is-Concat!24707 (regOne!32236 (regOne!32237 r!7292)))) b!5821259))

(assert (= (and b!5820721 (is-Star!15862 (regOne!32236 (regOne!32237 r!7292)))) b!5821260))

(assert (= (and b!5820721 (is-Union!15862 (regOne!32236 (regOne!32237 r!7292)))) b!5821261))

(declare-fun e!3572539 () Bool)

(assert (=> b!5820721 (= tp!1606186 e!3572539)))

(declare-fun b!5821265 () Bool)

(declare-fun tp!1606430 () Bool)

(declare-fun tp!1606428 () Bool)

(assert (=> b!5821265 (= e!3572539 (and tp!1606430 tp!1606428))))

(declare-fun b!5821264 () Bool)

(declare-fun tp!1606429 () Bool)

(assert (=> b!5821264 (= e!3572539 tp!1606429)))

(declare-fun b!5821262 () Bool)

(assert (=> b!5821262 (= e!3572539 tp_is_empty!40977)))

(declare-fun b!5821263 () Bool)

(declare-fun tp!1606427 () Bool)

(declare-fun tp!1606426 () Bool)

(assert (=> b!5821263 (= e!3572539 (and tp!1606427 tp!1606426))))

(assert (= (and b!5820721 (is-ElementMatch!15862 (regTwo!32236 (regOne!32237 r!7292)))) b!5821262))

(assert (= (and b!5820721 (is-Concat!24707 (regTwo!32236 (regOne!32237 r!7292)))) b!5821263))

(assert (= (and b!5820721 (is-Star!15862 (regTwo!32236 (regOne!32237 r!7292)))) b!5821264))

(assert (= (and b!5820721 (is-Union!15862 (regTwo!32236 (regOne!32237 r!7292)))) b!5821265))

(declare-fun b_lambda!219449 () Bool)

(assert (= b_lambda!219437 (or b!5820339 b_lambda!219449)))

(declare-fun bs!1373458 () Bool)

(declare-fun d!1831917 () Bool)

(assert (= bs!1373458 (and d!1831917 b!5820339)))

(assert (=> bs!1373458 (= (dynLambda!24959 lambda!318450 (h!70210 (t!377241 zl!343))) (matchZipper!1968 (set.insert (h!70210 (t!377241 zl!343)) (as set.empty (Set Context!10492))) s!2326))))

(declare-fun m!6756244 () Bool)

(assert (=> bs!1373458 m!6756244))

(assert (=> bs!1373458 m!6756244))

(declare-fun m!6756246 () Bool)

(assert (=> bs!1373458 m!6756246))

(assert (=> b!5821022 d!1831917))

(declare-fun b_lambda!219451 () Bool)

(assert (= b_lambda!219429 (or d!1831753 b_lambda!219451)))

(declare-fun bs!1373459 () Bool)

(declare-fun d!1831919 () Bool)

(assert (= bs!1373459 (and d!1831919 d!1831753)))

(assert (=> bs!1373459 (= (dynLambda!24958 lambda!318504 (h!70209 lt!2302084)) (validRegex!7598 (h!70209 lt!2302084)))))

(declare-fun m!6756248 () Bool)

(assert (=> bs!1373459 m!6756248))

(assert (=> b!5820930 d!1831919))

(declare-fun b_lambda!219453 () Bool)

(assert (= b_lambda!219447 (or d!1831755 b_lambda!219453)))

(declare-fun bs!1373460 () Bool)

(declare-fun d!1831921 () Bool)

(assert (= bs!1373460 (and d!1831921 d!1831755)))

(assert (=> bs!1373460 (= (dynLambda!24958 lambda!318508 (h!70209 lt!2302156)) (validRegex!7598 (h!70209 lt!2302156)))))

(declare-fun m!6756250 () Bool)

(assert (=> bs!1373460 m!6756250))

(assert (=> b!5821144 d!1831921))

(declare-fun b_lambda!219455 () Bool)

(assert (= b_lambda!219445 (or d!1831747 b_lambda!219455)))

(declare-fun bs!1373461 () Bool)

(declare-fun d!1831923 () Bool)

(assert (= bs!1373461 (and d!1831923 d!1831747)))

(assert (=> bs!1373461 (= (dynLambda!24958 lambda!318496 (h!70209 (exprs!5746 lt!2302077))) (validRegex!7598 (h!70209 (exprs!5746 lt!2302077))))))

(assert (=> bs!1373461 m!6755902))

(assert (=> b!5821110 d!1831923))

(declare-fun b_lambda!219457 () Bool)

(assert (= b_lambda!219439 (or b!5820339 b_lambda!219457)))

(declare-fun bs!1373462 () Bool)

(declare-fun d!1831925 () Bool)

(assert (= bs!1373462 (and d!1831925 b!5820339)))

(assert (=> bs!1373462 (= (dynLambda!24959 lambda!318450 lt!2302203) (matchZipper!1968 (set.insert lt!2302203 (as set.empty (Set Context!10492))) s!2326))))

(declare-fun m!6756252 () Bool)

(assert (=> bs!1373462 m!6756252))

(assert (=> bs!1373462 m!6756252))

(declare-fun m!6756254 () Bool)

(assert (=> bs!1373462 m!6756254))

(assert (=> d!1831867 d!1831925))

(declare-fun b_lambda!219459 () Bool)

(assert (= b_lambda!219443 (or d!1831751 b_lambda!219459)))

(declare-fun bs!1373463 () Bool)

(declare-fun d!1831927 () Bool)

(assert (= bs!1373463 (and d!1831927 d!1831751)))

(assert (=> bs!1373463 (= (dynLambda!24958 lambda!318499 (h!70209 lt!2302084)) (not (dynLambda!24958 lambda!318449 (h!70209 lt!2302084))))))

(declare-fun b_lambda!219469 () Bool)

(assert (=> (not b_lambda!219469) (not bs!1373463)))

(declare-fun m!6756256 () Bool)

(assert (=> bs!1373463 m!6756256))

(assert (=> b!5821058 d!1831927))

(declare-fun b_lambda!219461 () Bool)

(assert (= b_lambda!219435 (or d!1831719 b_lambda!219461)))

(declare-fun bs!1373464 () Bool)

(declare-fun d!1831929 () Bool)

(assert (= bs!1373464 (and d!1831929 d!1831719)))

(assert (=> bs!1373464 (= (dynLambda!24959 lambda!318480 (h!70210 zl!343)) (not (dynLambda!24959 lambda!318450 (h!70210 zl!343))))))

(declare-fun b_lambda!219471 () Bool)

(assert (=> (not b_lambda!219471) (not bs!1373464)))

(assert (=> bs!1373464 m!6755848))

(assert (=> b!5821005 d!1831929))

(declare-fun b_lambda!219463 () Bool)

(assert (= b_lambda!219433 (or d!1831741 b_lambda!219463)))

(declare-fun bs!1373465 () Bool)

(declare-fun d!1831931 () Bool)

(assert (= bs!1373465 (and d!1831931 d!1831741)))

(assert (=> bs!1373465 (= (dynLambda!24958 lambda!318493 (h!70209 (exprs!5746 (h!70210 zl!343)))) (validRegex!7598 (h!70209 (exprs!5746 (h!70210 zl!343)))))))

(declare-fun m!6756258 () Bool)

(assert (=> bs!1373465 m!6756258))

(assert (=> b!5820960 d!1831931))

(declare-fun b_lambda!219465 () Bool)

(assert (= b_lambda!219431 (or b!5820352 b_lambda!219465)))

(declare-fun bs!1373466 () Bool)

(declare-fun d!1831933 () Bool)

(assert (= bs!1373466 (and d!1831933 b!5820352)))

(assert (=> bs!1373466 (= (dynLambda!24958 lambda!318451 (h!70209 (t!377240 (exprs!5746 lt!2302077)))) (validRegex!7598 (h!70209 (t!377240 (exprs!5746 lt!2302077)))))))

(declare-fun m!6756260 () Bool)

(assert (=> bs!1373466 m!6756260))

(assert (=> b!5820932 d!1831933))

(declare-fun b_lambda!219467 () Bool)

(assert (= b_lambda!219441 (or d!1831739 b_lambda!219467)))

(declare-fun bs!1373467 () Bool)

(declare-fun d!1831935 () Bool)

(assert (= bs!1373467 (and d!1831935 d!1831739)))

(assert (=> bs!1373467 (= (dynLambda!24958 lambda!318491 (h!70209 (exprs!5746 setElem!39297))) (validRegex!7598 (h!70209 (exprs!5746 setElem!39297))))))

(declare-fun m!6756262 () Bool)

(assert (=> bs!1373467 m!6756262))

(assert (=> b!5821056 d!1831935))

(push 1)

(assert (not b!5821170))

(assert (not d!1831909))

(assert (not b!5820993))

(assert (not b!5821060))

(assert (not b!5821029))

(assert (not bm!454567))

(assert (not b!5821007))

(assert (not b!5820912))

(assert (not b!5821182))

(assert (not b_lambda!219415))

(assert (not b!5821186))

(assert (not b!5821147))

(assert (not b!5821217))

(assert (not bm!454569))

(assert (not b!5821235))

(assert (not bm!454601))

(assert tp_is_empty!40977)

(assert (not b!5820961))

(assert (not b!5820934))

(assert (not b!5821196))

(assert (not b!5821239))

(assert (not d!1831903))

(assert (not b!5821263))

(assert (not b!5821140))

(assert (not bs!1373466))

(assert (not b!5821024))

(assert (not b!5821198))

(assert (not b!5821071))

(assert (not d!1831807))

(assert (not d!1831915))

(assert (not b!5821229))

(assert (not b!5821192))

(assert (not bm!454591))

(assert (not bm!454580))

(assert (not b!5821074))

(assert (not b!5821242))

(assert (not b!5821243))

(assert (not d!1831835))

(assert (not b!5820883))

(assert (not b!5821153))

(assert (not bm!454571))

(assert (not b!5821166))

(assert (not b!5820995))

(assert (not b!5821234))

(assert (not b!5821154))

(assert (not b!5821252))

(assert (not d!1831893))

(assert (not b!5821226))

(assert (not b!5821224))

(assert (not b!5821009))

(assert (not b!5821197))

(assert (not b!5821213))

(assert (not b!5821136))

(assert (not b!5821261))

(assert (not b!5821188))

(assert (not d!1831891))

(assert (not b!5820890))

(assert (not bm!454590))

(assert (not b!5821194))

(assert (not d!1831911))

(assert (not d!1831833))

(assert (not b!5821260))

(assert (not b!5821059))

(assert (not b!5821265))

(assert (not b!5821205))

(assert (not b!5821249))

(assert (not b!5821257))

(assert (not b!5821256))

(assert (not b!5821187))

(assert (not b_lambda!219455))

(assert (not b!5821251))

(assert (not b!5821193))

(assert (not d!1831881))

(assert (not b!5821137))

(assert (not b!5821221))

(assert (not b!5820898))

(assert (not d!1831823))

(assert (not b!5820897))

(assert (not b!5821171))

(assert (not b!5821111))

(assert (not b!5821178))

(assert (not b!5821161))

(assert (not b!5821141))

(assert (not b!5821076))

(assert (not b!5820959))

(assert (not d!1831811))

(assert (not b!5821210))

(assert (not b_lambda!219463))

(assert (not b!5821165))

(assert (not b!5821222))

(assert (not b!5821212))

(assert (not d!1831901))

(assert (not b_lambda!219459))

(assert (not bs!1373465))

(assert (not d!1831885))

(assert (not b!5821159))

(assert (not b!5821184))

(assert (not b!5820931))

(assert (not b!5820999))

(assert (not b!5821012))

(assert (not b!5821208))

(assert (not b!5821230))

(assert (not d!1831847))

(assert (not b!5821253))

(assert (not b!5821073))

(assert (not b!5821255))

(assert (not bs!1373459))

(assert (not b!5821019))

(assert (not b!5821228))

(assert (not d!1831899))

(assert (not b!5820937))

(assert (not b!5821163))

(assert (not b!5820991))

(assert (not bs!1373460))

(assert (not b!5821248))

(assert (not b!5821214))

(assert (not d!1831867))

(assert (not bm!454577))

(assert (not d!1831869))

(assert (not d!1831853))

(assert (not b!5820911))

(assert (not bm!454588))

(assert (not b!5821132))

(assert (not b!5821200))

(assert (not bm!454566))

(assert (not bs!1373461))

(assert (not b!5821162))

(assert (not b!5821150))

(assert (not b_lambda!219467))

(assert (not bs!1373467))

(assert (not b!5821172))

(assert (not b_lambda!219413))

(assert (not b!5821174))

(assert (not b_lambda!219411))

(assert (not b_lambda!219469))

(assert (not b_lambda!219465))

(assert (not bm!454574))

(assert (not b!5821006))

(assert (not b!5820884))

(assert (not b!5821247))

(assert (not b!5821201))

(assert (not b!5820997))

(assert (not b!5821209))

(assert (not b!5821244))

(assert (not b!5821146))

(assert (not b!5821264))

(assert (not b!5821139))

(assert (not b!5821218))

(assert (not b!5821233))

(assert (not d!1831845))

(assert (not b!5821158))

(assert (not bm!454581))

(assert (not bm!454570))

(assert (not bm!454572))

(assert (not b!5820918))

(assert (not b!5821183))

(assert (not bs!1373458))

(assert (not b!5821168))

(assert (not bm!454600))

(assert (not b!5821103))

(assert (not b!5820998))

(assert (not b!5820903))

(assert (not d!1831907))

(assert (not b!5821204))

(assert (not d!1831819))

(assert (not b!5821062))

(assert (not d!1831895))

(assert (not bm!454575))

(assert (not b!5821259))

(assert (not b!5821026))

(assert (not b!5820933))

(assert (not b_lambda!219453))

(assert (not b!5820899))

(assert (not b!5821145))

(assert (not b_lambda!219457))

(assert (not b!5821179))

(assert (not d!1831817))

(assert (not b!5821134))

(assert (not b!5821152))

(assert (not b!5821155))

(assert (not b!5821220))

(assert (not b_lambda!219451))

(assert (not b!5821236))

(assert (not b!5821175))

(assert (not b!5821157))

(assert (not d!1831829))

(assert (not b!5820951))

(assert (not b!5821023))

(assert (not b!5821180))

(assert (not b!5821142))

(assert (not bm!454578))

(assert (not setNonEmpty!39307))

(assert (not b!5820925))

(assert (not b!5821061))

(assert (not b!5821225))

(assert (not b!5821206))

(assert (not b!5820889))

(assert (not d!1831913))

(assert (not b!5821202))

(assert (not b!5821238))

(assert (not b!5821232))

(assert (not b!5820992))

(assert (not b_lambda!219461))

(assert (not b!5821189))

(assert (not b!5820900))

(assert (not d!1831815))

(assert (not b!5821245))

(assert (not b!5821067))

(assert (not b!5821070))

(assert (not b!5821054))

(assert (not b!5821057))

(assert (not b!5821064))

(assert (not b!5821176))

(assert (not b!5821240))

(assert (not b_lambda!219471))

(assert (not b_lambda!219449))

(assert (not b!5821167))

(assert (not b!5820968))

(assert (not b!5821216))

(assert (not b!5821191))

(assert (not bs!1373462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

