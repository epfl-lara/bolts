; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731466 () Bool)

(assert start!731466)

(declare-fun b!7575087 () Bool)

(assert (=> b!7575087 true))

(assert (=> b!7575087 true))

(declare-fun lambda!466625 () Int)

(declare-fun lambda!466624 () Int)

(assert (=> b!7575087 (not (= lambda!466625 lambda!466624))))

(assert (=> b!7575087 true))

(assert (=> b!7575087 true))

(declare-fun b!7575084 () Bool)

(declare-fun e!4509290 () Bool)

(declare-fun tp!2207323 () Bool)

(declare-fun tp!2207319 () Bool)

(assert (=> b!7575084 (= e!4509290 (and tp!2207323 tp!2207319))))

(declare-fun b!7575085 () Bool)

(declare-fun tp_is_empty!50447 () Bool)

(assert (=> b!7575085 (= e!4509290 tp_is_empty!50447)))

(declare-fun b!7575086 () Bool)

(declare-fun tp!2207318 () Bool)

(declare-fun tp!2207322 () Bool)

(assert (=> b!7575086 (= e!4509290 (and tp!2207318 tp!2207322))))

(declare-fun e!4509291 () Bool)

(declare-fun lt!2651903 () Bool)

(assert (=> b!7575087 (= e!4509291 lt!2651903)))

(declare-fun Exists!4289 (Int) Bool)

(assert (=> b!7575087 (= (Exists!4289 lambda!466624) (Exists!4289 lambda!466625))))

(declare-datatypes ((Unit!167048 0))(
  ( (Unit!167049) )
))
(declare-fun lt!2651906 () Unit!167048)

(declare-datatypes ((C!40418 0))(
  ( (C!40419 (val!30649 Int)) )
))
(declare-datatypes ((Regex!20046 0))(
  ( (ElementMatch!20046 (c!1397431 C!40418)) (Concat!28891 (regOne!40604 Regex!20046) (regTwo!40604 Regex!20046)) (EmptyExpr!20046) (Star!20046 (reg!20375 Regex!20046)) (EmptyLang!20046) (Union!20046 (regOne!40605 Regex!20046) (regTwo!40605 Regex!20046)) )
))
(declare-fun r!22341 () Regex!20046)

(declare-datatypes ((List!72929 0))(
  ( (Nil!72805) (Cons!72805 (h!79253 C!40418) (t!387664 List!72929)) )
))
(declare-fun s!13436 () List!72929)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2607 (Regex!20046 Regex!20046 List!72929) Unit!167048)

(assert (=> b!7575087 (= lt!2651906 (lemmaExistCutMatchRandMatchRSpecEquivalent!2607 (regOne!40604 r!22341) (regTwo!40604 r!22341) s!13436))))

(assert (=> b!7575087 (= lt!2651903 (Exists!4289 lambda!466624))))

(declare-datatypes ((tuple2!68886 0))(
  ( (tuple2!68887 (_1!37746 List!72929) (_2!37746 List!72929)) )
))
(declare-datatypes ((Option!17279 0))(
  ( (None!17278) (Some!17278 (v!54413 tuple2!68886)) )
))
(declare-fun isDefined!13925 (Option!17279) Bool)

(declare-fun findConcatSeparation!3339 (Regex!20046 Regex!20046 List!72929 List!72929 List!72929) Option!17279)

(assert (=> b!7575087 (= lt!2651903 (isDefined!13925 (findConcatSeparation!3339 (regOne!40604 r!22341) (regTwo!40604 r!22341) Nil!72805 s!13436 s!13436)))))

(declare-fun lt!2651904 () Unit!167048)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3097 (Regex!20046 Regex!20046 List!72929) Unit!167048)

(assert (=> b!7575087 (= lt!2651904 (lemmaFindConcatSeparationEquivalentToExists!3097 (regOne!40604 r!22341) (regTwo!40604 r!22341) s!13436))))

(declare-fun b!7575088 () Bool)

(declare-fun tp!2207321 () Bool)

(assert (=> b!7575088 (= e!4509290 tp!2207321)))

(declare-fun b!7575089 () Bool)

(declare-fun res!3034625 () Bool)

(declare-fun e!4509292 () Bool)

(assert (=> b!7575089 (=> (not res!3034625) (not e!4509292))))

(declare-fun isEmpty!41468 (List!72929) Bool)

(assert (=> b!7575089 (= res!3034625 (not (isEmpty!41468 s!13436)))))

(declare-fun b!7575090 () Bool)

(declare-fun e!4509293 () Bool)

(declare-fun tp!2207320 () Bool)

(assert (=> b!7575090 (= e!4509293 (and tp_is_empty!50447 tp!2207320))))

(declare-fun b!7575091 () Bool)

(assert (=> b!7575091 (= e!4509292 (not e!4509291))))

(declare-fun res!3034623 () Bool)

(assert (=> b!7575091 (=> res!3034623 e!4509291)))

(declare-fun lt!2651905 () Bool)

(assert (=> b!7575091 (= res!3034623 (or (is-EmptyLang!20046 r!22341) (is-EmptyExpr!20046 r!22341) (is-ElementMatch!20046 r!22341) (is-Union!20046 r!22341) (is-Star!20046 r!22341) (not lt!2651905)))))

(declare-fun matchRSpec!4365 (Regex!20046 List!72929) Bool)

(assert (=> b!7575091 (= lt!2651905 (matchRSpec!4365 r!22341 s!13436))))

(declare-fun matchR!9642 (Regex!20046 List!72929) Bool)

(assert (=> b!7575091 (= lt!2651905 (matchR!9642 r!22341 s!13436))))

(declare-fun lt!2651907 () Unit!167048)

(declare-fun mainMatchTheorem!4359 (Regex!20046 List!72929) Unit!167048)

(assert (=> b!7575091 (= lt!2651907 (mainMatchTheorem!4359 r!22341 s!13436))))

(declare-fun res!3034626 () Bool)

(assert (=> start!731466 (=> (not res!3034626) (not e!4509292))))

(declare-fun validRegex!10474 (Regex!20046) Bool)

(assert (=> start!731466 (= res!3034626 (validRegex!10474 r!22341))))

(assert (=> start!731466 e!4509292))

(assert (=> start!731466 e!4509290))

(assert (=> start!731466 e!4509293))

(declare-fun b!7575092 () Bool)

(declare-fun res!3034624 () Bool)

(assert (=> b!7575092 (=> (not res!3034624) (not e!4509292))))

(declare-fun lostCause!1822 (Regex!20046) Bool)

(assert (=> b!7575092 (= res!3034624 (lostCause!1822 r!22341))))

(assert (= (and start!731466 res!3034626) b!7575092))

(assert (= (and b!7575092 res!3034624) b!7575089))

(assert (= (and b!7575089 res!3034625) b!7575091))

(assert (= (and b!7575091 (not res!3034623)) b!7575087))

(assert (= (and start!731466 (is-ElementMatch!20046 r!22341)) b!7575085))

(assert (= (and start!731466 (is-Concat!28891 r!22341)) b!7575086))

(assert (= (and start!731466 (is-Star!20046 r!22341)) b!7575088))

(assert (= (and start!731466 (is-Union!20046 r!22341)) b!7575084))

(assert (= (and start!731466 (is-Cons!72805 s!13436)) b!7575090))

(declare-fun m!8133658 () Bool)

(assert (=> start!731466 m!8133658))

(declare-fun m!8133660 () Bool)

(assert (=> b!7575087 m!8133660))

(declare-fun m!8133662 () Bool)

(assert (=> b!7575087 m!8133662))

(declare-fun m!8133664 () Bool)

(assert (=> b!7575087 m!8133664))

(declare-fun m!8133666 () Bool)

(assert (=> b!7575087 m!8133666))

(declare-fun m!8133668 () Bool)

(assert (=> b!7575087 m!8133668))

(assert (=> b!7575087 m!8133662))

(declare-fun m!8133670 () Bool)

(assert (=> b!7575087 m!8133670))

(assert (=> b!7575087 m!8133664))

(declare-fun m!8133672 () Bool)

(assert (=> b!7575091 m!8133672))

(declare-fun m!8133674 () Bool)

(assert (=> b!7575091 m!8133674))

(declare-fun m!8133676 () Bool)

(assert (=> b!7575091 m!8133676))

(declare-fun m!8133678 () Bool)

(assert (=> b!7575089 m!8133678))

(declare-fun m!8133680 () Bool)

(assert (=> b!7575092 m!8133680))

(push 1)

(assert (not b!7575092))

(assert (not b!7575086))

(assert (not b!7575089))

(assert (not b!7575090))

(assert (not start!731466))

(assert tp_is_empty!50447)

(assert (not b!7575087))

(assert (not b!7575091))

(assert (not b!7575084))

(assert (not b!7575088))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1940761 () Bool)

(declare-fun d!2317879 () Bool)

(assert (= bs!1940761 (and d!2317879 b!7575087)))

(declare-fun lambda!466638 () Int)

(assert (=> bs!1940761 (= lambda!466638 lambda!466624)))

(assert (=> bs!1940761 (not (= lambda!466638 lambda!466625))))

(assert (=> d!2317879 true))

(assert (=> d!2317879 true))

(assert (=> d!2317879 true))

(declare-fun lambda!466639 () Int)

(assert (=> bs!1940761 (not (= lambda!466639 lambda!466624))))

(assert (=> bs!1940761 (= lambda!466639 lambda!466625)))

(declare-fun bs!1940762 () Bool)

(assert (= bs!1940762 d!2317879))

(assert (=> bs!1940762 (not (= lambda!466639 lambda!466638))))

(assert (=> d!2317879 true))

(assert (=> d!2317879 true))

(assert (=> d!2317879 true))

(assert (=> d!2317879 (= (Exists!4289 lambda!466638) (Exists!4289 lambda!466639))))

(declare-fun lt!2651925 () Unit!167048)

(declare-fun choose!58567 (Regex!20046 Regex!20046 List!72929) Unit!167048)

(assert (=> d!2317879 (= lt!2651925 (choose!58567 (regOne!40604 r!22341) (regTwo!40604 r!22341) s!13436))))

(assert (=> d!2317879 (validRegex!10474 (regOne!40604 r!22341))))

(assert (=> d!2317879 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2607 (regOne!40604 r!22341) (regTwo!40604 r!22341) s!13436) lt!2651925)))

(declare-fun m!8133706 () Bool)

(assert (=> bs!1940762 m!8133706))

(declare-fun m!8133708 () Bool)

(assert (=> bs!1940762 m!8133708))

(declare-fun m!8133710 () Bool)

(assert (=> bs!1940762 m!8133710))

(declare-fun m!8133712 () Bool)

(assert (=> bs!1940762 m!8133712))

(assert (=> b!7575087 d!2317879))

(declare-fun d!2317881 () Bool)

(declare-fun choose!58568 (Int) Bool)

(assert (=> d!2317881 (= (Exists!4289 lambda!466624) (choose!58568 lambda!466624))))

(declare-fun bs!1940763 () Bool)

(assert (= bs!1940763 d!2317881))

(declare-fun m!8133714 () Bool)

(assert (=> bs!1940763 m!8133714))

(assert (=> b!7575087 d!2317881))

(declare-fun d!2317883 () Bool)

(declare-fun e!4509328 () Bool)

(assert (=> d!2317883 e!4509328))

(declare-fun res!3034671 () Bool)

(assert (=> d!2317883 (=> res!3034671 e!4509328)))

(declare-fun e!4509329 () Bool)

(assert (=> d!2317883 (= res!3034671 e!4509329)))

(declare-fun res!3034669 () Bool)

(assert (=> d!2317883 (=> (not res!3034669) (not e!4509329))))

(declare-fun lt!2651935 () Option!17279)

(assert (=> d!2317883 (= res!3034669 (isDefined!13925 lt!2651935))))

(declare-fun e!4509330 () Option!17279)

(assert (=> d!2317883 (= lt!2651935 e!4509330)))

(declare-fun c!1397438 () Bool)

(declare-fun e!4509326 () Bool)

(assert (=> d!2317883 (= c!1397438 e!4509326)))

(declare-fun res!3034672 () Bool)

(assert (=> d!2317883 (=> (not res!3034672) (not e!4509326))))

(assert (=> d!2317883 (= res!3034672 (matchR!9642 (regOne!40604 r!22341) Nil!72805))))

(assert (=> d!2317883 (validRegex!10474 (regOne!40604 r!22341))))

(assert (=> d!2317883 (= (findConcatSeparation!3339 (regOne!40604 r!22341) (regTwo!40604 r!22341) Nil!72805 s!13436 s!13436) lt!2651935)))

(declare-fun b!7575166 () Bool)

(declare-fun res!3034673 () Bool)

(assert (=> b!7575166 (=> (not res!3034673) (not e!4509329))))

(declare-fun get!25575 (Option!17279) tuple2!68886)

(assert (=> b!7575166 (= res!3034673 (matchR!9642 (regTwo!40604 r!22341) (_2!37746 (get!25575 lt!2651935))))))

(declare-fun b!7575167 () Bool)

(declare-fun lt!2651934 () Unit!167048)

(declare-fun lt!2651936 () Unit!167048)

(assert (=> b!7575167 (= lt!2651934 lt!2651936)))

(declare-fun ++!17500 (List!72929 List!72929) List!72929)

(assert (=> b!7575167 (= (++!17500 (++!17500 Nil!72805 (Cons!72805 (h!79253 s!13436) Nil!72805)) (t!387664 s!13436)) s!13436)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3188 (List!72929 C!40418 List!72929 List!72929) Unit!167048)

(assert (=> b!7575167 (= lt!2651936 (lemmaMoveElementToOtherListKeepsConcatEq!3188 Nil!72805 (h!79253 s!13436) (t!387664 s!13436) s!13436))))

(declare-fun e!4509327 () Option!17279)

(assert (=> b!7575167 (= e!4509327 (findConcatSeparation!3339 (regOne!40604 r!22341) (regTwo!40604 r!22341) (++!17500 Nil!72805 (Cons!72805 (h!79253 s!13436) Nil!72805)) (t!387664 s!13436) s!13436))))

(declare-fun b!7575168 () Bool)

(declare-fun res!3034670 () Bool)

(assert (=> b!7575168 (=> (not res!3034670) (not e!4509329))))

(assert (=> b!7575168 (= res!3034670 (matchR!9642 (regOne!40604 r!22341) (_1!37746 (get!25575 lt!2651935))))))

(declare-fun b!7575169 () Bool)

(assert (=> b!7575169 (= e!4509330 e!4509327)))

(declare-fun c!1397437 () Bool)

(assert (=> b!7575169 (= c!1397437 (is-Nil!72805 s!13436))))

(declare-fun b!7575170 () Bool)

(assert (=> b!7575170 (= e!4509330 (Some!17278 (tuple2!68887 Nil!72805 s!13436)))))

(declare-fun b!7575171 () Bool)

(assert (=> b!7575171 (= e!4509326 (matchR!9642 (regTwo!40604 r!22341) s!13436))))

(declare-fun b!7575172 () Bool)

(assert (=> b!7575172 (= e!4509328 (not (isDefined!13925 lt!2651935)))))

(declare-fun b!7575173 () Bool)

(assert (=> b!7575173 (= e!4509327 None!17278)))

(declare-fun b!7575174 () Bool)

(assert (=> b!7575174 (= e!4509329 (= (++!17500 (_1!37746 (get!25575 lt!2651935)) (_2!37746 (get!25575 lt!2651935))) s!13436))))

(assert (= (and d!2317883 res!3034672) b!7575171))

(assert (= (and d!2317883 c!1397438) b!7575170))

(assert (= (and d!2317883 (not c!1397438)) b!7575169))

(assert (= (and b!7575169 c!1397437) b!7575173))

(assert (= (and b!7575169 (not c!1397437)) b!7575167))

(assert (= (and d!2317883 res!3034669) b!7575168))

(assert (= (and b!7575168 res!3034670) b!7575166))

(assert (= (and b!7575166 res!3034673) b!7575174))

(assert (= (and d!2317883 (not res!3034671)) b!7575172))

(declare-fun m!8133716 () Bool)

(assert (=> b!7575168 m!8133716))

(declare-fun m!8133718 () Bool)

(assert (=> b!7575168 m!8133718))

(assert (=> b!7575174 m!8133716))

(declare-fun m!8133720 () Bool)

(assert (=> b!7575174 m!8133720))

(declare-fun m!8133722 () Bool)

(assert (=> d!2317883 m!8133722))

(declare-fun m!8133724 () Bool)

(assert (=> d!2317883 m!8133724))

(assert (=> d!2317883 m!8133712))

(assert (=> b!7575172 m!8133722))

(declare-fun m!8133726 () Bool)

(assert (=> b!7575171 m!8133726))

(declare-fun m!8133728 () Bool)

(assert (=> b!7575167 m!8133728))

(assert (=> b!7575167 m!8133728))

(declare-fun m!8133730 () Bool)

(assert (=> b!7575167 m!8133730))

(declare-fun m!8133732 () Bool)

(assert (=> b!7575167 m!8133732))

(assert (=> b!7575167 m!8133728))

(declare-fun m!8133734 () Bool)

(assert (=> b!7575167 m!8133734))

(assert (=> b!7575166 m!8133716))

(declare-fun m!8133736 () Bool)

(assert (=> b!7575166 m!8133736))

(assert (=> b!7575087 d!2317883))

(declare-fun d!2317887 () Bool)

(declare-fun isEmpty!41470 (Option!17279) Bool)

(assert (=> d!2317887 (= (isDefined!13925 (findConcatSeparation!3339 (regOne!40604 r!22341) (regTwo!40604 r!22341) Nil!72805 s!13436 s!13436)) (not (isEmpty!41470 (findConcatSeparation!3339 (regOne!40604 r!22341) (regTwo!40604 r!22341) Nil!72805 s!13436 s!13436))))))

(declare-fun bs!1940764 () Bool)

(assert (= bs!1940764 d!2317887))

(assert (=> bs!1940764 m!8133664))

(declare-fun m!8133738 () Bool)

(assert (=> bs!1940764 m!8133738))

(assert (=> b!7575087 d!2317887))

(declare-fun bs!1940765 () Bool)

(declare-fun d!2317889 () Bool)

(assert (= bs!1940765 (and d!2317889 b!7575087)))

(declare-fun lambda!466646 () Int)

(assert (=> bs!1940765 (= lambda!466646 lambda!466624)))

(assert (=> bs!1940765 (not (= lambda!466646 lambda!466625))))

(declare-fun bs!1940766 () Bool)

(assert (= bs!1940766 (and d!2317889 d!2317879)))

(assert (=> bs!1940766 (= lambda!466646 lambda!466638)))

(assert (=> bs!1940766 (not (= lambda!466646 lambda!466639))))

(assert (=> d!2317889 true))

(assert (=> d!2317889 true))

(assert (=> d!2317889 true))

(assert (=> d!2317889 (= (isDefined!13925 (findConcatSeparation!3339 (regOne!40604 r!22341) (regTwo!40604 r!22341) Nil!72805 s!13436 s!13436)) (Exists!4289 lambda!466646))))

(declare-fun lt!2651940 () Unit!167048)

(declare-fun choose!58569 (Regex!20046 Regex!20046 List!72929) Unit!167048)

(assert (=> d!2317889 (= lt!2651940 (choose!58569 (regOne!40604 r!22341) (regTwo!40604 r!22341) s!13436))))

(assert (=> d!2317889 (validRegex!10474 (regOne!40604 r!22341))))

(assert (=> d!2317889 (= (lemmaFindConcatSeparationEquivalentToExists!3097 (regOne!40604 r!22341) (regTwo!40604 r!22341) s!13436) lt!2651940)))

(declare-fun bs!1940768 () Bool)

(assert (= bs!1940768 d!2317889))

(declare-fun m!8133740 () Bool)

(assert (=> bs!1940768 m!8133740))

(assert (=> bs!1940768 m!8133664))

(assert (=> bs!1940768 m!8133666))

(assert (=> bs!1940768 m!8133664))

(assert (=> bs!1940768 m!8133712))

(declare-fun m!8133742 () Bool)

(assert (=> bs!1940768 m!8133742))

(assert (=> b!7575087 d!2317889))

(declare-fun d!2317891 () Bool)

(assert (=> d!2317891 (= (Exists!4289 lambda!466625) (choose!58568 lambda!466625))))

(declare-fun bs!1940769 () Bool)

(assert (= bs!1940769 d!2317891))

(declare-fun m!8133744 () Bool)

(assert (=> bs!1940769 m!8133744))

(assert (=> b!7575087 d!2317891))

(declare-fun d!2317893 () Bool)

(declare-fun lostCauseFct!489 (Regex!20046) Bool)

(assert (=> d!2317893 (= (lostCause!1822 r!22341) (lostCauseFct!489 r!22341))))

(declare-fun bs!1940770 () Bool)

(assert (= bs!1940770 d!2317893))

(declare-fun m!8133746 () Bool)

(assert (=> bs!1940770 m!8133746))

(assert (=> b!7575092 d!2317893))

(declare-fun d!2317895 () Bool)

(assert (=> d!2317895 (= (isEmpty!41468 s!13436) (is-Nil!72805 s!13436))))

(assert (=> b!7575089 d!2317895))

(declare-fun b!7575205 () Bool)

(declare-fun e!4509354 () Bool)

(declare-fun e!4509355 () Bool)

(assert (=> b!7575205 (= e!4509354 e!4509355)))

(declare-fun c!1397443 () Bool)

(assert (=> b!7575205 (= c!1397443 (is-Star!20046 r!22341))))

(declare-fun d!2317897 () Bool)

(declare-fun res!3034698 () Bool)

(assert (=> d!2317897 (=> res!3034698 e!4509354)))

(assert (=> d!2317897 (= res!3034698 (is-ElementMatch!20046 r!22341))))

(assert (=> d!2317897 (= (validRegex!10474 r!22341) e!4509354)))

(declare-fun bm!694434 () Bool)

(declare-fun call!694440 () Bool)

(declare-fun c!1397444 () Bool)

(assert (=> bm!694434 (= call!694440 (validRegex!10474 (ite c!1397444 (regOne!40605 r!22341) (regTwo!40604 r!22341))))))

(declare-fun call!694439 () Bool)

(declare-fun bm!694435 () Bool)

(assert (=> bm!694435 (= call!694439 (validRegex!10474 (ite c!1397443 (reg!20375 r!22341) (ite c!1397444 (regTwo!40605 r!22341) (regOne!40604 r!22341)))))))

(declare-fun b!7575206 () Bool)

(declare-fun e!4509351 () Bool)

(declare-fun call!694441 () Bool)

(assert (=> b!7575206 (= e!4509351 call!694441)))

(declare-fun b!7575207 () Bool)

(declare-fun e!4509357 () Bool)

(declare-fun e!4509352 () Bool)

(assert (=> b!7575207 (= e!4509357 e!4509352)))

(declare-fun res!3034696 () Bool)

(assert (=> b!7575207 (=> (not res!3034696) (not e!4509352))))

(assert (=> b!7575207 (= res!3034696 call!694441)))

(declare-fun b!7575208 () Bool)

(declare-fun e!4509356 () Bool)

(assert (=> b!7575208 (= e!4509355 e!4509356)))

(assert (=> b!7575208 (= c!1397444 (is-Union!20046 r!22341))))

(declare-fun b!7575209 () Bool)

(declare-fun res!3034700 () Bool)

(assert (=> b!7575209 (=> res!3034700 e!4509357)))

(assert (=> b!7575209 (= res!3034700 (not (is-Concat!28891 r!22341)))))

(assert (=> b!7575209 (= e!4509356 e!4509357)))

(declare-fun bm!694436 () Bool)

(assert (=> bm!694436 (= call!694441 call!694439)))

(declare-fun b!7575210 () Bool)

(declare-fun res!3034699 () Bool)

(assert (=> b!7575210 (=> (not res!3034699) (not e!4509351))))

(assert (=> b!7575210 (= res!3034699 call!694440)))

(assert (=> b!7575210 (= e!4509356 e!4509351)))

(declare-fun b!7575211 () Bool)

(declare-fun e!4509353 () Bool)

(assert (=> b!7575211 (= e!4509355 e!4509353)))

(declare-fun res!3034697 () Bool)

(declare-fun nullable!8750 (Regex!20046) Bool)

(assert (=> b!7575211 (= res!3034697 (not (nullable!8750 (reg!20375 r!22341))))))

(assert (=> b!7575211 (=> (not res!3034697) (not e!4509353))))

(declare-fun b!7575212 () Bool)

(assert (=> b!7575212 (= e!4509353 call!694439)))

(declare-fun b!7575213 () Bool)

(assert (=> b!7575213 (= e!4509352 call!694440)))

(assert (= (and d!2317897 (not res!3034698)) b!7575205))

(assert (= (and b!7575205 c!1397443) b!7575211))

(assert (= (and b!7575205 (not c!1397443)) b!7575208))

(assert (= (and b!7575211 res!3034697) b!7575212))

(assert (= (and b!7575208 c!1397444) b!7575210))

(assert (= (and b!7575208 (not c!1397444)) b!7575209))

(assert (= (and b!7575210 res!3034699) b!7575206))

(assert (= (and b!7575209 (not res!3034700)) b!7575207))

(assert (= (and b!7575207 res!3034696) b!7575213))

(assert (= (or b!7575206 b!7575207) bm!694436))

(assert (= (or b!7575210 b!7575213) bm!694434))

(assert (= (or b!7575212 bm!694436) bm!694435))

(declare-fun m!8133756 () Bool)

(assert (=> bm!694434 m!8133756))

(declare-fun m!8133758 () Bool)

(assert (=> bm!694435 m!8133758))

(declare-fun m!8133760 () Bool)

(assert (=> b!7575211 m!8133760))

(assert (=> start!731466 d!2317897))

(declare-fun bs!1940774 () Bool)

(declare-fun b!7575259 () Bool)

(assert (= bs!1940774 (and b!7575259 d!2317879)))

(declare-fun lambda!466656 () Int)

(assert (=> bs!1940774 (not (= lambda!466656 lambda!466638))))

(declare-fun bs!1940775 () Bool)

(assert (= bs!1940775 (and b!7575259 b!7575087)))

(assert (=> bs!1940775 (not (= lambda!466656 lambda!466624))))

(declare-fun bs!1940776 () Bool)

(assert (= bs!1940776 (and b!7575259 d!2317889)))

(assert (=> bs!1940776 (not (= lambda!466656 lambda!466646))))

(assert (=> bs!1940775 (not (= lambda!466656 lambda!466625))))

(assert (=> bs!1940774 (not (= lambda!466656 lambda!466639))))

(assert (=> b!7575259 true))

(assert (=> b!7575259 true))

(declare-fun bs!1940778 () Bool)

(declare-fun b!7575252 () Bool)

(assert (= bs!1940778 (and b!7575252 d!2317879)))

(declare-fun lambda!466657 () Int)

(assert (=> bs!1940778 (not (= lambda!466657 lambda!466638))))

(declare-fun bs!1940779 () Bool)

(assert (= bs!1940779 (and b!7575252 b!7575087)))

(assert (=> bs!1940779 (not (= lambda!466657 lambda!466624))))

(declare-fun bs!1940780 () Bool)

(assert (= bs!1940780 (and b!7575252 d!2317889)))

(assert (=> bs!1940780 (not (= lambda!466657 lambda!466646))))

(declare-fun bs!1940781 () Bool)

(assert (= bs!1940781 (and b!7575252 b!7575259)))

(assert (=> bs!1940781 (not (= lambda!466657 lambda!466656))))

(assert (=> bs!1940779 (= lambda!466657 lambda!466625)))

(assert (=> bs!1940778 (= lambda!466657 lambda!466639)))

(assert (=> b!7575252 true))

(assert (=> b!7575252 true))

(declare-fun b!7575250 () Bool)

(declare-fun e!4509380 () Bool)

(assert (=> b!7575250 (= e!4509380 (= s!13436 (Cons!72805 (c!1397431 r!22341) Nil!72805)))))

(declare-fun b!7575251 () Bool)

(declare-fun e!4509384 () Bool)

(assert (=> b!7575251 (= e!4509384 (matchRSpec!4365 (regTwo!40605 r!22341) s!13436))))

(declare-fun e!4509383 () Bool)

(declare-fun call!694447 () Bool)

(assert (=> b!7575252 (= e!4509383 call!694447)))

(declare-fun b!7575253 () Bool)

(declare-fun e!4509379 () Bool)

(declare-fun e!4509378 () Bool)

(assert (=> b!7575253 (= e!4509379 e!4509378)))

(declare-fun res!3034723 () Bool)

(assert (=> b!7575253 (= res!3034723 (not (is-EmptyLang!20046 r!22341)))))

(assert (=> b!7575253 (=> (not res!3034723) (not e!4509378))))

(declare-fun bm!694441 () Bool)

(declare-fun call!694446 () Bool)

(assert (=> bm!694441 (= call!694446 (isEmpty!41468 s!13436))))

(declare-fun d!2317901 () Bool)

(declare-fun c!1397454 () Bool)

(assert (=> d!2317901 (= c!1397454 (is-EmptyExpr!20046 r!22341))))

(assert (=> d!2317901 (= (matchRSpec!4365 r!22341 s!13436) e!4509379)))

(declare-fun b!7575254 () Bool)

(declare-fun e!4509382 () Bool)

(assert (=> b!7575254 (= e!4509382 e!4509383)))

(declare-fun c!1397456 () Bool)

(assert (=> b!7575254 (= c!1397456 (is-Star!20046 r!22341))))

(declare-fun b!7575255 () Bool)

(declare-fun res!3034721 () Bool)

(declare-fun e!4509381 () Bool)

(assert (=> b!7575255 (=> res!3034721 e!4509381)))

(assert (=> b!7575255 (= res!3034721 call!694446)))

(assert (=> b!7575255 (= e!4509383 e!4509381)))

(declare-fun b!7575256 () Bool)

(declare-fun c!1397455 () Bool)

(assert (=> b!7575256 (= c!1397455 (is-ElementMatch!20046 r!22341))))

(assert (=> b!7575256 (= e!4509378 e!4509380)))

(declare-fun bm!694442 () Bool)

(assert (=> bm!694442 (= call!694447 (Exists!4289 (ite c!1397456 lambda!466656 lambda!466657)))))

(declare-fun b!7575257 () Bool)

(declare-fun c!1397453 () Bool)

(assert (=> b!7575257 (= c!1397453 (is-Union!20046 r!22341))))

(assert (=> b!7575257 (= e!4509380 e!4509382)))

(declare-fun b!7575258 () Bool)

(assert (=> b!7575258 (= e!4509382 e!4509384)))

(declare-fun res!3034722 () Bool)

(assert (=> b!7575258 (= res!3034722 (matchRSpec!4365 (regOne!40605 r!22341) s!13436))))

(assert (=> b!7575258 (=> res!3034722 e!4509384)))

(assert (=> b!7575259 (= e!4509381 call!694447)))

(declare-fun b!7575260 () Bool)

(assert (=> b!7575260 (= e!4509379 call!694446)))

(assert (= (and d!2317901 c!1397454) b!7575260))

(assert (= (and d!2317901 (not c!1397454)) b!7575253))

(assert (= (and b!7575253 res!3034723) b!7575256))

(assert (= (and b!7575256 c!1397455) b!7575250))

(assert (= (and b!7575256 (not c!1397455)) b!7575257))

(assert (= (and b!7575257 c!1397453) b!7575258))

(assert (= (and b!7575257 (not c!1397453)) b!7575254))

(assert (= (and b!7575258 (not res!3034722)) b!7575251))

(assert (= (and b!7575254 c!1397456) b!7575255))

(assert (= (and b!7575254 (not c!1397456)) b!7575252))

(assert (= (and b!7575255 (not res!3034721)) b!7575259))

(assert (= (or b!7575259 b!7575252) bm!694442))

(assert (= (or b!7575260 b!7575255) bm!694441))

(declare-fun m!8133766 () Bool)

(assert (=> b!7575251 m!8133766))

(assert (=> bm!694441 m!8133678))

(declare-fun m!8133768 () Bool)

(assert (=> bm!694442 m!8133768))

(declare-fun m!8133770 () Bool)

(assert (=> b!7575258 m!8133770))

(assert (=> b!7575091 d!2317901))

(declare-fun b!7575289 () Bool)

(declare-fun res!3034741 () Bool)

(declare-fun e!4509399 () Bool)

(assert (=> b!7575289 (=> (not res!3034741) (not e!4509399))))

(declare-fun tail!15121 (List!72929) List!72929)

(assert (=> b!7575289 (= res!3034741 (isEmpty!41468 (tail!15121 s!13436)))))

(declare-fun b!7575290 () Bool)

(declare-fun res!3034742 () Bool)

(declare-fun e!4509405 () Bool)

(assert (=> b!7575290 (=> res!3034742 e!4509405)))

(assert (=> b!7575290 (= res!3034742 (not (isEmpty!41468 (tail!15121 s!13436))))))

(declare-fun d!2317905 () Bool)

(declare-fun e!4509401 () Bool)

(assert (=> d!2317905 e!4509401))

(declare-fun c!1397464 () Bool)

(assert (=> d!2317905 (= c!1397464 (is-EmptyExpr!20046 r!22341))))

(declare-fun lt!2651946 () Bool)

(declare-fun e!4509403 () Bool)

(assert (=> d!2317905 (= lt!2651946 e!4509403)))

(declare-fun c!1397463 () Bool)

(assert (=> d!2317905 (= c!1397463 (isEmpty!41468 s!13436))))

(assert (=> d!2317905 (validRegex!10474 r!22341)))

(assert (=> d!2317905 (= (matchR!9642 r!22341 s!13436) lt!2651946)))

(declare-fun b!7575291 () Bool)

(declare-fun e!4509404 () Bool)

(assert (=> b!7575291 (= e!4509401 e!4509404)))

(declare-fun c!1397465 () Bool)

(assert (=> b!7575291 (= c!1397465 (is-EmptyLang!20046 r!22341))))

(declare-fun b!7575292 () Bool)

(assert (=> b!7575292 (= e!4509403 (nullable!8750 r!22341))))

(declare-fun bm!694445 () Bool)

(declare-fun call!694450 () Bool)

(assert (=> bm!694445 (= call!694450 (isEmpty!41468 s!13436))))

(declare-fun b!7575293 () Bool)

(declare-fun res!3034745 () Bool)

(declare-fun e!4509400 () Bool)

(assert (=> b!7575293 (=> res!3034745 e!4509400)))

(assert (=> b!7575293 (= res!3034745 (not (is-ElementMatch!20046 r!22341)))))

(assert (=> b!7575293 (= e!4509404 e!4509400)))

(declare-fun b!7575294 () Bool)

(assert (=> b!7575294 (= e!4509401 (= lt!2651946 call!694450))))

(declare-fun b!7575295 () Bool)

(declare-fun e!4509402 () Bool)

(assert (=> b!7575295 (= e!4509400 e!4509402)))

(declare-fun res!3034743 () Bool)

(assert (=> b!7575295 (=> (not res!3034743) (not e!4509402))))

(assert (=> b!7575295 (= res!3034743 (not lt!2651946))))

(declare-fun b!7575296 () Bool)

(assert (=> b!7575296 (= e!4509402 e!4509405)))

(declare-fun res!3034740 () Bool)

(assert (=> b!7575296 (=> res!3034740 e!4509405)))

(assert (=> b!7575296 (= res!3034740 call!694450)))

(declare-fun b!7575297 () Bool)

(assert (=> b!7575297 (= e!4509404 (not lt!2651946))))

(declare-fun b!7575298 () Bool)

(declare-fun head!15581 (List!72929) C!40418)

(assert (=> b!7575298 (= e!4509405 (not (= (head!15581 s!13436) (c!1397431 r!22341))))))

(declare-fun b!7575299 () Bool)

(assert (=> b!7575299 (= e!4509399 (= (head!15581 s!13436) (c!1397431 r!22341)))))

(declare-fun b!7575300 () Bool)

(declare-fun derivativeStep!5781 (Regex!20046 C!40418) Regex!20046)

(assert (=> b!7575300 (= e!4509403 (matchR!9642 (derivativeStep!5781 r!22341 (head!15581 s!13436)) (tail!15121 s!13436)))))

(declare-fun b!7575301 () Bool)

(declare-fun res!3034744 () Bool)

(assert (=> b!7575301 (=> res!3034744 e!4509400)))

(assert (=> b!7575301 (= res!3034744 e!4509399)))

(declare-fun res!3034746 () Bool)

(assert (=> b!7575301 (=> (not res!3034746) (not e!4509399))))

(assert (=> b!7575301 (= res!3034746 lt!2651946)))

(declare-fun b!7575302 () Bool)

(declare-fun res!3034747 () Bool)

(assert (=> b!7575302 (=> (not res!3034747) (not e!4509399))))

(assert (=> b!7575302 (= res!3034747 (not call!694450))))

(assert (= (and d!2317905 c!1397463) b!7575292))

(assert (= (and d!2317905 (not c!1397463)) b!7575300))

(assert (= (and d!2317905 c!1397464) b!7575294))

(assert (= (and d!2317905 (not c!1397464)) b!7575291))

(assert (= (and b!7575291 c!1397465) b!7575297))

(assert (= (and b!7575291 (not c!1397465)) b!7575293))

(assert (= (and b!7575293 (not res!3034745)) b!7575301))

(assert (= (and b!7575301 res!3034746) b!7575302))

(assert (= (and b!7575302 res!3034747) b!7575289))

(assert (= (and b!7575289 res!3034741) b!7575299))

(assert (= (and b!7575301 (not res!3034744)) b!7575295))

(assert (= (and b!7575295 res!3034743) b!7575296))

(assert (= (and b!7575296 (not res!3034740)) b!7575290))

(assert (= (and b!7575290 (not res!3034742)) b!7575298))

(assert (= (or b!7575294 b!7575296 b!7575302) bm!694445))

(declare-fun m!8133776 () Bool)

(assert (=> b!7575298 m!8133776))

(assert (=> b!7575300 m!8133776))

(assert (=> b!7575300 m!8133776))

(declare-fun m!8133778 () Bool)

(assert (=> b!7575300 m!8133778))

(declare-fun m!8133780 () Bool)

(assert (=> b!7575300 m!8133780))

(assert (=> b!7575300 m!8133778))

(assert (=> b!7575300 m!8133780))

(declare-fun m!8133782 () Bool)

(assert (=> b!7575300 m!8133782))

(assert (=> d!2317905 m!8133678))

(assert (=> d!2317905 m!8133658))

(assert (=> b!7575299 m!8133776))

(assert (=> b!7575290 m!8133780))

(assert (=> b!7575290 m!8133780))

(declare-fun m!8133784 () Bool)

(assert (=> b!7575290 m!8133784))

(assert (=> b!7575289 m!8133780))

(assert (=> b!7575289 m!8133780))

(assert (=> b!7575289 m!8133784))

(assert (=> bm!694445 m!8133678))

(declare-fun m!8133786 () Bool)

(assert (=> b!7575292 m!8133786))

(assert (=> b!7575091 d!2317905))

(declare-fun d!2317911 () Bool)

(assert (=> d!2317911 (= (matchR!9642 r!22341 s!13436) (matchRSpec!4365 r!22341 s!13436))))

(declare-fun lt!2651949 () Unit!167048)

(declare-fun choose!58570 (Regex!20046 List!72929) Unit!167048)

(assert (=> d!2317911 (= lt!2651949 (choose!58570 r!22341 s!13436))))

(assert (=> d!2317911 (validRegex!10474 r!22341)))

(assert (=> d!2317911 (= (mainMatchTheorem!4359 r!22341 s!13436) lt!2651949)))

(declare-fun bs!1940784 () Bool)

(assert (= bs!1940784 d!2317911))

(assert (=> bs!1940784 m!8133674))

(assert (=> bs!1940784 m!8133672))

(declare-fun m!8133788 () Bool)

(assert (=> bs!1940784 m!8133788))

(assert (=> bs!1940784 m!8133658))

(assert (=> b!7575091 d!2317911))

(declare-fun b!7575316 () Bool)

(declare-fun e!4509408 () Bool)

(declare-fun tp!2207355 () Bool)

(declare-fun tp!2207352 () Bool)

(assert (=> b!7575316 (= e!4509408 (and tp!2207355 tp!2207352))))

(declare-fun b!7575314 () Bool)

(declare-fun tp!2207354 () Bool)

(declare-fun tp!2207353 () Bool)

(assert (=> b!7575314 (= e!4509408 (and tp!2207354 tp!2207353))))

(assert (=> b!7575088 (= tp!2207321 e!4509408)))

(declare-fun b!7575313 () Bool)

(assert (=> b!7575313 (= e!4509408 tp_is_empty!50447)))

(declare-fun b!7575315 () Bool)

(declare-fun tp!2207356 () Bool)

(assert (=> b!7575315 (= e!4509408 tp!2207356)))

(assert (= (and b!7575088 (is-ElementMatch!20046 (reg!20375 r!22341))) b!7575313))

(assert (= (and b!7575088 (is-Concat!28891 (reg!20375 r!22341))) b!7575314))

(assert (= (and b!7575088 (is-Star!20046 (reg!20375 r!22341))) b!7575315))

(assert (= (and b!7575088 (is-Union!20046 (reg!20375 r!22341))) b!7575316))

(declare-fun b!7575321 () Bool)

(declare-fun e!4509411 () Bool)

(declare-fun tp!2207359 () Bool)

(assert (=> b!7575321 (= e!4509411 (and tp_is_empty!50447 tp!2207359))))

(assert (=> b!7575090 (= tp!2207320 e!4509411)))

(assert (= (and b!7575090 (is-Cons!72805 (t!387664 s!13436))) b!7575321))

(declare-fun b!7575325 () Bool)

(declare-fun e!4509412 () Bool)

(declare-fun tp!2207363 () Bool)

(declare-fun tp!2207360 () Bool)

(assert (=> b!7575325 (= e!4509412 (and tp!2207363 tp!2207360))))

(declare-fun b!7575323 () Bool)

(declare-fun tp!2207362 () Bool)

(declare-fun tp!2207361 () Bool)

(assert (=> b!7575323 (= e!4509412 (and tp!2207362 tp!2207361))))

(assert (=> b!7575084 (= tp!2207323 e!4509412)))

(declare-fun b!7575322 () Bool)

(assert (=> b!7575322 (= e!4509412 tp_is_empty!50447)))

(declare-fun b!7575324 () Bool)

(declare-fun tp!2207364 () Bool)

(assert (=> b!7575324 (= e!4509412 tp!2207364)))

(assert (= (and b!7575084 (is-ElementMatch!20046 (regOne!40605 r!22341))) b!7575322))

(assert (= (and b!7575084 (is-Concat!28891 (regOne!40605 r!22341))) b!7575323))

(assert (= (and b!7575084 (is-Star!20046 (regOne!40605 r!22341))) b!7575324))

(assert (= (and b!7575084 (is-Union!20046 (regOne!40605 r!22341))) b!7575325))

(declare-fun b!7575329 () Bool)

(declare-fun e!4509413 () Bool)

(declare-fun tp!2207368 () Bool)

(declare-fun tp!2207365 () Bool)

(assert (=> b!7575329 (= e!4509413 (and tp!2207368 tp!2207365))))

(declare-fun b!7575327 () Bool)

(declare-fun tp!2207367 () Bool)

(declare-fun tp!2207366 () Bool)

(assert (=> b!7575327 (= e!4509413 (and tp!2207367 tp!2207366))))

(assert (=> b!7575084 (= tp!2207319 e!4509413)))

(declare-fun b!7575326 () Bool)

(assert (=> b!7575326 (= e!4509413 tp_is_empty!50447)))

(declare-fun b!7575328 () Bool)

(declare-fun tp!2207369 () Bool)

(assert (=> b!7575328 (= e!4509413 tp!2207369)))

(assert (= (and b!7575084 (is-ElementMatch!20046 (regTwo!40605 r!22341))) b!7575326))

(assert (= (and b!7575084 (is-Concat!28891 (regTwo!40605 r!22341))) b!7575327))

(assert (= (and b!7575084 (is-Star!20046 (regTwo!40605 r!22341))) b!7575328))

(assert (= (and b!7575084 (is-Union!20046 (regTwo!40605 r!22341))) b!7575329))

(declare-fun b!7575333 () Bool)

(declare-fun e!4509414 () Bool)

(declare-fun tp!2207373 () Bool)

(declare-fun tp!2207370 () Bool)

(assert (=> b!7575333 (= e!4509414 (and tp!2207373 tp!2207370))))

(declare-fun b!7575331 () Bool)

(declare-fun tp!2207372 () Bool)

(declare-fun tp!2207371 () Bool)

(assert (=> b!7575331 (= e!4509414 (and tp!2207372 tp!2207371))))

(assert (=> b!7575086 (= tp!2207318 e!4509414)))

(declare-fun b!7575330 () Bool)

(assert (=> b!7575330 (= e!4509414 tp_is_empty!50447)))

(declare-fun b!7575332 () Bool)

(declare-fun tp!2207374 () Bool)

(assert (=> b!7575332 (= e!4509414 tp!2207374)))

(assert (= (and b!7575086 (is-ElementMatch!20046 (regOne!40604 r!22341))) b!7575330))

(assert (= (and b!7575086 (is-Concat!28891 (regOne!40604 r!22341))) b!7575331))

(assert (= (and b!7575086 (is-Star!20046 (regOne!40604 r!22341))) b!7575332))

(assert (= (and b!7575086 (is-Union!20046 (regOne!40604 r!22341))) b!7575333))

(declare-fun b!7575337 () Bool)

(declare-fun e!4509415 () Bool)

(declare-fun tp!2207378 () Bool)

(declare-fun tp!2207375 () Bool)

(assert (=> b!7575337 (= e!4509415 (and tp!2207378 tp!2207375))))

(declare-fun b!7575335 () Bool)

(declare-fun tp!2207377 () Bool)

(declare-fun tp!2207376 () Bool)

(assert (=> b!7575335 (= e!4509415 (and tp!2207377 tp!2207376))))

(assert (=> b!7575086 (= tp!2207322 e!4509415)))

(declare-fun b!7575334 () Bool)

(assert (=> b!7575334 (= e!4509415 tp_is_empty!50447)))

(declare-fun b!7575336 () Bool)

(declare-fun tp!2207379 () Bool)

(assert (=> b!7575336 (= e!4509415 tp!2207379)))

(assert (= (and b!7575086 (is-ElementMatch!20046 (regTwo!40604 r!22341))) b!7575334))

(assert (= (and b!7575086 (is-Concat!28891 (regTwo!40604 r!22341))) b!7575335))

(assert (= (and b!7575086 (is-Star!20046 (regTwo!40604 r!22341))) b!7575336))

(assert (= (and b!7575086 (is-Union!20046 (regTwo!40604 r!22341))) b!7575337))

(push 1)

(assert (not b!7575251))

(assert (not d!2317889))

(assert (not b!7575328))

(assert (not d!2317883))

(assert (not b!7575325))

(assert (not b!7575327))

(assert (not d!2317905))

(assert (not bm!694434))

(assert (not bm!694435))

(assert (not b!7575333))

(assert (not d!2317911))

(assert (not d!2317879))

(assert (not bm!694445))

(assert (not d!2317893))

(assert (not b!7575167))

(assert (not b!7575168))

(assert (not b!7575298))

(assert (not b!7575335))

(assert (not b!7575323))

(assert (not b!7575324))

(assert (not b!7575337))

(assert (not d!2317887))

(assert (not d!2317891))

(assert (not b!7575321))

(assert (not b!7575336))

(assert (not b!7575314))

(assert (not bm!694442))

(assert (not b!7575329))

(assert (not b!7575299))

(assert (not bm!694441))

(assert (not b!7575171))

(assert (not b!7575290))

(assert (not b!7575172))

(assert (not b!7575166))

(assert tp_is_empty!50447)

(assert (not b!7575315))

(assert (not b!7575174))

(assert (not b!7575300))

(assert (not b!7575289))

(assert (not b!7575258))

(assert (not b!7575211))

(assert (not b!7575292))

(assert (not b!7575332))

(assert (not b!7575331))

(assert (not b!7575316))

(assert (not d!2317881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

