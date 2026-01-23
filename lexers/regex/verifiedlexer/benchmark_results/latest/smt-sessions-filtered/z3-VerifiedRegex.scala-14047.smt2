; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741530 () Bool)

(assert start!741530)

(declare-fun b!7806255 () Bool)

(declare-fun e!4620839 () Bool)

(declare-fun e!4620845 () Bool)

(assert (=> b!7806255 (= e!4620839 e!4620845)))

(declare-fun res!3108952 () Bool)

(assert (=> b!7806255 (=> res!3108952 e!4620845)))

(declare-datatypes ((C!42104 0))(
  ( (C!42105 (val!31492 Int)) )
))
(declare-datatypes ((List!73728 0))(
  ( (Nil!73604) (Cons!73604 (h!80052 C!42104) (t!388463 List!73728)) )
))
(declare-fun s!14292 () List!73728)

(declare-datatypes ((tuple2!69964 0))(
  ( (tuple2!69965 (_1!38285 List!73728) (_2!38285 List!73728)) )
))
(declare-fun lt!2675385 () tuple2!69964)

(declare-fun lt!2675390 () List!73728)

(declare-fun ++!17949 (List!73728 List!73728) List!73728)

(assert (=> b!7806255 (= res!3108952 (not (= (++!17949 lt!2675390 (_2!38285 lt!2675385)) s!14292)))))

(assert (=> b!7806255 (= lt!2675390 (Cons!73604 (h!80052 s!14292) (_1!38285 lt!2675385)))))

(declare-datatypes ((Option!17776 0))(
  ( (None!17775) (Some!17775 (v!54910 tuple2!69964)) )
))
(declare-fun lt!2675392 () Option!17776)

(declare-fun get!26345 (Option!17776) tuple2!69964)

(assert (=> b!7806255 (= lt!2675385 (get!26345 lt!2675392))))

(declare-fun isDefined!14386 (Option!17776) Bool)

(assert (=> b!7806255 (isDefined!14386 lt!2675392)))

(declare-datatypes ((Regex!20889 0))(
  ( (ElementMatch!20889 (c!1437502 C!42104)) (Concat!29734 (regOne!42290 Regex!20889) (regTwo!42290 Regex!20889)) (EmptyExpr!20889) (Star!20889 (reg!21218 Regex!20889)) (EmptyLang!20889) (Union!20889 (regOne!42291 Regex!20889) (regTwo!42291 Regex!20889)) )
))
(declare-fun r2!6217 () Regex!20889)

(declare-fun lt!2675387 () Regex!20889)

(declare-fun findConcatSeparation!3806 (Regex!20889 Regex!20889 List!73728 List!73728 List!73728) Option!17776)

(assert (=> b!7806255 (= lt!2675392 (findConcatSeparation!3806 lt!2675387 r2!6217 Nil!73604 (t!388463 s!14292) (t!388463 s!14292)))))

(declare-datatypes ((Unit!168616 0))(
  ( (Unit!168617) )
))
(declare-fun lt!2675394 () Unit!168616)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!388 (Regex!20889 Regex!20889 List!73728) Unit!168616)

(assert (=> b!7806255 (= lt!2675394 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!388 lt!2675387 r2!6217 (t!388463 s!14292)))))

(declare-fun b!7806256 () Bool)

(declare-fun res!3108946 () Bool)

(declare-fun e!4620842 () Bool)

(assert (=> b!7806256 (=> (not res!3108946) (not e!4620842))))

(get-info :version)

(assert (=> b!7806256 (= res!3108946 ((_ is Cons!73604) s!14292))))

(declare-fun b!7806257 () Bool)

(declare-fun res!3108953 () Bool)

(declare-fun e!4620841 () Bool)

(assert (=> b!7806257 (=> (not res!3108953) (not e!4620841))))

(declare-fun r1!6279 () Regex!20889)

(declare-fun nullable!9273 (Regex!20889) Bool)

(assert (=> b!7806257 (= res!3108953 (not (nullable!9273 r1!6279)))))

(declare-fun b!7806258 () Bool)

(declare-fun e!4620844 () Bool)

(assert (=> b!7806258 (= e!4620844 e!4620842)))

(declare-fun res!3108949 () Bool)

(assert (=> b!7806258 (=> (not res!3108949) (not e!4620842))))

(declare-fun lt!2675393 () Regex!20889)

(declare-fun matchR!10349 (Regex!20889 List!73728) Bool)

(assert (=> b!7806258 (= res!3108949 (matchR!10349 lt!2675393 s!14292))))

(assert (=> b!7806258 (= lt!2675393 (Concat!29734 r1!6279 r2!6217))))

(declare-fun b!7806259 () Bool)

(declare-fun e!4620843 () Bool)

(declare-fun tp!2299742 () Bool)

(declare-fun tp!2299746 () Bool)

(assert (=> b!7806259 (= e!4620843 (and tp!2299742 tp!2299746))))

(declare-fun b!7806260 () Bool)

(declare-fun e!4620847 () Bool)

(assert (=> b!7806260 (= e!4620841 e!4620847)))

(declare-fun res!3108950 () Bool)

(assert (=> b!7806260 (=> (not res!3108950) (not e!4620847))))

(declare-fun lt!2675389 () Regex!20889)

(declare-fun lt!2675386 () Regex!20889)

(assert (=> b!7806260 (= res!3108950 (= lt!2675389 (Union!20889 lt!2675386 EmptyLang!20889)))))

(assert (=> b!7806260 (= lt!2675386 (Concat!29734 lt!2675387 r2!6217))))

(declare-fun derivativeStep!6226 (Regex!20889 C!42104) Regex!20889)

(assert (=> b!7806260 (= lt!2675387 (derivativeStep!6226 r1!6279 (h!80052 s!14292)))))

(declare-fun b!7806262 () Bool)

(declare-fun e!4620846 () Bool)

(declare-fun tp_is_empty!52133 () Bool)

(declare-fun tp!2299737 () Bool)

(assert (=> b!7806262 (= e!4620846 (and tp_is_empty!52133 tp!2299737))))

(declare-fun b!7806263 () Bool)

(assert (=> b!7806263 (= e!4620842 e!4620841)))

(declare-fun res!3108945 () Bool)

(assert (=> b!7806263 (=> (not res!3108945) (not e!4620841))))

(assert (=> b!7806263 (= res!3108945 (matchR!10349 lt!2675389 (t!388463 s!14292)))))

(assert (=> b!7806263 (= lt!2675389 (derivativeStep!6226 lt!2675393 (h!80052 s!14292)))))

(declare-fun b!7806264 () Bool)

(declare-fun tp!2299740 () Bool)

(declare-fun tp!2299741 () Bool)

(assert (=> b!7806264 (= e!4620843 (and tp!2299740 tp!2299741))))

(declare-fun b!7806265 () Bool)

(declare-fun e!4620838 () Bool)

(assert (=> b!7806265 (= e!4620838 tp_is_empty!52133)))

(declare-fun b!7806266 () Bool)

(declare-fun tp!2299744 () Bool)

(declare-fun tp!2299745 () Bool)

(assert (=> b!7806266 (= e!4620838 (and tp!2299744 tp!2299745))))

(declare-fun b!7806267 () Bool)

(declare-fun res!3108951 () Bool)

(assert (=> b!7806267 (=> (not res!3108951) (not e!4620844))))

(declare-fun validRegex!11303 (Regex!20889) Bool)

(assert (=> b!7806267 (= res!3108951 (validRegex!11303 r2!6217))))

(declare-fun b!7806268 () Bool)

(declare-fun tp!2299747 () Bool)

(declare-fun tp!2299739 () Bool)

(assert (=> b!7806268 (= e!4620838 (and tp!2299747 tp!2299739))))

(declare-fun b!7806269 () Bool)

(assert (=> b!7806269 (= e!4620847 (not e!4620839))))

(declare-fun res!3108954 () Bool)

(assert (=> b!7806269 (=> res!3108954 e!4620839)))

(declare-fun lt!2675391 () Bool)

(assert (=> b!7806269 (= res!3108954 (not lt!2675391))))

(declare-fun derivative!571 (Regex!20889 List!73728) Regex!20889)

(assert (=> b!7806269 (= (derivative!571 EmptyLang!20889 (t!388463 s!14292)) EmptyLang!20889)))

(declare-fun lt!2675388 () Unit!168616)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!106 (Regex!20889 List!73728) Unit!168616)

(assert (=> b!7806269 (= lt!2675388 (lemmaEmptyLangDerivativeIsAFixPoint!106 EmptyLang!20889 (t!388463 s!14292)))))

(declare-fun e!4620840 () Bool)

(assert (=> b!7806269 e!4620840))

(declare-fun res!3108944 () Bool)

(assert (=> b!7806269 (=> res!3108944 e!4620840)))

(assert (=> b!7806269 (= res!3108944 lt!2675391)))

(assert (=> b!7806269 (= lt!2675391 (matchR!10349 lt!2675386 (t!388463 s!14292)))))

(declare-fun lt!2675384 () Unit!168616)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!428 (Regex!20889 Regex!20889 List!73728) Unit!168616)

(assert (=> b!7806269 (= lt!2675384 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!428 lt!2675386 EmptyLang!20889 (t!388463 s!14292)))))

(declare-fun b!7806270 () Bool)

(declare-fun res!3108947 () Bool)

(assert (=> b!7806270 (=> res!3108947 e!4620845)))

(declare-fun isPrefix!6267 (List!73728 List!73728) Bool)

(assert (=> b!7806270 (= res!3108947 (not (isPrefix!6267 Nil!73604 lt!2675390)))))

(declare-fun b!7806271 () Bool)

(assert (=> b!7806271 (= e!4620843 tp_is_empty!52133)))

(declare-fun b!7806272 () Bool)

(declare-fun res!3108948 () Bool)

(assert (=> b!7806272 (=> res!3108948 e!4620845)))

(assert (=> b!7806272 (= res!3108948 (not (= (++!17949 Nil!73604 s!14292) s!14292)))))

(declare-fun b!7806273 () Bool)

(assert (=> b!7806273 (= e!4620840 (matchR!10349 EmptyLang!20889 (t!388463 s!14292)))))

(declare-fun b!7806274 () Bool)

(declare-fun tp!2299738 () Bool)

(assert (=> b!7806274 (= e!4620838 tp!2299738)))

(declare-fun b!7806275 () Bool)

(assert (=> b!7806275 (= e!4620845 (matchR!10349 r1!6279 lt!2675390))))

(declare-fun res!3108943 () Bool)

(assert (=> start!741530 (=> (not res!3108943) (not e!4620844))))

(assert (=> start!741530 (= res!3108943 (validRegex!11303 r1!6279))))

(assert (=> start!741530 e!4620844))

(assert (=> start!741530 e!4620838))

(assert (=> start!741530 e!4620843))

(assert (=> start!741530 e!4620846))

(declare-fun b!7806261 () Bool)

(declare-fun tp!2299743 () Bool)

(assert (=> b!7806261 (= e!4620843 tp!2299743)))

(assert (= (and start!741530 res!3108943) b!7806267))

(assert (= (and b!7806267 res!3108951) b!7806258))

(assert (= (and b!7806258 res!3108949) b!7806256))

(assert (= (and b!7806256 res!3108946) b!7806263))

(assert (= (and b!7806263 res!3108945) b!7806257))

(assert (= (and b!7806257 res!3108953) b!7806260))

(assert (= (and b!7806260 res!3108950) b!7806269))

(assert (= (and b!7806269 (not res!3108944)) b!7806273))

(assert (= (and b!7806269 (not res!3108954)) b!7806255))

(assert (= (and b!7806255 (not res!3108952)) b!7806270))

(assert (= (and b!7806270 (not res!3108947)) b!7806272))

(assert (= (and b!7806272 (not res!3108948)) b!7806275))

(assert (= (and start!741530 ((_ is ElementMatch!20889) r1!6279)) b!7806265))

(assert (= (and start!741530 ((_ is Concat!29734) r1!6279)) b!7806268))

(assert (= (and start!741530 ((_ is Star!20889) r1!6279)) b!7806274))

(assert (= (and start!741530 ((_ is Union!20889) r1!6279)) b!7806266))

(assert (= (and start!741530 ((_ is ElementMatch!20889) r2!6217)) b!7806271))

(assert (= (and start!741530 ((_ is Concat!29734) r2!6217)) b!7806264))

(assert (= (and start!741530 ((_ is Star!20889) r2!6217)) b!7806261))

(assert (= (and start!741530 ((_ is Union!20889) r2!6217)) b!7806259))

(assert (= (and start!741530 ((_ is Cons!73604) s!14292)) b!7806262))

(declare-fun m!8239534 () Bool)

(assert (=> b!7806269 m!8239534))

(declare-fun m!8239536 () Bool)

(assert (=> b!7806269 m!8239536))

(declare-fun m!8239538 () Bool)

(assert (=> b!7806269 m!8239538))

(declare-fun m!8239540 () Bool)

(assert (=> b!7806269 m!8239540))

(declare-fun m!8239542 () Bool)

(assert (=> start!741530 m!8239542))

(declare-fun m!8239544 () Bool)

(assert (=> b!7806272 m!8239544))

(declare-fun m!8239546 () Bool)

(assert (=> b!7806263 m!8239546))

(declare-fun m!8239548 () Bool)

(assert (=> b!7806263 m!8239548))

(declare-fun m!8239550 () Bool)

(assert (=> b!7806258 m!8239550))

(declare-fun m!8239552 () Bool)

(assert (=> b!7806267 m!8239552))

(declare-fun m!8239554 () Bool)

(assert (=> b!7806270 m!8239554))

(declare-fun m!8239556 () Bool)

(assert (=> b!7806257 m!8239556))

(declare-fun m!8239558 () Bool)

(assert (=> b!7806255 m!8239558))

(declare-fun m!8239560 () Bool)

(assert (=> b!7806255 m!8239560))

(declare-fun m!8239562 () Bool)

(assert (=> b!7806255 m!8239562))

(declare-fun m!8239564 () Bool)

(assert (=> b!7806255 m!8239564))

(declare-fun m!8239566 () Bool)

(assert (=> b!7806255 m!8239566))

(declare-fun m!8239568 () Bool)

(assert (=> b!7806275 m!8239568))

(declare-fun m!8239570 () Bool)

(assert (=> b!7806260 m!8239570))

(declare-fun m!8239572 () Bool)

(assert (=> b!7806273 m!8239572))

(check-sat (not b!7806274) tp_is_empty!52133 (not b!7806268) (not b!7806275) (not b!7806273) (not b!7806269) (not b!7806267) (not b!7806264) (not b!7806270) (not b!7806262) (not b!7806259) (not b!7806261) (not b!7806258) (not b!7806266) (not start!741530) (not b!7806263) (not b!7806257) (not b!7806272) (not b!7806255) (not b!7806260))
(check-sat)
(get-model)

(declare-fun b!7806358 () Bool)

(declare-fun e!4620896 () Bool)

(declare-fun e!4620897 () Bool)

(assert (=> b!7806358 (= e!4620896 e!4620897)))

(declare-fun res!3108989 () Bool)

(assert (=> b!7806358 (=> (not res!3108989) (not e!4620897))))

(declare-fun lt!2675406 () Bool)

(assert (=> b!7806358 (= res!3108989 (not lt!2675406))))

(declare-fun b!7806359 () Bool)

(declare-fun res!3108990 () Bool)

(assert (=> b!7806359 (=> res!3108990 e!4620896)))

(assert (=> b!7806359 (= res!3108990 (not ((_ is ElementMatch!20889) lt!2675389)))))

(declare-fun e!4620892 () Bool)

(assert (=> b!7806359 (= e!4620892 e!4620896)))

(declare-fun b!7806361 () Bool)

(declare-fun e!4620895 () Bool)

(declare-fun head!15964 (List!73728) C!42104)

(assert (=> b!7806361 (= e!4620895 (= (head!15964 (t!388463 s!14292)) (c!1437502 lt!2675389)))))

(declare-fun b!7806362 () Bool)

(declare-fun e!4620893 () Bool)

(declare-fun call!724045 () Bool)

(assert (=> b!7806362 (= e!4620893 (= lt!2675406 call!724045))))

(declare-fun bm!724040 () Bool)

(declare-fun isEmpty!42257 (List!73728) Bool)

(assert (=> bm!724040 (= call!724045 (isEmpty!42257 (t!388463 s!14292)))))

(declare-fun b!7806363 () Bool)

(declare-fun res!3108995 () Bool)

(assert (=> b!7806363 (=> (not res!3108995) (not e!4620895))))

(assert (=> b!7806363 (= res!3108995 (not call!724045))))

(declare-fun b!7806364 () Bool)

(assert (=> b!7806364 (= e!4620893 e!4620892)))

(declare-fun c!1437529 () Bool)

(assert (=> b!7806364 (= c!1437529 ((_ is EmptyLang!20889) lt!2675389))))

(declare-fun b!7806365 () Bool)

(declare-fun res!3108992 () Bool)

(assert (=> b!7806365 (=> res!3108992 e!4620896)))

(assert (=> b!7806365 (= res!3108992 e!4620895)))

(declare-fun res!3108993 () Bool)

(assert (=> b!7806365 (=> (not res!3108993) (not e!4620895))))

(assert (=> b!7806365 (= res!3108993 lt!2675406)))

(declare-fun b!7806366 () Bool)

(declare-fun res!3108991 () Bool)

(assert (=> b!7806366 (=> (not res!3108991) (not e!4620895))))

(declare-fun tail!15505 (List!73728) List!73728)

(assert (=> b!7806366 (= res!3108991 (isEmpty!42257 (tail!15505 (t!388463 s!14292))))))

(declare-fun b!7806367 () Bool)

(declare-fun res!3108994 () Bool)

(declare-fun e!4620894 () Bool)

(assert (=> b!7806367 (=> res!3108994 e!4620894)))

(assert (=> b!7806367 (= res!3108994 (not (isEmpty!42257 (tail!15505 (t!388463 s!14292)))))))

(declare-fun b!7806368 () Bool)

(declare-fun e!4620898 () Bool)

(assert (=> b!7806368 (= e!4620898 (nullable!9273 lt!2675389))))

(declare-fun b!7806369 () Bool)

(assert (=> b!7806369 (= e!4620894 (not (= (head!15964 (t!388463 s!14292)) (c!1437502 lt!2675389))))))

(declare-fun b!7806360 () Bool)

(assert (=> b!7806360 (= e!4620898 (matchR!10349 (derivativeStep!6226 lt!2675389 (head!15964 (t!388463 s!14292))) (tail!15505 (t!388463 s!14292))))))

(declare-fun d!2348032 () Bool)

(assert (=> d!2348032 e!4620893))

(declare-fun c!1437527 () Bool)

(assert (=> d!2348032 (= c!1437527 ((_ is EmptyExpr!20889) lt!2675389))))

(assert (=> d!2348032 (= lt!2675406 e!4620898)))

(declare-fun c!1437528 () Bool)

(assert (=> d!2348032 (= c!1437528 (isEmpty!42257 (t!388463 s!14292)))))

(assert (=> d!2348032 (validRegex!11303 lt!2675389)))

(assert (=> d!2348032 (= (matchR!10349 lt!2675389 (t!388463 s!14292)) lt!2675406)))

(declare-fun b!7806370 () Bool)

(assert (=> b!7806370 (= e!4620897 e!4620894)))

(declare-fun res!3108996 () Bool)

(assert (=> b!7806370 (=> res!3108996 e!4620894)))

(assert (=> b!7806370 (= res!3108996 call!724045)))

(declare-fun b!7806371 () Bool)

(assert (=> b!7806371 (= e!4620892 (not lt!2675406))))

(assert (= (and d!2348032 c!1437528) b!7806368))

(assert (= (and d!2348032 (not c!1437528)) b!7806360))

(assert (= (and d!2348032 c!1437527) b!7806362))

(assert (= (and d!2348032 (not c!1437527)) b!7806364))

(assert (= (and b!7806364 c!1437529) b!7806371))

(assert (= (and b!7806364 (not c!1437529)) b!7806359))

(assert (= (and b!7806359 (not res!3108990)) b!7806365))

(assert (= (and b!7806365 res!3108993) b!7806363))

(assert (= (and b!7806363 res!3108995) b!7806366))

(assert (= (and b!7806366 res!3108991) b!7806361))

(assert (= (and b!7806365 (not res!3108992)) b!7806358))

(assert (= (and b!7806358 res!3108989) b!7806370))

(assert (= (and b!7806370 (not res!3108996)) b!7806367))

(assert (= (and b!7806367 (not res!3108994)) b!7806369))

(assert (= (or b!7806362 b!7806363 b!7806370) bm!724040))

(declare-fun m!8239608 () Bool)

(assert (=> b!7806360 m!8239608))

(assert (=> b!7806360 m!8239608))

(declare-fun m!8239610 () Bool)

(assert (=> b!7806360 m!8239610))

(declare-fun m!8239612 () Bool)

(assert (=> b!7806360 m!8239612))

(assert (=> b!7806360 m!8239610))

(assert (=> b!7806360 m!8239612))

(declare-fun m!8239614 () Bool)

(assert (=> b!7806360 m!8239614))

(declare-fun m!8239616 () Bool)

(assert (=> d!2348032 m!8239616))

(declare-fun m!8239618 () Bool)

(assert (=> d!2348032 m!8239618))

(assert (=> b!7806369 m!8239608))

(assert (=> b!7806366 m!8239612))

(assert (=> b!7806366 m!8239612))

(declare-fun m!8239620 () Bool)

(assert (=> b!7806366 m!8239620))

(assert (=> b!7806367 m!8239612))

(assert (=> b!7806367 m!8239612))

(assert (=> b!7806367 m!8239620))

(assert (=> b!7806361 m!8239608))

(assert (=> bm!724040 m!8239616))

(declare-fun m!8239622 () Bool)

(assert (=> b!7806368 m!8239622))

(assert (=> b!7806263 d!2348032))

(declare-fun b!7806478 () Bool)

(declare-fun e!4620955 () Regex!20889)

(assert (=> b!7806478 (= e!4620955 (ite (= (h!80052 s!14292) (c!1437502 lt!2675393)) EmptyExpr!20889 EmptyLang!20889))))

(declare-fun b!7806479 () Bool)

(declare-fun e!4620959 () Regex!20889)

(declare-fun call!724060 () Regex!20889)

(assert (=> b!7806479 (= e!4620959 (Union!20889 (Concat!29734 call!724060 (regTwo!42290 lt!2675393)) EmptyLang!20889))))

(declare-fun b!7806480 () Bool)

(declare-fun e!4620956 () Regex!20889)

(declare-fun e!4620958 () Regex!20889)

(assert (=> b!7806480 (= e!4620956 e!4620958)))

(declare-fun c!1437559 () Bool)

(assert (=> b!7806480 (= c!1437559 ((_ is Star!20889) lt!2675393))))

(declare-fun b!7806481 () Bool)

(declare-fun e!4620957 () Regex!20889)

(assert (=> b!7806481 (= e!4620957 EmptyLang!20889)))

(declare-fun b!7806482 () Bool)

(declare-fun call!724061 () Regex!20889)

(assert (=> b!7806482 (= e!4620958 (Concat!29734 call!724061 lt!2675393))))

(declare-fun b!7806483 () Bool)

(assert (=> b!7806483 (= e!4620957 e!4620955)))

(declare-fun c!1437562 () Bool)

(assert (=> b!7806483 (= c!1437562 ((_ is ElementMatch!20889) lt!2675393))))

(declare-fun bm!724054 () Bool)

(assert (=> bm!724054 (= call!724060 call!724061)))

(declare-fun call!724062 () Regex!20889)

(declare-fun b!7806484 () Bool)

(assert (=> b!7806484 (= e!4620959 (Union!20889 (Concat!29734 call!724062 (regTwo!42290 lt!2675393)) call!724060))))

(declare-fun b!7806485 () Bool)

(declare-fun c!1437561 () Bool)

(assert (=> b!7806485 (= c!1437561 (nullable!9273 (regOne!42290 lt!2675393)))))

(assert (=> b!7806485 (= e!4620958 e!4620959)))

(declare-fun d!2348042 () Bool)

(declare-fun lt!2675424 () Regex!20889)

(assert (=> d!2348042 (validRegex!11303 lt!2675424)))

(assert (=> d!2348042 (= lt!2675424 e!4620957)))

(declare-fun c!1437560 () Bool)

(assert (=> d!2348042 (= c!1437560 (or ((_ is EmptyExpr!20889) lt!2675393) ((_ is EmptyLang!20889) lt!2675393)))))

(assert (=> d!2348042 (validRegex!11303 lt!2675393)))

(assert (=> d!2348042 (= (derivativeStep!6226 lt!2675393 (h!80052 s!14292)) lt!2675424)))

(declare-fun c!1437563 () Bool)

(declare-fun bm!724055 () Bool)

(assert (=> bm!724055 (= call!724062 (derivativeStep!6226 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393)) (h!80052 s!14292)))))

(declare-fun b!7806486 () Bool)

(assert (=> b!7806486 (= c!1437563 ((_ is Union!20889) lt!2675393))))

(assert (=> b!7806486 (= e!4620955 e!4620956)))

(declare-fun bm!724056 () Bool)

(declare-fun call!724059 () Regex!20889)

(assert (=> bm!724056 (= call!724061 call!724059)))

(declare-fun bm!724057 () Bool)

(assert (=> bm!724057 (= call!724059 (derivativeStep!6226 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393)))) (h!80052 s!14292)))))

(declare-fun b!7806487 () Bool)

(assert (=> b!7806487 (= e!4620956 (Union!20889 call!724062 call!724059))))

(assert (= (and d!2348042 c!1437560) b!7806481))

(assert (= (and d!2348042 (not c!1437560)) b!7806483))

(assert (= (and b!7806483 c!1437562) b!7806478))

(assert (= (and b!7806483 (not c!1437562)) b!7806486))

(assert (= (and b!7806486 c!1437563) b!7806487))

(assert (= (and b!7806486 (not c!1437563)) b!7806480))

(assert (= (and b!7806480 c!1437559) b!7806482))

(assert (= (and b!7806480 (not c!1437559)) b!7806485))

(assert (= (and b!7806485 c!1437561) b!7806484))

(assert (= (and b!7806485 (not c!1437561)) b!7806479))

(assert (= (or b!7806484 b!7806479) bm!724054))

(assert (= (or b!7806482 bm!724054) bm!724056))

(assert (= (or b!7806487 bm!724056) bm!724057))

(assert (= (or b!7806487 b!7806484) bm!724055))

(declare-fun m!8239686 () Bool)

(assert (=> b!7806485 m!8239686))

(declare-fun m!8239688 () Bool)

(assert (=> d!2348042 m!8239688))

(declare-fun m!8239690 () Bool)

(assert (=> d!2348042 m!8239690))

(declare-fun m!8239692 () Bool)

(assert (=> bm!724055 m!8239692))

(declare-fun m!8239694 () Bool)

(assert (=> bm!724057 m!8239694))

(assert (=> b!7806263 d!2348042))

(declare-fun b!7806488 () Bool)

(declare-fun e!4620964 () Bool)

(declare-fun e!4620965 () Bool)

(assert (=> b!7806488 (= e!4620964 e!4620965)))

(declare-fun res!3109045 () Bool)

(assert (=> b!7806488 (=> (not res!3109045) (not e!4620965))))

(declare-fun lt!2675425 () Bool)

(assert (=> b!7806488 (= res!3109045 (not lt!2675425))))

(declare-fun b!7806489 () Bool)

(declare-fun res!3109046 () Bool)

(assert (=> b!7806489 (=> res!3109046 e!4620964)))

(assert (=> b!7806489 (= res!3109046 (not ((_ is ElementMatch!20889) EmptyLang!20889)))))

(declare-fun e!4620960 () Bool)

(assert (=> b!7806489 (= e!4620960 e!4620964)))

(declare-fun b!7806491 () Bool)

(declare-fun e!4620963 () Bool)

(assert (=> b!7806491 (= e!4620963 (= (head!15964 (t!388463 s!14292)) (c!1437502 EmptyLang!20889)))))

(declare-fun b!7806492 () Bool)

(declare-fun e!4620961 () Bool)

(declare-fun call!724063 () Bool)

(assert (=> b!7806492 (= e!4620961 (= lt!2675425 call!724063))))

(declare-fun bm!724058 () Bool)

(assert (=> bm!724058 (= call!724063 (isEmpty!42257 (t!388463 s!14292)))))

(declare-fun b!7806493 () Bool)

(declare-fun res!3109051 () Bool)

(assert (=> b!7806493 (=> (not res!3109051) (not e!4620963))))

(assert (=> b!7806493 (= res!3109051 (not call!724063))))

(declare-fun b!7806494 () Bool)

(assert (=> b!7806494 (= e!4620961 e!4620960)))

(declare-fun c!1437566 () Bool)

(assert (=> b!7806494 (= c!1437566 ((_ is EmptyLang!20889) EmptyLang!20889))))

(declare-fun b!7806495 () Bool)

(declare-fun res!3109048 () Bool)

(assert (=> b!7806495 (=> res!3109048 e!4620964)))

(assert (=> b!7806495 (= res!3109048 e!4620963)))

(declare-fun res!3109049 () Bool)

(assert (=> b!7806495 (=> (not res!3109049) (not e!4620963))))

(assert (=> b!7806495 (= res!3109049 lt!2675425)))

(declare-fun b!7806496 () Bool)

(declare-fun res!3109047 () Bool)

(assert (=> b!7806496 (=> (not res!3109047) (not e!4620963))))

(assert (=> b!7806496 (= res!3109047 (isEmpty!42257 (tail!15505 (t!388463 s!14292))))))

(declare-fun b!7806497 () Bool)

(declare-fun res!3109050 () Bool)

(declare-fun e!4620962 () Bool)

(assert (=> b!7806497 (=> res!3109050 e!4620962)))

(assert (=> b!7806497 (= res!3109050 (not (isEmpty!42257 (tail!15505 (t!388463 s!14292)))))))

(declare-fun b!7806498 () Bool)

(declare-fun e!4620966 () Bool)

(assert (=> b!7806498 (= e!4620966 (nullable!9273 EmptyLang!20889))))

(declare-fun b!7806499 () Bool)

(assert (=> b!7806499 (= e!4620962 (not (= (head!15964 (t!388463 s!14292)) (c!1437502 EmptyLang!20889))))))

(declare-fun b!7806490 () Bool)

(assert (=> b!7806490 (= e!4620966 (matchR!10349 (derivativeStep!6226 EmptyLang!20889 (head!15964 (t!388463 s!14292))) (tail!15505 (t!388463 s!14292))))))

(declare-fun d!2348060 () Bool)

(assert (=> d!2348060 e!4620961))

(declare-fun c!1437564 () Bool)

(assert (=> d!2348060 (= c!1437564 ((_ is EmptyExpr!20889) EmptyLang!20889))))

(assert (=> d!2348060 (= lt!2675425 e!4620966)))

(declare-fun c!1437565 () Bool)

(assert (=> d!2348060 (= c!1437565 (isEmpty!42257 (t!388463 s!14292)))))

(assert (=> d!2348060 (validRegex!11303 EmptyLang!20889)))

(assert (=> d!2348060 (= (matchR!10349 EmptyLang!20889 (t!388463 s!14292)) lt!2675425)))

(declare-fun b!7806500 () Bool)

(assert (=> b!7806500 (= e!4620965 e!4620962)))

(declare-fun res!3109052 () Bool)

(assert (=> b!7806500 (=> res!3109052 e!4620962)))

(assert (=> b!7806500 (= res!3109052 call!724063)))

(declare-fun b!7806501 () Bool)

(assert (=> b!7806501 (= e!4620960 (not lt!2675425))))

(assert (= (and d!2348060 c!1437565) b!7806498))

(assert (= (and d!2348060 (not c!1437565)) b!7806490))

(assert (= (and d!2348060 c!1437564) b!7806492))

(assert (= (and d!2348060 (not c!1437564)) b!7806494))

(assert (= (and b!7806494 c!1437566) b!7806501))

(assert (= (and b!7806494 (not c!1437566)) b!7806489))

(assert (= (and b!7806489 (not res!3109046)) b!7806495))

(assert (= (and b!7806495 res!3109049) b!7806493))

(assert (= (and b!7806493 res!3109051) b!7806496))

(assert (= (and b!7806496 res!3109047) b!7806491))

(assert (= (and b!7806495 (not res!3109048)) b!7806488))

(assert (= (and b!7806488 res!3109045) b!7806500))

(assert (= (and b!7806500 (not res!3109052)) b!7806497))

(assert (= (and b!7806497 (not res!3109050)) b!7806499))

(assert (= (or b!7806492 b!7806493 b!7806500) bm!724058))

(assert (=> b!7806490 m!8239608))

(assert (=> b!7806490 m!8239608))

(declare-fun m!8239696 () Bool)

(assert (=> b!7806490 m!8239696))

(assert (=> b!7806490 m!8239612))

(assert (=> b!7806490 m!8239696))

(assert (=> b!7806490 m!8239612))

(declare-fun m!8239698 () Bool)

(assert (=> b!7806490 m!8239698))

(assert (=> d!2348060 m!8239616))

(declare-fun m!8239700 () Bool)

(assert (=> d!2348060 m!8239700))

(assert (=> b!7806499 m!8239608))

(assert (=> b!7806496 m!8239612))

(assert (=> b!7806496 m!8239612))

(assert (=> b!7806496 m!8239620))

(assert (=> b!7806497 m!8239612))

(assert (=> b!7806497 m!8239612))

(assert (=> b!7806497 m!8239620))

(assert (=> b!7806491 m!8239608))

(assert (=> bm!724058 m!8239616))

(declare-fun m!8239702 () Bool)

(assert (=> b!7806498 m!8239702))

(assert (=> b!7806273 d!2348060))

(declare-fun b!7806551 () Bool)

(declare-fun e!4620993 () List!73728)

(assert (=> b!7806551 (= e!4620993 s!14292)))

(declare-fun b!7806553 () Bool)

(declare-fun res!3109080 () Bool)

(declare-fun e!4620994 () Bool)

(assert (=> b!7806553 (=> (not res!3109080) (not e!4620994))))

(declare-fun lt!2675441 () List!73728)

(declare-fun size!42731 (List!73728) Int)

(assert (=> b!7806553 (= res!3109080 (= (size!42731 lt!2675441) (+ (size!42731 Nil!73604) (size!42731 s!14292))))))

(declare-fun b!7806554 () Bool)

(assert (=> b!7806554 (= e!4620994 (or (not (= s!14292 Nil!73604)) (= lt!2675441 Nil!73604)))))

(declare-fun b!7806552 () Bool)

(assert (=> b!7806552 (= e!4620993 (Cons!73604 (h!80052 Nil!73604) (++!17949 (t!388463 Nil!73604) s!14292)))))

(declare-fun d!2348062 () Bool)

(assert (=> d!2348062 e!4620994))

(declare-fun res!3109081 () Bool)

(assert (=> d!2348062 (=> (not res!3109081) (not e!4620994))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15628 (List!73728) (InoxSet C!42104))

(assert (=> d!2348062 (= res!3109081 (= (content!15628 lt!2675441) ((_ map or) (content!15628 Nil!73604) (content!15628 s!14292))))))

(assert (=> d!2348062 (= lt!2675441 e!4620993)))

(declare-fun c!1437578 () Bool)

(assert (=> d!2348062 (= c!1437578 ((_ is Nil!73604) Nil!73604))))

(assert (=> d!2348062 (= (++!17949 Nil!73604 s!14292) lt!2675441)))

(assert (= (and d!2348062 c!1437578) b!7806551))

(assert (= (and d!2348062 (not c!1437578)) b!7806552))

(assert (= (and d!2348062 res!3109081) b!7806553))

(assert (= (and b!7806553 res!3109080) b!7806554))

(declare-fun m!8239742 () Bool)

(assert (=> b!7806553 m!8239742))

(declare-fun m!8239744 () Bool)

(assert (=> b!7806553 m!8239744))

(declare-fun m!8239746 () Bool)

(assert (=> b!7806553 m!8239746))

(declare-fun m!8239748 () Bool)

(assert (=> b!7806552 m!8239748))

(declare-fun m!8239750 () Bool)

(assert (=> d!2348062 m!8239750))

(declare-fun m!8239752 () Bool)

(assert (=> d!2348062 m!8239752))

(declare-fun m!8239754 () Bool)

(assert (=> d!2348062 m!8239754))

(assert (=> b!7806272 d!2348062))

(declare-fun b!7806555 () Bool)

(declare-fun e!4620995 () Regex!20889)

(assert (=> b!7806555 (= e!4620995 (ite (= (h!80052 s!14292) (c!1437502 r1!6279)) EmptyExpr!20889 EmptyLang!20889))))

(declare-fun b!7806556 () Bool)

(declare-fun e!4620999 () Regex!20889)

(declare-fun call!724066 () Regex!20889)

(assert (=> b!7806556 (= e!4620999 (Union!20889 (Concat!29734 call!724066 (regTwo!42290 r1!6279)) EmptyLang!20889))))

(declare-fun b!7806557 () Bool)

(declare-fun e!4620996 () Regex!20889)

(declare-fun e!4620998 () Regex!20889)

(assert (=> b!7806557 (= e!4620996 e!4620998)))

(declare-fun c!1437579 () Bool)

(assert (=> b!7806557 (= c!1437579 ((_ is Star!20889) r1!6279))))

(declare-fun b!7806558 () Bool)

(declare-fun e!4620997 () Regex!20889)

(assert (=> b!7806558 (= e!4620997 EmptyLang!20889)))

(declare-fun b!7806559 () Bool)

(declare-fun call!724067 () Regex!20889)

(assert (=> b!7806559 (= e!4620998 (Concat!29734 call!724067 r1!6279))))

(declare-fun b!7806560 () Bool)

(assert (=> b!7806560 (= e!4620997 e!4620995)))

(declare-fun c!1437582 () Bool)

(assert (=> b!7806560 (= c!1437582 ((_ is ElementMatch!20889) r1!6279))))

(declare-fun bm!724060 () Bool)

(assert (=> bm!724060 (= call!724066 call!724067)))

(declare-fun b!7806561 () Bool)

(declare-fun call!724068 () Regex!20889)

(assert (=> b!7806561 (= e!4620999 (Union!20889 (Concat!29734 call!724068 (regTwo!42290 r1!6279)) call!724066))))

(declare-fun b!7806562 () Bool)

(declare-fun c!1437581 () Bool)

(assert (=> b!7806562 (= c!1437581 (nullable!9273 (regOne!42290 r1!6279)))))

(assert (=> b!7806562 (= e!4620998 e!4620999)))

(declare-fun d!2348072 () Bool)

(declare-fun lt!2675442 () Regex!20889)

(assert (=> d!2348072 (validRegex!11303 lt!2675442)))

(assert (=> d!2348072 (= lt!2675442 e!4620997)))

(declare-fun c!1437580 () Bool)

(assert (=> d!2348072 (= c!1437580 (or ((_ is EmptyExpr!20889) r1!6279) ((_ is EmptyLang!20889) r1!6279)))))

(assert (=> d!2348072 (validRegex!11303 r1!6279)))

(assert (=> d!2348072 (= (derivativeStep!6226 r1!6279 (h!80052 s!14292)) lt!2675442)))

(declare-fun bm!724061 () Bool)

(declare-fun c!1437583 () Bool)

(assert (=> bm!724061 (= call!724068 (derivativeStep!6226 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279)) (h!80052 s!14292)))))

(declare-fun b!7806563 () Bool)

(assert (=> b!7806563 (= c!1437583 ((_ is Union!20889) r1!6279))))

(assert (=> b!7806563 (= e!4620995 e!4620996)))

(declare-fun bm!724062 () Bool)

(declare-fun call!724065 () Regex!20889)

(assert (=> bm!724062 (= call!724067 call!724065)))

(declare-fun bm!724063 () Bool)

(assert (=> bm!724063 (= call!724065 (derivativeStep!6226 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279)))) (h!80052 s!14292)))))

(declare-fun b!7806564 () Bool)

(assert (=> b!7806564 (= e!4620996 (Union!20889 call!724068 call!724065))))

(assert (= (and d!2348072 c!1437580) b!7806558))

(assert (= (and d!2348072 (not c!1437580)) b!7806560))

(assert (= (and b!7806560 c!1437582) b!7806555))

(assert (= (and b!7806560 (not c!1437582)) b!7806563))

(assert (= (and b!7806563 c!1437583) b!7806564))

(assert (= (and b!7806563 (not c!1437583)) b!7806557))

(assert (= (and b!7806557 c!1437579) b!7806559))

(assert (= (and b!7806557 (not c!1437579)) b!7806562))

(assert (= (and b!7806562 c!1437581) b!7806561))

(assert (= (and b!7806562 (not c!1437581)) b!7806556))

(assert (= (or b!7806561 b!7806556) bm!724060))

(assert (= (or b!7806559 bm!724060) bm!724062))

(assert (= (or b!7806564 bm!724062) bm!724063))

(assert (= (or b!7806564 b!7806561) bm!724061))

(declare-fun m!8239756 () Bool)

(assert (=> b!7806562 m!8239756))

(declare-fun m!8239758 () Bool)

(assert (=> d!2348072 m!8239758))

(assert (=> d!2348072 m!8239542))

(declare-fun m!8239760 () Bool)

(assert (=> bm!724061 m!8239760))

(declare-fun m!8239762 () Bool)

(assert (=> bm!724063 m!8239762))

(assert (=> b!7806260 d!2348072))

(declare-fun b!7806699 () Bool)

(declare-fun e!4621073 () Bool)

(declare-fun e!4621069 () Bool)

(assert (=> b!7806699 (= e!4621073 e!4621069)))

(declare-fun c!1437604 () Bool)

(assert (=> b!7806699 (= c!1437604 ((_ is Union!20889) r1!6279))))

(declare-fun b!7806700 () Bool)

(declare-fun e!4621071 () Bool)

(assert (=> b!7806700 (= e!4621071 e!4621073)))

(declare-fun c!1437605 () Bool)

(assert (=> b!7806700 (= c!1437605 ((_ is Star!20889) r1!6279))))

(declare-fun b!7806701 () Bool)

(declare-fun e!4621070 () Bool)

(assert (=> b!7806701 (= e!4621073 e!4621070)))

(declare-fun res!3109121 () Bool)

(assert (=> b!7806701 (= res!3109121 (not (nullable!9273 (reg!21218 r1!6279))))))

(assert (=> b!7806701 (=> (not res!3109121) (not e!4621070))))

(declare-fun b!7806702 () Bool)

(declare-fun e!4621075 () Bool)

(declare-fun e!4621074 () Bool)

(assert (=> b!7806702 (= e!4621075 e!4621074)))

(declare-fun res!3109123 () Bool)

(assert (=> b!7806702 (=> (not res!3109123) (not e!4621074))))

(declare-fun call!724094 () Bool)

(assert (=> b!7806702 (= res!3109123 call!724094)))

(declare-fun b!7806703 () Bool)

(declare-fun res!3109122 () Bool)

(assert (=> b!7806703 (=> res!3109122 e!4621075)))

(assert (=> b!7806703 (= res!3109122 (not ((_ is Concat!29734) r1!6279)))))

(assert (=> b!7806703 (= e!4621069 e!4621075)))

(declare-fun bm!724087 () Bool)

(declare-fun call!724093 () Bool)

(assert (=> bm!724087 (= call!724093 (validRegex!11303 (ite c!1437604 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279))))))

(declare-fun bm!724088 () Bool)

(declare-fun call!724092 () Bool)

(assert (=> bm!724088 (= call!724094 call!724092)))

(declare-fun b!7806698 () Bool)

(assert (=> b!7806698 (= e!4621074 call!724093)))

(declare-fun d!2348074 () Bool)

(declare-fun res!3109120 () Bool)

(assert (=> d!2348074 (=> res!3109120 e!4621071)))

(assert (=> d!2348074 (= res!3109120 ((_ is ElementMatch!20889) r1!6279))))

(assert (=> d!2348074 (= (validRegex!11303 r1!6279) e!4621071)))

(declare-fun b!7806704 () Bool)

(assert (=> b!7806704 (= e!4621070 call!724092)))

(declare-fun b!7806705 () Bool)

(declare-fun res!3109124 () Bool)

(declare-fun e!4621072 () Bool)

(assert (=> b!7806705 (=> (not res!3109124) (not e!4621072))))

(assert (=> b!7806705 (= res!3109124 call!724094)))

(assert (=> b!7806705 (= e!4621069 e!4621072)))

(declare-fun b!7806706 () Bool)

(assert (=> b!7806706 (= e!4621072 call!724093)))

(declare-fun bm!724089 () Bool)

(assert (=> bm!724089 (= call!724092 (validRegex!11303 (ite c!1437605 (reg!21218 r1!6279) (ite c!1437604 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))))))

(assert (= (and d!2348074 (not res!3109120)) b!7806700))

(assert (= (and b!7806700 c!1437605) b!7806701))

(assert (= (and b!7806700 (not c!1437605)) b!7806699))

(assert (= (and b!7806701 res!3109121) b!7806704))

(assert (= (and b!7806699 c!1437604) b!7806705))

(assert (= (and b!7806699 (not c!1437604)) b!7806703))

(assert (= (and b!7806705 res!3109124) b!7806706))

(assert (= (and b!7806703 (not res!3109122)) b!7806702))

(assert (= (and b!7806702 res!3109123) b!7806698))

(assert (= (or b!7806705 b!7806702) bm!724088))

(assert (= (or b!7806706 b!7806698) bm!724087))

(assert (= (or b!7806704 bm!724088) bm!724089))

(declare-fun m!8239794 () Bool)

(assert (=> b!7806701 m!8239794))

(declare-fun m!8239796 () Bool)

(assert (=> bm!724087 m!8239796))

(declare-fun m!8239798 () Bool)

(assert (=> bm!724089 m!8239798))

(assert (=> start!741530 d!2348074))

(declare-fun b!7806716 () Bool)

(declare-fun res!3109133 () Bool)

(declare-fun e!4621082 () Bool)

(assert (=> b!7806716 (=> (not res!3109133) (not e!4621082))))

(assert (=> b!7806716 (= res!3109133 (= (head!15964 Nil!73604) (head!15964 lt!2675390)))))

(declare-fun b!7806715 () Bool)

(declare-fun e!4621084 () Bool)

(assert (=> b!7806715 (= e!4621084 e!4621082)))

(declare-fun res!3109136 () Bool)

(assert (=> b!7806715 (=> (not res!3109136) (not e!4621082))))

(assert (=> b!7806715 (= res!3109136 (not ((_ is Nil!73604) lt!2675390)))))

(declare-fun b!7806718 () Bool)

(declare-fun e!4621083 () Bool)

(assert (=> b!7806718 (= e!4621083 (>= (size!42731 lt!2675390) (size!42731 Nil!73604)))))

(declare-fun d!2348084 () Bool)

(assert (=> d!2348084 e!4621083))

(declare-fun res!3109134 () Bool)

(assert (=> d!2348084 (=> res!3109134 e!4621083)))

(declare-fun lt!2675447 () Bool)

(assert (=> d!2348084 (= res!3109134 (not lt!2675447))))

(assert (=> d!2348084 (= lt!2675447 e!4621084)))

(declare-fun res!3109135 () Bool)

(assert (=> d!2348084 (=> res!3109135 e!4621084)))

(assert (=> d!2348084 (= res!3109135 ((_ is Nil!73604) Nil!73604))))

(assert (=> d!2348084 (= (isPrefix!6267 Nil!73604 lt!2675390) lt!2675447)))

(declare-fun b!7806717 () Bool)

(assert (=> b!7806717 (= e!4621082 (isPrefix!6267 (tail!15505 Nil!73604) (tail!15505 lt!2675390)))))

(assert (= (and d!2348084 (not res!3109135)) b!7806715))

(assert (= (and b!7806715 res!3109136) b!7806716))

(assert (= (and b!7806716 res!3109133) b!7806717))

(assert (= (and d!2348084 (not res!3109134)) b!7806718))

(declare-fun m!8239800 () Bool)

(assert (=> b!7806716 m!8239800))

(declare-fun m!8239802 () Bool)

(assert (=> b!7806716 m!8239802))

(declare-fun m!8239804 () Bool)

(assert (=> b!7806718 m!8239804))

(assert (=> b!7806718 m!8239744))

(declare-fun m!8239806 () Bool)

(assert (=> b!7806717 m!8239806))

(declare-fun m!8239808 () Bool)

(assert (=> b!7806717 m!8239808))

(assert (=> b!7806717 m!8239806))

(assert (=> b!7806717 m!8239808))

(declare-fun m!8239810 () Bool)

(assert (=> b!7806717 m!8239810))

(assert (=> b!7806270 d!2348084))

(declare-fun b!7806719 () Bool)

(declare-fun e!4621089 () Bool)

(declare-fun e!4621090 () Bool)

(assert (=> b!7806719 (= e!4621089 e!4621090)))

(declare-fun res!3109137 () Bool)

(assert (=> b!7806719 (=> (not res!3109137) (not e!4621090))))

(declare-fun lt!2675448 () Bool)

(assert (=> b!7806719 (= res!3109137 (not lt!2675448))))

(declare-fun b!7806720 () Bool)

(declare-fun res!3109138 () Bool)

(assert (=> b!7806720 (=> res!3109138 e!4621089)))

(assert (=> b!7806720 (= res!3109138 (not ((_ is ElementMatch!20889) lt!2675393)))))

(declare-fun e!4621085 () Bool)

(assert (=> b!7806720 (= e!4621085 e!4621089)))

(declare-fun b!7806722 () Bool)

(declare-fun e!4621088 () Bool)

(assert (=> b!7806722 (= e!4621088 (= (head!15964 s!14292) (c!1437502 lt!2675393)))))

(declare-fun b!7806723 () Bool)

(declare-fun e!4621086 () Bool)

(declare-fun call!724095 () Bool)

(assert (=> b!7806723 (= e!4621086 (= lt!2675448 call!724095))))

(declare-fun bm!724090 () Bool)

(assert (=> bm!724090 (= call!724095 (isEmpty!42257 s!14292))))

(declare-fun b!7806724 () Bool)

(declare-fun res!3109143 () Bool)

(assert (=> b!7806724 (=> (not res!3109143) (not e!4621088))))

(assert (=> b!7806724 (= res!3109143 (not call!724095))))

(declare-fun b!7806725 () Bool)

(assert (=> b!7806725 (= e!4621086 e!4621085)))

(declare-fun c!1437608 () Bool)

(assert (=> b!7806725 (= c!1437608 ((_ is EmptyLang!20889) lt!2675393))))

(declare-fun b!7806726 () Bool)

(declare-fun res!3109140 () Bool)

(assert (=> b!7806726 (=> res!3109140 e!4621089)))

(assert (=> b!7806726 (= res!3109140 e!4621088)))

(declare-fun res!3109141 () Bool)

(assert (=> b!7806726 (=> (not res!3109141) (not e!4621088))))

(assert (=> b!7806726 (= res!3109141 lt!2675448)))

(declare-fun b!7806727 () Bool)

(declare-fun res!3109139 () Bool)

(assert (=> b!7806727 (=> (not res!3109139) (not e!4621088))))

(assert (=> b!7806727 (= res!3109139 (isEmpty!42257 (tail!15505 s!14292)))))

(declare-fun b!7806728 () Bool)

(declare-fun res!3109142 () Bool)

(declare-fun e!4621087 () Bool)

(assert (=> b!7806728 (=> res!3109142 e!4621087)))

(assert (=> b!7806728 (= res!3109142 (not (isEmpty!42257 (tail!15505 s!14292))))))

(declare-fun b!7806729 () Bool)

(declare-fun e!4621091 () Bool)

(assert (=> b!7806729 (= e!4621091 (nullable!9273 lt!2675393))))

(declare-fun b!7806730 () Bool)

(assert (=> b!7806730 (= e!4621087 (not (= (head!15964 s!14292) (c!1437502 lt!2675393))))))

(declare-fun b!7806721 () Bool)

(assert (=> b!7806721 (= e!4621091 (matchR!10349 (derivativeStep!6226 lt!2675393 (head!15964 s!14292)) (tail!15505 s!14292)))))

(declare-fun d!2348086 () Bool)

(assert (=> d!2348086 e!4621086))

(declare-fun c!1437606 () Bool)

(assert (=> d!2348086 (= c!1437606 ((_ is EmptyExpr!20889) lt!2675393))))

(assert (=> d!2348086 (= lt!2675448 e!4621091)))

(declare-fun c!1437607 () Bool)

(assert (=> d!2348086 (= c!1437607 (isEmpty!42257 s!14292))))

(assert (=> d!2348086 (validRegex!11303 lt!2675393)))

(assert (=> d!2348086 (= (matchR!10349 lt!2675393 s!14292) lt!2675448)))

(declare-fun b!7806731 () Bool)

(assert (=> b!7806731 (= e!4621090 e!4621087)))

(declare-fun res!3109144 () Bool)

(assert (=> b!7806731 (=> res!3109144 e!4621087)))

(assert (=> b!7806731 (= res!3109144 call!724095)))

(declare-fun b!7806732 () Bool)

(assert (=> b!7806732 (= e!4621085 (not lt!2675448))))

(assert (= (and d!2348086 c!1437607) b!7806729))

(assert (= (and d!2348086 (not c!1437607)) b!7806721))

(assert (= (and d!2348086 c!1437606) b!7806723))

(assert (= (and d!2348086 (not c!1437606)) b!7806725))

(assert (= (and b!7806725 c!1437608) b!7806732))

(assert (= (and b!7806725 (not c!1437608)) b!7806720))

(assert (= (and b!7806720 (not res!3109138)) b!7806726))

(assert (= (and b!7806726 res!3109141) b!7806724))

(assert (= (and b!7806724 res!3109143) b!7806727))

(assert (= (and b!7806727 res!3109139) b!7806722))

(assert (= (and b!7806726 (not res!3109140)) b!7806719))

(assert (= (and b!7806719 res!3109137) b!7806731))

(assert (= (and b!7806731 (not res!3109144)) b!7806728))

(assert (= (and b!7806728 (not res!3109142)) b!7806730))

(assert (= (or b!7806723 b!7806724 b!7806731) bm!724090))

(declare-fun m!8239812 () Bool)

(assert (=> b!7806721 m!8239812))

(assert (=> b!7806721 m!8239812))

(declare-fun m!8239814 () Bool)

(assert (=> b!7806721 m!8239814))

(declare-fun m!8239816 () Bool)

(assert (=> b!7806721 m!8239816))

(assert (=> b!7806721 m!8239814))

(assert (=> b!7806721 m!8239816))

(declare-fun m!8239818 () Bool)

(assert (=> b!7806721 m!8239818))

(declare-fun m!8239820 () Bool)

(assert (=> d!2348086 m!8239820))

(assert (=> d!2348086 m!8239690))

(assert (=> b!7806730 m!8239812))

(assert (=> b!7806727 m!8239816))

(assert (=> b!7806727 m!8239816))

(declare-fun m!8239822 () Bool)

(assert (=> b!7806727 m!8239822))

(assert (=> b!7806728 m!8239816))

(assert (=> b!7806728 m!8239816))

(assert (=> b!7806728 m!8239822))

(assert (=> b!7806722 m!8239812))

(assert (=> bm!724090 m!8239820))

(declare-fun m!8239824 () Bool)

(assert (=> b!7806729 m!8239824))

(assert (=> b!7806258 d!2348086))

(declare-fun d!2348088 () Bool)

(declare-fun lt!2675451 () Regex!20889)

(assert (=> d!2348088 (validRegex!11303 lt!2675451)))

(declare-fun e!4621094 () Regex!20889)

(assert (=> d!2348088 (= lt!2675451 e!4621094)))

(declare-fun c!1437611 () Bool)

(assert (=> d!2348088 (= c!1437611 ((_ is Cons!73604) (t!388463 s!14292)))))

(assert (=> d!2348088 (validRegex!11303 EmptyLang!20889)))

(assert (=> d!2348088 (= (derivative!571 EmptyLang!20889 (t!388463 s!14292)) lt!2675451)))

(declare-fun b!7806737 () Bool)

(assert (=> b!7806737 (= e!4621094 (derivative!571 (derivativeStep!6226 EmptyLang!20889 (h!80052 (t!388463 s!14292))) (t!388463 (t!388463 s!14292))))))

(declare-fun b!7806738 () Bool)

(assert (=> b!7806738 (= e!4621094 EmptyLang!20889)))

(assert (= (and d!2348088 c!1437611) b!7806737))

(assert (= (and d!2348088 (not c!1437611)) b!7806738))

(declare-fun m!8239826 () Bool)

(assert (=> d!2348088 m!8239826))

(assert (=> d!2348088 m!8239700))

(declare-fun m!8239828 () Bool)

(assert (=> b!7806737 m!8239828))

(assert (=> b!7806737 m!8239828))

(declare-fun m!8239830 () Bool)

(assert (=> b!7806737 m!8239830))

(assert (=> b!7806269 d!2348088))

(declare-fun d!2348090 () Bool)

(assert (=> d!2348090 (= (derivative!571 EmptyLang!20889 (t!388463 s!14292)) EmptyLang!20889)))

(declare-fun lt!2675454 () Unit!168616)

(declare-fun choose!59571 (Regex!20889 List!73728) Unit!168616)

(assert (=> d!2348090 (= lt!2675454 (choose!59571 EmptyLang!20889 (t!388463 s!14292)))))

(assert (=> d!2348090 (= EmptyLang!20889 EmptyLang!20889)))

(assert (=> d!2348090 (= (lemmaEmptyLangDerivativeIsAFixPoint!106 EmptyLang!20889 (t!388463 s!14292)) lt!2675454)))

(declare-fun bs!1966554 () Bool)

(assert (= bs!1966554 d!2348090))

(assert (=> bs!1966554 m!8239534))

(declare-fun m!8239832 () Bool)

(assert (=> bs!1966554 m!8239832))

(assert (=> b!7806269 d!2348090))

(declare-fun b!7806739 () Bool)

(declare-fun e!4621099 () Bool)

(declare-fun e!4621100 () Bool)

(assert (=> b!7806739 (= e!4621099 e!4621100)))

(declare-fun res!3109145 () Bool)

(assert (=> b!7806739 (=> (not res!3109145) (not e!4621100))))

(declare-fun lt!2675455 () Bool)

(assert (=> b!7806739 (= res!3109145 (not lt!2675455))))

(declare-fun b!7806740 () Bool)

(declare-fun res!3109146 () Bool)

(assert (=> b!7806740 (=> res!3109146 e!4621099)))

(assert (=> b!7806740 (= res!3109146 (not ((_ is ElementMatch!20889) lt!2675386)))))

(declare-fun e!4621095 () Bool)

(assert (=> b!7806740 (= e!4621095 e!4621099)))

(declare-fun b!7806742 () Bool)

(declare-fun e!4621098 () Bool)

(assert (=> b!7806742 (= e!4621098 (= (head!15964 (t!388463 s!14292)) (c!1437502 lt!2675386)))))

(declare-fun b!7806743 () Bool)

(declare-fun e!4621096 () Bool)

(declare-fun call!724096 () Bool)

(assert (=> b!7806743 (= e!4621096 (= lt!2675455 call!724096))))

(declare-fun bm!724091 () Bool)

(assert (=> bm!724091 (= call!724096 (isEmpty!42257 (t!388463 s!14292)))))

(declare-fun b!7806744 () Bool)

(declare-fun res!3109151 () Bool)

(assert (=> b!7806744 (=> (not res!3109151) (not e!4621098))))

(assert (=> b!7806744 (= res!3109151 (not call!724096))))

(declare-fun b!7806745 () Bool)

(assert (=> b!7806745 (= e!4621096 e!4621095)))

(declare-fun c!1437614 () Bool)

(assert (=> b!7806745 (= c!1437614 ((_ is EmptyLang!20889) lt!2675386))))

(declare-fun b!7806746 () Bool)

(declare-fun res!3109148 () Bool)

(assert (=> b!7806746 (=> res!3109148 e!4621099)))

(assert (=> b!7806746 (= res!3109148 e!4621098)))

(declare-fun res!3109149 () Bool)

(assert (=> b!7806746 (=> (not res!3109149) (not e!4621098))))

(assert (=> b!7806746 (= res!3109149 lt!2675455)))

(declare-fun b!7806747 () Bool)

(declare-fun res!3109147 () Bool)

(assert (=> b!7806747 (=> (not res!3109147) (not e!4621098))))

(assert (=> b!7806747 (= res!3109147 (isEmpty!42257 (tail!15505 (t!388463 s!14292))))))

(declare-fun b!7806748 () Bool)

(declare-fun res!3109150 () Bool)

(declare-fun e!4621097 () Bool)

(assert (=> b!7806748 (=> res!3109150 e!4621097)))

(assert (=> b!7806748 (= res!3109150 (not (isEmpty!42257 (tail!15505 (t!388463 s!14292)))))))

(declare-fun b!7806749 () Bool)

(declare-fun e!4621101 () Bool)

(assert (=> b!7806749 (= e!4621101 (nullable!9273 lt!2675386))))

(declare-fun b!7806750 () Bool)

(assert (=> b!7806750 (= e!4621097 (not (= (head!15964 (t!388463 s!14292)) (c!1437502 lt!2675386))))))

(declare-fun b!7806741 () Bool)

(assert (=> b!7806741 (= e!4621101 (matchR!10349 (derivativeStep!6226 lt!2675386 (head!15964 (t!388463 s!14292))) (tail!15505 (t!388463 s!14292))))))

(declare-fun d!2348092 () Bool)

(assert (=> d!2348092 e!4621096))

(declare-fun c!1437612 () Bool)

(assert (=> d!2348092 (= c!1437612 ((_ is EmptyExpr!20889) lt!2675386))))

(assert (=> d!2348092 (= lt!2675455 e!4621101)))

(declare-fun c!1437613 () Bool)

(assert (=> d!2348092 (= c!1437613 (isEmpty!42257 (t!388463 s!14292)))))

(assert (=> d!2348092 (validRegex!11303 lt!2675386)))

(assert (=> d!2348092 (= (matchR!10349 lt!2675386 (t!388463 s!14292)) lt!2675455)))

(declare-fun b!7806751 () Bool)

(assert (=> b!7806751 (= e!4621100 e!4621097)))

(declare-fun res!3109152 () Bool)

(assert (=> b!7806751 (=> res!3109152 e!4621097)))

(assert (=> b!7806751 (= res!3109152 call!724096)))

(declare-fun b!7806752 () Bool)

(assert (=> b!7806752 (= e!4621095 (not lt!2675455))))

(assert (= (and d!2348092 c!1437613) b!7806749))

(assert (= (and d!2348092 (not c!1437613)) b!7806741))

(assert (= (and d!2348092 c!1437612) b!7806743))

(assert (= (and d!2348092 (not c!1437612)) b!7806745))

(assert (= (and b!7806745 c!1437614) b!7806752))

(assert (= (and b!7806745 (not c!1437614)) b!7806740))

(assert (= (and b!7806740 (not res!3109146)) b!7806746))

(assert (= (and b!7806746 res!3109149) b!7806744))

(assert (= (and b!7806744 res!3109151) b!7806747))

(assert (= (and b!7806747 res!3109147) b!7806742))

(assert (= (and b!7806746 (not res!3109148)) b!7806739))

(assert (= (and b!7806739 res!3109145) b!7806751))

(assert (= (and b!7806751 (not res!3109152)) b!7806748))

(assert (= (and b!7806748 (not res!3109150)) b!7806750))

(assert (= (or b!7806743 b!7806744 b!7806751) bm!724091))

(assert (=> b!7806741 m!8239608))

(assert (=> b!7806741 m!8239608))

(declare-fun m!8239834 () Bool)

(assert (=> b!7806741 m!8239834))

(assert (=> b!7806741 m!8239612))

(assert (=> b!7806741 m!8239834))

(assert (=> b!7806741 m!8239612))

(declare-fun m!8239836 () Bool)

(assert (=> b!7806741 m!8239836))

(assert (=> d!2348092 m!8239616))

(declare-fun m!8239838 () Bool)

(assert (=> d!2348092 m!8239838))

(assert (=> b!7806750 m!8239608))

(assert (=> b!7806747 m!8239612))

(assert (=> b!7806747 m!8239612))

(assert (=> b!7806747 m!8239620))

(assert (=> b!7806748 m!8239612))

(assert (=> b!7806748 m!8239612))

(assert (=> b!7806748 m!8239620))

(assert (=> b!7806742 m!8239608))

(assert (=> bm!724091 m!8239616))

(declare-fun m!8239840 () Bool)

(assert (=> b!7806749 m!8239840))

(assert (=> b!7806269 d!2348092))

(declare-fun d!2348094 () Bool)

(declare-fun e!4621106 () Bool)

(assert (=> d!2348094 e!4621106))

(declare-fun res!3109158 () Bool)

(assert (=> d!2348094 (=> res!3109158 e!4621106)))

(assert (=> d!2348094 (= res!3109158 (matchR!10349 lt!2675386 (t!388463 s!14292)))))

(declare-fun lt!2675458 () Unit!168616)

(declare-fun choose!59572 (Regex!20889 Regex!20889 List!73728) Unit!168616)

(assert (=> d!2348094 (= lt!2675458 (choose!59572 lt!2675386 EmptyLang!20889 (t!388463 s!14292)))))

(declare-fun e!4621107 () Bool)

(assert (=> d!2348094 e!4621107))

(declare-fun res!3109157 () Bool)

(assert (=> d!2348094 (=> (not res!3109157) (not e!4621107))))

(assert (=> d!2348094 (= res!3109157 (validRegex!11303 lt!2675386))))

(assert (=> d!2348094 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!428 lt!2675386 EmptyLang!20889 (t!388463 s!14292)) lt!2675458)))

(declare-fun b!7806757 () Bool)

(assert (=> b!7806757 (= e!4621107 (validRegex!11303 EmptyLang!20889))))

(declare-fun b!7806758 () Bool)

(assert (=> b!7806758 (= e!4621106 (matchR!10349 EmptyLang!20889 (t!388463 s!14292)))))

(assert (= (and d!2348094 res!3109157) b!7806757))

(assert (= (and d!2348094 (not res!3109158)) b!7806758))

(assert (=> d!2348094 m!8239538))

(declare-fun m!8239842 () Bool)

(assert (=> d!2348094 m!8239842))

(assert (=> d!2348094 m!8239838))

(assert (=> b!7806757 m!8239700))

(assert (=> b!7806758 m!8239572))

(assert (=> b!7806269 d!2348094))

(declare-fun d!2348096 () Bool)

(declare-fun nullableFct!3652 (Regex!20889) Bool)

(assert (=> d!2348096 (= (nullable!9273 r1!6279) (nullableFct!3652 r1!6279))))

(declare-fun bs!1966555 () Bool)

(assert (= bs!1966555 d!2348096))

(declare-fun m!8239844 () Bool)

(assert (=> bs!1966555 m!8239844))

(assert (=> b!7806257 d!2348096))

(declare-fun b!7806760 () Bool)

(declare-fun e!4621112 () Bool)

(declare-fun e!4621108 () Bool)

(assert (=> b!7806760 (= e!4621112 e!4621108)))

(declare-fun c!1437615 () Bool)

(assert (=> b!7806760 (= c!1437615 ((_ is Union!20889) r2!6217))))

(declare-fun b!7806761 () Bool)

(declare-fun e!4621110 () Bool)

(assert (=> b!7806761 (= e!4621110 e!4621112)))

(declare-fun c!1437616 () Bool)

(assert (=> b!7806761 (= c!1437616 ((_ is Star!20889) r2!6217))))

(declare-fun b!7806762 () Bool)

(declare-fun e!4621109 () Bool)

(assert (=> b!7806762 (= e!4621112 e!4621109)))

(declare-fun res!3109160 () Bool)

(assert (=> b!7806762 (= res!3109160 (not (nullable!9273 (reg!21218 r2!6217))))))

(assert (=> b!7806762 (=> (not res!3109160) (not e!4621109))))

(declare-fun b!7806763 () Bool)

(declare-fun e!4621114 () Bool)

(declare-fun e!4621113 () Bool)

(assert (=> b!7806763 (= e!4621114 e!4621113)))

(declare-fun res!3109162 () Bool)

(assert (=> b!7806763 (=> (not res!3109162) (not e!4621113))))

(declare-fun call!724099 () Bool)

(assert (=> b!7806763 (= res!3109162 call!724099)))

(declare-fun b!7806764 () Bool)

(declare-fun res!3109161 () Bool)

(assert (=> b!7806764 (=> res!3109161 e!4621114)))

(assert (=> b!7806764 (= res!3109161 (not ((_ is Concat!29734) r2!6217)))))

(assert (=> b!7806764 (= e!4621108 e!4621114)))

(declare-fun bm!724092 () Bool)

(declare-fun call!724098 () Bool)

(assert (=> bm!724092 (= call!724098 (validRegex!11303 (ite c!1437615 (regTwo!42291 r2!6217) (regTwo!42290 r2!6217))))))

(declare-fun bm!724093 () Bool)

(declare-fun call!724097 () Bool)

(assert (=> bm!724093 (= call!724099 call!724097)))

(declare-fun b!7806759 () Bool)

(assert (=> b!7806759 (= e!4621113 call!724098)))

(declare-fun d!2348098 () Bool)

(declare-fun res!3109159 () Bool)

(assert (=> d!2348098 (=> res!3109159 e!4621110)))

(assert (=> d!2348098 (= res!3109159 ((_ is ElementMatch!20889) r2!6217))))

(assert (=> d!2348098 (= (validRegex!11303 r2!6217) e!4621110)))

(declare-fun b!7806765 () Bool)

(assert (=> b!7806765 (= e!4621109 call!724097)))

(declare-fun b!7806766 () Bool)

(declare-fun res!3109163 () Bool)

(declare-fun e!4621111 () Bool)

(assert (=> b!7806766 (=> (not res!3109163) (not e!4621111))))

(assert (=> b!7806766 (= res!3109163 call!724099)))

(assert (=> b!7806766 (= e!4621108 e!4621111)))

(declare-fun b!7806767 () Bool)

(assert (=> b!7806767 (= e!4621111 call!724098)))

(declare-fun bm!724094 () Bool)

(assert (=> bm!724094 (= call!724097 (validRegex!11303 (ite c!1437616 (reg!21218 r2!6217) (ite c!1437615 (regOne!42291 r2!6217) (regOne!42290 r2!6217)))))))

(assert (= (and d!2348098 (not res!3109159)) b!7806761))

(assert (= (and b!7806761 c!1437616) b!7806762))

(assert (= (and b!7806761 (not c!1437616)) b!7806760))

(assert (= (and b!7806762 res!3109160) b!7806765))

(assert (= (and b!7806760 c!1437615) b!7806766))

(assert (= (and b!7806760 (not c!1437615)) b!7806764))

(assert (= (and b!7806766 res!3109163) b!7806767))

(assert (= (and b!7806764 (not res!3109161)) b!7806763))

(assert (= (and b!7806763 res!3109162) b!7806759))

(assert (= (or b!7806766 b!7806763) bm!724093))

(assert (= (or b!7806767 b!7806759) bm!724092))

(assert (= (or b!7806765 bm!724093) bm!724094))

(declare-fun m!8239846 () Bool)

(assert (=> b!7806762 m!8239846))

(declare-fun m!8239848 () Bool)

(assert (=> bm!724092 m!8239848))

(declare-fun m!8239850 () Bool)

(assert (=> bm!724094 m!8239850))

(assert (=> b!7806267 d!2348098))

(declare-fun b!7806768 () Bool)

(declare-fun e!4621115 () List!73728)

(assert (=> b!7806768 (= e!4621115 (_2!38285 lt!2675385))))

(declare-fun b!7806770 () Bool)

(declare-fun res!3109164 () Bool)

(declare-fun e!4621116 () Bool)

(assert (=> b!7806770 (=> (not res!3109164) (not e!4621116))))

(declare-fun lt!2675459 () List!73728)

(assert (=> b!7806770 (= res!3109164 (= (size!42731 lt!2675459) (+ (size!42731 lt!2675390) (size!42731 (_2!38285 lt!2675385)))))))

(declare-fun b!7806771 () Bool)

(assert (=> b!7806771 (= e!4621116 (or (not (= (_2!38285 lt!2675385) Nil!73604)) (= lt!2675459 lt!2675390)))))

(declare-fun b!7806769 () Bool)

(assert (=> b!7806769 (= e!4621115 (Cons!73604 (h!80052 lt!2675390) (++!17949 (t!388463 lt!2675390) (_2!38285 lt!2675385))))))

(declare-fun d!2348100 () Bool)

(assert (=> d!2348100 e!4621116))

(declare-fun res!3109165 () Bool)

(assert (=> d!2348100 (=> (not res!3109165) (not e!4621116))))

(assert (=> d!2348100 (= res!3109165 (= (content!15628 lt!2675459) ((_ map or) (content!15628 lt!2675390) (content!15628 (_2!38285 lt!2675385)))))))

(assert (=> d!2348100 (= lt!2675459 e!4621115)))

(declare-fun c!1437617 () Bool)

(assert (=> d!2348100 (= c!1437617 ((_ is Nil!73604) lt!2675390))))

(assert (=> d!2348100 (= (++!17949 lt!2675390 (_2!38285 lt!2675385)) lt!2675459)))

(assert (= (and d!2348100 c!1437617) b!7806768))

(assert (= (and d!2348100 (not c!1437617)) b!7806769))

(assert (= (and d!2348100 res!3109165) b!7806770))

(assert (= (and b!7806770 res!3109164) b!7806771))

(declare-fun m!8239852 () Bool)

(assert (=> b!7806770 m!8239852))

(assert (=> b!7806770 m!8239804))

(declare-fun m!8239854 () Bool)

(assert (=> b!7806770 m!8239854))

(declare-fun m!8239856 () Bool)

(assert (=> b!7806769 m!8239856))

(declare-fun m!8239858 () Bool)

(assert (=> d!2348100 m!8239858))

(declare-fun m!8239860 () Bool)

(assert (=> d!2348100 m!8239860))

(declare-fun m!8239862 () Bool)

(assert (=> d!2348100 m!8239862))

(assert (=> b!7806255 d!2348100))

(declare-fun d!2348102 () Bool)

(assert (=> d!2348102 (= (get!26345 lt!2675392) (v!54910 lt!2675392))))

(assert (=> b!7806255 d!2348102))

(declare-fun b!7806790 () Bool)

(declare-fun e!4621129 () Option!17776)

(declare-fun e!4621128 () Option!17776)

(assert (=> b!7806790 (= e!4621129 e!4621128)))

(declare-fun c!1437622 () Bool)

(assert (=> b!7806790 (= c!1437622 ((_ is Nil!73604) (t!388463 s!14292)))))

(declare-fun b!7806791 () Bool)

(declare-fun e!4621131 () Bool)

(declare-fun lt!2675468 () Option!17776)

(assert (=> b!7806791 (= e!4621131 (not (isDefined!14386 lt!2675468)))))

(declare-fun b!7806792 () Bool)

(declare-fun e!4621127 () Bool)

(assert (=> b!7806792 (= e!4621127 (= (++!17949 (_1!38285 (get!26345 lt!2675468)) (_2!38285 (get!26345 lt!2675468))) (t!388463 s!14292)))))

(declare-fun d!2348104 () Bool)

(assert (=> d!2348104 e!4621131))

(declare-fun res!3109180 () Bool)

(assert (=> d!2348104 (=> res!3109180 e!4621131)))

(assert (=> d!2348104 (= res!3109180 e!4621127)))

(declare-fun res!3109179 () Bool)

(assert (=> d!2348104 (=> (not res!3109179) (not e!4621127))))

(assert (=> d!2348104 (= res!3109179 (isDefined!14386 lt!2675468))))

(assert (=> d!2348104 (= lt!2675468 e!4621129)))

(declare-fun c!1437623 () Bool)

(declare-fun e!4621130 () Bool)

(assert (=> d!2348104 (= c!1437623 e!4621130)))

(declare-fun res!3109176 () Bool)

(assert (=> d!2348104 (=> (not res!3109176) (not e!4621130))))

(assert (=> d!2348104 (= res!3109176 (matchR!10349 lt!2675387 Nil!73604))))

(assert (=> d!2348104 (validRegex!11303 lt!2675387)))

(assert (=> d!2348104 (= (findConcatSeparation!3806 lt!2675387 r2!6217 Nil!73604 (t!388463 s!14292) (t!388463 s!14292)) lt!2675468)))

(declare-fun b!7806793 () Bool)

(assert (=> b!7806793 (= e!4621130 (matchR!10349 r2!6217 (t!388463 s!14292)))))

(declare-fun b!7806794 () Bool)

(declare-fun res!3109178 () Bool)

(assert (=> b!7806794 (=> (not res!3109178) (not e!4621127))))

(assert (=> b!7806794 (= res!3109178 (matchR!10349 r2!6217 (_2!38285 (get!26345 lt!2675468))))))

(declare-fun b!7806795 () Bool)

(assert (=> b!7806795 (= e!4621129 (Some!17775 (tuple2!69965 Nil!73604 (t!388463 s!14292))))))

(declare-fun b!7806796 () Bool)

(declare-fun res!3109177 () Bool)

(assert (=> b!7806796 (=> (not res!3109177) (not e!4621127))))

(assert (=> b!7806796 (= res!3109177 (matchR!10349 lt!2675387 (_1!38285 (get!26345 lt!2675468))))))

(declare-fun b!7806797 () Bool)

(declare-fun lt!2675466 () Unit!168616)

(declare-fun lt!2675467 () Unit!168616)

(assert (=> b!7806797 (= lt!2675466 lt!2675467)))

(assert (=> b!7806797 (= (++!17949 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)) (t!388463 (t!388463 s!14292))) (t!388463 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3420 (List!73728 C!42104 List!73728 List!73728) Unit!168616)

(assert (=> b!7806797 (= lt!2675467 (lemmaMoveElementToOtherListKeepsConcatEq!3420 Nil!73604 (h!80052 (t!388463 s!14292)) (t!388463 (t!388463 s!14292)) (t!388463 s!14292)))))

(assert (=> b!7806797 (= e!4621128 (findConcatSeparation!3806 lt!2675387 r2!6217 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)) (t!388463 (t!388463 s!14292)) (t!388463 s!14292)))))

(declare-fun b!7806798 () Bool)

(assert (=> b!7806798 (= e!4621128 None!17775)))

(assert (= (and d!2348104 res!3109176) b!7806793))

(assert (= (and d!2348104 c!1437623) b!7806795))

(assert (= (and d!2348104 (not c!1437623)) b!7806790))

(assert (= (and b!7806790 c!1437622) b!7806798))

(assert (= (and b!7806790 (not c!1437622)) b!7806797))

(assert (= (and d!2348104 res!3109179) b!7806796))

(assert (= (and b!7806796 res!3109177) b!7806794))

(assert (= (and b!7806794 res!3109178) b!7806792))

(assert (= (and d!2348104 (not res!3109180)) b!7806791))

(declare-fun m!8239864 () Bool)

(assert (=> d!2348104 m!8239864))

(declare-fun m!8239866 () Bool)

(assert (=> d!2348104 m!8239866))

(declare-fun m!8239868 () Bool)

(assert (=> d!2348104 m!8239868))

(assert (=> b!7806791 m!8239864))

(declare-fun m!8239870 () Bool)

(assert (=> b!7806796 m!8239870))

(declare-fun m!8239872 () Bool)

(assert (=> b!7806796 m!8239872))

(assert (=> b!7806794 m!8239870))

(declare-fun m!8239874 () Bool)

(assert (=> b!7806794 m!8239874))

(assert (=> b!7806792 m!8239870))

(declare-fun m!8239876 () Bool)

(assert (=> b!7806792 m!8239876))

(declare-fun m!8239878 () Bool)

(assert (=> b!7806797 m!8239878))

(assert (=> b!7806797 m!8239878))

(declare-fun m!8239880 () Bool)

(assert (=> b!7806797 m!8239880))

(declare-fun m!8239882 () Bool)

(assert (=> b!7806797 m!8239882))

(assert (=> b!7806797 m!8239878))

(declare-fun m!8239884 () Bool)

(assert (=> b!7806797 m!8239884))

(declare-fun m!8239886 () Bool)

(assert (=> b!7806793 m!8239886))

(assert (=> b!7806255 d!2348104))

(declare-fun d!2348106 () Bool)

(declare-fun isEmpty!42259 (Option!17776) Bool)

(assert (=> d!2348106 (= (isDefined!14386 lt!2675392) (not (isEmpty!42259 lt!2675392)))))

(declare-fun bs!1966556 () Bool)

(assert (= bs!1966556 d!2348106))

(declare-fun m!8239888 () Bool)

(assert (=> bs!1966556 m!8239888))

(assert (=> b!7806255 d!2348106))

(declare-fun d!2348108 () Bool)

(assert (=> d!2348108 (isDefined!14386 (findConcatSeparation!3806 lt!2675387 r2!6217 Nil!73604 (t!388463 s!14292) (t!388463 s!14292)))))

(declare-fun lt!2675471 () Unit!168616)

(declare-fun choose!59573 (Regex!20889 Regex!20889 List!73728) Unit!168616)

(assert (=> d!2348108 (= lt!2675471 (choose!59573 lt!2675387 r2!6217 (t!388463 s!14292)))))

(assert (=> d!2348108 (validRegex!11303 lt!2675387)))

(assert (=> d!2348108 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!388 lt!2675387 r2!6217 (t!388463 s!14292)) lt!2675471)))

(declare-fun bs!1966557 () Bool)

(assert (= bs!1966557 d!2348108))

(assert (=> bs!1966557 m!8239560))

(assert (=> bs!1966557 m!8239560))

(declare-fun m!8239890 () Bool)

(assert (=> bs!1966557 m!8239890))

(declare-fun m!8239892 () Bool)

(assert (=> bs!1966557 m!8239892))

(assert (=> bs!1966557 m!8239868))

(assert (=> b!7806255 d!2348108))

(declare-fun b!7806799 () Bool)

(declare-fun e!4621136 () Bool)

(declare-fun e!4621137 () Bool)

(assert (=> b!7806799 (= e!4621136 e!4621137)))

(declare-fun res!3109181 () Bool)

(assert (=> b!7806799 (=> (not res!3109181) (not e!4621137))))

(declare-fun lt!2675472 () Bool)

(assert (=> b!7806799 (= res!3109181 (not lt!2675472))))

(declare-fun b!7806800 () Bool)

(declare-fun res!3109182 () Bool)

(assert (=> b!7806800 (=> res!3109182 e!4621136)))

(assert (=> b!7806800 (= res!3109182 (not ((_ is ElementMatch!20889) r1!6279)))))

(declare-fun e!4621132 () Bool)

(assert (=> b!7806800 (= e!4621132 e!4621136)))

(declare-fun b!7806802 () Bool)

(declare-fun e!4621135 () Bool)

(assert (=> b!7806802 (= e!4621135 (= (head!15964 lt!2675390) (c!1437502 r1!6279)))))

(declare-fun b!7806803 () Bool)

(declare-fun e!4621133 () Bool)

(declare-fun call!724100 () Bool)

(assert (=> b!7806803 (= e!4621133 (= lt!2675472 call!724100))))

(declare-fun bm!724095 () Bool)

(assert (=> bm!724095 (= call!724100 (isEmpty!42257 lt!2675390))))

(declare-fun b!7806804 () Bool)

(declare-fun res!3109187 () Bool)

(assert (=> b!7806804 (=> (not res!3109187) (not e!4621135))))

(assert (=> b!7806804 (= res!3109187 (not call!724100))))

(declare-fun b!7806805 () Bool)

(assert (=> b!7806805 (= e!4621133 e!4621132)))

(declare-fun c!1437626 () Bool)

(assert (=> b!7806805 (= c!1437626 ((_ is EmptyLang!20889) r1!6279))))

(declare-fun b!7806806 () Bool)

(declare-fun res!3109184 () Bool)

(assert (=> b!7806806 (=> res!3109184 e!4621136)))

(assert (=> b!7806806 (= res!3109184 e!4621135)))

(declare-fun res!3109185 () Bool)

(assert (=> b!7806806 (=> (not res!3109185) (not e!4621135))))

(assert (=> b!7806806 (= res!3109185 lt!2675472)))

(declare-fun b!7806807 () Bool)

(declare-fun res!3109183 () Bool)

(assert (=> b!7806807 (=> (not res!3109183) (not e!4621135))))

(assert (=> b!7806807 (= res!3109183 (isEmpty!42257 (tail!15505 lt!2675390)))))

(declare-fun b!7806808 () Bool)

(declare-fun res!3109186 () Bool)

(declare-fun e!4621134 () Bool)

(assert (=> b!7806808 (=> res!3109186 e!4621134)))

(assert (=> b!7806808 (= res!3109186 (not (isEmpty!42257 (tail!15505 lt!2675390))))))

(declare-fun b!7806809 () Bool)

(declare-fun e!4621138 () Bool)

(assert (=> b!7806809 (= e!4621138 (nullable!9273 r1!6279))))

(declare-fun b!7806810 () Bool)

(assert (=> b!7806810 (= e!4621134 (not (= (head!15964 lt!2675390) (c!1437502 r1!6279))))))

(declare-fun b!7806801 () Bool)

(assert (=> b!7806801 (= e!4621138 (matchR!10349 (derivativeStep!6226 r1!6279 (head!15964 lt!2675390)) (tail!15505 lt!2675390)))))

(declare-fun d!2348110 () Bool)

(assert (=> d!2348110 e!4621133))

(declare-fun c!1437624 () Bool)

(assert (=> d!2348110 (= c!1437624 ((_ is EmptyExpr!20889) r1!6279))))

(assert (=> d!2348110 (= lt!2675472 e!4621138)))

(declare-fun c!1437625 () Bool)

(assert (=> d!2348110 (= c!1437625 (isEmpty!42257 lt!2675390))))

(assert (=> d!2348110 (validRegex!11303 r1!6279)))

(assert (=> d!2348110 (= (matchR!10349 r1!6279 lt!2675390) lt!2675472)))

(declare-fun b!7806811 () Bool)

(assert (=> b!7806811 (= e!4621137 e!4621134)))

(declare-fun res!3109188 () Bool)

(assert (=> b!7806811 (=> res!3109188 e!4621134)))

(assert (=> b!7806811 (= res!3109188 call!724100)))

(declare-fun b!7806812 () Bool)

(assert (=> b!7806812 (= e!4621132 (not lt!2675472))))

(assert (= (and d!2348110 c!1437625) b!7806809))

(assert (= (and d!2348110 (not c!1437625)) b!7806801))

(assert (= (and d!2348110 c!1437624) b!7806803))

(assert (= (and d!2348110 (not c!1437624)) b!7806805))

(assert (= (and b!7806805 c!1437626) b!7806812))

(assert (= (and b!7806805 (not c!1437626)) b!7806800))

(assert (= (and b!7806800 (not res!3109182)) b!7806806))

(assert (= (and b!7806806 res!3109185) b!7806804))

(assert (= (and b!7806804 res!3109187) b!7806807))

(assert (= (and b!7806807 res!3109183) b!7806802))

(assert (= (and b!7806806 (not res!3109184)) b!7806799))

(assert (= (and b!7806799 res!3109181) b!7806811))

(assert (= (and b!7806811 (not res!3109188)) b!7806808))

(assert (= (and b!7806808 (not res!3109186)) b!7806810))

(assert (= (or b!7806803 b!7806804 b!7806811) bm!724095))

(assert (=> b!7806801 m!8239802))

(assert (=> b!7806801 m!8239802))

(declare-fun m!8239894 () Bool)

(assert (=> b!7806801 m!8239894))

(assert (=> b!7806801 m!8239808))

(assert (=> b!7806801 m!8239894))

(assert (=> b!7806801 m!8239808))

(declare-fun m!8239896 () Bool)

(assert (=> b!7806801 m!8239896))

(declare-fun m!8239898 () Bool)

(assert (=> d!2348110 m!8239898))

(assert (=> d!2348110 m!8239542))

(assert (=> b!7806810 m!8239802))

(assert (=> b!7806807 m!8239808))

(assert (=> b!7806807 m!8239808))

(declare-fun m!8239900 () Bool)

(assert (=> b!7806807 m!8239900))

(assert (=> b!7806808 m!8239808))

(assert (=> b!7806808 m!8239808))

(assert (=> b!7806808 m!8239900))

(assert (=> b!7806802 m!8239802))

(assert (=> bm!724095 m!8239898))

(assert (=> b!7806809 m!8239556))

(assert (=> b!7806275 d!2348110))

(declare-fun b!7806826 () Bool)

(declare-fun e!4621141 () Bool)

(declare-fun tp!2299822 () Bool)

(declare-fun tp!2299825 () Bool)

(assert (=> b!7806826 (= e!4621141 (and tp!2299822 tp!2299825))))

(assert (=> b!7806268 (= tp!2299747 e!4621141)))

(declare-fun b!7806825 () Bool)

(declare-fun tp!2299821 () Bool)

(assert (=> b!7806825 (= e!4621141 tp!2299821)))

(declare-fun b!7806823 () Bool)

(assert (=> b!7806823 (= e!4621141 tp_is_empty!52133)))

(declare-fun b!7806824 () Bool)

(declare-fun tp!2299823 () Bool)

(declare-fun tp!2299824 () Bool)

(assert (=> b!7806824 (= e!4621141 (and tp!2299823 tp!2299824))))

(assert (= (and b!7806268 ((_ is ElementMatch!20889) (regOne!42290 r1!6279))) b!7806823))

(assert (= (and b!7806268 ((_ is Concat!29734) (regOne!42290 r1!6279))) b!7806824))

(assert (= (and b!7806268 ((_ is Star!20889) (regOne!42290 r1!6279))) b!7806825))

(assert (= (and b!7806268 ((_ is Union!20889) (regOne!42290 r1!6279))) b!7806826))

(declare-fun b!7806830 () Bool)

(declare-fun e!4621142 () Bool)

(declare-fun tp!2299827 () Bool)

(declare-fun tp!2299830 () Bool)

(assert (=> b!7806830 (= e!4621142 (and tp!2299827 tp!2299830))))

(assert (=> b!7806268 (= tp!2299739 e!4621142)))

(declare-fun b!7806829 () Bool)

(declare-fun tp!2299826 () Bool)

(assert (=> b!7806829 (= e!4621142 tp!2299826)))

(declare-fun b!7806827 () Bool)

(assert (=> b!7806827 (= e!4621142 tp_is_empty!52133)))

(declare-fun b!7806828 () Bool)

(declare-fun tp!2299828 () Bool)

(declare-fun tp!2299829 () Bool)

(assert (=> b!7806828 (= e!4621142 (and tp!2299828 tp!2299829))))

(assert (= (and b!7806268 ((_ is ElementMatch!20889) (regTwo!42290 r1!6279))) b!7806827))

(assert (= (and b!7806268 ((_ is Concat!29734) (regTwo!42290 r1!6279))) b!7806828))

(assert (= (and b!7806268 ((_ is Star!20889) (regTwo!42290 r1!6279))) b!7806829))

(assert (= (and b!7806268 ((_ is Union!20889) (regTwo!42290 r1!6279))) b!7806830))

(declare-fun b!7806835 () Bool)

(declare-fun e!4621145 () Bool)

(declare-fun tp!2299833 () Bool)

(assert (=> b!7806835 (= e!4621145 (and tp_is_empty!52133 tp!2299833))))

(assert (=> b!7806262 (= tp!2299737 e!4621145)))

(assert (= (and b!7806262 ((_ is Cons!73604) (t!388463 s!14292))) b!7806835))

(declare-fun b!7806839 () Bool)

(declare-fun e!4621146 () Bool)

(declare-fun tp!2299835 () Bool)

(declare-fun tp!2299838 () Bool)

(assert (=> b!7806839 (= e!4621146 (and tp!2299835 tp!2299838))))

(assert (=> b!7806266 (= tp!2299744 e!4621146)))

(declare-fun b!7806838 () Bool)

(declare-fun tp!2299834 () Bool)

(assert (=> b!7806838 (= e!4621146 tp!2299834)))

(declare-fun b!7806836 () Bool)

(assert (=> b!7806836 (= e!4621146 tp_is_empty!52133)))

(declare-fun b!7806837 () Bool)

(declare-fun tp!2299836 () Bool)

(declare-fun tp!2299837 () Bool)

(assert (=> b!7806837 (= e!4621146 (and tp!2299836 tp!2299837))))

(assert (= (and b!7806266 ((_ is ElementMatch!20889) (regOne!42291 r1!6279))) b!7806836))

(assert (= (and b!7806266 ((_ is Concat!29734) (regOne!42291 r1!6279))) b!7806837))

(assert (= (and b!7806266 ((_ is Star!20889) (regOne!42291 r1!6279))) b!7806838))

(assert (= (and b!7806266 ((_ is Union!20889) (regOne!42291 r1!6279))) b!7806839))

(declare-fun b!7806843 () Bool)

(declare-fun e!4621147 () Bool)

(declare-fun tp!2299840 () Bool)

(declare-fun tp!2299843 () Bool)

(assert (=> b!7806843 (= e!4621147 (and tp!2299840 tp!2299843))))

(assert (=> b!7806266 (= tp!2299745 e!4621147)))

(declare-fun b!7806842 () Bool)

(declare-fun tp!2299839 () Bool)

(assert (=> b!7806842 (= e!4621147 tp!2299839)))

(declare-fun b!7806840 () Bool)

(assert (=> b!7806840 (= e!4621147 tp_is_empty!52133)))

(declare-fun b!7806841 () Bool)

(declare-fun tp!2299841 () Bool)

(declare-fun tp!2299842 () Bool)

(assert (=> b!7806841 (= e!4621147 (and tp!2299841 tp!2299842))))

(assert (= (and b!7806266 ((_ is ElementMatch!20889) (regTwo!42291 r1!6279))) b!7806840))

(assert (= (and b!7806266 ((_ is Concat!29734) (regTwo!42291 r1!6279))) b!7806841))

(assert (= (and b!7806266 ((_ is Star!20889) (regTwo!42291 r1!6279))) b!7806842))

(assert (= (and b!7806266 ((_ is Union!20889) (regTwo!42291 r1!6279))) b!7806843))

(declare-fun b!7806847 () Bool)

(declare-fun e!4621148 () Bool)

(declare-fun tp!2299845 () Bool)

(declare-fun tp!2299848 () Bool)

(assert (=> b!7806847 (= e!4621148 (and tp!2299845 tp!2299848))))

(assert (=> b!7806261 (= tp!2299743 e!4621148)))

(declare-fun b!7806846 () Bool)

(declare-fun tp!2299844 () Bool)

(assert (=> b!7806846 (= e!4621148 tp!2299844)))

(declare-fun b!7806844 () Bool)

(assert (=> b!7806844 (= e!4621148 tp_is_empty!52133)))

(declare-fun b!7806845 () Bool)

(declare-fun tp!2299846 () Bool)

(declare-fun tp!2299847 () Bool)

(assert (=> b!7806845 (= e!4621148 (and tp!2299846 tp!2299847))))

(assert (= (and b!7806261 ((_ is ElementMatch!20889) (reg!21218 r2!6217))) b!7806844))

(assert (= (and b!7806261 ((_ is Concat!29734) (reg!21218 r2!6217))) b!7806845))

(assert (= (and b!7806261 ((_ is Star!20889) (reg!21218 r2!6217))) b!7806846))

(assert (= (and b!7806261 ((_ is Union!20889) (reg!21218 r2!6217))) b!7806847))

(declare-fun b!7806851 () Bool)

(declare-fun e!4621149 () Bool)

(declare-fun tp!2299850 () Bool)

(declare-fun tp!2299853 () Bool)

(assert (=> b!7806851 (= e!4621149 (and tp!2299850 tp!2299853))))

(assert (=> b!7806264 (= tp!2299740 e!4621149)))

(declare-fun b!7806850 () Bool)

(declare-fun tp!2299849 () Bool)

(assert (=> b!7806850 (= e!4621149 tp!2299849)))

(declare-fun b!7806848 () Bool)

(assert (=> b!7806848 (= e!4621149 tp_is_empty!52133)))

(declare-fun b!7806849 () Bool)

(declare-fun tp!2299851 () Bool)

(declare-fun tp!2299852 () Bool)

(assert (=> b!7806849 (= e!4621149 (and tp!2299851 tp!2299852))))

(assert (= (and b!7806264 ((_ is ElementMatch!20889) (regOne!42290 r2!6217))) b!7806848))

(assert (= (and b!7806264 ((_ is Concat!29734) (regOne!42290 r2!6217))) b!7806849))

(assert (= (and b!7806264 ((_ is Star!20889) (regOne!42290 r2!6217))) b!7806850))

(assert (= (and b!7806264 ((_ is Union!20889) (regOne!42290 r2!6217))) b!7806851))

(declare-fun b!7806855 () Bool)

(declare-fun e!4621150 () Bool)

(declare-fun tp!2299855 () Bool)

(declare-fun tp!2299858 () Bool)

(assert (=> b!7806855 (= e!4621150 (and tp!2299855 tp!2299858))))

(assert (=> b!7806264 (= tp!2299741 e!4621150)))

(declare-fun b!7806854 () Bool)

(declare-fun tp!2299854 () Bool)

(assert (=> b!7806854 (= e!4621150 tp!2299854)))

(declare-fun b!7806852 () Bool)

(assert (=> b!7806852 (= e!4621150 tp_is_empty!52133)))

(declare-fun b!7806853 () Bool)

(declare-fun tp!2299856 () Bool)

(declare-fun tp!2299857 () Bool)

(assert (=> b!7806853 (= e!4621150 (and tp!2299856 tp!2299857))))

(assert (= (and b!7806264 ((_ is ElementMatch!20889) (regTwo!42290 r2!6217))) b!7806852))

(assert (= (and b!7806264 ((_ is Concat!29734) (regTwo!42290 r2!6217))) b!7806853))

(assert (= (and b!7806264 ((_ is Star!20889) (regTwo!42290 r2!6217))) b!7806854))

(assert (= (and b!7806264 ((_ is Union!20889) (regTwo!42290 r2!6217))) b!7806855))

(declare-fun b!7806859 () Bool)

(declare-fun e!4621151 () Bool)

(declare-fun tp!2299860 () Bool)

(declare-fun tp!2299863 () Bool)

(assert (=> b!7806859 (= e!4621151 (and tp!2299860 tp!2299863))))

(assert (=> b!7806259 (= tp!2299742 e!4621151)))

(declare-fun b!7806858 () Bool)

(declare-fun tp!2299859 () Bool)

(assert (=> b!7806858 (= e!4621151 tp!2299859)))

(declare-fun b!7806856 () Bool)

(assert (=> b!7806856 (= e!4621151 tp_is_empty!52133)))

(declare-fun b!7806857 () Bool)

(declare-fun tp!2299861 () Bool)

(declare-fun tp!2299862 () Bool)

(assert (=> b!7806857 (= e!4621151 (and tp!2299861 tp!2299862))))

(assert (= (and b!7806259 ((_ is ElementMatch!20889) (regOne!42291 r2!6217))) b!7806856))

(assert (= (and b!7806259 ((_ is Concat!29734) (regOne!42291 r2!6217))) b!7806857))

(assert (= (and b!7806259 ((_ is Star!20889) (regOne!42291 r2!6217))) b!7806858))

(assert (= (and b!7806259 ((_ is Union!20889) (regOne!42291 r2!6217))) b!7806859))

(declare-fun b!7806863 () Bool)

(declare-fun e!4621152 () Bool)

(declare-fun tp!2299865 () Bool)

(declare-fun tp!2299868 () Bool)

(assert (=> b!7806863 (= e!4621152 (and tp!2299865 tp!2299868))))

(assert (=> b!7806259 (= tp!2299746 e!4621152)))

(declare-fun b!7806862 () Bool)

(declare-fun tp!2299864 () Bool)

(assert (=> b!7806862 (= e!4621152 tp!2299864)))

(declare-fun b!7806860 () Bool)

(assert (=> b!7806860 (= e!4621152 tp_is_empty!52133)))

(declare-fun b!7806861 () Bool)

(declare-fun tp!2299866 () Bool)

(declare-fun tp!2299867 () Bool)

(assert (=> b!7806861 (= e!4621152 (and tp!2299866 tp!2299867))))

(assert (= (and b!7806259 ((_ is ElementMatch!20889) (regTwo!42291 r2!6217))) b!7806860))

(assert (= (and b!7806259 ((_ is Concat!29734) (regTwo!42291 r2!6217))) b!7806861))

(assert (= (and b!7806259 ((_ is Star!20889) (regTwo!42291 r2!6217))) b!7806862))

(assert (= (and b!7806259 ((_ is Union!20889) (regTwo!42291 r2!6217))) b!7806863))

(declare-fun b!7806867 () Bool)

(declare-fun e!4621153 () Bool)

(declare-fun tp!2299870 () Bool)

(declare-fun tp!2299873 () Bool)

(assert (=> b!7806867 (= e!4621153 (and tp!2299870 tp!2299873))))

(assert (=> b!7806274 (= tp!2299738 e!4621153)))

(declare-fun b!7806866 () Bool)

(declare-fun tp!2299869 () Bool)

(assert (=> b!7806866 (= e!4621153 tp!2299869)))

(declare-fun b!7806864 () Bool)

(assert (=> b!7806864 (= e!4621153 tp_is_empty!52133)))

(declare-fun b!7806865 () Bool)

(declare-fun tp!2299871 () Bool)

(declare-fun tp!2299872 () Bool)

(assert (=> b!7806865 (= e!4621153 (and tp!2299871 tp!2299872))))

(assert (= (and b!7806274 ((_ is ElementMatch!20889) (reg!21218 r1!6279))) b!7806864))

(assert (= (and b!7806274 ((_ is Concat!29734) (reg!21218 r1!6279))) b!7806865))

(assert (= (and b!7806274 ((_ is Star!20889) (reg!21218 r1!6279))) b!7806866))

(assert (= (and b!7806274 ((_ is Union!20889) (reg!21218 r1!6279))) b!7806867))

(check-sat (not b!7806368) (not b!7806553) (not b!7806849) (not bm!724089) (not b!7806855) (not b!7806862) (not b!7806701) (not b!7806859) (not d!2348042) (not b!7806360) (not b!7806808) (not d!2348104) (not b!7806810) (not bm!724063) (not bm!724087) (not b!7806847) (not b!7806729) (not d!2348096) (not b!7806796) (not d!2348100) (not bm!724095) (not d!2348086) (not bm!724091) (not b!7806801) (not b!7806750) (not d!2348106) (not d!2348060) (not b!7806730) (not b!7806850) (not b!7806794) (not b!7806366) (not b!7806367) (not b!7806717) (not b!7806716) (not b!7806826) (not b!7806857) (not b!7806842) (not b!7806769) (not b!7806809) (not bm!724057) (not d!2348062) (not b!7806807) (not b!7806490) (not b!7806830) (not bm!724090) (not b!7806562) (not b!7806747) tp_is_empty!52133 (not b!7806865) (not b!7806499) (not b!7806749) (not b!7806835) (not b!7806867) (not b!7806498) (not b!7806361) (not bm!724055) (not b!7806485) (not b!7806797) (not b!7806793) (not b!7806791) (not b!7806851) (not b!7806718) (not b!7806748) (not b!7806858) (not bm!724092) (not b!7806552) (not bm!724040) (not b!7806497) (not b!7806722) (not b!7806824) (not b!7806861) (not d!2348072) (not b!7806854) (not d!2348090) (not d!2348092) (not bm!724058) (not b!7806721) (not d!2348094) (not b!7806757) (not bm!724094) (not b!7806496) (not d!2348032) (not b!7806839) (not b!7806837) (not d!2348088) (not b!7806802) (not b!7806843) (not b!7806866) (not b!7806825) (not b!7806792) (not b!7806369) (not d!2348110) (not b!7806829) (not b!7806846) (not bm!724061) (not b!7806841) (not b!7806741) (not b!7806845) (not b!7806758) (not b!7806863) (not d!2348108) (not b!7806491) (not b!7806853) (not b!7806737) (not b!7806742) (not b!7806770) (not b!7806838) (not b!7806728) (not b!7806828) (not b!7806762) (not b!7806727))
(check-sat)
(get-model)

(declare-fun b!7806868 () Bool)

(declare-fun e!4621154 () Regex!20889)

(assert (=> b!7806868 (= e!4621154 (ite (= (h!80052 s!14292) (c!1437502 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))) EmptyExpr!20889 EmptyLang!20889))))

(declare-fun call!724102 () Regex!20889)

(declare-fun b!7806869 () Bool)

(declare-fun e!4621158 () Regex!20889)

(assert (=> b!7806869 (= e!4621158 (Union!20889 (Concat!29734 call!724102 (regTwo!42290 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))) EmptyLang!20889))))

(declare-fun b!7806870 () Bool)

(declare-fun e!4621155 () Regex!20889)

(declare-fun e!4621157 () Regex!20889)

(assert (=> b!7806870 (= e!4621155 e!4621157)))

(declare-fun c!1437627 () Bool)

(assert (=> b!7806870 (= c!1437627 ((_ is Star!20889) (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279))))))

(declare-fun b!7806871 () Bool)

(declare-fun e!4621156 () Regex!20889)

(assert (=> b!7806871 (= e!4621156 EmptyLang!20889)))

(declare-fun call!724103 () Regex!20889)

(declare-fun b!7806872 () Bool)

(assert (=> b!7806872 (= e!4621157 (Concat!29734 call!724103 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279))))))

(declare-fun b!7806873 () Bool)

(assert (=> b!7806873 (= e!4621156 e!4621154)))

(declare-fun c!1437630 () Bool)

(assert (=> b!7806873 (= c!1437630 ((_ is ElementMatch!20889) (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279))))))

(declare-fun bm!724096 () Bool)

(assert (=> bm!724096 (= call!724102 call!724103)))

(declare-fun b!7806874 () Bool)

(declare-fun call!724104 () Regex!20889)

(assert (=> b!7806874 (= e!4621158 (Union!20889 (Concat!29734 call!724104 (regTwo!42290 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))) call!724102))))

(declare-fun b!7806875 () Bool)

(declare-fun c!1437629 () Bool)

(assert (=> b!7806875 (= c!1437629 (nullable!9273 (regOne!42290 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))))))

(assert (=> b!7806875 (= e!4621157 e!4621158)))

(declare-fun d!2348112 () Bool)

(declare-fun lt!2675473 () Regex!20889)

(assert (=> d!2348112 (validRegex!11303 lt!2675473)))

(assert (=> d!2348112 (= lt!2675473 e!4621156)))

(declare-fun c!1437628 () Bool)

(assert (=> d!2348112 (= c!1437628 (or ((_ is EmptyExpr!20889) (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279))) ((_ is EmptyLang!20889) (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))))))

(assert (=> d!2348112 (validRegex!11303 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))))

(assert (=> d!2348112 (= (derivativeStep!6226 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279)) (h!80052 s!14292)) lt!2675473)))

(declare-fun bm!724097 () Bool)

(declare-fun c!1437631 () Bool)

(assert (=> bm!724097 (= call!724104 (derivativeStep!6226 (ite c!1437631 (regOne!42291 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279))) (regOne!42290 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))) (h!80052 s!14292)))))

(declare-fun b!7806876 () Bool)

(assert (=> b!7806876 (= c!1437631 ((_ is Union!20889) (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279))))))

(assert (=> b!7806876 (= e!4621154 e!4621155)))

(declare-fun bm!724098 () Bool)

(declare-fun call!724101 () Regex!20889)

(assert (=> bm!724098 (= call!724103 call!724101)))

(declare-fun bm!724099 () Bool)

(assert (=> bm!724099 (= call!724101 (derivativeStep!6226 (ite c!1437631 (regTwo!42291 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279))) (ite c!1437627 (reg!21218 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279))) (ite c!1437629 (regTwo!42290 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279))) (regOne!42290 (ite c!1437583 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))))) (h!80052 s!14292)))))

(declare-fun b!7806877 () Bool)

(assert (=> b!7806877 (= e!4621155 (Union!20889 call!724104 call!724101))))

(assert (= (and d!2348112 c!1437628) b!7806871))

(assert (= (and d!2348112 (not c!1437628)) b!7806873))

(assert (= (and b!7806873 c!1437630) b!7806868))

(assert (= (and b!7806873 (not c!1437630)) b!7806876))

(assert (= (and b!7806876 c!1437631) b!7806877))

(assert (= (and b!7806876 (not c!1437631)) b!7806870))

(assert (= (and b!7806870 c!1437627) b!7806872))

(assert (= (and b!7806870 (not c!1437627)) b!7806875))

(assert (= (and b!7806875 c!1437629) b!7806874))

(assert (= (and b!7806875 (not c!1437629)) b!7806869))

(assert (= (or b!7806874 b!7806869) bm!724096))

(assert (= (or b!7806872 bm!724096) bm!724098))

(assert (= (or b!7806877 bm!724098) bm!724099))

(assert (= (or b!7806877 b!7806874) bm!724097))

(declare-fun m!8239902 () Bool)

(assert (=> b!7806875 m!8239902))

(declare-fun m!8239904 () Bool)

(assert (=> d!2348112 m!8239904))

(declare-fun m!8239906 () Bool)

(assert (=> d!2348112 m!8239906))

(declare-fun m!8239908 () Bool)

(assert (=> bm!724097 m!8239908))

(declare-fun m!8239910 () Bool)

(assert (=> bm!724099 m!8239910))

(assert (=> bm!724061 d!2348112))

(declare-fun d!2348114 () Bool)

(declare-fun c!1437634 () Bool)

(assert (=> d!2348114 (= c!1437634 ((_ is Nil!73604) lt!2675441))))

(declare-fun e!4621161 () (InoxSet C!42104))

(assert (=> d!2348114 (= (content!15628 lt!2675441) e!4621161)))

(declare-fun b!7806882 () Bool)

(assert (=> b!7806882 (= e!4621161 ((as const (Array C!42104 Bool)) false))))

(declare-fun b!7806883 () Bool)

(assert (=> b!7806883 (= e!4621161 ((_ map or) (store ((as const (Array C!42104 Bool)) false) (h!80052 lt!2675441) true) (content!15628 (t!388463 lt!2675441))))))

(assert (= (and d!2348114 c!1437634) b!7806882))

(assert (= (and d!2348114 (not c!1437634)) b!7806883))

(declare-fun m!8239912 () Bool)

(assert (=> b!7806883 m!8239912))

(declare-fun m!8239914 () Bool)

(assert (=> b!7806883 m!8239914))

(assert (=> d!2348062 d!2348114))

(declare-fun d!2348116 () Bool)

(assert (=> d!2348116 (= (content!15628 Nil!73604) ((as const (Array C!42104 Bool)) false))))

(assert (=> d!2348062 d!2348116))

(declare-fun d!2348118 () Bool)

(declare-fun c!1437635 () Bool)

(assert (=> d!2348118 (= c!1437635 ((_ is Nil!73604) s!14292))))

(declare-fun e!4621162 () (InoxSet C!42104))

(assert (=> d!2348118 (= (content!15628 s!14292) e!4621162)))

(declare-fun b!7806884 () Bool)

(assert (=> b!7806884 (= e!4621162 ((as const (Array C!42104 Bool)) false))))

(declare-fun b!7806885 () Bool)

(assert (=> b!7806885 (= e!4621162 ((_ map or) (store ((as const (Array C!42104 Bool)) false) (h!80052 s!14292) true) (content!15628 (t!388463 s!14292))))))

(assert (= (and d!2348118 c!1437635) b!7806884))

(assert (= (and d!2348118 (not c!1437635)) b!7806885))

(declare-fun m!8239916 () Bool)

(assert (=> b!7806885 m!8239916))

(declare-fun m!8239918 () Bool)

(assert (=> b!7806885 m!8239918))

(assert (=> d!2348062 d!2348118))

(declare-fun b!7806886 () Bool)

(declare-fun e!4621167 () Bool)

(declare-fun e!4621168 () Bool)

(assert (=> b!7806886 (= e!4621167 e!4621168)))

(declare-fun res!3109189 () Bool)

(assert (=> b!7806886 (=> (not res!3109189) (not e!4621168))))

(declare-fun lt!2675474 () Bool)

(assert (=> b!7806886 (= res!3109189 (not lt!2675474))))

(declare-fun b!7806887 () Bool)

(declare-fun res!3109190 () Bool)

(assert (=> b!7806887 (=> res!3109190 e!4621167)))

(assert (=> b!7806887 (= res!3109190 (not ((_ is ElementMatch!20889) r2!6217)))))

(declare-fun e!4621163 () Bool)

(assert (=> b!7806887 (= e!4621163 e!4621167)))

(declare-fun b!7806889 () Bool)

(declare-fun e!4621166 () Bool)

(assert (=> b!7806889 (= e!4621166 (= (head!15964 (t!388463 s!14292)) (c!1437502 r2!6217)))))

(declare-fun b!7806890 () Bool)

(declare-fun e!4621164 () Bool)

(declare-fun call!724105 () Bool)

(assert (=> b!7806890 (= e!4621164 (= lt!2675474 call!724105))))

(declare-fun bm!724100 () Bool)

(assert (=> bm!724100 (= call!724105 (isEmpty!42257 (t!388463 s!14292)))))

(declare-fun b!7806891 () Bool)

(declare-fun res!3109195 () Bool)

(assert (=> b!7806891 (=> (not res!3109195) (not e!4621166))))

(assert (=> b!7806891 (= res!3109195 (not call!724105))))

(declare-fun b!7806892 () Bool)

(assert (=> b!7806892 (= e!4621164 e!4621163)))

(declare-fun c!1437638 () Bool)

(assert (=> b!7806892 (= c!1437638 ((_ is EmptyLang!20889) r2!6217))))

(declare-fun b!7806893 () Bool)

(declare-fun res!3109192 () Bool)

(assert (=> b!7806893 (=> res!3109192 e!4621167)))

(assert (=> b!7806893 (= res!3109192 e!4621166)))

(declare-fun res!3109193 () Bool)

(assert (=> b!7806893 (=> (not res!3109193) (not e!4621166))))

(assert (=> b!7806893 (= res!3109193 lt!2675474)))

(declare-fun b!7806894 () Bool)

(declare-fun res!3109191 () Bool)

(assert (=> b!7806894 (=> (not res!3109191) (not e!4621166))))

(assert (=> b!7806894 (= res!3109191 (isEmpty!42257 (tail!15505 (t!388463 s!14292))))))

(declare-fun b!7806895 () Bool)

(declare-fun res!3109194 () Bool)

(declare-fun e!4621165 () Bool)

(assert (=> b!7806895 (=> res!3109194 e!4621165)))

(assert (=> b!7806895 (= res!3109194 (not (isEmpty!42257 (tail!15505 (t!388463 s!14292)))))))

(declare-fun b!7806896 () Bool)

(declare-fun e!4621169 () Bool)

(assert (=> b!7806896 (= e!4621169 (nullable!9273 r2!6217))))

(declare-fun b!7806897 () Bool)

(assert (=> b!7806897 (= e!4621165 (not (= (head!15964 (t!388463 s!14292)) (c!1437502 r2!6217))))))

(declare-fun b!7806888 () Bool)

(assert (=> b!7806888 (= e!4621169 (matchR!10349 (derivativeStep!6226 r2!6217 (head!15964 (t!388463 s!14292))) (tail!15505 (t!388463 s!14292))))))

(declare-fun d!2348120 () Bool)

(assert (=> d!2348120 e!4621164))

(declare-fun c!1437636 () Bool)

(assert (=> d!2348120 (= c!1437636 ((_ is EmptyExpr!20889) r2!6217))))

(assert (=> d!2348120 (= lt!2675474 e!4621169)))

(declare-fun c!1437637 () Bool)

(assert (=> d!2348120 (= c!1437637 (isEmpty!42257 (t!388463 s!14292)))))

(assert (=> d!2348120 (validRegex!11303 r2!6217)))

(assert (=> d!2348120 (= (matchR!10349 r2!6217 (t!388463 s!14292)) lt!2675474)))

(declare-fun b!7806898 () Bool)

(assert (=> b!7806898 (= e!4621168 e!4621165)))

(declare-fun res!3109196 () Bool)

(assert (=> b!7806898 (=> res!3109196 e!4621165)))

(assert (=> b!7806898 (= res!3109196 call!724105)))

(declare-fun b!7806899 () Bool)

(assert (=> b!7806899 (= e!4621163 (not lt!2675474))))

(assert (= (and d!2348120 c!1437637) b!7806896))

(assert (= (and d!2348120 (not c!1437637)) b!7806888))

(assert (= (and d!2348120 c!1437636) b!7806890))

(assert (= (and d!2348120 (not c!1437636)) b!7806892))

(assert (= (and b!7806892 c!1437638) b!7806899))

(assert (= (and b!7806892 (not c!1437638)) b!7806887))

(assert (= (and b!7806887 (not res!3109190)) b!7806893))

(assert (= (and b!7806893 res!3109193) b!7806891))

(assert (= (and b!7806891 res!3109195) b!7806894))

(assert (= (and b!7806894 res!3109191) b!7806889))

(assert (= (and b!7806893 (not res!3109192)) b!7806886))

(assert (= (and b!7806886 res!3109189) b!7806898))

(assert (= (and b!7806898 (not res!3109196)) b!7806895))

(assert (= (and b!7806895 (not res!3109194)) b!7806897))

(assert (= (or b!7806890 b!7806891 b!7806898) bm!724100))

(assert (=> b!7806888 m!8239608))

(assert (=> b!7806888 m!8239608))

(declare-fun m!8239920 () Bool)

(assert (=> b!7806888 m!8239920))

(assert (=> b!7806888 m!8239612))

(assert (=> b!7806888 m!8239920))

(assert (=> b!7806888 m!8239612))

(declare-fun m!8239922 () Bool)

(assert (=> b!7806888 m!8239922))

(assert (=> d!2348120 m!8239616))

(assert (=> d!2348120 m!8239552))

(assert (=> b!7806897 m!8239608))

(assert (=> b!7806894 m!8239612))

(assert (=> b!7806894 m!8239612))

(assert (=> b!7806894 m!8239620))

(assert (=> b!7806895 m!8239612))

(assert (=> b!7806895 m!8239612))

(assert (=> b!7806895 m!8239620))

(assert (=> b!7806889 m!8239608))

(assert (=> bm!724100 m!8239616))

(declare-fun m!8239924 () Bool)

(assert (=> b!7806896 m!8239924))

(assert (=> b!7806793 d!2348120))

(assert (=> b!7806809 d!2348096))

(declare-fun b!7806900 () Bool)

(declare-fun e!4621174 () Bool)

(declare-fun e!4621175 () Bool)

(assert (=> b!7806900 (= e!4621174 e!4621175)))

(declare-fun res!3109197 () Bool)

(assert (=> b!7806900 (=> (not res!3109197) (not e!4621175))))

(declare-fun lt!2675475 () Bool)

(assert (=> b!7806900 (= res!3109197 (not lt!2675475))))

(declare-fun b!7806901 () Bool)

(declare-fun res!3109198 () Bool)

(assert (=> b!7806901 (=> res!3109198 e!4621174)))

(assert (=> b!7806901 (= res!3109198 (not ((_ is ElementMatch!20889) (derivativeStep!6226 lt!2675389 (head!15964 (t!388463 s!14292))))))))

(declare-fun e!4621170 () Bool)

(assert (=> b!7806901 (= e!4621170 e!4621174)))

(declare-fun b!7806903 () Bool)

(declare-fun e!4621173 () Bool)

(assert (=> b!7806903 (= e!4621173 (= (head!15964 (tail!15505 (t!388463 s!14292))) (c!1437502 (derivativeStep!6226 lt!2675389 (head!15964 (t!388463 s!14292))))))))

(declare-fun b!7806904 () Bool)

(declare-fun e!4621171 () Bool)

(declare-fun call!724106 () Bool)

(assert (=> b!7806904 (= e!4621171 (= lt!2675475 call!724106))))

(declare-fun bm!724101 () Bool)

(assert (=> bm!724101 (= call!724106 (isEmpty!42257 (tail!15505 (t!388463 s!14292))))))

(declare-fun b!7806905 () Bool)

(declare-fun res!3109203 () Bool)

(assert (=> b!7806905 (=> (not res!3109203) (not e!4621173))))

(assert (=> b!7806905 (= res!3109203 (not call!724106))))

(declare-fun b!7806906 () Bool)

(assert (=> b!7806906 (= e!4621171 e!4621170)))

(declare-fun c!1437641 () Bool)

(assert (=> b!7806906 (= c!1437641 ((_ is EmptyLang!20889) (derivativeStep!6226 lt!2675389 (head!15964 (t!388463 s!14292)))))))

(declare-fun b!7806907 () Bool)

(declare-fun res!3109200 () Bool)

(assert (=> b!7806907 (=> res!3109200 e!4621174)))

(assert (=> b!7806907 (= res!3109200 e!4621173)))

(declare-fun res!3109201 () Bool)

(assert (=> b!7806907 (=> (not res!3109201) (not e!4621173))))

(assert (=> b!7806907 (= res!3109201 lt!2675475)))

(declare-fun b!7806908 () Bool)

(declare-fun res!3109199 () Bool)

(assert (=> b!7806908 (=> (not res!3109199) (not e!4621173))))

(assert (=> b!7806908 (= res!3109199 (isEmpty!42257 (tail!15505 (tail!15505 (t!388463 s!14292)))))))

(declare-fun b!7806909 () Bool)

(declare-fun res!3109202 () Bool)

(declare-fun e!4621172 () Bool)

(assert (=> b!7806909 (=> res!3109202 e!4621172)))

(assert (=> b!7806909 (= res!3109202 (not (isEmpty!42257 (tail!15505 (tail!15505 (t!388463 s!14292))))))))

(declare-fun b!7806910 () Bool)

(declare-fun e!4621176 () Bool)

(assert (=> b!7806910 (= e!4621176 (nullable!9273 (derivativeStep!6226 lt!2675389 (head!15964 (t!388463 s!14292)))))))

(declare-fun b!7806911 () Bool)

(assert (=> b!7806911 (= e!4621172 (not (= (head!15964 (tail!15505 (t!388463 s!14292))) (c!1437502 (derivativeStep!6226 lt!2675389 (head!15964 (t!388463 s!14292)))))))))

(declare-fun b!7806902 () Bool)

(assert (=> b!7806902 (= e!4621176 (matchR!10349 (derivativeStep!6226 (derivativeStep!6226 lt!2675389 (head!15964 (t!388463 s!14292))) (head!15964 (tail!15505 (t!388463 s!14292)))) (tail!15505 (tail!15505 (t!388463 s!14292)))))))

(declare-fun d!2348122 () Bool)

(assert (=> d!2348122 e!4621171))

(declare-fun c!1437639 () Bool)

(assert (=> d!2348122 (= c!1437639 ((_ is EmptyExpr!20889) (derivativeStep!6226 lt!2675389 (head!15964 (t!388463 s!14292)))))))

(assert (=> d!2348122 (= lt!2675475 e!4621176)))

(declare-fun c!1437640 () Bool)

(assert (=> d!2348122 (= c!1437640 (isEmpty!42257 (tail!15505 (t!388463 s!14292))))))

(assert (=> d!2348122 (validRegex!11303 (derivativeStep!6226 lt!2675389 (head!15964 (t!388463 s!14292))))))

(assert (=> d!2348122 (= (matchR!10349 (derivativeStep!6226 lt!2675389 (head!15964 (t!388463 s!14292))) (tail!15505 (t!388463 s!14292))) lt!2675475)))

(declare-fun b!7806912 () Bool)

(assert (=> b!7806912 (= e!4621175 e!4621172)))

(declare-fun res!3109204 () Bool)

(assert (=> b!7806912 (=> res!3109204 e!4621172)))

(assert (=> b!7806912 (= res!3109204 call!724106)))

(declare-fun b!7806913 () Bool)

(assert (=> b!7806913 (= e!4621170 (not lt!2675475))))

(assert (= (and d!2348122 c!1437640) b!7806910))

(assert (= (and d!2348122 (not c!1437640)) b!7806902))

(assert (= (and d!2348122 c!1437639) b!7806904))

(assert (= (and d!2348122 (not c!1437639)) b!7806906))

(assert (= (and b!7806906 c!1437641) b!7806913))

(assert (= (and b!7806906 (not c!1437641)) b!7806901))

(assert (= (and b!7806901 (not res!3109198)) b!7806907))

(assert (= (and b!7806907 res!3109201) b!7806905))

(assert (= (and b!7806905 res!3109203) b!7806908))

(assert (= (and b!7806908 res!3109199) b!7806903))

(assert (= (and b!7806907 (not res!3109200)) b!7806900))

(assert (= (and b!7806900 res!3109197) b!7806912))

(assert (= (and b!7806912 (not res!3109204)) b!7806909))

(assert (= (and b!7806909 (not res!3109202)) b!7806911))

(assert (= (or b!7806904 b!7806905 b!7806912) bm!724101))

(assert (=> b!7806902 m!8239612))

(declare-fun m!8239926 () Bool)

(assert (=> b!7806902 m!8239926))

(assert (=> b!7806902 m!8239610))

(assert (=> b!7806902 m!8239926))

(declare-fun m!8239928 () Bool)

(assert (=> b!7806902 m!8239928))

(assert (=> b!7806902 m!8239612))

(declare-fun m!8239930 () Bool)

(assert (=> b!7806902 m!8239930))

(assert (=> b!7806902 m!8239928))

(assert (=> b!7806902 m!8239930))

(declare-fun m!8239932 () Bool)

(assert (=> b!7806902 m!8239932))

(assert (=> d!2348122 m!8239612))

(assert (=> d!2348122 m!8239620))

(assert (=> d!2348122 m!8239610))

(declare-fun m!8239934 () Bool)

(assert (=> d!2348122 m!8239934))

(assert (=> b!7806911 m!8239612))

(assert (=> b!7806911 m!8239926))

(assert (=> b!7806908 m!8239612))

(assert (=> b!7806908 m!8239930))

(assert (=> b!7806908 m!8239930))

(declare-fun m!8239936 () Bool)

(assert (=> b!7806908 m!8239936))

(assert (=> b!7806909 m!8239612))

(assert (=> b!7806909 m!8239930))

(assert (=> b!7806909 m!8239930))

(assert (=> b!7806909 m!8239936))

(assert (=> b!7806903 m!8239612))

(assert (=> b!7806903 m!8239926))

(assert (=> bm!724101 m!8239612))

(assert (=> bm!724101 m!8239620))

(assert (=> b!7806910 m!8239610))

(declare-fun m!8239938 () Bool)

(assert (=> b!7806910 m!8239938))

(assert (=> b!7806360 d!2348122))

(declare-fun b!7806914 () Bool)

(declare-fun e!4621177 () Regex!20889)

(assert (=> b!7806914 (= e!4621177 (ite (= (head!15964 (t!388463 s!14292)) (c!1437502 lt!2675389)) EmptyExpr!20889 EmptyLang!20889))))

(declare-fun b!7806915 () Bool)

(declare-fun e!4621181 () Regex!20889)

(declare-fun call!724108 () Regex!20889)

(assert (=> b!7806915 (= e!4621181 (Union!20889 (Concat!29734 call!724108 (regTwo!42290 lt!2675389)) EmptyLang!20889))))

(declare-fun b!7806916 () Bool)

(declare-fun e!4621178 () Regex!20889)

(declare-fun e!4621180 () Regex!20889)

(assert (=> b!7806916 (= e!4621178 e!4621180)))

(declare-fun c!1437642 () Bool)

(assert (=> b!7806916 (= c!1437642 ((_ is Star!20889) lt!2675389))))

(declare-fun b!7806917 () Bool)

(declare-fun e!4621179 () Regex!20889)

(assert (=> b!7806917 (= e!4621179 EmptyLang!20889)))

(declare-fun b!7806918 () Bool)

(declare-fun call!724109 () Regex!20889)

(assert (=> b!7806918 (= e!4621180 (Concat!29734 call!724109 lt!2675389))))

(declare-fun b!7806919 () Bool)

(assert (=> b!7806919 (= e!4621179 e!4621177)))

(declare-fun c!1437645 () Bool)

(assert (=> b!7806919 (= c!1437645 ((_ is ElementMatch!20889) lt!2675389))))

(declare-fun bm!724102 () Bool)

(assert (=> bm!724102 (= call!724108 call!724109)))

(declare-fun call!724110 () Regex!20889)

(declare-fun b!7806920 () Bool)

(assert (=> b!7806920 (= e!4621181 (Union!20889 (Concat!29734 call!724110 (regTwo!42290 lt!2675389)) call!724108))))

(declare-fun b!7806921 () Bool)

(declare-fun c!1437644 () Bool)

(assert (=> b!7806921 (= c!1437644 (nullable!9273 (regOne!42290 lt!2675389)))))

(assert (=> b!7806921 (= e!4621180 e!4621181)))

(declare-fun d!2348124 () Bool)

(declare-fun lt!2675476 () Regex!20889)

(assert (=> d!2348124 (validRegex!11303 lt!2675476)))

(assert (=> d!2348124 (= lt!2675476 e!4621179)))

(declare-fun c!1437643 () Bool)

(assert (=> d!2348124 (= c!1437643 (or ((_ is EmptyExpr!20889) lt!2675389) ((_ is EmptyLang!20889) lt!2675389)))))

(assert (=> d!2348124 (validRegex!11303 lt!2675389)))

(assert (=> d!2348124 (= (derivativeStep!6226 lt!2675389 (head!15964 (t!388463 s!14292))) lt!2675476)))

(declare-fun bm!724103 () Bool)

(declare-fun c!1437646 () Bool)

(assert (=> bm!724103 (= call!724110 (derivativeStep!6226 (ite c!1437646 (regOne!42291 lt!2675389) (regOne!42290 lt!2675389)) (head!15964 (t!388463 s!14292))))))

(declare-fun b!7806922 () Bool)

(assert (=> b!7806922 (= c!1437646 ((_ is Union!20889) lt!2675389))))

(assert (=> b!7806922 (= e!4621177 e!4621178)))

(declare-fun bm!724104 () Bool)

(declare-fun call!724107 () Regex!20889)

(assert (=> bm!724104 (= call!724109 call!724107)))

(declare-fun bm!724105 () Bool)

(assert (=> bm!724105 (= call!724107 (derivativeStep!6226 (ite c!1437646 (regTwo!42291 lt!2675389) (ite c!1437642 (reg!21218 lt!2675389) (ite c!1437644 (regTwo!42290 lt!2675389) (regOne!42290 lt!2675389)))) (head!15964 (t!388463 s!14292))))))

(declare-fun b!7806923 () Bool)

(assert (=> b!7806923 (= e!4621178 (Union!20889 call!724110 call!724107))))

(assert (= (and d!2348124 c!1437643) b!7806917))

(assert (= (and d!2348124 (not c!1437643)) b!7806919))

(assert (= (and b!7806919 c!1437645) b!7806914))

(assert (= (and b!7806919 (not c!1437645)) b!7806922))

(assert (= (and b!7806922 c!1437646) b!7806923))

(assert (= (and b!7806922 (not c!1437646)) b!7806916))

(assert (= (and b!7806916 c!1437642) b!7806918))

(assert (= (and b!7806916 (not c!1437642)) b!7806921))

(assert (= (and b!7806921 c!1437644) b!7806920))

(assert (= (and b!7806921 (not c!1437644)) b!7806915))

(assert (= (or b!7806920 b!7806915) bm!724102))

(assert (= (or b!7806918 bm!724102) bm!724104))

(assert (= (or b!7806923 bm!724104) bm!724105))

(assert (= (or b!7806923 b!7806920) bm!724103))

(declare-fun m!8239940 () Bool)

(assert (=> b!7806921 m!8239940))

(declare-fun m!8239942 () Bool)

(assert (=> d!2348124 m!8239942))

(assert (=> d!2348124 m!8239618))

(assert (=> bm!724103 m!8239608))

(declare-fun m!8239944 () Bool)

(assert (=> bm!724103 m!8239944))

(assert (=> bm!724105 m!8239608))

(declare-fun m!8239946 () Bool)

(assert (=> bm!724105 m!8239946))

(assert (=> b!7806360 d!2348124))

(declare-fun d!2348126 () Bool)

(assert (=> d!2348126 (= (head!15964 (t!388463 s!14292)) (h!80052 (t!388463 s!14292)))))

(assert (=> b!7806360 d!2348126))

(declare-fun d!2348128 () Bool)

(assert (=> d!2348128 (= (tail!15505 (t!388463 s!14292)) (t!388463 (t!388463 s!14292)))))

(assert (=> b!7806360 d!2348128))

(declare-fun d!2348130 () Bool)

(assert (=> d!2348130 (= (isEmpty!42257 (tail!15505 lt!2675390)) ((_ is Nil!73604) (tail!15505 lt!2675390)))))

(assert (=> b!7806807 d!2348130))

(declare-fun d!2348134 () Bool)

(assert (=> d!2348134 (= (tail!15505 lt!2675390) (t!388463 lt!2675390))))

(assert (=> b!7806807 d!2348134))

(declare-fun d!2348136 () Bool)

(assert (=> d!2348136 (= (nullable!9273 lt!2675386) (nullableFct!3652 lt!2675386))))

(declare-fun bs!1966558 () Bool)

(assert (= bs!1966558 d!2348136))

(declare-fun m!8239948 () Bool)

(assert (=> bs!1966558 m!8239948))

(assert (=> b!7806749 d!2348136))

(declare-fun b!7806935 () Bool)

(declare-fun e!4621191 () Bool)

(declare-fun e!4621187 () Bool)

(assert (=> b!7806935 (= e!4621191 e!4621187)))

(declare-fun c!1437652 () Bool)

(assert (=> b!7806935 (= c!1437652 ((_ is Union!20889) lt!2675442))))

(declare-fun b!7806936 () Bool)

(declare-fun e!4621189 () Bool)

(assert (=> b!7806936 (= e!4621189 e!4621191)))

(declare-fun c!1437653 () Bool)

(assert (=> b!7806936 (= c!1437653 ((_ is Star!20889) lt!2675442))))

(declare-fun b!7806937 () Bool)

(declare-fun e!4621188 () Bool)

(assert (=> b!7806937 (= e!4621191 e!4621188)))

(declare-fun res!3109206 () Bool)

(assert (=> b!7806937 (= res!3109206 (not (nullable!9273 (reg!21218 lt!2675442))))))

(assert (=> b!7806937 (=> (not res!3109206) (not e!4621188))))

(declare-fun b!7806938 () Bool)

(declare-fun e!4621193 () Bool)

(declare-fun e!4621192 () Bool)

(assert (=> b!7806938 (= e!4621193 e!4621192)))

(declare-fun res!3109208 () Bool)

(assert (=> b!7806938 (=> (not res!3109208) (not e!4621192))))

(declare-fun call!724117 () Bool)

(assert (=> b!7806938 (= res!3109208 call!724117)))

(declare-fun b!7806939 () Bool)

(declare-fun res!3109207 () Bool)

(assert (=> b!7806939 (=> res!3109207 e!4621193)))

(assert (=> b!7806939 (= res!3109207 (not ((_ is Concat!29734) lt!2675442)))))

(assert (=> b!7806939 (= e!4621187 e!4621193)))

(declare-fun bm!724110 () Bool)

(declare-fun call!724116 () Bool)

(assert (=> bm!724110 (= call!724116 (validRegex!11303 (ite c!1437652 (regTwo!42291 lt!2675442) (regTwo!42290 lt!2675442))))))

(declare-fun bm!724111 () Bool)

(declare-fun call!724115 () Bool)

(assert (=> bm!724111 (= call!724117 call!724115)))

(declare-fun b!7806934 () Bool)

(assert (=> b!7806934 (= e!4621192 call!724116)))

(declare-fun d!2348138 () Bool)

(declare-fun res!3109205 () Bool)

(assert (=> d!2348138 (=> res!3109205 e!4621189)))

(assert (=> d!2348138 (= res!3109205 ((_ is ElementMatch!20889) lt!2675442))))

(assert (=> d!2348138 (= (validRegex!11303 lt!2675442) e!4621189)))

(declare-fun b!7806940 () Bool)

(assert (=> b!7806940 (= e!4621188 call!724115)))

(declare-fun b!7806941 () Bool)

(declare-fun res!3109209 () Bool)

(declare-fun e!4621190 () Bool)

(assert (=> b!7806941 (=> (not res!3109209) (not e!4621190))))

(assert (=> b!7806941 (= res!3109209 call!724117)))

(assert (=> b!7806941 (= e!4621187 e!4621190)))

(declare-fun b!7806942 () Bool)

(assert (=> b!7806942 (= e!4621190 call!724116)))

(declare-fun bm!724112 () Bool)

(assert (=> bm!724112 (= call!724115 (validRegex!11303 (ite c!1437653 (reg!21218 lt!2675442) (ite c!1437652 (regOne!42291 lt!2675442) (regOne!42290 lt!2675442)))))))

(assert (= (and d!2348138 (not res!3109205)) b!7806936))

(assert (= (and b!7806936 c!1437653) b!7806937))

(assert (= (and b!7806936 (not c!1437653)) b!7806935))

(assert (= (and b!7806937 res!3109206) b!7806940))

(assert (= (and b!7806935 c!1437652) b!7806941))

(assert (= (and b!7806935 (not c!1437652)) b!7806939))

(assert (= (and b!7806941 res!3109209) b!7806942))

(assert (= (and b!7806939 (not res!3109207)) b!7806938))

(assert (= (and b!7806938 res!3109208) b!7806934))

(assert (= (or b!7806941 b!7806938) bm!724111))

(assert (= (or b!7806942 b!7806934) bm!724110))

(assert (= (or b!7806940 bm!724111) bm!724112))

(declare-fun m!8239950 () Bool)

(assert (=> b!7806937 m!8239950))

(declare-fun m!8239952 () Bool)

(assert (=> bm!724110 m!8239952))

(declare-fun m!8239954 () Bool)

(assert (=> bm!724112 m!8239954))

(assert (=> d!2348072 d!2348138))

(assert (=> d!2348072 d!2348074))

(assert (=> b!7806499 d!2348126))

(declare-fun d!2348140 () Bool)

(assert (=> d!2348140 (= (isDefined!14386 lt!2675468) (not (isEmpty!42259 lt!2675468)))))

(declare-fun bs!1966559 () Bool)

(assert (= bs!1966559 d!2348140))

(declare-fun m!8239956 () Bool)

(assert (=> bs!1966559 m!8239956))

(assert (=> b!7806791 d!2348140))

(declare-fun b!7806944 () Bool)

(declare-fun e!4621198 () Bool)

(declare-fun e!4621194 () Bool)

(assert (=> b!7806944 (= e!4621198 e!4621194)))

(declare-fun c!1437654 () Bool)

(assert (=> b!7806944 (= c!1437654 ((_ is Union!20889) (ite c!1437604 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279))))))

(declare-fun b!7806945 () Bool)

(declare-fun e!4621196 () Bool)

(assert (=> b!7806945 (= e!4621196 e!4621198)))

(declare-fun c!1437655 () Bool)

(assert (=> b!7806945 (= c!1437655 ((_ is Star!20889) (ite c!1437604 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279))))))

(declare-fun b!7806946 () Bool)

(declare-fun e!4621195 () Bool)

(assert (=> b!7806946 (= e!4621198 e!4621195)))

(declare-fun res!3109211 () Bool)

(assert (=> b!7806946 (= res!3109211 (not (nullable!9273 (reg!21218 (ite c!1437604 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279))))))))

(assert (=> b!7806946 (=> (not res!3109211) (not e!4621195))))

(declare-fun b!7806947 () Bool)

(declare-fun e!4621200 () Bool)

(declare-fun e!4621199 () Bool)

(assert (=> b!7806947 (= e!4621200 e!4621199)))

(declare-fun res!3109213 () Bool)

(assert (=> b!7806947 (=> (not res!3109213) (not e!4621199))))

(declare-fun call!724120 () Bool)

(assert (=> b!7806947 (= res!3109213 call!724120)))

(declare-fun b!7806948 () Bool)

(declare-fun res!3109212 () Bool)

(assert (=> b!7806948 (=> res!3109212 e!4621200)))

(assert (=> b!7806948 (= res!3109212 (not ((_ is Concat!29734) (ite c!1437604 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279)))))))

(assert (=> b!7806948 (= e!4621194 e!4621200)))

(declare-fun call!724119 () Bool)

(declare-fun bm!724113 () Bool)

(assert (=> bm!724113 (= call!724119 (validRegex!11303 (ite c!1437654 (regTwo!42291 (ite c!1437604 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279))) (regTwo!42290 (ite c!1437604 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279))))))))

(declare-fun bm!724114 () Bool)

(declare-fun call!724118 () Bool)

(assert (=> bm!724114 (= call!724120 call!724118)))

(declare-fun b!7806943 () Bool)

(assert (=> b!7806943 (= e!4621199 call!724119)))

(declare-fun d!2348142 () Bool)

(declare-fun res!3109210 () Bool)

(assert (=> d!2348142 (=> res!3109210 e!4621196)))

(assert (=> d!2348142 (= res!3109210 ((_ is ElementMatch!20889) (ite c!1437604 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279))))))

(assert (=> d!2348142 (= (validRegex!11303 (ite c!1437604 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279))) e!4621196)))

(declare-fun b!7806949 () Bool)

(assert (=> b!7806949 (= e!4621195 call!724118)))

(declare-fun b!7806950 () Bool)

(declare-fun res!3109214 () Bool)

(declare-fun e!4621197 () Bool)

(assert (=> b!7806950 (=> (not res!3109214) (not e!4621197))))

(assert (=> b!7806950 (= res!3109214 call!724120)))

(assert (=> b!7806950 (= e!4621194 e!4621197)))

(declare-fun b!7806951 () Bool)

(assert (=> b!7806951 (= e!4621197 call!724119)))

(declare-fun bm!724115 () Bool)

(assert (=> bm!724115 (= call!724118 (validRegex!11303 (ite c!1437655 (reg!21218 (ite c!1437604 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279))) (ite c!1437654 (regOne!42291 (ite c!1437604 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279))) (regOne!42290 (ite c!1437604 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279)))))))))

(assert (= (and d!2348142 (not res!3109210)) b!7806945))

(assert (= (and b!7806945 c!1437655) b!7806946))

(assert (= (and b!7806945 (not c!1437655)) b!7806944))

(assert (= (and b!7806946 res!3109211) b!7806949))

(assert (= (and b!7806944 c!1437654) b!7806950))

(assert (= (and b!7806944 (not c!1437654)) b!7806948))

(assert (= (and b!7806950 res!3109214) b!7806951))

(assert (= (and b!7806948 (not res!3109212)) b!7806947))

(assert (= (and b!7806947 res!3109213) b!7806943))

(assert (= (or b!7806950 b!7806947) bm!724114))

(assert (= (or b!7806951 b!7806943) bm!724113))

(assert (= (or b!7806949 bm!724114) bm!724115))

(declare-fun m!8239968 () Bool)

(assert (=> b!7806946 m!8239968))

(declare-fun m!8239970 () Bool)

(assert (=> bm!724113 m!8239970))

(declare-fun m!8239972 () Bool)

(assert (=> bm!724115 m!8239972))

(assert (=> bm!724087 d!2348142))

(declare-fun d!2348146 () Bool)

(assert (=> d!2348146 (= (isEmpty!42257 (tail!15505 (t!388463 s!14292))) ((_ is Nil!73604) (tail!15505 (t!388463 s!14292))))))

(assert (=> b!7806747 d!2348146))

(assert (=> b!7806747 d!2348128))

(declare-fun d!2348148 () Bool)

(assert (=> d!2348148 (= (isEmpty!42257 lt!2675390) ((_ is Nil!73604) lt!2675390))))

(assert (=> bm!724095 d!2348148))

(assert (=> b!7806497 d!2348146))

(assert (=> b!7806497 d!2348128))

(declare-fun b!7806953 () Bool)

(declare-fun e!4621205 () Bool)

(declare-fun e!4621201 () Bool)

(assert (=> b!7806953 (= e!4621205 e!4621201)))

(declare-fun c!1437656 () Bool)

(assert (=> b!7806953 (= c!1437656 ((_ is Union!20889) (ite c!1437616 (reg!21218 r2!6217) (ite c!1437615 (regOne!42291 r2!6217) (regOne!42290 r2!6217)))))))

(declare-fun b!7806954 () Bool)

(declare-fun e!4621203 () Bool)

(assert (=> b!7806954 (= e!4621203 e!4621205)))

(declare-fun c!1437657 () Bool)

(assert (=> b!7806954 (= c!1437657 ((_ is Star!20889) (ite c!1437616 (reg!21218 r2!6217) (ite c!1437615 (regOne!42291 r2!6217) (regOne!42290 r2!6217)))))))

(declare-fun b!7806955 () Bool)

(declare-fun e!4621202 () Bool)

(assert (=> b!7806955 (= e!4621205 e!4621202)))

(declare-fun res!3109216 () Bool)

(assert (=> b!7806955 (= res!3109216 (not (nullable!9273 (reg!21218 (ite c!1437616 (reg!21218 r2!6217) (ite c!1437615 (regOne!42291 r2!6217) (regOne!42290 r2!6217)))))))))

(assert (=> b!7806955 (=> (not res!3109216) (not e!4621202))))

(declare-fun b!7806956 () Bool)

(declare-fun e!4621207 () Bool)

(declare-fun e!4621206 () Bool)

(assert (=> b!7806956 (= e!4621207 e!4621206)))

(declare-fun res!3109218 () Bool)

(assert (=> b!7806956 (=> (not res!3109218) (not e!4621206))))

(declare-fun call!724123 () Bool)

(assert (=> b!7806956 (= res!3109218 call!724123)))

(declare-fun b!7806957 () Bool)

(declare-fun res!3109217 () Bool)

(assert (=> b!7806957 (=> res!3109217 e!4621207)))

(assert (=> b!7806957 (= res!3109217 (not ((_ is Concat!29734) (ite c!1437616 (reg!21218 r2!6217) (ite c!1437615 (regOne!42291 r2!6217) (regOne!42290 r2!6217))))))))

(assert (=> b!7806957 (= e!4621201 e!4621207)))

(declare-fun call!724122 () Bool)

(declare-fun bm!724116 () Bool)

(assert (=> bm!724116 (= call!724122 (validRegex!11303 (ite c!1437656 (regTwo!42291 (ite c!1437616 (reg!21218 r2!6217) (ite c!1437615 (regOne!42291 r2!6217) (regOne!42290 r2!6217)))) (regTwo!42290 (ite c!1437616 (reg!21218 r2!6217) (ite c!1437615 (regOne!42291 r2!6217) (regOne!42290 r2!6217)))))))))

(declare-fun bm!724117 () Bool)

(declare-fun call!724121 () Bool)

(assert (=> bm!724117 (= call!724123 call!724121)))

(declare-fun b!7806952 () Bool)

(assert (=> b!7806952 (= e!4621206 call!724122)))

(declare-fun d!2348150 () Bool)

(declare-fun res!3109215 () Bool)

(assert (=> d!2348150 (=> res!3109215 e!4621203)))

(assert (=> d!2348150 (= res!3109215 ((_ is ElementMatch!20889) (ite c!1437616 (reg!21218 r2!6217) (ite c!1437615 (regOne!42291 r2!6217) (regOne!42290 r2!6217)))))))

(assert (=> d!2348150 (= (validRegex!11303 (ite c!1437616 (reg!21218 r2!6217) (ite c!1437615 (regOne!42291 r2!6217) (regOne!42290 r2!6217)))) e!4621203)))

(declare-fun b!7806958 () Bool)

(assert (=> b!7806958 (= e!4621202 call!724121)))

(declare-fun b!7806959 () Bool)

(declare-fun res!3109219 () Bool)

(declare-fun e!4621204 () Bool)

(assert (=> b!7806959 (=> (not res!3109219) (not e!4621204))))

(assert (=> b!7806959 (= res!3109219 call!724123)))

(assert (=> b!7806959 (= e!4621201 e!4621204)))

(declare-fun b!7806960 () Bool)

(assert (=> b!7806960 (= e!4621204 call!724122)))

(declare-fun bm!724118 () Bool)

(assert (=> bm!724118 (= call!724121 (validRegex!11303 (ite c!1437657 (reg!21218 (ite c!1437616 (reg!21218 r2!6217) (ite c!1437615 (regOne!42291 r2!6217) (regOne!42290 r2!6217)))) (ite c!1437656 (regOne!42291 (ite c!1437616 (reg!21218 r2!6217) (ite c!1437615 (regOne!42291 r2!6217) (regOne!42290 r2!6217)))) (regOne!42290 (ite c!1437616 (reg!21218 r2!6217) (ite c!1437615 (regOne!42291 r2!6217) (regOne!42290 r2!6217))))))))))

(assert (= (and d!2348150 (not res!3109215)) b!7806954))

(assert (= (and b!7806954 c!1437657) b!7806955))

(assert (= (and b!7806954 (not c!1437657)) b!7806953))

(assert (= (and b!7806955 res!3109216) b!7806958))

(assert (= (and b!7806953 c!1437656) b!7806959))

(assert (= (and b!7806953 (not c!1437656)) b!7806957))

(assert (= (and b!7806959 res!3109219) b!7806960))

(assert (= (and b!7806957 (not res!3109217)) b!7806956))

(assert (= (and b!7806956 res!3109218) b!7806952))

(assert (= (or b!7806959 b!7806956) bm!724117))

(assert (= (or b!7806960 b!7806952) bm!724116))

(assert (= (or b!7806958 bm!724117) bm!724118))

(declare-fun m!8239974 () Bool)

(assert (=> b!7806955 m!8239974))

(declare-fun m!8239976 () Bool)

(assert (=> bm!724116 m!8239976))

(declare-fun m!8239978 () Bool)

(assert (=> bm!724118 m!8239978))

(assert (=> bm!724094 d!2348150))

(declare-fun d!2348154 () Bool)

(assert (=> d!2348154 (= (isEmpty!42257 (t!388463 s!14292)) ((_ is Nil!73604) (t!388463 s!14292)))))

(assert (=> d!2348032 d!2348154))

(declare-fun b!7806962 () Bool)

(declare-fun e!4621218 () Bool)

(declare-fun e!4621209 () Bool)

(assert (=> b!7806962 (= e!4621218 e!4621209)))

(declare-fun c!1437659 () Bool)

(assert (=> b!7806962 (= c!1437659 ((_ is Union!20889) lt!2675389))))

(declare-fun b!7806963 () Bool)

(declare-fun e!4621214 () Bool)

(assert (=> b!7806963 (= e!4621214 e!4621218)))

(declare-fun c!1437661 () Bool)

(assert (=> b!7806963 (= c!1437661 ((_ is Star!20889) lt!2675389))))

(declare-fun b!7806965 () Bool)

(declare-fun e!4621210 () Bool)

(assert (=> b!7806965 (= e!4621218 e!4621210)))

(declare-fun res!3109224 () Bool)

(assert (=> b!7806965 (= res!3109224 (not (nullable!9273 (reg!21218 lt!2675389))))))

(assert (=> b!7806965 (=> (not res!3109224) (not e!4621210))))

(declare-fun b!7806967 () Bool)

(declare-fun e!4621221 () Bool)

(declare-fun e!4621219 () Bool)

(assert (=> b!7806967 (= e!4621221 e!4621219)))

(declare-fun res!3109228 () Bool)

(assert (=> b!7806967 (=> (not res!3109228) (not e!4621219))))

(declare-fun call!724127 () Bool)

(assert (=> b!7806967 (= res!3109228 call!724127)))

(declare-fun b!7806969 () Bool)

(declare-fun res!3109225 () Bool)

(assert (=> b!7806969 (=> res!3109225 e!4621221)))

(assert (=> b!7806969 (= res!3109225 (not ((_ is Concat!29734) lt!2675389)))))

(assert (=> b!7806969 (= e!4621209 e!4621221)))

(declare-fun bm!724119 () Bool)

(declare-fun call!724125 () Bool)

(assert (=> bm!724119 (= call!724125 (validRegex!11303 (ite c!1437659 (regTwo!42291 lt!2675389) (regTwo!42290 lt!2675389))))))

(declare-fun bm!724120 () Bool)

(declare-fun call!724124 () Bool)

(assert (=> bm!724120 (= call!724127 call!724124)))

(declare-fun b!7806961 () Bool)

(assert (=> b!7806961 (= e!4621219 call!724125)))

(declare-fun d!2348156 () Bool)

(declare-fun res!3109221 () Bool)

(assert (=> d!2348156 (=> res!3109221 e!4621214)))

(assert (=> d!2348156 (= res!3109221 ((_ is ElementMatch!20889) lt!2675389))))

(assert (=> d!2348156 (= (validRegex!11303 lt!2675389) e!4621214)))

(declare-fun b!7806972 () Bool)

(assert (=> b!7806972 (= e!4621210 call!724124)))

(declare-fun b!7806974 () Bool)

(declare-fun res!3109230 () Bool)

(declare-fun e!4621217 () Bool)

(assert (=> b!7806974 (=> (not res!3109230) (not e!4621217))))

(assert (=> b!7806974 (= res!3109230 call!724127)))

(assert (=> b!7806974 (= e!4621209 e!4621217)))

(declare-fun b!7806976 () Bool)

(assert (=> b!7806976 (= e!4621217 call!724125)))

(declare-fun bm!724121 () Bool)

(assert (=> bm!724121 (= call!724124 (validRegex!11303 (ite c!1437661 (reg!21218 lt!2675389) (ite c!1437659 (regOne!42291 lt!2675389) (regOne!42290 lt!2675389)))))))

(assert (= (and d!2348156 (not res!3109221)) b!7806963))

(assert (= (and b!7806963 c!1437661) b!7806965))

(assert (= (and b!7806963 (not c!1437661)) b!7806962))

(assert (= (and b!7806965 res!3109224) b!7806972))

(assert (= (and b!7806962 c!1437659) b!7806974))

(assert (= (and b!7806962 (not c!1437659)) b!7806969))

(assert (= (and b!7806974 res!3109230) b!7806976))

(assert (= (and b!7806969 (not res!3109225)) b!7806967))

(assert (= (and b!7806967 res!3109228) b!7806961))

(assert (= (or b!7806974 b!7806967) bm!724120))

(assert (= (or b!7806976 b!7806961) bm!724119))

(assert (= (or b!7806972 bm!724120) bm!724121))

(declare-fun m!8239980 () Bool)

(assert (=> b!7806965 m!8239980))

(declare-fun m!8239982 () Bool)

(assert (=> bm!724119 m!8239982))

(declare-fun m!8239984 () Bool)

(assert (=> bm!724121 m!8239984))

(assert (=> d!2348032 d!2348156))

(declare-fun e!4621222 () Regex!20889)

(declare-fun b!7806984 () Bool)

(assert (=> b!7806984 (= e!4621222 (ite (= (h!80052 s!14292) (c!1437502 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393)))))) EmptyExpr!20889 EmptyLang!20889))))

(declare-fun e!4621226 () Regex!20889)

(declare-fun b!7806985 () Bool)

(declare-fun call!724129 () Regex!20889)

(assert (=> b!7806985 (= e!4621226 (Union!20889 (Concat!29734 call!724129 (regTwo!42290 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393)))))) EmptyLang!20889))))

(declare-fun b!7806986 () Bool)

(declare-fun e!4621223 () Regex!20889)

(declare-fun e!4621225 () Regex!20889)

(assert (=> b!7806986 (= e!4621223 e!4621225)))

(declare-fun c!1437663 () Bool)

(assert (=> b!7806986 (= c!1437663 ((_ is Star!20889) (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393))))))))

(declare-fun b!7806987 () Bool)

(declare-fun e!4621224 () Regex!20889)

(assert (=> b!7806987 (= e!4621224 EmptyLang!20889)))

(declare-fun call!724130 () Regex!20889)

(declare-fun b!7806988 () Bool)

(assert (=> b!7806988 (= e!4621225 (Concat!29734 call!724130 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393))))))))

(declare-fun b!7806989 () Bool)

(assert (=> b!7806989 (= e!4621224 e!4621222)))

(declare-fun c!1437666 () Bool)

(assert (=> b!7806989 (= c!1437666 ((_ is ElementMatch!20889) (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393))))))))

(declare-fun bm!724123 () Bool)

(assert (=> bm!724123 (= call!724129 call!724130)))

(declare-fun call!724131 () Regex!20889)

(declare-fun b!7806990 () Bool)

(assert (=> b!7806990 (= e!4621226 (Union!20889 (Concat!29734 call!724131 (regTwo!42290 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393)))))) call!724129))))

(declare-fun b!7806991 () Bool)

(declare-fun c!1437665 () Bool)

(assert (=> b!7806991 (= c!1437665 (nullable!9273 (regOne!42290 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393)))))))))

(assert (=> b!7806991 (= e!4621225 e!4621226)))

(declare-fun d!2348158 () Bool)

(declare-fun lt!2675479 () Regex!20889)

(assert (=> d!2348158 (validRegex!11303 lt!2675479)))

(assert (=> d!2348158 (= lt!2675479 e!4621224)))

(declare-fun c!1437664 () Bool)

(assert (=> d!2348158 (= c!1437664 (or ((_ is EmptyExpr!20889) (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393))))) ((_ is EmptyLang!20889) (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393)))))))))

(assert (=> d!2348158 (validRegex!11303 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393)))))))

(assert (=> d!2348158 (= (derivativeStep!6226 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393)))) (h!80052 s!14292)) lt!2675479)))

(declare-fun c!1437667 () Bool)

(declare-fun bm!724124 () Bool)

(assert (=> bm!724124 (= call!724131 (derivativeStep!6226 (ite c!1437667 (regOne!42291 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393))))) (regOne!42290 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393)))))) (h!80052 s!14292)))))

(declare-fun b!7806992 () Bool)

(assert (=> b!7806992 (= c!1437667 ((_ is Union!20889) (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393))))))))

(assert (=> b!7806992 (= e!4621222 e!4621223)))

(declare-fun bm!724125 () Bool)

(declare-fun call!724128 () Regex!20889)

(assert (=> bm!724125 (= call!724130 call!724128)))

(declare-fun bm!724126 () Bool)

(assert (=> bm!724126 (= call!724128 (derivativeStep!6226 (ite c!1437667 (regTwo!42291 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393))))) (ite c!1437663 (reg!21218 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393))))) (ite c!1437665 (regTwo!42290 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393))))) (regOne!42290 (ite c!1437563 (regTwo!42291 lt!2675393) (ite c!1437559 (reg!21218 lt!2675393) (ite c!1437561 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393)))))))) (h!80052 s!14292)))))

(declare-fun b!7806993 () Bool)

(assert (=> b!7806993 (= e!4621223 (Union!20889 call!724131 call!724128))))

(assert (= (and d!2348158 c!1437664) b!7806987))

(assert (= (and d!2348158 (not c!1437664)) b!7806989))

(assert (= (and b!7806989 c!1437666) b!7806984))

(assert (= (and b!7806989 (not c!1437666)) b!7806992))

(assert (= (and b!7806992 c!1437667) b!7806993))

(assert (= (and b!7806992 (not c!1437667)) b!7806986))

(assert (= (and b!7806986 c!1437663) b!7806988))

(assert (= (and b!7806986 (not c!1437663)) b!7806991))

(assert (= (and b!7806991 c!1437665) b!7806990))

(assert (= (and b!7806991 (not c!1437665)) b!7806985))

(assert (= (or b!7806990 b!7806985) bm!724123))

(assert (= (or b!7806988 bm!724123) bm!724125))

(assert (= (or b!7806993 bm!724125) bm!724126))

(assert (= (or b!7806993 b!7806990) bm!724124))

(declare-fun m!8240000 () Bool)

(assert (=> b!7806991 m!8240000))

(declare-fun m!8240002 () Bool)

(assert (=> d!2348158 m!8240002))

(declare-fun m!8240004 () Bool)

(assert (=> d!2348158 m!8240004))

(declare-fun m!8240006 () Bool)

(assert (=> bm!724124 m!8240006))

(declare-fun m!8240008 () Bool)

(assert (=> bm!724126 m!8240008))

(assert (=> bm!724057 d!2348158))

(declare-fun d!2348164 () Bool)

(assert (=> d!2348164 (= (head!15964 s!14292) (h!80052 s!14292))))

(assert (=> b!7806730 d!2348164))

(declare-fun d!2348166 () Bool)

(assert (=> d!2348166 (= (validRegex!11303 EmptyLang!20889) true)))

(assert (=> b!7806757 d!2348166))

(declare-fun d!2348168 () Bool)

(declare-fun lt!2675484 () Int)

(assert (=> d!2348168 (>= lt!2675484 0)))

(declare-fun e!4621233 () Int)

(assert (=> d!2348168 (= lt!2675484 e!4621233)))

(declare-fun c!1437672 () Bool)

(assert (=> d!2348168 (= c!1437672 ((_ is Nil!73604) lt!2675441))))

(assert (=> d!2348168 (= (size!42731 lt!2675441) lt!2675484)))

(declare-fun b!7807006 () Bool)

(assert (=> b!7807006 (= e!4621233 0)))

(declare-fun b!7807007 () Bool)

(assert (=> b!7807007 (= e!4621233 (+ 1 (size!42731 (t!388463 lt!2675441))))))

(assert (= (and d!2348168 c!1437672) b!7807006))

(assert (= (and d!2348168 (not c!1437672)) b!7807007))

(declare-fun m!8240034 () Bool)

(assert (=> b!7807007 m!8240034))

(assert (=> b!7806553 d!2348168))

(declare-fun d!2348174 () Bool)

(declare-fun lt!2675485 () Int)

(assert (=> d!2348174 (>= lt!2675485 0)))

(declare-fun e!4621234 () Int)

(assert (=> d!2348174 (= lt!2675485 e!4621234)))

(declare-fun c!1437673 () Bool)

(assert (=> d!2348174 (= c!1437673 ((_ is Nil!73604) Nil!73604))))

(assert (=> d!2348174 (= (size!42731 Nil!73604) lt!2675485)))

(declare-fun b!7807008 () Bool)

(assert (=> b!7807008 (= e!4621234 0)))

(declare-fun b!7807009 () Bool)

(assert (=> b!7807009 (= e!4621234 (+ 1 (size!42731 (t!388463 Nil!73604))))))

(assert (= (and d!2348174 c!1437673) b!7807008))

(assert (= (and d!2348174 (not c!1437673)) b!7807009))

(declare-fun m!8240036 () Bool)

(assert (=> b!7807009 m!8240036))

(assert (=> b!7806553 d!2348174))

(declare-fun d!2348176 () Bool)

(declare-fun lt!2675486 () Int)

(assert (=> d!2348176 (>= lt!2675486 0)))

(declare-fun e!4621235 () Int)

(assert (=> d!2348176 (= lt!2675486 e!4621235)))

(declare-fun c!1437674 () Bool)

(assert (=> d!2348176 (= c!1437674 ((_ is Nil!73604) s!14292))))

(assert (=> d!2348176 (= (size!42731 s!14292) lt!2675486)))

(declare-fun b!7807010 () Bool)

(assert (=> b!7807010 (= e!4621235 0)))

(declare-fun b!7807011 () Bool)

(assert (=> b!7807011 (= e!4621235 (+ 1 (size!42731 (t!388463 s!14292))))))

(assert (= (and d!2348176 c!1437674) b!7807010))

(assert (= (and d!2348176 (not c!1437674)) b!7807011))

(declare-fun m!8240038 () Bool)

(assert (=> b!7807011 m!8240038))

(assert (=> b!7806553 d!2348176))

(declare-fun d!2348178 () Bool)

(assert (=> d!2348178 (= (isEmpty!42257 (tail!15505 s!14292)) ((_ is Nil!73604) (tail!15505 s!14292)))))

(assert (=> b!7806728 d!2348178))

(declare-fun d!2348180 () Bool)

(assert (=> d!2348180 (= (tail!15505 s!14292) (t!388463 s!14292))))

(assert (=> b!7806728 d!2348180))

(declare-fun d!2348182 () Bool)

(assert (=> d!2348182 (= (head!15964 lt!2675390) (h!80052 lt!2675390))))

(assert (=> b!7806802 d!2348182))

(assert (=> bm!724091 d!2348154))

(assert (=> d!2348094 d!2348092))

(declare-fun d!2348184 () Bool)

(declare-fun e!4621243 () Bool)

(assert (=> d!2348184 e!4621243))

(declare-fun res!3109244 () Bool)

(assert (=> d!2348184 (=> res!3109244 e!4621243)))

(assert (=> d!2348184 (= res!3109244 (matchR!10349 lt!2675386 (t!388463 s!14292)))))

(assert (=> d!2348184 true))

(declare-fun _$116!418 () Unit!168616)

(assert (=> d!2348184 (= (choose!59572 lt!2675386 EmptyLang!20889 (t!388463 s!14292)) _$116!418)))

(declare-fun b!7807020 () Bool)

(assert (=> b!7807020 (= e!4621243 (matchR!10349 EmptyLang!20889 (t!388463 s!14292)))))

(assert (= (and d!2348184 (not res!3109244)) b!7807020))

(assert (=> d!2348184 m!8239538))

(assert (=> b!7807020 m!8239572))

(assert (=> d!2348094 d!2348184))

(declare-fun b!7807025 () Bool)

(declare-fun e!4621248 () Bool)

(declare-fun e!4621244 () Bool)

(assert (=> b!7807025 (= e!4621248 e!4621244)))

(declare-fun c!1437677 () Bool)

(assert (=> b!7807025 (= c!1437677 ((_ is Union!20889) lt!2675386))))

(declare-fun b!7807026 () Bool)

(declare-fun e!4621246 () Bool)

(assert (=> b!7807026 (= e!4621246 e!4621248)))

(declare-fun c!1437678 () Bool)

(assert (=> b!7807026 (= c!1437678 ((_ is Star!20889) lt!2675386))))

(declare-fun b!7807027 () Bool)

(declare-fun e!4621245 () Bool)

(assert (=> b!7807027 (= e!4621248 e!4621245)))

(declare-fun res!3109246 () Bool)

(assert (=> b!7807027 (= res!3109246 (not (nullable!9273 (reg!21218 lt!2675386))))))

(assert (=> b!7807027 (=> (not res!3109246) (not e!4621245))))

(declare-fun b!7807028 () Bool)

(declare-fun e!4621250 () Bool)

(declare-fun e!4621249 () Bool)

(assert (=> b!7807028 (= e!4621250 e!4621249)))

(declare-fun res!3109248 () Bool)

(assert (=> b!7807028 (=> (not res!3109248) (not e!4621249))))

(declare-fun call!724134 () Bool)

(assert (=> b!7807028 (= res!3109248 call!724134)))

(declare-fun b!7807029 () Bool)

(declare-fun res!3109247 () Bool)

(assert (=> b!7807029 (=> res!3109247 e!4621250)))

(assert (=> b!7807029 (= res!3109247 (not ((_ is Concat!29734) lt!2675386)))))

(assert (=> b!7807029 (= e!4621244 e!4621250)))

(declare-fun bm!724127 () Bool)

(declare-fun call!724133 () Bool)

(assert (=> bm!724127 (= call!724133 (validRegex!11303 (ite c!1437677 (regTwo!42291 lt!2675386) (regTwo!42290 lt!2675386))))))

(declare-fun bm!724128 () Bool)

(declare-fun call!724132 () Bool)

(assert (=> bm!724128 (= call!724134 call!724132)))

(declare-fun b!7807024 () Bool)

(assert (=> b!7807024 (= e!4621249 call!724133)))

(declare-fun d!2348188 () Bool)

(declare-fun res!3109245 () Bool)

(assert (=> d!2348188 (=> res!3109245 e!4621246)))

(assert (=> d!2348188 (= res!3109245 ((_ is ElementMatch!20889) lt!2675386))))

(assert (=> d!2348188 (= (validRegex!11303 lt!2675386) e!4621246)))

(declare-fun b!7807030 () Bool)

(assert (=> b!7807030 (= e!4621245 call!724132)))

(declare-fun b!7807031 () Bool)

(declare-fun res!3109249 () Bool)

(declare-fun e!4621247 () Bool)

(assert (=> b!7807031 (=> (not res!3109249) (not e!4621247))))

(assert (=> b!7807031 (= res!3109249 call!724134)))

(assert (=> b!7807031 (= e!4621244 e!4621247)))

(declare-fun b!7807032 () Bool)

(assert (=> b!7807032 (= e!4621247 call!724133)))

(declare-fun bm!724129 () Bool)

(assert (=> bm!724129 (= call!724132 (validRegex!11303 (ite c!1437678 (reg!21218 lt!2675386) (ite c!1437677 (regOne!42291 lt!2675386) (regOne!42290 lt!2675386)))))))

(assert (= (and d!2348188 (not res!3109245)) b!7807026))

(assert (= (and b!7807026 c!1437678) b!7807027))

(assert (= (and b!7807026 (not c!1437678)) b!7807025))

(assert (= (and b!7807027 res!3109246) b!7807030))

(assert (= (and b!7807025 c!1437677) b!7807031))

(assert (= (and b!7807025 (not c!1437677)) b!7807029))

(assert (= (and b!7807031 res!3109249) b!7807032))

(assert (= (and b!7807029 (not res!3109247)) b!7807028))

(assert (= (and b!7807028 res!3109248) b!7807024))

(assert (= (or b!7807031 b!7807028) bm!724128))

(assert (= (or b!7807032 b!7807024) bm!724127))

(assert (= (or b!7807030 bm!724128) bm!724129))

(declare-fun m!8240044 () Bool)

(assert (=> b!7807027 m!8240044))

(declare-fun m!8240046 () Bool)

(assert (=> bm!724127 m!8240046))

(declare-fun m!8240048 () Bool)

(assert (=> bm!724129 m!8240048))

(assert (=> d!2348094 d!2348188))

(assert (=> b!7806742 d!2348126))

(declare-fun b!7807033 () Bool)

(declare-fun e!4621251 () List!73728)

(assert (=> b!7807033 (= e!4621251 (_2!38285 lt!2675385))))

(declare-fun b!7807035 () Bool)

(declare-fun res!3109250 () Bool)

(declare-fun e!4621252 () Bool)

(assert (=> b!7807035 (=> (not res!3109250) (not e!4621252))))

(declare-fun lt!2675493 () List!73728)

(assert (=> b!7807035 (= res!3109250 (= (size!42731 lt!2675493) (+ (size!42731 (t!388463 lt!2675390)) (size!42731 (_2!38285 lt!2675385)))))))

(declare-fun b!7807036 () Bool)

(assert (=> b!7807036 (= e!4621252 (or (not (= (_2!38285 lt!2675385) Nil!73604)) (= lt!2675493 (t!388463 lt!2675390))))))

(declare-fun b!7807034 () Bool)

(assert (=> b!7807034 (= e!4621251 (Cons!73604 (h!80052 (t!388463 lt!2675390)) (++!17949 (t!388463 (t!388463 lt!2675390)) (_2!38285 lt!2675385))))))

(declare-fun d!2348190 () Bool)

(assert (=> d!2348190 e!4621252))

(declare-fun res!3109251 () Bool)

(assert (=> d!2348190 (=> (not res!3109251) (not e!4621252))))

(assert (=> d!2348190 (= res!3109251 (= (content!15628 lt!2675493) ((_ map or) (content!15628 (t!388463 lt!2675390)) (content!15628 (_2!38285 lt!2675385)))))))

(assert (=> d!2348190 (= lt!2675493 e!4621251)))

(declare-fun c!1437679 () Bool)

(assert (=> d!2348190 (= c!1437679 ((_ is Nil!73604) (t!388463 lt!2675390)))))

(assert (=> d!2348190 (= (++!17949 (t!388463 lt!2675390) (_2!38285 lt!2675385)) lt!2675493)))

(assert (= (and d!2348190 c!1437679) b!7807033))

(assert (= (and d!2348190 (not c!1437679)) b!7807034))

(assert (= (and d!2348190 res!3109251) b!7807035))

(assert (= (and b!7807035 res!3109250) b!7807036))

(declare-fun m!8240058 () Bool)

(assert (=> b!7807035 m!8240058))

(declare-fun m!8240062 () Bool)

(assert (=> b!7807035 m!8240062))

(assert (=> b!7807035 m!8239854))

(declare-fun m!8240064 () Bool)

(assert (=> b!7807034 m!8240064))

(declare-fun m!8240066 () Bool)

(assert (=> d!2348190 m!8240066))

(declare-fun m!8240068 () Bool)

(assert (=> d!2348190 m!8240068))

(assert (=> d!2348190 m!8239862))

(assert (=> b!7806769 d!2348190))

(declare-fun d!2348192 () Bool)

(assert (=> d!2348192 (= (nullable!9273 (regOne!42290 lt!2675393)) (nullableFct!3652 (regOne!42290 lt!2675393)))))

(declare-fun bs!1966561 () Bool)

(assert (= bs!1966561 d!2348192))

(declare-fun m!8240074 () Bool)

(assert (=> bs!1966561 m!8240074))

(assert (=> b!7806485 d!2348192))

(declare-fun d!2348194 () Bool)

(assert (not d!2348194))

(assert (=> b!7806717 d!2348194))

(declare-fun d!2348202 () Bool)

(assert (not d!2348202))

(assert (=> b!7806717 d!2348202))

(assert (=> b!7806717 d!2348134))

(assert (=> d!2348104 d!2348140))

(declare-fun b!7807037 () Bool)

(declare-fun e!4621257 () Bool)

(declare-fun e!4621258 () Bool)

(assert (=> b!7807037 (= e!4621257 e!4621258)))

(declare-fun res!3109252 () Bool)

(assert (=> b!7807037 (=> (not res!3109252) (not e!4621258))))

(declare-fun lt!2675494 () Bool)

(assert (=> b!7807037 (= res!3109252 (not lt!2675494))))

(declare-fun b!7807038 () Bool)

(declare-fun res!3109253 () Bool)

(assert (=> b!7807038 (=> res!3109253 e!4621257)))

(assert (=> b!7807038 (= res!3109253 (not ((_ is ElementMatch!20889) lt!2675387)))))

(declare-fun e!4621253 () Bool)

(assert (=> b!7807038 (= e!4621253 e!4621257)))

(declare-fun b!7807040 () Bool)

(declare-fun e!4621256 () Bool)

(assert (=> b!7807040 (= e!4621256 (= (head!15964 Nil!73604) (c!1437502 lt!2675387)))))

(declare-fun b!7807041 () Bool)

(declare-fun e!4621254 () Bool)

(declare-fun call!724135 () Bool)

(assert (=> b!7807041 (= e!4621254 (= lt!2675494 call!724135))))

(declare-fun bm!724130 () Bool)

(assert (=> bm!724130 (= call!724135 (isEmpty!42257 Nil!73604))))

(declare-fun b!7807042 () Bool)

(declare-fun res!3109258 () Bool)

(assert (=> b!7807042 (=> (not res!3109258) (not e!4621256))))

(assert (=> b!7807042 (= res!3109258 (not call!724135))))

(declare-fun b!7807043 () Bool)

(assert (=> b!7807043 (= e!4621254 e!4621253)))

(declare-fun c!1437682 () Bool)

(assert (=> b!7807043 (= c!1437682 ((_ is EmptyLang!20889) lt!2675387))))

(declare-fun b!7807044 () Bool)

(declare-fun res!3109255 () Bool)

(assert (=> b!7807044 (=> res!3109255 e!4621257)))

(assert (=> b!7807044 (= res!3109255 e!4621256)))

(declare-fun res!3109256 () Bool)

(assert (=> b!7807044 (=> (not res!3109256) (not e!4621256))))

(assert (=> b!7807044 (= res!3109256 lt!2675494)))

(declare-fun b!7807045 () Bool)

(declare-fun res!3109254 () Bool)

(assert (=> b!7807045 (=> (not res!3109254) (not e!4621256))))

(assert (=> b!7807045 (= res!3109254 (isEmpty!42257 (tail!15505 Nil!73604)))))

(declare-fun b!7807046 () Bool)

(declare-fun res!3109257 () Bool)

(declare-fun e!4621255 () Bool)

(assert (=> b!7807046 (=> res!3109257 e!4621255)))

(assert (=> b!7807046 (= res!3109257 (not (isEmpty!42257 (tail!15505 Nil!73604))))))

(declare-fun b!7807047 () Bool)

(declare-fun e!4621259 () Bool)

(assert (=> b!7807047 (= e!4621259 (nullable!9273 lt!2675387))))

(declare-fun b!7807048 () Bool)

(assert (=> b!7807048 (= e!4621255 (not (= (head!15964 Nil!73604) (c!1437502 lt!2675387))))))

(declare-fun b!7807039 () Bool)

(assert (=> b!7807039 (= e!4621259 (matchR!10349 (derivativeStep!6226 lt!2675387 (head!15964 Nil!73604)) (tail!15505 Nil!73604)))))

(declare-fun d!2348204 () Bool)

(assert (=> d!2348204 e!4621254))

(declare-fun c!1437680 () Bool)

(assert (=> d!2348204 (= c!1437680 ((_ is EmptyExpr!20889) lt!2675387))))

(assert (=> d!2348204 (= lt!2675494 e!4621259)))

(declare-fun c!1437681 () Bool)

(assert (=> d!2348204 (= c!1437681 (isEmpty!42257 Nil!73604))))

(assert (=> d!2348204 (validRegex!11303 lt!2675387)))

(assert (=> d!2348204 (= (matchR!10349 lt!2675387 Nil!73604) lt!2675494)))

(declare-fun b!7807049 () Bool)

(assert (=> b!7807049 (= e!4621258 e!4621255)))

(declare-fun res!3109259 () Bool)

(assert (=> b!7807049 (=> res!3109259 e!4621255)))

(assert (=> b!7807049 (= res!3109259 call!724135)))

(declare-fun b!7807050 () Bool)

(assert (=> b!7807050 (= e!4621253 (not lt!2675494))))

(assert (= (and d!2348204 c!1437681) b!7807047))

(assert (= (and d!2348204 (not c!1437681)) b!7807039))

(assert (= (and d!2348204 c!1437680) b!7807041))

(assert (= (and d!2348204 (not c!1437680)) b!7807043))

(assert (= (and b!7807043 c!1437682) b!7807050))

(assert (= (and b!7807043 (not c!1437682)) b!7807038))

(assert (= (and b!7807038 (not res!3109253)) b!7807044))

(assert (= (and b!7807044 res!3109256) b!7807042))

(assert (= (and b!7807042 res!3109258) b!7807045))

(assert (= (and b!7807045 res!3109254) b!7807040))

(assert (= (and b!7807044 (not res!3109255)) b!7807037))

(assert (= (and b!7807037 res!3109252) b!7807049))

(assert (= (and b!7807049 (not res!3109259)) b!7807046))

(assert (= (and b!7807046 (not res!3109257)) b!7807048))

(assert (= (or b!7807041 b!7807042 b!7807049) bm!724130))

(assert (=> b!7807039 m!8239800))

(assert (=> b!7807039 m!8239800))

(declare-fun m!8240086 () Bool)

(assert (=> b!7807039 m!8240086))

(assert (=> b!7807039 m!8239806))

(assert (=> b!7807039 m!8240086))

(assert (=> b!7807039 m!8239806))

(declare-fun m!8240088 () Bool)

(assert (=> b!7807039 m!8240088))

(declare-fun m!8240090 () Bool)

(assert (=> d!2348204 m!8240090))

(assert (=> d!2348204 m!8239868))

(assert (=> b!7807048 m!8239800))

(assert (=> b!7807045 m!8239806))

(assert (=> b!7807045 m!8239806))

(declare-fun m!8240092 () Bool)

(assert (=> b!7807045 m!8240092))

(assert (=> b!7807046 m!8239806))

(assert (=> b!7807046 m!8239806))

(assert (=> b!7807046 m!8240092))

(assert (=> b!7807040 m!8239800))

(assert (=> bm!724130 m!8240090))

(declare-fun m!8240094 () Bool)

(assert (=> b!7807047 m!8240094))

(assert (=> d!2348104 d!2348204))

(declare-fun b!7807054 () Bool)

(declare-fun e!4621264 () Bool)

(declare-fun e!4621260 () Bool)

(assert (=> b!7807054 (= e!4621264 e!4621260)))

(declare-fun c!1437683 () Bool)

(assert (=> b!7807054 (= c!1437683 ((_ is Union!20889) lt!2675387))))

(declare-fun b!7807055 () Bool)

(declare-fun e!4621262 () Bool)

(assert (=> b!7807055 (= e!4621262 e!4621264)))

(declare-fun c!1437684 () Bool)

(assert (=> b!7807055 (= c!1437684 ((_ is Star!20889) lt!2675387))))

(declare-fun b!7807056 () Bool)

(declare-fun e!4621261 () Bool)

(assert (=> b!7807056 (= e!4621264 e!4621261)))

(declare-fun res!3109261 () Bool)

(assert (=> b!7807056 (= res!3109261 (not (nullable!9273 (reg!21218 lt!2675387))))))

(assert (=> b!7807056 (=> (not res!3109261) (not e!4621261))))

(declare-fun b!7807057 () Bool)

(declare-fun e!4621266 () Bool)

(declare-fun e!4621265 () Bool)

(assert (=> b!7807057 (= e!4621266 e!4621265)))

(declare-fun res!3109263 () Bool)

(assert (=> b!7807057 (=> (not res!3109263) (not e!4621265))))

(declare-fun call!724138 () Bool)

(assert (=> b!7807057 (= res!3109263 call!724138)))

(declare-fun b!7807058 () Bool)

(declare-fun res!3109262 () Bool)

(assert (=> b!7807058 (=> res!3109262 e!4621266)))

(assert (=> b!7807058 (= res!3109262 (not ((_ is Concat!29734) lt!2675387)))))

(assert (=> b!7807058 (= e!4621260 e!4621266)))

(declare-fun bm!724131 () Bool)

(declare-fun call!724137 () Bool)

(assert (=> bm!724131 (= call!724137 (validRegex!11303 (ite c!1437683 (regTwo!42291 lt!2675387) (regTwo!42290 lt!2675387))))))

(declare-fun bm!724132 () Bool)

(declare-fun call!724136 () Bool)

(assert (=> bm!724132 (= call!724138 call!724136)))

(declare-fun b!7807053 () Bool)

(assert (=> b!7807053 (= e!4621265 call!724137)))

(declare-fun d!2348208 () Bool)

(declare-fun res!3109260 () Bool)

(assert (=> d!2348208 (=> res!3109260 e!4621262)))

(assert (=> d!2348208 (= res!3109260 ((_ is ElementMatch!20889) lt!2675387))))

(assert (=> d!2348208 (= (validRegex!11303 lt!2675387) e!4621262)))

(declare-fun b!7807061 () Bool)

(assert (=> b!7807061 (= e!4621261 call!724136)))

(declare-fun b!7807062 () Bool)

(declare-fun res!3109264 () Bool)

(declare-fun e!4621263 () Bool)

(assert (=> b!7807062 (=> (not res!3109264) (not e!4621263))))

(assert (=> b!7807062 (= res!3109264 call!724138)))

(assert (=> b!7807062 (= e!4621260 e!4621263)))

(declare-fun b!7807063 () Bool)

(assert (=> b!7807063 (= e!4621263 call!724137)))

(declare-fun bm!724133 () Bool)

(assert (=> bm!724133 (= call!724136 (validRegex!11303 (ite c!1437684 (reg!21218 lt!2675387) (ite c!1437683 (regOne!42291 lt!2675387) (regOne!42290 lt!2675387)))))))

(assert (= (and d!2348208 (not res!3109260)) b!7807055))

(assert (= (and b!7807055 c!1437684) b!7807056))

(assert (= (and b!7807055 (not c!1437684)) b!7807054))

(assert (= (and b!7807056 res!3109261) b!7807061))

(assert (= (and b!7807054 c!1437683) b!7807062))

(assert (= (and b!7807054 (not c!1437683)) b!7807058))

(assert (= (and b!7807062 res!3109264) b!7807063))

(assert (= (and b!7807058 (not res!3109262)) b!7807057))

(assert (= (and b!7807057 res!3109263) b!7807053))

(assert (= (or b!7807062 b!7807057) bm!724132))

(assert (= (or b!7807063 b!7807053) bm!724131))

(assert (= (or b!7807061 bm!724132) bm!724133))

(declare-fun m!8240096 () Bool)

(assert (=> b!7807056 m!8240096))

(declare-fun m!8240098 () Bool)

(assert (=> bm!724131 m!8240098))

(declare-fun m!8240100 () Bool)

(assert (=> bm!724133 m!8240100))

(assert (=> d!2348104 d!2348208))

(declare-fun d!2348210 () Bool)

(assert (=> d!2348210 (= (nullable!9273 lt!2675389) (nullableFct!3652 lt!2675389))))

(declare-fun bs!1966563 () Bool)

(assert (= bs!1966563 d!2348210))

(declare-fun m!8240102 () Bool)

(assert (=> bs!1966563 m!8240102))

(assert (=> b!7806368 d!2348210))

(declare-fun b!7807064 () Bool)

(declare-fun e!4621273 () Bool)

(declare-fun e!4621274 () Bool)

(assert (=> b!7807064 (= e!4621273 e!4621274)))

(declare-fun res!3109265 () Bool)

(assert (=> b!7807064 (=> (not res!3109265) (not e!4621274))))

(declare-fun lt!2675497 () Bool)

(assert (=> b!7807064 (= res!3109265 (not lt!2675497))))

(declare-fun b!7807065 () Bool)

(declare-fun res!3109266 () Bool)

(assert (=> b!7807065 (=> res!3109266 e!4621273)))

(assert (=> b!7807065 (= res!3109266 (not ((_ is ElementMatch!20889) (derivativeStep!6226 EmptyLang!20889 (head!15964 (t!388463 s!14292))))))))

(declare-fun e!4621269 () Bool)

(assert (=> b!7807065 (= e!4621269 e!4621273)))

(declare-fun b!7807067 () Bool)

(declare-fun e!4621272 () Bool)

(assert (=> b!7807067 (= e!4621272 (= (head!15964 (tail!15505 (t!388463 s!14292))) (c!1437502 (derivativeStep!6226 EmptyLang!20889 (head!15964 (t!388463 s!14292))))))))

(declare-fun b!7807068 () Bool)

(declare-fun e!4621270 () Bool)

(declare-fun call!724139 () Bool)

(assert (=> b!7807068 (= e!4621270 (= lt!2675497 call!724139))))

(declare-fun bm!724134 () Bool)

(assert (=> bm!724134 (= call!724139 (isEmpty!42257 (tail!15505 (t!388463 s!14292))))))

(declare-fun b!7807069 () Bool)

(declare-fun res!3109271 () Bool)

(assert (=> b!7807069 (=> (not res!3109271) (not e!4621272))))

(assert (=> b!7807069 (= res!3109271 (not call!724139))))

(declare-fun b!7807070 () Bool)

(assert (=> b!7807070 (= e!4621270 e!4621269)))

(declare-fun c!1437689 () Bool)

(assert (=> b!7807070 (= c!1437689 ((_ is EmptyLang!20889) (derivativeStep!6226 EmptyLang!20889 (head!15964 (t!388463 s!14292)))))))

(declare-fun b!7807071 () Bool)

(declare-fun res!3109268 () Bool)

(assert (=> b!7807071 (=> res!3109268 e!4621273)))

(assert (=> b!7807071 (= res!3109268 e!4621272)))

(declare-fun res!3109269 () Bool)

(assert (=> b!7807071 (=> (not res!3109269) (not e!4621272))))

(assert (=> b!7807071 (= res!3109269 lt!2675497)))

(declare-fun b!7807072 () Bool)

(declare-fun res!3109267 () Bool)

(assert (=> b!7807072 (=> (not res!3109267) (not e!4621272))))

(assert (=> b!7807072 (= res!3109267 (isEmpty!42257 (tail!15505 (tail!15505 (t!388463 s!14292)))))))

(declare-fun b!7807073 () Bool)

(declare-fun res!3109270 () Bool)

(declare-fun e!4621271 () Bool)

(assert (=> b!7807073 (=> res!3109270 e!4621271)))

(assert (=> b!7807073 (= res!3109270 (not (isEmpty!42257 (tail!15505 (tail!15505 (t!388463 s!14292))))))))

(declare-fun b!7807074 () Bool)

(declare-fun e!4621275 () Bool)

(assert (=> b!7807074 (= e!4621275 (nullable!9273 (derivativeStep!6226 EmptyLang!20889 (head!15964 (t!388463 s!14292)))))))

(declare-fun b!7807075 () Bool)

(assert (=> b!7807075 (= e!4621271 (not (= (head!15964 (tail!15505 (t!388463 s!14292))) (c!1437502 (derivativeStep!6226 EmptyLang!20889 (head!15964 (t!388463 s!14292)))))))))

(declare-fun b!7807066 () Bool)

(assert (=> b!7807066 (= e!4621275 (matchR!10349 (derivativeStep!6226 (derivativeStep!6226 EmptyLang!20889 (head!15964 (t!388463 s!14292))) (head!15964 (tail!15505 (t!388463 s!14292)))) (tail!15505 (tail!15505 (t!388463 s!14292)))))))

(declare-fun d!2348212 () Bool)

(assert (=> d!2348212 e!4621270))

(declare-fun c!1437687 () Bool)

(assert (=> d!2348212 (= c!1437687 ((_ is EmptyExpr!20889) (derivativeStep!6226 EmptyLang!20889 (head!15964 (t!388463 s!14292)))))))

(assert (=> d!2348212 (= lt!2675497 e!4621275)))

(declare-fun c!1437688 () Bool)

(assert (=> d!2348212 (= c!1437688 (isEmpty!42257 (tail!15505 (t!388463 s!14292))))))

(assert (=> d!2348212 (validRegex!11303 (derivativeStep!6226 EmptyLang!20889 (head!15964 (t!388463 s!14292))))))

(assert (=> d!2348212 (= (matchR!10349 (derivativeStep!6226 EmptyLang!20889 (head!15964 (t!388463 s!14292))) (tail!15505 (t!388463 s!14292))) lt!2675497)))

(declare-fun b!7807076 () Bool)

(assert (=> b!7807076 (= e!4621274 e!4621271)))

(declare-fun res!3109272 () Bool)

(assert (=> b!7807076 (=> res!3109272 e!4621271)))

(assert (=> b!7807076 (= res!3109272 call!724139)))

(declare-fun b!7807077 () Bool)

(assert (=> b!7807077 (= e!4621269 (not lt!2675497))))

(assert (= (and d!2348212 c!1437688) b!7807074))

(assert (= (and d!2348212 (not c!1437688)) b!7807066))

(assert (= (and d!2348212 c!1437687) b!7807068))

(assert (= (and d!2348212 (not c!1437687)) b!7807070))

(assert (= (and b!7807070 c!1437689) b!7807077))

(assert (= (and b!7807070 (not c!1437689)) b!7807065))

(assert (= (and b!7807065 (not res!3109266)) b!7807071))

(assert (= (and b!7807071 res!3109269) b!7807069))

(assert (= (and b!7807069 res!3109271) b!7807072))

(assert (= (and b!7807072 res!3109267) b!7807067))

(assert (= (and b!7807071 (not res!3109268)) b!7807064))

(assert (= (and b!7807064 res!3109265) b!7807076))

(assert (= (and b!7807076 (not res!3109272)) b!7807073))

(assert (= (and b!7807073 (not res!3109270)) b!7807075))

(assert (= (or b!7807068 b!7807069 b!7807076) bm!724134))

(assert (=> b!7807066 m!8239612))

(assert (=> b!7807066 m!8239926))

(assert (=> b!7807066 m!8239696))

(assert (=> b!7807066 m!8239926))

(declare-fun m!8240110 () Bool)

(assert (=> b!7807066 m!8240110))

(assert (=> b!7807066 m!8239612))

(assert (=> b!7807066 m!8239930))

(assert (=> b!7807066 m!8240110))

(assert (=> b!7807066 m!8239930))

(declare-fun m!8240112 () Bool)

(assert (=> b!7807066 m!8240112))

(assert (=> d!2348212 m!8239612))

(assert (=> d!2348212 m!8239620))

(assert (=> d!2348212 m!8239696))

(declare-fun m!8240114 () Bool)

(assert (=> d!2348212 m!8240114))

(assert (=> b!7807075 m!8239612))

(assert (=> b!7807075 m!8239926))

(assert (=> b!7807072 m!8239612))

(assert (=> b!7807072 m!8239930))

(assert (=> b!7807072 m!8239930))

(assert (=> b!7807072 m!8239936))

(assert (=> b!7807073 m!8239612))

(assert (=> b!7807073 m!8239930))

(assert (=> b!7807073 m!8239930))

(assert (=> b!7807073 m!8239936))

(assert (=> b!7807067 m!8239612))

(assert (=> b!7807067 m!8239926))

(assert (=> bm!724134 m!8239612))

(assert (=> bm!724134 m!8239620))

(assert (=> b!7807074 m!8239696))

(declare-fun m!8240116 () Bool)

(assert (=> b!7807074 m!8240116))

(assert (=> b!7806490 d!2348212))

(declare-fun b!7807096 () Bool)

(declare-fun e!4621285 () Regex!20889)

(assert (=> b!7807096 (= e!4621285 (ite (= (head!15964 (t!388463 s!14292)) (c!1437502 EmptyLang!20889)) EmptyExpr!20889 EmptyLang!20889))))

(declare-fun b!7807097 () Bool)

(declare-fun e!4621289 () Regex!20889)

(declare-fun call!724142 () Regex!20889)

(assert (=> b!7807097 (= e!4621289 (Union!20889 (Concat!29734 call!724142 (regTwo!42290 EmptyLang!20889)) EmptyLang!20889))))

(declare-fun b!7807098 () Bool)

(declare-fun e!4621286 () Regex!20889)

(declare-fun e!4621288 () Regex!20889)

(assert (=> b!7807098 (= e!4621286 e!4621288)))

(declare-fun c!1437695 () Bool)

(assert (=> b!7807098 (= c!1437695 ((_ is Star!20889) EmptyLang!20889))))

(declare-fun b!7807099 () Bool)

(declare-fun e!4621287 () Regex!20889)

(assert (=> b!7807099 (= e!4621287 EmptyLang!20889)))

(declare-fun b!7807100 () Bool)

(declare-fun call!724143 () Regex!20889)

(assert (=> b!7807100 (= e!4621288 (Concat!29734 call!724143 EmptyLang!20889))))

(declare-fun b!7807101 () Bool)

(assert (=> b!7807101 (= e!4621287 e!4621285)))

(declare-fun c!1437698 () Bool)

(assert (=> b!7807101 (= c!1437698 ((_ is ElementMatch!20889) EmptyLang!20889))))

(declare-fun bm!724136 () Bool)

(assert (=> bm!724136 (= call!724142 call!724143)))

(declare-fun b!7807102 () Bool)

(declare-fun call!724144 () Regex!20889)

(assert (=> b!7807102 (= e!4621289 (Union!20889 (Concat!29734 call!724144 (regTwo!42290 EmptyLang!20889)) call!724142))))

(declare-fun b!7807103 () Bool)

(declare-fun c!1437697 () Bool)

(assert (=> b!7807103 (= c!1437697 (nullable!9273 (regOne!42290 EmptyLang!20889)))))

(assert (=> b!7807103 (= e!4621288 e!4621289)))

(declare-fun d!2348222 () Bool)

(declare-fun lt!2675501 () Regex!20889)

(assert (=> d!2348222 (validRegex!11303 lt!2675501)))

(assert (=> d!2348222 (= lt!2675501 e!4621287)))

(declare-fun c!1437696 () Bool)

(assert (=> d!2348222 (= c!1437696 (or ((_ is EmptyExpr!20889) EmptyLang!20889) ((_ is EmptyLang!20889) EmptyLang!20889)))))

(assert (=> d!2348222 (validRegex!11303 EmptyLang!20889)))

(assert (=> d!2348222 (= (derivativeStep!6226 EmptyLang!20889 (head!15964 (t!388463 s!14292))) lt!2675501)))

(declare-fun bm!724137 () Bool)

(declare-fun c!1437699 () Bool)

(assert (=> bm!724137 (= call!724144 (derivativeStep!6226 (ite c!1437699 (regOne!42291 EmptyLang!20889) (regOne!42290 EmptyLang!20889)) (head!15964 (t!388463 s!14292))))))

(declare-fun b!7807104 () Bool)

(assert (=> b!7807104 (= c!1437699 ((_ is Union!20889) EmptyLang!20889))))

(assert (=> b!7807104 (= e!4621285 e!4621286)))

(declare-fun bm!724138 () Bool)

(declare-fun call!724141 () Regex!20889)

(assert (=> bm!724138 (= call!724143 call!724141)))

(declare-fun bm!724139 () Bool)

(assert (=> bm!724139 (= call!724141 (derivativeStep!6226 (ite c!1437699 (regTwo!42291 EmptyLang!20889) (ite c!1437695 (reg!21218 EmptyLang!20889) (ite c!1437697 (regTwo!42290 EmptyLang!20889) (regOne!42290 EmptyLang!20889)))) (head!15964 (t!388463 s!14292))))))

(declare-fun b!7807105 () Bool)

(assert (=> b!7807105 (= e!4621286 (Union!20889 call!724144 call!724141))))

(assert (= (and d!2348222 c!1437696) b!7807099))

(assert (= (and d!2348222 (not c!1437696)) b!7807101))

(assert (= (and b!7807101 c!1437698) b!7807096))

(assert (= (and b!7807101 (not c!1437698)) b!7807104))

(assert (= (and b!7807104 c!1437699) b!7807105))

(assert (= (and b!7807104 (not c!1437699)) b!7807098))

(assert (= (and b!7807098 c!1437695) b!7807100))

(assert (= (and b!7807098 (not c!1437695)) b!7807103))

(assert (= (and b!7807103 c!1437697) b!7807102))

(assert (= (and b!7807103 (not c!1437697)) b!7807097))

(assert (= (or b!7807102 b!7807097) bm!724136))

(assert (= (or b!7807100 bm!724136) bm!724138))

(assert (= (or b!7807105 bm!724138) bm!724139))

(assert (= (or b!7807105 b!7807102) bm!724137))

(declare-fun m!8240118 () Bool)

(assert (=> b!7807103 m!8240118))

(declare-fun m!8240120 () Bool)

(assert (=> d!2348222 m!8240120))

(assert (=> d!2348222 m!8239700))

(assert (=> bm!724137 m!8239608))

(declare-fun m!8240124 () Bool)

(assert (=> bm!724137 m!8240124))

(assert (=> bm!724139 m!8239608))

(declare-fun m!8240128 () Bool)

(assert (=> bm!724139 m!8240128))

(assert (=> b!7806490 d!2348222))

(assert (=> b!7806490 d!2348126))

(assert (=> b!7806490 d!2348128))

(declare-fun d!2348224 () Bool)

(declare-fun lt!2675502 () Regex!20889)

(assert (=> d!2348224 (validRegex!11303 lt!2675502)))

(declare-fun e!4621290 () Regex!20889)

(assert (=> d!2348224 (= lt!2675502 e!4621290)))

(declare-fun c!1437700 () Bool)

(assert (=> d!2348224 (= c!1437700 ((_ is Cons!73604) (t!388463 (t!388463 s!14292))))))

(assert (=> d!2348224 (validRegex!11303 (derivativeStep!6226 EmptyLang!20889 (h!80052 (t!388463 s!14292))))))

(assert (=> d!2348224 (= (derivative!571 (derivativeStep!6226 EmptyLang!20889 (h!80052 (t!388463 s!14292))) (t!388463 (t!388463 s!14292))) lt!2675502)))

(declare-fun b!7807106 () Bool)

(assert (=> b!7807106 (= e!4621290 (derivative!571 (derivativeStep!6226 (derivativeStep!6226 EmptyLang!20889 (h!80052 (t!388463 s!14292))) (h!80052 (t!388463 (t!388463 s!14292)))) (t!388463 (t!388463 (t!388463 s!14292)))))))

(declare-fun b!7807107 () Bool)

(assert (=> b!7807107 (= e!4621290 (derivativeStep!6226 EmptyLang!20889 (h!80052 (t!388463 s!14292))))))

(assert (= (and d!2348224 c!1437700) b!7807106))

(assert (= (and d!2348224 (not c!1437700)) b!7807107))

(declare-fun m!8240140 () Bool)

(assert (=> d!2348224 m!8240140))

(assert (=> d!2348224 m!8239828))

(declare-fun m!8240142 () Bool)

(assert (=> d!2348224 m!8240142))

(assert (=> b!7807106 m!8239828))

(declare-fun m!8240144 () Bool)

(assert (=> b!7807106 m!8240144))

(assert (=> b!7807106 m!8240144))

(declare-fun m!8240146 () Bool)

(assert (=> b!7807106 m!8240146))

(assert (=> b!7806737 d!2348224))

(declare-fun b!7807118 () Bool)

(declare-fun e!4621296 () Regex!20889)

(assert (=> b!7807118 (= e!4621296 (ite (= (h!80052 (t!388463 s!14292)) (c!1437502 EmptyLang!20889)) EmptyExpr!20889 EmptyLang!20889))))

(declare-fun b!7807119 () Bool)

(declare-fun e!4621300 () Regex!20889)

(declare-fun call!724150 () Regex!20889)

(assert (=> b!7807119 (= e!4621300 (Union!20889 (Concat!29734 call!724150 (regTwo!42290 EmptyLang!20889)) EmptyLang!20889))))

(declare-fun b!7807120 () Bool)

(declare-fun e!4621297 () Regex!20889)

(declare-fun e!4621299 () Regex!20889)

(assert (=> b!7807120 (= e!4621297 e!4621299)))

(declare-fun c!1437706 () Bool)

(assert (=> b!7807120 (= c!1437706 ((_ is Star!20889) EmptyLang!20889))))

(declare-fun b!7807121 () Bool)

(declare-fun e!4621298 () Regex!20889)

(assert (=> b!7807121 (= e!4621298 EmptyLang!20889)))

(declare-fun b!7807122 () Bool)

(declare-fun call!724151 () Regex!20889)

(assert (=> b!7807122 (= e!4621299 (Concat!29734 call!724151 EmptyLang!20889))))

(declare-fun b!7807123 () Bool)

(assert (=> b!7807123 (= e!4621298 e!4621296)))

(declare-fun c!1437709 () Bool)

(assert (=> b!7807123 (= c!1437709 ((_ is ElementMatch!20889) EmptyLang!20889))))

(declare-fun bm!724144 () Bool)

(assert (=> bm!724144 (= call!724150 call!724151)))

(declare-fun b!7807124 () Bool)

(declare-fun call!724152 () Regex!20889)

(assert (=> b!7807124 (= e!4621300 (Union!20889 (Concat!29734 call!724152 (regTwo!42290 EmptyLang!20889)) call!724150))))

(declare-fun b!7807125 () Bool)

(declare-fun c!1437708 () Bool)

(assert (=> b!7807125 (= c!1437708 (nullable!9273 (regOne!42290 EmptyLang!20889)))))

(assert (=> b!7807125 (= e!4621299 e!4621300)))

(declare-fun d!2348228 () Bool)

(declare-fun lt!2675504 () Regex!20889)

(assert (=> d!2348228 (validRegex!11303 lt!2675504)))

(assert (=> d!2348228 (= lt!2675504 e!4621298)))

(declare-fun c!1437707 () Bool)

(assert (=> d!2348228 (= c!1437707 (or ((_ is EmptyExpr!20889) EmptyLang!20889) ((_ is EmptyLang!20889) EmptyLang!20889)))))

(assert (=> d!2348228 (validRegex!11303 EmptyLang!20889)))

(assert (=> d!2348228 (= (derivativeStep!6226 EmptyLang!20889 (h!80052 (t!388463 s!14292))) lt!2675504)))

(declare-fun bm!724145 () Bool)

(declare-fun c!1437710 () Bool)

(assert (=> bm!724145 (= call!724152 (derivativeStep!6226 (ite c!1437710 (regOne!42291 EmptyLang!20889) (regOne!42290 EmptyLang!20889)) (h!80052 (t!388463 s!14292))))))

(declare-fun b!7807126 () Bool)

(assert (=> b!7807126 (= c!1437710 ((_ is Union!20889) EmptyLang!20889))))

(assert (=> b!7807126 (= e!4621296 e!4621297)))

(declare-fun bm!724146 () Bool)

(declare-fun call!724149 () Regex!20889)

(assert (=> bm!724146 (= call!724151 call!724149)))

(declare-fun bm!724147 () Bool)

(assert (=> bm!724147 (= call!724149 (derivativeStep!6226 (ite c!1437710 (regTwo!42291 EmptyLang!20889) (ite c!1437706 (reg!21218 EmptyLang!20889) (ite c!1437708 (regTwo!42290 EmptyLang!20889) (regOne!42290 EmptyLang!20889)))) (h!80052 (t!388463 s!14292))))))

(declare-fun b!7807127 () Bool)

(assert (=> b!7807127 (= e!4621297 (Union!20889 call!724152 call!724149))))

(assert (= (and d!2348228 c!1437707) b!7807121))

(assert (= (and d!2348228 (not c!1437707)) b!7807123))

(assert (= (and b!7807123 c!1437709) b!7807118))

(assert (= (and b!7807123 (not c!1437709)) b!7807126))

(assert (= (and b!7807126 c!1437710) b!7807127))

(assert (= (and b!7807126 (not c!1437710)) b!7807120))

(assert (= (and b!7807120 c!1437706) b!7807122))

(assert (= (and b!7807120 (not c!1437706)) b!7807125))

(assert (= (and b!7807125 c!1437708) b!7807124))

(assert (= (and b!7807125 (not c!1437708)) b!7807119))

(assert (= (or b!7807124 b!7807119) bm!724144))

(assert (= (or b!7807122 bm!724144) bm!724146))

(assert (= (or b!7807127 bm!724146) bm!724147))

(assert (= (or b!7807127 b!7807124) bm!724145))

(assert (=> b!7807125 m!8240118))

(declare-fun m!8240152 () Bool)

(assert (=> d!2348228 m!8240152))

(assert (=> d!2348228 m!8239700))

(declare-fun m!8240156 () Bool)

(assert (=> bm!724145 m!8240156))

(declare-fun m!8240160 () Bool)

(assert (=> bm!724147 m!8240160))

(assert (=> b!7806737 d!2348228))

(assert (=> d!2348060 d!2348154))

(assert (=> d!2348060 d!2348166))

(declare-fun d!2348232 () Bool)

(assert (=> d!2348232 (= (nullable!9273 (reg!21218 r2!6217)) (nullableFct!3652 (reg!21218 r2!6217)))))

(declare-fun bs!1966565 () Bool)

(assert (= bs!1966565 d!2348232))

(declare-fun m!8240162 () Bool)

(assert (=> bs!1966565 m!8240162))

(assert (=> b!7806762 d!2348232))

(declare-fun b!7807128 () Bool)

(declare-fun e!4621305 () Bool)

(declare-fun e!4621306 () Bool)

(assert (=> b!7807128 (= e!4621305 e!4621306)))

(declare-fun res!3109281 () Bool)

(assert (=> b!7807128 (=> (not res!3109281) (not e!4621306))))

(declare-fun lt!2675505 () Bool)

(assert (=> b!7807128 (= res!3109281 (not lt!2675505))))

(declare-fun b!7807129 () Bool)

(declare-fun res!3109282 () Bool)

(assert (=> b!7807129 (=> res!3109282 e!4621305)))

(assert (=> b!7807129 (= res!3109282 (not ((_ is ElementMatch!20889) (derivativeStep!6226 lt!2675393 (head!15964 s!14292)))))))

(declare-fun e!4621301 () Bool)

(assert (=> b!7807129 (= e!4621301 e!4621305)))

(declare-fun b!7807131 () Bool)

(declare-fun e!4621304 () Bool)

(assert (=> b!7807131 (= e!4621304 (= (head!15964 (tail!15505 s!14292)) (c!1437502 (derivativeStep!6226 lt!2675393 (head!15964 s!14292)))))))

(declare-fun b!7807132 () Bool)

(declare-fun e!4621302 () Bool)

(declare-fun call!724153 () Bool)

(assert (=> b!7807132 (= e!4621302 (= lt!2675505 call!724153))))

(declare-fun bm!724148 () Bool)

(assert (=> bm!724148 (= call!724153 (isEmpty!42257 (tail!15505 s!14292)))))

(declare-fun b!7807133 () Bool)

(declare-fun res!3109287 () Bool)

(assert (=> b!7807133 (=> (not res!3109287) (not e!4621304))))

(assert (=> b!7807133 (= res!3109287 (not call!724153))))

(declare-fun b!7807134 () Bool)

(assert (=> b!7807134 (= e!4621302 e!4621301)))

(declare-fun c!1437713 () Bool)

(assert (=> b!7807134 (= c!1437713 ((_ is EmptyLang!20889) (derivativeStep!6226 lt!2675393 (head!15964 s!14292))))))

(declare-fun b!7807135 () Bool)

(declare-fun res!3109284 () Bool)

(assert (=> b!7807135 (=> res!3109284 e!4621305)))

(assert (=> b!7807135 (= res!3109284 e!4621304)))

(declare-fun res!3109285 () Bool)

(assert (=> b!7807135 (=> (not res!3109285) (not e!4621304))))

(assert (=> b!7807135 (= res!3109285 lt!2675505)))

(declare-fun b!7807136 () Bool)

(declare-fun res!3109283 () Bool)

(assert (=> b!7807136 (=> (not res!3109283) (not e!4621304))))

(assert (=> b!7807136 (= res!3109283 (isEmpty!42257 (tail!15505 (tail!15505 s!14292))))))

(declare-fun b!7807137 () Bool)

(declare-fun res!3109286 () Bool)

(declare-fun e!4621303 () Bool)

(assert (=> b!7807137 (=> res!3109286 e!4621303)))

(assert (=> b!7807137 (= res!3109286 (not (isEmpty!42257 (tail!15505 (tail!15505 s!14292)))))))

(declare-fun b!7807138 () Bool)

(declare-fun e!4621307 () Bool)

(assert (=> b!7807138 (= e!4621307 (nullable!9273 (derivativeStep!6226 lt!2675393 (head!15964 s!14292))))))

(declare-fun b!7807139 () Bool)

(assert (=> b!7807139 (= e!4621303 (not (= (head!15964 (tail!15505 s!14292)) (c!1437502 (derivativeStep!6226 lt!2675393 (head!15964 s!14292))))))))

(declare-fun b!7807130 () Bool)

(assert (=> b!7807130 (= e!4621307 (matchR!10349 (derivativeStep!6226 (derivativeStep!6226 lt!2675393 (head!15964 s!14292)) (head!15964 (tail!15505 s!14292))) (tail!15505 (tail!15505 s!14292))))))

(declare-fun d!2348236 () Bool)

(assert (=> d!2348236 e!4621302))

(declare-fun c!1437711 () Bool)

(assert (=> d!2348236 (= c!1437711 ((_ is EmptyExpr!20889) (derivativeStep!6226 lt!2675393 (head!15964 s!14292))))))

(assert (=> d!2348236 (= lt!2675505 e!4621307)))

(declare-fun c!1437712 () Bool)

(assert (=> d!2348236 (= c!1437712 (isEmpty!42257 (tail!15505 s!14292)))))

(assert (=> d!2348236 (validRegex!11303 (derivativeStep!6226 lt!2675393 (head!15964 s!14292)))))

(assert (=> d!2348236 (= (matchR!10349 (derivativeStep!6226 lt!2675393 (head!15964 s!14292)) (tail!15505 s!14292)) lt!2675505)))

(declare-fun b!7807140 () Bool)

(assert (=> b!7807140 (= e!4621306 e!4621303)))

(declare-fun res!3109288 () Bool)

(assert (=> b!7807140 (=> res!3109288 e!4621303)))

(assert (=> b!7807140 (= res!3109288 call!724153)))

(declare-fun b!7807141 () Bool)

(assert (=> b!7807141 (= e!4621301 (not lt!2675505))))

(assert (= (and d!2348236 c!1437712) b!7807138))

(assert (= (and d!2348236 (not c!1437712)) b!7807130))

(assert (= (and d!2348236 c!1437711) b!7807132))

(assert (= (and d!2348236 (not c!1437711)) b!7807134))

(assert (= (and b!7807134 c!1437713) b!7807141))

(assert (= (and b!7807134 (not c!1437713)) b!7807129))

(assert (= (and b!7807129 (not res!3109282)) b!7807135))

(assert (= (and b!7807135 res!3109285) b!7807133))

(assert (= (and b!7807133 res!3109287) b!7807136))

(assert (= (and b!7807136 res!3109283) b!7807131))

(assert (= (and b!7807135 (not res!3109284)) b!7807128))

(assert (= (and b!7807128 res!3109281) b!7807140))

(assert (= (and b!7807140 (not res!3109288)) b!7807137))

(assert (= (and b!7807137 (not res!3109286)) b!7807139))

(assert (= (or b!7807132 b!7807133 b!7807140) bm!724148))

(assert (=> b!7807130 m!8239816))

(declare-fun m!8240168 () Bool)

(assert (=> b!7807130 m!8240168))

(assert (=> b!7807130 m!8239814))

(assert (=> b!7807130 m!8240168))

(declare-fun m!8240170 () Bool)

(assert (=> b!7807130 m!8240170))

(assert (=> b!7807130 m!8239816))

(declare-fun m!8240172 () Bool)

(assert (=> b!7807130 m!8240172))

(assert (=> b!7807130 m!8240170))

(assert (=> b!7807130 m!8240172))

(declare-fun m!8240174 () Bool)

(assert (=> b!7807130 m!8240174))

(assert (=> d!2348236 m!8239816))

(assert (=> d!2348236 m!8239822))

(assert (=> d!2348236 m!8239814))

(declare-fun m!8240176 () Bool)

(assert (=> d!2348236 m!8240176))

(assert (=> b!7807139 m!8239816))

(assert (=> b!7807139 m!8240168))

(assert (=> b!7807136 m!8239816))

(assert (=> b!7807136 m!8240172))

(assert (=> b!7807136 m!8240172))

(declare-fun m!8240178 () Bool)

(assert (=> b!7807136 m!8240178))

(assert (=> b!7807137 m!8239816))

(assert (=> b!7807137 m!8240172))

(assert (=> b!7807137 m!8240172))

(assert (=> b!7807137 m!8240178))

(assert (=> b!7807131 m!8239816))

(assert (=> b!7807131 m!8240168))

(assert (=> bm!724148 m!8239816))

(assert (=> bm!724148 m!8239822))

(assert (=> b!7807138 m!8239814))

(declare-fun m!8240180 () Bool)

(assert (=> b!7807138 m!8240180))

(assert (=> b!7806721 d!2348236))

(declare-fun b!7807156 () Bool)

(declare-fun e!4621315 () Regex!20889)

(assert (=> b!7807156 (= e!4621315 (ite (= (head!15964 s!14292) (c!1437502 lt!2675393)) EmptyExpr!20889 EmptyLang!20889))))

(declare-fun b!7807157 () Bool)

(declare-fun e!4621319 () Regex!20889)

(declare-fun call!724156 () Regex!20889)

(assert (=> b!7807157 (= e!4621319 (Union!20889 (Concat!29734 call!724156 (regTwo!42290 lt!2675393)) EmptyLang!20889))))

(declare-fun b!7807158 () Bool)

(declare-fun e!4621316 () Regex!20889)

(declare-fun e!4621318 () Regex!20889)

(assert (=> b!7807158 (= e!4621316 e!4621318)))

(declare-fun c!1437717 () Bool)

(assert (=> b!7807158 (= c!1437717 ((_ is Star!20889) lt!2675393))))

(declare-fun b!7807159 () Bool)

(declare-fun e!4621317 () Regex!20889)

(assert (=> b!7807159 (= e!4621317 EmptyLang!20889)))

(declare-fun b!7807160 () Bool)

(declare-fun call!724157 () Regex!20889)

(assert (=> b!7807160 (= e!4621318 (Concat!29734 call!724157 lt!2675393))))

(declare-fun b!7807161 () Bool)

(assert (=> b!7807161 (= e!4621317 e!4621315)))

(declare-fun c!1437720 () Bool)

(assert (=> b!7807161 (= c!1437720 ((_ is ElementMatch!20889) lt!2675393))))

(declare-fun bm!724150 () Bool)

(assert (=> bm!724150 (= call!724156 call!724157)))

(declare-fun b!7807162 () Bool)

(declare-fun call!724158 () Regex!20889)

(assert (=> b!7807162 (= e!4621319 (Union!20889 (Concat!29734 call!724158 (regTwo!42290 lt!2675393)) call!724156))))

(declare-fun b!7807163 () Bool)

(declare-fun c!1437719 () Bool)

(assert (=> b!7807163 (= c!1437719 (nullable!9273 (regOne!42290 lt!2675393)))))

(assert (=> b!7807163 (= e!4621318 e!4621319)))

(declare-fun d!2348250 () Bool)

(declare-fun lt!2675507 () Regex!20889)

(assert (=> d!2348250 (validRegex!11303 lt!2675507)))

(assert (=> d!2348250 (= lt!2675507 e!4621317)))

(declare-fun c!1437718 () Bool)

(assert (=> d!2348250 (= c!1437718 (or ((_ is EmptyExpr!20889) lt!2675393) ((_ is EmptyLang!20889) lt!2675393)))))

(assert (=> d!2348250 (validRegex!11303 lt!2675393)))

(assert (=> d!2348250 (= (derivativeStep!6226 lt!2675393 (head!15964 s!14292)) lt!2675507)))

(declare-fun c!1437721 () Bool)

(declare-fun bm!724151 () Bool)

(assert (=> bm!724151 (= call!724158 (derivativeStep!6226 (ite c!1437721 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393)) (head!15964 s!14292)))))

(declare-fun b!7807164 () Bool)

(assert (=> b!7807164 (= c!1437721 ((_ is Union!20889) lt!2675393))))

(assert (=> b!7807164 (= e!4621315 e!4621316)))

(declare-fun bm!724152 () Bool)

(declare-fun call!724155 () Regex!20889)

(assert (=> bm!724152 (= call!724157 call!724155)))

(declare-fun bm!724153 () Bool)

(assert (=> bm!724153 (= call!724155 (derivativeStep!6226 (ite c!1437721 (regTwo!42291 lt!2675393) (ite c!1437717 (reg!21218 lt!2675393) (ite c!1437719 (regTwo!42290 lt!2675393) (regOne!42290 lt!2675393)))) (head!15964 s!14292)))))

(declare-fun b!7807165 () Bool)

(assert (=> b!7807165 (= e!4621316 (Union!20889 call!724158 call!724155))))

(assert (= (and d!2348250 c!1437718) b!7807159))

(assert (= (and d!2348250 (not c!1437718)) b!7807161))

(assert (= (and b!7807161 c!1437720) b!7807156))

(assert (= (and b!7807161 (not c!1437720)) b!7807164))

(assert (= (and b!7807164 c!1437721) b!7807165))

(assert (= (and b!7807164 (not c!1437721)) b!7807158))

(assert (= (and b!7807158 c!1437717) b!7807160))

(assert (= (and b!7807158 (not c!1437717)) b!7807163))

(assert (= (and b!7807163 c!1437719) b!7807162))

(assert (= (and b!7807163 (not c!1437719)) b!7807157))

(assert (= (or b!7807162 b!7807157) bm!724150))

(assert (= (or b!7807160 bm!724150) bm!724152))

(assert (= (or b!7807165 bm!724152) bm!724153))

(assert (= (or b!7807165 b!7807162) bm!724151))

(assert (=> b!7807163 m!8239686))

(declare-fun m!8240182 () Bool)

(assert (=> d!2348250 m!8240182))

(assert (=> d!2348250 m!8239690))

(assert (=> bm!724151 m!8239812))

(declare-fun m!8240186 () Bool)

(assert (=> bm!724151 m!8240186))

(assert (=> bm!724153 m!8239812))

(declare-fun m!8240190 () Bool)

(assert (=> bm!724153 m!8240190))

(assert (=> b!7806721 d!2348250))

(assert (=> b!7806721 d!2348164))

(assert (=> b!7806721 d!2348180))

(assert (=> b!7806366 d!2348146))

(assert (=> b!7806366 d!2348128))

(declare-fun b!7807166 () Bool)

(declare-fun e!4621320 () Regex!20889)

(assert (=> b!7807166 (= e!4621320 (ite (= (h!80052 s!14292) (c!1437502 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279)))))) EmptyExpr!20889 EmptyLang!20889))))

(declare-fun e!4621324 () Regex!20889)

(declare-fun b!7807167 () Bool)

(declare-fun call!724160 () Regex!20889)

(assert (=> b!7807167 (= e!4621324 (Union!20889 (Concat!29734 call!724160 (regTwo!42290 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279)))))) EmptyLang!20889))))

(declare-fun b!7807168 () Bool)

(declare-fun e!4621321 () Regex!20889)

(declare-fun e!4621323 () Regex!20889)

(assert (=> b!7807168 (= e!4621321 e!4621323)))

(declare-fun c!1437722 () Bool)

(assert (=> b!7807168 (= c!1437722 ((_ is Star!20889) (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279))))))))

(declare-fun b!7807169 () Bool)

(declare-fun e!4621322 () Regex!20889)

(assert (=> b!7807169 (= e!4621322 EmptyLang!20889)))

(declare-fun b!7807170 () Bool)

(declare-fun call!724161 () Regex!20889)

(assert (=> b!7807170 (= e!4621323 (Concat!29734 call!724161 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279))))))))

(declare-fun b!7807171 () Bool)

(assert (=> b!7807171 (= e!4621322 e!4621320)))

(declare-fun c!1437725 () Bool)

(assert (=> b!7807171 (= c!1437725 ((_ is ElementMatch!20889) (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279))))))))

(declare-fun bm!724154 () Bool)

(assert (=> bm!724154 (= call!724160 call!724161)))

(declare-fun call!724162 () Regex!20889)

(declare-fun b!7807172 () Bool)

(assert (=> b!7807172 (= e!4621324 (Union!20889 (Concat!29734 call!724162 (regTwo!42290 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279)))))) call!724160))))

(declare-fun b!7807173 () Bool)

(declare-fun c!1437724 () Bool)

(assert (=> b!7807173 (= c!1437724 (nullable!9273 (regOne!42290 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279)))))))))

(assert (=> b!7807173 (= e!4621323 e!4621324)))

(declare-fun d!2348252 () Bool)

(declare-fun lt!2675508 () Regex!20889)

(assert (=> d!2348252 (validRegex!11303 lt!2675508)))

(assert (=> d!2348252 (= lt!2675508 e!4621322)))

(declare-fun c!1437723 () Bool)

(assert (=> d!2348252 (= c!1437723 (or ((_ is EmptyExpr!20889) (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279))))) ((_ is EmptyLang!20889) (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279)))))))))

(assert (=> d!2348252 (validRegex!11303 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279)))))))

(assert (=> d!2348252 (= (derivativeStep!6226 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279)))) (h!80052 s!14292)) lt!2675508)))

(declare-fun bm!724155 () Bool)

(declare-fun c!1437726 () Bool)

(assert (=> bm!724155 (= call!724162 (derivativeStep!6226 (ite c!1437726 (regOne!42291 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279))))) (regOne!42290 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279)))))) (h!80052 s!14292)))))

(declare-fun b!7807174 () Bool)

(assert (=> b!7807174 (= c!1437726 ((_ is Union!20889) (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279))))))))

(assert (=> b!7807174 (= e!4621320 e!4621321)))

(declare-fun bm!724156 () Bool)

(declare-fun call!724159 () Regex!20889)

(assert (=> bm!724156 (= call!724161 call!724159)))

(declare-fun bm!724157 () Bool)

(assert (=> bm!724157 (= call!724159 (derivativeStep!6226 (ite c!1437726 (regTwo!42291 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279))))) (ite c!1437722 (reg!21218 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279))))) (ite c!1437724 (regTwo!42290 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279))))) (regOne!42290 (ite c!1437583 (regTwo!42291 r1!6279) (ite c!1437579 (reg!21218 r1!6279) (ite c!1437581 (regTwo!42290 r1!6279) (regOne!42290 r1!6279)))))))) (h!80052 s!14292)))))

(declare-fun b!7807175 () Bool)

(assert (=> b!7807175 (= e!4621321 (Union!20889 call!724162 call!724159))))

(assert (= (and d!2348252 c!1437723) b!7807169))

(assert (= (and d!2348252 (not c!1437723)) b!7807171))

(assert (= (and b!7807171 c!1437725) b!7807166))

(assert (= (and b!7807171 (not c!1437725)) b!7807174))

(assert (= (and b!7807174 c!1437726) b!7807175))

(assert (= (and b!7807174 (not c!1437726)) b!7807168))

(assert (= (and b!7807168 c!1437722) b!7807170))

(assert (= (and b!7807168 (not c!1437722)) b!7807173))

(assert (= (and b!7807173 c!1437724) b!7807172))

(assert (= (and b!7807173 (not c!1437724)) b!7807167))

(assert (= (or b!7807172 b!7807167) bm!724154))

(assert (= (or b!7807170 bm!724154) bm!724156))

(assert (= (or b!7807175 bm!724156) bm!724157))

(assert (= (or b!7807175 b!7807172) bm!724155))

(declare-fun m!8240192 () Bool)

(assert (=> b!7807173 m!8240192))

(declare-fun m!8240194 () Bool)

(assert (=> d!2348252 m!8240194))

(declare-fun m!8240196 () Bool)

(assert (=> d!2348252 m!8240196))

(declare-fun m!8240198 () Bool)

(assert (=> bm!724155 m!8240198))

(declare-fun m!8240200 () Bool)

(assert (=> bm!724157 m!8240200))

(assert (=> bm!724063 d!2348252))

(declare-fun d!2348256 () Bool)

(assert (=> d!2348256 (= (isEmpty!42257 s!14292) ((_ is Nil!73604) s!14292))))

(assert (=> d!2348086 d!2348256))

(declare-fun b!7807181 () Bool)

(declare-fun e!4621331 () Bool)

(declare-fun e!4621327 () Bool)

(assert (=> b!7807181 (= e!4621331 e!4621327)))

(declare-fun c!1437729 () Bool)

(assert (=> b!7807181 (= c!1437729 ((_ is Union!20889) lt!2675393))))

(declare-fun b!7807182 () Bool)

(declare-fun e!4621329 () Bool)

(assert (=> b!7807182 (= e!4621329 e!4621331)))

(declare-fun c!1437730 () Bool)

(assert (=> b!7807182 (= c!1437730 ((_ is Star!20889) lt!2675393))))

(declare-fun b!7807183 () Bool)

(declare-fun e!4621328 () Bool)

(assert (=> b!7807183 (= e!4621331 e!4621328)))

(declare-fun res!3109298 () Bool)

(assert (=> b!7807183 (= res!3109298 (not (nullable!9273 (reg!21218 lt!2675393))))))

(assert (=> b!7807183 (=> (not res!3109298) (not e!4621328))))

(declare-fun b!7807184 () Bool)

(declare-fun e!4621333 () Bool)

(declare-fun e!4621332 () Bool)

(assert (=> b!7807184 (= e!4621333 e!4621332)))

(declare-fun res!3109300 () Bool)

(assert (=> b!7807184 (=> (not res!3109300) (not e!4621332))))

(declare-fun call!724165 () Bool)

(assert (=> b!7807184 (= res!3109300 call!724165)))

(declare-fun b!7807185 () Bool)

(declare-fun res!3109299 () Bool)

(assert (=> b!7807185 (=> res!3109299 e!4621333)))

(assert (=> b!7807185 (= res!3109299 (not ((_ is Concat!29734) lt!2675393)))))

(assert (=> b!7807185 (= e!4621327 e!4621333)))

(declare-fun bm!724158 () Bool)

(declare-fun call!724164 () Bool)

(assert (=> bm!724158 (= call!724164 (validRegex!11303 (ite c!1437729 (regTwo!42291 lt!2675393) (regTwo!42290 lt!2675393))))))

(declare-fun bm!724159 () Bool)

(declare-fun call!724163 () Bool)

(assert (=> bm!724159 (= call!724165 call!724163)))

(declare-fun b!7807180 () Bool)

(assert (=> b!7807180 (= e!4621332 call!724164)))

(declare-fun d!2348258 () Bool)

(declare-fun res!3109297 () Bool)

(assert (=> d!2348258 (=> res!3109297 e!4621329)))

(assert (=> d!2348258 (= res!3109297 ((_ is ElementMatch!20889) lt!2675393))))

(assert (=> d!2348258 (= (validRegex!11303 lt!2675393) e!4621329)))

(declare-fun b!7807186 () Bool)

(assert (=> b!7807186 (= e!4621328 call!724163)))

(declare-fun b!7807187 () Bool)

(declare-fun res!3109301 () Bool)

(declare-fun e!4621330 () Bool)

(assert (=> b!7807187 (=> (not res!3109301) (not e!4621330))))

(assert (=> b!7807187 (= res!3109301 call!724165)))

(assert (=> b!7807187 (= e!4621327 e!4621330)))

(declare-fun b!7807188 () Bool)

(assert (=> b!7807188 (= e!4621330 call!724164)))

(declare-fun bm!724160 () Bool)

(assert (=> bm!724160 (= call!724163 (validRegex!11303 (ite c!1437730 (reg!21218 lt!2675393) (ite c!1437729 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393)))))))

(assert (= (and d!2348258 (not res!3109297)) b!7807182))

(assert (= (and b!7807182 c!1437730) b!7807183))

(assert (= (and b!7807182 (not c!1437730)) b!7807181))

(assert (= (and b!7807183 res!3109298) b!7807186))

(assert (= (and b!7807181 c!1437729) b!7807187))

(assert (= (and b!7807181 (not c!1437729)) b!7807185))

(assert (= (and b!7807187 res!3109301) b!7807188))

(assert (= (and b!7807185 (not res!3109299)) b!7807184))

(assert (= (and b!7807184 res!3109300) b!7807180))

(assert (= (or b!7807187 b!7807184) bm!724159))

(assert (= (or b!7807188 b!7807180) bm!724158))

(assert (= (or b!7807186 bm!724159) bm!724160))

(declare-fun m!8240202 () Bool)

(assert (=> b!7807183 m!8240202))

(declare-fun m!8240204 () Bool)

(assert (=> bm!724158 m!8240204))

(declare-fun m!8240206 () Bool)

(assert (=> bm!724160 m!8240206))

(assert (=> d!2348086 d!2348258))

(declare-fun d!2348260 () Bool)

(declare-fun c!1437732 () Bool)

(assert (=> d!2348260 (= c!1437732 ((_ is Nil!73604) lt!2675459))))

(declare-fun e!4621335 () (InoxSet C!42104))

(assert (=> d!2348260 (= (content!15628 lt!2675459) e!4621335)))

(declare-fun b!7807191 () Bool)

(assert (=> b!7807191 (= e!4621335 ((as const (Array C!42104 Bool)) false))))

(declare-fun b!7807192 () Bool)

(assert (=> b!7807192 (= e!4621335 ((_ map or) (store ((as const (Array C!42104 Bool)) false) (h!80052 lt!2675459) true) (content!15628 (t!388463 lt!2675459))))))

(assert (= (and d!2348260 c!1437732) b!7807191))

(assert (= (and d!2348260 (not c!1437732)) b!7807192))

(declare-fun m!8240212 () Bool)

(assert (=> b!7807192 m!8240212))

(declare-fun m!8240214 () Bool)

(assert (=> b!7807192 m!8240214))

(assert (=> d!2348100 d!2348260))

(declare-fun d!2348264 () Bool)

(declare-fun c!1437733 () Bool)

(assert (=> d!2348264 (= c!1437733 ((_ is Nil!73604) lt!2675390))))

(declare-fun e!4621336 () (InoxSet C!42104))

(assert (=> d!2348264 (= (content!15628 lt!2675390) e!4621336)))

(declare-fun b!7807193 () Bool)

(assert (=> b!7807193 (= e!4621336 ((as const (Array C!42104 Bool)) false))))

(declare-fun b!7807194 () Bool)

(assert (=> b!7807194 (= e!4621336 ((_ map or) (store ((as const (Array C!42104 Bool)) false) (h!80052 lt!2675390) true) (content!15628 (t!388463 lt!2675390))))))

(assert (= (and d!2348264 c!1437733) b!7807193))

(assert (= (and d!2348264 (not c!1437733)) b!7807194))

(declare-fun m!8240216 () Bool)

(assert (=> b!7807194 m!8240216))

(assert (=> b!7807194 m!8240068))

(assert (=> d!2348100 d!2348264))

(declare-fun d!2348266 () Bool)

(declare-fun c!1437734 () Bool)

(assert (=> d!2348266 (= c!1437734 ((_ is Nil!73604) (_2!38285 lt!2675385)))))

(declare-fun e!4621337 () (InoxSet C!42104))

(assert (=> d!2348266 (= (content!15628 (_2!38285 lt!2675385)) e!4621337)))

(declare-fun b!7807195 () Bool)

(assert (=> b!7807195 (= e!4621337 ((as const (Array C!42104 Bool)) false))))

(declare-fun b!7807196 () Bool)

(assert (=> b!7807196 (= e!4621337 ((_ map or) (store ((as const (Array C!42104 Bool)) false) (h!80052 (_2!38285 lt!2675385)) true) (content!15628 (t!388463 (_2!38285 lt!2675385)))))))

(assert (= (and d!2348266 c!1437734) b!7807195))

(assert (= (and d!2348266 (not c!1437734)) b!7807196))

(declare-fun m!8240218 () Bool)

(assert (=> b!7807196 m!8240218))

(declare-fun m!8240220 () Bool)

(assert (=> b!7807196 m!8240220))

(assert (=> d!2348100 d!2348266))

(declare-fun b!7807199 () Bool)

(declare-fun e!4621343 () Bool)

(declare-fun e!4621344 () Bool)

(assert (=> b!7807199 (= e!4621343 e!4621344)))

(declare-fun res!3109302 () Bool)

(assert (=> b!7807199 (=> (not res!3109302) (not e!4621344))))

(declare-fun lt!2675509 () Bool)

(assert (=> b!7807199 (= res!3109302 (not lt!2675509))))

(declare-fun b!7807200 () Bool)

(declare-fun res!3109303 () Bool)

(assert (=> b!7807200 (=> res!3109303 e!4621343)))

(assert (=> b!7807200 (= res!3109303 (not ((_ is ElementMatch!20889) lt!2675387)))))

(declare-fun e!4621339 () Bool)

(assert (=> b!7807200 (= e!4621339 e!4621343)))

(declare-fun b!7807202 () Bool)

(declare-fun e!4621342 () Bool)

(assert (=> b!7807202 (= e!4621342 (= (head!15964 (_1!38285 (get!26345 lt!2675468))) (c!1437502 lt!2675387)))))

(declare-fun b!7807203 () Bool)

(declare-fun e!4621340 () Bool)

(declare-fun call!724166 () Bool)

(assert (=> b!7807203 (= e!4621340 (= lt!2675509 call!724166))))

(declare-fun bm!724161 () Bool)

(assert (=> bm!724161 (= call!724166 (isEmpty!42257 (_1!38285 (get!26345 lt!2675468))))))

(declare-fun b!7807204 () Bool)

(declare-fun res!3109308 () Bool)

(assert (=> b!7807204 (=> (not res!3109308) (not e!4621342))))

(assert (=> b!7807204 (= res!3109308 (not call!724166))))

(declare-fun b!7807205 () Bool)

(assert (=> b!7807205 (= e!4621340 e!4621339)))

(declare-fun c!1437738 () Bool)

(assert (=> b!7807205 (= c!1437738 ((_ is EmptyLang!20889) lt!2675387))))

(declare-fun b!7807206 () Bool)

(declare-fun res!3109305 () Bool)

(assert (=> b!7807206 (=> res!3109305 e!4621343)))

(assert (=> b!7807206 (= res!3109305 e!4621342)))

(declare-fun res!3109306 () Bool)

(assert (=> b!7807206 (=> (not res!3109306) (not e!4621342))))

(assert (=> b!7807206 (= res!3109306 lt!2675509)))

(declare-fun b!7807207 () Bool)

(declare-fun res!3109304 () Bool)

(assert (=> b!7807207 (=> (not res!3109304) (not e!4621342))))

(assert (=> b!7807207 (= res!3109304 (isEmpty!42257 (tail!15505 (_1!38285 (get!26345 lt!2675468)))))))

(declare-fun b!7807208 () Bool)

(declare-fun res!3109307 () Bool)

(declare-fun e!4621341 () Bool)

(assert (=> b!7807208 (=> res!3109307 e!4621341)))

(assert (=> b!7807208 (= res!3109307 (not (isEmpty!42257 (tail!15505 (_1!38285 (get!26345 lt!2675468))))))))

(declare-fun b!7807209 () Bool)

(declare-fun e!4621345 () Bool)

(assert (=> b!7807209 (= e!4621345 (nullable!9273 lt!2675387))))

(declare-fun b!7807210 () Bool)

(assert (=> b!7807210 (= e!4621341 (not (= (head!15964 (_1!38285 (get!26345 lt!2675468))) (c!1437502 lt!2675387))))))

(declare-fun b!7807201 () Bool)

(assert (=> b!7807201 (= e!4621345 (matchR!10349 (derivativeStep!6226 lt!2675387 (head!15964 (_1!38285 (get!26345 lt!2675468)))) (tail!15505 (_1!38285 (get!26345 lt!2675468)))))))

(declare-fun d!2348270 () Bool)

(assert (=> d!2348270 e!4621340))

(declare-fun c!1437736 () Bool)

(assert (=> d!2348270 (= c!1437736 ((_ is EmptyExpr!20889) lt!2675387))))

(assert (=> d!2348270 (= lt!2675509 e!4621345)))

(declare-fun c!1437737 () Bool)

(assert (=> d!2348270 (= c!1437737 (isEmpty!42257 (_1!38285 (get!26345 lt!2675468))))))

(assert (=> d!2348270 (validRegex!11303 lt!2675387)))

(assert (=> d!2348270 (= (matchR!10349 lt!2675387 (_1!38285 (get!26345 lt!2675468))) lt!2675509)))

(declare-fun b!7807211 () Bool)

(assert (=> b!7807211 (= e!4621344 e!4621341)))

(declare-fun res!3109309 () Bool)

(assert (=> b!7807211 (=> res!3109309 e!4621341)))

(assert (=> b!7807211 (= res!3109309 call!724166)))

(declare-fun b!7807212 () Bool)

(assert (=> b!7807212 (= e!4621339 (not lt!2675509))))

(assert (= (and d!2348270 c!1437737) b!7807209))

(assert (= (and d!2348270 (not c!1437737)) b!7807201))

(assert (= (and d!2348270 c!1437736) b!7807203))

(assert (= (and d!2348270 (not c!1437736)) b!7807205))

(assert (= (and b!7807205 c!1437738) b!7807212))

(assert (= (and b!7807205 (not c!1437738)) b!7807200))

(assert (= (and b!7807200 (not res!3109303)) b!7807206))

(assert (= (and b!7807206 res!3109306) b!7807204))

(assert (= (and b!7807204 res!3109308) b!7807207))

(assert (= (and b!7807207 res!3109304) b!7807202))

(assert (= (and b!7807206 (not res!3109305)) b!7807199))

(assert (= (and b!7807199 res!3109302) b!7807211))

(assert (= (and b!7807211 (not res!3109309)) b!7807208))

(assert (= (and b!7807208 (not res!3109307)) b!7807210))

(assert (= (or b!7807203 b!7807204 b!7807211) bm!724161))

(declare-fun m!8240226 () Bool)

(assert (=> b!7807201 m!8240226))

(assert (=> b!7807201 m!8240226))

(declare-fun m!8240230 () Bool)

(assert (=> b!7807201 m!8240230))

(declare-fun m!8240234 () Bool)

(assert (=> b!7807201 m!8240234))

(assert (=> b!7807201 m!8240230))

(assert (=> b!7807201 m!8240234))

(declare-fun m!8240238 () Bool)

(assert (=> b!7807201 m!8240238))

(declare-fun m!8240240 () Bool)

(assert (=> d!2348270 m!8240240))

(assert (=> d!2348270 m!8239868))

(assert (=> b!7807210 m!8240226))

(assert (=> b!7807207 m!8240234))

(assert (=> b!7807207 m!8240234))

(declare-fun m!8240242 () Bool)

(assert (=> b!7807207 m!8240242))

(assert (=> b!7807208 m!8240234))

(assert (=> b!7807208 m!8240234))

(assert (=> b!7807208 m!8240242))

(assert (=> b!7807202 m!8240226))

(assert (=> bm!724161 m!8240240))

(assert (=> b!7807209 m!8240094))

(assert (=> b!7806796 d!2348270))

(declare-fun d!2348280 () Bool)

(assert (=> d!2348280 (= (get!26345 lt!2675468) (v!54910 lt!2675468))))

(assert (=> b!7806796 d!2348280))

(declare-fun b!7807237 () Bool)

(declare-fun e!4621364 () Bool)

(declare-fun e!4621360 () Bool)

(assert (=> b!7807237 (= e!4621364 e!4621360)))

(declare-fun c!1437744 () Bool)

(assert (=> b!7807237 (= c!1437744 ((_ is Union!20889) (ite c!1437605 (reg!21218 r1!6279) (ite c!1437604 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))))))

(declare-fun b!7807238 () Bool)

(declare-fun e!4621362 () Bool)

(assert (=> b!7807238 (= e!4621362 e!4621364)))

(declare-fun c!1437745 () Bool)

(assert (=> b!7807238 (= c!1437745 ((_ is Star!20889) (ite c!1437605 (reg!21218 r1!6279) (ite c!1437604 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))))))

(declare-fun b!7807239 () Bool)

(declare-fun e!4621361 () Bool)

(assert (=> b!7807239 (= e!4621364 e!4621361)))

(declare-fun res!3109324 () Bool)

(assert (=> b!7807239 (= res!3109324 (not (nullable!9273 (reg!21218 (ite c!1437605 (reg!21218 r1!6279) (ite c!1437604 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))))))))

(assert (=> b!7807239 (=> (not res!3109324) (not e!4621361))))

(declare-fun b!7807240 () Bool)

(declare-fun e!4621366 () Bool)

(declare-fun e!4621365 () Bool)

(assert (=> b!7807240 (= e!4621366 e!4621365)))

(declare-fun res!3109326 () Bool)

(assert (=> b!7807240 (=> (not res!3109326) (not e!4621365))))

(declare-fun call!724173 () Bool)

(assert (=> b!7807240 (= res!3109326 call!724173)))

(declare-fun b!7807241 () Bool)

(declare-fun res!3109325 () Bool)

(assert (=> b!7807241 (=> res!3109325 e!4621366)))

(assert (=> b!7807241 (= res!3109325 (not ((_ is Concat!29734) (ite c!1437605 (reg!21218 r1!6279) (ite c!1437604 (regOne!42291 r1!6279) (regOne!42290 r1!6279))))))))

(assert (=> b!7807241 (= e!4621360 e!4621366)))

(declare-fun call!724172 () Bool)

(declare-fun bm!724166 () Bool)

(assert (=> bm!724166 (= call!724172 (validRegex!11303 (ite c!1437744 (regTwo!42291 (ite c!1437605 (reg!21218 r1!6279) (ite c!1437604 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))) (regTwo!42290 (ite c!1437605 (reg!21218 r1!6279) (ite c!1437604 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))))))))

(declare-fun bm!724167 () Bool)

(declare-fun call!724171 () Bool)

(assert (=> bm!724167 (= call!724173 call!724171)))

(declare-fun b!7807236 () Bool)

(assert (=> b!7807236 (= e!4621365 call!724172)))

(declare-fun d!2348282 () Bool)

(declare-fun res!3109323 () Bool)

(assert (=> d!2348282 (=> res!3109323 e!4621362)))

(assert (=> d!2348282 (= res!3109323 ((_ is ElementMatch!20889) (ite c!1437605 (reg!21218 r1!6279) (ite c!1437604 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))))))

(assert (=> d!2348282 (= (validRegex!11303 (ite c!1437605 (reg!21218 r1!6279) (ite c!1437604 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))) e!4621362)))

(declare-fun b!7807242 () Bool)

(assert (=> b!7807242 (= e!4621361 call!724171)))

(declare-fun b!7807243 () Bool)

(declare-fun res!3109327 () Bool)

(declare-fun e!4621363 () Bool)

(assert (=> b!7807243 (=> (not res!3109327) (not e!4621363))))

(assert (=> b!7807243 (= res!3109327 call!724173)))

(assert (=> b!7807243 (= e!4621360 e!4621363)))

(declare-fun b!7807244 () Bool)

(assert (=> b!7807244 (= e!4621363 call!724172)))

(declare-fun bm!724168 () Bool)

(assert (=> bm!724168 (= call!724171 (validRegex!11303 (ite c!1437745 (reg!21218 (ite c!1437605 (reg!21218 r1!6279) (ite c!1437604 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))) (ite c!1437744 (regOne!42291 (ite c!1437605 (reg!21218 r1!6279) (ite c!1437604 (regOne!42291 r1!6279) (regOne!42290 r1!6279)))) (regOne!42290 (ite c!1437605 (reg!21218 r1!6279) (ite c!1437604 (regOne!42291 r1!6279) (regOne!42290 r1!6279))))))))))

(assert (= (and d!2348282 (not res!3109323)) b!7807238))

(assert (= (and b!7807238 c!1437745) b!7807239))

(assert (= (and b!7807238 (not c!1437745)) b!7807237))

(assert (= (and b!7807239 res!3109324) b!7807242))

(assert (= (and b!7807237 c!1437744) b!7807243))

(assert (= (and b!7807237 (not c!1437744)) b!7807241))

(assert (= (and b!7807243 res!3109327) b!7807244))

(assert (= (and b!7807241 (not res!3109325)) b!7807240))

(assert (= (and b!7807240 res!3109326) b!7807236))

(assert (= (or b!7807243 b!7807240) bm!724167))

(assert (= (or b!7807244 b!7807236) bm!724166))

(assert (= (or b!7807242 bm!724167) bm!724168))

(declare-fun m!8240244 () Bool)

(assert (=> b!7807239 m!8240244))

(declare-fun m!8240248 () Bool)

(assert (=> bm!724166 m!8240248))

(declare-fun m!8240254 () Bool)

(assert (=> bm!724168 m!8240254))

(assert (=> bm!724089 d!2348282))

(assert (=> b!7806810 d!2348182))

(assert (=> bm!724040 d!2348154))

(declare-fun d!2348284 () Bool)

(assert (=> d!2348284 (= (nullable!9273 (regOne!42290 r1!6279)) (nullableFct!3652 (regOne!42290 r1!6279)))))

(declare-fun bs!1966568 () Bool)

(assert (= bs!1966568 d!2348284))

(declare-fun m!8240258 () Bool)

(assert (=> bs!1966568 m!8240258))

(assert (=> b!7806562 d!2348284))

(assert (=> b!7806750 d!2348126))

(assert (=> b!7806361 d!2348126))

(declare-fun b!7807245 () Bool)

(declare-fun e!4621371 () Bool)

(declare-fun e!4621372 () Bool)

(assert (=> b!7807245 (= e!4621371 e!4621372)))

(declare-fun res!3109328 () Bool)

(assert (=> b!7807245 (=> (not res!3109328) (not e!4621372))))

(declare-fun lt!2675511 () Bool)

(assert (=> b!7807245 (= res!3109328 (not lt!2675511))))

(declare-fun b!7807246 () Bool)

(declare-fun res!3109329 () Bool)

(assert (=> b!7807246 (=> res!3109329 e!4621371)))

(assert (=> b!7807246 (= res!3109329 (not ((_ is ElementMatch!20889) r2!6217)))))

(declare-fun e!4621367 () Bool)

(assert (=> b!7807246 (= e!4621367 e!4621371)))

(declare-fun b!7807248 () Bool)

(declare-fun e!4621370 () Bool)

(assert (=> b!7807248 (= e!4621370 (= (head!15964 (_2!38285 (get!26345 lt!2675468))) (c!1437502 r2!6217)))))

(declare-fun b!7807249 () Bool)

(declare-fun e!4621368 () Bool)

(declare-fun call!724174 () Bool)

(assert (=> b!7807249 (= e!4621368 (= lt!2675511 call!724174))))

(declare-fun bm!724169 () Bool)

(assert (=> bm!724169 (= call!724174 (isEmpty!42257 (_2!38285 (get!26345 lt!2675468))))))

(declare-fun b!7807250 () Bool)

(declare-fun res!3109334 () Bool)

(assert (=> b!7807250 (=> (not res!3109334) (not e!4621370))))

(assert (=> b!7807250 (= res!3109334 (not call!724174))))

(declare-fun b!7807251 () Bool)

(assert (=> b!7807251 (= e!4621368 e!4621367)))

(declare-fun c!1437748 () Bool)

(assert (=> b!7807251 (= c!1437748 ((_ is EmptyLang!20889) r2!6217))))

(declare-fun b!7807252 () Bool)

(declare-fun res!3109331 () Bool)

(assert (=> b!7807252 (=> res!3109331 e!4621371)))

(assert (=> b!7807252 (= res!3109331 e!4621370)))

(declare-fun res!3109332 () Bool)

(assert (=> b!7807252 (=> (not res!3109332) (not e!4621370))))

(assert (=> b!7807252 (= res!3109332 lt!2675511)))

(declare-fun b!7807253 () Bool)

(declare-fun res!3109330 () Bool)

(assert (=> b!7807253 (=> (not res!3109330) (not e!4621370))))

(assert (=> b!7807253 (= res!3109330 (isEmpty!42257 (tail!15505 (_2!38285 (get!26345 lt!2675468)))))))

(declare-fun b!7807254 () Bool)

(declare-fun res!3109333 () Bool)

(declare-fun e!4621369 () Bool)

(assert (=> b!7807254 (=> res!3109333 e!4621369)))

(assert (=> b!7807254 (= res!3109333 (not (isEmpty!42257 (tail!15505 (_2!38285 (get!26345 lt!2675468))))))))

(declare-fun b!7807255 () Bool)

(declare-fun e!4621373 () Bool)

(assert (=> b!7807255 (= e!4621373 (nullable!9273 r2!6217))))

(declare-fun b!7807256 () Bool)

(assert (=> b!7807256 (= e!4621369 (not (= (head!15964 (_2!38285 (get!26345 lt!2675468))) (c!1437502 r2!6217))))))

(declare-fun b!7807247 () Bool)

(assert (=> b!7807247 (= e!4621373 (matchR!10349 (derivativeStep!6226 r2!6217 (head!15964 (_2!38285 (get!26345 lt!2675468)))) (tail!15505 (_2!38285 (get!26345 lt!2675468)))))))

(declare-fun d!2348286 () Bool)

(assert (=> d!2348286 e!4621368))

(declare-fun c!1437746 () Bool)

(assert (=> d!2348286 (= c!1437746 ((_ is EmptyExpr!20889) r2!6217))))

(assert (=> d!2348286 (= lt!2675511 e!4621373)))

(declare-fun c!1437747 () Bool)

(assert (=> d!2348286 (= c!1437747 (isEmpty!42257 (_2!38285 (get!26345 lt!2675468))))))

(assert (=> d!2348286 (validRegex!11303 r2!6217)))

(assert (=> d!2348286 (= (matchR!10349 r2!6217 (_2!38285 (get!26345 lt!2675468))) lt!2675511)))

(declare-fun b!7807257 () Bool)

(assert (=> b!7807257 (= e!4621372 e!4621369)))

(declare-fun res!3109335 () Bool)

(assert (=> b!7807257 (=> res!3109335 e!4621369)))

(assert (=> b!7807257 (= res!3109335 call!724174)))

(declare-fun b!7807258 () Bool)

(assert (=> b!7807258 (= e!4621367 (not lt!2675511))))

(assert (= (and d!2348286 c!1437747) b!7807255))

(assert (= (and d!2348286 (not c!1437747)) b!7807247))

(assert (= (and d!2348286 c!1437746) b!7807249))

(assert (= (and d!2348286 (not c!1437746)) b!7807251))

(assert (= (and b!7807251 c!1437748) b!7807258))

(assert (= (and b!7807251 (not c!1437748)) b!7807246))

(assert (= (and b!7807246 (not res!3109329)) b!7807252))

(assert (= (and b!7807252 res!3109332) b!7807250))

(assert (= (and b!7807250 res!3109334) b!7807253))

(assert (= (and b!7807253 res!3109330) b!7807248))

(assert (= (and b!7807252 (not res!3109331)) b!7807245))

(assert (= (and b!7807245 res!3109328) b!7807257))

(assert (= (and b!7807257 (not res!3109335)) b!7807254))

(assert (= (and b!7807254 (not res!3109333)) b!7807256))

(assert (= (or b!7807249 b!7807250 b!7807257) bm!724169))

(declare-fun m!8240266 () Bool)

(assert (=> b!7807247 m!8240266))

(assert (=> b!7807247 m!8240266))

(declare-fun m!8240270 () Bool)

(assert (=> b!7807247 m!8240270))

(declare-fun m!8240272 () Bool)

(assert (=> b!7807247 m!8240272))

(assert (=> b!7807247 m!8240270))

(assert (=> b!7807247 m!8240272))

(declare-fun m!8240278 () Bool)

(assert (=> b!7807247 m!8240278))

(declare-fun m!8240280 () Bool)

(assert (=> d!2348286 m!8240280))

(assert (=> d!2348286 m!8239552))

(assert (=> b!7807256 m!8240266))

(assert (=> b!7807253 m!8240272))

(assert (=> b!7807253 m!8240272))

(declare-fun m!8240282 () Bool)

(assert (=> b!7807253 m!8240282))

(assert (=> b!7807254 m!8240272))

(assert (=> b!7807254 m!8240272))

(assert (=> b!7807254 m!8240282))

(assert (=> b!7807248 m!8240266))

(assert (=> bm!724169 m!8240280))

(assert (=> b!7807255 m!8239924))

(assert (=> b!7806794 d!2348286))

(assert (=> b!7806794 d!2348280))

(declare-fun b!7807269 () Bool)

(declare-fun e!4621379 () List!73728)

(assert (=> b!7807269 (= e!4621379 (_2!38285 (get!26345 lt!2675468)))))

(declare-fun b!7807271 () Bool)

(declare-fun res!3109336 () Bool)

(declare-fun e!4621380 () Bool)

(assert (=> b!7807271 (=> (not res!3109336) (not e!4621380))))

(declare-fun lt!2675513 () List!73728)

(assert (=> b!7807271 (= res!3109336 (= (size!42731 lt!2675513) (+ (size!42731 (_1!38285 (get!26345 lt!2675468))) (size!42731 (_2!38285 (get!26345 lt!2675468))))))))

(declare-fun b!7807272 () Bool)

(assert (=> b!7807272 (= e!4621380 (or (not (= (_2!38285 (get!26345 lt!2675468)) Nil!73604)) (= lt!2675513 (_1!38285 (get!26345 lt!2675468)))))))

(declare-fun b!7807270 () Bool)

(assert (=> b!7807270 (= e!4621379 (Cons!73604 (h!80052 (_1!38285 (get!26345 lt!2675468))) (++!17949 (t!388463 (_1!38285 (get!26345 lt!2675468))) (_2!38285 (get!26345 lt!2675468)))))))

(declare-fun d!2348296 () Bool)

(assert (=> d!2348296 e!4621380))

(declare-fun res!3109337 () Bool)

(assert (=> d!2348296 (=> (not res!3109337) (not e!4621380))))

(assert (=> d!2348296 (= res!3109337 (= (content!15628 lt!2675513) ((_ map or) (content!15628 (_1!38285 (get!26345 lt!2675468))) (content!15628 (_2!38285 (get!26345 lt!2675468))))))))

(assert (=> d!2348296 (= lt!2675513 e!4621379)))

(declare-fun c!1437754 () Bool)

(assert (=> d!2348296 (= c!1437754 ((_ is Nil!73604) (_1!38285 (get!26345 lt!2675468))))))

(assert (=> d!2348296 (= (++!17949 (_1!38285 (get!26345 lt!2675468)) (_2!38285 (get!26345 lt!2675468))) lt!2675513)))

(assert (= (and d!2348296 c!1437754) b!7807269))

(assert (= (and d!2348296 (not c!1437754)) b!7807270))

(assert (= (and d!2348296 res!3109337) b!7807271))

(assert (= (and b!7807271 res!3109336) b!7807272))

(declare-fun m!8240286 () Bool)

(assert (=> b!7807271 m!8240286))

(declare-fun m!8240288 () Bool)

(assert (=> b!7807271 m!8240288))

(declare-fun m!8240290 () Bool)

(assert (=> b!7807271 m!8240290))

(declare-fun m!8240292 () Bool)

(assert (=> b!7807270 m!8240292))

(declare-fun m!8240294 () Bool)

(assert (=> d!2348296 m!8240294))

(declare-fun m!8240296 () Bool)

(assert (=> d!2348296 m!8240296))

(declare-fun m!8240298 () Bool)

(assert (=> d!2348296 m!8240298))

(assert (=> b!7806792 d!2348296))

(assert (=> b!7806792 d!2348280))

(declare-fun b!7807312 () Bool)

(declare-fun e!4621417 () Bool)

(declare-fun call!724190 () Bool)

(assert (=> b!7807312 (= e!4621417 call!724190)))

(declare-fun b!7807313 () Bool)

(declare-fun e!4621415 () Bool)

(declare-fun e!4621418 () Bool)

(assert (=> b!7807313 (= e!4621415 e!4621418)))

(declare-fun res!3109365 () Bool)

(declare-fun call!724189 () Bool)

(assert (=> b!7807313 (= res!3109365 call!724189)))

(assert (=> b!7807313 (=> res!3109365 e!4621418)))

(declare-fun d!2348298 () Bool)

(declare-fun res!3109368 () Bool)

(declare-fun e!4621413 () Bool)

(assert (=> d!2348298 (=> res!3109368 e!4621413)))

(assert (=> d!2348298 (= res!3109368 ((_ is EmptyExpr!20889) r1!6279))))

(assert (=> d!2348298 (= (nullableFct!3652 r1!6279) e!4621413)))

(declare-fun b!7807314 () Bool)

(declare-fun e!4621416 () Bool)

(declare-fun e!4621414 () Bool)

(assert (=> b!7807314 (= e!4621416 e!4621414)))

(declare-fun res!3109366 () Bool)

(assert (=> b!7807314 (=> res!3109366 e!4621414)))

(assert (=> b!7807314 (= res!3109366 ((_ is Star!20889) r1!6279))))

(declare-fun bm!724184 () Bool)

(declare-fun c!1437761 () Bool)

(assert (=> bm!724184 (= call!724189 (nullable!9273 (ite c!1437761 (regOne!42291 r1!6279) (regOne!42290 r1!6279))))))

(declare-fun b!7807315 () Bool)

(assert (=> b!7807315 (= e!4621415 e!4621417)))

(declare-fun res!3109369 () Bool)

(assert (=> b!7807315 (= res!3109369 call!724189)))

(assert (=> b!7807315 (=> (not res!3109369) (not e!4621417))))

(declare-fun b!7807316 () Bool)

(assert (=> b!7807316 (= e!4621413 e!4621416)))

(declare-fun res!3109367 () Bool)

(assert (=> b!7807316 (=> (not res!3109367) (not e!4621416))))

(assert (=> b!7807316 (= res!3109367 (and (not ((_ is EmptyLang!20889) r1!6279)) (not ((_ is ElementMatch!20889) r1!6279))))))

(declare-fun bm!724185 () Bool)

(assert (=> bm!724185 (= call!724190 (nullable!9273 (ite c!1437761 (regTwo!42291 r1!6279) (regTwo!42290 r1!6279))))))

(declare-fun b!7807317 () Bool)

(assert (=> b!7807317 (= e!4621418 call!724190)))

(declare-fun b!7807318 () Bool)

(assert (=> b!7807318 (= e!4621414 e!4621415)))

(assert (=> b!7807318 (= c!1437761 ((_ is Union!20889) r1!6279))))

(assert (= (and d!2348298 (not res!3109368)) b!7807316))

(assert (= (and b!7807316 res!3109367) b!7807314))

(assert (= (and b!7807314 (not res!3109366)) b!7807318))

(assert (= (and b!7807318 c!1437761) b!7807313))

(assert (= (and b!7807318 (not c!1437761)) b!7807315))

(assert (= (and b!7807313 (not res!3109365)) b!7807317))

(assert (= (and b!7807315 res!3109369) b!7807312))

(assert (= (or b!7807317 b!7807312) bm!724185))

(assert (= (or b!7807313 b!7807315) bm!724184))

(declare-fun m!8240312 () Bool)

(assert (=> bm!724184 m!8240312))

(declare-fun m!8240314 () Bool)

(assert (=> bm!724185 m!8240314))

(assert (=> d!2348096 d!2348298))

(assert (=> b!7806808 d!2348130))

(assert (=> b!7806808 d!2348134))

(assert (=> b!7806748 d!2348146))

(assert (=> b!7806748 d!2348128))

(declare-fun d!2348306 () Bool)

(assert (=> d!2348306 (= (nullable!9273 EmptyLang!20889) false)))

(assert (=> b!7806498 d!2348306))

(declare-fun d!2348308 () Bool)

(assert (=> d!2348308 (= (isDefined!14386 (findConcatSeparation!3806 lt!2675387 r2!6217 Nil!73604 (t!388463 s!14292) (t!388463 s!14292))) (not (isEmpty!42259 (findConcatSeparation!3806 lt!2675387 r2!6217 Nil!73604 (t!388463 s!14292) (t!388463 s!14292)))))))

(declare-fun bs!1966570 () Bool)

(assert (= bs!1966570 d!2348308))

(assert (=> bs!1966570 m!8239560))

(declare-fun m!8240316 () Bool)

(assert (=> bs!1966570 m!8240316))

(assert (=> d!2348108 d!2348308))

(assert (=> d!2348108 d!2348104))

(declare-fun d!2348310 () Bool)

(assert (=> d!2348310 (isDefined!14386 (findConcatSeparation!3806 lt!2675387 r2!6217 Nil!73604 (t!388463 s!14292) (t!388463 s!14292)))))

(assert (=> d!2348310 true))

(declare-fun _$122!406 () Unit!168616)

(assert (=> d!2348310 (= (choose!59573 lt!2675387 r2!6217 (t!388463 s!14292)) _$122!406)))

(declare-fun bs!1966571 () Bool)

(assert (= bs!1966571 d!2348310))

(assert (=> bs!1966571 m!8239560))

(assert (=> bs!1966571 m!8239560))

(assert (=> bs!1966571 m!8239890))

(assert (=> d!2348108 d!2348310))

(assert (=> d!2348108 d!2348208))

(assert (=> d!2348090 d!2348088))

(declare-fun d!2348326 () Bool)

(assert (=> d!2348326 (= (derivative!571 EmptyLang!20889 (t!388463 s!14292)) EmptyLang!20889)))

(assert (=> d!2348326 true))

(declare-fun _$134!195 () Unit!168616)

(assert (=> d!2348326 (= (choose!59571 EmptyLang!20889 (t!388463 s!14292)) _$134!195)))

(declare-fun bs!1966572 () Bool)

(assert (= bs!1966572 d!2348326))

(assert (=> bs!1966572 m!8239534))

(assert (=> d!2348090 d!2348326))

(declare-fun d!2348332 () Bool)

(assert (=> d!2348332 (= (nullable!9273 (reg!21218 r1!6279)) (nullableFct!3652 (reg!21218 r1!6279)))))

(declare-fun bs!1966573 () Bool)

(assert (= bs!1966573 d!2348332))

(declare-fun m!8240350 () Bool)

(assert (=> bs!1966573 m!8240350))

(assert (=> b!7806701 d!2348332))

(assert (=> b!7806758 d!2348060))

(declare-fun d!2348334 () Bool)

(assert (=> d!2348334 (= (nullable!9273 lt!2675393) (nullableFct!3652 lt!2675393))))

(declare-fun bs!1966574 () Bool)

(assert (= bs!1966574 d!2348334))

(declare-fun m!8240352 () Bool)

(assert (=> bs!1966574 m!8240352))

(assert (=> b!7806729 d!2348334))

(assert (=> b!7806496 d!2348146))

(assert (=> b!7806496 d!2348128))

(declare-fun b!7807373 () Bool)

(declare-fun e!4621452 () Bool)

(declare-fun e!4621448 () Bool)

(assert (=> b!7807373 (= e!4621452 e!4621448)))

(declare-fun c!1437778 () Bool)

(assert (=> b!7807373 (= c!1437778 ((_ is Union!20889) lt!2675424))))

(declare-fun b!7807374 () Bool)

(declare-fun e!4621450 () Bool)

(assert (=> b!7807374 (= e!4621450 e!4621452)))

(declare-fun c!1437779 () Bool)

(assert (=> b!7807374 (= c!1437779 ((_ is Star!20889) lt!2675424))))

(declare-fun b!7807375 () Bool)

(declare-fun e!4621449 () Bool)

(assert (=> b!7807375 (= e!4621452 e!4621449)))

(declare-fun res!3109392 () Bool)

(assert (=> b!7807375 (= res!3109392 (not (nullable!9273 (reg!21218 lt!2675424))))))

(assert (=> b!7807375 (=> (not res!3109392) (not e!4621449))))

(declare-fun b!7807376 () Bool)

(declare-fun e!4621454 () Bool)

(declare-fun e!4621453 () Bool)

(assert (=> b!7807376 (= e!4621454 e!4621453)))

(declare-fun res!3109394 () Bool)

(assert (=> b!7807376 (=> (not res!3109394) (not e!4621453))))

(declare-fun call!724202 () Bool)

(assert (=> b!7807376 (= res!3109394 call!724202)))

(declare-fun b!7807377 () Bool)

(declare-fun res!3109393 () Bool)

(assert (=> b!7807377 (=> res!3109393 e!4621454)))

(assert (=> b!7807377 (= res!3109393 (not ((_ is Concat!29734) lt!2675424)))))

(assert (=> b!7807377 (= e!4621448 e!4621454)))

(declare-fun bm!724195 () Bool)

(declare-fun call!724201 () Bool)

(assert (=> bm!724195 (= call!724201 (validRegex!11303 (ite c!1437778 (regTwo!42291 lt!2675424) (regTwo!42290 lt!2675424))))))

(declare-fun bm!724196 () Bool)

(declare-fun call!724200 () Bool)

(assert (=> bm!724196 (= call!724202 call!724200)))

(declare-fun b!7807372 () Bool)

(assert (=> b!7807372 (= e!4621453 call!724201)))

(declare-fun d!2348336 () Bool)

(declare-fun res!3109391 () Bool)

(assert (=> d!2348336 (=> res!3109391 e!4621450)))

(assert (=> d!2348336 (= res!3109391 ((_ is ElementMatch!20889) lt!2675424))))

(assert (=> d!2348336 (= (validRegex!11303 lt!2675424) e!4621450)))

(declare-fun b!7807378 () Bool)

(assert (=> b!7807378 (= e!4621449 call!724200)))

(declare-fun b!7807379 () Bool)

(declare-fun res!3109395 () Bool)

(declare-fun e!4621451 () Bool)

(assert (=> b!7807379 (=> (not res!3109395) (not e!4621451))))

(assert (=> b!7807379 (= res!3109395 call!724202)))

(assert (=> b!7807379 (= e!4621448 e!4621451)))

(declare-fun b!7807380 () Bool)

(assert (=> b!7807380 (= e!4621451 call!724201)))

(declare-fun bm!724197 () Bool)

(assert (=> bm!724197 (= call!724200 (validRegex!11303 (ite c!1437779 (reg!21218 lt!2675424) (ite c!1437778 (regOne!42291 lt!2675424) (regOne!42290 lt!2675424)))))))

(assert (= (and d!2348336 (not res!3109391)) b!7807374))

(assert (= (and b!7807374 c!1437779) b!7807375))

(assert (= (and b!7807374 (not c!1437779)) b!7807373))

(assert (= (and b!7807375 res!3109392) b!7807378))

(assert (= (and b!7807373 c!1437778) b!7807379))

(assert (= (and b!7807373 (not c!1437778)) b!7807377))

(assert (= (and b!7807379 res!3109395) b!7807380))

(assert (= (and b!7807377 (not res!3109393)) b!7807376))

(assert (= (and b!7807376 res!3109394) b!7807372))

(assert (= (or b!7807379 b!7807376) bm!724196))

(assert (= (or b!7807380 b!7807372) bm!724195))

(assert (= (or b!7807378 bm!724196) bm!724197))

(declare-fun m!8240368 () Bool)

(assert (=> b!7807375 m!8240368))

(declare-fun m!8240370 () Bool)

(assert (=> bm!724195 m!8240370))

(declare-fun m!8240372 () Bool)

(assert (=> bm!724197 m!8240372))

(assert (=> d!2348042 d!2348336))

(assert (=> d!2348042 d!2348258))

(declare-fun d!2348340 () Bool)

(assert (not d!2348340))

(assert (=> b!7806552 d!2348340))

(declare-fun b!7807390 () Bool)

(declare-fun e!4621462 () Regex!20889)

(assert (=> b!7807390 (= e!4621462 (ite (= (h!80052 s!14292) (c!1437502 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393)))) EmptyExpr!20889 EmptyLang!20889))))

(declare-fun e!4621466 () Regex!20889)

(declare-fun call!724207 () Regex!20889)

(declare-fun b!7807391 () Bool)

(assert (=> b!7807391 (= e!4621466 (Union!20889 (Concat!29734 call!724207 (regTwo!42290 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393)))) EmptyLang!20889))))

(declare-fun b!7807392 () Bool)

(declare-fun e!4621463 () Regex!20889)

(declare-fun e!4621465 () Regex!20889)

(assert (=> b!7807392 (= e!4621463 e!4621465)))

(declare-fun c!1437782 () Bool)

(assert (=> b!7807392 (= c!1437782 ((_ is Star!20889) (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393))))))

(declare-fun b!7807393 () Bool)

(declare-fun e!4621464 () Regex!20889)

(assert (=> b!7807393 (= e!4621464 EmptyLang!20889)))

(declare-fun call!724208 () Regex!20889)

(declare-fun b!7807394 () Bool)

(assert (=> b!7807394 (= e!4621465 (Concat!29734 call!724208 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393))))))

(declare-fun b!7807395 () Bool)

(assert (=> b!7807395 (= e!4621464 e!4621462)))

(declare-fun c!1437785 () Bool)

(assert (=> b!7807395 (= c!1437785 ((_ is ElementMatch!20889) (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393))))))

(declare-fun bm!724201 () Bool)

(assert (=> bm!724201 (= call!724207 call!724208)))

(declare-fun b!7807396 () Bool)

(declare-fun call!724209 () Regex!20889)

(assert (=> b!7807396 (= e!4621466 (Union!20889 (Concat!29734 call!724209 (regTwo!42290 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393)))) call!724207))))

(declare-fun b!7807397 () Bool)

(declare-fun c!1437784 () Bool)

(assert (=> b!7807397 (= c!1437784 (nullable!9273 (regOne!42290 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393)))))))

(assert (=> b!7807397 (= e!4621465 e!4621466)))

(declare-fun d!2348342 () Bool)

(declare-fun lt!2675518 () Regex!20889)

(assert (=> d!2348342 (validRegex!11303 lt!2675518)))

(assert (=> d!2348342 (= lt!2675518 e!4621464)))

(declare-fun c!1437783 () Bool)

(assert (=> d!2348342 (= c!1437783 (or ((_ is EmptyExpr!20889) (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393))) ((_ is EmptyLang!20889) (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393)))))))

(assert (=> d!2348342 (validRegex!11303 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393)))))

(assert (=> d!2348342 (= (derivativeStep!6226 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393)) (h!80052 s!14292)) lt!2675518)))

(declare-fun bm!724202 () Bool)

(declare-fun c!1437786 () Bool)

(assert (=> bm!724202 (= call!724209 (derivativeStep!6226 (ite c!1437786 (regOne!42291 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393))) (regOne!42290 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393)))) (h!80052 s!14292)))))

(declare-fun b!7807398 () Bool)

(assert (=> b!7807398 (= c!1437786 ((_ is Union!20889) (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393))))))

(assert (=> b!7807398 (= e!4621462 e!4621463)))

(declare-fun bm!724203 () Bool)

(declare-fun call!724206 () Regex!20889)

(assert (=> bm!724203 (= call!724208 call!724206)))

(declare-fun bm!724204 () Bool)

(assert (=> bm!724204 (= call!724206 (derivativeStep!6226 (ite c!1437786 (regTwo!42291 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393))) (ite c!1437782 (reg!21218 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393))) (ite c!1437784 (regTwo!42290 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393))) (regOne!42290 (ite c!1437563 (regOne!42291 lt!2675393) (regOne!42290 lt!2675393)))))) (h!80052 s!14292)))))

(declare-fun b!7807399 () Bool)

(assert (=> b!7807399 (= e!4621463 (Union!20889 call!724209 call!724206))))

(assert (= (and d!2348342 c!1437783) b!7807393))

(assert (= (and d!2348342 (not c!1437783)) b!7807395))

(assert (= (and b!7807395 c!1437785) b!7807390))

(assert (= (and b!7807395 (not c!1437785)) b!7807398))

(assert (= (and b!7807398 c!1437786) b!7807399))

(assert (= (and b!7807398 (not c!1437786)) b!7807392))

(assert (= (and b!7807392 c!1437782) b!7807394))

(assert (= (and b!7807392 (not c!1437782)) b!7807397))

(assert (= (and b!7807397 c!1437784) b!7807396))

(assert (= (and b!7807397 (not c!1437784)) b!7807391))

(assert (= (or b!7807396 b!7807391) bm!724201))

(assert (= (or b!7807394 bm!724201) bm!724203))

(assert (= (or b!7807399 bm!724203) bm!724204))

(assert (= (or b!7807399 b!7807396) bm!724202))

(declare-fun m!8240386 () Bool)

(assert (=> b!7807397 m!8240386))

(declare-fun m!8240388 () Bool)

(assert (=> d!2348342 m!8240388))

(declare-fun m!8240390 () Bool)

(assert (=> d!2348342 m!8240390))

(declare-fun m!8240392 () Bool)

(assert (=> bm!724202 m!8240392))

(declare-fun m!8240394 () Bool)

(assert (=> bm!724204 m!8240394))

(assert (=> bm!724055 d!2348342))

(declare-fun b!7807412 () Bool)

(declare-fun e!4621479 () Bool)

(declare-fun e!4621475 () Bool)

(assert (=> b!7807412 (= e!4621479 e!4621475)))

(declare-fun c!1437790 () Bool)

(assert (=> b!7807412 (= c!1437790 ((_ is Union!20889) lt!2675451))))

(declare-fun b!7807413 () Bool)

(declare-fun e!4621477 () Bool)

(assert (=> b!7807413 (= e!4621477 e!4621479)))

(declare-fun c!1437791 () Bool)

(assert (=> b!7807413 (= c!1437791 ((_ is Star!20889) lt!2675451))))

(declare-fun b!7807414 () Bool)

(declare-fun e!4621476 () Bool)

(assert (=> b!7807414 (= e!4621479 e!4621476)))

(declare-fun res!3109407 () Bool)

(assert (=> b!7807414 (= res!3109407 (not (nullable!9273 (reg!21218 lt!2675451))))))

(assert (=> b!7807414 (=> (not res!3109407) (not e!4621476))))

(declare-fun b!7807415 () Bool)

(declare-fun e!4621481 () Bool)

(declare-fun e!4621480 () Bool)

(assert (=> b!7807415 (= e!4621481 e!4621480)))

(declare-fun res!3109409 () Bool)

(assert (=> b!7807415 (=> (not res!3109409) (not e!4621480))))

(declare-fun call!724215 () Bool)

(assert (=> b!7807415 (= res!3109409 call!724215)))

(declare-fun b!7807416 () Bool)

(declare-fun res!3109408 () Bool)

(assert (=> b!7807416 (=> res!3109408 e!4621481)))

(assert (=> b!7807416 (= res!3109408 (not ((_ is Concat!29734) lt!2675451)))))

(assert (=> b!7807416 (= e!4621475 e!4621481)))

(declare-fun bm!724208 () Bool)

(declare-fun call!724214 () Bool)

(assert (=> bm!724208 (= call!724214 (validRegex!11303 (ite c!1437790 (regTwo!42291 lt!2675451) (regTwo!42290 lt!2675451))))))

(declare-fun bm!724209 () Bool)

(declare-fun call!724213 () Bool)

(assert (=> bm!724209 (= call!724215 call!724213)))

(declare-fun b!7807411 () Bool)

(assert (=> b!7807411 (= e!4621480 call!724214)))

(declare-fun d!2348348 () Bool)

(declare-fun res!3109406 () Bool)

(assert (=> d!2348348 (=> res!3109406 e!4621477)))

(assert (=> d!2348348 (= res!3109406 ((_ is ElementMatch!20889) lt!2675451))))

(assert (=> d!2348348 (= (validRegex!11303 lt!2675451) e!4621477)))

(declare-fun b!7807417 () Bool)

(assert (=> b!7807417 (= e!4621476 call!724213)))

(declare-fun b!7807418 () Bool)

(declare-fun res!3109410 () Bool)

(declare-fun e!4621478 () Bool)

(assert (=> b!7807418 (=> (not res!3109410) (not e!4621478))))

(assert (=> b!7807418 (= res!3109410 call!724215)))

(assert (=> b!7807418 (= e!4621475 e!4621478)))

(declare-fun b!7807419 () Bool)

(assert (=> b!7807419 (= e!4621478 call!724214)))

(declare-fun bm!724210 () Bool)

(assert (=> bm!724210 (= call!724213 (validRegex!11303 (ite c!1437791 (reg!21218 lt!2675451) (ite c!1437790 (regOne!42291 lt!2675451) (regOne!42290 lt!2675451)))))))

(assert (= (and d!2348348 (not res!3109406)) b!7807413))

(assert (= (and b!7807413 c!1437791) b!7807414))

(assert (= (and b!7807413 (not c!1437791)) b!7807412))

(assert (= (and b!7807414 res!3109407) b!7807417))

(assert (= (and b!7807412 c!1437790) b!7807418))

(assert (= (and b!7807412 (not c!1437790)) b!7807416))

(assert (= (and b!7807418 res!3109410) b!7807419))

(assert (= (and b!7807416 (not res!3109408)) b!7807415))

(assert (= (and b!7807415 res!3109409) b!7807411))

(assert (= (or b!7807418 b!7807415) bm!724209))

(assert (= (or b!7807419 b!7807411) bm!724208))

(assert (= (or b!7807417 bm!724209) bm!724210))

(declare-fun m!8240404 () Bool)

(assert (=> b!7807414 m!8240404))

(declare-fun m!8240406 () Bool)

(assert (=> bm!724208 m!8240406))

(declare-fun m!8240408 () Bool)

(assert (=> bm!724210 m!8240408))

(assert (=> d!2348088 d!2348348))

(assert (=> d!2348088 d!2348166))

(assert (=> b!7806727 d!2348178))

(assert (=> b!7806727 d!2348180))

(declare-fun b!7807430 () Bool)

(declare-fun e!4621491 () Bool)

(declare-fun e!4621492 () Bool)

(assert (=> b!7807430 (= e!4621491 e!4621492)))

(declare-fun res!3109411 () Bool)

(assert (=> b!7807430 (=> (not res!3109411) (not e!4621492))))

(declare-fun lt!2675521 () Bool)

(assert (=> b!7807430 (= res!3109411 (not lt!2675521))))

(declare-fun b!7807431 () Bool)

(declare-fun res!3109412 () Bool)

(assert (=> b!7807431 (=> res!3109412 e!4621491)))

(assert (=> b!7807431 (= res!3109412 (not ((_ is ElementMatch!20889) (derivativeStep!6226 r1!6279 (head!15964 lt!2675390)))))))

(declare-fun e!4621487 () Bool)

(assert (=> b!7807431 (= e!4621487 e!4621491)))

(declare-fun b!7807433 () Bool)

(declare-fun e!4621490 () Bool)

(assert (=> b!7807433 (= e!4621490 (= (head!15964 (tail!15505 lt!2675390)) (c!1437502 (derivativeStep!6226 r1!6279 (head!15964 lt!2675390)))))))

(declare-fun b!7807434 () Bool)

(declare-fun e!4621488 () Bool)

(declare-fun call!724220 () Bool)

(assert (=> b!7807434 (= e!4621488 (= lt!2675521 call!724220))))

(declare-fun bm!724215 () Bool)

(assert (=> bm!724215 (= call!724220 (isEmpty!42257 (tail!15505 lt!2675390)))))

(declare-fun b!7807435 () Bool)

(declare-fun res!3109417 () Bool)

(assert (=> b!7807435 (=> (not res!3109417) (not e!4621490))))

(assert (=> b!7807435 (= res!3109417 (not call!724220))))

(declare-fun b!7807436 () Bool)

(assert (=> b!7807436 (= e!4621488 e!4621487)))

(declare-fun c!1437799 () Bool)

(assert (=> b!7807436 (= c!1437799 ((_ is EmptyLang!20889) (derivativeStep!6226 r1!6279 (head!15964 lt!2675390))))))

(declare-fun b!7807437 () Bool)

(declare-fun res!3109414 () Bool)

(assert (=> b!7807437 (=> res!3109414 e!4621491)))

(assert (=> b!7807437 (= res!3109414 e!4621490)))

(declare-fun res!3109415 () Bool)

(assert (=> b!7807437 (=> (not res!3109415) (not e!4621490))))

(assert (=> b!7807437 (= res!3109415 lt!2675521)))

(declare-fun b!7807438 () Bool)

(declare-fun res!3109413 () Bool)

(assert (=> b!7807438 (=> (not res!3109413) (not e!4621490))))

(assert (=> b!7807438 (= res!3109413 (isEmpty!42257 (tail!15505 (tail!15505 lt!2675390))))))

(declare-fun b!7807439 () Bool)

(declare-fun res!3109416 () Bool)

(declare-fun e!4621489 () Bool)

(assert (=> b!7807439 (=> res!3109416 e!4621489)))

(assert (=> b!7807439 (= res!3109416 (not (isEmpty!42257 (tail!15505 (tail!15505 lt!2675390)))))))

(declare-fun b!7807440 () Bool)

(declare-fun e!4621493 () Bool)

(assert (=> b!7807440 (= e!4621493 (nullable!9273 (derivativeStep!6226 r1!6279 (head!15964 lt!2675390))))))

(declare-fun b!7807441 () Bool)

(assert (=> b!7807441 (= e!4621489 (not (= (head!15964 (tail!15505 lt!2675390)) (c!1437502 (derivativeStep!6226 r1!6279 (head!15964 lt!2675390))))))))

(declare-fun b!7807432 () Bool)

(assert (=> b!7807432 (= e!4621493 (matchR!10349 (derivativeStep!6226 (derivativeStep!6226 r1!6279 (head!15964 lt!2675390)) (head!15964 (tail!15505 lt!2675390))) (tail!15505 (tail!15505 lt!2675390))))))

(declare-fun d!2348352 () Bool)

(assert (=> d!2348352 e!4621488))

(declare-fun c!1437797 () Bool)

(assert (=> d!2348352 (= c!1437797 ((_ is EmptyExpr!20889) (derivativeStep!6226 r1!6279 (head!15964 lt!2675390))))))

(assert (=> d!2348352 (= lt!2675521 e!4621493)))

(declare-fun c!1437798 () Bool)

(assert (=> d!2348352 (= c!1437798 (isEmpty!42257 (tail!15505 lt!2675390)))))

(assert (=> d!2348352 (validRegex!11303 (derivativeStep!6226 r1!6279 (head!15964 lt!2675390)))))

(assert (=> d!2348352 (= (matchR!10349 (derivativeStep!6226 r1!6279 (head!15964 lt!2675390)) (tail!15505 lt!2675390)) lt!2675521)))

(declare-fun b!7807442 () Bool)

(assert (=> b!7807442 (= e!4621492 e!4621489)))

(declare-fun res!3109418 () Bool)

(assert (=> b!7807442 (=> res!3109418 e!4621489)))

(assert (=> b!7807442 (= res!3109418 call!724220)))

(declare-fun b!7807443 () Bool)

(assert (=> b!7807443 (= e!4621487 (not lt!2675521))))

(assert (= (and d!2348352 c!1437798) b!7807440))

(assert (= (and d!2348352 (not c!1437798)) b!7807432))

(assert (= (and d!2348352 c!1437797) b!7807434))

(assert (= (and d!2348352 (not c!1437797)) b!7807436))

(assert (= (and b!7807436 c!1437799) b!7807443))

(assert (= (and b!7807436 (not c!1437799)) b!7807431))

(assert (= (and b!7807431 (not res!3109412)) b!7807437))

(assert (= (and b!7807437 res!3109415) b!7807435))

(assert (= (and b!7807435 res!3109417) b!7807438))

(assert (= (and b!7807438 res!3109413) b!7807433))

(assert (= (and b!7807437 (not res!3109414)) b!7807430))

(assert (= (and b!7807430 res!3109411) b!7807442))

(assert (= (and b!7807442 (not res!3109418)) b!7807439))

(assert (= (and b!7807439 (not res!3109416)) b!7807441))

(assert (= (or b!7807434 b!7807435 b!7807442) bm!724215))

(assert (=> b!7807432 m!8239808))

(declare-fun m!8240418 () Bool)

(assert (=> b!7807432 m!8240418))

(assert (=> b!7807432 m!8239894))

(assert (=> b!7807432 m!8240418))

(declare-fun m!8240420 () Bool)

(assert (=> b!7807432 m!8240420))

(assert (=> b!7807432 m!8239808))

(declare-fun m!8240422 () Bool)

(assert (=> b!7807432 m!8240422))

(assert (=> b!7807432 m!8240420))

(assert (=> b!7807432 m!8240422))

(declare-fun m!8240424 () Bool)

(assert (=> b!7807432 m!8240424))

(assert (=> d!2348352 m!8239808))

(assert (=> d!2348352 m!8239900))

(assert (=> d!2348352 m!8239894))

(declare-fun m!8240428 () Bool)

(assert (=> d!2348352 m!8240428))

(assert (=> b!7807441 m!8239808))

(assert (=> b!7807441 m!8240418))

(assert (=> b!7807438 m!8239808))

(assert (=> b!7807438 m!8240422))

(assert (=> b!7807438 m!8240422))

(declare-fun m!8240434 () Bool)

(assert (=> b!7807438 m!8240434))

(assert (=> b!7807439 m!8239808))

(assert (=> b!7807439 m!8240422))

(assert (=> b!7807439 m!8240422))

(assert (=> b!7807439 m!8240434))

(assert (=> b!7807433 m!8239808))

(assert (=> b!7807433 m!8240418))

(assert (=> bm!724215 m!8239808))

(assert (=> bm!724215 m!8239900))

(assert (=> b!7807440 m!8239894))

(declare-fun m!8240436 () Bool)

(assert (=> b!7807440 m!8240436))

(assert (=> b!7806801 d!2348352))

(declare-fun b!7807467 () Bool)

(declare-fun e!4621508 () Regex!20889)

(assert (=> b!7807467 (= e!4621508 (ite (= (head!15964 lt!2675390) (c!1437502 r1!6279)) EmptyExpr!20889 EmptyLang!20889))))

(declare-fun b!7807468 () Bool)

(declare-fun e!4621512 () Regex!20889)

(declare-fun call!724226 () Regex!20889)

(assert (=> b!7807468 (= e!4621512 (Union!20889 (Concat!29734 call!724226 (regTwo!42290 r1!6279)) EmptyLang!20889))))

(declare-fun b!7807469 () Bool)

(declare-fun e!4621509 () Regex!20889)

(declare-fun e!4621511 () Regex!20889)

(assert (=> b!7807469 (= e!4621509 e!4621511)))

(declare-fun c!1437805 () Bool)

(assert (=> b!7807469 (= c!1437805 ((_ is Star!20889) r1!6279))))

(declare-fun b!7807470 () Bool)

(declare-fun e!4621510 () Regex!20889)

(assert (=> b!7807470 (= e!4621510 EmptyLang!20889)))

(declare-fun b!7807471 () Bool)

(declare-fun call!724227 () Regex!20889)

(assert (=> b!7807471 (= e!4621511 (Concat!29734 call!724227 r1!6279))))

(declare-fun b!7807472 () Bool)

(assert (=> b!7807472 (= e!4621510 e!4621508)))

(declare-fun c!1437808 () Bool)

(assert (=> b!7807472 (= c!1437808 ((_ is ElementMatch!20889) r1!6279))))

(declare-fun bm!724220 () Bool)

(assert (=> bm!724220 (= call!724226 call!724227)))

(declare-fun b!7807473 () Bool)

(declare-fun call!724228 () Regex!20889)

(assert (=> b!7807473 (= e!4621512 (Union!20889 (Concat!29734 call!724228 (regTwo!42290 r1!6279)) call!724226))))

(declare-fun b!7807474 () Bool)

(declare-fun c!1437807 () Bool)

(assert (=> b!7807474 (= c!1437807 (nullable!9273 (regOne!42290 r1!6279)))))

(assert (=> b!7807474 (= e!4621511 e!4621512)))

(declare-fun d!2348358 () Bool)

(declare-fun lt!2675523 () Regex!20889)

(assert (=> d!2348358 (validRegex!11303 lt!2675523)))

(assert (=> d!2348358 (= lt!2675523 e!4621510)))

(declare-fun c!1437806 () Bool)

(assert (=> d!2348358 (= c!1437806 (or ((_ is EmptyExpr!20889) r1!6279) ((_ is EmptyLang!20889) r1!6279)))))

(assert (=> d!2348358 (validRegex!11303 r1!6279)))

(assert (=> d!2348358 (= (derivativeStep!6226 r1!6279 (head!15964 lt!2675390)) lt!2675523)))

(declare-fun c!1437809 () Bool)

(declare-fun bm!724221 () Bool)

(assert (=> bm!724221 (= call!724228 (derivativeStep!6226 (ite c!1437809 (regOne!42291 r1!6279) (regOne!42290 r1!6279)) (head!15964 lt!2675390)))))

(declare-fun b!7807475 () Bool)

(assert (=> b!7807475 (= c!1437809 ((_ is Union!20889) r1!6279))))

(assert (=> b!7807475 (= e!4621508 e!4621509)))

(declare-fun bm!724222 () Bool)

(declare-fun call!724225 () Regex!20889)

(assert (=> bm!724222 (= call!724227 call!724225)))

(declare-fun bm!724223 () Bool)

(assert (=> bm!724223 (= call!724225 (derivativeStep!6226 (ite c!1437809 (regTwo!42291 r1!6279) (ite c!1437805 (reg!21218 r1!6279) (ite c!1437807 (regTwo!42290 r1!6279) (regOne!42290 r1!6279)))) (head!15964 lt!2675390)))))

(declare-fun b!7807476 () Bool)

(assert (=> b!7807476 (= e!4621509 (Union!20889 call!724228 call!724225))))

(assert (= (and d!2348358 c!1437806) b!7807470))

(assert (= (and d!2348358 (not c!1437806)) b!7807472))

(assert (= (and b!7807472 c!1437808) b!7807467))

(assert (= (and b!7807472 (not c!1437808)) b!7807475))

(assert (= (and b!7807475 c!1437809) b!7807476))

(assert (= (and b!7807475 (not c!1437809)) b!7807469))

(assert (= (and b!7807469 c!1437805) b!7807471))

(assert (= (and b!7807469 (not c!1437805)) b!7807474))

(assert (= (and b!7807474 c!1437807) b!7807473))

(assert (= (and b!7807474 (not c!1437807)) b!7807468))

(assert (= (or b!7807473 b!7807468) bm!724220))

(assert (= (or b!7807471 bm!724220) bm!724222))

(assert (= (or b!7807476 bm!724222) bm!724223))

(assert (= (or b!7807476 b!7807473) bm!724221))

(assert (=> b!7807474 m!8239756))

(declare-fun m!8240438 () Bool)

(assert (=> d!2348358 m!8240438))

(assert (=> d!2348358 m!8239542))

(assert (=> bm!724221 m!8239802))

(declare-fun m!8240440 () Bool)

(assert (=> bm!724221 m!8240440))

(assert (=> bm!724223 m!8239802))

(declare-fun m!8240444 () Bool)

(assert (=> bm!724223 m!8240444))

(assert (=> b!7806801 d!2348358))

(assert (=> b!7806801 d!2348182))

(assert (=> b!7806801 d!2348134))

(assert (=> bm!724058 d!2348154))

(assert (=> d!2348110 d!2348148))

(assert (=> d!2348110 d!2348074))

(declare-fun d!2348360 () Bool)

(declare-fun lt!2675524 () Int)

(assert (=> d!2348360 (>= lt!2675524 0)))

(declare-fun e!4621513 () Int)

(assert (=> d!2348360 (= lt!2675524 e!4621513)))

(declare-fun c!1437810 () Bool)

(assert (=> d!2348360 (= c!1437810 ((_ is Nil!73604) lt!2675390))))

(assert (=> d!2348360 (= (size!42731 lt!2675390) lt!2675524)))

(declare-fun b!7807477 () Bool)

(assert (=> b!7807477 (= e!4621513 0)))

(declare-fun b!7807478 () Bool)

(assert (=> b!7807478 (= e!4621513 (+ 1 (size!42731 (t!388463 lt!2675390))))))

(assert (= (and d!2348360 c!1437810) b!7807477))

(assert (= (and d!2348360 (not c!1437810)) b!7807478))

(assert (=> b!7807478 m!8240062))

(assert (=> b!7806718 d!2348360))

(assert (=> b!7806718 d!2348174))

(declare-fun b!7807479 () Bool)

(declare-fun e!4621518 () Bool)

(declare-fun e!4621519 () Bool)

(assert (=> b!7807479 (= e!4621518 e!4621519)))

(declare-fun res!3109432 () Bool)

(assert (=> b!7807479 (=> (not res!3109432) (not e!4621519))))

(declare-fun lt!2675525 () Bool)

(assert (=> b!7807479 (= res!3109432 (not lt!2675525))))

(declare-fun b!7807480 () Bool)

(declare-fun res!3109433 () Bool)

(assert (=> b!7807480 (=> res!3109433 e!4621518)))

(assert (=> b!7807480 (= res!3109433 (not ((_ is ElementMatch!20889) (derivativeStep!6226 lt!2675386 (head!15964 (t!388463 s!14292))))))))

(declare-fun e!4621514 () Bool)

(assert (=> b!7807480 (= e!4621514 e!4621518)))

(declare-fun b!7807482 () Bool)

(declare-fun e!4621517 () Bool)

(assert (=> b!7807482 (= e!4621517 (= (head!15964 (tail!15505 (t!388463 s!14292))) (c!1437502 (derivativeStep!6226 lt!2675386 (head!15964 (t!388463 s!14292))))))))

(declare-fun b!7807483 () Bool)

(declare-fun e!4621515 () Bool)

(declare-fun call!724229 () Bool)

(assert (=> b!7807483 (= e!4621515 (= lt!2675525 call!724229))))

(declare-fun bm!724224 () Bool)

(assert (=> bm!724224 (= call!724229 (isEmpty!42257 (tail!15505 (t!388463 s!14292))))))

(declare-fun b!7807484 () Bool)

(declare-fun res!3109438 () Bool)

(assert (=> b!7807484 (=> (not res!3109438) (not e!4621517))))

(assert (=> b!7807484 (= res!3109438 (not call!724229))))

(declare-fun b!7807485 () Bool)

(assert (=> b!7807485 (= e!4621515 e!4621514)))

(declare-fun c!1437813 () Bool)

(assert (=> b!7807485 (= c!1437813 ((_ is EmptyLang!20889) (derivativeStep!6226 lt!2675386 (head!15964 (t!388463 s!14292)))))))

(declare-fun b!7807486 () Bool)

(declare-fun res!3109435 () Bool)

(assert (=> b!7807486 (=> res!3109435 e!4621518)))

(assert (=> b!7807486 (= res!3109435 e!4621517)))

(declare-fun res!3109436 () Bool)

(assert (=> b!7807486 (=> (not res!3109436) (not e!4621517))))

(assert (=> b!7807486 (= res!3109436 lt!2675525)))

(declare-fun b!7807487 () Bool)

(declare-fun res!3109434 () Bool)

(assert (=> b!7807487 (=> (not res!3109434) (not e!4621517))))

(assert (=> b!7807487 (= res!3109434 (isEmpty!42257 (tail!15505 (tail!15505 (t!388463 s!14292)))))))

(declare-fun b!7807488 () Bool)

(declare-fun res!3109437 () Bool)

(declare-fun e!4621516 () Bool)

(assert (=> b!7807488 (=> res!3109437 e!4621516)))

(assert (=> b!7807488 (= res!3109437 (not (isEmpty!42257 (tail!15505 (tail!15505 (t!388463 s!14292))))))))

(declare-fun b!7807489 () Bool)

(declare-fun e!4621520 () Bool)

(assert (=> b!7807489 (= e!4621520 (nullable!9273 (derivativeStep!6226 lt!2675386 (head!15964 (t!388463 s!14292)))))))

(declare-fun b!7807490 () Bool)

(assert (=> b!7807490 (= e!4621516 (not (= (head!15964 (tail!15505 (t!388463 s!14292))) (c!1437502 (derivativeStep!6226 lt!2675386 (head!15964 (t!388463 s!14292)))))))))

(declare-fun b!7807481 () Bool)

(assert (=> b!7807481 (= e!4621520 (matchR!10349 (derivativeStep!6226 (derivativeStep!6226 lt!2675386 (head!15964 (t!388463 s!14292))) (head!15964 (tail!15505 (t!388463 s!14292)))) (tail!15505 (tail!15505 (t!388463 s!14292)))))))

(declare-fun d!2348362 () Bool)

(assert (=> d!2348362 e!4621515))

(declare-fun c!1437811 () Bool)

(assert (=> d!2348362 (= c!1437811 ((_ is EmptyExpr!20889) (derivativeStep!6226 lt!2675386 (head!15964 (t!388463 s!14292)))))))

(assert (=> d!2348362 (= lt!2675525 e!4621520)))

(declare-fun c!1437812 () Bool)

(assert (=> d!2348362 (= c!1437812 (isEmpty!42257 (tail!15505 (t!388463 s!14292))))))

(assert (=> d!2348362 (validRegex!11303 (derivativeStep!6226 lt!2675386 (head!15964 (t!388463 s!14292))))))

(assert (=> d!2348362 (= (matchR!10349 (derivativeStep!6226 lt!2675386 (head!15964 (t!388463 s!14292))) (tail!15505 (t!388463 s!14292))) lt!2675525)))

(declare-fun b!7807491 () Bool)

(assert (=> b!7807491 (= e!4621519 e!4621516)))

(declare-fun res!3109439 () Bool)

(assert (=> b!7807491 (=> res!3109439 e!4621516)))

(assert (=> b!7807491 (= res!3109439 call!724229)))

(declare-fun b!7807492 () Bool)

(assert (=> b!7807492 (= e!4621514 (not lt!2675525))))

(assert (= (and d!2348362 c!1437812) b!7807489))

(assert (= (and d!2348362 (not c!1437812)) b!7807481))

(assert (= (and d!2348362 c!1437811) b!7807483))

(assert (= (and d!2348362 (not c!1437811)) b!7807485))

(assert (= (and b!7807485 c!1437813) b!7807492))

(assert (= (and b!7807485 (not c!1437813)) b!7807480))

(assert (= (and b!7807480 (not res!3109433)) b!7807486))

(assert (= (and b!7807486 res!3109436) b!7807484))

(assert (= (and b!7807484 res!3109438) b!7807487))

(assert (= (and b!7807487 res!3109434) b!7807482))

(assert (= (and b!7807486 (not res!3109435)) b!7807479))

(assert (= (and b!7807479 res!3109432) b!7807491))

(assert (= (and b!7807491 (not res!3109439)) b!7807488))

(assert (= (and b!7807488 (not res!3109437)) b!7807490))

(assert (= (or b!7807483 b!7807484 b!7807491) bm!724224))

(assert (=> b!7807481 m!8239612))

(assert (=> b!7807481 m!8239926))

(assert (=> b!7807481 m!8239834))

(assert (=> b!7807481 m!8239926))

(declare-fun m!8240456 () Bool)

(assert (=> b!7807481 m!8240456))

(assert (=> b!7807481 m!8239612))

(assert (=> b!7807481 m!8239930))

(assert (=> b!7807481 m!8240456))

(assert (=> b!7807481 m!8239930))

(declare-fun m!8240460 () Bool)

(assert (=> b!7807481 m!8240460))

(assert (=> d!2348362 m!8239612))

(assert (=> d!2348362 m!8239620))

(assert (=> d!2348362 m!8239834))

(declare-fun m!8240462 () Bool)

(assert (=> d!2348362 m!8240462))

(assert (=> b!7807490 m!8239612))

(assert (=> b!7807490 m!8239926))

(assert (=> b!7807487 m!8239612))

(assert (=> b!7807487 m!8239930))

(assert (=> b!7807487 m!8239930))

(assert (=> b!7807487 m!8239936))

(assert (=> b!7807488 m!8239612))

(assert (=> b!7807488 m!8239930))

(assert (=> b!7807488 m!8239930))

(assert (=> b!7807488 m!8239936))

(assert (=> b!7807482 m!8239612))

(assert (=> b!7807482 m!8239926))

(assert (=> bm!724224 m!8239612))

(assert (=> bm!724224 m!8239620))

(assert (=> b!7807489 m!8239834))

(declare-fun m!8240464 () Bool)

(assert (=> b!7807489 m!8240464))

(assert (=> b!7806741 d!2348362))

(declare-fun b!7807503 () Bool)

(declare-fun e!4621526 () Regex!20889)

(assert (=> b!7807503 (= e!4621526 (ite (= (head!15964 (t!388463 s!14292)) (c!1437502 lt!2675386)) EmptyExpr!20889 EmptyLang!20889))))

(declare-fun b!7807504 () Bool)

(declare-fun e!4621530 () Regex!20889)

(declare-fun call!724235 () Regex!20889)

(assert (=> b!7807504 (= e!4621530 (Union!20889 (Concat!29734 call!724235 (regTwo!42290 lt!2675386)) EmptyLang!20889))))

(declare-fun b!7807505 () Bool)

(declare-fun e!4621527 () Regex!20889)

(declare-fun e!4621529 () Regex!20889)

(assert (=> b!7807505 (= e!4621527 e!4621529)))

(declare-fun c!1437819 () Bool)

(assert (=> b!7807505 (= c!1437819 ((_ is Star!20889) lt!2675386))))

(declare-fun b!7807506 () Bool)

(declare-fun e!4621528 () Regex!20889)

(assert (=> b!7807506 (= e!4621528 EmptyLang!20889)))

(declare-fun b!7807507 () Bool)

(declare-fun call!724236 () Regex!20889)

(assert (=> b!7807507 (= e!4621529 (Concat!29734 call!724236 lt!2675386))))

(declare-fun b!7807508 () Bool)

(assert (=> b!7807508 (= e!4621528 e!4621526)))

(declare-fun c!1437822 () Bool)

(assert (=> b!7807508 (= c!1437822 ((_ is ElementMatch!20889) lt!2675386))))

(declare-fun bm!724229 () Bool)

(assert (=> bm!724229 (= call!724235 call!724236)))

(declare-fun b!7807509 () Bool)

(declare-fun call!724237 () Regex!20889)

(assert (=> b!7807509 (= e!4621530 (Union!20889 (Concat!29734 call!724237 (regTwo!42290 lt!2675386)) call!724235))))

(declare-fun b!7807510 () Bool)

(declare-fun c!1437821 () Bool)

(assert (=> b!7807510 (= c!1437821 (nullable!9273 (regOne!42290 lt!2675386)))))

(assert (=> b!7807510 (= e!4621529 e!4621530)))

(declare-fun d!2348370 () Bool)

(declare-fun lt!2675527 () Regex!20889)

(assert (=> d!2348370 (validRegex!11303 lt!2675527)))

(assert (=> d!2348370 (= lt!2675527 e!4621528)))

(declare-fun c!1437820 () Bool)

(assert (=> d!2348370 (= c!1437820 (or ((_ is EmptyExpr!20889) lt!2675386) ((_ is EmptyLang!20889) lt!2675386)))))

(assert (=> d!2348370 (validRegex!11303 lt!2675386)))

(assert (=> d!2348370 (= (derivativeStep!6226 lt!2675386 (head!15964 (t!388463 s!14292))) lt!2675527)))

(declare-fun bm!724230 () Bool)

(declare-fun c!1437823 () Bool)

(assert (=> bm!724230 (= call!724237 (derivativeStep!6226 (ite c!1437823 (regOne!42291 lt!2675386) (regOne!42290 lt!2675386)) (head!15964 (t!388463 s!14292))))))

(declare-fun b!7807511 () Bool)

(assert (=> b!7807511 (= c!1437823 ((_ is Union!20889) lt!2675386))))

(assert (=> b!7807511 (= e!4621526 e!4621527)))

(declare-fun bm!724231 () Bool)

(declare-fun call!724234 () Regex!20889)

(assert (=> bm!724231 (= call!724236 call!724234)))

(declare-fun bm!724232 () Bool)

(assert (=> bm!724232 (= call!724234 (derivativeStep!6226 (ite c!1437823 (regTwo!42291 lt!2675386) (ite c!1437819 (reg!21218 lt!2675386) (ite c!1437821 (regTwo!42290 lt!2675386) (regOne!42290 lt!2675386)))) (head!15964 (t!388463 s!14292))))))

(declare-fun b!7807512 () Bool)

(assert (=> b!7807512 (= e!4621527 (Union!20889 call!724237 call!724234))))

(assert (= (and d!2348370 c!1437820) b!7807506))

(assert (= (and d!2348370 (not c!1437820)) b!7807508))

(assert (= (and b!7807508 c!1437822) b!7807503))

(assert (= (and b!7807508 (not c!1437822)) b!7807511))

(assert (= (and b!7807511 c!1437823) b!7807512))

(assert (= (and b!7807511 (not c!1437823)) b!7807505))

(assert (= (and b!7807505 c!1437819) b!7807507))

(assert (= (and b!7807505 (not c!1437819)) b!7807510))

(assert (= (and b!7807510 c!1437821) b!7807509))

(assert (= (and b!7807510 (not c!1437821)) b!7807504))

(assert (= (or b!7807509 b!7807504) bm!724229))

(assert (= (or b!7807507 bm!724229) bm!724231))

(assert (= (or b!7807512 bm!724231) bm!724232))

(assert (= (or b!7807512 b!7807509) bm!724230))

(declare-fun m!8240480 () Bool)

(assert (=> b!7807510 m!8240480))

(declare-fun m!8240482 () Bool)

(assert (=> d!2348370 m!8240482))

(assert (=> d!2348370 m!8239838))

(assert (=> bm!724230 m!8239608))

(declare-fun m!8240486 () Bool)

(assert (=> bm!724230 m!8240486))

(assert (=> bm!724232 m!8239608))

(declare-fun m!8240488 () Bool)

(assert (=> bm!724232 m!8240488))

(assert (=> b!7806741 d!2348370))

(assert (=> b!7806741 d!2348126))

(assert (=> b!7806741 d!2348128))

(declare-fun d!2348378 () Bool)

(declare-fun lt!2675529 () Int)

(assert (=> d!2348378 (>= lt!2675529 0)))

(declare-fun e!4621540 () Int)

(assert (=> d!2348378 (= lt!2675529 e!4621540)))

(declare-fun c!1437827 () Bool)

(assert (=> d!2348378 (= c!1437827 ((_ is Nil!73604) lt!2675459))))

(assert (=> d!2348378 (= (size!42731 lt!2675459) lt!2675529)))

(declare-fun b!7807526 () Bool)

(assert (=> b!7807526 (= e!4621540 0)))

(declare-fun b!7807527 () Bool)

(assert (=> b!7807527 (= e!4621540 (+ 1 (size!42731 (t!388463 lt!2675459))))))

(assert (= (and d!2348378 c!1437827) b!7807526))

(assert (= (and d!2348378 (not c!1437827)) b!7807527))

(declare-fun m!8240490 () Bool)

(assert (=> b!7807527 m!8240490))

(assert (=> b!7806770 d!2348378))

(assert (=> b!7806770 d!2348360))

(declare-fun d!2348380 () Bool)

(declare-fun lt!2675530 () Int)

(assert (=> d!2348380 (>= lt!2675530 0)))

(declare-fun e!4621541 () Int)

(assert (=> d!2348380 (= lt!2675530 e!4621541)))

(declare-fun c!1437828 () Bool)

(assert (=> d!2348380 (= c!1437828 ((_ is Nil!73604) (_2!38285 lt!2675385)))))

(assert (=> d!2348380 (= (size!42731 (_2!38285 lt!2675385)) lt!2675530)))

(declare-fun b!7807528 () Bool)

(assert (=> b!7807528 (= e!4621541 0)))

(declare-fun b!7807529 () Bool)

(assert (=> b!7807529 (= e!4621541 (+ 1 (size!42731 (t!388463 (_2!38285 lt!2675385)))))))

(assert (= (and d!2348380 c!1437828) b!7807528))

(assert (= (and d!2348380 (not c!1437828)) b!7807529))

(declare-fun m!8240492 () Bool)

(assert (=> b!7807529 m!8240492))

(assert (=> b!7806770 d!2348380))

(assert (=> b!7806491 d!2348126))

(declare-fun d!2348382 () Bool)

(assert (not d!2348382))

(assert (=> b!7806716 d!2348382))

(assert (=> b!7806716 d!2348182))

(declare-fun d!2348386 () Bool)

(assert (=> d!2348386 (= (isEmpty!42259 lt!2675392) (not ((_ is Some!17775) lt!2675392)))))

(assert (=> d!2348106 d!2348386))

(assert (=> d!2348092 d!2348154))

(assert (=> d!2348092 d!2348188))

(declare-fun b!7807540 () Bool)

(declare-fun e!4621553 () Bool)

(declare-fun e!4621549 () Bool)

(assert (=> b!7807540 (= e!4621553 e!4621549)))

(declare-fun c!1437831 () Bool)

(assert (=> b!7807540 (= c!1437831 ((_ is Union!20889) (ite c!1437615 (regTwo!42291 r2!6217) (regTwo!42290 r2!6217))))))

(declare-fun b!7807541 () Bool)

(declare-fun e!4621551 () Bool)

(assert (=> b!7807541 (= e!4621551 e!4621553)))

(declare-fun c!1437832 () Bool)

(assert (=> b!7807541 (= c!1437832 ((_ is Star!20889) (ite c!1437615 (regTwo!42291 r2!6217) (regTwo!42290 r2!6217))))))

(declare-fun b!7807542 () Bool)

(declare-fun e!4621550 () Bool)

(assert (=> b!7807542 (= e!4621553 e!4621550)))

(declare-fun res!3109453 () Bool)

(assert (=> b!7807542 (= res!3109453 (not (nullable!9273 (reg!21218 (ite c!1437615 (regTwo!42291 r2!6217) (regTwo!42290 r2!6217))))))))

(assert (=> b!7807542 (=> (not res!3109453) (not e!4621550))))

(declare-fun b!7807543 () Bool)

(declare-fun e!4621555 () Bool)

(declare-fun e!4621554 () Bool)

(assert (=> b!7807543 (= e!4621555 e!4621554)))

(declare-fun res!3109455 () Bool)

(assert (=> b!7807543 (=> (not res!3109455) (not e!4621554))))

(declare-fun call!724246 () Bool)

(assert (=> b!7807543 (= res!3109455 call!724246)))

(declare-fun b!7807544 () Bool)

(declare-fun res!3109454 () Bool)

(assert (=> b!7807544 (=> res!3109454 e!4621555)))

(assert (=> b!7807544 (= res!3109454 (not ((_ is Concat!29734) (ite c!1437615 (regTwo!42291 r2!6217) (regTwo!42290 r2!6217)))))))

(assert (=> b!7807544 (= e!4621549 e!4621555)))

(declare-fun call!724245 () Bool)

(declare-fun bm!724239 () Bool)

(assert (=> bm!724239 (= call!724245 (validRegex!11303 (ite c!1437831 (regTwo!42291 (ite c!1437615 (regTwo!42291 r2!6217) (regTwo!42290 r2!6217))) (regTwo!42290 (ite c!1437615 (regTwo!42291 r2!6217) (regTwo!42290 r2!6217))))))))

(declare-fun bm!724240 () Bool)

(declare-fun call!724244 () Bool)

(assert (=> bm!724240 (= call!724246 call!724244)))

(declare-fun b!7807539 () Bool)

(assert (=> b!7807539 (= e!4621554 call!724245)))

(declare-fun d!2348388 () Bool)

(declare-fun res!3109452 () Bool)

(assert (=> d!2348388 (=> res!3109452 e!4621551)))

(assert (=> d!2348388 (= res!3109452 ((_ is ElementMatch!20889) (ite c!1437615 (regTwo!42291 r2!6217) (regTwo!42290 r2!6217))))))

(assert (=> d!2348388 (= (validRegex!11303 (ite c!1437615 (regTwo!42291 r2!6217) (regTwo!42290 r2!6217))) e!4621551)))

(declare-fun b!7807545 () Bool)

(assert (=> b!7807545 (= e!4621550 call!724244)))

(declare-fun b!7807546 () Bool)

(declare-fun res!3109456 () Bool)

(declare-fun e!4621552 () Bool)

(assert (=> b!7807546 (=> (not res!3109456) (not e!4621552))))

(assert (=> b!7807546 (= res!3109456 call!724246)))

(assert (=> b!7807546 (= e!4621549 e!4621552)))

(declare-fun b!7807547 () Bool)

(assert (=> b!7807547 (= e!4621552 call!724245)))

(declare-fun bm!724241 () Bool)

(assert (=> bm!724241 (= call!724244 (validRegex!11303 (ite c!1437832 (reg!21218 (ite c!1437615 (regTwo!42291 r2!6217) (regTwo!42290 r2!6217))) (ite c!1437831 (regOne!42291 (ite c!1437615 (regTwo!42291 r2!6217) (regTwo!42290 r2!6217))) (regOne!42290 (ite c!1437615 (regTwo!42291 r2!6217) (regTwo!42290 r2!6217)))))))))

(assert (= (and d!2348388 (not res!3109452)) b!7807541))

(assert (= (and b!7807541 c!1437832) b!7807542))

(assert (= (and b!7807541 (not c!1437832)) b!7807540))

(assert (= (and b!7807542 res!3109453) b!7807545))

(assert (= (and b!7807540 c!1437831) b!7807546))

(assert (= (and b!7807540 (not c!1437831)) b!7807544))

(assert (= (and b!7807546 res!3109456) b!7807547))

(assert (= (and b!7807544 (not res!3109454)) b!7807543))

(assert (= (and b!7807543 res!3109455) b!7807539))

(assert (= (or b!7807546 b!7807543) bm!724240))

(assert (= (or b!7807547 b!7807539) bm!724239))

(assert (= (or b!7807545 bm!724240) bm!724241))

(declare-fun m!8240510 () Bool)

(assert (=> b!7807542 m!8240510))

(declare-fun m!8240514 () Bool)

(assert (=> bm!724239 m!8240514))

(declare-fun m!8240516 () Bool)

(assert (=> bm!724241 m!8240516))

(assert (=> bm!724092 d!2348388))

(assert (=> b!7806369 d!2348126))

(assert (=> bm!724090 d!2348256))

(assert (=> b!7806367 d!2348146))

(assert (=> b!7806367 d!2348128))

(assert (=> b!7806722 d!2348164))

(declare-fun b!7807566 () Bool)

(declare-fun e!4621565 () List!73728)

(assert (=> b!7807566 (= e!4621565 (t!388463 (t!388463 s!14292)))))

(declare-fun b!7807568 () Bool)

(declare-fun res!3109465 () Bool)

(declare-fun e!4621566 () Bool)

(assert (=> b!7807568 (=> (not res!3109465) (not e!4621566))))

(declare-fun lt!2675534 () List!73728)

(assert (=> b!7807568 (= res!3109465 (= (size!42731 lt!2675534) (+ (size!42731 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604))) (size!42731 (t!388463 (t!388463 s!14292))))))))

(declare-fun b!7807569 () Bool)

(assert (=> b!7807569 (= e!4621566 (or (not (= (t!388463 (t!388463 s!14292)) Nil!73604)) (= lt!2675534 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)))))))

(declare-fun b!7807567 () Bool)

(assert (=> b!7807567 (= e!4621565 (Cons!73604 (h!80052 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604))) (++!17949 (t!388463 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604))) (t!388463 (t!388463 s!14292)))))))

(declare-fun d!2348400 () Bool)

(assert (=> d!2348400 e!4621566))

(declare-fun res!3109466 () Bool)

(assert (=> d!2348400 (=> (not res!3109466) (not e!4621566))))

(assert (=> d!2348400 (= res!3109466 (= (content!15628 lt!2675534) ((_ map or) (content!15628 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604))) (content!15628 (t!388463 (t!388463 s!14292))))))))

(assert (=> d!2348400 (= lt!2675534 e!4621565)))

(declare-fun c!1437838 () Bool)

(assert (=> d!2348400 (= c!1437838 ((_ is Nil!73604) (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604))))))

(assert (=> d!2348400 (= (++!17949 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)) (t!388463 (t!388463 s!14292))) lt!2675534)))

(assert (= (and d!2348400 c!1437838) b!7807566))

(assert (= (and d!2348400 (not c!1437838)) b!7807567))

(assert (= (and d!2348400 res!3109466) b!7807568))

(assert (= (and b!7807568 res!3109465) b!7807569))

(declare-fun m!8240518 () Bool)

(assert (=> b!7807568 m!8240518))

(assert (=> b!7807568 m!8239878))

(declare-fun m!8240520 () Bool)

(assert (=> b!7807568 m!8240520))

(declare-fun m!8240522 () Bool)

(assert (=> b!7807568 m!8240522))

(declare-fun m!8240524 () Bool)

(assert (=> b!7807567 m!8240524))

(declare-fun m!8240526 () Bool)

(assert (=> d!2348400 m!8240526))

(assert (=> d!2348400 m!8239878))

(declare-fun m!8240528 () Bool)

(assert (=> d!2348400 m!8240528))

(declare-fun m!8240530 () Bool)

(assert (=> d!2348400 m!8240530))

(assert (=> b!7806797 d!2348400))

(declare-fun b!7807570 () Bool)

(declare-fun e!4621567 () List!73728)

(assert (=> b!7807570 (= e!4621567 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604))))

(declare-fun b!7807572 () Bool)

(declare-fun res!3109467 () Bool)

(declare-fun e!4621568 () Bool)

(assert (=> b!7807572 (=> (not res!3109467) (not e!4621568))))

(declare-fun lt!2675535 () List!73728)

(assert (=> b!7807572 (= res!3109467 (= (size!42731 lt!2675535) (+ (size!42731 Nil!73604) (size!42731 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)))))))

(declare-fun b!7807573 () Bool)

(assert (=> b!7807573 (= e!4621568 (or (not (= (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604) Nil!73604)) (= lt!2675535 Nil!73604)))))

(declare-fun b!7807571 () Bool)

(assert (=> b!7807571 (= e!4621567 (Cons!73604 (h!80052 Nil!73604) (++!17949 (t!388463 Nil!73604) (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604))))))

(declare-fun d!2348402 () Bool)

(assert (=> d!2348402 e!4621568))

(declare-fun res!3109468 () Bool)

(assert (=> d!2348402 (=> (not res!3109468) (not e!4621568))))

(assert (=> d!2348402 (= res!3109468 (= (content!15628 lt!2675535) ((_ map or) (content!15628 Nil!73604) (content!15628 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)))))))

(assert (=> d!2348402 (= lt!2675535 e!4621567)))

(declare-fun c!1437839 () Bool)

(assert (=> d!2348402 (= c!1437839 ((_ is Nil!73604) Nil!73604))))

(assert (=> d!2348402 (= (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)) lt!2675535)))

(assert (= (and d!2348402 c!1437839) b!7807570))

(assert (= (and d!2348402 (not c!1437839)) b!7807571))

(assert (= (and d!2348402 res!3109468) b!7807572))

(assert (= (and b!7807572 res!3109467) b!7807573))

(declare-fun m!8240544 () Bool)

(assert (=> b!7807572 m!8240544))

(assert (=> b!7807572 m!8239744))

(declare-fun m!8240548 () Bool)

(assert (=> b!7807572 m!8240548))

(declare-fun m!8240550 () Bool)

(assert (=> b!7807571 m!8240550))

(declare-fun m!8240552 () Bool)

(assert (=> d!2348402 m!8240552))

(assert (=> d!2348402 m!8239752))

(declare-fun m!8240554 () Bool)

(assert (=> d!2348402 m!8240554))

(assert (=> b!7806797 d!2348402))

(declare-fun d!2348406 () Bool)

(assert (=> d!2348406 (= (++!17949 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)) (t!388463 (t!388463 s!14292))) (t!388463 s!14292))))

(declare-fun lt!2675540 () Unit!168616)

(declare-fun choose!59575 (List!73728 C!42104 List!73728 List!73728) Unit!168616)

(assert (=> d!2348406 (= lt!2675540 (choose!59575 Nil!73604 (h!80052 (t!388463 s!14292)) (t!388463 (t!388463 s!14292)) (t!388463 s!14292)))))

(assert (=> d!2348406 (= (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) (t!388463 (t!388463 s!14292)))) (t!388463 s!14292))))

(assert (=> d!2348406 (= (lemmaMoveElementToOtherListKeepsConcatEq!3420 Nil!73604 (h!80052 (t!388463 s!14292)) (t!388463 (t!388463 s!14292)) (t!388463 s!14292)) lt!2675540)))

(declare-fun bs!1966577 () Bool)

(assert (= bs!1966577 d!2348406))

(assert (=> bs!1966577 m!8239878))

(assert (=> bs!1966577 m!8239878))

(assert (=> bs!1966577 m!8239880))

(declare-fun m!8240584 () Bool)

(assert (=> bs!1966577 m!8240584))

(declare-fun m!8240586 () Bool)

(assert (=> bs!1966577 m!8240586))

(assert (=> b!7806797 d!2348406))

(declare-fun b!7807612 () Bool)

(declare-fun e!4621595 () Option!17776)

(declare-fun e!4621594 () Option!17776)

(assert (=> b!7807612 (= e!4621595 e!4621594)))

(declare-fun c!1437854 () Bool)

(assert (=> b!7807612 (= c!1437854 ((_ is Nil!73604) (t!388463 (t!388463 s!14292))))))

(declare-fun b!7807613 () Bool)

(declare-fun e!4621597 () Bool)

(declare-fun lt!2675543 () Option!17776)

(assert (=> b!7807613 (= e!4621597 (not (isDefined!14386 lt!2675543)))))

(declare-fun b!7807614 () Bool)

(declare-fun e!4621593 () Bool)

(assert (=> b!7807614 (= e!4621593 (= (++!17949 (_1!38285 (get!26345 lt!2675543)) (_2!38285 (get!26345 lt!2675543))) (t!388463 s!14292)))))

(declare-fun d!2348416 () Bool)

(assert (=> d!2348416 e!4621597))

(declare-fun res!3109483 () Bool)

(assert (=> d!2348416 (=> res!3109483 e!4621597)))

(assert (=> d!2348416 (= res!3109483 e!4621593)))

(declare-fun res!3109482 () Bool)

(assert (=> d!2348416 (=> (not res!3109482) (not e!4621593))))

(assert (=> d!2348416 (= res!3109482 (isDefined!14386 lt!2675543))))

(assert (=> d!2348416 (= lt!2675543 e!4621595)))

(declare-fun c!1437855 () Bool)

(declare-fun e!4621596 () Bool)

(assert (=> d!2348416 (= c!1437855 e!4621596)))

(declare-fun res!3109479 () Bool)

(assert (=> d!2348416 (=> (not res!3109479) (not e!4621596))))

(assert (=> d!2348416 (= res!3109479 (matchR!10349 lt!2675387 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604))))))

(assert (=> d!2348416 (validRegex!11303 lt!2675387)))

(assert (=> d!2348416 (= (findConcatSeparation!3806 lt!2675387 r2!6217 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)) (t!388463 (t!388463 s!14292)) (t!388463 s!14292)) lt!2675543)))

(declare-fun b!7807615 () Bool)

(assert (=> b!7807615 (= e!4621596 (matchR!10349 r2!6217 (t!388463 (t!388463 s!14292))))))

(declare-fun b!7807616 () Bool)

(declare-fun res!3109481 () Bool)

(assert (=> b!7807616 (=> (not res!3109481) (not e!4621593))))

(assert (=> b!7807616 (= res!3109481 (matchR!10349 r2!6217 (_2!38285 (get!26345 lt!2675543))))))

(declare-fun b!7807617 () Bool)

(assert (=> b!7807617 (= e!4621595 (Some!17775 (tuple2!69965 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)) (t!388463 (t!388463 s!14292)))))))

(declare-fun b!7807618 () Bool)

(declare-fun res!3109480 () Bool)

(assert (=> b!7807618 (=> (not res!3109480) (not e!4621593))))

(assert (=> b!7807618 (= res!3109480 (matchR!10349 lt!2675387 (_1!38285 (get!26345 lt!2675543))))))

(declare-fun b!7807619 () Bool)

(declare-fun lt!2675541 () Unit!168616)

(declare-fun lt!2675542 () Unit!168616)

(assert (=> b!7807619 (= lt!2675541 lt!2675542)))

(assert (=> b!7807619 (= (++!17949 (++!17949 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)) (Cons!73604 (h!80052 (t!388463 (t!388463 s!14292))) Nil!73604)) (t!388463 (t!388463 (t!388463 s!14292)))) (t!388463 s!14292))))

(assert (=> b!7807619 (= lt!2675542 (lemmaMoveElementToOtherListKeepsConcatEq!3420 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)) (h!80052 (t!388463 (t!388463 s!14292))) (t!388463 (t!388463 (t!388463 s!14292))) (t!388463 s!14292)))))

(assert (=> b!7807619 (= e!4621594 (findConcatSeparation!3806 lt!2675387 r2!6217 (++!17949 (++!17949 Nil!73604 (Cons!73604 (h!80052 (t!388463 s!14292)) Nil!73604)) (Cons!73604 (h!80052 (t!388463 (t!388463 s!14292))) Nil!73604)) (t!388463 (t!388463 (t!388463 s!14292))) (t!388463 s!14292)))))

(declare-fun b!7807620 () Bool)

(assert (=> b!7807620 (= e!4621594 None!17775)))

(assert (= (and d!2348416 res!3109479) b!7807615))

(assert (= (and d!2348416 c!1437855) b!7807617))

(assert (= (and d!2348416 (not c!1437855)) b!7807612))

(assert (= (and b!7807612 c!1437854) b!7807620))

(assert (= (and b!7807612 (not c!1437854)) b!7807619))

(assert (= (and d!2348416 res!3109482) b!7807618))

(assert (= (and b!7807618 res!3109480) b!7807616))

(assert (= (and b!7807616 res!3109481) b!7807614))

(assert (= (and d!2348416 (not res!3109483)) b!7807613))

(declare-fun m!8240588 () Bool)

(assert (=> d!2348416 m!8240588))

(assert (=> d!2348416 m!8239878))

(declare-fun m!8240590 () Bool)

(assert (=> d!2348416 m!8240590))

(assert (=> d!2348416 m!8239868))

(assert (=> b!7807613 m!8240588))

(declare-fun m!8240592 () Bool)

(assert (=> b!7807618 m!8240592))

(declare-fun m!8240594 () Bool)

(assert (=> b!7807618 m!8240594))

(assert (=> b!7807616 m!8240592))

(declare-fun m!8240596 () Bool)

(assert (=> b!7807616 m!8240596))

(assert (=> b!7807614 m!8240592))

(declare-fun m!8240598 () Bool)

(assert (=> b!7807614 m!8240598))

(assert (=> b!7807619 m!8239878))

(declare-fun m!8240600 () Bool)

(assert (=> b!7807619 m!8240600))

(assert (=> b!7807619 m!8240600))

(declare-fun m!8240602 () Bool)

(assert (=> b!7807619 m!8240602))

(assert (=> b!7807619 m!8239878))

(declare-fun m!8240604 () Bool)

(assert (=> b!7807619 m!8240604))

(assert (=> b!7807619 m!8240600))

(declare-fun m!8240606 () Bool)

(assert (=> b!7807619 m!8240606))

(declare-fun m!8240608 () Bool)

(assert (=> b!7807615 m!8240608))

(assert (=> b!7806797 d!2348416))

(declare-fun b!7807624 () Bool)

(declare-fun e!4621598 () Bool)

(declare-fun tp!2299875 () Bool)

(declare-fun tp!2299878 () Bool)

(assert (=> b!7807624 (= e!4621598 (and tp!2299875 tp!2299878))))

(assert (=> b!7806865 (= tp!2299871 e!4621598)))

(declare-fun b!7807623 () Bool)

(declare-fun tp!2299874 () Bool)

(assert (=> b!7807623 (= e!4621598 tp!2299874)))

(declare-fun b!7807621 () Bool)

(assert (=> b!7807621 (= e!4621598 tp_is_empty!52133)))

(declare-fun b!7807622 () Bool)

(declare-fun tp!2299876 () Bool)

(declare-fun tp!2299877 () Bool)

(assert (=> b!7807622 (= e!4621598 (and tp!2299876 tp!2299877))))

(assert (= (and b!7806865 ((_ is ElementMatch!20889) (regOne!42290 (reg!21218 r1!6279)))) b!7807621))

(assert (= (and b!7806865 ((_ is Concat!29734) (regOne!42290 (reg!21218 r1!6279)))) b!7807622))

(assert (= (and b!7806865 ((_ is Star!20889) (regOne!42290 (reg!21218 r1!6279)))) b!7807623))

(assert (= (and b!7806865 ((_ is Union!20889) (regOne!42290 (reg!21218 r1!6279)))) b!7807624))

(declare-fun b!7807628 () Bool)

(declare-fun e!4621599 () Bool)

(declare-fun tp!2299880 () Bool)

(declare-fun tp!2299883 () Bool)

(assert (=> b!7807628 (= e!4621599 (and tp!2299880 tp!2299883))))

(assert (=> b!7806865 (= tp!2299872 e!4621599)))

(declare-fun b!7807627 () Bool)

(declare-fun tp!2299879 () Bool)

(assert (=> b!7807627 (= e!4621599 tp!2299879)))

(declare-fun b!7807625 () Bool)

(assert (=> b!7807625 (= e!4621599 tp_is_empty!52133)))

(declare-fun b!7807626 () Bool)

(declare-fun tp!2299881 () Bool)

(declare-fun tp!2299882 () Bool)

(assert (=> b!7807626 (= e!4621599 (and tp!2299881 tp!2299882))))

(assert (= (and b!7806865 ((_ is ElementMatch!20889) (regTwo!42290 (reg!21218 r1!6279)))) b!7807625))

(assert (= (and b!7806865 ((_ is Concat!29734) (regTwo!42290 (reg!21218 r1!6279)))) b!7807626))

(assert (= (and b!7806865 ((_ is Star!20889) (regTwo!42290 (reg!21218 r1!6279)))) b!7807627))

(assert (= (and b!7806865 ((_ is Union!20889) (regTwo!42290 (reg!21218 r1!6279)))) b!7807628))

(declare-fun b!7807634 () Bool)

(declare-fun e!4621602 () Bool)

(declare-fun tp!2299885 () Bool)

(declare-fun tp!2299888 () Bool)

(assert (=> b!7807634 (= e!4621602 (and tp!2299885 tp!2299888))))

(assert (=> b!7806838 (= tp!2299834 e!4621602)))

(declare-fun b!7807633 () Bool)

(declare-fun tp!2299884 () Bool)

(assert (=> b!7807633 (= e!4621602 tp!2299884)))

(declare-fun b!7807631 () Bool)

(assert (=> b!7807631 (= e!4621602 tp_is_empty!52133)))

(declare-fun b!7807632 () Bool)

(declare-fun tp!2299886 () Bool)

(declare-fun tp!2299887 () Bool)

(assert (=> b!7807632 (= e!4621602 (and tp!2299886 tp!2299887))))

(assert (= (and b!7806838 ((_ is ElementMatch!20889) (reg!21218 (regOne!42291 r1!6279)))) b!7807631))

(assert (= (and b!7806838 ((_ is Concat!29734) (reg!21218 (regOne!42291 r1!6279)))) b!7807632))

(assert (= (and b!7806838 ((_ is Star!20889) (reg!21218 (regOne!42291 r1!6279)))) b!7807633))

(assert (= (and b!7806838 ((_ is Union!20889) (reg!21218 (regOne!42291 r1!6279)))) b!7807634))

(declare-fun b!7807638 () Bool)

(declare-fun e!4621603 () Bool)

(declare-fun tp!2299890 () Bool)

(declare-fun tp!2299893 () Bool)

(assert (=> b!7807638 (= e!4621603 (and tp!2299890 tp!2299893))))

(assert (=> b!7806839 (= tp!2299835 e!4621603)))

(declare-fun b!7807637 () Bool)

(declare-fun tp!2299889 () Bool)

(assert (=> b!7807637 (= e!4621603 tp!2299889)))

(declare-fun b!7807635 () Bool)

(assert (=> b!7807635 (= e!4621603 tp_is_empty!52133)))

(declare-fun b!7807636 () Bool)

(declare-fun tp!2299891 () Bool)

(declare-fun tp!2299892 () Bool)

(assert (=> b!7807636 (= e!4621603 (and tp!2299891 tp!2299892))))

(assert (= (and b!7806839 ((_ is ElementMatch!20889) (regOne!42291 (regOne!42291 r1!6279)))) b!7807635))

(assert (= (and b!7806839 ((_ is Concat!29734) (regOne!42291 (regOne!42291 r1!6279)))) b!7807636))

(assert (= (and b!7806839 ((_ is Star!20889) (regOne!42291 (regOne!42291 r1!6279)))) b!7807637))

(assert (= (and b!7806839 ((_ is Union!20889) (regOne!42291 (regOne!42291 r1!6279)))) b!7807638))

(declare-fun b!7807642 () Bool)

(declare-fun e!4621604 () Bool)

(declare-fun tp!2299895 () Bool)

(declare-fun tp!2299898 () Bool)

(assert (=> b!7807642 (= e!4621604 (and tp!2299895 tp!2299898))))

(assert (=> b!7806839 (= tp!2299838 e!4621604)))

(declare-fun b!7807641 () Bool)

(declare-fun tp!2299894 () Bool)

(assert (=> b!7807641 (= e!4621604 tp!2299894)))

(declare-fun b!7807639 () Bool)

(assert (=> b!7807639 (= e!4621604 tp_is_empty!52133)))

(declare-fun b!7807640 () Bool)

(declare-fun tp!2299896 () Bool)

(declare-fun tp!2299897 () Bool)

(assert (=> b!7807640 (= e!4621604 (and tp!2299896 tp!2299897))))

(assert (= (and b!7806839 ((_ is ElementMatch!20889) (regTwo!42291 (regOne!42291 r1!6279)))) b!7807639))

(assert (= (and b!7806839 ((_ is Concat!29734) (regTwo!42291 (regOne!42291 r1!6279)))) b!7807640))

(assert (= (and b!7806839 ((_ is Star!20889) (regTwo!42291 (regOne!42291 r1!6279)))) b!7807641))

(assert (= (and b!7806839 ((_ is Union!20889) (regTwo!42291 (regOne!42291 r1!6279)))) b!7807642))

(declare-fun b!7807647 () Bool)

(declare-fun e!4621606 () Bool)

(declare-fun tp!2299900 () Bool)

(declare-fun tp!2299903 () Bool)

(assert (=> b!7807647 (= e!4621606 (and tp!2299900 tp!2299903))))

(assert (=> b!7806846 (= tp!2299844 e!4621606)))

(declare-fun b!7807646 () Bool)

(declare-fun tp!2299899 () Bool)

(assert (=> b!7807646 (= e!4621606 tp!2299899)))

(declare-fun b!7807644 () Bool)

(assert (=> b!7807644 (= e!4621606 tp_is_empty!52133)))

(declare-fun b!7807645 () Bool)

(declare-fun tp!2299901 () Bool)

(declare-fun tp!2299902 () Bool)

(assert (=> b!7807645 (= e!4621606 (and tp!2299901 tp!2299902))))

(assert (= (and b!7806846 ((_ is ElementMatch!20889) (reg!21218 (reg!21218 r2!6217)))) b!7807644))

(assert (= (and b!7806846 ((_ is Concat!29734) (reg!21218 (reg!21218 r2!6217)))) b!7807645))

(assert (= (and b!7806846 ((_ is Star!20889) (reg!21218 (reg!21218 r2!6217)))) b!7807646))

(assert (= (and b!7806846 ((_ is Union!20889) (reg!21218 (reg!21218 r2!6217)))) b!7807647))

(declare-fun b!7807651 () Bool)

(declare-fun e!4621607 () Bool)

(declare-fun tp!2299905 () Bool)

(declare-fun tp!2299908 () Bool)

(assert (=> b!7807651 (= e!4621607 (and tp!2299905 tp!2299908))))

(assert (=> b!7806837 (= tp!2299836 e!4621607)))

(declare-fun b!7807650 () Bool)

(declare-fun tp!2299904 () Bool)

(assert (=> b!7807650 (= e!4621607 tp!2299904)))

(declare-fun b!7807648 () Bool)

(assert (=> b!7807648 (= e!4621607 tp_is_empty!52133)))

(declare-fun b!7807649 () Bool)

(declare-fun tp!2299906 () Bool)

(declare-fun tp!2299907 () Bool)

(assert (=> b!7807649 (= e!4621607 (and tp!2299906 tp!2299907))))

(assert (= (and b!7806837 ((_ is ElementMatch!20889) (regOne!42290 (regOne!42291 r1!6279)))) b!7807648))

(assert (= (and b!7806837 ((_ is Concat!29734) (regOne!42290 (regOne!42291 r1!6279)))) b!7807649))

(assert (= (and b!7806837 ((_ is Star!20889) (regOne!42290 (regOne!42291 r1!6279)))) b!7807650))

(assert (= (and b!7806837 ((_ is Union!20889) (regOne!42290 (regOne!42291 r1!6279)))) b!7807651))

(declare-fun b!7807655 () Bool)

(declare-fun e!4621608 () Bool)

(declare-fun tp!2299910 () Bool)

(declare-fun tp!2299913 () Bool)

(assert (=> b!7807655 (= e!4621608 (and tp!2299910 tp!2299913))))

(assert (=> b!7806837 (= tp!2299837 e!4621608)))

(declare-fun b!7807654 () Bool)

(declare-fun tp!2299909 () Bool)

(assert (=> b!7807654 (= e!4621608 tp!2299909)))

(declare-fun b!7807652 () Bool)

(assert (=> b!7807652 (= e!4621608 tp_is_empty!52133)))

(declare-fun b!7807653 () Bool)

(declare-fun tp!2299911 () Bool)

(declare-fun tp!2299912 () Bool)

(assert (=> b!7807653 (= e!4621608 (and tp!2299911 tp!2299912))))

(assert (= (and b!7806837 ((_ is ElementMatch!20889) (regTwo!42290 (regOne!42291 r1!6279)))) b!7807652))

(assert (= (and b!7806837 ((_ is Concat!29734) (regTwo!42290 (regOne!42291 r1!6279)))) b!7807653))

(assert (= (and b!7806837 ((_ is Star!20889) (regTwo!42290 (regOne!42291 r1!6279)))) b!7807654))

(assert (= (and b!7806837 ((_ is Union!20889) (regTwo!42290 (regOne!42291 r1!6279)))) b!7807655))

(declare-fun b!7807669 () Bool)

(declare-fun e!4621614 () Bool)

(declare-fun tp!2299915 () Bool)

(declare-fun tp!2299918 () Bool)

(assert (=> b!7807669 (= e!4621614 (and tp!2299915 tp!2299918))))

(assert (=> b!7806847 (= tp!2299845 e!4621614)))

(declare-fun b!7807668 () Bool)

(declare-fun tp!2299914 () Bool)

(assert (=> b!7807668 (= e!4621614 tp!2299914)))

(declare-fun b!7807666 () Bool)

(assert (=> b!7807666 (= e!4621614 tp_is_empty!52133)))

(declare-fun b!7807667 () Bool)

(declare-fun tp!2299916 () Bool)

(declare-fun tp!2299917 () Bool)

(assert (=> b!7807667 (= e!4621614 (and tp!2299916 tp!2299917))))

(assert (= (and b!7806847 ((_ is ElementMatch!20889) (regOne!42291 (reg!21218 r2!6217)))) b!7807666))

(assert (= (and b!7806847 ((_ is Concat!29734) (regOne!42291 (reg!21218 r2!6217)))) b!7807667))

(assert (= (and b!7806847 ((_ is Star!20889) (regOne!42291 (reg!21218 r2!6217)))) b!7807668))

(assert (= (and b!7806847 ((_ is Union!20889) (regOne!42291 (reg!21218 r2!6217)))) b!7807669))

(declare-fun b!7807673 () Bool)

(declare-fun e!4621615 () Bool)

(declare-fun tp!2299920 () Bool)

(declare-fun tp!2299923 () Bool)

(assert (=> b!7807673 (= e!4621615 (and tp!2299920 tp!2299923))))

(assert (=> b!7806847 (= tp!2299848 e!4621615)))

(declare-fun b!7807672 () Bool)

(declare-fun tp!2299919 () Bool)

(assert (=> b!7807672 (= e!4621615 tp!2299919)))

(declare-fun b!7807670 () Bool)

(assert (=> b!7807670 (= e!4621615 tp_is_empty!52133)))

(declare-fun b!7807671 () Bool)

(declare-fun tp!2299921 () Bool)

(declare-fun tp!2299922 () Bool)

(assert (=> b!7807671 (= e!4621615 (and tp!2299921 tp!2299922))))

(assert (= (and b!7806847 ((_ is ElementMatch!20889) (regTwo!42291 (reg!21218 r2!6217)))) b!7807670))

(assert (= (and b!7806847 ((_ is Concat!29734) (regTwo!42291 (reg!21218 r2!6217)))) b!7807671))

(assert (= (and b!7806847 ((_ is Star!20889) (regTwo!42291 (reg!21218 r2!6217)))) b!7807672))

(assert (= (and b!7806847 ((_ is Union!20889) (regTwo!42291 (reg!21218 r2!6217)))) b!7807673))

(declare-fun b!7807677 () Bool)

(declare-fun e!4621616 () Bool)

(declare-fun tp!2299925 () Bool)

(declare-fun tp!2299928 () Bool)

(assert (=> b!7807677 (= e!4621616 (and tp!2299925 tp!2299928))))

(assert (=> b!7806854 (= tp!2299854 e!4621616)))

(declare-fun b!7807676 () Bool)

(declare-fun tp!2299924 () Bool)

(assert (=> b!7807676 (= e!4621616 tp!2299924)))

(declare-fun b!7807674 () Bool)

(assert (=> b!7807674 (= e!4621616 tp_is_empty!52133)))

(declare-fun b!7807675 () Bool)

(declare-fun tp!2299926 () Bool)

(declare-fun tp!2299927 () Bool)

(assert (=> b!7807675 (= e!4621616 (and tp!2299926 tp!2299927))))

(assert (= (and b!7806854 ((_ is ElementMatch!20889) (reg!21218 (regTwo!42290 r2!6217)))) b!7807674))

(assert (= (and b!7806854 ((_ is Concat!29734) (reg!21218 (regTwo!42290 r2!6217)))) b!7807675))

(assert (= (and b!7806854 ((_ is Star!20889) (reg!21218 (regTwo!42290 r2!6217)))) b!7807676))

(assert (= (and b!7806854 ((_ is Union!20889) (reg!21218 (regTwo!42290 r2!6217)))) b!7807677))

(declare-fun b!7807681 () Bool)

(declare-fun e!4621617 () Bool)

(declare-fun tp!2299930 () Bool)

(declare-fun tp!2299933 () Bool)

(assert (=> b!7807681 (= e!4621617 (and tp!2299930 tp!2299933))))

(assert (=> b!7806845 (= tp!2299846 e!4621617)))

(declare-fun b!7807680 () Bool)

(declare-fun tp!2299929 () Bool)

(assert (=> b!7807680 (= e!4621617 tp!2299929)))

(declare-fun b!7807678 () Bool)

(assert (=> b!7807678 (= e!4621617 tp_is_empty!52133)))

(declare-fun b!7807679 () Bool)

(declare-fun tp!2299931 () Bool)

(declare-fun tp!2299932 () Bool)

(assert (=> b!7807679 (= e!4621617 (and tp!2299931 tp!2299932))))

(assert (= (and b!7806845 ((_ is ElementMatch!20889) (regOne!42290 (reg!21218 r2!6217)))) b!7807678))

(assert (= (and b!7806845 ((_ is Concat!29734) (regOne!42290 (reg!21218 r2!6217)))) b!7807679))

(assert (= (and b!7806845 ((_ is Star!20889) (regOne!42290 (reg!21218 r2!6217)))) b!7807680))

(assert (= (and b!7806845 ((_ is Union!20889) (regOne!42290 (reg!21218 r2!6217)))) b!7807681))

(declare-fun b!7807685 () Bool)

(declare-fun e!4621618 () Bool)

(declare-fun tp!2299935 () Bool)

(declare-fun tp!2299938 () Bool)

(assert (=> b!7807685 (= e!4621618 (and tp!2299935 tp!2299938))))

(assert (=> b!7806845 (= tp!2299847 e!4621618)))

(declare-fun b!7807684 () Bool)

(declare-fun tp!2299934 () Bool)

(assert (=> b!7807684 (= e!4621618 tp!2299934)))

(declare-fun b!7807682 () Bool)

(assert (=> b!7807682 (= e!4621618 tp_is_empty!52133)))

(declare-fun b!7807683 () Bool)

(declare-fun tp!2299936 () Bool)

(declare-fun tp!2299937 () Bool)

(assert (=> b!7807683 (= e!4621618 (and tp!2299936 tp!2299937))))

(assert (= (and b!7806845 ((_ is ElementMatch!20889) (regTwo!42290 (reg!21218 r2!6217)))) b!7807682))

(assert (= (and b!7806845 ((_ is Concat!29734) (regTwo!42290 (reg!21218 r2!6217)))) b!7807683))

(assert (= (and b!7806845 ((_ is Star!20889) (regTwo!42290 (reg!21218 r2!6217)))) b!7807684))

(assert (= (and b!7806845 ((_ is Union!20889) (regTwo!42290 (reg!21218 r2!6217)))) b!7807685))

(declare-fun b!7807689 () Bool)

(declare-fun e!4621619 () Bool)

(declare-fun tp!2299940 () Bool)

(declare-fun tp!2299943 () Bool)

(assert (=> b!7807689 (= e!4621619 (and tp!2299940 tp!2299943))))

(assert (=> b!7806855 (= tp!2299855 e!4621619)))

(declare-fun b!7807688 () Bool)

(declare-fun tp!2299939 () Bool)

(assert (=> b!7807688 (= e!4621619 tp!2299939)))

(declare-fun b!7807686 () Bool)

(assert (=> b!7807686 (= e!4621619 tp_is_empty!52133)))

(declare-fun b!7807687 () Bool)

(declare-fun tp!2299941 () Bool)

(declare-fun tp!2299942 () Bool)

(assert (=> b!7807687 (= e!4621619 (and tp!2299941 tp!2299942))))

(assert (= (and b!7806855 ((_ is ElementMatch!20889) (regOne!42291 (regTwo!42290 r2!6217)))) b!7807686))

(assert (= (and b!7806855 ((_ is Concat!29734) (regOne!42291 (regTwo!42290 r2!6217)))) b!7807687))

(assert (= (and b!7806855 ((_ is Star!20889) (regOne!42291 (regTwo!42290 r2!6217)))) b!7807688))

(assert (= (and b!7806855 ((_ is Union!20889) (regOne!42291 (regTwo!42290 r2!6217)))) b!7807689))

(declare-fun b!7807707 () Bool)

(declare-fun e!4621627 () Bool)

(declare-fun tp!2299945 () Bool)

(declare-fun tp!2299948 () Bool)

(assert (=> b!7807707 (= e!4621627 (and tp!2299945 tp!2299948))))

(assert (=> b!7806855 (= tp!2299858 e!4621627)))

(declare-fun b!7807706 () Bool)

(declare-fun tp!2299944 () Bool)

(assert (=> b!7807706 (= e!4621627 tp!2299944)))

(declare-fun b!7807704 () Bool)

(assert (=> b!7807704 (= e!4621627 tp_is_empty!52133)))

(declare-fun b!7807705 () Bool)

(declare-fun tp!2299946 () Bool)

(declare-fun tp!2299947 () Bool)

(assert (=> b!7807705 (= e!4621627 (and tp!2299946 tp!2299947))))

(assert (= (and b!7806855 ((_ is ElementMatch!20889) (regTwo!42291 (regTwo!42290 r2!6217)))) b!7807704))

(assert (= (and b!7806855 ((_ is Concat!29734) (regTwo!42291 (regTwo!42290 r2!6217)))) b!7807705))

(assert (= (and b!7806855 ((_ is Star!20889) (regTwo!42291 (regTwo!42290 r2!6217)))) b!7807706))

(assert (= (and b!7806855 ((_ is Union!20889) (regTwo!42291 (regTwo!42290 r2!6217)))) b!7807707))

(declare-fun b!7807711 () Bool)

(declare-fun e!4621628 () Bool)

(declare-fun tp!2299950 () Bool)

(declare-fun tp!2299953 () Bool)

(assert (=> b!7807711 (= e!4621628 (and tp!2299950 tp!2299953))))

(assert (=> b!7806862 (= tp!2299864 e!4621628)))

(declare-fun b!7807710 () Bool)

(declare-fun tp!2299949 () Bool)

(assert (=> b!7807710 (= e!4621628 tp!2299949)))

(declare-fun b!7807708 () Bool)

(assert (=> b!7807708 (= e!4621628 tp_is_empty!52133)))

(declare-fun b!7807709 () Bool)

(declare-fun tp!2299951 () Bool)

(declare-fun tp!2299952 () Bool)

(assert (=> b!7807709 (= e!4621628 (and tp!2299951 tp!2299952))))

(assert (= (and b!7806862 ((_ is ElementMatch!20889) (reg!21218 (regTwo!42291 r2!6217)))) b!7807708))

(assert (= (and b!7806862 ((_ is Concat!29734) (reg!21218 (regTwo!42291 r2!6217)))) b!7807709))

(assert (= (and b!7806862 ((_ is Star!20889) (reg!21218 (regTwo!42291 r2!6217)))) b!7807710))

(assert (= (and b!7806862 ((_ is Union!20889) (reg!21218 (regTwo!42291 r2!6217)))) b!7807711))

(declare-fun b!7807715 () Bool)

(declare-fun e!4621629 () Bool)

(declare-fun tp!2299955 () Bool)

(declare-fun tp!2299958 () Bool)

(assert (=> b!7807715 (= e!4621629 (and tp!2299955 tp!2299958))))

(assert (=> b!7806830 (= tp!2299827 e!4621629)))

(declare-fun b!7807714 () Bool)

(declare-fun tp!2299954 () Bool)

(assert (=> b!7807714 (= e!4621629 tp!2299954)))

(declare-fun b!7807712 () Bool)

(assert (=> b!7807712 (= e!4621629 tp_is_empty!52133)))

(declare-fun b!7807713 () Bool)

(declare-fun tp!2299956 () Bool)

(declare-fun tp!2299957 () Bool)

(assert (=> b!7807713 (= e!4621629 (and tp!2299956 tp!2299957))))

(assert (= (and b!7806830 ((_ is ElementMatch!20889) (regOne!42291 (regTwo!42290 r1!6279)))) b!7807712))

(assert (= (and b!7806830 ((_ is Concat!29734) (regOne!42291 (regTwo!42290 r1!6279)))) b!7807713))

(assert (= (and b!7806830 ((_ is Star!20889) (regOne!42291 (regTwo!42290 r1!6279)))) b!7807714))

(assert (= (and b!7806830 ((_ is Union!20889) (regOne!42291 (regTwo!42290 r1!6279)))) b!7807715))

(declare-fun b!7807719 () Bool)

(declare-fun e!4621630 () Bool)

(declare-fun tp!2299960 () Bool)

(declare-fun tp!2299963 () Bool)

(assert (=> b!7807719 (= e!4621630 (and tp!2299960 tp!2299963))))

(assert (=> b!7806830 (= tp!2299830 e!4621630)))

(declare-fun b!7807718 () Bool)

(declare-fun tp!2299959 () Bool)

(assert (=> b!7807718 (= e!4621630 tp!2299959)))

(declare-fun b!7807716 () Bool)

(assert (=> b!7807716 (= e!4621630 tp_is_empty!52133)))

(declare-fun b!7807717 () Bool)

(declare-fun tp!2299961 () Bool)

(declare-fun tp!2299962 () Bool)

(assert (=> b!7807717 (= e!4621630 (and tp!2299961 tp!2299962))))

(assert (= (and b!7806830 ((_ is ElementMatch!20889) (regTwo!42291 (regTwo!42290 r1!6279)))) b!7807716))

(assert (= (and b!7806830 ((_ is Concat!29734) (regTwo!42291 (regTwo!42290 r1!6279)))) b!7807717))

(assert (= (and b!7806830 ((_ is Star!20889) (regTwo!42291 (regTwo!42290 r1!6279)))) b!7807718))

(assert (= (and b!7806830 ((_ is Union!20889) (regTwo!42291 (regTwo!42290 r1!6279)))) b!7807719))

(declare-fun b!7807723 () Bool)

(declare-fun e!4621631 () Bool)

(declare-fun tp!2299965 () Bool)

(declare-fun tp!2299968 () Bool)

(assert (=> b!7807723 (= e!4621631 (and tp!2299965 tp!2299968))))

(assert (=> b!7806853 (= tp!2299856 e!4621631)))

(declare-fun b!7807722 () Bool)

(declare-fun tp!2299964 () Bool)

(assert (=> b!7807722 (= e!4621631 tp!2299964)))

(declare-fun b!7807720 () Bool)

(assert (=> b!7807720 (= e!4621631 tp_is_empty!52133)))

(declare-fun b!7807721 () Bool)

(declare-fun tp!2299966 () Bool)

(declare-fun tp!2299967 () Bool)

(assert (=> b!7807721 (= e!4621631 (and tp!2299966 tp!2299967))))

(assert (= (and b!7806853 ((_ is ElementMatch!20889) (regOne!42290 (regTwo!42290 r2!6217)))) b!7807720))

(assert (= (and b!7806853 ((_ is Concat!29734) (regOne!42290 (regTwo!42290 r2!6217)))) b!7807721))

(assert (= (and b!7806853 ((_ is Star!20889) (regOne!42290 (regTwo!42290 r2!6217)))) b!7807722))

(assert (= (and b!7806853 ((_ is Union!20889) (regOne!42290 (regTwo!42290 r2!6217)))) b!7807723))

(declare-fun b!7807727 () Bool)

(declare-fun e!4621632 () Bool)

(declare-fun tp!2299970 () Bool)

(declare-fun tp!2299973 () Bool)

(assert (=> b!7807727 (= e!4621632 (and tp!2299970 tp!2299973))))

(assert (=> b!7806853 (= tp!2299857 e!4621632)))

(declare-fun b!7807726 () Bool)

(declare-fun tp!2299969 () Bool)

(assert (=> b!7807726 (= e!4621632 tp!2299969)))

(declare-fun b!7807724 () Bool)

(assert (=> b!7807724 (= e!4621632 tp_is_empty!52133)))

(declare-fun b!7807725 () Bool)

(declare-fun tp!2299971 () Bool)

(declare-fun tp!2299972 () Bool)

(assert (=> b!7807725 (= e!4621632 (and tp!2299971 tp!2299972))))

(assert (= (and b!7806853 ((_ is ElementMatch!20889) (regTwo!42290 (regTwo!42290 r2!6217)))) b!7807724))

(assert (= (and b!7806853 ((_ is Concat!29734) (regTwo!42290 (regTwo!42290 r2!6217)))) b!7807725))

(assert (= (and b!7806853 ((_ is Star!20889) (regTwo!42290 (regTwo!42290 r2!6217)))) b!7807726))

(assert (= (and b!7806853 ((_ is Union!20889) (regTwo!42290 (regTwo!42290 r2!6217)))) b!7807727))

(declare-fun b!7807740 () Bool)

(declare-fun e!4621640 () Bool)

(declare-fun tp!2299975 () Bool)

(declare-fun tp!2299978 () Bool)

(assert (=> b!7807740 (= e!4621640 (and tp!2299975 tp!2299978))))

(assert (=> b!7806863 (= tp!2299865 e!4621640)))

(declare-fun b!7807739 () Bool)

(declare-fun tp!2299974 () Bool)

(assert (=> b!7807739 (= e!4621640 tp!2299974)))

(declare-fun b!7807737 () Bool)

(assert (=> b!7807737 (= e!4621640 tp_is_empty!52133)))

(declare-fun b!7807738 () Bool)

(declare-fun tp!2299976 () Bool)

(declare-fun tp!2299977 () Bool)

(assert (=> b!7807738 (= e!4621640 (and tp!2299976 tp!2299977))))

(assert (= (and b!7806863 ((_ is ElementMatch!20889) (regOne!42291 (regTwo!42291 r2!6217)))) b!7807737))

(assert (= (and b!7806863 ((_ is Concat!29734) (regOne!42291 (regTwo!42291 r2!6217)))) b!7807738))

(assert (= (and b!7806863 ((_ is Star!20889) (regOne!42291 (regTwo!42291 r2!6217)))) b!7807739))

(assert (= (and b!7806863 ((_ is Union!20889) (regOne!42291 (regTwo!42291 r2!6217)))) b!7807740))

(declare-fun b!7807744 () Bool)

(declare-fun e!4621641 () Bool)

(declare-fun tp!2299980 () Bool)

(declare-fun tp!2299983 () Bool)

(assert (=> b!7807744 (= e!4621641 (and tp!2299980 tp!2299983))))

(assert (=> b!7806863 (= tp!2299868 e!4621641)))

(declare-fun b!7807743 () Bool)

(declare-fun tp!2299979 () Bool)

(assert (=> b!7807743 (= e!4621641 tp!2299979)))

(declare-fun b!7807741 () Bool)

(assert (=> b!7807741 (= e!4621641 tp_is_empty!52133)))

(declare-fun b!7807742 () Bool)

(declare-fun tp!2299981 () Bool)

(declare-fun tp!2299982 () Bool)

(assert (=> b!7807742 (= e!4621641 (and tp!2299981 tp!2299982))))

(assert (= (and b!7806863 ((_ is ElementMatch!20889) (regTwo!42291 (regTwo!42291 r2!6217)))) b!7807741))

(assert (= (and b!7806863 ((_ is Concat!29734) (regTwo!42291 (regTwo!42291 r2!6217)))) b!7807742))

(assert (= (and b!7806863 ((_ is Star!20889) (regTwo!42291 (regTwo!42291 r2!6217)))) b!7807743))

(assert (= (and b!7806863 ((_ is Union!20889) (regTwo!42291 (regTwo!42291 r2!6217)))) b!7807744))

(declare-fun b!7807748 () Bool)

(declare-fun e!4621642 () Bool)

(declare-fun tp!2299985 () Bool)

(declare-fun tp!2299988 () Bool)

(assert (=> b!7807748 (= e!4621642 (and tp!2299985 tp!2299988))))

(assert (=> b!7806861 (= tp!2299866 e!4621642)))

(declare-fun b!7807747 () Bool)

(declare-fun tp!2299984 () Bool)

(assert (=> b!7807747 (= e!4621642 tp!2299984)))

(declare-fun b!7807745 () Bool)

(assert (=> b!7807745 (= e!4621642 tp_is_empty!52133)))

(declare-fun b!7807746 () Bool)

(declare-fun tp!2299986 () Bool)

(declare-fun tp!2299987 () Bool)

(assert (=> b!7807746 (= e!4621642 (and tp!2299986 tp!2299987))))

(assert (= (and b!7806861 ((_ is ElementMatch!20889) (regOne!42290 (regTwo!42291 r2!6217)))) b!7807745))

(assert (= (and b!7806861 ((_ is Concat!29734) (regOne!42290 (regTwo!42291 r2!6217)))) b!7807746))

(assert (= (and b!7806861 ((_ is Star!20889) (regOne!42290 (regTwo!42291 r2!6217)))) b!7807747))

(assert (= (and b!7806861 ((_ is Union!20889) (regOne!42290 (regTwo!42291 r2!6217)))) b!7807748))

(declare-fun b!7807754 () Bool)

(declare-fun e!4621644 () Bool)

(declare-fun tp!2299990 () Bool)

(declare-fun tp!2299993 () Bool)

(assert (=> b!7807754 (= e!4621644 (and tp!2299990 tp!2299993))))

(assert (=> b!7806861 (= tp!2299867 e!4621644)))

(declare-fun b!7807753 () Bool)

(declare-fun tp!2299989 () Bool)

(assert (=> b!7807753 (= e!4621644 tp!2299989)))

(declare-fun b!7807751 () Bool)

(assert (=> b!7807751 (= e!4621644 tp_is_empty!52133)))

(declare-fun b!7807752 () Bool)

(declare-fun tp!2299991 () Bool)

(declare-fun tp!2299992 () Bool)

(assert (=> b!7807752 (= e!4621644 (and tp!2299991 tp!2299992))))

(assert (= (and b!7806861 ((_ is ElementMatch!20889) (regTwo!42290 (regTwo!42291 r2!6217)))) b!7807751))

(assert (= (and b!7806861 ((_ is Concat!29734) (regTwo!42290 (regTwo!42291 r2!6217)))) b!7807752))

(assert (= (and b!7806861 ((_ is Star!20889) (regTwo!42290 (regTwo!42291 r2!6217)))) b!7807753))

(assert (= (and b!7806861 ((_ is Union!20889) (regTwo!42290 (regTwo!42291 r2!6217)))) b!7807754))

(declare-fun b!7807760 () Bool)

(declare-fun e!4621646 () Bool)

(declare-fun tp!2299995 () Bool)

(declare-fun tp!2299998 () Bool)

(assert (=> b!7807760 (= e!4621646 (and tp!2299995 tp!2299998))))

(assert (=> b!7806829 (= tp!2299826 e!4621646)))

(declare-fun b!7807759 () Bool)

(declare-fun tp!2299994 () Bool)

(assert (=> b!7807759 (= e!4621646 tp!2299994)))

(declare-fun b!7807757 () Bool)

(assert (=> b!7807757 (= e!4621646 tp_is_empty!52133)))

(declare-fun b!7807758 () Bool)

(declare-fun tp!2299996 () Bool)

(declare-fun tp!2299997 () Bool)

(assert (=> b!7807758 (= e!4621646 (and tp!2299996 tp!2299997))))

(assert (= (and b!7806829 ((_ is ElementMatch!20889) (reg!21218 (regTwo!42290 r1!6279)))) b!7807757))

(assert (= (and b!7806829 ((_ is Concat!29734) (reg!21218 (regTwo!42290 r1!6279)))) b!7807758))

(assert (= (and b!7806829 ((_ is Star!20889) (reg!21218 (regTwo!42290 r1!6279)))) b!7807759))

(assert (= (and b!7806829 ((_ is Union!20889) (reg!21218 (regTwo!42290 r1!6279)))) b!7807760))

(declare-fun b!7807764 () Bool)

(declare-fun e!4621651 () Bool)

(declare-fun tp!2300000 () Bool)

(declare-fun tp!2300003 () Bool)

(assert (=> b!7807764 (= e!4621651 (and tp!2300000 tp!2300003))))

(assert (=> b!7806828 (= tp!2299828 e!4621651)))

(declare-fun b!7807763 () Bool)

(declare-fun tp!2299999 () Bool)

(assert (=> b!7807763 (= e!4621651 tp!2299999)))

(declare-fun b!7807761 () Bool)

(assert (=> b!7807761 (= e!4621651 tp_is_empty!52133)))

(declare-fun b!7807762 () Bool)

(declare-fun tp!2300001 () Bool)

(declare-fun tp!2300002 () Bool)

(assert (=> b!7807762 (= e!4621651 (and tp!2300001 tp!2300002))))

(assert (= (and b!7806828 ((_ is ElementMatch!20889) (regOne!42290 (regTwo!42290 r1!6279)))) b!7807761))

(assert (= (and b!7806828 ((_ is Concat!29734) (regOne!42290 (regTwo!42290 r1!6279)))) b!7807762))

(assert (= (and b!7806828 ((_ is Star!20889) (regOne!42290 (regTwo!42290 r1!6279)))) b!7807763))

(assert (= (and b!7806828 ((_ is Union!20889) (regOne!42290 (regTwo!42290 r1!6279)))) b!7807764))

(declare-fun b!7807777 () Bool)

(declare-fun e!4621655 () Bool)

(declare-fun tp!2300005 () Bool)

(declare-fun tp!2300008 () Bool)

(assert (=> b!7807777 (= e!4621655 (and tp!2300005 tp!2300008))))

(assert (=> b!7806828 (= tp!2299829 e!4621655)))

(declare-fun b!7807776 () Bool)

(declare-fun tp!2300004 () Bool)

(assert (=> b!7807776 (= e!4621655 tp!2300004)))

(declare-fun b!7807774 () Bool)

(assert (=> b!7807774 (= e!4621655 tp_is_empty!52133)))

(declare-fun b!7807775 () Bool)

(declare-fun tp!2300006 () Bool)

(declare-fun tp!2300007 () Bool)

(assert (=> b!7807775 (= e!4621655 (and tp!2300006 tp!2300007))))

(assert (= (and b!7806828 ((_ is ElementMatch!20889) (regTwo!42290 (regTwo!42290 r1!6279)))) b!7807774))

(assert (= (and b!7806828 ((_ is Concat!29734) (regTwo!42290 (regTwo!42290 r1!6279)))) b!7807775))

(assert (= (and b!7806828 ((_ is Star!20889) (regTwo!42290 (regTwo!42290 r1!6279)))) b!7807776))

(assert (= (and b!7806828 ((_ is Union!20889) (regTwo!42290 (regTwo!42290 r1!6279)))) b!7807777))

(declare-fun b!7807778 () Bool)

(declare-fun e!4621656 () Bool)

(declare-fun tp!2300009 () Bool)

(assert (=> b!7807778 (= e!4621656 (and tp_is_empty!52133 tp!2300009))))

(assert (=> b!7806835 (= tp!2299833 e!4621656)))

(assert (= (and b!7806835 ((_ is Cons!73604) (t!388463 (t!388463 s!14292)))) b!7807778))

(declare-fun b!7807782 () Bool)

(declare-fun e!4621657 () Bool)

(declare-fun tp!2300011 () Bool)

(declare-fun tp!2300014 () Bool)

(assert (=> b!7807782 (= e!4621657 (and tp!2300011 tp!2300014))))

(assert (=> b!7806843 (= tp!2299840 e!4621657)))

(declare-fun b!7807781 () Bool)

(declare-fun tp!2300010 () Bool)

(assert (=> b!7807781 (= e!4621657 tp!2300010)))

(declare-fun b!7807779 () Bool)

(assert (=> b!7807779 (= e!4621657 tp_is_empty!52133)))

(declare-fun b!7807780 () Bool)

(declare-fun tp!2300012 () Bool)

(declare-fun tp!2300013 () Bool)

(assert (=> b!7807780 (= e!4621657 (and tp!2300012 tp!2300013))))

(assert (= (and b!7806843 ((_ is ElementMatch!20889) (regOne!42291 (regTwo!42291 r1!6279)))) b!7807779))

(assert (= (and b!7806843 ((_ is Concat!29734) (regOne!42291 (regTwo!42291 r1!6279)))) b!7807780))

(assert (= (and b!7806843 ((_ is Star!20889) (regOne!42291 (regTwo!42291 r1!6279)))) b!7807781))

(assert (= (and b!7806843 ((_ is Union!20889) (regOne!42291 (regTwo!42291 r1!6279)))) b!7807782))

(declare-fun b!7807786 () Bool)

(declare-fun e!4621658 () Bool)

(declare-fun tp!2300016 () Bool)

(declare-fun tp!2300019 () Bool)

(assert (=> b!7807786 (= e!4621658 (and tp!2300016 tp!2300019))))

(assert (=> b!7806843 (= tp!2299843 e!4621658)))

(declare-fun b!7807785 () Bool)

(declare-fun tp!2300015 () Bool)

(assert (=> b!7807785 (= e!4621658 tp!2300015)))

(declare-fun b!7807783 () Bool)

(assert (=> b!7807783 (= e!4621658 tp_is_empty!52133)))

(declare-fun b!7807784 () Bool)

(declare-fun tp!2300017 () Bool)

(declare-fun tp!2300018 () Bool)

(assert (=> b!7807784 (= e!4621658 (and tp!2300017 tp!2300018))))

(assert (= (and b!7806843 ((_ is ElementMatch!20889) (regTwo!42291 (regTwo!42291 r1!6279)))) b!7807783))

(assert (= (and b!7806843 ((_ is Concat!29734) (regTwo!42291 (regTwo!42291 r1!6279)))) b!7807784))

(assert (= (and b!7806843 ((_ is Star!20889) (regTwo!42291 (regTwo!42291 r1!6279)))) b!7807785))

(assert (= (and b!7806843 ((_ is Union!20889) (regTwo!42291 (regTwo!42291 r1!6279)))) b!7807786))

(declare-fun b!7807790 () Bool)

(declare-fun e!4621659 () Bool)

(declare-fun tp!2300021 () Bool)

(declare-fun tp!2300024 () Bool)

(assert (=> b!7807790 (= e!4621659 (and tp!2300021 tp!2300024))))

(assert (=> b!7806851 (= tp!2299850 e!4621659)))

(declare-fun b!7807789 () Bool)

(declare-fun tp!2300020 () Bool)

(assert (=> b!7807789 (= e!4621659 tp!2300020)))

(declare-fun b!7807787 () Bool)

(assert (=> b!7807787 (= e!4621659 tp_is_empty!52133)))

(declare-fun b!7807788 () Bool)

(declare-fun tp!2300022 () Bool)

(declare-fun tp!2300023 () Bool)

(assert (=> b!7807788 (= e!4621659 (and tp!2300022 tp!2300023))))

(assert (= (and b!7806851 ((_ is ElementMatch!20889) (regOne!42291 (regOne!42290 r2!6217)))) b!7807787))

(assert (= (and b!7806851 ((_ is Concat!29734) (regOne!42291 (regOne!42290 r2!6217)))) b!7807788))

(assert (= (and b!7806851 ((_ is Star!20889) (regOne!42291 (regOne!42290 r2!6217)))) b!7807789))

(assert (= (and b!7806851 ((_ is Union!20889) (regOne!42291 (regOne!42290 r2!6217)))) b!7807790))

(declare-fun b!7807794 () Bool)

(declare-fun e!4621660 () Bool)

(declare-fun tp!2300026 () Bool)

(declare-fun tp!2300029 () Bool)

(assert (=> b!7807794 (= e!4621660 (and tp!2300026 tp!2300029))))

(assert (=> b!7806851 (= tp!2299853 e!4621660)))

(declare-fun b!7807793 () Bool)

(declare-fun tp!2300025 () Bool)

(assert (=> b!7807793 (= e!4621660 tp!2300025)))

(declare-fun b!7807791 () Bool)

(assert (=> b!7807791 (= e!4621660 tp_is_empty!52133)))

(declare-fun b!7807792 () Bool)

(declare-fun tp!2300027 () Bool)

(declare-fun tp!2300028 () Bool)

(assert (=> b!7807792 (= e!4621660 (and tp!2300027 tp!2300028))))

(assert (= (and b!7806851 ((_ is ElementMatch!20889) (regTwo!42291 (regOne!42290 r2!6217)))) b!7807791))

(assert (= (and b!7806851 ((_ is Concat!29734) (regTwo!42291 (regOne!42290 r2!6217)))) b!7807792))

(assert (= (and b!7806851 ((_ is Star!20889) (regTwo!42291 (regOne!42290 r2!6217)))) b!7807793))

(assert (= (and b!7806851 ((_ is Union!20889) (regTwo!42291 (regOne!42290 r2!6217)))) b!7807794))

(declare-fun b!7807798 () Bool)

(declare-fun e!4621661 () Bool)

(declare-fun tp!2300031 () Bool)

(declare-fun tp!2300034 () Bool)

(assert (=> b!7807798 (= e!4621661 (and tp!2300031 tp!2300034))))

(assert (=> b!7806842 (= tp!2299839 e!4621661)))

(declare-fun b!7807797 () Bool)

(declare-fun tp!2300030 () Bool)

(assert (=> b!7807797 (= e!4621661 tp!2300030)))

(declare-fun b!7807795 () Bool)

(assert (=> b!7807795 (= e!4621661 tp_is_empty!52133)))

(declare-fun b!7807796 () Bool)

(declare-fun tp!2300032 () Bool)

(declare-fun tp!2300033 () Bool)

(assert (=> b!7807796 (= e!4621661 (and tp!2300032 tp!2300033))))

(assert (= (and b!7806842 ((_ is ElementMatch!20889) (reg!21218 (regTwo!42291 r1!6279)))) b!7807795))

(assert (= (and b!7806842 ((_ is Concat!29734) (reg!21218 (regTwo!42291 r1!6279)))) b!7807796))

(assert (= (and b!7806842 ((_ is Star!20889) (reg!21218 (regTwo!42291 r1!6279)))) b!7807797))

(assert (= (and b!7806842 ((_ is Union!20889) (reg!21218 (regTwo!42291 r1!6279)))) b!7807798))

(declare-fun b!7807802 () Bool)

(declare-fun e!4621662 () Bool)

(declare-fun tp!2300036 () Bool)

(declare-fun tp!2300039 () Bool)

(assert (=> b!7807802 (= e!4621662 (and tp!2300036 tp!2300039))))

(assert (=> b!7806859 (= tp!2299860 e!4621662)))

(declare-fun b!7807801 () Bool)

(declare-fun tp!2300035 () Bool)

(assert (=> b!7807801 (= e!4621662 tp!2300035)))

(declare-fun b!7807799 () Bool)

(assert (=> b!7807799 (= e!4621662 tp_is_empty!52133)))

(declare-fun b!7807800 () Bool)

(declare-fun tp!2300037 () Bool)

(declare-fun tp!2300038 () Bool)

(assert (=> b!7807800 (= e!4621662 (and tp!2300037 tp!2300038))))

(assert (= (and b!7806859 ((_ is ElementMatch!20889) (regOne!42291 (regOne!42291 r2!6217)))) b!7807799))

(assert (= (and b!7806859 ((_ is Concat!29734) (regOne!42291 (regOne!42291 r2!6217)))) b!7807800))

(assert (= (and b!7806859 ((_ is Star!20889) (regOne!42291 (regOne!42291 r2!6217)))) b!7807801))

(assert (= (and b!7806859 ((_ is Union!20889) (regOne!42291 (regOne!42291 r2!6217)))) b!7807802))

(declare-fun b!7807806 () Bool)

(declare-fun e!4621663 () Bool)

(declare-fun tp!2300041 () Bool)

(declare-fun tp!2300044 () Bool)

(assert (=> b!7807806 (= e!4621663 (and tp!2300041 tp!2300044))))

(assert (=> b!7806859 (= tp!2299863 e!4621663)))

(declare-fun b!7807805 () Bool)

(declare-fun tp!2300040 () Bool)

(assert (=> b!7807805 (= e!4621663 tp!2300040)))

(declare-fun b!7807803 () Bool)

(assert (=> b!7807803 (= e!4621663 tp_is_empty!52133)))

(declare-fun b!7807804 () Bool)

(declare-fun tp!2300042 () Bool)

(declare-fun tp!2300043 () Bool)

(assert (=> b!7807804 (= e!4621663 (and tp!2300042 tp!2300043))))

(assert (= (and b!7806859 ((_ is ElementMatch!20889) (regTwo!42291 (regOne!42291 r2!6217)))) b!7807803))

(assert (= (and b!7806859 ((_ is Concat!29734) (regTwo!42291 (regOne!42291 r2!6217)))) b!7807804))

(assert (= (and b!7806859 ((_ is Star!20889) (regTwo!42291 (regOne!42291 r2!6217)))) b!7807805))

(assert (= (and b!7806859 ((_ is Union!20889) (regTwo!42291 (regOne!42291 r2!6217)))) b!7807806))

(declare-fun b!7807810 () Bool)

(declare-fun e!4621664 () Bool)

(declare-fun tp!2300046 () Bool)

(declare-fun tp!2300049 () Bool)

(assert (=> b!7807810 (= e!4621664 (and tp!2300046 tp!2300049))))

(assert (=> b!7806850 (= tp!2299849 e!4621664)))

(declare-fun b!7807809 () Bool)

(declare-fun tp!2300045 () Bool)

(assert (=> b!7807809 (= e!4621664 tp!2300045)))

(declare-fun b!7807807 () Bool)

(assert (=> b!7807807 (= e!4621664 tp_is_empty!52133)))

(declare-fun b!7807808 () Bool)

(declare-fun tp!2300047 () Bool)

(declare-fun tp!2300048 () Bool)

(assert (=> b!7807808 (= e!4621664 (and tp!2300047 tp!2300048))))

(assert (= (and b!7806850 ((_ is ElementMatch!20889) (reg!21218 (regOne!42290 r2!6217)))) b!7807807))

(assert (= (and b!7806850 ((_ is Concat!29734) (reg!21218 (regOne!42290 r2!6217)))) b!7807808))

(assert (= (and b!7806850 ((_ is Star!20889) (reg!21218 (regOne!42290 r2!6217)))) b!7807809))

(assert (= (and b!7806850 ((_ is Union!20889) (reg!21218 (regOne!42290 r2!6217)))) b!7807810))

(declare-fun b!7807814 () Bool)

(declare-fun e!4621665 () Bool)

(declare-fun tp!2300051 () Bool)

(declare-fun tp!2300054 () Bool)

(assert (=> b!7807814 (= e!4621665 (and tp!2300051 tp!2300054))))

(assert (=> b!7806841 (= tp!2299841 e!4621665)))

(declare-fun b!7807813 () Bool)

(declare-fun tp!2300050 () Bool)

(assert (=> b!7807813 (= e!4621665 tp!2300050)))

(declare-fun b!7807811 () Bool)

(assert (=> b!7807811 (= e!4621665 tp_is_empty!52133)))

(declare-fun b!7807812 () Bool)

(declare-fun tp!2300052 () Bool)

(declare-fun tp!2300053 () Bool)

(assert (=> b!7807812 (= e!4621665 (and tp!2300052 tp!2300053))))

(assert (= (and b!7806841 ((_ is ElementMatch!20889) (regOne!42290 (regTwo!42291 r1!6279)))) b!7807811))

(assert (= (and b!7806841 ((_ is Concat!29734) (regOne!42290 (regTwo!42291 r1!6279)))) b!7807812))

(assert (= (and b!7806841 ((_ is Star!20889) (regOne!42290 (regTwo!42291 r1!6279)))) b!7807813))

(assert (= (and b!7806841 ((_ is Union!20889) (regOne!42290 (regTwo!42291 r1!6279)))) b!7807814))

(declare-fun b!7807818 () Bool)

(declare-fun e!4621666 () Bool)

(declare-fun tp!2300056 () Bool)

(declare-fun tp!2300059 () Bool)

(assert (=> b!7807818 (= e!4621666 (and tp!2300056 tp!2300059))))

(assert (=> b!7806841 (= tp!2299842 e!4621666)))

(declare-fun b!7807817 () Bool)

(declare-fun tp!2300055 () Bool)

(assert (=> b!7807817 (= e!4621666 tp!2300055)))

(declare-fun b!7807815 () Bool)

(assert (=> b!7807815 (= e!4621666 tp_is_empty!52133)))

(declare-fun b!7807816 () Bool)

(declare-fun tp!2300057 () Bool)

(declare-fun tp!2300058 () Bool)

(assert (=> b!7807816 (= e!4621666 (and tp!2300057 tp!2300058))))

(assert (= (and b!7806841 ((_ is ElementMatch!20889) (regTwo!42290 (regTwo!42291 r1!6279)))) b!7807815))

(assert (= (and b!7806841 ((_ is Concat!29734) (regTwo!42290 (regTwo!42291 r1!6279)))) b!7807816))

(assert (= (and b!7806841 ((_ is Star!20889) (regTwo!42290 (regTwo!42291 r1!6279)))) b!7807817))

(assert (= (and b!7806841 ((_ is Union!20889) (regTwo!42290 (regTwo!42291 r1!6279)))) b!7807818))

(declare-fun b!7807822 () Bool)

(declare-fun e!4621667 () Bool)

(declare-fun tp!2300061 () Bool)

(declare-fun tp!2300064 () Bool)

(assert (=> b!7807822 (= e!4621667 (and tp!2300061 tp!2300064))))

(assert (=> b!7806825 (= tp!2299821 e!4621667)))

(declare-fun b!7807821 () Bool)

(declare-fun tp!2300060 () Bool)

(assert (=> b!7807821 (= e!4621667 tp!2300060)))

(declare-fun b!7807819 () Bool)

(assert (=> b!7807819 (= e!4621667 tp_is_empty!52133)))

(declare-fun b!7807820 () Bool)

(declare-fun tp!2300062 () Bool)

(declare-fun tp!2300063 () Bool)

(assert (=> b!7807820 (= e!4621667 (and tp!2300062 tp!2300063))))

(assert (= (and b!7806825 ((_ is ElementMatch!20889) (reg!21218 (regOne!42290 r1!6279)))) b!7807819))

(assert (= (and b!7806825 ((_ is Concat!29734) (reg!21218 (regOne!42290 r1!6279)))) b!7807820))

(assert (= (and b!7806825 ((_ is Star!20889) (reg!21218 (regOne!42290 r1!6279)))) b!7807821))

(assert (= (and b!7806825 ((_ is Union!20889) (reg!21218 (regOne!42290 r1!6279)))) b!7807822))

(declare-fun b!7807826 () Bool)

(declare-fun e!4621668 () Bool)

(declare-fun tp!2300066 () Bool)

(declare-fun tp!2300069 () Bool)

(assert (=> b!7807826 (= e!4621668 (and tp!2300066 tp!2300069))))

(assert (=> b!7806867 (= tp!2299870 e!4621668)))

(declare-fun b!7807825 () Bool)

(declare-fun tp!2300065 () Bool)

(assert (=> b!7807825 (= e!4621668 tp!2300065)))

(declare-fun b!7807823 () Bool)

(assert (=> b!7807823 (= e!4621668 tp_is_empty!52133)))

(declare-fun b!7807824 () Bool)

(declare-fun tp!2300067 () Bool)

(declare-fun tp!2300068 () Bool)

(assert (=> b!7807824 (= e!4621668 (and tp!2300067 tp!2300068))))

(assert (= (and b!7806867 ((_ is ElementMatch!20889) (regOne!42291 (reg!21218 r1!6279)))) b!7807823))

(assert (= (and b!7806867 ((_ is Concat!29734) (regOne!42291 (reg!21218 r1!6279)))) b!7807824))

(assert (= (and b!7806867 ((_ is Star!20889) (regOne!42291 (reg!21218 r1!6279)))) b!7807825))

(assert (= (and b!7806867 ((_ is Union!20889) (regOne!42291 (reg!21218 r1!6279)))) b!7807826))

(declare-fun b!7807830 () Bool)

(declare-fun e!4621669 () Bool)

(declare-fun tp!2300071 () Bool)

(declare-fun tp!2300074 () Bool)

(assert (=> b!7807830 (= e!4621669 (and tp!2300071 tp!2300074))))

(assert (=> b!7806867 (= tp!2299873 e!4621669)))

(declare-fun b!7807829 () Bool)

(declare-fun tp!2300070 () Bool)

(assert (=> b!7807829 (= e!4621669 tp!2300070)))

(declare-fun b!7807827 () Bool)

(assert (=> b!7807827 (= e!4621669 tp_is_empty!52133)))

(declare-fun b!7807828 () Bool)

(declare-fun tp!2300072 () Bool)

(declare-fun tp!2300073 () Bool)

(assert (=> b!7807828 (= e!4621669 (and tp!2300072 tp!2300073))))

(assert (= (and b!7806867 ((_ is ElementMatch!20889) (regTwo!42291 (reg!21218 r1!6279)))) b!7807827))

(assert (= (and b!7806867 ((_ is Concat!29734) (regTwo!42291 (reg!21218 r1!6279)))) b!7807828))

(assert (= (and b!7806867 ((_ is Star!20889) (regTwo!42291 (reg!21218 r1!6279)))) b!7807829))

(assert (= (and b!7806867 ((_ is Union!20889) (regTwo!42291 (reg!21218 r1!6279)))) b!7807830))

(declare-fun b!7807834 () Bool)

(declare-fun e!4621670 () Bool)

(declare-fun tp!2300076 () Bool)

(declare-fun tp!2300079 () Bool)

(assert (=> b!7807834 (= e!4621670 (and tp!2300076 tp!2300079))))

(assert (=> b!7806858 (= tp!2299859 e!4621670)))

(declare-fun b!7807833 () Bool)

(declare-fun tp!2300075 () Bool)

(assert (=> b!7807833 (= e!4621670 tp!2300075)))

(declare-fun b!7807831 () Bool)

(assert (=> b!7807831 (= e!4621670 tp_is_empty!52133)))

(declare-fun b!7807832 () Bool)

(declare-fun tp!2300077 () Bool)

(declare-fun tp!2300078 () Bool)

(assert (=> b!7807832 (= e!4621670 (and tp!2300077 tp!2300078))))

(assert (= (and b!7806858 ((_ is ElementMatch!20889) (reg!21218 (regOne!42291 r2!6217)))) b!7807831))

(assert (= (and b!7806858 ((_ is Concat!29734) (reg!21218 (regOne!42291 r2!6217)))) b!7807832))

(assert (= (and b!7806858 ((_ is Star!20889) (reg!21218 (regOne!42291 r2!6217)))) b!7807833))

(assert (= (and b!7806858 ((_ is Union!20889) (reg!21218 (regOne!42291 r2!6217)))) b!7807834))

(declare-fun b!7807838 () Bool)

(declare-fun e!4621671 () Bool)

(declare-fun tp!2300081 () Bool)

(declare-fun tp!2300084 () Bool)

(assert (=> b!7807838 (= e!4621671 (and tp!2300081 tp!2300084))))

(assert (=> b!7806849 (= tp!2299851 e!4621671)))

(declare-fun b!7807837 () Bool)

(declare-fun tp!2300080 () Bool)

(assert (=> b!7807837 (= e!4621671 tp!2300080)))

(declare-fun b!7807835 () Bool)

(assert (=> b!7807835 (= e!4621671 tp_is_empty!52133)))

(declare-fun b!7807836 () Bool)

(declare-fun tp!2300082 () Bool)

(declare-fun tp!2300083 () Bool)

(assert (=> b!7807836 (= e!4621671 (and tp!2300082 tp!2300083))))

(assert (= (and b!7806849 ((_ is ElementMatch!20889) (regOne!42290 (regOne!42290 r2!6217)))) b!7807835))

(assert (= (and b!7806849 ((_ is Concat!29734) (regOne!42290 (regOne!42290 r2!6217)))) b!7807836))

(assert (= (and b!7806849 ((_ is Star!20889) (regOne!42290 (regOne!42290 r2!6217)))) b!7807837))

(assert (= (and b!7806849 ((_ is Union!20889) (regOne!42290 (regOne!42290 r2!6217)))) b!7807838))

(declare-fun b!7807842 () Bool)

(declare-fun e!4621672 () Bool)

(declare-fun tp!2300086 () Bool)

(declare-fun tp!2300089 () Bool)

(assert (=> b!7807842 (= e!4621672 (and tp!2300086 tp!2300089))))

(assert (=> b!7806849 (= tp!2299852 e!4621672)))

(declare-fun b!7807841 () Bool)

(declare-fun tp!2300085 () Bool)

(assert (=> b!7807841 (= e!4621672 tp!2300085)))

(declare-fun b!7807839 () Bool)

(assert (=> b!7807839 (= e!4621672 tp_is_empty!52133)))

(declare-fun b!7807840 () Bool)

(declare-fun tp!2300087 () Bool)

(declare-fun tp!2300088 () Bool)

(assert (=> b!7807840 (= e!4621672 (and tp!2300087 tp!2300088))))

(assert (= (and b!7806849 ((_ is ElementMatch!20889) (regTwo!42290 (regOne!42290 r2!6217)))) b!7807839))

(assert (= (and b!7806849 ((_ is Concat!29734) (regTwo!42290 (regOne!42290 r2!6217)))) b!7807840))

(assert (= (and b!7806849 ((_ is Star!20889) (regTwo!42290 (regOne!42290 r2!6217)))) b!7807841))

(assert (= (and b!7806849 ((_ is Union!20889) (regTwo!42290 (regOne!42290 r2!6217)))) b!7807842))

(declare-fun b!7807846 () Bool)

(declare-fun e!4621673 () Bool)

(declare-fun tp!2300091 () Bool)

(declare-fun tp!2300094 () Bool)

(assert (=> b!7807846 (= e!4621673 (and tp!2300091 tp!2300094))))

(assert (=> b!7806826 (= tp!2299822 e!4621673)))

(declare-fun b!7807845 () Bool)

(declare-fun tp!2300090 () Bool)

(assert (=> b!7807845 (= e!4621673 tp!2300090)))

(declare-fun b!7807843 () Bool)

(assert (=> b!7807843 (= e!4621673 tp_is_empty!52133)))

(declare-fun b!7807844 () Bool)

(declare-fun tp!2300092 () Bool)

(declare-fun tp!2300093 () Bool)

(assert (=> b!7807844 (= e!4621673 (and tp!2300092 tp!2300093))))

(assert (= (and b!7806826 ((_ is ElementMatch!20889) (regOne!42291 (regOne!42290 r1!6279)))) b!7807843))

(assert (= (and b!7806826 ((_ is Concat!29734) (regOne!42291 (regOne!42290 r1!6279)))) b!7807844))

(assert (= (and b!7806826 ((_ is Star!20889) (regOne!42291 (regOne!42290 r1!6279)))) b!7807845))

(assert (= (and b!7806826 ((_ is Union!20889) (regOne!42291 (regOne!42290 r1!6279)))) b!7807846))

(declare-fun b!7807850 () Bool)

(declare-fun e!4621674 () Bool)

(declare-fun tp!2300096 () Bool)

(declare-fun tp!2300099 () Bool)

(assert (=> b!7807850 (= e!4621674 (and tp!2300096 tp!2300099))))

(assert (=> b!7806826 (= tp!2299825 e!4621674)))

(declare-fun b!7807849 () Bool)

(declare-fun tp!2300095 () Bool)

(assert (=> b!7807849 (= e!4621674 tp!2300095)))

(declare-fun b!7807847 () Bool)

(assert (=> b!7807847 (= e!4621674 tp_is_empty!52133)))

(declare-fun b!7807848 () Bool)

(declare-fun tp!2300097 () Bool)

(declare-fun tp!2300098 () Bool)

(assert (=> b!7807848 (= e!4621674 (and tp!2300097 tp!2300098))))

(assert (= (and b!7806826 ((_ is ElementMatch!20889) (regTwo!42291 (regOne!42290 r1!6279)))) b!7807847))

(assert (= (and b!7806826 ((_ is Concat!29734) (regTwo!42291 (regOne!42290 r1!6279)))) b!7807848))

(assert (= (and b!7806826 ((_ is Star!20889) (regTwo!42291 (regOne!42290 r1!6279)))) b!7807849))

(assert (= (and b!7806826 ((_ is Union!20889) (regTwo!42291 (regOne!42290 r1!6279)))) b!7807850))

(declare-fun b!7807854 () Bool)

(declare-fun e!4621675 () Bool)

(declare-fun tp!2300101 () Bool)

(declare-fun tp!2300104 () Bool)

(assert (=> b!7807854 (= e!4621675 (and tp!2300101 tp!2300104))))

(assert (=> b!7806824 (= tp!2299823 e!4621675)))

(declare-fun b!7807853 () Bool)

(declare-fun tp!2300100 () Bool)

(assert (=> b!7807853 (= e!4621675 tp!2300100)))

(declare-fun b!7807851 () Bool)

(assert (=> b!7807851 (= e!4621675 tp_is_empty!52133)))

(declare-fun b!7807852 () Bool)

(declare-fun tp!2300102 () Bool)

(declare-fun tp!2300103 () Bool)

(assert (=> b!7807852 (= e!4621675 (and tp!2300102 tp!2300103))))

(assert (= (and b!7806824 ((_ is ElementMatch!20889) (regOne!42290 (regOne!42290 r1!6279)))) b!7807851))

(assert (= (and b!7806824 ((_ is Concat!29734) (regOne!42290 (regOne!42290 r1!6279)))) b!7807852))

(assert (= (and b!7806824 ((_ is Star!20889) (regOne!42290 (regOne!42290 r1!6279)))) b!7807853))

(assert (= (and b!7806824 ((_ is Union!20889) (regOne!42290 (regOne!42290 r1!6279)))) b!7807854))

(declare-fun b!7807858 () Bool)

(declare-fun e!4621676 () Bool)

(declare-fun tp!2300106 () Bool)

(declare-fun tp!2300109 () Bool)

(assert (=> b!7807858 (= e!4621676 (and tp!2300106 tp!2300109))))

(assert (=> b!7806824 (= tp!2299824 e!4621676)))

(declare-fun b!7807857 () Bool)

(declare-fun tp!2300105 () Bool)

(assert (=> b!7807857 (= e!4621676 tp!2300105)))

(declare-fun b!7807855 () Bool)

(assert (=> b!7807855 (= e!4621676 tp_is_empty!52133)))

(declare-fun b!7807856 () Bool)

(declare-fun tp!2300107 () Bool)

(declare-fun tp!2300108 () Bool)

(assert (=> b!7807856 (= e!4621676 (and tp!2300107 tp!2300108))))

(assert (= (and b!7806824 ((_ is ElementMatch!20889) (regTwo!42290 (regOne!42290 r1!6279)))) b!7807855))

(assert (= (and b!7806824 ((_ is Concat!29734) (regTwo!42290 (regOne!42290 r1!6279)))) b!7807856))

(assert (= (and b!7806824 ((_ is Star!20889) (regTwo!42290 (regOne!42290 r1!6279)))) b!7807857))

(assert (= (and b!7806824 ((_ is Union!20889) (regTwo!42290 (regOne!42290 r1!6279)))) b!7807858))

(declare-fun b!7807862 () Bool)

(declare-fun e!4621677 () Bool)

(declare-fun tp!2300111 () Bool)

(declare-fun tp!2300114 () Bool)

(assert (=> b!7807862 (= e!4621677 (and tp!2300111 tp!2300114))))

(assert (=> b!7806866 (= tp!2299869 e!4621677)))

(declare-fun b!7807861 () Bool)

(declare-fun tp!2300110 () Bool)

(assert (=> b!7807861 (= e!4621677 tp!2300110)))

(declare-fun b!7807859 () Bool)

(assert (=> b!7807859 (= e!4621677 tp_is_empty!52133)))

(declare-fun b!7807860 () Bool)

(declare-fun tp!2300112 () Bool)

(declare-fun tp!2300113 () Bool)

(assert (=> b!7807860 (= e!4621677 (and tp!2300112 tp!2300113))))

(assert (= (and b!7806866 ((_ is ElementMatch!20889) (reg!21218 (reg!21218 r1!6279)))) b!7807859))

(assert (= (and b!7806866 ((_ is Concat!29734) (reg!21218 (reg!21218 r1!6279)))) b!7807860))

(assert (= (and b!7806866 ((_ is Star!20889) (reg!21218 (reg!21218 r1!6279)))) b!7807861))

(assert (= (and b!7806866 ((_ is Union!20889) (reg!21218 (reg!21218 r1!6279)))) b!7807862))

(declare-fun b!7807866 () Bool)

(declare-fun e!4621680 () Bool)

(declare-fun tp!2300116 () Bool)

(declare-fun tp!2300119 () Bool)

(assert (=> b!7807866 (= e!4621680 (and tp!2300116 tp!2300119))))

(assert (=> b!7806857 (= tp!2299861 e!4621680)))

(declare-fun b!7807865 () Bool)

(declare-fun tp!2300115 () Bool)

(assert (=> b!7807865 (= e!4621680 tp!2300115)))

(declare-fun b!7807863 () Bool)

(assert (=> b!7807863 (= e!4621680 tp_is_empty!52133)))

(declare-fun b!7807864 () Bool)

(declare-fun tp!2300117 () Bool)

(declare-fun tp!2300118 () Bool)

(assert (=> b!7807864 (= e!4621680 (and tp!2300117 tp!2300118))))

(assert (= (and b!7806857 ((_ is ElementMatch!20889) (regOne!42290 (regOne!42291 r2!6217)))) b!7807863))

(assert (= (and b!7806857 ((_ is Concat!29734) (regOne!42290 (regOne!42291 r2!6217)))) b!7807864))

(assert (= (and b!7806857 ((_ is Star!20889) (regOne!42290 (regOne!42291 r2!6217)))) b!7807865))

(assert (= (and b!7806857 ((_ is Union!20889) (regOne!42290 (regOne!42291 r2!6217)))) b!7807866))

(declare-fun b!7807880 () Bool)

(declare-fun e!4621684 () Bool)

(declare-fun tp!2300121 () Bool)

(declare-fun tp!2300124 () Bool)

(assert (=> b!7807880 (= e!4621684 (and tp!2300121 tp!2300124))))

(assert (=> b!7806857 (= tp!2299862 e!4621684)))

(declare-fun b!7807879 () Bool)

(declare-fun tp!2300120 () Bool)

(assert (=> b!7807879 (= e!4621684 tp!2300120)))

(declare-fun b!7807877 () Bool)

(assert (=> b!7807877 (= e!4621684 tp_is_empty!52133)))

(declare-fun b!7807878 () Bool)

(declare-fun tp!2300122 () Bool)

(declare-fun tp!2300123 () Bool)

(assert (=> b!7807878 (= e!4621684 (and tp!2300122 tp!2300123))))

(assert (= (and b!7806857 ((_ is ElementMatch!20889) (regTwo!42290 (regOne!42291 r2!6217)))) b!7807877))

(assert (= (and b!7806857 ((_ is Concat!29734) (regTwo!42290 (regOne!42291 r2!6217)))) b!7807878))

(assert (= (and b!7806857 ((_ is Star!20889) (regTwo!42290 (regOne!42291 r2!6217)))) b!7807879))

(assert (= (and b!7806857 ((_ is Union!20889) (regTwo!42290 (regOne!42291 r2!6217)))) b!7807880))

(check-sat (not b!7807775) (not b!7807746) (not d!2348212) (not b!7806903) (not b!7807792) (not d!2348406) (not b!7807802) (not b!7807011) (not d!2348120) (not b!7807798) (not b!7807797) (not bm!724148) (not b!7806883) (not bm!724134) (not b!7807671) (not b!7807677) (not b!7807748) (not b!7807856) (not b!7807256) (not b!7807438) (not b!7807777) (not bm!724221) (not b!7807707) (not b!7807825) (not b!7807636) (not b!7807439) (not b!7807375) (not bm!724166) (not b!7807879) (not b!7807781) (not bm!724151) (not b!7807752) (not b!7807131) (not bm!724168) (not b!7807850) (not b!7807034) (not b!7807136) (not b!7807764) (not d!2348184) (not bm!724139) (not b!7807725) (not b!7807788) (not b!7806955) (not b!7806965) (not b!7807878) (not bm!724126) (not b!7807440) (not b!7807125) (not b!7807709) (not b!7807679) (not b!7807688) (not b!7807785) (not bm!724195) (not b!7807075) (not b!7807650) (not bm!724119) (not b!7807247) (not b!7807826) (not b!7807254) (not bm!724124) (not b!7807201) (not b!7807753) (not bm!724100) (not b!7807834) (not b!7807073) (not b!7807614) (not d!2348190) (not b!7806896) (not b!7807717) (not b!7807183) (not b!7807813) (not b!7807103) (not bm!724145) (not b!7807653) (not bm!724204) (not b!7807758) (not d!2348270) (not b!7807860) (not bm!724110) (not d!2348400) (not b!7807830) (not bm!724121) (not d!2348358) (not b!7807840) (not b!7807776) (not b!7807056) (not b!7807613) (not d!2348210) (not d!2348192) (not b!7807074) (not b!7806895) (not b!7807848) (not b!7807715) (not b!7807837) (not bm!724158) (not b!7807667) (not b!7807816) (not b!7807853) (not d!2348308) (not d!2348284) (not b!7807793) (not b!7807067) (not b!7807738) (not bm!724103) (not bm!724137) (not b!7807684) (not b!7807571) (not bm!724131) (not b!7807852) (not b!7807786) (not d!2348112) (not d!2348232) (not b!7807810) tp_is_empty!52133 (not b!7807208) (not b!7807822) (not b!7807759) (not b!7807685) (not b!7807727) (not d!2348334) (not b!7807780) (not b!7807209) (not b!7807866) (not bm!724185) (not b!7807481) (not b!7807488) (not d!2348250) (not b!7807040) (not b!7807640) (not b!7807567) (not b!7807828) (not d!2348332) (not d!2348362) (not b!7807616) (not b!7807046) (not b!7807820) (not d!2348140) (not b!7806902) (not bm!724155) (not b!7806921) (not b!7807726) (not bm!724115) (not d!2348370) (not bm!724208) (not b!7807482) (not b!7807210) (not b!7807542) (not b!7807489) (not bm!724112) (not b!7807782) (not b!7807248) (not b!7807844) (not b!7807680) (not d!2348296) (not b!7807796) (not b!7807619) (not b!7807836) (not b!7807739) (not bm!724184) (not b!7807647) (not b!7807672) (not b!7807714) (not b!7807020) (not b!7807818) (not b!7807862) (not d!2348402) (not b!7807027) (not b!7806889) (not b!7807706) (not b!7807719) (not b!7807838) (not b!7807196) (not b!7806885) (not d!2348204) (not b!7807675) (not b!7807710) (not b!7807655) (not b!7807668) (not b!7807864) (not b!7807048) (not d!2348326) (not b!7807865) (not b!7807805) (not b!7807568) (not d!2348124) (not b!7807641) (not bm!724202) (not b!7807628) (not b!7807007) (not b!7806991) (not bm!724223) (not b!7807066) (not b!7807510) (not d!2348158) (not b!7807814) (not b!7807632) (not b!7807804) (not b!7807817) (not b!7807778) (not b!7807790) (not bm!724101) (not b!7807474) (not b!7807705) (not bm!724147) (not b!7807270) (not b!7807637) (not d!2348236) (not b!7807649) (not bm!724215) (not b!7807651) (not b!7807744) (not b!7807615) (not b!7807711) (not b!7807723) (not bm!724113) (not b!7807841) (not b!7807623) (not b!7807676) (not b!7807163) (not d!2348122) (not d!2348342) (not b!7807842) (not b!7807762) (not b!7807789) (not b!7807490) (not bm!724241) (not b!7807173) (not b!7806894) (not bm!724160) (not b!7806937) (not b!7807130) (not b!7807255) (not bm!724127) (not b!7807035) (not b!7807194) (not b!7807721) (not b!7807824) (not b!7807624) (not bm!724239) (not b!7807760) (not b!7807654) (not b!7807800) (not b!7807681) (not b!7807642) (not b!7807239) (not b!7807747) (not b!7807045) (not b!7807740) (not b!7807192) (not b!7807722) (not b!7807808) (not b!7807743) (not b!7807397) (not b!7807784) (not b!7807845) (not b!7806897) (not bm!724099) (not bm!724116) (not b!7807801) (not bm!724197) (not b!7807673) (not bm!724133) (not bm!724153) (not b!7807669) (not bm!724169) (not b!7806908) (not b!7807039) (not b!7807618) (not b!7807047) (not b!7807626) (not b!7807478) (not bm!724118) (not bm!724129) (not bm!724161) (not b!7807812) (not b!7807809) (not b!7807487) (not b!7807106) (not bm!724157) (not b!7807832) (not b!7807849) (not b!7807622) (not b!7807689) (not b!7807683) (not b!7807718) (not d!2348224) (not b!7807627) (not d!2348228) (not b!7807433) (not b!7807846) (not b!7806911) (not d!2348136) (not b!7807139) (not d!2348352) (not b!7807854) (not bm!724210) (not bm!724232) (not b!7807633) (not b!7807645) (not b!7807138) (not b!7807763) (not b!7807821) (not b!7807638) (not bm!724097) (not b!7807806) (not b!7807754) (not b!7807858) (not b!7807833) (not b!7807414) (not d!2348310) (not d!2348416) (not d!2348286) (not b!7807646) (not b!7807072) (not bm!724224) (not b!7807529) (not b!7806910) (not b!7807009) (not b!7807572) (not b!7807432) (not d!2348222) (not b!7807687) (not b!7807441) (not b!7807857) (not b!7807253) (not b!7807207) (not b!7807829) (not b!7807202) (not b!7806875) (not b!7807713) (not b!7806888) (not b!7807861) (not b!7806946) (not bm!724105) (not d!2348252) (not b!7807742) (not b!7807271) (not bm!724130) (not b!7807880) (not b!7807527) (not b!7806909) (not b!7807137) (not b!7807634) (not b!7807794) (not bm!724230))
(check-sat)
