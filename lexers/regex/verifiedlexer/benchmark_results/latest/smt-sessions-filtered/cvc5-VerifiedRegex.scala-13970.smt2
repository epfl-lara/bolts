; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739790 () Bool)

(assert start!739790)

(declare-fun b!7766660 () Bool)

(declare-fun e!4602226 () Bool)

(declare-fun tp!2281559 () Bool)

(assert (=> b!7766660 (= e!4602226 tp!2281559)))

(declare-fun b!7766661 () Bool)

(declare-fun e!4602223 () Bool)

(declare-datatypes ((C!41794 0))(
  ( (C!41795 (val!31337 Int)) )
))
(declare-datatypes ((List!73575 0))(
  ( (Nil!73451) (Cons!73451 (h!79899 C!41794) (t!388310 List!73575)) )
))
(declare-fun s!14904 () List!73575)

(declare-fun ++!17894 (List!73575 List!73575) List!73575)

(assert (=> b!7766661 (= e!4602223 (= (++!17894 Nil!73451 (t!388310 s!14904)) (t!388310 s!14904)))))

(declare-fun b!7766662 () Bool)

(declare-fun e!4602225 () Bool)

(assert (=> b!7766662 (= e!4602225 (not e!4602223))))

(declare-fun res!3096235 () Bool)

(assert (=> b!7766662 (=> res!3096235 e!4602223)))

(declare-datatypes ((Regex!20734 0))(
  ( (ElementMatch!20734 (c!1431443 C!41794)) (Concat!29579 (regOne!41980 Regex!20734) (regTwo!41980 Regex!20734)) (EmptyExpr!20734) (Star!20734 (reg!21063 Regex!20734)) (EmptyLang!20734) (Union!20734 (regOne!41981 Regex!20734) (regTwo!41981 Regex!20734)) )
))
(declare-fun lt!2670951 () Regex!20734)

(declare-fun validRegex!11148 (Regex!20734) Bool)

(assert (=> b!7766662 (= res!3096235 (not (validRegex!11148 lt!2670951)))))

(declare-fun lt!2670952 () Regex!20734)

(declare-datatypes ((tuple2!69834 0))(
  ( (tuple2!69835 (_1!38220 List!73575) (_2!38220 List!73575)) )
))
(declare-datatypes ((Option!17711 0))(
  ( (None!17710) (Some!17710 (v!54845 tuple2!69834)) )
))
(declare-fun isDefined!14323 (Option!17711) Bool)

(declare-fun findConcatSeparation!3741 (Regex!20734 Regex!20734 List!73575 List!73575 List!73575) Option!17711)

(assert (=> b!7766662 (isDefined!14323 (findConcatSeparation!3741 lt!2670951 lt!2670952 Nil!73451 (t!388310 s!14904) (t!388310 s!14904)))))

(declare-datatypes ((Unit!168430 0))(
  ( (Unit!168431) )
))
(declare-fun lt!2670953 () Unit!168430)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!331 (Regex!20734 Regex!20734 List!73575) Unit!168430)

(assert (=> b!7766662 (= lt!2670953 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!331 lt!2670951 lt!2670952 (t!388310 s!14904)))))

(declare-fun b!7766663 () Bool)

(declare-fun tp!2281562 () Bool)

(declare-fun tp!2281560 () Bool)

(assert (=> b!7766663 (= e!4602226 (and tp!2281562 tp!2281560))))

(declare-fun b!7766664 () Bool)

(declare-fun res!3096234 () Bool)

(declare-fun e!4602222 () Bool)

(assert (=> b!7766664 (=> (not res!3096234) (not e!4602222))))

(assert (=> b!7766664 (= res!3096234 (is-Cons!73451 s!14904))))

(declare-fun b!7766665 () Bool)

(assert (=> b!7766665 (= e!4602222 e!4602225)))

(declare-fun res!3096231 () Bool)

(assert (=> b!7766665 (=> (not res!3096231) (not e!4602225))))

(declare-fun derivativeStep!6079 (Regex!20734 C!41794) Regex!20734)

(assert (=> b!7766665 (= res!3096231 (= (derivativeStep!6079 lt!2670952 (h!79899 s!14904)) (Concat!29579 lt!2670951 lt!2670952)))))

(declare-fun r!25924 () Regex!20734)

(assert (=> b!7766665 (= lt!2670951 (derivativeStep!6079 r!25924 (h!79899 s!14904)))))

(declare-fun b!7766666 () Bool)

(declare-fun tp_is_empty!51823 () Bool)

(assert (=> b!7766666 (= e!4602226 tp_is_empty!51823)))

(declare-fun res!3096232 () Bool)

(assert (=> start!739790 (=> (not res!3096232) (not e!4602222))))

(assert (=> start!739790 (= res!3096232 (validRegex!11148 lt!2670952))))

(assert (=> start!739790 (= lt!2670952 (Star!20734 r!25924))))

(assert (=> start!739790 e!4602222))

(assert (=> start!739790 e!4602226))

(declare-fun e!4602224 () Bool)

(assert (=> start!739790 e!4602224))

(declare-fun b!7766667 () Bool)

(declare-fun tp!2281563 () Bool)

(assert (=> b!7766667 (= e!4602224 (and tp_is_empty!51823 tp!2281563))))

(declare-fun b!7766668 () Bool)

(declare-fun tp!2281561 () Bool)

(declare-fun tp!2281558 () Bool)

(assert (=> b!7766668 (= e!4602226 (and tp!2281561 tp!2281558))))

(declare-fun b!7766669 () Bool)

(declare-fun res!3096233 () Bool)

(assert (=> b!7766669 (=> (not res!3096233) (not e!4602222))))

(declare-fun matchR!10196 (Regex!20734 List!73575) Bool)

(assert (=> b!7766669 (= res!3096233 (matchR!10196 lt!2670952 s!14904))))

(assert (= (and start!739790 res!3096232) b!7766669))

(assert (= (and b!7766669 res!3096233) b!7766664))

(assert (= (and b!7766664 res!3096234) b!7766665))

(assert (= (and b!7766665 res!3096231) b!7766662))

(assert (= (and b!7766662 (not res!3096235)) b!7766661))

(assert (= (and start!739790 (is-ElementMatch!20734 r!25924)) b!7766666))

(assert (= (and start!739790 (is-Concat!29579 r!25924)) b!7766668))

(assert (= (and start!739790 (is-Star!20734 r!25924)) b!7766660))

(assert (= (and start!739790 (is-Union!20734 r!25924)) b!7766663))

(assert (= (and start!739790 (is-Cons!73451 s!14904)) b!7766667))

(declare-fun m!8222914 () Bool)

(assert (=> b!7766661 m!8222914))

(declare-fun m!8222916 () Bool)

(assert (=> b!7766665 m!8222916))

(declare-fun m!8222918 () Bool)

(assert (=> b!7766665 m!8222918))

(declare-fun m!8222920 () Bool)

(assert (=> b!7766662 m!8222920))

(declare-fun m!8222922 () Bool)

(assert (=> b!7766662 m!8222922))

(assert (=> b!7766662 m!8222922))

(declare-fun m!8222924 () Bool)

(assert (=> b!7766662 m!8222924))

(declare-fun m!8222926 () Bool)

(assert (=> b!7766662 m!8222926))

(declare-fun m!8222928 () Bool)

(assert (=> b!7766669 m!8222928))

(declare-fun m!8222930 () Bool)

(assert (=> start!739790 m!8222930))

(push 1)

(assert (not b!7766663))

(assert (not b!7766660))

(assert (not b!7766667))

(assert (not b!7766662))

(assert (not b!7766668))

(assert tp_is_empty!51823)

(assert (not b!7766665))

(assert (not b!7766669))

(assert (not b!7766661))

(assert (not start!739790))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7766720 () Bool)

(declare-fun c!1431458 () Bool)

(assert (=> b!7766720 (= c!1431458 (is-Union!20734 lt!2670952))))

(declare-fun e!4602252 () Regex!20734)

(declare-fun e!4602253 () Regex!20734)

(assert (=> b!7766720 (= e!4602252 e!4602253)))

(declare-fun bm!719578 () Bool)

(declare-fun call!719586 () Regex!20734)

(declare-fun call!719583 () Regex!20734)

(assert (=> bm!719578 (= call!719586 call!719583)))

(declare-fun b!7766722 () Bool)

(declare-fun e!4602255 () Regex!20734)

(assert (=> b!7766722 (= e!4602255 e!4602252)))

(declare-fun c!1431457 () Bool)

(assert (=> b!7766722 (= c!1431457 (is-ElementMatch!20734 lt!2670952))))

(declare-fun b!7766723 () Bool)

(assert (=> b!7766723 (= e!4602252 (ite (= (h!79899 s!14904) (c!1431443 lt!2670952)) EmptyExpr!20734 EmptyLang!20734))))

(declare-fun b!7766724 () Bool)

(assert (=> b!7766724 (= e!4602255 EmptyLang!20734)))

(declare-fun bm!719579 () Bool)

(declare-fun call!719585 () Regex!20734)

(assert (=> bm!719579 (= call!719585 (derivativeStep!6079 (ite c!1431458 (regTwo!41981 lt!2670952) (regTwo!41980 lt!2670952)) (h!79899 s!14904)))))

(declare-fun b!7766725 () Bool)

(declare-fun e!4602254 () Regex!20734)

(assert (=> b!7766725 (= e!4602254 (Concat!29579 call!719583 lt!2670952))))

(declare-fun bm!719580 () Bool)

(declare-fun call!719584 () Regex!20734)

(assert (=> bm!719580 (= call!719583 call!719584)))

(declare-fun d!2343987 () Bool)

(declare-fun lt!2670965 () Regex!20734)

(assert (=> d!2343987 (validRegex!11148 lt!2670965)))

(assert (=> d!2343987 (= lt!2670965 e!4602255)))

(declare-fun c!1431456 () Bool)

(assert (=> d!2343987 (= c!1431456 (or (is-EmptyExpr!20734 lt!2670952) (is-EmptyLang!20734 lt!2670952)))))

(assert (=> d!2343987 (validRegex!11148 lt!2670952)))

(assert (=> d!2343987 (= (derivativeStep!6079 lt!2670952 (h!79899 s!14904)) lt!2670965)))

(declare-fun b!7766721 () Bool)

(declare-fun e!4602256 () Regex!20734)

(assert (=> b!7766721 (= e!4602256 (Union!20734 (Concat!29579 call!719586 (regTwo!41980 lt!2670952)) EmptyLang!20734))))

(declare-fun b!7766726 () Bool)

(assert (=> b!7766726 (= e!4602253 (Union!20734 call!719584 call!719585))))

(declare-fun b!7766727 () Bool)

(assert (=> b!7766727 (= e!4602253 e!4602254)))

(declare-fun c!1431459 () Bool)

(assert (=> b!7766727 (= c!1431459 (is-Star!20734 lt!2670952))))

(declare-fun b!7766728 () Bool)

(declare-fun c!1431455 () Bool)

(declare-fun nullable!9132 (Regex!20734) Bool)

(assert (=> b!7766728 (= c!1431455 (nullable!9132 (regOne!41980 lt!2670952)))))

(assert (=> b!7766728 (= e!4602254 e!4602256)))

(declare-fun bm!719581 () Bool)

(assert (=> bm!719581 (= call!719584 (derivativeStep!6079 (ite c!1431458 (regOne!41981 lt!2670952) (ite c!1431459 (reg!21063 lt!2670952) (regOne!41980 lt!2670952))) (h!79899 s!14904)))))

(declare-fun b!7766729 () Bool)

(assert (=> b!7766729 (= e!4602256 (Union!20734 (Concat!29579 call!719586 (regTwo!41980 lt!2670952)) call!719585))))

(assert (= (and d!2343987 c!1431456) b!7766724))

(assert (= (and d!2343987 (not c!1431456)) b!7766722))

(assert (= (and b!7766722 c!1431457) b!7766723))

(assert (= (and b!7766722 (not c!1431457)) b!7766720))

(assert (= (and b!7766720 c!1431458) b!7766726))

(assert (= (and b!7766720 (not c!1431458)) b!7766727))

(assert (= (and b!7766727 c!1431459) b!7766725))

(assert (= (and b!7766727 (not c!1431459)) b!7766728))

(assert (= (and b!7766728 c!1431455) b!7766729))

(assert (= (and b!7766728 (not c!1431455)) b!7766721))

(assert (= (or b!7766729 b!7766721) bm!719578))

(assert (= (or b!7766725 bm!719578) bm!719580))

(assert (= (or b!7766726 b!7766729) bm!719579))

(assert (= (or b!7766726 bm!719580) bm!719581))

(declare-fun m!8222950 () Bool)

(assert (=> bm!719579 m!8222950))

(declare-fun m!8222952 () Bool)

(assert (=> d!2343987 m!8222952))

(assert (=> d!2343987 m!8222930))

(declare-fun m!8222954 () Bool)

(assert (=> b!7766728 m!8222954))

(declare-fun m!8222956 () Bool)

(assert (=> bm!719581 m!8222956))

(assert (=> b!7766665 d!2343987))

(declare-fun b!7766730 () Bool)

(declare-fun c!1431463 () Bool)

(assert (=> b!7766730 (= c!1431463 (is-Union!20734 r!25924))))

(declare-fun e!4602257 () Regex!20734)

(declare-fun e!4602258 () Regex!20734)

(assert (=> b!7766730 (= e!4602257 e!4602258)))

(declare-fun bm!719582 () Bool)

(declare-fun call!719590 () Regex!20734)

(declare-fun call!719587 () Regex!20734)

(assert (=> bm!719582 (= call!719590 call!719587)))

(declare-fun b!7766732 () Bool)

(declare-fun e!4602260 () Regex!20734)

(assert (=> b!7766732 (= e!4602260 e!4602257)))

(declare-fun c!1431462 () Bool)

(assert (=> b!7766732 (= c!1431462 (is-ElementMatch!20734 r!25924))))

(declare-fun b!7766733 () Bool)

(assert (=> b!7766733 (= e!4602257 (ite (= (h!79899 s!14904) (c!1431443 r!25924)) EmptyExpr!20734 EmptyLang!20734))))

(declare-fun b!7766734 () Bool)

(assert (=> b!7766734 (= e!4602260 EmptyLang!20734)))

(declare-fun call!719589 () Regex!20734)

(declare-fun bm!719583 () Bool)

(assert (=> bm!719583 (= call!719589 (derivativeStep!6079 (ite c!1431463 (regTwo!41981 r!25924) (regTwo!41980 r!25924)) (h!79899 s!14904)))))

(declare-fun b!7766735 () Bool)

(declare-fun e!4602259 () Regex!20734)

(assert (=> b!7766735 (= e!4602259 (Concat!29579 call!719587 r!25924))))

(declare-fun bm!719584 () Bool)

(declare-fun call!719588 () Regex!20734)

(assert (=> bm!719584 (= call!719587 call!719588)))

(declare-fun d!2343991 () Bool)

(declare-fun lt!2670966 () Regex!20734)

(assert (=> d!2343991 (validRegex!11148 lt!2670966)))

(assert (=> d!2343991 (= lt!2670966 e!4602260)))

(declare-fun c!1431461 () Bool)

(assert (=> d!2343991 (= c!1431461 (or (is-EmptyExpr!20734 r!25924) (is-EmptyLang!20734 r!25924)))))

(assert (=> d!2343991 (validRegex!11148 r!25924)))

(assert (=> d!2343991 (= (derivativeStep!6079 r!25924 (h!79899 s!14904)) lt!2670966)))

(declare-fun b!7766731 () Bool)

(declare-fun e!4602261 () Regex!20734)

(assert (=> b!7766731 (= e!4602261 (Union!20734 (Concat!29579 call!719590 (regTwo!41980 r!25924)) EmptyLang!20734))))

(declare-fun b!7766736 () Bool)

(assert (=> b!7766736 (= e!4602258 (Union!20734 call!719588 call!719589))))

(declare-fun b!7766737 () Bool)

(assert (=> b!7766737 (= e!4602258 e!4602259)))

(declare-fun c!1431464 () Bool)

(assert (=> b!7766737 (= c!1431464 (is-Star!20734 r!25924))))

(declare-fun b!7766738 () Bool)

(declare-fun c!1431460 () Bool)

(assert (=> b!7766738 (= c!1431460 (nullable!9132 (regOne!41980 r!25924)))))

(assert (=> b!7766738 (= e!4602259 e!4602261)))

(declare-fun bm!719585 () Bool)

(assert (=> bm!719585 (= call!719588 (derivativeStep!6079 (ite c!1431463 (regOne!41981 r!25924) (ite c!1431464 (reg!21063 r!25924) (regOne!41980 r!25924))) (h!79899 s!14904)))))

(declare-fun b!7766739 () Bool)

(assert (=> b!7766739 (= e!4602261 (Union!20734 (Concat!29579 call!719590 (regTwo!41980 r!25924)) call!719589))))

(assert (= (and d!2343991 c!1431461) b!7766734))

(assert (= (and d!2343991 (not c!1431461)) b!7766732))

(assert (= (and b!7766732 c!1431462) b!7766733))

(assert (= (and b!7766732 (not c!1431462)) b!7766730))

(assert (= (and b!7766730 c!1431463) b!7766736))

(assert (= (and b!7766730 (not c!1431463)) b!7766737))

(assert (= (and b!7766737 c!1431464) b!7766735))

(assert (= (and b!7766737 (not c!1431464)) b!7766738))

(assert (= (and b!7766738 c!1431460) b!7766739))

(assert (= (and b!7766738 (not c!1431460)) b!7766731))

(assert (= (or b!7766739 b!7766731) bm!719582))

(assert (= (or b!7766735 bm!719582) bm!719584))

(assert (= (or b!7766736 b!7766739) bm!719583))

(assert (= (or b!7766736 bm!719584) bm!719585))

(declare-fun m!8222958 () Bool)

(assert (=> bm!719583 m!8222958))

(declare-fun m!8222960 () Bool)

(assert (=> d!2343991 m!8222960))

(declare-fun m!8222962 () Bool)

(assert (=> d!2343991 m!8222962))

(declare-fun m!8222964 () Bool)

(assert (=> b!7766738 m!8222964))

(declare-fun m!8222966 () Bool)

(assert (=> bm!719585 m!8222966))

(assert (=> b!7766665 d!2343991))

(declare-fun b!7766796 () Bool)

(declare-fun res!3096285 () Bool)

(declare-fun e!4602294 () Bool)

(assert (=> b!7766796 (=> (not res!3096285) (not e!4602294))))

(declare-fun call!719595 () Bool)

(assert (=> b!7766796 (= res!3096285 (not call!719595))))

(declare-fun b!7766797 () Bool)

(declare-fun e!4602293 () Bool)

(declare-fun lt!2670971 () Bool)

(assert (=> b!7766797 (= e!4602293 (= lt!2670971 call!719595))))

(declare-fun b!7766799 () Bool)

(declare-fun e!4602291 () Bool)

(assert (=> b!7766799 (= e!4602293 e!4602291)))

(declare-fun c!1431477 () Bool)

(assert (=> b!7766799 (= c!1431477 (is-EmptyLang!20734 lt!2670952))))

(declare-fun b!7766800 () Bool)

(declare-fun head!15870 (List!73575) C!41794)

(assert (=> b!7766800 (= e!4602294 (= (head!15870 s!14904) (c!1431443 lt!2670952)))))

(declare-fun b!7766801 () Bool)

(declare-fun e!4602290 () Bool)

(declare-fun e!4602292 () Bool)

(assert (=> b!7766801 (= e!4602290 e!4602292)))

(declare-fun res!3096286 () Bool)

(assert (=> b!7766801 (=> (not res!3096286) (not e!4602292))))

(assert (=> b!7766801 (= res!3096286 (not lt!2670971))))

(declare-fun b!7766802 () Bool)

(assert (=> b!7766802 (= e!4602291 (not lt!2670971))))

(declare-fun b!7766803 () Bool)

(declare-fun e!4602296 () Bool)

(assert (=> b!7766803 (= e!4602296 (nullable!9132 lt!2670952))))

(declare-fun b!7766804 () Bool)

(declare-fun e!4602295 () Bool)

(assert (=> b!7766804 (= e!4602295 (not (= (head!15870 s!14904) (c!1431443 lt!2670952))))))

(declare-fun bm!719590 () Bool)

(declare-fun isEmpty!42123 (List!73575) Bool)

(assert (=> bm!719590 (= call!719595 (isEmpty!42123 s!14904))))

(declare-fun b!7766805 () Bool)

(declare-fun res!3096288 () Bool)

(assert (=> b!7766805 (=> (not res!3096288) (not e!4602294))))

(declare-fun tail!15410 (List!73575) List!73575)

(assert (=> b!7766805 (= res!3096288 (isEmpty!42123 (tail!15410 s!14904)))))

(declare-fun b!7766806 () Bool)

(declare-fun res!3096290 () Bool)

(assert (=> b!7766806 (=> res!3096290 e!4602290)))

(assert (=> b!7766806 (= res!3096290 (not (is-ElementMatch!20734 lt!2670952)))))

(assert (=> b!7766806 (= e!4602291 e!4602290)))

(declare-fun b!7766807 () Bool)

(declare-fun res!3096284 () Bool)

(assert (=> b!7766807 (=> res!3096284 e!4602290)))

(assert (=> b!7766807 (= res!3096284 e!4602294)))

(declare-fun res!3096287 () Bool)

(assert (=> b!7766807 (=> (not res!3096287) (not e!4602294))))

(assert (=> b!7766807 (= res!3096287 lt!2670971)))

(declare-fun b!7766798 () Bool)

(declare-fun res!3096283 () Bool)

(assert (=> b!7766798 (=> res!3096283 e!4602295)))

(assert (=> b!7766798 (= res!3096283 (not (isEmpty!42123 (tail!15410 s!14904))))))

(declare-fun d!2343993 () Bool)

(assert (=> d!2343993 e!4602293))

(declare-fun c!1431478 () Bool)

(assert (=> d!2343993 (= c!1431478 (is-EmptyExpr!20734 lt!2670952))))

(assert (=> d!2343993 (= lt!2670971 e!4602296)))

(declare-fun c!1431479 () Bool)

(assert (=> d!2343993 (= c!1431479 (isEmpty!42123 s!14904))))

(assert (=> d!2343993 (validRegex!11148 lt!2670952)))

(assert (=> d!2343993 (= (matchR!10196 lt!2670952 s!14904) lt!2670971)))

(declare-fun b!7766808 () Bool)

(assert (=> b!7766808 (= e!4602296 (matchR!10196 (derivativeStep!6079 lt!2670952 (head!15870 s!14904)) (tail!15410 s!14904)))))

(declare-fun b!7766809 () Bool)

(assert (=> b!7766809 (= e!4602292 e!4602295)))

(declare-fun res!3096289 () Bool)

(assert (=> b!7766809 (=> res!3096289 e!4602295)))

(assert (=> b!7766809 (= res!3096289 call!719595)))

(assert (= (and d!2343993 c!1431479) b!7766803))

(assert (= (and d!2343993 (not c!1431479)) b!7766808))

(assert (= (and d!2343993 c!1431478) b!7766797))

(assert (= (and d!2343993 (not c!1431478)) b!7766799))

(assert (= (and b!7766799 c!1431477) b!7766802))

(assert (= (and b!7766799 (not c!1431477)) b!7766806))

(assert (= (and b!7766806 (not res!3096290)) b!7766807))

(assert (= (and b!7766807 res!3096287) b!7766796))

(assert (= (and b!7766796 res!3096285) b!7766805))

(assert (= (and b!7766805 res!3096288) b!7766800))

(assert (= (and b!7766807 (not res!3096284)) b!7766801))

(assert (= (and b!7766801 res!3096286) b!7766809))

(assert (= (and b!7766809 (not res!3096289)) b!7766798))

(assert (= (and b!7766798 (not res!3096283)) b!7766804))

(assert (= (or b!7766797 b!7766796 b!7766809) bm!719590))

(declare-fun m!8222968 () Bool)

(assert (=> b!7766798 m!8222968))

(assert (=> b!7766798 m!8222968))

(declare-fun m!8222970 () Bool)

(assert (=> b!7766798 m!8222970))

(declare-fun m!8222972 () Bool)

(assert (=> b!7766804 m!8222972))

(assert (=> b!7766805 m!8222968))

(assert (=> b!7766805 m!8222968))

(assert (=> b!7766805 m!8222970))

(declare-fun m!8222974 () Bool)

(assert (=> b!7766803 m!8222974))

(declare-fun m!8222976 () Bool)

(assert (=> bm!719590 m!8222976))

(assert (=> b!7766808 m!8222972))

(assert (=> b!7766808 m!8222972))

(declare-fun m!8222978 () Bool)

(assert (=> b!7766808 m!8222978))

(assert (=> b!7766808 m!8222968))

(assert (=> b!7766808 m!8222978))

(assert (=> b!7766808 m!8222968))

(declare-fun m!8222980 () Bool)

(assert (=> b!7766808 m!8222980))

(assert (=> b!7766800 m!8222972))

(assert (=> d!2343993 m!8222976))

(assert (=> d!2343993 m!8222930))

(assert (=> b!7766669 d!2343993))

(declare-fun bm!719598 () Bool)

(declare-fun call!719604 () Bool)

(declare-fun c!1431487 () Bool)

(assert (=> bm!719598 (= call!719604 (validRegex!11148 (ite c!1431487 (regOne!41981 lt!2670951) (regTwo!41980 lt!2670951))))))

(declare-fun b!7766842 () Bool)

(declare-fun res!3096312 () Bool)

(declare-fun e!4602321 () Bool)

(assert (=> b!7766842 (=> (not res!3096312) (not e!4602321))))

(assert (=> b!7766842 (= res!3096312 call!719604)))

(declare-fun e!4602320 () Bool)

(assert (=> b!7766842 (= e!4602320 e!4602321)))

(declare-fun b!7766843 () Bool)

(declare-fun e!4602318 () Bool)

(declare-fun e!4602322 () Bool)

(assert (=> b!7766843 (= e!4602318 e!4602322)))

(declare-fun res!3096309 () Bool)

(assert (=> b!7766843 (=> (not res!3096309) (not e!4602322))))

(declare-fun call!719605 () Bool)

(assert (=> b!7766843 (= res!3096309 call!719605)))

(declare-fun b!7766844 () Bool)

(declare-fun res!3096313 () Bool)

(assert (=> b!7766844 (=> res!3096313 e!4602318)))

(assert (=> b!7766844 (= res!3096313 (not (is-Concat!29579 lt!2670951)))))

(assert (=> b!7766844 (= e!4602320 e!4602318)))

(declare-fun b!7766845 () Bool)

(declare-fun e!4602324 () Bool)

(declare-fun e!4602323 () Bool)

(assert (=> b!7766845 (= e!4602324 e!4602323)))

(declare-fun c!1431488 () Bool)

(assert (=> b!7766845 (= c!1431488 (is-Star!20734 lt!2670951))))

(declare-fun bm!719599 () Bool)

(declare-fun call!719603 () Bool)

(assert (=> bm!719599 (= call!719603 (validRegex!11148 (ite c!1431488 (reg!21063 lt!2670951) (ite c!1431487 (regTwo!41981 lt!2670951) (regOne!41980 lt!2670951)))))))

(declare-fun b!7766846 () Bool)

(assert (=> b!7766846 (= e!4602323 e!4602320)))

(assert (=> b!7766846 (= c!1431487 (is-Union!20734 lt!2670951))))

(declare-fun b!7766847 () Bool)

(assert (=> b!7766847 (= e!4602321 call!719605)))

(declare-fun b!7766848 () Bool)

(assert (=> b!7766848 (= e!4602322 call!719604)))

(declare-fun d!2343995 () Bool)

(declare-fun res!3096311 () Bool)

(assert (=> d!2343995 (=> res!3096311 e!4602324)))

(assert (=> d!2343995 (= res!3096311 (is-ElementMatch!20734 lt!2670951))))

(assert (=> d!2343995 (= (validRegex!11148 lt!2670951) e!4602324)))

(declare-fun b!7766849 () Bool)

(declare-fun e!4602319 () Bool)

(assert (=> b!7766849 (= e!4602323 e!4602319)))

(declare-fun res!3096310 () Bool)

(assert (=> b!7766849 (= res!3096310 (not (nullable!9132 (reg!21063 lt!2670951))))))

(assert (=> b!7766849 (=> (not res!3096310) (not e!4602319))))

(declare-fun b!7766850 () Bool)

(assert (=> b!7766850 (= e!4602319 call!719603)))

(declare-fun bm!719600 () Bool)

(assert (=> bm!719600 (= call!719605 call!719603)))

(assert (= (and d!2343995 (not res!3096311)) b!7766845))

(assert (= (and b!7766845 c!1431488) b!7766849))

(assert (= (and b!7766845 (not c!1431488)) b!7766846))

(assert (= (and b!7766849 res!3096310) b!7766850))

(assert (= (and b!7766846 c!1431487) b!7766842))

(assert (= (and b!7766846 (not c!1431487)) b!7766844))

(assert (= (and b!7766842 res!3096312) b!7766847))

(assert (= (and b!7766844 (not res!3096313)) b!7766843))

(assert (= (and b!7766843 res!3096309) b!7766848))

(assert (= (or b!7766847 b!7766843) bm!719600))

(assert (= (or b!7766842 b!7766848) bm!719598))

(assert (= (or b!7766850 bm!719600) bm!719599))

(declare-fun m!8222996 () Bool)

(assert (=> bm!719598 m!8222996))

(declare-fun m!8222998 () Bool)

(assert (=> bm!719599 m!8222998))

(declare-fun m!8223000 () Bool)

(assert (=> b!7766849 m!8223000))

(assert (=> b!7766662 d!2343995))

(declare-fun d!2343999 () Bool)

(declare-fun isEmpty!42124 (Option!17711) Bool)

(assert (=> d!2343999 (= (isDefined!14323 (findConcatSeparation!3741 lt!2670951 lt!2670952 Nil!73451 (t!388310 s!14904) (t!388310 s!14904))) (not (isEmpty!42124 (findConcatSeparation!3741 lt!2670951 lt!2670952 Nil!73451 (t!388310 s!14904) (t!388310 s!14904)))))))

(declare-fun bs!1966049 () Bool)

(assert (= bs!1966049 d!2343999))

(assert (=> bs!1966049 m!8222922))

(declare-fun m!8223002 () Bool)

(assert (=> bs!1966049 m!8223002))

(assert (=> b!7766662 d!2343999))

(declare-fun b!7766905 () Bool)

(declare-fun e!4602366 () Option!17711)

(assert (=> b!7766905 (= e!4602366 None!17710)))

(declare-fun b!7766906 () Bool)

(declare-fun res!3096346 () Bool)

(declare-fun e!4602365 () Bool)

(assert (=> b!7766906 (=> (not res!3096346) (not e!4602365))))

(declare-fun lt!2670980 () Option!17711)

(declare-fun get!26215 (Option!17711) tuple2!69834)

(assert (=> b!7766906 (= res!3096346 (matchR!10196 lt!2670951 (_1!38220 (get!26215 lt!2670980))))))

(declare-fun b!7766907 () Bool)

(declare-fun res!3096348 () Bool)

(assert (=> b!7766907 (=> (not res!3096348) (not e!4602365))))

(assert (=> b!7766907 (= res!3096348 (matchR!10196 lt!2670952 (_2!38220 (get!26215 lt!2670980))))))

(declare-fun b!7766908 () Bool)

(declare-fun e!4602363 () Option!17711)

(assert (=> b!7766908 (= e!4602363 (Some!17710 (tuple2!69835 Nil!73451 (t!388310 s!14904))))))

(declare-fun b!7766909 () Bool)

(declare-fun e!4602367 () Bool)

(assert (=> b!7766909 (= e!4602367 (matchR!10196 lt!2670952 (t!388310 s!14904)))))

(declare-fun b!7766910 () Bool)

(assert (=> b!7766910 (= e!4602365 (= (++!17894 (_1!38220 (get!26215 lt!2670980)) (_2!38220 (get!26215 lt!2670980))) (t!388310 s!14904)))))

(declare-fun b!7766911 () Bool)

(assert (=> b!7766911 (= e!4602363 e!4602366)))

(declare-fun c!1431502 () Bool)

(assert (=> b!7766911 (= c!1431502 (is-Nil!73451 (t!388310 s!14904)))))

(declare-fun b!7766912 () Bool)

(declare-fun lt!2670981 () Unit!168430)

(declare-fun lt!2670979 () Unit!168430)

(assert (=> b!7766912 (= lt!2670981 lt!2670979)))

(assert (=> b!7766912 (= (++!17894 (++!17894 Nil!73451 (Cons!73451 (h!79899 (t!388310 s!14904)) Nil!73451)) (t!388310 (t!388310 s!14904))) (t!388310 s!14904))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3378 (List!73575 C!41794 List!73575 List!73575) Unit!168430)

(assert (=> b!7766912 (= lt!2670979 (lemmaMoveElementToOtherListKeepsConcatEq!3378 Nil!73451 (h!79899 (t!388310 s!14904)) (t!388310 (t!388310 s!14904)) (t!388310 s!14904)))))

(assert (=> b!7766912 (= e!4602366 (findConcatSeparation!3741 lt!2670951 lt!2670952 (++!17894 Nil!73451 (Cons!73451 (h!79899 (t!388310 s!14904)) Nil!73451)) (t!388310 (t!388310 s!14904)) (t!388310 s!14904)))))

(declare-fun b!7766913 () Bool)

(declare-fun e!4602364 () Bool)

(assert (=> b!7766913 (= e!4602364 (not (isDefined!14323 lt!2670980)))))

(declare-fun d!2344001 () Bool)

(assert (=> d!2344001 e!4602364))

(declare-fun res!3096345 () Bool)

(assert (=> d!2344001 (=> res!3096345 e!4602364)))

(assert (=> d!2344001 (= res!3096345 e!4602365)))

(declare-fun res!3096344 () Bool)

(assert (=> d!2344001 (=> (not res!3096344) (not e!4602365))))

(assert (=> d!2344001 (= res!3096344 (isDefined!14323 lt!2670980))))

(assert (=> d!2344001 (= lt!2670980 e!4602363)))

(declare-fun c!1431501 () Bool)

(assert (=> d!2344001 (= c!1431501 e!4602367)))

(declare-fun res!3096347 () Bool)

(assert (=> d!2344001 (=> (not res!3096347) (not e!4602367))))

(assert (=> d!2344001 (= res!3096347 (matchR!10196 lt!2670951 Nil!73451))))

(assert (=> d!2344001 (validRegex!11148 lt!2670951)))

(assert (=> d!2344001 (= (findConcatSeparation!3741 lt!2670951 lt!2670952 Nil!73451 (t!388310 s!14904) (t!388310 s!14904)) lt!2670980)))

(assert (= (and d!2344001 res!3096347) b!7766909))

(assert (= (and d!2344001 c!1431501) b!7766908))

(assert (= (and d!2344001 (not c!1431501)) b!7766911))

(assert (= (and b!7766911 c!1431502) b!7766905))

(assert (= (and b!7766911 (not c!1431502)) b!7766912))

(assert (= (and d!2344001 res!3096344) b!7766906))

(assert (= (and b!7766906 res!3096346) b!7766907))

(assert (= (and b!7766907 res!3096348) b!7766910))

(assert (= (and d!2344001 (not res!3096345)) b!7766913))

(declare-fun m!8223016 () Bool)

(assert (=> b!7766906 m!8223016))

(declare-fun m!8223018 () Bool)

(assert (=> b!7766906 m!8223018))

(declare-fun m!8223020 () Bool)

(assert (=> b!7766912 m!8223020))

(assert (=> b!7766912 m!8223020))

(declare-fun m!8223022 () Bool)

(assert (=> b!7766912 m!8223022))

(declare-fun m!8223024 () Bool)

(assert (=> b!7766912 m!8223024))

(assert (=> b!7766912 m!8223020))

(declare-fun m!8223026 () Bool)

(assert (=> b!7766912 m!8223026))

(assert (=> b!7766907 m!8223016))

(declare-fun m!8223028 () Bool)

(assert (=> b!7766907 m!8223028))

(declare-fun m!8223030 () Bool)

(assert (=> d!2344001 m!8223030))

(declare-fun m!8223032 () Bool)

(assert (=> d!2344001 m!8223032))

(assert (=> d!2344001 m!8222920))

(assert (=> b!7766910 m!8223016))

(declare-fun m!8223034 () Bool)

(assert (=> b!7766910 m!8223034))

(assert (=> b!7766913 m!8223030))

(declare-fun m!8223036 () Bool)

(assert (=> b!7766909 m!8223036))

(assert (=> b!7766662 d!2344001))

(declare-fun d!2344007 () Bool)

(assert (=> d!2344007 (isDefined!14323 (findConcatSeparation!3741 lt!2670951 lt!2670952 Nil!73451 (t!388310 s!14904) (t!388310 s!14904)))))

(declare-fun lt!2670984 () Unit!168430)

(declare-fun choose!59464 (Regex!20734 Regex!20734 List!73575) Unit!168430)

(assert (=> d!2344007 (= lt!2670984 (choose!59464 lt!2670951 lt!2670952 (t!388310 s!14904)))))

(assert (=> d!2344007 (validRegex!11148 lt!2670951)))

(assert (=> d!2344007 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!331 lt!2670951 lt!2670952 (t!388310 s!14904)) lt!2670984)))

(declare-fun bs!1966051 () Bool)

(assert (= bs!1966051 d!2344007))

(assert (=> bs!1966051 m!8222922))

(assert (=> bs!1966051 m!8222922))

(assert (=> bs!1966051 m!8222924))

(declare-fun m!8223040 () Bool)

(assert (=> bs!1966051 m!8223040))

(assert (=> bs!1966051 m!8222920))

(assert (=> b!7766662 d!2344007))

(declare-fun bm!719613 () Bool)

(declare-fun call!719619 () Bool)

(declare-fun c!1431503 () Bool)

(assert (=> bm!719613 (= call!719619 (validRegex!11148 (ite c!1431503 (regOne!41981 lt!2670952) (regTwo!41980 lt!2670952))))))

(declare-fun b!7766914 () Bool)

(declare-fun res!3096352 () Bool)

(declare-fun e!4602371 () Bool)

(assert (=> b!7766914 (=> (not res!3096352) (not e!4602371))))

(assert (=> b!7766914 (= res!3096352 call!719619)))

(declare-fun e!4602370 () Bool)

(assert (=> b!7766914 (= e!4602370 e!4602371)))

(declare-fun b!7766915 () Bool)

(declare-fun e!4602368 () Bool)

(declare-fun e!4602372 () Bool)

(assert (=> b!7766915 (= e!4602368 e!4602372)))

(declare-fun res!3096349 () Bool)

(assert (=> b!7766915 (=> (not res!3096349) (not e!4602372))))

(declare-fun call!719620 () Bool)

(assert (=> b!7766915 (= res!3096349 call!719620)))

(declare-fun b!7766916 () Bool)

(declare-fun res!3096353 () Bool)

(assert (=> b!7766916 (=> res!3096353 e!4602368)))

(assert (=> b!7766916 (= res!3096353 (not (is-Concat!29579 lt!2670952)))))

(assert (=> b!7766916 (= e!4602370 e!4602368)))

(declare-fun b!7766917 () Bool)

(declare-fun e!4602374 () Bool)

(declare-fun e!4602373 () Bool)

(assert (=> b!7766917 (= e!4602374 e!4602373)))

(declare-fun c!1431504 () Bool)

(assert (=> b!7766917 (= c!1431504 (is-Star!20734 lt!2670952))))

(declare-fun bm!719614 () Bool)

(declare-fun call!719618 () Bool)

(assert (=> bm!719614 (= call!719618 (validRegex!11148 (ite c!1431504 (reg!21063 lt!2670952) (ite c!1431503 (regTwo!41981 lt!2670952) (regOne!41980 lt!2670952)))))))

(declare-fun b!7766918 () Bool)

(assert (=> b!7766918 (= e!4602373 e!4602370)))

(assert (=> b!7766918 (= c!1431503 (is-Union!20734 lt!2670952))))

(declare-fun b!7766919 () Bool)

(assert (=> b!7766919 (= e!4602371 call!719620)))

(declare-fun b!7766920 () Bool)

(assert (=> b!7766920 (= e!4602372 call!719619)))

(declare-fun d!2344011 () Bool)

(declare-fun res!3096351 () Bool)

(assert (=> d!2344011 (=> res!3096351 e!4602374)))

(assert (=> d!2344011 (= res!3096351 (is-ElementMatch!20734 lt!2670952))))

(assert (=> d!2344011 (= (validRegex!11148 lt!2670952) e!4602374)))

(declare-fun b!7766921 () Bool)

(declare-fun e!4602369 () Bool)

(assert (=> b!7766921 (= e!4602373 e!4602369)))

(declare-fun res!3096350 () Bool)

(assert (=> b!7766921 (= res!3096350 (not (nullable!9132 (reg!21063 lt!2670952))))))

(assert (=> b!7766921 (=> (not res!3096350) (not e!4602369))))

(declare-fun b!7766922 () Bool)

(assert (=> b!7766922 (= e!4602369 call!719618)))

(declare-fun bm!719615 () Bool)

(assert (=> bm!719615 (= call!719620 call!719618)))

(assert (= (and d!2344011 (not res!3096351)) b!7766917))

(assert (= (and b!7766917 c!1431504) b!7766921))

(assert (= (and b!7766917 (not c!1431504)) b!7766918))

(assert (= (and b!7766921 res!3096350) b!7766922))

(assert (= (and b!7766918 c!1431503) b!7766914))

(assert (= (and b!7766918 (not c!1431503)) b!7766916))

(assert (= (and b!7766914 res!3096352) b!7766919))

(assert (= (and b!7766916 (not res!3096353)) b!7766915))

(assert (= (and b!7766915 res!3096349) b!7766920))

(assert (= (or b!7766919 b!7766915) bm!719615))

(assert (= (or b!7766914 b!7766920) bm!719613))

(assert (= (or b!7766922 bm!719615) bm!719614))

(declare-fun m!8223042 () Bool)

(assert (=> bm!719613 m!8223042))

(declare-fun m!8223044 () Bool)

(assert (=> bm!719614 m!8223044))

(declare-fun m!8223046 () Bool)

(assert (=> b!7766921 m!8223046))

(assert (=> start!739790 d!2344011))

(declare-fun b!7766934 () Bool)

(declare-fun e!4602380 () Bool)

(declare-fun lt!2670987 () List!73575)

(assert (=> b!7766934 (= e!4602380 (or (not (= (t!388310 s!14904) Nil!73451)) (= lt!2670987 Nil!73451)))))

(declare-fun b!7766931 () Bool)

(declare-fun e!4602379 () List!73575)

(assert (=> b!7766931 (= e!4602379 (t!388310 s!14904))))

(declare-fun b!7766933 () Bool)

(declare-fun res!3096358 () Bool)

(assert (=> b!7766933 (=> (not res!3096358) (not e!4602380))))

(declare-fun size!42695 (List!73575) Int)

(assert (=> b!7766933 (= res!3096358 (= (size!42695 lt!2670987) (+ (size!42695 Nil!73451) (size!42695 (t!388310 s!14904)))))))

(declare-fun b!7766932 () Bool)

(assert (=> b!7766932 (= e!4602379 (Cons!73451 (h!79899 Nil!73451) (++!17894 (t!388310 Nil!73451) (t!388310 s!14904))))))

(declare-fun d!2344013 () Bool)

(assert (=> d!2344013 e!4602380))

(declare-fun res!3096359 () Bool)

(assert (=> d!2344013 (=> (not res!3096359) (not e!4602380))))

(declare-fun content!15592 (List!73575) (Set C!41794))

(assert (=> d!2344013 (= res!3096359 (= (content!15592 lt!2670987) (set.union (content!15592 Nil!73451) (content!15592 (t!388310 s!14904)))))))

(assert (=> d!2344013 (= lt!2670987 e!4602379)))

(declare-fun c!1431507 () Bool)

(assert (=> d!2344013 (= c!1431507 (is-Nil!73451 Nil!73451))))

(assert (=> d!2344013 (= (++!17894 Nil!73451 (t!388310 s!14904)) lt!2670987)))

(assert (= (and d!2344013 c!1431507) b!7766931))

(assert (= (and d!2344013 (not c!1431507)) b!7766932))

(assert (= (and d!2344013 res!3096359) b!7766933))

(assert (= (and b!7766933 res!3096358) b!7766934))

(declare-fun m!8223048 () Bool)

(assert (=> b!7766933 m!8223048))

(declare-fun m!8223050 () Bool)

(assert (=> b!7766933 m!8223050))

(declare-fun m!8223052 () Bool)

(assert (=> b!7766933 m!8223052))

(declare-fun m!8223054 () Bool)

(assert (=> b!7766932 m!8223054))

(declare-fun m!8223056 () Bool)

(assert (=> d!2344013 m!8223056))

(declare-fun m!8223058 () Bool)

(assert (=> d!2344013 m!8223058))

(declare-fun m!8223060 () Bool)

(assert (=> d!2344013 m!8223060))

(assert (=> b!7766661 d!2344013))

(declare-fun b!7766947 () Bool)

(declare-fun e!4602383 () Bool)

(declare-fun tp!2281592 () Bool)

(assert (=> b!7766947 (= e!4602383 tp!2281592)))

(assert (=> b!7766663 (= tp!2281562 e!4602383)))

(declare-fun b!7766945 () Bool)

(assert (=> b!7766945 (= e!4602383 tp_is_empty!51823)))

(declare-fun b!7766948 () Bool)

(declare-fun tp!2281593 () Bool)

(declare-fun tp!2281595 () Bool)

(assert (=> b!7766948 (= e!4602383 (and tp!2281593 tp!2281595))))

(declare-fun b!7766946 () Bool)

(declare-fun tp!2281596 () Bool)

(declare-fun tp!2281594 () Bool)

(assert (=> b!7766946 (= e!4602383 (and tp!2281596 tp!2281594))))

(assert (= (and b!7766663 (is-ElementMatch!20734 (regOne!41981 r!25924))) b!7766945))

(assert (= (and b!7766663 (is-Concat!29579 (regOne!41981 r!25924))) b!7766946))

(assert (= (and b!7766663 (is-Star!20734 (regOne!41981 r!25924))) b!7766947))

(assert (= (and b!7766663 (is-Union!20734 (regOne!41981 r!25924))) b!7766948))

(declare-fun b!7766951 () Bool)

(declare-fun e!4602384 () Bool)

(declare-fun tp!2281597 () Bool)

(assert (=> b!7766951 (= e!4602384 tp!2281597)))

(assert (=> b!7766663 (= tp!2281560 e!4602384)))

(declare-fun b!7766949 () Bool)

(assert (=> b!7766949 (= e!4602384 tp_is_empty!51823)))

(declare-fun b!7766952 () Bool)

(declare-fun tp!2281598 () Bool)

(declare-fun tp!2281600 () Bool)

(assert (=> b!7766952 (= e!4602384 (and tp!2281598 tp!2281600))))

(declare-fun b!7766950 () Bool)

(declare-fun tp!2281601 () Bool)

(declare-fun tp!2281599 () Bool)

(assert (=> b!7766950 (= e!4602384 (and tp!2281601 tp!2281599))))

(assert (= (and b!7766663 (is-ElementMatch!20734 (regTwo!41981 r!25924))) b!7766949))

(assert (= (and b!7766663 (is-Concat!29579 (regTwo!41981 r!25924))) b!7766950))

(assert (= (and b!7766663 (is-Star!20734 (regTwo!41981 r!25924))) b!7766951))

(assert (= (and b!7766663 (is-Union!20734 (regTwo!41981 r!25924))) b!7766952))

(declare-fun b!7766955 () Bool)

(declare-fun e!4602385 () Bool)

(declare-fun tp!2281602 () Bool)

(assert (=> b!7766955 (= e!4602385 tp!2281602)))

(assert (=> b!7766668 (= tp!2281561 e!4602385)))

(declare-fun b!7766953 () Bool)

(assert (=> b!7766953 (= e!4602385 tp_is_empty!51823)))

(declare-fun b!7766956 () Bool)

(declare-fun tp!2281603 () Bool)

(declare-fun tp!2281605 () Bool)

(assert (=> b!7766956 (= e!4602385 (and tp!2281603 tp!2281605))))

(declare-fun b!7766954 () Bool)

(declare-fun tp!2281606 () Bool)

(declare-fun tp!2281604 () Bool)

(assert (=> b!7766954 (= e!4602385 (and tp!2281606 tp!2281604))))

(assert (= (and b!7766668 (is-ElementMatch!20734 (regOne!41980 r!25924))) b!7766953))

(assert (= (and b!7766668 (is-Concat!29579 (regOne!41980 r!25924))) b!7766954))

(assert (= (and b!7766668 (is-Star!20734 (regOne!41980 r!25924))) b!7766955))

(assert (= (and b!7766668 (is-Union!20734 (regOne!41980 r!25924))) b!7766956))

(declare-fun b!7766959 () Bool)

(declare-fun e!4602386 () Bool)

(declare-fun tp!2281607 () Bool)

(assert (=> b!7766959 (= e!4602386 tp!2281607)))

(assert (=> b!7766668 (= tp!2281558 e!4602386)))

(declare-fun b!7766957 () Bool)

(assert (=> b!7766957 (= e!4602386 tp_is_empty!51823)))

(declare-fun b!7766960 () Bool)

(declare-fun tp!2281608 () Bool)

(declare-fun tp!2281610 () Bool)

(assert (=> b!7766960 (= e!4602386 (and tp!2281608 tp!2281610))))

(declare-fun b!7766958 () Bool)

(declare-fun tp!2281611 () Bool)

(declare-fun tp!2281609 () Bool)

(assert (=> b!7766958 (= e!4602386 (and tp!2281611 tp!2281609))))

(assert (= (and b!7766668 (is-ElementMatch!20734 (regTwo!41980 r!25924))) b!7766957))

(assert (= (and b!7766668 (is-Concat!29579 (regTwo!41980 r!25924))) b!7766958))

(assert (= (and b!7766668 (is-Star!20734 (regTwo!41980 r!25924))) b!7766959))

(assert (= (and b!7766668 (is-Union!20734 (regTwo!41980 r!25924))) b!7766960))

(declare-fun b!7766965 () Bool)

(declare-fun e!4602389 () Bool)

(declare-fun tp!2281614 () Bool)

(assert (=> b!7766965 (= e!4602389 (and tp_is_empty!51823 tp!2281614))))

(assert (=> b!7766667 (= tp!2281563 e!4602389)))

(assert (= (and b!7766667 (is-Cons!73451 (t!388310 s!14904))) b!7766965))

(declare-fun b!7766968 () Bool)

(declare-fun e!4602390 () Bool)

(declare-fun tp!2281615 () Bool)

(assert (=> b!7766968 (= e!4602390 tp!2281615)))

(assert (=> b!7766660 (= tp!2281559 e!4602390)))

(declare-fun b!7766966 () Bool)

(assert (=> b!7766966 (= e!4602390 tp_is_empty!51823)))

(declare-fun b!7766969 () Bool)

(declare-fun tp!2281616 () Bool)

(declare-fun tp!2281618 () Bool)

(assert (=> b!7766969 (= e!4602390 (and tp!2281616 tp!2281618))))

(declare-fun b!7766967 () Bool)

(declare-fun tp!2281619 () Bool)

(declare-fun tp!2281617 () Bool)

(assert (=> b!7766967 (= e!4602390 (and tp!2281619 tp!2281617))))

(assert (= (and b!7766660 (is-ElementMatch!20734 (reg!21063 r!25924))) b!7766966))

(assert (= (and b!7766660 (is-Concat!29579 (reg!21063 r!25924))) b!7766967))

(assert (= (and b!7766660 (is-Star!20734 (reg!21063 r!25924))) b!7766968))

(assert (= (and b!7766660 (is-Union!20734 (reg!21063 r!25924))) b!7766969))

(push 1)

(assert (not bm!719581))

(assert (not b!7766950))

(assert (not d!2344013))

(assert (not d!2343993))

(assert (not b!7766956))

(assert (not bm!719585))

(assert (not b!7766805))

(assert (not b!7766933))

(assert (not b!7766849))

(assert (not bm!719613))

(assert (not b!7766912))

(assert (not b!7766728))

(assert (not bm!719614))

(assert (not b!7766958))

(assert (not d!2344007))

(assert (not b!7766803))

(assert (not b!7766967))

(assert (not b!7766968))

(assert (not b!7766946))

(assert (not bm!719599))

(assert (not b!7766932))

(assert (not d!2343987))

(assert (not d!2343991))

(assert (not b!7766959))

(assert (not bm!719579))

(assert (not b!7766921))

(assert (not b!7766808))

(assert (not b!7766909))

(assert (not b!7766951))

(assert (not b!7766947))

(assert (not b!7766965))

(assert (not b!7766804))

(assert (not b!7766948))

(assert (not b!7766800))

(assert (not b!7766960))

(assert (not bm!719583))

(assert (not b!7766798))

(assert (not b!7766913))

(assert (not b!7766910))

(assert (not d!2343999))

(assert (not b!7766969))

(assert (not b!7766738))

(assert (not d!2344001))

(assert (not b!7766954))

(assert (not b!7766906))

(assert (not bm!719590))

(assert (not bm!719598))

(assert (not b!7766952))

(assert (not b!7766907))

(assert (not b!7766955))

(assert tp_is_empty!51823)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

