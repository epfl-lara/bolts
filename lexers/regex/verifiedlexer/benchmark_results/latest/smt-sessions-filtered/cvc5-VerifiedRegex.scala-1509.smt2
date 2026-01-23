; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79916 () Bool)

(assert start!79916)

(declare-fun b!884484 () Bool)

(assert (=> b!884484 true))

(assert (=> b!884484 true))

(declare-fun lambda!27270 () Int)

(declare-fun lambda!27269 () Int)

(assert (=> b!884484 (not (= lambda!27270 lambda!27269))))

(assert (=> b!884484 true))

(assert (=> b!884484 true))

(declare-fun b!884482 () Bool)

(declare-fun e!580204 () Bool)

(declare-fun tp!279102 () Bool)

(declare-fun tp!279098 () Bool)

(assert (=> b!884482 (= e!580204 (and tp!279102 tp!279098))))

(declare-fun b!884483 () Bool)

(declare-fun tp!279097 () Bool)

(declare-fun tp!279099 () Bool)

(assert (=> b!884483 (= e!580204 (and tp!279097 tp!279099))))

(declare-fun res!402291 () Bool)

(declare-fun e!580206 () Bool)

(assert (=> start!79916 (=> (not res!402291) (not e!580206))))

(declare-datatypes ((C!5122 0))(
  ( (C!5123 (val!2809 Int)) )
))
(declare-datatypes ((Regex!2276 0))(
  ( (ElementMatch!2276 (c!142957 C!5122)) (Concat!4109 (regOne!5064 Regex!2276) (regTwo!5064 Regex!2276)) (EmptyExpr!2276) (Star!2276 (reg!2605 Regex!2276)) (EmptyLang!2276) (Union!2276 (regOne!5065 Regex!2276) (regTwo!5065 Regex!2276)) )
))
(declare-fun r!15766 () Regex!2276)

(declare-fun validRegex!745 (Regex!2276) Bool)

(assert (=> start!79916 (= res!402291 (validRegex!745 r!15766))))

(assert (=> start!79916 e!580206))

(assert (=> start!79916 e!580204))

(declare-fun e!580209 () Bool)

(assert (=> start!79916 e!580209))

(declare-fun e!580208 () Bool)

(declare-fun e!580207 () Bool)

(assert (=> b!884484 (= e!580208 e!580207)))

(declare-fun res!402293 () Bool)

(assert (=> b!884484 (=> res!402293 e!580207)))

(declare-datatypes ((List!9506 0))(
  ( (Nil!9490) (Cons!9490 (h!14891 C!5122) (t!100552 List!9506)) )
))
(declare-fun s!10566 () List!9506)

(declare-fun isEmpty!5693 (List!9506) Bool)

(assert (=> b!884484 (= res!402293 (isEmpty!5693 s!10566))))

(declare-fun Exists!71 (Int) Bool)

(assert (=> b!884484 (= (Exists!71 lambda!27269) (Exists!71 lambda!27270))))

(declare-datatypes ((Unit!14131 0))(
  ( (Unit!14132) )
))
(declare-fun lt!331258 () Unit!14131)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!61 (Regex!2276 Regex!2276 List!9506) Unit!14131)

(assert (=> b!884484 (= lt!331258 (lemmaExistCutMatchRandMatchRSpecEquivalent!61 (regOne!5064 r!15766) (regTwo!5064 r!15766) s!10566))))

(declare-datatypes ((tuple2!10638 0))(
  ( (tuple2!10639 (_1!6145 List!9506) (_2!6145 List!9506)) )
))
(declare-datatypes ((Option!1961 0))(
  ( (None!1960) (Some!1960 (v!19377 tuple2!10638)) )
))
(declare-fun lt!331254 () Option!1961)

(declare-fun isDefined!1603 (Option!1961) Bool)

(assert (=> b!884484 (= (isDefined!1603 lt!331254) (Exists!71 lambda!27269))))

(declare-fun findConcatSeparation!67 (Regex!2276 Regex!2276 List!9506 List!9506 List!9506) Option!1961)

(assert (=> b!884484 (= lt!331254 (findConcatSeparation!67 (regOne!5064 r!15766) (regTwo!5064 r!15766) Nil!9490 s!10566 s!10566))))

(declare-fun lt!331253 () Unit!14131)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!67 (Regex!2276 Regex!2276 List!9506) Unit!14131)

(assert (=> b!884484 (= lt!331253 (lemmaFindConcatSeparationEquivalentToExists!67 (regOne!5064 r!15766) (regTwo!5064 r!15766) s!10566))))

(declare-fun b!884485 () Bool)

(assert (=> b!884485 (= e!580206 (not e!580208))))

(declare-fun res!402290 () Bool)

(assert (=> b!884485 (=> res!402290 e!580208)))

(declare-fun lt!331259 () Bool)

(assert (=> b!884485 (= res!402290 (or (not lt!331259) (and (is-Concat!4109 r!15766) (is-EmptyExpr!2276 (regOne!5064 r!15766))) (and (is-Concat!4109 r!15766) (is-EmptyExpr!2276 (regTwo!5064 r!15766))) (not (is-Concat!4109 r!15766))))))

(declare-fun matchRSpec!77 (Regex!2276 List!9506) Bool)

(assert (=> b!884485 (= lt!331259 (matchRSpec!77 r!15766 s!10566))))

(declare-fun matchR!814 (Regex!2276 List!9506) Bool)

(assert (=> b!884485 (= lt!331259 (matchR!814 r!15766 s!10566))))

(declare-fun lt!331256 () Unit!14131)

(declare-fun mainMatchTheorem!77 (Regex!2276 List!9506) Unit!14131)

(assert (=> b!884485 (= lt!331256 (mainMatchTheorem!77 r!15766 s!10566))))

(declare-fun b!884486 () Bool)

(declare-fun tp_is_empty!4195 () Bool)

(assert (=> b!884486 (= e!580204 tp_is_empty!4195)))

(declare-fun b!884487 () Bool)

(declare-fun e!580205 () Bool)

(assert (=> b!884487 (= e!580207 e!580205)))

(declare-fun res!402289 () Bool)

(assert (=> b!884487 (=> res!402289 e!580205)))

(declare-fun lt!331255 () tuple2!10638)

(assert (=> b!884487 (= res!402289 (not (matchR!814 (regOne!5064 r!15766) (_1!6145 lt!331255))))))

(declare-fun get!2964 (Option!1961) tuple2!10638)

(assert (=> b!884487 (= lt!331255 (get!2964 lt!331254))))

(declare-fun b!884488 () Bool)

(declare-fun tp!279100 () Bool)

(assert (=> b!884488 (= e!580209 (and tp_is_empty!4195 tp!279100))))

(declare-fun b!884489 () Bool)

(declare-fun res!402292 () Bool)

(assert (=> b!884489 (=> res!402292 e!580205)))

(assert (=> b!884489 (= res!402292 (not (matchR!814 (regTwo!5064 r!15766) (_2!6145 lt!331255))))))

(declare-fun b!884490 () Bool)

(declare-fun lt!331252 () Regex!2276)

(assert (=> b!884490 (= e!580205 (validRegex!745 lt!331252))))

(declare-fun removeUselessConcat!19 (Regex!2276) Regex!2276)

(assert (=> b!884490 (matchR!814 (removeUselessConcat!19 (regTwo!5064 r!15766)) (_2!6145 lt!331255))))

(declare-fun lt!331260 () Unit!14131)

(declare-fun lemmaRemoveUselessConcatSound!13 (Regex!2276 List!9506) Unit!14131)

(assert (=> b!884490 (= lt!331260 (lemmaRemoveUselessConcatSound!13 (regTwo!5064 r!15766) (_2!6145 lt!331255)))))

(assert (=> b!884490 (matchR!814 lt!331252 (_1!6145 lt!331255))))

(assert (=> b!884490 (= lt!331252 (removeUselessConcat!19 (regOne!5064 r!15766)))))

(declare-fun lt!331257 () Unit!14131)

(assert (=> b!884490 (= lt!331257 (lemmaRemoveUselessConcatSound!13 (regOne!5064 r!15766) (_1!6145 lt!331255)))))

(declare-fun b!884491 () Bool)

(declare-fun tp!279101 () Bool)

(assert (=> b!884491 (= e!580204 tp!279101)))

(assert (= (and start!79916 res!402291) b!884485))

(assert (= (and b!884485 (not res!402290)) b!884484))

(assert (= (and b!884484 (not res!402293)) b!884487))

(assert (= (and b!884487 (not res!402289)) b!884489))

(assert (= (and b!884489 (not res!402292)) b!884490))

(assert (= (and start!79916 (is-ElementMatch!2276 r!15766)) b!884486))

(assert (= (and start!79916 (is-Concat!4109 r!15766)) b!884483))

(assert (= (and start!79916 (is-Star!2276 r!15766)) b!884491))

(assert (= (and start!79916 (is-Union!2276 r!15766)) b!884482))

(assert (= (and start!79916 (is-Cons!9490 s!10566)) b!884488))

(declare-fun m!1130905 () Bool)

(assert (=> start!79916 m!1130905))

(declare-fun m!1130907 () Bool)

(assert (=> b!884484 m!1130907))

(declare-fun m!1130909 () Bool)

(assert (=> b!884484 m!1130909))

(declare-fun m!1130911 () Bool)

(assert (=> b!884484 m!1130911))

(declare-fun m!1130913 () Bool)

(assert (=> b!884484 m!1130913))

(declare-fun m!1130915 () Bool)

(assert (=> b!884484 m!1130915))

(declare-fun m!1130917 () Bool)

(assert (=> b!884484 m!1130917))

(declare-fun m!1130919 () Bool)

(assert (=> b!884484 m!1130919))

(assert (=> b!884484 m!1130915))

(declare-fun m!1130921 () Bool)

(assert (=> b!884490 m!1130921))

(declare-fun m!1130923 () Bool)

(assert (=> b!884490 m!1130923))

(declare-fun m!1130925 () Bool)

(assert (=> b!884490 m!1130925))

(declare-fun m!1130927 () Bool)

(assert (=> b!884490 m!1130927))

(declare-fun m!1130929 () Bool)

(assert (=> b!884490 m!1130929))

(declare-fun m!1130931 () Bool)

(assert (=> b!884490 m!1130931))

(assert (=> b!884490 m!1130925))

(declare-fun m!1130933 () Bool)

(assert (=> b!884490 m!1130933))

(declare-fun m!1130935 () Bool)

(assert (=> b!884487 m!1130935))

(declare-fun m!1130937 () Bool)

(assert (=> b!884487 m!1130937))

(declare-fun m!1130939 () Bool)

(assert (=> b!884485 m!1130939))

(declare-fun m!1130941 () Bool)

(assert (=> b!884485 m!1130941))

(declare-fun m!1130943 () Bool)

(assert (=> b!884485 m!1130943))

(declare-fun m!1130945 () Bool)

(assert (=> b!884489 m!1130945))

(push 1)

(assert (not b!884489))

(assert (not b!884485))

(assert (not b!884490))

(assert (not start!79916))

(assert (not b!884484))

(assert (not b!884482))

(assert (not b!884488))

(assert (not b!884491))

(assert (not b!884487))

(assert (not b!884483))

(assert tp_is_empty!4195)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!884570 () Bool)

(declare-fun e!580254 () Bool)

(declare-fun derivativeStep!394 (Regex!2276 C!5122) Regex!2276)

(declare-fun head!1547 (List!9506) C!5122)

(declare-fun tail!1109 (List!9506) List!9506)

(assert (=> b!884570 (= e!580254 (matchR!814 (derivativeStep!394 (regTwo!5064 r!15766) (head!1547 (_2!6145 lt!331255))) (tail!1109 (_2!6145 lt!331255))))))

(declare-fun b!884571 () Bool)

(declare-fun res!402342 () Bool)

(declare-fun e!580251 () Bool)

(assert (=> b!884571 (=> (not res!402342) (not e!580251))))

(declare-fun call!51752 () Bool)

(assert (=> b!884571 (= res!402342 (not call!51752))))

(declare-fun b!884572 () Bool)

(declare-fun e!580252 () Bool)

(declare-fun e!580249 () Bool)

(assert (=> b!884572 (= e!580252 e!580249)))

(declare-fun c!142967 () Bool)

(assert (=> b!884572 (= c!142967 (is-EmptyLang!2276 (regTwo!5064 r!15766)))))

(declare-fun b!884573 () Bool)

(declare-fun lt!331290 () Bool)

(assert (=> b!884573 (= e!580252 (= lt!331290 call!51752))))

(declare-fun bm!51747 () Bool)

(assert (=> bm!51747 (= call!51752 (isEmpty!5693 (_2!6145 lt!331255)))))

(declare-fun b!884575 () Bool)

(declare-fun res!402340 () Bool)

(declare-fun e!580248 () Bool)

(assert (=> b!884575 (=> res!402340 e!580248)))

(assert (=> b!884575 (= res!402340 e!580251)))

(declare-fun res!402343 () Bool)

(assert (=> b!884575 (=> (not res!402343) (not e!580251))))

(assert (=> b!884575 (= res!402343 lt!331290)))

(declare-fun b!884576 () Bool)

(declare-fun nullable!582 (Regex!2276) Bool)

(assert (=> b!884576 (= e!580254 (nullable!582 (regTwo!5064 r!15766)))))

(declare-fun b!884577 () Bool)

(declare-fun res!402338 () Bool)

(declare-fun e!580253 () Bool)

(assert (=> b!884577 (=> res!402338 e!580253)))

(assert (=> b!884577 (= res!402338 (not (isEmpty!5693 (tail!1109 (_2!6145 lt!331255)))))))

(declare-fun b!884578 () Bool)

(assert (=> b!884578 (= e!580251 (= (head!1547 (_2!6145 lt!331255)) (c!142957 (regTwo!5064 r!15766))))))

(declare-fun b!884579 () Bool)

(declare-fun e!580250 () Bool)

(assert (=> b!884579 (= e!580248 e!580250)))

(declare-fun res!402339 () Bool)

(assert (=> b!884579 (=> (not res!402339) (not e!580250))))

(assert (=> b!884579 (= res!402339 (not lt!331290))))

(declare-fun b!884580 () Bool)

(declare-fun res!402344 () Bool)

(assert (=> b!884580 (=> res!402344 e!580248)))

(assert (=> b!884580 (= res!402344 (not (is-ElementMatch!2276 (regTwo!5064 r!15766))))))

(assert (=> b!884580 (= e!580249 e!580248)))

(declare-fun b!884581 () Bool)

(declare-fun res!402341 () Bool)

(assert (=> b!884581 (=> (not res!402341) (not e!580251))))

(assert (=> b!884581 (= res!402341 (isEmpty!5693 (tail!1109 (_2!6145 lt!331255))))))

(declare-fun b!884582 () Bool)

(assert (=> b!884582 (= e!580253 (not (= (head!1547 (_2!6145 lt!331255)) (c!142957 (regTwo!5064 r!15766)))))))

(declare-fun b!884583 () Bool)

(assert (=> b!884583 (= e!580249 (not lt!331290))))

(declare-fun d!276710 () Bool)

(assert (=> d!276710 e!580252))

(declare-fun c!142966 () Bool)

(assert (=> d!276710 (= c!142966 (is-EmptyExpr!2276 (regTwo!5064 r!15766)))))

(assert (=> d!276710 (= lt!331290 e!580254)))

(declare-fun c!142965 () Bool)

(assert (=> d!276710 (= c!142965 (isEmpty!5693 (_2!6145 lt!331255)))))

(assert (=> d!276710 (validRegex!745 (regTwo!5064 r!15766))))

(assert (=> d!276710 (= (matchR!814 (regTwo!5064 r!15766) (_2!6145 lt!331255)) lt!331290)))

(declare-fun b!884574 () Bool)

(assert (=> b!884574 (= e!580250 e!580253)))

(declare-fun res!402337 () Bool)

(assert (=> b!884574 (=> res!402337 e!580253)))

(assert (=> b!884574 (= res!402337 call!51752)))

(assert (= (and d!276710 c!142965) b!884576))

(assert (= (and d!276710 (not c!142965)) b!884570))

(assert (= (and d!276710 c!142966) b!884573))

(assert (= (and d!276710 (not c!142966)) b!884572))

(assert (= (and b!884572 c!142967) b!884583))

(assert (= (and b!884572 (not c!142967)) b!884580))

(assert (= (and b!884580 (not res!402344)) b!884575))

(assert (= (and b!884575 res!402343) b!884571))

(assert (= (and b!884571 res!402342) b!884581))

(assert (= (and b!884581 res!402341) b!884578))

(assert (= (and b!884575 (not res!402340)) b!884579))

(assert (= (and b!884579 res!402339) b!884574))

(assert (= (and b!884574 (not res!402337)) b!884577))

(assert (= (and b!884577 (not res!402338)) b!884582))

(assert (= (or b!884573 b!884571 b!884574) bm!51747))

(declare-fun m!1130989 () Bool)

(assert (=> b!884570 m!1130989))

(assert (=> b!884570 m!1130989))

(declare-fun m!1130991 () Bool)

(assert (=> b!884570 m!1130991))

(declare-fun m!1130993 () Bool)

(assert (=> b!884570 m!1130993))

(assert (=> b!884570 m!1130991))

(assert (=> b!884570 m!1130993))

(declare-fun m!1130995 () Bool)

(assert (=> b!884570 m!1130995))

(declare-fun m!1130997 () Bool)

(assert (=> b!884576 m!1130997))

(declare-fun m!1130999 () Bool)

(assert (=> d!276710 m!1130999))

(declare-fun m!1131001 () Bool)

(assert (=> d!276710 m!1131001))

(assert (=> b!884582 m!1130989))

(assert (=> b!884581 m!1130993))

(assert (=> b!884581 m!1130993))

(declare-fun m!1131003 () Bool)

(assert (=> b!884581 m!1131003))

(assert (=> b!884577 m!1130993))

(assert (=> b!884577 m!1130993))

(assert (=> b!884577 m!1131003))

(assert (=> bm!51747 m!1130999))

(assert (=> b!884578 m!1130989))

(assert (=> b!884489 d!276710))

(declare-fun d!276714 () Bool)

(declare-fun choose!5253 (Int) Bool)

(assert (=> d!276714 (= (Exists!71 lambda!27269) (choose!5253 lambda!27269))))

(declare-fun bs!234623 () Bool)

(assert (= bs!234623 d!276714))

(declare-fun m!1131005 () Bool)

(assert (=> bs!234623 m!1131005))

(assert (=> b!884484 d!276714))

(declare-fun d!276716 () Bool)

(assert (=> d!276716 (= (isEmpty!5693 s!10566) (is-Nil!9490 s!10566))))

(assert (=> b!884484 d!276716))

(declare-fun bs!234624 () Bool)

(declare-fun d!276718 () Bool)

(assert (= bs!234624 (and d!276718 b!884484)))

(declare-fun lambda!27281 () Int)

(assert (=> bs!234624 (= lambda!27281 lambda!27269)))

(assert (=> bs!234624 (not (= lambda!27281 lambda!27270))))

(assert (=> d!276718 true))

(assert (=> d!276718 true))

(assert (=> d!276718 true))

(assert (=> d!276718 (= (isDefined!1603 (findConcatSeparation!67 (regOne!5064 r!15766) (regTwo!5064 r!15766) Nil!9490 s!10566 s!10566)) (Exists!71 lambda!27281))))

(declare-fun lt!331293 () Unit!14131)

(declare-fun choose!5254 (Regex!2276 Regex!2276 List!9506) Unit!14131)

(assert (=> d!276718 (= lt!331293 (choose!5254 (regOne!5064 r!15766) (regTwo!5064 r!15766) s!10566))))

(assert (=> d!276718 (validRegex!745 (regOne!5064 r!15766))))

(assert (=> d!276718 (= (lemmaFindConcatSeparationEquivalentToExists!67 (regOne!5064 r!15766) (regTwo!5064 r!15766) s!10566) lt!331293)))

(declare-fun bs!234625 () Bool)

(assert (= bs!234625 d!276718))

(assert (=> bs!234625 m!1130917))

(declare-fun m!1131007 () Bool)

(assert (=> bs!234625 m!1131007))

(declare-fun m!1131009 () Bool)

(assert (=> bs!234625 m!1131009))

(declare-fun m!1131011 () Bool)

(assert (=> bs!234625 m!1131011))

(assert (=> bs!234625 m!1130917))

(declare-fun m!1131013 () Bool)

(assert (=> bs!234625 m!1131013))

(assert (=> b!884484 d!276718))

(declare-fun b!884638 () Bool)

(declare-fun res!402378 () Bool)

(declare-fun e!580285 () Bool)

(assert (=> b!884638 (=> (not res!402378) (not e!580285))))

(declare-fun lt!331301 () Option!1961)

(assert (=> b!884638 (= res!402378 (matchR!814 (regOne!5064 r!15766) (_1!6145 (get!2964 lt!331301))))))

(declare-fun b!884639 () Bool)

(declare-fun ++!2478 (List!9506 List!9506) List!9506)

(assert (=> b!884639 (= e!580285 (= (++!2478 (_1!6145 (get!2964 lt!331301)) (_2!6145 (get!2964 lt!331301))) s!10566))))

(declare-fun b!884640 () Bool)

(declare-fun e!580286 () Option!1961)

(assert (=> b!884640 (= e!580286 None!1960)))

(declare-fun b!884641 () Bool)

(declare-fun res!402376 () Bool)

(assert (=> b!884641 (=> (not res!402376) (not e!580285))))

(assert (=> b!884641 (= res!402376 (matchR!814 (regTwo!5064 r!15766) (_2!6145 (get!2964 lt!331301))))))

(declare-fun b!884642 () Bool)

(declare-fun lt!331302 () Unit!14131)

(declare-fun lt!331300 () Unit!14131)

(assert (=> b!884642 (= lt!331302 lt!331300)))

(assert (=> b!884642 (= (++!2478 (++!2478 Nil!9490 (Cons!9490 (h!14891 s!10566) Nil!9490)) (t!100552 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!106 (List!9506 C!5122 List!9506 List!9506) Unit!14131)

(assert (=> b!884642 (= lt!331300 (lemmaMoveElementToOtherListKeepsConcatEq!106 Nil!9490 (h!14891 s!10566) (t!100552 s!10566) s!10566))))

(assert (=> b!884642 (= e!580286 (findConcatSeparation!67 (regOne!5064 r!15766) (regTwo!5064 r!15766) (++!2478 Nil!9490 (Cons!9490 (h!14891 s!10566) Nil!9490)) (t!100552 s!10566) s!10566))))

(declare-fun b!884643 () Bool)

(declare-fun e!580287 () Bool)

(assert (=> b!884643 (= e!580287 (matchR!814 (regTwo!5064 r!15766) s!10566))))

(declare-fun b!884644 () Bool)

(declare-fun e!580289 () Option!1961)

(assert (=> b!884644 (= e!580289 e!580286)))

(declare-fun c!142980 () Bool)

(assert (=> b!884644 (= c!142980 (is-Nil!9490 s!10566))))

(declare-fun d!276720 () Bool)

(declare-fun e!580288 () Bool)

(assert (=> d!276720 e!580288))

(declare-fun res!402375 () Bool)

(assert (=> d!276720 (=> res!402375 e!580288)))

(assert (=> d!276720 (= res!402375 e!580285)))

(declare-fun res!402379 () Bool)

(assert (=> d!276720 (=> (not res!402379) (not e!580285))))

(assert (=> d!276720 (= res!402379 (isDefined!1603 lt!331301))))

(assert (=> d!276720 (= lt!331301 e!580289)))

(declare-fun c!142981 () Bool)

(assert (=> d!276720 (= c!142981 e!580287)))

(declare-fun res!402377 () Bool)

(assert (=> d!276720 (=> (not res!402377) (not e!580287))))

(assert (=> d!276720 (= res!402377 (matchR!814 (regOne!5064 r!15766) Nil!9490))))

(assert (=> d!276720 (validRegex!745 (regOne!5064 r!15766))))

(assert (=> d!276720 (= (findConcatSeparation!67 (regOne!5064 r!15766) (regTwo!5064 r!15766) Nil!9490 s!10566 s!10566) lt!331301)))

(declare-fun b!884645 () Bool)

(assert (=> b!884645 (= e!580289 (Some!1960 (tuple2!10639 Nil!9490 s!10566)))))

(declare-fun b!884646 () Bool)

(assert (=> b!884646 (= e!580288 (not (isDefined!1603 lt!331301)))))

(assert (= (and d!276720 res!402377) b!884643))

(assert (= (and d!276720 c!142981) b!884645))

(assert (= (and d!276720 (not c!142981)) b!884644))

(assert (= (and b!884644 c!142980) b!884640))

(assert (= (and b!884644 (not c!142980)) b!884642))

(assert (= (and d!276720 res!402379) b!884638))

(assert (= (and b!884638 res!402378) b!884641))

(assert (= (and b!884641 res!402376) b!884639))

(assert (= (and d!276720 (not res!402375)) b!884646))

(declare-fun m!1131015 () Bool)

(assert (=> b!884643 m!1131015))

(declare-fun m!1131017 () Bool)

(assert (=> b!884641 m!1131017))

(declare-fun m!1131019 () Bool)

(assert (=> b!884641 m!1131019))

(declare-fun m!1131021 () Bool)

(assert (=> d!276720 m!1131021))

(declare-fun m!1131023 () Bool)

(assert (=> d!276720 m!1131023))

(assert (=> d!276720 m!1131009))

(assert (=> b!884638 m!1131017))

(declare-fun m!1131025 () Bool)

(assert (=> b!884638 m!1131025))

(assert (=> b!884639 m!1131017))

(declare-fun m!1131027 () Bool)

(assert (=> b!884639 m!1131027))

(assert (=> b!884646 m!1131021))

(declare-fun m!1131029 () Bool)

(assert (=> b!884642 m!1131029))

(assert (=> b!884642 m!1131029))

(declare-fun m!1131031 () Bool)

(assert (=> b!884642 m!1131031))

(declare-fun m!1131033 () Bool)

(assert (=> b!884642 m!1131033))

(assert (=> b!884642 m!1131029))

(declare-fun m!1131035 () Bool)

(assert (=> b!884642 m!1131035))

(assert (=> b!884484 d!276720))

(declare-fun d!276722 () Bool)

(declare-fun isEmpty!5695 (Option!1961) Bool)

(assert (=> d!276722 (= (isDefined!1603 lt!331254) (not (isEmpty!5695 lt!331254)))))

(declare-fun bs!234626 () Bool)

(assert (= bs!234626 d!276722))

(declare-fun m!1131037 () Bool)

(assert (=> bs!234626 m!1131037))

(assert (=> b!884484 d!276722))

(declare-fun d!276724 () Bool)

(assert (=> d!276724 (= (Exists!71 lambda!27270) (choose!5253 lambda!27270))))

(declare-fun bs!234627 () Bool)

(assert (= bs!234627 d!276724))

(declare-fun m!1131039 () Bool)

(assert (=> bs!234627 m!1131039))

(assert (=> b!884484 d!276724))

(declare-fun bs!234631 () Bool)

(declare-fun d!276726 () Bool)

(assert (= bs!234631 (and d!276726 b!884484)))

(declare-fun lambda!27292 () Int)

(assert (=> bs!234631 (= lambda!27292 lambda!27269)))

(assert (=> bs!234631 (not (= lambda!27292 lambda!27270))))

(declare-fun bs!234632 () Bool)

(assert (= bs!234632 (and d!276726 d!276718)))

(assert (=> bs!234632 (= lambda!27292 lambda!27281)))

(assert (=> d!276726 true))

(assert (=> d!276726 true))

(assert (=> d!276726 true))

(declare-fun lambda!27293 () Int)

(assert (=> bs!234631 (not (= lambda!27293 lambda!27269))))

(assert (=> bs!234631 (= lambda!27293 lambda!27270)))

(assert (=> bs!234632 (not (= lambda!27293 lambda!27281))))

(declare-fun bs!234633 () Bool)

(assert (= bs!234633 d!276726))

(assert (=> bs!234633 (not (= lambda!27293 lambda!27292))))

(assert (=> d!276726 true))

(assert (=> d!276726 true))

(assert (=> d!276726 true))

(assert (=> d!276726 (= (Exists!71 lambda!27292) (Exists!71 lambda!27293))))

(declare-fun lt!331305 () Unit!14131)

(declare-fun choose!5255 (Regex!2276 Regex!2276 List!9506) Unit!14131)

(assert (=> d!276726 (= lt!331305 (choose!5255 (regOne!5064 r!15766) (regTwo!5064 r!15766) s!10566))))

(assert (=> d!276726 (validRegex!745 (regOne!5064 r!15766))))

(assert (=> d!276726 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!61 (regOne!5064 r!15766) (regTwo!5064 r!15766) s!10566) lt!331305)))

(declare-fun m!1131047 () Bool)

(assert (=> bs!234633 m!1131047))

(declare-fun m!1131049 () Bool)

(assert (=> bs!234633 m!1131049))

(declare-fun m!1131051 () Bool)

(assert (=> bs!234633 m!1131051))

(assert (=> bs!234633 m!1131009))

(assert (=> b!884484 d!276726))

(declare-fun d!276730 () Bool)

(assert (=> d!276730 (= (matchR!814 (regTwo!5064 r!15766) (_2!6145 lt!331255)) (matchR!814 (removeUselessConcat!19 (regTwo!5064 r!15766)) (_2!6145 lt!331255)))))

(declare-fun lt!331308 () Unit!14131)

(declare-fun choose!5256 (Regex!2276 List!9506) Unit!14131)

(assert (=> d!276730 (= lt!331308 (choose!5256 (regTwo!5064 r!15766) (_2!6145 lt!331255)))))

(assert (=> d!276730 (validRegex!745 (regTwo!5064 r!15766))))

(assert (=> d!276730 (= (lemmaRemoveUselessConcatSound!13 (regTwo!5064 r!15766) (_2!6145 lt!331255)) lt!331308)))

(declare-fun bs!234634 () Bool)

(assert (= bs!234634 d!276730))

(assert (=> bs!234634 m!1131001))

(assert (=> bs!234634 m!1130925))

(assert (=> bs!234634 m!1130925))

(assert (=> bs!234634 m!1130933))

(declare-fun m!1131053 () Bool)

(assert (=> bs!234634 m!1131053))

(assert (=> bs!234634 m!1130945))

(assert (=> b!884490 d!276730))

(declare-fun bm!51764 () Bool)

(declare-fun call!51769 () Regex!2276)

(declare-fun call!51770 () Regex!2276)

(assert (=> bm!51764 (= call!51769 call!51770)))

(declare-fun b!884712 () Bool)

(declare-fun e!580330 () Regex!2276)

(declare-fun e!580325 () Regex!2276)

(assert (=> b!884712 (= e!580330 e!580325)))

(declare-fun c!143004 () Bool)

(assert (=> b!884712 (= c!143004 (is-Union!2276 (regOne!5064 r!15766)))))

(declare-fun b!884713 () Bool)

(declare-fun e!580329 () Regex!2276)

(assert (=> b!884713 (= e!580329 call!51769)))

(declare-fun bm!51765 () Bool)

(declare-fun call!51772 () Regex!2276)

(declare-fun call!51773 () Regex!2276)

(assert (=> bm!51765 (= call!51772 call!51773)))

(declare-fun b!884714 () Bool)

(declare-fun c!143005 () Bool)

(assert (=> b!884714 (= c!143005 (is-Concat!4109 (regOne!5064 r!15766)))))

(assert (=> b!884714 (= e!580329 e!580330)))

(declare-fun b!884715 () Bool)

(declare-fun e!580326 () Regex!2276)

(assert (=> b!884715 (= e!580326 (regOne!5064 r!15766))))

(declare-fun b!884716 () Bool)

(declare-fun e!580327 () Regex!2276)

(assert (=> b!884716 (= e!580327 e!580329)))

(declare-fun c!143003 () Bool)

(assert (=> b!884716 (= c!143003 (and (is-Concat!4109 (regOne!5064 r!15766)) (is-EmptyExpr!2276 (regTwo!5064 (regOne!5064 r!15766)))))))

(declare-fun b!884717 () Bool)

(declare-fun call!51771 () Regex!2276)

(assert (=> b!884717 (= e!580330 (Concat!4109 call!51771 call!51773))))

(declare-fun d!276732 () Bool)

(declare-fun e!580328 () Bool)

(assert (=> d!276732 e!580328))

(declare-fun res!402405 () Bool)

(assert (=> d!276732 (=> (not res!402405) (not e!580328))))

(declare-fun lt!331313 () Regex!2276)

(assert (=> d!276732 (= res!402405 (validRegex!745 lt!331313))))

(assert (=> d!276732 (= lt!331313 e!580327)))

(declare-fun c!143002 () Bool)

(assert (=> d!276732 (= c!143002 (and (is-Concat!4109 (regOne!5064 r!15766)) (is-EmptyExpr!2276 (regOne!5064 (regOne!5064 r!15766)))))))

(assert (=> d!276732 (validRegex!745 (regOne!5064 r!15766))))

(assert (=> d!276732 (= (removeUselessConcat!19 (regOne!5064 r!15766)) lt!331313)))

(declare-fun b!884718 () Bool)

(assert (=> b!884718 (= e!580327 call!51770)))

(declare-fun bm!51766 () Bool)

(assert (=> bm!51766 (= call!51770 (removeUselessConcat!19 (ite c!143002 (regTwo!5064 (regOne!5064 r!15766)) (ite (or c!143003 c!143005) (regOne!5064 (regOne!5064 r!15766)) (regOne!5065 (regOne!5064 r!15766))))))))

(declare-fun b!884719 () Bool)

(assert (=> b!884719 (= e!580326 (Star!2276 call!51772))))

(declare-fun b!884720 () Bool)

(assert (=> b!884720 (= e!580328 (= (nullable!582 lt!331313) (nullable!582 (regOne!5064 r!15766))))))

(declare-fun bm!51767 () Bool)

(assert (=> bm!51767 (= call!51773 (removeUselessConcat!19 (ite c!143005 (regTwo!5064 (regOne!5064 r!15766)) (ite c!143004 (regTwo!5065 (regOne!5064 r!15766)) (reg!2605 (regOne!5064 r!15766))))))))

(declare-fun b!884721 () Bool)

(assert (=> b!884721 (= e!580325 (Union!2276 call!51771 call!51772))))

(declare-fun b!884722 () Bool)

(declare-fun c!143006 () Bool)

(assert (=> b!884722 (= c!143006 (is-Star!2276 (regOne!5064 r!15766)))))

(assert (=> b!884722 (= e!580325 e!580326)))

(declare-fun bm!51768 () Bool)

(assert (=> bm!51768 (= call!51771 call!51769)))

(assert (= (and d!276732 c!143002) b!884718))

(assert (= (and d!276732 (not c!143002)) b!884716))

(assert (= (and b!884716 c!143003) b!884713))

(assert (= (and b!884716 (not c!143003)) b!884714))

(assert (= (and b!884714 c!143005) b!884717))

(assert (= (and b!884714 (not c!143005)) b!884712))

(assert (= (and b!884712 c!143004) b!884721))

(assert (= (and b!884712 (not c!143004)) b!884722))

(assert (= (and b!884722 c!143006) b!884719))

(assert (= (and b!884722 (not c!143006)) b!884715))

(assert (= (or b!884721 b!884719) bm!51765))

(assert (= (or b!884717 bm!51765) bm!51767))

(assert (= (or b!884717 b!884721) bm!51768))

(assert (= (or b!884713 bm!51768) bm!51764))

(assert (= (or b!884718 bm!51764) bm!51766))

(assert (= (and d!276732 res!402405) b!884720))

(declare-fun m!1131055 () Bool)

(assert (=> d!276732 m!1131055))

(assert (=> d!276732 m!1131009))

(declare-fun m!1131057 () Bool)

(assert (=> bm!51766 m!1131057))

(declare-fun m!1131059 () Bool)

(assert (=> b!884720 m!1131059))

(declare-fun m!1131061 () Bool)

(assert (=> b!884720 m!1131061))

(declare-fun m!1131063 () Bool)

(assert (=> bm!51767 m!1131063))

(assert (=> b!884490 d!276732))

(declare-fun b!884727 () Bool)

(declare-fun e!580339 () Bool)

(assert (=> b!884727 (= e!580339 (matchR!814 (derivativeStep!394 (removeUselessConcat!19 (regTwo!5064 r!15766)) (head!1547 (_2!6145 lt!331255))) (tail!1109 (_2!6145 lt!331255))))))

(declare-fun b!884728 () Bool)

(declare-fun res!402415 () Bool)

(declare-fun e!580336 () Bool)

(assert (=> b!884728 (=> (not res!402415) (not e!580336))))

(declare-fun call!51774 () Bool)

(assert (=> b!884728 (= res!402415 (not call!51774))))

(declare-fun b!884729 () Bool)

(declare-fun e!580337 () Bool)

(declare-fun e!580334 () Bool)

(assert (=> b!884729 (= e!580337 e!580334)))

(declare-fun c!143009 () Bool)

(assert (=> b!884729 (= c!143009 (is-EmptyLang!2276 (removeUselessConcat!19 (regTwo!5064 r!15766))))))

(declare-fun b!884730 () Bool)

(declare-fun lt!331314 () Bool)

(assert (=> b!884730 (= e!580337 (= lt!331314 call!51774))))

(declare-fun bm!51769 () Bool)

(assert (=> bm!51769 (= call!51774 (isEmpty!5693 (_2!6145 lt!331255)))))

(declare-fun b!884732 () Bool)

(declare-fun res!402413 () Bool)

(declare-fun e!580333 () Bool)

(assert (=> b!884732 (=> res!402413 e!580333)))

(assert (=> b!884732 (= res!402413 e!580336)))

(declare-fun res!402416 () Bool)

(assert (=> b!884732 (=> (not res!402416) (not e!580336))))

(assert (=> b!884732 (= res!402416 lt!331314)))

(declare-fun b!884733 () Bool)

(assert (=> b!884733 (= e!580339 (nullable!582 (removeUselessConcat!19 (regTwo!5064 r!15766))))))

(declare-fun b!884734 () Bool)

(declare-fun res!402411 () Bool)

(declare-fun e!580338 () Bool)

(assert (=> b!884734 (=> res!402411 e!580338)))

(assert (=> b!884734 (= res!402411 (not (isEmpty!5693 (tail!1109 (_2!6145 lt!331255)))))))

(declare-fun b!884735 () Bool)

(assert (=> b!884735 (= e!580336 (= (head!1547 (_2!6145 lt!331255)) (c!142957 (removeUselessConcat!19 (regTwo!5064 r!15766)))))))

(declare-fun b!884736 () Bool)

(declare-fun e!580335 () Bool)

(assert (=> b!884736 (= e!580333 e!580335)))

(declare-fun res!402412 () Bool)

(assert (=> b!884736 (=> (not res!402412) (not e!580335))))

(assert (=> b!884736 (= res!402412 (not lt!331314))))

(declare-fun b!884737 () Bool)

(declare-fun res!402417 () Bool)

(assert (=> b!884737 (=> res!402417 e!580333)))

(assert (=> b!884737 (= res!402417 (not (is-ElementMatch!2276 (removeUselessConcat!19 (regTwo!5064 r!15766)))))))

(assert (=> b!884737 (= e!580334 e!580333)))

(declare-fun b!884738 () Bool)

(declare-fun res!402414 () Bool)

(assert (=> b!884738 (=> (not res!402414) (not e!580336))))

(assert (=> b!884738 (= res!402414 (isEmpty!5693 (tail!1109 (_2!6145 lt!331255))))))

(declare-fun b!884739 () Bool)

(assert (=> b!884739 (= e!580338 (not (= (head!1547 (_2!6145 lt!331255)) (c!142957 (removeUselessConcat!19 (regTwo!5064 r!15766))))))))

(declare-fun b!884740 () Bool)

(assert (=> b!884740 (= e!580334 (not lt!331314))))

(declare-fun d!276734 () Bool)

(assert (=> d!276734 e!580337))

(declare-fun c!143008 () Bool)

(assert (=> d!276734 (= c!143008 (is-EmptyExpr!2276 (removeUselessConcat!19 (regTwo!5064 r!15766))))))

(assert (=> d!276734 (= lt!331314 e!580339)))

(declare-fun c!143007 () Bool)

(assert (=> d!276734 (= c!143007 (isEmpty!5693 (_2!6145 lt!331255)))))

(assert (=> d!276734 (validRegex!745 (removeUselessConcat!19 (regTwo!5064 r!15766)))))

(assert (=> d!276734 (= (matchR!814 (removeUselessConcat!19 (regTwo!5064 r!15766)) (_2!6145 lt!331255)) lt!331314)))

(declare-fun b!884731 () Bool)

(assert (=> b!884731 (= e!580335 e!580338)))

(declare-fun res!402410 () Bool)

(assert (=> b!884731 (=> res!402410 e!580338)))

(assert (=> b!884731 (= res!402410 call!51774)))

(assert (= (and d!276734 c!143007) b!884733))

(assert (= (and d!276734 (not c!143007)) b!884727))

(assert (= (and d!276734 c!143008) b!884730))

(assert (= (and d!276734 (not c!143008)) b!884729))

(assert (= (and b!884729 c!143009) b!884740))

(assert (= (and b!884729 (not c!143009)) b!884737))

(assert (= (and b!884737 (not res!402417)) b!884732))

(assert (= (and b!884732 res!402416) b!884728))

(assert (= (and b!884728 res!402415) b!884738))

(assert (= (and b!884738 res!402414) b!884735))

(assert (= (and b!884732 (not res!402413)) b!884736))

(assert (= (and b!884736 res!402412) b!884731))

(assert (= (and b!884731 (not res!402410)) b!884734))

(assert (= (and b!884734 (not res!402411)) b!884739))

(assert (= (or b!884730 b!884728 b!884731) bm!51769))

(assert (=> b!884727 m!1130989))

(assert (=> b!884727 m!1130925))

(assert (=> b!884727 m!1130989))

(declare-fun m!1131065 () Bool)

(assert (=> b!884727 m!1131065))

(assert (=> b!884727 m!1130993))

(assert (=> b!884727 m!1131065))

(assert (=> b!884727 m!1130993))

(declare-fun m!1131067 () Bool)

(assert (=> b!884727 m!1131067))

(assert (=> b!884733 m!1130925))

(declare-fun m!1131069 () Bool)

(assert (=> b!884733 m!1131069))

(assert (=> d!276734 m!1130999))

(assert (=> d!276734 m!1130925))

(declare-fun m!1131071 () Bool)

(assert (=> d!276734 m!1131071))

(assert (=> b!884739 m!1130989))

(assert (=> b!884738 m!1130993))

(assert (=> b!884738 m!1130993))

(assert (=> b!884738 m!1131003))

(assert (=> b!884734 m!1130993))

(assert (=> b!884734 m!1130993))

(assert (=> b!884734 m!1131003))

(assert (=> bm!51769 m!1130999))

(assert (=> b!884735 m!1130989))

(assert (=> b!884490 d!276734))

(declare-fun b!884759 () Bool)

(declare-fun e!580359 () Bool)

(declare-fun e!580357 () Bool)

(assert (=> b!884759 (= e!580359 e!580357)))

(declare-fun c!143015 () Bool)

(assert (=> b!884759 (= c!143015 (is-Star!2276 lt!331252))))

(declare-fun b!884760 () Bool)

(declare-fun e!580355 () Bool)

(declare-fun call!51784 () Bool)

(assert (=> b!884760 (= e!580355 call!51784)))

(declare-fun b!884761 () Bool)

(declare-fun e!580356 () Bool)

(declare-fun call!51785 () Bool)

(assert (=> b!884761 (= e!580356 call!51785)))

(declare-fun b!884762 () Bool)

(assert (=> b!884762 (= e!580357 e!580356)))

(declare-fun res!402428 () Bool)

(assert (=> b!884762 (= res!402428 (not (nullable!582 (reg!2605 lt!331252))))))

(assert (=> b!884762 (=> (not res!402428) (not e!580356))))

(declare-fun b!884763 () Bool)

(declare-fun e!580358 () Bool)

(assert (=> b!884763 (= e!580357 e!580358)))

(declare-fun c!143014 () Bool)

(assert (=> b!884763 (= c!143014 (is-Union!2276 lt!331252))))

(declare-fun bm!51778 () Bool)

(assert (=> bm!51778 (= call!51785 (validRegex!745 (ite c!143015 (reg!2605 lt!331252) (ite c!143014 (regOne!5065 lt!331252) (regOne!5064 lt!331252)))))))

(declare-fun b!884764 () Bool)

(declare-fun e!580360 () Bool)

(declare-fun e!580354 () Bool)

(assert (=> b!884764 (= e!580360 e!580354)))

(declare-fun res!402429 () Bool)

(assert (=> b!884764 (=> (not res!402429) (not e!580354))))

(declare-fun call!51783 () Bool)

(assert (=> b!884764 (= res!402429 call!51783)))

(declare-fun bm!51780 () Bool)

(assert (=> bm!51780 (= call!51784 (validRegex!745 (ite c!143014 (regTwo!5065 lt!331252) (regTwo!5064 lt!331252))))))

(declare-fun b!884765 () Bool)

(assert (=> b!884765 (= e!580354 call!51784)))

(declare-fun b!884766 () Bool)

(declare-fun res!402432 () Bool)

(assert (=> b!884766 (=> res!402432 e!580360)))

(assert (=> b!884766 (= res!402432 (not (is-Concat!4109 lt!331252)))))

(assert (=> b!884766 (= e!580358 e!580360)))

(declare-fun b!884767 () Bool)

(declare-fun res!402430 () Bool)

(assert (=> b!884767 (=> (not res!402430) (not e!580355))))

(assert (=> b!884767 (= res!402430 call!51783)))

(assert (=> b!884767 (= e!580358 e!580355)))

(declare-fun bm!51779 () Bool)

(assert (=> bm!51779 (= call!51783 call!51785)))

(declare-fun d!276736 () Bool)

(declare-fun res!402431 () Bool)

(assert (=> d!276736 (=> res!402431 e!580359)))

(assert (=> d!276736 (= res!402431 (is-ElementMatch!2276 lt!331252))))

(assert (=> d!276736 (= (validRegex!745 lt!331252) e!580359)))

(assert (= (and d!276736 (not res!402431)) b!884759))

(assert (= (and b!884759 c!143015) b!884762))

(assert (= (and b!884759 (not c!143015)) b!884763))

(assert (= (and b!884762 res!402428) b!884761))

(assert (= (and b!884763 c!143014) b!884767))

(assert (= (and b!884763 (not c!143014)) b!884766))

(assert (= (and b!884767 res!402430) b!884760))

(assert (= (and b!884766 (not res!402432)) b!884764))

(assert (= (and b!884764 res!402429) b!884765))

(assert (= (or b!884760 b!884765) bm!51780))

(assert (= (or b!884767 b!884764) bm!51779))

(assert (= (or b!884761 bm!51779) bm!51778))

(declare-fun m!1131073 () Bool)

(assert (=> b!884762 m!1131073))

(declare-fun m!1131075 () Bool)

(assert (=> bm!51778 m!1131075))

(declare-fun m!1131077 () Bool)

(assert (=> bm!51780 m!1131077))

(assert (=> b!884490 d!276736))

(declare-fun d!276738 () Bool)

(assert (=> d!276738 (= (matchR!814 (regOne!5064 r!15766) (_1!6145 lt!331255)) (matchR!814 (removeUselessConcat!19 (regOne!5064 r!15766)) (_1!6145 lt!331255)))))

(declare-fun lt!331315 () Unit!14131)

(assert (=> d!276738 (= lt!331315 (choose!5256 (regOne!5064 r!15766) (_1!6145 lt!331255)))))

(assert (=> d!276738 (validRegex!745 (regOne!5064 r!15766))))

(assert (=> d!276738 (= (lemmaRemoveUselessConcatSound!13 (regOne!5064 r!15766) (_1!6145 lt!331255)) lt!331315)))

(declare-fun bs!234635 () Bool)

(assert (= bs!234635 d!276738))

(assert (=> bs!234635 m!1131009))

(assert (=> bs!234635 m!1130927))

(assert (=> bs!234635 m!1130927))

(declare-fun m!1131079 () Bool)

(assert (=> bs!234635 m!1131079))

(declare-fun m!1131081 () Bool)

(assert (=> bs!234635 m!1131081))

(assert (=> bs!234635 m!1130935))

(assert (=> b!884490 d!276738))

(declare-fun b!884768 () Bool)

(declare-fun e!580367 () Bool)

(assert (=> b!884768 (= e!580367 (matchR!814 (derivativeStep!394 lt!331252 (head!1547 (_1!6145 lt!331255))) (tail!1109 (_1!6145 lt!331255))))))

(declare-fun b!884769 () Bool)

(declare-fun res!402438 () Bool)

(declare-fun e!580364 () Bool)

(assert (=> b!884769 (=> (not res!402438) (not e!580364))))

(declare-fun call!51786 () Bool)

(assert (=> b!884769 (= res!402438 (not call!51786))))

(declare-fun b!884770 () Bool)

(declare-fun e!580365 () Bool)

(declare-fun e!580362 () Bool)

(assert (=> b!884770 (= e!580365 e!580362)))

(declare-fun c!143018 () Bool)

(assert (=> b!884770 (= c!143018 (is-EmptyLang!2276 lt!331252))))

(declare-fun b!884771 () Bool)

(declare-fun lt!331316 () Bool)

(assert (=> b!884771 (= e!580365 (= lt!331316 call!51786))))

(declare-fun bm!51781 () Bool)

(assert (=> bm!51781 (= call!51786 (isEmpty!5693 (_1!6145 lt!331255)))))

(declare-fun b!884773 () Bool)

(declare-fun res!402436 () Bool)

(declare-fun e!580361 () Bool)

(assert (=> b!884773 (=> res!402436 e!580361)))

(assert (=> b!884773 (= res!402436 e!580364)))

(declare-fun res!402439 () Bool)

(assert (=> b!884773 (=> (not res!402439) (not e!580364))))

(assert (=> b!884773 (= res!402439 lt!331316)))

(declare-fun b!884774 () Bool)

(assert (=> b!884774 (= e!580367 (nullable!582 lt!331252))))

(declare-fun b!884775 () Bool)

(declare-fun res!402434 () Bool)

(declare-fun e!580366 () Bool)

(assert (=> b!884775 (=> res!402434 e!580366)))

(assert (=> b!884775 (= res!402434 (not (isEmpty!5693 (tail!1109 (_1!6145 lt!331255)))))))

(declare-fun b!884776 () Bool)

(assert (=> b!884776 (= e!580364 (= (head!1547 (_1!6145 lt!331255)) (c!142957 lt!331252)))))

(declare-fun b!884777 () Bool)

(declare-fun e!580363 () Bool)

(assert (=> b!884777 (= e!580361 e!580363)))

(declare-fun res!402435 () Bool)

(assert (=> b!884777 (=> (not res!402435) (not e!580363))))

(assert (=> b!884777 (= res!402435 (not lt!331316))))

(declare-fun b!884778 () Bool)

(declare-fun res!402440 () Bool)

(assert (=> b!884778 (=> res!402440 e!580361)))

(assert (=> b!884778 (= res!402440 (not (is-ElementMatch!2276 lt!331252)))))

(assert (=> b!884778 (= e!580362 e!580361)))

(declare-fun b!884779 () Bool)

(declare-fun res!402437 () Bool)

(assert (=> b!884779 (=> (not res!402437) (not e!580364))))

(assert (=> b!884779 (= res!402437 (isEmpty!5693 (tail!1109 (_1!6145 lt!331255))))))

(declare-fun b!884780 () Bool)

(assert (=> b!884780 (= e!580366 (not (= (head!1547 (_1!6145 lt!331255)) (c!142957 lt!331252))))))

(declare-fun b!884781 () Bool)

(assert (=> b!884781 (= e!580362 (not lt!331316))))

(declare-fun d!276740 () Bool)

(assert (=> d!276740 e!580365))

(declare-fun c!143017 () Bool)

(assert (=> d!276740 (= c!143017 (is-EmptyExpr!2276 lt!331252))))

(assert (=> d!276740 (= lt!331316 e!580367)))

(declare-fun c!143016 () Bool)

(assert (=> d!276740 (= c!143016 (isEmpty!5693 (_1!6145 lt!331255)))))

(assert (=> d!276740 (validRegex!745 lt!331252)))

(assert (=> d!276740 (= (matchR!814 lt!331252 (_1!6145 lt!331255)) lt!331316)))

(declare-fun b!884772 () Bool)

(assert (=> b!884772 (= e!580363 e!580366)))

(declare-fun res!402433 () Bool)

(assert (=> b!884772 (=> res!402433 e!580366)))

(assert (=> b!884772 (= res!402433 call!51786)))

(assert (= (and d!276740 c!143016) b!884774))

(assert (= (and d!276740 (not c!143016)) b!884768))

(assert (= (and d!276740 c!143017) b!884771))

(assert (= (and d!276740 (not c!143017)) b!884770))

(assert (= (and b!884770 c!143018) b!884781))

(assert (= (and b!884770 (not c!143018)) b!884778))

(assert (= (and b!884778 (not res!402440)) b!884773))

(assert (= (and b!884773 res!402439) b!884769))

(assert (= (and b!884769 res!402438) b!884779))

(assert (= (and b!884779 res!402437) b!884776))

(assert (= (and b!884773 (not res!402436)) b!884777))

(assert (= (and b!884777 res!402435) b!884772))

(assert (= (and b!884772 (not res!402433)) b!884775))

(assert (= (and b!884775 (not res!402434)) b!884780))

(assert (= (or b!884771 b!884769 b!884772) bm!51781))

(declare-fun m!1131083 () Bool)

(assert (=> b!884768 m!1131083))

(assert (=> b!884768 m!1131083))

(declare-fun m!1131085 () Bool)

(assert (=> b!884768 m!1131085))

(declare-fun m!1131087 () Bool)

(assert (=> b!884768 m!1131087))

(assert (=> b!884768 m!1131085))

(assert (=> b!884768 m!1131087))

(declare-fun m!1131089 () Bool)

(assert (=> b!884768 m!1131089))

(declare-fun m!1131091 () Bool)

(assert (=> b!884774 m!1131091))

(declare-fun m!1131093 () Bool)

(assert (=> d!276740 m!1131093))

(assert (=> d!276740 m!1130929))

(assert (=> b!884780 m!1131083))

(assert (=> b!884779 m!1131087))

(assert (=> b!884779 m!1131087))

(declare-fun m!1131095 () Bool)

(assert (=> b!884779 m!1131095))

(assert (=> b!884775 m!1131087))

(assert (=> b!884775 m!1131087))

(assert (=> b!884775 m!1131095))

(assert (=> bm!51781 m!1131093))

(assert (=> b!884776 m!1131083))

(assert (=> b!884490 d!276740))

(declare-fun bm!51783 () Bool)

(declare-fun call!51788 () Regex!2276)

(declare-fun call!51789 () Regex!2276)

(assert (=> bm!51783 (= call!51788 call!51789)))

(declare-fun b!884796 () Bool)

(declare-fun e!580380 () Regex!2276)

(declare-fun e!580372 () Regex!2276)

(assert (=> b!884796 (= e!580380 e!580372)))

(declare-fun c!143024 () Bool)

(assert (=> b!884796 (= c!143024 (is-Union!2276 (regTwo!5064 r!15766)))))

(declare-fun b!884797 () Bool)

(declare-fun e!580379 () Regex!2276)

(assert (=> b!884797 (= e!580379 call!51788)))

(declare-fun bm!51784 () Bool)

(declare-fun call!51791 () Regex!2276)

(declare-fun call!51792 () Regex!2276)

(assert (=> bm!51784 (= call!51791 call!51792)))

(declare-fun b!884798 () Bool)

(declare-fun c!143025 () Bool)

(assert (=> b!884798 (= c!143025 (is-Concat!4109 (regTwo!5064 r!15766)))))

(assert (=> b!884798 (= e!580379 e!580380)))

(declare-fun b!884799 () Bool)

(declare-fun e!580376 () Regex!2276)

(assert (=> b!884799 (= e!580376 (regTwo!5064 r!15766))))

(declare-fun b!884800 () Bool)

(declare-fun e!580377 () Regex!2276)

(assert (=> b!884800 (= e!580377 e!580379)))

(declare-fun c!143023 () Bool)

(assert (=> b!884800 (= c!143023 (and (is-Concat!4109 (regTwo!5064 r!15766)) (is-EmptyExpr!2276 (regTwo!5064 (regTwo!5064 r!15766)))))))

(declare-fun b!884801 () Bool)

(declare-fun call!51790 () Regex!2276)

(assert (=> b!884801 (= e!580380 (Concat!4109 call!51790 call!51792))))

(declare-fun d!276742 () Bool)

(declare-fun e!580378 () Bool)

(assert (=> d!276742 e!580378))

(declare-fun res!402449 () Bool)

(assert (=> d!276742 (=> (not res!402449) (not e!580378))))

(declare-fun lt!331318 () Regex!2276)

(assert (=> d!276742 (= res!402449 (validRegex!745 lt!331318))))

(assert (=> d!276742 (= lt!331318 e!580377)))

(declare-fun c!143022 () Bool)

(assert (=> d!276742 (= c!143022 (and (is-Concat!4109 (regTwo!5064 r!15766)) (is-EmptyExpr!2276 (regOne!5064 (regTwo!5064 r!15766)))))))

(assert (=> d!276742 (validRegex!745 (regTwo!5064 r!15766))))

(assert (=> d!276742 (= (removeUselessConcat!19 (regTwo!5064 r!15766)) lt!331318)))

(declare-fun b!884802 () Bool)

(assert (=> b!884802 (= e!580377 call!51789)))

(declare-fun bm!51785 () Bool)

(assert (=> bm!51785 (= call!51789 (removeUselessConcat!19 (ite c!143022 (regTwo!5064 (regTwo!5064 r!15766)) (ite (or c!143023 c!143025) (regOne!5064 (regTwo!5064 r!15766)) (regOne!5065 (regTwo!5064 r!15766))))))))

(declare-fun b!884803 () Bool)

(assert (=> b!884803 (= e!580376 (Star!2276 call!51791))))

(declare-fun b!884804 () Bool)

(assert (=> b!884804 (= e!580378 (= (nullable!582 lt!331318) (nullable!582 (regTwo!5064 r!15766))))))

(declare-fun bm!51786 () Bool)

(assert (=> bm!51786 (= call!51792 (removeUselessConcat!19 (ite c!143025 (regTwo!5064 (regTwo!5064 r!15766)) (ite c!143024 (regTwo!5065 (regTwo!5064 r!15766)) (reg!2605 (regTwo!5064 r!15766))))))))

(declare-fun b!884805 () Bool)

(assert (=> b!884805 (= e!580372 (Union!2276 call!51790 call!51791))))

(declare-fun b!884806 () Bool)

(declare-fun c!143026 () Bool)

(assert (=> b!884806 (= c!143026 (is-Star!2276 (regTwo!5064 r!15766)))))

(assert (=> b!884806 (= e!580372 e!580376)))

(declare-fun bm!51787 () Bool)

(assert (=> bm!51787 (= call!51790 call!51788)))

(assert (= (and d!276742 c!143022) b!884802))

(assert (= (and d!276742 (not c!143022)) b!884800))

(assert (= (and b!884800 c!143023) b!884797))

(assert (= (and b!884800 (not c!143023)) b!884798))

(assert (= (and b!884798 c!143025) b!884801))

(assert (= (and b!884798 (not c!143025)) b!884796))

(assert (= (and b!884796 c!143024) b!884805))

(assert (= (and b!884796 (not c!143024)) b!884806))

(assert (= (and b!884806 c!143026) b!884803))

(assert (= (and b!884806 (not c!143026)) b!884799))

(assert (= (or b!884805 b!884803) bm!51784))

(assert (= (or b!884801 bm!51784) bm!51786))

(assert (= (or b!884801 b!884805) bm!51787))

(assert (= (or b!884797 bm!51787) bm!51783))

(assert (= (or b!884802 bm!51783) bm!51785))

(assert (= (and d!276742 res!402449) b!884804))

(declare-fun m!1131097 () Bool)

(assert (=> d!276742 m!1131097))

(assert (=> d!276742 m!1131001))

(declare-fun m!1131099 () Bool)

(assert (=> bm!51785 m!1131099))

(declare-fun m!1131101 () Bool)

(assert (=> b!884804 m!1131101))

(assert (=> b!884804 m!1130997))

(declare-fun m!1131103 () Bool)

(assert (=> bm!51786 m!1131103))

(assert (=> b!884490 d!276742))

(declare-fun b!884807 () Bool)

(declare-fun e!580387 () Bool)

(assert (=> b!884807 (= e!580387 (matchR!814 (derivativeStep!394 (regOne!5064 r!15766) (head!1547 (_1!6145 lt!331255))) (tail!1109 (_1!6145 lt!331255))))))

(declare-fun b!884808 () Bool)

(declare-fun res!402455 () Bool)

(declare-fun e!580384 () Bool)

(assert (=> b!884808 (=> (not res!402455) (not e!580384))))

(declare-fun call!51793 () Bool)

(assert (=> b!884808 (= res!402455 (not call!51793))))

(declare-fun b!884809 () Bool)

(declare-fun e!580385 () Bool)

(declare-fun e!580382 () Bool)

(assert (=> b!884809 (= e!580385 e!580382)))

(declare-fun c!143029 () Bool)

(assert (=> b!884809 (= c!143029 (is-EmptyLang!2276 (regOne!5064 r!15766)))))

(declare-fun b!884810 () Bool)

(declare-fun lt!331319 () Bool)

(assert (=> b!884810 (= e!580385 (= lt!331319 call!51793))))

(declare-fun bm!51788 () Bool)

(assert (=> bm!51788 (= call!51793 (isEmpty!5693 (_1!6145 lt!331255)))))

(declare-fun b!884812 () Bool)

(declare-fun res!402453 () Bool)

(declare-fun e!580381 () Bool)

(assert (=> b!884812 (=> res!402453 e!580381)))

(assert (=> b!884812 (= res!402453 e!580384)))

(declare-fun res!402456 () Bool)

(assert (=> b!884812 (=> (not res!402456) (not e!580384))))

(assert (=> b!884812 (= res!402456 lt!331319)))

(declare-fun b!884813 () Bool)

(assert (=> b!884813 (= e!580387 (nullable!582 (regOne!5064 r!15766)))))

(declare-fun b!884814 () Bool)

(declare-fun res!402451 () Bool)

(declare-fun e!580386 () Bool)

(assert (=> b!884814 (=> res!402451 e!580386)))

(assert (=> b!884814 (= res!402451 (not (isEmpty!5693 (tail!1109 (_1!6145 lt!331255)))))))

(declare-fun b!884815 () Bool)

(assert (=> b!884815 (= e!580384 (= (head!1547 (_1!6145 lt!331255)) (c!142957 (regOne!5064 r!15766))))))

(declare-fun b!884816 () Bool)

(declare-fun e!580383 () Bool)

(assert (=> b!884816 (= e!580381 e!580383)))

(declare-fun res!402452 () Bool)

(assert (=> b!884816 (=> (not res!402452) (not e!580383))))

(assert (=> b!884816 (= res!402452 (not lt!331319))))

(declare-fun b!884817 () Bool)

(declare-fun res!402457 () Bool)

(assert (=> b!884817 (=> res!402457 e!580381)))

(assert (=> b!884817 (= res!402457 (not (is-ElementMatch!2276 (regOne!5064 r!15766))))))

(assert (=> b!884817 (= e!580382 e!580381)))

(declare-fun b!884818 () Bool)

(declare-fun res!402454 () Bool)

(assert (=> b!884818 (=> (not res!402454) (not e!580384))))

(assert (=> b!884818 (= res!402454 (isEmpty!5693 (tail!1109 (_1!6145 lt!331255))))))

(declare-fun b!884819 () Bool)

(assert (=> b!884819 (= e!580386 (not (= (head!1547 (_1!6145 lt!331255)) (c!142957 (regOne!5064 r!15766)))))))

(declare-fun b!884820 () Bool)

(assert (=> b!884820 (= e!580382 (not lt!331319))))

(declare-fun d!276744 () Bool)

(assert (=> d!276744 e!580385))

(declare-fun c!143028 () Bool)

(assert (=> d!276744 (= c!143028 (is-EmptyExpr!2276 (regOne!5064 r!15766)))))

(assert (=> d!276744 (= lt!331319 e!580387)))

(declare-fun c!143027 () Bool)

(assert (=> d!276744 (= c!143027 (isEmpty!5693 (_1!6145 lt!331255)))))

(assert (=> d!276744 (validRegex!745 (regOne!5064 r!15766))))

(assert (=> d!276744 (= (matchR!814 (regOne!5064 r!15766) (_1!6145 lt!331255)) lt!331319)))

(declare-fun b!884811 () Bool)

(assert (=> b!884811 (= e!580383 e!580386)))

(declare-fun res!402450 () Bool)

(assert (=> b!884811 (=> res!402450 e!580386)))

(assert (=> b!884811 (= res!402450 call!51793)))

(assert (= (and d!276744 c!143027) b!884813))

(assert (= (and d!276744 (not c!143027)) b!884807))

(assert (= (and d!276744 c!143028) b!884810))

(assert (= (and d!276744 (not c!143028)) b!884809))

(assert (= (and b!884809 c!143029) b!884820))

(assert (= (and b!884809 (not c!143029)) b!884817))

(assert (= (and b!884817 (not res!402457)) b!884812))

(assert (= (and b!884812 res!402456) b!884808))

(assert (= (and b!884808 res!402455) b!884818))

(assert (= (and b!884818 res!402454) b!884815))

(assert (= (and b!884812 (not res!402453)) b!884816))

(assert (= (and b!884816 res!402452) b!884811))

(assert (= (and b!884811 (not res!402450)) b!884814))

(assert (= (and b!884814 (not res!402451)) b!884819))

(assert (= (or b!884810 b!884808 b!884811) bm!51788))

(assert (=> b!884807 m!1131083))

(assert (=> b!884807 m!1131083))

(declare-fun m!1131105 () Bool)

(assert (=> b!884807 m!1131105))

(assert (=> b!884807 m!1131087))

(assert (=> b!884807 m!1131105))

(assert (=> b!884807 m!1131087))

(declare-fun m!1131107 () Bool)

(assert (=> b!884807 m!1131107))

(assert (=> b!884813 m!1131061))

(assert (=> d!276744 m!1131093))

(assert (=> d!276744 m!1131009))

(assert (=> b!884819 m!1131083))

(assert (=> b!884818 m!1131087))

(assert (=> b!884818 m!1131087))

(assert (=> b!884818 m!1131095))

(assert (=> b!884814 m!1131087))

(assert (=> b!884814 m!1131087))

(assert (=> b!884814 m!1131095))

(assert (=> bm!51788 m!1131093))

(assert (=> b!884815 m!1131083))

(assert (=> b!884487 d!276744))

(declare-fun d!276746 () Bool)

(assert (=> d!276746 (= (get!2964 lt!331254) (v!19377 lt!331254))))

(assert (=> b!884487 d!276746))

(declare-fun bs!234638 () Bool)

(declare-fun b!884877 () Bool)

(assert (= bs!234638 (and b!884877 d!276718)))

(declare-fun lambda!27298 () Int)

(assert (=> bs!234638 (not (= lambda!27298 lambda!27281))))

(declare-fun bs!234639 () Bool)

(assert (= bs!234639 (and b!884877 b!884484)))

(assert (=> bs!234639 (not (= lambda!27298 lambda!27269))))

(declare-fun bs!234640 () Bool)

(assert (= bs!234640 (and b!884877 d!276726)))

(assert (=> bs!234640 (not (= lambda!27298 lambda!27293))))

(assert (=> bs!234640 (not (= lambda!27298 lambda!27292))))

(assert (=> bs!234639 (not (= lambda!27298 lambda!27270))))

(assert (=> b!884877 true))

(assert (=> b!884877 true))

(declare-fun bs!234641 () Bool)

(declare-fun b!884871 () Bool)

(assert (= bs!234641 (and b!884871 b!884877)))

(declare-fun lambda!27299 () Int)

(assert (=> bs!234641 (not (= lambda!27299 lambda!27298))))

(declare-fun bs!234642 () Bool)

(assert (= bs!234642 (and b!884871 d!276718)))

(assert (=> bs!234642 (not (= lambda!27299 lambda!27281))))

(declare-fun bs!234643 () Bool)

(assert (= bs!234643 (and b!884871 b!884484)))

(assert (=> bs!234643 (not (= lambda!27299 lambda!27269))))

(declare-fun bs!234644 () Bool)

(assert (= bs!234644 (and b!884871 d!276726)))

(assert (=> bs!234644 (= lambda!27299 lambda!27293)))

(assert (=> bs!234644 (not (= lambda!27299 lambda!27292))))

(assert (=> bs!234643 (= lambda!27299 lambda!27270)))

(assert (=> b!884871 true))

(assert (=> b!884871 true))

(declare-fun b!884867 () Bool)

(declare-fun res!402482 () Bool)

(declare-fun e!580419 () Bool)

(assert (=> b!884867 (=> res!402482 e!580419)))

(declare-fun call!51800 () Bool)

(assert (=> b!884867 (= res!402482 call!51800)))

(declare-fun e!580414 () Bool)

(assert (=> b!884867 (= e!580414 e!580419)))

(declare-fun b!884868 () Bool)

(declare-fun e!580415 () Bool)

(assert (=> b!884868 (= e!580415 e!580414)))

(declare-fun c!143044 () Bool)

(assert (=> b!884868 (= c!143044 (is-Star!2276 r!15766))))

(declare-fun b!884869 () Bool)

(declare-fun e!580418 () Bool)

(assert (=> b!884869 (= e!580418 (= s!10566 (Cons!9490 (c!142957 r!15766) Nil!9490)))))

(declare-fun b!884870 () Bool)

(declare-fun c!143042 () Bool)

(assert (=> b!884870 (= c!143042 (is-ElementMatch!2276 r!15766))))

(declare-fun e!580417 () Bool)

(assert (=> b!884870 (= e!580417 e!580418)))

(declare-fun bm!51794 () Bool)

(assert (=> bm!51794 (= call!51800 (isEmpty!5693 s!10566))))

(declare-fun call!51799 () Bool)

(assert (=> b!884871 (= e!580414 call!51799)))

(declare-fun b!884873 () Bool)

(declare-fun e!580416 () Bool)

(assert (=> b!884873 (= e!580416 e!580417)))

(declare-fun res!402483 () Bool)

(assert (=> b!884873 (= res!402483 (not (is-EmptyLang!2276 r!15766)))))

(assert (=> b!884873 (=> (not res!402483) (not e!580417))))

(declare-fun b!884874 () Bool)

(assert (=> b!884874 (= e!580416 call!51800)))

(declare-fun bm!51795 () Bool)

(assert (=> bm!51795 (= call!51799 (Exists!71 (ite c!143044 lambda!27298 lambda!27299)))))

(declare-fun b!884875 () Bool)

(declare-fun c!143043 () Bool)

(assert (=> b!884875 (= c!143043 (is-Union!2276 r!15766))))

(assert (=> b!884875 (= e!580418 e!580415)))

(declare-fun b!884876 () Bool)

(declare-fun e!580413 () Bool)

(assert (=> b!884876 (= e!580415 e!580413)))

(declare-fun res!402484 () Bool)

(assert (=> b!884876 (= res!402484 (matchRSpec!77 (regOne!5065 r!15766) s!10566))))

(assert (=> b!884876 (=> res!402484 e!580413)))

(assert (=> b!884877 (= e!580419 call!51799)))

(declare-fun b!884872 () Bool)

(assert (=> b!884872 (= e!580413 (matchRSpec!77 (regTwo!5065 r!15766) s!10566))))

(declare-fun d!276748 () Bool)

(declare-fun c!143041 () Bool)

(assert (=> d!276748 (= c!143041 (is-EmptyExpr!2276 r!15766))))

(assert (=> d!276748 (= (matchRSpec!77 r!15766 s!10566) e!580416)))

(assert (= (and d!276748 c!143041) b!884874))

(assert (= (and d!276748 (not c!143041)) b!884873))

(assert (= (and b!884873 res!402483) b!884870))

(assert (= (and b!884870 c!143042) b!884869))

(assert (= (and b!884870 (not c!143042)) b!884875))

(assert (= (and b!884875 c!143043) b!884876))

(assert (= (and b!884875 (not c!143043)) b!884868))

(assert (= (and b!884876 (not res!402484)) b!884872))

(assert (= (and b!884868 c!143044) b!884867))

(assert (= (and b!884868 (not c!143044)) b!884871))

(assert (= (and b!884867 (not res!402482)) b!884877))

(assert (= (or b!884877 b!884871) bm!51795))

(assert (= (or b!884874 b!884867) bm!51794))

(assert (=> bm!51794 m!1130911))

(declare-fun m!1131141 () Bool)

(assert (=> bm!51795 m!1131141))

(declare-fun m!1131143 () Bool)

(assert (=> b!884876 m!1131143))

(declare-fun m!1131145 () Bool)

(assert (=> b!884872 m!1131145))

(assert (=> b!884485 d!276748))

(declare-fun b!884878 () Bool)

(declare-fun e!580426 () Bool)

(assert (=> b!884878 (= e!580426 (matchR!814 (derivativeStep!394 r!15766 (head!1547 s!10566)) (tail!1109 s!10566)))))

(declare-fun b!884879 () Bool)

(declare-fun res!402490 () Bool)

(declare-fun e!580423 () Bool)

(assert (=> b!884879 (=> (not res!402490) (not e!580423))))

(declare-fun call!51801 () Bool)

(assert (=> b!884879 (= res!402490 (not call!51801))))

(declare-fun b!884880 () Bool)

(declare-fun e!580424 () Bool)

(declare-fun e!580421 () Bool)

(assert (=> b!884880 (= e!580424 e!580421)))

(declare-fun c!143047 () Bool)

(assert (=> b!884880 (= c!143047 (is-EmptyLang!2276 r!15766))))

(declare-fun b!884881 () Bool)

(declare-fun lt!331324 () Bool)

(assert (=> b!884881 (= e!580424 (= lt!331324 call!51801))))

(declare-fun bm!51796 () Bool)

(assert (=> bm!51796 (= call!51801 (isEmpty!5693 s!10566))))

(declare-fun b!884883 () Bool)

(declare-fun res!402488 () Bool)

(declare-fun e!580420 () Bool)

(assert (=> b!884883 (=> res!402488 e!580420)))

(assert (=> b!884883 (= res!402488 e!580423)))

(declare-fun res!402491 () Bool)

(assert (=> b!884883 (=> (not res!402491) (not e!580423))))

(assert (=> b!884883 (= res!402491 lt!331324)))

(declare-fun b!884884 () Bool)

(assert (=> b!884884 (= e!580426 (nullable!582 r!15766))))

(declare-fun b!884885 () Bool)

(declare-fun res!402486 () Bool)

(declare-fun e!580425 () Bool)

(assert (=> b!884885 (=> res!402486 e!580425)))

(assert (=> b!884885 (= res!402486 (not (isEmpty!5693 (tail!1109 s!10566))))))

(declare-fun b!884886 () Bool)

(assert (=> b!884886 (= e!580423 (= (head!1547 s!10566) (c!142957 r!15766)))))

(declare-fun b!884887 () Bool)

(declare-fun e!580422 () Bool)

(assert (=> b!884887 (= e!580420 e!580422)))

(declare-fun res!402487 () Bool)

(assert (=> b!884887 (=> (not res!402487) (not e!580422))))

(assert (=> b!884887 (= res!402487 (not lt!331324))))

(declare-fun b!884888 () Bool)

(declare-fun res!402492 () Bool)

(assert (=> b!884888 (=> res!402492 e!580420)))

(assert (=> b!884888 (= res!402492 (not (is-ElementMatch!2276 r!15766)))))

(assert (=> b!884888 (= e!580421 e!580420)))

(declare-fun b!884889 () Bool)

(declare-fun res!402489 () Bool)

(assert (=> b!884889 (=> (not res!402489) (not e!580423))))

(assert (=> b!884889 (= res!402489 (isEmpty!5693 (tail!1109 s!10566)))))

(declare-fun b!884890 () Bool)

(assert (=> b!884890 (= e!580425 (not (= (head!1547 s!10566) (c!142957 r!15766))))))

(declare-fun b!884891 () Bool)

(assert (=> b!884891 (= e!580421 (not lt!331324))))

(declare-fun d!276762 () Bool)

(assert (=> d!276762 e!580424))

(declare-fun c!143046 () Bool)

(assert (=> d!276762 (= c!143046 (is-EmptyExpr!2276 r!15766))))

(assert (=> d!276762 (= lt!331324 e!580426)))

(declare-fun c!143045 () Bool)

(assert (=> d!276762 (= c!143045 (isEmpty!5693 s!10566))))

(assert (=> d!276762 (validRegex!745 r!15766)))

(assert (=> d!276762 (= (matchR!814 r!15766 s!10566) lt!331324)))

(declare-fun b!884882 () Bool)

(assert (=> b!884882 (= e!580422 e!580425)))

(declare-fun res!402485 () Bool)

(assert (=> b!884882 (=> res!402485 e!580425)))

(assert (=> b!884882 (= res!402485 call!51801)))

(assert (= (and d!276762 c!143045) b!884884))

(assert (= (and d!276762 (not c!143045)) b!884878))

(assert (= (and d!276762 c!143046) b!884881))

(assert (= (and d!276762 (not c!143046)) b!884880))

(assert (= (and b!884880 c!143047) b!884891))

(assert (= (and b!884880 (not c!143047)) b!884888))

(assert (= (and b!884888 (not res!402492)) b!884883))

(assert (= (and b!884883 res!402491) b!884879))

(assert (= (and b!884879 res!402490) b!884889))

(assert (= (and b!884889 res!402489) b!884886))

(assert (= (and b!884883 (not res!402488)) b!884887))

(assert (= (and b!884887 res!402487) b!884882))

(assert (= (and b!884882 (not res!402485)) b!884885))

(assert (= (and b!884885 (not res!402486)) b!884890))

(assert (= (or b!884881 b!884879 b!884882) bm!51796))

(declare-fun m!1131147 () Bool)

(assert (=> b!884878 m!1131147))

(assert (=> b!884878 m!1131147))

(declare-fun m!1131149 () Bool)

(assert (=> b!884878 m!1131149))

(declare-fun m!1131151 () Bool)

(assert (=> b!884878 m!1131151))

(assert (=> b!884878 m!1131149))

(assert (=> b!884878 m!1131151))

(declare-fun m!1131153 () Bool)

(assert (=> b!884878 m!1131153))

(declare-fun m!1131155 () Bool)

(assert (=> b!884884 m!1131155))

(assert (=> d!276762 m!1130911))

(assert (=> d!276762 m!1130905))

(assert (=> b!884890 m!1131147))

(assert (=> b!884889 m!1131151))

(assert (=> b!884889 m!1131151))

(declare-fun m!1131157 () Bool)

(assert (=> b!884889 m!1131157))

(assert (=> b!884885 m!1131151))

(assert (=> b!884885 m!1131151))

(assert (=> b!884885 m!1131157))

(assert (=> bm!51796 m!1130911))

(assert (=> b!884886 m!1131147))

(assert (=> b!884485 d!276762))

(declare-fun d!276764 () Bool)

(assert (=> d!276764 (= (matchR!814 r!15766 s!10566) (matchRSpec!77 r!15766 s!10566))))

(declare-fun lt!331327 () Unit!14131)

(declare-fun choose!5258 (Regex!2276 List!9506) Unit!14131)

(assert (=> d!276764 (= lt!331327 (choose!5258 r!15766 s!10566))))

(assert (=> d!276764 (validRegex!745 r!15766)))

(assert (=> d!276764 (= (mainMatchTheorem!77 r!15766 s!10566) lt!331327)))

(declare-fun bs!234645 () Bool)

(assert (= bs!234645 d!276764))

(assert (=> bs!234645 m!1130941))

(assert (=> bs!234645 m!1130939))

(declare-fun m!1131159 () Bool)

(assert (=> bs!234645 m!1131159))

(assert (=> bs!234645 m!1130905))

(assert (=> b!884485 d!276764))

(declare-fun b!884892 () Bool)

(declare-fun e!580432 () Bool)

(declare-fun e!580430 () Bool)

(assert (=> b!884892 (= e!580432 e!580430)))

(declare-fun c!143049 () Bool)

(assert (=> b!884892 (= c!143049 (is-Star!2276 r!15766))))

(declare-fun b!884893 () Bool)

(declare-fun e!580428 () Bool)

(declare-fun call!51803 () Bool)

(assert (=> b!884893 (= e!580428 call!51803)))

(declare-fun b!884894 () Bool)

(declare-fun e!580429 () Bool)

(declare-fun call!51804 () Bool)

(assert (=> b!884894 (= e!580429 call!51804)))

(declare-fun b!884895 () Bool)

(assert (=> b!884895 (= e!580430 e!580429)))

(declare-fun res!402493 () Bool)

(assert (=> b!884895 (= res!402493 (not (nullable!582 (reg!2605 r!15766))))))

(assert (=> b!884895 (=> (not res!402493) (not e!580429))))

(declare-fun b!884896 () Bool)

(declare-fun e!580431 () Bool)

(assert (=> b!884896 (= e!580430 e!580431)))

(declare-fun c!143048 () Bool)

(assert (=> b!884896 (= c!143048 (is-Union!2276 r!15766))))

(declare-fun bm!51797 () Bool)

(assert (=> bm!51797 (= call!51804 (validRegex!745 (ite c!143049 (reg!2605 r!15766) (ite c!143048 (regOne!5065 r!15766) (regOne!5064 r!15766)))))))

(declare-fun b!884897 () Bool)

(declare-fun e!580433 () Bool)

(declare-fun e!580427 () Bool)

(assert (=> b!884897 (= e!580433 e!580427)))

(declare-fun res!402494 () Bool)

(assert (=> b!884897 (=> (not res!402494) (not e!580427))))

(declare-fun call!51802 () Bool)

(assert (=> b!884897 (= res!402494 call!51802)))

(declare-fun bm!51799 () Bool)

(assert (=> bm!51799 (= call!51803 (validRegex!745 (ite c!143048 (regTwo!5065 r!15766) (regTwo!5064 r!15766))))))

(declare-fun b!884898 () Bool)

(assert (=> b!884898 (= e!580427 call!51803)))

(declare-fun b!884899 () Bool)

(declare-fun res!402497 () Bool)

(assert (=> b!884899 (=> res!402497 e!580433)))

(assert (=> b!884899 (= res!402497 (not (is-Concat!4109 r!15766)))))

(assert (=> b!884899 (= e!580431 e!580433)))

(declare-fun b!884900 () Bool)

(declare-fun res!402495 () Bool)

(assert (=> b!884900 (=> (not res!402495) (not e!580428))))

(assert (=> b!884900 (= res!402495 call!51802)))

(assert (=> b!884900 (= e!580431 e!580428)))

(declare-fun bm!51798 () Bool)

(assert (=> bm!51798 (= call!51802 call!51804)))

(declare-fun d!276766 () Bool)

(declare-fun res!402496 () Bool)

(assert (=> d!276766 (=> res!402496 e!580432)))

(assert (=> d!276766 (= res!402496 (is-ElementMatch!2276 r!15766))))

(assert (=> d!276766 (= (validRegex!745 r!15766) e!580432)))

(assert (= (and d!276766 (not res!402496)) b!884892))

(assert (= (and b!884892 c!143049) b!884895))

(assert (= (and b!884892 (not c!143049)) b!884896))

(assert (= (and b!884895 res!402493) b!884894))

(assert (= (and b!884896 c!143048) b!884900))

(assert (= (and b!884896 (not c!143048)) b!884899))

(assert (= (and b!884900 res!402495) b!884893))

(assert (= (and b!884899 (not res!402497)) b!884897))

(assert (= (and b!884897 res!402494) b!884898))

(assert (= (or b!884893 b!884898) bm!51799))

(assert (= (or b!884900 b!884897) bm!51798))

(assert (= (or b!884894 bm!51798) bm!51797))

(declare-fun m!1131161 () Bool)

(assert (=> b!884895 m!1131161))

(declare-fun m!1131163 () Bool)

(assert (=> bm!51797 m!1131163))

(declare-fun m!1131165 () Bool)

(assert (=> bm!51799 m!1131165))

(assert (=> start!79916 d!276766))

(declare-fun b!884905 () Bool)

(declare-fun e!580436 () Bool)

(declare-fun tp!279123 () Bool)

(assert (=> b!884905 (= e!580436 (and tp_is_empty!4195 tp!279123))))

(assert (=> b!884488 (= tp!279100 e!580436)))

(assert (= (and b!884488 (is-Cons!9490 (t!100552 s!10566))) b!884905))

(declare-fun b!884919 () Bool)

(declare-fun e!580439 () Bool)

(declare-fun tp!279137 () Bool)

(declare-fun tp!279138 () Bool)

(assert (=> b!884919 (= e!580439 (and tp!279137 tp!279138))))

(assert (=> b!884483 (= tp!279097 e!580439)))

(declare-fun b!884917 () Bool)

(declare-fun tp!279136 () Bool)

(declare-fun tp!279134 () Bool)

(assert (=> b!884917 (= e!580439 (and tp!279136 tp!279134))))

(declare-fun b!884916 () Bool)

(assert (=> b!884916 (= e!580439 tp_is_empty!4195)))

(declare-fun b!884918 () Bool)

(declare-fun tp!279135 () Bool)

(assert (=> b!884918 (= e!580439 tp!279135)))

(assert (= (and b!884483 (is-ElementMatch!2276 (regOne!5064 r!15766))) b!884916))

(assert (= (and b!884483 (is-Concat!4109 (regOne!5064 r!15766))) b!884917))

(assert (= (and b!884483 (is-Star!2276 (regOne!5064 r!15766))) b!884918))

(assert (= (and b!884483 (is-Union!2276 (regOne!5064 r!15766))) b!884919))

(declare-fun b!884923 () Bool)

(declare-fun e!580440 () Bool)

(declare-fun tp!279142 () Bool)

(declare-fun tp!279143 () Bool)

(assert (=> b!884923 (= e!580440 (and tp!279142 tp!279143))))

(assert (=> b!884483 (= tp!279099 e!580440)))

(declare-fun b!884921 () Bool)

(declare-fun tp!279141 () Bool)

(declare-fun tp!279139 () Bool)

(assert (=> b!884921 (= e!580440 (and tp!279141 tp!279139))))

(declare-fun b!884920 () Bool)

(assert (=> b!884920 (= e!580440 tp_is_empty!4195)))

(declare-fun b!884922 () Bool)

(declare-fun tp!279140 () Bool)

(assert (=> b!884922 (= e!580440 tp!279140)))

(assert (= (and b!884483 (is-ElementMatch!2276 (regTwo!5064 r!15766))) b!884920))

(assert (= (and b!884483 (is-Concat!4109 (regTwo!5064 r!15766))) b!884921))

(assert (= (and b!884483 (is-Star!2276 (regTwo!5064 r!15766))) b!884922))

(assert (= (and b!884483 (is-Union!2276 (regTwo!5064 r!15766))) b!884923))

(declare-fun b!884927 () Bool)

(declare-fun e!580441 () Bool)

(declare-fun tp!279147 () Bool)

(declare-fun tp!279148 () Bool)

(assert (=> b!884927 (= e!580441 (and tp!279147 tp!279148))))

(assert (=> b!884482 (= tp!279102 e!580441)))

(declare-fun b!884925 () Bool)

(declare-fun tp!279146 () Bool)

(declare-fun tp!279144 () Bool)

(assert (=> b!884925 (= e!580441 (and tp!279146 tp!279144))))

(declare-fun b!884924 () Bool)

(assert (=> b!884924 (= e!580441 tp_is_empty!4195)))

(declare-fun b!884926 () Bool)

(declare-fun tp!279145 () Bool)

(assert (=> b!884926 (= e!580441 tp!279145)))

(assert (= (and b!884482 (is-ElementMatch!2276 (regOne!5065 r!15766))) b!884924))

(assert (= (and b!884482 (is-Concat!4109 (regOne!5065 r!15766))) b!884925))

(assert (= (and b!884482 (is-Star!2276 (regOne!5065 r!15766))) b!884926))

(assert (= (and b!884482 (is-Union!2276 (regOne!5065 r!15766))) b!884927))

(declare-fun b!884931 () Bool)

(declare-fun e!580442 () Bool)

(declare-fun tp!279152 () Bool)

(declare-fun tp!279153 () Bool)

(assert (=> b!884931 (= e!580442 (and tp!279152 tp!279153))))

(assert (=> b!884482 (= tp!279098 e!580442)))

(declare-fun b!884929 () Bool)

(declare-fun tp!279151 () Bool)

(declare-fun tp!279149 () Bool)

(assert (=> b!884929 (= e!580442 (and tp!279151 tp!279149))))

(declare-fun b!884928 () Bool)

(assert (=> b!884928 (= e!580442 tp_is_empty!4195)))

(declare-fun b!884930 () Bool)

(declare-fun tp!279150 () Bool)

(assert (=> b!884930 (= e!580442 tp!279150)))

(assert (= (and b!884482 (is-ElementMatch!2276 (regTwo!5065 r!15766))) b!884928))

(assert (= (and b!884482 (is-Concat!4109 (regTwo!5065 r!15766))) b!884929))

(assert (= (and b!884482 (is-Star!2276 (regTwo!5065 r!15766))) b!884930))

(assert (= (and b!884482 (is-Union!2276 (regTwo!5065 r!15766))) b!884931))

(declare-fun b!884935 () Bool)

(declare-fun e!580443 () Bool)

(declare-fun tp!279157 () Bool)

(declare-fun tp!279158 () Bool)

(assert (=> b!884935 (= e!580443 (and tp!279157 tp!279158))))

(assert (=> b!884491 (= tp!279101 e!580443)))

(declare-fun b!884933 () Bool)

(declare-fun tp!279156 () Bool)

(declare-fun tp!279154 () Bool)

(assert (=> b!884933 (= e!580443 (and tp!279156 tp!279154))))

(declare-fun b!884932 () Bool)

(assert (=> b!884932 (= e!580443 tp_is_empty!4195)))

(declare-fun b!884934 () Bool)

(declare-fun tp!279155 () Bool)

(assert (=> b!884934 (= e!580443 tp!279155)))

(assert (= (and b!884491 (is-ElementMatch!2276 (reg!2605 r!15766))) b!884932))

(assert (= (and b!884491 (is-Concat!4109 (reg!2605 r!15766))) b!884933))

(assert (= (and b!884491 (is-Star!2276 (reg!2605 r!15766))) b!884934))

(assert (= (and b!884491 (is-Union!2276 (reg!2605 r!15766))) b!884935))

(push 1)

(assert (not b!884919))

(assert (not b!884733))

(assert (not d!276730))

(assert (not b!884813))

(assert (not b!884890))

(assert (not b!884886))

(assert (not b!884641))

(assert (not d!276734))

(assert (not bm!51747))

(assert (not b!884931))

(assert (not b!884933))

(assert (not b!884804))

(assert (not b!884918))

(assert (not b!884739))

(assert (not bm!51795))

(assert (not b!884762))

(assert (not b!884720))

(assert (not b!884582))

(assert (not b!884735))

(assert (not d!276742))

(assert (not b!884646))

(assert (not b!884815))

(assert (not d!276714))

(assert (not b!884780))

(assert (not b!884926))

(assert (not b!884884))

(assert (not b!884807))

(assert (not b!884895))

(assert (not b!884905))

(assert (not bm!51796))

(assert (not d!276718))

(assert (not b!884577))

(assert (not b!884876))

(assert (not b!884927))

(assert (not d!276744))

(assert (not b!884738))

(assert (not b!884578))

(assert (not b!884581))

(assert (not b!884930))

(assert (not b!884889))

(assert (not b!884776))

(assert (not bm!51786))

(assert (not b!884921))

(assert (not b!884774))

(assert (not bm!51788))

(assert (not d!276738))

(assert (not d!276720))

(assert (not b!884878))

(assert (not b!884638))

(assert (not bm!51767))

(assert (not bm!51794))

(assert (not b!884935))

(assert (not d!276726))

(assert (not b!884929))

(assert (not b!884734))

(assert (not bm!51778))

(assert (not b!884643))

(assert (not b!884779))

(assert (not b!884872))

(assert (not bm!51766))

(assert (not b!884922))

(assert (not b!884642))

(assert (not bm!51781))

(assert (not b!884819))

(assert (not d!276722))

(assert (not b!884814))

(assert (not d!276762))

(assert (not bm!51797))

(assert (not b!884885))

(assert (not bm!51769))

(assert (not b!884925))

(assert (not b!884917))

(assert (not b!884576))

(assert (not bm!51785))

(assert (not b!884570))

(assert (not b!884934))

(assert (not d!276724))

(assert (not bm!51799))

(assert (not d!276764))

(assert (not d!276710))

(assert tp_is_empty!4195)

(assert (not b!884639))

(assert (not d!276740))

(assert (not b!884818))

(assert (not b!884727))

(assert (not b!884775))

(assert (not b!884768))

(assert (not d!276732))

(assert (not bm!51780))

(assert (not b!884923))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

