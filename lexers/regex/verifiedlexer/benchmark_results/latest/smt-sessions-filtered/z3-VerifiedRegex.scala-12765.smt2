; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!705484 () Bool)

(assert start!705484)

(declare-fun b!7249842 () Bool)

(assert (=> b!7249842 true))

(declare-fun b!7249845 () Bool)

(assert (=> b!7249845 true))

(declare-fun b!7249836 () Bool)

(declare-fun e!4347017 () Bool)

(declare-fun tp!2037298 () Bool)

(assert (=> b!7249836 (= e!4347017 tp!2037298)))

(declare-fun b!7249837 () Bool)

(declare-fun e!4347013 () Bool)

(declare-fun e!4347018 () Bool)

(assert (=> b!7249837 (= e!4347013 e!4347018)))

(declare-fun res!2940442 () Bool)

(assert (=> b!7249837 (=> res!2940442 e!4347018)))

(declare-datatypes ((C!37552 0))(
  ( (C!37553 (val!28724 Int)) )
))
(declare-datatypes ((Regex!18639 0))(
  ( (ElementMatch!18639 (c!1347143 C!37552)) (Concat!27484 (regOne!37790 Regex!18639) (regTwo!37790 Regex!18639)) (EmptyExpr!18639) (Star!18639 (reg!18968 Regex!18639)) (EmptyLang!18639) (Union!18639 (regOne!37791 Regex!18639) (regTwo!37791 Regex!18639)) )
))
(declare-datatypes ((List!70497 0))(
  ( (Nil!70373) (Cons!70373 (h!76821 Regex!18639) (t!384551 List!70497)) )
))
(declare-fun lt!2584432 () List!70497)

(declare-fun isEmpty!40527 (List!70497) Bool)

(assert (=> b!7249837 (= res!2940442 (isEmpty!40527 lt!2584432))))

(declare-datatypes ((Context!15158 0))(
  ( (Context!15159 (exprs!8079 List!70497)) )
))
(declare-fun ct1!232 () Context!15158)

(declare-fun lambda!443962 () Int)

(declare-datatypes ((Unit!163863 0))(
  ( (Unit!163864) )
))
(declare-fun lt!2584419 () Unit!163863)

(declare-fun ct2!328 () Context!15158)

(declare-fun lemmaConcatPreservesForall!1446 (List!70497 List!70497 Int) Unit!163863)

(assert (=> b!7249837 (= lt!2584419 (lemmaConcatPreservesForall!1446 (exprs!8079 ct1!232) (exprs!8079 ct2!328) lambda!443962))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2584429 () (InoxSet Context!15158))

(declare-fun lt!2584425 () Context!15158)

(declare-datatypes ((List!70498 0))(
  ( (Nil!70374) (Cons!70374 (h!76822 C!37552) (t!384552 List!70498)) )
))
(declare-fun s1!1971 () List!70498)

(declare-fun derivationStepZipperUp!2463 (Context!15158 C!37552) (InoxSet Context!15158))

(assert (=> b!7249837 (= lt!2584429 (derivationStepZipperUp!2463 lt!2584425 (h!76822 s1!1971)))))

(declare-fun lt!2584426 () Unit!163863)

(assert (=> b!7249837 (= lt!2584426 (lemmaConcatPreservesForall!1446 (exprs!8079 ct1!232) (exprs!8079 ct2!328) lambda!443962))))

(declare-fun lt!2584427 () (InoxSet Context!15158))

(declare-fun derivationStepZipperDown!2633 (Regex!18639 Context!15158 C!37552) (InoxSet Context!15158))

(declare-fun tail!14310 (List!70497) List!70497)

(assert (=> b!7249837 (= lt!2584427 (derivationStepZipperDown!2633 (h!76821 (exprs!8079 ct1!232)) (Context!15159 (tail!14310 (exprs!8079 ct1!232))) (h!76822 s1!1971)))))

(declare-fun b!7249838 () Bool)

(declare-fun e!4347014 () Bool)

(declare-fun tp_is_empty!46743 () Bool)

(declare-fun tp!2037295 () Bool)

(assert (=> b!7249838 (= e!4347014 (and tp_is_empty!46743 tp!2037295))))

(declare-fun b!7249839 () Bool)

(declare-fun res!2940441 () Bool)

(declare-fun e!4347015 () Bool)

(assert (=> b!7249839 (=> (not res!2940441) (not e!4347015))))

(declare-fun s2!1849 () List!70498)

(declare-fun matchZipper!3549 ((InoxSet Context!15158) List!70498) Bool)

(assert (=> b!7249839 (= res!2940441 (matchZipper!3549 (store ((as const (Array Context!15158 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7249840 () Bool)

(declare-fun e!4347011 () Bool)

(assert (=> b!7249840 (= e!4347015 e!4347011)))

(declare-fun res!2940443 () Bool)

(assert (=> b!7249840 (=> (not res!2940443) (not e!4347011))))

(get-info :version)

(assert (=> b!7249840 (= res!2940443 (and (not ((_ is Nil!70373) (exprs!8079 ct1!232))) ((_ is Cons!70374) s1!1971)))))

(assert (=> b!7249840 (= lt!2584425 (Context!15159 lt!2584432))))

(declare-fun ++!16540 (List!70497 List!70497) List!70497)

(assert (=> b!7249840 (= lt!2584432 (++!16540 (exprs!8079 ct1!232) (exprs!8079 ct2!328)))))

(declare-fun lt!2584433 () Unit!163863)

(assert (=> b!7249840 (= lt!2584433 (lemmaConcatPreservesForall!1446 (exprs!8079 ct1!232) (exprs!8079 ct2!328) lambda!443962))))

(declare-fun b!7249841 () Bool)

(declare-fun e!4347010 () Bool)

(assert (=> b!7249841 (= e!4347011 e!4347010)))

(declare-fun res!2940439 () Bool)

(assert (=> b!7249841 (=> (not res!2940439) (not e!4347010))))

(declare-fun lt!2584424 () (InoxSet Context!15158))

(assert (=> b!7249841 (= res!2940439 (matchZipper!3549 lt!2584424 (t!384552 s1!1971)))))

(declare-fun lt!2584420 () (InoxSet Context!15158))

(declare-fun derivationStepZipper!3417 ((InoxSet Context!15158) C!37552) (InoxSet Context!15158))

(assert (=> b!7249841 (= lt!2584424 (derivationStepZipper!3417 lt!2584420 (h!76822 s1!1971)))))

(declare-fun b!7249843 () Bool)

(declare-fun e!4347009 () Bool)

(declare-fun tp!2037297 () Bool)

(assert (=> b!7249843 (= e!4347009 tp!2037297)))

(declare-fun b!7249844 () Bool)

(declare-fun e!4347012 () Bool)

(assert (=> b!7249844 (= e!4347012 e!4347013)))

(declare-fun res!2940444 () Bool)

(assert (=> b!7249844 (=> res!2940444 e!4347013)))

(assert (=> b!7249844 (= res!2940444 (isEmpty!40527 (exprs!8079 ct1!232)))))

(declare-fun lt!2584417 () (InoxSet Context!15158))

(assert (=> b!7249844 (= lt!2584417 (derivationStepZipperUp!2463 ct1!232 (h!76822 s1!1971)))))

(declare-fun lt!2584430 () Unit!163863)

(declare-fun lt!2584431 () Context!15158)

(assert (=> b!7249844 (= lt!2584430 (lemmaConcatPreservesForall!1446 (exprs!8079 lt!2584431) (exprs!8079 ct2!328) lambda!443962))))

(declare-fun ++!16541 (List!70498 List!70498) List!70498)

(assert (=> b!7249844 (matchZipper!3549 (store ((as const (Array Context!15158 Bool)) false) (Context!15159 (++!16540 (exprs!8079 lt!2584431) (exprs!8079 ct2!328))) true) (++!16541 (t!384552 s1!1971) s2!1849))))

(declare-fun lt!2584422 () Unit!163863)

(assert (=> b!7249844 (= lt!2584422 (lemmaConcatPreservesForall!1446 (exprs!8079 lt!2584431) (exprs!8079 ct2!328) lambda!443962))))

(declare-fun lt!2584423 () Unit!163863)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!384 (Context!15158 Context!15158 List!70498 List!70498) Unit!163863)

(assert (=> b!7249844 (= lt!2584423 (lemmaConcatenateContextMatchesConcatOfStrings!384 lt!2584431 ct2!328 (t!384552 s1!1971) s2!1849))))

(declare-fun lambda!443963 () Int)

(declare-fun getWitness!2193 ((InoxSet Context!15158) Int) Context!15158)

(assert (=> b!7249844 (= lt!2584431 (getWitness!2193 lt!2584424 lambda!443963))))

(assert (=> b!7249842 (= e!4347010 (not e!4347012))))

(declare-fun res!2940440 () Bool)

(assert (=> b!7249842 (=> res!2940440 e!4347012)))

(declare-fun exists!4356 ((InoxSet Context!15158) Int) Bool)

(assert (=> b!7249842 (= res!2940440 (not (exists!4356 lt!2584424 lambda!443963)))))

(declare-datatypes ((List!70499 0))(
  ( (Nil!70375) (Cons!70375 (h!76823 Context!15158) (t!384553 List!70499)) )
))
(declare-fun lt!2584418 () List!70499)

(declare-fun exists!4357 (List!70499 Int) Bool)

(assert (=> b!7249842 (exists!4357 lt!2584418 lambda!443963)))

(declare-fun lt!2584415 () Unit!163863)

(declare-fun lemmaZipperMatchesExistsMatchingContext!742 (List!70499 List!70498) Unit!163863)

(assert (=> b!7249842 (= lt!2584415 (lemmaZipperMatchesExistsMatchingContext!742 lt!2584418 (t!384552 s1!1971)))))

(declare-fun toList!11468 ((InoxSet Context!15158)) List!70499)

(assert (=> b!7249842 (= lt!2584418 (toList!11468 lt!2584424))))

(declare-fun res!2940438 () Bool)

(assert (=> start!705484 (=> (not res!2940438) (not e!4347015))))

(assert (=> start!705484 (= res!2940438 (matchZipper!3549 lt!2584420 s1!1971))))

(assert (=> start!705484 (= lt!2584420 (store ((as const (Array Context!15158 Bool)) false) ct1!232 true))))

(assert (=> start!705484 e!4347015))

(declare-fun inv!89607 (Context!15158) Bool)

(assert (=> start!705484 (and (inv!89607 ct1!232) e!4347009)))

(declare-fun e!4347016 () Bool)

(assert (=> start!705484 e!4347016))

(assert (=> start!705484 e!4347014))

(assert (=> start!705484 (and (inv!89607 ct2!328) e!4347017)))

(assert (=> b!7249845 (= e!4347018 (inv!89607 lt!2584425))))

(declare-fun lt!2584421 () Unit!163863)

(assert (=> b!7249845 (= lt!2584421 (lemmaConcatPreservesForall!1446 (exprs!8079 ct1!232) (exprs!8079 ct2!328) lambda!443962))))

(declare-fun lambda!443964 () Int)

(declare-fun flatMap!2804 ((InoxSet Context!15158) Int) (InoxSet Context!15158))

(assert (=> b!7249845 (= (flatMap!2804 lt!2584420 lambda!443964) (derivationStepZipperUp!2463 ct1!232 (h!76822 s1!1971)))))

(declare-fun lt!2584416 () Unit!163863)

(declare-fun lemmaFlatMapOnSingletonSet!2208 ((InoxSet Context!15158) Context!15158 Int) Unit!163863)

(assert (=> b!7249845 (= lt!2584416 (lemmaFlatMapOnSingletonSet!2208 lt!2584420 ct1!232 lambda!443964))))

(declare-fun lt!2584428 () (InoxSet Context!15158))

(assert (=> b!7249845 (= lt!2584428 (derivationStepZipperDown!2633 (h!76821 (exprs!8079 ct1!232)) (Context!15159 (tail!14310 lt!2584432)) (h!76822 s1!1971)))))

(declare-fun b!7249846 () Bool)

(declare-fun tp!2037296 () Bool)

(assert (=> b!7249846 (= e!4347016 (and tp_is_empty!46743 tp!2037296))))

(assert (= (and start!705484 res!2940438) b!7249839))

(assert (= (and b!7249839 res!2940441) b!7249840))

(assert (= (and b!7249840 res!2940443) b!7249841))

(assert (= (and b!7249841 res!2940439) b!7249842))

(assert (= (and b!7249842 (not res!2940440)) b!7249844))

(assert (= (and b!7249844 (not res!2940444)) b!7249837))

(assert (= (and b!7249837 (not res!2940442)) b!7249845))

(assert (= start!705484 b!7249843))

(assert (= (and start!705484 ((_ is Cons!70374) s1!1971)) b!7249846))

(assert (= (and start!705484 ((_ is Cons!70374) s2!1849)) b!7249838))

(assert (= start!705484 b!7249836))

(declare-fun m!7928318 () Bool)

(assert (=> b!7249837 m!7928318))

(declare-fun m!7928320 () Bool)

(assert (=> b!7249837 m!7928320))

(declare-fun m!7928322 () Bool)

(assert (=> b!7249837 m!7928322))

(assert (=> b!7249837 m!7928318))

(declare-fun m!7928324 () Bool)

(assert (=> b!7249837 m!7928324))

(declare-fun m!7928326 () Bool)

(assert (=> b!7249837 m!7928326))

(declare-fun m!7928328 () Bool)

(assert (=> b!7249840 m!7928328))

(assert (=> b!7249840 m!7928318))

(declare-fun m!7928330 () Bool)

(assert (=> b!7249839 m!7928330))

(assert (=> b!7249839 m!7928330))

(declare-fun m!7928332 () Bool)

(assert (=> b!7249839 m!7928332))

(declare-fun m!7928334 () Bool)

(assert (=> b!7249845 m!7928334))

(declare-fun m!7928336 () Bool)

(assert (=> b!7249845 m!7928336))

(declare-fun m!7928338 () Bool)

(assert (=> b!7249845 m!7928338))

(declare-fun m!7928340 () Bool)

(assert (=> b!7249845 m!7928340))

(declare-fun m!7928342 () Bool)

(assert (=> b!7249845 m!7928342))

(declare-fun m!7928344 () Bool)

(assert (=> b!7249845 m!7928344))

(assert (=> b!7249845 m!7928318))

(declare-fun m!7928346 () Bool)

(assert (=> b!7249844 m!7928346))

(declare-fun m!7928348 () Bool)

(assert (=> b!7249844 m!7928348))

(declare-fun m!7928350 () Bool)

(assert (=> b!7249844 m!7928350))

(declare-fun m!7928352 () Bool)

(assert (=> b!7249844 m!7928352))

(assert (=> b!7249844 m!7928340))

(declare-fun m!7928354 () Bool)

(assert (=> b!7249844 m!7928354))

(declare-fun m!7928356 () Bool)

(assert (=> b!7249844 m!7928356))

(assert (=> b!7249844 m!7928350))

(assert (=> b!7249844 m!7928354))

(declare-fun m!7928358 () Bool)

(assert (=> b!7249844 m!7928358))

(assert (=> b!7249844 m!7928356))

(declare-fun m!7928360 () Bool)

(assert (=> b!7249844 m!7928360))

(declare-fun m!7928362 () Bool)

(assert (=> b!7249841 m!7928362))

(declare-fun m!7928364 () Bool)

(assert (=> b!7249841 m!7928364))

(declare-fun m!7928366 () Bool)

(assert (=> b!7249842 m!7928366))

(declare-fun m!7928368 () Bool)

(assert (=> b!7249842 m!7928368))

(declare-fun m!7928370 () Bool)

(assert (=> b!7249842 m!7928370))

(declare-fun m!7928372 () Bool)

(assert (=> b!7249842 m!7928372))

(declare-fun m!7928374 () Bool)

(assert (=> start!705484 m!7928374))

(declare-fun m!7928376 () Bool)

(assert (=> start!705484 m!7928376))

(declare-fun m!7928378 () Bool)

(assert (=> start!705484 m!7928378))

(declare-fun m!7928380 () Bool)

(assert (=> start!705484 m!7928380))

(check-sat (not b!7249845) (not b!7249843) (not b!7249836) (not b!7249840) tp_is_empty!46743 (not b!7249841) (not b!7249844) (not b!7249838) (not start!705484) (not b!7249839) (not b!7249837) (not b!7249846) (not b!7249842))
(check-sat)
(get-model)

(declare-fun e!4347023 () Bool)

(declare-fun lt!2584436 () List!70497)

(declare-fun b!7249862 () Bool)

(assert (=> b!7249862 (= e!4347023 (or (not (= (exprs!8079 ct2!328) Nil!70373)) (= lt!2584436 (exprs!8079 ct1!232))))))

(declare-fun b!7249859 () Bool)

(declare-fun e!4347024 () List!70497)

(assert (=> b!7249859 (= e!4347024 (exprs!8079 ct2!328))))

(declare-fun b!7249860 () Bool)

(assert (=> b!7249860 (= e!4347024 (Cons!70373 (h!76821 (exprs!8079 ct1!232)) (++!16540 (t!384551 (exprs!8079 ct1!232)) (exprs!8079 ct2!328))))))

(declare-fun b!7249861 () Bool)

(declare-fun res!2940449 () Bool)

(assert (=> b!7249861 (=> (not res!2940449) (not e!4347023))))

(declare-fun size!41707 (List!70497) Int)

(assert (=> b!7249861 (= res!2940449 (= (size!41707 lt!2584436) (+ (size!41707 (exprs!8079 ct1!232)) (size!41707 (exprs!8079 ct2!328)))))))

(declare-fun d!2253342 () Bool)

(assert (=> d!2253342 e!4347023))

(declare-fun res!2940450 () Bool)

(assert (=> d!2253342 (=> (not res!2940450) (not e!4347023))))

(declare-fun content!14597 (List!70497) (InoxSet Regex!18639))

(assert (=> d!2253342 (= res!2940450 (= (content!14597 lt!2584436) ((_ map or) (content!14597 (exprs!8079 ct1!232)) (content!14597 (exprs!8079 ct2!328)))))))

(assert (=> d!2253342 (= lt!2584436 e!4347024)))

(declare-fun c!1347146 () Bool)

(assert (=> d!2253342 (= c!1347146 ((_ is Nil!70373) (exprs!8079 ct1!232)))))

(assert (=> d!2253342 (= (++!16540 (exprs!8079 ct1!232) (exprs!8079 ct2!328)) lt!2584436)))

(assert (= (and d!2253342 c!1347146) b!7249859))

(assert (= (and d!2253342 (not c!1347146)) b!7249860))

(assert (= (and d!2253342 res!2940450) b!7249861))

(assert (= (and b!7249861 res!2940449) b!7249862))

(declare-fun m!7928382 () Bool)

(assert (=> b!7249860 m!7928382))

(declare-fun m!7928384 () Bool)

(assert (=> b!7249861 m!7928384))

(declare-fun m!7928386 () Bool)

(assert (=> b!7249861 m!7928386))

(declare-fun m!7928388 () Bool)

(assert (=> b!7249861 m!7928388))

(declare-fun m!7928390 () Bool)

(assert (=> d!2253342 m!7928390))

(declare-fun m!7928392 () Bool)

(assert (=> d!2253342 m!7928392))

(declare-fun m!7928394 () Bool)

(assert (=> d!2253342 m!7928394))

(assert (=> b!7249840 d!2253342))

(declare-fun d!2253344 () Bool)

(declare-fun forall!17484 (List!70497 Int) Bool)

(assert (=> d!2253344 (forall!17484 (++!16540 (exprs!8079 ct1!232) (exprs!8079 ct2!328)) lambda!443962)))

(declare-fun lt!2584439 () Unit!163863)

(declare-fun choose!55988 (List!70497 List!70497 Int) Unit!163863)

(assert (=> d!2253344 (= lt!2584439 (choose!55988 (exprs!8079 ct1!232) (exprs!8079 ct2!328) lambda!443962))))

(assert (=> d!2253344 (forall!17484 (exprs!8079 ct1!232) lambda!443962)))

(assert (=> d!2253344 (= (lemmaConcatPreservesForall!1446 (exprs!8079 ct1!232) (exprs!8079 ct2!328) lambda!443962) lt!2584439)))

(declare-fun bs!1906004 () Bool)

(assert (= bs!1906004 d!2253344))

(assert (=> bs!1906004 m!7928328))

(assert (=> bs!1906004 m!7928328))

(declare-fun m!7928396 () Bool)

(assert (=> bs!1906004 m!7928396))

(declare-fun m!7928398 () Bool)

(assert (=> bs!1906004 m!7928398))

(declare-fun m!7928400 () Bool)

(assert (=> bs!1906004 m!7928400))

(assert (=> b!7249840 d!2253344))

(declare-fun bs!1906005 () Bool)

(declare-fun d!2253346 () Bool)

(assert (= bs!1906005 (and d!2253346 b!7249840)))

(declare-fun lambda!443967 () Int)

(assert (=> bs!1906005 (= lambda!443967 lambda!443962)))

(assert (=> d!2253346 (= (inv!89607 lt!2584425) (forall!17484 (exprs!8079 lt!2584425) lambda!443967))))

(declare-fun bs!1906006 () Bool)

(assert (= bs!1906006 d!2253346))

(declare-fun m!7928402 () Bool)

(assert (=> bs!1906006 m!7928402))

(assert (=> b!7249845 d!2253346))

(assert (=> b!7249845 d!2253344))

(declare-fun bm!660242 () Bool)

(declare-fun call!660248 () (InoxSet Context!15158))

(declare-fun call!660249 () (InoxSet Context!15158))

(assert (=> bm!660242 (= call!660248 call!660249)))

(declare-fun bm!660243 () Bool)

(declare-fun call!660247 () List!70497)

(declare-fun call!660250 () List!70497)

(assert (=> bm!660243 (= call!660247 call!660250)))

(declare-fun b!7249885 () Bool)

(declare-fun e!4347040 () (InoxSet Context!15158))

(assert (=> b!7249885 (= e!4347040 ((as const (Array Context!15158 Bool)) false))))

(declare-fun b!7249886 () Bool)

(declare-fun e!4347037 () (InoxSet Context!15158))

(declare-fun e!4347038 () (InoxSet Context!15158))

(assert (=> b!7249886 (= e!4347037 e!4347038)))

(declare-fun c!1347157 () Bool)

(assert (=> b!7249886 (= c!1347157 ((_ is Concat!27484) (h!76821 (exprs!8079 ct1!232))))))

(declare-fun c!1347159 () Bool)

(declare-fun bm!660245 () Bool)

(declare-fun call!660251 () (InoxSet Context!15158))

(assert (=> bm!660245 (= call!660251 (derivationStepZipperDown!2633 (ite c!1347159 (regTwo!37791 (h!76821 (exprs!8079 ct1!232))) (regOne!37790 (h!76821 (exprs!8079 ct1!232)))) (ite c!1347159 (Context!15159 (tail!14310 lt!2584432)) (Context!15159 call!660250)) (h!76822 s1!1971)))))

(declare-fun b!7249887 () Bool)

(declare-fun e!4347039 () (InoxSet Context!15158))

(assert (=> b!7249887 (= e!4347039 ((_ map or) call!660249 call!660251))))

(declare-fun bm!660246 () Bool)

(declare-fun c!1347161 () Bool)

(declare-fun $colon$colon!2913 (List!70497 Regex!18639) List!70497)

(assert (=> bm!660246 (= call!660250 ($colon$colon!2913 (exprs!8079 (Context!15159 (tail!14310 lt!2584432))) (ite (or c!1347161 c!1347157) (regTwo!37790 (h!76821 (exprs!8079 ct1!232))) (h!76821 (exprs!8079 ct1!232)))))))

(declare-fun b!7249888 () Bool)

(assert (=> b!7249888 (= e!4347037 ((_ map or) call!660251 call!660248))))

(declare-fun b!7249889 () Bool)

(declare-fun c!1347158 () Bool)

(assert (=> b!7249889 (= c!1347158 ((_ is Star!18639) (h!76821 (exprs!8079 ct1!232))))))

(assert (=> b!7249889 (= e!4347038 e!4347040)))

(declare-fun b!7249890 () Bool)

(declare-fun e!4347041 () (InoxSet Context!15158))

(assert (=> b!7249890 (= e!4347041 e!4347039)))

(assert (=> b!7249890 (= c!1347159 ((_ is Union!18639) (h!76821 (exprs!8079 ct1!232))))))

(declare-fun bm!660247 () Bool)

(declare-fun call!660252 () (InoxSet Context!15158))

(assert (=> bm!660247 (= call!660252 call!660248)))

(declare-fun b!7249891 () Bool)

(assert (=> b!7249891 (= e!4347038 call!660252)))

(declare-fun b!7249892 () Bool)

(declare-fun e!4347042 () Bool)

(assert (=> b!7249892 (= c!1347161 e!4347042)))

(declare-fun res!2940453 () Bool)

(assert (=> b!7249892 (=> (not res!2940453) (not e!4347042))))

(assert (=> b!7249892 (= res!2940453 ((_ is Concat!27484) (h!76821 (exprs!8079 ct1!232))))))

(assert (=> b!7249892 (= e!4347039 e!4347037)))

(declare-fun b!7249893 () Bool)

(declare-fun nullable!7900 (Regex!18639) Bool)

(assert (=> b!7249893 (= e!4347042 (nullable!7900 (regOne!37790 (h!76821 (exprs!8079 ct1!232)))))))

(declare-fun d!2253348 () Bool)

(declare-fun c!1347160 () Bool)

(assert (=> d!2253348 (= c!1347160 (and ((_ is ElementMatch!18639) (h!76821 (exprs!8079 ct1!232))) (= (c!1347143 (h!76821 (exprs!8079 ct1!232))) (h!76822 s1!1971))))))

(assert (=> d!2253348 (= (derivationStepZipperDown!2633 (h!76821 (exprs!8079 ct1!232)) (Context!15159 (tail!14310 lt!2584432)) (h!76822 s1!1971)) e!4347041)))

(declare-fun bm!660244 () Bool)

(assert (=> bm!660244 (= call!660249 (derivationStepZipperDown!2633 (ite c!1347159 (regOne!37791 (h!76821 (exprs!8079 ct1!232))) (ite c!1347161 (regTwo!37790 (h!76821 (exprs!8079 ct1!232))) (ite c!1347157 (regOne!37790 (h!76821 (exprs!8079 ct1!232))) (reg!18968 (h!76821 (exprs!8079 ct1!232)))))) (ite (or c!1347159 c!1347161) (Context!15159 (tail!14310 lt!2584432)) (Context!15159 call!660247)) (h!76822 s1!1971)))))

(declare-fun b!7249894 () Bool)

(assert (=> b!7249894 (= e!4347041 (store ((as const (Array Context!15158 Bool)) false) (Context!15159 (tail!14310 lt!2584432)) true))))

(declare-fun b!7249895 () Bool)

(assert (=> b!7249895 (= e!4347040 call!660252)))

(assert (= (and d!2253348 c!1347160) b!7249894))

(assert (= (and d!2253348 (not c!1347160)) b!7249890))

(assert (= (and b!7249890 c!1347159) b!7249887))

(assert (= (and b!7249890 (not c!1347159)) b!7249892))

(assert (= (and b!7249892 res!2940453) b!7249893))

(assert (= (and b!7249892 c!1347161) b!7249888))

(assert (= (and b!7249892 (not c!1347161)) b!7249886))

(assert (= (and b!7249886 c!1347157) b!7249891))

(assert (= (and b!7249886 (not c!1347157)) b!7249889))

(assert (= (and b!7249889 c!1347158) b!7249895))

(assert (= (and b!7249889 (not c!1347158)) b!7249885))

(assert (= (or b!7249891 b!7249895) bm!660243))

(assert (= (or b!7249891 b!7249895) bm!660247))

(assert (= (or b!7249888 bm!660243) bm!660246))

(assert (= (or b!7249888 bm!660247) bm!660242))

(assert (= (or b!7249887 b!7249888) bm!660245))

(assert (= (or b!7249887 bm!660242) bm!660244))

(declare-fun m!7928404 () Bool)

(assert (=> bm!660246 m!7928404))

(declare-fun m!7928406 () Bool)

(assert (=> b!7249893 m!7928406))

(declare-fun m!7928408 () Bool)

(assert (=> bm!660245 m!7928408))

(declare-fun m!7928410 () Bool)

(assert (=> b!7249894 m!7928410))

(declare-fun m!7928412 () Bool)

(assert (=> bm!660244 m!7928412))

(assert (=> b!7249845 d!2253348))

(declare-fun b!7249906 () Bool)

(declare-fun e!4347051 () (InoxSet Context!15158))

(declare-fun call!660255 () (InoxSet Context!15158))

(assert (=> b!7249906 (= e!4347051 call!660255)))

(declare-fun b!7249907 () Bool)

(declare-fun e!4347049 () (InoxSet Context!15158))

(assert (=> b!7249907 (= e!4347049 e!4347051)))

(declare-fun c!1347166 () Bool)

(assert (=> b!7249907 (= c!1347166 ((_ is Cons!70373) (exprs!8079 ct1!232)))))

(declare-fun d!2253352 () Bool)

(declare-fun c!1347167 () Bool)

(declare-fun e!4347050 () Bool)

(assert (=> d!2253352 (= c!1347167 e!4347050)))

(declare-fun res!2940456 () Bool)

(assert (=> d!2253352 (=> (not res!2940456) (not e!4347050))))

(assert (=> d!2253352 (= res!2940456 ((_ is Cons!70373) (exprs!8079 ct1!232)))))

(assert (=> d!2253352 (= (derivationStepZipperUp!2463 ct1!232 (h!76822 s1!1971)) e!4347049)))

(declare-fun b!7249908 () Bool)

(assert (=> b!7249908 (= e!4347051 ((as const (Array Context!15158 Bool)) false))))

(declare-fun b!7249909 () Bool)

(assert (=> b!7249909 (= e!4347050 (nullable!7900 (h!76821 (exprs!8079 ct1!232))))))

(declare-fun b!7249910 () Bool)

(assert (=> b!7249910 (= e!4347049 ((_ map or) call!660255 (derivationStepZipperUp!2463 (Context!15159 (t!384551 (exprs!8079 ct1!232))) (h!76822 s1!1971))))))

(declare-fun bm!660250 () Bool)

(assert (=> bm!660250 (= call!660255 (derivationStepZipperDown!2633 (h!76821 (exprs!8079 ct1!232)) (Context!15159 (t!384551 (exprs!8079 ct1!232))) (h!76822 s1!1971)))))

(assert (= (and d!2253352 res!2940456) b!7249909))

(assert (= (and d!2253352 c!1347167) b!7249910))

(assert (= (and d!2253352 (not c!1347167)) b!7249907))

(assert (= (and b!7249907 c!1347166) b!7249906))

(assert (= (and b!7249907 (not c!1347166)) b!7249908))

(assert (= (or b!7249910 b!7249906) bm!660250))

(declare-fun m!7928422 () Bool)

(assert (=> b!7249909 m!7928422))

(declare-fun m!7928424 () Bool)

(assert (=> b!7249910 m!7928424))

(declare-fun m!7928426 () Bool)

(assert (=> bm!660250 m!7928426))

(assert (=> b!7249845 d!2253352))

(declare-fun d!2253360 () Bool)

(declare-fun choose!55990 ((InoxSet Context!15158) Int) (InoxSet Context!15158))

(assert (=> d!2253360 (= (flatMap!2804 lt!2584420 lambda!443964) (choose!55990 lt!2584420 lambda!443964))))

(declare-fun bs!1906010 () Bool)

(assert (= bs!1906010 d!2253360))

(declare-fun m!7928428 () Bool)

(assert (=> bs!1906010 m!7928428))

(assert (=> b!7249845 d!2253360))

(declare-fun d!2253362 () Bool)

(assert (=> d!2253362 (= (tail!14310 lt!2584432) (t!384551 lt!2584432))))

(assert (=> b!7249845 d!2253362))

(declare-fun d!2253364 () Bool)

(declare-fun dynLambda!28727 (Int Context!15158) (InoxSet Context!15158))

(assert (=> d!2253364 (= (flatMap!2804 lt!2584420 lambda!443964) (dynLambda!28727 lambda!443964 ct1!232))))

(declare-fun lt!2584445 () Unit!163863)

(declare-fun choose!55991 ((InoxSet Context!15158) Context!15158 Int) Unit!163863)

(assert (=> d!2253364 (= lt!2584445 (choose!55991 lt!2584420 ct1!232 lambda!443964))))

(assert (=> d!2253364 (= lt!2584420 (store ((as const (Array Context!15158 Bool)) false) ct1!232 true))))

(assert (=> d!2253364 (= (lemmaFlatMapOnSingletonSet!2208 lt!2584420 ct1!232 lambda!443964) lt!2584445)))

(declare-fun b_lambda!278335 () Bool)

(assert (=> (not b_lambda!278335) (not d!2253364)))

(declare-fun bs!1906012 () Bool)

(assert (= bs!1906012 d!2253364))

(assert (=> bs!1906012 m!7928336))

(declare-fun m!7928438 () Bool)

(assert (=> bs!1906012 m!7928438))

(declare-fun m!7928440 () Bool)

(assert (=> bs!1906012 m!7928440))

(assert (=> bs!1906012 m!7928376))

(assert (=> b!7249845 d!2253364))

(declare-fun d!2253370 () Bool)

(declare-fun c!1347182 () Bool)

(declare-fun isEmpty!40528 (List!70498) Bool)

(assert (=> d!2253370 (= c!1347182 (isEmpty!40528 s1!1971))))

(declare-fun e!4347071 () Bool)

(assert (=> d!2253370 (= (matchZipper!3549 lt!2584420 s1!1971) e!4347071)))

(declare-fun b!7249944 () Bool)

(declare-fun nullableZipper!2909 ((InoxSet Context!15158)) Bool)

(assert (=> b!7249944 (= e!4347071 (nullableZipper!2909 lt!2584420))))

(declare-fun b!7249945 () Bool)

(declare-fun head!14899 (List!70498) C!37552)

(declare-fun tail!14311 (List!70498) List!70498)

(assert (=> b!7249945 (= e!4347071 (matchZipper!3549 (derivationStepZipper!3417 lt!2584420 (head!14899 s1!1971)) (tail!14311 s1!1971)))))

(assert (= (and d!2253370 c!1347182) b!7249944))

(assert (= (and d!2253370 (not c!1347182)) b!7249945))

(declare-fun m!7928442 () Bool)

(assert (=> d!2253370 m!7928442))

(declare-fun m!7928444 () Bool)

(assert (=> b!7249944 m!7928444))

(declare-fun m!7928446 () Bool)

(assert (=> b!7249945 m!7928446))

(assert (=> b!7249945 m!7928446))

(declare-fun m!7928448 () Bool)

(assert (=> b!7249945 m!7928448))

(declare-fun m!7928450 () Bool)

(assert (=> b!7249945 m!7928450))

(assert (=> b!7249945 m!7928448))

(assert (=> b!7249945 m!7928450))

(declare-fun m!7928452 () Bool)

(assert (=> b!7249945 m!7928452))

(assert (=> start!705484 d!2253370))

(declare-fun bs!1906013 () Bool)

(declare-fun d!2253372 () Bool)

(assert (= bs!1906013 (and d!2253372 b!7249840)))

(declare-fun lambda!443971 () Int)

(assert (=> bs!1906013 (= lambda!443971 lambda!443962)))

(declare-fun bs!1906014 () Bool)

(assert (= bs!1906014 (and d!2253372 d!2253346)))

(assert (=> bs!1906014 (= lambda!443971 lambda!443967)))

(assert (=> d!2253372 (= (inv!89607 ct1!232) (forall!17484 (exprs!8079 ct1!232) lambda!443971))))

(declare-fun bs!1906015 () Bool)

(assert (= bs!1906015 d!2253372))

(declare-fun m!7928454 () Bool)

(assert (=> bs!1906015 m!7928454))

(assert (=> start!705484 d!2253372))

(declare-fun bs!1906016 () Bool)

(declare-fun d!2253374 () Bool)

(assert (= bs!1906016 (and d!2253374 b!7249840)))

(declare-fun lambda!443972 () Int)

(assert (=> bs!1906016 (= lambda!443972 lambda!443962)))

(declare-fun bs!1906017 () Bool)

(assert (= bs!1906017 (and d!2253374 d!2253346)))

(assert (=> bs!1906017 (= lambda!443972 lambda!443967)))

(declare-fun bs!1906018 () Bool)

(assert (= bs!1906018 (and d!2253374 d!2253372)))

(assert (=> bs!1906018 (= lambda!443972 lambda!443971)))

(assert (=> d!2253374 (= (inv!89607 ct2!328) (forall!17484 (exprs!8079 ct2!328) lambda!443972))))

(declare-fun bs!1906019 () Bool)

(assert (= bs!1906019 d!2253374))

(declare-fun m!7928456 () Bool)

(assert (=> bs!1906019 m!7928456))

(assert (=> start!705484 d!2253374))

(declare-fun d!2253376 () Bool)

(declare-fun c!1347187 () Bool)

(assert (=> d!2253376 (= c!1347187 (isEmpty!40528 (t!384552 s1!1971)))))

(declare-fun e!4347076 () Bool)

(assert (=> d!2253376 (= (matchZipper!3549 lt!2584424 (t!384552 s1!1971)) e!4347076)))

(declare-fun b!7249954 () Bool)

(assert (=> b!7249954 (= e!4347076 (nullableZipper!2909 lt!2584424))))

(declare-fun b!7249955 () Bool)

(assert (=> b!7249955 (= e!4347076 (matchZipper!3549 (derivationStepZipper!3417 lt!2584424 (head!14899 (t!384552 s1!1971))) (tail!14311 (t!384552 s1!1971))))))

(assert (= (and d!2253376 c!1347187) b!7249954))

(assert (= (and d!2253376 (not c!1347187)) b!7249955))

(declare-fun m!7928458 () Bool)

(assert (=> d!2253376 m!7928458))

(declare-fun m!7928460 () Bool)

(assert (=> b!7249954 m!7928460))

(declare-fun m!7928462 () Bool)

(assert (=> b!7249955 m!7928462))

(assert (=> b!7249955 m!7928462))

(declare-fun m!7928464 () Bool)

(assert (=> b!7249955 m!7928464))

(declare-fun m!7928466 () Bool)

(assert (=> b!7249955 m!7928466))

(assert (=> b!7249955 m!7928464))

(assert (=> b!7249955 m!7928466))

(declare-fun m!7928468 () Bool)

(assert (=> b!7249955 m!7928468))

(assert (=> b!7249841 d!2253376))

(declare-fun bs!1906020 () Bool)

(declare-fun d!2253378 () Bool)

(assert (= bs!1906020 (and d!2253378 b!7249845)))

(declare-fun lambda!443975 () Int)

(assert (=> bs!1906020 (= lambda!443975 lambda!443964)))

(assert (=> d!2253378 true))

(assert (=> d!2253378 (= (derivationStepZipper!3417 lt!2584420 (h!76822 s1!1971)) (flatMap!2804 lt!2584420 lambda!443975))))

(declare-fun bs!1906021 () Bool)

(assert (= bs!1906021 d!2253378))

(declare-fun m!7928470 () Bool)

(assert (=> bs!1906021 m!7928470))

(assert (=> b!7249841 d!2253378))

(declare-fun d!2253380 () Bool)

(declare-fun lt!2584448 () Bool)

(assert (=> d!2253380 (= lt!2584448 (exists!4357 (toList!11468 lt!2584424) lambda!443963))))

(declare-fun choose!55993 ((InoxSet Context!15158) Int) Bool)

(assert (=> d!2253380 (= lt!2584448 (choose!55993 lt!2584424 lambda!443963))))

(assert (=> d!2253380 (= (exists!4356 lt!2584424 lambda!443963) lt!2584448)))

(declare-fun bs!1906022 () Bool)

(assert (= bs!1906022 d!2253380))

(assert (=> bs!1906022 m!7928372))

(assert (=> bs!1906022 m!7928372))

(declare-fun m!7928472 () Bool)

(assert (=> bs!1906022 m!7928472))

(declare-fun m!7928474 () Bool)

(assert (=> bs!1906022 m!7928474))

(assert (=> b!7249842 d!2253380))

(declare-fun bs!1906023 () Bool)

(declare-fun d!2253382 () Bool)

(assert (= bs!1906023 (and d!2253382 b!7249842)))

(declare-fun lambda!443978 () Int)

(assert (=> bs!1906023 (not (= lambda!443978 lambda!443963))))

(assert (=> d!2253382 true))

(declare-fun order!28971 () Int)

(declare-fun dynLambda!28728 (Int Int) Int)

(assert (=> d!2253382 (< (dynLambda!28728 order!28971 lambda!443963) (dynLambda!28728 order!28971 lambda!443978))))

(declare-fun forall!17486 (List!70499 Int) Bool)

(assert (=> d!2253382 (= (exists!4357 lt!2584418 lambda!443963) (not (forall!17486 lt!2584418 lambda!443978)))))

(declare-fun bs!1906024 () Bool)

(assert (= bs!1906024 d!2253382))

(declare-fun m!7928476 () Bool)

(assert (=> bs!1906024 m!7928476))

(assert (=> b!7249842 d!2253382))

(declare-fun bs!1906026 () Bool)

(declare-fun d!2253384 () Bool)

(assert (= bs!1906026 (and d!2253384 b!7249842)))

(declare-fun lambda!443981 () Int)

(assert (=> bs!1906026 (= lambda!443981 lambda!443963)))

(declare-fun bs!1906027 () Bool)

(assert (= bs!1906027 (and d!2253384 d!2253382)))

(assert (=> bs!1906027 (not (= lambda!443981 lambda!443978))))

(assert (=> d!2253384 true))

(assert (=> d!2253384 (exists!4357 lt!2584418 lambda!443981)))

(declare-fun lt!2584454 () Unit!163863)

(declare-fun choose!55994 (List!70499 List!70498) Unit!163863)

(assert (=> d!2253384 (= lt!2584454 (choose!55994 lt!2584418 (t!384552 s1!1971)))))

(declare-fun content!14598 (List!70499) (InoxSet Context!15158))

(assert (=> d!2253384 (matchZipper!3549 (content!14598 lt!2584418) (t!384552 s1!1971))))

(assert (=> d!2253384 (= (lemmaZipperMatchesExistsMatchingContext!742 lt!2584418 (t!384552 s1!1971)) lt!2584454)))

(declare-fun bs!1906028 () Bool)

(assert (= bs!1906028 d!2253384))

(declare-fun m!7928492 () Bool)

(assert (=> bs!1906028 m!7928492))

(declare-fun m!7928494 () Bool)

(assert (=> bs!1906028 m!7928494))

(declare-fun m!7928496 () Bool)

(assert (=> bs!1906028 m!7928496))

(assert (=> bs!1906028 m!7928496))

(declare-fun m!7928498 () Bool)

(assert (=> bs!1906028 m!7928498))

(assert (=> b!7249842 d!2253384))

(declare-fun d!2253390 () Bool)

(declare-fun e!4347085 () Bool)

(assert (=> d!2253390 e!4347085))

(declare-fun res!2940465 () Bool)

(assert (=> d!2253390 (=> (not res!2940465) (not e!4347085))))

(declare-fun lt!2584457 () List!70499)

(declare-fun noDuplicate!2986 (List!70499) Bool)

(assert (=> d!2253390 (= res!2940465 (noDuplicate!2986 lt!2584457))))

(declare-fun choose!55995 ((InoxSet Context!15158)) List!70499)

(assert (=> d!2253390 (= lt!2584457 (choose!55995 lt!2584424))))

(assert (=> d!2253390 (= (toList!11468 lt!2584424) lt!2584457)))

(declare-fun b!7249973 () Bool)

(assert (=> b!7249973 (= e!4347085 (= (content!14598 lt!2584457) lt!2584424))))

(assert (= (and d!2253390 res!2940465) b!7249973))

(declare-fun m!7928500 () Bool)

(assert (=> d!2253390 m!7928500))

(declare-fun m!7928502 () Bool)

(assert (=> d!2253390 m!7928502))

(declare-fun m!7928504 () Bool)

(assert (=> b!7249973 m!7928504))

(assert (=> b!7249842 d!2253390))

(declare-fun d!2253392 () Bool)

(assert (=> d!2253392 (= (tail!14310 (exprs!8079 ct1!232)) (t!384551 (exprs!8079 ct1!232)))))

(assert (=> b!7249837 d!2253392))

(assert (=> b!7249837 d!2253344))

(declare-fun d!2253394 () Bool)

(assert (=> d!2253394 (= (isEmpty!40527 lt!2584432) ((_ is Nil!70373) lt!2584432))))

(assert (=> b!7249837 d!2253394))

(declare-fun bm!660272 () Bool)

(declare-fun call!660278 () (InoxSet Context!15158))

(declare-fun call!660279 () (InoxSet Context!15158))

(assert (=> bm!660272 (= call!660278 call!660279)))

(declare-fun bm!660273 () Bool)

(declare-fun call!660277 () List!70497)

(declare-fun call!660280 () List!70497)

(assert (=> bm!660273 (= call!660277 call!660280)))

(declare-fun b!7249974 () Bool)

(declare-fun e!4347089 () (InoxSet Context!15158))

(assert (=> b!7249974 (= e!4347089 ((as const (Array Context!15158 Bool)) false))))

(declare-fun b!7249975 () Bool)

(declare-fun e!4347086 () (InoxSet Context!15158))

(declare-fun e!4347087 () (InoxSet Context!15158))

(assert (=> b!7249975 (= e!4347086 e!4347087)))

(declare-fun c!1347197 () Bool)

(assert (=> b!7249975 (= c!1347197 ((_ is Concat!27484) (h!76821 (exprs!8079 ct1!232))))))

(declare-fun c!1347199 () Bool)

(declare-fun bm!660275 () Bool)

(declare-fun call!660281 () (InoxSet Context!15158))

(assert (=> bm!660275 (= call!660281 (derivationStepZipperDown!2633 (ite c!1347199 (regTwo!37791 (h!76821 (exprs!8079 ct1!232))) (regOne!37790 (h!76821 (exprs!8079 ct1!232)))) (ite c!1347199 (Context!15159 (tail!14310 (exprs!8079 ct1!232))) (Context!15159 call!660280)) (h!76822 s1!1971)))))

(declare-fun b!7249976 () Bool)

(declare-fun e!4347088 () (InoxSet Context!15158))

(assert (=> b!7249976 (= e!4347088 ((_ map or) call!660279 call!660281))))

(declare-fun c!1347201 () Bool)

(declare-fun bm!660276 () Bool)

(assert (=> bm!660276 (= call!660280 ($colon$colon!2913 (exprs!8079 (Context!15159 (tail!14310 (exprs!8079 ct1!232)))) (ite (or c!1347201 c!1347197) (regTwo!37790 (h!76821 (exprs!8079 ct1!232))) (h!76821 (exprs!8079 ct1!232)))))))

(declare-fun b!7249977 () Bool)

(assert (=> b!7249977 (= e!4347086 ((_ map or) call!660281 call!660278))))

(declare-fun b!7249978 () Bool)

(declare-fun c!1347198 () Bool)

(assert (=> b!7249978 (= c!1347198 ((_ is Star!18639) (h!76821 (exprs!8079 ct1!232))))))

(assert (=> b!7249978 (= e!4347087 e!4347089)))

(declare-fun b!7249979 () Bool)

(declare-fun e!4347090 () (InoxSet Context!15158))

(assert (=> b!7249979 (= e!4347090 e!4347088)))

(assert (=> b!7249979 (= c!1347199 ((_ is Union!18639) (h!76821 (exprs!8079 ct1!232))))))

(declare-fun bm!660277 () Bool)

(declare-fun call!660282 () (InoxSet Context!15158))

(assert (=> bm!660277 (= call!660282 call!660278)))

(declare-fun b!7249980 () Bool)

(assert (=> b!7249980 (= e!4347087 call!660282)))

(declare-fun b!7249981 () Bool)

(declare-fun e!4347091 () Bool)

(assert (=> b!7249981 (= c!1347201 e!4347091)))

(declare-fun res!2940466 () Bool)

(assert (=> b!7249981 (=> (not res!2940466) (not e!4347091))))

(assert (=> b!7249981 (= res!2940466 ((_ is Concat!27484) (h!76821 (exprs!8079 ct1!232))))))

(assert (=> b!7249981 (= e!4347088 e!4347086)))

(declare-fun b!7249982 () Bool)

(assert (=> b!7249982 (= e!4347091 (nullable!7900 (regOne!37790 (h!76821 (exprs!8079 ct1!232)))))))

(declare-fun d!2253396 () Bool)

(declare-fun c!1347200 () Bool)

(assert (=> d!2253396 (= c!1347200 (and ((_ is ElementMatch!18639) (h!76821 (exprs!8079 ct1!232))) (= (c!1347143 (h!76821 (exprs!8079 ct1!232))) (h!76822 s1!1971))))))

(assert (=> d!2253396 (= (derivationStepZipperDown!2633 (h!76821 (exprs!8079 ct1!232)) (Context!15159 (tail!14310 (exprs!8079 ct1!232))) (h!76822 s1!1971)) e!4347090)))

(declare-fun bm!660274 () Bool)

(assert (=> bm!660274 (= call!660279 (derivationStepZipperDown!2633 (ite c!1347199 (regOne!37791 (h!76821 (exprs!8079 ct1!232))) (ite c!1347201 (regTwo!37790 (h!76821 (exprs!8079 ct1!232))) (ite c!1347197 (regOne!37790 (h!76821 (exprs!8079 ct1!232))) (reg!18968 (h!76821 (exprs!8079 ct1!232)))))) (ite (or c!1347199 c!1347201) (Context!15159 (tail!14310 (exprs!8079 ct1!232))) (Context!15159 call!660277)) (h!76822 s1!1971)))))

(declare-fun b!7249983 () Bool)

(assert (=> b!7249983 (= e!4347090 (store ((as const (Array Context!15158 Bool)) false) (Context!15159 (tail!14310 (exprs!8079 ct1!232))) true))))

(declare-fun b!7249984 () Bool)

(assert (=> b!7249984 (= e!4347089 call!660282)))

(assert (= (and d!2253396 c!1347200) b!7249983))

(assert (= (and d!2253396 (not c!1347200)) b!7249979))

(assert (= (and b!7249979 c!1347199) b!7249976))

(assert (= (and b!7249979 (not c!1347199)) b!7249981))

(assert (= (and b!7249981 res!2940466) b!7249982))

(assert (= (and b!7249981 c!1347201) b!7249977))

(assert (= (and b!7249981 (not c!1347201)) b!7249975))

(assert (= (and b!7249975 c!1347197) b!7249980))

(assert (= (and b!7249975 (not c!1347197)) b!7249978))

(assert (= (and b!7249978 c!1347198) b!7249984))

(assert (= (and b!7249978 (not c!1347198)) b!7249974))

(assert (= (or b!7249980 b!7249984) bm!660273))

(assert (= (or b!7249980 b!7249984) bm!660277))

(assert (= (or b!7249977 bm!660273) bm!660276))

(assert (= (or b!7249977 bm!660277) bm!660272))

(assert (= (or b!7249976 b!7249977) bm!660275))

(assert (= (or b!7249976 bm!660272) bm!660274))

(declare-fun m!7928506 () Bool)

(assert (=> bm!660276 m!7928506))

(assert (=> b!7249982 m!7928406))

(declare-fun m!7928508 () Bool)

(assert (=> bm!660275 m!7928508))

(declare-fun m!7928510 () Bool)

(assert (=> b!7249983 m!7928510))

(declare-fun m!7928512 () Bool)

(assert (=> bm!660274 m!7928512))

(assert (=> b!7249837 d!2253396))

(declare-fun b!7249985 () Bool)

(declare-fun e!4347094 () (InoxSet Context!15158))

(declare-fun call!660283 () (InoxSet Context!15158))

(assert (=> b!7249985 (= e!4347094 call!660283)))

(declare-fun b!7249986 () Bool)

(declare-fun e!4347092 () (InoxSet Context!15158))

(assert (=> b!7249986 (= e!4347092 e!4347094)))

(declare-fun c!1347202 () Bool)

(assert (=> b!7249986 (= c!1347202 ((_ is Cons!70373) (exprs!8079 lt!2584425)))))

(declare-fun d!2253398 () Bool)

(declare-fun c!1347203 () Bool)

(declare-fun e!4347093 () Bool)

(assert (=> d!2253398 (= c!1347203 e!4347093)))

(declare-fun res!2940467 () Bool)

(assert (=> d!2253398 (=> (not res!2940467) (not e!4347093))))

(assert (=> d!2253398 (= res!2940467 ((_ is Cons!70373) (exprs!8079 lt!2584425)))))

(assert (=> d!2253398 (= (derivationStepZipperUp!2463 lt!2584425 (h!76822 s1!1971)) e!4347092)))

(declare-fun b!7249987 () Bool)

(assert (=> b!7249987 (= e!4347094 ((as const (Array Context!15158 Bool)) false))))

(declare-fun b!7249988 () Bool)

(assert (=> b!7249988 (= e!4347093 (nullable!7900 (h!76821 (exprs!8079 lt!2584425))))))

(declare-fun b!7249989 () Bool)

(assert (=> b!7249989 (= e!4347092 ((_ map or) call!660283 (derivationStepZipperUp!2463 (Context!15159 (t!384551 (exprs!8079 lt!2584425))) (h!76822 s1!1971))))))

(declare-fun bm!660278 () Bool)

(assert (=> bm!660278 (= call!660283 (derivationStepZipperDown!2633 (h!76821 (exprs!8079 lt!2584425)) (Context!15159 (t!384551 (exprs!8079 lt!2584425))) (h!76822 s1!1971)))))

(assert (= (and d!2253398 res!2940467) b!7249988))

(assert (= (and d!2253398 c!1347203) b!7249989))

(assert (= (and d!2253398 (not c!1347203)) b!7249986))

(assert (= (and b!7249986 c!1347202) b!7249985))

(assert (= (and b!7249986 (not c!1347202)) b!7249987))

(assert (= (or b!7249989 b!7249985) bm!660278))

(declare-fun m!7928514 () Bool)

(assert (=> b!7249988 m!7928514))

(declare-fun m!7928516 () Bool)

(assert (=> b!7249989 m!7928516))

(declare-fun m!7928518 () Bool)

(assert (=> bm!660278 m!7928518))

(assert (=> b!7249837 d!2253398))

(declare-fun d!2253400 () Bool)

(assert (=> d!2253400 (forall!17484 (++!16540 (exprs!8079 lt!2584431) (exprs!8079 ct2!328)) lambda!443962)))

(declare-fun lt!2584462 () Unit!163863)

(assert (=> d!2253400 (= lt!2584462 (choose!55988 (exprs!8079 lt!2584431) (exprs!8079 ct2!328) lambda!443962))))

(assert (=> d!2253400 (forall!17484 (exprs!8079 lt!2584431) lambda!443962)))

(assert (=> d!2253400 (= (lemmaConcatPreservesForall!1446 (exprs!8079 lt!2584431) (exprs!8079 ct2!328) lambda!443962) lt!2584462)))

(declare-fun bs!1906029 () Bool)

(assert (= bs!1906029 d!2253400))

(assert (=> bs!1906029 m!7928360))

(assert (=> bs!1906029 m!7928360))

(declare-fun m!7928520 () Bool)

(assert (=> bs!1906029 m!7928520))

(declare-fun m!7928522 () Bool)

(assert (=> bs!1906029 m!7928522))

(declare-fun m!7928524 () Bool)

(assert (=> bs!1906029 m!7928524))

(assert (=> b!7249844 d!2253400))

(declare-fun d!2253402 () Bool)

(declare-fun c!1347204 () Bool)

(assert (=> d!2253402 (= c!1347204 (isEmpty!40528 (++!16541 (t!384552 s1!1971) s2!1849)))))

(declare-fun e!4347095 () Bool)

(assert (=> d!2253402 (= (matchZipper!3549 (store ((as const (Array Context!15158 Bool)) false) (Context!15159 (++!16540 (exprs!8079 lt!2584431) (exprs!8079 ct2!328))) true) (++!16541 (t!384552 s1!1971) s2!1849)) e!4347095)))

(declare-fun b!7249990 () Bool)

(assert (=> b!7249990 (= e!4347095 (nullableZipper!2909 (store ((as const (Array Context!15158 Bool)) false) (Context!15159 (++!16540 (exprs!8079 lt!2584431) (exprs!8079 ct2!328))) true)))))

(declare-fun b!7249991 () Bool)

(assert (=> b!7249991 (= e!4347095 (matchZipper!3549 (derivationStepZipper!3417 (store ((as const (Array Context!15158 Bool)) false) (Context!15159 (++!16540 (exprs!8079 lt!2584431) (exprs!8079 ct2!328))) true) (head!14899 (++!16541 (t!384552 s1!1971) s2!1849))) (tail!14311 (++!16541 (t!384552 s1!1971) s2!1849))))))

(assert (= (and d!2253402 c!1347204) b!7249990))

(assert (= (and d!2253402 (not c!1347204)) b!7249991))

(assert (=> d!2253402 m!7928354))

(declare-fun m!7928526 () Bool)

(assert (=> d!2253402 m!7928526))

(assert (=> b!7249990 m!7928350))

(declare-fun m!7928528 () Bool)

(assert (=> b!7249990 m!7928528))

(assert (=> b!7249991 m!7928354))

(declare-fun m!7928530 () Bool)

(assert (=> b!7249991 m!7928530))

(assert (=> b!7249991 m!7928350))

(assert (=> b!7249991 m!7928530))

(declare-fun m!7928532 () Bool)

(assert (=> b!7249991 m!7928532))

(assert (=> b!7249991 m!7928354))

(declare-fun m!7928534 () Bool)

(assert (=> b!7249991 m!7928534))

(assert (=> b!7249991 m!7928532))

(assert (=> b!7249991 m!7928534))

(declare-fun m!7928538 () Bool)

(assert (=> b!7249991 m!7928538))

(assert (=> b!7249844 d!2253402))

(declare-fun d!2253404 () Bool)

(assert (=> d!2253404 (= (isEmpty!40527 (exprs!8079 ct1!232)) ((_ is Nil!70373) (exprs!8079 ct1!232)))))

(assert (=> b!7249844 d!2253404))

(declare-fun bs!1906033 () Bool)

(declare-fun d!2253406 () Bool)

(assert (= bs!1906033 (and d!2253406 b!7249840)))

(declare-fun lambda!443987 () Int)

(assert (=> bs!1906033 (= lambda!443987 lambda!443962)))

(declare-fun bs!1906034 () Bool)

(assert (= bs!1906034 (and d!2253406 d!2253346)))

(assert (=> bs!1906034 (= lambda!443987 lambda!443967)))

(declare-fun bs!1906035 () Bool)

(assert (= bs!1906035 (and d!2253406 d!2253372)))

(assert (=> bs!1906035 (= lambda!443987 lambda!443971)))

(declare-fun bs!1906036 () Bool)

(assert (= bs!1906036 (and d!2253406 d!2253374)))

(assert (=> bs!1906036 (= lambda!443987 lambda!443972)))

(assert (=> d!2253406 (matchZipper!3549 (store ((as const (Array Context!15158 Bool)) false) (Context!15159 (++!16540 (exprs!8079 lt!2584431) (exprs!8079 ct2!328))) true) (++!16541 (t!384552 s1!1971) s2!1849))))

(declare-fun lt!2584475 () Unit!163863)

(assert (=> d!2253406 (= lt!2584475 (lemmaConcatPreservesForall!1446 (exprs!8079 lt!2584431) (exprs!8079 ct2!328) lambda!443987))))

(declare-fun lt!2584474 () Unit!163863)

(declare-fun choose!55998 (Context!15158 Context!15158 List!70498 List!70498) Unit!163863)

(assert (=> d!2253406 (= lt!2584474 (choose!55998 lt!2584431 ct2!328 (t!384552 s1!1971) s2!1849))))

(assert (=> d!2253406 (matchZipper!3549 (store ((as const (Array Context!15158 Bool)) false) lt!2584431 true) (t!384552 s1!1971))))

(assert (=> d!2253406 (= (lemmaConcatenateContextMatchesConcatOfStrings!384 lt!2584431 ct2!328 (t!384552 s1!1971) s2!1849) lt!2584474)))

(declare-fun bs!1906037 () Bool)

(assert (= bs!1906037 d!2253406))

(assert (=> bs!1906037 m!7928360))

(declare-fun m!7928552 () Bool)

(assert (=> bs!1906037 m!7928552))

(assert (=> bs!1906037 m!7928350))

(assert (=> bs!1906037 m!7928354))

(assert (=> bs!1906037 m!7928358))

(declare-fun m!7928554 () Bool)

(assert (=> bs!1906037 m!7928554))

(assert (=> bs!1906037 m!7928554))

(declare-fun m!7928556 () Bool)

(assert (=> bs!1906037 m!7928556))

(declare-fun m!7928558 () Bool)

(assert (=> bs!1906037 m!7928558))

(assert (=> bs!1906037 m!7928350))

(assert (=> bs!1906037 m!7928354))

(assert (=> b!7249844 d!2253406))

(declare-fun d!2253414 () Bool)

(declare-fun e!4347112 () Bool)

(assert (=> d!2253414 e!4347112))

(declare-fun res!2940482 () Bool)

(assert (=> d!2253414 (=> (not res!2940482) (not e!4347112))))

(declare-fun lt!2584479 () List!70498)

(declare-fun content!14600 (List!70498) (InoxSet C!37552))

(assert (=> d!2253414 (= res!2940482 (= (content!14600 lt!2584479) ((_ map or) (content!14600 (t!384552 s1!1971)) (content!14600 s2!1849))))))

(declare-fun e!4347113 () List!70498)

(assert (=> d!2253414 (= lt!2584479 e!4347113)))

(declare-fun c!1347213 () Bool)

(assert (=> d!2253414 (= c!1347213 ((_ is Nil!70374) (t!384552 s1!1971)))))

(assert (=> d!2253414 (= (++!16541 (t!384552 s1!1971) s2!1849) lt!2584479)))

(declare-fun b!7250021 () Bool)

(assert (=> b!7250021 (= e!4347113 s2!1849)))

(declare-fun b!7250023 () Bool)

(declare-fun res!2940481 () Bool)

(assert (=> b!7250023 (=> (not res!2940481) (not e!4347112))))

(declare-fun size!41709 (List!70498) Int)

(assert (=> b!7250023 (= res!2940481 (= (size!41709 lt!2584479) (+ (size!41709 (t!384552 s1!1971)) (size!41709 s2!1849))))))

(declare-fun b!7250022 () Bool)

(assert (=> b!7250022 (= e!4347113 (Cons!70374 (h!76822 (t!384552 s1!1971)) (++!16541 (t!384552 (t!384552 s1!1971)) s2!1849)))))

(declare-fun b!7250024 () Bool)

(assert (=> b!7250024 (= e!4347112 (or (not (= s2!1849 Nil!70374)) (= lt!2584479 (t!384552 s1!1971))))))

(assert (= (and d!2253414 c!1347213) b!7250021))

(assert (= (and d!2253414 (not c!1347213)) b!7250022))

(assert (= (and d!2253414 res!2940482) b!7250023))

(assert (= (and b!7250023 res!2940481) b!7250024))

(declare-fun m!7928586 () Bool)

(assert (=> d!2253414 m!7928586))

(declare-fun m!7928588 () Bool)

(assert (=> d!2253414 m!7928588))

(declare-fun m!7928590 () Bool)

(assert (=> d!2253414 m!7928590))

(declare-fun m!7928592 () Bool)

(assert (=> b!7250023 m!7928592))

(declare-fun m!7928594 () Bool)

(assert (=> b!7250023 m!7928594))

(declare-fun m!7928596 () Bool)

(assert (=> b!7250023 m!7928596))

(declare-fun m!7928598 () Bool)

(assert (=> b!7250022 m!7928598))

(assert (=> b!7249844 d!2253414))

(declare-fun b!7250028 () Bool)

(declare-fun e!4347114 () Bool)

(declare-fun lt!2584480 () List!70497)

(assert (=> b!7250028 (= e!4347114 (or (not (= (exprs!8079 ct2!328) Nil!70373)) (= lt!2584480 (exprs!8079 lt!2584431))))))

(declare-fun b!7250025 () Bool)

(declare-fun e!4347115 () List!70497)

(assert (=> b!7250025 (= e!4347115 (exprs!8079 ct2!328))))

(declare-fun b!7250026 () Bool)

(assert (=> b!7250026 (= e!4347115 (Cons!70373 (h!76821 (exprs!8079 lt!2584431)) (++!16540 (t!384551 (exprs!8079 lt!2584431)) (exprs!8079 ct2!328))))))

(declare-fun b!7250027 () Bool)

(declare-fun res!2940483 () Bool)

(assert (=> b!7250027 (=> (not res!2940483) (not e!4347114))))

(assert (=> b!7250027 (= res!2940483 (= (size!41707 lt!2584480) (+ (size!41707 (exprs!8079 lt!2584431)) (size!41707 (exprs!8079 ct2!328)))))))

(declare-fun d!2253420 () Bool)

(assert (=> d!2253420 e!4347114))

(declare-fun res!2940484 () Bool)

(assert (=> d!2253420 (=> (not res!2940484) (not e!4347114))))

(assert (=> d!2253420 (= res!2940484 (= (content!14597 lt!2584480) ((_ map or) (content!14597 (exprs!8079 lt!2584431)) (content!14597 (exprs!8079 ct2!328)))))))

(assert (=> d!2253420 (= lt!2584480 e!4347115)))

(declare-fun c!1347214 () Bool)

(assert (=> d!2253420 (= c!1347214 ((_ is Nil!70373) (exprs!8079 lt!2584431)))))

(assert (=> d!2253420 (= (++!16540 (exprs!8079 lt!2584431) (exprs!8079 ct2!328)) lt!2584480)))

(assert (= (and d!2253420 c!1347214) b!7250025))

(assert (= (and d!2253420 (not c!1347214)) b!7250026))

(assert (= (and d!2253420 res!2940484) b!7250027))

(assert (= (and b!7250027 res!2940483) b!7250028))

(declare-fun m!7928600 () Bool)

(assert (=> b!7250026 m!7928600))

(declare-fun m!7928602 () Bool)

(assert (=> b!7250027 m!7928602))

(declare-fun m!7928604 () Bool)

(assert (=> b!7250027 m!7928604))

(assert (=> b!7250027 m!7928388))

(declare-fun m!7928606 () Bool)

(assert (=> d!2253420 m!7928606))

(declare-fun m!7928608 () Bool)

(assert (=> d!2253420 m!7928608))

(assert (=> d!2253420 m!7928394))

(assert (=> b!7249844 d!2253420))

(assert (=> b!7249844 d!2253352))

(declare-fun d!2253422 () Bool)

(declare-fun e!4347122 () Bool)

(assert (=> d!2253422 e!4347122))

(declare-fun res!2940491 () Bool)

(assert (=> d!2253422 (=> (not res!2940491) (not e!4347122))))

(declare-fun lt!2584485 () Context!15158)

(declare-fun dynLambda!28731 (Int Context!15158) Bool)

(assert (=> d!2253422 (= res!2940491 (dynLambda!28731 lambda!443963 lt!2584485))))

(declare-fun getWitness!2195 (List!70499 Int) Context!15158)

(assert (=> d!2253422 (= lt!2584485 (getWitness!2195 (toList!11468 lt!2584424) lambda!443963))))

(assert (=> d!2253422 (exists!4356 lt!2584424 lambda!443963)))

(assert (=> d!2253422 (= (getWitness!2193 lt!2584424 lambda!443963) lt!2584485)))

(declare-fun b!7250039 () Bool)

(assert (=> b!7250039 (= e!4347122 (select lt!2584424 lt!2584485))))

(assert (= (and d!2253422 res!2940491) b!7250039))

(declare-fun b_lambda!278341 () Bool)

(assert (=> (not b_lambda!278341) (not d!2253422)))

(declare-fun m!7928610 () Bool)

(assert (=> d!2253422 m!7928610))

(assert (=> d!2253422 m!7928372))

(assert (=> d!2253422 m!7928372))

(declare-fun m!7928612 () Bool)

(assert (=> d!2253422 m!7928612))

(assert (=> d!2253422 m!7928366))

(declare-fun m!7928614 () Bool)

(assert (=> b!7250039 m!7928614))

(assert (=> b!7249844 d!2253422))

(declare-fun d!2253424 () Bool)

(declare-fun c!1347218 () Bool)

(assert (=> d!2253424 (= c!1347218 (isEmpty!40528 s2!1849))))

(declare-fun e!4347125 () Bool)

(assert (=> d!2253424 (= (matchZipper!3549 (store ((as const (Array Context!15158 Bool)) false) ct2!328 true) s2!1849) e!4347125)))

(declare-fun b!7250044 () Bool)

(assert (=> b!7250044 (= e!4347125 (nullableZipper!2909 (store ((as const (Array Context!15158 Bool)) false) ct2!328 true)))))

(declare-fun b!7250045 () Bool)

(assert (=> b!7250045 (= e!4347125 (matchZipper!3549 (derivationStepZipper!3417 (store ((as const (Array Context!15158 Bool)) false) ct2!328 true) (head!14899 s2!1849)) (tail!14311 s2!1849)))))

(assert (= (and d!2253424 c!1347218) b!7250044))

(assert (= (and d!2253424 (not c!1347218)) b!7250045))

(declare-fun m!7928620 () Bool)

(assert (=> d!2253424 m!7928620))

(assert (=> b!7250044 m!7928330))

(declare-fun m!7928626 () Bool)

(assert (=> b!7250044 m!7928626))

(declare-fun m!7928630 () Bool)

(assert (=> b!7250045 m!7928630))

(assert (=> b!7250045 m!7928330))

(assert (=> b!7250045 m!7928630))

(declare-fun m!7928636 () Bool)

(assert (=> b!7250045 m!7928636))

(declare-fun m!7928638 () Bool)

(assert (=> b!7250045 m!7928638))

(assert (=> b!7250045 m!7928636))

(assert (=> b!7250045 m!7928638))

(declare-fun m!7928640 () Bool)

(assert (=> b!7250045 m!7928640))

(assert (=> b!7249839 d!2253424))

(declare-fun b!7250055 () Bool)

(declare-fun e!4347131 () Bool)

(declare-fun tp!2037301 () Bool)

(assert (=> b!7250055 (= e!4347131 (and tp_is_empty!46743 tp!2037301))))

(assert (=> b!7249846 (= tp!2037296 e!4347131)))

(assert (= (and b!7249846 ((_ is Cons!70374) (t!384552 s1!1971))) b!7250055))

(declare-fun b!7250060 () Bool)

(declare-fun e!4347134 () Bool)

(declare-fun tp!2037306 () Bool)

(declare-fun tp!2037307 () Bool)

(assert (=> b!7250060 (= e!4347134 (and tp!2037306 tp!2037307))))

(assert (=> b!7249836 (= tp!2037298 e!4347134)))

(assert (= (and b!7249836 ((_ is Cons!70373) (exprs!8079 ct2!328))) b!7250060))

(declare-fun b!7250072 () Bool)

(declare-fun e!4347141 () Bool)

(declare-fun tp!2037308 () Bool)

(assert (=> b!7250072 (= e!4347141 (and tp_is_empty!46743 tp!2037308))))

(assert (=> b!7249838 (= tp!2037295 e!4347141)))

(assert (= (and b!7249838 ((_ is Cons!70374) (t!384552 s2!1849))) b!7250072))

(declare-fun b!7250073 () Bool)

(declare-fun e!4347142 () Bool)

(declare-fun tp!2037309 () Bool)

(declare-fun tp!2037310 () Bool)

(assert (=> b!7250073 (= e!4347142 (and tp!2037309 tp!2037310))))

(assert (=> b!7249843 (= tp!2037297 e!4347142)))

(assert (= (and b!7249843 ((_ is Cons!70373) (exprs!8079 ct1!232))) b!7250073))

(declare-fun b_lambda!278343 () Bool)

(assert (= b_lambda!278335 (or b!7249845 b_lambda!278343)))

(declare-fun bs!1906039 () Bool)

(declare-fun d!2253436 () Bool)

(assert (= bs!1906039 (and d!2253436 b!7249845)))

(assert (=> bs!1906039 (= (dynLambda!28727 lambda!443964 ct1!232) (derivationStepZipperUp!2463 ct1!232 (h!76822 s1!1971)))))

(assert (=> bs!1906039 m!7928340))

(assert (=> d!2253364 d!2253436))

(declare-fun b_lambda!278345 () Bool)

(assert (= b_lambda!278341 (or b!7249842 b_lambda!278345)))

(declare-fun bs!1906040 () Bool)

(declare-fun d!2253438 () Bool)

(assert (= bs!1906040 (and d!2253438 b!7249842)))

(assert (=> bs!1906040 (= (dynLambda!28731 lambda!443963 lt!2584485) (matchZipper!3549 (store ((as const (Array Context!15158 Bool)) false) lt!2584485 true) (t!384552 s1!1971)))))

(declare-fun m!7928654 () Bool)

(assert (=> bs!1906040 m!7928654))

(assert (=> bs!1906040 m!7928654))

(declare-fun m!7928656 () Bool)

(assert (=> bs!1906040 m!7928656))

(assert (=> d!2253422 d!2253438))

(check-sat (not b!7250023) (not b!7250055) (not bm!660244) (not d!2253344) (not b!7249944) (not b!7249982) (not d!2253380) (not d!2253374) (not b!7249989) (not d!2253390) (not bm!660274) (not d!2253400) (not b!7249991) (not d!2253342) (not d!2253376) (not bm!660245) (not d!2253382) (not d!2253364) (not bm!660275) (not b!7249861) (not b!7249910) (not d!2253424) (not d!2253402) tp_is_empty!46743 (not b!7250022) (not b_lambda!278345) (not bm!660278) (not d!2253384) (not d!2253370) (not b!7249860) (not b!7250027) (not bs!1906040) (not bs!1906039) (not b!7250045) (not d!2253422) (not d!2253346) (not b!7249945) (not bm!660276) (not d!2253414) (not b!7249909) (not b!7249954) (not d!2253420) (not b!7250060) (not bm!660250) (not b!7250044) (not b!7249988) (not b!7249973) (not b!7250072) (not d!2253378) (not b_lambda!278343) (not b!7250026) (not d!2253406) (not b!7249893) (not b!7249990) (not b!7249955) (not d!2253360) (not b!7250073) (not bm!660246) (not d!2253372))
(check-sat)
