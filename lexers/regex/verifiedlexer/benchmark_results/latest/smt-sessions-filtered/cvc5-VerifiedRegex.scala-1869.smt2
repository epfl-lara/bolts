; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92328 () Bool)

(assert start!92328)

(declare-fun b!1085336 () Bool)

(assert (=> b!1085336 true))

(declare-fun bs!256527 () Bool)

(declare-fun b!1085343 () Bool)

(assert (= bs!256527 (and b!1085343 b!1085336)))

(declare-fun lambda!39766 () Int)

(declare-fun lambda!39765 () Int)

(assert (=> bs!256527 (not (= lambda!39766 lambda!39765))))

(declare-fun res!482767 () Bool)

(declare-fun e!686381 () Bool)

(assert (=> start!92328 (=> (not res!482767) (not e!686381))))

(declare-datatypes ((C!6562 0))(
  ( (C!6563 (val!3529 Int)) )
))
(declare-datatypes ((Regex!2996 0))(
  ( (ElementMatch!2996 (c!183369 C!6562)) (Concat!4829 (regOne!6504 Regex!2996) (regTwo!6504 Regex!2996)) (EmptyExpr!2996) (Star!2996 (reg!3325 Regex!2996)) (EmptyLang!2996) (Union!2996 (regOne!6505 Regex!2996) (regTwo!6505 Regex!2996)) )
))
(declare-datatypes ((List!10291 0))(
  ( (Nil!10275) (Cons!10275 (h!15676 Regex!2996) (t!101337 List!10291)) )
))
(declare-datatypes ((Context!952 0))(
  ( (Context!953 (exprs!976 List!10291)) )
))
(declare-fun z!1122 () (Set Context!952))

(declare-datatypes ((List!10292 0))(
  ( (Nil!10276) (Cons!10276 (h!15677 Context!952) (t!101338 List!10292)) )
))
(declare-fun zl!316 () List!10292)

(declare-fun toList!614 ((Set Context!952)) List!10292)

(assert (=> start!92328 (= res!482767 (= (toList!614 z!1122) zl!316))))

(assert (=> start!92328 e!686381))

(declare-fun condSetEmpty!7521 () Bool)

(assert (=> start!92328 (= condSetEmpty!7521 (= z!1122 (as set.empty (Set Context!952))))))

(declare-fun setRes!7521 () Bool)

(assert (=> start!92328 setRes!7521))

(declare-fun e!686377 () Bool)

(assert (=> start!92328 e!686377))

(declare-fun e!686379 () Bool)

(assert (=> start!92328 e!686379))

(declare-fun e!686382 () Bool)

(declare-fun tp!324863 () Bool)

(declare-fun b!1085334 () Bool)

(declare-fun inv!13204 (Context!952) Bool)

(assert (=> b!1085334 (= e!686377 (and (inv!13204 (h!15677 zl!316)) e!686382 tp!324863))))

(declare-fun b!1085335 () Bool)

(declare-fun tp!324860 () Bool)

(assert (=> b!1085335 (= e!686382 tp!324860)))

(declare-fun e!686386 () Bool)

(assert (=> b!1085336 (= e!686381 (not e!686386))))

(declare-fun res!482768 () Bool)

(assert (=> b!1085336 (=> res!482768 e!686386)))

(declare-fun exists!133 ((Set Context!952) Int) Bool)

(assert (=> b!1085336 (= res!482768 (not (exists!133 z!1122 lambda!39765)))))

(declare-fun exists!134 (List!10292 Int) Bool)

(assert (=> b!1085336 (exists!134 zl!316 lambda!39765)))

(declare-datatypes ((Unit!15671 0))(
  ( (Unit!15672) )
))
(declare-fun lt!363011 () Unit!15671)

(declare-datatypes ((List!10293 0))(
  ( (Nil!10277) (Cons!10277 (h!15678 C!6562) (t!101339 List!10293)) )
))
(declare-fun s!2287 () List!10293)

(declare-fun lemmaZipperMatchesExistsMatchingContext!23 (List!10292 List!10293) Unit!15671)

(assert (=> b!1085336 (= lt!363011 (lemmaZipperMatchesExistsMatchingContext!23 zl!316 s!2287))))

(declare-fun b!1085337 () Bool)

(declare-fun e!686383 () Bool)

(declare-fun e!686385 () Bool)

(assert (=> b!1085337 (= e!686383 e!686385)))

(declare-fun res!482769 () Bool)

(assert (=> b!1085337 (=> res!482769 e!686385)))

(declare-fun lt!363009 () (Set Context!952))

(declare-fun matchZipper!44 ((Set Context!952) List!10293) Bool)

(assert (=> b!1085337 (= res!482769 (not (matchZipper!44 lt!363009 s!2287)))))

(declare-fun lt!363014 () Context!952)

(assert (=> b!1085337 (= lt!363009 (set.insert lt!363014 (as set.empty (Set Context!952))))))

(declare-fun b!1085338 () Bool)

(declare-fun e!686380 () Bool)

(declare-fun tp!324859 () Bool)

(assert (=> b!1085338 (= e!686380 tp!324859)))

(declare-fun b!1085339 () Bool)

(assert (=> b!1085339 (= e!686386 e!686383)))

(declare-fun res!482770 () Bool)

(assert (=> b!1085339 (=> res!482770 e!686383)))

(assert (=> b!1085339 (= res!482770 (not (set.member lt!363014 z!1122)))))

(declare-fun getWitness!61 ((Set Context!952) Int) Context!952)

(assert (=> b!1085339 (= lt!363014 (getWitness!61 z!1122 lambda!39765))))

(declare-fun setIsEmpty!7521 () Bool)

(assert (=> setIsEmpty!7521 setRes!7521))

(declare-fun b!1085340 () Bool)

(declare-fun e!686384 () Bool)

(assert (=> b!1085340 (= e!686385 e!686384)))

(declare-fun res!482766 () Bool)

(assert (=> b!1085340 (=> res!482766 e!686384)))

(declare-fun lt!363008 () Bool)

(assert (=> b!1085340 (= res!482766 lt!363008)))

(declare-fun lt!363013 () Unit!15671)

(declare-fun e!686378 () Unit!15671)

(assert (=> b!1085340 (= lt!363013 e!686378)))

(declare-fun c!183368 () Bool)

(assert (=> b!1085340 (= c!183368 lt!363008)))

(declare-fun lostCause!219 (Context!952) Bool)

(assert (=> b!1085340 (= lt!363008 (lostCause!219 lt!363014))))

(declare-fun b!1085341 () Bool)

(declare-fun tp_is_empty!5623 () Bool)

(declare-fun tp!324862 () Bool)

(assert (=> b!1085341 (= e!686379 (and tp_is_empty!5623 tp!324862))))

(declare-fun b!1085342 () Bool)

(declare-fun Unit!15673 () Unit!15671)

(assert (=> b!1085342 (= e!686378 Unit!15673)))

(declare-fun lt!363012 () Unit!15671)

(declare-fun lemmaLostCauseCannotMatch!8 ((Set Context!952) List!10293) Unit!15671)

(assert (=> b!1085342 (= lt!363012 (lemmaLostCauseCannotMatch!8 lt!363009 s!2287))))

(assert (=> b!1085342 false))

(declare-fun filter!158 ((Set Context!952) Int) (Set Context!952))

(assert (=> b!1085343 (= e!686384 (set.member lt!363014 (filter!158 z!1122 lambda!39766)))))

(declare-fun lt!363010 () Unit!15671)

(declare-fun filterPost!9 ((Set Context!952) Int Context!952) Unit!15671)

(assert (=> b!1085343 (= lt!363010 (filterPost!9 z!1122 lambda!39766 lt!363014))))

(declare-fun b!1085344 () Bool)

(declare-fun res!482771 () Bool)

(assert (=> b!1085344 (=> (not res!482771) (not e!686381))))

(assert (=> b!1085344 (= res!482771 (matchZipper!44 z!1122 s!2287))))

(declare-fun tp!324861 () Bool)

(declare-fun setElem!7521 () Context!952)

(declare-fun setNonEmpty!7521 () Bool)

(assert (=> setNonEmpty!7521 (= setRes!7521 (and tp!324861 (inv!13204 setElem!7521) e!686380))))

(declare-fun setRest!7521 () (Set Context!952))

(assert (=> setNonEmpty!7521 (= z!1122 (set.union (set.insert setElem!7521 (as set.empty (Set Context!952))) setRest!7521))))

(declare-fun b!1085345 () Bool)

(declare-fun Unit!15674 () Unit!15671)

(assert (=> b!1085345 (= e!686378 Unit!15674)))

(assert (= (and start!92328 res!482767) b!1085344))

(assert (= (and b!1085344 res!482771) b!1085336))

(assert (= (and b!1085336 (not res!482768)) b!1085339))

(assert (= (and b!1085339 (not res!482770)) b!1085337))

(assert (= (and b!1085337 (not res!482769)) b!1085340))

(assert (= (and b!1085340 c!183368) b!1085342))

(assert (= (and b!1085340 (not c!183368)) b!1085345))

(assert (= (and b!1085340 (not res!482766)) b!1085343))

(assert (= (and start!92328 condSetEmpty!7521) setIsEmpty!7521))

(assert (= (and start!92328 (not condSetEmpty!7521)) setNonEmpty!7521))

(assert (= setNonEmpty!7521 b!1085338))

(assert (= b!1085334 b!1085335))

(assert (= (and start!92328 (is-Cons!10276 zl!316)) b!1085334))

(assert (= (and start!92328 (is-Cons!10277 s!2287)) b!1085341))

(declare-fun m!1234933 () Bool)

(assert (=> b!1085339 m!1234933))

(declare-fun m!1234935 () Bool)

(assert (=> b!1085339 m!1234935))

(declare-fun m!1234937 () Bool)

(assert (=> b!1085336 m!1234937))

(declare-fun m!1234939 () Bool)

(assert (=> b!1085336 m!1234939))

(declare-fun m!1234941 () Bool)

(assert (=> b!1085336 m!1234941))

(declare-fun m!1234943 () Bool)

(assert (=> b!1085343 m!1234943))

(declare-fun m!1234945 () Bool)

(assert (=> b!1085343 m!1234945))

(declare-fun m!1234947 () Bool)

(assert (=> b!1085343 m!1234947))

(declare-fun m!1234949 () Bool)

(assert (=> b!1085337 m!1234949))

(declare-fun m!1234951 () Bool)

(assert (=> b!1085337 m!1234951))

(declare-fun m!1234953 () Bool)

(assert (=> b!1085342 m!1234953))

(declare-fun m!1234955 () Bool)

(assert (=> b!1085344 m!1234955))

(declare-fun m!1234957 () Bool)

(assert (=> b!1085340 m!1234957))

(declare-fun m!1234959 () Bool)

(assert (=> setNonEmpty!7521 m!1234959))

(declare-fun m!1234961 () Bool)

(assert (=> b!1085334 m!1234961))

(declare-fun m!1234963 () Bool)

(assert (=> start!92328 m!1234963))

(push 1)

(assert (not b!1085342))

(assert (not b!1085335))

(assert (not b!1085336))

(assert (not b!1085344))

(assert (not b!1085343))

(assert (not b!1085339))

(assert tp_is_empty!5623)

(assert (not b!1085341))

(assert (not b!1085340))

(assert (not b!1085337))

(assert (not setNonEmpty!7521))

(assert (not b!1085334))

(assert (not b!1085338))

(assert (not start!92328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!304872 () Bool)

(assert (=> d!304872 (not (matchZipper!44 lt!363009 s!2287))))

(declare-fun lt!363038 () Unit!15671)

(declare-fun choose!6896 ((Set Context!952) List!10293) Unit!15671)

(assert (=> d!304872 (= lt!363038 (choose!6896 lt!363009 s!2287))))

(declare-fun lostCauseZipper!7 ((Set Context!952)) Bool)

(assert (=> d!304872 (lostCauseZipper!7 lt!363009)))

(assert (=> d!304872 (= (lemmaLostCauseCannotMatch!8 lt!363009 s!2287) lt!363038)))

(declare-fun bs!256529 () Bool)

(assert (= bs!256529 d!304872))

(assert (=> bs!256529 m!1234949))

(declare-fun m!1234997 () Bool)

(assert (=> bs!256529 m!1234997))

(declare-fun m!1234999 () Bool)

(assert (=> bs!256529 m!1234999))

(assert (=> b!1085342 d!304872))

(declare-fun d!304876 () Bool)

(declare-fun c!183386 () Bool)

(declare-fun isEmpty!6619 (List!10293) Bool)

(assert (=> d!304876 (= c!183386 (isEmpty!6619 s!2287))))

(declare-fun e!686419 () Bool)

(assert (=> d!304876 (= (matchZipper!44 lt!363009 s!2287) e!686419)))

(declare-fun b!1085390 () Bool)

(declare-fun nullableZipper!18 ((Set Context!952)) Bool)

(assert (=> b!1085390 (= e!686419 (nullableZipper!18 lt!363009))))

(declare-fun b!1085391 () Bool)

(declare-fun derivationStepZipper!16 ((Set Context!952) C!6562) (Set Context!952))

(declare-fun head!2004 (List!10293) C!6562)

(declare-fun tail!1566 (List!10293) List!10293)

(assert (=> b!1085391 (= e!686419 (matchZipper!44 (derivationStepZipper!16 lt!363009 (head!2004 s!2287)) (tail!1566 s!2287)))))

(assert (= (and d!304876 c!183386) b!1085390))

(assert (= (and d!304876 (not c!183386)) b!1085391))

(declare-fun m!1235001 () Bool)

(assert (=> d!304876 m!1235001))

(declare-fun m!1235003 () Bool)

(assert (=> b!1085390 m!1235003))

(declare-fun m!1235005 () Bool)

(assert (=> b!1085391 m!1235005))

(assert (=> b!1085391 m!1235005))

(declare-fun m!1235007 () Bool)

(assert (=> b!1085391 m!1235007))

(declare-fun m!1235009 () Bool)

(assert (=> b!1085391 m!1235009))

(assert (=> b!1085391 m!1235007))

(assert (=> b!1085391 m!1235009))

(declare-fun m!1235011 () Bool)

(assert (=> b!1085391 m!1235011))

(assert (=> b!1085337 d!304876))

(declare-fun d!304878 () Bool)

(declare-fun lt!363043 () Bool)

(assert (=> d!304878 (= lt!363043 (exists!134 (toList!614 z!1122) lambda!39765))))

(declare-fun choose!6897 ((Set Context!952) Int) Bool)

(assert (=> d!304878 (= lt!363043 (choose!6897 z!1122 lambda!39765))))

(assert (=> d!304878 (= (exists!133 z!1122 lambda!39765) lt!363043)))

(declare-fun bs!256530 () Bool)

(assert (= bs!256530 d!304878))

(assert (=> bs!256530 m!1234963))

(assert (=> bs!256530 m!1234963))

(declare-fun m!1235013 () Bool)

(assert (=> bs!256530 m!1235013))

(declare-fun m!1235015 () Bool)

(assert (=> bs!256530 m!1235015))

(assert (=> b!1085336 d!304878))

(declare-fun bs!256531 () Bool)

(declare-fun d!304880 () Bool)

(assert (= bs!256531 (and d!304880 b!1085336)))

(declare-fun lambda!39781 () Int)

(assert (=> bs!256531 (not (= lambda!39781 lambda!39765))))

(declare-fun bs!256532 () Bool)

(assert (= bs!256532 (and d!304880 b!1085343)))

(assert (=> bs!256532 (not (= lambda!39781 lambda!39766))))

(assert (=> d!304880 true))

(declare-fun order!6193 () Int)

(declare-fun dynLambda!4506 (Int Int) Int)

(assert (=> d!304880 (< (dynLambda!4506 order!6193 lambda!39765) (dynLambda!4506 order!6193 lambda!39781))))

(declare-fun forall!2253 (List!10292 Int) Bool)

(assert (=> d!304880 (= (exists!134 zl!316 lambda!39765) (not (forall!2253 zl!316 lambda!39781)))))

(declare-fun bs!256533 () Bool)

(assert (= bs!256533 d!304880))

(declare-fun m!1235023 () Bool)

(assert (=> bs!256533 m!1235023))

(assert (=> b!1085336 d!304880))

(declare-fun bs!256534 () Bool)

(declare-fun d!304884 () Bool)

(assert (= bs!256534 (and d!304884 b!1085336)))

(declare-fun lambda!39784 () Int)

(assert (=> bs!256534 (= lambda!39784 lambda!39765)))

(declare-fun bs!256535 () Bool)

(assert (= bs!256535 (and d!304884 b!1085343)))

(assert (=> bs!256535 (not (= lambda!39784 lambda!39766))))

(declare-fun bs!256536 () Bool)

(assert (= bs!256536 (and d!304884 d!304880)))

(assert (=> bs!256536 (not (= lambda!39784 lambda!39781))))

(assert (=> d!304884 true))

(assert (=> d!304884 (exists!134 zl!316 lambda!39784)))

(declare-fun lt!363047 () Unit!15671)

(declare-fun choose!6898 (List!10292 List!10293) Unit!15671)

(assert (=> d!304884 (= lt!363047 (choose!6898 zl!316 s!2287))))

(declare-fun content!1471 (List!10292) (Set Context!952))

(assert (=> d!304884 (matchZipper!44 (content!1471 zl!316) s!2287)))

(assert (=> d!304884 (= (lemmaZipperMatchesExistsMatchingContext!23 zl!316 s!2287) lt!363047)))

(declare-fun bs!256537 () Bool)

(assert (= bs!256537 d!304884))

(declare-fun m!1235025 () Bool)

(assert (=> bs!256537 m!1235025))

(declare-fun m!1235027 () Bool)

(assert (=> bs!256537 m!1235027))

(declare-fun m!1235029 () Bool)

(assert (=> bs!256537 m!1235029))

(assert (=> bs!256537 m!1235029))

(declare-fun m!1235031 () Bool)

(assert (=> bs!256537 m!1235031))

(assert (=> b!1085336 d!304884))

(declare-fun d!304886 () Bool)

(declare-fun lambda!39790 () Int)

(declare-fun forall!2254 (List!10291 Int) Bool)

(assert (=> d!304886 (= (inv!13204 setElem!7521) (forall!2254 (exprs!976 setElem!7521) lambda!39790))))

(declare-fun bs!256539 () Bool)

(assert (= bs!256539 d!304886))

(declare-fun m!1235035 () Bool)

(assert (=> bs!256539 m!1235035))

(assert (=> setNonEmpty!7521 d!304886))

(declare-fun bs!256540 () Bool)

(declare-fun d!304890 () Bool)

(assert (= bs!256540 (and d!304890 d!304886)))

(declare-fun lambda!39793 () Int)

(assert (=> bs!256540 (not (= lambda!39793 lambda!39790))))

(declare-fun exists!137 (List!10291 Int) Bool)

(assert (=> d!304890 (= (lostCause!219 lt!363014) (exists!137 (exprs!976 lt!363014) lambda!39793))))

(declare-fun bs!256542 () Bool)

(assert (= bs!256542 d!304890))

(declare-fun m!1235045 () Bool)

(assert (=> bs!256542 m!1235045))

(assert (=> b!1085340 d!304890))

(declare-fun d!304896 () Bool)

(declare-fun e!686428 () Bool)

(assert (=> d!304896 e!686428))

(declare-fun res!482798 () Bool)

(assert (=> d!304896 (=> (not res!482798) (not e!686428))))

(declare-fun lt!363053 () List!10292)

(declare-fun noDuplicate!180 (List!10292) Bool)

(assert (=> d!304896 (= res!482798 (noDuplicate!180 lt!363053))))

(declare-fun choose!6899 ((Set Context!952)) List!10292)

(assert (=> d!304896 (= lt!363053 (choose!6899 z!1122))))

(assert (=> d!304896 (= (toList!614 z!1122) lt!363053)))

(declare-fun b!1085402 () Bool)

(assert (=> b!1085402 (= e!686428 (= (content!1471 lt!363053) z!1122))))

(assert (= (and d!304896 res!482798) b!1085402))

(declare-fun m!1235047 () Bool)

(assert (=> d!304896 m!1235047))

(declare-fun m!1235049 () Bool)

(assert (=> d!304896 m!1235049))

(declare-fun m!1235051 () Bool)

(assert (=> b!1085402 m!1235051))

(assert (=> start!92328 d!304896))

(declare-fun bs!256543 () Bool)

(declare-fun d!304898 () Bool)

(assert (= bs!256543 (and d!304898 d!304886)))

(declare-fun lambda!39794 () Int)

(assert (=> bs!256543 (= lambda!39794 lambda!39790)))

(declare-fun bs!256544 () Bool)

(assert (= bs!256544 (and d!304898 d!304890)))

(assert (=> bs!256544 (not (= lambda!39794 lambda!39793))))

(assert (=> d!304898 (= (inv!13204 (h!15677 zl!316)) (forall!2254 (exprs!976 (h!15677 zl!316)) lambda!39794))))

(declare-fun bs!256545 () Bool)

(assert (= bs!256545 d!304898))

(declare-fun m!1235053 () Bool)

(assert (=> bs!256545 m!1235053))

(assert (=> b!1085334 d!304898))

(declare-fun d!304900 () Bool)

(declare-fun c!183389 () Bool)

(assert (=> d!304900 (= c!183389 (isEmpty!6619 s!2287))))

(declare-fun e!686429 () Bool)

(assert (=> d!304900 (= (matchZipper!44 z!1122 s!2287) e!686429)))

(declare-fun b!1085403 () Bool)

(assert (=> b!1085403 (= e!686429 (nullableZipper!18 z!1122))))

(declare-fun b!1085404 () Bool)

(assert (=> b!1085404 (= e!686429 (matchZipper!44 (derivationStepZipper!16 z!1122 (head!2004 s!2287)) (tail!1566 s!2287)))))

(assert (= (and d!304900 c!183389) b!1085403))

(assert (= (and d!304900 (not c!183389)) b!1085404))

(assert (=> d!304900 m!1235001))

(declare-fun m!1235055 () Bool)

(assert (=> b!1085403 m!1235055))

(assert (=> b!1085404 m!1235005))

(assert (=> b!1085404 m!1235005))

(declare-fun m!1235057 () Bool)

(assert (=> b!1085404 m!1235057))

(assert (=> b!1085404 m!1235009))

(assert (=> b!1085404 m!1235057))

(assert (=> b!1085404 m!1235009))

(declare-fun m!1235059 () Bool)

(assert (=> b!1085404 m!1235059))

(assert (=> b!1085344 d!304900))

(declare-fun d!304902 () Bool)

(declare-fun choose!6900 ((Set Context!952) Int) (Set Context!952))

(assert (=> d!304902 (= (filter!158 z!1122 lambda!39766) (choose!6900 z!1122 lambda!39766))))

(declare-fun bs!256546 () Bool)

(assert (= bs!256546 d!304902))

(declare-fun m!1235061 () Bool)

(assert (=> bs!256546 m!1235061))

(assert (=> b!1085343 d!304902))

(declare-fun e!686435 () Bool)

(declare-fun d!304904 () Bool)

(assert (=> d!304904 (= (set.member lt!363014 (filter!158 z!1122 lambda!39766)) e!686435)))

(declare-fun res!482804 () Bool)

(assert (=> d!304904 (=> (not res!482804) (not e!686435))))

(declare-fun dynLambda!4507 (Int Context!952) Bool)

(assert (=> d!304904 (= res!482804 (dynLambda!4507 lambda!39766 lt!363014))))

(declare-fun lt!363059 () Unit!15671)

(declare-fun choose!6901 ((Set Context!952) Int Context!952) Unit!15671)

(assert (=> d!304904 (= lt!363059 (choose!6901 z!1122 lambda!39766 lt!363014))))

(assert (=> d!304904 (= (filterPost!9 z!1122 lambda!39766 lt!363014) lt!363059)))

(declare-fun b!1085410 () Bool)

(assert (=> b!1085410 (= e!686435 (set.member lt!363014 z!1122))))

(assert (= (and d!304904 res!482804) b!1085410))

(declare-fun b_lambda!30003 () Bool)

(assert (=> (not b_lambda!30003) (not d!304904)))

(assert (=> d!304904 m!1234943))

(assert (=> d!304904 m!1234945))

(declare-fun m!1235067 () Bool)

(assert (=> d!304904 m!1235067))

(declare-fun m!1235069 () Bool)

(assert (=> d!304904 m!1235069))

(assert (=> b!1085410 m!1234933))

(assert (=> b!1085343 d!304904))

(declare-fun d!304908 () Bool)

(declare-fun e!686438 () Bool)

(assert (=> d!304908 e!686438))

(declare-fun res!482807 () Bool)

(assert (=> d!304908 (=> (not res!482807) (not e!686438))))

(declare-fun lt!363064 () Context!952)

(assert (=> d!304908 (= res!482807 (dynLambda!4507 lambda!39765 lt!363064))))

(declare-fun getWitness!63 (List!10292 Int) Context!952)

(assert (=> d!304908 (= lt!363064 (getWitness!63 (toList!614 z!1122) lambda!39765))))

(assert (=> d!304908 (exists!133 z!1122 lambda!39765)))

(assert (=> d!304908 (= (getWitness!61 z!1122 lambda!39765) lt!363064)))

(declare-fun b!1085413 () Bool)

(assert (=> b!1085413 (= e!686438 (set.member lt!363064 z!1122))))

(assert (= (and d!304908 res!482807) b!1085413))

(declare-fun b_lambda!30005 () Bool)

(assert (=> (not b_lambda!30005) (not d!304908)))

(declare-fun m!1235071 () Bool)

(assert (=> d!304908 m!1235071))

(assert (=> d!304908 m!1234963))

(assert (=> d!304908 m!1234963))

(declare-fun m!1235073 () Bool)

(assert (=> d!304908 m!1235073))

(assert (=> d!304908 m!1234937))

(declare-fun m!1235075 () Bool)

(assert (=> b!1085413 m!1235075))

(assert (=> b!1085339 d!304908))

(declare-fun b!1085418 () Bool)

(declare-fun e!686441 () Bool)

(declare-fun tp!324881 () Bool)

(assert (=> b!1085418 (= e!686441 (and tp_is_empty!5623 tp!324881))))

(assert (=> b!1085341 (= tp!324862 e!686441)))

(assert (= (and b!1085341 (is-Cons!10277 (t!101339 s!2287))) b!1085418))

(declare-fun condSetEmpty!7527 () Bool)

(assert (=> setNonEmpty!7521 (= condSetEmpty!7527 (= setRest!7521 (as set.empty (Set Context!952))))))

(declare-fun setRes!7527 () Bool)

(assert (=> setNonEmpty!7521 (= tp!324861 setRes!7527)))

(declare-fun setIsEmpty!7527 () Bool)

(assert (=> setIsEmpty!7527 setRes!7527))

(declare-fun e!686444 () Bool)

(declare-fun tp!324887 () Bool)

(declare-fun setElem!7527 () Context!952)

(declare-fun setNonEmpty!7527 () Bool)

(assert (=> setNonEmpty!7527 (= setRes!7527 (and tp!324887 (inv!13204 setElem!7527) e!686444))))

(declare-fun setRest!7527 () (Set Context!952))

(assert (=> setNonEmpty!7527 (= setRest!7521 (set.union (set.insert setElem!7527 (as set.empty (Set Context!952))) setRest!7527))))

(declare-fun b!1085423 () Bool)

(declare-fun tp!324886 () Bool)

(assert (=> b!1085423 (= e!686444 tp!324886)))

(assert (= (and setNonEmpty!7521 condSetEmpty!7527) setIsEmpty!7527))

(assert (= (and setNonEmpty!7521 (not condSetEmpty!7527)) setNonEmpty!7527))

(assert (= setNonEmpty!7527 b!1085423))

(declare-fun m!1235081 () Bool)

(assert (=> setNonEmpty!7527 m!1235081))

(declare-fun b!1085428 () Bool)

(declare-fun e!686447 () Bool)

(declare-fun tp!324892 () Bool)

(declare-fun tp!324893 () Bool)

(assert (=> b!1085428 (= e!686447 (and tp!324892 tp!324893))))

(assert (=> b!1085335 (= tp!324860 e!686447)))

(assert (= (and b!1085335 (is-Cons!10275 (exprs!976 (h!15677 zl!316)))) b!1085428))

(declare-fun b!1085436 () Bool)

(declare-fun e!686453 () Bool)

(declare-fun tp!324898 () Bool)

(assert (=> b!1085436 (= e!686453 tp!324898)))

(declare-fun b!1085435 () Bool)

(declare-fun tp!324899 () Bool)

(declare-fun e!686452 () Bool)

(assert (=> b!1085435 (= e!686452 (and (inv!13204 (h!15677 (t!101338 zl!316))) e!686453 tp!324899))))

(assert (=> b!1085334 (= tp!324863 e!686452)))

(assert (= b!1085435 b!1085436))

(assert (= (and b!1085334 (is-Cons!10276 (t!101338 zl!316))) b!1085435))

(declare-fun m!1235083 () Bool)

(assert (=> b!1085435 m!1235083))

(declare-fun b!1085437 () Bool)

(declare-fun e!686454 () Bool)

(declare-fun tp!324900 () Bool)

(declare-fun tp!324901 () Bool)

(assert (=> b!1085437 (= e!686454 (and tp!324900 tp!324901))))

(assert (=> b!1085338 (= tp!324859 e!686454)))

(assert (= (and b!1085338 (is-Cons!10275 (exprs!976 setElem!7521))) b!1085437))

(declare-fun b_lambda!30007 () Bool)

(assert (= b_lambda!30003 (or b!1085343 b_lambda!30007)))

(declare-fun bs!256548 () Bool)

(declare-fun d!304912 () Bool)

(assert (= bs!256548 (and d!304912 b!1085343)))

(assert (=> bs!256548 (= (dynLambda!4507 lambda!39766 lt!363014) (not (lostCause!219 lt!363014)))))

(assert (=> bs!256548 m!1234957))

(assert (=> d!304904 d!304912))

(declare-fun b_lambda!30009 () Bool)

(assert (= b_lambda!30005 (or b!1085336 b_lambda!30009)))

(declare-fun bs!256549 () Bool)

(declare-fun d!304914 () Bool)

(assert (= bs!256549 (and d!304914 b!1085336)))

(assert (=> bs!256549 (= (dynLambda!4507 lambda!39765 lt!363064) (matchZipper!44 (set.insert lt!363064 (as set.empty (Set Context!952))) s!2287))))

(declare-fun m!1235085 () Bool)

(assert (=> bs!256549 m!1235085))

(assert (=> bs!256549 m!1235085))

(declare-fun m!1235087 () Bool)

(assert (=> bs!256549 m!1235087))

(assert (=> d!304908 d!304914))

(push 1)

(assert (not b!1085428))

(assert (not d!304872))

(assert (not b!1085436))

(assert (not d!304896))

(assert (not b!1085435))

(assert (not d!304890))

(assert (not d!304878))

(assert (not b_lambda!30007))

(assert (not d!304908))

(assert (not b!1085423))

(assert (not b!1085404))

(assert (not setNonEmpty!7527))

(assert (not b!1085418))

(assert (not d!304904))

(assert (not bs!256548))

(assert (not d!304880))

(assert (not b!1085403))

(assert (not d!304886))

(assert (not b_lambda!30009))

(assert (not d!304898))

(assert (not d!304900))

(assert (not b!1085437))

(assert (not d!304876))

(assert (not b!1085390))

(assert tp_is_empty!5623)

(assert (not bs!256549))

(assert (not b!1085402))

(assert (not d!304884))

(assert (not d!304902))

(assert (not b!1085391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

