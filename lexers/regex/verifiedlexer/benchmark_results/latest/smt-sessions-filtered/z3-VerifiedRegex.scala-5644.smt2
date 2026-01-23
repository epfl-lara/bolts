; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282094 () Bool)

(assert start!282094)

(declare-fun b!2894455 () Bool)

(declare-fun res!1197280 () Bool)

(declare-fun e!1828904 () Bool)

(assert (=> b!2894455 (=> (not res!1197280) (not e!1828904))))

(declare-datatypes ((C!17868 0))(
  ( (C!17869 (val!10968 Int)) )
))
(declare-datatypes ((Regex!8843 0))(
  ( (ElementMatch!8843 (c!470918 C!17868)) (Concat!14164 (regOne!18198 Regex!8843) (regTwo!18198 Regex!8843)) (EmptyExpr!8843) (Star!8843 (reg!9172 Regex!8843)) (EmptyLang!8843) (Union!8843 (regOne!18199 Regex!8843) (regTwo!18199 Regex!8843)) )
))
(declare-fun r!23079 () Regex!8843)

(get-info :version)

(assert (=> b!2894455 (= res!1197280 (and (not ((_ is EmptyExpr!8843) r!23079)) (not ((_ is EmptyLang!8843) r!23079)) (not ((_ is ElementMatch!8843) r!23079)) (not ((_ is Star!8843) r!23079)) ((_ is Union!8843) r!23079)))))

(declare-fun b!2894456 () Bool)

(declare-fun e!1828905 () Bool)

(declare-datatypes ((List!34644 0))(
  ( (Nil!34520) (Cons!34520 (h!39940 C!17868) (t!233687 List!34644)) )
))
(declare-datatypes ((Option!6516 0))(
  ( (None!6515) (Some!6515 (v!34641 List!34644)) )
))
(declare-fun lt!1021422 () Option!6516)

(declare-fun matchR!3807 (Regex!8843 List!34644) Bool)

(declare-fun get!10461 (Option!6516) List!34644)

(assert (=> b!2894456 (= e!1828905 (matchR!3807 r!23079 (get!10461 lt!1021422)))))

(declare-fun lt!1021418 () List!34644)

(assert (=> b!2894456 (matchR!3807 (Union!8843 (regOne!18199 r!23079) (regTwo!18199 r!23079)) lt!1021418)))

(declare-datatypes ((Unit!48103 0))(
  ( (Unit!48104) )
))
(declare-fun lt!1021419 () Unit!48103)

(declare-fun lemmaReversedUnionAcceptsSameString!14 (Regex!8843 Regex!8843 List!34644) Unit!48103)

(assert (=> b!2894456 (= lt!1021419 (lemmaReversedUnionAcceptsSameString!14 (regTwo!18199 r!23079) (regOne!18199 r!23079) lt!1021418))))

(declare-fun b!2894457 () Bool)

(declare-fun e!1828902 () Bool)

(declare-fun tp!929176 () Bool)

(declare-fun tp!929177 () Bool)

(assert (=> b!2894457 (= e!1828902 (and tp!929176 tp!929177))))

(declare-fun b!2894458 () Bool)

(declare-fun e!1828901 () Bool)

(assert (=> b!2894458 (= e!1828901 e!1828904)))

(declare-fun res!1197275 () Bool)

(assert (=> b!2894458 (=> (not res!1197275) (not e!1828904))))

(declare-fun isDefined!5080 (Option!6516) Bool)

(assert (=> b!2894458 (= res!1197275 (isDefined!5080 lt!1021422))))

(declare-fun getLanguageWitness!550 (Regex!8843) Option!6516)

(assert (=> b!2894458 (= lt!1021422 (getLanguageWitness!550 r!23079))))

(declare-fun res!1197278 () Bool)

(assert (=> start!282094 (=> (not res!1197278) (not e!1828901))))

(declare-fun validRegex!3616 (Regex!8843) Bool)

(assert (=> start!282094 (= res!1197278 (validRegex!3616 r!23079))))

(assert (=> start!282094 e!1828901))

(assert (=> start!282094 e!1828902))

(declare-fun b!2894454 () Bool)

(declare-fun e!1828903 () Bool)

(assert (=> b!2894454 (= e!1828903 e!1828905)))

(declare-fun res!1197281 () Bool)

(assert (=> b!2894454 (=> res!1197281 e!1828905)))

(assert (=> b!2894454 (= res!1197281 (not (validRegex!3616 (regTwo!18199 r!23079))))))

(assert (=> b!2894454 (matchR!3807 (Union!8843 (regTwo!18199 r!23079) (regOne!18199 r!23079)) lt!1021418)))

(declare-fun lt!1021420 () Unit!48103)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!48 (Regex!8843 Regex!8843 List!34644) Unit!48103)

(assert (=> b!2894454 (= lt!1021420 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!48 (regTwo!18199 r!23079) (regOne!18199 r!23079) lt!1021418))))

(declare-fun b!2894459 () Bool)

(declare-fun res!1197276 () Bool)

(assert (=> b!2894459 (=> (not res!1197276) (not e!1828904))))

(assert (=> b!2894459 (= res!1197276 (not ((_ is Some!6515) (getLanguageWitness!550 (regOne!18199 r!23079)))))))

(declare-fun b!2894460 () Bool)

(declare-fun tp!929179 () Bool)

(declare-fun tp!929178 () Bool)

(assert (=> b!2894460 (= e!1828902 (and tp!929179 tp!929178))))

(declare-fun b!2894461 () Bool)

(declare-fun tp_is_empty!15273 () Bool)

(assert (=> b!2894461 (= e!1828902 tp_is_empty!15273)))

(declare-fun b!2894462 () Bool)

(declare-fun tp!929175 () Bool)

(assert (=> b!2894462 (= e!1828902 tp!929175)))

(declare-fun b!2894463 () Bool)

(assert (=> b!2894463 (= e!1828904 (not e!1828903))))

(declare-fun res!1197277 () Bool)

(assert (=> b!2894463 (=> res!1197277 e!1828903)))

(declare-fun lt!1021421 () Option!6516)

(assert (=> b!2894463 (= res!1197277 (not (isDefined!5080 lt!1021421)))))

(assert (=> b!2894463 (matchR!3807 (regTwo!18199 r!23079) lt!1021418)))

(assert (=> b!2894463 (= lt!1021418 (get!10461 lt!1021421))))

(declare-fun lt!1021417 () Unit!48103)

(declare-fun lemmaGetWitnessMatches!106 (Regex!8843) Unit!48103)

(assert (=> b!2894463 (= lt!1021417 (lemmaGetWitnessMatches!106 (regTwo!18199 r!23079)))))

(assert (=> b!2894463 (= lt!1021421 (getLanguageWitness!550 (regTwo!18199 r!23079)))))

(declare-fun b!2894464 () Bool)

(declare-fun res!1197279 () Bool)

(assert (=> b!2894464 (=> res!1197279 e!1828905)))

(assert (=> b!2894464 (= res!1197279 (not (validRegex!3616 (regOne!18199 r!23079))))))

(assert (= (and start!282094 res!1197278) b!2894458))

(assert (= (and b!2894458 res!1197275) b!2894455))

(assert (= (and b!2894455 res!1197280) b!2894459))

(assert (= (and b!2894459 res!1197276) b!2894463))

(assert (= (and b!2894463 (not res!1197277)) b!2894454))

(assert (= (and b!2894454 (not res!1197281)) b!2894464))

(assert (= (and b!2894464 (not res!1197279)) b!2894456))

(assert (= (and start!282094 ((_ is ElementMatch!8843) r!23079)) b!2894461))

(assert (= (and start!282094 ((_ is Concat!14164) r!23079)) b!2894457))

(assert (= (and start!282094 ((_ is Star!8843) r!23079)) b!2894462))

(assert (= (and start!282094 ((_ is Union!8843) r!23079)) b!2894460))

(declare-fun m!3303625 () Bool)

(assert (=> b!2894454 m!3303625))

(declare-fun m!3303627 () Bool)

(assert (=> b!2894454 m!3303627))

(declare-fun m!3303629 () Bool)

(assert (=> b!2894454 m!3303629))

(declare-fun m!3303631 () Bool)

(assert (=> b!2894463 m!3303631))

(declare-fun m!3303633 () Bool)

(assert (=> b!2894463 m!3303633))

(declare-fun m!3303635 () Bool)

(assert (=> b!2894463 m!3303635))

(declare-fun m!3303637 () Bool)

(assert (=> b!2894463 m!3303637))

(declare-fun m!3303639 () Bool)

(assert (=> b!2894463 m!3303639))

(declare-fun m!3303641 () Bool)

(assert (=> b!2894456 m!3303641))

(assert (=> b!2894456 m!3303641))

(declare-fun m!3303643 () Bool)

(assert (=> b!2894456 m!3303643))

(declare-fun m!3303645 () Bool)

(assert (=> b!2894456 m!3303645))

(declare-fun m!3303647 () Bool)

(assert (=> b!2894456 m!3303647))

(declare-fun m!3303649 () Bool)

(assert (=> b!2894459 m!3303649))

(declare-fun m!3303651 () Bool)

(assert (=> b!2894464 m!3303651))

(declare-fun m!3303653 () Bool)

(assert (=> start!282094 m!3303653))

(declare-fun m!3303655 () Bool)

(assert (=> b!2894458 m!3303655))

(declare-fun m!3303657 () Bool)

(assert (=> b!2894458 m!3303657))

(check-sat (not b!2894458) (not b!2894459) (not b!2894460) (not b!2894464) tp_is_empty!15273 (not b!2894457) (not b!2894462) (not b!2894454) (not b!2894463) (not start!282094) (not b!2894456))
(check-sat)
(get-model)

(declare-fun b!2894484 () Bool)

(declare-fun res!1197294 () Bool)

(declare-fun e!1828926 () Bool)

(assert (=> b!2894484 (=> res!1197294 e!1828926)))

(assert (=> b!2894484 (= res!1197294 (not ((_ is Concat!14164) (regOne!18199 r!23079))))))

(declare-fun e!1828923 () Bool)

(assert (=> b!2894484 (= e!1828923 e!1828926)))

(declare-fun bm!188194 () Bool)

(declare-fun call!188201 () Bool)

(declare-fun call!188200 () Bool)

(assert (=> bm!188194 (= call!188201 call!188200)))

(declare-fun b!2894485 () Bool)

(declare-fun e!1828922 () Bool)

(assert (=> b!2894485 (= e!1828922 e!1828923)))

(declare-fun c!470923 () Bool)

(assert (=> b!2894485 (= c!470923 ((_ is Union!8843) (regOne!18199 r!23079)))))

(declare-fun b!2894486 () Bool)

(declare-fun e!1828925 () Bool)

(declare-fun call!188199 () Bool)

(assert (=> b!2894486 (= e!1828925 call!188199)))

(declare-fun b!2894487 () Bool)

(declare-fun e!1828921 () Bool)

(assert (=> b!2894487 (= e!1828922 e!1828921)))

(declare-fun res!1197295 () Bool)

(declare-fun nullable!2743 (Regex!8843) Bool)

(assert (=> b!2894487 (= res!1197295 (not (nullable!2743 (reg!9172 (regOne!18199 r!23079)))))))

(assert (=> b!2894487 (=> (not res!1197295) (not e!1828921))))

(declare-fun b!2894488 () Bool)

(declare-fun res!1197296 () Bool)

(declare-fun e!1828924 () Bool)

(assert (=> b!2894488 (=> (not res!1197296) (not e!1828924))))

(assert (=> b!2894488 (= res!1197296 call!188201)))

(assert (=> b!2894488 (= e!1828923 e!1828924)))

(declare-fun bm!188195 () Bool)

(declare-fun c!470924 () Bool)

(assert (=> bm!188195 (= call!188200 (validRegex!3616 (ite c!470924 (reg!9172 (regOne!18199 r!23079)) (ite c!470923 (regOne!18199 (regOne!18199 r!23079)) (regOne!18198 (regOne!18199 r!23079))))))))

(declare-fun d!834727 () Bool)

(declare-fun res!1197293 () Bool)

(declare-fun e!1828920 () Bool)

(assert (=> d!834727 (=> res!1197293 e!1828920)))

(assert (=> d!834727 (= res!1197293 ((_ is ElementMatch!8843) (regOne!18199 r!23079)))))

(assert (=> d!834727 (= (validRegex!3616 (regOne!18199 r!23079)) e!1828920)))

(declare-fun b!2894483 () Bool)

(assert (=> b!2894483 (= e!1828926 e!1828925)))

(declare-fun res!1197292 () Bool)

(assert (=> b!2894483 (=> (not res!1197292) (not e!1828925))))

(assert (=> b!2894483 (= res!1197292 call!188201)))

(declare-fun bm!188196 () Bool)

(assert (=> bm!188196 (= call!188199 (validRegex!3616 (ite c!470923 (regTwo!18199 (regOne!18199 r!23079)) (regTwo!18198 (regOne!18199 r!23079)))))))

(declare-fun b!2894489 () Bool)

(assert (=> b!2894489 (= e!1828920 e!1828922)))

(assert (=> b!2894489 (= c!470924 ((_ is Star!8843) (regOne!18199 r!23079)))))

(declare-fun b!2894490 () Bool)

(assert (=> b!2894490 (= e!1828921 call!188200)))

(declare-fun b!2894491 () Bool)

(assert (=> b!2894491 (= e!1828924 call!188199)))

(assert (= (and d!834727 (not res!1197293)) b!2894489))

(assert (= (and b!2894489 c!470924) b!2894487))

(assert (= (and b!2894489 (not c!470924)) b!2894485))

(assert (= (and b!2894487 res!1197295) b!2894490))

(assert (= (and b!2894485 c!470923) b!2894488))

(assert (= (and b!2894485 (not c!470923)) b!2894484))

(assert (= (and b!2894488 res!1197296) b!2894491))

(assert (= (and b!2894484 (not res!1197294)) b!2894483))

(assert (= (and b!2894483 res!1197292) b!2894486))

(assert (= (or b!2894491 b!2894486) bm!188196))

(assert (= (or b!2894488 b!2894483) bm!188194))

(assert (= (or b!2894490 bm!188194) bm!188195))

(declare-fun m!3303665 () Bool)

(assert (=> b!2894487 m!3303665))

(declare-fun m!3303667 () Bool)

(assert (=> bm!188195 m!3303667))

(declare-fun m!3303669 () Bool)

(assert (=> bm!188196 m!3303669))

(assert (=> b!2894464 d!834727))

(declare-fun b!2894493 () Bool)

(declare-fun res!1197299 () Bool)

(declare-fun e!1828933 () Bool)

(assert (=> b!2894493 (=> res!1197299 e!1828933)))

(assert (=> b!2894493 (= res!1197299 (not ((_ is Concat!14164) (regTwo!18199 r!23079))))))

(declare-fun e!1828930 () Bool)

(assert (=> b!2894493 (= e!1828930 e!1828933)))

(declare-fun bm!188197 () Bool)

(declare-fun call!188204 () Bool)

(declare-fun call!188203 () Bool)

(assert (=> bm!188197 (= call!188204 call!188203)))

(declare-fun b!2894494 () Bool)

(declare-fun e!1828929 () Bool)

(assert (=> b!2894494 (= e!1828929 e!1828930)))

(declare-fun c!470925 () Bool)

(assert (=> b!2894494 (= c!470925 ((_ is Union!8843) (regTwo!18199 r!23079)))))

(declare-fun b!2894495 () Bool)

(declare-fun e!1828932 () Bool)

(declare-fun call!188202 () Bool)

(assert (=> b!2894495 (= e!1828932 call!188202)))

(declare-fun b!2894496 () Bool)

(declare-fun e!1828928 () Bool)

(assert (=> b!2894496 (= e!1828929 e!1828928)))

(declare-fun res!1197300 () Bool)

(assert (=> b!2894496 (= res!1197300 (not (nullable!2743 (reg!9172 (regTwo!18199 r!23079)))))))

(assert (=> b!2894496 (=> (not res!1197300) (not e!1828928))))

(declare-fun b!2894497 () Bool)

(declare-fun res!1197301 () Bool)

(declare-fun e!1828931 () Bool)

(assert (=> b!2894497 (=> (not res!1197301) (not e!1828931))))

(assert (=> b!2894497 (= res!1197301 call!188204)))

(assert (=> b!2894497 (= e!1828930 e!1828931)))

(declare-fun c!470926 () Bool)

(declare-fun bm!188198 () Bool)

(assert (=> bm!188198 (= call!188203 (validRegex!3616 (ite c!470926 (reg!9172 (regTwo!18199 r!23079)) (ite c!470925 (regOne!18199 (regTwo!18199 r!23079)) (regOne!18198 (regTwo!18199 r!23079))))))))

(declare-fun d!834733 () Bool)

(declare-fun res!1197298 () Bool)

(declare-fun e!1828927 () Bool)

(assert (=> d!834733 (=> res!1197298 e!1828927)))

(assert (=> d!834733 (= res!1197298 ((_ is ElementMatch!8843) (regTwo!18199 r!23079)))))

(assert (=> d!834733 (= (validRegex!3616 (regTwo!18199 r!23079)) e!1828927)))

(declare-fun b!2894492 () Bool)

(assert (=> b!2894492 (= e!1828933 e!1828932)))

(declare-fun res!1197297 () Bool)

(assert (=> b!2894492 (=> (not res!1197297) (not e!1828932))))

(assert (=> b!2894492 (= res!1197297 call!188204)))

(declare-fun bm!188199 () Bool)

(assert (=> bm!188199 (= call!188202 (validRegex!3616 (ite c!470925 (regTwo!18199 (regTwo!18199 r!23079)) (regTwo!18198 (regTwo!18199 r!23079)))))))

(declare-fun b!2894498 () Bool)

(assert (=> b!2894498 (= e!1828927 e!1828929)))

(assert (=> b!2894498 (= c!470926 ((_ is Star!8843) (regTwo!18199 r!23079)))))

(declare-fun b!2894499 () Bool)

(assert (=> b!2894499 (= e!1828928 call!188203)))

(declare-fun b!2894500 () Bool)

(assert (=> b!2894500 (= e!1828931 call!188202)))

(assert (= (and d!834733 (not res!1197298)) b!2894498))

(assert (= (and b!2894498 c!470926) b!2894496))

(assert (= (and b!2894498 (not c!470926)) b!2894494))

(assert (= (and b!2894496 res!1197300) b!2894499))

(assert (= (and b!2894494 c!470925) b!2894497))

(assert (= (and b!2894494 (not c!470925)) b!2894493))

(assert (= (and b!2894497 res!1197301) b!2894500))

(assert (= (and b!2894493 (not res!1197299)) b!2894492))

(assert (= (and b!2894492 res!1197297) b!2894495))

(assert (= (or b!2894500 b!2894495) bm!188199))

(assert (= (or b!2894497 b!2894492) bm!188197))

(assert (= (or b!2894499 bm!188197) bm!188198))

(declare-fun m!3303671 () Bool)

(assert (=> b!2894496 m!3303671))

(declare-fun m!3303673 () Bool)

(assert (=> bm!188198 m!3303673))

(declare-fun m!3303675 () Bool)

(assert (=> bm!188199 m!3303675))

(assert (=> b!2894454 d!834733))

(declare-fun b!2894571 () Bool)

(declare-fun e!1828970 () Bool)

(declare-fun e!1828969 () Bool)

(assert (=> b!2894571 (= e!1828970 e!1828969)))

(declare-fun res!1197343 () Bool)

(assert (=> b!2894571 (=> (not res!1197343) (not e!1828969))))

(declare-fun lt!1021431 () Bool)

(assert (=> b!2894571 (= res!1197343 (not lt!1021431))))

(declare-fun b!2894572 () Bool)

(declare-fun res!1197345 () Bool)

(assert (=> b!2894572 (=> res!1197345 e!1828970)))

(declare-fun e!1828972 () Bool)

(assert (=> b!2894572 (= res!1197345 e!1828972)))

(declare-fun res!1197346 () Bool)

(assert (=> b!2894572 (=> (not res!1197346) (not e!1828972))))

(assert (=> b!2894572 (= res!1197346 lt!1021431)))

(declare-fun bm!188205 () Bool)

(declare-fun call!188210 () Bool)

(declare-fun isEmpty!18826 (List!34644) Bool)

(assert (=> bm!188205 (= call!188210 (isEmpty!18826 lt!1021418))))

(declare-fun d!834735 () Bool)

(declare-fun e!1828973 () Bool)

(assert (=> d!834735 e!1828973))

(declare-fun c!470942 () Bool)

(assert (=> d!834735 (= c!470942 ((_ is EmptyExpr!8843) (Union!8843 (regTwo!18199 r!23079) (regOne!18199 r!23079))))))

(declare-fun e!1828974 () Bool)

(assert (=> d!834735 (= lt!1021431 e!1828974)))

(declare-fun c!470943 () Bool)

(assert (=> d!834735 (= c!470943 (isEmpty!18826 lt!1021418))))

(assert (=> d!834735 (validRegex!3616 (Union!8843 (regTwo!18199 r!23079) (regOne!18199 r!23079)))))

(assert (=> d!834735 (= (matchR!3807 (Union!8843 (regTwo!18199 r!23079) (regOne!18199 r!23079)) lt!1021418) lt!1021431)))

(declare-fun b!2894573 () Bool)

(assert (=> b!2894573 (= e!1828973 (= lt!1021431 call!188210))))

(declare-fun b!2894574 () Bool)

(declare-fun res!1197344 () Bool)

(assert (=> b!2894574 (=> (not res!1197344) (not e!1828972))))

(assert (=> b!2894574 (= res!1197344 (not call!188210))))

(declare-fun b!2894575 () Bool)

(declare-fun res!1197342 () Bool)

(assert (=> b!2894575 (=> res!1197342 e!1828970)))

(assert (=> b!2894575 (= res!1197342 (not ((_ is ElementMatch!8843) (Union!8843 (regTwo!18199 r!23079) (regOne!18199 r!23079)))))))

(declare-fun e!1828971 () Bool)

(assert (=> b!2894575 (= e!1828971 e!1828970)))

(declare-fun b!2894576 () Bool)

(assert (=> b!2894576 (= e!1828971 (not lt!1021431))))

(declare-fun b!2894577 () Bool)

(declare-fun res!1197349 () Bool)

(declare-fun e!1828975 () Bool)

(assert (=> b!2894577 (=> res!1197349 e!1828975)))

(declare-fun tail!4616 (List!34644) List!34644)

(assert (=> b!2894577 (= res!1197349 (not (isEmpty!18826 (tail!4616 lt!1021418))))))

(declare-fun b!2894578 () Bool)

(declare-fun head!6391 (List!34644) C!17868)

(assert (=> b!2894578 (= e!1828975 (not (= (head!6391 lt!1021418) (c!470918 (Union!8843 (regTwo!18199 r!23079) (regOne!18199 r!23079))))))))

(declare-fun b!2894579 () Bool)

(declare-fun derivativeStep!2362 (Regex!8843 C!17868) Regex!8843)

(assert (=> b!2894579 (= e!1828974 (matchR!3807 (derivativeStep!2362 (Union!8843 (regTwo!18199 r!23079) (regOne!18199 r!23079)) (head!6391 lt!1021418)) (tail!4616 lt!1021418)))))

(declare-fun b!2894580 () Bool)

(assert (=> b!2894580 (= e!1828974 (nullable!2743 (Union!8843 (regTwo!18199 r!23079) (regOne!18199 r!23079))))))

(declare-fun b!2894581 () Bool)

(assert (=> b!2894581 (= e!1828972 (= (head!6391 lt!1021418) (c!470918 (Union!8843 (regTwo!18199 r!23079) (regOne!18199 r!23079)))))))

(declare-fun b!2894582 () Bool)

(assert (=> b!2894582 (= e!1828973 e!1828971)))

(declare-fun c!470944 () Bool)

(assert (=> b!2894582 (= c!470944 ((_ is EmptyLang!8843) (Union!8843 (regTwo!18199 r!23079) (regOne!18199 r!23079))))))

(declare-fun b!2894583 () Bool)

(declare-fun res!1197348 () Bool)

(assert (=> b!2894583 (=> (not res!1197348) (not e!1828972))))

(assert (=> b!2894583 (= res!1197348 (isEmpty!18826 (tail!4616 lt!1021418)))))

(declare-fun b!2894584 () Bool)

(assert (=> b!2894584 (= e!1828969 e!1828975)))

(declare-fun res!1197347 () Bool)

(assert (=> b!2894584 (=> res!1197347 e!1828975)))

(assert (=> b!2894584 (= res!1197347 call!188210)))

(assert (= (and d!834735 c!470943) b!2894580))

(assert (= (and d!834735 (not c!470943)) b!2894579))

(assert (= (and d!834735 c!470942) b!2894573))

(assert (= (and d!834735 (not c!470942)) b!2894582))

(assert (= (and b!2894582 c!470944) b!2894576))

(assert (= (and b!2894582 (not c!470944)) b!2894575))

(assert (= (and b!2894575 (not res!1197342)) b!2894572))

(assert (= (and b!2894572 res!1197346) b!2894574))

(assert (= (and b!2894574 res!1197344) b!2894583))

(assert (= (and b!2894583 res!1197348) b!2894581))

(assert (= (and b!2894572 (not res!1197345)) b!2894571))

(assert (= (and b!2894571 res!1197343) b!2894584))

(assert (= (and b!2894584 (not res!1197347)) b!2894577))

(assert (= (and b!2894577 (not res!1197349)) b!2894578))

(assert (= (or b!2894573 b!2894574 b!2894584) bm!188205))

(declare-fun m!3303693 () Bool)

(assert (=> d!834735 m!3303693))

(declare-fun m!3303695 () Bool)

(assert (=> d!834735 m!3303695))

(declare-fun m!3303697 () Bool)

(assert (=> b!2894578 m!3303697))

(declare-fun m!3303699 () Bool)

(assert (=> b!2894583 m!3303699))

(assert (=> b!2894583 m!3303699))

(declare-fun m!3303701 () Bool)

(assert (=> b!2894583 m!3303701))

(assert (=> b!2894577 m!3303699))

(assert (=> b!2894577 m!3303699))

(assert (=> b!2894577 m!3303701))

(assert (=> b!2894581 m!3303697))

(declare-fun m!3303703 () Bool)

(assert (=> b!2894580 m!3303703))

(assert (=> bm!188205 m!3303693))

(assert (=> b!2894579 m!3303697))

(assert (=> b!2894579 m!3303697))

(declare-fun m!3303705 () Bool)

(assert (=> b!2894579 m!3303705))

(assert (=> b!2894579 m!3303699))

(assert (=> b!2894579 m!3303705))

(assert (=> b!2894579 m!3303699))

(declare-fun m!3303707 () Bool)

(assert (=> b!2894579 m!3303707))

(assert (=> b!2894454 d!834735))

(declare-fun d!834741 () Bool)

(assert (=> d!834741 (matchR!3807 (Union!8843 (regTwo!18199 r!23079) (regOne!18199 r!23079)) lt!1021418)))

(declare-fun lt!1021440 () Unit!48103)

(declare-fun choose!17069 (Regex!8843 Regex!8843 List!34644) Unit!48103)

(assert (=> d!834741 (= lt!1021440 (choose!17069 (regTwo!18199 r!23079) (regOne!18199 r!23079) lt!1021418))))

(declare-fun e!1828994 () Bool)

(assert (=> d!834741 e!1828994))

(declare-fun res!1197352 () Bool)

(assert (=> d!834741 (=> (not res!1197352) (not e!1828994))))

(assert (=> d!834741 (= res!1197352 (validRegex!3616 (regTwo!18199 r!23079)))))

(assert (=> d!834741 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!48 (regTwo!18199 r!23079) (regOne!18199 r!23079) lt!1021418) lt!1021440)))

(declare-fun b!2894619 () Bool)

(assert (=> b!2894619 (= e!1828994 (validRegex!3616 (regOne!18199 r!23079)))))

(assert (= (and d!834741 res!1197352) b!2894619))

(assert (=> d!834741 m!3303627))

(declare-fun m!3303709 () Bool)

(assert (=> d!834741 m!3303709))

(assert (=> d!834741 m!3303625))

(assert (=> b!2894619 m!3303651))

(assert (=> b!2894454 d!834741))

(declare-fun b!2894709 () Bool)

(declare-fun e!1829054 () Option!6516)

(declare-fun e!1829052 () Option!6516)

(assert (=> b!2894709 (= e!1829054 e!1829052)))

(declare-fun lt!1021451 () Option!6516)

(declare-fun call!188231 () Option!6516)

(assert (=> b!2894709 (= lt!1021451 call!188231)))

(declare-fun c!470994 () Bool)

(assert (=> b!2894709 (= c!470994 ((_ is Some!6515) lt!1021451))))

(declare-fun b!2894710 () Bool)

(declare-fun e!1829053 () Option!6516)

(declare-fun lt!1021453 () Option!6516)

(declare-fun ++!8241 (List!34644 List!34644) List!34644)

(assert (=> b!2894710 (= e!1829053 (Some!6515 (++!8241 (v!34641 lt!1021451) (v!34641 lt!1021453))))))

(declare-fun b!2894711 () Bool)

(declare-fun e!1829049 () Option!6516)

(declare-fun lt!1021452 () Option!6516)

(assert (=> b!2894711 (= e!1829049 lt!1021452)))

(declare-fun b!2894712 () Bool)

(declare-fun e!1829047 () Option!6516)

(assert (=> b!2894712 (= e!1829047 None!6515)))

(declare-fun b!2894713 () Bool)

(declare-fun c!471001 () Bool)

(assert (=> b!2894713 (= c!471001 ((_ is Union!8843) (regOne!18199 r!23079)))))

(declare-fun e!1829050 () Option!6516)

(assert (=> b!2894713 (= e!1829050 e!1829054)))

(declare-fun b!2894714 () Bool)

(assert (=> b!2894714 (= e!1829054 e!1829049)))

(declare-fun call!188232 () Option!6516)

(assert (=> b!2894714 (= lt!1021452 call!188232)))

(declare-fun c!470998 () Bool)

(assert (=> b!2894714 (= c!470998 ((_ is Some!6515) lt!1021452))))

(declare-fun b!2894715 () Bool)

(declare-fun e!1829051 () Option!6516)

(assert (=> b!2894715 (= e!1829051 e!1829050)))

(declare-fun c!470997 () Bool)

(assert (=> b!2894715 (= c!470997 ((_ is Star!8843) (regOne!18199 r!23079)))))

(declare-fun b!2894716 () Bool)

(assert (=> b!2894716 (= e!1829053 None!6515)))

(declare-fun bm!188226 () Bool)

(assert (=> bm!188226 (= call!188231 (getLanguageWitness!550 (ite c!471001 (regTwo!18199 (regOne!18199 r!23079)) (regOne!18198 (regOne!18199 r!23079)))))))

(declare-fun d!834743 () Bool)

(declare-fun c!470995 () Bool)

(assert (=> d!834743 (= c!470995 ((_ is EmptyExpr!8843) (regOne!18199 r!23079)))))

(declare-fun e!1829048 () Option!6516)

(assert (=> d!834743 (= (getLanguageWitness!550 (regOne!18199 r!23079)) e!1829048)))

(declare-fun b!2894717 () Bool)

(assert (=> b!2894717 (= e!1829048 (Some!6515 Nil!34520))))

(declare-fun b!2894718 () Bool)

(assert (=> b!2894718 (= e!1829048 e!1829047)))

(declare-fun c!471000 () Bool)

(assert (=> b!2894718 (= c!471000 ((_ is EmptyLang!8843) (regOne!18199 r!23079)))))

(declare-fun b!2894719 () Bool)

(assert (=> b!2894719 (= e!1829050 (Some!6515 Nil!34520))))

(declare-fun b!2894720 () Bool)

(assert (=> b!2894720 (= e!1829052 None!6515)))

(declare-fun b!2894721 () Bool)

(declare-fun c!470996 () Bool)

(assert (=> b!2894721 (= c!470996 ((_ is Some!6515) lt!1021453))))

(assert (=> b!2894721 (= lt!1021453 call!188232)))

(assert (=> b!2894721 (= e!1829052 e!1829053)))

(declare-fun bm!188227 () Bool)

(assert (=> bm!188227 (= call!188232 (getLanguageWitness!550 (ite c!471001 (regOne!18199 (regOne!18199 r!23079)) (regTwo!18198 (regOne!18199 r!23079)))))))

(declare-fun b!2894722 () Bool)

(assert (=> b!2894722 (= e!1829051 (Some!6515 (Cons!34520 (c!470918 (regOne!18199 r!23079)) Nil!34520)))))

(declare-fun b!2894723 () Bool)

(declare-fun c!470999 () Bool)

(assert (=> b!2894723 (= c!470999 ((_ is ElementMatch!8843) (regOne!18199 r!23079)))))

(assert (=> b!2894723 (= e!1829047 e!1829051)))

(declare-fun b!2894724 () Bool)

(assert (=> b!2894724 (= e!1829049 call!188231)))

(assert (= (and d!834743 c!470995) b!2894717))

(assert (= (and d!834743 (not c!470995)) b!2894718))

(assert (= (and b!2894718 c!471000) b!2894712))

(assert (= (and b!2894718 (not c!471000)) b!2894723))

(assert (= (and b!2894723 c!470999) b!2894722))

(assert (= (and b!2894723 (not c!470999)) b!2894715))

(assert (= (and b!2894715 c!470997) b!2894719))

(assert (= (and b!2894715 (not c!470997)) b!2894713))

(assert (= (and b!2894713 c!471001) b!2894714))

(assert (= (and b!2894713 (not c!471001)) b!2894709))

(assert (= (and b!2894714 c!470998) b!2894711))

(assert (= (and b!2894714 (not c!470998)) b!2894724))

(assert (= (and b!2894709 c!470994) b!2894721))

(assert (= (and b!2894709 (not c!470994)) b!2894720))

(assert (= (and b!2894721 c!470996) b!2894710))

(assert (= (and b!2894721 (not c!470996)) b!2894716))

(assert (= (or b!2894724 b!2894709) bm!188226))

(assert (= (or b!2894714 b!2894721) bm!188227))

(declare-fun m!3303731 () Bool)

(assert (=> b!2894710 m!3303731))

(declare-fun m!3303733 () Bool)

(assert (=> bm!188226 m!3303733))

(declare-fun m!3303735 () Bool)

(assert (=> bm!188227 m!3303735))

(assert (=> b!2894459 d!834743))

(declare-fun b!2894728 () Bool)

(declare-fun res!1197380 () Bool)

(declare-fun e!1829063 () Bool)

(assert (=> b!2894728 (=> res!1197380 e!1829063)))

(assert (=> b!2894728 (= res!1197380 (not ((_ is Concat!14164) r!23079)))))

(declare-fun e!1829060 () Bool)

(assert (=> b!2894728 (= e!1829060 e!1829063)))

(declare-fun bm!188228 () Bool)

(declare-fun call!188235 () Bool)

(declare-fun call!188234 () Bool)

(assert (=> bm!188228 (= call!188235 call!188234)))

(declare-fun b!2894729 () Bool)

(declare-fun e!1829059 () Bool)

(assert (=> b!2894729 (= e!1829059 e!1829060)))

(declare-fun c!471002 () Bool)

(assert (=> b!2894729 (= c!471002 ((_ is Union!8843) r!23079))))

(declare-fun b!2894730 () Bool)

(declare-fun e!1829062 () Bool)

(declare-fun call!188233 () Bool)

(assert (=> b!2894730 (= e!1829062 call!188233)))

(declare-fun b!2894731 () Bool)

(declare-fun e!1829058 () Bool)

(assert (=> b!2894731 (= e!1829059 e!1829058)))

(declare-fun res!1197381 () Bool)

(assert (=> b!2894731 (= res!1197381 (not (nullable!2743 (reg!9172 r!23079))))))

(assert (=> b!2894731 (=> (not res!1197381) (not e!1829058))))

(declare-fun b!2894732 () Bool)

(declare-fun res!1197382 () Bool)

(declare-fun e!1829061 () Bool)

(assert (=> b!2894732 (=> (not res!1197382) (not e!1829061))))

(assert (=> b!2894732 (= res!1197382 call!188235)))

(assert (=> b!2894732 (= e!1829060 e!1829061)))

(declare-fun c!471003 () Bool)

(declare-fun bm!188229 () Bool)

(assert (=> bm!188229 (= call!188234 (validRegex!3616 (ite c!471003 (reg!9172 r!23079) (ite c!471002 (regOne!18199 r!23079) (regOne!18198 r!23079)))))))

(declare-fun d!834751 () Bool)

(declare-fun res!1197379 () Bool)

(declare-fun e!1829057 () Bool)

(assert (=> d!834751 (=> res!1197379 e!1829057)))

(assert (=> d!834751 (= res!1197379 ((_ is ElementMatch!8843) r!23079))))

(assert (=> d!834751 (= (validRegex!3616 r!23079) e!1829057)))

(declare-fun b!2894727 () Bool)

(assert (=> b!2894727 (= e!1829063 e!1829062)))

(declare-fun res!1197378 () Bool)

(assert (=> b!2894727 (=> (not res!1197378) (not e!1829062))))

(assert (=> b!2894727 (= res!1197378 call!188235)))

(declare-fun bm!188230 () Bool)

(assert (=> bm!188230 (= call!188233 (validRegex!3616 (ite c!471002 (regTwo!18199 r!23079) (regTwo!18198 r!23079))))))

(declare-fun b!2894733 () Bool)

(assert (=> b!2894733 (= e!1829057 e!1829059)))

(assert (=> b!2894733 (= c!471003 ((_ is Star!8843) r!23079))))

(declare-fun b!2894734 () Bool)

(assert (=> b!2894734 (= e!1829058 call!188234)))

(declare-fun b!2894735 () Bool)

(assert (=> b!2894735 (= e!1829061 call!188233)))

(assert (= (and d!834751 (not res!1197379)) b!2894733))

(assert (= (and b!2894733 c!471003) b!2894731))

(assert (= (and b!2894733 (not c!471003)) b!2894729))

(assert (= (and b!2894731 res!1197381) b!2894734))

(assert (= (and b!2894729 c!471002) b!2894732))

(assert (= (and b!2894729 (not c!471002)) b!2894728))

(assert (= (and b!2894732 res!1197382) b!2894735))

(assert (= (and b!2894728 (not res!1197380)) b!2894727))

(assert (= (and b!2894727 res!1197378) b!2894730))

(assert (= (or b!2894735 b!2894730) bm!188230))

(assert (= (or b!2894732 b!2894727) bm!188228))

(assert (= (or b!2894734 bm!188228) bm!188229))

(declare-fun m!3303737 () Bool)

(assert (=> b!2894731 m!3303737))

(declare-fun m!3303739 () Bool)

(assert (=> bm!188229 m!3303739))

(declare-fun m!3303741 () Bool)

(assert (=> bm!188230 m!3303741))

(assert (=> start!282094 d!834751))

(declare-fun b!2894737 () Bool)

(declare-fun e!1829066 () Bool)

(declare-fun e!1829065 () Bool)

(assert (=> b!2894737 (= e!1829066 e!1829065)))

(declare-fun res!1197385 () Bool)

(assert (=> b!2894737 (=> (not res!1197385) (not e!1829065))))

(declare-fun lt!1021457 () Bool)

(assert (=> b!2894737 (= res!1197385 (not lt!1021457))))

(declare-fun b!2894738 () Bool)

(declare-fun res!1197387 () Bool)

(assert (=> b!2894738 (=> res!1197387 e!1829066)))

(declare-fun e!1829068 () Bool)

(assert (=> b!2894738 (= res!1197387 e!1829068)))

(declare-fun res!1197388 () Bool)

(assert (=> b!2894738 (=> (not res!1197388) (not e!1829068))))

(assert (=> b!2894738 (= res!1197388 lt!1021457)))

(declare-fun bm!188231 () Bool)

(declare-fun call!188236 () Bool)

(assert (=> bm!188231 (= call!188236 (isEmpty!18826 (get!10461 lt!1021422)))))

(declare-fun d!834753 () Bool)

(declare-fun e!1829069 () Bool)

(assert (=> d!834753 e!1829069))

(declare-fun c!471004 () Bool)

(assert (=> d!834753 (= c!471004 ((_ is EmptyExpr!8843) r!23079))))

(declare-fun e!1829070 () Bool)

(assert (=> d!834753 (= lt!1021457 e!1829070)))

(declare-fun c!471005 () Bool)

(assert (=> d!834753 (= c!471005 (isEmpty!18826 (get!10461 lt!1021422)))))

(assert (=> d!834753 (validRegex!3616 r!23079)))

(assert (=> d!834753 (= (matchR!3807 r!23079 (get!10461 lt!1021422)) lt!1021457)))

(declare-fun b!2894739 () Bool)

(assert (=> b!2894739 (= e!1829069 (= lt!1021457 call!188236))))

(declare-fun b!2894740 () Bool)

(declare-fun res!1197386 () Bool)

(assert (=> b!2894740 (=> (not res!1197386) (not e!1829068))))

(assert (=> b!2894740 (= res!1197386 (not call!188236))))

(declare-fun b!2894741 () Bool)

(declare-fun res!1197384 () Bool)

(assert (=> b!2894741 (=> res!1197384 e!1829066)))

(assert (=> b!2894741 (= res!1197384 (not ((_ is ElementMatch!8843) r!23079)))))

(declare-fun e!1829067 () Bool)

(assert (=> b!2894741 (= e!1829067 e!1829066)))

(declare-fun b!2894742 () Bool)

(assert (=> b!2894742 (= e!1829067 (not lt!1021457))))

(declare-fun b!2894743 () Bool)

(declare-fun res!1197391 () Bool)

(declare-fun e!1829071 () Bool)

(assert (=> b!2894743 (=> res!1197391 e!1829071)))

(assert (=> b!2894743 (= res!1197391 (not (isEmpty!18826 (tail!4616 (get!10461 lt!1021422)))))))

(declare-fun b!2894744 () Bool)

(assert (=> b!2894744 (= e!1829071 (not (= (head!6391 (get!10461 lt!1021422)) (c!470918 r!23079))))))

(declare-fun b!2894745 () Bool)

(assert (=> b!2894745 (= e!1829070 (matchR!3807 (derivativeStep!2362 r!23079 (head!6391 (get!10461 lt!1021422))) (tail!4616 (get!10461 lt!1021422))))))

(declare-fun b!2894746 () Bool)

(assert (=> b!2894746 (= e!1829070 (nullable!2743 r!23079))))

(declare-fun b!2894747 () Bool)

(assert (=> b!2894747 (= e!1829068 (= (head!6391 (get!10461 lt!1021422)) (c!470918 r!23079)))))

(declare-fun b!2894748 () Bool)

(assert (=> b!2894748 (= e!1829069 e!1829067)))

(declare-fun c!471006 () Bool)

(assert (=> b!2894748 (= c!471006 ((_ is EmptyLang!8843) r!23079))))

(declare-fun b!2894749 () Bool)

(declare-fun res!1197390 () Bool)

(assert (=> b!2894749 (=> (not res!1197390) (not e!1829068))))

(assert (=> b!2894749 (= res!1197390 (isEmpty!18826 (tail!4616 (get!10461 lt!1021422))))))

(declare-fun b!2894750 () Bool)

(assert (=> b!2894750 (= e!1829065 e!1829071)))

(declare-fun res!1197389 () Bool)

(assert (=> b!2894750 (=> res!1197389 e!1829071)))

(assert (=> b!2894750 (= res!1197389 call!188236)))

(assert (= (and d!834753 c!471005) b!2894746))

(assert (= (and d!834753 (not c!471005)) b!2894745))

(assert (= (and d!834753 c!471004) b!2894739))

(assert (= (and d!834753 (not c!471004)) b!2894748))

(assert (= (and b!2894748 c!471006) b!2894742))

(assert (= (and b!2894748 (not c!471006)) b!2894741))

(assert (= (and b!2894741 (not res!1197384)) b!2894738))

(assert (= (and b!2894738 res!1197388) b!2894740))

(assert (= (and b!2894740 res!1197386) b!2894749))

(assert (= (and b!2894749 res!1197390) b!2894747))

(assert (= (and b!2894738 (not res!1197387)) b!2894737))

(assert (= (and b!2894737 res!1197385) b!2894750))

(assert (= (and b!2894750 (not res!1197389)) b!2894743))

(assert (= (and b!2894743 (not res!1197391)) b!2894744))

(assert (= (or b!2894739 b!2894740 b!2894750) bm!188231))

(assert (=> d!834753 m!3303641))

(declare-fun m!3303753 () Bool)

(assert (=> d!834753 m!3303753))

(assert (=> d!834753 m!3303653))

(assert (=> b!2894744 m!3303641))

(declare-fun m!3303755 () Bool)

(assert (=> b!2894744 m!3303755))

(assert (=> b!2894749 m!3303641))

(declare-fun m!3303757 () Bool)

(assert (=> b!2894749 m!3303757))

(assert (=> b!2894749 m!3303757))

(declare-fun m!3303759 () Bool)

(assert (=> b!2894749 m!3303759))

(assert (=> b!2894743 m!3303641))

(assert (=> b!2894743 m!3303757))

(assert (=> b!2894743 m!3303757))

(assert (=> b!2894743 m!3303759))

(assert (=> b!2894747 m!3303641))

(assert (=> b!2894747 m!3303755))

(declare-fun m!3303761 () Bool)

(assert (=> b!2894746 m!3303761))

(assert (=> bm!188231 m!3303641))

(assert (=> bm!188231 m!3303753))

(assert (=> b!2894745 m!3303641))

(assert (=> b!2894745 m!3303755))

(assert (=> b!2894745 m!3303755))

(declare-fun m!3303767 () Bool)

(assert (=> b!2894745 m!3303767))

(assert (=> b!2894745 m!3303641))

(assert (=> b!2894745 m!3303757))

(assert (=> b!2894745 m!3303767))

(assert (=> b!2894745 m!3303757))

(declare-fun m!3303771 () Bool)

(assert (=> b!2894745 m!3303771))

(assert (=> b!2894456 d!834753))

(declare-fun d!834763 () Bool)

(assert (=> d!834763 (= (get!10461 lt!1021422) (v!34641 lt!1021422))))

(assert (=> b!2894456 d!834763))

(declare-fun b!2894799 () Bool)

(declare-fun e!1829102 () Bool)

(declare-fun e!1829101 () Bool)

(assert (=> b!2894799 (= e!1829102 e!1829101)))

(declare-fun res!1197411 () Bool)

(assert (=> b!2894799 (=> (not res!1197411) (not e!1829101))))

(declare-fun lt!1021462 () Bool)

(assert (=> b!2894799 (= res!1197411 (not lt!1021462))))

(declare-fun b!2894800 () Bool)

(declare-fun res!1197413 () Bool)

(assert (=> b!2894800 (=> res!1197413 e!1829102)))

(declare-fun e!1829104 () Bool)

(assert (=> b!2894800 (= res!1197413 e!1829104)))

(declare-fun res!1197414 () Bool)

(assert (=> b!2894800 (=> (not res!1197414) (not e!1829104))))

(assert (=> b!2894800 (= res!1197414 lt!1021462)))

(declare-fun bm!188241 () Bool)

(declare-fun call!188246 () Bool)

(assert (=> bm!188241 (= call!188246 (isEmpty!18826 lt!1021418))))

(declare-fun d!834767 () Bool)

(declare-fun e!1829105 () Bool)

(assert (=> d!834767 e!1829105))

(declare-fun c!471022 () Bool)

(assert (=> d!834767 (= c!471022 ((_ is EmptyExpr!8843) (Union!8843 (regOne!18199 r!23079) (regTwo!18199 r!23079))))))

(declare-fun e!1829106 () Bool)

(assert (=> d!834767 (= lt!1021462 e!1829106)))

(declare-fun c!471023 () Bool)

(assert (=> d!834767 (= c!471023 (isEmpty!18826 lt!1021418))))

(assert (=> d!834767 (validRegex!3616 (Union!8843 (regOne!18199 r!23079) (regTwo!18199 r!23079)))))

(assert (=> d!834767 (= (matchR!3807 (Union!8843 (regOne!18199 r!23079) (regTwo!18199 r!23079)) lt!1021418) lt!1021462)))

(declare-fun b!2894801 () Bool)

(assert (=> b!2894801 (= e!1829105 (= lt!1021462 call!188246))))

(declare-fun b!2894802 () Bool)

(declare-fun res!1197412 () Bool)

(assert (=> b!2894802 (=> (not res!1197412) (not e!1829104))))

(assert (=> b!2894802 (= res!1197412 (not call!188246))))

(declare-fun b!2894803 () Bool)

(declare-fun res!1197410 () Bool)

(assert (=> b!2894803 (=> res!1197410 e!1829102)))

(assert (=> b!2894803 (= res!1197410 (not ((_ is ElementMatch!8843) (Union!8843 (regOne!18199 r!23079) (regTwo!18199 r!23079)))))))

(declare-fun e!1829103 () Bool)

(assert (=> b!2894803 (= e!1829103 e!1829102)))

(declare-fun b!2894804 () Bool)

(assert (=> b!2894804 (= e!1829103 (not lt!1021462))))

(declare-fun b!2894805 () Bool)

(declare-fun res!1197417 () Bool)

(declare-fun e!1829107 () Bool)

(assert (=> b!2894805 (=> res!1197417 e!1829107)))

(assert (=> b!2894805 (= res!1197417 (not (isEmpty!18826 (tail!4616 lt!1021418))))))

(declare-fun b!2894806 () Bool)

(assert (=> b!2894806 (= e!1829107 (not (= (head!6391 lt!1021418) (c!470918 (Union!8843 (regOne!18199 r!23079) (regTwo!18199 r!23079))))))))

(declare-fun b!2894807 () Bool)

(assert (=> b!2894807 (= e!1829106 (matchR!3807 (derivativeStep!2362 (Union!8843 (regOne!18199 r!23079) (regTwo!18199 r!23079)) (head!6391 lt!1021418)) (tail!4616 lt!1021418)))))

(declare-fun b!2894808 () Bool)

(assert (=> b!2894808 (= e!1829106 (nullable!2743 (Union!8843 (regOne!18199 r!23079) (regTwo!18199 r!23079))))))

(declare-fun b!2894809 () Bool)

(assert (=> b!2894809 (= e!1829104 (= (head!6391 lt!1021418) (c!470918 (Union!8843 (regOne!18199 r!23079) (regTwo!18199 r!23079)))))))

(declare-fun b!2894810 () Bool)

(assert (=> b!2894810 (= e!1829105 e!1829103)))

(declare-fun c!471024 () Bool)

(assert (=> b!2894810 (= c!471024 ((_ is EmptyLang!8843) (Union!8843 (regOne!18199 r!23079) (regTwo!18199 r!23079))))))

(declare-fun b!2894811 () Bool)

(declare-fun res!1197416 () Bool)

(assert (=> b!2894811 (=> (not res!1197416) (not e!1829104))))

(assert (=> b!2894811 (= res!1197416 (isEmpty!18826 (tail!4616 lt!1021418)))))

(declare-fun b!2894812 () Bool)

(assert (=> b!2894812 (= e!1829101 e!1829107)))

(declare-fun res!1197415 () Bool)

(assert (=> b!2894812 (=> res!1197415 e!1829107)))

(assert (=> b!2894812 (= res!1197415 call!188246)))

(assert (= (and d!834767 c!471023) b!2894808))

(assert (= (and d!834767 (not c!471023)) b!2894807))

(assert (= (and d!834767 c!471022) b!2894801))

(assert (= (and d!834767 (not c!471022)) b!2894810))

(assert (= (and b!2894810 c!471024) b!2894804))

(assert (= (and b!2894810 (not c!471024)) b!2894803))

(assert (= (and b!2894803 (not res!1197410)) b!2894800))

(assert (= (and b!2894800 res!1197414) b!2894802))

(assert (= (and b!2894802 res!1197412) b!2894811))

(assert (= (and b!2894811 res!1197416) b!2894809))

(assert (= (and b!2894800 (not res!1197413)) b!2894799))

(assert (= (and b!2894799 res!1197411) b!2894812))

(assert (= (and b!2894812 (not res!1197415)) b!2894805))

(assert (= (and b!2894805 (not res!1197417)) b!2894806))

(assert (= (or b!2894801 b!2894802 b!2894812) bm!188241))

(assert (=> d!834767 m!3303693))

(declare-fun m!3303793 () Bool)

(assert (=> d!834767 m!3303793))

(assert (=> b!2894806 m!3303697))

(assert (=> b!2894811 m!3303699))

(assert (=> b!2894811 m!3303699))

(assert (=> b!2894811 m!3303701))

(assert (=> b!2894805 m!3303699))

(assert (=> b!2894805 m!3303699))

(assert (=> b!2894805 m!3303701))

(assert (=> b!2894809 m!3303697))

(declare-fun m!3303795 () Bool)

(assert (=> b!2894808 m!3303795))

(assert (=> bm!188241 m!3303693))

(assert (=> b!2894807 m!3303697))

(assert (=> b!2894807 m!3303697))

(declare-fun m!3303797 () Bool)

(assert (=> b!2894807 m!3303797))

(assert (=> b!2894807 m!3303699))

(assert (=> b!2894807 m!3303797))

(assert (=> b!2894807 m!3303699))

(declare-fun m!3303799 () Bool)

(assert (=> b!2894807 m!3303799))

(assert (=> b!2894456 d!834767))

(declare-fun d!834773 () Bool)

(assert (=> d!834773 (matchR!3807 (Union!8843 (regOne!18199 r!23079) (regTwo!18199 r!23079)) lt!1021418)))

(declare-fun lt!1021472 () Unit!48103)

(declare-fun choose!17072 (Regex!8843 Regex!8843 List!34644) Unit!48103)

(assert (=> d!834773 (= lt!1021472 (choose!17072 (regTwo!18199 r!23079) (regOne!18199 r!23079) lt!1021418))))

(declare-fun e!1829128 () Bool)

(assert (=> d!834773 e!1829128))

(declare-fun res!1197431 () Bool)

(assert (=> d!834773 (=> (not res!1197431) (not e!1829128))))

(assert (=> d!834773 (= res!1197431 (validRegex!3616 (regTwo!18199 r!23079)))))

(assert (=> d!834773 (= (lemmaReversedUnionAcceptsSameString!14 (regTwo!18199 r!23079) (regOne!18199 r!23079) lt!1021418) lt!1021472)))

(declare-fun b!2894848 () Bool)

(assert (=> b!2894848 (= e!1829128 (validRegex!3616 (regOne!18199 r!23079)))))

(assert (= (and d!834773 res!1197431) b!2894848))

(assert (=> d!834773 m!3303645))

(declare-fun m!3303817 () Bool)

(assert (=> d!834773 m!3303817))

(assert (=> d!834773 m!3303625))

(assert (=> b!2894848 m!3303651))

(assert (=> b!2894456 d!834773))

(declare-fun d!834779 () Bool)

(declare-fun isEmpty!18827 (Option!6516) Bool)

(assert (=> d!834779 (= (isDefined!5080 lt!1021422) (not (isEmpty!18827 lt!1021422)))))

(declare-fun bs!523928 () Bool)

(assert (= bs!523928 d!834779))

(declare-fun m!3303819 () Bool)

(assert (=> bs!523928 m!3303819))

(assert (=> b!2894458 d!834779))

(declare-fun b!2894863 () Bool)

(declare-fun e!1829139 () Option!6516)

(declare-fun e!1829137 () Option!6516)

(assert (=> b!2894863 (= e!1829139 e!1829137)))

(declare-fun lt!1021473 () Option!6516)

(declare-fun call!188250 () Option!6516)

(assert (=> b!2894863 (= lt!1021473 call!188250)))

(declare-fun c!471036 () Bool)

(assert (=> b!2894863 (= c!471036 ((_ is Some!6515) lt!1021473))))

(declare-fun b!2894864 () Bool)

(declare-fun e!1829138 () Option!6516)

(declare-fun lt!1021475 () Option!6516)

(assert (=> b!2894864 (= e!1829138 (Some!6515 (++!8241 (v!34641 lt!1021473) (v!34641 lt!1021475))))))

(declare-fun b!2894865 () Bool)

(declare-fun e!1829134 () Option!6516)

(declare-fun lt!1021474 () Option!6516)

(assert (=> b!2894865 (= e!1829134 lt!1021474)))

(declare-fun b!2894866 () Bool)

(declare-fun e!1829132 () Option!6516)

(assert (=> b!2894866 (= e!1829132 None!6515)))

(declare-fun b!2894867 () Bool)

(declare-fun c!471043 () Bool)

(assert (=> b!2894867 (= c!471043 ((_ is Union!8843) r!23079))))

(declare-fun e!1829135 () Option!6516)

(assert (=> b!2894867 (= e!1829135 e!1829139)))

(declare-fun b!2894868 () Bool)

(assert (=> b!2894868 (= e!1829139 e!1829134)))

(declare-fun call!188251 () Option!6516)

(assert (=> b!2894868 (= lt!1021474 call!188251)))

(declare-fun c!471040 () Bool)

(assert (=> b!2894868 (= c!471040 ((_ is Some!6515) lt!1021474))))

(declare-fun b!2894869 () Bool)

(declare-fun e!1829136 () Option!6516)

(assert (=> b!2894869 (= e!1829136 e!1829135)))

(declare-fun c!471039 () Bool)

(assert (=> b!2894869 (= c!471039 ((_ is Star!8843) r!23079))))

(declare-fun b!2894870 () Bool)

(assert (=> b!2894870 (= e!1829138 None!6515)))

(declare-fun bm!188245 () Bool)

(assert (=> bm!188245 (= call!188250 (getLanguageWitness!550 (ite c!471043 (regTwo!18199 r!23079) (regOne!18198 r!23079))))))

(declare-fun d!834781 () Bool)

(declare-fun c!471037 () Bool)

(assert (=> d!834781 (= c!471037 ((_ is EmptyExpr!8843) r!23079))))

(declare-fun e!1829133 () Option!6516)

(assert (=> d!834781 (= (getLanguageWitness!550 r!23079) e!1829133)))

(declare-fun b!2894871 () Bool)

(assert (=> b!2894871 (= e!1829133 (Some!6515 Nil!34520))))

(declare-fun b!2894872 () Bool)

(assert (=> b!2894872 (= e!1829133 e!1829132)))

(declare-fun c!471042 () Bool)

(assert (=> b!2894872 (= c!471042 ((_ is EmptyLang!8843) r!23079))))

(declare-fun b!2894873 () Bool)

(assert (=> b!2894873 (= e!1829135 (Some!6515 Nil!34520))))

(declare-fun b!2894874 () Bool)

(assert (=> b!2894874 (= e!1829137 None!6515)))

(declare-fun b!2894875 () Bool)

(declare-fun c!471038 () Bool)

(assert (=> b!2894875 (= c!471038 ((_ is Some!6515) lt!1021475))))

(assert (=> b!2894875 (= lt!1021475 call!188251)))

(assert (=> b!2894875 (= e!1829137 e!1829138)))

(declare-fun bm!188246 () Bool)

(assert (=> bm!188246 (= call!188251 (getLanguageWitness!550 (ite c!471043 (regOne!18199 r!23079) (regTwo!18198 r!23079))))))

(declare-fun b!2894876 () Bool)

(assert (=> b!2894876 (= e!1829136 (Some!6515 (Cons!34520 (c!470918 r!23079) Nil!34520)))))

(declare-fun b!2894877 () Bool)

(declare-fun c!471041 () Bool)

(assert (=> b!2894877 (= c!471041 ((_ is ElementMatch!8843) r!23079))))

(assert (=> b!2894877 (= e!1829132 e!1829136)))

(declare-fun b!2894878 () Bool)

(assert (=> b!2894878 (= e!1829134 call!188250)))

(assert (= (and d!834781 c!471037) b!2894871))

(assert (= (and d!834781 (not c!471037)) b!2894872))

(assert (= (and b!2894872 c!471042) b!2894866))

(assert (= (and b!2894872 (not c!471042)) b!2894877))

(assert (= (and b!2894877 c!471041) b!2894876))

(assert (= (and b!2894877 (not c!471041)) b!2894869))

(assert (= (and b!2894869 c!471039) b!2894873))

(assert (= (and b!2894869 (not c!471039)) b!2894867))

(assert (= (and b!2894867 c!471043) b!2894868))

(assert (= (and b!2894867 (not c!471043)) b!2894863))

(assert (= (and b!2894868 c!471040) b!2894865))

(assert (= (and b!2894868 (not c!471040)) b!2894878))

(assert (= (and b!2894863 c!471036) b!2894875))

(assert (= (and b!2894863 (not c!471036)) b!2894874))

(assert (= (and b!2894875 c!471038) b!2894864))

(assert (= (and b!2894875 (not c!471038)) b!2894870))

(assert (= (or b!2894878 b!2894863) bm!188245))

(assert (= (or b!2894868 b!2894875) bm!188246))

(declare-fun m!3303821 () Bool)

(assert (=> b!2894864 m!3303821))

(declare-fun m!3303823 () Bool)

(assert (=> bm!188245 m!3303823))

(declare-fun m!3303825 () Bool)

(assert (=> bm!188246 m!3303825))

(assert (=> b!2894458 d!834781))

(declare-fun b!2894895 () Bool)

(declare-fun e!1829151 () Option!6516)

(declare-fun e!1829149 () Option!6516)

(assert (=> b!2894895 (= e!1829151 e!1829149)))

(declare-fun lt!1021476 () Option!6516)

(declare-fun call!188252 () Option!6516)

(assert (=> b!2894895 (= lt!1021476 call!188252)))

(declare-fun c!471044 () Bool)

(assert (=> b!2894895 (= c!471044 ((_ is Some!6515) lt!1021476))))

(declare-fun b!2894896 () Bool)

(declare-fun e!1829150 () Option!6516)

(declare-fun lt!1021478 () Option!6516)

(assert (=> b!2894896 (= e!1829150 (Some!6515 (++!8241 (v!34641 lt!1021476) (v!34641 lt!1021478))))))

(declare-fun b!2894897 () Bool)

(declare-fun e!1829146 () Option!6516)

(declare-fun lt!1021477 () Option!6516)

(assert (=> b!2894897 (= e!1829146 lt!1021477)))

(declare-fun b!2894898 () Bool)

(declare-fun e!1829144 () Option!6516)

(assert (=> b!2894898 (= e!1829144 None!6515)))

(declare-fun b!2894899 () Bool)

(declare-fun c!471051 () Bool)

(assert (=> b!2894899 (= c!471051 ((_ is Union!8843) (regTwo!18199 r!23079)))))

(declare-fun e!1829147 () Option!6516)

(assert (=> b!2894899 (= e!1829147 e!1829151)))

(declare-fun b!2894900 () Bool)

(assert (=> b!2894900 (= e!1829151 e!1829146)))

(declare-fun call!188253 () Option!6516)

(assert (=> b!2894900 (= lt!1021477 call!188253)))

(declare-fun c!471048 () Bool)

(assert (=> b!2894900 (= c!471048 ((_ is Some!6515) lt!1021477))))

(declare-fun b!2894901 () Bool)

(declare-fun e!1829148 () Option!6516)

(assert (=> b!2894901 (= e!1829148 e!1829147)))

(declare-fun c!471047 () Bool)

(assert (=> b!2894901 (= c!471047 ((_ is Star!8843) (regTwo!18199 r!23079)))))

(declare-fun b!2894902 () Bool)

(assert (=> b!2894902 (= e!1829150 None!6515)))

(declare-fun bm!188247 () Bool)

(assert (=> bm!188247 (= call!188252 (getLanguageWitness!550 (ite c!471051 (regTwo!18199 (regTwo!18199 r!23079)) (regOne!18198 (regTwo!18199 r!23079)))))))

(declare-fun d!834783 () Bool)

(declare-fun c!471045 () Bool)

(assert (=> d!834783 (= c!471045 ((_ is EmptyExpr!8843) (regTwo!18199 r!23079)))))

(declare-fun e!1829145 () Option!6516)

(assert (=> d!834783 (= (getLanguageWitness!550 (regTwo!18199 r!23079)) e!1829145)))

(declare-fun b!2894903 () Bool)

(assert (=> b!2894903 (= e!1829145 (Some!6515 Nil!34520))))

(declare-fun b!2894904 () Bool)

(assert (=> b!2894904 (= e!1829145 e!1829144)))

(declare-fun c!471050 () Bool)

(assert (=> b!2894904 (= c!471050 ((_ is EmptyLang!8843) (regTwo!18199 r!23079)))))

(declare-fun b!2894905 () Bool)

(assert (=> b!2894905 (= e!1829147 (Some!6515 Nil!34520))))

(declare-fun b!2894906 () Bool)

(assert (=> b!2894906 (= e!1829149 None!6515)))

(declare-fun b!2894907 () Bool)

(declare-fun c!471046 () Bool)

(assert (=> b!2894907 (= c!471046 ((_ is Some!6515) lt!1021478))))

(assert (=> b!2894907 (= lt!1021478 call!188253)))

(assert (=> b!2894907 (= e!1829149 e!1829150)))

(declare-fun bm!188248 () Bool)

(assert (=> bm!188248 (= call!188253 (getLanguageWitness!550 (ite c!471051 (regOne!18199 (regTwo!18199 r!23079)) (regTwo!18198 (regTwo!18199 r!23079)))))))

(declare-fun b!2894908 () Bool)

(assert (=> b!2894908 (= e!1829148 (Some!6515 (Cons!34520 (c!470918 (regTwo!18199 r!23079)) Nil!34520)))))

(declare-fun b!2894909 () Bool)

(declare-fun c!471049 () Bool)

(assert (=> b!2894909 (= c!471049 ((_ is ElementMatch!8843) (regTwo!18199 r!23079)))))

(assert (=> b!2894909 (= e!1829144 e!1829148)))

(declare-fun b!2894910 () Bool)

(assert (=> b!2894910 (= e!1829146 call!188252)))

(assert (= (and d!834783 c!471045) b!2894903))

(assert (= (and d!834783 (not c!471045)) b!2894904))

(assert (= (and b!2894904 c!471050) b!2894898))

(assert (= (and b!2894904 (not c!471050)) b!2894909))

(assert (= (and b!2894909 c!471049) b!2894908))

(assert (= (and b!2894909 (not c!471049)) b!2894901))

(assert (= (and b!2894901 c!471047) b!2894905))

(assert (= (and b!2894901 (not c!471047)) b!2894899))

(assert (= (and b!2894899 c!471051) b!2894900))

(assert (= (and b!2894899 (not c!471051)) b!2894895))

(assert (= (and b!2894900 c!471048) b!2894897))

(assert (= (and b!2894900 (not c!471048)) b!2894910))

(assert (= (and b!2894895 c!471044) b!2894907))

(assert (= (and b!2894895 (not c!471044)) b!2894906))

(assert (= (and b!2894907 c!471046) b!2894896))

(assert (= (and b!2894907 (not c!471046)) b!2894902))

(assert (= (or b!2894910 b!2894895) bm!188247))

(assert (= (or b!2894900 b!2894907) bm!188248))

(declare-fun m!3303827 () Bool)

(assert (=> b!2894896 m!3303827))

(declare-fun m!3303829 () Bool)

(assert (=> bm!188247 m!3303829))

(declare-fun m!3303831 () Bool)

(assert (=> bm!188248 m!3303831))

(assert (=> b!2894463 d!834783))

(declare-fun d!834785 () Bool)

(assert (=> d!834785 (matchR!3807 (regTwo!18199 r!23079) (get!10461 (getLanguageWitness!550 (regTwo!18199 r!23079))))))

(declare-fun lt!1021481 () Unit!48103)

(declare-fun choose!17073 (Regex!8843) Unit!48103)

(assert (=> d!834785 (= lt!1021481 (choose!17073 (regTwo!18199 r!23079)))))

(assert (=> d!834785 (validRegex!3616 (regTwo!18199 r!23079))))

(assert (=> d!834785 (= (lemmaGetWitnessMatches!106 (regTwo!18199 r!23079)) lt!1021481)))

(declare-fun bs!523929 () Bool)

(assert (= bs!523929 d!834785))

(declare-fun m!3303833 () Bool)

(assert (=> bs!523929 m!3303833))

(declare-fun m!3303835 () Bool)

(assert (=> bs!523929 m!3303835))

(declare-fun m!3303837 () Bool)

(assert (=> bs!523929 m!3303837))

(assert (=> bs!523929 m!3303625))

(assert (=> bs!523929 m!3303637))

(assert (=> bs!523929 m!3303637))

(assert (=> bs!523929 m!3303835))

(assert (=> b!2894463 d!834785))

(declare-fun b!2894911 () Bool)

(declare-fun e!1829153 () Bool)

(declare-fun e!1829152 () Bool)

(assert (=> b!2894911 (= e!1829153 e!1829152)))

(declare-fun res!1197433 () Bool)

(assert (=> b!2894911 (=> (not res!1197433) (not e!1829152))))

(declare-fun lt!1021482 () Bool)

(assert (=> b!2894911 (= res!1197433 (not lt!1021482))))

(declare-fun b!2894912 () Bool)

(declare-fun res!1197435 () Bool)

(assert (=> b!2894912 (=> res!1197435 e!1829153)))

(declare-fun e!1829155 () Bool)

(assert (=> b!2894912 (= res!1197435 e!1829155)))

(declare-fun res!1197436 () Bool)

(assert (=> b!2894912 (=> (not res!1197436) (not e!1829155))))

(assert (=> b!2894912 (= res!1197436 lt!1021482)))

(declare-fun bm!188249 () Bool)

(declare-fun call!188254 () Bool)

(assert (=> bm!188249 (= call!188254 (isEmpty!18826 lt!1021418))))

(declare-fun d!834787 () Bool)

(declare-fun e!1829156 () Bool)

(assert (=> d!834787 e!1829156))

(declare-fun c!471052 () Bool)

(assert (=> d!834787 (= c!471052 ((_ is EmptyExpr!8843) (regTwo!18199 r!23079)))))

(declare-fun e!1829157 () Bool)

(assert (=> d!834787 (= lt!1021482 e!1829157)))

(declare-fun c!471053 () Bool)

(assert (=> d!834787 (= c!471053 (isEmpty!18826 lt!1021418))))

(assert (=> d!834787 (validRegex!3616 (regTwo!18199 r!23079))))

(assert (=> d!834787 (= (matchR!3807 (regTwo!18199 r!23079) lt!1021418) lt!1021482)))

(declare-fun b!2894913 () Bool)

(assert (=> b!2894913 (= e!1829156 (= lt!1021482 call!188254))))

(declare-fun b!2894914 () Bool)

(declare-fun res!1197434 () Bool)

(assert (=> b!2894914 (=> (not res!1197434) (not e!1829155))))

(assert (=> b!2894914 (= res!1197434 (not call!188254))))

(declare-fun b!2894915 () Bool)

(declare-fun res!1197432 () Bool)

(assert (=> b!2894915 (=> res!1197432 e!1829153)))

(assert (=> b!2894915 (= res!1197432 (not ((_ is ElementMatch!8843) (regTwo!18199 r!23079))))))

(declare-fun e!1829154 () Bool)

(assert (=> b!2894915 (= e!1829154 e!1829153)))

(declare-fun b!2894916 () Bool)

(assert (=> b!2894916 (= e!1829154 (not lt!1021482))))

(declare-fun b!2894917 () Bool)

(declare-fun res!1197439 () Bool)

(declare-fun e!1829158 () Bool)

(assert (=> b!2894917 (=> res!1197439 e!1829158)))

(assert (=> b!2894917 (= res!1197439 (not (isEmpty!18826 (tail!4616 lt!1021418))))))

(declare-fun b!2894918 () Bool)

(assert (=> b!2894918 (= e!1829158 (not (= (head!6391 lt!1021418) (c!470918 (regTwo!18199 r!23079)))))))

(declare-fun b!2894919 () Bool)

(assert (=> b!2894919 (= e!1829157 (matchR!3807 (derivativeStep!2362 (regTwo!18199 r!23079) (head!6391 lt!1021418)) (tail!4616 lt!1021418)))))

(declare-fun b!2894920 () Bool)

(assert (=> b!2894920 (= e!1829157 (nullable!2743 (regTwo!18199 r!23079)))))

(declare-fun b!2894921 () Bool)

(assert (=> b!2894921 (= e!1829155 (= (head!6391 lt!1021418) (c!470918 (regTwo!18199 r!23079))))))

(declare-fun b!2894922 () Bool)

(assert (=> b!2894922 (= e!1829156 e!1829154)))

(declare-fun c!471054 () Bool)

(assert (=> b!2894922 (= c!471054 ((_ is EmptyLang!8843) (regTwo!18199 r!23079)))))

(declare-fun b!2894923 () Bool)

(declare-fun res!1197438 () Bool)

(assert (=> b!2894923 (=> (not res!1197438) (not e!1829155))))

(assert (=> b!2894923 (= res!1197438 (isEmpty!18826 (tail!4616 lt!1021418)))))

(declare-fun b!2894924 () Bool)

(assert (=> b!2894924 (= e!1829152 e!1829158)))

(declare-fun res!1197437 () Bool)

(assert (=> b!2894924 (=> res!1197437 e!1829158)))

(assert (=> b!2894924 (= res!1197437 call!188254)))

(assert (= (and d!834787 c!471053) b!2894920))

(assert (= (and d!834787 (not c!471053)) b!2894919))

(assert (= (and d!834787 c!471052) b!2894913))

(assert (= (and d!834787 (not c!471052)) b!2894922))

(assert (= (and b!2894922 c!471054) b!2894916))

(assert (= (and b!2894922 (not c!471054)) b!2894915))

(assert (= (and b!2894915 (not res!1197432)) b!2894912))

(assert (= (and b!2894912 res!1197436) b!2894914))

(assert (= (and b!2894914 res!1197434) b!2894923))

(assert (= (and b!2894923 res!1197438) b!2894921))

(assert (= (and b!2894912 (not res!1197435)) b!2894911))

(assert (= (and b!2894911 res!1197433) b!2894924))

(assert (= (and b!2894924 (not res!1197437)) b!2894917))

(assert (= (and b!2894917 (not res!1197439)) b!2894918))

(assert (= (or b!2894913 b!2894914 b!2894924) bm!188249))

(assert (=> d!834787 m!3303693))

(assert (=> d!834787 m!3303625))

(assert (=> b!2894918 m!3303697))

(assert (=> b!2894923 m!3303699))

(assert (=> b!2894923 m!3303699))

(assert (=> b!2894923 m!3303701))

(assert (=> b!2894917 m!3303699))

(assert (=> b!2894917 m!3303699))

(assert (=> b!2894917 m!3303701))

(assert (=> b!2894921 m!3303697))

(declare-fun m!3303839 () Bool)

(assert (=> b!2894920 m!3303839))

(assert (=> bm!188249 m!3303693))

(assert (=> b!2894919 m!3303697))

(assert (=> b!2894919 m!3303697))

(declare-fun m!3303841 () Bool)

(assert (=> b!2894919 m!3303841))

(assert (=> b!2894919 m!3303699))

(assert (=> b!2894919 m!3303841))

(assert (=> b!2894919 m!3303699))

(declare-fun m!3303843 () Bool)

(assert (=> b!2894919 m!3303843))

(assert (=> b!2894463 d!834787))

(declare-fun d!834789 () Bool)

(assert (=> d!834789 (= (get!10461 lt!1021421) (v!34641 lt!1021421))))

(assert (=> b!2894463 d!834789))

(declare-fun d!834791 () Bool)

(assert (=> d!834791 (= (isDefined!5080 lt!1021421) (not (isEmpty!18827 lt!1021421)))))

(declare-fun bs!523930 () Bool)

(assert (= bs!523930 d!834791))

(declare-fun m!3303845 () Bool)

(assert (=> bs!523930 m!3303845))

(assert (=> b!2894463 d!834791))

(declare-fun b!2894936 () Bool)

(declare-fun e!1829161 () Bool)

(declare-fun tp!929227 () Bool)

(declare-fun tp!929226 () Bool)

(assert (=> b!2894936 (= e!1829161 (and tp!929227 tp!929226))))

(declare-fun b!2894935 () Bool)

(assert (=> b!2894935 (= e!1829161 tp_is_empty!15273)))

(declare-fun b!2894937 () Bool)

(declare-fun tp!929225 () Bool)

(assert (=> b!2894937 (= e!1829161 tp!929225)))

(assert (=> b!2894460 (= tp!929179 e!1829161)))

(declare-fun b!2894938 () Bool)

(declare-fun tp!929228 () Bool)

(declare-fun tp!929229 () Bool)

(assert (=> b!2894938 (= e!1829161 (and tp!929228 tp!929229))))

(assert (= (and b!2894460 ((_ is ElementMatch!8843) (regOne!18199 r!23079))) b!2894935))

(assert (= (and b!2894460 ((_ is Concat!14164) (regOne!18199 r!23079))) b!2894936))

(assert (= (and b!2894460 ((_ is Star!8843) (regOne!18199 r!23079))) b!2894937))

(assert (= (and b!2894460 ((_ is Union!8843) (regOne!18199 r!23079))) b!2894938))

(declare-fun b!2894940 () Bool)

(declare-fun e!1829162 () Bool)

(declare-fun tp!929232 () Bool)

(declare-fun tp!929231 () Bool)

(assert (=> b!2894940 (= e!1829162 (and tp!929232 tp!929231))))

(declare-fun b!2894939 () Bool)

(assert (=> b!2894939 (= e!1829162 tp_is_empty!15273)))

(declare-fun b!2894941 () Bool)

(declare-fun tp!929230 () Bool)

(assert (=> b!2894941 (= e!1829162 tp!929230)))

(assert (=> b!2894460 (= tp!929178 e!1829162)))

(declare-fun b!2894942 () Bool)

(declare-fun tp!929233 () Bool)

(declare-fun tp!929234 () Bool)

(assert (=> b!2894942 (= e!1829162 (and tp!929233 tp!929234))))

(assert (= (and b!2894460 ((_ is ElementMatch!8843) (regTwo!18199 r!23079))) b!2894939))

(assert (= (and b!2894460 ((_ is Concat!14164) (regTwo!18199 r!23079))) b!2894940))

(assert (= (and b!2894460 ((_ is Star!8843) (regTwo!18199 r!23079))) b!2894941))

(assert (= (and b!2894460 ((_ is Union!8843) (regTwo!18199 r!23079))) b!2894942))

(declare-fun b!2894944 () Bool)

(declare-fun e!1829163 () Bool)

(declare-fun tp!929237 () Bool)

(declare-fun tp!929236 () Bool)

(assert (=> b!2894944 (= e!1829163 (and tp!929237 tp!929236))))

(declare-fun b!2894943 () Bool)

(assert (=> b!2894943 (= e!1829163 tp_is_empty!15273)))

(declare-fun b!2894945 () Bool)

(declare-fun tp!929235 () Bool)

(assert (=> b!2894945 (= e!1829163 tp!929235)))

(assert (=> b!2894462 (= tp!929175 e!1829163)))

(declare-fun b!2894946 () Bool)

(declare-fun tp!929238 () Bool)

(declare-fun tp!929239 () Bool)

(assert (=> b!2894946 (= e!1829163 (and tp!929238 tp!929239))))

(assert (= (and b!2894462 ((_ is ElementMatch!8843) (reg!9172 r!23079))) b!2894943))

(assert (= (and b!2894462 ((_ is Concat!14164) (reg!9172 r!23079))) b!2894944))

(assert (= (and b!2894462 ((_ is Star!8843) (reg!9172 r!23079))) b!2894945))

(assert (= (and b!2894462 ((_ is Union!8843) (reg!9172 r!23079))) b!2894946))

(declare-fun b!2894948 () Bool)

(declare-fun e!1829164 () Bool)

(declare-fun tp!929242 () Bool)

(declare-fun tp!929241 () Bool)

(assert (=> b!2894948 (= e!1829164 (and tp!929242 tp!929241))))

(declare-fun b!2894947 () Bool)

(assert (=> b!2894947 (= e!1829164 tp_is_empty!15273)))

(declare-fun b!2894949 () Bool)

(declare-fun tp!929240 () Bool)

(assert (=> b!2894949 (= e!1829164 tp!929240)))

(assert (=> b!2894457 (= tp!929176 e!1829164)))

(declare-fun b!2894950 () Bool)

(declare-fun tp!929243 () Bool)

(declare-fun tp!929244 () Bool)

(assert (=> b!2894950 (= e!1829164 (and tp!929243 tp!929244))))

(assert (= (and b!2894457 ((_ is ElementMatch!8843) (regOne!18198 r!23079))) b!2894947))

(assert (= (and b!2894457 ((_ is Concat!14164) (regOne!18198 r!23079))) b!2894948))

(assert (= (and b!2894457 ((_ is Star!8843) (regOne!18198 r!23079))) b!2894949))

(assert (= (and b!2894457 ((_ is Union!8843) (regOne!18198 r!23079))) b!2894950))

(declare-fun b!2894952 () Bool)

(declare-fun e!1829165 () Bool)

(declare-fun tp!929247 () Bool)

(declare-fun tp!929246 () Bool)

(assert (=> b!2894952 (= e!1829165 (and tp!929247 tp!929246))))

(declare-fun b!2894951 () Bool)

(assert (=> b!2894951 (= e!1829165 tp_is_empty!15273)))

(declare-fun b!2894953 () Bool)

(declare-fun tp!929245 () Bool)

(assert (=> b!2894953 (= e!1829165 tp!929245)))

(assert (=> b!2894457 (= tp!929177 e!1829165)))

(declare-fun b!2894954 () Bool)

(declare-fun tp!929248 () Bool)

(declare-fun tp!929249 () Bool)

(assert (=> b!2894954 (= e!1829165 (and tp!929248 tp!929249))))

(assert (= (and b!2894457 ((_ is ElementMatch!8843) (regTwo!18198 r!23079))) b!2894951))

(assert (= (and b!2894457 ((_ is Concat!14164) (regTwo!18198 r!23079))) b!2894952))

(assert (= (and b!2894457 ((_ is Star!8843) (regTwo!18198 r!23079))) b!2894953))

(assert (= (and b!2894457 ((_ is Union!8843) (regTwo!18198 r!23079))) b!2894954))

(check-sat (not b!2894811) (not bm!188205) (not b!2894950) (not d!834735) (not b!2894577) (not bm!188246) (not b!2894936) (not b!2894946) (not b!2894937) (not bm!188226) (not b!2894953) (not b!2894938) (not b!2894948) (not b!2894941) (not b!2894496) (not b!2894807) (not b!2894806) (not b!2894749) (not bm!188229) (not b!2894921) (not bm!188195) (not b!2894744) (not b!2894848) (not b!2894808) (not b!2894580) (not b!2894805) (not b!2894581) (not d!834791) (not b!2894949) (not b!2894809) (not bm!188196) (not b!2894745) (not d!834779) (not d!834767) tp_is_empty!15273 (not b!2894583) (not bm!188249) (not d!834753) (not b!2894917) (not b!2894920) (not bm!188199) (not bm!188245) (not b!2894619) (not b!2894945) (not b!2894919) (not b!2894747) (not bm!188241) (not bm!188248) (not d!834741) (not b!2894579) (not b!2894923) (not b!2894954) (not b!2894942) (not bm!188231) (not d!834787) (not b!2894918) (not b!2894746) (not b!2894578) (not b!2894864) (not b!2894487) (not b!2894944) (not b!2894896) (not b!2894940) (not b!2894743) (not b!2894710) (not b!2894731) (not bm!188230) (not bm!188247) (not bm!188198) (not d!834773) (not d!834785) (not bm!188227) (not b!2894952))
(check-sat)
