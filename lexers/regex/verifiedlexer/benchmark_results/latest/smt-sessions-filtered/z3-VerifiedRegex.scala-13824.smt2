; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735564 () Bool)

(assert start!735564)

(declare-fun b!7641157 () Bool)

(declare-fun e!4541906 () Bool)

(declare-fun tp_is_empty!51241 () Bool)

(assert (=> b!7641157 (= e!4541906 tp_is_empty!51241)))

(declare-fun b!7641158 () Bool)

(declare-fun tp!2230625 () Bool)

(assert (=> b!7641158 (= e!4541906 tp!2230625)))

(declare-fun b!7641159 () Bool)

(declare-fun e!4541907 () Bool)

(declare-datatypes ((C!41212 0))(
  ( (C!41213 (val!31046 Int)) )
))
(declare-datatypes ((Regex!20443 0))(
  ( (ElementMatch!20443 (c!1407456 C!41212)) (Concat!29288 (regOne!41398 Regex!20443) (regTwo!41398 Regex!20443)) (EmptyExpr!20443) (Star!20443 (reg!20772 Regex!20443)) (EmptyLang!20443) (Union!20443 (regOne!41399 Regex!20443) (regTwo!41399 Regex!20443)) )
))
(declare-fun r!14126 () Regex!20443)

(declare-datatypes ((List!73294 0))(
  ( (Nil!73170) (Cons!73170 (h!79618 C!41212) (t!388029 List!73294)) )
))
(declare-fun s!9605 () List!73294)

(declare-fun matchR!9944 (Regex!20443 List!73294) Bool)

(assert (=> b!7641159 (= e!4541907 (matchR!9944 (regTwo!41399 r!14126) s!9605))))

(declare-fun b!7641160 () Bool)

(declare-fun res!3060515 () Bool)

(declare-fun e!4541904 () Bool)

(assert (=> b!7641160 (=> (not res!3060515) (not e!4541904))))

(get-info :version)

(assert (=> b!7641160 (= res!3060515 (and (not ((_ is EmptyExpr!20443) r!14126)) (not ((_ is EmptyLang!20443) r!14126)) (not ((_ is ElementMatch!20443) r!14126)) ((_ is Union!20443) r!14126)))))

(declare-fun b!7641161 () Bool)

(declare-fun e!4541905 () Bool)

(declare-fun tp!2230628 () Bool)

(assert (=> b!7641161 (= e!4541905 (and tp_is_empty!51241 tp!2230628))))

(declare-fun b!7641162 () Bool)

(declare-fun tp!2230624 () Bool)

(declare-fun tp!2230629 () Bool)

(assert (=> b!7641162 (= e!4541906 (and tp!2230624 tp!2230629))))

(declare-fun b!7641163 () Bool)

(declare-fun validRegex!10861 (Regex!20443) Bool)

(assert (=> b!7641163 (= e!4541904 (not (validRegex!10861 (regOne!41399 r!14126))))))

(assert (=> b!7641163 e!4541907))

(declare-fun res!3060516 () Bool)

(assert (=> b!7641163 (=> res!3060516 e!4541907)))

(assert (=> b!7641163 (= res!3060516 (matchR!9944 (regOne!41399 r!14126) s!9605))))

(declare-datatypes ((Unit!167862 0))(
  ( (Unit!167863) )
))
(declare-fun lt!2660518 () Unit!167862)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!346 (Regex!20443 Regex!20443 List!73294) Unit!167862)

(assert (=> b!7641163 (= lt!2660518 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!346 (regOne!41399 r!14126) (regTwo!41399 r!14126) s!9605))))

(declare-fun b!7641165 () Bool)

(declare-fun res!3060514 () Bool)

(assert (=> b!7641165 (=> (not res!3060514) (not e!4541904))))

(assert (=> b!7641165 (= res!3060514 (matchR!9944 r!14126 s!9605))))

(declare-fun res!3060513 () Bool)

(assert (=> start!735564 (=> (not res!3060513) (not e!4541904))))

(assert (=> start!735564 (= res!3060513 (validRegex!10861 r!14126))))

(assert (=> start!735564 e!4541904))

(assert (=> start!735564 e!4541906))

(assert (=> start!735564 e!4541905))

(declare-fun b!7641164 () Bool)

(declare-fun tp!2230627 () Bool)

(declare-fun tp!2230626 () Bool)

(assert (=> b!7641164 (= e!4541906 (and tp!2230627 tp!2230626))))

(assert (= (and start!735564 res!3060513) b!7641160))

(assert (= (and b!7641160 res!3060515) b!7641165))

(assert (= (and b!7641165 res!3060514) b!7641163))

(assert (= (and b!7641163 (not res!3060516)) b!7641159))

(assert (= (and start!735564 ((_ is ElementMatch!20443) r!14126)) b!7641157))

(assert (= (and start!735564 ((_ is Concat!29288) r!14126)) b!7641164))

(assert (= (and start!735564 ((_ is Star!20443) r!14126)) b!7641158))

(assert (= (and start!735564 ((_ is Union!20443) r!14126)) b!7641162))

(assert (= (and start!735564 ((_ is Cons!73170) s!9605)) b!7641161))

(declare-fun m!8162998 () Bool)

(assert (=> b!7641159 m!8162998))

(declare-fun m!8163000 () Bool)

(assert (=> b!7641163 m!8163000))

(declare-fun m!8163002 () Bool)

(assert (=> b!7641163 m!8163002))

(declare-fun m!8163004 () Bool)

(assert (=> b!7641163 m!8163004))

(declare-fun m!8163006 () Bool)

(assert (=> b!7641165 m!8163006))

(declare-fun m!8163008 () Bool)

(assert (=> start!735564 m!8163008))

(check-sat (not start!735564) (not b!7641158) (not b!7641159) (not b!7641163) (not b!7641165) (not b!7641162) (not b!7641161) tp_is_empty!51241 (not b!7641164))
(check-sat)
(get-model)

(declare-fun b!7641202 () Bool)

(declare-fun e!4541936 () Bool)

(declare-fun call!701354 () Bool)

(assert (=> b!7641202 (= e!4541936 call!701354)))

(declare-fun d!2325177 () Bool)

(declare-fun res!3060539 () Bool)

(declare-fun e!4541940 () Bool)

(assert (=> d!2325177 (=> res!3060539 e!4541940)))

(assert (=> d!2325177 (= res!3060539 ((_ is ElementMatch!20443) (regOne!41399 r!14126)))))

(assert (=> d!2325177 (= (validRegex!10861 (regOne!41399 r!14126)) e!4541940)))

(declare-fun b!7641203 () Bool)

(declare-fun e!4541941 () Bool)

(declare-fun e!4541939 () Bool)

(assert (=> b!7641203 (= e!4541941 e!4541939)))

(declare-fun res!3060540 () Bool)

(assert (=> b!7641203 (=> (not res!3060540) (not e!4541939))))

(declare-fun call!701353 () Bool)

(assert (=> b!7641203 (= res!3060540 call!701353)))

(declare-fun bm!701348 () Bool)

(declare-fun call!701355 () Bool)

(assert (=> bm!701348 (= call!701355 call!701354)))

(declare-fun b!7641204 () Bool)

(declare-fun e!4541938 () Bool)

(assert (=> b!7641204 (= e!4541938 call!701355)))

(declare-fun b!7641205 () Bool)

(declare-fun e!4541937 () Bool)

(assert (=> b!7641205 (= e!4541940 e!4541937)))

(declare-fun c!1407465 () Bool)

(assert (=> b!7641205 (= c!1407465 ((_ is Star!20443) (regOne!41399 r!14126)))))

(declare-fun b!7641206 () Bool)

(assert (=> b!7641206 (= e!4541937 e!4541936)))

(declare-fun res!3060541 () Bool)

(declare-fun nullable!8947 (Regex!20443) Bool)

(assert (=> b!7641206 (= res!3060541 (not (nullable!8947 (reg!20772 (regOne!41399 r!14126)))))))

(assert (=> b!7641206 (=> (not res!3060541) (not e!4541936))))

(declare-fun b!7641207 () Bool)

(assert (=> b!7641207 (= e!4541939 call!701355)))

(declare-fun b!7641208 () Bool)

(declare-fun res!3060537 () Bool)

(assert (=> b!7641208 (=> res!3060537 e!4541941)))

(assert (=> b!7641208 (= res!3060537 (not ((_ is Concat!29288) (regOne!41399 r!14126))))))

(declare-fun e!4541942 () Bool)

(assert (=> b!7641208 (= e!4541942 e!4541941)))

(declare-fun b!7641209 () Bool)

(declare-fun res!3060538 () Bool)

(assert (=> b!7641209 (=> (not res!3060538) (not e!4541938))))

(assert (=> b!7641209 (= res!3060538 call!701353)))

(assert (=> b!7641209 (= e!4541942 e!4541938)))

(declare-fun b!7641210 () Bool)

(assert (=> b!7641210 (= e!4541937 e!4541942)))

(declare-fun c!1407466 () Bool)

(assert (=> b!7641210 (= c!1407466 ((_ is Union!20443) (regOne!41399 r!14126)))))

(declare-fun bm!701349 () Bool)

(assert (=> bm!701349 (= call!701354 (validRegex!10861 (ite c!1407465 (reg!20772 (regOne!41399 r!14126)) (ite c!1407466 (regTwo!41399 (regOne!41399 r!14126)) (regTwo!41398 (regOne!41399 r!14126))))))))

(declare-fun bm!701350 () Bool)

(assert (=> bm!701350 (= call!701353 (validRegex!10861 (ite c!1407466 (regOne!41399 (regOne!41399 r!14126)) (regOne!41398 (regOne!41399 r!14126)))))))

(assert (= (and d!2325177 (not res!3060539)) b!7641205))

(assert (= (and b!7641205 c!1407465) b!7641206))

(assert (= (and b!7641205 (not c!1407465)) b!7641210))

(assert (= (and b!7641206 res!3060541) b!7641202))

(assert (= (and b!7641210 c!1407466) b!7641209))

(assert (= (and b!7641210 (not c!1407466)) b!7641208))

(assert (= (and b!7641209 res!3060538) b!7641204))

(assert (= (and b!7641208 (not res!3060537)) b!7641203))

(assert (= (and b!7641203 res!3060540) b!7641207))

(assert (= (or b!7641209 b!7641203) bm!701350))

(assert (= (or b!7641204 b!7641207) bm!701348))

(assert (= (or b!7641202 bm!701348) bm!701349))

(declare-fun m!8163010 () Bool)

(assert (=> b!7641206 m!8163010))

(declare-fun m!8163012 () Bool)

(assert (=> bm!701349 m!8163012))

(declare-fun m!8163014 () Bool)

(assert (=> bm!701350 m!8163014))

(assert (=> b!7641163 d!2325177))

(declare-fun b!7641276 () Bool)

(declare-fun res!3060582 () Bool)

(declare-fun e!4541978 () Bool)

(assert (=> b!7641276 (=> (not res!3060582) (not e!4541978))))

(declare-fun call!701363 () Bool)

(assert (=> b!7641276 (= res!3060582 (not call!701363))))

(declare-fun b!7641277 () Bool)

(declare-fun e!4541979 () Bool)

(declare-fun head!15718 (List!73294) C!41212)

(assert (=> b!7641277 (= e!4541979 (not (= (head!15718 s!9605) (c!1407456 (regOne!41399 r!14126)))))))

(declare-fun b!7641278 () Bool)

(declare-fun res!3060579 () Bool)

(assert (=> b!7641278 (=> res!3060579 e!4541979)))

(declare-fun isEmpty!41798 (List!73294) Bool)

(declare-fun tail!15258 (List!73294) List!73294)

(assert (=> b!7641278 (= res!3060579 (not (isEmpty!41798 (tail!15258 s!9605))))))

(declare-fun d!2325181 () Bool)

(declare-fun e!4541981 () Bool)

(assert (=> d!2325181 e!4541981))

(declare-fun c!1407482 () Bool)

(assert (=> d!2325181 (= c!1407482 ((_ is EmptyExpr!20443) (regOne!41399 r!14126)))))

(declare-fun lt!2660523 () Bool)

(declare-fun e!4541983 () Bool)

(assert (=> d!2325181 (= lt!2660523 e!4541983)))

(declare-fun c!1407481 () Bool)

(assert (=> d!2325181 (= c!1407481 (isEmpty!41798 s!9605))))

(assert (=> d!2325181 (validRegex!10861 (regOne!41399 r!14126))))

(assert (=> d!2325181 (= (matchR!9944 (regOne!41399 r!14126) s!9605) lt!2660523)))

(declare-fun b!7641279 () Bool)

(declare-fun e!4541980 () Bool)

(assert (=> b!7641279 (= e!4541980 e!4541979)))

(declare-fun res!3060583 () Bool)

(assert (=> b!7641279 (=> res!3060583 e!4541979)))

(assert (=> b!7641279 (= res!3060583 call!701363)))

(declare-fun b!7641280 () Bool)

(declare-fun res!3060580 () Bool)

(assert (=> b!7641280 (=> (not res!3060580) (not e!4541978))))

(assert (=> b!7641280 (= res!3060580 (isEmpty!41798 (tail!15258 s!9605)))))

(declare-fun bm!701358 () Bool)

(assert (=> bm!701358 (= call!701363 (isEmpty!41798 s!9605))))

(declare-fun b!7641281 () Bool)

(declare-fun res!3060584 () Bool)

(declare-fun e!4541982 () Bool)

(assert (=> b!7641281 (=> res!3060584 e!4541982)))

(assert (=> b!7641281 (= res!3060584 (not ((_ is ElementMatch!20443) (regOne!41399 r!14126))))))

(declare-fun e!4541984 () Bool)

(assert (=> b!7641281 (= e!4541984 e!4541982)))

(declare-fun b!7641282 () Bool)

(assert (=> b!7641282 (= e!4541982 e!4541980)))

(declare-fun res!3060585 () Bool)

(assert (=> b!7641282 (=> (not res!3060585) (not e!4541980))))

(assert (=> b!7641282 (= res!3060585 (not lt!2660523))))

(declare-fun b!7641283 () Bool)

(assert (=> b!7641283 (= e!4541981 e!4541984)))

(declare-fun c!1407483 () Bool)

(assert (=> b!7641283 (= c!1407483 ((_ is EmptyLang!20443) (regOne!41399 r!14126)))))

(declare-fun b!7641284 () Bool)

(assert (=> b!7641284 (= e!4541983 (nullable!8947 (regOne!41399 r!14126)))))

(declare-fun b!7641285 () Bool)

(assert (=> b!7641285 (= e!4541978 (= (head!15718 s!9605) (c!1407456 (regOne!41399 r!14126))))))

(declare-fun b!7641286 () Bool)

(declare-fun res!3060581 () Bool)

(assert (=> b!7641286 (=> res!3060581 e!4541982)))

(assert (=> b!7641286 (= res!3060581 e!4541978)))

(declare-fun res!3060586 () Bool)

(assert (=> b!7641286 (=> (not res!3060586) (not e!4541978))))

(assert (=> b!7641286 (= res!3060586 lt!2660523)))

(declare-fun b!7641287 () Bool)

(assert (=> b!7641287 (= e!4541984 (not lt!2660523))))

(declare-fun b!7641288 () Bool)

(assert (=> b!7641288 (= e!4541981 (= lt!2660523 call!701363))))

(declare-fun b!7641289 () Bool)

(declare-fun derivativeStep!5918 (Regex!20443 C!41212) Regex!20443)

(assert (=> b!7641289 (= e!4541983 (matchR!9944 (derivativeStep!5918 (regOne!41399 r!14126) (head!15718 s!9605)) (tail!15258 s!9605)))))

(assert (= (and d!2325181 c!1407481) b!7641284))

(assert (= (and d!2325181 (not c!1407481)) b!7641289))

(assert (= (and d!2325181 c!1407482) b!7641288))

(assert (= (and d!2325181 (not c!1407482)) b!7641283))

(assert (= (and b!7641283 c!1407483) b!7641287))

(assert (= (and b!7641283 (not c!1407483)) b!7641281))

(assert (= (and b!7641281 (not res!3060584)) b!7641286))

(assert (= (and b!7641286 res!3060586) b!7641276))

(assert (= (and b!7641276 res!3060582) b!7641280))

(assert (= (and b!7641280 res!3060580) b!7641285))

(assert (= (and b!7641286 (not res!3060581)) b!7641282))

(assert (= (and b!7641282 res!3060585) b!7641279))

(assert (= (and b!7641279 (not res!3060583)) b!7641278))

(assert (= (and b!7641278 (not res!3060579)) b!7641277))

(assert (= (or b!7641288 b!7641276 b!7641279) bm!701358))

(declare-fun m!8163022 () Bool)

(assert (=> b!7641280 m!8163022))

(assert (=> b!7641280 m!8163022))

(declare-fun m!8163024 () Bool)

(assert (=> b!7641280 m!8163024))

(assert (=> b!7641278 m!8163022))

(assert (=> b!7641278 m!8163022))

(assert (=> b!7641278 m!8163024))

(declare-fun m!8163026 () Bool)

(assert (=> b!7641277 m!8163026))

(assert (=> b!7641289 m!8163026))

(assert (=> b!7641289 m!8163026))

(declare-fun m!8163028 () Bool)

(assert (=> b!7641289 m!8163028))

(assert (=> b!7641289 m!8163022))

(assert (=> b!7641289 m!8163028))

(assert (=> b!7641289 m!8163022))

(declare-fun m!8163030 () Bool)

(assert (=> b!7641289 m!8163030))

(declare-fun m!8163032 () Bool)

(assert (=> b!7641284 m!8163032))

(declare-fun m!8163034 () Bool)

(assert (=> d!2325181 m!8163034))

(assert (=> d!2325181 m!8163000))

(assert (=> bm!701358 m!8163034))

(assert (=> b!7641285 m!8163026))

(assert (=> b!7641163 d!2325181))

(declare-fun d!2325185 () Bool)

(declare-fun e!4542010 () Bool)

(assert (=> d!2325185 e!4542010))

(declare-fun res!3060613 () Bool)

(assert (=> d!2325185 (=> res!3060613 e!4542010)))

(assert (=> d!2325185 (= res!3060613 (matchR!9944 (regOne!41399 r!14126) s!9605))))

(declare-fun lt!2660528 () Unit!167862)

(declare-fun choose!59008 (Regex!20443 Regex!20443 List!73294) Unit!167862)

(assert (=> d!2325185 (= lt!2660528 (choose!59008 (regOne!41399 r!14126) (regTwo!41399 r!14126) s!9605))))

(declare-fun e!4542011 () Bool)

(assert (=> d!2325185 e!4542011))

(declare-fun res!3060612 () Bool)

(assert (=> d!2325185 (=> (not res!3060612) (not e!4542011))))

(assert (=> d!2325185 (= res!3060612 (validRegex!10861 (regOne!41399 r!14126)))))

(assert (=> d!2325185 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!346 (regOne!41399 r!14126) (regTwo!41399 r!14126) s!9605) lt!2660528)))

(declare-fun b!7641331 () Bool)

(assert (=> b!7641331 (= e!4542011 (validRegex!10861 (regTwo!41399 r!14126)))))

(declare-fun b!7641332 () Bool)

(assert (=> b!7641332 (= e!4542010 (matchR!9944 (regTwo!41399 r!14126) s!9605))))

(assert (= (and d!2325185 res!3060612) b!7641331))

(assert (= (and d!2325185 (not res!3060613)) b!7641332))

(assert (=> d!2325185 m!8163002))

(declare-fun m!8163062 () Bool)

(assert (=> d!2325185 m!8163062))

(assert (=> d!2325185 m!8163000))

(declare-fun m!8163064 () Bool)

(assert (=> b!7641331 m!8163064))

(assert (=> b!7641332 m!8162998))

(assert (=> b!7641163 d!2325185))

(declare-fun b!7641333 () Bool)

(declare-fun res!3060617 () Bool)

(declare-fun e!4542012 () Bool)

(assert (=> b!7641333 (=> (not res!3060617) (not e!4542012))))

(declare-fun call!701369 () Bool)

(assert (=> b!7641333 (= res!3060617 (not call!701369))))

(declare-fun b!7641334 () Bool)

(declare-fun e!4542013 () Bool)

(assert (=> b!7641334 (= e!4542013 (not (= (head!15718 s!9605) (c!1407456 r!14126))))))

(declare-fun b!7641335 () Bool)

(declare-fun res!3060614 () Bool)

(assert (=> b!7641335 (=> res!3060614 e!4542013)))

(assert (=> b!7641335 (= res!3060614 (not (isEmpty!41798 (tail!15258 s!9605))))))

(declare-fun d!2325193 () Bool)

(declare-fun e!4542015 () Bool)

(assert (=> d!2325193 e!4542015))

(declare-fun c!1407493 () Bool)

(assert (=> d!2325193 (= c!1407493 ((_ is EmptyExpr!20443) r!14126))))

(declare-fun lt!2660529 () Bool)

(declare-fun e!4542017 () Bool)

(assert (=> d!2325193 (= lt!2660529 e!4542017)))

(declare-fun c!1407492 () Bool)

(assert (=> d!2325193 (= c!1407492 (isEmpty!41798 s!9605))))

(assert (=> d!2325193 (validRegex!10861 r!14126)))

(assert (=> d!2325193 (= (matchR!9944 r!14126 s!9605) lt!2660529)))

(declare-fun b!7641336 () Bool)

(declare-fun e!4542014 () Bool)

(assert (=> b!7641336 (= e!4542014 e!4542013)))

(declare-fun res!3060618 () Bool)

(assert (=> b!7641336 (=> res!3060618 e!4542013)))

(assert (=> b!7641336 (= res!3060618 call!701369)))

(declare-fun b!7641337 () Bool)

(declare-fun res!3060615 () Bool)

(assert (=> b!7641337 (=> (not res!3060615) (not e!4542012))))

(assert (=> b!7641337 (= res!3060615 (isEmpty!41798 (tail!15258 s!9605)))))

(declare-fun bm!701364 () Bool)

(assert (=> bm!701364 (= call!701369 (isEmpty!41798 s!9605))))

(declare-fun b!7641338 () Bool)

(declare-fun res!3060619 () Bool)

(declare-fun e!4542016 () Bool)

(assert (=> b!7641338 (=> res!3060619 e!4542016)))

(assert (=> b!7641338 (= res!3060619 (not ((_ is ElementMatch!20443) r!14126)))))

(declare-fun e!4542018 () Bool)

(assert (=> b!7641338 (= e!4542018 e!4542016)))

(declare-fun b!7641339 () Bool)

(assert (=> b!7641339 (= e!4542016 e!4542014)))

(declare-fun res!3060620 () Bool)

(assert (=> b!7641339 (=> (not res!3060620) (not e!4542014))))

(assert (=> b!7641339 (= res!3060620 (not lt!2660529))))

(declare-fun b!7641340 () Bool)

(assert (=> b!7641340 (= e!4542015 e!4542018)))

(declare-fun c!1407494 () Bool)

(assert (=> b!7641340 (= c!1407494 ((_ is EmptyLang!20443) r!14126))))

(declare-fun b!7641341 () Bool)

(assert (=> b!7641341 (= e!4542017 (nullable!8947 r!14126))))

(declare-fun b!7641342 () Bool)

(assert (=> b!7641342 (= e!4542012 (= (head!15718 s!9605) (c!1407456 r!14126)))))

(declare-fun b!7641343 () Bool)

(declare-fun res!3060616 () Bool)

(assert (=> b!7641343 (=> res!3060616 e!4542016)))

(assert (=> b!7641343 (= res!3060616 e!4542012)))

(declare-fun res!3060621 () Bool)

(assert (=> b!7641343 (=> (not res!3060621) (not e!4542012))))

(assert (=> b!7641343 (= res!3060621 lt!2660529)))

(declare-fun b!7641344 () Bool)

(assert (=> b!7641344 (= e!4542018 (not lt!2660529))))

(declare-fun b!7641345 () Bool)

(assert (=> b!7641345 (= e!4542015 (= lt!2660529 call!701369))))

(declare-fun b!7641346 () Bool)

(assert (=> b!7641346 (= e!4542017 (matchR!9944 (derivativeStep!5918 r!14126 (head!15718 s!9605)) (tail!15258 s!9605)))))

(assert (= (and d!2325193 c!1407492) b!7641341))

(assert (= (and d!2325193 (not c!1407492)) b!7641346))

(assert (= (and d!2325193 c!1407493) b!7641345))

(assert (= (and d!2325193 (not c!1407493)) b!7641340))

(assert (= (and b!7641340 c!1407494) b!7641344))

(assert (= (and b!7641340 (not c!1407494)) b!7641338))

(assert (= (and b!7641338 (not res!3060619)) b!7641343))

(assert (= (and b!7641343 res!3060621) b!7641333))

(assert (= (and b!7641333 res!3060617) b!7641337))

(assert (= (and b!7641337 res!3060615) b!7641342))

(assert (= (and b!7641343 (not res!3060616)) b!7641339))

(assert (= (and b!7641339 res!3060620) b!7641336))

(assert (= (and b!7641336 (not res!3060618)) b!7641335))

(assert (= (and b!7641335 (not res!3060614)) b!7641334))

(assert (= (or b!7641345 b!7641333 b!7641336) bm!701364))

(assert (=> b!7641337 m!8163022))

(assert (=> b!7641337 m!8163022))

(assert (=> b!7641337 m!8163024))

(assert (=> b!7641335 m!8163022))

(assert (=> b!7641335 m!8163022))

(assert (=> b!7641335 m!8163024))

(assert (=> b!7641334 m!8163026))

(assert (=> b!7641346 m!8163026))

(assert (=> b!7641346 m!8163026))

(declare-fun m!8163066 () Bool)

(assert (=> b!7641346 m!8163066))

(assert (=> b!7641346 m!8163022))

(assert (=> b!7641346 m!8163066))

(assert (=> b!7641346 m!8163022))

(declare-fun m!8163068 () Bool)

(assert (=> b!7641346 m!8163068))

(declare-fun m!8163070 () Bool)

(assert (=> b!7641341 m!8163070))

(assert (=> d!2325193 m!8163034))

(assert (=> d!2325193 m!8163008))

(assert (=> bm!701364 m!8163034))

(assert (=> b!7641342 m!8163026))

(assert (=> b!7641165 d!2325193))

(declare-fun b!7641351 () Bool)

(declare-fun res!3060629 () Bool)

(declare-fun e!4542023 () Bool)

(assert (=> b!7641351 (=> (not res!3060629) (not e!4542023))))

(declare-fun call!701370 () Bool)

(assert (=> b!7641351 (= res!3060629 (not call!701370))))

(declare-fun b!7641352 () Bool)

(declare-fun e!4542024 () Bool)

(assert (=> b!7641352 (= e!4542024 (not (= (head!15718 s!9605) (c!1407456 (regTwo!41399 r!14126)))))))

(declare-fun b!7641353 () Bool)

(declare-fun res!3060626 () Bool)

(assert (=> b!7641353 (=> res!3060626 e!4542024)))

(assert (=> b!7641353 (= res!3060626 (not (isEmpty!41798 (tail!15258 s!9605))))))

(declare-fun d!2325195 () Bool)

(declare-fun e!4542026 () Bool)

(assert (=> d!2325195 e!4542026))

(declare-fun c!1407496 () Bool)

(assert (=> d!2325195 (= c!1407496 ((_ is EmptyExpr!20443) (regTwo!41399 r!14126)))))

(declare-fun lt!2660532 () Bool)

(declare-fun e!4542028 () Bool)

(assert (=> d!2325195 (= lt!2660532 e!4542028)))

(declare-fun c!1407495 () Bool)

(assert (=> d!2325195 (= c!1407495 (isEmpty!41798 s!9605))))

(assert (=> d!2325195 (validRegex!10861 (regTwo!41399 r!14126))))

(assert (=> d!2325195 (= (matchR!9944 (regTwo!41399 r!14126) s!9605) lt!2660532)))

(declare-fun b!7641354 () Bool)

(declare-fun e!4542025 () Bool)

(assert (=> b!7641354 (= e!4542025 e!4542024)))

(declare-fun res!3060630 () Bool)

(assert (=> b!7641354 (=> res!3060630 e!4542024)))

(assert (=> b!7641354 (= res!3060630 call!701370)))

(declare-fun b!7641355 () Bool)

(declare-fun res!3060627 () Bool)

(assert (=> b!7641355 (=> (not res!3060627) (not e!4542023))))

(assert (=> b!7641355 (= res!3060627 (isEmpty!41798 (tail!15258 s!9605)))))

(declare-fun bm!701365 () Bool)

(assert (=> bm!701365 (= call!701370 (isEmpty!41798 s!9605))))

(declare-fun b!7641356 () Bool)

(declare-fun res!3060631 () Bool)

(declare-fun e!4542027 () Bool)

(assert (=> b!7641356 (=> res!3060631 e!4542027)))

(assert (=> b!7641356 (= res!3060631 (not ((_ is ElementMatch!20443) (regTwo!41399 r!14126))))))

(declare-fun e!4542029 () Bool)

(assert (=> b!7641356 (= e!4542029 e!4542027)))

(declare-fun b!7641357 () Bool)

(assert (=> b!7641357 (= e!4542027 e!4542025)))

(declare-fun res!3060632 () Bool)

(assert (=> b!7641357 (=> (not res!3060632) (not e!4542025))))

(assert (=> b!7641357 (= res!3060632 (not lt!2660532))))

(declare-fun b!7641358 () Bool)

(assert (=> b!7641358 (= e!4542026 e!4542029)))

(declare-fun c!1407497 () Bool)

(assert (=> b!7641358 (= c!1407497 ((_ is EmptyLang!20443) (regTwo!41399 r!14126)))))

(declare-fun b!7641359 () Bool)

(assert (=> b!7641359 (= e!4542028 (nullable!8947 (regTwo!41399 r!14126)))))

(declare-fun b!7641360 () Bool)

(assert (=> b!7641360 (= e!4542023 (= (head!15718 s!9605) (c!1407456 (regTwo!41399 r!14126))))))

(declare-fun b!7641361 () Bool)

(declare-fun res!3060628 () Bool)

(assert (=> b!7641361 (=> res!3060628 e!4542027)))

(assert (=> b!7641361 (= res!3060628 e!4542023)))

(declare-fun res!3060633 () Bool)

(assert (=> b!7641361 (=> (not res!3060633) (not e!4542023))))

(assert (=> b!7641361 (= res!3060633 lt!2660532)))

(declare-fun b!7641362 () Bool)

(assert (=> b!7641362 (= e!4542029 (not lt!2660532))))

(declare-fun b!7641363 () Bool)

(assert (=> b!7641363 (= e!4542026 (= lt!2660532 call!701370))))

(declare-fun b!7641364 () Bool)

(assert (=> b!7641364 (= e!4542028 (matchR!9944 (derivativeStep!5918 (regTwo!41399 r!14126) (head!15718 s!9605)) (tail!15258 s!9605)))))

(assert (= (and d!2325195 c!1407495) b!7641359))

(assert (= (and d!2325195 (not c!1407495)) b!7641364))

(assert (= (and d!2325195 c!1407496) b!7641363))

(assert (= (and d!2325195 (not c!1407496)) b!7641358))

(assert (= (and b!7641358 c!1407497) b!7641362))

(assert (= (and b!7641358 (not c!1407497)) b!7641356))

(assert (= (and b!7641356 (not res!3060631)) b!7641361))

(assert (= (and b!7641361 res!3060633) b!7641351))

(assert (= (and b!7641351 res!3060629) b!7641355))

(assert (= (and b!7641355 res!3060627) b!7641360))

(assert (= (and b!7641361 (not res!3060628)) b!7641357))

(assert (= (and b!7641357 res!3060632) b!7641354))

(assert (= (and b!7641354 (not res!3060630)) b!7641353))

(assert (= (and b!7641353 (not res!3060626)) b!7641352))

(assert (= (or b!7641363 b!7641351 b!7641354) bm!701365))

(assert (=> b!7641355 m!8163022))

(assert (=> b!7641355 m!8163022))

(assert (=> b!7641355 m!8163024))

(assert (=> b!7641353 m!8163022))

(assert (=> b!7641353 m!8163022))

(assert (=> b!7641353 m!8163024))

(assert (=> b!7641352 m!8163026))

(assert (=> b!7641364 m!8163026))

(assert (=> b!7641364 m!8163026))

(declare-fun m!8163072 () Bool)

(assert (=> b!7641364 m!8163072))

(assert (=> b!7641364 m!8163022))

(assert (=> b!7641364 m!8163072))

(assert (=> b!7641364 m!8163022))

(declare-fun m!8163074 () Bool)

(assert (=> b!7641364 m!8163074))

(declare-fun m!8163076 () Bool)

(assert (=> b!7641359 m!8163076))

(assert (=> d!2325195 m!8163034))

(assert (=> d!2325195 m!8163064))

(assert (=> bm!701365 m!8163034))

(assert (=> b!7641360 m!8163026))

(assert (=> b!7641159 d!2325195))

(declare-fun b!7641367 () Bool)

(declare-fun e!4542032 () Bool)

(declare-fun call!701372 () Bool)

(assert (=> b!7641367 (= e!4542032 call!701372)))

(declare-fun d!2325197 () Bool)

(declare-fun res!3060638 () Bool)

(declare-fun e!4542036 () Bool)

(assert (=> d!2325197 (=> res!3060638 e!4542036)))

(assert (=> d!2325197 (= res!3060638 ((_ is ElementMatch!20443) r!14126))))

(assert (=> d!2325197 (= (validRegex!10861 r!14126) e!4542036)))

(declare-fun b!7641368 () Bool)

(declare-fun e!4542037 () Bool)

(declare-fun e!4542035 () Bool)

(assert (=> b!7641368 (= e!4542037 e!4542035)))

(declare-fun res!3060639 () Bool)

(assert (=> b!7641368 (=> (not res!3060639) (not e!4542035))))

(declare-fun call!701371 () Bool)

(assert (=> b!7641368 (= res!3060639 call!701371)))

(declare-fun bm!701366 () Bool)

(declare-fun call!701373 () Bool)

(assert (=> bm!701366 (= call!701373 call!701372)))

(declare-fun b!7641369 () Bool)

(declare-fun e!4542034 () Bool)

(assert (=> b!7641369 (= e!4542034 call!701373)))

(declare-fun b!7641370 () Bool)

(declare-fun e!4542033 () Bool)

(assert (=> b!7641370 (= e!4542036 e!4542033)))

(declare-fun c!1407498 () Bool)

(assert (=> b!7641370 (= c!1407498 ((_ is Star!20443) r!14126))))

(declare-fun b!7641371 () Bool)

(assert (=> b!7641371 (= e!4542033 e!4542032)))

(declare-fun res!3060640 () Bool)

(assert (=> b!7641371 (= res!3060640 (not (nullable!8947 (reg!20772 r!14126))))))

(assert (=> b!7641371 (=> (not res!3060640) (not e!4542032))))

(declare-fun b!7641372 () Bool)

(assert (=> b!7641372 (= e!4542035 call!701373)))

(declare-fun b!7641373 () Bool)

(declare-fun res!3060636 () Bool)

(assert (=> b!7641373 (=> res!3060636 e!4542037)))

(assert (=> b!7641373 (= res!3060636 (not ((_ is Concat!29288) r!14126)))))

(declare-fun e!4542038 () Bool)

(assert (=> b!7641373 (= e!4542038 e!4542037)))

(declare-fun b!7641374 () Bool)

(declare-fun res!3060637 () Bool)

(assert (=> b!7641374 (=> (not res!3060637) (not e!4542034))))

(assert (=> b!7641374 (= res!3060637 call!701371)))

(assert (=> b!7641374 (= e!4542038 e!4542034)))

(declare-fun b!7641375 () Bool)

(assert (=> b!7641375 (= e!4542033 e!4542038)))

(declare-fun c!1407499 () Bool)

(assert (=> b!7641375 (= c!1407499 ((_ is Union!20443) r!14126))))

(declare-fun bm!701367 () Bool)

(assert (=> bm!701367 (= call!701372 (validRegex!10861 (ite c!1407498 (reg!20772 r!14126) (ite c!1407499 (regTwo!41399 r!14126) (regTwo!41398 r!14126)))))))

(declare-fun bm!701368 () Bool)

(assert (=> bm!701368 (= call!701371 (validRegex!10861 (ite c!1407499 (regOne!41399 r!14126) (regOne!41398 r!14126))))))

(assert (= (and d!2325197 (not res!3060638)) b!7641370))

(assert (= (and b!7641370 c!1407498) b!7641371))

(assert (= (and b!7641370 (not c!1407498)) b!7641375))

(assert (= (and b!7641371 res!3060640) b!7641367))

(assert (= (and b!7641375 c!1407499) b!7641374))

(assert (= (and b!7641375 (not c!1407499)) b!7641373))

(assert (= (and b!7641374 res!3060637) b!7641369))

(assert (= (and b!7641373 (not res!3060636)) b!7641368))

(assert (= (and b!7641368 res!3060639) b!7641372))

(assert (= (or b!7641374 b!7641368) bm!701368))

(assert (= (or b!7641369 b!7641372) bm!701366))

(assert (= (or b!7641367 bm!701366) bm!701367))

(declare-fun m!8163082 () Bool)

(assert (=> b!7641371 m!8163082))

(declare-fun m!8163084 () Bool)

(assert (=> bm!701367 m!8163084))

(declare-fun m!8163086 () Bool)

(assert (=> bm!701368 m!8163086))

(assert (=> start!735564 d!2325197))

(declare-fun b!7641408 () Bool)

(declare-fun e!4542050 () Bool)

(assert (=> b!7641408 (= e!4542050 tp_is_empty!51241)))

(declare-fun b!7641411 () Bool)

(declare-fun tp!2230649 () Bool)

(declare-fun tp!2230646 () Bool)

(assert (=> b!7641411 (= e!4542050 (and tp!2230649 tp!2230646))))

(assert (=> b!7641164 (= tp!2230627 e!4542050)))

(declare-fun b!7641409 () Bool)

(declare-fun tp!2230647 () Bool)

(declare-fun tp!2230648 () Bool)

(assert (=> b!7641409 (= e!4542050 (and tp!2230647 tp!2230648))))

(declare-fun b!7641410 () Bool)

(declare-fun tp!2230650 () Bool)

(assert (=> b!7641410 (= e!4542050 tp!2230650)))

(assert (= (and b!7641164 ((_ is ElementMatch!20443) (regOne!41398 r!14126))) b!7641408))

(assert (= (and b!7641164 ((_ is Concat!29288) (regOne!41398 r!14126))) b!7641409))

(assert (= (and b!7641164 ((_ is Star!20443) (regOne!41398 r!14126))) b!7641410))

(assert (= (and b!7641164 ((_ is Union!20443) (regOne!41398 r!14126))) b!7641411))

(declare-fun b!7641414 () Bool)

(declare-fun e!4542051 () Bool)

(assert (=> b!7641414 (= e!4542051 tp_is_empty!51241)))

(declare-fun b!7641417 () Bool)

(declare-fun tp!2230658 () Bool)

(declare-fun tp!2230655 () Bool)

(assert (=> b!7641417 (= e!4542051 (and tp!2230658 tp!2230655))))

(assert (=> b!7641164 (= tp!2230626 e!4542051)))

(declare-fun b!7641415 () Bool)

(declare-fun tp!2230656 () Bool)

(declare-fun tp!2230657 () Bool)

(assert (=> b!7641415 (= e!4542051 (and tp!2230656 tp!2230657))))

(declare-fun b!7641416 () Bool)

(declare-fun tp!2230659 () Bool)

(assert (=> b!7641416 (= e!4542051 tp!2230659)))

(assert (= (and b!7641164 ((_ is ElementMatch!20443) (regTwo!41398 r!14126))) b!7641414))

(assert (= (and b!7641164 ((_ is Concat!29288) (regTwo!41398 r!14126))) b!7641415))

(assert (= (and b!7641164 ((_ is Star!20443) (regTwo!41398 r!14126))) b!7641416))

(assert (= (and b!7641164 ((_ is Union!20443) (regTwo!41398 r!14126))) b!7641417))

(declare-fun b!7641418 () Bool)

(declare-fun e!4542052 () Bool)

(assert (=> b!7641418 (= e!4542052 tp_is_empty!51241)))

(declare-fun b!7641421 () Bool)

(declare-fun tp!2230663 () Bool)

(declare-fun tp!2230660 () Bool)

(assert (=> b!7641421 (= e!4542052 (and tp!2230663 tp!2230660))))

(assert (=> b!7641158 (= tp!2230625 e!4542052)))

(declare-fun b!7641419 () Bool)

(declare-fun tp!2230661 () Bool)

(declare-fun tp!2230662 () Bool)

(assert (=> b!7641419 (= e!4542052 (and tp!2230661 tp!2230662))))

(declare-fun b!7641420 () Bool)

(declare-fun tp!2230664 () Bool)

(assert (=> b!7641420 (= e!4542052 tp!2230664)))

(assert (= (and b!7641158 ((_ is ElementMatch!20443) (reg!20772 r!14126))) b!7641418))

(assert (= (and b!7641158 ((_ is Concat!29288) (reg!20772 r!14126))) b!7641419))

(assert (= (and b!7641158 ((_ is Star!20443) (reg!20772 r!14126))) b!7641420))

(assert (= (and b!7641158 ((_ is Union!20443) (reg!20772 r!14126))) b!7641421))

(declare-fun b!7641430 () Bool)

(declare-fun e!4542056 () Bool)

(declare-fun tp!2230672 () Bool)

(assert (=> b!7641430 (= e!4542056 (and tp_is_empty!51241 tp!2230672))))

(assert (=> b!7641161 (= tp!2230628 e!4542056)))

(assert (= (and b!7641161 ((_ is Cons!73170) (t!388029 s!9605))) b!7641430))

(declare-fun b!7641435 () Bool)

(declare-fun e!4542058 () Bool)

(assert (=> b!7641435 (= e!4542058 tp_is_empty!51241)))

(declare-fun b!7641438 () Bool)

(declare-fun tp!2230681 () Bool)

(declare-fun tp!2230678 () Bool)

(assert (=> b!7641438 (= e!4542058 (and tp!2230681 tp!2230678))))

(assert (=> b!7641162 (= tp!2230624 e!4542058)))

(declare-fun b!7641436 () Bool)

(declare-fun tp!2230679 () Bool)

(declare-fun tp!2230680 () Bool)

(assert (=> b!7641436 (= e!4542058 (and tp!2230679 tp!2230680))))

(declare-fun b!7641437 () Bool)

(declare-fun tp!2230682 () Bool)

(assert (=> b!7641437 (= e!4542058 tp!2230682)))

(assert (= (and b!7641162 ((_ is ElementMatch!20443) (regOne!41399 r!14126))) b!7641435))

(assert (= (and b!7641162 ((_ is Concat!29288) (regOne!41399 r!14126))) b!7641436))

(assert (= (and b!7641162 ((_ is Star!20443) (regOne!41399 r!14126))) b!7641437))

(assert (= (and b!7641162 ((_ is Union!20443) (regOne!41399 r!14126))) b!7641438))

(declare-fun b!7641443 () Bool)

(declare-fun e!4542060 () Bool)

(assert (=> b!7641443 (= e!4542060 tp_is_empty!51241)))

(declare-fun b!7641446 () Bool)

(declare-fun tp!2230691 () Bool)

(declare-fun tp!2230688 () Bool)

(assert (=> b!7641446 (= e!4542060 (and tp!2230691 tp!2230688))))

(assert (=> b!7641162 (= tp!2230629 e!4542060)))

(declare-fun b!7641444 () Bool)

(declare-fun tp!2230689 () Bool)

(declare-fun tp!2230690 () Bool)

(assert (=> b!7641444 (= e!4542060 (and tp!2230689 tp!2230690))))

(declare-fun b!7641445 () Bool)

(declare-fun tp!2230692 () Bool)

(assert (=> b!7641445 (= e!4542060 tp!2230692)))

(assert (= (and b!7641162 ((_ is ElementMatch!20443) (regTwo!41399 r!14126))) b!7641443))

(assert (= (and b!7641162 ((_ is Concat!29288) (regTwo!41399 r!14126))) b!7641444))

(assert (= (and b!7641162 ((_ is Star!20443) (regTwo!41399 r!14126))) b!7641445))

(assert (= (and b!7641162 ((_ is Union!20443) (regTwo!41399 r!14126))) b!7641446))

(check-sat (not b!7641206) (not d!2325193) (not b!7641284) (not b!7641342) (not b!7641371) (not b!7641446) (not b!7641417) (not b!7641415) (not b!7641436) (not b!7641411) (not b!7641360) (not b!7641437) (not b!7641278) (not b!7641341) (not b!7641416) (not b!7641420) (not b!7641331) (not bm!701367) (not b!7641352) (not b!7641289) (not b!7641353) (not bm!701358) (not d!2325181) (not b!7641410) (not b!7641364) (not b!7641285) (not b!7641355) (not d!2325185) (not b!7641280) (not bm!701368) (not b!7641332) (not b!7641430) tp_is_empty!51241 (not bm!701364) (not b!7641445) (not b!7641277) (not d!2325195) (not b!7641334) (not b!7641346) (not bm!701365) (not b!7641359) (not bm!701349) (not b!7641419) (not b!7641409) (not b!7641438) (not b!7641335) (not bm!701350) (not b!7641337) (not b!7641421) (not b!7641444))
(check-sat)
