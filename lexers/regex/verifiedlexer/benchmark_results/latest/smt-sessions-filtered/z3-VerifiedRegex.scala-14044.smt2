; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741366 () Bool)

(assert start!741366)

(declare-fun res!3108128 () Bool)

(declare-fun e!4619814 () Bool)

(assert (=> start!741366 (=> (not res!3108128) (not e!4619814))))

(declare-datatypes ((C!42092 0))(
  ( (C!42093 (val!31486 Int)) )
))
(declare-datatypes ((Regex!20883 0))(
  ( (ElementMatch!20883 (c!1437146 C!42092)) (Concat!29728 (regOne!42278 Regex!20883) (regTwo!42278 Regex!20883)) (EmptyExpr!20883) (Star!20883 (reg!21212 Regex!20883)) (EmptyLang!20883) (Union!20883 (regOne!42279 Regex!20883) (regTwo!42279 Regex!20883)) )
))
(declare-fun r1!6279 () Regex!20883)

(declare-fun validRegex!11297 (Regex!20883) Bool)

(assert (=> start!741366 (= res!3108128 (validRegex!11297 r1!6279))))

(assert (=> start!741366 e!4619814))

(declare-fun e!4619816 () Bool)

(assert (=> start!741366 e!4619816))

(declare-fun e!4619810 () Bool)

(assert (=> start!741366 e!4619810))

(declare-fun e!4619811 () Bool)

(assert (=> start!741366 e!4619811))

(declare-fun b!7804246 () Bool)

(declare-fun tp!2299170 () Bool)

(assert (=> b!7804246 (= e!4619810 tp!2299170)))

(declare-fun b!7804247 () Bool)

(declare-fun e!4619812 () Bool)

(declare-datatypes ((List!73722 0))(
  ( (Nil!73598) (Cons!73598 (h!80046 C!42092) (t!388457 List!73722)) )
))
(declare-fun s!14292 () List!73722)

(declare-datatypes ((tuple2!69952 0))(
  ( (tuple2!69953 (_1!38279 List!73722) (_2!38279 List!73722)) )
))
(declare-fun lt!2674974 () tuple2!69952)

(declare-fun ++!17943 (List!73722 List!73722) List!73722)

(assert (=> b!7804247 (= e!4619812 (= (++!17943 (Cons!73598 (h!80046 s!14292) (_1!38279 lt!2674974)) (_2!38279 lt!2674974)) s!14292))))

(declare-datatypes ((Option!17770 0))(
  ( (None!17769) (Some!17769 (v!54904 tuple2!69952)) )
))
(declare-fun lt!2674978 () Option!17770)

(declare-fun get!26336 (Option!17770) tuple2!69952)

(assert (=> b!7804247 (= lt!2674974 (get!26336 lt!2674978))))

(declare-fun isDefined!14380 (Option!17770) Bool)

(assert (=> b!7804247 (isDefined!14380 lt!2674978)))

(declare-fun r2!6217 () Regex!20883)

(declare-fun lt!2674971 () Regex!20883)

(declare-fun findConcatSeparation!3800 (Regex!20883 Regex!20883 List!73722 List!73722 List!73722) Option!17770)

(assert (=> b!7804247 (= lt!2674978 (findConcatSeparation!3800 lt!2674971 r2!6217 Nil!73598 (t!388457 s!14292) (t!388457 s!14292)))))

(declare-datatypes ((Unit!168604 0))(
  ( (Unit!168605) )
))
(declare-fun lt!2674976 () Unit!168604)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!382 (Regex!20883 Regex!20883 List!73722) Unit!168604)

(assert (=> b!7804247 (= lt!2674976 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!382 lt!2674971 r2!6217 (t!388457 s!14292)))))

(declare-fun b!7804248 () Bool)

(declare-fun e!4619817 () Bool)

(assert (=> b!7804248 (= e!4619817 (not e!4619812))))

(declare-fun res!3108134 () Bool)

(assert (=> b!7804248 (=> res!3108134 e!4619812)))

(declare-fun lt!2674969 () Bool)

(assert (=> b!7804248 (= res!3108134 (not lt!2674969))))

(declare-fun derivative!565 (Regex!20883 List!73722) Regex!20883)

(assert (=> b!7804248 (= (derivative!565 EmptyLang!20883 (t!388457 s!14292)) EmptyLang!20883)))

(declare-fun lt!2674977 () Unit!168604)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!100 (Regex!20883 List!73722) Unit!168604)

(assert (=> b!7804248 (= lt!2674977 (lemmaEmptyLangDerivativeIsAFixPoint!100 EmptyLang!20883 (t!388457 s!14292)))))

(declare-fun e!4619815 () Bool)

(assert (=> b!7804248 e!4619815))

(declare-fun res!3108132 () Bool)

(assert (=> b!7804248 (=> res!3108132 e!4619815)))

(assert (=> b!7804248 (= res!3108132 lt!2674969)))

(declare-fun lt!2674973 () Regex!20883)

(declare-fun matchR!10343 (Regex!20883 List!73722) Bool)

(assert (=> b!7804248 (= lt!2674969 (matchR!10343 lt!2674973 (t!388457 s!14292)))))

(declare-fun lt!2674970 () Unit!168604)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!422 (Regex!20883 Regex!20883 List!73722) Unit!168604)

(assert (=> b!7804248 (= lt!2674970 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!422 lt!2674973 EmptyLang!20883 (t!388457 s!14292)))))

(declare-fun b!7804249 () Bool)

(assert (=> b!7804249 (= e!4619815 (matchR!10343 EmptyLang!20883 (t!388457 s!14292)))))

(declare-fun b!7804250 () Bool)

(declare-fun res!3108129 () Bool)

(declare-fun e!4619813 () Bool)

(assert (=> b!7804250 (=> (not res!3108129) (not e!4619813))))

(get-info :version)

(assert (=> b!7804250 (= res!3108129 ((_ is Cons!73598) s!14292))))

(declare-fun b!7804251 () Bool)

(declare-fun e!4619809 () Bool)

(assert (=> b!7804251 (= e!4619813 e!4619809)))

(declare-fun res!3108133 () Bool)

(assert (=> b!7804251 (=> (not res!3108133) (not e!4619809))))

(declare-fun lt!2674972 () Regex!20883)

(assert (=> b!7804251 (= res!3108133 (matchR!10343 lt!2674972 (t!388457 s!14292)))))

(declare-fun lt!2674975 () Regex!20883)

(declare-fun derivativeStep!6220 (Regex!20883 C!42092) Regex!20883)

(assert (=> b!7804251 (= lt!2674972 (derivativeStep!6220 lt!2674975 (h!80046 s!14292)))))

(declare-fun b!7804252 () Bool)

(declare-fun tp_is_empty!52121 () Bool)

(assert (=> b!7804252 (= e!4619810 tp_is_empty!52121)))

(declare-fun b!7804253 () Bool)

(assert (=> b!7804253 (= e!4619814 e!4619813)))

(declare-fun res!3108130 () Bool)

(assert (=> b!7804253 (=> (not res!3108130) (not e!4619813))))

(assert (=> b!7804253 (= res!3108130 (matchR!10343 lt!2674975 s!14292))))

(assert (=> b!7804253 (= lt!2674975 (Concat!29728 r1!6279 r2!6217))))

(declare-fun b!7804254 () Bool)

(declare-fun tp!2299161 () Bool)

(declare-fun tp!2299164 () Bool)

(assert (=> b!7804254 (= e!4619810 (and tp!2299161 tp!2299164))))

(declare-fun b!7804255 () Bool)

(assert (=> b!7804255 (= e!4619809 e!4619817)))

(declare-fun res!3108127 () Bool)

(assert (=> b!7804255 (=> (not res!3108127) (not e!4619817))))

(assert (=> b!7804255 (= res!3108127 (= lt!2674972 (Union!20883 lt!2674973 EmptyLang!20883)))))

(assert (=> b!7804255 (= lt!2674973 (Concat!29728 lt!2674971 r2!6217))))

(assert (=> b!7804255 (= lt!2674971 (derivativeStep!6220 r1!6279 (h!80046 s!14292)))))

(declare-fun b!7804256 () Bool)

(declare-fun tp!2299166 () Bool)

(declare-fun tp!2299165 () Bool)

(assert (=> b!7804256 (= e!4619816 (and tp!2299166 tp!2299165))))

(declare-fun b!7804257 () Bool)

(declare-fun tp!2299163 () Bool)

(declare-fun tp!2299168 () Bool)

(assert (=> b!7804257 (= e!4619816 (and tp!2299163 tp!2299168))))

(declare-fun b!7804258 () Bool)

(declare-fun tp!2299167 () Bool)

(assert (=> b!7804258 (= e!4619816 tp!2299167)))

(declare-fun b!7804259 () Bool)

(declare-fun tp!2299171 () Bool)

(declare-fun tp!2299162 () Bool)

(assert (=> b!7804259 (= e!4619810 (and tp!2299171 tp!2299162))))

(declare-fun b!7804260 () Bool)

(declare-fun res!3108131 () Bool)

(assert (=> b!7804260 (=> (not res!3108131) (not e!4619814))))

(assert (=> b!7804260 (= res!3108131 (validRegex!11297 r2!6217))))

(declare-fun b!7804261 () Bool)

(declare-fun tp!2299169 () Bool)

(assert (=> b!7804261 (= e!4619811 (and tp_is_empty!52121 tp!2299169))))

(declare-fun b!7804262 () Bool)

(declare-fun res!3108126 () Bool)

(assert (=> b!7804262 (=> (not res!3108126) (not e!4619809))))

(declare-fun nullable!9267 (Regex!20883) Bool)

(assert (=> b!7804262 (= res!3108126 (not (nullable!9267 r1!6279)))))

(declare-fun b!7804263 () Bool)

(assert (=> b!7804263 (= e!4619816 tp_is_empty!52121)))

(assert (= (and start!741366 res!3108128) b!7804260))

(assert (= (and b!7804260 res!3108131) b!7804253))

(assert (= (and b!7804253 res!3108130) b!7804250))

(assert (= (and b!7804250 res!3108129) b!7804251))

(assert (= (and b!7804251 res!3108133) b!7804262))

(assert (= (and b!7804262 res!3108126) b!7804255))

(assert (= (and b!7804255 res!3108127) b!7804248))

(assert (= (and b!7804248 (not res!3108132)) b!7804249))

(assert (= (and b!7804248 (not res!3108134)) b!7804247))

(assert (= (and start!741366 ((_ is ElementMatch!20883) r1!6279)) b!7804263))

(assert (= (and start!741366 ((_ is Concat!29728) r1!6279)) b!7804256))

(assert (= (and start!741366 ((_ is Star!20883) r1!6279)) b!7804258))

(assert (= (and start!741366 ((_ is Union!20883) r1!6279)) b!7804257))

(assert (= (and start!741366 ((_ is ElementMatch!20883) r2!6217)) b!7804252))

(assert (= (and start!741366 ((_ is Concat!29728) r2!6217)) b!7804259))

(assert (= (and start!741366 ((_ is Star!20883) r2!6217)) b!7804246))

(assert (= (and start!741366 ((_ is Union!20883) r2!6217)) b!7804254))

(assert (= (and start!741366 ((_ is Cons!73598) s!14292)) b!7804261))

(declare-fun m!8238448 () Bool)

(assert (=> b!7804260 m!8238448))

(declare-fun m!8238450 () Bool)

(assert (=> start!741366 m!8238450))

(declare-fun m!8238452 () Bool)

(assert (=> b!7804262 m!8238452))

(declare-fun m!8238454 () Bool)

(assert (=> b!7804251 m!8238454))

(declare-fun m!8238456 () Bool)

(assert (=> b!7804251 m!8238456))

(declare-fun m!8238458 () Bool)

(assert (=> b!7804248 m!8238458))

(declare-fun m!8238460 () Bool)

(assert (=> b!7804248 m!8238460))

(declare-fun m!8238462 () Bool)

(assert (=> b!7804248 m!8238462))

(declare-fun m!8238464 () Bool)

(assert (=> b!7804248 m!8238464))

(declare-fun m!8238466 () Bool)

(assert (=> b!7804253 m!8238466))

(declare-fun m!8238468 () Bool)

(assert (=> b!7804249 m!8238468))

(declare-fun m!8238470 () Bool)

(assert (=> b!7804247 m!8238470))

(declare-fun m!8238472 () Bool)

(assert (=> b!7804247 m!8238472))

(declare-fun m!8238474 () Bool)

(assert (=> b!7804247 m!8238474))

(declare-fun m!8238476 () Bool)

(assert (=> b!7804247 m!8238476))

(declare-fun m!8238478 () Bool)

(assert (=> b!7804247 m!8238478))

(declare-fun m!8238480 () Bool)

(assert (=> b!7804255 m!8238480))

(check-sat (not b!7804248) (not b!7804257) (not b!7804253) (not b!7804262) (not b!7804251) (not b!7804255) (not b!7804258) (not b!7804260) (not b!7804256) tp_is_empty!52121 (not b!7804261) (not b!7804246) (not b!7804249) (not b!7804254) (not b!7804259) (not start!741366) (not b!7804247))
(check-sat)
(get-model)

(declare-fun d!2347813 () Bool)

(declare-fun isEmpty!42246 (Option!17770) Bool)

(assert (=> d!2347813 (= (isDefined!14380 lt!2674978) (not (isEmpty!42246 lt!2674978)))))

(declare-fun bs!1966520 () Bool)

(assert (= bs!1966520 d!2347813))

(declare-fun m!8238482 () Bool)

(assert (=> bs!1966520 m!8238482))

(assert (=> b!7804247 d!2347813))

(declare-fun d!2347815 () Bool)

(declare-fun e!4619832 () Bool)

(assert (=> d!2347815 e!4619832))

(declare-fun res!3108140 () Bool)

(assert (=> d!2347815 (=> (not res!3108140) (not e!4619832))))

(declare-fun lt!2674983 () List!73722)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15622 (List!73722) (InoxSet C!42092))

(assert (=> d!2347815 (= res!3108140 (= (content!15622 lt!2674983) ((_ map or) (content!15622 (Cons!73598 (h!80046 s!14292) (_1!38279 lt!2674974))) (content!15622 (_2!38279 lt!2674974)))))))

(declare-fun e!4619833 () List!73722)

(assert (=> d!2347815 (= lt!2674983 e!4619833)))

(declare-fun c!1437159 () Bool)

(assert (=> d!2347815 (= c!1437159 ((_ is Nil!73598) (Cons!73598 (h!80046 s!14292) (_1!38279 lt!2674974))))))

(assert (=> d!2347815 (= (++!17943 (Cons!73598 (h!80046 s!14292) (_1!38279 lt!2674974)) (_2!38279 lt!2674974)) lt!2674983)))

(declare-fun b!7804294 () Bool)

(declare-fun res!3108139 () Bool)

(assert (=> b!7804294 (=> (not res!3108139) (not e!4619832))))

(declare-fun size!42725 (List!73722) Int)

(assert (=> b!7804294 (= res!3108139 (= (size!42725 lt!2674983) (+ (size!42725 (Cons!73598 (h!80046 s!14292) (_1!38279 lt!2674974))) (size!42725 (_2!38279 lt!2674974)))))))

(declare-fun b!7804295 () Bool)

(assert (=> b!7804295 (= e!4619832 (or (not (= (_2!38279 lt!2674974) Nil!73598)) (= lt!2674983 (Cons!73598 (h!80046 s!14292) (_1!38279 lt!2674974)))))))

(declare-fun b!7804293 () Bool)

(assert (=> b!7804293 (= e!4619833 (Cons!73598 (h!80046 (Cons!73598 (h!80046 s!14292) (_1!38279 lt!2674974))) (++!17943 (t!388457 (Cons!73598 (h!80046 s!14292) (_1!38279 lt!2674974))) (_2!38279 lt!2674974))))))

(declare-fun b!7804292 () Bool)

(assert (=> b!7804292 (= e!4619833 (_2!38279 lt!2674974))))

(assert (= (and d!2347815 c!1437159) b!7804292))

(assert (= (and d!2347815 (not c!1437159)) b!7804293))

(assert (= (and d!2347815 res!3108140) b!7804294))

(assert (= (and b!7804294 res!3108139) b!7804295))

(declare-fun m!8238484 () Bool)

(assert (=> d!2347815 m!8238484))

(declare-fun m!8238486 () Bool)

(assert (=> d!2347815 m!8238486))

(declare-fun m!8238488 () Bool)

(assert (=> d!2347815 m!8238488))

(declare-fun m!8238490 () Bool)

(assert (=> b!7804294 m!8238490))

(declare-fun m!8238492 () Bool)

(assert (=> b!7804294 m!8238492))

(declare-fun m!8238494 () Bool)

(assert (=> b!7804294 m!8238494))

(declare-fun m!8238496 () Bool)

(assert (=> b!7804293 m!8238496))

(assert (=> b!7804247 d!2347815))

(declare-fun d!2347819 () Bool)

(assert (=> d!2347819 (isDefined!14380 (findConcatSeparation!3800 lt!2674971 r2!6217 Nil!73598 (t!388457 s!14292) (t!388457 s!14292)))))

(declare-fun lt!2674987 () Unit!168604)

(declare-fun choose!59553 (Regex!20883 Regex!20883 List!73722) Unit!168604)

(assert (=> d!2347819 (= lt!2674987 (choose!59553 lt!2674971 r2!6217 (t!388457 s!14292)))))

(assert (=> d!2347819 (validRegex!11297 lt!2674971)))

(assert (=> d!2347819 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!382 lt!2674971 r2!6217 (t!388457 s!14292)) lt!2674987)))

(declare-fun bs!1966521 () Bool)

(assert (= bs!1966521 d!2347819))

(assert (=> bs!1966521 m!8238478))

(assert (=> bs!1966521 m!8238478))

(declare-fun m!8238506 () Bool)

(assert (=> bs!1966521 m!8238506))

(declare-fun m!8238508 () Bool)

(assert (=> bs!1966521 m!8238508))

(declare-fun m!8238510 () Bool)

(assert (=> bs!1966521 m!8238510))

(assert (=> b!7804247 d!2347819))

(declare-fun d!2347823 () Bool)

(assert (=> d!2347823 (= (get!26336 lt!2674978) (v!54904 lt!2674978))))

(assert (=> b!7804247 d!2347823))

(declare-fun b!7804405 () Bool)

(declare-fun res!3108199 () Bool)

(declare-fun e!4619892 () Bool)

(assert (=> b!7804405 (=> (not res!3108199) (not e!4619892))))

(declare-fun lt!2675014 () Option!17770)

(assert (=> b!7804405 (= res!3108199 (matchR!10343 lt!2674971 (_1!38279 (get!26336 lt!2675014))))))

(declare-fun d!2347825 () Bool)

(declare-fun e!4619891 () Bool)

(assert (=> d!2347825 e!4619891))

(declare-fun res!3108197 () Bool)

(assert (=> d!2347825 (=> res!3108197 e!4619891)))

(assert (=> d!2347825 (= res!3108197 e!4619892)))

(declare-fun res!3108198 () Bool)

(assert (=> d!2347825 (=> (not res!3108198) (not e!4619892))))

(assert (=> d!2347825 (= res!3108198 (isDefined!14380 lt!2675014))))

(declare-fun e!4619895 () Option!17770)

(assert (=> d!2347825 (= lt!2675014 e!4619895)))

(declare-fun c!1437188 () Bool)

(declare-fun e!4619894 () Bool)

(assert (=> d!2347825 (= c!1437188 e!4619894)))

(declare-fun res!3108200 () Bool)

(assert (=> d!2347825 (=> (not res!3108200) (not e!4619894))))

(assert (=> d!2347825 (= res!3108200 (matchR!10343 lt!2674971 Nil!73598))))

(assert (=> d!2347825 (validRegex!11297 lt!2674971)))

(assert (=> d!2347825 (= (findConcatSeparation!3800 lt!2674971 r2!6217 Nil!73598 (t!388457 s!14292) (t!388457 s!14292)) lt!2675014)))

(declare-fun b!7804406 () Bool)

(declare-fun e!4619893 () Option!17770)

(assert (=> b!7804406 (= e!4619893 None!17769)))

(declare-fun b!7804407 () Bool)

(assert (=> b!7804407 (= e!4619891 (not (isDefined!14380 lt!2675014)))))

(declare-fun b!7804408 () Bool)

(assert (=> b!7804408 (= e!4619895 (Some!17769 (tuple2!69953 Nil!73598 (t!388457 s!14292))))))

(declare-fun b!7804409 () Bool)

(declare-fun lt!2675013 () Unit!168604)

(declare-fun lt!2675012 () Unit!168604)

(assert (=> b!7804409 (= lt!2675013 lt!2675012)))

(assert (=> b!7804409 (= (++!17943 (++!17943 Nil!73598 (Cons!73598 (h!80046 (t!388457 s!14292)) Nil!73598)) (t!388457 (t!388457 s!14292))) (t!388457 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3414 (List!73722 C!42092 List!73722 List!73722) Unit!168604)

(assert (=> b!7804409 (= lt!2675012 (lemmaMoveElementToOtherListKeepsConcatEq!3414 Nil!73598 (h!80046 (t!388457 s!14292)) (t!388457 (t!388457 s!14292)) (t!388457 s!14292)))))

(assert (=> b!7804409 (= e!4619893 (findConcatSeparation!3800 lt!2674971 r2!6217 (++!17943 Nil!73598 (Cons!73598 (h!80046 (t!388457 s!14292)) Nil!73598)) (t!388457 (t!388457 s!14292)) (t!388457 s!14292)))))

(declare-fun b!7804410 () Bool)

(assert (=> b!7804410 (= e!4619892 (= (++!17943 (_1!38279 (get!26336 lt!2675014)) (_2!38279 (get!26336 lt!2675014))) (t!388457 s!14292)))))

(declare-fun b!7804411 () Bool)

(assert (=> b!7804411 (= e!4619895 e!4619893)))

(declare-fun c!1437187 () Bool)

(assert (=> b!7804411 (= c!1437187 ((_ is Nil!73598) (t!388457 s!14292)))))

(declare-fun b!7804412 () Bool)

(assert (=> b!7804412 (= e!4619894 (matchR!10343 r2!6217 (t!388457 s!14292)))))

(declare-fun b!7804413 () Bool)

(declare-fun res!3108196 () Bool)

(assert (=> b!7804413 (=> (not res!3108196) (not e!4619892))))

(assert (=> b!7804413 (= res!3108196 (matchR!10343 r2!6217 (_2!38279 (get!26336 lt!2675014))))))

(assert (= (and d!2347825 res!3108200) b!7804412))

(assert (= (and d!2347825 c!1437188) b!7804408))

(assert (= (and d!2347825 (not c!1437188)) b!7804411))

(assert (= (and b!7804411 c!1437187) b!7804406))

(assert (= (and b!7804411 (not c!1437187)) b!7804409))

(assert (= (and d!2347825 res!3108198) b!7804405))

(assert (= (and b!7804405 res!3108199) b!7804413))

(assert (= (and b!7804413 res!3108196) b!7804410))

(assert (= (and d!2347825 (not res!3108197)) b!7804407))

(declare-fun m!8238572 () Bool)

(assert (=> b!7804407 m!8238572))

(declare-fun m!8238574 () Bool)

(assert (=> b!7804412 m!8238574))

(declare-fun m!8238576 () Bool)

(assert (=> b!7804410 m!8238576))

(declare-fun m!8238578 () Bool)

(assert (=> b!7804410 m!8238578))

(assert (=> d!2347825 m!8238572))

(declare-fun m!8238580 () Bool)

(assert (=> d!2347825 m!8238580))

(assert (=> d!2347825 m!8238510))

(assert (=> b!7804413 m!8238576))

(declare-fun m!8238582 () Bool)

(assert (=> b!7804413 m!8238582))

(assert (=> b!7804405 m!8238576))

(declare-fun m!8238584 () Bool)

(assert (=> b!7804405 m!8238584))

(declare-fun m!8238586 () Bool)

(assert (=> b!7804409 m!8238586))

(assert (=> b!7804409 m!8238586))

(declare-fun m!8238588 () Bool)

(assert (=> b!7804409 m!8238588))

(declare-fun m!8238592 () Bool)

(assert (=> b!7804409 m!8238592))

(assert (=> b!7804409 m!8238586))

(declare-fun m!8238600 () Bool)

(assert (=> b!7804409 m!8238600))

(assert (=> b!7804247 d!2347825))

(declare-fun b!7804597 () Bool)

(declare-fun res!3108267 () Bool)

(declare-fun e!4619994 () Bool)

(assert (=> b!7804597 (=> res!3108267 e!4619994)))

(assert (=> b!7804597 (= res!3108267 (not ((_ is ElementMatch!20883) lt!2674975)))))

(declare-fun e!4619993 () Bool)

(assert (=> b!7804597 (= e!4619993 e!4619994)))

(declare-fun b!7804598 () Bool)

(declare-fun e!4619988 () Bool)

(declare-fun head!15958 (List!73722) C!42092)

(assert (=> b!7804598 (= e!4619988 (= (head!15958 s!14292) (c!1437146 lt!2674975)))))

(declare-fun b!7804599 () Bool)

(declare-fun e!4619992 () Bool)

(declare-fun lt!2675030 () Bool)

(declare-fun call!723863 () Bool)

(assert (=> b!7804599 (= e!4619992 (= lt!2675030 call!723863))))

(declare-fun d!2347841 () Bool)

(assert (=> d!2347841 e!4619992))

(declare-fun c!1437222 () Bool)

(assert (=> d!2347841 (= c!1437222 ((_ is EmptyExpr!20883) lt!2674975))))

(declare-fun e!4619991 () Bool)

(assert (=> d!2347841 (= lt!2675030 e!4619991)))

(declare-fun c!1437221 () Bool)

(declare-fun isEmpty!42247 (List!73722) Bool)

(assert (=> d!2347841 (= c!1437221 (isEmpty!42247 s!14292))))

(assert (=> d!2347841 (validRegex!11297 lt!2674975)))

(assert (=> d!2347841 (= (matchR!10343 lt!2674975 s!14292) lt!2675030)))

(declare-fun b!7804600 () Bool)

(declare-fun res!3108271 () Bool)

(assert (=> b!7804600 (=> (not res!3108271) (not e!4619988))))

(assert (=> b!7804600 (= res!3108271 (not call!723863))))

(declare-fun b!7804601 () Bool)

(declare-fun res!3108273 () Bool)

(declare-fun e!4619990 () Bool)

(assert (=> b!7804601 (=> res!3108273 e!4619990)))

(declare-fun tail!15499 (List!73722) List!73722)

(assert (=> b!7804601 (= res!3108273 (not (isEmpty!42247 (tail!15499 s!14292))))))

(declare-fun b!7804602 () Bool)

(declare-fun e!4619989 () Bool)

(assert (=> b!7804602 (= e!4619994 e!4619989)))

(declare-fun res!3108274 () Bool)

(assert (=> b!7804602 (=> (not res!3108274) (not e!4619989))))

(assert (=> b!7804602 (= res!3108274 (not lt!2675030))))

(declare-fun b!7804603 () Bool)

(assert (=> b!7804603 (= e!4619991 (nullable!9267 lt!2674975))))

(declare-fun b!7804604 () Bool)

(assert (=> b!7804604 (= e!4619991 (matchR!10343 (derivativeStep!6220 lt!2674975 (head!15958 s!14292)) (tail!15499 s!14292)))))

(declare-fun b!7804605 () Bool)

(assert (=> b!7804605 (= e!4619990 (not (= (head!15958 s!14292) (c!1437146 lt!2674975))))))

(declare-fun b!7804606 () Bool)

(assert (=> b!7804606 (= e!4619992 e!4619993)))

(declare-fun c!1437220 () Bool)

(assert (=> b!7804606 (= c!1437220 ((_ is EmptyLang!20883) lt!2674975))))

(declare-fun b!7804607 () Bool)

(declare-fun res!3108269 () Bool)

(assert (=> b!7804607 (=> res!3108269 e!4619994)))

(assert (=> b!7804607 (= res!3108269 e!4619988)))

(declare-fun res!3108272 () Bool)

(assert (=> b!7804607 (=> (not res!3108272) (not e!4619988))))

(assert (=> b!7804607 (= res!3108272 lt!2675030)))

(declare-fun b!7804608 () Bool)

(assert (=> b!7804608 (= e!4619993 (not lt!2675030))))

(declare-fun bm!723858 () Bool)

(assert (=> bm!723858 (= call!723863 (isEmpty!42247 s!14292))))

(declare-fun b!7804609 () Bool)

(declare-fun res!3108270 () Bool)

(assert (=> b!7804609 (=> (not res!3108270) (not e!4619988))))

(assert (=> b!7804609 (= res!3108270 (isEmpty!42247 (tail!15499 s!14292)))))

(declare-fun b!7804610 () Bool)

(assert (=> b!7804610 (= e!4619989 e!4619990)))

(declare-fun res!3108268 () Bool)

(assert (=> b!7804610 (=> res!3108268 e!4619990)))

(assert (=> b!7804610 (= res!3108268 call!723863)))

(assert (= (and d!2347841 c!1437221) b!7804603))

(assert (= (and d!2347841 (not c!1437221)) b!7804604))

(assert (= (and d!2347841 c!1437222) b!7804599))

(assert (= (and d!2347841 (not c!1437222)) b!7804606))

(assert (= (and b!7804606 c!1437220) b!7804608))

(assert (= (and b!7804606 (not c!1437220)) b!7804597))

(assert (= (and b!7804597 (not res!3108267)) b!7804607))

(assert (= (and b!7804607 res!3108272) b!7804600))

(assert (= (and b!7804600 res!3108271) b!7804609))

(assert (= (and b!7804609 res!3108270) b!7804598))

(assert (= (and b!7804607 (not res!3108269)) b!7804602))

(assert (= (and b!7804602 res!3108274) b!7804610))

(assert (= (and b!7804610 (not res!3108268)) b!7804601))

(assert (= (and b!7804601 (not res!3108273)) b!7804605))

(assert (= (or b!7804599 b!7804600 b!7804610) bm!723858))

(declare-fun m!8238658 () Bool)

(assert (=> d!2347841 m!8238658))

(declare-fun m!8238660 () Bool)

(assert (=> d!2347841 m!8238660))

(declare-fun m!8238662 () Bool)

(assert (=> b!7804601 m!8238662))

(assert (=> b!7804601 m!8238662))

(declare-fun m!8238664 () Bool)

(assert (=> b!7804601 m!8238664))

(declare-fun m!8238666 () Bool)

(assert (=> b!7804604 m!8238666))

(assert (=> b!7804604 m!8238666))

(declare-fun m!8238668 () Bool)

(assert (=> b!7804604 m!8238668))

(assert (=> b!7804604 m!8238662))

(assert (=> b!7804604 m!8238668))

(assert (=> b!7804604 m!8238662))

(declare-fun m!8238670 () Bool)

(assert (=> b!7804604 m!8238670))

(assert (=> b!7804605 m!8238666))

(assert (=> b!7804609 m!8238662))

(assert (=> b!7804609 m!8238662))

(assert (=> b!7804609 m!8238664))

(assert (=> bm!723858 m!8238658))

(declare-fun m!8238672 () Bool)

(assert (=> b!7804603 m!8238672))

(assert (=> b!7804598 m!8238666))

(assert (=> b!7804253 d!2347841))

(declare-fun b!7804611 () Bool)

(declare-fun res!3108275 () Bool)

(declare-fun e!4620001 () Bool)

(assert (=> b!7804611 (=> res!3108275 e!4620001)))

(assert (=> b!7804611 (= res!3108275 (not ((_ is ElementMatch!20883) lt!2674972)))))

(declare-fun e!4620000 () Bool)

(assert (=> b!7804611 (= e!4620000 e!4620001)))

(declare-fun b!7804612 () Bool)

(declare-fun e!4619995 () Bool)

(assert (=> b!7804612 (= e!4619995 (= (head!15958 (t!388457 s!14292)) (c!1437146 lt!2674972)))))

(declare-fun b!7804613 () Bool)

(declare-fun e!4619999 () Bool)

(declare-fun lt!2675031 () Bool)

(declare-fun call!723864 () Bool)

(assert (=> b!7804613 (= e!4619999 (= lt!2675031 call!723864))))

(declare-fun d!2347859 () Bool)

(assert (=> d!2347859 e!4619999))

(declare-fun c!1437225 () Bool)

(assert (=> d!2347859 (= c!1437225 ((_ is EmptyExpr!20883) lt!2674972))))

(declare-fun e!4619998 () Bool)

(assert (=> d!2347859 (= lt!2675031 e!4619998)))

(declare-fun c!1437224 () Bool)

(assert (=> d!2347859 (= c!1437224 (isEmpty!42247 (t!388457 s!14292)))))

(assert (=> d!2347859 (validRegex!11297 lt!2674972)))

(assert (=> d!2347859 (= (matchR!10343 lt!2674972 (t!388457 s!14292)) lt!2675031)))

(declare-fun b!7804614 () Bool)

(declare-fun res!3108279 () Bool)

(assert (=> b!7804614 (=> (not res!3108279) (not e!4619995))))

(assert (=> b!7804614 (= res!3108279 (not call!723864))))

(declare-fun b!7804615 () Bool)

(declare-fun res!3108281 () Bool)

(declare-fun e!4619997 () Bool)

(assert (=> b!7804615 (=> res!3108281 e!4619997)))

(assert (=> b!7804615 (= res!3108281 (not (isEmpty!42247 (tail!15499 (t!388457 s!14292)))))))

(declare-fun b!7804616 () Bool)

(declare-fun e!4619996 () Bool)

(assert (=> b!7804616 (= e!4620001 e!4619996)))

(declare-fun res!3108282 () Bool)

(assert (=> b!7804616 (=> (not res!3108282) (not e!4619996))))

(assert (=> b!7804616 (= res!3108282 (not lt!2675031))))

(declare-fun b!7804617 () Bool)

(assert (=> b!7804617 (= e!4619998 (nullable!9267 lt!2674972))))

(declare-fun b!7804618 () Bool)

(assert (=> b!7804618 (= e!4619998 (matchR!10343 (derivativeStep!6220 lt!2674972 (head!15958 (t!388457 s!14292))) (tail!15499 (t!388457 s!14292))))))

(declare-fun b!7804619 () Bool)

(assert (=> b!7804619 (= e!4619997 (not (= (head!15958 (t!388457 s!14292)) (c!1437146 lt!2674972))))))

(declare-fun b!7804620 () Bool)

(assert (=> b!7804620 (= e!4619999 e!4620000)))

(declare-fun c!1437223 () Bool)

(assert (=> b!7804620 (= c!1437223 ((_ is EmptyLang!20883) lt!2674972))))

(declare-fun b!7804621 () Bool)

(declare-fun res!3108277 () Bool)

(assert (=> b!7804621 (=> res!3108277 e!4620001)))

(assert (=> b!7804621 (= res!3108277 e!4619995)))

(declare-fun res!3108280 () Bool)

(assert (=> b!7804621 (=> (not res!3108280) (not e!4619995))))

(assert (=> b!7804621 (= res!3108280 lt!2675031)))

(declare-fun b!7804622 () Bool)

(assert (=> b!7804622 (= e!4620000 (not lt!2675031))))

(declare-fun bm!723859 () Bool)

(assert (=> bm!723859 (= call!723864 (isEmpty!42247 (t!388457 s!14292)))))

(declare-fun b!7804623 () Bool)

(declare-fun res!3108278 () Bool)

(assert (=> b!7804623 (=> (not res!3108278) (not e!4619995))))

(assert (=> b!7804623 (= res!3108278 (isEmpty!42247 (tail!15499 (t!388457 s!14292))))))

(declare-fun b!7804624 () Bool)

(assert (=> b!7804624 (= e!4619996 e!4619997)))

(declare-fun res!3108276 () Bool)

(assert (=> b!7804624 (=> res!3108276 e!4619997)))

(assert (=> b!7804624 (= res!3108276 call!723864)))

(assert (= (and d!2347859 c!1437224) b!7804617))

(assert (= (and d!2347859 (not c!1437224)) b!7804618))

(assert (= (and d!2347859 c!1437225) b!7804613))

(assert (= (and d!2347859 (not c!1437225)) b!7804620))

(assert (= (and b!7804620 c!1437223) b!7804622))

(assert (= (and b!7804620 (not c!1437223)) b!7804611))

(assert (= (and b!7804611 (not res!3108275)) b!7804621))

(assert (= (and b!7804621 res!3108280) b!7804614))

(assert (= (and b!7804614 res!3108279) b!7804623))

(assert (= (and b!7804623 res!3108278) b!7804612))

(assert (= (and b!7804621 (not res!3108277)) b!7804616))

(assert (= (and b!7804616 res!3108282) b!7804624))

(assert (= (and b!7804624 (not res!3108276)) b!7804615))

(assert (= (and b!7804615 (not res!3108281)) b!7804619))

(assert (= (or b!7804613 b!7804614 b!7804624) bm!723859))

(declare-fun m!8238674 () Bool)

(assert (=> d!2347859 m!8238674))

(declare-fun m!8238676 () Bool)

(assert (=> d!2347859 m!8238676))

(declare-fun m!8238678 () Bool)

(assert (=> b!7804615 m!8238678))

(assert (=> b!7804615 m!8238678))

(declare-fun m!8238680 () Bool)

(assert (=> b!7804615 m!8238680))

(declare-fun m!8238682 () Bool)

(assert (=> b!7804618 m!8238682))

(assert (=> b!7804618 m!8238682))

(declare-fun m!8238684 () Bool)

(assert (=> b!7804618 m!8238684))

(assert (=> b!7804618 m!8238678))

(assert (=> b!7804618 m!8238684))

(assert (=> b!7804618 m!8238678))

(declare-fun m!8238686 () Bool)

(assert (=> b!7804618 m!8238686))

(assert (=> b!7804619 m!8238682))

(assert (=> b!7804623 m!8238678))

(assert (=> b!7804623 m!8238678))

(assert (=> b!7804623 m!8238680))

(assert (=> bm!723859 m!8238674))

(declare-fun m!8238688 () Bool)

(assert (=> b!7804617 m!8238688))

(assert (=> b!7804612 m!8238682))

(assert (=> b!7804251 d!2347859))

(declare-fun bm!723868 () Bool)

(declare-fun call!723873 () Regex!20883)

(declare-fun call!723874 () Regex!20883)

(assert (=> bm!723868 (= call!723873 call!723874)))

(declare-fun bm!723869 () Bool)

(declare-fun call!723876 () Regex!20883)

(assert (=> bm!723869 (= call!723874 call!723876)))

(declare-fun b!7804645 () Bool)

(declare-fun e!4620014 () Regex!20883)

(declare-fun e!4620012 () Regex!20883)

(assert (=> b!7804645 (= e!4620014 e!4620012)))

(declare-fun c!1437237 () Bool)

(assert (=> b!7804645 (= c!1437237 ((_ is ElementMatch!20883) lt!2674975))))

(declare-fun b!7804646 () Bool)

(declare-fun e!4620013 () Regex!20883)

(assert (=> b!7804646 (= e!4620013 (Union!20883 (Concat!29728 call!723873 (regTwo!42278 lt!2674975)) EmptyLang!20883))))

(declare-fun b!7804647 () Bool)

(declare-fun e!4620016 () Regex!20883)

(assert (=> b!7804647 (= e!4620016 (Concat!29728 call!723874 lt!2674975))))

(declare-fun b!7804648 () Bool)

(declare-fun c!1437240 () Bool)

(assert (=> b!7804648 (= c!1437240 ((_ is Union!20883) lt!2674975))))

(declare-fun e!4620015 () Regex!20883)

(assert (=> b!7804648 (= e!4620012 e!4620015)))

(declare-fun b!7804649 () Bool)

(assert (=> b!7804649 (= e!4620012 (ite (= (h!80046 s!14292) (c!1437146 lt!2674975)) EmptyExpr!20883 EmptyLang!20883))))

(declare-fun d!2347861 () Bool)

(declare-fun lt!2675034 () Regex!20883)

(assert (=> d!2347861 (validRegex!11297 lt!2675034)))

(assert (=> d!2347861 (= lt!2675034 e!4620014)))

(declare-fun c!1437238 () Bool)

(assert (=> d!2347861 (= c!1437238 (or ((_ is EmptyExpr!20883) lt!2674975) ((_ is EmptyLang!20883) lt!2674975)))))

(assert (=> d!2347861 (validRegex!11297 lt!2674975)))

(assert (=> d!2347861 (= (derivativeStep!6220 lt!2674975 (h!80046 s!14292)) lt!2675034)))

(declare-fun call!723875 () Regex!20883)

(declare-fun bm!723870 () Bool)

(assert (=> bm!723870 (= call!723875 (derivativeStep!6220 (ite c!1437240 (regOne!42279 lt!2674975) (regOne!42278 lt!2674975)) (h!80046 s!14292)))))

(declare-fun bm!723871 () Bool)

(declare-fun c!1437236 () Bool)

(declare-fun c!1437239 () Bool)

(assert (=> bm!723871 (= call!723876 (derivativeStep!6220 (ite c!1437240 (regTwo!42279 lt!2674975) (ite c!1437236 (reg!21212 lt!2674975) (ite c!1437239 (regTwo!42278 lt!2674975) (regOne!42278 lt!2674975)))) (h!80046 s!14292)))))

(declare-fun b!7804650 () Bool)

(assert (=> b!7804650 (= e!4620015 (Union!20883 call!723875 call!723876))))

(declare-fun b!7804651 () Bool)

(assert (=> b!7804651 (= e!4620015 e!4620016)))

(assert (=> b!7804651 (= c!1437236 ((_ is Star!20883) lt!2674975))))

(declare-fun b!7804652 () Bool)

(assert (=> b!7804652 (= e!4620014 EmptyLang!20883)))

(declare-fun b!7804653 () Bool)

(assert (=> b!7804653 (= e!4620013 (Union!20883 (Concat!29728 call!723875 (regTwo!42278 lt!2674975)) call!723873))))

(declare-fun b!7804654 () Bool)

(assert (=> b!7804654 (= c!1437239 (nullable!9267 (regOne!42278 lt!2674975)))))

(assert (=> b!7804654 (= e!4620016 e!4620013)))

(assert (= (and d!2347861 c!1437238) b!7804652))

(assert (= (and d!2347861 (not c!1437238)) b!7804645))

(assert (= (and b!7804645 c!1437237) b!7804649))

(assert (= (and b!7804645 (not c!1437237)) b!7804648))

(assert (= (and b!7804648 c!1437240) b!7804650))

(assert (= (and b!7804648 (not c!1437240)) b!7804651))

(assert (= (and b!7804651 c!1437236) b!7804647))

(assert (= (and b!7804651 (not c!1437236)) b!7804654))

(assert (= (and b!7804654 c!1437239) b!7804653))

(assert (= (and b!7804654 (not c!1437239)) b!7804646))

(assert (= (or b!7804653 b!7804646) bm!723868))

(assert (= (or b!7804647 bm!723868) bm!723869))

(assert (= (or b!7804650 bm!723869) bm!723871))

(assert (= (or b!7804650 b!7804653) bm!723870))

(declare-fun m!8238690 () Bool)

(assert (=> d!2347861 m!8238690))

(assert (=> d!2347861 m!8238660))

(declare-fun m!8238692 () Bool)

(assert (=> bm!723870 m!8238692))

(declare-fun m!8238694 () Bool)

(assert (=> bm!723871 m!8238694))

(declare-fun m!8238696 () Bool)

(assert (=> b!7804654 m!8238696))

(assert (=> b!7804251 d!2347861))

(declare-fun d!2347863 () Bool)

(declare-fun nullableFct!3646 (Regex!20883) Bool)

(assert (=> d!2347863 (= (nullable!9267 r1!6279) (nullableFct!3646 r1!6279))))

(declare-fun bs!1966526 () Bool)

(assert (= bs!1966526 d!2347863))

(declare-fun m!8238698 () Bool)

(assert (=> bs!1966526 m!8238698))

(assert (=> b!7804262 d!2347863))

(declare-fun bm!723872 () Bool)

(declare-fun call!723877 () Regex!20883)

(declare-fun call!723878 () Regex!20883)

(assert (=> bm!723872 (= call!723877 call!723878)))

(declare-fun bm!723873 () Bool)

(declare-fun call!723880 () Regex!20883)

(assert (=> bm!723873 (= call!723878 call!723880)))

(declare-fun b!7804655 () Bool)

(declare-fun e!4620019 () Regex!20883)

(declare-fun e!4620017 () Regex!20883)

(assert (=> b!7804655 (= e!4620019 e!4620017)))

(declare-fun c!1437242 () Bool)

(assert (=> b!7804655 (= c!1437242 ((_ is ElementMatch!20883) r1!6279))))

(declare-fun b!7804656 () Bool)

(declare-fun e!4620018 () Regex!20883)

(assert (=> b!7804656 (= e!4620018 (Union!20883 (Concat!29728 call!723877 (regTwo!42278 r1!6279)) EmptyLang!20883))))

(declare-fun b!7804657 () Bool)

(declare-fun e!4620021 () Regex!20883)

(assert (=> b!7804657 (= e!4620021 (Concat!29728 call!723878 r1!6279))))

(declare-fun b!7804658 () Bool)

(declare-fun c!1437245 () Bool)

(assert (=> b!7804658 (= c!1437245 ((_ is Union!20883) r1!6279))))

(declare-fun e!4620020 () Regex!20883)

(assert (=> b!7804658 (= e!4620017 e!4620020)))

(declare-fun b!7804659 () Bool)

(assert (=> b!7804659 (= e!4620017 (ite (= (h!80046 s!14292) (c!1437146 r1!6279)) EmptyExpr!20883 EmptyLang!20883))))

(declare-fun d!2347865 () Bool)

(declare-fun lt!2675035 () Regex!20883)

(assert (=> d!2347865 (validRegex!11297 lt!2675035)))

(assert (=> d!2347865 (= lt!2675035 e!4620019)))

(declare-fun c!1437243 () Bool)

(assert (=> d!2347865 (= c!1437243 (or ((_ is EmptyExpr!20883) r1!6279) ((_ is EmptyLang!20883) r1!6279)))))

(assert (=> d!2347865 (validRegex!11297 r1!6279)))

(assert (=> d!2347865 (= (derivativeStep!6220 r1!6279 (h!80046 s!14292)) lt!2675035)))

(declare-fun bm!723874 () Bool)

(declare-fun call!723879 () Regex!20883)

(assert (=> bm!723874 (= call!723879 (derivativeStep!6220 (ite c!1437245 (regOne!42279 r1!6279) (regOne!42278 r1!6279)) (h!80046 s!14292)))))

(declare-fun c!1437241 () Bool)

(declare-fun c!1437244 () Bool)

(declare-fun bm!723875 () Bool)

(assert (=> bm!723875 (= call!723880 (derivativeStep!6220 (ite c!1437245 (regTwo!42279 r1!6279) (ite c!1437241 (reg!21212 r1!6279) (ite c!1437244 (regTwo!42278 r1!6279) (regOne!42278 r1!6279)))) (h!80046 s!14292)))))

(declare-fun b!7804660 () Bool)

(assert (=> b!7804660 (= e!4620020 (Union!20883 call!723879 call!723880))))

(declare-fun b!7804661 () Bool)

(assert (=> b!7804661 (= e!4620020 e!4620021)))

(assert (=> b!7804661 (= c!1437241 ((_ is Star!20883) r1!6279))))

(declare-fun b!7804662 () Bool)

(assert (=> b!7804662 (= e!4620019 EmptyLang!20883)))

(declare-fun b!7804663 () Bool)

(assert (=> b!7804663 (= e!4620018 (Union!20883 (Concat!29728 call!723879 (regTwo!42278 r1!6279)) call!723877))))

(declare-fun b!7804664 () Bool)

(assert (=> b!7804664 (= c!1437244 (nullable!9267 (regOne!42278 r1!6279)))))

(assert (=> b!7804664 (= e!4620021 e!4620018)))

(assert (= (and d!2347865 c!1437243) b!7804662))

(assert (= (and d!2347865 (not c!1437243)) b!7804655))

(assert (= (and b!7804655 c!1437242) b!7804659))

(assert (= (and b!7804655 (not c!1437242)) b!7804658))

(assert (= (and b!7804658 c!1437245) b!7804660))

(assert (= (and b!7804658 (not c!1437245)) b!7804661))

(assert (= (and b!7804661 c!1437241) b!7804657))

(assert (= (and b!7804661 (not c!1437241)) b!7804664))

(assert (= (and b!7804664 c!1437244) b!7804663))

(assert (= (and b!7804664 (not c!1437244)) b!7804656))

(assert (= (or b!7804663 b!7804656) bm!723872))

(assert (= (or b!7804657 bm!723872) bm!723873))

(assert (= (or b!7804660 bm!723873) bm!723875))

(assert (= (or b!7804660 b!7804663) bm!723874))

(declare-fun m!8238700 () Bool)

(assert (=> d!2347865 m!8238700))

(assert (=> d!2347865 m!8238450))

(declare-fun m!8238702 () Bool)

(assert (=> bm!723874 m!8238702))

(declare-fun m!8238704 () Bool)

(assert (=> bm!723875 m!8238704))

(declare-fun m!8238706 () Bool)

(assert (=> b!7804664 m!8238706))

(assert (=> b!7804255 d!2347865))

(declare-fun bm!723882 () Bool)

(declare-fun call!723888 () Bool)

(declare-fun c!1437251 () Bool)

(assert (=> bm!723882 (= call!723888 (validRegex!11297 (ite c!1437251 (regOne!42279 r2!6217) (regOne!42278 r2!6217))))))

(declare-fun b!7804683 () Bool)

(declare-fun e!4620036 () Bool)

(declare-fun e!4620041 () Bool)

(assert (=> b!7804683 (= e!4620036 e!4620041)))

(declare-fun res!3108295 () Bool)

(assert (=> b!7804683 (= res!3108295 (not (nullable!9267 (reg!21212 r2!6217))))))

(assert (=> b!7804683 (=> (not res!3108295) (not e!4620041))))

(declare-fun b!7804684 () Bool)

(declare-fun e!4620038 () Bool)

(declare-fun call!723887 () Bool)

(assert (=> b!7804684 (= e!4620038 call!723887)))

(declare-fun b!7804685 () Bool)

(declare-fun res!3108296 () Bool)

(declare-fun e!4620042 () Bool)

(assert (=> b!7804685 (=> res!3108296 e!4620042)))

(assert (=> b!7804685 (= res!3108296 (not ((_ is Concat!29728) r2!6217)))))

(declare-fun e!4620039 () Bool)

(assert (=> b!7804685 (= e!4620039 e!4620042)))

(declare-fun b!7804686 () Bool)

(declare-fun call!723889 () Bool)

(assert (=> b!7804686 (= e!4620041 call!723889)))

(declare-fun c!1437250 () Bool)

(declare-fun bm!723883 () Bool)

(assert (=> bm!723883 (= call!723889 (validRegex!11297 (ite c!1437250 (reg!21212 r2!6217) (ite c!1437251 (regTwo!42279 r2!6217) (regTwo!42278 r2!6217)))))))

(declare-fun b!7804687 () Bool)

(assert (=> b!7804687 (= e!4620036 e!4620039)))

(assert (=> b!7804687 (= c!1437251 ((_ is Union!20883) r2!6217))))

(declare-fun b!7804688 () Bool)

(declare-fun e!4620040 () Bool)

(assert (=> b!7804688 (= e!4620040 call!723887)))

(declare-fun b!7804689 () Bool)

(assert (=> b!7804689 (= e!4620042 e!4620038)))

(declare-fun res!3108297 () Bool)

(assert (=> b!7804689 (=> (not res!3108297) (not e!4620038))))

(assert (=> b!7804689 (= res!3108297 call!723888)))

(declare-fun b!7804691 () Bool)

(declare-fun res!3108293 () Bool)

(assert (=> b!7804691 (=> (not res!3108293) (not e!4620040))))

(assert (=> b!7804691 (= res!3108293 call!723888)))

(assert (=> b!7804691 (= e!4620039 e!4620040)))

(declare-fun bm!723884 () Bool)

(assert (=> bm!723884 (= call!723887 call!723889)))

(declare-fun b!7804690 () Bool)

(declare-fun e!4620037 () Bool)

(assert (=> b!7804690 (= e!4620037 e!4620036)))

(assert (=> b!7804690 (= c!1437250 ((_ is Star!20883) r2!6217))))

(declare-fun d!2347867 () Bool)

(declare-fun res!3108294 () Bool)

(assert (=> d!2347867 (=> res!3108294 e!4620037)))

(assert (=> d!2347867 (= res!3108294 ((_ is ElementMatch!20883) r2!6217))))

(assert (=> d!2347867 (= (validRegex!11297 r2!6217) e!4620037)))

(assert (= (and d!2347867 (not res!3108294)) b!7804690))

(assert (= (and b!7804690 c!1437250) b!7804683))

(assert (= (and b!7804690 (not c!1437250)) b!7804687))

(assert (= (and b!7804683 res!3108295) b!7804686))

(assert (= (and b!7804687 c!1437251) b!7804691))

(assert (= (and b!7804687 (not c!1437251)) b!7804685))

(assert (= (and b!7804691 res!3108293) b!7804688))

(assert (= (and b!7804685 (not res!3108296)) b!7804689))

(assert (= (and b!7804689 res!3108297) b!7804684))

(assert (= (or b!7804691 b!7804689) bm!723882))

(assert (= (or b!7804688 b!7804684) bm!723884))

(assert (= (or b!7804686 bm!723884) bm!723883))

(declare-fun m!8238708 () Bool)

(assert (=> bm!723882 m!8238708))

(declare-fun m!8238710 () Bool)

(assert (=> b!7804683 m!8238710))

(declare-fun m!8238712 () Bool)

(assert (=> bm!723883 m!8238712))

(assert (=> b!7804260 d!2347867))

(declare-fun bm!723885 () Bool)

(declare-fun call!723891 () Bool)

(declare-fun c!1437253 () Bool)

(assert (=> bm!723885 (= call!723891 (validRegex!11297 (ite c!1437253 (regOne!42279 r1!6279) (regOne!42278 r1!6279))))))

(declare-fun b!7804692 () Bool)

(declare-fun e!4620043 () Bool)

(declare-fun e!4620048 () Bool)

(assert (=> b!7804692 (= e!4620043 e!4620048)))

(declare-fun res!3108300 () Bool)

(assert (=> b!7804692 (= res!3108300 (not (nullable!9267 (reg!21212 r1!6279))))))

(assert (=> b!7804692 (=> (not res!3108300) (not e!4620048))))

(declare-fun b!7804693 () Bool)

(declare-fun e!4620045 () Bool)

(declare-fun call!723890 () Bool)

(assert (=> b!7804693 (= e!4620045 call!723890)))

(declare-fun b!7804694 () Bool)

(declare-fun res!3108301 () Bool)

(declare-fun e!4620049 () Bool)

(assert (=> b!7804694 (=> res!3108301 e!4620049)))

(assert (=> b!7804694 (= res!3108301 (not ((_ is Concat!29728) r1!6279)))))

(declare-fun e!4620046 () Bool)

(assert (=> b!7804694 (= e!4620046 e!4620049)))

(declare-fun b!7804695 () Bool)

(declare-fun call!723892 () Bool)

(assert (=> b!7804695 (= e!4620048 call!723892)))

(declare-fun bm!723886 () Bool)

(declare-fun c!1437252 () Bool)

(assert (=> bm!723886 (= call!723892 (validRegex!11297 (ite c!1437252 (reg!21212 r1!6279) (ite c!1437253 (regTwo!42279 r1!6279) (regTwo!42278 r1!6279)))))))

(declare-fun b!7804696 () Bool)

(assert (=> b!7804696 (= e!4620043 e!4620046)))

(assert (=> b!7804696 (= c!1437253 ((_ is Union!20883) r1!6279))))

(declare-fun b!7804697 () Bool)

(declare-fun e!4620047 () Bool)

(assert (=> b!7804697 (= e!4620047 call!723890)))

(declare-fun b!7804698 () Bool)

(assert (=> b!7804698 (= e!4620049 e!4620045)))

(declare-fun res!3108302 () Bool)

(assert (=> b!7804698 (=> (not res!3108302) (not e!4620045))))

(assert (=> b!7804698 (= res!3108302 call!723891)))

(declare-fun b!7804700 () Bool)

(declare-fun res!3108298 () Bool)

(assert (=> b!7804700 (=> (not res!3108298) (not e!4620047))))

(assert (=> b!7804700 (= res!3108298 call!723891)))

(assert (=> b!7804700 (= e!4620046 e!4620047)))

(declare-fun bm!723887 () Bool)

(assert (=> bm!723887 (= call!723890 call!723892)))

(declare-fun b!7804699 () Bool)

(declare-fun e!4620044 () Bool)

(assert (=> b!7804699 (= e!4620044 e!4620043)))

(assert (=> b!7804699 (= c!1437252 ((_ is Star!20883) r1!6279))))

(declare-fun d!2347869 () Bool)

(declare-fun res!3108299 () Bool)

(assert (=> d!2347869 (=> res!3108299 e!4620044)))

(assert (=> d!2347869 (= res!3108299 ((_ is ElementMatch!20883) r1!6279))))

(assert (=> d!2347869 (= (validRegex!11297 r1!6279) e!4620044)))

(assert (= (and d!2347869 (not res!3108299)) b!7804699))

(assert (= (and b!7804699 c!1437252) b!7804692))

(assert (= (and b!7804699 (not c!1437252)) b!7804696))

(assert (= (and b!7804692 res!3108300) b!7804695))

(assert (= (and b!7804696 c!1437253) b!7804700))

(assert (= (and b!7804696 (not c!1437253)) b!7804694))

(assert (= (and b!7804700 res!3108298) b!7804697))

(assert (= (and b!7804694 (not res!3108301)) b!7804698))

(assert (= (and b!7804698 res!3108302) b!7804693))

(assert (= (or b!7804700 b!7804698) bm!723885))

(assert (= (or b!7804697 b!7804693) bm!723887))

(assert (= (or b!7804695 bm!723887) bm!723886))

(declare-fun m!8238714 () Bool)

(assert (=> bm!723885 m!8238714))

(declare-fun m!8238716 () Bool)

(assert (=> b!7804692 m!8238716))

(declare-fun m!8238718 () Bool)

(assert (=> bm!723886 m!8238718))

(assert (=> start!741366 d!2347869))

(declare-fun d!2347871 () Bool)

(declare-fun lt!2675038 () Regex!20883)

(assert (=> d!2347871 (validRegex!11297 lt!2675038)))

(declare-fun e!4620052 () Regex!20883)

(assert (=> d!2347871 (= lt!2675038 e!4620052)))

(declare-fun c!1437256 () Bool)

(assert (=> d!2347871 (= c!1437256 ((_ is Cons!73598) (t!388457 s!14292)))))

(assert (=> d!2347871 (validRegex!11297 EmptyLang!20883)))

(assert (=> d!2347871 (= (derivative!565 EmptyLang!20883 (t!388457 s!14292)) lt!2675038)))

(declare-fun b!7804705 () Bool)

(assert (=> b!7804705 (= e!4620052 (derivative!565 (derivativeStep!6220 EmptyLang!20883 (h!80046 (t!388457 s!14292))) (t!388457 (t!388457 s!14292))))))

(declare-fun b!7804706 () Bool)

(assert (=> b!7804706 (= e!4620052 EmptyLang!20883)))

(assert (= (and d!2347871 c!1437256) b!7804705))

(assert (= (and d!2347871 (not c!1437256)) b!7804706))

(declare-fun m!8238720 () Bool)

(assert (=> d!2347871 m!8238720))

(declare-fun m!8238722 () Bool)

(assert (=> d!2347871 m!8238722))

(declare-fun m!8238724 () Bool)

(assert (=> b!7804705 m!8238724))

(assert (=> b!7804705 m!8238724))

(declare-fun m!8238726 () Bool)

(assert (=> b!7804705 m!8238726))

(assert (=> b!7804248 d!2347871))

(declare-fun d!2347873 () Bool)

(assert (=> d!2347873 (= (derivative!565 EmptyLang!20883 (t!388457 s!14292)) EmptyLang!20883)))

(declare-fun lt!2675041 () Unit!168604)

(declare-fun choose!59554 (Regex!20883 List!73722) Unit!168604)

(assert (=> d!2347873 (= lt!2675041 (choose!59554 EmptyLang!20883 (t!388457 s!14292)))))

(assert (=> d!2347873 (= EmptyLang!20883 EmptyLang!20883)))

(assert (=> d!2347873 (= (lemmaEmptyLangDerivativeIsAFixPoint!100 EmptyLang!20883 (t!388457 s!14292)) lt!2675041)))

(declare-fun bs!1966527 () Bool)

(assert (= bs!1966527 d!2347873))

(assert (=> bs!1966527 m!8238458))

(declare-fun m!8238728 () Bool)

(assert (=> bs!1966527 m!8238728))

(assert (=> b!7804248 d!2347873))

(declare-fun b!7804707 () Bool)

(declare-fun res!3108303 () Bool)

(declare-fun e!4620059 () Bool)

(assert (=> b!7804707 (=> res!3108303 e!4620059)))

(assert (=> b!7804707 (= res!3108303 (not ((_ is ElementMatch!20883) lt!2674973)))))

(declare-fun e!4620058 () Bool)

(assert (=> b!7804707 (= e!4620058 e!4620059)))

(declare-fun b!7804708 () Bool)

(declare-fun e!4620053 () Bool)

(assert (=> b!7804708 (= e!4620053 (= (head!15958 (t!388457 s!14292)) (c!1437146 lt!2674973)))))

(declare-fun b!7804709 () Bool)

(declare-fun e!4620057 () Bool)

(declare-fun lt!2675042 () Bool)

(declare-fun call!723893 () Bool)

(assert (=> b!7804709 (= e!4620057 (= lt!2675042 call!723893))))

(declare-fun d!2347875 () Bool)

(assert (=> d!2347875 e!4620057))

(declare-fun c!1437259 () Bool)

(assert (=> d!2347875 (= c!1437259 ((_ is EmptyExpr!20883) lt!2674973))))

(declare-fun e!4620056 () Bool)

(assert (=> d!2347875 (= lt!2675042 e!4620056)))

(declare-fun c!1437258 () Bool)

(assert (=> d!2347875 (= c!1437258 (isEmpty!42247 (t!388457 s!14292)))))

(assert (=> d!2347875 (validRegex!11297 lt!2674973)))

(assert (=> d!2347875 (= (matchR!10343 lt!2674973 (t!388457 s!14292)) lt!2675042)))

(declare-fun b!7804710 () Bool)

(declare-fun res!3108307 () Bool)

(assert (=> b!7804710 (=> (not res!3108307) (not e!4620053))))

(assert (=> b!7804710 (= res!3108307 (not call!723893))))

(declare-fun b!7804711 () Bool)

(declare-fun res!3108309 () Bool)

(declare-fun e!4620055 () Bool)

(assert (=> b!7804711 (=> res!3108309 e!4620055)))

(assert (=> b!7804711 (= res!3108309 (not (isEmpty!42247 (tail!15499 (t!388457 s!14292)))))))

(declare-fun b!7804712 () Bool)

(declare-fun e!4620054 () Bool)

(assert (=> b!7804712 (= e!4620059 e!4620054)))

(declare-fun res!3108310 () Bool)

(assert (=> b!7804712 (=> (not res!3108310) (not e!4620054))))

(assert (=> b!7804712 (= res!3108310 (not lt!2675042))))

(declare-fun b!7804713 () Bool)

(assert (=> b!7804713 (= e!4620056 (nullable!9267 lt!2674973))))

(declare-fun b!7804714 () Bool)

(assert (=> b!7804714 (= e!4620056 (matchR!10343 (derivativeStep!6220 lt!2674973 (head!15958 (t!388457 s!14292))) (tail!15499 (t!388457 s!14292))))))

(declare-fun b!7804715 () Bool)

(assert (=> b!7804715 (= e!4620055 (not (= (head!15958 (t!388457 s!14292)) (c!1437146 lt!2674973))))))

(declare-fun b!7804716 () Bool)

(assert (=> b!7804716 (= e!4620057 e!4620058)))

(declare-fun c!1437257 () Bool)

(assert (=> b!7804716 (= c!1437257 ((_ is EmptyLang!20883) lt!2674973))))

(declare-fun b!7804717 () Bool)

(declare-fun res!3108305 () Bool)

(assert (=> b!7804717 (=> res!3108305 e!4620059)))

(assert (=> b!7804717 (= res!3108305 e!4620053)))

(declare-fun res!3108308 () Bool)

(assert (=> b!7804717 (=> (not res!3108308) (not e!4620053))))

(assert (=> b!7804717 (= res!3108308 lt!2675042)))

(declare-fun b!7804718 () Bool)

(assert (=> b!7804718 (= e!4620058 (not lt!2675042))))

(declare-fun bm!723888 () Bool)

(assert (=> bm!723888 (= call!723893 (isEmpty!42247 (t!388457 s!14292)))))

(declare-fun b!7804719 () Bool)

(declare-fun res!3108306 () Bool)

(assert (=> b!7804719 (=> (not res!3108306) (not e!4620053))))

(assert (=> b!7804719 (= res!3108306 (isEmpty!42247 (tail!15499 (t!388457 s!14292))))))

(declare-fun b!7804720 () Bool)

(assert (=> b!7804720 (= e!4620054 e!4620055)))

(declare-fun res!3108304 () Bool)

(assert (=> b!7804720 (=> res!3108304 e!4620055)))

(assert (=> b!7804720 (= res!3108304 call!723893)))

(assert (= (and d!2347875 c!1437258) b!7804713))

(assert (= (and d!2347875 (not c!1437258)) b!7804714))

(assert (= (and d!2347875 c!1437259) b!7804709))

(assert (= (and d!2347875 (not c!1437259)) b!7804716))

(assert (= (and b!7804716 c!1437257) b!7804718))

(assert (= (and b!7804716 (not c!1437257)) b!7804707))

(assert (= (and b!7804707 (not res!3108303)) b!7804717))

(assert (= (and b!7804717 res!3108308) b!7804710))

(assert (= (and b!7804710 res!3108307) b!7804719))

(assert (= (and b!7804719 res!3108306) b!7804708))

(assert (= (and b!7804717 (not res!3108305)) b!7804712))

(assert (= (and b!7804712 res!3108310) b!7804720))

(assert (= (and b!7804720 (not res!3108304)) b!7804711))

(assert (= (and b!7804711 (not res!3108309)) b!7804715))

(assert (= (or b!7804709 b!7804710 b!7804720) bm!723888))

(assert (=> d!2347875 m!8238674))

(declare-fun m!8238730 () Bool)

(assert (=> d!2347875 m!8238730))

(assert (=> b!7804711 m!8238678))

(assert (=> b!7804711 m!8238678))

(assert (=> b!7804711 m!8238680))

(assert (=> b!7804714 m!8238682))

(assert (=> b!7804714 m!8238682))

(declare-fun m!8238732 () Bool)

(assert (=> b!7804714 m!8238732))

(assert (=> b!7804714 m!8238678))

(assert (=> b!7804714 m!8238732))

(assert (=> b!7804714 m!8238678))

(declare-fun m!8238734 () Bool)

(assert (=> b!7804714 m!8238734))

(assert (=> b!7804715 m!8238682))

(assert (=> b!7804719 m!8238678))

(assert (=> b!7804719 m!8238678))

(assert (=> b!7804719 m!8238680))

(assert (=> bm!723888 m!8238674))

(declare-fun m!8238736 () Bool)

(assert (=> b!7804713 m!8238736))

(assert (=> b!7804708 m!8238682))

(assert (=> b!7804248 d!2347875))

(declare-fun d!2347877 () Bool)

(declare-fun e!4620065 () Bool)

(assert (=> d!2347877 e!4620065))

(declare-fun res!3108316 () Bool)

(assert (=> d!2347877 (=> res!3108316 e!4620065)))

(assert (=> d!2347877 (= res!3108316 (matchR!10343 lt!2674973 (t!388457 s!14292)))))

(declare-fun lt!2675045 () Unit!168604)

(declare-fun choose!59555 (Regex!20883 Regex!20883 List!73722) Unit!168604)

(assert (=> d!2347877 (= lt!2675045 (choose!59555 lt!2674973 EmptyLang!20883 (t!388457 s!14292)))))

(declare-fun e!4620064 () Bool)

(assert (=> d!2347877 e!4620064))

(declare-fun res!3108315 () Bool)

(assert (=> d!2347877 (=> (not res!3108315) (not e!4620064))))

(assert (=> d!2347877 (= res!3108315 (validRegex!11297 lt!2674973))))

(assert (=> d!2347877 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!422 lt!2674973 EmptyLang!20883 (t!388457 s!14292)) lt!2675045)))

(declare-fun b!7804725 () Bool)

(assert (=> b!7804725 (= e!4620064 (validRegex!11297 EmptyLang!20883))))

(declare-fun b!7804726 () Bool)

(assert (=> b!7804726 (= e!4620065 (matchR!10343 EmptyLang!20883 (t!388457 s!14292)))))

(assert (= (and d!2347877 res!3108315) b!7804725))

(assert (= (and d!2347877 (not res!3108316)) b!7804726))

(assert (=> d!2347877 m!8238462))

(declare-fun m!8238738 () Bool)

(assert (=> d!2347877 m!8238738))

(assert (=> d!2347877 m!8238730))

(assert (=> b!7804725 m!8238722))

(assert (=> b!7804726 m!8238468))

(assert (=> b!7804248 d!2347877))

(declare-fun b!7804727 () Bool)

(declare-fun res!3108317 () Bool)

(declare-fun e!4620072 () Bool)

(assert (=> b!7804727 (=> res!3108317 e!4620072)))

(assert (=> b!7804727 (= res!3108317 (not ((_ is ElementMatch!20883) EmptyLang!20883)))))

(declare-fun e!4620071 () Bool)

(assert (=> b!7804727 (= e!4620071 e!4620072)))

(declare-fun b!7804728 () Bool)

(declare-fun e!4620066 () Bool)

(assert (=> b!7804728 (= e!4620066 (= (head!15958 (t!388457 s!14292)) (c!1437146 EmptyLang!20883)))))

(declare-fun b!7804729 () Bool)

(declare-fun e!4620070 () Bool)

(declare-fun lt!2675046 () Bool)

(declare-fun call!723894 () Bool)

(assert (=> b!7804729 (= e!4620070 (= lt!2675046 call!723894))))

(declare-fun d!2347879 () Bool)

(assert (=> d!2347879 e!4620070))

(declare-fun c!1437262 () Bool)

(assert (=> d!2347879 (= c!1437262 ((_ is EmptyExpr!20883) EmptyLang!20883))))

(declare-fun e!4620069 () Bool)

(assert (=> d!2347879 (= lt!2675046 e!4620069)))

(declare-fun c!1437261 () Bool)

(assert (=> d!2347879 (= c!1437261 (isEmpty!42247 (t!388457 s!14292)))))

(assert (=> d!2347879 (validRegex!11297 EmptyLang!20883)))

(assert (=> d!2347879 (= (matchR!10343 EmptyLang!20883 (t!388457 s!14292)) lt!2675046)))

(declare-fun b!7804730 () Bool)

(declare-fun res!3108321 () Bool)

(assert (=> b!7804730 (=> (not res!3108321) (not e!4620066))))

(assert (=> b!7804730 (= res!3108321 (not call!723894))))

(declare-fun b!7804731 () Bool)

(declare-fun res!3108323 () Bool)

(declare-fun e!4620068 () Bool)

(assert (=> b!7804731 (=> res!3108323 e!4620068)))

(assert (=> b!7804731 (= res!3108323 (not (isEmpty!42247 (tail!15499 (t!388457 s!14292)))))))

(declare-fun b!7804732 () Bool)

(declare-fun e!4620067 () Bool)

(assert (=> b!7804732 (= e!4620072 e!4620067)))

(declare-fun res!3108324 () Bool)

(assert (=> b!7804732 (=> (not res!3108324) (not e!4620067))))

(assert (=> b!7804732 (= res!3108324 (not lt!2675046))))

(declare-fun b!7804733 () Bool)

(assert (=> b!7804733 (= e!4620069 (nullable!9267 EmptyLang!20883))))

(declare-fun b!7804734 () Bool)

(assert (=> b!7804734 (= e!4620069 (matchR!10343 (derivativeStep!6220 EmptyLang!20883 (head!15958 (t!388457 s!14292))) (tail!15499 (t!388457 s!14292))))))

(declare-fun b!7804735 () Bool)

(assert (=> b!7804735 (= e!4620068 (not (= (head!15958 (t!388457 s!14292)) (c!1437146 EmptyLang!20883))))))

(declare-fun b!7804736 () Bool)

(assert (=> b!7804736 (= e!4620070 e!4620071)))

(declare-fun c!1437260 () Bool)

(assert (=> b!7804736 (= c!1437260 ((_ is EmptyLang!20883) EmptyLang!20883))))

(declare-fun b!7804737 () Bool)

(declare-fun res!3108319 () Bool)

(assert (=> b!7804737 (=> res!3108319 e!4620072)))

(assert (=> b!7804737 (= res!3108319 e!4620066)))

(declare-fun res!3108322 () Bool)

(assert (=> b!7804737 (=> (not res!3108322) (not e!4620066))))

(assert (=> b!7804737 (= res!3108322 lt!2675046)))

(declare-fun b!7804738 () Bool)

(assert (=> b!7804738 (= e!4620071 (not lt!2675046))))

(declare-fun bm!723889 () Bool)

(assert (=> bm!723889 (= call!723894 (isEmpty!42247 (t!388457 s!14292)))))

(declare-fun b!7804739 () Bool)

(declare-fun res!3108320 () Bool)

(assert (=> b!7804739 (=> (not res!3108320) (not e!4620066))))

(assert (=> b!7804739 (= res!3108320 (isEmpty!42247 (tail!15499 (t!388457 s!14292))))))

(declare-fun b!7804740 () Bool)

(assert (=> b!7804740 (= e!4620067 e!4620068)))

(declare-fun res!3108318 () Bool)

(assert (=> b!7804740 (=> res!3108318 e!4620068)))

(assert (=> b!7804740 (= res!3108318 call!723894)))

(assert (= (and d!2347879 c!1437261) b!7804733))

(assert (= (and d!2347879 (not c!1437261)) b!7804734))

(assert (= (and d!2347879 c!1437262) b!7804729))

(assert (= (and d!2347879 (not c!1437262)) b!7804736))

(assert (= (and b!7804736 c!1437260) b!7804738))

(assert (= (and b!7804736 (not c!1437260)) b!7804727))

(assert (= (and b!7804727 (not res!3108317)) b!7804737))

(assert (= (and b!7804737 res!3108322) b!7804730))

(assert (= (and b!7804730 res!3108321) b!7804739))

(assert (= (and b!7804739 res!3108320) b!7804728))

(assert (= (and b!7804737 (not res!3108319)) b!7804732))

(assert (= (and b!7804732 res!3108324) b!7804740))

(assert (= (and b!7804740 (not res!3108318)) b!7804731))

(assert (= (and b!7804731 (not res!3108323)) b!7804735))

(assert (= (or b!7804729 b!7804730 b!7804740) bm!723889))

(assert (=> d!2347879 m!8238674))

(assert (=> d!2347879 m!8238722))

(assert (=> b!7804731 m!8238678))

(assert (=> b!7804731 m!8238678))

(assert (=> b!7804731 m!8238680))

(assert (=> b!7804734 m!8238682))

(assert (=> b!7804734 m!8238682))

(declare-fun m!8238740 () Bool)

(assert (=> b!7804734 m!8238740))

(assert (=> b!7804734 m!8238678))

(assert (=> b!7804734 m!8238740))

(assert (=> b!7804734 m!8238678))

(declare-fun m!8238742 () Bool)

(assert (=> b!7804734 m!8238742))

(assert (=> b!7804735 m!8238682))

(assert (=> b!7804739 m!8238678))

(assert (=> b!7804739 m!8238678))

(assert (=> b!7804739 m!8238680))

(assert (=> bm!723889 m!8238674))

(declare-fun m!8238744 () Bool)

(assert (=> b!7804733 m!8238744))

(assert (=> b!7804728 m!8238682))

(assert (=> b!7804249 d!2347879))

(declare-fun e!4620075 () Bool)

(assert (=> b!7804258 (= tp!2299167 e!4620075)))

(declare-fun b!7804752 () Bool)

(declare-fun tp!2299249 () Bool)

(declare-fun tp!2299245 () Bool)

(assert (=> b!7804752 (= e!4620075 (and tp!2299249 tp!2299245))))

(declare-fun b!7804751 () Bool)

(assert (=> b!7804751 (= e!4620075 tp_is_empty!52121)))

(declare-fun b!7804753 () Bool)

(declare-fun tp!2299246 () Bool)

(assert (=> b!7804753 (= e!4620075 tp!2299246)))

(declare-fun b!7804754 () Bool)

(declare-fun tp!2299248 () Bool)

(declare-fun tp!2299247 () Bool)

(assert (=> b!7804754 (= e!4620075 (and tp!2299248 tp!2299247))))

(assert (= (and b!7804258 ((_ is ElementMatch!20883) (reg!21212 r1!6279))) b!7804751))

(assert (= (and b!7804258 ((_ is Concat!29728) (reg!21212 r1!6279))) b!7804752))

(assert (= (and b!7804258 ((_ is Star!20883) (reg!21212 r1!6279))) b!7804753))

(assert (= (and b!7804258 ((_ is Union!20883) (reg!21212 r1!6279))) b!7804754))

(declare-fun e!4620076 () Bool)

(assert (=> b!7804256 (= tp!2299166 e!4620076)))

(declare-fun b!7804756 () Bool)

(declare-fun tp!2299254 () Bool)

(declare-fun tp!2299250 () Bool)

(assert (=> b!7804756 (= e!4620076 (and tp!2299254 tp!2299250))))

(declare-fun b!7804755 () Bool)

(assert (=> b!7804755 (= e!4620076 tp_is_empty!52121)))

(declare-fun b!7804757 () Bool)

(declare-fun tp!2299251 () Bool)

(assert (=> b!7804757 (= e!4620076 tp!2299251)))

(declare-fun b!7804758 () Bool)

(declare-fun tp!2299253 () Bool)

(declare-fun tp!2299252 () Bool)

(assert (=> b!7804758 (= e!4620076 (and tp!2299253 tp!2299252))))

(assert (= (and b!7804256 ((_ is ElementMatch!20883) (regOne!42278 r1!6279))) b!7804755))

(assert (= (and b!7804256 ((_ is Concat!29728) (regOne!42278 r1!6279))) b!7804756))

(assert (= (and b!7804256 ((_ is Star!20883) (regOne!42278 r1!6279))) b!7804757))

(assert (= (and b!7804256 ((_ is Union!20883) (regOne!42278 r1!6279))) b!7804758))

(declare-fun e!4620077 () Bool)

(assert (=> b!7804256 (= tp!2299165 e!4620077)))

(declare-fun b!7804760 () Bool)

(declare-fun tp!2299259 () Bool)

(declare-fun tp!2299255 () Bool)

(assert (=> b!7804760 (= e!4620077 (and tp!2299259 tp!2299255))))

(declare-fun b!7804759 () Bool)

(assert (=> b!7804759 (= e!4620077 tp_is_empty!52121)))

(declare-fun b!7804761 () Bool)

(declare-fun tp!2299256 () Bool)

(assert (=> b!7804761 (= e!4620077 tp!2299256)))

(declare-fun b!7804762 () Bool)

(declare-fun tp!2299258 () Bool)

(declare-fun tp!2299257 () Bool)

(assert (=> b!7804762 (= e!4620077 (and tp!2299258 tp!2299257))))

(assert (= (and b!7804256 ((_ is ElementMatch!20883) (regTwo!42278 r1!6279))) b!7804759))

(assert (= (and b!7804256 ((_ is Concat!29728) (regTwo!42278 r1!6279))) b!7804760))

(assert (= (and b!7804256 ((_ is Star!20883) (regTwo!42278 r1!6279))) b!7804761))

(assert (= (and b!7804256 ((_ is Union!20883) (regTwo!42278 r1!6279))) b!7804762))

(declare-fun e!4620078 () Bool)

(assert (=> b!7804257 (= tp!2299163 e!4620078)))

(declare-fun b!7804764 () Bool)

(declare-fun tp!2299264 () Bool)

(declare-fun tp!2299260 () Bool)

(assert (=> b!7804764 (= e!4620078 (and tp!2299264 tp!2299260))))

(declare-fun b!7804763 () Bool)

(assert (=> b!7804763 (= e!4620078 tp_is_empty!52121)))

(declare-fun b!7804765 () Bool)

(declare-fun tp!2299261 () Bool)

(assert (=> b!7804765 (= e!4620078 tp!2299261)))

(declare-fun b!7804766 () Bool)

(declare-fun tp!2299263 () Bool)

(declare-fun tp!2299262 () Bool)

(assert (=> b!7804766 (= e!4620078 (and tp!2299263 tp!2299262))))

(assert (= (and b!7804257 ((_ is ElementMatch!20883) (regOne!42279 r1!6279))) b!7804763))

(assert (= (and b!7804257 ((_ is Concat!29728) (regOne!42279 r1!6279))) b!7804764))

(assert (= (and b!7804257 ((_ is Star!20883) (regOne!42279 r1!6279))) b!7804765))

(assert (= (and b!7804257 ((_ is Union!20883) (regOne!42279 r1!6279))) b!7804766))

(declare-fun e!4620079 () Bool)

(assert (=> b!7804257 (= tp!2299168 e!4620079)))

(declare-fun b!7804768 () Bool)

(declare-fun tp!2299269 () Bool)

(declare-fun tp!2299265 () Bool)

(assert (=> b!7804768 (= e!4620079 (and tp!2299269 tp!2299265))))

(declare-fun b!7804767 () Bool)

(assert (=> b!7804767 (= e!4620079 tp_is_empty!52121)))

(declare-fun b!7804769 () Bool)

(declare-fun tp!2299266 () Bool)

(assert (=> b!7804769 (= e!4620079 tp!2299266)))

(declare-fun b!7804770 () Bool)

(declare-fun tp!2299268 () Bool)

(declare-fun tp!2299267 () Bool)

(assert (=> b!7804770 (= e!4620079 (and tp!2299268 tp!2299267))))

(assert (= (and b!7804257 ((_ is ElementMatch!20883) (regTwo!42279 r1!6279))) b!7804767))

(assert (= (and b!7804257 ((_ is Concat!29728) (regTwo!42279 r1!6279))) b!7804768))

(assert (= (and b!7804257 ((_ is Star!20883) (regTwo!42279 r1!6279))) b!7804769))

(assert (= (and b!7804257 ((_ is Union!20883) (regTwo!42279 r1!6279))) b!7804770))

(declare-fun e!4620080 () Bool)

(assert (=> b!7804246 (= tp!2299170 e!4620080)))

(declare-fun b!7804772 () Bool)

(declare-fun tp!2299274 () Bool)

(declare-fun tp!2299270 () Bool)

(assert (=> b!7804772 (= e!4620080 (and tp!2299274 tp!2299270))))

(declare-fun b!7804771 () Bool)

(assert (=> b!7804771 (= e!4620080 tp_is_empty!52121)))

(declare-fun b!7804773 () Bool)

(declare-fun tp!2299271 () Bool)

(assert (=> b!7804773 (= e!4620080 tp!2299271)))

(declare-fun b!7804774 () Bool)

(declare-fun tp!2299273 () Bool)

(declare-fun tp!2299272 () Bool)

(assert (=> b!7804774 (= e!4620080 (and tp!2299273 tp!2299272))))

(assert (= (and b!7804246 ((_ is ElementMatch!20883) (reg!21212 r2!6217))) b!7804771))

(assert (= (and b!7804246 ((_ is Concat!29728) (reg!21212 r2!6217))) b!7804772))

(assert (= (and b!7804246 ((_ is Star!20883) (reg!21212 r2!6217))) b!7804773))

(assert (= (and b!7804246 ((_ is Union!20883) (reg!21212 r2!6217))) b!7804774))

(declare-fun b!7804779 () Bool)

(declare-fun e!4620083 () Bool)

(declare-fun tp!2299277 () Bool)

(assert (=> b!7804779 (= e!4620083 (and tp_is_empty!52121 tp!2299277))))

(assert (=> b!7804261 (= tp!2299169 e!4620083)))

(assert (= (and b!7804261 ((_ is Cons!73598) (t!388457 s!14292))) b!7804779))

(declare-fun e!4620084 () Bool)

(assert (=> b!7804259 (= tp!2299171 e!4620084)))

(declare-fun b!7804781 () Bool)

(declare-fun tp!2299282 () Bool)

(declare-fun tp!2299278 () Bool)

(assert (=> b!7804781 (= e!4620084 (and tp!2299282 tp!2299278))))

(declare-fun b!7804780 () Bool)

(assert (=> b!7804780 (= e!4620084 tp_is_empty!52121)))

(declare-fun b!7804782 () Bool)

(declare-fun tp!2299279 () Bool)

(assert (=> b!7804782 (= e!4620084 tp!2299279)))

(declare-fun b!7804783 () Bool)

(declare-fun tp!2299281 () Bool)

(declare-fun tp!2299280 () Bool)

(assert (=> b!7804783 (= e!4620084 (and tp!2299281 tp!2299280))))

(assert (= (and b!7804259 ((_ is ElementMatch!20883) (regOne!42278 r2!6217))) b!7804780))

(assert (= (and b!7804259 ((_ is Concat!29728) (regOne!42278 r2!6217))) b!7804781))

(assert (= (and b!7804259 ((_ is Star!20883) (regOne!42278 r2!6217))) b!7804782))

(assert (= (and b!7804259 ((_ is Union!20883) (regOne!42278 r2!6217))) b!7804783))

(declare-fun e!4620085 () Bool)

(assert (=> b!7804259 (= tp!2299162 e!4620085)))

(declare-fun b!7804785 () Bool)

(declare-fun tp!2299287 () Bool)

(declare-fun tp!2299283 () Bool)

(assert (=> b!7804785 (= e!4620085 (and tp!2299287 tp!2299283))))

(declare-fun b!7804784 () Bool)

(assert (=> b!7804784 (= e!4620085 tp_is_empty!52121)))

(declare-fun b!7804786 () Bool)

(declare-fun tp!2299284 () Bool)

(assert (=> b!7804786 (= e!4620085 tp!2299284)))

(declare-fun b!7804787 () Bool)

(declare-fun tp!2299286 () Bool)

(declare-fun tp!2299285 () Bool)

(assert (=> b!7804787 (= e!4620085 (and tp!2299286 tp!2299285))))

(assert (= (and b!7804259 ((_ is ElementMatch!20883) (regTwo!42278 r2!6217))) b!7804784))

(assert (= (and b!7804259 ((_ is Concat!29728) (regTwo!42278 r2!6217))) b!7804785))

(assert (= (and b!7804259 ((_ is Star!20883) (regTwo!42278 r2!6217))) b!7804786))

(assert (= (and b!7804259 ((_ is Union!20883) (regTwo!42278 r2!6217))) b!7804787))

(declare-fun e!4620086 () Bool)

(assert (=> b!7804254 (= tp!2299161 e!4620086)))

(declare-fun b!7804789 () Bool)

(declare-fun tp!2299292 () Bool)

(declare-fun tp!2299288 () Bool)

(assert (=> b!7804789 (= e!4620086 (and tp!2299292 tp!2299288))))

(declare-fun b!7804788 () Bool)

(assert (=> b!7804788 (= e!4620086 tp_is_empty!52121)))

(declare-fun b!7804790 () Bool)

(declare-fun tp!2299289 () Bool)

(assert (=> b!7804790 (= e!4620086 tp!2299289)))

(declare-fun b!7804791 () Bool)

(declare-fun tp!2299291 () Bool)

(declare-fun tp!2299290 () Bool)

(assert (=> b!7804791 (= e!4620086 (and tp!2299291 tp!2299290))))

(assert (= (and b!7804254 ((_ is ElementMatch!20883) (regOne!42279 r2!6217))) b!7804788))

(assert (= (and b!7804254 ((_ is Concat!29728) (regOne!42279 r2!6217))) b!7804789))

(assert (= (and b!7804254 ((_ is Star!20883) (regOne!42279 r2!6217))) b!7804790))

(assert (= (and b!7804254 ((_ is Union!20883) (regOne!42279 r2!6217))) b!7804791))

(declare-fun e!4620087 () Bool)

(assert (=> b!7804254 (= tp!2299164 e!4620087)))

(declare-fun b!7804793 () Bool)

(declare-fun tp!2299297 () Bool)

(declare-fun tp!2299293 () Bool)

(assert (=> b!7804793 (= e!4620087 (and tp!2299297 tp!2299293))))

(declare-fun b!7804792 () Bool)

(assert (=> b!7804792 (= e!4620087 tp_is_empty!52121)))

(declare-fun b!7804794 () Bool)

(declare-fun tp!2299294 () Bool)

(assert (=> b!7804794 (= e!4620087 tp!2299294)))

(declare-fun b!7804795 () Bool)

(declare-fun tp!2299296 () Bool)

(declare-fun tp!2299295 () Bool)

(assert (=> b!7804795 (= e!4620087 (and tp!2299296 tp!2299295))))

(assert (= (and b!7804254 ((_ is ElementMatch!20883) (regTwo!42279 r2!6217))) b!7804792))

(assert (= (and b!7804254 ((_ is Concat!29728) (regTwo!42279 r2!6217))) b!7804793))

(assert (= (and b!7804254 ((_ is Star!20883) (regTwo!42279 r2!6217))) b!7804794))

(assert (= (and b!7804254 ((_ is Union!20883) (regTwo!42279 r2!6217))) b!7804795))

(check-sat (not b!7804410) (not bm!723886) (not b!7804598) (not b!7804725) (not b!7804781) (not b!7804752) (not b!7804783) (not bm!723885) (not d!2347825) (not bm!723882) (not b!7804765) (not b!7804604) (not b!7804790) (not b!7804762) (not bm!723858) (not b!7804405) (not b!7804603) (not b!7804654) (not bm!723859) (not b!7804764) (not b!7804612) (not b!7804753) (not d!2347861) (not b!7804795) (not b!7804708) (not b!7804756) (not b!7804731) (not b!7804412) (not b!7804768) (not bm!723888) (not b!7804683) (not d!2347871) (not b!7804770) (not d!2347859) (not b!7804705) (not b!7804407) (not b!7804766) (not b!7804793) (not b!7804789) (not bm!723875) (not b!7804757) (not d!2347819) (not bm!723889) (not b!7804785) (not b!7804623) (not d!2347841) (not b!7804664) (not bm!723874) (not b!7804773) (not bm!723870) (not d!2347865) (not d!2347875) (not b!7804715) (not d!2347813) (not d!2347879) (not b!7804713) (not b!7804734) (not d!2347815) (not bm!723883) (not b!7804294) (not b!7804293) (not b!7804758) (not b!7804761) (not b!7804786) (not b!7804794) (not b!7804782) (not b!7804719) (not b!7804413) (not b!7804714) (not bm!723871) (not b!7804692) (not b!7804619) (not b!7804609) (not b!7804735) (not b!7804617) (not d!2347877) (not d!2347863) (not b!7804711) (not b!7804409) (not b!7804769) (not b!7804791) (not b!7804754) (not b!7804618) (not b!7804787) (not b!7804733) tp_is_empty!52121 (not b!7804774) (not b!7804726) (not b!7804760) (not b!7804601) (not b!7804779) (not b!7804615) (not b!7804605) (not d!2347873) (not b!7804728) (not b!7804772) (not b!7804739))
(check-sat)
