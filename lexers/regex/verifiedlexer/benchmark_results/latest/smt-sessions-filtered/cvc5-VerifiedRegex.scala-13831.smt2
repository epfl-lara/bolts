; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735698 () Bool)

(assert start!735698)

(declare-fun res!3061647 () Bool)

(declare-fun e!4543367 () Bool)

(assert (=> start!735698 (=> (not res!3061647) (not e!4543367))))

(declare-datatypes ((C!41238 0))(
  ( (C!41239 (val!31059 Int)) )
))
(declare-datatypes ((Regex!20456 0))(
  ( (ElementMatch!20456 (c!1407958 C!41238)) (Concat!29301 (regOne!41424 Regex!20456) (regTwo!41424 Regex!20456)) (EmptyExpr!20456) (Star!20456 (reg!20785 Regex!20456)) (EmptyLang!20456) (Union!20456 (regOne!41425 Regex!20456) (regTwo!41425 Regex!20456)) )
))
(declare-fun r!14126 () Regex!20456)

(declare-fun validRegex!10874 (Regex!20456) Bool)

(assert (=> start!735698 (= res!3061647 (validRegex!10874 r!14126))))

(assert (=> start!735698 e!4543367))

(declare-fun e!4543365 () Bool)

(assert (=> start!735698 e!4543365))

(declare-fun e!4543368 () Bool)

(assert (=> start!735698 e!4543368))

(declare-fun b!7643904 () Bool)

(declare-fun tp_is_empty!51267 () Bool)

(assert (=> b!7643904 (= e!4543365 tp_is_empty!51267)))

(declare-fun b!7643905 () Bool)

(declare-fun e!4543364 () Bool)

(declare-fun e!4543370 () Bool)

(assert (=> b!7643905 (= e!4543364 e!4543370)))

(declare-fun res!3061649 () Bool)

(assert (=> b!7643905 (=> res!3061649 e!4543370)))

(assert (=> b!7643905 (= res!3061649 (not (validRegex!10874 (regTwo!41425 r!14126))))))

(declare-fun b!7643906 () Bool)

(assert (=> b!7643906 (= e!4543367 e!4543364)))

(declare-fun res!3061648 () Bool)

(assert (=> b!7643906 (=> (not res!3061648) (not e!4543364))))

(declare-datatypes ((List!73307 0))(
  ( (Nil!73183) (Cons!73183 (h!79631 C!41238) (t!388042 List!73307)) )
))
(declare-fun s!9605 () List!73307)

(declare-fun matchR!9957 (Regex!20456 List!73307) Bool)

(assert (=> b!7643906 (= res!3061648 (matchR!9957 (regTwo!41425 r!14126) s!9605))))

(declare-datatypes ((Unit!167884 0))(
  ( (Unit!167885) )
))
(declare-fun lt!2660743 () Unit!167884)

(declare-fun e!4543369 () Unit!167884)

(assert (=> b!7643906 (= lt!2660743 e!4543369)))

(declare-fun c!1407957 () Bool)

(assert (=> b!7643906 (= c!1407957 (matchR!9957 (regOne!41425 r!14126) s!9605))))

(declare-fun b!7643907 () Bool)

(declare-fun Unit!167886 () Unit!167884)

(assert (=> b!7643907 (= e!4543369 Unit!167886)))

(declare-fun lt!2660744 () Unit!167884)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!103 (Regex!20456 Regex!20456 List!73307) Unit!167884)

(assert (=> b!7643907 (= lt!2660744 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!103 (regOne!41425 r!14126) (regTwo!41425 r!14126) s!9605))))

(declare-fun res!3061650 () Bool)

(assert (=> b!7643907 (= res!3061650 (matchR!9957 r!14126 s!9605))))

(declare-fun e!4543366 () Bool)

(assert (=> b!7643907 (=> (not res!3061650) (not e!4543366))))

(assert (=> b!7643907 e!4543366))

(declare-fun b!7643908 () Bool)

(assert (=> b!7643908 (= e!4543366 false)))

(declare-fun b!7643909 () Bool)

(declare-fun tp!2231318 () Bool)

(declare-fun tp!2231314 () Bool)

(assert (=> b!7643909 (= e!4543365 (and tp!2231318 tp!2231314))))

(declare-fun b!7643910 () Bool)

(declare-fun tp!2231315 () Bool)

(declare-fun tp!2231317 () Bool)

(assert (=> b!7643910 (= e!4543365 (and tp!2231315 tp!2231317))))

(declare-fun b!7643911 () Bool)

(declare-fun res!3061646 () Bool)

(assert (=> b!7643911 (=> (not res!3061646) (not e!4543367))))

(assert (=> b!7643911 (= res!3061646 (and (not (is-EmptyExpr!20456 r!14126)) (not (is-EmptyLang!20456 r!14126)) (not (is-ElementMatch!20456 r!14126)) (is-Union!20456 r!14126)))))

(declare-fun b!7643912 () Bool)

(declare-fun tp!2231319 () Bool)

(assert (=> b!7643912 (= e!4543365 tp!2231319)))

(declare-fun b!7643913 () Bool)

(declare-fun Unit!167887 () Unit!167884)

(assert (=> b!7643913 (= e!4543369 Unit!167887)))

(declare-fun b!7643914 () Bool)

(declare-fun res!3061645 () Bool)

(assert (=> b!7643914 (=> (not res!3061645) (not e!4543367))))

(assert (=> b!7643914 (= res!3061645 (not (matchR!9957 r!14126 s!9605)))))

(declare-fun b!7643915 () Bool)

(assert (=> b!7643915 (= e!4543370 (not (validRegex!10874 (regOne!41425 r!14126))))))

(declare-fun b!7643916 () Bool)

(declare-fun tp!2231316 () Bool)

(assert (=> b!7643916 (= e!4543368 (and tp_is_empty!51267 tp!2231316))))

(assert (= (and start!735698 res!3061647) b!7643911))

(assert (= (and b!7643911 res!3061646) b!7643914))

(assert (= (and b!7643914 res!3061645) b!7643906))

(assert (= (and b!7643906 c!1407957) b!7643907))

(assert (= (and b!7643906 (not c!1407957)) b!7643913))

(assert (= (and b!7643907 res!3061650) b!7643908))

(assert (= (and b!7643906 res!3061648) b!7643905))

(assert (= (and b!7643905 (not res!3061649)) b!7643915))

(assert (= (and start!735698 (is-ElementMatch!20456 r!14126)) b!7643904))

(assert (= (and start!735698 (is-Concat!29301 r!14126)) b!7643909))

(assert (= (and start!735698 (is-Star!20456 r!14126)) b!7643912))

(assert (= (and start!735698 (is-Union!20456 r!14126)) b!7643910))

(assert (= (and start!735698 (is-Cons!73183 s!9605)) b!7643916))

(declare-fun m!8163854 () Bool)

(assert (=> b!7643907 m!8163854))

(declare-fun m!8163856 () Bool)

(assert (=> b!7643907 m!8163856))

(declare-fun m!8163858 () Bool)

(assert (=> b!7643915 m!8163858))

(declare-fun m!8163860 () Bool)

(assert (=> start!735698 m!8163860))

(assert (=> b!7643914 m!8163856))

(declare-fun m!8163862 () Bool)

(assert (=> b!7643906 m!8163862))

(declare-fun m!8163864 () Bool)

(assert (=> b!7643906 m!8163864))

(declare-fun m!8163866 () Bool)

(assert (=> b!7643905 m!8163866))

(push 1)

(assert (not b!7643906))

(assert (not b!7643915))

(assert (not b!7643910))

(assert (not b!7643912))

(assert (not b!7643907))

(assert tp_is_empty!51267)

(assert (not start!735698))

(assert (not b!7643909))

(assert (not b!7643916))

(assert (not b!7643905))

(assert (not b!7643914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2325384 () Bool)

(assert (=> d!2325384 (matchR!9957 (Union!20456 (regOne!41425 r!14126) (regTwo!41425 r!14126)) s!9605)))

(declare-fun lt!2660753 () Unit!167884)

(declare-fun choose!59024 (Regex!20456 Regex!20456 List!73307) Unit!167884)

(assert (=> d!2325384 (= lt!2660753 (choose!59024 (regOne!41425 r!14126) (regTwo!41425 r!14126) s!9605))))

(declare-fun e!4543394 () Bool)

(assert (=> d!2325384 e!4543394))

(declare-fun res!3061671 () Bool)

(assert (=> d!2325384 (=> (not res!3061671) (not e!4543394))))

(assert (=> d!2325384 (= res!3061671 (validRegex!10874 (regOne!41425 r!14126)))))

(assert (=> d!2325384 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!103 (regOne!41425 r!14126) (regTwo!41425 r!14126) s!9605) lt!2660753)))

(declare-fun b!7643958 () Bool)

(assert (=> b!7643958 (= e!4543394 (validRegex!10874 (regTwo!41425 r!14126)))))

(assert (= (and d!2325384 res!3061671) b!7643958))

(declare-fun m!8163882 () Bool)

(assert (=> d!2325384 m!8163882))

(declare-fun m!8163884 () Bool)

(assert (=> d!2325384 m!8163884))

(assert (=> d!2325384 m!8163858))

(assert (=> b!7643958 m!8163866))

(assert (=> b!7643907 d!2325384))

(declare-fun b!7644005 () Bool)

(declare-fun e!4543424 () Bool)

(declare-fun lt!2660756 () Bool)

(declare-fun call!701713 () Bool)

(assert (=> b!7644005 (= e!4543424 (= lt!2660756 call!701713))))

(declare-fun bm!701708 () Bool)

(declare-fun isEmpty!41810 (List!73307) Bool)

(assert (=> bm!701708 (= call!701713 (isEmpty!41810 s!9605))))

(declare-fun b!7644006 () Bool)

(declare-fun e!4543423 () Bool)

(assert (=> b!7644006 (= e!4543424 e!4543423)))

(declare-fun c!1407973 () Bool)

(assert (=> b!7644006 (= c!1407973 (is-EmptyLang!20456 r!14126))))

(declare-fun b!7644007 () Bool)

(declare-fun res!3061703 () Bool)

(declare-fun e!4543427 () Bool)

(assert (=> b!7644007 (=> (not res!3061703) (not e!4543427))))

(declare-fun tail!15269 (List!73307) List!73307)

(assert (=> b!7644007 (= res!3061703 (isEmpty!41810 (tail!15269 s!9605)))))

(declare-fun b!7644008 () Bool)

(declare-fun res!3061705 () Bool)

(declare-fun e!4543425 () Bool)

(assert (=> b!7644008 (=> res!3061705 e!4543425)))

(assert (=> b!7644008 (= res!3061705 e!4543427)))

(declare-fun res!3061701 () Bool)

(assert (=> b!7644008 (=> (not res!3061701) (not e!4543427))))

(assert (=> b!7644008 (= res!3061701 lt!2660756)))

(declare-fun b!7644009 () Bool)

(declare-fun e!4543428 () Bool)

(declare-fun nullable!8959 (Regex!20456) Bool)

(assert (=> b!7644009 (= e!4543428 (nullable!8959 r!14126))))

(declare-fun b!7644010 () Bool)

(declare-fun head!15729 (List!73307) C!41238)

(assert (=> b!7644010 (= e!4543427 (= (head!15729 s!9605) (c!1407958 r!14126)))))

(declare-fun b!7644011 () Bool)

(declare-fun e!4543429 () Bool)

(declare-fun e!4543426 () Bool)

(assert (=> b!7644011 (= e!4543429 e!4543426)))

(declare-fun res!3061699 () Bool)

(assert (=> b!7644011 (=> res!3061699 e!4543426)))

(assert (=> b!7644011 (= res!3061699 call!701713)))

(declare-fun b!7644012 () Bool)

(assert (=> b!7644012 (= e!4543426 (not (= (head!15729 s!9605) (c!1407958 r!14126))))))

(declare-fun b!7644013 () Bool)

(declare-fun res!3061704 () Bool)

(assert (=> b!7644013 (=> res!3061704 e!4543426)))

(assert (=> b!7644013 (= res!3061704 (not (isEmpty!41810 (tail!15269 s!9605))))))

(declare-fun b!7644014 () Bool)

(assert (=> b!7644014 (= e!4543423 (not lt!2660756))))

(declare-fun b!7644015 () Bool)

(assert (=> b!7644015 (= e!4543425 e!4543429)))

(declare-fun res!3061702 () Bool)

(assert (=> b!7644015 (=> (not res!3061702) (not e!4543429))))

(assert (=> b!7644015 (= res!3061702 (not lt!2660756))))

(declare-fun b!7644016 () Bool)

(declare-fun res!3061698 () Bool)

(assert (=> b!7644016 (=> (not res!3061698) (not e!4543427))))

(assert (=> b!7644016 (= res!3061698 (not call!701713))))

(declare-fun d!2325388 () Bool)

(assert (=> d!2325388 e!4543424))

(declare-fun c!1407975 () Bool)

(assert (=> d!2325388 (= c!1407975 (is-EmptyExpr!20456 r!14126))))

(assert (=> d!2325388 (= lt!2660756 e!4543428)))

(declare-fun c!1407974 () Bool)

(assert (=> d!2325388 (= c!1407974 (isEmpty!41810 s!9605))))

(assert (=> d!2325388 (validRegex!10874 r!14126)))

(assert (=> d!2325388 (= (matchR!9957 r!14126 s!9605) lt!2660756)))

(declare-fun b!7644017 () Bool)

(declare-fun derivativeStep!5929 (Regex!20456 C!41238) Regex!20456)

(assert (=> b!7644017 (= e!4543428 (matchR!9957 (derivativeStep!5929 r!14126 (head!15729 s!9605)) (tail!15269 s!9605)))))

(declare-fun b!7644018 () Bool)

(declare-fun res!3061700 () Bool)

(assert (=> b!7644018 (=> res!3061700 e!4543425)))

(assert (=> b!7644018 (= res!3061700 (not (is-ElementMatch!20456 r!14126)))))

(assert (=> b!7644018 (= e!4543423 e!4543425)))

(assert (= (and d!2325388 c!1407974) b!7644009))

(assert (= (and d!2325388 (not c!1407974)) b!7644017))

(assert (= (and d!2325388 c!1407975) b!7644005))

(assert (= (and d!2325388 (not c!1407975)) b!7644006))

(assert (= (and b!7644006 c!1407973) b!7644014))

(assert (= (and b!7644006 (not c!1407973)) b!7644018))

(assert (= (and b!7644018 (not res!3061700)) b!7644008))

(assert (= (and b!7644008 res!3061701) b!7644016))

(assert (= (and b!7644016 res!3061698) b!7644007))

(assert (= (and b!7644007 res!3061703) b!7644010))

(assert (= (and b!7644008 (not res!3061705)) b!7644015))

(assert (= (and b!7644015 res!3061702) b!7644011))

(assert (= (and b!7644011 (not res!3061699)) b!7644013))

(assert (= (and b!7644013 (not res!3061704)) b!7644012))

(assert (= (or b!7644005 b!7644011 b!7644016) bm!701708))

(declare-fun m!8163886 () Bool)

(assert (=> bm!701708 m!8163886))

(declare-fun m!8163888 () Bool)

(assert (=> b!7644012 m!8163888))

(declare-fun m!8163890 () Bool)

(assert (=> b!7644009 m!8163890))

(assert (=> b!7644010 m!8163888))

(declare-fun m!8163892 () Bool)

(assert (=> b!7644013 m!8163892))

(assert (=> b!7644013 m!8163892))

(declare-fun m!8163894 () Bool)

(assert (=> b!7644013 m!8163894))

(assert (=> d!2325388 m!8163886))

(assert (=> d!2325388 m!8163860))

(assert (=> b!7644017 m!8163888))

(assert (=> b!7644017 m!8163888))

(declare-fun m!8163896 () Bool)

(assert (=> b!7644017 m!8163896))

(assert (=> b!7644017 m!8163892))

(assert (=> b!7644017 m!8163896))

(assert (=> b!7644017 m!8163892))

(declare-fun m!8163898 () Bool)

(assert (=> b!7644017 m!8163898))

(assert (=> b!7644007 m!8163892))

(assert (=> b!7644007 m!8163892))

(assert (=> b!7644007 m!8163894))

(assert (=> b!7643907 d!2325388))

(assert (=> b!7643914 d!2325388))

(declare-fun c!1407982 () Bool)

(declare-fun bm!701718 () Bool)

(declare-fun c!1407983 () Bool)

(declare-fun call!701723 () Bool)

(assert (=> bm!701718 (= call!701723 (validRegex!10874 (ite c!1407982 (reg!20785 (regOne!41425 r!14126)) (ite c!1407983 (regOne!41425 (regOne!41425 r!14126)) (regOne!41424 (regOne!41425 r!14126))))))))

(declare-fun b!7644046 () Bool)

(declare-fun e!4543457 () Bool)

(declare-fun e!4543451 () Bool)

(assert (=> b!7644046 (= e!4543457 e!4543451)))

(declare-fun res!3061724 () Bool)

(assert (=> b!7644046 (=> (not res!3061724) (not e!4543451))))

(declare-fun call!701725 () Bool)

(assert (=> b!7644046 (= res!3061724 call!701725)))

(declare-fun b!7644047 () Bool)

(declare-fun e!4543453 () Bool)

(declare-fun e!4543454 () Bool)

(assert (=> b!7644047 (= e!4543453 e!4543454)))

(declare-fun res!3061725 () Bool)

(assert (=> b!7644047 (= res!3061725 (not (nullable!8959 (reg!20785 (regOne!41425 r!14126)))))))

(assert (=> b!7644047 (=> (not res!3061725) (not e!4543454))))

(declare-fun b!7644048 () Bool)

(assert (=> b!7644048 (= e!4543454 call!701723)))

(declare-fun b!7644049 () Bool)

(declare-fun res!3061722 () Bool)

(declare-fun e!4543452 () Bool)

(assert (=> b!7644049 (=> (not res!3061722) (not e!4543452))))

(assert (=> b!7644049 (= res!3061722 call!701725)))

(declare-fun e!4543455 () Bool)

(assert (=> b!7644049 (= e!4543455 e!4543452)))

(declare-fun b!7644050 () Bool)

(declare-fun e!4543456 () Bool)

(assert (=> b!7644050 (= e!4543456 e!4543453)))

(assert (=> b!7644050 (= c!1407982 (is-Star!20456 (regOne!41425 r!14126)))))

(declare-fun bm!701719 () Bool)

(declare-fun call!701724 () Bool)

(assert (=> bm!701719 (= call!701724 (validRegex!10874 (ite c!1407983 (regTwo!41425 (regOne!41425 r!14126)) (regTwo!41424 (regOne!41425 r!14126)))))))

(declare-fun b!7644051 () Bool)

(assert (=> b!7644051 (= e!4543452 call!701724)))

(declare-fun d!2325390 () Bool)

(declare-fun res!3061721 () Bool)

(assert (=> d!2325390 (=> res!3061721 e!4543456)))

(assert (=> d!2325390 (= res!3061721 (is-ElementMatch!20456 (regOne!41425 r!14126)))))

(assert (=> d!2325390 (= (validRegex!10874 (regOne!41425 r!14126)) e!4543456)))

(declare-fun bm!701720 () Bool)

(assert (=> bm!701720 (= call!701725 call!701723)))

(declare-fun b!7644052 () Bool)

(declare-fun res!3061723 () Bool)

(assert (=> b!7644052 (=> res!3061723 e!4543457)))

(assert (=> b!7644052 (= res!3061723 (not (is-Concat!29301 (regOne!41425 r!14126))))))

(assert (=> b!7644052 (= e!4543455 e!4543457)))

(declare-fun b!7644053 () Bool)

(assert (=> b!7644053 (= e!4543453 e!4543455)))

(assert (=> b!7644053 (= c!1407983 (is-Union!20456 (regOne!41425 r!14126)))))

(declare-fun b!7644054 () Bool)

(assert (=> b!7644054 (= e!4543451 call!701724)))

(assert (= (and d!2325390 (not res!3061721)) b!7644050))

(assert (= (and b!7644050 c!1407982) b!7644047))

(assert (= (and b!7644050 (not c!1407982)) b!7644053))

(assert (= (and b!7644047 res!3061725) b!7644048))

(assert (= (and b!7644053 c!1407983) b!7644049))

(assert (= (and b!7644053 (not c!1407983)) b!7644052))

(assert (= (and b!7644049 res!3061722) b!7644051))

(assert (= (and b!7644052 (not res!3061723)) b!7644046))

(assert (= (and b!7644046 res!3061724) b!7644054))

(assert (= (or b!7644049 b!7644046) bm!701720))

(assert (= (or b!7644051 b!7644054) bm!701719))

(assert (= (or b!7644048 bm!701720) bm!701718))

(declare-fun m!8163906 () Bool)

(assert (=> bm!701718 m!8163906))

(declare-fun m!8163908 () Bool)

(assert (=> b!7644047 m!8163908))

(declare-fun m!8163910 () Bool)

(assert (=> bm!701719 m!8163910))

(assert (=> b!7643915 d!2325390))

(declare-fun b!7644055 () Bool)

(declare-fun e!4543459 () Bool)

(declare-fun lt!2660757 () Bool)

(declare-fun call!701726 () Bool)

(assert (=> b!7644055 (= e!4543459 (= lt!2660757 call!701726))))

(declare-fun bm!701721 () Bool)

(assert (=> bm!701721 (= call!701726 (isEmpty!41810 s!9605))))

(declare-fun b!7644056 () Bool)

(declare-fun e!4543458 () Bool)

(assert (=> b!7644056 (= e!4543459 e!4543458)))

(declare-fun c!1407984 () Bool)

(assert (=> b!7644056 (= c!1407984 (is-EmptyLang!20456 (regTwo!41425 r!14126)))))

(declare-fun b!7644057 () Bool)

(declare-fun res!3061731 () Bool)

(declare-fun e!4543462 () Bool)

(assert (=> b!7644057 (=> (not res!3061731) (not e!4543462))))

(assert (=> b!7644057 (= res!3061731 (isEmpty!41810 (tail!15269 s!9605)))))

(declare-fun b!7644058 () Bool)

(declare-fun res!3061733 () Bool)

(declare-fun e!4543460 () Bool)

(assert (=> b!7644058 (=> res!3061733 e!4543460)))

(assert (=> b!7644058 (= res!3061733 e!4543462)))

(declare-fun res!3061729 () Bool)

(assert (=> b!7644058 (=> (not res!3061729) (not e!4543462))))

(assert (=> b!7644058 (= res!3061729 lt!2660757)))

(declare-fun b!7644059 () Bool)

(declare-fun e!4543463 () Bool)

(assert (=> b!7644059 (= e!4543463 (nullable!8959 (regTwo!41425 r!14126)))))

(declare-fun b!7644060 () Bool)

(assert (=> b!7644060 (= e!4543462 (= (head!15729 s!9605) (c!1407958 (regTwo!41425 r!14126))))))

(declare-fun b!7644061 () Bool)

(declare-fun e!4543464 () Bool)

(declare-fun e!4543461 () Bool)

(assert (=> b!7644061 (= e!4543464 e!4543461)))

(declare-fun res!3061727 () Bool)

(assert (=> b!7644061 (=> res!3061727 e!4543461)))

(assert (=> b!7644061 (= res!3061727 call!701726)))

(declare-fun b!7644062 () Bool)

(assert (=> b!7644062 (= e!4543461 (not (= (head!15729 s!9605) (c!1407958 (regTwo!41425 r!14126)))))))

(declare-fun b!7644063 () Bool)

(declare-fun res!3061732 () Bool)

(assert (=> b!7644063 (=> res!3061732 e!4543461)))

(assert (=> b!7644063 (= res!3061732 (not (isEmpty!41810 (tail!15269 s!9605))))))

(declare-fun b!7644064 () Bool)

(assert (=> b!7644064 (= e!4543458 (not lt!2660757))))

(declare-fun b!7644065 () Bool)

(assert (=> b!7644065 (= e!4543460 e!4543464)))

(declare-fun res!3061730 () Bool)

(assert (=> b!7644065 (=> (not res!3061730) (not e!4543464))))

(assert (=> b!7644065 (= res!3061730 (not lt!2660757))))

(declare-fun b!7644066 () Bool)

(declare-fun res!3061726 () Bool)

(assert (=> b!7644066 (=> (not res!3061726) (not e!4543462))))

(assert (=> b!7644066 (= res!3061726 (not call!701726))))

(declare-fun d!2325394 () Bool)

(assert (=> d!2325394 e!4543459))

(declare-fun c!1407986 () Bool)

(assert (=> d!2325394 (= c!1407986 (is-EmptyExpr!20456 (regTwo!41425 r!14126)))))

(assert (=> d!2325394 (= lt!2660757 e!4543463)))

(declare-fun c!1407985 () Bool)

(assert (=> d!2325394 (= c!1407985 (isEmpty!41810 s!9605))))

(assert (=> d!2325394 (validRegex!10874 (regTwo!41425 r!14126))))

(assert (=> d!2325394 (= (matchR!9957 (regTwo!41425 r!14126) s!9605) lt!2660757)))

(declare-fun b!7644067 () Bool)

(assert (=> b!7644067 (= e!4543463 (matchR!9957 (derivativeStep!5929 (regTwo!41425 r!14126) (head!15729 s!9605)) (tail!15269 s!9605)))))

(declare-fun b!7644068 () Bool)

(declare-fun res!3061728 () Bool)

(assert (=> b!7644068 (=> res!3061728 e!4543460)))

(assert (=> b!7644068 (= res!3061728 (not (is-ElementMatch!20456 (regTwo!41425 r!14126))))))

(assert (=> b!7644068 (= e!4543458 e!4543460)))

(assert (= (and d!2325394 c!1407985) b!7644059))

(assert (= (and d!2325394 (not c!1407985)) b!7644067))

(assert (= (and d!2325394 c!1407986) b!7644055))

(assert (= (and d!2325394 (not c!1407986)) b!7644056))

(assert (= (and b!7644056 c!1407984) b!7644064))

(assert (= (and b!7644056 (not c!1407984)) b!7644068))

(assert (= (and b!7644068 (not res!3061728)) b!7644058))

(assert (= (and b!7644058 res!3061729) b!7644066))

(assert (= (and b!7644066 res!3061726) b!7644057))

(assert (= (and b!7644057 res!3061731) b!7644060))

(assert (= (and b!7644058 (not res!3061733)) b!7644065))

(assert (= (and b!7644065 res!3061730) b!7644061))

(assert (= (and b!7644061 (not res!3061727)) b!7644063))

(assert (= (and b!7644063 (not res!3061732)) b!7644062))

(assert (= (or b!7644055 b!7644061 b!7644066) bm!701721))

(assert (=> bm!701721 m!8163886))

(assert (=> b!7644062 m!8163888))

(declare-fun m!8163912 () Bool)

(assert (=> b!7644059 m!8163912))

(assert (=> b!7644060 m!8163888))

(assert (=> b!7644063 m!8163892))

(assert (=> b!7644063 m!8163892))

(assert (=> b!7644063 m!8163894))

(assert (=> d!2325394 m!8163886))

(assert (=> d!2325394 m!8163866))

(assert (=> b!7644067 m!8163888))

(assert (=> b!7644067 m!8163888))

(declare-fun m!8163914 () Bool)

(assert (=> b!7644067 m!8163914))

(assert (=> b!7644067 m!8163892))

(assert (=> b!7644067 m!8163914))

(assert (=> b!7644067 m!8163892))

(declare-fun m!8163916 () Bool)

(assert (=> b!7644067 m!8163916))

(assert (=> b!7644057 m!8163892))

(assert (=> b!7644057 m!8163892))

(assert (=> b!7644057 m!8163894))

(assert (=> b!7643906 d!2325394))

(declare-fun b!7644069 () Bool)

(declare-fun e!4543466 () Bool)

(declare-fun lt!2660758 () Bool)

(declare-fun call!701727 () Bool)

(assert (=> b!7644069 (= e!4543466 (= lt!2660758 call!701727))))

(declare-fun bm!701722 () Bool)

(assert (=> bm!701722 (= call!701727 (isEmpty!41810 s!9605))))

(declare-fun b!7644070 () Bool)

(declare-fun e!4543465 () Bool)

(assert (=> b!7644070 (= e!4543466 e!4543465)))

(declare-fun c!1407987 () Bool)

(assert (=> b!7644070 (= c!1407987 (is-EmptyLang!20456 (regOne!41425 r!14126)))))

(declare-fun b!7644071 () Bool)

(declare-fun res!3061739 () Bool)

(declare-fun e!4543469 () Bool)

(assert (=> b!7644071 (=> (not res!3061739) (not e!4543469))))

(assert (=> b!7644071 (= res!3061739 (isEmpty!41810 (tail!15269 s!9605)))))

(declare-fun b!7644072 () Bool)

(declare-fun res!3061741 () Bool)

(declare-fun e!4543467 () Bool)

(assert (=> b!7644072 (=> res!3061741 e!4543467)))

(assert (=> b!7644072 (= res!3061741 e!4543469)))

(declare-fun res!3061737 () Bool)

(assert (=> b!7644072 (=> (not res!3061737) (not e!4543469))))

(assert (=> b!7644072 (= res!3061737 lt!2660758)))

(declare-fun b!7644073 () Bool)

(declare-fun e!4543470 () Bool)

(assert (=> b!7644073 (= e!4543470 (nullable!8959 (regOne!41425 r!14126)))))

(declare-fun b!7644074 () Bool)

(assert (=> b!7644074 (= e!4543469 (= (head!15729 s!9605) (c!1407958 (regOne!41425 r!14126))))))

(declare-fun b!7644075 () Bool)

(declare-fun e!4543471 () Bool)

(declare-fun e!4543468 () Bool)

(assert (=> b!7644075 (= e!4543471 e!4543468)))

(declare-fun res!3061735 () Bool)

(assert (=> b!7644075 (=> res!3061735 e!4543468)))

(assert (=> b!7644075 (= res!3061735 call!701727)))

(declare-fun b!7644076 () Bool)

(assert (=> b!7644076 (= e!4543468 (not (= (head!15729 s!9605) (c!1407958 (regOne!41425 r!14126)))))))

(declare-fun b!7644077 () Bool)

(declare-fun res!3061740 () Bool)

(assert (=> b!7644077 (=> res!3061740 e!4543468)))

(assert (=> b!7644077 (= res!3061740 (not (isEmpty!41810 (tail!15269 s!9605))))))

(declare-fun b!7644078 () Bool)

(assert (=> b!7644078 (= e!4543465 (not lt!2660758))))

(declare-fun b!7644079 () Bool)

(assert (=> b!7644079 (= e!4543467 e!4543471)))

(declare-fun res!3061738 () Bool)

(assert (=> b!7644079 (=> (not res!3061738) (not e!4543471))))

(assert (=> b!7644079 (= res!3061738 (not lt!2660758))))

(declare-fun b!7644080 () Bool)

(declare-fun res!3061734 () Bool)

(assert (=> b!7644080 (=> (not res!3061734) (not e!4543469))))

(assert (=> b!7644080 (= res!3061734 (not call!701727))))

(declare-fun d!2325396 () Bool)

(assert (=> d!2325396 e!4543466))

(declare-fun c!1407989 () Bool)

(assert (=> d!2325396 (= c!1407989 (is-EmptyExpr!20456 (regOne!41425 r!14126)))))

(assert (=> d!2325396 (= lt!2660758 e!4543470)))

(declare-fun c!1407988 () Bool)

(assert (=> d!2325396 (= c!1407988 (isEmpty!41810 s!9605))))

(assert (=> d!2325396 (validRegex!10874 (regOne!41425 r!14126))))

(assert (=> d!2325396 (= (matchR!9957 (regOne!41425 r!14126) s!9605) lt!2660758)))

(declare-fun b!7644081 () Bool)

(assert (=> b!7644081 (= e!4543470 (matchR!9957 (derivativeStep!5929 (regOne!41425 r!14126) (head!15729 s!9605)) (tail!15269 s!9605)))))

(declare-fun b!7644082 () Bool)

(declare-fun res!3061736 () Bool)

(assert (=> b!7644082 (=> res!3061736 e!4543467)))

(assert (=> b!7644082 (= res!3061736 (not (is-ElementMatch!20456 (regOne!41425 r!14126))))))

(assert (=> b!7644082 (= e!4543465 e!4543467)))

(assert (= (and d!2325396 c!1407988) b!7644073))

(assert (= (and d!2325396 (not c!1407988)) b!7644081))

(assert (= (and d!2325396 c!1407989) b!7644069))

(assert (= (and d!2325396 (not c!1407989)) b!7644070))

(assert (= (and b!7644070 c!1407987) b!7644078))

(assert (= (and b!7644070 (not c!1407987)) b!7644082))

(assert (= (and b!7644082 (not res!3061736)) b!7644072))

(assert (= (and b!7644072 res!3061737) b!7644080))

(assert (= (and b!7644080 res!3061734) b!7644071))

(assert (= (and b!7644071 res!3061739) b!7644074))

(assert (= (and b!7644072 (not res!3061741)) b!7644079))

(assert (= (and b!7644079 res!3061738) b!7644075))

(assert (= (and b!7644075 (not res!3061735)) b!7644077))

(assert (= (and b!7644077 (not res!3061740)) b!7644076))

(assert (= (or b!7644069 b!7644075 b!7644080) bm!701722))

(assert (=> bm!701722 m!8163886))

(assert (=> b!7644076 m!8163888))

(declare-fun m!8163918 () Bool)

(assert (=> b!7644073 m!8163918))

(assert (=> b!7644074 m!8163888))

(assert (=> b!7644077 m!8163892))

(assert (=> b!7644077 m!8163892))

(assert (=> b!7644077 m!8163894))

(assert (=> d!2325396 m!8163886))

(assert (=> d!2325396 m!8163858))

(assert (=> b!7644081 m!8163888))

(assert (=> b!7644081 m!8163888))

(declare-fun m!8163920 () Bool)

(assert (=> b!7644081 m!8163920))

(assert (=> b!7644081 m!8163892))

(assert (=> b!7644081 m!8163920))

(assert (=> b!7644081 m!8163892))

(declare-fun m!8163922 () Bool)

(assert (=> b!7644081 m!8163922))

(assert (=> b!7644071 m!8163892))

(assert (=> b!7644071 m!8163892))

(assert (=> b!7644071 m!8163894))

(assert (=> b!7643906 d!2325396))

(declare-fun call!701728 () Bool)

(declare-fun bm!701723 () Bool)

(declare-fun c!1407990 () Bool)

(declare-fun c!1407991 () Bool)

(assert (=> bm!701723 (= call!701728 (validRegex!10874 (ite c!1407990 (reg!20785 (regTwo!41425 r!14126)) (ite c!1407991 (regOne!41425 (regTwo!41425 r!14126)) (regOne!41424 (regTwo!41425 r!14126))))))))

(declare-fun b!7644083 () Bool)

(declare-fun e!4543478 () Bool)

(declare-fun e!4543472 () Bool)

(assert (=> b!7644083 (= e!4543478 e!4543472)))

(declare-fun res!3061745 () Bool)

(assert (=> b!7644083 (=> (not res!3061745) (not e!4543472))))

(declare-fun call!701730 () Bool)

(assert (=> b!7644083 (= res!3061745 call!701730)))

(declare-fun b!7644084 () Bool)

(declare-fun e!4543474 () Bool)

(declare-fun e!4543475 () Bool)

(assert (=> b!7644084 (= e!4543474 e!4543475)))

(declare-fun res!3061746 () Bool)

(assert (=> b!7644084 (= res!3061746 (not (nullable!8959 (reg!20785 (regTwo!41425 r!14126)))))))

(assert (=> b!7644084 (=> (not res!3061746) (not e!4543475))))

(declare-fun b!7644085 () Bool)

(assert (=> b!7644085 (= e!4543475 call!701728)))

(declare-fun b!7644086 () Bool)

(declare-fun res!3061743 () Bool)

(declare-fun e!4543473 () Bool)

(assert (=> b!7644086 (=> (not res!3061743) (not e!4543473))))

(assert (=> b!7644086 (= res!3061743 call!701730)))

(declare-fun e!4543476 () Bool)

(assert (=> b!7644086 (= e!4543476 e!4543473)))

(declare-fun b!7644087 () Bool)

(declare-fun e!4543477 () Bool)

(assert (=> b!7644087 (= e!4543477 e!4543474)))

(assert (=> b!7644087 (= c!1407990 (is-Star!20456 (regTwo!41425 r!14126)))))

(declare-fun bm!701724 () Bool)

(declare-fun call!701729 () Bool)

(assert (=> bm!701724 (= call!701729 (validRegex!10874 (ite c!1407991 (regTwo!41425 (regTwo!41425 r!14126)) (regTwo!41424 (regTwo!41425 r!14126)))))))

(declare-fun b!7644088 () Bool)

(assert (=> b!7644088 (= e!4543473 call!701729)))

(declare-fun d!2325398 () Bool)

(declare-fun res!3061742 () Bool)

(assert (=> d!2325398 (=> res!3061742 e!4543477)))

(assert (=> d!2325398 (= res!3061742 (is-ElementMatch!20456 (regTwo!41425 r!14126)))))

(assert (=> d!2325398 (= (validRegex!10874 (regTwo!41425 r!14126)) e!4543477)))

(declare-fun bm!701725 () Bool)

(assert (=> bm!701725 (= call!701730 call!701728)))

(declare-fun b!7644089 () Bool)

(declare-fun res!3061744 () Bool)

(assert (=> b!7644089 (=> res!3061744 e!4543478)))

(assert (=> b!7644089 (= res!3061744 (not (is-Concat!29301 (regTwo!41425 r!14126))))))

(assert (=> b!7644089 (= e!4543476 e!4543478)))

(declare-fun b!7644090 () Bool)

(assert (=> b!7644090 (= e!4543474 e!4543476)))

(assert (=> b!7644090 (= c!1407991 (is-Union!20456 (regTwo!41425 r!14126)))))

(declare-fun b!7644091 () Bool)

(assert (=> b!7644091 (= e!4543472 call!701729)))

(assert (= (and d!2325398 (not res!3061742)) b!7644087))

(assert (= (and b!7644087 c!1407990) b!7644084))

(assert (= (and b!7644087 (not c!1407990)) b!7644090))

(assert (= (and b!7644084 res!3061746) b!7644085))

(assert (= (and b!7644090 c!1407991) b!7644086))

(assert (= (and b!7644090 (not c!1407991)) b!7644089))

(assert (= (and b!7644086 res!3061743) b!7644088))

(assert (= (and b!7644089 (not res!3061744)) b!7644083))

(assert (= (and b!7644083 res!3061745) b!7644091))

(assert (= (or b!7644086 b!7644083) bm!701725))

(assert (= (or b!7644088 b!7644091) bm!701724))

(assert (= (or b!7644085 bm!701725) bm!701723))

(declare-fun m!8163924 () Bool)

(assert (=> bm!701723 m!8163924))

(declare-fun m!8163926 () Bool)

(assert (=> b!7644084 m!8163926))

(declare-fun m!8163928 () Bool)

(assert (=> bm!701724 m!8163928))

(assert (=> b!7643905 d!2325398))

(declare-fun c!1407993 () Bool)

(declare-fun c!1407992 () Bool)

(declare-fun bm!701726 () Bool)

(declare-fun call!701731 () Bool)

(assert (=> bm!701726 (= call!701731 (validRegex!10874 (ite c!1407992 (reg!20785 r!14126) (ite c!1407993 (regOne!41425 r!14126) (regOne!41424 r!14126)))))))

(declare-fun b!7644092 () Bool)

(declare-fun e!4543485 () Bool)

(declare-fun e!4543479 () Bool)

(assert (=> b!7644092 (= e!4543485 e!4543479)))

(declare-fun res!3061750 () Bool)

(assert (=> b!7644092 (=> (not res!3061750) (not e!4543479))))

(declare-fun call!701733 () Bool)

(assert (=> b!7644092 (= res!3061750 call!701733)))

(declare-fun b!7644093 () Bool)

(declare-fun e!4543481 () Bool)

(declare-fun e!4543482 () Bool)

(assert (=> b!7644093 (= e!4543481 e!4543482)))

(declare-fun res!3061751 () Bool)

(assert (=> b!7644093 (= res!3061751 (not (nullable!8959 (reg!20785 r!14126))))))

(assert (=> b!7644093 (=> (not res!3061751) (not e!4543482))))

(declare-fun b!7644094 () Bool)

(assert (=> b!7644094 (= e!4543482 call!701731)))

(declare-fun b!7644095 () Bool)

(declare-fun res!3061748 () Bool)

(declare-fun e!4543480 () Bool)

(assert (=> b!7644095 (=> (not res!3061748) (not e!4543480))))

(assert (=> b!7644095 (= res!3061748 call!701733)))

(declare-fun e!4543483 () Bool)

(assert (=> b!7644095 (= e!4543483 e!4543480)))

(declare-fun b!7644096 () Bool)

(declare-fun e!4543484 () Bool)

(assert (=> b!7644096 (= e!4543484 e!4543481)))

(assert (=> b!7644096 (= c!1407992 (is-Star!20456 r!14126))))

(declare-fun bm!701727 () Bool)

(declare-fun call!701732 () Bool)

(assert (=> bm!701727 (= call!701732 (validRegex!10874 (ite c!1407993 (regTwo!41425 r!14126) (regTwo!41424 r!14126))))))

(declare-fun b!7644097 () Bool)

(assert (=> b!7644097 (= e!4543480 call!701732)))

(declare-fun d!2325400 () Bool)

(declare-fun res!3061747 () Bool)

(assert (=> d!2325400 (=> res!3061747 e!4543484)))

(assert (=> d!2325400 (= res!3061747 (is-ElementMatch!20456 r!14126))))

(assert (=> d!2325400 (= (validRegex!10874 r!14126) e!4543484)))

(declare-fun bm!701728 () Bool)

(assert (=> bm!701728 (= call!701733 call!701731)))

(declare-fun b!7644098 () Bool)

(declare-fun res!3061749 () Bool)

(assert (=> b!7644098 (=> res!3061749 e!4543485)))

(assert (=> b!7644098 (= res!3061749 (not (is-Concat!29301 r!14126)))))

(assert (=> b!7644098 (= e!4543483 e!4543485)))

(declare-fun b!7644099 () Bool)

(assert (=> b!7644099 (= e!4543481 e!4543483)))

(assert (=> b!7644099 (= c!1407993 (is-Union!20456 r!14126))))

(declare-fun b!7644100 () Bool)

(assert (=> b!7644100 (= e!4543479 call!701732)))

(assert (= (and d!2325400 (not res!3061747)) b!7644096))

(assert (= (and b!7644096 c!1407992) b!7644093))

(assert (= (and b!7644096 (not c!1407992)) b!7644099))

(assert (= (and b!7644093 res!3061751) b!7644094))

(assert (= (and b!7644099 c!1407993) b!7644095))

(assert (= (and b!7644099 (not c!1407993)) b!7644098))

(assert (= (and b!7644095 res!3061748) b!7644097))

(assert (= (and b!7644098 (not res!3061749)) b!7644092))

(assert (= (and b!7644092 res!3061750) b!7644100))

(assert (= (or b!7644095 b!7644092) bm!701728))

(assert (= (or b!7644097 b!7644100) bm!701727))

(assert (= (or b!7644094 bm!701728) bm!701726))

(declare-fun m!8163930 () Bool)

(assert (=> bm!701726 m!8163930))

(declare-fun m!8163932 () Bool)

(assert (=> b!7644093 m!8163932))

(declare-fun m!8163934 () Bool)

(assert (=> bm!701727 m!8163934))

(assert (=> start!735698 d!2325400))

(declare-fun b!7644111 () Bool)

(declare-fun e!4543488 () Bool)

(assert (=> b!7644111 (= e!4543488 tp_is_empty!51267)))

(declare-fun b!7644114 () Bool)

(declare-fun tp!2231351 () Bool)

(declare-fun tp!2231350 () Bool)

(assert (=> b!7644114 (= e!4543488 (and tp!2231351 tp!2231350))))

(declare-fun b!7644113 () Bool)

(declare-fun tp!2231348 () Bool)

(assert (=> b!7644113 (= e!4543488 tp!2231348)))

(assert (=> b!7643912 (= tp!2231319 e!4543488)))

(declare-fun b!7644112 () Bool)

(declare-fun tp!2231349 () Bool)

(declare-fun tp!2231352 () Bool)

(assert (=> b!7644112 (= e!4543488 (and tp!2231349 tp!2231352))))

(assert (= (and b!7643912 (is-ElementMatch!20456 (reg!20785 r!14126))) b!7644111))

(assert (= (and b!7643912 (is-Concat!29301 (reg!20785 r!14126))) b!7644112))

(assert (= (and b!7643912 (is-Star!20456 (reg!20785 r!14126))) b!7644113))

(assert (= (and b!7643912 (is-Union!20456 (reg!20785 r!14126))) b!7644114))

(declare-fun b!7644115 () Bool)

(declare-fun e!4543489 () Bool)

(assert (=> b!7644115 (= e!4543489 tp_is_empty!51267)))

(declare-fun b!7644118 () Bool)

(declare-fun tp!2231356 () Bool)

(declare-fun tp!2231355 () Bool)

(assert (=> b!7644118 (= e!4543489 (and tp!2231356 tp!2231355))))

(declare-fun b!7644117 () Bool)

(declare-fun tp!2231353 () Bool)

(assert (=> b!7644117 (= e!4543489 tp!2231353)))

(assert (=> b!7643910 (= tp!2231315 e!4543489)))

(declare-fun b!7644116 () Bool)

(declare-fun tp!2231354 () Bool)

(declare-fun tp!2231357 () Bool)

(assert (=> b!7644116 (= e!4543489 (and tp!2231354 tp!2231357))))

(assert (= (and b!7643910 (is-ElementMatch!20456 (regOne!41425 r!14126))) b!7644115))

(assert (= (and b!7643910 (is-Concat!29301 (regOne!41425 r!14126))) b!7644116))

(assert (= (and b!7643910 (is-Star!20456 (regOne!41425 r!14126))) b!7644117))

(assert (= (and b!7643910 (is-Union!20456 (regOne!41425 r!14126))) b!7644118))

(declare-fun b!7644119 () Bool)

(declare-fun e!4543490 () Bool)

(assert (=> b!7644119 (= e!4543490 tp_is_empty!51267)))

(declare-fun b!7644122 () Bool)

(declare-fun tp!2231361 () Bool)

(declare-fun tp!2231360 () Bool)

(assert (=> b!7644122 (= e!4543490 (and tp!2231361 tp!2231360))))

(declare-fun b!7644121 () Bool)

(declare-fun tp!2231358 () Bool)

(assert (=> b!7644121 (= e!4543490 tp!2231358)))

(assert (=> b!7643910 (= tp!2231317 e!4543490)))

(declare-fun b!7644120 () Bool)

(declare-fun tp!2231359 () Bool)

(declare-fun tp!2231362 () Bool)

(assert (=> b!7644120 (= e!4543490 (and tp!2231359 tp!2231362))))

(assert (= (and b!7643910 (is-ElementMatch!20456 (regTwo!41425 r!14126))) b!7644119))

(assert (= (and b!7643910 (is-Concat!29301 (regTwo!41425 r!14126))) b!7644120))

(assert (= (and b!7643910 (is-Star!20456 (regTwo!41425 r!14126))) b!7644121))

(assert (= (and b!7643910 (is-Union!20456 (regTwo!41425 r!14126))) b!7644122))

(declare-fun b!7644123 () Bool)

(declare-fun e!4543491 () Bool)

(assert (=> b!7644123 (= e!4543491 tp_is_empty!51267)))

(declare-fun b!7644126 () Bool)

(declare-fun tp!2231366 () Bool)

(declare-fun tp!2231365 () Bool)

(assert (=> b!7644126 (= e!4543491 (and tp!2231366 tp!2231365))))

(declare-fun b!7644125 () Bool)

(declare-fun tp!2231363 () Bool)

(assert (=> b!7644125 (= e!4543491 tp!2231363)))

(assert (=> b!7643909 (= tp!2231318 e!4543491)))

(declare-fun b!7644124 () Bool)

(declare-fun tp!2231364 () Bool)

(declare-fun tp!2231367 () Bool)

(assert (=> b!7644124 (= e!4543491 (and tp!2231364 tp!2231367))))

(assert (= (and b!7643909 (is-ElementMatch!20456 (regOne!41424 r!14126))) b!7644123))

(assert (= (and b!7643909 (is-Concat!29301 (regOne!41424 r!14126))) b!7644124))

(assert (= (and b!7643909 (is-Star!20456 (regOne!41424 r!14126))) b!7644125))

(assert (= (and b!7643909 (is-Union!20456 (regOne!41424 r!14126))) b!7644126))

(declare-fun b!7644127 () Bool)

(declare-fun e!4543492 () Bool)

(assert (=> b!7644127 (= e!4543492 tp_is_empty!51267)))

(declare-fun b!7644130 () Bool)

(declare-fun tp!2231371 () Bool)

(declare-fun tp!2231370 () Bool)

(assert (=> b!7644130 (= e!4543492 (and tp!2231371 tp!2231370))))

(declare-fun b!7644129 () Bool)

(declare-fun tp!2231368 () Bool)

(assert (=> b!7644129 (= e!4543492 tp!2231368)))

(assert (=> b!7643909 (= tp!2231314 e!4543492)))

(declare-fun b!7644128 () Bool)

(declare-fun tp!2231369 () Bool)

(declare-fun tp!2231372 () Bool)

(assert (=> b!7644128 (= e!4543492 (and tp!2231369 tp!2231372))))

(assert (= (and b!7643909 (is-ElementMatch!20456 (regTwo!41424 r!14126))) b!7644127))

(assert (= (and b!7643909 (is-Concat!29301 (regTwo!41424 r!14126))) b!7644128))

(assert (= (and b!7643909 (is-Star!20456 (regTwo!41424 r!14126))) b!7644129))

(assert (= (and b!7643909 (is-Union!20456 (regTwo!41424 r!14126))) b!7644130))

(declare-fun b!7644135 () Bool)

(declare-fun e!4543495 () Bool)

(declare-fun tp!2231375 () Bool)

(assert (=> b!7644135 (= e!4543495 (and tp_is_empty!51267 tp!2231375))))

(assert (=> b!7643916 (= tp!2231316 e!4543495)))

(assert (= (and b!7643916 (is-Cons!73183 (t!388042 s!9605))) b!7644135))

(push 1)

(assert (not b!7644017))

(assert (not b!7644114))

(assert (not b!7644076))

(assert (not b!7644010))

(assert (not d!2325388))

(assert tp_is_empty!51267)

(assert (not b!7644084))

(assert (not b!7644007))

(assert (not b!7644128))

(assert (not b!7644113))

(assert (not b!7644117))

(assert (not bm!701727))

(assert (not b!7644112))

(assert (not b!7643958))

(assert (not bm!701719))

(assert (not b!7644129))

(assert (not b!7644122))

(assert (not b!7644047))

(assert (not b!7644057))

(assert (not b!7644126))

(assert (not b!7644009))

(assert (not b!7644013))

(assert (not b!7644071))

(assert (not b!7644093))

(assert (not b!7644074))

(assert (not b!7644062))

(assert (not b!7644012))

(assert (not b!7644116))

(assert (not d!2325396))

(assert (not b!7644060))

(assert (not bm!701721))

(assert (not bm!701708))

(assert (not b!7644121))

(assert (not b!7644067))

(assert (not b!7644081))

(assert (not b!7644135))

(assert (not b!7644077))

(assert (not b!7644118))

(assert (not b!7644063))

(assert (not b!7644124))

(assert (not bm!701723))

(assert (not b!7644073))

(assert (not b!7644120))

(assert (not d!2325384))

(assert (not b!7644125))

(assert (not b!7644059))

(assert (not bm!701718))

(assert (not bm!701724))

(assert (not d!2325394))

(assert (not b!7644130))

(assert (not bm!701722))

(assert (not bm!701726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

