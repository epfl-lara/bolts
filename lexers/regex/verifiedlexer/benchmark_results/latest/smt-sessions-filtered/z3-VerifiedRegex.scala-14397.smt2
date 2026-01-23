; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750416 () Bool)

(assert start!750416)

(declare-fun b!7952490 () Bool)

(declare-fun e!4690971 () Bool)

(declare-fun tp_is_empty!53493 () Bool)

(assert (=> b!7952490 (= e!4690971 tp_is_empty!53493)))

(declare-fun b!7952491 () Bool)

(declare-fun tp!2367202 () Bool)

(declare-fun tp!2367198 () Bool)

(assert (=> b!7952491 (= e!4690971 (and tp!2367202 tp!2367198))))

(declare-fun b!7952492 () Bool)

(declare-fun e!4690970 () Bool)

(declare-fun e!4690966 () Bool)

(assert (=> b!7952492 (= e!4690970 e!4690966)))

(declare-fun res!3153334 () Bool)

(assert (=> b!7952492 (=> res!3153334 e!4690966)))

(declare-datatypes ((C!43288 0))(
  ( (C!43289 (val!32192 Int)) )
))
(declare-datatypes ((Regex!21475 0))(
  ( (ElementMatch!21475 (c!1460624 C!43288)) (Concat!30474 (regOne!43462 Regex!21475) (regTwo!43462 Regex!21475)) (EmptyExpr!21475) (Star!21475 (reg!21804 Regex!21475)) (EmptyLang!21475) (Union!21475 (regOne!43463 Regex!21475) (regTwo!43463 Regex!21475)) )
))
(declare-fun r!24602 () Regex!21475)

(declare-fun nullable!9576 (Regex!21475) Bool)

(assert (=> b!7952492 (= res!3153334 (not (nullable!9576 r!24602)))))

(declare-datatypes ((List!74704 0))(
  ( (Nil!74580) (Cons!74580 (h!81028 C!43288) (t!390447 List!74704)) )
))
(declare-fun lt!2700659 () List!74704)

(declare-fun input!7927 () List!74704)

(declare-fun isPrefix!6575 (List!74704 List!74704) Bool)

(assert (=> b!7952492 (isPrefix!6575 lt!2700659 input!7927)))

(declare-datatypes ((Unit!169876 0))(
  ( (Unit!169877) )
))
(declare-fun lt!2700666 () Unit!169876)

(declare-fun testedP!447 () List!74704)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1302 (List!74704 List!74704) Unit!169876)

(assert (=> b!7952492 (= lt!2700666 (lemmaAddHeadSuffixToPrefixStillPrefix!1302 testedP!447 input!7927))))

(declare-fun lt!2700664 () C!43288)

(declare-fun ++!18345 (List!74704 List!74704) List!74704)

(assert (=> b!7952492 (= lt!2700659 (++!18345 testedP!447 (Cons!74580 lt!2700664 Nil!74580)))))

(declare-fun lt!2700658 () List!74704)

(declare-fun head!16227 (List!74704) C!43288)

(assert (=> b!7952492 (= lt!2700664 (head!16227 lt!2700658))))

(declare-fun b!7952493 () Bool)

(declare-fun res!3153337 () Bool)

(declare-fun e!4690973 () Bool)

(assert (=> b!7952493 (=> (not res!3153337) (not e!4690973))))

(assert (=> b!7952493 (= res!3153337 (isPrefix!6575 testedP!447 input!7927))))

(declare-fun b!7952494 () Bool)

(declare-fun e!4690965 () Bool)

(declare-fun tp!2367200 () Bool)

(assert (=> b!7952494 (= e!4690965 tp!2367200)))

(declare-fun b!7952495 () Bool)

(declare-fun tp!2367195 () Bool)

(assert (=> b!7952495 (= e!4690971 tp!2367195)))

(declare-fun b!7952496 () Bool)

(declare-fun tp!2367196 () Bool)

(declare-fun tp!2367205 () Bool)

(assert (=> b!7952496 (= e!4690971 (and tp!2367196 tp!2367205))))

(declare-fun b!7952498 () Bool)

(declare-fun validRegex!11779 (Regex!21475) Bool)

(declare-fun derivativeStep!6503 (Regex!21475 C!43288) Regex!21475)

(assert (=> b!7952498 (= e!4690966 (validRegex!11779 (derivativeStep!6503 r!24602 lt!2700664)))))

(declare-fun b!7952499 () Bool)

(declare-fun res!3153336 () Bool)

(declare-fun e!4690967 () Bool)

(assert (=> b!7952499 (=> (not res!3153336) (not e!4690967))))

(assert (=> b!7952499 (= res!3153336 (not (= testedP!447 input!7927)))))

(declare-fun b!7952500 () Bool)

(declare-fun e!4690969 () Unit!169876)

(declare-fun Unit!169878 () Unit!169876)

(assert (=> b!7952500 (= e!4690969 Unit!169878)))

(declare-fun b!7952501 () Bool)

(declare-fun tp!2367201 () Bool)

(declare-fun tp!2367206 () Bool)

(assert (=> b!7952501 (= e!4690965 (and tp!2367201 tp!2367206))))

(declare-fun b!7952502 () Bool)

(declare-fun Unit!169879 () Unit!169876)

(assert (=> b!7952502 (= e!4690969 Unit!169879)))

(declare-fun lt!2700662 () Unit!169876)

(declare-fun lemmaIsPrefixRefl!4043 (List!74704 List!74704) Unit!169876)

(assert (=> b!7952502 (= lt!2700662 (lemmaIsPrefixRefl!4043 input!7927 input!7927))))

(assert (=> b!7952502 (isPrefix!6575 input!7927 input!7927)))

(declare-fun lt!2700660 () Unit!169876)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1623 (List!74704 List!74704 List!74704) Unit!169876)

(assert (=> b!7952502 (= lt!2700660 (lemmaIsPrefixSameLengthThenSameList!1623 input!7927 testedP!447 input!7927))))

(assert (=> b!7952502 false))

(declare-fun b!7952503 () Bool)

(declare-fun tp!2367204 () Bool)

(declare-fun tp!2367199 () Bool)

(assert (=> b!7952503 (= e!4690965 (and tp!2367204 tp!2367199))))

(declare-fun b!7952504 () Bool)

(assert (=> b!7952504 (= e!4690965 tp_is_empty!53493)))

(declare-fun b!7952505 () Bool)

(declare-fun res!3153338 () Bool)

(assert (=> b!7952505 (=> (not res!3153338) (not e!4690973))))

(declare-fun baseR!116 () Regex!21475)

(declare-fun derivative!661 (Regex!21475 List!74704) Regex!21475)

(assert (=> b!7952505 (= res!3153338 (= (derivative!661 baseR!116 testedP!447) r!24602))))

(declare-fun b!7952506 () Bool)

(assert (=> b!7952506 (= e!4690973 e!4690967)))

(declare-fun res!3153340 () Bool)

(assert (=> b!7952506 (=> (not res!3153340) (not e!4690967))))

(declare-fun lt!2700661 () Int)

(declare-fun lt!2700665 () Int)

(declare-fun isEmpty!42879 (List!74704) Bool)

(declare-datatypes ((tuple2!70612 0))(
  ( (tuple2!70613 (_1!38609 List!74704) (_2!38609 List!74704)) )
))
(declare-fun findLongestMatchInner!2256 (Regex!21475 List!74704 Int List!74704 List!74704 Int) tuple2!70612)

(assert (=> b!7952506 (= res!3153340 (not (isEmpty!42879 (_1!38609 (findLongestMatchInner!2256 r!24602 testedP!447 lt!2700665 lt!2700658 input!7927 lt!2700661)))))))

(declare-fun size!43411 (List!74704) Int)

(assert (=> b!7952506 (= lt!2700661 (size!43411 input!7927))))

(declare-fun getSuffix!3778 (List!74704 List!74704) List!74704)

(assert (=> b!7952506 (= lt!2700658 (getSuffix!3778 input!7927 testedP!447))))

(assert (=> b!7952506 (= lt!2700665 (size!43411 testedP!447))))

(declare-fun res!3153335 () Bool)

(assert (=> start!750416 (=> (not res!3153335) (not e!4690973))))

(assert (=> start!750416 (= res!3153335 (validRegex!11779 baseR!116))))

(assert (=> start!750416 e!4690973))

(assert (=> start!750416 e!4690971))

(declare-fun e!4690968 () Bool)

(assert (=> start!750416 e!4690968))

(declare-fun e!4690972 () Bool)

(assert (=> start!750416 e!4690972))

(assert (=> start!750416 e!4690965))

(declare-fun b!7952497 () Bool)

(declare-fun tp!2367203 () Bool)

(assert (=> b!7952497 (= e!4690972 (and tp_is_empty!53493 tp!2367203))))

(declare-fun b!7952507 () Bool)

(declare-fun tp!2367197 () Bool)

(assert (=> b!7952507 (= e!4690968 (and tp_is_empty!53493 tp!2367197))))

(declare-fun b!7952508 () Bool)

(assert (=> b!7952508 (= e!4690967 (not e!4690970))))

(declare-fun res!3153339 () Bool)

(assert (=> b!7952508 (=> res!3153339 e!4690970)))

(assert (=> b!7952508 (= res!3153339 (>= lt!2700665 lt!2700661))))

(declare-fun lt!2700667 () Unit!169876)

(assert (=> b!7952508 (= lt!2700667 e!4690969)))

(declare-fun c!1460623 () Bool)

(assert (=> b!7952508 (= c!1460623 (= lt!2700665 lt!2700661))))

(assert (=> b!7952508 (<= lt!2700665 lt!2700661)))

(declare-fun lt!2700663 () Unit!169876)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1092 (List!74704 List!74704) Unit!169876)

(assert (=> b!7952508 (= lt!2700663 (lemmaIsPrefixThenSmallerEqSize!1092 testedP!447 input!7927))))

(assert (= (and start!750416 res!3153335) b!7952493))

(assert (= (and b!7952493 res!3153337) b!7952505))

(assert (= (and b!7952505 res!3153338) b!7952506))

(assert (= (and b!7952506 res!3153340) b!7952499))

(assert (= (and b!7952499 res!3153336) b!7952508))

(assert (= (and b!7952508 c!1460623) b!7952502))

(assert (= (and b!7952508 (not c!1460623)) b!7952500))

(assert (= (and b!7952508 (not res!3153339)) b!7952492))

(assert (= (and b!7952492 (not res!3153334)) b!7952498))

(get-info :version)

(assert (= (and start!750416 ((_ is ElementMatch!21475) baseR!116)) b!7952490))

(assert (= (and start!750416 ((_ is Concat!30474) baseR!116)) b!7952491))

(assert (= (and start!750416 ((_ is Star!21475) baseR!116)) b!7952495))

(assert (= (and start!750416 ((_ is Union!21475) baseR!116)) b!7952496))

(assert (= (and start!750416 ((_ is Cons!74580) testedP!447)) b!7952507))

(assert (= (and start!750416 ((_ is Cons!74580) input!7927)) b!7952497))

(assert (= (and start!750416 ((_ is ElementMatch!21475) r!24602)) b!7952504))

(assert (= (and start!750416 ((_ is Concat!30474) r!24602)) b!7952503))

(assert (= (and start!750416 ((_ is Star!21475) r!24602)) b!7952494))

(assert (= (and start!750416 ((_ is Union!21475) r!24602)) b!7952501))

(declare-fun m!8336176 () Bool)

(assert (=> b!7952505 m!8336176))

(declare-fun m!8336178 () Bool)

(assert (=> b!7952502 m!8336178))

(declare-fun m!8336180 () Bool)

(assert (=> b!7952502 m!8336180))

(declare-fun m!8336182 () Bool)

(assert (=> b!7952502 m!8336182))

(declare-fun m!8336184 () Bool)

(assert (=> b!7952508 m!8336184))

(declare-fun m!8336186 () Bool)

(assert (=> b!7952498 m!8336186))

(assert (=> b!7952498 m!8336186))

(declare-fun m!8336188 () Bool)

(assert (=> b!7952498 m!8336188))

(declare-fun m!8336190 () Bool)

(assert (=> b!7952506 m!8336190))

(declare-fun m!8336192 () Bool)

(assert (=> b!7952506 m!8336192))

(declare-fun m!8336194 () Bool)

(assert (=> b!7952506 m!8336194))

(declare-fun m!8336196 () Bool)

(assert (=> b!7952506 m!8336196))

(declare-fun m!8336198 () Bool)

(assert (=> b!7952506 m!8336198))

(declare-fun m!8336200 () Bool)

(assert (=> start!750416 m!8336200))

(declare-fun m!8336202 () Bool)

(assert (=> b!7952493 m!8336202))

(declare-fun m!8336204 () Bool)

(assert (=> b!7952492 m!8336204))

(declare-fun m!8336206 () Bool)

(assert (=> b!7952492 m!8336206))

(declare-fun m!8336208 () Bool)

(assert (=> b!7952492 m!8336208))

(declare-fun m!8336210 () Bool)

(assert (=> b!7952492 m!8336210))

(declare-fun m!8336212 () Bool)

(assert (=> b!7952492 m!8336212))

(check-sat (not b!7952503) (not b!7952502) (not b!7952494) (not b!7952501) (not b!7952508) (not b!7952507) (not b!7952491) (not b!7952505) (not b!7952492) (not b!7952498) (not b!7952496) (not start!750416) (not b!7952506) (not b!7952493) tp_is_empty!53493 (not b!7952495) (not b!7952497))
(check-sat)
(get-model)

(declare-fun bm!737198 () Bool)

(declare-fun c!1460632 () Bool)

(declare-fun c!1460633 () Bool)

(declare-fun call!737204 () Bool)

(assert (=> bm!737198 (= call!737204 (validRegex!11779 (ite c!1460632 (reg!21804 baseR!116) (ite c!1460633 (regTwo!43463 baseR!116) (regTwo!43462 baseR!116)))))))

(declare-fun d!2376442 () Bool)

(declare-fun res!3153361 () Bool)

(declare-fun e!4691002 () Bool)

(assert (=> d!2376442 (=> res!3153361 e!4691002)))

(assert (=> d!2376442 (= res!3153361 ((_ is ElementMatch!21475) baseR!116))))

(assert (=> d!2376442 (= (validRegex!11779 baseR!116) e!4691002)))

(declare-fun b!7952541 () Bool)

(declare-fun e!4691001 () Bool)

(declare-fun e!4691003 () Bool)

(assert (=> b!7952541 (= e!4691001 e!4691003)))

(declare-fun res!3153359 () Bool)

(assert (=> b!7952541 (= res!3153359 (not (nullable!9576 (reg!21804 baseR!116))))))

(assert (=> b!7952541 (=> (not res!3153359) (not e!4691003))))

(declare-fun b!7952542 () Bool)

(declare-fun e!4690997 () Bool)

(declare-fun e!4691000 () Bool)

(assert (=> b!7952542 (= e!4690997 e!4691000)))

(declare-fun res!3153360 () Bool)

(assert (=> b!7952542 (=> (not res!3153360) (not e!4691000))))

(declare-fun call!737203 () Bool)

(assert (=> b!7952542 (= res!3153360 call!737203)))

(declare-fun bm!737199 () Bool)

(declare-fun call!737205 () Bool)

(assert (=> bm!737199 (= call!737205 call!737204)))

(declare-fun b!7952543 () Bool)

(declare-fun res!3153362 () Bool)

(assert (=> b!7952543 (=> res!3153362 e!4690997)))

(assert (=> b!7952543 (= res!3153362 (not ((_ is Concat!30474) baseR!116)))))

(declare-fun e!4690998 () Bool)

(assert (=> b!7952543 (= e!4690998 e!4690997)))

(declare-fun b!7952544 () Bool)

(declare-fun res!3153363 () Bool)

(declare-fun e!4690999 () Bool)

(assert (=> b!7952544 (=> (not res!3153363) (not e!4690999))))

(assert (=> b!7952544 (= res!3153363 call!737203)))

(assert (=> b!7952544 (= e!4690998 e!4690999)))

(declare-fun b!7952545 () Bool)

(assert (=> b!7952545 (= e!4691002 e!4691001)))

(assert (=> b!7952545 (= c!1460632 ((_ is Star!21475) baseR!116))))

(declare-fun b!7952546 () Bool)

(assert (=> b!7952546 (= e!4690999 call!737205)))

(declare-fun b!7952547 () Bool)

(assert (=> b!7952547 (= e!4691001 e!4690998)))

(assert (=> b!7952547 (= c!1460633 ((_ is Union!21475) baseR!116))))

(declare-fun b!7952548 () Bool)

(assert (=> b!7952548 (= e!4691003 call!737204)))

(declare-fun b!7952549 () Bool)

(assert (=> b!7952549 (= e!4691000 call!737205)))

(declare-fun bm!737200 () Bool)

(assert (=> bm!737200 (= call!737203 (validRegex!11779 (ite c!1460633 (regOne!43463 baseR!116) (regOne!43462 baseR!116))))))

(assert (= (and d!2376442 (not res!3153361)) b!7952545))

(assert (= (and b!7952545 c!1460632) b!7952541))

(assert (= (and b!7952545 (not c!1460632)) b!7952547))

(assert (= (and b!7952541 res!3153359) b!7952548))

(assert (= (and b!7952547 c!1460633) b!7952544))

(assert (= (and b!7952547 (not c!1460633)) b!7952543))

(assert (= (and b!7952544 res!3153363) b!7952546))

(assert (= (and b!7952543 (not res!3153362)) b!7952542))

(assert (= (and b!7952542 res!3153360) b!7952549))

(assert (= (or b!7952546 b!7952549) bm!737199))

(assert (= (or b!7952544 b!7952542) bm!737200))

(assert (= (or b!7952548 bm!737199) bm!737198))

(declare-fun m!8336230 () Bool)

(assert (=> bm!737198 m!8336230))

(declare-fun m!8336232 () Bool)

(assert (=> b!7952541 m!8336232))

(declare-fun m!8336234 () Bool)

(assert (=> bm!737200 m!8336234))

(assert (=> start!750416 d!2376442))

(declare-fun d!2376450 () Bool)

(assert (=> d!2376450 (isPrefix!6575 (++!18345 testedP!447 (Cons!74580 (head!16227 (getSuffix!3778 input!7927 testedP!447)) Nil!74580)) input!7927)))

(declare-fun lt!2700681 () Unit!169876)

(declare-fun choose!59932 (List!74704 List!74704) Unit!169876)

(assert (=> d!2376450 (= lt!2700681 (choose!59932 testedP!447 input!7927))))

(assert (=> d!2376450 (isPrefix!6575 testedP!447 input!7927)))

(assert (=> d!2376450 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1302 testedP!447 input!7927) lt!2700681)))

(declare-fun bs!1969576 () Bool)

(assert (= bs!1969576 d!2376450))

(declare-fun m!8336238 () Bool)

(assert (=> bs!1969576 m!8336238))

(assert (=> bs!1969576 m!8336194))

(declare-fun m!8336240 () Bool)

(assert (=> bs!1969576 m!8336240))

(assert (=> bs!1969576 m!8336194))

(assert (=> bs!1969576 m!8336238))

(declare-fun m!8336242 () Bool)

(assert (=> bs!1969576 m!8336242))

(declare-fun m!8336244 () Bool)

(assert (=> bs!1969576 m!8336244))

(assert (=> bs!1969576 m!8336202))

(assert (=> b!7952492 d!2376450))

(declare-fun b!7952574 () Bool)

(declare-fun e!4691021 () Bool)

(declare-fun e!4691020 () Bool)

(assert (=> b!7952574 (= e!4691021 e!4691020)))

(declare-fun res!3153379 () Bool)

(assert (=> b!7952574 (=> (not res!3153379) (not e!4691020))))

(assert (=> b!7952574 (= res!3153379 (not ((_ is Nil!74580) input!7927)))))

(declare-fun b!7952577 () Bool)

(declare-fun e!4691019 () Bool)

(assert (=> b!7952577 (= e!4691019 (>= (size!43411 input!7927) (size!43411 lt!2700659)))))

(declare-fun b!7952576 () Bool)

(declare-fun tail!15764 (List!74704) List!74704)

(assert (=> b!7952576 (= e!4691020 (isPrefix!6575 (tail!15764 lt!2700659) (tail!15764 input!7927)))))

(declare-fun d!2376454 () Bool)

(assert (=> d!2376454 e!4691019))

(declare-fun res!3153376 () Bool)

(assert (=> d!2376454 (=> res!3153376 e!4691019)))

(declare-fun lt!2700688 () Bool)

(assert (=> d!2376454 (= res!3153376 (not lt!2700688))))

(assert (=> d!2376454 (= lt!2700688 e!4691021)))

(declare-fun res!3153378 () Bool)

(assert (=> d!2376454 (=> res!3153378 e!4691021)))

(assert (=> d!2376454 (= res!3153378 ((_ is Nil!74580) lt!2700659))))

(assert (=> d!2376454 (= (isPrefix!6575 lt!2700659 input!7927) lt!2700688)))

(declare-fun b!7952575 () Bool)

(declare-fun res!3153377 () Bool)

(assert (=> b!7952575 (=> (not res!3153377) (not e!4691020))))

(assert (=> b!7952575 (= res!3153377 (= (head!16227 lt!2700659) (head!16227 input!7927)))))

(assert (= (and d!2376454 (not res!3153378)) b!7952574))

(assert (= (and b!7952574 res!3153379) b!7952575))

(assert (= (and b!7952575 res!3153377) b!7952576))

(assert (= (and d!2376454 (not res!3153376)) b!7952577))

(assert (=> b!7952577 m!8336192))

(declare-fun m!8336252 () Bool)

(assert (=> b!7952577 m!8336252))

(declare-fun m!8336254 () Bool)

(assert (=> b!7952576 m!8336254))

(declare-fun m!8336256 () Bool)

(assert (=> b!7952576 m!8336256))

(assert (=> b!7952576 m!8336254))

(assert (=> b!7952576 m!8336256))

(declare-fun m!8336258 () Bool)

(assert (=> b!7952576 m!8336258))

(declare-fun m!8336260 () Bool)

(assert (=> b!7952575 m!8336260))

(declare-fun m!8336262 () Bool)

(assert (=> b!7952575 m!8336262))

(assert (=> b!7952492 d!2376454))

(declare-fun d!2376460 () Bool)

(declare-fun nullableFct!3774 (Regex!21475) Bool)

(assert (=> d!2376460 (= (nullable!9576 r!24602) (nullableFct!3774 r!24602))))

(declare-fun bs!1969577 () Bool)

(assert (= bs!1969577 d!2376460))

(declare-fun m!8336264 () Bool)

(assert (=> bs!1969577 m!8336264))

(assert (=> b!7952492 d!2376460))

(declare-fun d!2376462 () Bool)

(assert (=> d!2376462 (= (head!16227 lt!2700658) (h!81028 lt!2700658))))

(assert (=> b!7952492 d!2376462))

(declare-fun b!7952586 () Bool)

(declare-fun e!4691026 () List!74704)

(assert (=> b!7952586 (= e!4691026 (Cons!74580 lt!2700664 Nil!74580))))

(declare-fun d!2376464 () Bool)

(declare-fun e!4691027 () Bool)

(assert (=> d!2376464 e!4691027))

(declare-fun res!3153384 () Bool)

(assert (=> d!2376464 (=> (not res!3153384) (not e!4691027))))

(declare-fun lt!2700691 () List!74704)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15832 (List!74704) (InoxSet C!43288))

(assert (=> d!2376464 (= res!3153384 (= (content!15832 lt!2700691) ((_ map or) (content!15832 testedP!447) (content!15832 (Cons!74580 lt!2700664 Nil!74580)))))))

(assert (=> d!2376464 (= lt!2700691 e!4691026)))

(declare-fun c!1460642 () Bool)

(assert (=> d!2376464 (= c!1460642 ((_ is Nil!74580) testedP!447))))

(assert (=> d!2376464 (= (++!18345 testedP!447 (Cons!74580 lt!2700664 Nil!74580)) lt!2700691)))

(declare-fun b!7952587 () Bool)

(assert (=> b!7952587 (= e!4691026 (Cons!74580 (h!81028 testedP!447) (++!18345 (t!390447 testedP!447) (Cons!74580 lt!2700664 Nil!74580))))))

(declare-fun b!7952589 () Bool)

(assert (=> b!7952589 (= e!4691027 (or (not (= (Cons!74580 lt!2700664 Nil!74580) Nil!74580)) (= lt!2700691 testedP!447)))))

(declare-fun b!7952588 () Bool)

(declare-fun res!3153385 () Bool)

(assert (=> b!7952588 (=> (not res!3153385) (not e!4691027))))

(assert (=> b!7952588 (= res!3153385 (= (size!43411 lt!2700691) (+ (size!43411 testedP!447) (size!43411 (Cons!74580 lt!2700664 Nil!74580)))))))

(assert (= (and d!2376464 c!1460642) b!7952586))

(assert (= (and d!2376464 (not c!1460642)) b!7952587))

(assert (= (and d!2376464 res!3153384) b!7952588))

(assert (= (and b!7952588 res!3153385) b!7952589))

(declare-fun m!8336266 () Bool)

(assert (=> d!2376464 m!8336266))

(declare-fun m!8336268 () Bool)

(assert (=> d!2376464 m!8336268))

(declare-fun m!8336270 () Bool)

(assert (=> d!2376464 m!8336270))

(declare-fun m!8336272 () Bool)

(assert (=> b!7952587 m!8336272))

(declare-fun m!8336274 () Bool)

(assert (=> b!7952588 m!8336274))

(assert (=> b!7952588 m!8336190))

(declare-fun m!8336276 () Bool)

(assert (=> b!7952588 m!8336276))

(assert (=> b!7952492 d!2376464))

(declare-fun d!2376466 () Bool)

(assert (=> d!2376466 (<= (size!43411 testedP!447) (size!43411 input!7927))))

(declare-fun lt!2700694 () Unit!169876)

(declare-fun choose!59933 (List!74704 List!74704) Unit!169876)

(assert (=> d!2376466 (= lt!2700694 (choose!59933 testedP!447 input!7927))))

(assert (=> d!2376466 (isPrefix!6575 testedP!447 input!7927)))

(assert (=> d!2376466 (= (lemmaIsPrefixThenSmallerEqSize!1092 testedP!447 input!7927) lt!2700694)))

(declare-fun bs!1969578 () Bool)

(assert (= bs!1969578 d!2376466))

(assert (=> bs!1969578 m!8336190))

(assert (=> bs!1969578 m!8336192))

(declare-fun m!8336278 () Bool)

(assert (=> bs!1969578 m!8336278))

(assert (=> bs!1969578 m!8336202))

(assert (=> b!7952508 d!2376466))

(declare-fun c!1460643 () Bool)

(declare-fun call!737207 () Bool)

(declare-fun c!1460644 () Bool)

(declare-fun bm!737201 () Bool)

(assert (=> bm!737201 (= call!737207 (validRegex!11779 (ite c!1460643 (reg!21804 (derivativeStep!6503 r!24602 lt!2700664)) (ite c!1460644 (regTwo!43463 (derivativeStep!6503 r!24602 lt!2700664)) (regTwo!43462 (derivativeStep!6503 r!24602 lt!2700664))))))))

(declare-fun d!2376468 () Bool)

(declare-fun res!3153388 () Bool)

(declare-fun e!4691033 () Bool)

(assert (=> d!2376468 (=> res!3153388 e!4691033)))

(assert (=> d!2376468 (= res!3153388 ((_ is ElementMatch!21475) (derivativeStep!6503 r!24602 lt!2700664)))))

(assert (=> d!2376468 (= (validRegex!11779 (derivativeStep!6503 r!24602 lt!2700664)) e!4691033)))

(declare-fun b!7952590 () Bool)

(declare-fun e!4691032 () Bool)

(declare-fun e!4691034 () Bool)

(assert (=> b!7952590 (= e!4691032 e!4691034)))

(declare-fun res!3153386 () Bool)

(assert (=> b!7952590 (= res!3153386 (not (nullable!9576 (reg!21804 (derivativeStep!6503 r!24602 lt!2700664)))))))

(assert (=> b!7952590 (=> (not res!3153386) (not e!4691034))))

(declare-fun b!7952591 () Bool)

(declare-fun e!4691028 () Bool)

(declare-fun e!4691031 () Bool)

(assert (=> b!7952591 (= e!4691028 e!4691031)))

(declare-fun res!3153387 () Bool)

(assert (=> b!7952591 (=> (not res!3153387) (not e!4691031))))

(declare-fun call!737206 () Bool)

(assert (=> b!7952591 (= res!3153387 call!737206)))

(declare-fun bm!737202 () Bool)

(declare-fun call!737208 () Bool)

(assert (=> bm!737202 (= call!737208 call!737207)))

(declare-fun b!7952592 () Bool)

(declare-fun res!3153389 () Bool)

(assert (=> b!7952592 (=> res!3153389 e!4691028)))

(assert (=> b!7952592 (= res!3153389 (not ((_ is Concat!30474) (derivativeStep!6503 r!24602 lt!2700664))))))

(declare-fun e!4691029 () Bool)

(assert (=> b!7952592 (= e!4691029 e!4691028)))

(declare-fun b!7952593 () Bool)

(declare-fun res!3153390 () Bool)

(declare-fun e!4691030 () Bool)

(assert (=> b!7952593 (=> (not res!3153390) (not e!4691030))))

(assert (=> b!7952593 (= res!3153390 call!737206)))

(assert (=> b!7952593 (= e!4691029 e!4691030)))

(declare-fun b!7952594 () Bool)

(assert (=> b!7952594 (= e!4691033 e!4691032)))

(assert (=> b!7952594 (= c!1460643 ((_ is Star!21475) (derivativeStep!6503 r!24602 lt!2700664)))))

(declare-fun b!7952595 () Bool)

(assert (=> b!7952595 (= e!4691030 call!737208)))

(declare-fun b!7952596 () Bool)

(assert (=> b!7952596 (= e!4691032 e!4691029)))

(assert (=> b!7952596 (= c!1460644 ((_ is Union!21475) (derivativeStep!6503 r!24602 lt!2700664)))))

(declare-fun b!7952597 () Bool)

(assert (=> b!7952597 (= e!4691034 call!737207)))

(declare-fun b!7952598 () Bool)

(assert (=> b!7952598 (= e!4691031 call!737208)))

(declare-fun bm!737203 () Bool)

(assert (=> bm!737203 (= call!737206 (validRegex!11779 (ite c!1460644 (regOne!43463 (derivativeStep!6503 r!24602 lt!2700664)) (regOne!43462 (derivativeStep!6503 r!24602 lt!2700664)))))))

(assert (= (and d!2376468 (not res!3153388)) b!7952594))

(assert (= (and b!7952594 c!1460643) b!7952590))

(assert (= (and b!7952594 (not c!1460643)) b!7952596))

(assert (= (and b!7952590 res!3153386) b!7952597))

(assert (= (and b!7952596 c!1460644) b!7952593))

(assert (= (and b!7952596 (not c!1460644)) b!7952592))

(assert (= (and b!7952593 res!3153390) b!7952595))

(assert (= (and b!7952592 (not res!3153389)) b!7952591))

(assert (= (and b!7952591 res!3153387) b!7952598))

(assert (= (or b!7952595 b!7952598) bm!737202))

(assert (= (or b!7952593 b!7952591) bm!737203))

(assert (= (or b!7952597 bm!737202) bm!737201))

(declare-fun m!8336280 () Bool)

(assert (=> bm!737201 m!8336280))

(declare-fun m!8336282 () Bool)

(assert (=> b!7952590 m!8336282))

(declare-fun m!8336284 () Bool)

(assert (=> bm!737203 m!8336284))

(assert (=> b!7952498 d!2376468))

(declare-fun b!7952619 () Bool)

(declare-fun e!4691046 () Regex!21475)

(declare-fun call!737219 () Regex!21475)

(assert (=> b!7952619 (= e!4691046 (Concat!30474 call!737219 r!24602))))

(declare-fun bm!737212 () Bool)

(declare-fun call!737220 () Regex!21475)

(assert (=> bm!737212 (= call!737219 call!737220)))

(declare-fun b!7952620 () Bool)

(declare-fun e!4691045 () Regex!21475)

(assert (=> b!7952620 (= e!4691045 EmptyLang!21475)))

(declare-fun b!7952621 () Bool)

(declare-fun e!4691047 () Regex!21475)

(assert (=> b!7952621 (= e!4691047 (ite (= lt!2700664 (c!1460624 r!24602)) EmptyExpr!21475 EmptyLang!21475))))

(declare-fun b!7952622 () Bool)

(declare-fun e!4691049 () Regex!21475)

(assert (=> b!7952622 (= e!4691049 e!4691046)))

(declare-fun c!1460656 () Bool)

(assert (=> b!7952622 (= c!1460656 ((_ is Star!21475) r!24602))))

(declare-fun b!7952623 () Bool)

(declare-fun call!737218 () Regex!21475)

(assert (=> b!7952623 (= e!4691049 (Union!21475 call!737218 call!737220))))

(declare-fun bm!737213 () Bool)

(declare-fun call!737217 () Regex!21475)

(assert (=> bm!737213 (= call!737217 call!737219)))

(declare-fun b!7952624 () Bool)

(declare-fun c!1460655 () Bool)

(assert (=> b!7952624 (= c!1460655 ((_ is Union!21475) r!24602))))

(assert (=> b!7952624 (= e!4691047 e!4691049)))

(declare-fun c!1460658 () Bool)

(declare-fun bm!737214 () Bool)

(assert (=> bm!737214 (= call!737220 (derivativeStep!6503 (ite c!1460655 (regTwo!43463 r!24602) (ite c!1460656 (reg!21804 r!24602) (ite c!1460658 (regTwo!43462 r!24602) (regOne!43462 r!24602)))) lt!2700664))))

(declare-fun b!7952625 () Bool)

(assert (=> b!7952625 (= e!4691045 e!4691047)))

(declare-fun c!1460657 () Bool)

(assert (=> b!7952625 (= c!1460657 ((_ is ElementMatch!21475) r!24602))))

(declare-fun b!7952626 () Bool)

(declare-fun e!4691048 () Regex!21475)

(assert (=> b!7952626 (= e!4691048 (Union!21475 (Concat!30474 call!737217 (regTwo!43462 r!24602)) EmptyLang!21475))))

(declare-fun b!7952627 () Bool)

(assert (=> b!7952627 (= c!1460658 (nullable!9576 (regOne!43462 r!24602)))))

(assert (=> b!7952627 (= e!4691046 e!4691048)))

(declare-fun b!7952628 () Bool)

(assert (=> b!7952628 (= e!4691048 (Union!21475 (Concat!30474 call!737218 (regTwo!43462 r!24602)) call!737217))))

(declare-fun bm!737215 () Bool)

(assert (=> bm!737215 (= call!737218 (derivativeStep!6503 (ite c!1460655 (regOne!43463 r!24602) (regOne!43462 r!24602)) lt!2700664))))

(declare-fun d!2376470 () Bool)

(declare-fun lt!2700697 () Regex!21475)

(assert (=> d!2376470 (validRegex!11779 lt!2700697)))

(assert (=> d!2376470 (= lt!2700697 e!4691045)))

(declare-fun c!1460659 () Bool)

(assert (=> d!2376470 (= c!1460659 (or ((_ is EmptyExpr!21475) r!24602) ((_ is EmptyLang!21475) r!24602)))))

(assert (=> d!2376470 (validRegex!11779 r!24602)))

(assert (=> d!2376470 (= (derivativeStep!6503 r!24602 lt!2700664) lt!2700697)))

(assert (= (and d!2376470 c!1460659) b!7952620))

(assert (= (and d!2376470 (not c!1460659)) b!7952625))

(assert (= (and b!7952625 c!1460657) b!7952621))

(assert (= (and b!7952625 (not c!1460657)) b!7952624))

(assert (= (and b!7952624 c!1460655) b!7952623))

(assert (= (and b!7952624 (not c!1460655)) b!7952622))

(assert (= (and b!7952622 c!1460656) b!7952619))

(assert (= (and b!7952622 (not c!1460656)) b!7952627))

(assert (= (and b!7952627 c!1460658) b!7952628))

(assert (= (and b!7952627 (not c!1460658)) b!7952626))

(assert (= (or b!7952628 b!7952626) bm!737213))

(assert (= (or b!7952619 bm!737213) bm!737212))

(assert (= (or b!7952623 bm!737212) bm!737214))

(assert (= (or b!7952623 b!7952628) bm!737215))

(declare-fun m!8336286 () Bool)

(assert (=> bm!737214 m!8336286))

(declare-fun m!8336288 () Bool)

(assert (=> b!7952627 m!8336288))

(declare-fun m!8336290 () Bool)

(assert (=> bm!737215 m!8336290))

(declare-fun m!8336292 () Bool)

(assert (=> d!2376470 m!8336292))

(declare-fun m!8336294 () Bool)

(assert (=> d!2376470 m!8336294))

(assert (=> b!7952498 d!2376470))

(declare-fun d!2376472 () Bool)

(assert (=> d!2376472 (isPrefix!6575 input!7927 input!7927)))

(declare-fun lt!2700700 () Unit!169876)

(declare-fun choose!59935 (List!74704 List!74704) Unit!169876)

(assert (=> d!2376472 (= lt!2700700 (choose!59935 input!7927 input!7927))))

(assert (=> d!2376472 (= (lemmaIsPrefixRefl!4043 input!7927 input!7927) lt!2700700)))

(declare-fun bs!1969579 () Bool)

(assert (= bs!1969579 d!2376472))

(assert (=> bs!1969579 m!8336180))

(declare-fun m!8336296 () Bool)

(assert (=> bs!1969579 m!8336296))

(assert (=> b!7952502 d!2376472))

(declare-fun b!7952629 () Bool)

(declare-fun e!4691052 () Bool)

(declare-fun e!4691051 () Bool)

(assert (=> b!7952629 (= e!4691052 e!4691051)))

(declare-fun res!3153394 () Bool)

(assert (=> b!7952629 (=> (not res!3153394) (not e!4691051))))

(assert (=> b!7952629 (= res!3153394 (not ((_ is Nil!74580) input!7927)))))

(declare-fun b!7952632 () Bool)

(declare-fun e!4691050 () Bool)

(assert (=> b!7952632 (= e!4691050 (>= (size!43411 input!7927) (size!43411 input!7927)))))

(declare-fun b!7952631 () Bool)

(assert (=> b!7952631 (= e!4691051 (isPrefix!6575 (tail!15764 input!7927) (tail!15764 input!7927)))))

(declare-fun d!2376474 () Bool)

(assert (=> d!2376474 e!4691050))

(declare-fun res!3153391 () Bool)

(assert (=> d!2376474 (=> res!3153391 e!4691050)))

(declare-fun lt!2700701 () Bool)

(assert (=> d!2376474 (= res!3153391 (not lt!2700701))))

(assert (=> d!2376474 (= lt!2700701 e!4691052)))

(declare-fun res!3153393 () Bool)

(assert (=> d!2376474 (=> res!3153393 e!4691052)))

(assert (=> d!2376474 (= res!3153393 ((_ is Nil!74580) input!7927))))

(assert (=> d!2376474 (= (isPrefix!6575 input!7927 input!7927) lt!2700701)))

(declare-fun b!7952630 () Bool)

(declare-fun res!3153392 () Bool)

(assert (=> b!7952630 (=> (not res!3153392) (not e!4691051))))

(assert (=> b!7952630 (= res!3153392 (= (head!16227 input!7927) (head!16227 input!7927)))))

(assert (= (and d!2376474 (not res!3153393)) b!7952629))

(assert (= (and b!7952629 res!3153394) b!7952630))

(assert (= (and b!7952630 res!3153392) b!7952631))

(assert (= (and d!2376474 (not res!3153391)) b!7952632))

(assert (=> b!7952632 m!8336192))

(assert (=> b!7952632 m!8336192))

(assert (=> b!7952631 m!8336256))

(assert (=> b!7952631 m!8336256))

(assert (=> b!7952631 m!8336256))

(assert (=> b!7952631 m!8336256))

(declare-fun m!8336298 () Bool)

(assert (=> b!7952631 m!8336298))

(assert (=> b!7952630 m!8336262))

(assert (=> b!7952630 m!8336262))

(assert (=> b!7952502 d!2376474))

(declare-fun d!2376476 () Bool)

(assert (=> d!2376476 (= input!7927 testedP!447)))

(declare-fun lt!2700704 () Unit!169876)

(declare-fun choose!59937 (List!74704 List!74704 List!74704) Unit!169876)

(assert (=> d!2376476 (= lt!2700704 (choose!59937 input!7927 testedP!447 input!7927))))

(assert (=> d!2376476 (isPrefix!6575 input!7927 input!7927)))

(assert (=> d!2376476 (= (lemmaIsPrefixSameLengthThenSameList!1623 input!7927 testedP!447 input!7927) lt!2700704)))

(declare-fun bs!1969580 () Bool)

(assert (= bs!1969580 d!2376476))

(declare-fun m!8336300 () Bool)

(assert (=> bs!1969580 m!8336300))

(assert (=> bs!1969580 m!8336180))

(assert (=> b!7952502 d!2376476))

(declare-fun d!2376478 () Bool)

(declare-fun lt!2700707 () Regex!21475)

(assert (=> d!2376478 (validRegex!11779 lt!2700707)))

(declare-fun e!4691055 () Regex!21475)

(assert (=> d!2376478 (= lt!2700707 e!4691055)))

(declare-fun c!1460662 () Bool)

(assert (=> d!2376478 (= c!1460662 ((_ is Cons!74580) testedP!447))))

(assert (=> d!2376478 (validRegex!11779 baseR!116)))

(assert (=> d!2376478 (= (derivative!661 baseR!116 testedP!447) lt!2700707)))

(declare-fun b!7952637 () Bool)

(assert (=> b!7952637 (= e!4691055 (derivative!661 (derivativeStep!6503 baseR!116 (h!81028 testedP!447)) (t!390447 testedP!447)))))

(declare-fun b!7952638 () Bool)

(assert (=> b!7952638 (= e!4691055 baseR!116)))

(assert (= (and d!2376478 c!1460662) b!7952637))

(assert (= (and d!2376478 (not c!1460662)) b!7952638))

(declare-fun m!8336302 () Bool)

(assert (=> d!2376478 m!8336302))

(assert (=> d!2376478 m!8336200))

(declare-fun m!8336304 () Bool)

(assert (=> b!7952637 m!8336304))

(assert (=> b!7952637 m!8336304))

(declare-fun m!8336306 () Bool)

(assert (=> b!7952637 m!8336306))

(assert (=> b!7952505 d!2376478))

(declare-fun d!2376480 () Bool)

(declare-fun lt!2700710 () Int)

(assert (=> d!2376480 (>= lt!2700710 0)))

(declare-fun e!4691058 () Int)

(assert (=> d!2376480 (= lt!2700710 e!4691058)))

(declare-fun c!1460665 () Bool)

(assert (=> d!2376480 (= c!1460665 ((_ is Nil!74580) input!7927))))

(assert (=> d!2376480 (= (size!43411 input!7927) lt!2700710)))

(declare-fun b!7952643 () Bool)

(assert (=> b!7952643 (= e!4691058 0)))

(declare-fun b!7952644 () Bool)

(assert (=> b!7952644 (= e!4691058 (+ 1 (size!43411 (t!390447 input!7927))))))

(assert (= (and d!2376480 c!1460665) b!7952643))

(assert (= (and d!2376480 (not c!1460665)) b!7952644))

(declare-fun m!8336308 () Bool)

(assert (=> b!7952644 m!8336308))

(assert (=> b!7952506 d!2376480))

(declare-fun d!2376482 () Bool)

(assert (=> d!2376482 (= (isEmpty!42879 (_1!38609 (findLongestMatchInner!2256 r!24602 testedP!447 lt!2700665 lt!2700658 input!7927 lt!2700661))) ((_ is Nil!74580) (_1!38609 (findLongestMatchInner!2256 r!24602 testedP!447 lt!2700665 lt!2700658 input!7927 lt!2700661))))))

(assert (=> b!7952506 d!2376482))

(declare-fun d!2376484 () Bool)

(declare-fun lt!2700769 () List!74704)

(assert (=> d!2376484 (= (++!18345 testedP!447 lt!2700769) input!7927)))

(declare-fun e!4691073 () List!74704)

(assert (=> d!2376484 (= lt!2700769 e!4691073)))

(declare-fun c!1460680 () Bool)

(assert (=> d!2376484 (= c!1460680 ((_ is Cons!74580) testedP!447))))

(assert (=> d!2376484 (>= (size!43411 input!7927) (size!43411 testedP!447))))

(assert (=> d!2376484 (= (getSuffix!3778 input!7927 testedP!447) lt!2700769)))

(declare-fun b!7952673 () Bool)

(assert (=> b!7952673 (= e!4691073 (getSuffix!3778 (tail!15764 input!7927) (t!390447 testedP!447)))))

(declare-fun b!7952674 () Bool)

(assert (=> b!7952674 (= e!4691073 input!7927)))

(assert (= (and d!2376484 c!1460680) b!7952673))

(assert (= (and d!2376484 (not c!1460680)) b!7952674))

(declare-fun m!8336310 () Bool)

(assert (=> d!2376484 m!8336310))

(assert (=> d!2376484 m!8336192))

(assert (=> d!2376484 m!8336190))

(assert (=> b!7952673 m!8336256))

(assert (=> b!7952673 m!8336256))

(declare-fun m!8336312 () Bool)

(assert (=> b!7952673 m!8336312))

(assert (=> b!7952506 d!2376484))

(declare-fun d!2376486 () Bool)

(declare-fun lt!2700770 () Int)

(assert (=> d!2376486 (>= lt!2700770 0)))

(declare-fun e!4691074 () Int)

(assert (=> d!2376486 (= lt!2700770 e!4691074)))

(declare-fun c!1460681 () Bool)

(assert (=> d!2376486 (= c!1460681 ((_ is Nil!74580) testedP!447))))

(assert (=> d!2376486 (= (size!43411 testedP!447) lt!2700770)))

(declare-fun b!7952675 () Bool)

(assert (=> b!7952675 (= e!4691074 0)))

(declare-fun b!7952676 () Bool)

(assert (=> b!7952676 (= e!4691074 (+ 1 (size!43411 (t!390447 testedP!447))))))

(assert (= (and d!2376486 c!1460681) b!7952675))

(assert (= (and d!2376486 (not c!1460681)) b!7952676))

(declare-fun m!8336314 () Bool)

(assert (=> b!7952676 m!8336314))

(assert (=> b!7952506 d!2376486))

(declare-fun bm!737280 () Bool)

(declare-fun call!737290 () Unit!169876)

(assert (=> bm!737280 (= call!737290 (lemmaIsPrefixSameLengthThenSameList!1623 input!7927 testedP!447 input!7927))))

(declare-fun b!7952868 () Bool)

(declare-fun e!4691179 () Bool)

(declare-fun lt!2700881 () tuple2!70612)

(assert (=> b!7952868 (= e!4691179 (>= (size!43411 (_1!38609 lt!2700881)) (size!43411 testedP!447)))))

(declare-fun b!7952869 () Bool)

(declare-fun e!4691180 () tuple2!70612)

(assert (=> b!7952869 (= e!4691180 (tuple2!70613 Nil!74580 input!7927))))

(declare-fun bm!737281 () Bool)

(declare-fun call!737288 () List!74704)

(assert (=> bm!737281 (= call!737288 (tail!15764 lt!2700658))))

(declare-fun b!7952870 () Bool)

(declare-fun e!4691178 () tuple2!70612)

(assert (=> b!7952870 (= e!4691178 (tuple2!70613 testedP!447 Nil!74580))))

(declare-fun b!7952871 () Bool)

(declare-fun c!1460731 () Bool)

(declare-fun call!737289 () Bool)

(assert (=> b!7952871 (= c!1460731 call!737289)))

(declare-fun lt!2700889 () Unit!169876)

(declare-fun lt!2700884 () Unit!169876)

(assert (=> b!7952871 (= lt!2700889 lt!2700884)))

(assert (=> b!7952871 (= input!7927 testedP!447)))

(assert (=> b!7952871 (= lt!2700884 call!737290)))

(declare-fun lt!2700890 () Unit!169876)

(declare-fun lt!2700898 () Unit!169876)

(assert (=> b!7952871 (= lt!2700890 lt!2700898)))

(declare-fun call!737285 () Bool)

(assert (=> b!7952871 call!737285))

(declare-fun call!737291 () Unit!169876)

(assert (=> b!7952871 (= lt!2700898 call!737291)))

(declare-fun e!4691181 () tuple2!70612)

(assert (=> b!7952871 (= e!4691181 e!4691178)))

(declare-fun b!7952872 () Bool)

(assert (=> b!7952872 (= e!4691178 (tuple2!70613 Nil!74580 input!7927))))

(declare-fun b!7952873 () Bool)

(declare-fun e!4691176 () tuple2!70612)

(declare-fun lt!2700880 () tuple2!70612)

(assert (=> b!7952873 (= e!4691176 lt!2700880)))

(declare-fun bm!737282 () Bool)

(declare-fun call!737292 () Regex!21475)

(declare-fun call!737286 () C!43288)

(assert (=> bm!737282 (= call!737292 (derivativeStep!6503 r!24602 call!737286))))

(declare-fun b!7952874 () Bool)

(declare-fun e!4691175 () tuple2!70612)

(declare-fun call!737287 () tuple2!70612)

(assert (=> b!7952874 (= e!4691175 call!737287)))

(declare-fun bm!737283 () Bool)

(assert (=> bm!737283 (= call!737286 (head!16227 lt!2700658))))

(declare-fun bm!737284 () Bool)

(assert (=> bm!737284 (= call!737289 (nullable!9576 r!24602))))

(declare-fun b!7952875 () Bool)

(declare-fun e!4691182 () Unit!169876)

(declare-fun Unit!169883 () Unit!169876)

(assert (=> b!7952875 (= e!4691182 Unit!169883)))

(declare-fun lt!2700896 () Unit!169876)

(assert (=> b!7952875 (= lt!2700896 call!737291)))

(assert (=> b!7952875 call!737285))

(declare-fun lt!2700879 () Unit!169876)

(assert (=> b!7952875 (= lt!2700879 lt!2700896)))

(declare-fun lt!2700873 () Unit!169876)

(assert (=> b!7952875 (= lt!2700873 call!737290)))

(assert (=> b!7952875 (= input!7927 testedP!447)))

(declare-fun lt!2700892 () Unit!169876)

(assert (=> b!7952875 (= lt!2700892 lt!2700873)))

(assert (=> b!7952875 false))

(declare-fun bm!737285 () Bool)

(assert (=> bm!737285 (= call!737291 (lemmaIsPrefixRefl!4043 input!7927 input!7927))))

(declare-fun b!7952876 () Bool)

(declare-fun e!4691177 () Bool)

(assert (=> b!7952876 (= e!4691177 e!4691179)))

(declare-fun res!3153439 () Bool)

(assert (=> b!7952876 (=> res!3153439 e!4691179)))

(assert (=> b!7952876 (= res!3153439 (isEmpty!42879 (_1!38609 lt!2700881)))))

(declare-fun b!7952867 () Bool)

(assert (=> b!7952867 (= e!4691180 e!4691181)))

(declare-fun c!1460728 () Bool)

(assert (=> b!7952867 (= c!1460728 (= lt!2700665 lt!2700661))))

(declare-fun d!2376488 () Bool)

(assert (=> d!2376488 e!4691177))

(declare-fun res!3153440 () Bool)

(assert (=> d!2376488 (=> (not res!3153440) (not e!4691177))))

(assert (=> d!2376488 (= res!3153440 (= (++!18345 (_1!38609 lt!2700881) (_2!38609 lt!2700881)) input!7927))))

(assert (=> d!2376488 (= lt!2700881 e!4691180)))

(declare-fun c!1460727 () Bool)

(declare-fun lostCause!1964 (Regex!21475) Bool)

(assert (=> d!2376488 (= c!1460727 (lostCause!1964 r!24602))))

(declare-fun lt!2700883 () Unit!169876)

(declare-fun Unit!169884 () Unit!169876)

(assert (=> d!2376488 (= lt!2700883 Unit!169884)))

(assert (=> d!2376488 (= (getSuffix!3778 input!7927 testedP!447) lt!2700658)))

(declare-fun lt!2700900 () Unit!169876)

(declare-fun lt!2700875 () Unit!169876)

(assert (=> d!2376488 (= lt!2700900 lt!2700875)))

(declare-fun lt!2700882 () List!74704)

(assert (=> d!2376488 (= lt!2700658 lt!2700882)))

(declare-fun lemmaSamePrefixThenSameSuffix!2980 (List!74704 List!74704 List!74704 List!74704 List!74704) Unit!169876)

(assert (=> d!2376488 (= lt!2700875 (lemmaSamePrefixThenSameSuffix!2980 testedP!447 lt!2700658 testedP!447 lt!2700882 input!7927))))

(assert (=> d!2376488 (= lt!2700882 (getSuffix!3778 input!7927 testedP!447))))

(declare-fun lt!2700878 () Unit!169876)

(declare-fun lt!2700877 () Unit!169876)

(assert (=> d!2376488 (= lt!2700878 lt!2700877)))

(assert (=> d!2376488 (isPrefix!6575 testedP!447 (++!18345 testedP!447 lt!2700658))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3842 (List!74704 List!74704) Unit!169876)

(assert (=> d!2376488 (= lt!2700877 (lemmaConcatTwoListThenFirstIsPrefix!3842 testedP!447 lt!2700658))))

(assert (=> d!2376488 (validRegex!11779 r!24602)))

(assert (=> d!2376488 (= (findLongestMatchInner!2256 r!24602 testedP!447 lt!2700665 lt!2700658 input!7927 lt!2700661) lt!2700881)))

(declare-fun b!7952877 () Bool)

(declare-fun Unit!169885 () Unit!169876)

(assert (=> b!7952877 (= e!4691182 Unit!169885)))

(declare-fun bm!737286 () Bool)

(assert (=> bm!737286 (= call!737285 (isPrefix!6575 input!7927 input!7927))))

(declare-fun b!7952878 () Bool)

(assert (=> b!7952878 (= e!4691175 e!4691176)))

(assert (=> b!7952878 (= lt!2700880 call!737287)))

(declare-fun c!1460732 () Bool)

(assert (=> b!7952878 (= c!1460732 (isEmpty!42879 (_1!38609 lt!2700880)))))

(declare-fun b!7952879 () Bool)

(declare-fun c!1460730 () Bool)

(assert (=> b!7952879 (= c!1460730 call!737289)))

(declare-fun lt!2700894 () Unit!169876)

(declare-fun lt!2700891 () Unit!169876)

(assert (=> b!7952879 (= lt!2700894 lt!2700891)))

(declare-fun lt!2700874 () List!74704)

(declare-fun lt!2700899 () C!43288)

(assert (=> b!7952879 (= (++!18345 (++!18345 testedP!447 (Cons!74580 lt!2700899 Nil!74580)) lt!2700874) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3520 (List!74704 C!43288 List!74704 List!74704) Unit!169876)

(assert (=> b!7952879 (= lt!2700891 (lemmaMoveElementToOtherListKeepsConcatEq!3520 testedP!447 lt!2700899 lt!2700874 input!7927))))

(assert (=> b!7952879 (= lt!2700874 (tail!15764 lt!2700658))))

(assert (=> b!7952879 (= lt!2700899 (head!16227 lt!2700658))))

(declare-fun lt!2700885 () Unit!169876)

(declare-fun lt!2700895 () Unit!169876)

(assert (=> b!7952879 (= lt!2700885 lt!2700895)))

(assert (=> b!7952879 (isPrefix!6575 (++!18345 testedP!447 (Cons!74580 (head!16227 (getSuffix!3778 input!7927 testedP!447)) Nil!74580)) input!7927)))

(assert (=> b!7952879 (= lt!2700895 (lemmaAddHeadSuffixToPrefixStillPrefix!1302 testedP!447 input!7927))))

(declare-fun lt!2700888 () Unit!169876)

(declare-fun lt!2700887 () Unit!169876)

(assert (=> b!7952879 (= lt!2700888 lt!2700887)))

(assert (=> b!7952879 (= lt!2700887 (lemmaAddHeadSuffixToPrefixStillPrefix!1302 testedP!447 input!7927))))

(declare-fun lt!2700893 () List!74704)

(assert (=> b!7952879 (= lt!2700893 (++!18345 testedP!447 (Cons!74580 (head!16227 lt!2700658) Nil!74580)))))

(declare-fun lt!2700876 () Unit!169876)

(assert (=> b!7952879 (= lt!2700876 e!4691182)))

(declare-fun c!1460729 () Bool)

(assert (=> b!7952879 (= c!1460729 (= (size!43411 testedP!447) (size!43411 input!7927)))))

(declare-fun lt!2700897 () Unit!169876)

(declare-fun lt!2700886 () Unit!169876)

(assert (=> b!7952879 (= lt!2700897 lt!2700886)))

(assert (=> b!7952879 (<= (size!43411 testedP!447) (size!43411 input!7927))))

(assert (=> b!7952879 (= lt!2700886 (lemmaIsPrefixThenSmallerEqSize!1092 testedP!447 input!7927))))

(assert (=> b!7952879 (= e!4691181 e!4691175)))

(declare-fun b!7952880 () Bool)

(assert (=> b!7952880 (= e!4691176 (tuple2!70613 testedP!447 lt!2700658))))

(declare-fun bm!737287 () Bool)

(assert (=> bm!737287 (= call!737287 (findLongestMatchInner!2256 call!737292 lt!2700893 (+ lt!2700665 1) call!737288 input!7927 lt!2700661))))

(assert (= (and d!2376488 c!1460727) b!7952869))

(assert (= (and d!2376488 (not c!1460727)) b!7952867))

(assert (= (and b!7952867 c!1460728) b!7952871))

(assert (= (and b!7952867 (not c!1460728)) b!7952879))

(assert (= (and b!7952871 c!1460731) b!7952870))

(assert (= (and b!7952871 (not c!1460731)) b!7952872))

(assert (= (and b!7952879 c!1460729) b!7952875))

(assert (= (and b!7952879 (not c!1460729)) b!7952877))

(assert (= (and b!7952879 c!1460730) b!7952878))

(assert (= (and b!7952879 (not c!1460730)) b!7952874))

(assert (= (and b!7952878 c!1460732) b!7952880))

(assert (= (and b!7952878 (not c!1460732)) b!7952873))

(assert (= (or b!7952878 b!7952874) bm!737283))

(assert (= (or b!7952878 b!7952874) bm!737281))

(assert (= (or b!7952878 b!7952874) bm!737282))

(assert (= (or b!7952878 b!7952874) bm!737287))

(assert (= (or b!7952871 b!7952879) bm!737284))

(assert (= (or b!7952871 b!7952875) bm!737280))

(assert (= (or b!7952871 b!7952875) bm!737285))

(assert (= (or b!7952871 b!7952875) bm!737286))

(assert (= (and d!2376488 res!3153440) b!7952876))

(assert (= (and b!7952876 (not res!3153439)) b!7952868))

(declare-fun m!8336408 () Bool)

(assert (=> b!7952868 m!8336408))

(assert (=> b!7952868 m!8336190))

(assert (=> bm!737283 m!8336210))

(declare-fun m!8336410 () Bool)

(assert (=> b!7952878 m!8336410))

(declare-fun m!8336412 () Bool)

(assert (=> bm!737282 m!8336412))

(declare-fun m!8336414 () Bool)

(assert (=> bm!737287 m!8336414))

(assert (=> bm!737280 m!8336182))

(declare-fun m!8336416 () Bool)

(assert (=> bm!737281 m!8336416))

(declare-fun m!8336418 () Bool)

(assert (=> b!7952876 m!8336418))

(assert (=> b!7952879 m!8336210))

(assert (=> b!7952879 m!8336194))

(assert (=> b!7952879 m!8336240))

(declare-fun m!8336420 () Bool)

(assert (=> b!7952879 m!8336420))

(assert (=> b!7952879 m!8336212))

(assert (=> b!7952879 m!8336416))

(assert (=> b!7952879 m!8336238))

(assert (=> b!7952879 m!8336192))

(declare-fun m!8336422 () Bool)

(assert (=> b!7952879 m!8336422))

(declare-fun m!8336424 () Bool)

(assert (=> b!7952879 m!8336424))

(assert (=> b!7952879 m!8336424))

(declare-fun m!8336426 () Bool)

(assert (=> b!7952879 m!8336426))

(assert (=> b!7952879 m!8336184))

(assert (=> b!7952879 m!8336194))

(assert (=> b!7952879 m!8336238))

(assert (=> b!7952879 m!8336242))

(assert (=> b!7952879 m!8336190))

(assert (=> bm!737285 m!8336178))

(declare-fun m!8336428 () Bool)

(assert (=> d!2376488 m!8336428))

(assert (=> d!2376488 m!8336194))

(declare-fun m!8336430 () Bool)

(assert (=> d!2376488 m!8336430))

(declare-fun m!8336432 () Bool)

(assert (=> d!2376488 m!8336432))

(declare-fun m!8336434 () Bool)

(assert (=> d!2376488 m!8336434))

(declare-fun m!8336436 () Bool)

(assert (=> d!2376488 m!8336436))

(assert (=> d!2376488 m!8336432))

(declare-fun m!8336438 () Bool)

(assert (=> d!2376488 m!8336438))

(assert (=> d!2376488 m!8336294))

(assert (=> bm!737286 m!8336180))

(assert (=> bm!737284 m!8336204))

(assert (=> b!7952506 d!2376488))

(declare-fun b!7952881 () Bool)

(declare-fun e!4691185 () Bool)

(declare-fun e!4691184 () Bool)

(assert (=> b!7952881 (= e!4691185 e!4691184)))

(declare-fun res!3153444 () Bool)

(assert (=> b!7952881 (=> (not res!3153444) (not e!4691184))))

(assert (=> b!7952881 (= res!3153444 (not ((_ is Nil!74580) input!7927)))))

(declare-fun b!7952884 () Bool)

(declare-fun e!4691183 () Bool)

(assert (=> b!7952884 (= e!4691183 (>= (size!43411 input!7927) (size!43411 testedP!447)))))

(declare-fun b!7952883 () Bool)

(assert (=> b!7952883 (= e!4691184 (isPrefix!6575 (tail!15764 testedP!447) (tail!15764 input!7927)))))

(declare-fun d!2376516 () Bool)

(assert (=> d!2376516 e!4691183))

(declare-fun res!3153441 () Bool)

(assert (=> d!2376516 (=> res!3153441 e!4691183)))

(declare-fun lt!2700901 () Bool)

(assert (=> d!2376516 (= res!3153441 (not lt!2700901))))

(assert (=> d!2376516 (= lt!2700901 e!4691185)))

(declare-fun res!3153443 () Bool)

(assert (=> d!2376516 (=> res!3153443 e!4691185)))

(assert (=> d!2376516 (= res!3153443 ((_ is Nil!74580) testedP!447))))

(assert (=> d!2376516 (= (isPrefix!6575 testedP!447 input!7927) lt!2700901)))

(declare-fun b!7952882 () Bool)

(declare-fun res!3153442 () Bool)

(assert (=> b!7952882 (=> (not res!3153442) (not e!4691184))))

(assert (=> b!7952882 (= res!3153442 (= (head!16227 testedP!447) (head!16227 input!7927)))))

(assert (= (and d!2376516 (not res!3153443)) b!7952881))

(assert (= (and b!7952881 res!3153444) b!7952882))

(assert (= (and b!7952882 res!3153442) b!7952883))

(assert (= (and d!2376516 (not res!3153441)) b!7952884))

(assert (=> b!7952884 m!8336192))

(assert (=> b!7952884 m!8336190))

(declare-fun m!8336440 () Bool)

(assert (=> b!7952883 m!8336440))

(assert (=> b!7952883 m!8336256))

(assert (=> b!7952883 m!8336440))

(assert (=> b!7952883 m!8336256))

(declare-fun m!8336442 () Bool)

(assert (=> b!7952883 m!8336442))

(declare-fun m!8336444 () Bool)

(assert (=> b!7952882 m!8336444))

(assert (=> b!7952882 m!8336262))

(assert (=> b!7952493 d!2376516))

(declare-fun b!7952889 () Bool)

(declare-fun e!4691188 () Bool)

(declare-fun tp!2367273 () Bool)

(assert (=> b!7952889 (= e!4691188 (and tp_is_empty!53493 tp!2367273))))

(assert (=> b!7952497 (= tp!2367203 e!4691188)))

(assert (= (and b!7952497 ((_ is Cons!74580) (t!390447 input!7927))) b!7952889))

(declare-fun b!7952900 () Bool)

(declare-fun e!4691191 () Bool)

(assert (=> b!7952900 (= e!4691191 tp_is_empty!53493)))

(declare-fun b!7952901 () Bool)

(declare-fun tp!2367285 () Bool)

(declare-fun tp!2367284 () Bool)

(assert (=> b!7952901 (= e!4691191 (and tp!2367285 tp!2367284))))

(declare-fun b!7952902 () Bool)

(declare-fun tp!2367288 () Bool)

(assert (=> b!7952902 (= e!4691191 tp!2367288)))

(declare-fun b!7952903 () Bool)

(declare-fun tp!2367287 () Bool)

(declare-fun tp!2367286 () Bool)

(assert (=> b!7952903 (= e!4691191 (and tp!2367287 tp!2367286))))

(assert (=> b!7952503 (= tp!2367204 e!4691191)))

(assert (= (and b!7952503 ((_ is ElementMatch!21475) (regOne!43462 r!24602))) b!7952900))

(assert (= (and b!7952503 ((_ is Concat!30474) (regOne!43462 r!24602))) b!7952901))

(assert (= (and b!7952503 ((_ is Star!21475) (regOne!43462 r!24602))) b!7952902))

(assert (= (and b!7952503 ((_ is Union!21475) (regOne!43462 r!24602))) b!7952903))

(declare-fun b!7952904 () Bool)

(declare-fun e!4691192 () Bool)

(assert (=> b!7952904 (= e!4691192 tp_is_empty!53493)))

(declare-fun b!7952905 () Bool)

(declare-fun tp!2367290 () Bool)

(declare-fun tp!2367289 () Bool)

(assert (=> b!7952905 (= e!4691192 (and tp!2367290 tp!2367289))))

(declare-fun b!7952906 () Bool)

(declare-fun tp!2367293 () Bool)

(assert (=> b!7952906 (= e!4691192 tp!2367293)))

(declare-fun b!7952907 () Bool)

(declare-fun tp!2367292 () Bool)

(declare-fun tp!2367291 () Bool)

(assert (=> b!7952907 (= e!4691192 (and tp!2367292 tp!2367291))))

(assert (=> b!7952503 (= tp!2367199 e!4691192)))

(assert (= (and b!7952503 ((_ is ElementMatch!21475) (regTwo!43462 r!24602))) b!7952904))

(assert (= (and b!7952503 ((_ is Concat!30474) (regTwo!43462 r!24602))) b!7952905))

(assert (= (and b!7952503 ((_ is Star!21475) (regTwo!43462 r!24602))) b!7952906))

(assert (= (and b!7952503 ((_ is Union!21475) (regTwo!43462 r!24602))) b!7952907))

(declare-fun b!7952908 () Bool)

(declare-fun e!4691193 () Bool)

(assert (=> b!7952908 (= e!4691193 tp_is_empty!53493)))

(declare-fun b!7952909 () Bool)

(declare-fun tp!2367295 () Bool)

(declare-fun tp!2367294 () Bool)

(assert (=> b!7952909 (= e!4691193 (and tp!2367295 tp!2367294))))

(declare-fun b!7952910 () Bool)

(declare-fun tp!2367298 () Bool)

(assert (=> b!7952910 (= e!4691193 tp!2367298)))

(declare-fun b!7952911 () Bool)

(declare-fun tp!2367297 () Bool)

(declare-fun tp!2367296 () Bool)

(assert (=> b!7952911 (= e!4691193 (and tp!2367297 tp!2367296))))

(assert (=> b!7952501 (= tp!2367201 e!4691193)))

(assert (= (and b!7952501 ((_ is ElementMatch!21475) (regOne!43463 r!24602))) b!7952908))

(assert (= (and b!7952501 ((_ is Concat!30474) (regOne!43463 r!24602))) b!7952909))

(assert (= (and b!7952501 ((_ is Star!21475) (regOne!43463 r!24602))) b!7952910))

(assert (= (and b!7952501 ((_ is Union!21475) (regOne!43463 r!24602))) b!7952911))

(declare-fun b!7952912 () Bool)

(declare-fun e!4691194 () Bool)

(assert (=> b!7952912 (= e!4691194 tp_is_empty!53493)))

(declare-fun b!7952913 () Bool)

(declare-fun tp!2367300 () Bool)

(declare-fun tp!2367299 () Bool)

(assert (=> b!7952913 (= e!4691194 (and tp!2367300 tp!2367299))))

(declare-fun b!7952914 () Bool)

(declare-fun tp!2367303 () Bool)

(assert (=> b!7952914 (= e!4691194 tp!2367303)))

(declare-fun b!7952915 () Bool)

(declare-fun tp!2367302 () Bool)

(declare-fun tp!2367301 () Bool)

(assert (=> b!7952915 (= e!4691194 (and tp!2367302 tp!2367301))))

(assert (=> b!7952501 (= tp!2367206 e!4691194)))

(assert (= (and b!7952501 ((_ is ElementMatch!21475) (regTwo!43463 r!24602))) b!7952912))

(assert (= (and b!7952501 ((_ is Concat!30474) (regTwo!43463 r!24602))) b!7952913))

(assert (= (and b!7952501 ((_ is Star!21475) (regTwo!43463 r!24602))) b!7952914))

(assert (= (and b!7952501 ((_ is Union!21475) (regTwo!43463 r!24602))) b!7952915))

(declare-fun b!7952916 () Bool)

(declare-fun e!4691195 () Bool)

(assert (=> b!7952916 (= e!4691195 tp_is_empty!53493)))

(declare-fun b!7952917 () Bool)

(declare-fun tp!2367305 () Bool)

(declare-fun tp!2367304 () Bool)

(assert (=> b!7952917 (= e!4691195 (and tp!2367305 tp!2367304))))

(declare-fun b!7952918 () Bool)

(declare-fun tp!2367308 () Bool)

(assert (=> b!7952918 (= e!4691195 tp!2367308)))

(declare-fun b!7952919 () Bool)

(declare-fun tp!2367307 () Bool)

(declare-fun tp!2367306 () Bool)

(assert (=> b!7952919 (= e!4691195 (and tp!2367307 tp!2367306))))

(assert (=> b!7952496 (= tp!2367196 e!4691195)))

(assert (= (and b!7952496 ((_ is ElementMatch!21475) (regOne!43463 baseR!116))) b!7952916))

(assert (= (and b!7952496 ((_ is Concat!30474) (regOne!43463 baseR!116))) b!7952917))

(assert (= (and b!7952496 ((_ is Star!21475) (regOne!43463 baseR!116))) b!7952918))

(assert (= (and b!7952496 ((_ is Union!21475) (regOne!43463 baseR!116))) b!7952919))

(declare-fun b!7952920 () Bool)

(declare-fun e!4691196 () Bool)

(assert (=> b!7952920 (= e!4691196 tp_is_empty!53493)))

(declare-fun b!7952921 () Bool)

(declare-fun tp!2367310 () Bool)

(declare-fun tp!2367309 () Bool)

(assert (=> b!7952921 (= e!4691196 (and tp!2367310 tp!2367309))))

(declare-fun b!7952922 () Bool)

(declare-fun tp!2367313 () Bool)

(assert (=> b!7952922 (= e!4691196 tp!2367313)))

(declare-fun b!7952923 () Bool)

(declare-fun tp!2367312 () Bool)

(declare-fun tp!2367311 () Bool)

(assert (=> b!7952923 (= e!4691196 (and tp!2367312 tp!2367311))))

(assert (=> b!7952496 (= tp!2367205 e!4691196)))

(assert (= (and b!7952496 ((_ is ElementMatch!21475) (regTwo!43463 baseR!116))) b!7952920))

(assert (= (and b!7952496 ((_ is Concat!30474) (regTwo!43463 baseR!116))) b!7952921))

(assert (= (and b!7952496 ((_ is Star!21475) (regTwo!43463 baseR!116))) b!7952922))

(assert (= (and b!7952496 ((_ is Union!21475) (regTwo!43463 baseR!116))) b!7952923))

(declare-fun b!7952924 () Bool)

(declare-fun e!4691197 () Bool)

(assert (=> b!7952924 (= e!4691197 tp_is_empty!53493)))

(declare-fun b!7952925 () Bool)

(declare-fun tp!2367315 () Bool)

(declare-fun tp!2367314 () Bool)

(assert (=> b!7952925 (= e!4691197 (and tp!2367315 tp!2367314))))

(declare-fun b!7952926 () Bool)

(declare-fun tp!2367318 () Bool)

(assert (=> b!7952926 (= e!4691197 tp!2367318)))

(declare-fun b!7952927 () Bool)

(declare-fun tp!2367317 () Bool)

(declare-fun tp!2367316 () Bool)

(assert (=> b!7952927 (= e!4691197 (and tp!2367317 tp!2367316))))

(assert (=> b!7952491 (= tp!2367202 e!4691197)))

(assert (= (and b!7952491 ((_ is ElementMatch!21475) (regOne!43462 baseR!116))) b!7952924))

(assert (= (and b!7952491 ((_ is Concat!30474) (regOne!43462 baseR!116))) b!7952925))

(assert (= (and b!7952491 ((_ is Star!21475) (regOne!43462 baseR!116))) b!7952926))

(assert (= (and b!7952491 ((_ is Union!21475) (regOne!43462 baseR!116))) b!7952927))

(declare-fun b!7952928 () Bool)

(declare-fun e!4691198 () Bool)

(assert (=> b!7952928 (= e!4691198 tp_is_empty!53493)))

(declare-fun b!7952929 () Bool)

(declare-fun tp!2367320 () Bool)

(declare-fun tp!2367319 () Bool)

(assert (=> b!7952929 (= e!4691198 (and tp!2367320 tp!2367319))))

(declare-fun b!7952930 () Bool)

(declare-fun tp!2367323 () Bool)

(assert (=> b!7952930 (= e!4691198 tp!2367323)))

(declare-fun b!7952931 () Bool)

(declare-fun tp!2367322 () Bool)

(declare-fun tp!2367321 () Bool)

(assert (=> b!7952931 (= e!4691198 (and tp!2367322 tp!2367321))))

(assert (=> b!7952491 (= tp!2367198 e!4691198)))

(assert (= (and b!7952491 ((_ is ElementMatch!21475) (regTwo!43462 baseR!116))) b!7952928))

(assert (= (and b!7952491 ((_ is Concat!30474) (regTwo!43462 baseR!116))) b!7952929))

(assert (= (and b!7952491 ((_ is Star!21475) (regTwo!43462 baseR!116))) b!7952930))

(assert (= (and b!7952491 ((_ is Union!21475) (regTwo!43462 baseR!116))) b!7952931))

(declare-fun b!7952932 () Bool)

(declare-fun e!4691199 () Bool)

(declare-fun tp!2367324 () Bool)

(assert (=> b!7952932 (= e!4691199 (and tp_is_empty!53493 tp!2367324))))

(assert (=> b!7952507 (= tp!2367197 e!4691199)))

(assert (= (and b!7952507 ((_ is Cons!74580) (t!390447 testedP!447))) b!7952932))

(declare-fun b!7952933 () Bool)

(declare-fun e!4691200 () Bool)

(assert (=> b!7952933 (= e!4691200 tp_is_empty!53493)))

(declare-fun b!7952934 () Bool)

(declare-fun tp!2367326 () Bool)

(declare-fun tp!2367325 () Bool)

(assert (=> b!7952934 (= e!4691200 (and tp!2367326 tp!2367325))))

(declare-fun b!7952935 () Bool)

(declare-fun tp!2367329 () Bool)

(assert (=> b!7952935 (= e!4691200 tp!2367329)))

(declare-fun b!7952936 () Bool)

(declare-fun tp!2367328 () Bool)

(declare-fun tp!2367327 () Bool)

(assert (=> b!7952936 (= e!4691200 (and tp!2367328 tp!2367327))))

(assert (=> b!7952495 (= tp!2367195 e!4691200)))

(assert (= (and b!7952495 ((_ is ElementMatch!21475) (reg!21804 baseR!116))) b!7952933))

(assert (= (and b!7952495 ((_ is Concat!30474) (reg!21804 baseR!116))) b!7952934))

(assert (= (and b!7952495 ((_ is Star!21475) (reg!21804 baseR!116))) b!7952935))

(assert (= (and b!7952495 ((_ is Union!21475) (reg!21804 baseR!116))) b!7952936))

(declare-fun b!7952937 () Bool)

(declare-fun e!4691201 () Bool)

(assert (=> b!7952937 (= e!4691201 tp_is_empty!53493)))

(declare-fun b!7952938 () Bool)

(declare-fun tp!2367331 () Bool)

(declare-fun tp!2367330 () Bool)

(assert (=> b!7952938 (= e!4691201 (and tp!2367331 tp!2367330))))

(declare-fun b!7952939 () Bool)

(declare-fun tp!2367334 () Bool)

(assert (=> b!7952939 (= e!4691201 tp!2367334)))

(declare-fun b!7952940 () Bool)

(declare-fun tp!2367333 () Bool)

(declare-fun tp!2367332 () Bool)

(assert (=> b!7952940 (= e!4691201 (and tp!2367333 tp!2367332))))

(assert (=> b!7952494 (= tp!2367200 e!4691201)))

(assert (= (and b!7952494 ((_ is ElementMatch!21475) (reg!21804 r!24602))) b!7952937))

(assert (= (and b!7952494 ((_ is Concat!30474) (reg!21804 r!24602))) b!7952938))

(assert (= (and b!7952494 ((_ is Star!21475) (reg!21804 r!24602))) b!7952939))

(assert (= (and b!7952494 ((_ is Union!21475) (reg!21804 r!24602))) b!7952940))

(check-sat (not bm!737201) (not b!7952919) (not d!2376478) (not b!7952882) (not d!2376450) (not b!7952922) (not b!7952587) (not b!7952632) (not b!7952932) (not bm!737282) (not b!7952637) (not b!7952676) (not b!7952940) (not bm!737280) (not b!7952575) (not b!7952925) (not bm!737287) (not b!7952938) (not b!7952926) (not b!7952917) (not b!7952931) (not bm!737200) (not b!7952889) (not b!7952541) (not b!7952930) (not b!7952939) (not b!7952911) (not bm!737215) (not b!7952884) (not bm!737203) (not b!7952868) (not b!7952929) (not b!7952935) (not bm!737285) (not b!7952588) (not b!7952631) (not b!7952906) (not bm!737281) (not b!7952936) (not b!7952627) (not b!7952923) (not d!2376460) (not d!2376476) tp_is_empty!53493 (not b!7952918) (not d!2376466) (not b!7952902) (not b!7952915) (not b!7952913) (not bm!737286) (not bm!737283) (not b!7952907) (not b!7952644) (not d!2376484) (not b!7952927) (not b!7952910) (not b!7952577) (not b!7952883) (not b!7952909) (not b!7952905) (not b!7952901) (not b!7952921) (not b!7952876) (not b!7952673) (not d!2376472) (not b!7952934) (not bm!737198) (not bm!737284) (not b!7952914) (not b!7952879) (not d!2376470) (not b!7952903) (not d!2376464) (not d!2376488) (not b!7952630) (not b!7952576) (not b!7952590) (not bm!737214) (not b!7952878))
(check-sat)
