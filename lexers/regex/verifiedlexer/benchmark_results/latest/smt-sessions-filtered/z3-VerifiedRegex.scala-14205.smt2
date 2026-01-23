; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744250 () Bool)

(assert start!744250)

(declare-fun b!7879768 () Bool)

(declare-fun e!4653511 () Bool)

(declare-fun tp_is_empty!52765 () Bool)

(assert (=> b!7879768 (= e!4653511 tp_is_empty!52765)))

(declare-fun b!7879769 () Bool)

(declare-fun res!3129436 () Bool)

(declare-fun e!4653510 () Bool)

(assert (=> b!7879769 (=> (not res!3129436) (not e!4653510))))

(declare-datatypes ((C!42692 0))(
  ( (C!42693 (val!31808 Int)) )
))
(declare-datatypes ((Regex!21183 0))(
  ( (ElementMatch!21183 (c!1447057 C!42692)) (Concat!30028 (regOne!42878 Regex!21183) (regTwo!42878 Regex!21183)) (EmptyExpr!21183) (Star!21183 (reg!21512 Regex!21183)) (EmptyLang!21183) (Union!21183 (regOne!42879 Regex!21183) (regTwo!42879 Regex!21183)) )
))
(declare-fun r2!6150 () Regex!21183)

(declare-fun validRegex!11593 (Regex!21183) Bool)

(assert (=> b!7879769 (= res!3129436 (validRegex!11593 r2!6150))))

(declare-fun b!7879771 () Bool)

(declare-fun e!4653507 () Bool)

(assert (=> b!7879771 (= e!4653507 tp_is_empty!52765)))

(declare-fun b!7879772 () Bool)

(declare-fun e!4653508 () Bool)

(assert (=> b!7879772 (= e!4653510 e!4653508)))

(declare-fun res!3129433 () Bool)

(assert (=> b!7879772 (=> (not res!3129433) (not e!4653508))))

(declare-fun lt!2681229 () Regex!21183)

(declare-datatypes ((List!74042 0))(
  ( (Nil!73918) (Cons!73918 (h!80366 C!42692) (t!388777 List!74042)) )
))
(declare-fun s!14231 () List!74042)

(declare-fun matchR!10619 (Regex!21183 List!74042) Bool)

(assert (=> b!7879772 (= res!3129433 (matchR!10619 lt!2681229 s!14231))))

(declare-fun r1!6212 () Regex!21183)

(assert (=> b!7879772 (= lt!2681229 (Union!21183 r1!6212 r2!6150))))

(declare-fun b!7879773 () Bool)

(declare-fun res!3129435 () Bool)

(assert (=> b!7879773 (=> (not res!3129435) (not e!4653508))))

(get-info :version)

(assert (=> b!7879773 (= res!3129435 (not ((_ is Cons!73918) s!14231)))))

(declare-fun b!7879774 () Bool)

(declare-fun e!4653509 () Bool)

(declare-fun tp!2341288 () Bool)

(assert (=> b!7879774 (= e!4653509 (and tp_is_empty!52765 tp!2341288))))

(declare-fun b!7879775 () Bool)

(declare-fun tp!2341286 () Bool)

(assert (=> b!7879775 (= e!4653507 tp!2341286)))

(declare-fun b!7879776 () Bool)

(declare-fun tp!2341287 () Bool)

(declare-fun tp!2341282 () Bool)

(assert (=> b!7879776 (= e!4653511 (and tp!2341287 tp!2341282))))

(declare-fun b!7879777 () Bool)

(declare-fun tp!2341289 () Bool)

(declare-fun tp!2341285 () Bool)

(assert (=> b!7879777 (= e!4653507 (and tp!2341289 tp!2341285))))

(declare-fun b!7879778 () Bool)

(declare-fun tp!2341292 () Bool)

(assert (=> b!7879778 (= e!4653511 tp!2341292)))

(declare-fun res!3129434 () Bool)

(assert (=> start!744250 (=> (not res!3129434) (not e!4653510))))

(assert (=> start!744250 (= res!3129434 (validRegex!11593 r1!6212))))

(assert (=> start!744250 e!4653510))

(assert (=> start!744250 e!4653507))

(assert (=> start!744250 e!4653511))

(assert (=> start!744250 e!4653509))

(declare-fun b!7879770 () Bool)

(declare-fun tp!2341283 () Bool)

(declare-fun tp!2341290 () Bool)

(assert (=> b!7879770 (= e!4653507 (and tp!2341283 tp!2341290))))

(declare-fun b!7879779 () Bool)

(declare-fun tp!2341284 () Bool)

(declare-fun tp!2341291 () Bool)

(assert (=> b!7879779 (= e!4653511 (and tp!2341284 tp!2341291))))

(declare-fun b!7879780 () Bool)

(assert (=> b!7879780 (= e!4653508 (not (validRegex!11593 lt!2681229)))))

(assert (= (and start!744250 res!3129434) b!7879769))

(assert (= (and b!7879769 res!3129436) b!7879772))

(assert (= (and b!7879772 res!3129433) b!7879773))

(assert (= (and b!7879773 res!3129435) b!7879780))

(assert (= (and start!744250 ((_ is ElementMatch!21183) r1!6212)) b!7879771))

(assert (= (and start!744250 ((_ is Concat!30028) r1!6212)) b!7879770))

(assert (= (and start!744250 ((_ is Star!21183) r1!6212)) b!7879775))

(assert (= (and start!744250 ((_ is Union!21183) r1!6212)) b!7879777))

(assert (= (and start!744250 ((_ is ElementMatch!21183) r2!6150)) b!7879768))

(assert (= (and start!744250 ((_ is Concat!30028) r2!6150)) b!7879779))

(assert (= (and start!744250 ((_ is Star!21183) r2!6150)) b!7879778))

(assert (= (and start!744250 ((_ is Union!21183) r2!6150)) b!7879776))

(assert (= (and start!744250 ((_ is Cons!73918) s!14231)) b!7879774))

(declare-fun m!8267644 () Bool)

(assert (=> b!7879769 m!8267644))

(declare-fun m!8267646 () Bool)

(assert (=> b!7879772 m!8267646))

(declare-fun m!8267648 () Bool)

(assert (=> start!744250 m!8267648))

(declare-fun m!8267650 () Bool)

(assert (=> b!7879780 m!8267650))

(check-sat (not b!7879774) (not b!7879775) (not b!7879776) (not b!7879772) (not b!7879779) (not b!7879780) tp_is_empty!52765 (not start!744250) (not b!7879777) (not b!7879770) (not b!7879778) (not b!7879769))
(check-sat)
(get-model)

(declare-fun d!2355980 () Bool)

(declare-fun res!3129463 () Bool)

(declare-fun e!4653547 () Bool)

(assert (=> d!2355980 (=> res!3129463 e!4653547)))

(assert (=> d!2355980 (= res!3129463 ((_ is ElementMatch!21183) r2!6150))))

(assert (=> d!2355980 (= (validRegex!11593 r2!6150) e!4653547)))

(declare-fun b!7879826 () Bool)

(declare-fun e!4653549 () Bool)

(declare-fun call!730906 () Bool)

(assert (=> b!7879826 (= e!4653549 call!730906)))

(declare-fun b!7879827 () Bool)

(declare-fun e!4653558 () Bool)

(declare-fun e!4653551 () Bool)

(assert (=> b!7879827 (= e!4653558 e!4653551)))

(declare-fun res!3129462 () Bool)

(declare-fun nullable!9442 (Regex!21183) Bool)

(assert (=> b!7879827 (= res!3129462 (not (nullable!9442 (reg!21512 r2!6150))))))

(assert (=> b!7879827 (=> (not res!3129462) (not e!4653551))))

(declare-fun b!7879828 () Bool)

(declare-fun res!3129468 () Bool)

(assert (=> b!7879828 (=> (not res!3129468) (not e!4653549))))

(declare-fun call!730903 () Bool)

(assert (=> b!7879828 (= res!3129468 call!730903)))

(declare-fun e!4653556 () Bool)

(assert (=> b!7879828 (= e!4653556 e!4653549)))

(declare-fun bm!730897 () Bool)

(declare-fun call!730902 () Bool)

(declare-fun c!1447070 () Bool)

(declare-fun c!1447068 () Bool)

(assert (=> bm!730897 (= call!730902 (validRegex!11593 (ite c!1447070 (reg!21512 r2!6150) (ite c!1447068 (regOne!42879 r2!6150) (regTwo!42878 r2!6150)))))))

(declare-fun b!7879829 () Bool)

(assert (=> b!7879829 (= e!4653551 call!730902)))

(declare-fun b!7879830 () Bool)

(assert (=> b!7879830 (= e!4653547 e!4653558)))

(assert (=> b!7879830 (= c!1447070 ((_ is Star!21183) r2!6150))))

(declare-fun b!7879831 () Bool)

(assert (=> b!7879831 (= e!4653558 e!4653556)))

(assert (=> b!7879831 (= c!1447068 ((_ is Union!21183) r2!6150))))

(declare-fun bm!730900 () Bool)

(assert (=> bm!730900 (= call!730906 (validRegex!11593 (ite c!1447068 (regTwo!42879 r2!6150) (regOne!42878 r2!6150))))))

(declare-fun b!7879833 () Bool)

(declare-fun e!4653555 () Bool)

(declare-fun e!4653548 () Bool)

(assert (=> b!7879833 (= e!4653555 e!4653548)))

(declare-fun res!3129466 () Bool)

(assert (=> b!7879833 (=> (not res!3129466) (not e!4653548))))

(assert (=> b!7879833 (= res!3129466 call!730906)))

(declare-fun bm!730901 () Bool)

(assert (=> bm!730901 (= call!730903 call!730902)))

(declare-fun b!7879838 () Bool)

(declare-fun res!3129467 () Bool)

(assert (=> b!7879838 (=> res!3129467 e!4653555)))

(assert (=> b!7879838 (= res!3129467 (not ((_ is Concat!30028) r2!6150)))))

(assert (=> b!7879838 (= e!4653556 e!4653555)))

(declare-fun b!7879840 () Bool)

(assert (=> b!7879840 (= e!4653548 call!730903)))

(assert (= (and d!2355980 (not res!3129463)) b!7879830))

(assert (= (and b!7879830 c!1447070) b!7879827))

(assert (= (and b!7879830 (not c!1447070)) b!7879831))

(assert (= (and b!7879827 res!3129462) b!7879829))

(assert (= (and b!7879831 c!1447068) b!7879828))

(assert (= (and b!7879831 (not c!1447068)) b!7879838))

(assert (= (and b!7879828 res!3129468) b!7879826))

(assert (= (and b!7879838 (not res!3129467)) b!7879833))

(assert (= (and b!7879833 res!3129466) b!7879840))

(assert (= (or b!7879826 b!7879833) bm!730900))

(assert (= (or b!7879828 b!7879840) bm!730901))

(assert (= (or b!7879829 bm!730901) bm!730897))

(declare-fun m!8267664 () Bool)

(assert (=> b!7879827 m!8267664))

(declare-fun m!8267666 () Bool)

(assert (=> bm!730897 m!8267666))

(declare-fun m!8267668 () Bool)

(assert (=> bm!730900 m!8267668))

(assert (=> b!7879769 d!2355980))

(declare-fun d!2355986 () Bool)

(declare-fun res!3129478 () Bool)

(declare-fun e!4653568 () Bool)

(assert (=> d!2355986 (=> res!3129478 e!4653568)))

(assert (=> d!2355986 (= res!3129478 ((_ is ElementMatch!21183) lt!2681229))))

(assert (=> d!2355986 (= (validRegex!11593 lt!2681229) e!4653568)))

(declare-fun b!7879853 () Bool)

(declare-fun e!4653570 () Bool)

(declare-fun call!730913 () Bool)

(assert (=> b!7879853 (= e!4653570 call!730913)))

(declare-fun b!7879854 () Bool)

(declare-fun e!4653574 () Bool)

(declare-fun e!4653571 () Bool)

(assert (=> b!7879854 (= e!4653574 e!4653571)))

(declare-fun res!3129477 () Bool)

(assert (=> b!7879854 (= res!3129477 (not (nullable!9442 (reg!21512 lt!2681229))))))

(assert (=> b!7879854 (=> (not res!3129477) (not e!4653571))))

(declare-fun b!7879855 () Bool)

(declare-fun res!3129481 () Bool)

(assert (=> b!7879855 (=> (not res!3129481) (not e!4653570))))

(declare-fun call!730912 () Bool)

(assert (=> b!7879855 (= res!3129481 call!730912)))

(declare-fun e!4653573 () Bool)

(assert (=> b!7879855 (= e!4653573 e!4653570)))

(declare-fun call!730911 () Bool)

(declare-fun bm!730906 () Bool)

(declare-fun c!1447075 () Bool)

(declare-fun c!1447074 () Bool)

(assert (=> bm!730906 (= call!730911 (validRegex!11593 (ite c!1447075 (reg!21512 lt!2681229) (ite c!1447074 (regOne!42879 lt!2681229) (regTwo!42878 lt!2681229)))))))

(declare-fun b!7879856 () Bool)

(assert (=> b!7879856 (= e!4653571 call!730911)))

(declare-fun b!7879857 () Bool)

(assert (=> b!7879857 (= e!4653568 e!4653574)))

(assert (=> b!7879857 (= c!1447075 ((_ is Star!21183) lt!2681229))))

(declare-fun b!7879858 () Bool)

(assert (=> b!7879858 (= e!4653574 e!4653573)))

(assert (=> b!7879858 (= c!1447074 ((_ is Union!21183) lt!2681229))))

(declare-fun bm!730907 () Bool)

(assert (=> bm!730907 (= call!730913 (validRegex!11593 (ite c!1447074 (regTwo!42879 lt!2681229) (regOne!42878 lt!2681229))))))

(declare-fun b!7879859 () Bool)

(declare-fun e!4653572 () Bool)

(declare-fun e!4653569 () Bool)

(assert (=> b!7879859 (= e!4653572 e!4653569)))

(declare-fun res!3129479 () Bool)

(assert (=> b!7879859 (=> (not res!3129479) (not e!4653569))))

(assert (=> b!7879859 (= res!3129479 call!730913)))

(declare-fun bm!730908 () Bool)

(assert (=> bm!730908 (= call!730912 call!730911)))

(declare-fun b!7879860 () Bool)

(declare-fun res!3129480 () Bool)

(assert (=> b!7879860 (=> res!3129480 e!4653572)))

(assert (=> b!7879860 (= res!3129480 (not ((_ is Concat!30028) lt!2681229)))))

(assert (=> b!7879860 (= e!4653573 e!4653572)))

(declare-fun b!7879861 () Bool)

(assert (=> b!7879861 (= e!4653569 call!730912)))

(assert (= (and d!2355986 (not res!3129478)) b!7879857))

(assert (= (and b!7879857 c!1447075) b!7879854))

(assert (= (and b!7879857 (not c!1447075)) b!7879858))

(assert (= (and b!7879854 res!3129477) b!7879856))

(assert (= (and b!7879858 c!1447074) b!7879855))

(assert (= (and b!7879858 (not c!1447074)) b!7879860))

(assert (= (and b!7879855 res!3129481) b!7879853))

(assert (= (and b!7879860 (not res!3129480)) b!7879859))

(assert (= (and b!7879859 res!3129479) b!7879861))

(assert (= (or b!7879853 b!7879859) bm!730907))

(assert (= (or b!7879855 b!7879861) bm!730908))

(assert (= (or b!7879856 bm!730908) bm!730906))

(declare-fun m!8267676 () Bool)

(assert (=> b!7879854 m!8267676))

(declare-fun m!8267678 () Bool)

(assert (=> bm!730906 m!8267678))

(declare-fun m!8267680 () Bool)

(assert (=> bm!730907 m!8267680))

(assert (=> b!7879780 d!2355986))

(declare-fun d!2355990 () Bool)

(declare-fun res!3129483 () Bool)

(declare-fun e!4653575 () Bool)

(assert (=> d!2355990 (=> res!3129483 e!4653575)))

(assert (=> d!2355990 (= res!3129483 ((_ is ElementMatch!21183) r1!6212))))

(assert (=> d!2355990 (= (validRegex!11593 r1!6212) e!4653575)))

(declare-fun b!7879862 () Bool)

(declare-fun e!4653577 () Bool)

(declare-fun call!730916 () Bool)

(assert (=> b!7879862 (= e!4653577 call!730916)))

(declare-fun b!7879863 () Bool)

(declare-fun e!4653581 () Bool)

(declare-fun e!4653578 () Bool)

(assert (=> b!7879863 (= e!4653581 e!4653578)))

(declare-fun res!3129482 () Bool)

(assert (=> b!7879863 (= res!3129482 (not (nullable!9442 (reg!21512 r1!6212))))))

(assert (=> b!7879863 (=> (not res!3129482) (not e!4653578))))

(declare-fun b!7879864 () Bool)

(declare-fun res!3129486 () Bool)

(assert (=> b!7879864 (=> (not res!3129486) (not e!4653577))))

(declare-fun call!730915 () Bool)

(assert (=> b!7879864 (= res!3129486 call!730915)))

(declare-fun e!4653580 () Bool)

(assert (=> b!7879864 (= e!4653580 e!4653577)))

(declare-fun call!730914 () Bool)

(declare-fun c!1447077 () Bool)

(declare-fun bm!730909 () Bool)

(declare-fun c!1447076 () Bool)

(assert (=> bm!730909 (= call!730914 (validRegex!11593 (ite c!1447077 (reg!21512 r1!6212) (ite c!1447076 (regOne!42879 r1!6212) (regTwo!42878 r1!6212)))))))

(declare-fun b!7879865 () Bool)

(assert (=> b!7879865 (= e!4653578 call!730914)))

(declare-fun b!7879866 () Bool)

(assert (=> b!7879866 (= e!4653575 e!4653581)))

(assert (=> b!7879866 (= c!1447077 ((_ is Star!21183) r1!6212))))

(declare-fun b!7879867 () Bool)

(assert (=> b!7879867 (= e!4653581 e!4653580)))

(assert (=> b!7879867 (= c!1447076 ((_ is Union!21183) r1!6212))))

(declare-fun bm!730910 () Bool)

(assert (=> bm!730910 (= call!730916 (validRegex!11593 (ite c!1447076 (regTwo!42879 r1!6212) (regOne!42878 r1!6212))))))

(declare-fun b!7879868 () Bool)

(declare-fun e!4653579 () Bool)

(declare-fun e!4653576 () Bool)

(assert (=> b!7879868 (= e!4653579 e!4653576)))

(declare-fun res!3129484 () Bool)

(assert (=> b!7879868 (=> (not res!3129484) (not e!4653576))))

(assert (=> b!7879868 (= res!3129484 call!730916)))

(declare-fun bm!730911 () Bool)

(assert (=> bm!730911 (= call!730915 call!730914)))

(declare-fun b!7879869 () Bool)

(declare-fun res!3129485 () Bool)

(assert (=> b!7879869 (=> res!3129485 e!4653579)))

(assert (=> b!7879869 (= res!3129485 (not ((_ is Concat!30028) r1!6212)))))

(assert (=> b!7879869 (= e!4653580 e!4653579)))

(declare-fun b!7879870 () Bool)

(assert (=> b!7879870 (= e!4653576 call!730915)))

(assert (= (and d!2355990 (not res!3129483)) b!7879866))

(assert (= (and b!7879866 c!1447077) b!7879863))

(assert (= (and b!7879866 (not c!1447077)) b!7879867))

(assert (= (and b!7879863 res!3129482) b!7879865))

(assert (= (and b!7879867 c!1447076) b!7879864))

(assert (= (and b!7879867 (not c!1447076)) b!7879869))

(assert (= (and b!7879864 res!3129486) b!7879862))

(assert (= (and b!7879869 (not res!3129485)) b!7879868))

(assert (= (and b!7879868 res!3129484) b!7879870))

(assert (= (or b!7879862 b!7879868) bm!730910))

(assert (= (or b!7879864 b!7879870) bm!730911))

(assert (= (or b!7879865 bm!730911) bm!730909))

(declare-fun m!8267682 () Bool)

(assert (=> b!7879863 m!8267682))

(declare-fun m!8267684 () Bool)

(assert (=> bm!730909 m!8267684))

(declare-fun m!8267686 () Bool)

(assert (=> bm!730910 m!8267686))

(assert (=> start!744250 d!2355990))

(declare-fun b!7879941 () Bool)

(declare-fun e!4653619 () Bool)

(declare-fun e!4653620 () Bool)

(assert (=> b!7879941 (= e!4653619 e!4653620)))

(declare-fun res!3129532 () Bool)

(assert (=> b!7879941 (=> (not res!3129532) (not e!4653620))))

(declare-fun lt!2681235 () Bool)

(assert (=> b!7879941 (= res!3129532 (not lt!2681235))))

(declare-fun b!7879942 () Bool)

(declare-fun res!3129529 () Bool)

(declare-fun e!4653622 () Bool)

(assert (=> b!7879942 (=> (not res!3129529) (not e!4653622))))

(declare-fun call!730922 () Bool)

(assert (=> b!7879942 (= res!3129529 (not call!730922))))

(declare-fun b!7879943 () Bool)

(declare-fun res!3129528 () Bool)

(assert (=> b!7879943 (=> (not res!3129528) (not e!4653622))))

(declare-fun isEmpty!42410 (List!74042) Bool)

(declare-fun tail!15664 (List!74042) List!74042)

(assert (=> b!7879943 (= res!3129528 (isEmpty!42410 (tail!15664 s!14231)))))

(declare-fun b!7879944 () Bool)

(declare-fun e!4653623 () Bool)

(declare-fun head!16121 (List!74042) C!42692)

(assert (=> b!7879944 (= e!4653623 (not (= (head!16121 s!14231) (c!1447057 lt!2681229))))))

(declare-fun bm!730917 () Bool)

(assert (=> bm!730917 (= call!730922 (isEmpty!42410 s!14231))))

(declare-fun b!7879945 () Bool)

(declare-fun res!3129533 () Bool)

(assert (=> b!7879945 (=> res!3129533 e!4653623)))

(assert (=> b!7879945 (= res!3129533 (not (isEmpty!42410 (tail!15664 s!14231))))))

(declare-fun b!7879946 () Bool)

(declare-fun e!4653617 () Bool)

(assert (=> b!7879946 (= e!4653617 (not lt!2681235))))

(declare-fun d!2355992 () Bool)

(declare-fun e!4653618 () Bool)

(assert (=> d!2355992 e!4653618))

(declare-fun c!1447094 () Bool)

(assert (=> d!2355992 (= c!1447094 ((_ is EmptyExpr!21183) lt!2681229))))

(declare-fun e!4653621 () Bool)

(assert (=> d!2355992 (= lt!2681235 e!4653621)))

(declare-fun c!1447093 () Bool)

(assert (=> d!2355992 (= c!1447093 (isEmpty!42410 s!14231))))

(assert (=> d!2355992 (validRegex!11593 lt!2681229)))

(assert (=> d!2355992 (= (matchR!10619 lt!2681229 s!14231) lt!2681235)))

(declare-fun b!7879947 () Bool)

(declare-fun res!3129534 () Bool)

(assert (=> b!7879947 (=> res!3129534 e!4653619)))

(assert (=> b!7879947 (= res!3129534 (not ((_ is ElementMatch!21183) lt!2681229)))))

(assert (=> b!7879947 (= e!4653617 e!4653619)))

(declare-fun b!7879948 () Bool)

(declare-fun res!3129531 () Bool)

(assert (=> b!7879948 (=> res!3129531 e!4653619)))

(assert (=> b!7879948 (= res!3129531 e!4653622)))

(declare-fun res!3129527 () Bool)

(assert (=> b!7879948 (=> (not res!3129527) (not e!4653622))))

(assert (=> b!7879948 (= res!3129527 lt!2681235)))

(declare-fun b!7879949 () Bool)

(assert (=> b!7879949 (= e!4653622 (= (head!16121 s!14231) (c!1447057 lt!2681229)))))

(declare-fun b!7879950 () Bool)

(assert (=> b!7879950 (= e!4653621 (nullable!9442 lt!2681229))))

(declare-fun b!7879951 () Bool)

(assert (=> b!7879951 (= e!4653618 (= lt!2681235 call!730922))))

(declare-fun b!7879952 () Bool)

(assert (=> b!7879952 (= e!4653620 e!4653623)))

(declare-fun res!3129530 () Bool)

(assert (=> b!7879952 (=> res!3129530 e!4653623)))

(assert (=> b!7879952 (= res!3129530 call!730922)))

(declare-fun b!7879953 () Bool)

(assert (=> b!7879953 (= e!4653618 e!4653617)))

(declare-fun c!1447095 () Bool)

(assert (=> b!7879953 (= c!1447095 ((_ is EmptyLang!21183) lt!2681229))))

(declare-fun b!7879954 () Bool)

(declare-fun derivativeStep!6412 (Regex!21183 C!42692) Regex!21183)

(assert (=> b!7879954 (= e!4653621 (matchR!10619 (derivativeStep!6412 lt!2681229 (head!16121 s!14231)) (tail!15664 s!14231)))))

(assert (= (and d!2355992 c!1447093) b!7879950))

(assert (= (and d!2355992 (not c!1447093)) b!7879954))

(assert (= (and d!2355992 c!1447094) b!7879951))

(assert (= (and d!2355992 (not c!1447094)) b!7879953))

(assert (= (and b!7879953 c!1447095) b!7879946))

(assert (= (and b!7879953 (not c!1447095)) b!7879947))

(assert (= (and b!7879947 (not res!3129534)) b!7879948))

(assert (= (and b!7879948 res!3129527) b!7879942))

(assert (= (and b!7879942 res!3129529) b!7879943))

(assert (= (and b!7879943 res!3129528) b!7879949))

(assert (= (and b!7879948 (not res!3129531)) b!7879941))

(assert (= (and b!7879941 res!3129532) b!7879952))

(assert (= (and b!7879952 (not res!3129530)) b!7879945))

(assert (= (and b!7879945 (not res!3129533)) b!7879944))

(assert (= (or b!7879951 b!7879942 b!7879952) bm!730917))

(declare-fun m!8267702 () Bool)

(assert (=> b!7879943 m!8267702))

(assert (=> b!7879943 m!8267702))

(declare-fun m!8267704 () Bool)

(assert (=> b!7879943 m!8267704))

(declare-fun m!8267706 () Bool)

(assert (=> b!7879954 m!8267706))

(assert (=> b!7879954 m!8267706))

(declare-fun m!8267708 () Bool)

(assert (=> b!7879954 m!8267708))

(assert (=> b!7879954 m!8267702))

(assert (=> b!7879954 m!8267708))

(assert (=> b!7879954 m!8267702))

(declare-fun m!8267710 () Bool)

(assert (=> b!7879954 m!8267710))

(assert (=> b!7879944 m!8267706))

(declare-fun m!8267712 () Bool)

(assert (=> bm!730917 m!8267712))

(assert (=> b!7879949 m!8267706))

(assert (=> d!2355992 m!8267712))

(assert (=> d!2355992 m!8267650))

(assert (=> b!7879945 m!8267702))

(assert (=> b!7879945 m!8267702))

(assert (=> b!7879945 m!8267704))

(declare-fun m!8267714 () Bool)

(assert (=> b!7879950 m!8267714))

(assert (=> b!7879772 d!2355992))

(declare-fun b!7880000 () Bool)

(declare-fun e!4653634 () Bool)

(declare-fun tp!2341344 () Bool)

(declare-fun tp!2341346 () Bool)

(assert (=> b!7880000 (= e!4653634 (and tp!2341344 tp!2341346))))

(declare-fun b!7880002 () Bool)

(declare-fun tp!2341347 () Bool)

(declare-fun tp!2341345 () Bool)

(assert (=> b!7880002 (= e!4653634 (and tp!2341347 tp!2341345))))

(declare-fun b!7880001 () Bool)

(declare-fun tp!2341343 () Bool)

(assert (=> b!7880001 (= e!4653634 tp!2341343)))

(assert (=> b!7879779 (= tp!2341284 e!4653634)))

(declare-fun b!7879999 () Bool)

(assert (=> b!7879999 (= e!4653634 tp_is_empty!52765)))

(assert (= (and b!7879779 ((_ is ElementMatch!21183) (regOne!42878 r2!6150))) b!7879999))

(assert (= (and b!7879779 ((_ is Concat!30028) (regOne!42878 r2!6150))) b!7880000))

(assert (= (and b!7879779 ((_ is Star!21183) (regOne!42878 r2!6150))) b!7880001))

(assert (= (and b!7879779 ((_ is Union!21183) (regOne!42878 r2!6150))) b!7880002))

(declare-fun b!7880008 () Bool)

(declare-fun e!4653636 () Bool)

(declare-fun tp!2341354 () Bool)

(declare-fun tp!2341356 () Bool)

(assert (=> b!7880008 (= e!4653636 (and tp!2341354 tp!2341356))))

(declare-fun b!7880010 () Bool)

(declare-fun tp!2341357 () Bool)

(declare-fun tp!2341355 () Bool)

(assert (=> b!7880010 (= e!4653636 (and tp!2341357 tp!2341355))))

(declare-fun b!7880009 () Bool)

(declare-fun tp!2341353 () Bool)

(assert (=> b!7880009 (= e!4653636 tp!2341353)))

(assert (=> b!7879779 (= tp!2341291 e!4653636)))

(declare-fun b!7880007 () Bool)

(assert (=> b!7880007 (= e!4653636 tp_is_empty!52765)))

(assert (= (and b!7879779 ((_ is ElementMatch!21183) (regTwo!42878 r2!6150))) b!7880007))

(assert (= (and b!7879779 ((_ is Concat!30028) (regTwo!42878 r2!6150))) b!7880008))

(assert (= (and b!7879779 ((_ is Star!21183) (regTwo!42878 r2!6150))) b!7880009))

(assert (= (and b!7879779 ((_ is Union!21183) (regTwo!42878 r2!6150))) b!7880010))

(declare-fun b!7880023 () Bool)

(declare-fun e!4653642 () Bool)

(declare-fun tp!2341367 () Bool)

(assert (=> b!7880023 (= e!4653642 (and tp_is_empty!52765 tp!2341367))))

(assert (=> b!7879774 (= tp!2341288 e!4653642)))

(assert (= (and b!7879774 ((_ is Cons!73918) (t!388777 s!14231))) b!7880023))

(declare-fun b!7880025 () Bool)

(declare-fun e!4653643 () Bool)

(declare-fun tp!2341369 () Bool)

(declare-fun tp!2341371 () Bool)

(assert (=> b!7880025 (= e!4653643 (and tp!2341369 tp!2341371))))

(declare-fun b!7880027 () Bool)

(declare-fun tp!2341372 () Bool)

(declare-fun tp!2341370 () Bool)

(assert (=> b!7880027 (= e!4653643 (and tp!2341372 tp!2341370))))

(declare-fun b!7880026 () Bool)

(declare-fun tp!2341368 () Bool)

(assert (=> b!7880026 (= e!4653643 tp!2341368)))

(assert (=> b!7879775 (= tp!2341286 e!4653643)))

(declare-fun b!7880024 () Bool)

(assert (=> b!7880024 (= e!4653643 tp_is_empty!52765)))

(assert (= (and b!7879775 ((_ is ElementMatch!21183) (reg!21512 r1!6212))) b!7880024))

(assert (= (and b!7879775 ((_ is Concat!30028) (reg!21512 r1!6212))) b!7880025))

(assert (= (and b!7879775 ((_ is Star!21183) (reg!21512 r1!6212))) b!7880026))

(assert (= (and b!7879775 ((_ is Union!21183) (reg!21512 r1!6212))) b!7880027))

(declare-fun b!7880034 () Bool)

(declare-fun e!4653646 () Bool)

(declare-fun tp!2341380 () Bool)

(declare-fun tp!2341382 () Bool)

(assert (=> b!7880034 (= e!4653646 (and tp!2341380 tp!2341382))))

(declare-fun b!7880036 () Bool)

(declare-fun tp!2341383 () Bool)

(declare-fun tp!2341381 () Bool)

(assert (=> b!7880036 (= e!4653646 (and tp!2341383 tp!2341381))))

(declare-fun b!7880035 () Bool)

(declare-fun tp!2341379 () Bool)

(assert (=> b!7880035 (= e!4653646 tp!2341379)))

(assert (=> b!7879770 (= tp!2341283 e!4653646)))

(declare-fun b!7880033 () Bool)

(assert (=> b!7880033 (= e!4653646 tp_is_empty!52765)))

(assert (= (and b!7879770 ((_ is ElementMatch!21183) (regOne!42878 r1!6212))) b!7880033))

(assert (= (and b!7879770 ((_ is Concat!30028) (regOne!42878 r1!6212))) b!7880034))

(assert (= (and b!7879770 ((_ is Star!21183) (regOne!42878 r1!6212))) b!7880035))

(assert (= (and b!7879770 ((_ is Union!21183) (regOne!42878 r1!6212))) b!7880036))

(declare-fun b!7880042 () Bool)

(declare-fun e!4653648 () Bool)

(declare-fun tp!2341390 () Bool)

(declare-fun tp!2341392 () Bool)

(assert (=> b!7880042 (= e!4653648 (and tp!2341390 tp!2341392))))

(declare-fun b!7880044 () Bool)

(declare-fun tp!2341393 () Bool)

(declare-fun tp!2341391 () Bool)

(assert (=> b!7880044 (= e!4653648 (and tp!2341393 tp!2341391))))

(declare-fun b!7880043 () Bool)

(declare-fun tp!2341389 () Bool)

(assert (=> b!7880043 (= e!4653648 tp!2341389)))

(assert (=> b!7879770 (= tp!2341290 e!4653648)))

(declare-fun b!7880041 () Bool)

(assert (=> b!7880041 (= e!4653648 tp_is_empty!52765)))

(assert (= (and b!7879770 ((_ is ElementMatch!21183) (regTwo!42878 r1!6212))) b!7880041))

(assert (= (and b!7879770 ((_ is Concat!30028) (regTwo!42878 r1!6212))) b!7880042))

(assert (= (and b!7879770 ((_ is Star!21183) (regTwo!42878 r1!6212))) b!7880043))

(assert (= (and b!7879770 ((_ is Union!21183) (regTwo!42878 r1!6212))) b!7880044))

(declare-fun b!7880046 () Bool)

(declare-fun e!4653649 () Bool)

(declare-fun tp!2341395 () Bool)

(declare-fun tp!2341397 () Bool)

(assert (=> b!7880046 (= e!4653649 (and tp!2341395 tp!2341397))))

(declare-fun b!7880048 () Bool)

(declare-fun tp!2341398 () Bool)

(declare-fun tp!2341396 () Bool)

(assert (=> b!7880048 (= e!4653649 (and tp!2341398 tp!2341396))))

(declare-fun b!7880047 () Bool)

(declare-fun tp!2341394 () Bool)

(assert (=> b!7880047 (= e!4653649 tp!2341394)))

(assert (=> b!7879776 (= tp!2341287 e!4653649)))

(declare-fun b!7880045 () Bool)

(assert (=> b!7880045 (= e!4653649 tp_is_empty!52765)))

(assert (= (and b!7879776 ((_ is ElementMatch!21183) (regOne!42879 r2!6150))) b!7880045))

(assert (= (and b!7879776 ((_ is Concat!30028) (regOne!42879 r2!6150))) b!7880046))

(assert (= (and b!7879776 ((_ is Star!21183) (regOne!42879 r2!6150))) b!7880047))

(assert (= (and b!7879776 ((_ is Union!21183) (regOne!42879 r2!6150))) b!7880048))

(declare-fun b!7880050 () Bool)

(declare-fun e!4653650 () Bool)

(declare-fun tp!2341400 () Bool)

(declare-fun tp!2341402 () Bool)

(assert (=> b!7880050 (= e!4653650 (and tp!2341400 tp!2341402))))

(declare-fun b!7880052 () Bool)

(declare-fun tp!2341403 () Bool)

(declare-fun tp!2341401 () Bool)

(assert (=> b!7880052 (= e!4653650 (and tp!2341403 tp!2341401))))

(declare-fun b!7880051 () Bool)

(declare-fun tp!2341399 () Bool)

(assert (=> b!7880051 (= e!4653650 tp!2341399)))

(assert (=> b!7879776 (= tp!2341282 e!4653650)))

(declare-fun b!7880049 () Bool)

(assert (=> b!7880049 (= e!4653650 tp_is_empty!52765)))

(assert (= (and b!7879776 ((_ is ElementMatch!21183) (regTwo!42879 r2!6150))) b!7880049))

(assert (= (and b!7879776 ((_ is Concat!30028) (regTwo!42879 r2!6150))) b!7880050))

(assert (= (and b!7879776 ((_ is Star!21183) (regTwo!42879 r2!6150))) b!7880051))

(assert (= (and b!7879776 ((_ is Union!21183) (regTwo!42879 r2!6150))) b!7880052))

(declare-fun b!7880054 () Bool)

(declare-fun e!4653651 () Bool)

(declare-fun tp!2341405 () Bool)

(declare-fun tp!2341407 () Bool)

(assert (=> b!7880054 (= e!4653651 (and tp!2341405 tp!2341407))))

(declare-fun b!7880056 () Bool)

(declare-fun tp!2341408 () Bool)

(declare-fun tp!2341406 () Bool)

(assert (=> b!7880056 (= e!4653651 (and tp!2341408 tp!2341406))))

(declare-fun b!7880055 () Bool)

(declare-fun tp!2341404 () Bool)

(assert (=> b!7880055 (= e!4653651 tp!2341404)))

(assert (=> b!7879778 (= tp!2341292 e!4653651)))

(declare-fun b!7880053 () Bool)

(assert (=> b!7880053 (= e!4653651 tp_is_empty!52765)))

(assert (= (and b!7879778 ((_ is ElementMatch!21183) (reg!21512 r2!6150))) b!7880053))

(assert (= (and b!7879778 ((_ is Concat!30028) (reg!21512 r2!6150))) b!7880054))

(assert (= (and b!7879778 ((_ is Star!21183) (reg!21512 r2!6150))) b!7880055))

(assert (= (and b!7879778 ((_ is Union!21183) (reg!21512 r2!6150))) b!7880056))

(declare-fun b!7880058 () Bool)

(declare-fun e!4653652 () Bool)

(declare-fun tp!2341410 () Bool)

(declare-fun tp!2341412 () Bool)

(assert (=> b!7880058 (= e!4653652 (and tp!2341410 tp!2341412))))

(declare-fun b!7880060 () Bool)

(declare-fun tp!2341413 () Bool)

(declare-fun tp!2341411 () Bool)

(assert (=> b!7880060 (= e!4653652 (and tp!2341413 tp!2341411))))

(declare-fun b!7880059 () Bool)

(declare-fun tp!2341409 () Bool)

(assert (=> b!7880059 (= e!4653652 tp!2341409)))

(assert (=> b!7879777 (= tp!2341289 e!4653652)))

(declare-fun b!7880057 () Bool)

(assert (=> b!7880057 (= e!4653652 tp_is_empty!52765)))

(assert (= (and b!7879777 ((_ is ElementMatch!21183) (regOne!42879 r1!6212))) b!7880057))

(assert (= (and b!7879777 ((_ is Concat!30028) (regOne!42879 r1!6212))) b!7880058))

(assert (= (and b!7879777 ((_ is Star!21183) (regOne!42879 r1!6212))) b!7880059))

(assert (= (and b!7879777 ((_ is Union!21183) (regOne!42879 r1!6212))) b!7880060))

(declare-fun b!7880062 () Bool)

(declare-fun e!4653653 () Bool)

(declare-fun tp!2341415 () Bool)

(declare-fun tp!2341417 () Bool)

(assert (=> b!7880062 (= e!4653653 (and tp!2341415 tp!2341417))))

(declare-fun b!7880064 () Bool)

(declare-fun tp!2341418 () Bool)

(declare-fun tp!2341416 () Bool)

(assert (=> b!7880064 (= e!4653653 (and tp!2341418 tp!2341416))))

(declare-fun b!7880063 () Bool)

(declare-fun tp!2341414 () Bool)

(assert (=> b!7880063 (= e!4653653 tp!2341414)))

(assert (=> b!7879777 (= tp!2341285 e!4653653)))

(declare-fun b!7880061 () Bool)

(assert (=> b!7880061 (= e!4653653 tp_is_empty!52765)))

(assert (= (and b!7879777 ((_ is ElementMatch!21183) (regTwo!42879 r1!6212))) b!7880061))

(assert (= (and b!7879777 ((_ is Concat!30028) (regTwo!42879 r1!6212))) b!7880062))

(assert (= (and b!7879777 ((_ is Star!21183) (regTwo!42879 r1!6212))) b!7880063))

(assert (= (and b!7879777 ((_ is Union!21183) (regTwo!42879 r1!6212))) b!7880064))

(check-sat (not b!7880047) (not bm!730910) (not b!7880026) (not b!7880001) (not b!7880034) (not b!7880023) (not bm!730906) (not b!7879954) (not b!7879945) (not b!7879854) (not b!7879827) tp_is_empty!52765 (not b!7879943) (not b!7880009) (not b!7880044) (not b!7879949) (not b!7880063) (not b!7880064) (not bm!730917) (not b!7880062) (not b!7880046) (not b!7880052) (not b!7880043) (not b!7880055) (not b!7880000) (not b!7880027) (not b!7880035) (not bm!730897) (not b!7880025) (not bm!730900) (not b!7880050) (not b!7879863) (not b!7880036) (not b!7880048) (not b!7879950) (not b!7879944) (not b!7880056) (not b!7880059) (not b!7880051) (not b!7880058) (not d!2355992) (not bm!730909) (not b!7880010) (not bm!730907) (not b!7880002) (not b!7880054) (not b!7880008) (not b!7880060) (not b!7880042))
(check-sat)
