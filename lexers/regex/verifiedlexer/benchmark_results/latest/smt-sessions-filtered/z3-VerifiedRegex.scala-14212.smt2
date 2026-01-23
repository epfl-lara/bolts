; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744374 () Bool)

(assert start!744374)

(declare-fun b!7885895 () Bool)

(declare-fun res!3130634 () Bool)

(declare-fun e!4655996 () Bool)

(assert (=> b!7885895 (=> (not res!3130634) (not e!4655996))))

(declare-datatypes ((C!42720 0))(
  ( (C!42721 (val!31822 Int)) )
))
(declare-datatypes ((List!74054 0))(
  ( (Nil!73930) (Cons!73930 (h!80378 C!42720) (t!388789 List!74054)) )
))
(declare-fun s!9586 () List!74054)

(declare-fun isEmpty!42419 (List!74054) Bool)

(assert (=> b!7885895 (= res!3130634 (not (isEmpty!42419 s!9586)))))

(declare-fun b!7885896 () Bool)

(declare-fun e!4655995 () Bool)

(declare-fun tp_is_empty!52793 () Bool)

(declare-fun tp!2345826 () Bool)

(assert (=> b!7885896 (= e!4655995 (and tp_is_empty!52793 tp!2345826))))

(declare-fun b!7885897 () Bool)

(declare-fun e!4655998 () Bool)

(declare-fun tp!2345820 () Bool)

(declare-fun tp!2345825 () Bool)

(assert (=> b!7885897 (= e!4655998 (and tp!2345820 tp!2345825))))

(declare-fun b!7885898 () Bool)

(assert (=> b!7885898 (= e!4655998 tp_is_empty!52793)))

(declare-fun b!7885899 () Bool)

(declare-fun res!3130638 () Bool)

(assert (=> b!7885899 (=> (not res!3130638) (not e!4655996))))

(declare-datatypes ((Regex!21197 0))(
  ( (ElementMatch!21197 (c!1447685 C!42720)) (Concat!30042 (regOne!42906 Regex!21197) (regTwo!42906 Regex!21197)) (EmptyExpr!21197) (Star!21197 (reg!21526 Regex!21197)) (EmptyLang!21197) (Union!21197 (regOne!42907 Regex!21197) (regTwo!42907 Regex!21197)) )
))
(declare-fun r!14100 () Regex!21197)

(get-info :version)

(assert (=> b!7885899 (= res!3130638 (and (not ((_ is EmptyExpr!21197) r!14100)) (not ((_ is EmptyLang!21197) r!14100)) (not ((_ is ElementMatch!21197) r!14100)) (not ((_ is Union!21197) r!14100)) ((_ is Star!21197) r!14100)))))

(declare-fun b!7885900 () Bool)

(declare-fun res!3130635 () Bool)

(assert (=> b!7885900 (=> (not res!3130635) (not e!4655996))))

(declare-datatypes ((tuple2!70040 0))(
  ( (tuple2!70041 (_1!38323 List!74054) (_2!38323 List!74054)) )
))
(declare-fun cut!2 () tuple2!70040)

(assert (=> b!7885900 (= res!3130635 (not (isEmpty!42419 (_1!38323 cut!2))))))

(declare-fun b!7885901 () Bool)

(declare-fun tp!2345819 () Bool)

(assert (=> b!7885901 (= e!4655998 tp!2345819)))

(declare-fun b!7885902 () Bool)

(declare-fun tp!2345821 () Bool)

(declare-fun tp!2345822 () Bool)

(assert (=> b!7885902 (= e!4655998 (and tp!2345821 tp!2345822))))

(declare-fun b!7885903 () Bool)

(declare-fun validRegex!11607 (Regex!21197) Bool)

(assert (=> b!7885903 (= e!4655996 (not (validRegex!11607 (reg!21526 r!14100))))))

(declare-fun b!7885904 () Bool)

(declare-fun e!4655997 () Bool)

(declare-fun tp!2345823 () Bool)

(assert (=> b!7885904 (= e!4655997 (and tp_is_empty!52793 tp!2345823))))

(declare-fun res!3130636 () Bool)

(assert (=> start!744374 (=> (not res!3130636) (not e!4655996))))

(assert (=> start!744374 (= res!3130636 (validRegex!11607 r!14100))))

(assert (=> start!744374 e!4655996))

(assert (=> start!744374 e!4655998))

(assert (=> start!744374 e!4655995))

(declare-fun e!4655999 () Bool)

(assert (=> start!744374 (and e!4655999 e!4655997)))

(declare-fun b!7885905 () Bool)

(declare-fun res!3130637 () Bool)

(assert (=> b!7885905 (=> (not res!3130637) (not e!4655996))))

(declare-fun ++!18105 (List!74054 List!74054) List!74054)

(assert (=> b!7885905 (= res!3130637 (= (++!18105 (_1!38323 cut!2) (_2!38323 cut!2)) s!9586))))

(declare-fun b!7885906 () Bool)

(declare-fun tp!2345824 () Bool)

(assert (=> b!7885906 (= e!4655999 (and tp_is_empty!52793 tp!2345824))))

(assert (= (and start!744374 res!3130636) b!7885899))

(assert (= (and b!7885899 res!3130638) b!7885895))

(assert (= (and b!7885895 res!3130634) b!7885905))

(assert (= (and b!7885905 res!3130637) b!7885900))

(assert (= (and b!7885900 res!3130635) b!7885903))

(assert (= (and start!744374 ((_ is ElementMatch!21197) r!14100)) b!7885898))

(assert (= (and start!744374 ((_ is Concat!30042) r!14100)) b!7885902))

(assert (= (and start!744374 ((_ is Star!21197) r!14100)) b!7885901))

(assert (= (and start!744374 ((_ is Union!21197) r!14100)) b!7885897))

(assert (= (and start!744374 ((_ is Cons!73930) s!9586)) b!7885896))

(assert (= (and start!744374 ((_ is Cons!73930) (_1!38323 cut!2))) b!7885906))

(assert (= (and start!744374 ((_ is Cons!73930) (_2!38323 cut!2))) b!7885904))

(declare-fun m!8269130 () Bool)

(assert (=> b!7885903 m!8269130))

(declare-fun m!8269132 () Bool)

(assert (=> start!744374 m!8269132))

(declare-fun m!8269134 () Bool)

(assert (=> b!7885895 m!8269134))

(declare-fun m!8269136 () Bool)

(assert (=> b!7885900 m!8269136))

(declare-fun m!8269138 () Bool)

(assert (=> b!7885905 m!8269138))

(check-sat (not b!7885906) (not b!7885896) (not b!7885903) (not b!7885904) (not b!7885900) tp_is_empty!52793 (not b!7885902) (not b!7885895) (not b!7885897) (not start!744374) (not b!7885905) (not b!7885901))
(check-sat)
(get-model)

(declare-fun d!2356469 () Bool)

(assert (=> d!2356469 (= (isEmpty!42419 (_1!38323 cut!2)) ((_ is Nil!73930) (_1!38323 cut!2)))))

(assert (=> b!7885900 d!2356469))

(declare-fun d!2356473 () Bool)

(assert (=> d!2356473 (= (isEmpty!42419 s!9586) ((_ is Nil!73930) s!9586))))

(assert (=> b!7885895 d!2356473))

(declare-fun b!7885943 () Bool)

(declare-fun e!4656030 () Bool)

(declare-fun call!731501 () Bool)

(assert (=> b!7885943 (= e!4656030 call!731501)))

(declare-fun call!731502 () Bool)

(declare-fun bm!731496 () Bool)

(declare-fun c!1447694 () Bool)

(declare-fun c!1447695 () Bool)

(assert (=> bm!731496 (= call!731502 (validRegex!11607 (ite c!1447694 (reg!21526 (reg!21526 r!14100)) (ite c!1447695 (regTwo!42907 (reg!21526 r!14100)) (regOne!42906 (reg!21526 r!14100))))))))

(declare-fun b!7885944 () Bool)

(declare-fun e!4656034 () Bool)

(declare-fun e!4656032 () Bool)

(assert (=> b!7885944 (= e!4656034 e!4656032)))

(assert (=> b!7885944 (= c!1447694 ((_ is Star!21197) (reg!21526 r!14100)))))

(declare-fun b!7885945 () Bool)

(declare-fun e!4656033 () Bool)

(assert (=> b!7885945 (= e!4656032 e!4656033)))

(declare-fun res!3130662 () Bool)

(declare-fun nullable!9453 (Regex!21197) Bool)

(assert (=> b!7885945 (= res!3130662 (not (nullable!9453 (reg!21526 (reg!21526 r!14100)))))))

(assert (=> b!7885945 (=> (not res!3130662) (not e!4656033))))

(declare-fun bm!731497 () Bool)

(declare-fun call!731503 () Bool)

(assert (=> bm!731497 (= call!731503 (validRegex!11607 (ite c!1447695 (regOne!42907 (reg!21526 r!14100)) (regTwo!42906 (reg!21526 r!14100)))))))

(declare-fun b!7885946 () Bool)

(declare-fun e!4656028 () Bool)

(declare-fun e!4656031 () Bool)

(assert (=> b!7885946 (= e!4656028 e!4656031)))

(declare-fun res!3130659 () Bool)

(assert (=> b!7885946 (=> (not res!3130659) (not e!4656031))))

(assert (=> b!7885946 (= res!3130659 call!731501)))

(declare-fun d!2356475 () Bool)

(declare-fun res!3130663 () Bool)

(assert (=> d!2356475 (=> res!3130663 e!4656034)))

(assert (=> d!2356475 (= res!3130663 ((_ is ElementMatch!21197) (reg!21526 r!14100)))))

(assert (=> d!2356475 (= (validRegex!11607 (reg!21526 r!14100)) e!4656034)))

(declare-fun b!7885947 () Bool)

(declare-fun e!4656029 () Bool)

(assert (=> b!7885947 (= e!4656032 e!4656029)))

(assert (=> b!7885947 (= c!1447695 ((_ is Union!21197) (reg!21526 r!14100)))))

(declare-fun b!7885948 () Bool)

(declare-fun res!3130660 () Bool)

(assert (=> b!7885948 (=> (not res!3130660) (not e!4656030))))

(assert (=> b!7885948 (= res!3130660 call!731503)))

(assert (=> b!7885948 (= e!4656029 e!4656030)))

(declare-fun b!7885949 () Bool)

(declare-fun res!3130661 () Bool)

(assert (=> b!7885949 (=> res!3130661 e!4656028)))

(assert (=> b!7885949 (= res!3130661 (not ((_ is Concat!30042) (reg!21526 r!14100))))))

(assert (=> b!7885949 (= e!4656029 e!4656028)))

(declare-fun b!7885950 () Bool)

(assert (=> b!7885950 (= e!4656031 call!731503)))

(declare-fun b!7885951 () Bool)

(assert (=> b!7885951 (= e!4656033 call!731502)))

(declare-fun bm!731498 () Bool)

(assert (=> bm!731498 (= call!731501 call!731502)))

(assert (= (and d!2356475 (not res!3130663)) b!7885944))

(assert (= (and b!7885944 c!1447694) b!7885945))

(assert (= (and b!7885944 (not c!1447694)) b!7885947))

(assert (= (and b!7885945 res!3130662) b!7885951))

(assert (= (and b!7885947 c!1447695) b!7885948))

(assert (= (and b!7885947 (not c!1447695)) b!7885949))

(assert (= (and b!7885948 res!3130660) b!7885943))

(assert (= (and b!7885949 (not res!3130661)) b!7885946))

(assert (= (and b!7885946 res!3130659) b!7885950))

(assert (= (or b!7885943 b!7885946) bm!731498))

(assert (= (or b!7885948 b!7885950) bm!731497))

(assert (= (or b!7885951 bm!731498) bm!731496))

(declare-fun m!8269140 () Bool)

(assert (=> bm!731496 m!8269140))

(declare-fun m!8269142 () Bool)

(assert (=> b!7885945 m!8269142))

(declare-fun m!8269144 () Bool)

(assert (=> bm!731497 m!8269144))

(assert (=> b!7885903 d!2356475))

(declare-fun b!7885952 () Bool)

(declare-fun e!4656037 () Bool)

(declare-fun call!731504 () Bool)

(assert (=> b!7885952 (= e!4656037 call!731504)))

(declare-fun c!1447696 () Bool)

(declare-fun bm!731499 () Bool)

(declare-fun c!1447697 () Bool)

(declare-fun call!731505 () Bool)

(assert (=> bm!731499 (= call!731505 (validRegex!11607 (ite c!1447696 (reg!21526 r!14100) (ite c!1447697 (regTwo!42907 r!14100) (regOne!42906 r!14100)))))))

(declare-fun b!7885953 () Bool)

(declare-fun e!4656041 () Bool)

(declare-fun e!4656039 () Bool)

(assert (=> b!7885953 (= e!4656041 e!4656039)))

(assert (=> b!7885953 (= c!1447696 ((_ is Star!21197) r!14100))))

(declare-fun b!7885954 () Bool)

(declare-fun e!4656040 () Bool)

(assert (=> b!7885954 (= e!4656039 e!4656040)))

(declare-fun res!3130667 () Bool)

(assert (=> b!7885954 (= res!3130667 (not (nullable!9453 (reg!21526 r!14100))))))

(assert (=> b!7885954 (=> (not res!3130667) (not e!4656040))))

(declare-fun bm!731500 () Bool)

(declare-fun call!731506 () Bool)

(assert (=> bm!731500 (= call!731506 (validRegex!11607 (ite c!1447697 (regOne!42907 r!14100) (regTwo!42906 r!14100))))))

(declare-fun b!7885955 () Bool)

(declare-fun e!4656035 () Bool)

(declare-fun e!4656038 () Bool)

(assert (=> b!7885955 (= e!4656035 e!4656038)))

(declare-fun res!3130664 () Bool)

(assert (=> b!7885955 (=> (not res!3130664) (not e!4656038))))

(assert (=> b!7885955 (= res!3130664 call!731504)))

(declare-fun d!2356477 () Bool)

(declare-fun res!3130668 () Bool)

(assert (=> d!2356477 (=> res!3130668 e!4656041)))

(assert (=> d!2356477 (= res!3130668 ((_ is ElementMatch!21197) r!14100))))

(assert (=> d!2356477 (= (validRegex!11607 r!14100) e!4656041)))

(declare-fun b!7885956 () Bool)

(declare-fun e!4656036 () Bool)

(assert (=> b!7885956 (= e!4656039 e!4656036)))

(assert (=> b!7885956 (= c!1447697 ((_ is Union!21197) r!14100))))

(declare-fun b!7885957 () Bool)

(declare-fun res!3130665 () Bool)

(assert (=> b!7885957 (=> (not res!3130665) (not e!4656037))))

(assert (=> b!7885957 (= res!3130665 call!731506)))

(assert (=> b!7885957 (= e!4656036 e!4656037)))

(declare-fun b!7885958 () Bool)

(declare-fun res!3130666 () Bool)

(assert (=> b!7885958 (=> res!3130666 e!4656035)))

(assert (=> b!7885958 (= res!3130666 (not ((_ is Concat!30042) r!14100)))))

(assert (=> b!7885958 (= e!4656036 e!4656035)))

(declare-fun b!7885959 () Bool)

(assert (=> b!7885959 (= e!4656038 call!731506)))

(declare-fun b!7885960 () Bool)

(assert (=> b!7885960 (= e!4656040 call!731505)))

(declare-fun bm!731501 () Bool)

(assert (=> bm!731501 (= call!731504 call!731505)))

(assert (= (and d!2356477 (not res!3130668)) b!7885953))

(assert (= (and b!7885953 c!1447696) b!7885954))

(assert (= (and b!7885953 (not c!1447696)) b!7885956))

(assert (= (and b!7885954 res!3130667) b!7885960))

(assert (= (and b!7885956 c!1447697) b!7885957))

(assert (= (and b!7885956 (not c!1447697)) b!7885958))

(assert (= (and b!7885957 res!3130665) b!7885952))

(assert (= (and b!7885958 (not res!3130666)) b!7885955))

(assert (= (and b!7885955 res!3130664) b!7885959))

(assert (= (or b!7885952 b!7885955) bm!731501))

(assert (= (or b!7885957 b!7885959) bm!731500))

(assert (= (or b!7885960 bm!731501) bm!731499))

(declare-fun m!8269146 () Bool)

(assert (=> bm!731499 m!8269146))

(declare-fun m!8269148 () Bool)

(assert (=> b!7885954 m!8269148))

(declare-fun m!8269150 () Bool)

(assert (=> bm!731500 m!8269150))

(assert (=> start!744374 d!2356477))

(declare-fun d!2356479 () Bool)

(declare-fun e!4656057 () Bool)

(assert (=> d!2356479 e!4656057))

(declare-fun res!3130683 () Bool)

(assert (=> d!2356479 (=> (not res!3130683) (not e!4656057))))

(declare-fun lt!2681368 () List!74054)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15686 (List!74054) (InoxSet C!42720))

(assert (=> d!2356479 (= res!3130683 (= (content!15686 lt!2681368) ((_ map or) (content!15686 (_1!38323 cut!2)) (content!15686 (_2!38323 cut!2)))))))

(declare-fun e!4656058 () List!74054)

(assert (=> d!2356479 (= lt!2681368 e!4656058)))

(declare-fun c!1447704 () Bool)

(assert (=> d!2356479 (= c!1447704 ((_ is Nil!73930) (_1!38323 cut!2)))))

(assert (=> d!2356479 (= (++!18105 (_1!38323 cut!2) (_2!38323 cut!2)) lt!2681368)))

(declare-fun b!7885986 () Bool)

(assert (=> b!7885986 (= e!4656058 (_2!38323 cut!2))))

(declare-fun b!7885987 () Bool)

(assert (=> b!7885987 (= e!4656058 (Cons!73930 (h!80378 (_1!38323 cut!2)) (++!18105 (t!388789 (_1!38323 cut!2)) (_2!38323 cut!2))))))

(declare-fun b!7885988 () Bool)

(declare-fun res!3130682 () Bool)

(assert (=> b!7885988 (=> (not res!3130682) (not e!4656057))))

(declare-fun size!42840 (List!74054) Int)

(assert (=> b!7885988 (= res!3130682 (= (size!42840 lt!2681368) (+ (size!42840 (_1!38323 cut!2)) (size!42840 (_2!38323 cut!2)))))))

(declare-fun b!7885989 () Bool)

(assert (=> b!7885989 (= e!4656057 (or (not (= (_2!38323 cut!2) Nil!73930)) (= lt!2681368 (_1!38323 cut!2))))))

(assert (= (and d!2356479 c!1447704) b!7885986))

(assert (= (and d!2356479 (not c!1447704)) b!7885987))

(assert (= (and d!2356479 res!3130683) b!7885988))

(assert (= (and b!7885988 res!3130682) b!7885989))

(declare-fun m!8269158 () Bool)

(assert (=> d!2356479 m!8269158))

(declare-fun m!8269160 () Bool)

(assert (=> d!2356479 m!8269160))

(declare-fun m!8269162 () Bool)

(assert (=> d!2356479 m!8269162))

(declare-fun m!8269164 () Bool)

(assert (=> b!7885987 m!8269164))

(declare-fun m!8269166 () Bool)

(assert (=> b!7885988 m!8269166))

(declare-fun m!8269168 () Bool)

(assert (=> b!7885988 m!8269168))

(declare-fun m!8269170 () Bool)

(assert (=> b!7885988 m!8269170))

(assert (=> b!7885905 d!2356479))

(declare-fun b!7885994 () Bool)

(declare-fun e!4656061 () Bool)

(declare-fun tp!2345829 () Bool)

(assert (=> b!7885994 (= e!4656061 (and tp_is_empty!52793 tp!2345829))))

(assert (=> b!7885906 (= tp!2345824 e!4656061)))

(assert (= (and b!7885906 ((_ is Cons!73930) (t!388789 (_1!38323 cut!2)))) b!7885994))

(declare-fun b!7886010 () Bool)

(declare-fun e!4656066 () Bool)

(declare-fun tp!2345841 () Bool)

(declare-fun tp!2345844 () Bool)

(assert (=> b!7886010 (= e!4656066 (and tp!2345841 tp!2345844))))

(declare-fun b!7886012 () Bool)

(declare-fun tp!2345840 () Bool)

(declare-fun tp!2345842 () Bool)

(assert (=> b!7886012 (= e!4656066 (and tp!2345840 tp!2345842))))

(assert (=> b!7885901 (= tp!2345819 e!4656066)))

(declare-fun b!7886009 () Bool)

(assert (=> b!7886009 (= e!4656066 tp_is_empty!52793)))

(declare-fun b!7886011 () Bool)

(declare-fun tp!2345843 () Bool)

(assert (=> b!7886011 (= e!4656066 tp!2345843)))

(assert (= (and b!7885901 ((_ is ElementMatch!21197) (reg!21526 r!14100))) b!7886009))

(assert (= (and b!7885901 ((_ is Concat!30042) (reg!21526 r!14100))) b!7886010))

(assert (= (and b!7885901 ((_ is Star!21197) (reg!21526 r!14100))) b!7886011))

(assert (= (and b!7885901 ((_ is Union!21197) (reg!21526 r!14100))) b!7886012))

(declare-fun b!7886013 () Bool)

(declare-fun e!4656067 () Bool)

(declare-fun tp!2345845 () Bool)

(assert (=> b!7886013 (= e!4656067 (and tp_is_empty!52793 tp!2345845))))

(assert (=> b!7885896 (= tp!2345826 e!4656067)))

(assert (= (and b!7885896 ((_ is Cons!73930) (t!388789 s!9586))) b!7886013))

(declare-fun b!7886019 () Bool)

(declare-fun e!4656075 () Bool)

(declare-fun tp!2345847 () Bool)

(declare-fun tp!2345850 () Bool)

(assert (=> b!7886019 (= e!4656075 (and tp!2345847 tp!2345850))))

(declare-fun b!7886022 () Bool)

(declare-fun tp!2345846 () Bool)

(declare-fun tp!2345848 () Bool)

(assert (=> b!7886022 (= e!4656075 (and tp!2345846 tp!2345848))))

(assert (=> b!7885902 (= tp!2345821 e!4656075)))

(declare-fun b!7886017 () Bool)

(assert (=> b!7886017 (= e!4656075 tp_is_empty!52793)))

(declare-fun b!7886020 () Bool)

(declare-fun tp!2345849 () Bool)

(assert (=> b!7886020 (= e!4656075 tp!2345849)))

(assert (= (and b!7885902 ((_ is ElementMatch!21197) (regOne!42906 r!14100))) b!7886017))

(assert (= (and b!7885902 ((_ is Concat!30042) (regOne!42906 r!14100))) b!7886019))

(assert (= (and b!7885902 ((_ is Star!21197) (regOne!42906 r!14100))) b!7886020))

(assert (= (and b!7885902 ((_ is Union!21197) (regOne!42906 r!14100))) b!7886022))

(declare-fun b!7886028 () Bool)

(declare-fun e!4656076 () Bool)

(declare-fun tp!2345852 () Bool)

(declare-fun tp!2345855 () Bool)

(assert (=> b!7886028 (= e!4656076 (and tp!2345852 tp!2345855))))

(declare-fun b!7886030 () Bool)

(declare-fun tp!2345851 () Bool)

(declare-fun tp!2345853 () Bool)

(assert (=> b!7886030 (= e!4656076 (and tp!2345851 tp!2345853))))

(assert (=> b!7885902 (= tp!2345822 e!4656076)))

(declare-fun b!7886027 () Bool)

(assert (=> b!7886027 (= e!4656076 tp_is_empty!52793)))

(declare-fun b!7886029 () Bool)

(declare-fun tp!2345854 () Bool)

(assert (=> b!7886029 (= e!4656076 tp!2345854)))

(assert (= (and b!7885902 ((_ is ElementMatch!21197) (regTwo!42906 r!14100))) b!7886027))

(assert (= (and b!7885902 ((_ is Concat!30042) (regTwo!42906 r!14100))) b!7886028))

(assert (= (and b!7885902 ((_ is Star!21197) (regTwo!42906 r!14100))) b!7886029))

(assert (= (and b!7885902 ((_ is Union!21197) (regTwo!42906 r!14100))) b!7886030))

(declare-fun b!7886032 () Bool)

(declare-fun e!4656077 () Bool)

(declare-fun tp!2345857 () Bool)

(declare-fun tp!2345860 () Bool)

(assert (=> b!7886032 (= e!4656077 (and tp!2345857 tp!2345860))))

(declare-fun b!7886034 () Bool)

(declare-fun tp!2345856 () Bool)

(declare-fun tp!2345858 () Bool)

(assert (=> b!7886034 (= e!4656077 (and tp!2345856 tp!2345858))))

(assert (=> b!7885897 (= tp!2345820 e!4656077)))

(declare-fun b!7886031 () Bool)

(assert (=> b!7886031 (= e!4656077 tp_is_empty!52793)))

(declare-fun b!7886033 () Bool)

(declare-fun tp!2345859 () Bool)

(assert (=> b!7886033 (= e!4656077 tp!2345859)))

(assert (= (and b!7885897 ((_ is ElementMatch!21197) (regOne!42907 r!14100))) b!7886031))

(assert (= (and b!7885897 ((_ is Concat!30042) (regOne!42907 r!14100))) b!7886032))

(assert (= (and b!7885897 ((_ is Star!21197) (regOne!42907 r!14100))) b!7886033))

(assert (= (and b!7885897 ((_ is Union!21197) (regOne!42907 r!14100))) b!7886034))

(declare-fun b!7886036 () Bool)

(declare-fun e!4656078 () Bool)

(declare-fun tp!2345862 () Bool)

(declare-fun tp!2345865 () Bool)

(assert (=> b!7886036 (= e!4656078 (and tp!2345862 tp!2345865))))

(declare-fun b!7886038 () Bool)

(declare-fun tp!2345861 () Bool)

(declare-fun tp!2345863 () Bool)

(assert (=> b!7886038 (= e!4656078 (and tp!2345861 tp!2345863))))

(assert (=> b!7885897 (= tp!2345825 e!4656078)))

(declare-fun b!7886035 () Bool)

(assert (=> b!7886035 (= e!4656078 tp_is_empty!52793)))

(declare-fun b!7886037 () Bool)

(declare-fun tp!2345864 () Bool)

(assert (=> b!7886037 (= e!4656078 tp!2345864)))

(assert (= (and b!7885897 ((_ is ElementMatch!21197) (regTwo!42907 r!14100))) b!7886035))

(assert (= (and b!7885897 ((_ is Concat!30042) (regTwo!42907 r!14100))) b!7886036))

(assert (= (and b!7885897 ((_ is Star!21197) (regTwo!42907 r!14100))) b!7886037))

(assert (= (and b!7885897 ((_ is Union!21197) (regTwo!42907 r!14100))) b!7886038))

(declare-fun b!7886039 () Bool)

(declare-fun e!4656079 () Bool)

(declare-fun tp!2345866 () Bool)

(assert (=> b!7886039 (= e!4656079 (and tp_is_empty!52793 tp!2345866))))

(assert (=> b!7885904 (= tp!2345823 e!4656079)))

(assert (= (and b!7885904 ((_ is Cons!73930) (t!388789 (_2!38323 cut!2)))) b!7886039))

(check-sat (not bm!731500) (not b!7886028) (not b!7886012) (not b!7886011) (not b!7886019) (not b!7886039) (not b!7886034) (not b!7886038) (not d!2356479) (not b!7886029) (not bm!731497) (not b!7886033) (not b!7886022) (not b!7886032) (not b!7886036) (not b!7885988) (not bm!731499) (not b!7886037) (not b!7885945) (not b!7886013) (not b!7885987) tp_is_empty!52793 (not b!7886030) (not bm!731496) (not b!7886010) (not b!7885954) (not b!7885994) (not b!7886020))
(check-sat)
