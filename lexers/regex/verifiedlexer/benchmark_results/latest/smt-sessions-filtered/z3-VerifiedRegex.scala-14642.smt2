; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756736 () Bool)

(assert start!756736)

(declare-fun res!3176866 () Bool)

(declare-fun e!4732901 () Bool)

(assert (=> start!756736 (=> (not res!3176866) (not e!4732901))))

(declare-datatypes ((C!43812 0))(
  ( (C!43813 (val!32682 Int)) )
))
(declare-datatypes ((Regex!21737 0))(
  ( (ElementMatch!21737 (c!1473876 C!43812)) (Concat!30740 (regOne!43986 Regex!21737) (regTwo!43986 Regex!21737)) (EmptyExpr!21737) (Star!21737 (reg!22066 Regex!21737)) (EmptyLang!21737) (Union!21737 (regOne!43987 Regex!21737) (regTwo!43987 Regex!21737)) )
))
(declare-fun r!13107 () Regex!21737)

(declare-fun validRegex!12033 (Regex!21737) Bool)

(assert (=> start!756736 (= res!3176866 (validRegex!12033 r!13107))))

(assert (=> start!756736 e!4732901))

(declare-fun e!4732900 () Bool)

(assert (=> start!756736 e!4732900))

(declare-fun tp_is_empty!54469 () Bool)

(assert (=> start!756736 tp_is_empty!54469))

(declare-fun b!8034482 () Bool)

(declare-fun RegexPrimitiveSize!155 (Regex!21737) Int)

(assert (=> b!8034482 (= e!4732901 (>= (RegexPrimitiveSize!155 (regTwo!43987 r!13107)) (RegexPrimitiveSize!155 r!13107)))))

(declare-fun lt!2722032 () Regex!21737)

(declare-fun a!2390 () C!43812)

(declare-fun derivativeStep!6660 (Regex!21737 C!43812) Regex!21737)

(assert (=> b!8034482 (= lt!2722032 (derivativeStep!6660 (regOne!43987 r!13107) a!2390))))

(declare-fun b!8034483 () Bool)

(declare-fun tp!2405441 () Bool)

(declare-fun tp!2405442 () Bool)

(assert (=> b!8034483 (= e!4732900 (and tp!2405441 tp!2405442))))

(declare-fun b!8034484 () Bool)

(assert (=> b!8034484 (= e!4732900 tp_is_empty!54469)))

(declare-fun b!8034485 () Bool)

(declare-fun tp!2405439 () Bool)

(assert (=> b!8034485 (= e!4732900 tp!2405439)))

(declare-fun b!8034486 () Bool)

(declare-fun tp!2405443 () Bool)

(declare-fun tp!2405440 () Bool)

(assert (=> b!8034486 (= e!4732900 (and tp!2405443 tp!2405440))))

(declare-fun b!8034487 () Bool)

(declare-fun res!3176867 () Bool)

(assert (=> b!8034487 (=> (not res!3176867) (not e!4732901))))

(get-info :version)

(assert (=> b!8034487 (= res!3176867 (and (not ((_ is EmptyExpr!21737) r!13107)) (not ((_ is EmptyLang!21737) r!13107)) (not ((_ is ElementMatch!21737) r!13107)) ((_ is Union!21737) r!13107)))))

(assert (= (and start!756736 res!3176866) b!8034487))

(assert (= (and b!8034487 res!3176867) b!8034482))

(assert (= (and start!756736 ((_ is ElementMatch!21737) r!13107)) b!8034484))

(assert (= (and start!756736 ((_ is Concat!30740) r!13107)) b!8034486))

(assert (= (and start!756736 ((_ is Star!21737) r!13107)) b!8034485))

(assert (= (and start!756736 ((_ is Union!21737) r!13107)) b!8034483))

(declare-fun m!8392922 () Bool)

(assert (=> start!756736 m!8392922))

(declare-fun m!8392924 () Bool)

(assert (=> b!8034482 m!8392924))

(declare-fun m!8392926 () Bool)

(assert (=> b!8034482 m!8392926))

(declare-fun m!8392928 () Bool)

(assert (=> b!8034482 m!8392928))

(check-sat (not b!8034483) (not b!8034486) (not b!8034485) (not b!8034482) (not start!756736) tp_is_empty!54469)
(check-sat)
(get-model)

(declare-fun bm!745450 () Bool)

(declare-fun call!745456 () Bool)

(declare-fun c!1473901 () Bool)

(assert (=> bm!745450 (= call!745456 (validRegex!12033 (ite c!1473901 (regTwo!43987 r!13107) (regTwo!43986 r!13107))))))

(declare-fun b!8034546 () Bool)

(declare-fun e!4732942 () Bool)

(assert (=> b!8034546 (= e!4732942 call!745456)))

(declare-fun call!745457 () Bool)

(declare-fun c!1473902 () Bool)

(declare-fun bm!745451 () Bool)

(assert (=> bm!745451 (= call!745457 (validRegex!12033 (ite c!1473902 (reg!22066 r!13107) (ite c!1473901 (regOne!43987 r!13107) (regOne!43986 r!13107)))))))

(declare-fun b!8034547 () Bool)

(declare-fun res!3176879 () Bool)

(declare-fun e!4732938 () Bool)

(assert (=> b!8034547 (=> res!3176879 e!4732938)))

(assert (=> b!8034547 (= res!3176879 (not ((_ is Concat!30740) r!13107)))))

(declare-fun e!4732939 () Bool)

(assert (=> b!8034547 (= e!4732939 e!4732938)))

(declare-fun b!8034549 () Bool)

(declare-fun e!4732936 () Bool)

(assert (=> b!8034549 (= e!4732936 call!745457)))

(declare-fun b!8034550 () Bool)

(declare-fun e!4732937 () Bool)

(declare-fun e!4732941 () Bool)

(assert (=> b!8034550 (= e!4732937 e!4732941)))

(assert (=> b!8034550 (= c!1473902 ((_ is Star!21737) r!13107))))

(declare-fun bm!745452 () Bool)

(declare-fun call!745455 () Bool)

(assert (=> bm!745452 (= call!745455 call!745457)))

(declare-fun b!8034551 () Bool)

(declare-fun e!4732940 () Bool)

(assert (=> b!8034551 (= e!4732938 e!4732940)))

(declare-fun res!3176880 () Bool)

(assert (=> b!8034551 (=> (not res!3176880) (not e!4732940))))

(assert (=> b!8034551 (= res!3176880 call!745455)))

(declare-fun b!8034552 () Bool)

(assert (=> b!8034552 (= e!4732941 e!4732939)))

(assert (=> b!8034552 (= c!1473901 ((_ is Union!21737) r!13107))))

(declare-fun b!8034548 () Bool)

(declare-fun res!3176881 () Bool)

(assert (=> b!8034548 (=> (not res!3176881) (not e!4732942))))

(assert (=> b!8034548 (= res!3176881 call!745455)))

(assert (=> b!8034548 (= e!4732939 e!4732942)))

(declare-fun d!2394895 () Bool)

(declare-fun res!3176878 () Bool)

(assert (=> d!2394895 (=> res!3176878 e!4732937)))

(assert (=> d!2394895 (= res!3176878 ((_ is ElementMatch!21737) r!13107))))

(assert (=> d!2394895 (= (validRegex!12033 r!13107) e!4732937)))

(declare-fun b!8034553 () Bool)

(assert (=> b!8034553 (= e!4732941 e!4732936)))

(declare-fun res!3176882 () Bool)

(declare-fun nullable!9762 (Regex!21737) Bool)

(assert (=> b!8034553 (= res!3176882 (not (nullable!9762 (reg!22066 r!13107))))))

(assert (=> b!8034553 (=> (not res!3176882) (not e!4732936))))

(declare-fun b!8034554 () Bool)

(assert (=> b!8034554 (= e!4732940 call!745456)))

(assert (= (and d!2394895 (not res!3176878)) b!8034550))

(assert (= (and b!8034550 c!1473902) b!8034553))

(assert (= (and b!8034550 (not c!1473902)) b!8034552))

(assert (= (and b!8034553 res!3176882) b!8034549))

(assert (= (and b!8034552 c!1473901) b!8034548))

(assert (= (and b!8034552 (not c!1473901)) b!8034547))

(assert (= (and b!8034548 res!3176881) b!8034546))

(assert (= (and b!8034547 (not res!3176879)) b!8034551))

(assert (= (and b!8034551 res!3176880) b!8034554))

(assert (= (or b!8034546 b!8034554) bm!745450))

(assert (= (or b!8034548 b!8034551) bm!745452))

(assert (= (or b!8034549 bm!745452) bm!745451))

(declare-fun m!8392938 () Bool)

(assert (=> bm!745450 m!8392938))

(declare-fun m!8392940 () Bool)

(assert (=> bm!745451 m!8392940))

(declare-fun m!8392942 () Bool)

(assert (=> b!8034553 m!8392942))

(assert (=> start!756736 d!2394895))

(declare-fun bm!745477 () Bool)

(declare-fun call!745484 () Int)

(declare-fun c!1473935 () Bool)

(declare-fun c!1473934 () Bool)

(assert (=> bm!745477 (= call!745484 (RegexPrimitiveSize!155 (ite c!1473935 (regTwo!43986 (regTwo!43987 r!13107)) (ite c!1473934 (reg!22066 (regTwo!43987 r!13107)) (regOne!43987 (regTwo!43987 r!13107))))))))

(declare-fun d!2394901 () Bool)

(declare-fun lt!2722042 () Int)

(assert (=> d!2394901 (>= lt!2722042 0)))

(declare-fun e!4732985 () Int)

(assert (=> d!2394901 (= lt!2722042 e!4732985)))

(declare-fun c!1473936 () Bool)

(assert (=> d!2394901 (= c!1473936 ((_ is ElementMatch!21737) (regTwo!43987 r!13107)))))

(assert (=> d!2394901 (= (RegexPrimitiveSize!155 (regTwo!43987 r!13107)) lt!2722042)))

(declare-fun b!8034623 () Bool)

(declare-fun c!1473932 () Bool)

(assert (=> b!8034623 (= c!1473932 ((_ is EmptyLang!21737) (regTwo!43987 r!13107)))))

(declare-fun e!4732986 () Int)

(declare-fun e!4732984 () Int)

(assert (=> b!8034623 (= e!4732986 e!4732984)))

(declare-fun b!8034624 () Bool)

(declare-fun c!1473933 () Bool)

(assert (=> b!8034624 (= c!1473933 ((_ is EmptyExpr!21737) (regTwo!43987 r!13107)))))

(declare-fun e!4732982 () Int)

(declare-fun e!4732983 () Int)

(assert (=> b!8034624 (= e!4732982 e!4732983)))

(declare-fun b!8034625 () Bool)

(declare-fun call!745482 () Int)

(assert (=> b!8034625 (= e!4732982 (+ 1 call!745482 call!745484))))

(declare-fun b!8034626 () Bool)

(assert (=> b!8034626 (= e!4732984 0)))

(declare-fun b!8034627 () Bool)

(assert (=> b!8034627 (= e!4732985 1)))

(declare-fun b!8034628 () Bool)

(assert (=> b!8034628 (= e!4732985 e!4732982)))

(assert (=> b!8034628 (= c!1473935 ((_ is Concat!30740) (regTwo!43987 r!13107)))))

(declare-fun bm!745478 () Bool)

(declare-fun call!745483 () Int)

(assert (=> bm!745478 (= call!745483 call!745484)))

(declare-fun b!8034629 () Bool)

(assert (=> b!8034629 (= e!4732984 (+ 1 call!745483 call!745482))))

(declare-fun b!8034630 () Bool)

(assert (=> b!8034630 (= e!4732983 0)))

(declare-fun b!8034631 () Bool)

(assert (=> b!8034631 (= e!4732986 (+ 1 call!745483))))

(declare-fun bm!745479 () Bool)

(assert (=> bm!745479 (= call!745482 (RegexPrimitiveSize!155 (ite c!1473935 (regOne!43986 (regTwo!43987 r!13107)) (regTwo!43987 (regTwo!43987 r!13107)))))))

(declare-fun b!8034632 () Bool)

(assert (=> b!8034632 (= e!4732983 e!4732986)))

(assert (=> b!8034632 (= c!1473934 ((_ is Star!21737) (regTwo!43987 r!13107)))))

(assert (= (and d!2394901 c!1473936) b!8034627))

(assert (= (and d!2394901 (not c!1473936)) b!8034628))

(assert (= (and b!8034628 c!1473935) b!8034625))

(assert (= (and b!8034628 (not c!1473935)) b!8034624))

(assert (= (and b!8034624 c!1473933) b!8034630))

(assert (= (and b!8034624 (not c!1473933)) b!8034632))

(assert (= (and b!8034632 c!1473934) b!8034631))

(assert (= (and b!8034632 (not c!1473934)) b!8034623))

(assert (= (and b!8034623 c!1473932) b!8034626))

(assert (= (and b!8034623 (not c!1473932)) b!8034629))

(assert (= (or b!8034631 b!8034629) bm!745478))

(assert (= (or b!8034625 bm!745478) bm!745477))

(assert (= (or b!8034625 b!8034629) bm!745479))

(declare-fun m!8392954 () Bool)

(assert (=> bm!745477 m!8392954))

(declare-fun m!8392956 () Bool)

(assert (=> bm!745479 m!8392956))

(assert (=> b!8034482 d!2394901))

(declare-fun bm!745480 () Bool)

(declare-fun call!745487 () Int)

(declare-fun c!1473940 () Bool)

(declare-fun c!1473939 () Bool)

(assert (=> bm!745480 (= call!745487 (RegexPrimitiveSize!155 (ite c!1473940 (regTwo!43986 r!13107) (ite c!1473939 (reg!22066 r!13107) (regOne!43987 r!13107)))))))

(declare-fun d!2394905 () Bool)

(declare-fun lt!2722043 () Int)

(assert (=> d!2394905 (>= lt!2722043 0)))

(declare-fun e!4732990 () Int)

(assert (=> d!2394905 (= lt!2722043 e!4732990)))

(declare-fun c!1473941 () Bool)

(assert (=> d!2394905 (= c!1473941 ((_ is ElementMatch!21737) r!13107))))

(assert (=> d!2394905 (= (RegexPrimitiveSize!155 r!13107) lt!2722043)))

(declare-fun b!8034633 () Bool)

(declare-fun c!1473937 () Bool)

(assert (=> b!8034633 (= c!1473937 ((_ is EmptyLang!21737) r!13107))))

(declare-fun e!4732991 () Int)

(declare-fun e!4732989 () Int)

(assert (=> b!8034633 (= e!4732991 e!4732989)))

(declare-fun b!8034634 () Bool)

(declare-fun c!1473938 () Bool)

(assert (=> b!8034634 (= c!1473938 ((_ is EmptyExpr!21737) r!13107))))

(declare-fun e!4732987 () Int)

(declare-fun e!4732988 () Int)

(assert (=> b!8034634 (= e!4732987 e!4732988)))

(declare-fun b!8034635 () Bool)

(declare-fun call!745485 () Int)

(assert (=> b!8034635 (= e!4732987 (+ 1 call!745485 call!745487))))

(declare-fun b!8034636 () Bool)

(assert (=> b!8034636 (= e!4732989 0)))

(declare-fun b!8034637 () Bool)

(assert (=> b!8034637 (= e!4732990 1)))

(declare-fun b!8034638 () Bool)

(assert (=> b!8034638 (= e!4732990 e!4732987)))

(assert (=> b!8034638 (= c!1473940 ((_ is Concat!30740) r!13107))))

(declare-fun bm!745481 () Bool)

(declare-fun call!745486 () Int)

(assert (=> bm!745481 (= call!745486 call!745487)))

(declare-fun b!8034639 () Bool)

(assert (=> b!8034639 (= e!4732989 (+ 1 call!745486 call!745485))))

(declare-fun b!8034640 () Bool)

(assert (=> b!8034640 (= e!4732988 0)))

(declare-fun b!8034641 () Bool)

(assert (=> b!8034641 (= e!4732991 (+ 1 call!745486))))

(declare-fun bm!745482 () Bool)

(assert (=> bm!745482 (= call!745485 (RegexPrimitiveSize!155 (ite c!1473940 (regOne!43986 r!13107) (regTwo!43987 r!13107))))))

(declare-fun b!8034642 () Bool)

(assert (=> b!8034642 (= e!4732988 e!4732991)))

(assert (=> b!8034642 (= c!1473939 ((_ is Star!21737) r!13107))))

(assert (= (and d!2394905 c!1473941) b!8034637))

(assert (= (and d!2394905 (not c!1473941)) b!8034638))

(assert (= (and b!8034638 c!1473940) b!8034635))

(assert (= (and b!8034638 (not c!1473940)) b!8034634))

(assert (= (and b!8034634 c!1473938) b!8034640))

(assert (= (and b!8034634 (not c!1473938)) b!8034642))

(assert (= (and b!8034642 c!1473939) b!8034641))

(assert (= (and b!8034642 (not c!1473939)) b!8034633))

(assert (= (and b!8034633 c!1473937) b!8034636))

(assert (= (and b!8034633 (not c!1473937)) b!8034639))

(assert (= (or b!8034641 b!8034639) bm!745481))

(assert (= (or b!8034635 bm!745481) bm!745480))

(assert (= (or b!8034635 b!8034639) bm!745482))

(declare-fun m!8392958 () Bool)

(assert (=> bm!745480 m!8392958))

(declare-fun m!8392960 () Bool)

(assert (=> bm!745482 m!8392960))

(assert (=> b!8034482 d!2394905))

(declare-fun bm!745494 () Bool)

(declare-fun call!745500 () Regex!21737)

(declare-fun call!745501 () Regex!21737)

(assert (=> bm!745494 (= call!745500 call!745501)))

(declare-fun b!8034702 () Bool)

(declare-fun e!4733020 () Regex!21737)

(declare-fun e!4733019 () Regex!21737)

(assert (=> b!8034702 (= e!4733020 e!4733019)))

(declare-fun c!1473955 () Bool)

(assert (=> b!8034702 (= c!1473955 ((_ is ElementMatch!21737) (regOne!43987 r!13107)))))

(declare-fun b!8034703 () Bool)

(assert (=> b!8034703 (= e!4733020 EmptyLang!21737)))

(declare-fun b!8034704 () Bool)

(declare-fun c!1473954 () Bool)

(assert (=> b!8034704 (= c!1473954 ((_ is Union!21737) (regOne!43987 r!13107)))))

(declare-fun e!4733016 () Regex!21737)

(assert (=> b!8034704 (= e!4733019 e!4733016)))

(declare-fun b!8034705 () Bool)

(declare-fun e!4733017 () Regex!21737)

(assert (=> b!8034705 (= e!4733017 (Union!21737 (Concat!30740 call!745500 (regTwo!43986 (regOne!43987 r!13107))) EmptyLang!21737))))

(declare-fun bm!745495 () Bool)

(declare-fun call!745499 () Regex!21737)

(declare-fun c!1473958 () Bool)

(assert (=> bm!745495 (= call!745499 (derivativeStep!6660 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))) a!2390))))

(declare-fun b!8034706 () Bool)

(declare-fun e!4733018 () Regex!21737)

(declare-fun call!745502 () Regex!21737)

(assert (=> b!8034706 (= e!4733018 (Concat!30740 call!745502 (regOne!43987 r!13107)))))

(declare-fun b!8034707 () Bool)

(assert (=> b!8034707 (= e!4733016 e!4733018)))

(assert (=> b!8034707 (= c!1473958 ((_ is Star!21737) (regOne!43987 r!13107)))))

(declare-fun d!2394907 () Bool)

(declare-fun lt!2722046 () Regex!21737)

(assert (=> d!2394907 (validRegex!12033 lt!2722046)))

(assert (=> d!2394907 (= lt!2722046 e!4733020)))

(declare-fun c!1473956 () Bool)

(assert (=> d!2394907 (= c!1473956 (or ((_ is EmptyExpr!21737) (regOne!43987 r!13107)) ((_ is EmptyLang!21737) (regOne!43987 r!13107))))))

(assert (=> d!2394907 (validRegex!12033 (regOne!43987 r!13107))))

(assert (=> d!2394907 (= (derivativeStep!6660 (regOne!43987 r!13107) a!2390) lt!2722046)))

(declare-fun b!8034708 () Bool)

(assert (=> b!8034708 (= e!4733019 (ite (= a!2390 (c!1473876 (regOne!43987 r!13107))) EmptyExpr!21737 EmptyLang!21737))))

(declare-fun b!8034709 () Bool)

(declare-fun c!1473957 () Bool)

(assert (=> b!8034709 (= c!1473957 (nullable!9762 (regOne!43986 (regOne!43987 r!13107))))))

(assert (=> b!8034709 (= e!4733018 e!4733017)))

(declare-fun b!8034710 () Bool)

(assert (=> b!8034710 (= e!4733017 (Union!21737 (Concat!30740 call!745502 (regTwo!43986 (regOne!43987 r!13107))) call!745500))))

(declare-fun b!8034711 () Bool)

(assert (=> b!8034711 (= e!4733016 (Union!21737 call!745501 call!745499))))

(declare-fun bm!745496 () Bool)

(assert (=> bm!745496 (= call!745501 (derivativeStep!6660 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))) a!2390))))

(declare-fun bm!745497 () Bool)

(assert (=> bm!745497 (= call!745502 call!745499)))

(assert (= (and d!2394907 c!1473956) b!8034703))

(assert (= (and d!2394907 (not c!1473956)) b!8034702))

(assert (= (and b!8034702 c!1473955) b!8034708))

(assert (= (and b!8034702 (not c!1473955)) b!8034704))

(assert (= (and b!8034704 c!1473954) b!8034711))

(assert (= (and b!8034704 (not c!1473954)) b!8034707))

(assert (= (and b!8034707 c!1473958) b!8034706))

(assert (= (and b!8034707 (not c!1473958)) b!8034709))

(assert (= (and b!8034709 c!1473957) b!8034710))

(assert (= (and b!8034709 (not c!1473957)) b!8034705))

(assert (= (or b!8034710 b!8034705) bm!745494))

(assert (= (or b!8034706 b!8034710) bm!745497))

(assert (= (or b!8034711 bm!745497) bm!745495))

(assert (= (or b!8034711 bm!745494) bm!745496))

(declare-fun m!8392968 () Bool)

(assert (=> bm!745495 m!8392968))

(declare-fun m!8392970 () Bool)

(assert (=> d!2394907 m!8392970))

(declare-fun m!8392972 () Bool)

(assert (=> d!2394907 m!8392972))

(declare-fun m!8392974 () Bool)

(assert (=> b!8034709 m!8392974))

(declare-fun m!8392976 () Bool)

(assert (=> bm!745496 m!8392976))

(assert (=> b!8034482 d!2394907))

(declare-fun b!8034723 () Bool)

(declare-fun e!4733023 () Bool)

(declare-fun tp!2405489 () Bool)

(declare-fun tp!2405491 () Bool)

(assert (=> b!8034723 (= e!4733023 (and tp!2405489 tp!2405491))))

(assert (=> b!8034485 (= tp!2405439 e!4733023)))

(declare-fun b!8034725 () Bool)

(declare-fun tp!2405493 () Bool)

(declare-fun tp!2405492 () Bool)

(assert (=> b!8034725 (= e!4733023 (and tp!2405493 tp!2405492))))

(declare-fun b!8034722 () Bool)

(assert (=> b!8034722 (= e!4733023 tp_is_empty!54469)))

(declare-fun b!8034724 () Bool)

(declare-fun tp!2405490 () Bool)

(assert (=> b!8034724 (= e!4733023 tp!2405490)))

(assert (= (and b!8034485 ((_ is ElementMatch!21737) (reg!22066 r!13107))) b!8034722))

(assert (= (and b!8034485 ((_ is Concat!30740) (reg!22066 r!13107))) b!8034723))

(assert (= (and b!8034485 ((_ is Star!21737) (reg!22066 r!13107))) b!8034724))

(assert (= (and b!8034485 ((_ is Union!21737) (reg!22066 r!13107))) b!8034725))

(declare-fun b!8034727 () Bool)

(declare-fun e!4733024 () Bool)

(declare-fun tp!2405494 () Bool)

(declare-fun tp!2405496 () Bool)

(assert (=> b!8034727 (= e!4733024 (and tp!2405494 tp!2405496))))

(assert (=> b!8034486 (= tp!2405443 e!4733024)))

(declare-fun b!8034729 () Bool)

(declare-fun tp!2405498 () Bool)

(declare-fun tp!2405497 () Bool)

(assert (=> b!8034729 (= e!4733024 (and tp!2405498 tp!2405497))))

(declare-fun b!8034726 () Bool)

(assert (=> b!8034726 (= e!4733024 tp_is_empty!54469)))

(declare-fun b!8034728 () Bool)

(declare-fun tp!2405495 () Bool)

(assert (=> b!8034728 (= e!4733024 tp!2405495)))

(assert (= (and b!8034486 ((_ is ElementMatch!21737) (regOne!43986 r!13107))) b!8034726))

(assert (= (and b!8034486 ((_ is Concat!30740) (regOne!43986 r!13107))) b!8034727))

(assert (= (and b!8034486 ((_ is Star!21737) (regOne!43986 r!13107))) b!8034728))

(assert (= (and b!8034486 ((_ is Union!21737) (regOne!43986 r!13107))) b!8034729))

(declare-fun b!8034731 () Bool)

(declare-fun e!4733025 () Bool)

(declare-fun tp!2405499 () Bool)

(declare-fun tp!2405501 () Bool)

(assert (=> b!8034731 (= e!4733025 (and tp!2405499 tp!2405501))))

(assert (=> b!8034486 (= tp!2405440 e!4733025)))

(declare-fun b!8034733 () Bool)

(declare-fun tp!2405503 () Bool)

(declare-fun tp!2405502 () Bool)

(assert (=> b!8034733 (= e!4733025 (and tp!2405503 tp!2405502))))

(declare-fun b!8034730 () Bool)

(assert (=> b!8034730 (= e!4733025 tp_is_empty!54469)))

(declare-fun b!8034732 () Bool)

(declare-fun tp!2405500 () Bool)

(assert (=> b!8034732 (= e!4733025 tp!2405500)))

(assert (= (and b!8034486 ((_ is ElementMatch!21737) (regTwo!43986 r!13107))) b!8034730))

(assert (= (and b!8034486 ((_ is Concat!30740) (regTwo!43986 r!13107))) b!8034731))

(assert (= (and b!8034486 ((_ is Star!21737) (regTwo!43986 r!13107))) b!8034732))

(assert (= (and b!8034486 ((_ is Union!21737) (regTwo!43986 r!13107))) b!8034733))

(declare-fun b!8034735 () Bool)

(declare-fun e!4733026 () Bool)

(declare-fun tp!2405504 () Bool)

(declare-fun tp!2405506 () Bool)

(assert (=> b!8034735 (= e!4733026 (and tp!2405504 tp!2405506))))

(assert (=> b!8034483 (= tp!2405441 e!4733026)))

(declare-fun b!8034737 () Bool)

(declare-fun tp!2405508 () Bool)

(declare-fun tp!2405507 () Bool)

(assert (=> b!8034737 (= e!4733026 (and tp!2405508 tp!2405507))))

(declare-fun b!8034734 () Bool)

(assert (=> b!8034734 (= e!4733026 tp_is_empty!54469)))

(declare-fun b!8034736 () Bool)

(declare-fun tp!2405505 () Bool)

(assert (=> b!8034736 (= e!4733026 tp!2405505)))

(assert (= (and b!8034483 ((_ is ElementMatch!21737) (regOne!43987 r!13107))) b!8034734))

(assert (= (and b!8034483 ((_ is Concat!30740) (regOne!43987 r!13107))) b!8034735))

(assert (= (and b!8034483 ((_ is Star!21737) (regOne!43987 r!13107))) b!8034736))

(assert (= (and b!8034483 ((_ is Union!21737) (regOne!43987 r!13107))) b!8034737))

(declare-fun b!8034739 () Bool)

(declare-fun e!4733027 () Bool)

(declare-fun tp!2405509 () Bool)

(declare-fun tp!2405511 () Bool)

(assert (=> b!8034739 (= e!4733027 (and tp!2405509 tp!2405511))))

(assert (=> b!8034483 (= tp!2405442 e!4733027)))

(declare-fun b!8034741 () Bool)

(declare-fun tp!2405513 () Bool)

(declare-fun tp!2405512 () Bool)

(assert (=> b!8034741 (= e!4733027 (and tp!2405513 tp!2405512))))

(declare-fun b!8034738 () Bool)

(assert (=> b!8034738 (= e!4733027 tp_is_empty!54469)))

(declare-fun b!8034740 () Bool)

(declare-fun tp!2405510 () Bool)

(assert (=> b!8034740 (= e!4733027 tp!2405510)))

(assert (= (and b!8034483 ((_ is ElementMatch!21737) (regTwo!43987 r!13107))) b!8034738))

(assert (= (and b!8034483 ((_ is Concat!30740) (regTwo!43987 r!13107))) b!8034739))

(assert (= (and b!8034483 ((_ is Star!21737) (regTwo!43987 r!13107))) b!8034740))

(assert (= (and b!8034483 ((_ is Union!21737) (regTwo!43987 r!13107))) b!8034741))

(check-sat (not b!8034736) (not b!8034733) (not b!8034729) (not b!8034728) (not b!8034723) (not bm!745451) (not b!8034732) (not b!8034741) (not bm!745477) (not b!8034709) (not b!8034724) (not b!8034737) (not b!8034739) (not b!8034727) (not b!8034731) (not b!8034740) (not bm!745482) (not bm!745496) (not d!2394907) (not b!8034725) tp_is_empty!54469 (not bm!745450) (not bm!745479) (not bm!745480) (not b!8034553) (not b!8034735) (not bm!745495))
(check-sat)
(get-model)

(declare-fun d!2394909 () Bool)

(declare-fun nullableFct!3861 (Regex!21737) Bool)

(assert (=> d!2394909 (= (nullable!9762 (reg!22066 r!13107)) (nullableFct!3861 (reg!22066 r!13107)))))

(declare-fun bs!1971493 () Bool)

(assert (= bs!1971493 d!2394909))

(declare-fun m!8392978 () Bool)

(assert (=> bs!1971493 m!8392978))

(assert (=> b!8034553 d!2394909))

(declare-fun bm!745498 () Bool)

(declare-fun call!745505 () Int)

(declare-fun c!1473961 () Bool)

(declare-fun c!1473962 () Bool)

(assert (=> bm!745498 (= call!745505 (RegexPrimitiveSize!155 (ite c!1473962 (regTwo!43986 (ite c!1473935 (regOne!43986 (regTwo!43987 r!13107)) (regTwo!43987 (regTwo!43987 r!13107)))) (ite c!1473961 (reg!22066 (ite c!1473935 (regOne!43986 (regTwo!43987 r!13107)) (regTwo!43987 (regTwo!43987 r!13107)))) (regOne!43987 (ite c!1473935 (regOne!43986 (regTwo!43987 r!13107)) (regTwo!43987 (regTwo!43987 r!13107))))))))))

(declare-fun d!2394911 () Bool)

(declare-fun lt!2722047 () Int)

(assert (=> d!2394911 (>= lt!2722047 0)))

(declare-fun e!4733031 () Int)

(assert (=> d!2394911 (= lt!2722047 e!4733031)))

(declare-fun c!1473963 () Bool)

(assert (=> d!2394911 (= c!1473963 ((_ is ElementMatch!21737) (ite c!1473935 (regOne!43986 (regTwo!43987 r!13107)) (regTwo!43987 (regTwo!43987 r!13107)))))))

(assert (=> d!2394911 (= (RegexPrimitiveSize!155 (ite c!1473935 (regOne!43986 (regTwo!43987 r!13107)) (regTwo!43987 (regTwo!43987 r!13107)))) lt!2722047)))

(declare-fun b!8034742 () Bool)

(declare-fun c!1473959 () Bool)

(assert (=> b!8034742 (= c!1473959 ((_ is EmptyLang!21737) (ite c!1473935 (regOne!43986 (regTwo!43987 r!13107)) (regTwo!43987 (regTwo!43987 r!13107)))))))

(declare-fun e!4733032 () Int)

(declare-fun e!4733030 () Int)

(assert (=> b!8034742 (= e!4733032 e!4733030)))

(declare-fun b!8034743 () Bool)

(declare-fun c!1473960 () Bool)

(assert (=> b!8034743 (= c!1473960 ((_ is EmptyExpr!21737) (ite c!1473935 (regOne!43986 (regTwo!43987 r!13107)) (regTwo!43987 (regTwo!43987 r!13107)))))))

(declare-fun e!4733028 () Int)

(declare-fun e!4733029 () Int)

(assert (=> b!8034743 (= e!4733028 e!4733029)))

(declare-fun b!8034744 () Bool)

(declare-fun call!745503 () Int)

(assert (=> b!8034744 (= e!4733028 (+ 1 call!745503 call!745505))))

(declare-fun b!8034745 () Bool)

(assert (=> b!8034745 (= e!4733030 0)))

(declare-fun b!8034746 () Bool)

(assert (=> b!8034746 (= e!4733031 1)))

(declare-fun b!8034747 () Bool)

(assert (=> b!8034747 (= e!4733031 e!4733028)))

(assert (=> b!8034747 (= c!1473962 ((_ is Concat!30740) (ite c!1473935 (regOne!43986 (regTwo!43987 r!13107)) (regTwo!43987 (regTwo!43987 r!13107)))))))

(declare-fun bm!745499 () Bool)

(declare-fun call!745504 () Int)

(assert (=> bm!745499 (= call!745504 call!745505)))

(declare-fun b!8034748 () Bool)

(assert (=> b!8034748 (= e!4733030 (+ 1 call!745504 call!745503))))

(declare-fun b!8034749 () Bool)

(assert (=> b!8034749 (= e!4733029 0)))

(declare-fun b!8034750 () Bool)

(assert (=> b!8034750 (= e!4733032 (+ 1 call!745504))))

(declare-fun bm!745500 () Bool)

(assert (=> bm!745500 (= call!745503 (RegexPrimitiveSize!155 (ite c!1473962 (regOne!43986 (ite c!1473935 (regOne!43986 (regTwo!43987 r!13107)) (regTwo!43987 (regTwo!43987 r!13107)))) (regTwo!43987 (ite c!1473935 (regOne!43986 (regTwo!43987 r!13107)) (regTwo!43987 (regTwo!43987 r!13107)))))))))

(declare-fun b!8034751 () Bool)

(assert (=> b!8034751 (= e!4733029 e!4733032)))

(assert (=> b!8034751 (= c!1473961 ((_ is Star!21737) (ite c!1473935 (regOne!43986 (regTwo!43987 r!13107)) (regTwo!43987 (regTwo!43987 r!13107)))))))

(assert (= (and d!2394911 c!1473963) b!8034746))

(assert (= (and d!2394911 (not c!1473963)) b!8034747))

(assert (= (and b!8034747 c!1473962) b!8034744))

(assert (= (and b!8034747 (not c!1473962)) b!8034743))

(assert (= (and b!8034743 c!1473960) b!8034749))

(assert (= (and b!8034743 (not c!1473960)) b!8034751))

(assert (= (and b!8034751 c!1473961) b!8034750))

(assert (= (and b!8034751 (not c!1473961)) b!8034742))

(assert (= (and b!8034742 c!1473959) b!8034745))

(assert (= (and b!8034742 (not c!1473959)) b!8034748))

(assert (= (or b!8034750 b!8034748) bm!745499))

(assert (= (or b!8034744 bm!745499) bm!745498))

(assert (= (or b!8034744 b!8034748) bm!745500))

(declare-fun m!8392980 () Bool)

(assert (=> bm!745498 m!8392980))

(declare-fun m!8392982 () Bool)

(assert (=> bm!745500 m!8392982))

(assert (=> bm!745479 d!2394911))

(declare-fun bm!745501 () Bool)

(declare-fun call!745507 () Regex!21737)

(declare-fun call!745508 () Regex!21737)

(assert (=> bm!745501 (= call!745507 call!745508)))

(declare-fun b!8034752 () Bool)

(declare-fun e!4733037 () Regex!21737)

(declare-fun e!4733036 () Regex!21737)

(assert (=> b!8034752 (= e!4733037 e!4733036)))

(declare-fun c!1473965 () Bool)

(assert (=> b!8034752 (= c!1473965 ((_ is ElementMatch!21737) (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))))

(declare-fun b!8034753 () Bool)

(assert (=> b!8034753 (= e!4733037 EmptyLang!21737)))

(declare-fun b!8034754 () Bool)

(declare-fun c!1473964 () Bool)

(assert (=> b!8034754 (= c!1473964 ((_ is Union!21737) (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))))

(declare-fun e!4733033 () Regex!21737)

(assert (=> b!8034754 (= e!4733036 e!4733033)))

(declare-fun e!4733034 () Regex!21737)

(declare-fun b!8034755 () Bool)

(assert (=> b!8034755 (= e!4733034 (Union!21737 (Concat!30740 call!745507 (regTwo!43986 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))))) EmptyLang!21737))))

(declare-fun bm!745502 () Bool)

(declare-fun call!745506 () Regex!21737)

(declare-fun c!1473968 () Bool)

(assert (=> bm!745502 (= call!745506 (derivativeStep!6660 (ite c!1473964 (regTwo!43987 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))) (ite c!1473968 (reg!22066 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))) (regOne!43986 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))) a!2390))))

(declare-fun b!8034756 () Bool)

(declare-fun e!4733035 () Regex!21737)

(declare-fun call!745509 () Regex!21737)

(assert (=> b!8034756 (= e!4733035 (Concat!30740 call!745509 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))))

(declare-fun b!8034757 () Bool)

(assert (=> b!8034757 (= e!4733033 e!4733035)))

(assert (=> b!8034757 (= c!1473968 ((_ is Star!21737) (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))))

(declare-fun d!2394913 () Bool)

(declare-fun lt!2722048 () Regex!21737)

(assert (=> d!2394913 (validRegex!12033 lt!2722048)))

(assert (=> d!2394913 (= lt!2722048 e!4733037)))

(declare-fun c!1473966 () Bool)

(assert (=> d!2394913 (= c!1473966 (or ((_ is EmptyExpr!21737) (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))) ((_ is EmptyLang!21737) (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))))))))

(assert (=> d!2394913 (validRegex!12033 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))))))

(assert (=> d!2394913 (= (derivativeStep!6660 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))) a!2390) lt!2722048)))

(declare-fun b!8034758 () Bool)

(assert (=> b!8034758 (= e!4733036 (ite (= a!2390 (c!1473876 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))))) EmptyExpr!21737 EmptyLang!21737))))

(declare-fun b!8034759 () Bool)

(declare-fun c!1473967 () Bool)

(assert (=> b!8034759 (= c!1473967 (nullable!9762 (regOne!43986 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))))))))

(assert (=> b!8034759 (= e!4733035 e!4733034)))

(declare-fun b!8034760 () Bool)

(assert (=> b!8034760 (= e!4733034 (Union!21737 (Concat!30740 call!745509 (regTwo!43986 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))))) call!745507))))

(declare-fun b!8034761 () Bool)

(assert (=> b!8034761 (= e!4733033 (Union!21737 call!745508 call!745506))))

(declare-fun bm!745503 () Bool)

(assert (=> bm!745503 (= call!745508 (derivativeStep!6660 (ite c!1473964 (regOne!43987 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))) (ite c!1473967 (regTwo!43986 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))) (regOne!43986 (ite c!1473954 (regTwo!43987 (regOne!43987 r!13107)) (ite c!1473958 (reg!22066 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))) a!2390))))

(declare-fun bm!745504 () Bool)

(assert (=> bm!745504 (= call!745509 call!745506)))

(assert (= (and d!2394913 c!1473966) b!8034753))

(assert (= (and d!2394913 (not c!1473966)) b!8034752))

(assert (= (and b!8034752 c!1473965) b!8034758))

(assert (= (and b!8034752 (not c!1473965)) b!8034754))

(assert (= (and b!8034754 c!1473964) b!8034761))

(assert (= (and b!8034754 (not c!1473964)) b!8034757))

(assert (= (and b!8034757 c!1473968) b!8034756))

(assert (= (and b!8034757 (not c!1473968)) b!8034759))

(assert (= (and b!8034759 c!1473967) b!8034760))

(assert (= (and b!8034759 (not c!1473967)) b!8034755))

(assert (= (or b!8034760 b!8034755) bm!745501))

(assert (= (or b!8034756 b!8034760) bm!745504))

(assert (= (or b!8034761 bm!745504) bm!745502))

(assert (= (or b!8034761 bm!745501) bm!745503))

(declare-fun m!8392984 () Bool)

(assert (=> bm!745502 m!8392984))

(declare-fun m!8392986 () Bool)

(assert (=> d!2394913 m!8392986))

(declare-fun m!8392988 () Bool)

(assert (=> d!2394913 m!8392988))

(declare-fun m!8392990 () Bool)

(assert (=> b!8034759 m!8392990))

(declare-fun m!8392992 () Bool)

(assert (=> bm!745503 m!8392992))

(assert (=> bm!745495 d!2394913))

(declare-fun bm!745505 () Bool)

(declare-fun call!745512 () Int)

(declare-fun c!1473972 () Bool)

(declare-fun c!1473971 () Bool)

(assert (=> bm!745505 (= call!745512 (RegexPrimitiveSize!155 (ite c!1473972 (regTwo!43986 (ite c!1473935 (regTwo!43986 (regTwo!43987 r!13107)) (ite c!1473934 (reg!22066 (regTwo!43987 r!13107)) (regOne!43987 (regTwo!43987 r!13107))))) (ite c!1473971 (reg!22066 (ite c!1473935 (regTwo!43986 (regTwo!43987 r!13107)) (ite c!1473934 (reg!22066 (regTwo!43987 r!13107)) (regOne!43987 (regTwo!43987 r!13107))))) (regOne!43987 (ite c!1473935 (regTwo!43986 (regTwo!43987 r!13107)) (ite c!1473934 (reg!22066 (regTwo!43987 r!13107)) (regOne!43987 (regTwo!43987 r!13107)))))))))))

(declare-fun d!2394915 () Bool)

(declare-fun lt!2722049 () Int)

(assert (=> d!2394915 (>= lt!2722049 0)))

(declare-fun e!4733041 () Int)

(assert (=> d!2394915 (= lt!2722049 e!4733041)))

(declare-fun c!1473973 () Bool)

(assert (=> d!2394915 (= c!1473973 ((_ is ElementMatch!21737) (ite c!1473935 (regTwo!43986 (regTwo!43987 r!13107)) (ite c!1473934 (reg!22066 (regTwo!43987 r!13107)) (regOne!43987 (regTwo!43987 r!13107))))))))

(assert (=> d!2394915 (= (RegexPrimitiveSize!155 (ite c!1473935 (regTwo!43986 (regTwo!43987 r!13107)) (ite c!1473934 (reg!22066 (regTwo!43987 r!13107)) (regOne!43987 (regTwo!43987 r!13107))))) lt!2722049)))

(declare-fun c!1473969 () Bool)

(declare-fun b!8034762 () Bool)

(assert (=> b!8034762 (= c!1473969 ((_ is EmptyLang!21737) (ite c!1473935 (regTwo!43986 (regTwo!43987 r!13107)) (ite c!1473934 (reg!22066 (regTwo!43987 r!13107)) (regOne!43987 (regTwo!43987 r!13107))))))))

(declare-fun e!4733042 () Int)

(declare-fun e!4733040 () Int)

(assert (=> b!8034762 (= e!4733042 e!4733040)))

(declare-fun c!1473970 () Bool)

(declare-fun b!8034763 () Bool)

(assert (=> b!8034763 (= c!1473970 ((_ is EmptyExpr!21737) (ite c!1473935 (regTwo!43986 (regTwo!43987 r!13107)) (ite c!1473934 (reg!22066 (regTwo!43987 r!13107)) (regOne!43987 (regTwo!43987 r!13107))))))))

(declare-fun e!4733038 () Int)

(declare-fun e!4733039 () Int)

(assert (=> b!8034763 (= e!4733038 e!4733039)))

(declare-fun b!8034764 () Bool)

(declare-fun call!745510 () Int)

(assert (=> b!8034764 (= e!4733038 (+ 1 call!745510 call!745512))))

(declare-fun b!8034765 () Bool)

(assert (=> b!8034765 (= e!4733040 0)))

(declare-fun b!8034766 () Bool)

(assert (=> b!8034766 (= e!4733041 1)))

(declare-fun b!8034767 () Bool)

(assert (=> b!8034767 (= e!4733041 e!4733038)))

(assert (=> b!8034767 (= c!1473972 ((_ is Concat!30740) (ite c!1473935 (regTwo!43986 (regTwo!43987 r!13107)) (ite c!1473934 (reg!22066 (regTwo!43987 r!13107)) (regOne!43987 (regTwo!43987 r!13107))))))))

(declare-fun bm!745506 () Bool)

(declare-fun call!745511 () Int)

(assert (=> bm!745506 (= call!745511 call!745512)))

(declare-fun b!8034768 () Bool)

(assert (=> b!8034768 (= e!4733040 (+ 1 call!745511 call!745510))))

(declare-fun b!8034769 () Bool)

(assert (=> b!8034769 (= e!4733039 0)))

(declare-fun b!8034770 () Bool)

(assert (=> b!8034770 (= e!4733042 (+ 1 call!745511))))

(declare-fun bm!745507 () Bool)

(assert (=> bm!745507 (= call!745510 (RegexPrimitiveSize!155 (ite c!1473972 (regOne!43986 (ite c!1473935 (regTwo!43986 (regTwo!43987 r!13107)) (ite c!1473934 (reg!22066 (regTwo!43987 r!13107)) (regOne!43987 (regTwo!43987 r!13107))))) (regTwo!43987 (ite c!1473935 (regTwo!43986 (regTwo!43987 r!13107)) (ite c!1473934 (reg!22066 (regTwo!43987 r!13107)) (regOne!43987 (regTwo!43987 r!13107))))))))))

(declare-fun b!8034771 () Bool)

(assert (=> b!8034771 (= e!4733039 e!4733042)))

(assert (=> b!8034771 (= c!1473971 ((_ is Star!21737) (ite c!1473935 (regTwo!43986 (regTwo!43987 r!13107)) (ite c!1473934 (reg!22066 (regTwo!43987 r!13107)) (regOne!43987 (regTwo!43987 r!13107))))))))

(assert (= (and d!2394915 c!1473973) b!8034766))

(assert (= (and d!2394915 (not c!1473973)) b!8034767))

(assert (= (and b!8034767 c!1473972) b!8034764))

(assert (= (and b!8034767 (not c!1473972)) b!8034763))

(assert (= (and b!8034763 c!1473970) b!8034769))

(assert (= (and b!8034763 (not c!1473970)) b!8034771))

(assert (= (and b!8034771 c!1473971) b!8034770))

(assert (= (and b!8034771 (not c!1473971)) b!8034762))

(assert (= (and b!8034762 c!1473969) b!8034765))

(assert (= (and b!8034762 (not c!1473969)) b!8034768))

(assert (= (or b!8034770 b!8034768) bm!745506))

(assert (= (or b!8034764 bm!745506) bm!745505))

(assert (= (or b!8034764 b!8034768) bm!745507))

(declare-fun m!8392994 () Bool)

(assert (=> bm!745505 m!8392994))

(declare-fun m!8392996 () Bool)

(assert (=> bm!745507 m!8392996))

(assert (=> bm!745477 d!2394915))

(declare-fun bm!745508 () Bool)

(declare-fun call!745514 () Bool)

(declare-fun c!1473974 () Bool)

(assert (=> bm!745508 (= call!745514 (validRegex!12033 (ite c!1473974 (regTwo!43987 lt!2722046) (regTwo!43986 lt!2722046))))))

(declare-fun b!8034772 () Bool)

(declare-fun e!4733049 () Bool)

(assert (=> b!8034772 (= e!4733049 call!745514)))

(declare-fun call!745515 () Bool)

(declare-fun c!1473975 () Bool)

(declare-fun bm!745509 () Bool)

(assert (=> bm!745509 (= call!745515 (validRegex!12033 (ite c!1473975 (reg!22066 lt!2722046) (ite c!1473974 (regOne!43987 lt!2722046) (regOne!43986 lt!2722046)))))))

(declare-fun b!8034773 () Bool)

(declare-fun res!3176899 () Bool)

(declare-fun e!4733045 () Bool)

(assert (=> b!8034773 (=> res!3176899 e!4733045)))

(assert (=> b!8034773 (= res!3176899 (not ((_ is Concat!30740) lt!2722046)))))

(declare-fun e!4733046 () Bool)

(assert (=> b!8034773 (= e!4733046 e!4733045)))

(declare-fun b!8034775 () Bool)

(declare-fun e!4733043 () Bool)

(assert (=> b!8034775 (= e!4733043 call!745515)))

(declare-fun b!8034776 () Bool)

(declare-fun e!4733044 () Bool)

(declare-fun e!4733048 () Bool)

(assert (=> b!8034776 (= e!4733044 e!4733048)))

(assert (=> b!8034776 (= c!1473975 ((_ is Star!21737) lt!2722046))))

(declare-fun bm!745510 () Bool)

(declare-fun call!745513 () Bool)

(assert (=> bm!745510 (= call!745513 call!745515)))

(declare-fun b!8034777 () Bool)

(declare-fun e!4733047 () Bool)

(assert (=> b!8034777 (= e!4733045 e!4733047)))

(declare-fun res!3176900 () Bool)

(assert (=> b!8034777 (=> (not res!3176900) (not e!4733047))))

(assert (=> b!8034777 (= res!3176900 call!745513)))

(declare-fun b!8034778 () Bool)

(assert (=> b!8034778 (= e!4733048 e!4733046)))

(assert (=> b!8034778 (= c!1473974 ((_ is Union!21737) lt!2722046))))

(declare-fun b!8034774 () Bool)

(declare-fun res!3176901 () Bool)

(assert (=> b!8034774 (=> (not res!3176901) (not e!4733049))))

(assert (=> b!8034774 (= res!3176901 call!745513)))

(assert (=> b!8034774 (= e!4733046 e!4733049)))

(declare-fun d!2394917 () Bool)

(declare-fun res!3176898 () Bool)

(assert (=> d!2394917 (=> res!3176898 e!4733044)))

(assert (=> d!2394917 (= res!3176898 ((_ is ElementMatch!21737) lt!2722046))))

(assert (=> d!2394917 (= (validRegex!12033 lt!2722046) e!4733044)))

(declare-fun b!8034779 () Bool)

(assert (=> b!8034779 (= e!4733048 e!4733043)))

(declare-fun res!3176902 () Bool)

(assert (=> b!8034779 (= res!3176902 (not (nullable!9762 (reg!22066 lt!2722046))))))

(assert (=> b!8034779 (=> (not res!3176902) (not e!4733043))))

(declare-fun b!8034780 () Bool)

(assert (=> b!8034780 (= e!4733047 call!745514)))

(assert (= (and d!2394917 (not res!3176898)) b!8034776))

(assert (= (and b!8034776 c!1473975) b!8034779))

(assert (= (and b!8034776 (not c!1473975)) b!8034778))

(assert (= (and b!8034779 res!3176902) b!8034775))

(assert (= (and b!8034778 c!1473974) b!8034774))

(assert (= (and b!8034778 (not c!1473974)) b!8034773))

(assert (= (and b!8034774 res!3176901) b!8034772))

(assert (= (and b!8034773 (not res!3176899)) b!8034777))

(assert (= (and b!8034777 res!3176900) b!8034780))

(assert (= (or b!8034772 b!8034780) bm!745508))

(assert (= (or b!8034774 b!8034777) bm!745510))

(assert (= (or b!8034775 bm!745510) bm!745509))

(declare-fun m!8392998 () Bool)

(assert (=> bm!745508 m!8392998))

(declare-fun m!8393000 () Bool)

(assert (=> bm!745509 m!8393000))

(declare-fun m!8393002 () Bool)

(assert (=> b!8034779 m!8393002))

(assert (=> d!2394907 d!2394917))

(declare-fun bm!745515 () Bool)

(declare-fun call!745521 () Bool)

(declare-fun c!1473981 () Bool)

(assert (=> bm!745515 (= call!745521 (validRegex!12033 (ite c!1473981 (regTwo!43987 (regOne!43987 r!13107)) (regTwo!43986 (regOne!43987 r!13107)))))))

(declare-fun b!8034791 () Bool)

(declare-fun e!4733061 () Bool)

(assert (=> b!8034791 (= e!4733061 call!745521)))

(declare-fun c!1473982 () Bool)

(declare-fun call!745522 () Bool)

(declare-fun bm!745516 () Bool)

(assert (=> bm!745516 (= call!745522 (validRegex!12033 (ite c!1473982 (reg!22066 (regOne!43987 r!13107)) (ite c!1473981 (regOne!43987 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))))

(declare-fun b!8034792 () Bool)

(declare-fun res!3176904 () Bool)

(declare-fun e!4733057 () Bool)

(assert (=> b!8034792 (=> res!3176904 e!4733057)))

(assert (=> b!8034792 (= res!3176904 (not ((_ is Concat!30740) (regOne!43987 r!13107))))))

(declare-fun e!4733058 () Bool)

(assert (=> b!8034792 (= e!4733058 e!4733057)))

(declare-fun b!8034794 () Bool)

(declare-fun e!4733055 () Bool)

(assert (=> b!8034794 (= e!4733055 call!745522)))

(declare-fun b!8034795 () Bool)

(declare-fun e!4733056 () Bool)

(declare-fun e!4733060 () Bool)

(assert (=> b!8034795 (= e!4733056 e!4733060)))

(assert (=> b!8034795 (= c!1473982 ((_ is Star!21737) (regOne!43987 r!13107)))))

(declare-fun bm!745517 () Bool)

(declare-fun call!745520 () Bool)

(assert (=> bm!745517 (= call!745520 call!745522)))

(declare-fun b!8034796 () Bool)

(declare-fun e!4733059 () Bool)

(assert (=> b!8034796 (= e!4733057 e!4733059)))

(declare-fun res!3176905 () Bool)

(assert (=> b!8034796 (=> (not res!3176905) (not e!4733059))))

(assert (=> b!8034796 (= res!3176905 call!745520)))

(declare-fun b!8034797 () Bool)

(assert (=> b!8034797 (= e!4733060 e!4733058)))

(assert (=> b!8034797 (= c!1473981 ((_ is Union!21737) (regOne!43987 r!13107)))))

(declare-fun b!8034793 () Bool)

(declare-fun res!3176906 () Bool)

(assert (=> b!8034793 (=> (not res!3176906) (not e!4733061))))

(assert (=> b!8034793 (= res!3176906 call!745520)))

(assert (=> b!8034793 (= e!4733058 e!4733061)))

(declare-fun d!2394921 () Bool)

(declare-fun res!3176903 () Bool)

(assert (=> d!2394921 (=> res!3176903 e!4733056)))

(assert (=> d!2394921 (= res!3176903 ((_ is ElementMatch!21737) (regOne!43987 r!13107)))))

(assert (=> d!2394921 (= (validRegex!12033 (regOne!43987 r!13107)) e!4733056)))

(declare-fun b!8034798 () Bool)

(assert (=> b!8034798 (= e!4733060 e!4733055)))

(declare-fun res!3176907 () Bool)

(assert (=> b!8034798 (= res!3176907 (not (nullable!9762 (reg!22066 (regOne!43987 r!13107)))))))

(assert (=> b!8034798 (=> (not res!3176907) (not e!4733055))))

(declare-fun b!8034799 () Bool)

(assert (=> b!8034799 (= e!4733059 call!745521)))

(assert (= (and d!2394921 (not res!3176903)) b!8034795))

(assert (= (and b!8034795 c!1473982) b!8034798))

(assert (= (and b!8034795 (not c!1473982)) b!8034797))

(assert (= (and b!8034798 res!3176907) b!8034794))

(assert (= (and b!8034797 c!1473981) b!8034793))

(assert (= (and b!8034797 (not c!1473981)) b!8034792))

(assert (= (and b!8034793 res!3176906) b!8034791))

(assert (= (and b!8034792 (not res!3176904)) b!8034796))

(assert (= (and b!8034796 res!3176905) b!8034799))

(assert (= (or b!8034791 b!8034799) bm!745515))

(assert (= (or b!8034793 b!8034796) bm!745517))

(assert (= (or b!8034794 bm!745517) bm!745516))

(declare-fun m!8393014 () Bool)

(assert (=> bm!745515 m!8393014))

(declare-fun m!8393016 () Bool)

(assert (=> bm!745516 m!8393016))

(declare-fun m!8393018 () Bool)

(assert (=> b!8034798 m!8393018))

(assert (=> d!2394907 d!2394921))

(declare-fun call!745527 () Bool)

(declare-fun bm!745521 () Bool)

(declare-fun c!1473985 () Bool)

(assert (=> bm!745521 (= call!745527 (validRegex!12033 (ite c!1473985 (regTwo!43987 (ite c!1473901 (regTwo!43987 r!13107) (regTwo!43986 r!13107))) (regTwo!43986 (ite c!1473901 (regTwo!43987 r!13107) (regTwo!43986 r!13107))))))))

(declare-fun b!8034809 () Bool)

(declare-fun e!4733075 () Bool)

(assert (=> b!8034809 (= e!4733075 call!745527)))

(declare-fun bm!745522 () Bool)

(declare-fun call!745528 () Bool)

(declare-fun c!1473986 () Bool)

(assert (=> bm!745522 (= call!745528 (validRegex!12033 (ite c!1473986 (reg!22066 (ite c!1473901 (regTwo!43987 r!13107) (regTwo!43986 r!13107))) (ite c!1473985 (regOne!43987 (ite c!1473901 (regTwo!43987 r!13107) (regTwo!43986 r!13107))) (regOne!43986 (ite c!1473901 (regTwo!43987 r!13107) (regTwo!43986 r!13107)))))))))

(declare-fun b!8034810 () Bool)

(declare-fun res!3176914 () Bool)

(declare-fun e!4733071 () Bool)

(assert (=> b!8034810 (=> res!3176914 e!4733071)))

(assert (=> b!8034810 (= res!3176914 (not ((_ is Concat!30740) (ite c!1473901 (regTwo!43987 r!13107) (regTwo!43986 r!13107)))))))

(declare-fun e!4733072 () Bool)

(assert (=> b!8034810 (= e!4733072 e!4733071)))

(declare-fun b!8034812 () Bool)

(declare-fun e!4733069 () Bool)

(assert (=> b!8034812 (= e!4733069 call!745528)))

(declare-fun b!8034813 () Bool)

(declare-fun e!4733070 () Bool)

(declare-fun e!4733074 () Bool)

(assert (=> b!8034813 (= e!4733070 e!4733074)))

(assert (=> b!8034813 (= c!1473986 ((_ is Star!21737) (ite c!1473901 (regTwo!43987 r!13107) (regTwo!43986 r!13107))))))

(declare-fun bm!745523 () Bool)

(declare-fun call!745526 () Bool)

(assert (=> bm!745523 (= call!745526 call!745528)))

(declare-fun b!8034814 () Bool)

(declare-fun e!4733073 () Bool)

(assert (=> b!8034814 (= e!4733071 e!4733073)))

(declare-fun res!3176915 () Bool)

(assert (=> b!8034814 (=> (not res!3176915) (not e!4733073))))

(assert (=> b!8034814 (= res!3176915 call!745526)))

(declare-fun b!8034815 () Bool)

(assert (=> b!8034815 (= e!4733074 e!4733072)))

(assert (=> b!8034815 (= c!1473985 ((_ is Union!21737) (ite c!1473901 (regTwo!43987 r!13107) (regTwo!43986 r!13107))))))

(declare-fun b!8034811 () Bool)

(declare-fun res!3176916 () Bool)

(assert (=> b!8034811 (=> (not res!3176916) (not e!4733075))))

(assert (=> b!8034811 (= res!3176916 call!745526)))

(assert (=> b!8034811 (= e!4733072 e!4733075)))

(declare-fun d!2394925 () Bool)

(declare-fun res!3176913 () Bool)

(assert (=> d!2394925 (=> res!3176913 e!4733070)))

(assert (=> d!2394925 (= res!3176913 ((_ is ElementMatch!21737) (ite c!1473901 (regTwo!43987 r!13107) (regTwo!43986 r!13107))))))

(assert (=> d!2394925 (= (validRegex!12033 (ite c!1473901 (regTwo!43987 r!13107) (regTwo!43986 r!13107))) e!4733070)))

(declare-fun b!8034816 () Bool)

(assert (=> b!8034816 (= e!4733074 e!4733069)))

(declare-fun res!3176917 () Bool)

(assert (=> b!8034816 (= res!3176917 (not (nullable!9762 (reg!22066 (ite c!1473901 (regTwo!43987 r!13107) (regTwo!43986 r!13107))))))))

(assert (=> b!8034816 (=> (not res!3176917) (not e!4733069))))

(declare-fun b!8034817 () Bool)

(assert (=> b!8034817 (= e!4733073 call!745527)))

(assert (= (and d!2394925 (not res!3176913)) b!8034813))

(assert (= (and b!8034813 c!1473986) b!8034816))

(assert (= (and b!8034813 (not c!1473986)) b!8034815))

(assert (= (and b!8034816 res!3176917) b!8034812))

(assert (= (and b!8034815 c!1473985) b!8034811))

(assert (= (and b!8034815 (not c!1473985)) b!8034810))

(assert (= (and b!8034811 res!3176916) b!8034809))

(assert (= (and b!8034810 (not res!3176914)) b!8034814))

(assert (= (and b!8034814 res!3176915) b!8034817))

(assert (= (or b!8034809 b!8034817) bm!745521))

(assert (= (or b!8034811 b!8034814) bm!745523))

(assert (= (or b!8034812 bm!745523) bm!745522))

(declare-fun m!8393028 () Bool)

(assert (=> bm!745521 m!8393028))

(declare-fun m!8393034 () Bool)

(assert (=> bm!745522 m!8393034))

(declare-fun m!8393038 () Bool)

(assert (=> b!8034816 m!8393038))

(assert (=> bm!745450 d!2394925))

(declare-fun bm!745528 () Bool)

(declare-fun call!745535 () Int)

(declare-fun c!1473994 () Bool)

(declare-fun c!1473995 () Bool)

(assert (=> bm!745528 (= call!745535 (RegexPrimitiveSize!155 (ite c!1473995 (regTwo!43986 (ite c!1473940 (regTwo!43986 r!13107) (ite c!1473939 (reg!22066 r!13107) (regOne!43987 r!13107)))) (ite c!1473994 (reg!22066 (ite c!1473940 (regTwo!43986 r!13107) (ite c!1473939 (reg!22066 r!13107) (regOne!43987 r!13107)))) (regOne!43987 (ite c!1473940 (regTwo!43986 r!13107) (ite c!1473939 (reg!22066 r!13107) (regOne!43987 r!13107))))))))))

(declare-fun d!2394929 () Bool)

(declare-fun lt!2722052 () Int)

(assert (=> d!2394929 (>= lt!2722052 0)))

(declare-fun e!4733084 () Int)

(assert (=> d!2394929 (= lt!2722052 e!4733084)))

(declare-fun c!1473996 () Bool)

(assert (=> d!2394929 (= c!1473996 ((_ is ElementMatch!21737) (ite c!1473940 (regTwo!43986 r!13107) (ite c!1473939 (reg!22066 r!13107) (regOne!43987 r!13107)))))))

(assert (=> d!2394929 (= (RegexPrimitiveSize!155 (ite c!1473940 (regTwo!43986 r!13107) (ite c!1473939 (reg!22066 r!13107) (regOne!43987 r!13107)))) lt!2722052)))

(declare-fun b!8034828 () Bool)

(declare-fun c!1473992 () Bool)

(assert (=> b!8034828 (= c!1473992 ((_ is EmptyLang!21737) (ite c!1473940 (regTwo!43986 r!13107) (ite c!1473939 (reg!22066 r!13107) (regOne!43987 r!13107)))))))

(declare-fun e!4733085 () Int)

(declare-fun e!4733083 () Int)

(assert (=> b!8034828 (= e!4733085 e!4733083)))

(declare-fun c!1473993 () Bool)

(declare-fun b!8034829 () Bool)

(assert (=> b!8034829 (= c!1473993 ((_ is EmptyExpr!21737) (ite c!1473940 (regTwo!43986 r!13107) (ite c!1473939 (reg!22066 r!13107) (regOne!43987 r!13107)))))))

(declare-fun e!4733081 () Int)

(declare-fun e!4733082 () Int)

(assert (=> b!8034829 (= e!4733081 e!4733082)))

(declare-fun b!8034830 () Bool)

(declare-fun call!745533 () Int)

(assert (=> b!8034830 (= e!4733081 (+ 1 call!745533 call!745535))))

(declare-fun b!8034831 () Bool)

(assert (=> b!8034831 (= e!4733083 0)))

(declare-fun b!8034832 () Bool)

(assert (=> b!8034832 (= e!4733084 1)))

(declare-fun b!8034833 () Bool)

(assert (=> b!8034833 (= e!4733084 e!4733081)))

(assert (=> b!8034833 (= c!1473995 ((_ is Concat!30740) (ite c!1473940 (regTwo!43986 r!13107) (ite c!1473939 (reg!22066 r!13107) (regOne!43987 r!13107)))))))

(declare-fun bm!745529 () Bool)

(declare-fun call!745534 () Int)

(assert (=> bm!745529 (= call!745534 call!745535)))

(declare-fun b!8034834 () Bool)

(assert (=> b!8034834 (= e!4733083 (+ 1 call!745534 call!745533))))

(declare-fun b!8034835 () Bool)

(assert (=> b!8034835 (= e!4733082 0)))

(declare-fun b!8034836 () Bool)

(assert (=> b!8034836 (= e!4733085 (+ 1 call!745534))))

(declare-fun bm!745530 () Bool)

(assert (=> bm!745530 (= call!745533 (RegexPrimitiveSize!155 (ite c!1473995 (regOne!43986 (ite c!1473940 (regTwo!43986 r!13107) (ite c!1473939 (reg!22066 r!13107) (regOne!43987 r!13107)))) (regTwo!43987 (ite c!1473940 (regTwo!43986 r!13107) (ite c!1473939 (reg!22066 r!13107) (regOne!43987 r!13107)))))))))

(declare-fun b!8034837 () Bool)

(assert (=> b!8034837 (= e!4733082 e!4733085)))

(assert (=> b!8034837 (= c!1473994 ((_ is Star!21737) (ite c!1473940 (regTwo!43986 r!13107) (ite c!1473939 (reg!22066 r!13107) (regOne!43987 r!13107)))))))

(assert (= (and d!2394929 c!1473996) b!8034832))

(assert (= (and d!2394929 (not c!1473996)) b!8034833))

(assert (= (and b!8034833 c!1473995) b!8034830))

(assert (= (and b!8034833 (not c!1473995)) b!8034829))

(assert (= (and b!8034829 c!1473993) b!8034835))

(assert (= (and b!8034829 (not c!1473993)) b!8034837))

(assert (= (and b!8034837 c!1473994) b!8034836))

(assert (= (and b!8034837 (not c!1473994)) b!8034828))

(assert (= (and b!8034828 c!1473992) b!8034831))

(assert (= (and b!8034828 (not c!1473992)) b!8034834))

(assert (= (or b!8034836 b!8034834) bm!745529))

(assert (= (or b!8034830 bm!745529) bm!745528))

(assert (= (or b!8034830 b!8034834) bm!745530))

(declare-fun m!8393044 () Bool)

(assert (=> bm!745528 m!8393044))

(declare-fun m!8393046 () Bool)

(assert (=> bm!745530 m!8393046))

(assert (=> bm!745480 d!2394929))

(declare-fun c!1474002 () Bool)

(declare-fun bm!745534 () Bool)

(declare-fun c!1474001 () Bool)

(declare-fun call!745541 () Int)

(assert (=> bm!745534 (= call!745541 (RegexPrimitiveSize!155 (ite c!1474002 (regTwo!43986 (ite c!1473940 (regOne!43986 r!13107) (regTwo!43987 r!13107))) (ite c!1474001 (reg!22066 (ite c!1473940 (regOne!43986 r!13107) (regTwo!43987 r!13107))) (regOne!43987 (ite c!1473940 (regOne!43986 r!13107) (regTwo!43987 r!13107)))))))))

(declare-fun d!2394935 () Bool)

(declare-fun lt!2722053 () Int)

(assert (=> d!2394935 (>= lt!2722053 0)))

(declare-fun e!4733096 () Int)

(assert (=> d!2394935 (= lt!2722053 e!4733096)))

(declare-fun c!1474003 () Bool)

(assert (=> d!2394935 (= c!1474003 ((_ is ElementMatch!21737) (ite c!1473940 (regOne!43986 r!13107) (regTwo!43987 r!13107))))))

(assert (=> d!2394935 (= (RegexPrimitiveSize!155 (ite c!1473940 (regOne!43986 r!13107) (regTwo!43987 r!13107))) lt!2722053)))

(declare-fun b!8034847 () Bool)

(declare-fun c!1473999 () Bool)

(assert (=> b!8034847 (= c!1473999 ((_ is EmptyLang!21737) (ite c!1473940 (regOne!43986 r!13107) (regTwo!43987 r!13107))))))

(declare-fun e!4733097 () Int)

(declare-fun e!4733095 () Int)

(assert (=> b!8034847 (= e!4733097 e!4733095)))

(declare-fun b!8034848 () Bool)

(declare-fun c!1474000 () Bool)

(assert (=> b!8034848 (= c!1474000 ((_ is EmptyExpr!21737) (ite c!1473940 (regOne!43986 r!13107) (regTwo!43987 r!13107))))))

(declare-fun e!4733093 () Int)

(declare-fun e!4733094 () Int)

(assert (=> b!8034848 (= e!4733093 e!4733094)))

(declare-fun b!8034849 () Bool)

(declare-fun call!745539 () Int)

(assert (=> b!8034849 (= e!4733093 (+ 1 call!745539 call!745541))))

(declare-fun b!8034850 () Bool)

(assert (=> b!8034850 (= e!4733095 0)))

(declare-fun b!8034851 () Bool)

(assert (=> b!8034851 (= e!4733096 1)))

(declare-fun b!8034852 () Bool)

(assert (=> b!8034852 (= e!4733096 e!4733093)))

(assert (=> b!8034852 (= c!1474002 ((_ is Concat!30740) (ite c!1473940 (regOne!43986 r!13107) (regTwo!43987 r!13107))))))

(declare-fun bm!745535 () Bool)

(declare-fun call!745540 () Int)

(assert (=> bm!745535 (= call!745540 call!745541)))

(declare-fun b!8034853 () Bool)

(assert (=> b!8034853 (= e!4733095 (+ 1 call!745540 call!745539))))

(declare-fun b!8034854 () Bool)

(assert (=> b!8034854 (= e!4733094 0)))

(declare-fun b!8034855 () Bool)

(assert (=> b!8034855 (= e!4733097 (+ 1 call!745540))))

(declare-fun bm!745536 () Bool)

(assert (=> bm!745536 (= call!745539 (RegexPrimitiveSize!155 (ite c!1474002 (regOne!43986 (ite c!1473940 (regOne!43986 r!13107) (regTwo!43987 r!13107))) (regTwo!43987 (ite c!1473940 (regOne!43986 r!13107) (regTwo!43987 r!13107))))))))

(declare-fun b!8034856 () Bool)

(assert (=> b!8034856 (= e!4733094 e!4733097)))

(assert (=> b!8034856 (= c!1474001 ((_ is Star!21737) (ite c!1473940 (regOne!43986 r!13107) (regTwo!43987 r!13107))))))

(assert (= (and d!2394935 c!1474003) b!8034851))

(assert (= (and d!2394935 (not c!1474003)) b!8034852))

(assert (= (and b!8034852 c!1474002) b!8034849))

(assert (= (and b!8034852 (not c!1474002)) b!8034848))

(assert (= (and b!8034848 c!1474000) b!8034854))

(assert (= (and b!8034848 (not c!1474000)) b!8034856))

(assert (= (and b!8034856 c!1474001) b!8034855))

(assert (= (and b!8034856 (not c!1474001)) b!8034847))

(assert (= (and b!8034847 c!1473999) b!8034850))

(assert (= (and b!8034847 (not c!1473999)) b!8034853))

(assert (= (or b!8034855 b!8034853) bm!745535))

(assert (= (or b!8034849 bm!745535) bm!745534))

(assert (= (or b!8034849 b!8034853) bm!745536))

(declare-fun m!8393054 () Bool)

(assert (=> bm!745534 m!8393054))

(declare-fun m!8393060 () Bool)

(assert (=> bm!745536 m!8393060))

(assert (=> bm!745482 d!2394935))

(declare-fun bm!745543 () Bool)

(declare-fun call!745549 () Regex!21737)

(declare-fun call!745550 () Regex!21737)

(assert (=> bm!745543 (= call!745549 call!745550)))

(declare-fun b!8034877 () Bool)

(declare-fun e!4733112 () Regex!21737)

(declare-fun e!4733111 () Regex!21737)

(assert (=> b!8034877 (= e!4733112 e!4733111)))

(declare-fun c!1474015 () Bool)

(assert (=> b!8034877 (= c!1474015 ((_ is ElementMatch!21737) (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))))

(declare-fun b!8034878 () Bool)

(assert (=> b!8034878 (= e!4733112 EmptyLang!21737)))

(declare-fun c!1474014 () Bool)

(declare-fun b!8034879 () Bool)

(assert (=> b!8034879 (= c!1474014 ((_ is Union!21737) (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))))

(declare-fun e!4733108 () Regex!21737)

(assert (=> b!8034879 (= e!4733111 e!4733108)))

(declare-fun b!8034880 () Bool)

(declare-fun e!4733109 () Regex!21737)

(assert (=> b!8034880 (= e!4733109 (Union!21737 (Concat!30740 call!745549 (regTwo!43986 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))))) EmptyLang!21737))))

(declare-fun bm!745544 () Bool)

(declare-fun call!745548 () Regex!21737)

(declare-fun c!1474018 () Bool)

(assert (=> bm!745544 (= call!745548 (derivativeStep!6660 (ite c!1474014 (regTwo!43987 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))) (ite c!1474018 (reg!22066 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))) (regOne!43986 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))) a!2390))))

(declare-fun call!745551 () Regex!21737)

(declare-fun b!8034881 () Bool)

(declare-fun e!4733110 () Regex!21737)

(assert (=> b!8034881 (= e!4733110 (Concat!30740 call!745551 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))))

(declare-fun b!8034882 () Bool)

(assert (=> b!8034882 (= e!4733108 e!4733110)))

(assert (=> b!8034882 (= c!1474018 ((_ is Star!21737) (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))))

(declare-fun d!2394941 () Bool)

(declare-fun lt!2722056 () Regex!21737)

(assert (=> d!2394941 (validRegex!12033 lt!2722056)))

(assert (=> d!2394941 (= lt!2722056 e!4733112)))

(declare-fun c!1474016 () Bool)

(assert (=> d!2394941 (= c!1474016 (or ((_ is EmptyExpr!21737) (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))) ((_ is EmptyLang!21737) (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))))))))

(assert (=> d!2394941 (validRegex!12033 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))))))

(assert (=> d!2394941 (= (derivativeStep!6660 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))) a!2390) lt!2722056)))

(declare-fun b!8034883 () Bool)

(assert (=> b!8034883 (= e!4733111 (ite (= a!2390 (c!1473876 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))))) EmptyExpr!21737 EmptyLang!21737))))

(declare-fun c!1474017 () Bool)

(declare-fun b!8034884 () Bool)

(assert (=> b!8034884 (= c!1474017 (nullable!9762 (regOne!43986 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))))))))

(assert (=> b!8034884 (= e!4733110 e!4733109)))

(declare-fun b!8034885 () Bool)

(assert (=> b!8034885 (= e!4733109 (Union!21737 (Concat!30740 call!745551 (regTwo!43986 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107)))))) call!745549))))

(declare-fun b!8034886 () Bool)

(assert (=> b!8034886 (= e!4733108 (Union!21737 call!745550 call!745548))))

(declare-fun bm!745545 () Bool)

(assert (=> bm!745545 (= call!745550 (derivativeStep!6660 (ite c!1474014 (regOne!43987 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))) (ite c!1474017 (regTwo!43986 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))) (regOne!43986 (ite c!1473954 (regOne!43987 (regOne!43987 r!13107)) (ite c!1473957 (regTwo!43986 (regOne!43987 r!13107)) (regOne!43986 (regOne!43987 r!13107))))))) a!2390))))

(declare-fun bm!745546 () Bool)

(assert (=> bm!745546 (= call!745551 call!745548)))

(assert (= (and d!2394941 c!1474016) b!8034878))

(assert (= (and d!2394941 (not c!1474016)) b!8034877))

(assert (= (and b!8034877 c!1474015) b!8034883))

(assert (= (and b!8034877 (not c!1474015)) b!8034879))

(assert (= (and b!8034879 c!1474014) b!8034886))

(assert (= (and b!8034879 (not c!1474014)) b!8034882))

(assert (= (and b!8034882 c!1474018) b!8034881))

(assert (= (and b!8034882 (not c!1474018)) b!8034884))

(assert (= (and b!8034884 c!1474017) b!8034885))

(assert (= (and b!8034884 (not c!1474017)) b!8034880))

(assert (= (or b!8034885 b!8034880) bm!745543))

(assert (= (or b!8034881 b!8034885) bm!745546))

(assert (= (or b!8034886 bm!745546) bm!745544))

(assert (= (or b!8034886 bm!745543) bm!745545))

(declare-fun m!8393070 () Bool)

(assert (=> bm!745544 m!8393070))

(declare-fun m!8393072 () Bool)

(assert (=> d!2394941 m!8393072))

(declare-fun m!8393074 () Bool)

(assert (=> d!2394941 m!8393074))

(declare-fun m!8393076 () Bool)

(assert (=> b!8034884 m!8393076))

(declare-fun m!8393078 () Bool)

(assert (=> bm!745545 m!8393078))

(assert (=> bm!745496 d!2394941))

(declare-fun bm!745553 () Bool)

(declare-fun c!1474029 () Bool)

(declare-fun call!745559 () Bool)

(assert (=> bm!745553 (= call!745559 (validRegex!12033 (ite c!1474029 (regTwo!43987 (ite c!1473902 (reg!22066 r!13107) (ite c!1473901 (regOne!43987 r!13107) (regOne!43986 r!13107)))) (regTwo!43986 (ite c!1473902 (reg!22066 r!13107) (ite c!1473901 (regOne!43987 r!13107) (regOne!43986 r!13107)))))))))

(declare-fun b!8034907 () Bool)

(declare-fun e!4733129 () Bool)

(assert (=> b!8034907 (= e!4733129 call!745559)))

(declare-fun bm!745554 () Bool)

(declare-fun call!745560 () Bool)

(declare-fun c!1474030 () Bool)

(assert (=> bm!745554 (= call!745560 (validRegex!12033 (ite c!1474030 (reg!22066 (ite c!1473902 (reg!22066 r!13107) (ite c!1473901 (regOne!43987 r!13107) (regOne!43986 r!13107)))) (ite c!1474029 (regOne!43987 (ite c!1473902 (reg!22066 r!13107) (ite c!1473901 (regOne!43987 r!13107) (regOne!43986 r!13107)))) (regOne!43986 (ite c!1473902 (reg!22066 r!13107) (ite c!1473901 (regOne!43987 r!13107) (regOne!43986 r!13107))))))))))

(declare-fun b!8034908 () Bool)

(declare-fun res!3176924 () Bool)

(declare-fun e!4733125 () Bool)

(assert (=> b!8034908 (=> res!3176924 e!4733125)))

(assert (=> b!8034908 (= res!3176924 (not ((_ is Concat!30740) (ite c!1473902 (reg!22066 r!13107) (ite c!1473901 (regOne!43987 r!13107) (regOne!43986 r!13107))))))))

(declare-fun e!4733126 () Bool)

(assert (=> b!8034908 (= e!4733126 e!4733125)))

(declare-fun b!8034910 () Bool)

(declare-fun e!4733123 () Bool)

(assert (=> b!8034910 (= e!4733123 call!745560)))

(declare-fun b!8034911 () Bool)

(declare-fun e!4733124 () Bool)

(declare-fun e!4733128 () Bool)

(assert (=> b!8034911 (= e!4733124 e!4733128)))

(assert (=> b!8034911 (= c!1474030 ((_ is Star!21737) (ite c!1473902 (reg!22066 r!13107) (ite c!1473901 (regOne!43987 r!13107) (regOne!43986 r!13107)))))))

(declare-fun bm!745555 () Bool)

(declare-fun call!745558 () Bool)

(assert (=> bm!745555 (= call!745558 call!745560)))

(declare-fun b!8034912 () Bool)

(declare-fun e!4733127 () Bool)

(assert (=> b!8034912 (= e!4733125 e!4733127)))

(declare-fun res!3176925 () Bool)

(assert (=> b!8034912 (=> (not res!3176925) (not e!4733127))))

(assert (=> b!8034912 (= res!3176925 call!745558)))

(declare-fun b!8034913 () Bool)

(assert (=> b!8034913 (= e!4733128 e!4733126)))

(assert (=> b!8034913 (= c!1474029 ((_ is Union!21737) (ite c!1473902 (reg!22066 r!13107) (ite c!1473901 (regOne!43987 r!13107) (regOne!43986 r!13107)))))))

(declare-fun b!8034909 () Bool)

(declare-fun res!3176926 () Bool)

(assert (=> b!8034909 (=> (not res!3176926) (not e!4733129))))

(assert (=> b!8034909 (= res!3176926 call!745558)))

(assert (=> b!8034909 (= e!4733126 e!4733129)))

(declare-fun d!2394947 () Bool)

(declare-fun res!3176923 () Bool)

(assert (=> d!2394947 (=> res!3176923 e!4733124)))

(assert (=> d!2394947 (= res!3176923 ((_ is ElementMatch!21737) (ite c!1473902 (reg!22066 r!13107) (ite c!1473901 (regOne!43987 r!13107) (regOne!43986 r!13107)))))))

(assert (=> d!2394947 (= (validRegex!12033 (ite c!1473902 (reg!22066 r!13107) (ite c!1473901 (regOne!43987 r!13107) (regOne!43986 r!13107)))) e!4733124)))

(declare-fun b!8034914 () Bool)

(assert (=> b!8034914 (= e!4733128 e!4733123)))

(declare-fun res!3176927 () Bool)

(assert (=> b!8034914 (= res!3176927 (not (nullable!9762 (reg!22066 (ite c!1473902 (reg!22066 r!13107) (ite c!1473901 (regOne!43987 r!13107) (regOne!43986 r!13107)))))))))

(assert (=> b!8034914 (=> (not res!3176927) (not e!4733123))))

(declare-fun b!8034915 () Bool)

(assert (=> b!8034915 (= e!4733127 call!745559)))

(assert (= (and d!2394947 (not res!3176923)) b!8034911))

(assert (= (and b!8034911 c!1474030) b!8034914))

(assert (= (and b!8034911 (not c!1474030)) b!8034913))

(assert (= (and b!8034914 res!3176927) b!8034910))

(assert (= (and b!8034913 c!1474029) b!8034909))

(assert (= (and b!8034913 (not c!1474029)) b!8034908))

(assert (= (and b!8034909 res!3176926) b!8034907))

(assert (= (and b!8034908 (not res!3176924)) b!8034912))

(assert (= (and b!8034912 res!3176925) b!8034915))

(assert (= (or b!8034907 b!8034915) bm!745553))

(assert (= (or b!8034909 b!8034912) bm!745555))

(assert (= (or b!8034910 bm!745555) bm!745554))

(declare-fun m!8393090 () Bool)

(assert (=> bm!745553 m!8393090))

(declare-fun m!8393092 () Bool)

(assert (=> bm!745554 m!8393092))

(declare-fun m!8393094 () Bool)

(assert (=> b!8034914 m!8393094))

(assert (=> bm!745451 d!2394947))

(declare-fun d!2394953 () Bool)

(assert (=> d!2394953 (= (nullable!9762 (regOne!43986 (regOne!43987 r!13107))) (nullableFct!3861 (regOne!43986 (regOne!43987 r!13107))))))

(declare-fun bs!1971495 () Bool)

(assert (= bs!1971495 d!2394953))

(declare-fun m!8393096 () Bool)

(assert (=> bs!1971495 m!8393096))

(assert (=> b!8034709 d!2394953))

(declare-fun b!8034935 () Bool)

(declare-fun e!4733144 () Bool)

(declare-fun tp!2405514 () Bool)

(declare-fun tp!2405516 () Bool)

(assert (=> b!8034935 (= e!4733144 (and tp!2405514 tp!2405516))))

(assert (=> b!8034724 (= tp!2405490 e!4733144)))

(declare-fun b!8034937 () Bool)

(declare-fun tp!2405518 () Bool)

(declare-fun tp!2405517 () Bool)

(assert (=> b!8034937 (= e!4733144 (and tp!2405518 tp!2405517))))

(declare-fun b!8034934 () Bool)

(assert (=> b!8034934 (= e!4733144 tp_is_empty!54469)))

(declare-fun b!8034936 () Bool)

(declare-fun tp!2405515 () Bool)

(assert (=> b!8034936 (= e!4733144 tp!2405515)))

(assert (= (and b!8034724 ((_ is ElementMatch!21737) (reg!22066 (reg!22066 r!13107)))) b!8034934))

(assert (= (and b!8034724 ((_ is Concat!30740) (reg!22066 (reg!22066 r!13107)))) b!8034935))

(assert (= (and b!8034724 ((_ is Star!21737) (reg!22066 (reg!22066 r!13107)))) b!8034936))

(assert (= (and b!8034724 ((_ is Union!21737) (reg!22066 (reg!22066 r!13107)))) b!8034937))

(declare-fun b!8034947 () Bool)

(declare-fun e!4733147 () Bool)

(declare-fun tp!2405529 () Bool)

(declare-fun tp!2405531 () Bool)

(assert (=> b!8034947 (= e!4733147 (and tp!2405529 tp!2405531))))

(assert (=> b!8034729 (= tp!2405498 e!4733147)))

(declare-fun b!8034949 () Bool)

(declare-fun tp!2405533 () Bool)

(declare-fun tp!2405532 () Bool)

(assert (=> b!8034949 (= e!4733147 (and tp!2405533 tp!2405532))))

(declare-fun b!8034946 () Bool)

(assert (=> b!8034946 (= e!4733147 tp_is_empty!54469)))

(declare-fun b!8034948 () Bool)

(declare-fun tp!2405530 () Bool)

(assert (=> b!8034948 (= e!4733147 tp!2405530)))

(assert (= (and b!8034729 ((_ is ElementMatch!21737) (regOne!43987 (regOne!43986 r!13107)))) b!8034946))

(assert (= (and b!8034729 ((_ is Concat!30740) (regOne!43987 (regOne!43986 r!13107)))) b!8034947))

(assert (= (and b!8034729 ((_ is Star!21737) (regOne!43987 (regOne!43986 r!13107)))) b!8034948))

(assert (= (and b!8034729 ((_ is Union!21737) (regOne!43987 (regOne!43986 r!13107)))) b!8034949))

(declare-fun b!8034955 () Bool)

(declare-fun e!4733149 () Bool)

(declare-fun tp!2405539 () Bool)

(declare-fun tp!2405543 () Bool)

(assert (=> b!8034955 (= e!4733149 (and tp!2405539 tp!2405543))))

(assert (=> b!8034729 (= tp!2405497 e!4733149)))

(declare-fun b!8034959 () Bool)

(declare-fun tp!2405546 () Bool)

(declare-fun tp!2405544 () Bool)

(assert (=> b!8034959 (= e!4733149 (and tp!2405546 tp!2405544))))

(declare-fun b!8034954 () Bool)

(assert (=> b!8034954 (= e!4733149 tp_is_empty!54469)))

(declare-fun b!8034957 () Bool)

(declare-fun tp!2405541 () Bool)

(assert (=> b!8034957 (= e!4733149 tp!2405541)))

(assert (= (and b!8034729 ((_ is ElementMatch!21737) (regTwo!43987 (regOne!43986 r!13107)))) b!8034954))

(assert (= (and b!8034729 ((_ is Concat!30740) (regTwo!43987 (regOne!43986 r!13107)))) b!8034955))

(assert (= (and b!8034729 ((_ is Star!21737) (regTwo!43987 (regOne!43986 r!13107)))) b!8034957))

(assert (= (and b!8034729 ((_ is Union!21737) (regTwo!43987 (regOne!43986 r!13107)))) b!8034959))

(declare-fun b!8034967 () Bool)

(declare-fun e!4733152 () Bool)

(declare-fun tp!2405554 () Bool)

(declare-fun tp!2405556 () Bool)

(assert (=> b!8034967 (= e!4733152 (and tp!2405554 tp!2405556))))

(assert (=> b!8034728 (= tp!2405495 e!4733152)))

(declare-fun b!8034969 () Bool)

(declare-fun tp!2405558 () Bool)

(declare-fun tp!2405557 () Bool)

(assert (=> b!8034969 (= e!4733152 (and tp!2405558 tp!2405557))))

(declare-fun b!8034966 () Bool)

(assert (=> b!8034966 (= e!4733152 tp_is_empty!54469)))

(declare-fun b!8034968 () Bool)

(declare-fun tp!2405555 () Bool)

(assert (=> b!8034968 (= e!4733152 tp!2405555)))

(assert (= (and b!8034728 ((_ is ElementMatch!21737) (reg!22066 (regOne!43986 r!13107)))) b!8034966))

(assert (= (and b!8034728 ((_ is Concat!30740) (reg!22066 (regOne!43986 r!13107)))) b!8034967))

(assert (= (and b!8034728 ((_ is Star!21737) (reg!22066 (regOne!43986 r!13107)))) b!8034968))

(assert (= (and b!8034728 ((_ is Union!21737) (reg!22066 (regOne!43986 r!13107)))) b!8034969))

(declare-fun b!8034979 () Bool)

(declare-fun e!4733155 () Bool)

(declare-fun tp!2405569 () Bool)

(declare-fun tp!2405571 () Bool)

(assert (=> b!8034979 (= e!4733155 (and tp!2405569 tp!2405571))))

(assert (=> b!8034733 (= tp!2405503 e!4733155)))

(declare-fun b!8034981 () Bool)

(declare-fun tp!2405573 () Bool)

(declare-fun tp!2405572 () Bool)

(assert (=> b!8034981 (= e!4733155 (and tp!2405573 tp!2405572))))

(declare-fun b!8034978 () Bool)

(assert (=> b!8034978 (= e!4733155 tp_is_empty!54469)))

(declare-fun b!8034980 () Bool)

(declare-fun tp!2405570 () Bool)

(assert (=> b!8034980 (= e!4733155 tp!2405570)))

(assert (= (and b!8034733 ((_ is ElementMatch!21737) (regOne!43987 (regTwo!43986 r!13107)))) b!8034978))

(assert (= (and b!8034733 ((_ is Concat!30740) (regOne!43987 (regTwo!43986 r!13107)))) b!8034979))

(assert (= (and b!8034733 ((_ is Star!21737) (regOne!43987 (regTwo!43986 r!13107)))) b!8034980))

(assert (= (and b!8034733 ((_ is Union!21737) (regOne!43987 (regTwo!43986 r!13107)))) b!8034981))

(declare-fun b!8034987 () Bool)

(declare-fun e!4733157 () Bool)

(declare-fun tp!2405579 () Bool)

(declare-fun tp!2405581 () Bool)

(assert (=> b!8034987 (= e!4733157 (and tp!2405579 tp!2405581))))

(assert (=> b!8034733 (= tp!2405502 e!4733157)))

(declare-fun b!8034989 () Bool)

(declare-fun tp!2405584 () Bool)

(declare-fun tp!2405582 () Bool)

(assert (=> b!8034989 (= e!4733157 (and tp!2405584 tp!2405582))))

(declare-fun b!8034986 () Bool)

(assert (=> b!8034986 (= e!4733157 tp_is_empty!54469)))

(declare-fun b!8034988 () Bool)

(declare-fun tp!2405580 () Bool)

(assert (=> b!8034988 (= e!4733157 tp!2405580)))

(assert (= (and b!8034733 ((_ is ElementMatch!21737) (regTwo!43987 (regTwo!43986 r!13107)))) b!8034986))

(assert (= (and b!8034733 ((_ is Concat!30740) (regTwo!43987 (regTwo!43986 r!13107)))) b!8034987))

(assert (= (and b!8034733 ((_ is Star!21737) (regTwo!43987 (regTwo!43986 r!13107)))) b!8034988))

(assert (= (and b!8034733 ((_ is Union!21737) (regTwo!43987 (regTwo!43986 r!13107)))) b!8034989))

(declare-fun b!8034999 () Bool)

(declare-fun e!4733160 () Bool)

(declare-fun tp!2405594 () Bool)

(declare-fun tp!2405596 () Bool)

(assert (=> b!8034999 (= e!4733160 (and tp!2405594 tp!2405596))))

(assert (=> b!8034725 (= tp!2405493 e!4733160)))

(declare-fun b!8035001 () Bool)

(declare-fun tp!2405598 () Bool)

(declare-fun tp!2405597 () Bool)

(assert (=> b!8035001 (= e!4733160 (and tp!2405598 tp!2405597))))

(declare-fun b!8034998 () Bool)

(assert (=> b!8034998 (= e!4733160 tp_is_empty!54469)))

(declare-fun b!8035000 () Bool)

(declare-fun tp!2405595 () Bool)

(assert (=> b!8035000 (= e!4733160 tp!2405595)))

(assert (= (and b!8034725 ((_ is ElementMatch!21737) (regOne!43987 (reg!22066 r!13107)))) b!8034998))

(assert (= (and b!8034725 ((_ is Concat!30740) (regOne!43987 (reg!22066 r!13107)))) b!8034999))

(assert (= (and b!8034725 ((_ is Star!21737) (regOne!43987 (reg!22066 r!13107)))) b!8035000))

(assert (= (and b!8034725 ((_ is Union!21737) (regOne!43987 (reg!22066 r!13107)))) b!8035001))

(declare-fun b!8035011 () Bool)

(declare-fun e!4733163 () Bool)

(declare-fun tp!2405609 () Bool)

(declare-fun tp!2405611 () Bool)

(assert (=> b!8035011 (= e!4733163 (and tp!2405609 tp!2405611))))

(assert (=> b!8034725 (= tp!2405492 e!4733163)))

(declare-fun b!8035013 () Bool)

(declare-fun tp!2405613 () Bool)

(declare-fun tp!2405612 () Bool)

(assert (=> b!8035013 (= e!4733163 (and tp!2405613 tp!2405612))))

(declare-fun b!8035010 () Bool)

(assert (=> b!8035010 (= e!4733163 tp_is_empty!54469)))

(declare-fun b!8035012 () Bool)

(declare-fun tp!2405610 () Bool)

(assert (=> b!8035012 (= e!4733163 tp!2405610)))

(assert (= (and b!8034725 ((_ is ElementMatch!21737) (regTwo!43987 (reg!22066 r!13107)))) b!8035010))

(assert (= (and b!8034725 ((_ is Concat!30740) (regTwo!43987 (reg!22066 r!13107)))) b!8035011))

(assert (= (and b!8034725 ((_ is Star!21737) (regTwo!43987 (reg!22066 r!13107)))) b!8035012))

(assert (= (and b!8034725 ((_ is Union!21737) (regTwo!43987 (reg!22066 r!13107)))) b!8035013))

(declare-fun b!8035019 () Bool)

(declare-fun e!4733165 () Bool)

(declare-fun tp!2405619 () Bool)

(declare-fun tp!2405621 () Bool)

(assert (=> b!8035019 (= e!4733165 (and tp!2405619 tp!2405621))))

(assert (=> b!8034740 (= tp!2405510 e!4733165)))

(declare-fun b!8035022 () Bool)

(declare-fun tp!2405625 () Bool)

(declare-fun tp!2405623 () Bool)

(assert (=> b!8035022 (= e!4733165 (and tp!2405625 tp!2405623))))

(declare-fun b!8035018 () Bool)

(assert (=> b!8035018 (= e!4733165 tp_is_empty!54469)))

(declare-fun b!8035020 () Bool)

(declare-fun tp!2405620 () Bool)

(assert (=> b!8035020 (= e!4733165 tp!2405620)))

(assert (= (and b!8034740 ((_ is ElementMatch!21737) (reg!22066 (regTwo!43987 r!13107)))) b!8035018))

(assert (= (and b!8034740 ((_ is Concat!30740) (reg!22066 (regTwo!43987 r!13107)))) b!8035019))

(assert (= (and b!8034740 ((_ is Star!21737) (reg!22066 (regTwo!43987 r!13107)))) b!8035020))

(assert (= (and b!8034740 ((_ is Union!21737) (reg!22066 (regTwo!43987 r!13107)))) b!8035022))

(declare-fun b!8035031 () Bool)

(declare-fun e!4733168 () Bool)

(declare-fun tp!2405634 () Bool)

(declare-fun tp!2405636 () Bool)

(assert (=> b!8035031 (= e!4733168 (and tp!2405634 tp!2405636))))

(assert (=> b!8034731 (= tp!2405499 e!4733168)))

(declare-fun b!8035033 () Bool)

(declare-fun tp!2405638 () Bool)

(declare-fun tp!2405637 () Bool)

(assert (=> b!8035033 (= e!4733168 (and tp!2405638 tp!2405637))))

(declare-fun b!8035030 () Bool)

(assert (=> b!8035030 (= e!4733168 tp_is_empty!54469)))

(declare-fun b!8035032 () Bool)

(declare-fun tp!2405635 () Bool)

(assert (=> b!8035032 (= e!4733168 tp!2405635)))

(assert (= (and b!8034731 ((_ is ElementMatch!21737) (regOne!43986 (regTwo!43986 r!13107)))) b!8035030))

(assert (= (and b!8034731 ((_ is Concat!30740) (regOne!43986 (regTwo!43986 r!13107)))) b!8035031))

(assert (= (and b!8034731 ((_ is Star!21737) (regOne!43986 (regTwo!43986 r!13107)))) b!8035032))

(assert (= (and b!8034731 ((_ is Union!21737) (regOne!43986 (regTwo!43986 r!13107)))) b!8035033))

(declare-fun b!8035043 () Bool)

(declare-fun e!4733171 () Bool)

(declare-fun tp!2405649 () Bool)

(declare-fun tp!2405651 () Bool)

(assert (=> b!8035043 (= e!4733171 (and tp!2405649 tp!2405651))))

(assert (=> b!8034731 (= tp!2405501 e!4733171)))

(declare-fun b!8035045 () Bool)

(declare-fun tp!2405653 () Bool)

(declare-fun tp!2405652 () Bool)

(assert (=> b!8035045 (= e!4733171 (and tp!2405653 tp!2405652))))

(declare-fun b!8035042 () Bool)

(assert (=> b!8035042 (= e!4733171 tp_is_empty!54469)))

(declare-fun b!8035044 () Bool)

(declare-fun tp!2405650 () Bool)

(assert (=> b!8035044 (= e!4733171 tp!2405650)))

(assert (= (and b!8034731 ((_ is ElementMatch!21737) (regTwo!43986 (regTwo!43986 r!13107)))) b!8035042))

(assert (= (and b!8034731 ((_ is Concat!30740) (regTwo!43986 (regTwo!43986 r!13107)))) b!8035043))

(assert (= (and b!8034731 ((_ is Star!21737) (regTwo!43986 (regTwo!43986 r!13107)))) b!8035044))

(assert (= (and b!8034731 ((_ is Union!21737) (regTwo!43986 (regTwo!43986 r!13107)))) b!8035045))

(declare-fun b!8035055 () Bool)

(declare-fun e!4733174 () Bool)

(declare-fun tp!2405664 () Bool)

(declare-fun tp!2405666 () Bool)

(assert (=> b!8035055 (= e!4733174 (and tp!2405664 tp!2405666))))

(assert (=> b!8034735 (= tp!2405504 e!4733174)))

(declare-fun b!8035057 () Bool)

(declare-fun tp!2405668 () Bool)

(declare-fun tp!2405667 () Bool)

(assert (=> b!8035057 (= e!4733174 (and tp!2405668 tp!2405667))))

(declare-fun b!8035054 () Bool)

(assert (=> b!8035054 (= e!4733174 tp_is_empty!54469)))

(declare-fun b!8035056 () Bool)

(declare-fun tp!2405665 () Bool)

(assert (=> b!8035056 (= e!4733174 tp!2405665)))

(assert (= (and b!8034735 ((_ is ElementMatch!21737) (regOne!43986 (regOne!43987 r!13107)))) b!8035054))

(assert (= (and b!8034735 ((_ is Concat!30740) (regOne!43986 (regOne!43987 r!13107)))) b!8035055))

(assert (= (and b!8034735 ((_ is Star!21737) (regOne!43986 (regOne!43987 r!13107)))) b!8035056))

(assert (= (and b!8034735 ((_ is Union!21737) (regOne!43986 (regOne!43987 r!13107)))) b!8035057))

(declare-fun b!8035063 () Bool)

(declare-fun e!4733176 () Bool)

(declare-fun tp!2405674 () Bool)

(declare-fun tp!2405676 () Bool)

(assert (=> b!8035063 (= e!4733176 (and tp!2405674 tp!2405676))))

(assert (=> b!8034735 (= tp!2405506 e!4733176)))

(declare-fun b!8035065 () Bool)

(declare-fun tp!2405678 () Bool)

(declare-fun tp!2405677 () Bool)

(assert (=> b!8035065 (= e!4733176 (and tp!2405678 tp!2405677))))

(declare-fun b!8035062 () Bool)

(assert (=> b!8035062 (= e!4733176 tp_is_empty!54469)))

(declare-fun b!8035064 () Bool)

(declare-fun tp!2405675 () Bool)

(assert (=> b!8035064 (= e!4733176 tp!2405675)))

(assert (= (and b!8034735 ((_ is ElementMatch!21737) (regTwo!43986 (regOne!43987 r!13107)))) b!8035062))

(assert (= (and b!8034735 ((_ is Concat!30740) (regTwo!43986 (regOne!43987 r!13107)))) b!8035063))

(assert (= (and b!8034735 ((_ is Star!21737) (regTwo!43986 (regOne!43987 r!13107)))) b!8035064))

(assert (= (and b!8034735 ((_ is Union!21737) (regTwo!43986 (regOne!43987 r!13107)))) b!8035065))

(declare-fun b!8035075 () Bool)

(declare-fun e!4733179 () Bool)

(declare-fun tp!2405689 () Bool)

(declare-fun tp!2405691 () Bool)

(assert (=> b!8035075 (= e!4733179 (and tp!2405689 tp!2405691))))

(assert (=> b!8034732 (= tp!2405500 e!4733179)))

(declare-fun b!8035077 () Bool)

(declare-fun tp!2405693 () Bool)

(declare-fun tp!2405692 () Bool)

(assert (=> b!8035077 (= e!4733179 (and tp!2405693 tp!2405692))))

(declare-fun b!8035074 () Bool)

(assert (=> b!8035074 (= e!4733179 tp_is_empty!54469)))

(declare-fun b!8035076 () Bool)

(declare-fun tp!2405690 () Bool)

(assert (=> b!8035076 (= e!4733179 tp!2405690)))

(assert (= (and b!8034732 ((_ is ElementMatch!21737) (reg!22066 (regTwo!43986 r!13107)))) b!8035074))

(assert (= (and b!8034732 ((_ is Concat!30740) (reg!22066 (regTwo!43986 r!13107)))) b!8035075))

(assert (= (and b!8034732 ((_ is Star!21737) (reg!22066 (regTwo!43986 r!13107)))) b!8035076))

(assert (= (and b!8034732 ((_ is Union!21737) (reg!22066 (regTwo!43986 r!13107)))) b!8035077))

(declare-fun b!8035087 () Bool)

(declare-fun e!4733182 () Bool)

(declare-fun tp!2405704 () Bool)

(declare-fun tp!2405706 () Bool)

(assert (=> b!8035087 (= e!4733182 (and tp!2405704 tp!2405706))))

(assert (=> b!8034723 (= tp!2405489 e!4733182)))

(declare-fun b!8035089 () Bool)

(declare-fun tp!2405708 () Bool)

(declare-fun tp!2405707 () Bool)

(assert (=> b!8035089 (= e!4733182 (and tp!2405708 tp!2405707))))

(declare-fun b!8035086 () Bool)

(assert (=> b!8035086 (= e!4733182 tp_is_empty!54469)))

(declare-fun b!8035088 () Bool)

(declare-fun tp!2405705 () Bool)

(assert (=> b!8035088 (= e!4733182 tp!2405705)))

(assert (= (and b!8034723 ((_ is ElementMatch!21737) (regOne!43986 (reg!22066 r!13107)))) b!8035086))

(assert (= (and b!8034723 ((_ is Concat!30740) (regOne!43986 (reg!22066 r!13107)))) b!8035087))

(assert (= (and b!8034723 ((_ is Star!21737) (regOne!43986 (reg!22066 r!13107)))) b!8035088))

(assert (= (and b!8034723 ((_ is Union!21737) (regOne!43986 (reg!22066 r!13107)))) b!8035089))

(declare-fun b!8035095 () Bool)

(declare-fun e!4733184 () Bool)

(declare-fun tp!2405714 () Bool)

(declare-fun tp!2405716 () Bool)

(assert (=> b!8035095 (= e!4733184 (and tp!2405714 tp!2405716))))

(assert (=> b!8034723 (= tp!2405491 e!4733184)))

(declare-fun b!8035097 () Bool)

(declare-fun tp!2405718 () Bool)

(declare-fun tp!2405717 () Bool)

(assert (=> b!8035097 (= e!4733184 (and tp!2405718 tp!2405717))))

(declare-fun b!8035094 () Bool)

(assert (=> b!8035094 (= e!4733184 tp_is_empty!54469)))

(declare-fun b!8035096 () Bool)

(declare-fun tp!2405715 () Bool)

(assert (=> b!8035096 (= e!4733184 tp!2405715)))

(assert (= (and b!8034723 ((_ is ElementMatch!21737) (regTwo!43986 (reg!22066 r!13107)))) b!8035094))

(assert (= (and b!8034723 ((_ is Concat!30740) (regTwo!43986 (reg!22066 r!13107)))) b!8035095))

(assert (= (and b!8034723 ((_ is Star!21737) (regTwo!43986 (reg!22066 r!13107)))) b!8035096))

(assert (= (and b!8034723 ((_ is Union!21737) (regTwo!43986 (reg!22066 r!13107)))) b!8035097))

(declare-fun b!8035099 () Bool)

(declare-fun e!4733185 () Bool)

(declare-fun tp!2405719 () Bool)

(declare-fun tp!2405721 () Bool)

(assert (=> b!8035099 (= e!4733185 (and tp!2405719 tp!2405721))))

(assert (=> b!8034737 (= tp!2405508 e!4733185)))

(declare-fun b!8035101 () Bool)

(declare-fun tp!2405723 () Bool)

(declare-fun tp!2405722 () Bool)

(assert (=> b!8035101 (= e!4733185 (and tp!2405723 tp!2405722))))

(declare-fun b!8035098 () Bool)

(assert (=> b!8035098 (= e!4733185 tp_is_empty!54469)))

(declare-fun b!8035100 () Bool)

(declare-fun tp!2405720 () Bool)

(assert (=> b!8035100 (= e!4733185 tp!2405720)))

(assert (= (and b!8034737 ((_ is ElementMatch!21737) (regOne!43987 (regOne!43987 r!13107)))) b!8035098))

(assert (= (and b!8034737 ((_ is Concat!30740) (regOne!43987 (regOne!43987 r!13107)))) b!8035099))

(assert (= (and b!8034737 ((_ is Star!21737) (regOne!43987 (regOne!43987 r!13107)))) b!8035100))

(assert (= (and b!8034737 ((_ is Union!21737) (regOne!43987 (regOne!43987 r!13107)))) b!8035101))

(declare-fun b!8035103 () Bool)

(declare-fun e!4733186 () Bool)

(declare-fun tp!2405724 () Bool)

(declare-fun tp!2405726 () Bool)

(assert (=> b!8035103 (= e!4733186 (and tp!2405724 tp!2405726))))

(assert (=> b!8034737 (= tp!2405507 e!4733186)))

(declare-fun b!8035105 () Bool)

(declare-fun tp!2405728 () Bool)

(declare-fun tp!2405727 () Bool)

(assert (=> b!8035105 (= e!4733186 (and tp!2405728 tp!2405727))))

(declare-fun b!8035102 () Bool)

(assert (=> b!8035102 (= e!4733186 tp_is_empty!54469)))

(declare-fun b!8035104 () Bool)

(declare-fun tp!2405725 () Bool)

(assert (=> b!8035104 (= e!4733186 tp!2405725)))

(assert (= (and b!8034737 ((_ is ElementMatch!21737) (regTwo!43987 (regOne!43987 r!13107)))) b!8035102))

(assert (= (and b!8034737 ((_ is Concat!30740) (regTwo!43987 (regOne!43987 r!13107)))) b!8035103))

(assert (= (and b!8034737 ((_ is Star!21737) (regTwo!43987 (regOne!43987 r!13107)))) b!8035104))

(assert (= (and b!8034737 ((_ is Union!21737) (regTwo!43987 (regOne!43987 r!13107)))) b!8035105))

(declare-fun b!8035107 () Bool)

(declare-fun e!4733187 () Bool)

(declare-fun tp!2405729 () Bool)

(declare-fun tp!2405731 () Bool)

(assert (=> b!8035107 (= e!4733187 (and tp!2405729 tp!2405731))))

(assert (=> b!8034736 (= tp!2405505 e!4733187)))

(declare-fun b!8035109 () Bool)

(declare-fun tp!2405733 () Bool)

(declare-fun tp!2405732 () Bool)

(assert (=> b!8035109 (= e!4733187 (and tp!2405733 tp!2405732))))

(declare-fun b!8035106 () Bool)

(assert (=> b!8035106 (= e!4733187 tp_is_empty!54469)))

(declare-fun b!8035108 () Bool)

(declare-fun tp!2405730 () Bool)

(assert (=> b!8035108 (= e!4733187 tp!2405730)))

(assert (= (and b!8034736 ((_ is ElementMatch!21737) (reg!22066 (regOne!43987 r!13107)))) b!8035106))

(assert (= (and b!8034736 ((_ is Concat!30740) (reg!22066 (regOne!43987 r!13107)))) b!8035107))

(assert (= (and b!8034736 ((_ is Star!21737) (reg!22066 (regOne!43987 r!13107)))) b!8035108))

(assert (= (and b!8034736 ((_ is Union!21737) (reg!22066 (regOne!43987 r!13107)))) b!8035109))

(declare-fun b!8035111 () Bool)

(declare-fun e!4733188 () Bool)

(declare-fun tp!2405734 () Bool)

(declare-fun tp!2405736 () Bool)

(assert (=> b!8035111 (= e!4733188 (and tp!2405734 tp!2405736))))

(assert (=> b!8034741 (= tp!2405513 e!4733188)))

(declare-fun b!8035113 () Bool)

(declare-fun tp!2405738 () Bool)

(declare-fun tp!2405737 () Bool)

(assert (=> b!8035113 (= e!4733188 (and tp!2405738 tp!2405737))))

(declare-fun b!8035110 () Bool)

(assert (=> b!8035110 (= e!4733188 tp_is_empty!54469)))

(declare-fun b!8035112 () Bool)

(declare-fun tp!2405735 () Bool)

(assert (=> b!8035112 (= e!4733188 tp!2405735)))

(assert (= (and b!8034741 ((_ is ElementMatch!21737) (regOne!43987 (regTwo!43987 r!13107)))) b!8035110))

(assert (= (and b!8034741 ((_ is Concat!30740) (regOne!43987 (regTwo!43987 r!13107)))) b!8035111))

(assert (= (and b!8034741 ((_ is Star!21737) (regOne!43987 (regTwo!43987 r!13107)))) b!8035112))

(assert (= (and b!8034741 ((_ is Union!21737) (regOne!43987 (regTwo!43987 r!13107)))) b!8035113))

(declare-fun b!8035115 () Bool)

(declare-fun e!4733189 () Bool)

(declare-fun tp!2405739 () Bool)

(declare-fun tp!2405741 () Bool)

(assert (=> b!8035115 (= e!4733189 (and tp!2405739 tp!2405741))))

(assert (=> b!8034741 (= tp!2405512 e!4733189)))

(declare-fun b!8035117 () Bool)

(declare-fun tp!2405743 () Bool)

(declare-fun tp!2405742 () Bool)

(assert (=> b!8035117 (= e!4733189 (and tp!2405743 tp!2405742))))

(declare-fun b!8035114 () Bool)

(assert (=> b!8035114 (= e!4733189 tp_is_empty!54469)))

(declare-fun b!8035116 () Bool)

(declare-fun tp!2405740 () Bool)

(assert (=> b!8035116 (= e!4733189 tp!2405740)))

(assert (= (and b!8034741 ((_ is ElementMatch!21737) (regTwo!43987 (regTwo!43987 r!13107)))) b!8035114))

(assert (= (and b!8034741 ((_ is Concat!30740) (regTwo!43987 (regTwo!43987 r!13107)))) b!8035115))

(assert (= (and b!8034741 ((_ is Star!21737) (regTwo!43987 (regTwo!43987 r!13107)))) b!8035116))

(assert (= (and b!8034741 ((_ is Union!21737) (regTwo!43987 (regTwo!43987 r!13107)))) b!8035117))

(declare-fun b!8035119 () Bool)

(declare-fun e!4733190 () Bool)

(declare-fun tp!2405744 () Bool)

(declare-fun tp!2405746 () Bool)

(assert (=> b!8035119 (= e!4733190 (and tp!2405744 tp!2405746))))

(assert (=> b!8034727 (= tp!2405494 e!4733190)))

(declare-fun b!8035121 () Bool)

(declare-fun tp!2405748 () Bool)

(declare-fun tp!2405747 () Bool)

(assert (=> b!8035121 (= e!4733190 (and tp!2405748 tp!2405747))))

(declare-fun b!8035118 () Bool)

(assert (=> b!8035118 (= e!4733190 tp_is_empty!54469)))

(declare-fun b!8035120 () Bool)

(declare-fun tp!2405745 () Bool)

(assert (=> b!8035120 (= e!4733190 tp!2405745)))

(assert (= (and b!8034727 ((_ is ElementMatch!21737) (regOne!43986 (regOne!43986 r!13107)))) b!8035118))

(assert (= (and b!8034727 ((_ is Concat!30740) (regOne!43986 (regOne!43986 r!13107)))) b!8035119))

(assert (= (and b!8034727 ((_ is Star!21737) (regOne!43986 (regOne!43986 r!13107)))) b!8035120))

(assert (= (and b!8034727 ((_ is Union!21737) (regOne!43986 (regOne!43986 r!13107)))) b!8035121))

(declare-fun b!8035123 () Bool)

(declare-fun e!4733191 () Bool)

(declare-fun tp!2405749 () Bool)

(declare-fun tp!2405751 () Bool)

(assert (=> b!8035123 (= e!4733191 (and tp!2405749 tp!2405751))))

(assert (=> b!8034727 (= tp!2405496 e!4733191)))

(declare-fun b!8035125 () Bool)

(declare-fun tp!2405753 () Bool)

(declare-fun tp!2405752 () Bool)

(assert (=> b!8035125 (= e!4733191 (and tp!2405753 tp!2405752))))

(declare-fun b!8035122 () Bool)

(assert (=> b!8035122 (= e!4733191 tp_is_empty!54469)))

(declare-fun b!8035124 () Bool)

(declare-fun tp!2405750 () Bool)

(assert (=> b!8035124 (= e!4733191 tp!2405750)))

(assert (= (and b!8034727 ((_ is ElementMatch!21737) (regTwo!43986 (regOne!43986 r!13107)))) b!8035122))

(assert (= (and b!8034727 ((_ is Concat!30740) (regTwo!43986 (regOne!43986 r!13107)))) b!8035123))

(assert (= (and b!8034727 ((_ is Star!21737) (regTwo!43986 (regOne!43986 r!13107)))) b!8035124))

(assert (= (and b!8034727 ((_ is Union!21737) (regTwo!43986 (regOne!43986 r!13107)))) b!8035125))

(declare-fun b!8035127 () Bool)

(declare-fun e!4733192 () Bool)

(declare-fun tp!2405754 () Bool)

(declare-fun tp!2405756 () Bool)

(assert (=> b!8035127 (= e!4733192 (and tp!2405754 tp!2405756))))

(assert (=> b!8034739 (= tp!2405509 e!4733192)))

(declare-fun b!8035129 () Bool)

(declare-fun tp!2405758 () Bool)

(declare-fun tp!2405757 () Bool)

(assert (=> b!8035129 (= e!4733192 (and tp!2405758 tp!2405757))))

(declare-fun b!8035126 () Bool)

(assert (=> b!8035126 (= e!4733192 tp_is_empty!54469)))

(declare-fun b!8035128 () Bool)

(declare-fun tp!2405755 () Bool)

(assert (=> b!8035128 (= e!4733192 tp!2405755)))

(assert (= (and b!8034739 ((_ is ElementMatch!21737) (regOne!43986 (regTwo!43987 r!13107)))) b!8035126))

(assert (= (and b!8034739 ((_ is Concat!30740) (regOne!43986 (regTwo!43987 r!13107)))) b!8035127))

(assert (= (and b!8034739 ((_ is Star!21737) (regOne!43986 (regTwo!43987 r!13107)))) b!8035128))

(assert (= (and b!8034739 ((_ is Union!21737) (regOne!43986 (regTwo!43987 r!13107)))) b!8035129))

(declare-fun b!8035131 () Bool)

(declare-fun e!4733193 () Bool)

(declare-fun tp!2405759 () Bool)

(declare-fun tp!2405761 () Bool)

(assert (=> b!8035131 (= e!4733193 (and tp!2405759 tp!2405761))))

(assert (=> b!8034739 (= tp!2405511 e!4733193)))

(declare-fun b!8035133 () Bool)

(declare-fun tp!2405763 () Bool)

(declare-fun tp!2405762 () Bool)

(assert (=> b!8035133 (= e!4733193 (and tp!2405763 tp!2405762))))

(declare-fun b!8035130 () Bool)

(assert (=> b!8035130 (= e!4733193 tp_is_empty!54469)))

(declare-fun b!8035132 () Bool)

(declare-fun tp!2405760 () Bool)

(assert (=> b!8035132 (= e!4733193 tp!2405760)))

(assert (= (and b!8034739 ((_ is ElementMatch!21737) (regTwo!43986 (regTwo!43987 r!13107)))) b!8035130))

(assert (= (and b!8034739 ((_ is Concat!30740) (regTwo!43986 (regTwo!43987 r!13107)))) b!8035131))

(assert (= (and b!8034739 ((_ is Star!21737) (regTwo!43986 (regTwo!43987 r!13107)))) b!8035132))

(assert (= (and b!8034739 ((_ is Union!21737) (regTwo!43986 (regTwo!43987 r!13107)))) b!8035133))

(check-sat (not b!8035109) (not b!8035112) (not bm!745536) (not d!2394909) (not b!8034988) (not bm!745509) (not bm!745498) (not b!8034989) (not b!8035101) (not b!8035129) (not b!8035104) (not b!8034937) (not b!8035113) (not b!8035107) (not b!8034914) (not b!8035063) (not b!8035076) (not b!8035033) (not bm!745521) (not b!8034959) (not d!2394941) (not b!8035013) (not b!8035099) (not bm!745507) (not b!8034981) (not b!8034969) (not bm!745528) (not bm!745534) (not bm!745505) (not bm!745545) (not d!2394953) (not b!8034935) (not b!8035127) (not b!8034957) (not bm!745553) (not b!8035103) (not b!8035077) (not b!8035108) (not b!8035097) (not b!8035045) (not b!8035057) (not b!8034798) (not bm!745554) (not b!8035032) (not b!8034884) (not bm!745500) (not bm!745508) (not b!8035056) (not b!8034987) (not b!8035065) (not bm!745516) (not b!8034955) (not b!8035131) (not b!8035132) (not b!8035089) (not b!8034967) (not b!8034936) (not b!8035115) (not b!8035133) (not b!8035022) (not b!8034759) (not b!8035031) (not b!8035055) (not bm!745544) (not b!8035044) (not b!8035064) (not b!8034980) (not b!8034979) (not b!8035011) (not d!2394913) (not b!8035001) (not b!8034947) (not b!8035121) (not bm!745503) (not b!8035088) (not b!8034948) (not bm!745530) (not b!8035020) (not b!8035075) (not bm!745522) (not bm!745502) (not b!8035125) tp_is_empty!54469 (not b!8035000) (not b!8034968) (not b!8035111) (not b!8034816) (not b!8035124) (not b!8035117) (not b!8035087) (not b!8035012) (not b!8035120) (not b!8035123) (not b!8034949) (not b!8035100) (not b!8034779) (not b!8035043) (not b!8035095) (not b!8034999) (not bm!745515) (not b!8035128) (not b!8035019) (not b!8035096) (not b!8035116) (not b!8035119) (not b!8035105))
(check-sat)
