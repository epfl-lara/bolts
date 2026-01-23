; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743510 () Bool)

(assert start!743510)

(declare-fun b!7858715 () Bool)

(declare-fun res!3124236 () Bool)

(declare-fun e!4644492 () Bool)

(assert (=> b!7858715 (=> (not res!3124236) (not e!4644492))))

(declare-datatypes ((C!42536 0))(
  ( (C!42537 (val!31730 Int)) )
))
(declare-datatypes ((Regex!21105 0))(
  ( (ElementMatch!21105 (c!1444257 C!42536)) (Concat!29950 (regOne!42722 Regex!21105) (regTwo!42722 Regex!21105)) (EmptyExpr!21105) (Star!21105 (reg!21434 Regex!21105)) (EmptyLang!21105) (Union!21105 (regOne!42723 Regex!21105) (regTwo!42723 Regex!21105)) )
))
(declare-fun r1!6227 () Regex!21105)

(declare-fun nullable!9377 (Regex!21105) Bool)

(assert (=> b!7858715 (= res!3124236 (nullable!9377 r1!6227))))

(declare-fun b!7858717 () Bool)

(declare-fun res!3124237 () Bool)

(assert (=> b!7858717 (=> (not res!3124237) (not e!4644492))))

(declare-datatypes ((List!73964 0))(
  ( (Nil!73840) (Cons!73840 (h!80288 C!42536) (t!388699 List!73964)) )
))
(declare-fun s1!4084 () List!73964)

(get-info :version)

(assert (=> b!7858717 (= res!3124237 (not ((_ is Cons!73840) s1!4084)))))

(declare-fun b!7858718 () Bool)

(declare-fun res!3124240 () Bool)

(assert (=> b!7858718 (=> (not res!3124240) (not e!4644492))))

(declare-fun r2!6165 () Regex!21105)

(declare-fun validRegex!11515 (Regex!21105) Bool)

(assert (=> b!7858718 (= res!3124240 (validRegex!11515 r2!6165))))

(declare-fun b!7858719 () Bool)

(declare-fun res!3124238 () Bool)

(assert (=> b!7858719 (=> (not res!3124238) (not e!4644492))))

(declare-fun matchR!10541 (Regex!21105 List!73964) Bool)

(assert (=> b!7858719 (= res!3124238 (matchR!10541 r1!6227 s1!4084))))

(declare-fun b!7858720 () Bool)

(declare-fun e!4644491 () Bool)

(declare-fun tp_is_empty!52609 () Bool)

(declare-fun tp!2328641 () Bool)

(assert (=> b!7858720 (= e!4644491 (and tp_is_empty!52609 tp!2328641))))

(declare-fun b!7858721 () Bool)

(declare-fun e!4644493 () Bool)

(declare-fun tp!2328642 () Bool)

(declare-fun tp!2328651 () Bool)

(assert (=> b!7858721 (= e!4644493 (and tp!2328642 tp!2328651))))

(declare-fun b!7858722 () Bool)

(declare-fun tp!2328650 () Bool)

(assert (=> b!7858722 (= e!4644493 tp!2328650)))

(declare-fun b!7858723 () Bool)

(assert (=> b!7858723 (= e!4644493 tp_is_empty!52609)))

(declare-fun b!7858724 () Bool)

(declare-fun e!4644495 () Bool)

(declare-fun tp!2328647 () Bool)

(declare-fun tp!2328649 () Bool)

(assert (=> b!7858724 (= e!4644495 (and tp!2328647 tp!2328649))))

(declare-fun b!7858725 () Bool)

(declare-fun res!3124235 () Bool)

(assert (=> b!7858725 (=> (not res!3124235) (not e!4644492))))

(declare-fun s2!3706 () List!73964)

(assert (=> b!7858725 (= res!3124235 (matchR!10541 r2!6165 s2!3706))))

(declare-fun b!7858726 () Bool)

(declare-fun tp!2328646 () Bool)

(assert (=> b!7858726 (= e!4644495 tp!2328646)))

(declare-fun b!7858727 () Bool)

(declare-fun tp!2328644 () Bool)

(declare-fun tp!2328648 () Bool)

(assert (=> b!7858727 (= e!4644495 (and tp!2328644 tp!2328648))))

(declare-fun b!7858728 () Bool)

(declare-fun lt!2680180 () Regex!21105)

(declare-fun ++!18103 (List!73964 List!73964) List!73964)

(assert (=> b!7858728 (= e!4644492 (not (matchR!10541 lt!2680180 (++!18103 s1!4084 s2!3706))))))

(assert (=> b!7858728 (matchR!10541 lt!2680180 s2!3706)))

(assert (=> b!7858728 (= lt!2680180 (Concat!29950 r1!6227 r2!6165))))

(declare-datatypes ((Unit!168932 0))(
  ( (Unit!168933) )
))
(declare-fun lt!2680181 () Unit!168932)

(declare-fun lemmaRegexConcatWithNullableAcceptsSameStr!4 (Regex!21105 Regex!21105 List!73964) Unit!168932)

(assert (=> b!7858728 (= lt!2680181 (lemmaRegexConcatWithNullableAcceptsSameStr!4 r2!6165 r1!6227 s2!3706))))

(declare-fun res!3124239 () Bool)

(assert (=> start!743510 (=> (not res!3124239) (not e!4644492))))

(assert (=> start!743510 (= res!3124239 (validRegex!11515 r1!6227))))

(assert (=> start!743510 e!4644492))

(assert (=> start!743510 e!4644495))

(assert (=> start!743510 e!4644493))

(declare-fun e!4644494 () Bool)

(assert (=> start!743510 e!4644494))

(assert (=> start!743510 e!4644491))

(declare-fun b!7858716 () Bool)

(declare-fun tp!2328643 () Bool)

(assert (=> b!7858716 (= e!4644494 (and tp_is_empty!52609 tp!2328643))))

(declare-fun b!7858729 () Bool)

(assert (=> b!7858729 (= e!4644495 tp_is_empty!52609)))

(declare-fun b!7858730 () Bool)

(declare-fun tp!2328645 () Bool)

(declare-fun tp!2328652 () Bool)

(assert (=> b!7858730 (= e!4644493 (and tp!2328645 tp!2328652))))

(assert (= (and start!743510 res!3124239) b!7858718))

(assert (= (and b!7858718 res!3124240) b!7858719))

(assert (= (and b!7858719 res!3124238) b!7858725))

(assert (= (and b!7858725 res!3124235) b!7858717))

(assert (= (and b!7858717 res!3124237) b!7858715))

(assert (= (and b!7858715 res!3124236) b!7858728))

(assert (= (and start!743510 ((_ is ElementMatch!21105) r1!6227)) b!7858729))

(assert (= (and start!743510 ((_ is Concat!29950) r1!6227)) b!7858727))

(assert (= (and start!743510 ((_ is Star!21105) r1!6227)) b!7858726))

(assert (= (and start!743510 ((_ is Union!21105) r1!6227)) b!7858724))

(assert (= (and start!743510 ((_ is ElementMatch!21105) r2!6165)) b!7858723))

(assert (= (and start!743510 ((_ is Concat!29950) r2!6165)) b!7858730))

(assert (= (and start!743510 ((_ is Star!21105) r2!6165)) b!7858722))

(assert (= (and start!743510 ((_ is Union!21105) r2!6165)) b!7858721))

(assert (= (and start!743510 ((_ is Cons!73840) s1!4084)) b!7858716))

(assert (= (and start!743510 ((_ is Cons!73840) s2!3706)) b!7858720))

(declare-fun m!8261434 () Bool)

(assert (=> b!7858725 m!8261434))

(declare-fun m!8261436 () Bool)

(assert (=> b!7858715 m!8261436))

(declare-fun m!8261438 () Bool)

(assert (=> b!7858719 m!8261438))

(declare-fun m!8261440 () Bool)

(assert (=> start!743510 m!8261440))

(declare-fun m!8261442 () Bool)

(assert (=> b!7858718 m!8261442))

(declare-fun m!8261444 () Bool)

(assert (=> b!7858728 m!8261444))

(assert (=> b!7858728 m!8261444))

(declare-fun m!8261446 () Bool)

(assert (=> b!7858728 m!8261446))

(declare-fun m!8261448 () Bool)

(assert (=> b!7858728 m!8261448))

(declare-fun m!8261450 () Bool)

(assert (=> b!7858728 m!8261450))

(check-sat tp_is_empty!52609 (not b!7858720) (not b!7858725) (not b!7858716) (not b!7858730) (not b!7858726) (not b!7858727) (not b!7858722) (not b!7858718) (not b!7858721) (not b!7858715) (not b!7858724) (not b!7858719) (not start!743510) (not b!7858728))
(check-sat)
(get-model)

(declare-fun b!7858786 () Bool)

(declare-fun e!4644533 () Bool)

(declare-fun derivativeStep!6339 (Regex!21105 C!42536) Regex!21105)

(declare-fun head!16059 (List!73964) C!42536)

(declare-fun tail!15602 (List!73964) List!73964)

(assert (=> b!7858786 (= e!4644533 (matchR!10541 (derivativeStep!6339 r2!6165 (head!16059 s2!3706)) (tail!15602 s2!3706)))))

(declare-fun bm!728595 () Bool)

(declare-fun call!728600 () Bool)

(declare-fun isEmpty!42348 (List!73964) Bool)

(assert (=> bm!728595 (= call!728600 (isEmpty!42348 s2!3706))))

(declare-fun b!7858788 () Bool)

(assert (=> b!7858788 (= e!4644533 (nullable!9377 r2!6165))))

(declare-fun b!7858789 () Bool)

(declare-fun e!4644535 () Bool)

(declare-fun lt!2680184 () Bool)

(assert (=> b!7858789 (= e!4644535 (= lt!2680184 call!728600))))

(declare-fun b!7858790 () Bool)

(declare-fun res!3124275 () Bool)

(declare-fun e!4644531 () Bool)

(assert (=> b!7858790 (=> res!3124275 e!4644531)))

(assert (=> b!7858790 (= res!3124275 (not ((_ is ElementMatch!21105) r2!6165)))))

(declare-fun e!4644534 () Bool)

(assert (=> b!7858790 (= e!4644534 e!4644531)))

(declare-fun b!7858791 () Bool)

(declare-fun res!3124276 () Bool)

(declare-fun e!4644532 () Bool)

(assert (=> b!7858791 (=> (not res!3124276) (not e!4644532))))

(assert (=> b!7858791 (= res!3124276 (not call!728600))))

(declare-fun b!7858792 () Bool)

(declare-fun e!4644537 () Bool)

(assert (=> b!7858792 (= e!4644537 (not (= (head!16059 s2!3706) (c!1444257 r2!6165))))))

(declare-fun b!7858787 () Bool)

(assert (=> b!7858787 (= e!4644535 e!4644534)))

(declare-fun c!1444272 () Bool)

(assert (=> b!7858787 (= c!1444272 ((_ is EmptyLang!21105) r2!6165))))

(declare-fun d!2354269 () Bool)

(assert (=> d!2354269 e!4644535))

(declare-fun c!1444270 () Bool)

(assert (=> d!2354269 (= c!1444270 ((_ is EmptyExpr!21105) r2!6165))))

(assert (=> d!2354269 (= lt!2680184 e!4644533)))

(declare-fun c!1444271 () Bool)

(assert (=> d!2354269 (= c!1444271 (isEmpty!42348 s2!3706))))

(assert (=> d!2354269 (validRegex!11515 r2!6165)))

(assert (=> d!2354269 (= (matchR!10541 r2!6165 s2!3706) lt!2680184)))

(declare-fun b!7858793 () Bool)

(assert (=> b!7858793 (= e!4644534 (not lt!2680184))))

(declare-fun b!7858794 () Bool)

(declare-fun e!4644536 () Bool)

(assert (=> b!7858794 (= e!4644536 e!4644537)))

(declare-fun res!3124274 () Bool)

(assert (=> b!7858794 (=> res!3124274 e!4644537)))

(assert (=> b!7858794 (= res!3124274 call!728600)))

(declare-fun b!7858795 () Bool)

(assert (=> b!7858795 (= e!4644531 e!4644536)))

(declare-fun res!3124278 () Bool)

(assert (=> b!7858795 (=> (not res!3124278) (not e!4644536))))

(assert (=> b!7858795 (= res!3124278 (not lt!2680184))))

(declare-fun b!7858796 () Bool)

(declare-fun res!3124279 () Bool)

(assert (=> b!7858796 (=> (not res!3124279) (not e!4644532))))

(assert (=> b!7858796 (= res!3124279 (isEmpty!42348 (tail!15602 s2!3706)))))

(declare-fun b!7858797 () Bool)

(declare-fun res!3124273 () Bool)

(assert (=> b!7858797 (=> res!3124273 e!4644537)))

(assert (=> b!7858797 (= res!3124273 (not (isEmpty!42348 (tail!15602 s2!3706))))))

(declare-fun b!7858798 () Bool)

(assert (=> b!7858798 (= e!4644532 (= (head!16059 s2!3706) (c!1444257 r2!6165)))))

(declare-fun b!7858799 () Bool)

(declare-fun res!3124272 () Bool)

(assert (=> b!7858799 (=> res!3124272 e!4644531)))

(assert (=> b!7858799 (= res!3124272 e!4644532)))

(declare-fun res!3124277 () Bool)

(assert (=> b!7858799 (=> (not res!3124277) (not e!4644532))))

(assert (=> b!7858799 (= res!3124277 lt!2680184)))

(assert (= (and d!2354269 c!1444271) b!7858788))

(assert (= (and d!2354269 (not c!1444271)) b!7858786))

(assert (= (and d!2354269 c!1444270) b!7858789))

(assert (= (and d!2354269 (not c!1444270)) b!7858787))

(assert (= (and b!7858787 c!1444272) b!7858793))

(assert (= (and b!7858787 (not c!1444272)) b!7858790))

(assert (= (and b!7858790 (not res!3124275)) b!7858799))

(assert (= (and b!7858799 res!3124277) b!7858791))

(assert (= (and b!7858791 res!3124276) b!7858796))

(assert (= (and b!7858796 res!3124279) b!7858798))

(assert (= (and b!7858799 (not res!3124272)) b!7858795))

(assert (= (and b!7858795 res!3124278) b!7858794))

(assert (= (and b!7858794 (not res!3124274)) b!7858797))

(assert (= (and b!7858797 (not res!3124273)) b!7858792))

(assert (= (or b!7858789 b!7858791 b!7858794) bm!728595))

(declare-fun m!8261458 () Bool)

(assert (=> bm!728595 m!8261458))

(declare-fun m!8261460 () Bool)

(assert (=> b!7858796 m!8261460))

(assert (=> b!7858796 m!8261460))

(declare-fun m!8261462 () Bool)

(assert (=> b!7858796 m!8261462))

(declare-fun m!8261464 () Bool)

(assert (=> b!7858788 m!8261464))

(declare-fun m!8261466 () Bool)

(assert (=> b!7858798 m!8261466))

(assert (=> b!7858797 m!8261460))

(assert (=> b!7858797 m!8261460))

(assert (=> b!7858797 m!8261462))

(assert (=> d!2354269 m!8261458))

(assert (=> d!2354269 m!8261442))

(assert (=> b!7858786 m!8261466))

(assert (=> b!7858786 m!8261466))

(declare-fun m!8261468 () Bool)

(assert (=> b!7858786 m!8261468))

(assert (=> b!7858786 m!8261460))

(assert (=> b!7858786 m!8261468))

(assert (=> b!7858786 m!8261460))

(declare-fun m!8261470 () Bool)

(assert (=> b!7858786 m!8261470))

(assert (=> b!7858792 m!8261466))

(assert (=> b!7858725 d!2354269))

(declare-fun d!2354273 () Bool)

(declare-fun nullableFct!3700 (Regex!21105) Bool)

(assert (=> d!2354273 (= (nullable!9377 r1!6227) (nullableFct!3700 r1!6227))))

(declare-fun bs!1967167 () Bool)

(assert (= bs!1967167 d!2354273))

(declare-fun m!8261472 () Bool)

(assert (=> bs!1967167 m!8261472))

(assert (=> b!7858715 d!2354273))

(declare-fun b!7858828 () Bool)

(declare-fun e!4644554 () Bool)

(assert (=> b!7858828 (= e!4644554 (matchR!10541 (derivativeStep!6339 r1!6227 (head!16059 s1!4084)) (tail!15602 s1!4084)))))

(declare-fun bm!728596 () Bool)

(declare-fun call!728603 () Bool)

(assert (=> bm!728596 (= call!728603 (isEmpty!42348 s1!4084))))

(declare-fun b!7858830 () Bool)

(assert (=> b!7858830 (= e!4644554 (nullable!9377 r1!6227))))

(declare-fun b!7858831 () Bool)

(declare-fun e!4644556 () Bool)

(declare-fun lt!2680187 () Bool)

(assert (=> b!7858831 (= e!4644556 (= lt!2680187 call!728603))))

(declare-fun b!7858832 () Bool)

(declare-fun res!3124299 () Bool)

(declare-fun e!4644552 () Bool)

(assert (=> b!7858832 (=> res!3124299 e!4644552)))

(assert (=> b!7858832 (= res!3124299 (not ((_ is ElementMatch!21105) r1!6227)))))

(declare-fun e!4644555 () Bool)

(assert (=> b!7858832 (= e!4644555 e!4644552)))

(declare-fun b!7858833 () Bool)

(declare-fun res!3124300 () Bool)

(declare-fun e!4644553 () Bool)

(assert (=> b!7858833 (=> (not res!3124300) (not e!4644553))))

(assert (=> b!7858833 (= res!3124300 (not call!728603))))

(declare-fun b!7858834 () Bool)

(declare-fun e!4644558 () Bool)

(assert (=> b!7858834 (= e!4644558 (not (= (head!16059 s1!4084) (c!1444257 r1!6227))))))

(declare-fun b!7858829 () Bool)

(assert (=> b!7858829 (= e!4644556 e!4644555)))

(declare-fun c!1444281 () Bool)

(assert (=> b!7858829 (= c!1444281 ((_ is EmptyLang!21105) r1!6227))))

(declare-fun d!2354275 () Bool)

(assert (=> d!2354275 e!4644556))

(declare-fun c!1444279 () Bool)

(assert (=> d!2354275 (= c!1444279 ((_ is EmptyExpr!21105) r1!6227))))

(assert (=> d!2354275 (= lt!2680187 e!4644554)))

(declare-fun c!1444280 () Bool)

(assert (=> d!2354275 (= c!1444280 (isEmpty!42348 s1!4084))))

(assert (=> d!2354275 (validRegex!11515 r1!6227)))

(assert (=> d!2354275 (= (matchR!10541 r1!6227 s1!4084) lt!2680187)))

(declare-fun b!7858835 () Bool)

(assert (=> b!7858835 (= e!4644555 (not lt!2680187))))

(declare-fun b!7858836 () Bool)

(declare-fun e!4644557 () Bool)

(assert (=> b!7858836 (= e!4644557 e!4644558)))

(declare-fun res!3124298 () Bool)

(assert (=> b!7858836 (=> res!3124298 e!4644558)))

(assert (=> b!7858836 (= res!3124298 call!728603)))

(declare-fun b!7858837 () Bool)

(assert (=> b!7858837 (= e!4644552 e!4644557)))

(declare-fun res!3124302 () Bool)

(assert (=> b!7858837 (=> (not res!3124302) (not e!4644557))))

(assert (=> b!7858837 (= res!3124302 (not lt!2680187))))

(declare-fun b!7858838 () Bool)

(declare-fun res!3124303 () Bool)

(assert (=> b!7858838 (=> (not res!3124303) (not e!4644553))))

(assert (=> b!7858838 (= res!3124303 (isEmpty!42348 (tail!15602 s1!4084)))))

(declare-fun b!7858839 () Bool)

(declare-fun res!3124297 () Bool)

(assert (=> b!7858839 (=> res!3124297 e!4644558)))

(assert (=> b!7858839 (= res!3124297 (not (isEmpty!42348 (tail!15602 s1!4084))))))

(declare-fun b!7858840 () Bool)

(assert (=> b!7858840 (= e!4644553 (= (head!16059 s1!4084) (c!1444257 r1!6227)))))

(declare-fun b!7858841 () Bool)

(declare-fun res!3124296 () Bool)

(assert (=> b!7858841 (=> res!3124296 e!4644552)))

(assert (=> b!7858841 (= res!3124296 e!4644553)))

(declare-fun res!3124301 () Bool)

(assert (=> b!7858841 (=> (not res!3124301) (not e!4644553))))

(assert (=> b!7858841 (= res!3124301 lt!2680187)))

(assert (= (and d!2354275 c!1444280) b!7858830))

(assert (= (and d!2354275 (not c!1444280)) b!7858828))

(assert (= (and d!2354275 c!1444279) b!7858831))

(assert (= (and d!2354275 (not c!1444279)) b!7858829))

(assert (= (and b!7858829 c!1444281) b!7858835))

(assert (= (and b!7858829 (not c!1444281)) b!7858832))

(assert (= (and b!7858832 (not res!3124299)) b!7858841))

(assert (= (and b!7858841 res!3124301) b!7858833))

(assert (= (and b!7858833 res!3124300) b!7858838))

(assert (= (and b!7858838 res!3124303) b!7858840))

(assert (= (and b!7858841 (not res!3124296)) b!7858837))

(assert (= (and b!7858837 res!3124302) b!7858836))

(assert (= (and b!7858836 (not res!3124298)) b!7858839))

(assert (= (and b!7858839 (not res!3124297)) b!7858834))

(assert (= (or b!7858831 b!7858833 b!7858836) bm!728596))

(declare-fun m!8261474 () Bool)

(assert (=> bm!728596 m!8261474))

(declare-fun m!8261476 () Bool)

(assert (=> b!7858838 m!8261476))

(assert (=> b!7858838 m!8261476))

(declare-fun m!8261478 () Bool)

(assert (=> b!7858838 m!8261478))

(assert (=> b!7858830 m!8261436))

(declare-fun m!8261480 () Bool)

(assert (=> b!7858840 m!8261480))

(assert (=> b!7858839 m!8261476))

(assert (=> b!7858839 m!8261476))

(assert (=> b!7858839 m!8261478))

(assert (=> d!2354275 m!8261474))

(assert (=> d!2354275 m!8261440))

(assert (=> b!7858828 m!8261480))

(assert (=> b!7858828 m!8261480))

(declare-fun m!8261482 () Bool)

(assert (=> b!7858828 m!8261482))

(assert (=> b!7858828 m!8261476))

(assert (=> b!7858828 m!8261482))

(assert (=> b!7858828 m!8261476))

(declare-fun m!8261484 () Bool)

(assert (=> b!7858828 m!8261484))

(assert (=> b!7858834 m!8261480))

(assert (=> b!7858719 d!2354275))

(declare-fun e!4644561 () Bool)

(declare-fun b!7858842 () Bool)

(assert (=> b!7858842 (= e!4644561 (matchR!10541 (derivativeStep!6339 lt!2680180 (head!16059 (++!18103 s1!4084 s2!3706))) (tail!15602 (++!18103 s1!4084 s2!3706))))))

(declare-fun bm!728599 () Bool)

(declare-fun call!728604 () Bool)

(assert (=> bm!728599 (= call!728604 (isEmpty!42348 (++!18103 s1!4084 s2!3706)))))

(declare-fun b!7858844 () Bool)

(assert (=> b!7858844 (= e!4644561 (nullable!9377 lt!2680180))))

(declare-fun b!7858845 () Bool)

(declare-fun e!4644563 () Bool)

(declare-fun lt!2680188 () Bool)

(assert (=> b!7858845 (= e!4644563 (= lt!2680188 call!728604))))

(declare-fun b!7858846 () Bool)

(declare-fun res!3124307 () Bool)

(declare-fun e!4644559 () Bool)

(assert (=> b!7858846 (=> res!3124307 e!4644559)))

(assert (=> b!7858846 (= res!3124307 (not ((_ is ElementMatch!21105) lt!2680180)))))

(declare-fun e!4644562 () Bool)

(assert (=> b!7858846 (= e!4644562 e!4644559)))

(declare-fun b!7858847 () Bool)

(declare-fun res!3124308 () Bool)

(declare-fun e!4644560 () Bool)

(assert (=> b!7858847 (=> (not res!3124308) (not e!4644560))))

(assert (=> b!7858847 (= res!3124308 (not call!728604))))

(declare-fun b!7858848 () Bool)

(declare-fun e!4644565 () Bool)

(assert (=> b!7858848 (= e!4644565 (not (= (head!16059 (++!18103 s1!4084 s2!3706)) (c!1444257 lt!2680180))))))

(declare-fun b!7858843 () Bool)

(assert (=> b!7858843 (= e!4644563 e!4644562)))

(declare-fun c!1444284 () Bool)

(assert (=> b!7858843 (= c!1444284 ((_ is EmptyLang!21105) lt!2680180))))

(declare-fun d!2354277 () Bool)

(assert (=> d!2354277 e!4644563))

(declare-fun c!1444282 () Bool)

(assert (=> d!2354277 (= c!1444282 ((_ is EmptyExpr!21105) lt!2680180))))

(assert (=> d!2354277 (= lt!2680188 e!4644561)))

(declare-fun c!1444283 () Bool)

(assert (=> d!2354277 (= c!1444283 (isEmpty!42348 (++!18103 s1!4084 s2!3706)))))

(assert (=> d!2354277 (validRegex!11515 lt!2680180)))

(assert (=> d!2354277 (= (matchR!10541 lt!2680180 (++!18103 s1!4084 s2!3706)) lt!2680188)))

(declare-fun b!7858849 () Bool)

(assert (=> b!7858849 (= e!4644562 (not lt!2680188))))

(declare-fun b!7858850 () Bool)

(declare-fun e!4644564 () Bool)

(assert (=> b!7858850 (= e!4644564 e!4644565)))

(declare-fun res!3124306 () Bool)

(assert (=> b!7858850 (=> res!3124306 e!4644565)))

(assert (=> b!7858850 (= res!3124306 call!728604)))

(declare-fun b!7858851 () Bool)

(assert (=> b!7858851 (= e!4644559 e!4644564)))

(declare-fun res!3124310 () Bool)

(assert (=> b!7858851 (=> (not res!3124310) (not e!4644564))))

(assert (=> b!7858851 (= res!3124310 (not lt!2680188))))

(declare-fun b!7858852 () Bool)

(declare-fun res!3124311 () Bool)

(assert (=> b!7858852 (=> (not res!3124311) (not e!4644560))))

(assert (=> b!7858852 (= res!3124311 (isEmpty!42348 (tail!15602 (++!18103 s1!4084 s2!3706))))))

(declare-fun b!7858853 () Bool)

(declare-fun res!3124305 () Bool)

(assert (=> b!7858853 (=> res!3124305 e!4644565)))

(assert (=> b!7858853 (= res!3124305 (not (isEmpty!42348 (tail!15602 (++!18103 s1!4084 s2!3706)))))))

(declare-fun b!7858854 () Bool)

(assert (=> b!7858854 (= e!4644560 (= (head!16059 (++!18103 s1!4084 s2!3706)) (c!1444257 lt!2680180)))))

(declare-fun b!7858855 () Bool)

(declare-fun res!3124304 () Bool)

(assert (=> b!7858855 (=> res!3124304 e!4644559)))

(assert (=> b!7858855 (= res!3124304 e!4644560)))

(declare-fun res!3124309 () Bool)

(assert (=> b!7858855 (=> (not res!3124309) (not e!4644560))))

(assert (=> b!7858855 (= res!3124309 lt!2680188)))

(assert (= (and d!2354277 c!1444283) b!7858844))

(assert (= (and d!2354277 (not c!1444283)) b!7858842))

(assert (= (and d!2354277 c!1444282) b!7858845))

(assert (= (and d!2354277 (not c!1444282)) b!7858843))

(assert (= (and b!7858843 c!1444284) b!7858849))

(assert (= (and b!7858843 (not c!1444284)) b!7858846))

(assert (= (and b!7858846 (not res!3124307)) b!7858855))

(assert (= (and b!7858855 res!3124309) b!7858847))

(assert (= (and b!7858847 res!3124308) b!7858852))

(assert (= (and b!7858852 res!3124311) b!7858854))

(assert (= (and b!7858855 (not res!3124304)) b!7858851))

(assert (= (and b!7858851 res!3124310) b!7858850))

(assert (= (and b!7858850 (not res!3124306)) b!7858853))

(assert (= (and b!7858853 (not res!3124305)) b!7858848))

(assert (= (or b!7858845 b!7858847 b!7858850) bm!728599))

(assert (=> bm!728599 m!8261444))

(declare-fun m!8261486 () Bool)

(assert (=> bm!728599 m!8261486))

(assert (=> b!7858852 m!8261444))

(declare-fun m!8261488 () Bool)

(assert (=> b!7858852 m!8261488))

(assert (=> b!7858852 m!8261488))

(declare-fun m!8261490 () Bool)

(assert (=> b!7858852 m!8261490))

(declare-fun m!8261492 () Bool)

(assert (=> b!7858844 m!8261492))

(assert (=> b!7858854 m!8261444))

(declare-fun m!8261494 () Bool)

(assert (=> b!7858854 m!8261494))

(assert (=> b!7858853 m!8261444))

(assert (=> b!7858853 m!8261488))

(assert (=> b!7858853 m!8261488))

(assert (=> b!7858853 m!8261490))

(assert (=> d!2354277 m!8261444))

(assert (=> d!2354277 m!8261486))

(declare-fun m!8261496 () Bool)

(assert (=> d!2354277 m!8261496))

(assert (=> b!7858842 m!8261444))

(assert (=> b!7858842 m!8261494))

(assert (=> b!7858842 m!8261494))

(declare-fun m!8261498 () Bool)

(assert (=> b!7858842 m!8261498))

(assert (=> b!7858842 m!8261444))

(assert (=> b!7858842 m!8261488))

(assert (=> b!7858842 m!8261498))

(assert (=> b!7858842 m!8261488))

(declare-fun m!8261500 () Bool)

(assert (=> b!7858842 m!8261500))

(assert (=> b!7858848 m!8261444))

(assert (=> b!7858848 m!8261494))

(assert (=> b!7858728 d!2354277))

(declare-fun d!2354279 () Bool)

(declare-fun e!4644577 () Bool)

(assert (=> d!2354279 e!4644577))

(declare-fun res!3124324 () Bool)

(assert (=> d!2354279 (=> (not res!3124324) (not e!4644577))))

(declare-fun lt!2680192 () List!73964)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15685 (List!73964) (InoxSet C!42536))

(assert (=> d!2354279 (= res!3124324 (= (content!15685 lt!2680192) ((_ map or) (content!15685 s1!4084) (content!15685 s2!3706))))))

(declare-fun e!4644578 () List!73964)

(assert (=> d!2354279 (= lt!2680192 e!4644578)))

(declare-fun c!1444290 () Bool)

(assert (=> d!2354279 (= c!1444290 ((_ is Nil!73840) s1!4084))))

(assert (=> d!2354279 (= (++!18103 s1!4084 s2!3706) lt!2680192)))

(declare-fun b!7858879 () Bool)

(assert (=> b!7858879 (= e!4644578 (Cons!73840 (h!80288 s1!4084) (++!18103 (t!388699 s1!4084) s2!3706)))))

(declare-fun b!7858880 () Bool)

(declare-fun res!3124325 () Bool)

(assert (=> b!7858880 (=> (not res!3124325) (not e!4644577))))

(declare-fun size!42838 (List!73964) Int)

(assert (=> b!7858880 (= res!3124325 (= (size!42838 lt!2680192) (+ (size!42838 s1!4084) (size!42838 s2!3706))))))

(declare-fun b!7858881 () Bool)

(assert (=> b!7858881 (= e!4644577 (or (not (= s2!3706 Nil!73840)) (= lt!2680192 s1!4084)))))

(declare-fun b!7858878 () Bool)

(assert (=> b!7858878 (= e!4644578 s2!3706)))

(assert (= (and d!2354279 c!1444290) b!7858878))

(assert (= (and d!2354279 (not c!1444290)) b!7858879))

(assert (= (and d!2354279 res!3124324) b!7858880))

(assert (= (and b!7858880 res!3124325) b!7858881))

(declare-fun m!8261518 () Bool)

(assert (=> d!2354279 m!8261518))

(declare-fun m!8261520 () Bool)

(assert (=> d!2354279 m!8261520))

(declare-fun m!8261522 () Bool)

(assert (=> d!2354279 m!8261522))

(declare-fun m!8261524 () Bool)

(assert (=> b!7858879 m!8261524))

(declare-fun m!8261526 () Bool)

(assert (=> b!7858880 m!8261526))

(declare-fun m!8261528 () Bool)

(assert (=> b!7858880 m!8261528))

(declare-fun m!8261530 () Bool)

(assert (=> b!7858880 m!8261530))

(assert (=> b!7858728 d!2354279))

(declare-fun b!7858882 () Bool)

(declare-fun e!4644581 () Bool)

(assert (=> b!7858882 (= e!4644581 (matchR!10541 (derivativeStep!6339 lt!2680180 (head!16059 s2!3706)) (tail!15602 s2!3706)))))

(declare-fun bm!728601 () Bool)

(declare-fun call!728606 () Bool)

(assert (=> bm!728601 (= call!728606 (isEmpty!42348 s2!3706))))

(declare-fun b!7858884 () Bool)

(assert (=> b!7858884 (= e!4644581 (nullable!9377 lt!2680180))))

(declare-fun b!7858885 () Bool)

(declare-fun e!4644583 () Bool)

(declare-fun lt!2680193 () Bool)

(assert (=> b!7858885 (= e!4644583 (= lt!2680193 call!728606))))

(declare-fun b!7858886 () Bool)

(declare-fun res!3124329 () Bool)

(declare-fun e!4644579 () Bool)

(assert (=> b!7858886 (=> res!3124329 e!4644579)))

(assert (=> b!7858886 (= res!3124329 (not ((_ is ElementMatch!21105) lt!2680180)))))

(declare-fun e!4644582 () Bool)

(assert (=> b!7858886 (= e!4644582 e!4644579)))

(declare-fun b!7858887 () Bool)

(declare-fun res!3124330 () Bool)

(declare-fun e!4644580 () Bool)

(assert (=> b!7858887 (=> (not res!3124330) (not e!4644580))))

(assert (=> b!7858887 (= res!3124330 (not call!728606))))

(declare-fun b!7858888 () Bool)

(declare-fun e!4644585 () Bool)

(assert (=> b!7858888 (= e!4644585 (not (= (head!16059 s2!3706) (c!1444257 lt!2680180))))))

(declare-fun b!7858883 () Bool)

(assert (=> b!7858883 (= e!4644583 e!4644582)))

(declare-fun c!1444293 () Bool)

(assert (=> b!7858883 (= c!1444293 ((_ is EmptyLang!21105) lt!2680180))))

(declare-fun d!2354283 () Bool)

(assert (=> d!2354283 e!4644583))

(declare-fun c!1444291 () Bool)

(assert (=> d!2354283 (= c!1444291 ((_ is EmptyExpr!21105) lt!2680180))))

(assert (=> d!2354283 (= lt!2680193 e!4644581)))

(declare-fun c!1444292 () Bool)

(assert (=> d!2354283 (= c!1444292 (isEmpty!42348 s2!3706))))

(assert (=> d!2354283 (validRegex!11515 lt!2680180)))

(assert (=> d!2354283 (= (matchR!10541 lt!2680180 s2!3706) lt!2680193)))

(declare-fun b!7858889 () Bool)

(assert (=> b!7858889 (= e!4644582 (not lt!2680193))))

(declare-fun b!7858890 () Bool)

(declare-fun e!4644584 () Bool)

(assert (=> b!7858890 (= e!4644584 e!4644585)))

(declare-fun res!3124328 () Bool)

(assert (=> b!7858890 (=> res!3124328 e!4644585)))

(assert (=> b!7858890 (= res!3124328 call!728606)))

(declare-fun b!7858891 () Bool)

(assert (=> b!7858891 (= e!4644579 e!4644584)))

(declare-fun res!3124332 () Bool)

(assert (=> b!7858891 (=> (not res!3124332) (not e!4644584))))

(assert (=> b!7858891 (= res!3124332 (not lt!2680193))))

(declare-fun b!7858892 () Bool)

(declare-fun res!3124333 () Bool)

(assert (=> b!7858892 (=> (not res!3124333) (not e!4644580))))

(assert (=> b!7858892 (= res!3124333 (isEmpty!42348 (tail!15602 s2!3706)))))

(declare-fun b!7858893 () Bool)

(declare-fun res!3124327 () Bool)

(assert (=> b!7858893 (=> res!3124327 e!4644585)))

(assert (=> b!7858893 (= res!3124327 (not (isEmpty!42348 (tail!15602 s2!3706))))))

(declare-fun b!7858894 () Bool)

(assert (=> b!7858894 (= e!4644580 (= (head!16059 s2!3706) (c!1444257 lt!2680180)))))

(declare-fun b!7858895 () Bool)

(declare-fun res!3124326 () Bool)

(assert (=> b!7858895 (=> res!3124326 e!4644579)))

(assert (=> b!7858895 (= res!3124326 e!4644580)))

(declare-fun res!3124331 () Bool)

(assert (=> b!7858895 (=> (not res!3124331) (not e!4644580))))

(assert (=> b!7858895 (= res!3124331 lt!2680193)))

(assert (= (and d!2354283 c!1444292) b!7858884))

(assert (= (and d!2354283 (not c!1444292)) b!7858882))

(assert (= (and d!2354283 c!1444291) b!7858885))

(assert (= (and d!2354283 (not c!1444291)) b!7858883))

(assert (= (and b!7858883 c!1444293) b!7858889))

(assert (= (and b!7858883 (not c!1444293)) b!7858886))

(assert (= (and b!7858886 (not res!3124329)) b!7858895))

(assert (= (and b!7858895 res!3124331) b!7858887))

(assert (= (and b!7858887 res!3124330) b!7858892))

(assert (= (and b!7858892 res!3124333) b!7858894))

(assert (= (and b!7858895 (not res!3124326)) b!7858891))

(assert (= (and b!7858891 res!3124332) b!7858890))

(assert (= (and b!7858890 (not res!3124328)) b!7858893))

(assert (= (and b!7858893 (not res!3124327)) b!7858888))

(assert (= (or b!7858885 b!7858887 b!7858890) bm!728601))

(assert (=> bm!728601 m!8261458))

(assert (=> b!7858892 m!8261460))

(assert (=> b!7858892 m!8261460))

(assert (=> b!7858892 m!8261462))

(assert (=> b!7858884 m!8261492))

(assert (=> b!7858894 m!8261466))

(assert (=> b!7858893 m!8261460))

(assert (=> b!7858893 m!8261460))

(assert (=> b!7858893 m!8261462))

(assert (=> d!2354283 m!8261458))

(assert (=> d!2354283 m!8261496))

(assert (=> b!7858882 m!8261466))

(assert (=> b!7858882 m!8261466))

(declare-fun m!8261532 () Bool)

(assert (=> b!7858882 m!8261532))

(assert (=> b!7858882 m!8261460))

(assert (=> b!7858882 m!8261532))

(assert (=> b!7858882 m!8261460))

(declare-fun m!8261534 () Bool)

(assert (=> b!7858882 m!8261534))

(assert (=> b!7858888 m!8261466))

(assert (=> b!7858728 d!2354283))

(declare-fun d!2354285 () Bool)

(assert (=> d!2354285 (matchR!10541 (Concat!29950 r1!6227 r2!6165) s2!3706)))

(declare-fun lt!2680200 () Unit!168932)

(declare-fun choose!59664 (Regex!21105 Regex!21105 List!73964) Unit!168932)

(assert (=> d!2354285 (= lt!2680200 (choose!59664 r2!6165 r1!6227 s2!3706))))

(assert (=> d!2354285 (validRegex!11515 r2!6165)))

(assert (=> d!2354285 (= (lemmaRegexConcatWithNullableAcceptsSameStr!4 r2!6165 r1!6227 s2!3706) lt!2680200)))

(declare-fun bs!1967168 () Bool)

(assert (= bs!1967168 d!2354285))

(declare-fun m!8261562 () Bool)

(assert (=> bs!1967168 m!8261562))

(declare-fun m!8261564 () Bool)

(assert (=> bs!1967168 m!8261564))

(assert (=> bs!1967168 m!8261442))

(assert (=> b!7858728 d!2354285))

(declare-fun b!7858991 () Bool)

(declare-fun res!3124380 () Bool)

(declare-fun e!4644643 () Bool)

(assert (=> b!7858991 (=> res!3124380 e!4644643)))

(assert (=> b!7858991 (= res!3124380 (not ((_ is Concat!29950) r1!6227)))))

(declare-fun e!4644638 () Bool)

(assert (=> b!7858991 (= e!4644638 e!4644643)))

(declare-fun d!2354291 () Bool)

(declare-fun res!3124382 () Bool)

(declare-fun e!4644641 () Bool)

(assert (=> d!2354291 (=> res!3124382 e!4644641)))

(assert (=> d!2354291 (= res!3124382 ((_ is ElementMatch!21105) r1!6227))))

(assert (=> d!2354291 (= (validRegex!11515 r1!6227) e!4644641)))

(declare-fun b!7858992 () Bool)

(declare-fun e!4644640 () Bool)

(assert (=> b!7858992 (= e!4644643 e!4644640)))

(declare-fun res!3124381 () Bool)

(assert (=> b!7858992 (=> (not res!3124381) (not e!4644640))))

(declare-fun call!728620 () Bool)

(assert (=> b!7858992 (= res!3124381 call!728620)))

(declare-fun b!7858993 () Bool)

(declare-fun e!4644637 () Bool)

(assert (=> b!7858993 (= e!4644637 e!4644638)))

(declare-fun c!1444313 () Bool)

(assert (=> b!7858993 (= c!1444313 ((_ is Union!21105) r1!6227))))

(declare-fun b!7858994 () Bool)

(assert (=> b!7858994 (= e!4644641 e!4644637)))

(declare-fun c!1444312 () Bool)

(assert (=> b!7858994 (= c!1444312 ((_ is Star!21105) r1!6227))))

(declare-fun b!7858995 () Bool)

(declare-fun e!4644639 () Bool)

(assert (=> b!7858995 (= e!4644639 call!728620)))

(declare-fun call!728621 () Bool)

(declare-fun bm!728614 () Bool)

(assert (=> bm!728614 (= call!728621 (validRegex!11515 (ite c!1444312 (reg!21434 r1!6227) (ite c!1444313 (regOne!42723 r1!6227) (regTwo!42722 r1!6227)))))))

(declare-fun bm!728615 () Bool)

(assert (=> bm!728615 (= call!728620 (validRegex!11515 (ite c!1444313 (regTwo!42723 r1!6227) (regOne!42722 r1!6227))))))

(declare-fun b!7858996 () Bool)

(declare-fun call!728619 () Bool)

(assert (=> b!7858996 (= e!4644640 call!728619)))

(declare-fun b!7858997 () Bool)

(declare-fun e!4644642 () Bool)

(assert (=> b!7858997 (= e!4644642 call!728621)))

(declare-fun b!7858998 () Bool)

(declare-fun res!3124379 () Bool)

(assert (=> b!7858998 (=> (not res!3124379) (not e!4644639))))

(assert (=> b!7858998 (= res!3124379 call!728619)))

(assert (=> b!7858998 (= e!4644638 e!4644639)))

(declare-fun bm!728616 () Bool)

(assert (=> bm!728616 (= call!728619 call!728621)))

(declare-fun b!7858999 () Bool)

(assert (=> b!7858999 (= e!4644637 e!4644642)))

(declare-fun res!3124383 () Bool)

(assert (=> b!7858999 (= res!3124383 (not (nullable!9377 (reg!21434 r1!6227))))))

(assert (=> b!7858999 (=> (not res!3124383) (not e!4644642))))

(assert (= (and d!2354291 (not res!3124382)) b!7858994))

(assert (= (and b!7858994 c!1444312) b!7858999))

(assert (= (and b!7858994 (not c!1444312)) b!7858993))

(assert (= (and b!7858999 res!3124383) b!7858997))

(assert (= (and b!7858993 c!1444313) b!7858998))

(assert (= (and b!7858993 (not c!1444313)) b!7858991))

(assert (= (and b!7858998 res!3124379) b!7858995))

(assert (= (and b!7858991 (not res!3124380)) b!7858992))

(assert (= (and b!7858992 res!3124381) b!7858996))

(assert (= (or b!7858998 b!7858996) bm!728616))

(assert (= (or b!7858995 b!7858992) bm!728615))

(assert (= (or b!7858997 bm!728616) bm!728614))

(declare-fun m!8261596 () Bool)

(assert (=> bm!728614 m!8261596))

(declare-fun m!8261598 () Bool)

(assert (=> bm!728615 m!8261598))

(declare-fun m!8261600 () Bool)

(assert (=> b!7858999 m!8261600))

(assert (=> start!743510 d!2354291))

(declare-fun b!7859016 () Bool)

(declare-fun res!3124385 () Bool)

(declare-fun e!4644655 () Bool)

(assert (=> b!7859016 (=> res!3124385 e!4644655)))

(assert (=> b!7859016 (= res!3124385 (not ((_ is Concat!29950) r2!6165)))))

(declare-fun e!4644650 () Bool)

(assert (=> b!7859016 (= e!4644650 e!4644655)))

(declare-fun d!2354301 () Bool)

(declare-fun res!3124387 () Bool)

(declare-fun e!4644653 () Bool)

(assert (=> d!2354301 (=> res!3124387 e!4644653)))

(assert (=> d!2354301 (= res!3124387 ((_ is ElementMatch!21105) r2!6165))))

(assert (=> d!2354301 (= (validRegex!11515 r2!6165) e!4644653)))

(declare-fun b!7859017 () Bool)

(declare-fun e!4644652 () Bool)

(assert (=> b!7859017 (= e!4644655 e!4644652)))

(declare-fun res!3124386 () Bool)

(assert (=> b!7859017 (=> (not res!3124386) (not e!4644652))))

(declare-fun call!728623 () Bool)

(assert (=> b!7859017 (= res!3124386 call!728623)))

(declare-fun b!7859018 () Bool)

(declare-fun e!4644649 () Bool)

(assert (=> b!7859018 (= e!4644649 e!4644650)))

(declare-fun c!1444315 () Bool)

(assert (=> b!7859018 (= c!1444315 ((_ is Union!21105) r2!6165))))

(declare-fun b!7859019 () Bool)

(assert (=> b!7859019 (= e!4644653 e!4644649)))

(declare-fun c!1444314 () Bool)

(assert (=> b!7859019 (= c!1444314 ((_ is Star!21105) r2!6165))))

(declare-fun b!7859020 () Bool)

(declare-fun e!4644651 () Bool)

(assert (=> b!7859020 (= e!4644651 call!728623)))

(declare-fun bm!728617 () Bool)

(declare-fun call!728624 () Bool)

(assert (=> bm!728617 (= call!728624 (validRegex!11515 (ite c!1444314 (reg!21434 r2!6165) (ite c!1444315 (regOne!42723 r2!6165) (regTwo!42722 r2!6165)))))))

(declare-fun bm!728618 () Bool)

(assert (=> bm!728618 (= call!728623 (validRegex!11515 (ite c!1444315 (regTwo!42723 r2!6165) (regOne!42722 r2!6165))))))

(declare-fun b!7859021 () Bool)

(declare-fun call!728622 () Bool)

(assert (=> b!7859021 (= e!4644652 call!728622)))

(declare-fun b!7859022 () Bool)

(declare-fun e!4644654 () Bool)

(assert (=> b!7859022 (= e!4644654 call!728624)))

(declare-fun b!7859023 () Bool)

(declare-fun res!3124384 () Bool)

(assert (=> b!7859023 (=> (not res!3124384) (not e!4644651))))

(assert (=> b!7859023 (= res!3124384 call!728622)))

(assert (=> b!7859023 (= e!4644650 e!4644651)))

(declare-fun bm!728619 () Bool)

(assert (=> bm!728619 (= call!728622 call!728624)))

(declare-fun b!7859024 () Bool)

(assert (=> b!7859024 (= e!4644649 e!4644654)))

(declare-fun res!3124388 () Bool)

(assert (=> b!7859024 (= res!3124388 (not (nullable!9377 (reg!21434 r2!6165))))))

(assert (=> b!7859024 (=> (not res!3124388) (not e!4644654))))

(assert (= (and d!2354301 (not res!3124387)) b!7859019))

(assert (= (and b!7859019 c!1444314) b!7859024))

(assert (= (and b!7859019 (not c!1444314)) b!7859018))

(assert (= (and b!7859024 res!3124388) b!7859022))

(assert (= (and b!7859018 c!1444315) b!7859023))

(assert (= (and b!7859018 (not c!1444315)) b!7859016))

(assert (= (and b!7859023 res!3124384) b!7859020))

(assert (= (and b!7859016 (not res!3124385)) b!7859017))

(assert (= (and b!7859017 res!3124386) b!7859021))

(assert (= (or b!7859023 b!7859021) bm!728619))

(assert (= (or b!7859020 b!7859017) bm!728618))

(assert (= (or b!7859022 bm!728619) bm!728617))

(declare-fun m!8261602 () Bool)

(assert (=> bm!728617 m!8261602))

(declare-fun m!8261604 () Bool)

(assert (=> bm!728618 m!8261604))

(declare-fun m!8261606 () Bool)

(assert (=> b!7859024 m!8261606))

(assert (=> b!7858718 d!2354301))

(declare-fun b!7859055 () Bool)

(declare-fun e!4644666 () Bool)

(declare-fun tp!2328719 () Bool)

(assert (=> b!7859055 (= e!4644666 (and tp_is_empty!52609 tp!2328719))))

(assert (=> b!7858720 (= tp!2328641 e!4644666)))

(assert (= (and b!7858720 ((_ is Cons!73840) (t!388699 s2!3706))) b!7859055))

(declare-fun b!7859067 () Bool)

(declare-fun e!4644669 () Bool)

(declare-fun tp!2328730 () Bool)

(declare-fun tp!2328734 () Bool)

(assert (=> b!7859067 (= e!4644669 (and tp!2328730 tp!2328734))))

(declare-fun b!7859069 () Bool)

(declare-fun tp!2328733 () Bool)

(declare-fun tp!2328731 () Bool)

(assert (=> b!7859069 (= e!4644669 (and tp!2328733 tp!2328731))))

(declare-fun b!7859068 () Bool)

(declare-fun tp!2328732 () Bool)

(assert (=> b!7859068 (= e!4644669 tp!2328732)))

(declare-fun b!7859066 () Bool)

(assert (=> b!7859066 (= e!4644669 tp_is_empty!52609)))

(assert (=> b!7858726 (= tp!2328646 e!4644669)))

(assert (= (and b!7858726 ((_ is ElementMatch!21105) (reg!21434 r1!6227))) b!7859066))

(assert (= (and b!7858726 ((_ is Concat!29950) (reg!21434 r1!6227))) b!7859067))

(assert (= (and b!7858726 ((_ is Star!21105) (reg!21434 r1!6227))) b!7859068))

(assert (= (and b!7858726 ((_ is Union!21105) (reg!21434 r1!6227))) b!7859069))

(declare-fun b!7859071 () Bool)

(declare-fun e!4644670 () Bool)

(declare-fun tp!2328735 () Bool)

(declare-fun tp!2328739 () Bool)

(assert (=> b!7859071 (= e!4644670 (and tp!2328735 tp!2328739))))

(declare-fun b!7859073 () Bool)

(declare-fun tp!2328738 () Bool)

(declare-fun tp!2328736 () Bool)

(assert (=> b!7859073 (= e!4644670 (and tp!2328738 tp!2328736))))

(declare-fun b!7859072 () Bool)

(declare-fun tp!2328737 () Bool)

(assert (=> b!7859072 (= e!4644670 tp!2328737)))

(declare-fun b!7859070 () Bool)

(assert (=> b!7859070 (= e!4644670 tp_is_empty!52609)))

(assert (=> b!7858724 (= tp!2328647 e!4644670)))

(assert (= (and b!7858724 ((_ is ElementMatch!21105) (regOne!42723 r1!6227))) b!7859070))

(assert (= (and b!7858724 ((_ is Concat!29950) (regOne!42723 r1!6227))) b!7859071))

(assert (= (and b!7858724 ((_ is Star!21105) (regOne!42723 r1!6227))) b!7859072))

(assert (= (and b!7858724 ((_ is Union!21105) (regOne!42723 r1!6227))) b!7859073))

(declare-fun b!7859075 () Bool)

(declare-fun e!4644671 () Bool)

(declare-fun tp!2328740 () Bool)

(declare-fun tp!2328744 () Bool)

(assert (=> b!7859075 (= e!4644671 (and tp!2328740 tp!2328744))))

(declare-fun b!7859077 () Bool)

(declare-fun tp!2328743 () Bool)

(declare-fun tp!2328741 () Bool)

(assert (=> b!7859077 (= e!4644671 (and tp!2328743 tp!2328741))))

(declare-fun b!7859076 () Bool)

(declare-fun tp!2328742 () Bool)

(assert (=> b!7859076 (= e!4644671 tp!2328742)))

(declare-fun b!7859074 () Bool)

(assert (=> b!7859074 (= e!4644671 tp_is_empty!52609)))

(assert (=> b!7858724 (= tp!2328649 e!4644671)))

(assert (= (and b!7858724 ((_ is ElementMatch!21105) (regTwo!42723 r1!6227))) b!7859074))

(assert (= (and b!7858724 ((_ is Concat!29950) (regTwo!42723 r1!6227))) b!7859075))

(assert (= (and b!7858724 ((_ is Star!21105) (regTwo!42723 r1!6227))) b!7859076))

(assert (= (and b!7858724 ((_ is Union!21105) (regTwo!42723 r1!6227))) b!7859077))

(declare-fun b!7859079 () Bool)

(declare-fun e!4644672 () Bool)

(declare-fun tp!2328745 () Bool)

(declare-fun tp!2328749 () Bool)

(assert (=> b!7859079 (= e!4644672 (and tp!2328745 tp!2328749))))

(declare-fun b!7859081 () Bool)

(declare-fun tp!2328748 () Bool)

(declare-fun tp!2328746 () Bool)

(assert (=> b!7859081 (= e!4644672 (and tp!2328748 tp!2328746))))

(declare-fun b!7859080 () Bool)

(declare-fun tp!2328747 () Bool)

(assert (=> b!7859080 (= e!4644672 tp!2328747)))

(declare-fun b!7859078 () Bool)

(assert (=> b!7859078 (= e!4644672 tp_is_empty!52609)))

(assert (=> b!7858730 (= tp!2328645 e!4644672)))

(assert (= (and b!7858730 ((_ is ElementMatch!21105) (regOne!42722 r2!6165))) b!7859078))

(assert (= (and b!7858730 ((_ is Concat!29950) (regOne!42722 r2!6165))) b!7859079))

(assert (= (and b!7858730 ((_ is Star!21105) (regOne!42722 r2!6165))) b!7859080))

(assert (= (and b!7858730 ((_ is Union!21105) (regOne!42722 r2!6165))) b!7859081))

(declare-fun b!7859083 () Bool)

(declare-fun e!4644673 () Bool)

(declare-fun tp!2328750 () Bool)

(declare-fun tp!2328754 () Bool)

(assert (=> b!7859083 (= e!4644673 (and tp!2328750 tp!2328754))))

(declare-fun b!7859085 () Bool)

(declare-fun tp!2328753 () Bool)

(declare-fun tp!2328751 () Bool)

(assert (=> b!7859085 (= e!4644673 (and tp!2328753 tp!2328751))))

(declare-fun b!7859084 () Bool)

(declare-fun tp!2328752 () Bool)

(assert (=> b!7859084 (= e!4644673 tp!2328752)))

(declare-fun b!7859082 () Bool)

(assert (=> b!7859082 (= e!4644673 tp_is_empty!52609)))

(assert (=> b!7858730 (= tp!2328652 e!4644673)))

(assert (= (and b!7858730 ((_ is ElementMatch!21105) (regTwo!42722 r2!6165))) b!7859082))

(assert (= (and b!7858730 ((_ is Concat!29950) (regTwo!42722 r2!6165))) b!7859083))

(assert (= (and b!7858730 ((_ is Star!21105) (regTwo!42722 r2!6165))) b!7859084))

(assert (= (and b!7858730 ((_ is Union!21105) (regTwo!42722 r2!6165))) b!7859085))

(declare-fun b!7859086 () Bool)

(declare-fun e!4644674 () Bool)

(declare-fun tp!2328755 () Bool)

(assert (=> b!7859086 (= e!4644674 (and tp_is_empty!52609 tp!2328755))))

(assert (=> b!7858716 (= tp!2328643 e!4644674)))

(assert (= (and b!7858716 ((_ is Cons!73840) (t!388699 s1!4084))) b!7859086))

(declare-fun b!7859088 () Bool)

(declare-fun e!4644675 () Bool)

(declare-fun tp!2328756 () Bool)

(declare-fun tp!2328760 () Bool)

(assert (=> b!7859088 (= e!4644675 (and tp!2328756 tp!2328760))))

(declare-fun b!7859090 () Bool)

(declare-fun tp!2328759 () Bool)

(declare-fun tp!2328757 () Bool)

(assert (=> b!7859090 (= e!4644675 (and tp!2328759 tp!2328757))))

(declare-fun b!7859089 () Bool)

(declare-fun tp!2328758 () Bool)

(assert (=> b!7859089 (= e!4644675 tp!2328758)))

(declare-fun b!7859087 () Bool)

(assert (=> b!7859087 (= e!4644675 tp_is_empty!52609)))

(assert (=> b!7858721 (= tp!2328642 e!4644675)))

(assert (= (and b!7858721 ((_ is ElementMatch!21105) (regOne!42723 r2!6165))) b!7859087))

(assert (= (and b!7858721 ((_ is Concat!29950) (regOne!42723 r2!6165))) b!7859088))

(assert (= (and b!7858721 ((_ is Star!21105) (regOne!42723 r2!6165))) b!7859089))

(assert (= (and b!7858721 ((_ is Union!21105) (regOne!42723 r2!6165))) b!7859090))

(declare-fun b!7859092 () Bool)

(declare-fun e!4644676 () Bool)

(declare-fun tp!2328761 () Bool)

(declare-fun tp!2328765 () Bool)

(assert (=> b!7859092 (= e!4644676 (and tp!2328761 tp!2328765))))

(declare-fun b!7859094 () Bool)

(declare-fun tp!2328764 () Bool)

(declare-fun tp!2328762 () Bool)

(assert (=> b!7859094 (= e!4644676 (and tp!2328764 tp!2328762))))

(declare-fun b!7859093 () Bool)

(declare-fun tp!2328763 () Bool)

(assert (=> b!7859093 (= e!4644676 tp!2328763)))

(declare-fun b!7859091 () Bool)

(assert (=> b!7859091 (= e!4644676 tp_is_empty!52609)))

(assert (=> b!7858721 (= tp!2328651 e!4644676)))

(assert (= (and b!7858721 ((_ is ElementMatch!21105) (regTwo!42723 r2!6165))) b!7859091))

(assert (= (and b!7858721 ((_ is Concat!29950) (regTwo!42723 r2!6165))) b!7859092))

(assert (= (and b!7858721 ((_ is Star!21105) (regTwo!42723 r2!6165))) b!7859093))

(assert (= (and b!7858721 ((_ is Union!21105) (regTwo!42723 r2!6165))) b!7859094))

(declare-fun b!7859096 () Bool)

(declare-fun e!4644677 () Bool)

(declare-fun tp!2328766 () Bool)

(declare-fun tp!2328770 () Bool)

(assert (=> b!7859096 (= e!4644677 (and tp!2328766 tp!2328770))))

(declare-fun b!7859098 () Bool)

(declare-fun tp!2328769 () Bool)

(declare-fun tp!2328767 () Bool)

(assert (=> b!7859098 (= e!4644677 (and tp!2328769 tp!2328767))))

(declare-fun b!7859097 () Bool)

(declare-fun tp!2328768 () Bool)

(assert (=> b!7859097 (= e!4644677 tp!2328768)))

(declare-fun b!7859095 () Bool)

(assert (=> b!7859095 (= e!4644677 tp_is_empty!52609)))

(assert (=> b!7858722 (= tp!2328650 e!4644677)))

(assert (= (and b!7858722 ((_ is ElementMatch!21105) (reg!21434 r2!6165))) b!7859095))

(assert (= (and b!7858722 ((_ is Concat!29950) (reg!21434 r2!6165))) b!7859096))

(assert (= (and b!7858722 ((_ is Star!21105) (reg!21434 r2!6165))) b!7859097))

(assert (= (and b!7858722 ((_ is Union!21105) (reg!21434 r2!6165))) b!7859098))

(declare-fun b!7859100 () Bool)

(declare-fun e!4644678 () Bool)

(declare-fun tp!2328771 () Bool)

(declare-fun tp!2328775 () Bool)

(assert (=> b!7859100 (= e!4644678 (and tp!2328771 tp!2328775))))

(declare-fun b!7859102 () Bool)

(declare-fun tp!2328774 () Bool)

(declare-fun tp!2328772 () Bool)

(assert (=> b!7859102 (= e!4644678 (and tp!2328774 tp!2328772))))

(declare-fun b!7859101 () Bool)

(declare-fun tp!2328773 () Bool)

(assert (=> b!7859101 (= e!4644678 tp!2328773)))

(declare-fun b!7859099 () Bool)

(assert (=> b!7859099 (= e!4644678 tp_is_empty!52609)))

(assert (=> b!7858727 (= tp!2328644 e!4644678)))

(assert (= (and b!7858727 ((_ is ElementMatch!21105) (regOne!42722 r1!6227))) b!7859099))

(assert (= (and b!7858727 ((_ is Concat!29950) (regOne!42722 r1!6227))) b!7859100))

(assert (= (and b!7858727 ((_ is Star!21105) (regOne!42722 r1!6227))) b!7859101))

(assert (= (and b!7858727 ((_ is Union!21105) (regOne!42722 r1!6227))) b!7859102))

(declare-fun b!7859104 () Bool)

(declare-fun e!4644679 () Bool)

(declare-fun tp!2328776 () Bool)

(declare-fun tp!2328780 () Bool)

(assert (=> b!7859104 (= e!4644679 (and tp!2328776 tp!2328780))))

(declare-fun b!7859106 () Bool)

(declare-fun tp!2328779 () Bool)

(declare-fun tp!2328777 () Bool)

(assert (=> b!7859106 (= e!4644679 (and tp!2328779 tp!2328777))))

(declare-fun b!7859105 () Bool)

(declare-fun tp!2328778 () Bool)

(assert (=> b!7859105 (= e!4644679 tp!2328778)))

(declare-fun b!7859103 () Bool)

(assert (=> b!7859103 (= e!4644679 tp_is_empty!52609)))

(assert (=> b!7858727 (= tp!2328648 e!4644679)))

(assert (= (and b!7858727 ((_ is ElementMatch!21105) (regTwo!42722 r1!6227))) b!7859103))

(assert (= (and b!7858727 ((_ is Concat!29950) (regTwo!42722 r1!6227))) b!7859104))

(assert (= (and b!7858727 ((_ is Star!21105) (regTwo!42722 r1!6227))) b!7859105))

(assert (= (and b!7858727 ((_ is Union!21105) (regTwo!42722 r1!6227))) b!7859106))

(check-sat (not b!7859101) tp_is_empty!52609 (not d!2354275) (not b!7859093) (not b!7859075) (not b!7859105) (not d!2354269) (not b!7859076) (not b!7859072) (not b!7859024) (not b!7858892) (not bm!728615) (not b!7859090) (not b!7858834) (not b!7859096) (not b!7859086) (not d!2354279) (not b!7858893) (not b!7858844) (not b!7858880) (not b!7858788) (not bm!728599) (not b!7859102) (not d!2354285) (not b!7859092) (not b!7858852) (not b!7859085) (not b!7858798) (not b!7859104) (not b!7858848) (not d!2354273) (not bm!728617) (not b!7859073) (not b!7858792) (not d!2354283) (not b!7858879) (not b!7858884) (not bm!728618) (not b!7859089) (not b!7859077) (not b!7858840) (not b!7858797) (not b!7859106) (not b!7858838) (not b!7859067) (not b!7859068) (not b!7858894) (not b!7858888) (not b!7858853) (not bm!728595) (not b!7859069) (not b!7859088) (not b!7859055) (not d!2354277) (not b!7859079) (not b!7859098) (not b!7858796) (not b!7858999) (not b!7859094) (not b!7859097) (not b!7858839) (not bm!728601) (not b!7859080) (not b!7858786) (not b!7859071) (not b!7859081) (not b!7859084) (not b!7858854) (not bm!728596) (not b!7859083) (not b!7859100) (not bm!728614) (not b!7858828) (not b!7858882) (not b!7858830) (not b!7858842))
(check-sat)
