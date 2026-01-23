; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350746 () Bool)

(assert start!350746)

(declare-fun b!3725906 () Bool)

(declare-fun e!2305843 () Bool)

(declare-fun tp!1133580 () Bool)

(declare-fun tp!1133584 () Bool)

(assert (=> b!3725906 (= e!2305843 (and tp!1133580 tp!1133584))))

(declare-fun res!1513582 () Bool)

(declare-fun e!2305844 () Bool)

(assert (=> start!350746 (=> (not res!1513582) (not e!2305844))))

(declare-datatypes ((C!22004 0))(
  ( (C!22005 (val!13050 Int)) )
))
(declare-datatypes ((Regex!10909 0))(
  ( (ElementMatch!10909 (c!644613 C!22004)) (Concat!17180 (regOne!22330 Regex!10909) (regTwo!22330 Regex!10909)) (EmptyExpr!10909) (Star!10909 (reg!11238 Regex!10909)) (EmptyLang!10909) (Union!10909 (regOne!22331 Regex!10909) (regTwo!22331 Regex!10909)) )
))
(declare-fun r!26968 () Regex!10909)

(declare-fun validRegex!5016 (Regex!10909) Bool)

(assert (=> start!350746 (= res!1513582 (validRegex!5016 r!26968))))

(assert (=> start!350746 e!2305844))

(assert (=> start!350746 e!2305843))

(declare-fun tp_is_empty!18833 () Bool)

(assert (=> start!350746 tp_is_empty!18833))

(declare-fun b!3725907 () Bool)

(assert (=> b!3725907 (= e!2305843 tp_is_empty!18833)))

(declare-fun b!3725908 () Bool)

(assert (=> b!3725908 (= e!2305844 (not (validRegex!5016 (regTwo!22331 r!26968))))))

(declare-fun c!13797 () C!22004)

(declare-fun cNot!42 () C!22004)

(declare-datatypes ((List!39790 0))(
  ( (Nil!39666) (Cons!39666 (h!45086 C!22004) (t!302473 List!39790)) )
))
(declare-fun contains!8002 (List!39790 C!22004) Bool)

(declare-fun usedCharacters!1172 (Regex!10909) List!39790)

(declare-fun derivativeStep!3356 (Regex!10909 C!22004) Regex!10909)

(assert (=> b!3725908 (not (contains!8002 (usedCharacters!1172 (derivativeStep!3356 (regOne!22331 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57568 0))(
  ( (Unit!57569) )
))
(declare-fun lt!1298360 () Unit!57568)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!40 (Regex!10909 C!22004 C!22004) Unit!57568)

(assert (=> b!3725908 (= lt!1298360 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!40 (regOne!22331 r!26968) c!13797 cNot!42))))

(declare-fun b!3725909 () Bool)

(declare-fun res!1513583 () Bool)

(assert (=> b!3725909 (=> (not res!1513583) (not e!2305844))))

(get-info :version)

(assert (=> b!3725909 (= res!1513583 (and (not ((_ is EmptyExpr!10909) r!26968)) (not ((_ is EmptyLang!10909) r!26968)) (not ((_ is ElementMatch!10909) r!26968)) ((_ is Union!10909) r!26968)))))

(declare-fun b!3725910 () Bool)

(declare-fun tp!1133581 () Bool)

(declare-fun tp!1133582 () Bool)

(assert (=> b!3725910 (= e!2305843 (and tp!1133581 tp!1133582))))

(declare-fun b!3725911 () Bool)

(declare-fun tp!1133583 () Bool)

(assert (=> b!3725911 (= e!2305843 tp!1133583)))

(declare-fun b!3725912 () Bool)

(declare-fun res!1513584 () Bool)

(assert (=> b!3725912 (=> (not res!1513584) (not e!2305844))))

(assert (=> b!3725912 (= res!1513584 (not (contains!8002 (usedCharacters!1172 r!26968) cNot!42)))))

(assert (= (and start!350746 res!1513582) b!3725912))

(assert (= (and b!3725912 res!1513584) b!3725909))

(assert (= (and b!3725909 res!1513583) b!3725908))

(assert (= (and start!350746 ((_ is ElementMatch!10909) r!26968)) b!3725907))

(assert (= (and start!350746 ((_ is Concat!17180) r!26968)) b!3725906))

(assert (= (and start!350746 ((_ is Star!10909) r!26968)) b!3725911))

(assert (= (and start!350746 ((_ is Union!10909) r!26968)) b!3725910))

(declare-fun m!4227697 () Bool)

(assert (=> start!350746 m!4227697))

(declare-fun m!4227699 () Bool)

(assert (=> b!3725908 m!4227699))

(declare-fun m!4227701 () Bool)

(assert (=> b!3725908 m!4227701))

(declare-fun m!4227703 () Bool)

(assert (=> b!3725908 m!4227703))

(assert (=> b!3725908 m!4227699))

(declare-fun m!4227705 () Bool)

(assert (=> b!3725908 m!4227705))

(assert (=> b!3725908 m!4227703))

(declare-fun m!4227707 () Bool)

(assert (=> b!3725908 m!4227707))

(declare-fun m!4227709 () Bool)

(assert (=> b!3725912 m!4227709))

(assert (=> b!3725912 m!4227709))

(declare-fun m!4227711 () Bool)

(assert (=> b!3725912 m!4227711))

(check-sat tp_is_empty!18833 (not b!3725911) (not b!3725906) (not b!3725908) (not b!3725912) (not start!350746) (not b!3725910))
(check-sat)
(get-model)

(declare-fun b!3725953 () Bool)

(declare-fun e!2305875 () Bool)

(declare-fun e!2305874 () Bool)

(assert (=> b!3725953 (= e!2305875 e!2305874)))

(declare-fun c!644626 () Bool)

(assert (=> b!3725953 (= c!644626 ((_ is Union!10909) r!26968))))

(declare-fun b!3725954 () Bool)

(declare-fun e!2305873 () Bool)

(declare-fun e!2305876 () Bool)

(assert (=> b!3725954 (= e!2305873 e!2305876)))

(declare-fun res!1513601 () Bool)

(assert (=> b!3725954 (=> (not res!1513601) (not e!2305876))))

(declare-fun call!271375 () Bool)

(assert (=> b!3725954 (= res!1513601 call!271375)))

(declare-fun b!3725955 () Bool)

(declare-fun res!1513605 () Bool)

(assert (=> b!3725955 (=> res!1513605 e!2305873)))

(assert (=> b!3725955 (= res!1513605 (not ((_ is Concat!17180) r!26968)))))

(assert (=> b!3725955 (= e!2305874 e!2305873)))

(declare-fun b!3725956 () Bool)

(declare-fun e!2305879 () Bool)

(declare-fun call!271374 () Bool)

(assert (=> b!3725956 (= e!2305879 call!271374)))

(declare-fun bm!271368 () Bool)

(declare-fun c!644627 () Bool)

(declare-fun call!271373 () Bool)

(assert (=> bm!271368 (= call!271373 (validRegex!5016 (ite c!644627 (reg!11238 r!26968) (ite c!644626 (regTwo!22331 r!26968) (regTwo!22330 r!26968)))))))

(declare-fun b!3725957 () Bool)

(assert (=> b!3725957 (= e!2305876 call!271374)))

(declare-fun b!3725958 () Bool)

(declare-fun e!2305877 () Bool)

(assert (=> b!3725958 (= e!2305877 e!2305875)))

(assert (=> b!3725958 (= c!644627 ((_ is Star!10909) r!26968))))

(declare-fun b!3725959 () Bool)

(declare-fun e!2305878 () Bool)

(assert (=> b!3725959 (= e!2305875 e!2305878)))

(declare-fun res!1513602 () Bool)

(declare-fun nullable!3816 (Regex!10909) Bool)

(assert (=> b!3725959 (= res!1513602 (not (nullable!3816 (reg!11238 r!26968))))))

(assert (=> b!3725959 (=> (not res!1513602) (not e!2305878))))

(declare-fun d!1089864 () Bool)

(declare-fun res!1513603 () Bool)

(assert (=> d!1089864 (=> res!1513603 e!2305877)))

(assert (=> d!1089864 (= res!1513603 ((_ is ElementMatch!10909) r!26968))))

(assert (=> d!1089864 (= (validRegex!5016 r!26968) e!2305877)))

(declare-fun bm!271369 () Bool)

(assert (=> bm!271369 (= call!271374 call!271373)))

(declare-fun b!3725960 () Bool)

(declare-fun res!1513604 () Bool)

(assert (=> b!3725960 (=> (not res!1513604) (not e!2305879))))

(assert (=> b!3725960 (= res!1513604 call!271375)))

(assert (=> b!3725960 (= e!2305874 e!2305879)))

(declare-fun bm!271370 () Bool)

(assert (=> bm!271370 (= call!271375 (validRegex!5016 (ite c!644626 (regOne!22331 r!26968) (regOne!22330 r!26968))))))

(declare-fun b!3725961 () Bool)

(assert (=> b!3725961 (= e!2305878 call!271373)))

(assert (= (and d!1089864 (not res!1513603)) b!3725958))

(assert (= (and b!3725958 c!644627) b!3725959))

(assert (= (and b!3725958 (not c!644627)) b!3725953))

(assert (= (and b!3725959 res!1513602) b!3725961))

(assert (= (and b!3725953 c!644626) b!3725960))

(assert (= (and b!3725953 (not c!644626)) b!3725955))

(assert (= (and b!3725960 res!1513604) b!3725956))

(assert (= (and b!3725955 (not res!1513605)) b!3725954))

(assert (= (and b!3725954 res!1513601) b!3725957))

(assert (= (or b!3725956 b!3725957) bm!271369))

(assert (= (or b!3725960 b!3725954) bm!271370))

(assert (= (or b!3725961 bm!271369) bm!271368))

(declare-fun m!4227719 () Bool)

(assert (=> bm!271368 m!4227719))

(declare-fun m!4227721 () Bool)

(assert (=> b!3725959 m!4227721))

(declare-fun m!4227723 () Bool)

(assert (=> bm!271370 m!4227723))

(assert (=> start!350746 d!1089864))

(declare-fun d!1089870 () Bool)

(declare-fun lt!1298366 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5766 (List!39790) (InoxSet C!22004))

(assert (=> d!1089870 (= lt!1298366 (select (content!5766 (usedCharacters!1172 r!26968)) cNot!42))))

(declare-fun e!2305889 () Bool)

(assert (=> d!1089870 (= lt!1298366 e!2305889)))

(declare-fun res!1513611 () Bool)

(assert (=> d!1089870 (=> (not res!1513611) (not e!2305889))))

(assert (=> d!1089870 (= res!1513611 ((_ is Cons!39666) (usedCharacters!1172 r!26968)))))

(assert (=> d!1089870 (= (contains!8002 (usedCharacters!1172 r!26968) cNot!42) lt!1298366)))

(declare-fun b!3725974 () Bool)

(declare-fun e!2305888 () Bool)

(assert (=> b!3725974 (= e!2305889 e!2305888)))

(declare-fun res!1513610 () Bool)

(assert (=> b!3725974 (=> res!1513610 e!2305888)))

(assert (=> b!3725974 (= res!1513610 (= (h!45086 (usedCharacters!1172 r!26968)) cNot!42))))

(declare-fun b!3725975 () Bool)

(assert (=> b!3725975 (= e!2305888 (contains!8002 (t!302473 (usedCharacters!1172 r!26968)) cNot!42))))

(assert (= (and d!1089870 res!1513611) b!3725974))

(assert (= (and b!3725974 (not res!1513610)) b!3725975))

(assert (=> d!1089870 m!4227709))

(declare-fun m!4227731 () Bool)

(assert (=> d!1089870 m!4227731))

(declare-fun m!4227733 () Bool)

(assert (=> d!1089870 m!4227733))

(declare-fun m!4227735 () Bool)

(assert (=> b!3725975 m!4227735))

(assert (=> b!3725912 d!1089870))

(declare-fun b!3726020 () Bool)

(declare-fun e!2305919 () List!39790)

(assert (=> b!3726020 (= e!2305919 (Cons!39666 (c!644613 r!26968) Nil!39666))))

(declare-fun b!3726021 () Bool)

(declare-fun c!644651 () Bool)

(assert (=> b!3726021 (= c!644651 ((_ is Star!10909) r!26968))))

(declare-fun e!2305920 () List!39790)

(assert (=> b!3726021 (= e!2305919 e!2305920)))

(declare-fun call!271394 () List!39790)

(declare-fun c!644652 () Bool)

(declare-fun bm!271387 () Bool)

(assert (=> bm!271387 (= call!271394 (usedCharacters!1172 (ite c!644651 (reg!11238 r!26968) (ite c!644652 (regTwo!22331 r!26968) (regOne!22330 r!26968)))))))

(declare-fun b!3726022 () Bool)

(declare-fun e!2305918 () List!39790)

(assert (=> b!3726022 (= e!2305918 Nil!39666)))

(declare-fun b!3726023 () Bool)

(declare-fun e!2305921 () List!39790)

(declare-fun call!271392 () List!39790)

(assert (=> b!3726023 (= e!2305921 call!271392)))

(declare-fun b!3726024 () Bool)

(assert (=> b!3726024 (= e!2305920 call!271394)))

(declare-fun bm!271388 () Bool)

(declare-fun call!271393 () List!39790)

(assert (=> bm!271388 (= call!271393 (usedCharacters!1172 (ite c!644652 (regOne!22331 r!26968) (regTwo!22330 r!26968))))))

(declare-fun d!1089874 () Bool)

(declare-fun c!644650 () Bool)

(assert (=> d!1089874 (= c!644650 (or ((_ is EmptyExpr!10909) r!26968) ((_ is EmptyLang!10909) r!26968)))))

(assert (=> d!1089874 (= (usedCharacters!1172 r!26968) e!2305918)))

(declare-fun b!3726025 () Bool)

(assert (=> b!3726025 (= e!2305920 e!2305921)))

(assert (=> b!3726025 (= c!644652 ((_ is Union!10909) r!26968))))

(declare-fun bm!271389 () Bool)

(declare-fun call!271395 () List!39790)

(declare-fun ++!9833 (List!39790 List!39790) List!39790)

(assert (=> bm!271389 (= call!271392 (++!9833 (ite c!644652 call!271393 call!271395) (ite c!644652 call!271395 call!271393)))))

(declare-fun bm!271390 () Bool)

(assert (=> bm!271390 (= call!271395 call!271394)))

(declare-fun b!3726026 () Bool)

(assert (=> b!3726026 (= e!2305921 call!271392)))

(declare-fun b!3726027 () Bool)

(assert (=> b!3726027 (= e!2305918 e!2305919)))

(declare-fun c!644649 () Bool)

(assert (=> b!3726027 (= c!644649 ((_ is ElementMatch!10909) r!26968))))

(assert (= (and d!1089874 c!644650) b!3726022))

(assert (= (and d!1089874 (not c!644650)) b!3726027))

(assert (= (and b!3726027 c!644649) b!3726020))

(assert (= (and b!3726027 (not c!644649)) b!3726021))

(assert (= (and b!3726021 c!644651) b!3726024))

(assert (= (and b!3726021 (not c!644651)) b!3726025))

(assert (= (and b!3726025 c!644652) b!3726026))

(assert (= (and b!3726025 (not c!644652)) b!3726023))

(assert (= (or b!3726026 b!3726023) bm!271388))

(assert (= (or b!3726026 b!3726023) bm!271390))

(assert (= (or b!3726026 b!3726023) bm!271389))

(assert (= (or b!3726024 bm!271390) bm!271387))

(declare-fun m!4227751 () Bool)

(assert (=> bm!271387 m!4227751))

(declare-fun m!4227753 () Bool)

(assert (=> bm!271388 m!4227753))

(declare-fun m!4227755 () Bool)

(assert (=> bm!271389 m!4227755))

(assert (=> b!3725912 d!1089874))

(declare-fun b!3726028 () Bool)

(declare-fun e!2305923 () List!39790)

(assert (=> b!3726028 (= e!2305923 (Cons!39666 (c!644613 (derivativeStep!3356 (regOne!22331 r!26968) c!13797)) Nil!39666))))

(declare-fun b!3726029 () Bool)

(declare-fun c!644655 () Bool)

(assert (=> b!3726029 (= c!644655 ((_ is Star!10909) (derivativeStep!3356 (regOne!22331 r!26968) c!13797)))))

(declare-fun e!2305924 () List!39790)

(assert (=> b!3726029 (= e!2305923 e!2305924)))

(declare-fun bm!271395 () Bool)

(declare-fun call!271402 () List!39790)

(declare-fun c!644656 () Bool)

(assert (=> bm!271395 (= call!271402 (usedCharacters!1172 (ite c!644655 (reg!11238 (derivativeStep!3356 (regOne!22331 r!26968) c!13797)) (ite c!644656 (regTwo!22331 (derivativeStep!3356 (regOne!22331 r!26968) c!13797)) (regOne!22330 (derivativeStep!3356 (regOne!22331 r!26968) c!13797))))))))

(declare-fun b!3726030 () Bool)

(declare-fun e!2305922 () List!39790)

(assert (=> b!3726030 (= e!2305922 Nil!39666)))

(declare-fun b!3726031 () Bool)

(declare-fun e!2305925 () List!39790)

(declare-fun call!271400 () List!39790)

(assert (=> b!3726031 (= e!2305925 call!271400)))

(declare-fun b!3726032 () Bool)

(assert (=> b!3726032 (= e!2305924 call!271402)))

(declare-fun bm!271396 () Bool)

(declare-fun call!271401 () List!39790)

(assert (=> bm!271396 (= call!271401 (usedCharacters!1172 (ite c!644656 (regOne!22331 (derivativeStep!3356 (regOne!22331 r!26968) c!13797)) (regTwo!22330 (derivativeStep!3356 (regOne!22331 r!26968) c!13797)))))))

(declare-fun d!1089882 () Bool)

(declare-fun c!644654 () Bool)

(assert (=> d!1089882 (= c!644654 (or ((_ is EmptyExpr!10909) (derivativeStep!3356 (regOne!22331 r!26968) c!13797)) ((_ is EmptyLang!10909) (derivativeStep!3356 (regOne!22331 r!26968) c!13797))))))

(assert (=> d!1089882 (= (usedCharacters!1172 (derivativeStep!3356 (regOne!22331 r!26968) c!13797)) e!2305922)))

(declare-fun b!3726033 () Bool)

(assert (=> b!3726033 (= e!2305924 e!2305925)))

(assert (=> b!3726033 (= c!644656 ((_ is Union!10909) (derivativeStep!3356 (regOne!22331 r!26968) c!13797)))))

(declare-fun call!271403 () List!39790)

(declare-fun bm!271397 () Bool)

(assert (=> bm!271397 (= call!271400 (++!9833 (ite c!644656 call!271401 call!271403) (ite c!644656 call!271403 call!271401)))))

(declare-fun bm!271398 () Bool)

(assert (=> bm!271398 (= call!271403 call!271402)))

(declare-fun b!3726034 () Bool)

(assert (=> b!3726034 (= e!2305925 call!271400)))

(declare-fun b!3726035 () Bool)

(assert (=> b!3726035 (= e!2305922 e!2305923)))

(declare-fun c!644653 () Bool)

(assert (=> b!3726035 (= c!644653 ((_ is ElementMatch!10909) (derivativeStep!3356 (regOne!22331 r!26968) c!13797)))))

(assert (= (and d!1089882 c!644654) b!3726030))

(assert (= (and d!1089882 (not c!644654)) b!3726035))

(assert (= (and b!3726035 c!644653) b!3726028))

(assert (= (and b!3726035 (not c!644653)) b!3726029))

(assert (= (and b!3726029 c!644655) b!3726032))

(assert (= (and b!3726029 (not c!644655)) b!3726033))

(assert (= (and b!3726033 c!644656) b!3726034))

(assert (= (and b!3726033 (not c!644656)) b!3726031))

(assert (= (or b!3726034 b!3726031) bm!271396))

(assert (= (or b!3726034 b!3726031) bm!271398))

(assert (= (or b!3726034 b!3726031) bm!271397))

(assert (= (or b!3726032 bm!271398) bm!271395))

(declare-fun m!4227757 () Bool)

(assert (=> bm!271395 m!4227757))

(declare-fun m!4227759 () Bool)

(assert (=> bm!271396 m!4227759))

(declare-fun m!4227761 () Bool)

(assert (=> bm!271397 m!4227761))

(assert (=> b!3725908 d!1089882))

(declare-fun d!1089884 () Bool)

(declare-fun lt!1298371 () Bool)

(assert (=> d!1089884 (= lt!1298371 (select (content!5766 (usedCharacters!1172 (derivativeStep!3356 (regOne!22331 r!26968) c!13797))) cNot!42))))

(declare-fun e!2305927 () Bool)

(assert (=> d!1089884 (= lt!1298371 e!2305927)))

(declare-fun res!1513625 () Bool)

(assert (=> d!1089884 (=> (not res!1513625) (not e!2305927))))

(assert (=> d!1089884 (= res!1513625 ((_ is Cons!39666) (usedCharacters!1172 (derivativeStep!3356 (regOne!22331 r!26968) c!13797))))))

(assert (=> d!1089884 (= (contains!8002 (usedCharacters!1172 (derivativeStep!3356 (regOne!22331 r!26968) c!13797)) cNot!42) lt!1298371)))

(declare-fun b!3726036 () Bool)

(declare-fun e!2305926 () Bool)

(assert (=> b!3726036 (= e!2305927 e!2305926)))

(declare-fun res!1513624 () Bool)

(assert (=> b!3726036 (=> res!1513624 e!2305926)))

(assert (=> b!3726036 (= res!1513624 (= (h!45086 (usedCharacters!1172 (derivativeStep!3356 (regOne!22331 r!26968) c!13797))) cNot!42))))

(declare-fun b!3726037 () Bool)

(assert (=> b!3726037 (= e!2305926 (contains!8002 (t!302473 (usedCharacters!1172 (derivativeStep!3356 (regOne!22331 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1089884 res!1513625) b!3726036))

(assert (= (and b!3726036 (not res!1513624)) b!3726037))

(assert (=> d!1089884 m!4227699))

(declare-fun m!4227763 () Bool)

(assert (=> d!1089884 m!4227763))

(declare-fun m!4227765 () Bool)

(assert (=> d!1089884 m!4227765))

(declare-fun m!4227767 () Bool)

(assert (=> b!3726037 m!4227767))

(assert (=> b!3725908 d!1089884))

(declare-fun d!1089886 () Bool)

(assert (=> d!1089886 (not (contains!8002 (usedCharacters!1172 (derivativeStep!3356 (regOne!22331 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298374 () Unit!57568)

(declare-fun choose!22221 (Regex!10909 C!22004 C!22004) Unit!57568)

(assert (=> d!1089886 (= lt!1298374 (choose!22221 (regOne!22331 r!26968) c!13797 cNot!42))))

(assert (=> d!1089886 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!40 (regOne!22331 r!26968) c!13797 cNot!42) lt!1298374)))

(declare-fun bs!575031 () Bool)

(assert (= bs!575031 d!1089886))

(assert (=> bs!575031 m!4227703))

(assert (=> bs!575031 m!4227703))

(assert (=> bs!575031 m!4227699))

(assert (=> bs!575031 m!4227699))

(assert (=> bs!575031 m!4227701))

(declare-fun m!4227775 () Bool)

(assert (=> bs!575031 m!4227775))

(assert (=> b!3725908 d!1089886))

(declare-fun b!3726047 () Bool)

(declare-fun e!2305937 () Bool)

(declare-fun e!2305936 () Bool)

(assert (=> b!3726047 (= e!2305937 e!2305936)))

(declare-fun c!644660 () Bool)

(assert (=> b!3726047 (= c!644660 ((_ is Union!10909) (regTwo!22331 r!26968)))))

(declare-fun b!3726048 () Bool)

(declare-fun e!2305935 () Bool)

(declare-fun e!2305938 () Bool)

(assert (=> b!3726048 (= e!2305935 e!2305938)))

(declare-fun res!1513631 () Bool)

(assert (=> b!3726048 (=> (not res!1513631) (not e!2305938))))

(declare-fun call!271411 () Bool)

(assert (=> b!3726048 (= res!1513631 call!271411)))

(declare-fun b!3726049 () Bool)

(declare-fun res!1513635 () Bool)

(assert (=> b!3726049 (=> res!1513635 e!2305935)))

(assert (=> b!3726049 (= res!1513635 (not ((_ is Concat!17180) (regTwo!22331 r!26968))))))

(assert (=> b!3726049 (= e!2305936 e!2305935)))

(declare-fun b!3726050 () Bool)

(declare-fun e!2305941 () Bool)

(declare-fun call!271410 () Bool)

(assert (=> b!3726050 (= e!2305941 call!271410)))

(declare-fun bm!271404 () Bool)

(declare-fun c!644661 () Bool)

(declare-fun call!271409 () Bool)

(assert (=> bm!271404 (= call!271409 (validRegex!5016 (ite c!644661 (reg!11238 (regTwo!22331 r!26968)) (ite c!644660 (regTwo!22331 (regTwo!22331 r!26968)) (regTwo!22330 (regTwo!22331 r!26968))))))))

(declare-fun b!3726051 () Bool)

(assert (=> b!3726051 (= e!2305938 call!271410)))

(declare-fun b!3726052 () Bool)

(declare-fun e!2305939 () Bool)

(assert (=> b!3726052 (= e!2305939 e!2305937)))

(assert (=> b!3726052 (= c!644661 ((_ is Star!10909) (regTwo!22331 r!26968)))))

(declare-fun b!3726053 () Bool)

(declare-fun e!2305940 () Bool)

(assert (=> b!3726053 (= e!2305937 e!2305940)))

(declare-fun res!1513632 () Bool)

(assert (=> b!3726053 (= res!1513632 (not (nullable!3816 (reg!11238 (regTwo!22331 r!26968)))))))

(assert (=> b!3726053 (=> (not res!1513632) (not e!2305940))))

(declare-fun d!1089890 () Bool)

(declare-fun res!1513633 () Bool)

(assert (=> d!1089890 (=> res!1513633 e!2305939)))

(assert (=> d!1089890 (= res!1513633 ((_ is ElementMatch!10909) (regTwo!22331 r!26968)))))

(assert (=> d!1089890 (= (validRegex!5016 (regTwo!22331 r!26968)) e!2305939)))

(declare-fun bm!271405 () Bool)

(assert (=> bm!271405 (= call!271410 call!271409)))

(declare-fun b!3726054 () Bool)

(declare-fun res!1513634 () Bool)

(assert (=> b!3726054 (=> (not res!1513634) (not e!2305941))))

(assert (=> b!3726054 (= res!1513634 call!271411)))

(assert (=> b!3726054 (= e!2305936 e!2305941)))

(declare-fun bm!271406 () Bool)

(assert (=> bm!271406 (= call!271411 (validRegex!5016 (ite c!644660 (regOne!22331 (regTwo!22331 r!26968)) (regOne!22330 (regTwo!22331 r!26968)))))))

(declare-fun b!3726055 () Bool)

(assert (=> b!3726055 (= e!2305940 call!271409)))

(assert (= (and d!1089890 (not res!1513633)) b!3726052))

(assert (= (and b!3726052 c!644661) b!3726053))

(assert (= (and b!3726052 (not c!644661)) b!3726047))

(assert (= (and b!3726053 res!1513632) b!3726055))

(assert (= (and b!3726047 c!644660) b!3726054))

(assert (= (and b!3726047 (not c!644660)) b!3726049))

(assert (= (and b!3726054 res!1513634) b!3726050))

(assert (= (and b!3726049 (not res!1513635)) b!3726048))

(assert (= (and b!3726048 res!1513631) b!3726051))

(assert (= (or b!3726050 b!3726051) bm!271405))

(assert (= (or b!3726054 b!3726048) bm!271406))

(assert (= (or b!3726055 bm!271405) bm!271404))

(declare-fun m!4227777 () Bool)

(assert (=> bm!271404 m!4227777))

(declare-fun m!4227779 () Bool)

(assert (=> b!3726053 m!4227779))

(declare-fun m!4227781 () Bool)

(assert (=> bm!271406 m!4227781))

(assert (=> b!3725908 d!1089890))

(declare-fun b!3726106 () Bool)

(declare-fun e!2305967 () Regex!10909)

(assert (=> b!3726106 (= e!2305967 EmptyLang!10909)))

(declare-fun bm!271427 () Bool)

(declare-fun call!271435 () Regex!10909)

(declare-fun call!271434 () Regex!10909)

(assert (=> bm!271427 (= call!271435 call!271434)))

(declare-fun b!3726107 () Bool)

(declare-fun e!2305968 () Regex!10909)

(declare-fun call!271433 () Regex!10909)

(assert (=> b!3726107 (= e!2305968 (Union!10909 call!271434 call!271433))))

(declare-fun bm!271428 () Bool)

(declare-fun call!271432 () Regex!10909)

(assert (=> bm!271428 (= call!271432 call!271435)))

(declare-fun b!3726108 () Bool)

(declare-fun e!2305971 () Regex!10909)

(assert (=> b!3726108 (= e!2305967 e!2305971)))

(declare-fun c!644688 () Bool)

(assert (=> b!3726108 (= c!644688 ((_ is ElementMatch!10909) (regOne!22331 r!26968)))))

(declare-fun c!644689 () Bool)

(declare-fun bm!271429 () Bool)

(declare-fun c!644687 () Bool)

(declare-fun c!644691 () Bool)

(assert (=> bm!271429 (= call!271434 (derivativeStep!3356 (ite c!644687 (regOne!22331 (regOne!22331 r!26968)) (ite c!644689 (reg!11238 (regOne!22331 r!26968)) (ite c!644691 (regTwo!22330 (regOne!22331 r!26968)) (regOne!22330 (regOne!22331 r!26968))))) c!13797))))

(declare-fun b!3726109 () Bool)

(declare-fun e!2305970 () Regex!10909)

(assert (=> b!3726109 (= e!2305970 (Concat!17180 call!271435 (regOne!22331 r!26968)))))

(declare-fun b!3726111 () Bool)

(assert (=> b!3726111 (= c!644691 (nullable!3816 (regOne!22330 (regOne!22331 r!26968))))))

(declare-fun e!2305969 () Regex!10909)

(assert (=> b!3726111 (= e!2305970 e!2305969)))

(declare-fun bm!271430 () Bool)

(assert (=> bm!271430 (= call!271433 (derivativeStep!3356 (ite c!644687 (regTwo!22331 (regOne!22331 r!26968)) (regOne!22330 (regOne!22331 r!26968))) c!13797))))

(declare-fun b!3726112 () Bool)

(assert (=> b!3726112 (= c!644687 ((_ is Union!10909) (regOne!22331 r!26968)))))

(assert (=> b!3726112 (= e!2305971 e!2305968)))

(declare-fun b!3726113 () Bool)

(assert (=> b!3726113 (= e!2305969 (Union!10909 (Concat!17180 call!271432 (regTwo!22330 (regOne!22331 r!26968))) EmptyLang!10909))))

(declare-fun b!3726110 () Bool)

(assert (=> b!3726110 (= e!2305969 (Union!10909 (Concat!17180 call!271433 (regTwo!22330 (regOne!22331 r!26968))) call!271432))))

(declare-fun d!1089892 () Bool)

(declare-fun lt!1298380 () Regex!10909)

(assert (=> d!1089892 (validRegex!5016 lt!1298380)))

(assert (=> d!1089892 (= lt!1298380 e!2305967)))

(declare-fun c!644690 () Bool)

(assert (=> d!1089892 (= c!644690 (or ((_ is EmptyExpr!10909) (regOne!22331 r!26968)) ((_ is EmptyLang!10909) (regOne!22331 r!26968))))))

(assert (=> d!1089892 (validRegex!5016 (regOne!22331 r!26968))))

(assert (=> d!1089892 (= (derivativeStep!3356 (regOne!22331 r!26968) c!13797) lt!1298380)))

(declare-fun b!3726114 () Bool)

(assert (=> b!3726114 (= e!2305971 (ite (= c!13797 (c!644613 (regOne!22331 r!26968))) EmptyExpr!10909 EmptyLang!10909))))

(declare-fun b!3726115 () Bool)

(assert (=> b!3726115 (= e!2305968 e!2305970)))

(assert (=> b!3726115 (= c!644689 ((_ is Star!10909) (regOne!22331 r!26968)))))

(assert (= (and d!1089892 c!644690) b!3726106))

(assert (= (and d!1089892 (not c!644690)) b!3726108))

(assert (= (and b!3726108 c!644688) b!3726114))

(assert (= (and b!3726108 (not c!644688)) b!3726112))

(assert (= (and b!3726112 c!644687) b!3726107))

(assert (= (and b!3726112 (not c!644687)) b!3726115))

(assert (= (and b!3726115 c!644689) b!3726109))

(assert (= (and b!3726115 (not c!644689)) b!3726111))

(assert (= (and b!3726111 c!644691) b!3726110))

(assert (= (and b!3726111 (not c!644691)) b!3726113))

(assert (= (or b!3726110 b!3726113) bm!271428))

(assert (= (or b!3726109 bm!271428) bm!271427))

(assert (= (or b!3726107 bm!271427) bm!271429))

(assert (= (or b!3726107 b!3726110) bm!271430))

(declare-fun m!4227799 () Bool)

(assert (=> bm!271429 m!4227799))

(declare-fun m!4227801 () Bool)

(assert (=> b!3726111 m!4227801))

(declare-fun m!4227803 () Bool)

(assert (=> bm!271430 m!4227803))

(declare-fun m!4227805 () Bool)

(assert (=> d!1089892 m!4227805))

(declare-fun m!4227807 () Bool)

(assert (=> d!1089892 m!4227807))

(assert (=> b!3725908 d!1089892))

(declare-fun b!3726154 () Bool)

(declare-fun e!2305985 () Bool)

(declare-fun tp!1133619 () Bool)

(declare-fun tp!1133615 () Bool)

(assert (=> b!3726154 (= e!2305985 (and tp!1133619 tp!1133615))))

(declare-fun b!3726156 () Bool)

(declare-fun tp!1133618 () Bool)

(declare-fun tp!1133616 () Bool)

(assert (=> b!3726156 (= e!2305985 (and tp!1133618 tp!1133616))))

(declare-fun b!3726155 () Bool)

(declare-fun tp!1133617 () Bool)

(assert (=> b!3726155 (= e!2305985 tp!1133617)))

(declare-fun b!3726153 () Bool)

(assert (=> b!3726153 (= e!2305985 tp_is_empty!18833)))

(assert (=> b!3725910 (= tp!1133581 e!2305985)))

(assert (= (and b!3725910 ((_ is ElementMatch!10909) (regOne!22331 r!26968))) b!3726153))

(assert (= (and b!3725910 ((_ is Concat!17180) (regOne!22331 r!26968))) b!3726154))

(assert (= (and b!3725910 ((_ is Star!10909) (regOne!22331 r!26968))) b!3726155))

(assert (= (and b!3725910 ((_ is Union!10909) (regOne!22331 r!26968))) b!3726156))

(declare-fun b!3726162 () Bool)

(declare-fun e!2305987 () Bool)

(declare-fun tp!1133629 () Bool)

(declare-fun tp!1133625 () Bool)

(assert (=> b!3726162 (= e!2305987 (and tp!1133629 tp!1133625))))

(declare-fun b!3726164 () Bool)

(declare-fun tp!1133628 () Bool)

(declare-fun tp!1133626 () Bool)

(assert (=> b!3726164 (= e!2305987 (and tp!1133628 tp!1133626))))

(declare-fun b!3726163 () Bool)

(declare-fun tp!1133627 () Bool)

(assert (=> b!3726163 (= e!2305987 tp!1133627)))

(declare-fun b!3726161 () Bool)

(assert (=> b!3726161 (= e!2305987 tp_is_empty!18833)))

(assert (=> b!3725910 (= tp!1133582 e!2305987)))

(assert (= (and b!3725910 ((_ is ElementMatch!10909) (regTwo!22331 r!26968))) b!3726161))

(assert (= (and b!3725910 ((_ is Concat!17180) (regTwo!22331 r!26968))) b!3726162))

(assert (= (and b!3725910 ((_ is Star!10909) (regTwo!22331 r!26968))) b!3726163))

(assert (= (and b!3725910 ((_ is Union!10909) (regTwo!22331 r!26968))) b!3726164))

(declare-fun b!3726174 () Bool)

(declare-fun e!2305990 () Bool)

(declare-fun tp!1133644 () Bool)

(declare-fun tp!1133640 () Bool)

(assert (=> b!3726174 (= e!2305990 (and tp!1133644 tp!1133640))))

(declare-fun b!3726176 () Bool)

(declare-fun tp!1133643 () Bool)

(declare-fun tp!1133641 () Bool)

(assert (=> b!3726176 (= e!2305990 (and tp!1133643 tp!1133641))))

(declare-fun b!3726175 () Bool)

(declare-fun tp!1133642 () Bool)

(assert (=> b!3726175 (= e!2305990 tp!1133642)))

(declare-fun b!3726173 () Bool)

(assert (=> b!3726173 (= e!2305990 tp_is_empty!18833)))

(assert (=> b!3725906 (= tp!1133580 e!2305990)))

(assert (= (and b!3725906 ((_ is ElementMatch!10909) (regOne!22330 r!26968))) b!3726173))

(assert (= (and b!3725906 ((_ is Concat!17180) (regOne!22330 r!26968))) b!3726174))

(assert (= (and b!3725906 ((_ is Star!10909) (regOne!22330 r!26968))) b!3726175))

(assert (= (and b!3725906 ((_ is Union!10909) (regOne!22330 r!26968))) b!3726176))

(declare-fun b!3726178 () Bool)

(declare-fun e!2305991 () Bool)

(declare-fun tp!1133649 () Bool)

(declare-fun tp!1133645 () Bool)

(assert (=> b!3726178 (= e!2305991 (and tp!1133649 tp!1133645))))

(declare-fun b!3726180 () Bool)

(declare-fun tp!1133648 () Bool)

(declare-fun tp!1133646 () Bool)

(assert (=> b!3726180 (= e!2305991 (and tp!1133648 tp!1133646))))

(declare-fun b!3726179 () Bool)

(declare-fun tp!1133647 () Bool)

(assert (=> b!3726179 (= e!2305991 tp!1133647)))

(declare-fun b!3726177 () Bool)

(assert (=> b!3726177 (= e!2305991 tp_is_empty!18833)))

(assert (=> b!3725906 (= tp!1133584 e!2305991)))

(assert (= (and b!3725906 ((_ is ElementMatch!10909) (regTwo!22330 r!26968))) b!3726177))

(assert (= (and b!3725906 ((_ is Concat!17180) (regTwo!22330 r!26968))) b!3726178))

(assert (= (and b!3725906 ((_ is Star!10909) (regTwo!22330 r!26968))) b!3726179))

(assert (= (and b!3725906 ((_ is Union!10909) (regTwo!22330 r!26968))) b!3726180))

(declare-fun b!3726182 () Bool)

(declare-fun e!2305992 () Bool)

(declare-fun tp!1133654 () Bool)

(declare-fun tp!1133650 () Bool)

(assert (=> b!3726182 (= e!2305992 (and tp!1133654 tp!1133650))))

(declare-fun b!3726184 () Bool)

(declare-fun tp!1133653 () Bool)

(declare-fun tp!1133651 () Bool)

(assert (=> b!3726184 (= e!2305992 (and tp!1133653 tp!1133651))))

(declare-fun b!3726183 () Bool)

(declare-fun tp!1133652 () Bool)

(assert (=> b!3726183 (= e!2305992 tp!1133652)))

(declare-fun b!3726181 () Bool)

(assert (=> b!3726181 (= e!2305992 tp_is_empty!18833)))

(assert (=> b!3725911 (= tp!1133583 e!2305992)))

(assert (= (and b!3725911 ((_ is ElementMatch!10909) (reg!11238 r!26968))) b!3726181))

(assert (= (and b!3725911 ((_ is Concat!17180) (reg!11238 r!26968))) b!3726182))

(assert (= (and b!3725911 ((_ is Star!10909) (reg!11238 r!26968))) b!3726183))

(assert (= (and b!3725911 ((_ is Union!10909) (reg!11238 r!26968))) b!3726184))

(check-sat (not b!3726178) (not b!3725959) (not bm!271406) (not b!3726175) (not d!1089870) (not bm!271395) (not b!3726182) (not b!3726176) (not d!1089884) (not bm!271404) (not b!3726180) (not b!3726179) (not bm!271368) (not bm!271387) (not bm!271430) tp_is_empty!18833 (not bm!271388) (not b!3726164) (not bm!271389) (not bm!271429) (not bm!271397) (not b!3726184) (not b!3725975) (not b!3726156) (not d!1089886) (not b!3726154) (not b!3726111) (not b!3726053) (not b!3726183) (not d!1089892) (not b!3726162) (not b!3726163) (not b!3726037) (not b!3726155) (not bm!271370) (not bm!271396) (not b!3726174))
(check-sat)
