; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287660 () Bool)

(assert start!287660)

(declare-fun b!2974908 () Bool)

(assert (=> b!2974908 true))

(assert (=> b!2974908 true))

(assert (=> b!2974908 true))

(declare-fun lambda!110736 () Int)

(declare-fun lambda!110735 () Int)

(assert (=> b!2974908 (not (= lambda!110736 lambda!110735))))

(assert (=> b!2974908 true))

(assert (=> b!2974908 true))

(assert (=> b!2974908 true))

(declare-fun b!2974899 () Bool)

(declare-fun e!1871482 () Bool)

(declare-fun tp!948112 () Bool)

(declare-fun tp!948115 () Bool)

(assert (=> b!2974899 (= e!1871482 (and tp!948112 tp!948115))))

(declare-fun b!2974900 () Bool)

(declare-fun tp_is_empty!16129 () Bool)

(assert (=> b!2974900 (= e!1871482 tp_is_empty!16129)))

(declare-fun b!2974901 () Bool)

(declare-fun tp!948113 () Bool)

(declare-fun tp!948114 () Bool)

(assert (=> b!2974901 (= e!1871482 (and tp!948113 tp!948114))))

(declare-fun res!1226659 () Bool)

(declare-fun e!1871483 () Bool)

(assert (=> start!287660 (=> (not res!1226659) (not e!1871483))))

(declare-datatypes ((C!18752 0))(
  ( (C!18753 (val!11412 Int)) )
))
(declare-datatypes ((Regex!9283 0))(
  ( (ElementMatch!9283 (c!488339 C!18752)) (Concat!14604 (regOne!19078 Regex!9283) (regTwo!19078 Regex!9283)) (EmptyExpr!9283) (Star!9283 (reg!9612 Regex!9283)) (EmptyLang!9283) (Union!9283 (regOne!19079 Regex!9283) (regTwo!19079 Regex!9283)) )
))
(declare-fun r!17423 () Regex!9283)

(declare-fun validRegex!4016 (Regex!9283) Bool)

(assert (=> start!287660 (= res!1226659 (validRegex!4016 r!17423))))

(assert (=> start!287660 e!1871483))

(assert (=> start!287660 e!1871482))

(declare-fun e!1871486 () Bool)

(assert (=> start!287660 e!1871486))

(declare-fun b!2974902 () Bool)

(declare-fun e!1871481 () Bool)

(declare-fun e!1871485 () Bool)

(assert (=> b!2974902 (= e!1871481 e!1871485)))

(declare-fun res!1226661 () Bool)

(assert (=> b!2974902 (=> res!1226661 e!1871485)))

(declare-datatypes ((List!35148 0))(
  ( (Nil!35024) (Cons!35024 (h!40444 C!18752) (t!234213 List!35148)) )
))
(declare-fun s!11993 () List!35148)

(declare-fun isEmpty!19265 (List!35148) Bool)

(assert (=> b!2974902 (= res!1226661 (isEmpty!19265 s!11993))))

(declare-fun lt!1036871 () Regex!9283)

(declare-fun matchRSpec!1420 (Regex!9283 List!35148) Bool)

(assert (=> b!2974902 (matchRSpec!1420 lt!1036871 s!11993)))

(declare-datatypes ((Unit!48945 0))(
  ( (Unit!48946) )
))
(declare-fun lt!1036868 () Unit!48945)

(declare-fun mainMatchTheorem!1420 (Regex!9283 List!35148) Unit!48945)

(assert (=> b!2974902 (= lt!1036868 (mainMatchTheorem!1420 lt!1036871 s!11993))))

(declare-fun b!2974903 () Bool)

(declare-fun e!1871484 () Bool)

(declare-fun e!1871480 () Bool)

(assert (=> b!2974903 (= e!1871484 e!1871480)))

(declare-fun res!1226663 () Bool)

(assert (=> b!2974903 (=> res!1226663 e!1871480)))

(declare-fun lt!1036872 () Regex!9283)

(declare-fun isEmptyLang!397 (Regex!9283) Bool)

(assert (=> b!2974903 (= res!1226663 (isEmptyLang!397 lt!1036872))))

(declare-fun simplify!284 (Regex!9283) Regex!9283)

(assert (=> b!2974903 (= lt!1036872 (simplify!284 (reg!9612 r!17423)))))

(declare-fun b!2974904 () Bool)

(assert (=> b!2974904 (= e!1871480 e!1871481)))

(declare-fun res!1226662 () Bool)

(assert (=> b!2974904 (=> res!1226662 e!1871481)))

(declare-fun matchR!4165 (Regex!9283 List!35148) Bool)

(assert (=> b!2974904 (= res!1226662 (not (matchR!4165 lt!1036871 s!11993)))))

(assert (=> b!2974904 (= lt!1036871 (Star!9283 lt!1036872))))

(declare-fun b!2974905 () Bool)

(declare-fun tp!948116 () Bool)

(assert (=> b!2974905 (= e!1871482 tp!948116)))

(declare-fun b!2974906 () Bool)

(assert (=> b!2974906 (= e!1871483 (not e!1871484))))

(declare-fun res!1226664 () Bool)

(assert (=> b!2974906 (=> res!1226664 e!1871484)))

(declare-fun lt!1036870 () Bool)

(get-info :version)

(assert (=> b!2974906 (= res!1226664 (or lt!1036870 ((_ is Concat!14604) r!17423) ((_ is Union!9283) r!17423) (not ((_ is Star!9283) r!17423))))))

(assert (=> b!2974906 (= lt!1036870 (matchRSpec!1420 r!17423 s!11993))))

(assert (=> b!2974906 (= lt!1036870 (matchR!4165 r!17423 s!11993))))

(declare-fun lt!1036873 () Unit!48945)

(assert (=> b!2974906 (= lt!1036873 (mainMatchTheorem!1420 r!17423 s!11993))))

(declare-fun b!2974907 () Bool)

(declare-fun e!1871487 () Bool)

(assert (=> b!2974907 (= e!1871487 (validRegex!4016 lt!1036871))))

(assert (=> b!2974908 (= e!1871485 e!1871487)))

(declare-fun res!1226660 () Bool)

(assert (=> b!2974908 (=> res!1226660 e!1871487)))

(assert (=> b!2974908 (= res!1226660 (not (validRegex!4016 lt!1036872)))))

(declare-fun Exists!1563 (Int) Bool)

(assert (=> b!2974908 (= (Exists!1563 lambda!110735) (Exists!1563 lambda!110736))))

(declare-fun lt!1036869 () Unit!48945)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!248 (Regex!9283 List!35148) Unit!48945)

(assert (=> b!2974908 (= lt!1036869 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!248 lt!1036872 s!11993))))

(declare-datatypes ((tuple2!33904 0))(
  ( (tuple2!33905 (_1!20084 List!35148) (_2!20084 List!35148)) )
))
(declare-datatypes ((Option!6684 0))(
  ( (None!6683) (Some!6683 (v!34817 tuple2!33904)) )
))
(declare-fun isDefined!5235 (Option!6684) Bool)

(declare-fun findConcatSeparation!1078 (Regex!9283 Regex!9283 List!35148 List!35148 List!35148) Option!6684)

(assert (=> b!2974908 (= (isDefined!5235 (findConcatSeparation!1078 lt!1036872 lt!1036871 Nil!35024 s!11993 s!11993)) (Exists!1563 lambda!110735))))

(declare-fun lt!1036874 () Unit!48945)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!856 (Regex!9283 Regex!9283 List!35148) Unit!48945)

(assert (=> b!2974908 (= lt!1036874 (lemmaFindConcatSeparationEquivalentToExists!856 lt!1036872 lt!1036871 s!11993))))

(declare-fun b!2974909 () Bool)

(declare-fun tp!948117 () Bool)

(assert (=> b!2974909 (= e!1871486 (and tp_is_empty!16129 tp!948117))))

(assert (= (and start!287660 res!1226659) b!2974906))

(assert (= (and b!2974906 (not res!1226664)) b!2974903))

(assert (= (and b!2974903 (not res!1226663)) b!2974904))

(assert (= (and b!2974904 (not res!1226662)) b!2974902))

(assert (= (and b!2974902 (not res!1226661)) b!2974908))

(assert (= (and b!2974908 (not res!1226660)) b!2974907))

(assert (= (and start!287660 ((_ is ElementMatch!9283) r!17423)) b!2974900))

(assert (= (and start!287660 ((_ is Concat!14604) r!17423)) b!2974899))

(assert (= (and start!287660 ((_ is Star!9283) r!17423)) b!2974905))

(assert (= (and start!287660 ((_ is Union!9283) r!17423)) b!2974901))

(assert (= (and start!287660 ((_ is Cons!35024) s!11993)) b!2974909))

(declare-fun m!3339637 () Bool)

(assert (=> start!287660 m!3339637))

(declare-fun m!3339639 () Bool)

(assert (=> b!2974908 m!3339639))

(declare-fun m!3339641 () Bool)

(assert (=> b!2974908 m!3339641))

(declare-fun m!3339643 () Bool)

(assert (=> b!2974908 m!3339643))

(assert (=> b!2974908 m!3339641))

(declare-fun m!3339645 () Bool)

(assert (=> b!2974908 m!3339645))

(declare-fun m!3339647 () Bool)

(assert (=> b!2974908 m!3339647))

(declare-fun m!3339649 () Bool)

(assert (=> b!2974908 m!3339649))

(declare-fun m!3339651 () Bool)

(assert (=> b!2974908 m!3339651))

(assert (=> b!2974908 m!3339639))

(declare-fun m!3339653 () Bool)

(assert (=> b!2974906 m!3339653))

(declare-fun m!3339655 () Bool)

(assert (=> b!2974906 m!3339655))

(declare-fun m!3339657 () Bool)

(assert (=> b!2974906 m!3339657))

(declare-fun m!3339659 () Bool)

(assert (=> b!2974904 m!3339659))

(declare-fun m!3339661 () Bool)

(assert (=> b!2974902 m!3339661))

(declare-fun m!3339663 () Bool)

(assert (=> b!2974902 m!3339663))

(declare-fun m!3339665 () Bool)

(assert (=> b!2974902 m!3339665))

(declare-fun m!3339667 () Bool)

(assert (=> b!2974903 m!3339667))

(declare-fun m!3339669 () Bool)

(assert (=> b!2974903 m!3339669))

(declare-fun m!3339671 () Bool)

(assert (=> b!2974907 m!3339671))

(check-sat (not b!2974899) (not b!2974907) (not b!2974906) (not b!2974902) (not b!2974903) (not b!2974905) (not b!2974908) (not start!287660) (not b!2974904) tp_is_empty!16129 (not b!2974901) (not b!2974909))
(check-sat)
(get-model)

(declare-fun b!2974932 () Bool)

(declare-fun e!1871507 () Bool)

(declare-fun e!1871503 () Bool)

(assert (=> b!2974932 (= e!1871507 e!1871503)))

(declare-fun c!488344 () Bool)

(assert (=> b!2974932 (= c!488344 ((_ is Star!9283) lt!1036872))))

(declare-fun b!2974933 () Bool)

(declare-fun e!1871502 () Bool)

(assert (=> b!2974933 (= e!1871503 e!1871502)))

(declare-fun res!1226677 () Bool)

(declare-fun nullable!2975 (Regex!9283) Bool)

(assert (=> b!2974933 (= res!1226677 (not (nullable!2975 (reg!9612 lt!1036872))))))

(assert (=> b!2974933 (=> (not res!1226677) (not e!1871502))))

(declare-fun b!2974934 () Bool)

(declare-fun e!1871508 () Bool)

(declare-fun call!198321 () Bool)

(assert (=> b!2974934 (= e!1871508 call!198321)))

(declare-fun b!2974936 () Bool)

(declare-fun res!1226676 () Bool)

(declare-fun e!1871506 () Bool)

(assert (=> b!2974936 (=> res!1226676 e!1871506)))

(assert (=> b!2974936 (= res!1226676 (not ((_ is Concat!14604) lt!1036872)))))

(declare-fun e!1871504 () Bool)

(assert (=> b!2974936 (= e!1871504 e!1871506)))

(declare-fun bm!198316 () Bool)

(declare-fun c!488345 () Bool)

(assert (=> bm!198316 (= call!198321 (validRegex!4016 (ite c!488345 (regTwo!19079 lt!1036872) (regOne!19078 lt!1036872))))))

(declare-fun bm!198317 () Bool)

(declare-fun call!198322 () Bool)

(declare-fun call!198323 () Bool)

(assert (=> bm!198317 (= call!198322 call!198323)))

(declare-fun b!2974937 () Bool)

(declare-fun e!1871505 () Bool)

(assert (=> b!2974937 (= e!1871506 e!1871505)))

(declare-fun res!1226679 () Bool)

(assert (=> b!2974937 (=> (not res!1226679) (not e!1871505))))

(assert (=> b!2974937 (= res!1226679 call!198321)))

(declare-fun b!2974938 () Bool)

(declare-fun res!1226678 () Bool)

(assert (=> b!2974938 (=> (not res!1226678) (not e!1871508))))

(assert (=> b!2974938 (= res!1226678 call!198322)))

(assert (=> b!2974938 (= e!1871504 e!1871508)))

(declare-fun bm!198318 () Bool)

(assert (=> bm!198318 (= call!198323 (validRegex!4016 (ite c!488344 (reg!9612 lt!1036872) (ite c!488345 (regOne!19079 lt!1036872) (regTwo!19078 lt!1036872)))))))

(declare-fun d!842985 () Bool)

(declare-fun res!1226675 () Bool)

(assert (=> d!842985 (=> res!1226675 e!1871507)))

(assert (=> d!842985 (= res!1226675 ((_ is ElementMatch!9283) lt!1036872))))

(assert (=> d!842985 (= (validRegex!4016 lt!1036872) e!1871507)))

(declare-fun b!2974935 () Bool)

(assert (=> b!2974935 (= e!1871503 e!1871504)))

(assert (=> b!2974935 (= c!488345 ((_ is Union!9283) lt!1036872))))

(declare-fun b!2974939 () Bool)

(assert (=> b!2974939 (= e!1871502 call!198323)))

(declare-fun b!2974940 () Bool)

(assert (=> b!2974940 (= e!1871505 call!198322)))

(assert (= (and d!842985 (not res!1226675)) b!2974932))

(assert (= (and b!2974932 c!488344) b!2974933))

(assert (= (and b!2974932 (not c!488344)) b!2974935))

(assert (= (and b!2974933 res!1226677) b!2974939))

(assert (= (and b!2974935 c!488345) b!2974938))

(assert (= (and b!2974935 (not c!488345)) b!2974936))

(assert (= (and b!2974938 res!1226678) b!2974934))

(assert (= (and b!2974936 (not res!1226676)) b!2974937))

(assert (= (and b!2974937 res!1226679) b!2974940))

(assert (= (or b!2974938 b!2974940) bm!198317))

(assert (= (or b!2974934 b!2974937) bm!198316))

(assert (= (or b!2974939 bm!198317) bm!198318))

(declare-fun m!3339673 () Bool)

(assert (=> b!2974933 m!3339673))

(declare-fun m!3339675 () Bool)

(assert (=> bm!198316 m!3339675))

(declare-fun m!3339677 () Bool)

(assert (=> bm!198318 m!3339677))

(assert (=> b!2974908 d!842985))

(declare-fun d!842989 () Bool)

(declare-fun choose!17593 (Int) Bool)

(assert (=> d!842989 (= (Exists!1563 lambda!110735) (choose!17593 lambda!110735))))

(declare-fun bs!526688 () Bool)

(assert (= bs!526688 d!842989))

(declare-fun m!3339679 () Bool)

(assert (=> bs!526688 m!3339679))

(assert (=> b!2974908 d!842989))

(declare-fun d!842991 () Bool)

(assert (=> d!842991 (= (Exists!1563 lambda!110736) (choose!17593 lambda!110736))))

(declare-fun bs!526689 () Bool)

(assert (= bs!526689 d!842991))

(declare-fun m!3339681 () Bool)

(assert (=> bs!526689 m!3339681))

(assert (=> b!2974908 d!842991))

(declare-fun b!2975014 () Bool)

(declare-fun e!1871560 () Option!6684)

(assert (=> b!2975014 (= e!1871560 (Some!6683 (tuple2!33905 Nil!35024 s!11993)))))

(declare-fun b!2975015 () Bool)

(declare-fun e!1871556 () Bool)

(declare-fun lt!1036882 () Option!6684)

(assert (=> b!2975015 (= e!1871556 (not (isDefined!5235 lt!1036882)))))

(declare-fun b!2975016 () Bool)

(declare-fun res!1226718 () Bool)

(declare-fun e!1871558 () Bool)

(assert (=> b!2975016 (=> (not res!1226718) (not e!1871558))))

(declare-fun get!10794 (Option!6684) tuple2!33904)

(assert (=> b!2975016 (= res!1226718 (matchR!4165 lt!1036871 (_2!20084 (get!10794 lt!1036882))))))

(declare-fun d!842993 () Bool)

(assert (=> d!842993 e!1871556))

(declare-fun res!1226719 () Bool)

(assert (=> d!842993 (=> res!1226719 e!1871556)))

(assert (=> d!842993 (= res!1226719 e!1871558)))

(declare-fun res!1226720 () Bool)

(assert (=> d!842993 (=> (not res!1226720) (not e!1871558))))

(assert (=> d!842993 (= res!1226720 (isDefined!5235 lt!1036882))))

(assert (=> d!842993 (= lt!1036882 e!1871560)))

(declare-fun c!488365 () Bool)

(declare-fun e!1871559 () Bool)

(assert (=> d!842993 (= c!488365 e!1871559)))

(declare-fun res!1226721 () Bool)

(assert (=> d!842993 (=> (not res!1226721) (not e!1871559))))

(assert (=> d!842993 (= res!1226721 (matchR!4165 lt!1036872 Nil!35024))))

(assert (=> d!842993 (validRegex!4016 lt!1036872)))

(assert (=> d!842993 (= (findConcatSeparation!1078 lt!1036872 lt!1036871 Nil!35024 s!11993 s!11993) lt!1036882)))

(declare-fun b!2975017 () Bool)

(declare-fun e!1871557 () Option!6684)

(assert (=> b!2975017 (= e!1871560 e!1871557)))

(declare-fun c!488364 () Bool)

(assert (=> b!2975017 (= c!488364 ((_ is Nil!35024) s!11993))))

(declare-fun b!2975018 () Bool)

(assert (=> b!2975018 (= e!1871557 None!6683)))

(declare-fun b!2975019 () Bool)

(assert (=> b!2975019 (= e!1871559 (matchR!4165 lt!1036871 s!11993))))

(declare-fun b!2975020 () Bool)

(declare-fun res!1226717 () Bool)

(assert (=> b!2975020 (=> (not res!1226717) (not e!1871558))))

(assert (=> b!2975020 (= res!1226717 (matchR!4165 lt!1036872 (_1!20084 (get!10794 lt!1036882))))))

(declare-fun b!2975021 () Bool)

(declare-fun lt!1036883 () Unit!48945)

(declare-fun lt!1036881 () Unit!48945)

(assert (=> b!2975021 (= lt!1036883 lt!1036881)))

(declare-fun ++!8350 (List!35148 List!35148) List!35148)

(assert (=> b!2975021 (= (++!8350 (++!8350 Nil!35024 (Cons!35024 (h!40444 s!11993) Nil!35024)) (t!234213 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!969 (List!35148 C!18752 List!35148 List!35148) Unit!48945)

(assert (=> b!2975021 (= lt!1036881 (lemmaMoveElementToOtherListKeepsConcatEq!969 Nil!35024 (h!40444 s!11993) (t!234213 s!11993) s!11993))))

(assert (=> b!2975021 (= e!1871557 (findConcatSeparation!1078 lt!1036872 lt!1036871 (++!8350 Nil!35024 (Cons!35024 (h!40444 s!11993) Nil!35024)) (t!234213 s!11993) s!11993))))

(declare-fun b!2975022 () Bool)

(assert (=> b!2975022 (= e!1871558 (= (++!8350 (_1!20084 (get!10794 lt!1036882)) (_2!20084 (get!10794 lt!1036882))) s!11993))))

(assert (= (and d!842993 res!1226721) b!2975019))

(assert (= (and d!842993 c!488365) b!2975014))

(assert (= (and d!842993 (not c!488365)) b!2975017))

(assert (= (and b!2975017 c!488364) b!2975018))

(assert (= (and b!2975017 (not c!488364)) b!2975021))

(assert (= (and d!842993 res!1226720) b!2975020))

(assert (= (and b!2975020 res!1226717) b!2975016))

(assert (= (and b!2975016 res!1226718) b!2975022))

(assert (= (and d!842993 (not res!1226719)) b!2975015))

(assert (=> b!2975019 m!3339659))

(declare-fun m!3339689 () Bool)

(assert (=> b!2975022 m!3339689))

(declare-fun m!3339691 () Bool)

(assert (=> b!2975022 m!3339691))

(assert (=> b!2975020 m!3339689))

(declare-fun m!3339693 () Bool)

(assert (=> b!2975020 m!3339693))

(declare-fun m!3339695 () Bool)

(assert (=> d!842993 m!3339695))

(declare-fun m!3339697 () Bool)

(assert (=> d!842993 m!3339697))

(assert (=> d!842993 m!3339649))

(assert (=> b!2975016 m!3339689))

(declare-fun m!3339699 () Bool)

(assert (=> b!2975016 m!3339699))

(declare-fun m!3339701 () Bool)

(assert (=> b!2975021 m!3339701))

(assert (=> b!2975021 m!3339701))

(declare-fun m!3339703 () Bool)

(assert (=> b!2975021 m!3339703))

(declare-fun m!3339705 () Bool)

(assert (=> b!2975021 m!3339705))

(assert (=> b!2975021 m!3339701))

(declare-fun m!3339707 () Bool)

(assert (=> b!2975021 m!3339707))

(assert (=> b!2975015 m!3339695))

(assert (=> b!2974908 d!842993))

(declare-fun bs!526694 () Bool)

(declare-fun d!842999 () Bool)

(assert (= bs!526694 (and d!842999 b!2974908)))

(declare-fun lambda!110747 () Int)

(assert (=> bs!526694 (= (= (Star!9283 lt!1036872) lt!1036871) (= lambda!110747 lambda!110735))))

(assert (=> bs!526694 (not (= lambda!110747 lambda!110736))))

(assert (=> d!842999 true))

(assert (=> d!842999 true))

(declare-fun lambda!110748 () Int)

(assert (=> bs!526694 (not (= lambda!110748 lambda!110735))))

(assert (=> bs!526694 (= (= (Star!9283 lt!1036872) lt!1036871) (= lambda!110748 lambda!110736))))

(declare-fun bs!526696 () Bool)

(assert (= bs!526696 d!842999))

(assert (=> bs!526696 (not (= lambda!110748 lambda!110747))))

(assert (=> d!842999 true))

(assert (=> d!842999 true))

(assert (=> d!842999 (= (Exists!1563 lambda!110747) (Exists!1563 lambda!110748))))

(declare-fun lt!1036888 () Unit!48945)

(declare-fun choose!17594 (Regex!9283 List!35148) Unit!48945)

(assert (=> d!842999 (= lt!1036888 (choose!17594 lt!1036872 s!11993))))

(assert (=> d!842999 (validRegex!4016 lt!1036872)))

(assert (=> d!842999 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!248 lt!1036872 s!11993) lt!1036888)))

(declare-fun m!3339717 () Bool)

(assert (=> bs!526696 m!3339717))

(declare-fun m!3339719 () Bool)

(assert (=> bs!526696 m!3339719))

(declare-fun m!3339721 () Bool)

(assert (=> bs!526696 m!3339721))

(assert (=> bs!526696 m!3339649))

(assert (=> b!2974908 d!842999))

(declare-fun bs!526703 () Bool)

(declare-fun d!843005 () Bool)

(assert (= bs!526703 (and d!843005 b!2974908)))

(declare-fun lambda!110753 () Int)

(assert (=> bs!526703 (= lambda!110753 lambda!110735)))

(assert (=> bs!526703 (not (= lambda!110753 lambda!110736))))

(declare-fun bs!526704 () Bool)

(assert (= bs!526704 (and d!843005 d!842999)))

(assert (=> bs!526704 (= (= lt!1036871 (Star!9283 lt!1036872)) (= lambda!110753 lambda!110747))))

(assert (=> bs!526704 (not (= lambda!110753 lambda!110748))))

(assert (=> d!843005 true))

(assert (=> d!843005 true))

(assert (=> d!843005 true))

(assert (=> d!843005 (= (isDefined!5235 (findConcatSeparation!1078 lt!1036872 lt!1036871 Nil!35024 s!11993 s!11993)) (Exists!1563 lambda!110753))))

(declare-fun lt!1036894 () Unit!48945)

(declare-fun choose!17596 (Regex!9283 Regex!9283 List!35148) Unit!48945)

(assert (=> d!843005 (= lt!1036894 (choose!17596 lt!1036872 lt!1036871 s!11993))))

(assert (=> d!843005 (validRegex!4016 lt!1036872)))

(assert (=> d!843005 (= (lemmaFindConcatSeparationEquivalentToExists!856 lt!1036872 lt!1036871 s!11993) lt!1036894)))

(declare-fun bs!526705 () Bool)

(assert (= bs!526705 d!843005))

(assert (=> bs!526705 m!3339641))

(assert (=> bs!526705 m!3339645))

(declare-fun m!3339729 () Bool)

(assert (=> bs!526705 m!3339729))

(assert (=> bs!526705 m!3339649))

(assert (=> bs!526705 m!3339641))

(declare-fun m!3339731 () Bool)

(assert (=> bs!526705 m!3339731))

(assert (=> b!2974908 d!843005))

(declare-fun d!843009 () Bool)

(declare-fun isEmpty!19266 (Option!6684) Bool)

(assert (=> d!843009 (= (isDefined!5235 (findConcatSeparation!1078 lt!1036872 lt!1036871 Nil!35024 s!11993 s!11993)) (not (isEmpty!19266 (findConcatSeparation!1078 lt!1036872 lt!1036871 Nil!35024 s!11993 s!11993))))))

(declare-fun bs!526706 () Bool)

(assert (= bs!526706 d!843009))

(assert (=> bs!526706 m!3339641))

(declare-fun m!3339733 () Bool)

(assert (=> bs!526706 m!3339733))

(assert (=> b!2974908 d!843009))

(declare-fun d!843011 () Bool)

(assert (=> d!843011 (= (isEmpty!19265 s!11993) ((_ is Nil!35024) s!11993))))

(assert (=> b!2974902 d!843011))

(declare-fun bs!526708 () Bool)

(declare-fun b!2975147 () Bool)

(assert (= bs!526708 (and b!2975147 b!2974908)))

(declare-fun lambda!110762 () Int)

(assert (=> bs!526708 (not (= lambda!110762 lambda!110735))))

(assert (=> bs!526708 (= (= (reg!9612 lt!1036871) lt!1036872) (= lambda!110762 lambda!110736))))

(declare-fun bs!526711 () Bool)

(assert (= bs!526711 (and b!2975147 d!842999)))

(assert (=> bs!526711 (= (and (= (reg!9612 lt!1036871) lt!1036872) (= lt!1036871 (Star!9283 lt!1036872))) (= lambda!110762 lambda!110748))))

(assert (=> bs!526711 (not (= lambda!110762 lambda!110747))))

(declare-fun bs!526713 () Bool)

(assert (= bs!526713 (and b!2975147 d!843005)))

(assert (=> bs!526713 (not (= lambda!110762 lambda!110753))))

(assert (=> b!2975147 true))

(assert (=> b!2975147 true))

(declare-fun bs!526716 () Bool)

(declare-fun b!2975148 () Bool)

(assert (= bs!526716 (and b!2975148 b!2974908)))

(declare-fun lambda!110764 () Int)

(assert (=> bs!526716 (not (= lambda!110764 lambda!110735))))

(assert (=> bs!526716 (not (= lambda!110764 lambda!110736))))

(declare-fun bs!526717 () Bool)

(assert (= bs!526717 (and b!2975148 d!842999)))

(assert (=> bs!526717 (not (= lambda!110764 lambda!110748))))

(declare-fun bs!526718 () Bool)

(assert (= bs!526718 (and b!2975148 b!2975147)))

(assert (=> bs!526718 (not (= lambda!110764 lambda!110762))))

(assert (=> bs!526717 (not (= lambda!110764 lambda!110747))))

(declare-fun bs!526720 () Bool)

(assert (= bs!526720 (and b!2975148 d!843005)))

(assert (=> bs!526720 (not (= lambda!110764 lambda!110753))))

(assert (=> b!2975148 true))

(assert (=> b!2975148 true))

(declare-fun e!1871630 () Bool)

(declare-fun call!198348 () Bool)

(assert (=> b!2975147 (= e!1871630 call!198348)))

(declare-fun e!1871632 () Bool)

(assert (=> b!2975148 (= e!1871632 call!198348)))

(declare-fun b!2975149 () Bool)

(declare-fun e!1871626 () Bool)

(assert (=> b!2975149 (= e!1871626 (matchRSpec!1420 (regTwo!19079 lt!1036871) s!11993))))

(declare-fun b!2975150 () Bool)

(declare-fun e!1871629 () Bool)

(declare-fun e!1871628 () Bool)

(assert (=> b!2975150 (= e!1871629 e!1871628)))

(declare-fun res!1226798 () Bool)

(assert (=> b!2975150 (= res!1226798 (not ((_ is EmptyLang!9283) lt!1036871)))))

(assert (=> b!2975150 (=> (not res!1226798) (not e!1871628))))

(declare-fun c!488393 () Bool)

(declare-fun bm!198343 () Bool)

(assert (=> bm!198343 (= call!198348 (Exists!1563 (ite c!488393 lambda!110762 lambda!110764)))))

(declare-fun b!2975151 () Bool)

(declare-fun c!488392 () Bool)

(assert (=> b!2975151 (= c!488392 ((_ is Union!9283) lt!1036871))))

(declare-fun e!1871631 () Bool)

(declare-fun e!1871627 () Bool)

(assert (=> b!2975151 (= e!1871631 e!1871627)))

(declare-fun d!843013 () Bool)

(declare-fun c!488394 () Bool)

(assert (=> d!843013 (= c!488394 ((_ is EmptyExpr!9283) lt!1036871))))

(assert (=> d!843013 (= (matchRSpec!1420 lt!1036871 s!11993) e!1871629)))

(declare-fun b!2975152 () Bool)

(declare-fun c!488391 () Bool)

(assert (=> b!2975152 (= c!488391 ((_ is ElementMatch!9283) lt!1036871))))

(assert (=> b!2975152 (= e!1871628 e!1871631)))

(declare-fun b!2975153 () Bool)

(declare-fun res!1226797 () Bool)

(assert (=> b!2975153 (=> res!1226797 e!1871630)))

(declare-fun call!198349 () Bool)

(assert (=> b!2975153 (= res!1226797 call!198349)))

(assert (=> b!2975153 (= e!1871632 e!1871630)))

(declare-fun b!2975154 () Bool)

(assert (=> b!2975154 (= e!1871631 (= s!11993 (Cons!35024 (c!488339 lt!1036871) Nil!35024)))))

(declare-fun b!2975155 () Bool)

(assert (=> b!2975155 (= e!1871627 e!1871632)))

(assert (=> b!2975155 (= c!488393 ((_ is Star!9283) lt!1036871))))

(declare-fun b!2975156 () Bool)

(assert (=> b!2975156 (= e!1871627 e!1871626)))

(declare-fun res!1226796 () Bool)

(assert (=> b!2975156 (= res!1226796 (matchRSpec!1420 (regOne!19079 lt!1036871) s!11993))))

(assert (=> b!2975156 (=> res!1226796 e!1871626)))

(declare-fun bm!198344 () Bool)

(assert (=> bm!198344 (= call!198349 (isEmpty!19265 s!11993))))

(declare-fun b!2975157 () Bool)

(assert (=> b!2975157 (= e!1871629 call!198349)))

(assert (= (and d!843013 c!488394) b!2975157))

(assert (= (and d!843013 (not c!488394)) b!2975150))

(assert (= (and b!2975150 res!1226798) b!2975152))

(assert (= (and b!2975152 c!488391) b!2975154))

(assert (= (and b!2975152 (not c!488391)) b!2975151))

(assert (= (and b!2975151 c!488392) b!2975156))

(assert (= (and b!2975151 (not c!488392)) b!2975155))

(assert (= (and b!2975156 (not res!1226796)) b!2975149))

(assert (= (and b!2975155 c!488393) b!2975153))

(assert (= (and b!2975155 (not c!488393)) b!2975148))

(assert (= (and b!2975153 (not res!1226797)) b!2975147))

(assert (= (or b!2975147 b!2975148) bm!198343))

(assert (= (or b!2975157 b!2975153) bm!198344))

(declare-fun m!3339755 () Bool)

(assert (=> b!2975149 m!3339755))

(declare-fun m!3339757 () Bool)

(assert (=> bm!198343 m!3339757))

(declare-fun m!3339759 () Bool)

(assert (=> b!2975156 m!3339759))

(assert (=> bm!198344 m!3339661))

(assert (=> b!2974902 d!843013))

(declare-fun d!843021 () Bool)

(assert (=> d!843021 (= (matchR!4165 lt!1036871 s!11993) (matchRSpec!1420 lt!1036871 s!11993))))

(declare-fun lt!1036902 () Unit!48945)

(declare-fun choose!17597 (Regex!9283 List!35148) Unit!48945)

(assert (=> d!843021 (= lt!1036902 (choose!17597 lt!1036871 s!11993))))

(assert (=> d!843021 (validRegex!4016 lt!1036871)))

(assert (=> d!843021 (= (mainMatchTheorem!1420 lt!1036871 s!11993) lt!1036902)))

(declare-fun bs!526722 () Bool)

(assert (= bs!526722 d!843021))

(assert (=> bs!526722 m!3339659))

(assert (=> bs!526722 m!3339663))

(declare-fun m!3339769 () Bool)

(assert (=> bs!526722 m!3339769))

(assert (=> bs!526722 m!3339671))

(assert (=> b!2974902 d!843021))

(declare-fun b!2975167 () Bool)

(declare-fun e!1871645 () Bool)

(declare-fun e!1871641 () Bool)

(assert (=> b!2975167 (= e!1871645 e!1871641)))

(declare-fun c!488397 () Bool)

(assert (=> b!2975167 (= c!488397 ((_ is Star!9283) lt!1036871))))

(declare-fun b!2975168 () Bool)

(declare-fun e!1871640 () Bool)

(assert (=> b!2975168 (= e!1871641 e!1871640)))

(declare-fun res!1226806 () Bool)

(assert (=> b!2975168 (= res!1226806 (not (nullable!2975 (reg!9612 lt!1036871))))))

(assert (=> b!2975168 (=> (not res!1226806) (not e!1871640))))

(declare-fun b!2975169 () Bool)

(declare-fun e!1871646 () Bool)

(declare-fun call!198353 () Bool)

(assert (=> b!2975169 (= e!1871646 call!198353)))

(declare-fun b!2975171 () Bool)

(declare-fun res!1226805 () Bool)

(declare-fun e!1871644 () Bool)

(assert (=> b!2975171 (=> res!1226805 e!1871644)))

(assert (=> b!2975171 (= res!1226805 (not ((_ is Concat!14604) lt!1036871)))))

(declare-fun e!1871642 () Bool)

(assert (=> b!2975171 (= e!1871642 e!1871644)))

(declare-fun bm!198348 () Bool)

(declare-fun c!488398 () Bool)

(assert (=> bm!198348 (= call!198353 (validRegex!4016 (ite c!488398 (regTwo!19079 lt!1036871) (regOne!19078 lt!1036871))))))

(declare-fun bm!198349 () Bool)

(declare-fun call!198354 () Bool)

(declare-fun call!198355 () Bool)

(assert (=> bm!198349 (= call!198354 call!198355)))

(declare-fun b!2975172 () Bool)

(declare-fun e!1871643 () Bool)

(assert (=> b!2975172 (= e!1871644 e!1871643)))

(declare-fun res!1226808 () Bool)

(assert (=> b!2975172 (=> (not res!1226808) (not e!1871643))))

(assert (=> b!2975172 (= res!1226808 call!198353)))

(declare-fun b!2975173 () Bool)

(declare-fun res!1226807 () Bool)

(assert (=> b!2975173 (=> (not res!1226807) (not e!1871646))))

(assert (=> b!2975173 (= res!1226807 call!198354)))

(assert (=> b!2975173 (= e!1871642 e!1871646)))

(declare-fun bm!198350 () Bool)

(assert (=> bm!198350 (= call!198355 (validRegex!4016 (ite c!488397 (reg!9612 lt!1036871) (ite c!488398 (regOne!19079 lt!1036871) (regTwo!19078 lt!1036871)))))))

(declare-fun d!843027 () Bool)

(declare-fun res!1226804 () Bool)

(assert (=> d!843027 (=> res!1226804 e!1871645)))

(assert (=> d!843027 (= res!1226804 ((_ is ElementMatch!9283) lt!1036871))))

(assert (=> d!843027 (= (validRegex!4016 lt!1036871) e!1871645)))

(declare-fun b!2975170 () Bool)

(assert (=> b!2975170 (= e!1871641 e!1871642)))

(assert (=> b!2975170 (= c!488398 ((_ is Union!9283) lt!1036871))))

(declare-fun b!2975174 () Bool)

(assert (=> b!2975174 (= e!1871640 call!198355)))

(declare-fun b!2975175 () Bool)

(assert (=> b!2975175 (= e!1871643 call!198354)))

(assert (= (and d!843027 (not res!1226804)) b!2975167))

(assert (= (and b!2975167 c!488397) b!2975168))

(assert (= (and b!2975167 (not c!488397)) b!2975170))

(assert (= (and b!2975168 res!1226806) b!2975174))

(assert (= (and b!2975170 c!488398) b!2975173))

(assert (= (and b!2975170 (not c!488398)) b!2975171))

(assert (= (and b!2975173 res!1226807) b!2975169))

(assert (= (and b!2975171 (not res!1226805)) b!2975172))

(assert (= (and b!2975172 res!1226808) b!2975175))

(assert (= (or b!2975173 b!2975175) bm!198349))

(assert (= (or b!2975169 b!2975172) bm!198348))

(assert (= (or b!2975174 bm!198349) bm!198350))

(declare-fun m!3339771 () Bool)

(assert (=> b!2975168 m!3339771))

(declare-fun m!3339773 () Bool)

(assert (=> bm!198348 m!3339773))

(declare-fun m!3339775 () Bool)

(assert (=> bm!198350 m!3339775))

(assert (=> b!2974907 d!843027))

(declare-fun d!843029 () Bool)

(declare-fun e!1871663 () Bool)

(assert (=> d!843029 e!1871663))

(declare-fun c!488406 () Bool)

(assert (=> d!843029 (= c!488406 ((_ is EmptyExpr!9283) lt!1036871))))

(declare-fun lt!1036908 () Bool)

(declare-fun e!1871664 () Bool)

(assert (=> d!843029 (= lt!1036908 e!1871664)))

(declare-fun c!488407 () Bool)

(assert (=> d!843029 (= c!488407 (isEmpty!19265 s!11993))))

(assert (=> d!843029 (validRegex!4016 lt!1036871)))

(assert (=> d!843029 (= (matchR!4165 lt!1036871 s!11993) lt!1036908)))

(declare-fun b!2975208 () Bool)

(declare-fun res!1226836 () Bool)

(declare-fun e!1871669 () Bool)

(assert (=> b!2975208 (=> res!1226836 e!1871669)))

(declare-fun tail!4861 (List!35148) List!35148)

(assert (=> b!2975208 (= res!1226836 (not (isEmpty!19265 (tail!4861 s!11993))))))

(declare-fun b!2975209 () Bool)

(declare-fun res!1226834 () Bool)

(declare-fun e!1871665 () Bool)

(assert (=> b!2975209 (=> res!1226834 e!1871665)))

(declare-fun e!1871667 () Bool)

(assert (=> b!2975209 (= res!1226834 e!1871667)))

(declare-fun res!1226830 () Bool)

(assert (=> b!2975209 (=> (not res!1226830) (not e!1871667))))

(assert (=> b!2975209 (= res!1226830 lt!1036908)))

(declare-fun b!2975210 () Bool)

(declare-fun res!1226832 () Bool)

(assert (=> b!2975210 (=> res!1226832 e!1871665)))

(assert (=> b!2975210 (= res!1226832 (not ((_ is ElementMatch!9283) lt!1036871)))))

(declare-fun e!1871666 () Bool)

(assert (=> b!2975210 (= e!1871666 e!1871665)))

(declare-fun b!2975211 () Bool)

(assert (=> b!2975211 (= e!1871663 e!1871666)))

(declare-fun c!488405 () Bool)

(assert (=> b!2975211 (= c!488405 ((_ is EmptyLang!9283) lt!1036871))))

(declare-fun b!2975212 () Bool)

(declare-fun call!198358 () Bool)

(assert (=> b!2975212 (= e!1871663 (= lt!1036908 call!198358))))

(declare-fun b!2975213 () Bool)

(declare-fun head!6635 (List!35148) C!18752)

(assert (=> b!2975213 (= e!1871667 (= (head!6635 s!11993) (c!488339 lt!1036871)))))

(declare-fun b!2975214 () Bool)

(declare-fun derivativeStep!2576 (Regex!9283 C!18752) Regex!9283)

(assert (=> b!2975214 (= e!1871664 (matchR!4165 (derivativeStep!2576 lt!1036871 (head!6635 s!11993)) (tail!4861 s!11993)))))

(declare-fun b!2975215 () Bool)

(declare-fun e!1871668 () Bool)

(assert (=> b!2975215 (= e!1871668 e!1871669)))

(declare-fun res!1226829 () Bool)

(assert (=> b!2975215 (=> res!1226829 e!1871669)))

(assert (=> b!2975215 (= res!1226829 call!198358)))

(declare-fun b!2975216 () Bool)

(assert (=> b!2975216 (= e!1871666 (not lt!1036908))))

(declare-fun b!2975217 () Bool)

(assert (=> b!2975217 (= e!1871665 e!1871668)))

(declare-fun res!1226833 () Bool)

(assert (=> b!2975217 (=> (not res!1226833) (not e!1871668))))

(assert (=> b!2975217 (= res!1226833 (not lt!1036908))))

(declare-fun b!2975218 () Bool)

(declare-fun res!1226835 () Bool)

(assert (=> b!2975218 (=> (not res!1226835) (not e!1871667))))

(assert (=> b!2975218 (= res!1226835 (not call!198358))))

(declare-fun b!2975219 () Bool)

(declare-fun res!1226831 () Bool)

(assert (=> b!2975219 (=> (not res!1226831) (not e!1871667))))

(assert (=> b!2975219 (= res!1226831 (isEmpty!19265 (tail!4861 s!11993)))))

(declare-fun b!2975220 () Bool)

(assert (=> b!2975220 (= e!1871669 (not (= (head!6635 s!11993) (c!488339 lt!1036871))))))

(declare-fun b!2975221 () Bool)

(assert (=> b!2975221 (= e!1871664 (nullable!2975 lt!1036871))))

(declare-fun bm!198353 () Bool)

(assert (=> bm!198353 (= call!198358 (isEmpty!19265 s!11993))))

(assert (= (and d!843029 c!488407) b!2975221))

(assert (= (and d!843029 (not c!488407)) b!2975214))

(assert (= (and d!843029 c!488406) b!2975212))

(assert (= (and d!843029 (not c!488406)) b!2975211))

(assert (= (and b!2975211 c!488405) b!2975216))

(assert (= (and b!2975211 (not c!488405)) b!2975210))

(assert (= (and b!2975210 (not res!1226832)) b!2975209))

(assert (= (and b!2975209 res!1226830) b!2975218))

(assert (= (and b!2975218 res!1226835) b!2975219))

(assert (= (and b!2975219 res!1226831) b!2975213))

(assert (= (and b!2975209 (not res!1226834)) b!2975217))

(assert (= (and b!2975217 res!1226833) b!2975215))

(assert (= (and b!2975215 (not res!1226829)) b!2975208))

(assert (= (and b!2975208 (not res!1226836)) b!2975220))

(assert (= (or b!2975212 b!2975215 b!2975218) bm!198353))

(declare-fun m!3339785 () Bool)

(assert (=> b!2975213 m!3339785))

(declare-fun m!3339787 () Bool)

(assert (=> b!2975208 m!3339787))

(assert (=> b!2975208 m!3339787))

(declare-fun m!3339789 () Bool)

(assert (=> b!2975208 m!3339789))

(assert (=> bm!198353 m!3339661))

(assert (=> b!2975220 m!3339785))

(assert (=> b!2975219 m!3339787))

(assert (=> b!2975219 m!3339787))

(assert (=> b!2975219 m!3339789))

(assert (=> b!2975214 m!3339785))

(assert (=> b!2975214 m!3339785))

(declare-fun m!3339791 () Bool)

(assert (=> b!2975214 m!3339791))

(assert (=> b!2975214 m!3339787))

(assert (=> b!2975214 m!3339791))

(assert (=> b!2975214 m!3339787))

(declare-fun m!3339793 () Bool)

(assert (=> b!2975214 m!3339793))

(declare-fun m!3339795 () Bool)

(assert (=> b!2975221 m!3339795))

(assert (=> d!843029 m!3339661))

(assert (=> d!843029 m!3339671))

(assert (=> b!2974904 d!843029))

(declare-fun d!843037 () Bool)

(assert (=> d!843037 (= (isEmptyLang!397 lt!1036872) ((_ is EmptyLang!9283) lt!1036872))))

(assert (=> b!2974903 d!843037))

(declare-fun b!2975309 () Bool)

(declare-fun e!1871727 () Regex!9283)

(declare-fun e!1871723 () Regex!9283)

(assert (=> b!2975309 (= e!1871727 e!1871723)))

(declare-fun c!488439 () Bool)

(assert (=> b!2975309 (= c!488439 ((_ is Star!9283) (reg!9612 r!17423)))))

(declare-fun b!2975310 () Bool)

(declare-fun e!1871724 () Regex!9283)

(declare-fun e!1871721 () Regex!9283)

(assert (=> b!2975310 (= e!1871724 e!1871721)))

(declare-fun c!488442 () Bool)

(declare-fun call!198378 () Bool)

(assert (=> b!2975310 (= c!488442 call!198378)))

(declare-fun b!2975311 () Bool)

(declare-fun e!1871730 () Regex!9283)

(assert (=> b!2975311 (= e!1871730 (reg!9612 r!17423))))

(declare-fun b!2975312 () Bool)

(declare-fun e!1871726 () Regex!9283)

(assert (=> b!2975312 (= e!1871726 e!1871730)))

(declare-fun c!488441 () Bool)

(assert (=> b!2975312 (= c!488441 ((_ is ElementMatch!9283) (reg!9612 r!17423)))))

(declare-fun b!2975313 () Bool)

(declare-fun e!1871731 () Bool)

(assert (=> b!2975313 (= e!1871731 call!198378)))

(declare-fun bm!198371 () Bool)

(declare-fun c!488440 () Bool)

(declare-fun lt!1036937 () Regex!9283)

(declare-fun call!198379 () Bool)

(declare-fun lt!1036934 () Regex!9283)

(assert (=> bm!198371 (= call!198379 (isEmptyLang!397 (ite c!488440 lt!1036937 lt!1036934)))))

(declare-fun b!2975314 () Bool)

(declare-fun c!488444 () Bool)

(declare-fun isEmptyExpr!430 (Regex!9283) Bool)

(assert (=> b!2975314 (= c!488444 (isEmptyExpr!430 lt!1036934))))

(declare-fun e!1871728 () Regex!9283)

(assert (=> b!2975314 (= e!1871728 e!1871724)))

(declare-fun lt!1036932 () Regex!9283)

(declare-fun bm!198372 () Bool)

(declare-fun lt!1036931 () Regex!9283)

(assert (=> bm!198372 (= call!198378 (isEmptyExpr!430 (ite c!488439 lt!1036931 lt!1036932)))))

(declare-fun b!2975315 () Bool)

(declare-fun e!1871720 () Regex!9283)

(assert (=> b!2975315 (= e!1871720 lt!1036937)))

(declare-fun b!2975316 () Bool)

(assert (=> b!2975316 (= c!488440 ((_ is Union!9283) (reg!9612 r!17423)))))

(declare-fun e!1871729 () Regex!9283)

(assert (=> b!2975316 (= e!1871723 e!1871729)))

(declare-fun bm!198373 () Bool)

(declare-fun call!198380 () Regex!9283)

(assert (=> bm!198373 (= call!198380 (simplify!284 (ite c!488440 (regOne!19079 (reg!9612 r!17423)) (regTwo!19078 (reg!9612 r!17423)))))))

(declare-fun b!2975317 () Bool)

(assert (=> b!2975317 (= e!1871729 e!1871720)))

(declare-fun lt!1036930 () Regex!9283)

(assert (=> b!2975317 (= lt!1036930 call!198380)))

(declare-fun call!198377 () Regex!9283)

(assert (=> b!2975317 (= lt!1036937 call!198377)))

(declare-fun c!488438 () Bool)

(declare-fun call!198376 () Bool)

(assert (=> b!2975317 (= c!488438 call!198376)))

(declare-fun b!2975318 () Bool)

(assert (=> b!2975318 (= e!1871726 EmptyLang!9283)))

(declare-fun b!2975308 () Bool)

(declare-fun c!488447 () Bool)

(assert (=> b!2975308 (= c!488447 ((_ is EmptyExpr!9283) (reg!9612 r!17423)))))

(assert (=> b!2975308 (= e!1871730 e!1871727)))

(declare-fun d!843039 () Bool)

(declare-fun e!1871722 () Bool)

(assert (=> d!843039 e!1871722))

(declare-fun res!1226864 () Bool)

(assert (=> d!843039 (=> (not res!1226864) (not e!1871722))))

(declare-fun lt!1036933 () Regex!9283)

(assert (=> d!843039 (= res!1226864 (validRegex!4016 lt!1036933))))

(assert (=> d!843039 (= lt!1036933 e!1871726)))

(declare-fun c!488443 () Bool)

(assert (=> d!843039 (= c!488443 ((_ is EmptyLang!9283) (reg!9612 r!17423)))))

(assert (=> d!843039 (validRegex!4016 (reg!9612 r!17423))))

(assert (=> d!843039 (= (simplify!284 (reg!9612 r!17423)) lt!1036933)))

(declare-fun b!2975319 () Bool)

(declare-fun e!1871732 () Regex!9283)

(assert (=> b!2975319 (= e!1871732 (Star!9283 lt!1036931))))

(declare-fun b!2975320 () Bool)

(assert (=> b!2975320 (= e!1871724 lt!1036932)))

(declare-fun b!2975323 () Bool)

(declare-fun e!1871725 () Bool)

(assert (=> b!2975323 (= e!1871725 call!198376)))

(declare-fun bm!198374 () Bool)

(declare-fun call!198381 () Bool)

(assert (=> bm!198374 (= call!198376 call!198381)))

(declare-fun b!2975324 () Bool)

(assert (=> b!2975324 (= e!1871727 EmptyExpr!9283)))

(declare-fun b!2975325 () Bool)

(declare-fun c!488446 () Bool)

(assert (=> b!2975325 (= c!488446 e!1871731)))

(declare-fun res!1226863 () Bool)

(assert (=> b!2975325 (=> res!1226863 e!1871731)))

(assert (=> b!2975325 (= res!1226863 call!198381)))

(declare-fun call!198382 () Regex!9283)

(assert (=> b!2975325 (= lt!1036931 call!198382)))

(assert (=> b!2975325 (= e!1871723 e!1871732)))

(declare-fun b!2975326 () Bool)

(assert (=> b!2975326 (= e!1871722 (= (nullable!2975 lt!1036933) (nullable!2975 (reg!9612 r!17423))))))

(declare-fun b!2975327 () Bool)

(assert (=> b!2975327 (= e!1871728 EmptyLang!9283)))

(declare-fun b!2975328 () Bool)

(declare-fun e!1871733 () Regex!9283)

(assert (=> b!2975328 (= e!1871733 (Union!9283 lt!1036930 lt!1036937))))

(declare-fun b!2975329 () Bool)

(declare-fun c!488445 () Bool)

(assert (=> b!2975329 (= c!488445 call!198379)))

(assert (=> b!2975329 (= e!1871720 e!1871733)))

(declare-fun bm!198375 () Bool)

(assert (=> bm!198375 (= call!198377 call!198382)))

(declare-fun b!2975330 () Bool)

(assert (=> b!2975330 (= e!1871732 EmptyExpr!9283)))

(declare-fun b!2975331 () Bool)

(assert (=> b!2975331 (= e!1871729 e!1871728)))

(assert (=> b!2975331 (= lt!1036934 call!198377)))

(assert (=> b!2975331 (= lt!1036932 call!198380)))

(declare-fun res!1226865 () Bool)

(assert (=> b!2975331 (= res!1226865 call!198379)))

(assert (=> b!2975331 (=> res!1226865 e!1871725)))

(declare-fun c!488448 () Bool)

(assert (=> b!2975331 (= c!488448 e!1871725)))

(declare-fun b!2975332 () Bool)

(assert (=> b!2975332 (= e!1871721 lt!1036934)))

(declare-fun b!2975333 () Bool)

(assert (=> b!2975333 (= e!1871733 lt!1036930)))

(declare-fun b!2975334 () Bool)

(assert (=> b!2975334 (= e!1871721 (Concat!14604 lt!1036934 lt!1036932))))

(declare-fun bm!198376 () Bool)

(assert (=> bm!198376 (= call!198382 (simplify!284 (ite c!488439 (reg!9612 (reg!9612 r!17423)) (ite c!488440 (regTwo!19079 (reg!9612 r!17423)) (regOne!19078 (reg!9612 r!17423))))))))

(declare-fun bm!198377 () Bool)

(assert (=> bm!198377 (= call!198381 (isEmptyLang!397 (ite c!488439 lt!1036931 (ite c!488440 lt!1036930 lt!1036932))))))

(assert (= (and d!843039 c!488443) b!2975318))

(assert (= (and d!843039 (not c!488443)) b!2975312))

(assert (= (and b!2975312 c!488441) b!2975311))

(assert (= (and b!2975312 (not c!488441)) b!2975308))

(assert (= (and b!2975308 c!488447) b!2975324))

(assert (= (and b!2975308 (not c!488447)) b!2975309))

(assert (= (and b!2975309 c!488439) b!2975325))

(assert (= (and b!2975309 (not c!488439)) b!2975316))

(assert (= (and b!2975325 (not res!1226863)) b!2975313))

(assert (= (and b!2975325 c!488446) b!2975330))

(assert (= (and b!2975325 (not c!488446)) b!2975319))

(assert (= (and b!2975316 c!488440) b!2975317))

(assert (= (and b!2975316 (not c!488440)) b!2975331))

(assert (= (and b!2975317 c!488438) b!2975315))

(assert (= (and b!2975317 (not c!488438)) b!2975329))

(assert (= (and b!2975329 c!488445) b!2975333))

(assert (= (and b!2975329 (not c!488445)) b!2975328))

(assert (= (and b!2975331 (not res!1226865)) b!2975323))

(assert (= (and b!2975331 c!488448) b!2975327))

(assert (= (and b!2975331 (not c!488448)) b!2975314))

(assert (= (and b!2975314 c!488444) b!2975320))

(assert (= (and b!2975314 (not c!488444)) b!2975310))

(assert (= (and b!2975310 c!488442) b!2975332))

(assert (= (and b!2975310 (not c!488442)) b!2975334))

(assert (= (or b!2975317 b!2975331) bm!198373))

(assert (= (or b!2975317 b!2975331) bm!198375))

(assert (= (or b!2975317 b!2975323) bm!198374))

(assert (= (or b!2975329 b!2975331) bm!198371))

(assert (= (or b!2975313 b!2975310) bm!198372))

(assert (= (or b!2975325 bm!198375) bm!198376))

(assert (= (or b!2975325 bm!198374) bm!198377))

(assert (= (and d!843039 res!1226864) b!2975326))

(declare-fun m!3339823 () Bool)

(assert (=> bm!198372 m!3339823))

(declare-fun m!3339825 () Bool)

(assert (=> bm!198377 m!3339825))

(declare-fun m!3339827 () Bool)

(assert (=> b!2975326 m!3339827))

(declare-fun m!3339829 () Bool)

(assert (=> b!2975326 m!3339829))

(declare-fun m!3339831 () Bool)

(assert (=> bm!198376 m!3339831))

(declare-fun m!3339833 () Bool)

(assert (=> bm!198371 m!3339833))

(declare-fun m!3339835 () Bool)

(assert (=> b!2975314 m!3339835))

(declare-fun m!3339837 () Bool)

(assert (=> d!843039 m!3339837))

(declare-fun m!3339839 () Bool)

(assert (=> d!843039 m!3339839))

(declare-fun m!3339841 () Bool)

(assert (=> bm!198373 m!3339841))

(assert (=> b!2974903 d!843039))

(declare-fun b!2975381 () Bool)

(declare-fun e!1871765 () Bool)

(declare-fun e!1871761 () Bool)

(assert (=> b!2975381 (= e!1871765 e!1871761)))

(declare-fun c!488471 () Bool)

(assert (=> b!2975381 (= c!488471 ((_ is Star!9283) r!17423))))

(declare-fun b!2975382 () Bool)

(declare-fun e!1871760 () Bool)

(assert (=> b!2975382 (= e!1871761 e!1871760)))

(declare-fun res!1226872 () Bool)

(assert (=> b!2975382 (= res!1226872 (not (nullable!2975 (reg!9612 r!17423))))))

(assert (=> b!2975382 (=> (not res!1226872) (not e!1871760))))

(declare-fun b!2975383 () Bool)

(declare-fun e!1871766 () Bool)

(declare-fun call!198383 () Bool)

(assert (=> b!2975383 (= e!1871766 call!198383)))

(declare-fun b!2975385 () Bool)

(declare-fun res!1226871 () Bool)

(declare-fun e!1871764 () Bool)

(assert (=> b!2975385 (=> res!1226871 e!1871764)))

(assert (=> b!2975385 (= res!1226871 (not ((_ is Concat!14604) r!17423)))))

(declare-fun e!1871762 () Bool)

(assert (=> b!2975385 (= e!1871762 e!1871764)))

(declare-fun bm!198378 () Bool)

(declare-fun c!488472 () Bool)

(assert (=> bm!198378 (= call!198383 (validRegex!4016 (ite c!488472 (regTwo!19079 r!17423) (regOne!19078 r!17423))))))

(declare-fun bm!198379 () Bool)

(declare-fun call!198384 () Bool)

(declare-fun call!198385 () Bool)

(assert (=> bm!198379 (= call!198384 call!198385)))

(declare-fun b!2975386 () Bool)

(declare-fun e!1871763 () Bool)

(assert (=> b!2975386 (= e!1871764 e!1871763)))

(declare-fun res!1226874 () Bool)

(assert (=> b!2975386 (=> (not res!1226874) (not e!1871763))))

(assert (=> b!2975386 (= res!1226874 call!198383)))

(declare-fun b!2975387 () Bool)

(declare-fun res!1226873 () Bool)

(assert (=> b!2975387 (=> (not res!1226873) (not e!1871766))))

(assert (=> b!2975387 (= res!1226873 call!198384)))

(assert (=> b!2975387 (= e!1871762 e!1871766)))

(declare-fun bm!198380 () Bool)

(assert (=> bm!198380 (= call!198385 (validRegex!4016 (ite c!488471 (reg!9612 r!17423) (ite c!488472 (regOne!19079 r!17423) (regTwo!19078 r!17423)))))))

(declare-fun d!843047 () Bool)

(declare-fun res!1226870 () Bool)

(assert (=> d!843047 (=> res!1226870 e!1871765)))

(assert (=> d!843047 (= res!1226870 ((_ is ElementMatch!9283) r!17423))))

(assert (=> d!843047 (= (validRegex!4016 r!17423) e!1871765)))

(declare-fun b!2975384 () Bool)

(assert (=> b!2975384 (= e!1871761 e!1871762)))

(assert (=> b!2975384 (= c!488472 ((_ is Union!9283) r!17423))))

(declare-fun b!2975388 () Bool)

(assert (=> b!2975388 (= e!1871760 call!198385)))

(declare-fun b!2975389 () Bool)

(assert (=> b!2975389 (= e!1871763 call!198384)))

(assert (= (and d!843047 (not res!1226870)) b!2975381))

(assert (= (and b!2975381 c!488471) b!2975382))

(assert (= (and b!2975381 (not c!488471)) b!2975384))

(assert (= (and b!2975382 res!1226872) b!2975388))

(assert (= (and b!2975384 c!488472) b!2975387))

(assert (= (and b!2975384 (not c!488472)) b!2975385))

(assert (= (and b!2975387 res!1226873) b!2975383))

(assert (= (and b!2975385 (not res!1226871)) b!2975386))

(assert (= (and b!2975386 res!1226874) b!2975389))

(assert (= (or b!2975387 b!2975389) bm!198379))

(assert (= (or b!2975383 b!2975386) bm!198378))

(assert (= (or b!2975388 bm!198379) bm!198380))

(assert (=> b!2975382 m!3339829))

(declare-fun m!3339843 () Bool)

(assert (=> bm!198378 m!3339843))

(declare-fun m!3339845 () Bool)

(assert (=> bm!198380 m!3339845))

(assert (=> start!287660 d!843047))

(declare-fun bs!526732 () Bool)

(declare-fun b!2975390 () Bool)

(assert (= bs!526732 (and b!2975390 b!2975148)))

(declare-fun lambda!110769 () Int)

(assert (=> bs!526732 (not (= lambda!110769 lambda!110764))))

(declare-fun bs!526733 () Bool)

(assert (= bs!526733 (and b!2975390 b!2974908)))

(assert (=> bs!526733 (not (= lambda!110769 lambda!110735))))

(assert (=> bs!526733 (= (and (= (reg!9612 r!17423) lt!1036872) (= r!17423 lt!1036871)) (= lambda!110769 lambda!110736))))

(declare-fun bs!526734 () Bool)

(assert (= bs!526734 (and b!2975390 d!842999)))

(assert (=> bs!526734 (= (and (= (reg!9612 r!17423) lt!1036872) (= r!17423 (Star!9283 lt!1036872))) (= lambda!110769 lambda!110748))))

(declare-fun bs!526735 () Bool)

(assert (= bs!526735 (and b!2975390 b!2975147)))

(assert (=> bs!526735 (= (and (= (reg!9612 r!17423) (reg!9612 lt!1036871)) (= r!17423 lt!1036871)) (= lambda!110769 lambda!110762))))

(assert (=> bs!526734 (not (= lambda!110769 lambda!110747))))

(declare-fun bs!526736 () Bool)

(assert (= bs!526736 (and b!2975390 d!843005)))

(assert (=> bs!526736 (not (= lambda!110769 lambda!110753))))

(assert (=> b!2975390 true))

(assert (=> b!2975390 true))

(declare-fun bs!526737 () Bool)

(declare-fun b!2975391 () Bool)

(assert (= bs!526737 (and b!2975391 b!2975390)))

(declare-fun lambda!110770 () Int)

(assert (=> bs!526737 (not (= lambda!110770 lambda!110769))))

(declare-fun bs!526738 () Bool)

(assert (= bs!526738 (and b!2975391 b!2975148)))

(assert (=> bs!526738 (= (and (= (regOne!19078 r!17423) (regOne!19078 lt!1036871)) (= (regTwo!19078 r!17423) (regTwo!19078 lt!1036871))) (= lambda!110770 lambda!110764))))

(declare-fun bs!526739 () Bool)

(assert (= bs!526739 (and b!2975391 b!2974908)))

(assert (=> bs!526739 (not (= lambda!110770 lambda!110735))))

(assert (=> bs!526739 (not (= lambda!110770 lambda!110736))))

(declare-fun bs!526740 () Bool)

(assert (= bs!526740 (and b!2975391 d!842999)))

(assert (=> bs!526740 (not (= lambda!110770 lambda!110748))))

(declare-fun bs!526741 () Bool)

(assert (= bs!526741 (and b!2975391 b!2975147)))

(assert (=> bs!526741 (not (= lambda!110770 lambda!110762))))

(assert (=> bs!526740 (not (= lambda!110770 lambda!110747))))

(declare-fun bs!526742 () Bool)

(assert (= bs!526742 (and b!2975391 d!843005)))

(assert (=> bs!526742 (not (= lambda!110770 lambda!110753))))

(assert (=> b!2975391 true))

(assert (=> b!2975391 true))

(declare-fun e!1871771 () Bool)

(declare-fun call!198390 () Bool)

(assert (=> b!2975390 (= e!1871771 call!198390)))

(declare-fun e!1871773 () Bool)

(assert (=> b!2975391 (= e!1871773 call!198390)))

(declare-fun b!2975392 () Bool)

(declare-fun e!1871767 () Bool)

(assert (=> b!2975392 (= e!1871767 (matchRSpec!1420 (regTwo!19079 r!17423) s!11993))))

(declare-fun b!2975393 () Bool)

(declare-fun e!1871770 () Bool)

(declare-fun e!1871769 () Bool)

(assert (=> b!2975393 (= e!1871770 e!1871769)))

(declare-fun res!1226877 () Bool)

(assert (=> b!2975393 (= res!1226877 (not ((_ is EmptyLang!9283) r!17423)))))

(assert (=> b!2975393 (=> (not res!1226877) (not e!1871769))))

(declare-fun bm!198385 () Bool)

(declare-fun c!488475 () Bool)

(assert (=> bm!198385 (= call!198390 (Exists!1563 (ite c!488475 lambda!110769 lambda!110770)))))

(declare-fun b!2975394 () Bool)

(declare-fun c!488474 () Bool)

(assert (=> b!2975394 (= c!488474 ((_ is Union!9283) r!17423))))

(declare-fun e!1871772 () Bool)

(declare-fun e!1871768 () Bool)

(assert (=> b!2975394 (= e!1871772 e!1871768)))

(declare-fun d!843049 () Bool)

(declare-fun c!488476 () Bool)

(assert (=> d!843049 (= c!488476 ((_ is EmptyExpr!9283) r!17423))))

(assert (=> d!843049 (= (matchRSpec!1420 r!17423 s!11993) e!1871770)))

(declare-fun b!2975395 () Bool)

(declare-fun c!488473 () Bool)

(assert (=> b!2975395 (= c!488473 ((_ is ElementMatch!9283) r!17423))))

(assert (=> b!2975395 (= e!1871769 e!1871772)))

(declare-fun b!2975396 () Bool)

(declare-fun res!1226876 () Bool)

(assert (=> b!2975396 (=> res!1226876 e!1871771)))

(declare-fun call!198391 () Bool)

(assert (=> b!2975396 (= res!1226876 call!198391)))

(assert (=> b!2975396 (= e!1871773 e!1871771)))

(declare-fun b!2975397 () Bool)

(assert (=> b!2975397 (= e!1871772 (= s!11993 (Cons!35024 (c!488339 r!17423) Nil!35024)))))

(declare-fun b!2975398 () Bool)

(assert (=> b!2975398 (= e!1871768 e!1871773)))

(assert (=> b!2975398 (= c!488475 ((_ is Star!9283) r!17423))))

(declare-fun b!2975399 () Bool)

(assert (=> b!2975399 (= e!1871768 e!1871767)))

(declare-fun res!1226875 () Bool)

(assert (=> b!2975399 (= res!1226875 (matchRSpec!1420 (regOne!19079 r!17423) s!11993))))

(assert (=> b!2975399 (=> res!1226875 e!1871767)))

(declare-fun bm!198386 () Bool)

(assert (=> bm!198386 (= call!198391 (isEmpty!19265 s!11993))))

(declare-fun b!2975400 () Bool)

(assert (=> b!2975400 (= e!1871770 call!198391)))

(assert (= (and d!843049 c!488476) b!2975400))

(assert (= (and d!843049 (not c!488476)) b!2975393))

(assert (= (and b!2975393 res!1226877) b!2975395))

(assert (= (and b!2975395 c!488473) b!2975397))

(assert (= (and b!2975395 (not c!488473)) b!2975394))

(assert (= (and b!2975394 c!488474) b!2975399))

(assert (= (and b!2975394 (not c!488474)) b!2975398))

(assert (= (and b!2975399 (not res!1226875)) b!2975392))

(assert (= (and b!2975398 c!488475) b!2975396))

(assert (= (and b!2975398 (not c!488475)) b!2975391))

(assert (= (and b!2975396 (not res!1226876)) b!2975390))

(assert (= (or b!2975390 b!2975391) bm!198385))

(assert (= (or b!2975400 b!2975396) bm!198386))

(declare-fun m!3339847 () Bool)

(assert (=> b!2975392 m!3339847))

(declare-fun m!3339849 () Bool)

(assert (=> bm!198385 m!3339849))

(declare-fun m!3339851 () Bool)

(assert (=> b!2975399 m!3339851))

(assert (=> bm!198386 m!3339661))

(assert (=> b!2974906 d!843049))

(declare-fun d!843051 () Bool)

(declare-fun e!1871774 () Bool)

(assert (=> d!843051 e!1871774))

(declare-fun c!488478 () Bool)

(assert (=> d!843051 (= c!488478 ((_ is EmptyExpr!9283) r!17423))))

(declare-fun lt!1036948 () Bool)

(declare-fun e!1871775 () Bool)

(assert (=> d!843051 (= lt!1036948 e!1871775)))

(declare-fun c!488479 () Bool)

(assert (=> d!843051 (= c!488479 (isEmpty!19265 s!11993))))

(assert (=> d!843051 (validRegex!4016 r!17423)))

(assert (=> d!843051 (= (matchR!4165 r!17423 s!11993) lt!1036948)))

(declare-fun b!2975401 () Bool)

(declare-fun res!1226885 () Bool)

(declare-fun e!1871780 () Bool)

(assert (=> b!2975401 (=> res!1226885 e!1871780)))

(assert (=> b!2975401 (= res!1226885 (not (isEmpty!19265 (tail!4861 s!11993))))))

(declare-fun b!2975402 () Bool)

(declare-fun res!1226883 () Bool)

(declare-fun e!1871776 () Bool)

(assert (=> b!2975402 (=> res!1226883 e!1871776)))

(declare-fun e!1871778 () Bool)

(assert (=> b!2975402 (= res!1226883 e!1871778)))

(declare-fun res!1226879 () Bool)

(assert (=> b!2975402 (=> (not res!1226879) (not e!1871778))))

(assert (=> b!2975402 (= res!1226879 lt!1036948)))

(declare-fun b!2975403 () Bool)

(declare-fun res!1226881 () Bool)

(assert (=> b!2975403 (=> res!1226881 e!1871776)))

(assert (=> b!2975403 (= res!1226881 (not ((_ is ElementMatch!9283) r!17423)))))

(declare-fun e!1871777 () Bool)

(assert (=> b!2975403 (= e!1871777 e!1871776)))

(declare-fun b!2975404 () Bool)

(assert (=> b!2975404 (= e!1871774 e!1871777)))

(declare-fun c!488477 () Bool)

(assert (=> b!2975404 (= c!488477 ((_ is EmptyLang!9283) r!17423))))

(declare-fun b!2975405 () Bool)

(declare-fun call!198402 () Bool)

(assert (=> b!2975405 (= e!1871774 (= lt!1036948 call!198402))))

(declare-fun b!2975406 () Bool)

(assert (=> b!2975406 (= e!1871778 (= (head!6635 s!11993) (c!488339 r!17423)))))

(declare-fun b!2975407 () Bool)

(assert (=> b!2975407 (= e!1871775 (matchR!4165 (derivativeStep!2576 r!17423 (head!6635 s!11993)) (tail!4861 s!11993)))))

(declare-fun b!2975408 () Bool)

(declare-fun e!1871779 () Bool)

(assert (=> b!2975408 (= e!1871779 e!1871780)))

(declare-fun res!1226878 () Bool)

(assert (=> b!2975408 (=> res!1226878 e!1871780)))

(assert (=> b!2975408 (= res!1226878 call!198402)))

(declare-fun b!2975409 () Bool)

(assert (=> b!2975409 (= e!1871777 (not lt!1036948))))

(declare-fun b!2975410 () Bool)

(assert (=> b!2975410 (= e!1871776 e!1871779)))

(declare-fun res!1226882 () Bool)

(assert (=> b!2975410 (=> (not res!1226882) (not e!1871779))))

(assert (=> b!2975410 (= res!1226882 (not lt!1036948))))

(declare-fun b!2975411 () Bool)

(declare-fun res!1226884 () Bool)

(assert (=> b!2975411 (=> (not res!1226884) (not e!1871778))))

(assert (=> b!2975411 (= res!1226884 (not call!198402))))

(declare-fun b!2975412 () Bool)

(declare-fun res!1226880 () Bool)

(assert (=> b!2975412 (=> (not res!1226880) (not e!1871778))))

(assert (=> b!2975412 (= res!1226880 (isEmpty!19265 (tail!4861 s!11993)))))

(declare-fun b!2975413 () Bool)

(assert (=> b!2975413 (= e!1871780 (not (= (head!6635 s!11993) (c!488339 r!17423))))))

(declare-fun b!2975414 () Bool)

(assert (=> b!2975414 (= e!1871775 (nullable!2975 r!17423))))

(declare-fun bm!198397 () Bool)

(assert (=> bm!198397 (= call!198402 (isEmpty!19265 s!11993))))

(assert (= (and d!843051 c!488479) b!2975414))

(assert (= (and d!843051 (not c!488479)) b!2975407))

(assert (= (and d!843051 c!488478) b!2975405))

(assert (= (and d!843051 (not c!488478)) b!2975404))

(assert (= (and b!2975404 c!488477) b!2975409))

(assert (= (and b!2975404 (not c!488477)) b!2975403))

(assert (= (and b!2975403 (not res!1226881)) b!2975402))

(assert (= (and b!2975402 res!1226879) b!2975411))

(assert (= (and b!2975411 res!1226884) b!2975412))

(assert (= (and b!2975412 res!1226880) b!2975406))

(assert (= (and b!2975402 (not res!1226883)) b!2975410))

(assert (= (and b!2975410 res!1226882) b!2975408))

(assert (= (and b!2975408 (not res!1226878)) b!2975401))

(assert (= (and b!2975401 (not res!1226885)) b!2975413))

(assert (= (or b!2975405 b!2975408 b!2975411) bm!198397))

(assert (=> b!2975406 m!3339785))

(assert (=> b!2975401 m!3339787))

(assert (=> b!2975401 m!3339787))

(assert (=> b!2975401 m!3339789))

(assert (=> bm!198397 m!3339661))

(assert (=> b!2975413 m!3339785))

(assert (=> b!2975412 m!3339787))

(assert (=> b!2975412 m!3339787))

(assert (=> b!2975412 m!3339789))

(assert (=> b!2975407 m!3339785))

(assert (=> b!2975407 m!3339785))

(declare-fun m!3339853 () Bool)

(assert (=> b!2975407 m!3339853))

(assert (=> b!2975407 m!3339787))

(assert (=> b!2975407 m!3339853))

(assert (=> b!2975407 m!3339787))

(declare-fun m!3339855 () Bool)

(assert (=> b!2975407 m!3339855))

(declare-fun m!3339857 () Bool)

(assert (=> b!2975414 m!3339857))

(assert (=> d!843051 m!3339661))

(assert (=> d!843051 m!3339637))

(assert (=> b!2974906 d!843051))

(declare-fun d!843053 () Bool)

(assert (=> d!843053 (= (matchR!4165 r!17423 s!11993) (matchRSpec!1420 r!17423 s!11993))))

(declare-fun lt!1036949 () Unit!48945)

(assert (=> d!843053 (= lt!1036949 (choose!17597 r!17423 s!11993))))

(assert (=> d!843053 (validRegex!4016 r!17423)))

(assert (=> d!843053 (= (mainMatchTheorem!1420 r!17423 s!11993) lt!1036949)))

(declare-fun bs!526743 () Bool)

(assert (= bs!526743 d!843053))

(assert (=> bs!526743 m!3339655))

(assert (=> bs!526743 m!3339653))

(declare-fun m!3339859 () Bool)

(assert (=> bs!526743 m!3339859))

(assert (=> bs!526743 m!3339637))

(assert (=> b!2974906 d!843053))

(declare-fun b!2975421 () Bool)

(declare-fun e!1871785 () Bool)

(declare-fun tp!948120 () Bool)

(assert (=> b!2975421 (= e!1871785 (and tp_is_empty!16129 tp!948120))))

(assert (=> b!2974909 (= tp!948117 e!1871785)))

(assert (= (and b!2974909 ((_ is Cons!35024) (t!234213 s!11993))) b!2975421))

(declare-fun b!2975434 () Bool)

(declare-fun e!1871788 () Bool)

(declare-fun tp!948135 () Bool)

(assert (=> b!2975434 (= e!1871788 tp!948135)))

(declare-fun b!2975433 () Bool)

(declare-fun tp!948132 () Bool)

(declare-fun tp!948134 () Bool)

(assert (=> b!2975433 (= e!1871788 (and tp!948132 tp!948134))))

(declare-fun b!2975435 () Bool)

(declare-fun tp!948131 () Bool)

(declare-fun tp!948133 () Bool)

(assert (=> b!2975435 (= e!1871788 (and tp!948131 tp!948133))))

(assert (=> b!2974905 (= tp!948116 e!1871788)))

(declare-fun b!2975432 () Bool)

(assert (=> b!2975432 (= e!1871788 tp_is_empty!16129)))

(assert (= (and b!2974905 ((_ is ElementMatch!9283) (reg!9612 r!17423))) b!2975432))

(assert (= (and b!2974905 ((_ is Concat!14604) (reg!9612 r!17423))) b!2975433))

(assert (= (and b!2974905 ((_ is Star!9283) (reg!9612 r!17423))) b!2975434))

(assert (= (and b!2974905 ((_ is Union!9283) (reg!9612 r!17423))) b!2975435))

(declare-fun b!2975438 () Bool)

(declare-fun e!1871789 () Bool)

(declare-fun tp!948140 () Bool)

(assert (=> b!2975438 (= e!1871789 tp!948140)))

(declare-fun b!2975437 () Bool)

(declare-fun tp!948137 () Bool)

(declare-fun tp!948139 () Bool)

(assert (=> b!2975437 (= e!1871789 (and tp!948137 tp!948139))))

(declare-fun b!2975439 () Bool)

(declare-fun tp!948136 () Bool)

(declare-fun tp!948138 () Bool)

(assert (=> b!2975439 (= e!1871789 (and tp!948136 tp!948138))))

(assert (=> b!2974899 (= tp!948112 e!1871789)))

(declare-fun b!2975436 () Bool)

(assert (=> b!2975436 (= e!1871789 tp_is_empty!16129)))

(assert (= (and b!2974899 ((_ is ElementMatch!9283) (regOne!19078 r!17423))) b!2975436))

(assert (= (and b!2974899 ((_ is Concat!14604) (regOne!19078 r!17423))) b!2975437))

(assert (= (and b!2974899 ((_ is Star!9283) (regOne!19078 r!17423))) b!2975438))

(assert (= (and b!2974899 ((_ is Union!9283) (regOne!19078 r!17423))) b!2975439))

(declare-fun b!2975442 () Bool)

(declare-fun e!1871790 () Bool)

(declare-fun tp!948145 () Bool)

(assert (=> b!2975442 (= e!1871790 tp!948145)))

(declare-fun b!2975441 () Bool)

(declare-fun tp!948142 () Bool)

(declare-fun tp!948144 () Bool)

(assert (=> b!2975441 (= e!1871790 (and tp!948142 tp!948144))))

(declare-fun b!2975443 () Bool)

(declare-fun tp!948141 () Bool)

(declare-fun tp!948143 () Bool)

(assert (=> b!2975443 (= e!1871790 (and tp!948141 tp!948143))))

(assert (=> b!2974899 (= tp!948115 e!1871790)))

(declare-fun b!2975440 () Bool)

(assert (=> b!2975440 (= e!1871790 tp_is_empty!16129)))

(assert (= (and b!2974899 ((_ is ElementMatch!9283) (regTwo!19078 r!17423))) b!2975440))

(assert (= (and b!2974899 ((_ is Concat!14604) (regTwo!19078 r!17423))) b!2975441))

(assert (= (and b!2974899 ((_ is Star!9283) (regTwo!19078 r!17423))) b!2975442))

(assert (= (and b!2974899 ((_ is Union!9283) (regTwo!19078 r!17423))) b!2975443))

(declare-fun b!2975446 () Bool)

(declare-fun e!1871791 () Bool)

(declare-fun tp!948150 () Bool)

(assert (=> b!2975446 (= e!1871791 tp!948150)))

(declare-fun b!2975445 () Bool)

(declare-fun tp!948147 () Bool)

(declare-fun tp!948149 () Bool)

(assert (=> b!2975445 (= e!1871791 (and tp!948147 tp!948149))))

(declare-fun b!2975447 () Bool)

(declare-fun tp!948146 () Bool)

(declare-fun tp!948148 () Bool)

(assert (=> b!2975447 (= e!1871791 (and tp!948146 tp!948148))))

(assert (=> b!2974901 (= tp!948113 e!1871791)))

(declare-fun b!2975444 () Bool)

(assert (=> b!2975444 (= e!1871791 tp_is_empty!16129)))

(assert (= (and b!2974901 ((_ is ElementMatch!9283) (regOne!19079 r!17423))) b!2975444))

(assert (= (and b!2974901 ((_ is Concat!14604) (regOne!19079 r!17423))) b!2975445))

(assert (= (and b!2974901 ((_ is Star!9283) (regOne!19079 r!17423))) b!2975446))

(assert (= (and b!2974901 ((_ is Union!9283) (regOne!19079 r!17423))) b!2975447))

(declare-fun b!2975450 () Bool)

(declare-fun e!1871792 () Bool)

(declare-fun tp!948155 () Bool)

(assert (=> b!2975450 (= e!1871792 tp!948155)))

(declare-fun b!2975449 () Bool)

(declare-fun tp!948152 () Bool)

(declare-fun tp!948154 () Bool)

(assert (=> b!2975449 (= e!1871792 (and tp!948152 tp!948154))))

(declare-fun b!2975451 () Bool)

(declare-fun tp!948151 () Bool)

(declare-fun tp!948153 () Bool)

(assert (=> b!2975451 (= e!1871792 (and tp!948151 tp!948153))))

(assert (=> b!2974901 (= tp!948114 e!1871792)))

(declare-fun b!2975448 () Bool)

(assert (=> b!2975448 (= e!1871792 tp_is_empty!16129)))

(assert (= (and b!2974901 ((_ is ElementMatch!9283) (regTwo!19079 r!17423))) b!2975448))

(assert (= (and b!2974901 ((_ is Concat!14604) (regTwo!19079 r!17423))) b!2975449))

(assert (= (and b!2974901 ((_ is Star!9283) (regTwo!19079 r!17423))) b!2975450))

(assert (= (and b!2974901 ((_ is Union!9283) (regTwo!19079 r!17423))) b!2975451))

(check-sat (not b!2975443) (not bm!198348) (not b!2975314) (not bm!198353) (not b!2975156) (not bm!198371) (not b!2975326) (not b!2975412) (not b!2975015) (not b!2975016) (not b!2975438) (not d!842999) (not bm!198373) (not bm!198377) (not b!2975220) (not bm!198350) (not bm!198372) (not bm!198378) (not bm!198343) (not b!2975439) (not b!2975213) (not b!2975168) (not d!843051) (not b!2975407) (not d!843053) (not b!2975445) (not b!2975421) (not bm!198316) (not b!2975392) (not d!842991) (not b!2975214) (not b!2975021) (not b!2975450) (not b!2975208) (not b!2974933) (not d!843039) (not d!843005) (not bm!198385) (not b!2975435) (not b!2975447) (not bm!198318) (not d!842993) (not b!2975434) (not bm!198344) (not b!2975399) (not b!2975149) (not b!2975221) (not b!2975437) (not b!2975219) (not d!843009) (not b!2975413) (not b!2975022) (not bm!198376) (not b!2975451) (not d!843029) (not d!843021) (not bm!198397) (not d!842989) (not b!2975019) (not b!2975442) (not b!2975449) (not b!2975406) (not b!2975020) (not bm!198380) (not b!2975401) (not b!2975441) (not bm!198386) (not b!2975382) tp_is_empty!16129 (not b!2975433) (not b!2975446) (not b!2975414))
(check-sat)
