; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292032 () Bool)

(assert start!292032)

(declare-fun lt!1049528 () Int)

(declare-fun lt!1049526 () Int)

(declare-datatypes ((C!19148 0))(
  ( (C!19149 (val!11610 Int)) )
))
(declare-datatypes ((Regex!9481 0))(
  ( (ElementMatch!9481 (c!507585 C!19148)) (Concat!14802 (regOne!19474 Regex!9481) (regTwo!19474 Regex!9481)) (EmptyExpr!9481) (Star!9481 (reg!9810 Regex!9481)) (EmptyLang!9481) (Union!9481 (regOne!19475 Regex!9481) (regTwo!19475 Regex!9481)) )
))
(declare-fun r!17423 () Regex!9481)

(declare-fun e!1915567 () Bool)

(declare-fun b!3058780 () Bool)

(declare-fun regexDepth!99 (Regex!9481) Int)

(assert (=> b!3058780 (= e!1915567 (< (+ lt!1049526 lt!1049528) (+ (regexDepth!99 r!17423) lt!1049528)))))

(declare-datatypes ((List!35346 0))(
  ( (Nil!35222) (Cons!35222 (h!40642 C!19148) (t!234411 List!35346)) )
))
(declare-fun s!11993 () List!35346)

(declare-fun size!26551 (List!35346) Int)

(assert (=> b!3058780 (= lt!1049528 (size!26551 s!11993))))

(assert (=> b!3058780 (= lt!1049526 (regexDepth!99 (regTwo!19474 r!17423)))))

(declare-fun b!3058781 () Bool)

(declare-fun res!1255894 () Bool)

(declare-fun e!1915566 () Bool)

(assert (=> b!3058781 (=> res!1255894 e!1915566)))

(declare-fun isEmpty!19537 (List!35346) Bool)

(assert (=> b!3058781 (= res!1255894 (isEmpty!19537 s!11993))))

(declare-fun b!3058782 () Bool)

(declare-fun res!1255889 () Bool)

(assert (=> b!3058782 (=> res!1255889 e!1915567)))

(declare-fun validRegex!4214 (Regex!9481) Bool)

(assert (=> b!3058782 (= res!1255889 (not (validRegex!4214 (regTwo!19474 r!17423))))))

(declare-fun b!3058783 () Bool)

(declare-fun e!1915564 () Bool)

(assert (=> b!3058783 (= e!1915564 (not e!1915566))))

(declare-fun res!1255893 () Bool)

(assert (=> b!3058783 (=> res!1255893 e!1915566)))

(declare-fun lt!1049525 () Bool)

(get-info :version)

(assert (=> b!3058783 (= res!1255893 (or lt!1049525 (not ((_ is Concat!14802) r!17423))))))

(declare-fun matchRSpec!1618 (Regex!9481 List!35346) Bool)

(assert (=> b!3058783 (= lt!1049525 (matchRSpec!1618 r!17423 s!11993))))

(declare-fun matchR!4363 (Regex!9481 List!35346) Bool)

(assert (=> b!3058783 (= lt!1049525 (matchR!4363 r!17423 s!11993))))

(declare-datatypes ((Unit!49401 0))(
  ( (Unit!49402) )
))
(declare-fun lt!1049527 () Unit!49401)

(declare-fun mainMatchTheorem!1618 (Regex!9481 List!35346) Unit!49401)

(assert (=> b!3058783 (= lt!1049527 (mainMatchTheorem!1618 r!17423 s!11993))))

(declare-fun b!3058784 () Bool)

(declare-fun e!1915563 () Bool)

(declare-fun tp!966993 () Bool)

(assert (=> b!3058784 (= e!1915563 tp!966993)))

(declare-fun b!3058785 () Bool)

(declare-fun tp!966992 () Bool)

(declare-fun tp!966990 () Bool)

(assert (=> b!3058785 (= e!1915563 (and tp!966992 tp!966990))))

(declare-fun b!3058786 () Bool)

(declare-fun tp!966991 () Bool)

(declare-fun tp!966988 () Bool)

(assert (=> b!3058786 (= e!1915563 (and tp!966991 tp!966988))))

(declare-fun res!1255888 () Bool)

(assert (=> start!292032 (=> (not res!1255888) (not e!1915564))))

(assert (=> start!292032 (= res!1255888 (validRegex!4214 r!17423))))

(assert (=> start!292032 e!1915564))

(assert (=> start!292032 e!1915563))

(declare-fun e!1915565 () Bool)

(assert (=> start!292032 e!1915565))

(declare-fun b!3058787 () Bool)

(declare-fun res!1255890 () Bool)

(assert (=> b!3058787 (=> res!1255890 e!1915567)))

(declare-fun lt!1049529 () Regex!9481)

(declare-fun isEmptyExpr!538 (Regex!9481) Bool)

(assert (=> b!3058787 (= res!1255890 (not (isEmptyExpr!538 lt!1049529)))))

(declare-fun b!3058788 () Bool)

(declare-fun tp_is_empty!16525 () Bool)

(declare-fun tp!966989 () Bool)

(assert (=> b!3058788 (= e!1915565 (and tp_is_empty!16525 tp!966989))))

(declare-fun b!3058789 () Bool)

(declare-fun res!1255892 () Bool)

(assert (=> b!3058789 (=> res!1255892 e!1915567)))

(declare-fun lt!1049530 () Regex!9481)

(declare-fun isEmptyLang!532 (Regex!9481) Bool)

(assert (=> b!3058789 (= res!1255892 (isEmptyLang!532 lt!1049530))))

(declare-fun b!3058790 () Bool)

(assert (=> b!3058790 (= e!1915563 tp_is_empty!16525)))

(declare-fun b!3058791 () Bool)

(assert (=> b!3058791 (= e!1915566 e!1915567)))

(declare-fun res!1255891 () Bool)

(assert (=> b!3058791 (=> res!1255891 e!1915567)))

(assert (=> b!3058791 (= res!1255891 (isEmptyLang!532 lt!1049529))))

(declare-fun simplify!436 (Regex!9481) Regex!9481)

(assert (=> b!3058791 (= lt!1049530 (simplify!436 (regTwo!19474 r!17423)))))

(assert (=> b!3058791 (= lt!1049529 (simplify!436 (regOne!19474 r!17423)))))

(assert (= (and start!292032 res!1255888) b!3058783))

(assert (= (and b!3058783 (not res!1255893)) b!3058781))

(assert (= (and b!3058781 (not res!1255894)) b!3058791))

(assert (= (and b!3058791 (not res!1255891)) b!3058789))

(assert (= (and b!3058789 (not res!1255892)) b!3058787))

(assert (= (and b!3058787 (not res!1255890)) b!3058782))

(assert (= (and b!3058782 (not res!1255889)) b!3058780))

(assert (= (and start!292032 ((_ is ElementMatch!9481) r!17423)) b!3058790))

(assert (= (and start!292032 ((_ is Concat!14802) r!17423)) b!3058785))

(assert (= (and start!292032 ((_ is Star!9481) r!17423)) b!3058784))

(assert (= (and start!292032 ((_ is Union!9481) r!17423)) b!3058786))

(assert (= (and start!292032 ((_ is Cons!35222) s!11993)) b!3058788))

(declare-fun m!3380773 () Bool)

(assert (=> b!3058791 m!3380773))

(declare-fun m!3380775 () Bool)

(assert (=> b!3058791 m!3380775))

(declare-fun m!3380777 () Bool)

(assert (=> b!3058791 m!3380777))

(declare-fun m!3380779 () Bool)

(assert (=> b!3058780 m!3380779))

(declare-fun m!3380781 () Bool)

(assert (=> b!3058780 m!3380781))

(declare-fun m!3380783 () Bool)

(assert (=> b!3058780 m!3380783))

(declare-fun m!3380785 () Bool)

(assert (=> b!3058781 m!3380785))

(declare-fun m!3380787 () Bool)

(assert (=> b!3058789 m!3380787))

(declare-fun m!3380789 () Bool)

(assert (=> start!292032 m!3380789))

(declare-fun m!3380791 () Bool)

(assert (=> b!3058787 m!3380791))

(declare-fun m!3380793 () Bool)

(assert (=> b!3058782 m!3380793))

(declare-fun m!3380795 () Bool)

(assert (=> b!3058783 m!3380795))

(declare-fun m!3380797 () Bool)

(assert (=> b!3058783 m!3380797))

(declare-fun m!3380799 () Bool)

(assert (=> b!3058783 m!3380799))

(check-sat (not b!3058787) (not b!3058791) (not b!3058782) (not b!3058783) (not start!292032) (not b!3058784) (not b!3058785) (not b!3058786) (not b!3058788) tp_is_empty!16525 (not b!3058781) (not b!3058780) (not b!3058789))
(check-sat)
(get-model)

(declare-fun c!507605 () Bool)

(declare-fun call!211356 () Bool)

(declare-fun c!507604 () Bool)

(declare-fun bm!211350 () Bool)

(assert (=> bm!211350 (= call!211356 (validRegex!4214 (ite c!507605 (reg!9810 r!17423) (ite c!507604 (regTwo!19475 r!17423) (regOne!19474 r!17423)))))))

(declare-fun b!3058844 () Bool)

(declare-fun e!1915602 () Bool)

(declare-fun e!1915607 () Bool)

(assert (=> b!3058844 (= e!1915602 e!1915607)))

(assert (=> b!3058844 (= c!507605 ((_ is Star!9481) r!17423))))

(declare-fun b!3058845 () Bool)

(declare-fun e!1915604 () Bool)

(assert (=> b!3058845 (= e!1915607 e!1915604)))

(declare-fun res!1255911 () Bool)

(declare-fun nullable!3127 (Regex!9481) Bool)

(assert (=> b!3058845 (= res!1255911 (not (nullable!3127 (reg!9810 r!17423))))))

(assert (=> b!3058845 (=> (not res!1255911) (not e!1915604))))

(declare-fun b!3058846 () Bool)

(declare-fun e!1915608 () Bool)

(declare-fun e!1915603 () Bool)

(assert (=> b!3058846 (= e!1915608 e!1915603)))

(declare-fun res!1255915 () Bool)

(assert (=> b!3058846 (=> (not res!1255915) (not e!1915603))))

(declare-fun call!211357 () Bool)

(assert (=> b!3058846 (= res!1255915 call!211357)))

(declare-fun d!855042 () Bool)

(declare-fun res!1255914 () Bool)

(assert (=> d!855042 (=> res!1255914 e!1915602)))

(assert (=> d!855042 (= res!1255914 ((_ is ElementMatch!9481) r!17423))))

(assert (=> d!855042 (= (validRegex!4214 r!17423) e!1915602)))

(declare-fun b!3058847 () Bool)

(assert (=> b!3058847 (= e!1915604 call!211356)))

(declare-fun b!3058848 () Bool)

(declare-fun call!211355 () Bool)

(assert (=> b!3058848 (= e!1915603 call!211355)))

(declare-fun b!3058849 () Bool)

(declare-fun e!1915605 () Bool)

(assert (=> b!3058849 (= e!1915607 e!1915605)))

(assert (=> b!3058849 (= c!507604 ((_ is Union!9481) r!17423))))

(declare-fun bm!211351 () Bool)

(assert (=> bm!211351 (= call!211355 (validRegex!4214 (ite c!507604 (regOne!19475 r!17423) (regTwo!19474 r!17423))))))

(declare-fun b!3058850 () Bool)

(declare-fun res!1255913 () Bool)

(declare-fun e!1915606 () Bool)

(assert (=> b!3058850 (=> (not res!1255913) (not e!1915606))))

(assert (=> b!3058850 (= res!1255913 call!211355)))

(assert (=> b!3058850 (= e!1915605 e!1915606)))

(declare-fun b!3058851 () Bool)

(declare-fun res!1255912 () Bool)

(assert (=> b!3058851 (=> res!1255912 e!1915608)))

(assert (=> b!3058851 (= res!1255912 (not ((_ is Concat!14802) r!17423)))))

(assert (=> b!3058851 (= e!1915605 e!1915608)))

(declare-fun b!3058852 () Bool)

(assert (=> b!3058852 (= e!1915606 call!211357)))

(declare-fun bm!211352 () Bool)

(assert (=> bm!211352 (= call!211357 call!211356)))

(assert (= (and d!855042 (not res!1255914)) b!3058844))

(assert (= (and b!3058844 c!507605) b!3058845))

(assert (= (and b!3058844 (not c!507605)) b!3058849))

(assert (= (and b!3058845 res!1255911) b!3058847))

(assert (= (and b!3058849 c!507604) b!3058850))

(assert (= (and b!3058849 (not c!507604)) b!3058851))

(assert (= (and b!3058850 res!1255913) b!3058852))

(assert (= (and b!3058851 (not res!1255912)) b!3058846))

(assert (= (and b!3058846 res!1255915) b!3058848))

(assert (= (or b!3058850 b!3058848) bm!211351))

(assert (= (or b!3058852 b!3058846) bm!211352))

(assert (= (or b!3058847 bm!211352) bm!211350))

(declare-fun m!3380801 () Bool)

(assert (=> bm!211350 m!3380801))

(declare-fun m!3380803 () Bool)

(assert (=> b!3058845 m!3380803))

(declare-fun m!3380805 () Bool)

(assert (=> bm!211351 m!3380805))

(assert (=> start!292032 d!855042))

(declare-fun bm!211357 () Bool)

(declare-fun c!507606 () Bool)

(declare-fun call!211363 () Bool)

(declare-fun c!507607 () Bool)

(assert (=> bm!211357 (= call!211363 (validRegex!4214 (ite c!507607 (reg!9810 (regTwo!19474 r!17423)) (ite c!507606 (regTwo!19475 (regTwo!19474 r!17423)) (regOne!19474 (regTwo!19474 r!17423))))))))

(declare-fun b!3058853 () Bool)

(declare-fun e!1915609 () Bool)

(declare-fun e!1915614 () Bool)

(assert (=> b!3058853 (= e!1915609 e!1915614)))

(assert (=> b!3058853 (= c!507607 ((_ is Star!9481) (regTwo!19474 r!17423)))))

(declare-fun b!3058854 () Bool)

(declare-fun e!1915611 () Bool)

(assert (=> b!3058854 (= e!1915614 e!1915611)))

(declare-fun res!1255916 () Bool)

(assert (=> b!3058854 (= res!1255916 (not (nullable!3127 (reg!9810 (regTwo!19474 r!17423)))))))

(assert (=> b!3058854 (=> (not res!1255916) (not e!1915611))))

(declare-fun b!3058855 () Bool)

(declare-fun e!1915615 () Bool)

(declare-fun e!1915610 () Bool)

(assert (=> b!3058855 (= e!1915615 e!1915610)))

(declare-fun res!1255920 () Bool)

(assert (=> b!3058855 (=> (not res!1255920) (not e!1915610))))

(declare-fun call!211364 () Bool)

(assert (=> b!3058855 (= res!1255920 call!211364)))

(declare-fun d!855046 () Bool)

(declare-fun res!1255919 () Bool)

(assert (=> d!855046 (=> res!1255919 e!1915609)))

(assert (=> d!855046 (= res!1255919 ((_ is ElementMatch!9481) (regTwo!19474 r!17423)))))

(assert (=> d!855046 (= (validRegex!4214 (regTwo!19474 r!17423)) e!1915609)))

(declare-fun b!3058856 () Bool)

(assert (=> b!3058856 (= e!1915611 call!211363)))

(declare-fun b!3058857 () Bool)

(declare-fun call!211362 () Bool)

(assert (=> b!3058857 (= e!1915610 call!211362)))

(declare-fun b!3058858 () Bool)

(declare-fun e!1915612 () Bool)

(assert (=> b!3058858 (= e!1915614 e!1915612)))

(assert (=> b!3058858 (= c!507606 ((_ is Union!9481) (regTwo!19474 r!17423)))))

(declare-fun bm!211358 () Bool)

(assert (=> bm!211358 (= call!211362 (validRegex!4214 (ite c!507606 (regOne!19475 (regTwo!19474 r!17423)) (regTwo!19474 (regTwo!19474 r!17423)))))))

(declare-fun b!3058859 () Bool)

(declare-fun res!1255918 () Bool)

(declare-fun e!1915613 () Bool)

(assert (=> b!3058859 (=> (not res!1255918) (not e!1915613))))

(assert (=> b!3058859 (= res!1255918 call!211362)))

(assert (=> b!3058859 (= e!1915612 e!1915613)))

(declare-fun b!3058860 () Bool)

(declare-fun res!1255917 () Bool)

(assert (=> b!3058860 (=> res!1255917 e!1915615)))

(assert (=> b!3058860 (= res!1255917 (not ((_ is Concat!14802) (regTwo!19474 r!17423))))))

(assert (=> b!3058860 (= e!1915612 e!1915615)))

(declare-fun b!3058861 () Bool)

(assert (=> b!3058861 (= e!1915613 call!211364)))

(declare-fun bm!211359 () Bool)

(assert (=> bm!211359 (= call!211364 call!211363)))

(assert (= (and d!855046 (not res!1255919)) b!3058853))

(assert (= (and b!3058853 c!507607) b!3058854))

(assert (= (and b!3058853 (not c!507607)) b!3058858))

(assert (= (and b!3058854 res!1255916) b!3058856))

(assert (= (and b!3058858 c!507606) b!3058859))

(assert (= (and b!3058858 (not c!507606)) b!3058860))

(assert (= (and b!3058859 res!1255918) b!3058861))

(assert (= (and b!3058860 (not res!1255917)) b!3058855))

(assert (= (and b!3058855 res!1255920) b!3058857))

(assert (= (or b!3058859 b!3058857) bm!211358))

(assert (= (or b!3058861 b!3058855) bm!211359))

(assert (= (or b!3058856 bm!211359) bm!211357))

(declare-fun m!3380807 () Bool)

(assert (=> bm!211357 m!3380807))

(declare-fun m!3380809 () Bool)

(assert (=> b!3058854 m!3380809))

(declare-fun m!3380811 () Bool)

(assert (=> bm!211358 m!3380811))

(assert (=> b!3058782 d!855046))

(declare-fun b!3059126 () Bool)

(assert (=> b!3059126 true))

(assert (=> b!3059126 true))

(declare-fun bs!532430 () Bool)

(declare-fun b!3059128 () Bool)

(assert (= bs!532430 (and b!3059128 b!3059126)))

(declare-fun lambda!113850 () Int)

(declare-fun lambda!113849 () Int)

(assert (=> bs!532430 (not (= lambda!113850 lambda!113849))))

(assert (=> b!3059128 true))

(assert (=> b!3059128 true))

(declare-fun b!3059124 () Bool)

(declare-fun c!507699 () Bool)

(assert (=> b!3059124 (= c!507699 ((_ is Union!9481) r!17423))))

(declare-fun e!1915762 () Bool)

(declare-fun e!1915765 () Bool)

(assert (=> b!3059124 (= e!1915762 e!1915765)))

(declare-fun bm!211415 () Bool)

(declare-fun call!211421 () Bool)

(assert (=> bm!211415 (= call!211421 (isEmpty!19537 s!11993))))

(declare-fun b!3059125 () Bool)

(declare-fun e!1915764 () Bool)

(assert (=> b!3059125 (= e!1915765 e!1915764)))

(declare-fun res!1255999 () Bool)

(assert (=> b!3059125 (= res!1255999 (matchRSpec!1618 (regOne!19475 r!17423) s!11993))))

(assert (=> b!3059125 (=> res!1255999 e!1915764)))

(declare-fun e!1915763 () Bool)

(declare-fun call!211420 () Bool)

(assert (=> b!3059126 (= e!1915763 call!211420)))

(declare-fun b!3059127 () Bool)

(assert (=> b!3059127 (= e!1915764 (matchRSpec!1618 (regTwo!19475 r!17423) s!11993))))

(declare-fun e!1915760 () Bool)

(assert (=> b!3059128 (= e!1915760 call!211420)))

(declare-fun b!3059129 () Bool)

(assert (=> b!3059129 (= e!1915762 (= s!11993 (Cons!35222 (c!507585 r!17423) Nil!35222)))))

(declare-fun b!3059130 () Bool)

(declare-fun c!507701 () Bool)

(assert (=> b!3059130 (= c!507701 ((_ is ElementMatch!9481) r!17423))))

(declare-fun e!1915761 () Bool)

(assert (=> b!3059130 (= e!1915761 e!1915762)))

(declare-fun d!855048 () Bool)

(declare-fun c!507698 () Bool)

(assert (=> d!855048 (= c!507698 ((_ is EmptyExpr!9481) r!17423))))

(declare-fun e!1915759 () Bool)

(assert (=> d!855048 (= (matchRSpec!1618 r!17423 s!11993) e!1915759)))

(declare-fun b!3059123 () Bool)

(declare-fun res!1256000 () Bool)

(assert (=> b!3059123 (=> res!1256000 e!1915763)))

(assert (=> b!3059123 (= res!1256000 call!211421)))

(assert (=> b!3059123 (= e!1915760 e!1915763)))

(declare-fun b!3059131 () Bool)

(assert (=> b!3059131 (= e!1915759 e!1915761)))

(declare-fun res!1255998 () Bool)

(assert (=> b!3059131 (= res!1255998 (not ((_ is EmptyLang!9481) r!17423)))))

(assert (=> b!3059131 (=> (not res!1255998) (not e!1915761))))

(declare-fun b!3059132 () Bool)

(assert (=> b!3059132 (= e!1915765 e!1915760)))

(declare-fun c!507700 () Bool)

(assert (=> b!3059132 (= c!507700 ((_ is Star!9481) r!17423))))

(declare-fun bm!211416 () Bool)

(declare-fun Exists!1743 (Int) Bool)

(assert (=> bm!211416 (= call!211420 (Exists!1743 (ite c!507700 lambda!113849 lambda!113850)))))

(declare-fun b!3059133 () Bool)

(assert (=> b!3059133 (= e!1915759 call!211421)))

(assert (= (and d!855048 c!507698) b!3059133))

(assert (= (and d!855048 (not c!507698)) b!3059131))

(assert (= (and b!3059131 res!1255998) b!3059130))

(assert (= (and b!3059130 c!507701) b!3059129))

(assert (= (and b!3059130 (not c!507701)) b!3059124))

(assert (= (and b!3059124 c!507699) b!3059125))

(assert (= (and b!3059124 (not c!507699)) b!3059132))

(assert (= (and b!3059125 (not res!1255999)) b!3059127))

(assert (= (and b!3059132 c!507700) b!3059123))

(assert (= (and b!3059132 (not c!507700)) b!3059128))

(assert (= (and b!3059123 (not res!1256000)) b!3059126))

(assert (= (or b!3059126 b!3059128) bm!211416))

(assert (= (or b!3059133 b!3059123) bm!211415))

(assert (=> bm!211415 m!3380785))

(declare-fun m!3380893 () Bool)

(assert (=> b!3059125 m!3380893))

(declare-fun m!3380895 () Bool)

(assert (=> b!3059127 m!3380895))

(declare-fun m!3380897 () Bool)

(assert (=> bm!211416 m!3380897))

(assert (=> b!3058783 d!855048))

(declare-fun d!855072 () Bool)

(declare-fun e!1915821 () Bool)

(assert (=> d!855072 e!1915821))

(declare-fun c!507718 () Bool)

(assert (=> d!855072 (= c!507718 ((_ is EmptyExpr!9481) r!17423))))

(declare-fun lt!1049570 () Bool)

(declare-fun e!1915824 () Bool)

(assert (=> d!855072 (= lt!1049570 e!1915824)))

(declare-fun c!507716 () Bool)

(assert (=> d!855072 (= c!507716 (isEmpty!19537 s!11993))))

(assert (=> d!855072 (validRegex!4214 r!17423)))

(assert (=> d!855072 (= (matchR!4363 r!17423 s!11993) lt!1049570)))

(declare-fun b!3059237 () Bool)

(declare-fun e!1915819 () Bool)

(declare-fun head!6781 (List!35346) C!19148)

(assert (=> b!3059237 (= e!1915819 (not (= (head!6781 s!11993) (c!507585 r!17423))))))

(declare-fun b!3059238 () Bool)

(declare-fun e!1915822 () Bool)

(assert (=> b!3059238 (= e!1915821 e!1915822)))

(declare-fun c!507717 () Bool)

(assert (=> b!3059238 (= c!507717 ((_ is EmptyLang!9481) r!17423))))

(declare-fun b!3059239 () Bool)

(declare-fun res!1256043 () Bool)

(declare-fun e!1915820 () Bool)

(assert (=> b!3059239 (=> res!1256043 e!1915820)))

(assert (=> b!3059239 (= res!1256043 (not ((_ is ElementMatch!9481) r!17423)))))

(assert (=> b!3059239 (= e!1915822 e!1915820)))

(declare-fun b!3059240 () Bool)

(declare-fun e!1915823 () Bool)

(assert (=> b!3059240 (= e!1915823 e!1915819)))

(declare-fun res!1256042 () Bool)

(assert (=> b!3059240 (=> res!1256042 e!1915819)))

(declare-fun call!211436 () Bool)

(assert (=> b!3059240 (= res!1256042 call!211436)))

(declare-fun b!3059241 () Bool)

(declare-fun res!1256038 () Bool)

(assert (=> b!3059241 (=> res!1256038 e!1915820)))

(declare-fun e!1915818 () Bool)

(assert (=> b!3059241 (= res!1256038 e!1915818)))

(declare-fun res!1256040 () Bool)

(assert (=> b!3059241 (=> (not res!1256040) (not e!1915818))))

(assert (=> b!3059241 (= res!1256040 lt!1049570)))

(declare-fun bm!211431 () Bool)

(assert (=> bm!211431 (= call!211436 (isEmpty!19537 s!11993))))

(declare-fun b!3059242 () Bool)

(declare-fun res!1256037 () Bool)

(assert (=> b!3059242 (=> (not res!1256037) (not e!1915818))))

(declare-fun tail!5007 (List!35346) List!35346)

(assert (=> b!3059242 (= res!1256037 (isEmpty!19537 (tail!5007 s!11993)))))

(declare-fun b!3059243 () Bool)

(declare-fun res!1256039 () Bool)

(assert (=> b!3059243 (=> (not res!1256039) (not e!1915818))))

(assert (=> b!3059243 (= res!1256039 (not call!211436))))

(declare-fun b!3059244 () Bool)

(assert (=> b!3059244 (= e!1915824 (nullable!3127 r!17423))))

(declare-fun b!3059245 () Bool)

(declare-fun res!1256044 () Bool)

(assert (=> b!3059245 (=> res!1256044 e!1915819)))

(assert (=> b!3059245 (= res!1256044 (not (isEmpty!19537 (tail!5007 s!11993))))))

(declare-fun b!3059246 () Bool)

(assert (=> b!3059246 (= e!1915820 e!1915823)))

(declare-fun res!1256041 () Bool)

(assert (=> b!3059246 (=> (not res!1256041) (not e!1915823))))

(assert (=> b!3059246 (= res!1256041 (not lt!1049570))))

(declare-fun b!3059247 () Bool)

(assert (=> b!3059247 (= e!1915818 (= (head!6781 s!11993) (c!507585 r!17423)))))

(declare-fun b!3059248 () Bool)

(assert (=> b!3059248 (= e!1915821 (= lt!1049570 call!211436))))

(declare-fun b!3059249 () Bool)

(assert (=> b!3059249 (= e!1915822 (not lt!1049570))))

(declare-fun b!3059250 () Bool)

(declare-fun derivativeStep!2722 (Regex!9481 C!19148) Regex!9481)

(assert (=> b!3059250 (= e!1915824 (matchR!4363 (derivativeStep!2722 r!17423 (head!6781 s!11993)) (tail!5007 s!11993)))))

(assert (= (and d!855072 c!507716) b!3059244))

(assert (= (and d!855072 (not c!507716)) b!3059250))

(assert (= (and d!855072 c!507718) b!3059248))

(assert (= (and d!855072 (not c!507718)) b!3059238))

(assert (= (and b!3059238 c!507717) b!3059249))

(assert (= (and b!3059238 (not c!507717)) b!3059239))

(assert (= (and b!3059239 (not res!1256043)) b!3059241))

(assert (= (and b!3059241 res!1256040) b!3059243))

(assert (= (and b!3059243 res!1256039) b!3059242))

(assert (= (and b!3059242 res!1256037) b!3059247))

(assert (= (and b!3059241 (not res!1256038)) b!3059246))

(assert (= (and b!3059246 res!1256041) b!3059240))

(assert (= (and b!3059240 (not res!1256042)) b!3059245))

(assert (= (and b!3059245 (not res!1256044)) b!3059237))

(assert (= (or b!3059248 b!3059240 b!3059243) bm!211431))

(declare-fun m!3380911 () Bool)

(assert (=> b!3059237 m!3380911))

(declare-fun m!3380913 () Bool)

(assert (=> b!3059242 m!3380913))

(assert (=> b!3059242 m!3380913))

(declare-fun m!3380915 () Bool)

(assert (=> b!3059242 m!3380915))

(assert (=> b!3059247 m!3380911))

(declare-fun m!3380917 () Bool)

(assert (=> b!3059244 m!3380917))

(assert (=> d!855072 m!3380785))

(assert (=> d!855072 m!3380789))

(assert (=> b!3059245 m!3380913))

(assert (=> b!3059245 m!3380913))

(assert (=> b!3059245 m!3380915))

(assert (=> bm!211431 m!3380785))

(assert (=> b!3059250 m!3380911))

(assert (=> b!3059250 m!3380911))

(declare-fun m!3380919 () Bool)

(assert (=> b!3059250 m!3380919))

(assert (=> b!3059250 m!3380913))

(assert (=> b!3059250 m!3380919))

(assert (=> b!3059250 m!3380913))

(declare-fun m!3380921 () Bool)

(assert (=> b!3059250 m!3380921))

(assert (=> b!3058783 d!855072))

(declare-fun d!855076 () Bool)

(assert (=> d!855076 (= (matchR!4363 r!17423 s!11993) (matchRSpec!1618 r!17423 s!11993))))

(declare-fun lt!1049573 () Unit!49401)

(declare-fun choose!18114 (Regex!9481 List!35346) Unit!49401)

(assert (=> d!855076 (= lt!1049573 (choose!18114 r!17423 s!11993))))

(assert (=> d!855076 (validRegex!4214 r!17423)))

(assert (=> d!855076 (= (mainMatchTheorem!1618 r!17423 s!11993) lt!1049573)))

(declare-fun bs!532431 () Bool)

(assert (= bs!532431 d!855076))

(assert (=> bs!532431 m!3380797))

(assert (=> bs!532431 m!3380795))

(declare-fun m!3380923 () Bool)

(assert (=> bs!532431 m!3380923))

(assert (=> bs!532431 m!3380789))

(assert (=> b!3058783 d!855076))

(declare-fun d!855078 () Bool)

(assert (=> d!855078 (= (isEmpty!19537 s!11993) ((_ is Nil!35222) s!11993))))

(assert (=> b!3058781 d!855078))

(declare-fun d!855080 () Bool)

(assert (=> d!855080 (= (isEmptyExpr!538 lt!1049529) ((_ is EmptyExpr!9481) lt!1049529))))

(assert (=> b!3058787 d!855080))

(declare-fun d!855082 () Bool)

(assert (=> d!855082 (= (isEmptyLang!532 lt!1049529) ((_ is EmptyLang!9481) lt!1049529))))

(assert (=> b!3058791 d!855082))

(declare-fun b!3059301 () Bool)

(declare-fun e!1915855 () Regex!9481)

(declare-fun lt!1049590 () Regex!9481)

(assert (=> b!3059301 (= e!1915855 (Star!9481 lt!1049590))))

(declare-fun b!3059302 () Bool)

(declare-fun e!1915859 () Regex!9481)

(declare-fun lt!1049587 () Regex!9481)

(assert (=> b!3059302 (= e!1915859 lt!1049587)))

(declare-fun b!3059303 () Bool)

(declare-fun e!1915856 () Regex!9481)

(assert (=> b!3059303 (= e!1915856 EmptyLang!9481)))

(declare-fun b!3059304 () Bool)

(declare-fun c!507745 () Bool)

(assert (=> b!3059304 (= c!507745 ((_ is Union!9481) (regTwo!19474 r!17423)))))

(declare-fun e!1915861 () Regex!9481)

(declare-fun e!1915865 () Regex!9481)

(assert (=> b!3059304 (= e!1915861 e!1915865)))

(declare-fun b!3059305 () Bool)

(declare-fun e!1915854 () Bool)

(declare-fun lt!1049588 () Regex!9481)

(assert (=> b!3059305 (= e!1915854 (= (nullable!3127 lt!1049588) (nullable!3127 (regTwo!19474 r!17423))))))

(declare-fun b!3059306 () Bool)

(declare-fun e!1915863 () Regex!9481)

(assert (=> b!3059306 (= e!1915863 EmptyExpr!9481)))

(declare-fun call!211455 () Bool)

(declare-fun lt!1049591 () Regex!9481)

(declare-fun bm!211446 () Bool)

(declare-fun c!507744 () Bool)

(assert (=> bm!211446 (= call!211455 (isEmptyExpr!538 (ite c!507744 lt!1049590 lt!1049591)))))

(declare-fun b!3059307 () Bool)

(assert (=> b!3059307 (= e!1915863 e!1915861)))

(assert (=> b!3059307 (= c!507744 ((_ is Star!9481) (regTwo!19474 r!17423)))))

(declare-fun b!3059308 () Bool)

(declare-fun e!1915858 () Regex!9481)

(declare-fun lt!1049589 () Regex!9481)

(assert (=> b!3059308 (= e!1915858 lt!1049589)))

(declare-fun bm!211447 () Bool)

(declare-fun call!211452 () Regex!9481)

(assert (=> bm!211447 (= call!211452 (simplify!436 (ite c!507745 (regOne!19475 (regTwo!19474 r!17423)) (regTwo!19474 (regTwo!19474 r!17423)))))))

(declare-fun b!3059310 () Bool)

(declare-fun e!1915857 () Regex!9481)

(declare-fun e!1915862 () Regex!9481)

(assert (=> b!3059310 (= e!1915857 e!1915862)))

(declare-fun c!507749 () Bool)

(assert (=> b!3059310 (= c!507749 ((_ is ElementMatch!9481) (regTwo!19474 r!17423)))))

(declare-fun b!3059311 () Bool)

(assert (=> b!3059311 (= e!1915865 e!1915859)))

(declare-fun lt!1049586 () Regex!9481)

(assert (=> b!3059311 (= lt!1049586 call!211452)))

(declare-fun call!211451 () Regex!9481)

(assert (=> b!3059311 (= lt!1049587 call!211451)))

(declare-fun c!507743 () Bool)

(declare-fun call!211453 () Bool)

(assert (=> b!3059311 (= c!507743 call!211453)))

(declare-fun b!3059312 () Bool)

(declare-fun e!1915860 () Bool)

(assert (=> b!3059312 (= e!1915860 call!211453)))

(declare-fun b!3059313 () Bool)

(assert (=> b!3059313 (= e!1915865 e!1915856)))

(assert (=> b!3059313 (= lt!1049591 call!211451)))

(assert (=> b!3059313 (= lt!1049589 call!211452)))

(declare-fun res!1256051 () Bool)

(declare-fun call!211454 () Bool)

(assert (=> b!3059313 (= res!1256051 call!211454)))

(assert (=> b!3059313 (=> res!1256051 e!1915860)))

(declare-fun c!507741 () Bool)

(assert (=> b!3059313 (= c!507741 e!1915860)))

(declare-fun b!3059314 () Bool)

(declare-fun c!507742 () Bool)

(assert (=> b!3059314 (= c!507742 call!211455)))

(assert (=> b!3059314 (= e!1915856 e!1915858)))

(declare-fun call!211457 () Regex!9481)

(declare-fun bm!211448 () Bool)

(assert (=> bm!211448 (= call!211457 (simplify!436 (ite c!507744 (reg!9810 (regTwo!19474 r!17423)) (ite c!507745 (regTwo!19475 (regTwo!19474 r!17423)) (regOne!19474 (regTwo!19474 r!17423))))))))

(declare-fun b!3059315 () Bool)

(declare-fun c!507751 () Bool)

(assert (=> b!3059315 (= c!507751 call!211454)))

(declare-fun e!1915866 () Regex!9481)

(assert (=> b!3059315 (= e!1915859 e!1915866)))

(declare-fun bm!211449 () Bool)

(assert (=> bm!211449 (= call!211453 (isEmptyLang!532 (ite c!507745 lt!1049586 lt!1049589)))))

(declare-fun b!3059316 () Bool)

(declare-fun e!1915864 () Regex!9481)

(assert (=> b!3059316 (= e!1915864 lt!1049591)))

(declare-fun b!3059317 () Bool)

(assert (=> b!3059317 (= e!1915862 (regTwo!19474 r!17423))))

(declare-fun b!3059318 () Bool)

(assert (=> b!3059318 (= e!1915866 (Union!9481 lt!1049586 lt!1049587))))

(declare-fun b!3059319 () Bool)

(assert (=> b!3059319 (= e!1915866 lt!1049586)))

(declare-fun b!3059320 () Bool)

(assert (=> b!3059320 (= e!1915864 (Concat!14802 lt!1049591 lt!1049589))))

(declare-fun b!3059321 () Bool)

(declare-fun c!507750 () Bool)

(declare-fun e!1915853 () Bool)

(assert (=> b!3059321 (= c!507750 e!1915853)))

(declare-fun res!1256052 () Bool)

(assert (=> b!3059321 (=> res!1256052 e!1915853)))

(declare-fun call!211456 () Bool)

(assert (=> b!3059321 (= res!1256052 call!211456)))

(assert (=> b!3059321 (= lt!1049590 call!211457)))

(assert (=> b!3059321 (= e!1915861 e!1915855)))

(declare-fun bm!211450 () Bool)

(assert (=> bm!211450 (= call!211451 call!211457)))

(declare-fun b!3059322 () Bool)

(assert (=> b!3059322 (= e!1915858 e!1915864)))

(declare-fun c!507746 () Bool)

(assert (=> b!3059322 (= c!507746 (isEmptyExpr!538 lt!1049589))))

(declare-fun b!3059323 () Bool)

(assert (=> b!3059323 (= e!1915857 EmptyLang!9481)))

(declare-fun bm!211451 () Bool)

(assert (=> bm!211451 (= call!211454 call!211456)))

(declare-fun bm!211452 () Bool)

(assert (=> bm!211452 (= call!211456 (isEmptyLang!532 (ite c!507744 lt!1049590 (ite c!507745 lt!1049587 lt!1049591))))))

(declare-fun d!855084 () Bool)

(assert (=> d!855084 e!1915854))

(declare-fun res!1256053 () Bool)

(assert (=> d!855084 (=> (not res!1256053) (not e!1915854))))

(assert (=> d!855084 (= res!1256053 (validRegex!4214 lt!1049588))))

(assert (=> d!855084 (= lt!1049588 e!1915857)))

(declare-fun c!507748 () Bool)

(assert (=> d!855084 (= c!507748 ((_ is EmptyLang!9481) (regTwo!19474 r!17423)))))

(assert (=> d!855084 (validRegex!4214 (regTwo!19474 r!17423))))

(assert (=> d!855084 (= (simplify!436 (regTwo!19474 r!17423)) lt!1049588)))

(declare-fun b!3059309 () Bool)

(assert (=> b!3059309 (= e!1915853 call!211455)))

(declare-fun b!3059324 () Bool)

(declare-fun c!507747 () Bool)

(assert (=> b!3059324 (= c!507747 ((_ is EmptyExpr!9481) (regTwo!19474 r!17423)))))

(assert (=> b!3059324 (= e!1915862 e!1915863)))

(declare-fun b!3059325 () Bool)

(assert (=> b!3059325 (= e!1915855 EmptyExpr!9481)))

(assert (= (and d!855084 c!507748) b!3059323))

(assert (= (and d!855084 (not c!507748)) b!3059310))

(assert (= (and b!3059310 c!507749) b!3059317))

(assert (= (and b!3059310 (not c!507749)) b!3059324))

(assert (= (and b!3059324 c!507747) b!3059306))

(assert (= (and b!3059324 (not c!507747)) b!3059307))

(assert (= (and b!3059307 c!507744) b!3059321))

(assert (= (and b!3059307 (not c!507744)) b!3059304))

(assert (= (and b!3059321 (not res!1256052)) b!3059309))

(assert (= (and b!3059321 c!507750) b!3059325))

(assert (= (and b!3059321 (not c!507750)) b!3059301))

(assert (= (and b!3059304 c!507745) b!3059311))

(assert (= (and b!3059304 (not c!507745)) b!3059313))

(assert (= (and b!3059311 c!507743) b!3059302))

(assert (= (and b!3059311 (not c!507743)) b!3059315))

(assert (= (and b!3059315 c!507751) b!3059319))

(assert (= (and b!3059315 (not c!507751)) b!3059318))

(assert (= (and b!3059313 (not res!1256051)) b!3059312))

(assert (= (and b!3059313 c!507741) b!3059303))

(assert (= (and b!3059313 (not c!507741)) b!3059314))

(assert (= (and b!3059314 c!507742) b!3059308))

(assert (= (and b!3059314 (not c!507742)) b!3059322))

(assert (= (and b!3059322 c!507746) b!3059316))

(assert (= (and b!3059322 (not c!507746)) b!3059320))

(assert (= (or b!3059311 b!3059313) bm!211447))

(assert (= (or b!3059311 b!3059313) bm!211450))

(assert (= (or b!3059315 b!3059313) bm!211451))

(assert (= (or b!3059311 b!3059312) bm!211449))

(assert (= (or b!3059309 b!3059314) bm!211446))

(assert (= (or b!3059321 bm!211450) bm!211448))

(assert (= (or b!3059321 bm!211451) bm!211452))

(assert (= (and d!855084 res!1256053) b!3059305))

(declare-fun m!3380925 () Bool)

(assert (=> d!855084 m!3380925))

(assert (=> d!855084 m!3380793))

(declare-fun m!3380927 () Bool)

(assert (=> bm!211452 m!3380927))

(declare-fun m!3380929 () Bool)

(assert (=> bm!211447 m!3380929))

(declare-fun m!3380931 () Bool)

(assert (=> bm!211446 m!3380931))

(declare-fun m!3380933 () Bool)

(assert (=> bm!211449 m!3380933))

(declare-fun m!3380935 () Bool)

(assert (=> b!3059305 m!3380935))

(declare-fun m!3380937 () Bool)

(assert (=> b!3059305 m!3380937))

(declare-fun m!3380939 () Bool)

(assert (=> b!3059322 m!3380939))

(declare-fun m!3380941 () Bool)

(assert (=> bm!211448 m!3380941))

(assert (=> b!3058791 d!855084))

(declare-fun b!3059326 () Bool)

(declare-fun e!1915869 () Regex!9481)

(declare-fun lt!1049596 () Regex!9481)

(assert (=> b!3059326 (= e!1915869 (Star!9481 lt!1049596))))

(declare-fun b!3059327 () Bool)

(declare-fun e!1915873 () Regex!9481)

(declare-fun lt!1049593 () Regex!9481)

(assert (=> b!3059327 (= e!1915873 lt!1049593)))

(declare-fun b!3059328 () Bool)

(declare-fun e!1915870 () Regex!9481)

(assert (=> b!3059328 (= e!1915870 EmptyLang!9481)))

(declare-fun b!3059329 () Bool)

(declare-fun c!507756 () Bool)

(assert (=> b!3059329 (= c!507756 ((_ is Union!9481) (regOne!19474 r!17423)))))

(declare-fun e!1915875 () Regex!9481)

(declare-fun e!1915879 () Regex!9481)

(assert (=> b!3059329 (= e!1915875 e!1915879)))

(declare-fun b!3059330 () Bool)

(declare-fun e!1915868 () Bool)

(declare-fun lt!1049594 () Regex!9481)

(assert (=> b!3059330 (= e!1915868 (= (nullable!3127 lt!1049594) (nullable!3127 (regOne!19474 r!17423))))))

(declare-fun b!3059331 () Bool)

(declare-fun e!1915877 () Regex!9481)

(assert (=> b!3059331 (= e!1915877 EmptyExpr!9481)))

(declare-fun lt!1049597 () Regex!9481)

(declare-fun c!507755 () Bool)

(declare-fun call!211462 () Bool)

(declare-fun bm!211453 () Bool)

(assert (=> bm!211453 (= call!211462 (isEmptyExpr!538 (ite c!507755 lt!1049596 lt!1049597)))))

(declare-fun b!3059332 () Bool)

(assert (=> b!3059332 (= e!1915877 e!1915875)))

(assert (=> b!3059332 (= c!507755 ((_ is Star!9481) (regOne!19474 r!17423)))))

(declare-fun b!3059333 () Bool)

(declare-fun e!1915872 () Regex!9481)

(declare-fun lt!1049595 () Regex!9481)

(assert (=> b!3059333 (= e!1915872 lt!1049595)))

(declare-fun bm!211454 () Bool)

(declare-fun call!211459 () Regex!9481)

(assert (=> bm!211454 (= call!211459 (simplify!436 (ite c!507756 (regOne!19475 (regOne!19474 r!17423)) (regTwo!19474 (regOne!19474 r!17423)))))))

(declare-fun b!3059335 () Bool)

(declare-fun e!1915871 () Regex!9481)

(declare-fun e!1915876 () Regex!9481)

(assert (=> b!3059335 (= e!1915871 e!1915876)))

(declare-fun c!507760 () Bool)

(assert (=> b!3059335 (= c!507760 ((_ is ElementMatch!9481) (regOne!19474 r!17423)))))

(declare-fun b!3059336 () Bool)

(assert (=> b!3059336 (= e!1915879 e!1915873)))

(declare-fun lt!1049592 () Regex!9481)

(assert (=> b!3059336 (= lt!1049592 call!211459)))

(declare-fun call!211458 () Regex!9481)

(assert (=> b!3059336 (= lt!1049593 call!211458)))

(declare-fun c!507754 () Bool)

(declare-fun call!211460 () Bool)

(assert (=> b!3059336 (= c!507754 call!211460)))

(declare-fun b!3059337 () Bool)

(declare-fun e!1915874 () Bool)

(assert (=> b!3059337 (= e!1915874 call!211460)))

(declare-fun b!3059338 () Bool)

(assert (=> b!3059338 (= e!1915879 e!1915870)))

(assert (=> b!3059338 (= lt!1049597 call!211458)))

(assert (=> b!3059338 (= lt!1049595 call!211459)))

(declare-fun res!1256054 () Bool)

(declare-fun call!211461 () Bool)

(assert (=> b!3059338 (= res!1256054 call!211461)))

(assert (=> b!3059338 (=> res!1256054 e!1915874)))

(declare-fun c!507752 () Bool)

(assert (=> b!3059338 (= c!507752 e!1915874)))

(declare-fun b!3059339 () Bool)

(declare-fun c!507753 () Bool)

(assert (=> b!3059339 (= c!507753 call!211462)))

(assert (=> b!3059339 (= e!1915870 e!1915872)))

(declare-fun bm!211455 () Bool)

(declare-fun call!211464 () Regex!9481)

(assert (=> bm!211455 (= call!211464 (simplify!436 (ite c!507755 (reg!9810 (regOne!19474 r!17423)) (ite c!507756 (regTwo!19475 (regOne!19474 r!17423)) (regOne!19474 (regOne!19474 r!17423))))))))

(declare-fun b!3059340 () Bool)

(declare-fun c!507762 () Bool)

(assert (=> b!3059340 (= c!507762 call!211461)))

(declare-fun e!1915880 () Regex!9481)

(assert (=> b!3059340 (= e!1915873 e!1915880)))

(declare-fun bm!211456 () Bool)

(assert (=> bm!211456 (= call!211460 (isEmptyLang!532 (ite c!507756 lt!1049592 lt!1049595)))))

(declare-fun b!3059341 () Bool)

(declare-fun e!1915878 () Regex!9481)

(assert (=> b!3059341 (= e!1915878 lt!1049597)))

(declare-fun b!3059342 () Bool)

(assert (=> b!3059342 (= e!1915876 (regOne!19474 r!17423))))

(declare-fun b!3059343 () Bool)

(assert (=> b!3059343 (= e!1915880 (Union!9481 lt!1049592 lt!1049593))))

(declare-fun b!3059344 () Bool)

(assert (=> b!3059344 (= e!1915880 lt!1049592)))

(declare-fun b!3059345 () Bool)

(assert (=> b!3059345 (= e!1915878 (Concat!14802 lt!1049597 lt!1049595))))

(declare-fun b!3059346 () Bool)

(declare-fun c!507761 () Bool)

(declare-fun e!1915867 () Bool)

(assert (=> b!3059346 (= c!507761 e!1915867)))

(declare-fun res!1256055 () Bool)

(assert (=> b!3059346 (=> res!1256055 e!1915867)))

(declare-fun call!211463 () Bool)

(assert (=> b!3059346 (= res!1256055 call!211463)))

(assert (=> b!3059346 (= lt!1049596 call!211464)))

(assert (=> b!3059346 (= e!1915875 e!1915869)))

(declare-fun bm!211457 () Bool)

(assert (=> bm!211457 (= call!211458 call!211464)))

(declare-fun b!3059347 () Bool)

(assert (=> b!3059347 (= e!1915872 e!1915878)))

(declare-fun c!507757 () Bool)

(assert (=> b!3059347 (= c!507757 (isEmptyExpr!538 lt!1049595))))

(declare-fun b!3059348 () Bool)

(assert (=> b!3059348 (= e!1915871 EmptyLang!9481)))

(declare-fun bm!211458 () Bool)

(assert (=> bm!211458 (= call!211461 call!211463)))

(declare-fun bm!211459 () Bool)

(assert (=> bm!211459 (= call!211463 (isEmptyLang!532 (ite c!507755 lt!1049596 (ite c!507756 lt!1049593 lt!1049597))))))

(declare-fun d!855086 () Bool)

(assert (=> d!855086 e!1915868))

(declare-fun res!1256056 () Bool)

(assert (=> d!855086 (=> (not res!1256056) (not e!1915868))))

(assert (=> d!855086 (= res!1256056 (validRegex!4214 lt!1049594))))

(assert (=> d!855086 (= lt!1049594 e!1915871)))

(declare-fun c!507759 () Bool)

(assert (=> d!855086 (= c!507759 ((_ is EmptyLang!9481) (regOne!19474 r!17423)))))

(assert (=> d!855086 (validRegex!4214 (regOne!19474 r!17423))))

(assert (=> d!855086 (= (simplify!436 (regOne!19474 r!17423)) lt!1049594)))

(declare-fun b!3059334 () Bool)

(assert (=> b!3059334 (= e!1915867 call!211462)))

(declare-fun b!3059349 () Bool)

(declare-fun c!507758 () Bool)

(assert (=> b!3059349 (= c!507758 ((_ is EmptyExpr!9481) (regOne!19474 r!17423)))))

(assert (=> b!3059349 (= e!1915876 e!1915877)))

(declare-fun b!3059350 () Bool)

(assert (=> b!3059350 (= e!1915869 EmptyExpr!9481)))

(assert (= (and d!855086 c!507759) b!3059348))

(assert (= (and d!855086 (not c!507759)) b!3059335))

(assert (= (and b!3059335 c!507760) b!3059342))

(assert (= (and b!3059335 (not c!507760)) b!3059349))

(assert (= (and b!3059349 c!507758) b!3059331))

(assert (= (and b!3059349 (not c!507758)) b!3059332))

(assert (= (and b!3059332 c!507755) b!3059346))

(assert (= (and b!3059332 (not c!507755)) b!3059329))

(assert (= (and b!3059346 (not res!1256055)) b!3059334))

(assert (= (and b!3059346 c!507761) b!3059350))

(assert (= (and b!3059346 (not c!507761)) b!3059326))

(assert (= (and b!3059329 c!507756) b!3059336))

(assert (= (and b!3059329 (not c!507756)) b!3059338))

(assert (= (and b!3059336 c!507754) b!3059327))

(assert (= (and b!3059336 (not c!507754)) b!3059340))

(assert (= (and b!3059340 c!507762) b!3059344))

(assert (= (and b!3059340 (not c!507762)) b!3059343))

(assert (= (and b!3059338 (not res!1256054)) b!3059337))

(assert (= (and b!3059338 c!507752) b!3059328))

(assert (= (and b!3059338 (not c!507752)) b!3059339))

(assert (= (and b!3059339 c!507753) b!3059333))

(assert (= (and b!3059339 (not c!507753)) b!3059347))

(assert (= (and b!3059347 c!507757) b!3059341))

(assert (= (and b!3059347 (not c!507757)) b!3059345))

(assert (= (or b!3059336 b!3059338) bm!211454))

(assert (= (or b!3059336 b!3059338) bm!211457))

(assert (= (or b!3059340 b!3059338) bm!211458))

(assert (= (or b!3059336 b!3059337) bm!211456))

(assert (= (or b!3059334 b!3059339) bm!211453))

(assert (= (or b!3059346 bm!211457) bm!211455))

(assert (= (or b!3059346 bm!211458) bm!211459))

(assert (= (and d!855086 res!1256056) b!3059330))

(declare-fun m!3380943 () Bool)

(assert (=> d!855086 m!3380943))

(declare-fun m!3380945 () Bool)

(assert (=> d!855086 m!3380945))

(declare-fun m!3380947 () Bool)

(assert (=> bm!211459 m!3380947))

(declare-fun m!3380949 () Bool)

(assert (=> bm!211454 m!3380949))

(declare-fun m!3380951 () Bool)

(assert (=> bm!211453 m!3380951))

(declare-fun m!3380953 () Bool)

(assert (=> bm!211456 m!3380953))

(declare-fun m!3380955 () Bool)

(assert (=> b!3059330 m!3380955))

(declare-fun m!3380957 () Bool)

(assert (=> b!3059330 m!3380957))

(declare-fun m!3380959 () Bool)

(assert (=> b!3059347 m!3380959))

(declare-fun m!3380961 () Bool)

(assert (=> bm!211455 m!3380961))

(assert (=> b!3058791 d!855086))

(declare-fun d!855088 () Bool)

(declare-fun e!1915903 () Bool)

(assert (=> d!855088 e!1915903))

(declare-fun res!1256063 () Bool)

(assert (=> d!855088 (=> (not res!1256063) (not e!1915903))))

(declare-fun lt!1049600 () Int)

(assert (=> d!855088 (= res!1256063 (> lt!1049600 0))))

(declare-fun e!1915902 () Int)

(assert (=> d!855088 (= lt!1049600 e!1915902)))

(declare-fun c!507778 () Bool)

(assert (=> d!855088 (= c!507778 ((_ is ElementMatch!9481) r!17423))))

(assert (=> d!855088 (= (regexDepth!99 r!17423) lt!1049600)))

(declare-fun b!3059385 () Bool)

(declare-fun e!1915909 () Bool)

(declare-fun call!211481 () Int)

(assert (=> b!3059385 (= e!1915909 (> lt!1049600 call!211481))))

(declare-fun b!3059386 () Bool)

(declare-fun res!1256065 () Bool)

(declare-fun e!1915907 () Bool)

(assert (=> b!3059386 (=> (not res!1256065) (not e!1915907))))

(declare-fun call!211485 () Int)

(assert (=> b!3059386 (= res!1256065 (> lt!1049600 call!211485))))

(declare-fun e!1915906 () Bool)

(assert (=> b!3059386 (= e!1915906 e!1915907)))

(declare-fun b!3059387 () Bool)

(declare-fun e!1915908 () Bool)

(assert (=> b!3059387 (= e!1915908 e!1915906)))

(declare-fun c!507781 () Bool)

(assert (=> b!3059387 (= c!507781 ((_ is Concat!14802) r!17423))))

(declare-fun b!3059388 () Bool)

(assert (=> b!3059388 (= e!1915902 1)))

(declare-fun c!507782 () Bool)

(declare-fun bm!211474 () Bool)

(declare-fun call!211482 () Int)

(assert (=> bm!211474 (= call!211482 (regexDepth!99 (ite c!507782 (regTwo!19475 r!17423) (ite c!507781 (regTwo!19474 r!17423) (reg!9810 r!17423)))))))

(declare-fun b!3059389 () Bool)

(declare-fun e!1915904 () Int)

(declare-fun call!211479 () Int)

(assert (=> b!3059389 (= e!1915904 (+ 1 call!211479))))

(declare-fun bm!211475 () Bool)

(declare-fun call!211480 () Int)

(declare-fun c!507777 () Bool)

(assert (=> bm!211475 (= call!211480 (regexDepth!99 (ite c!507777 (regOne!19475 r!17423) (regOne!19474 r!17423))))))

(declare-fun b!3059390 () Bool)

(declare-fun c!507779 () Bool)

(assert (=> b!3059390 (= c!507779 ((_ is Star!9481) r!17423))))

(assert (=> b!3059390 (= e!1915906 e!1915909)))

(declare-fun b!3059391 () Bool)

(assert (=> b!3059391 (= e!1915909 (= lt!1049600 1))))

(declare-fun b!3059392 () Bool)

(declare-fun e!1915905 () Int)

(declare-fun call!211483 () Int)

(assert (=> b!3059392 (= e!1915905 (+ 1 call!211483))))

(declare-fun b!3059393 () Bool)

(declare-fun e!1915901 () Bool)

(assert (=> b!3059393 (= e!1915908 e!1915901)))

(declare-fun res!1256064 () Bool)

(assert (=> b!3059393 (= res!1256064 (> lt!1049600 call!211485))))

(assert (=> b!3059393 (=> (not res!1256064) (not e!1915901))))

(declare-fun b!3059394 () Bool)

(assert (=> b!3059394 (= e!1915903 e!1915908)))

(assert (=> b!3059394 (= c!507782 ((_ is Union!9481) r!17423))))

(declare-fun b!3059395 () Bool)

(assert (=> b!3059395 (= e!1915901 (> lt!1049600 call!211482))))

(declare-fun b!3059396 () Bool)

(declare-fun e!1915910 () Int)

(assert (=> b!3059396 (= e!1915904 e!1915910)))

(declare-fun c!507780 () Bool)

(assert (=> b!3059396 (= c!507780 ((_ is Concat!14802) r!17423))))

(declare-fun bm!211476 () Bool)

(declare-fun call!211484 () Int)

(assert (=> bm!211476 (= call!211484 call!211483)))

(declare-fun b!3059397 () Bool)

(assert (=> b!3059397 (= e!1915902 e!1915905)))

(declare-fun c!507783 () Bool)

(assert (=> b!3059397 (= c!507783 ((_ is Star!9481) r!17423))))

(declare-fun bm!211477 () Bool)

(assert (=> bm!211477 (= call!211483 (regexDepth!99 (ite c!507783 (reg!9810 r!17423) (ite c!507777 (regTwo!19475 r!17423) (regTwo!19474 r!17423)))))))

(declare-fun b!3059398 () Bool)

(assert (=> b!3059398 (= e!1915910 (+ 1 call!211479))))

(declare-fun bm!211478 () Bool)

(assert (=> bm!211478 (= call!211485 (regexDepth!99 (ite c!507782 (regOne!19475 r!17423) (regOne!19474 r!17423))))))

(declare-fun b!3059399 () Bool)

(assert (=> b!3059399 (= e!1915907 (> lt!1049600 call!211481))))

(declare-fun b!3059400 () Bool)

(assert (=> b!3059400 (= e!1915910 1)))

(declare-fun bm!211479 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!211479 (= call!211479 (maxBigInt!0 call!211480 call!211484))))

(declare-fun bm!211480 () Bool)

(assert (=> bm!211480 (= call!211481 call!211482)))

(declare-fun b!3059401 () Bool)

(assert (=> b!3059401 (= c!507777 ((_ is Union!9481) r!17423))))

(assert (=> b!3059401 (= e!1915905 e!1915904)))

(assert (= (and d!855088 c!507778) b!3059388))

(assert (= (and d!855088 (not c!507778)) b!3059397))

(assert (= (and b!3059397 c!507783) b!3059392))

(assert (= (and b!3059397 (not c!507783)) b!3059401))

(assert (= (and b!3059401 c!507777) b!3059389))

(assert (= (and b!3059401 (not c!507777)) b!3059396))

(assert (= (and b!3059396 c!507780) b!3059398))

(assert (= (and b!3059396 (not c!507780)) b!3059400))

(assert (= (or b!3059389 b!3059398) bm!211476))

(assert (= (or b!3059389 b!3059398) bm!211475))

(assert (= (or b!3059389 b!3059398) bm!211479))

(assert (= (or b!3059392 bm!211476) bm!211477))

(assert (= (and d!855088 res!1256063) b!3059394))

(assert (= (and b!3059394 c!507782) b!3059393))

(assert (= (and b!3059394 (not c!507782)) b!3059387))

(assert (= (and b!3059393 res!1256064) b!3059395))

(assert (= (and b!3059387 c!507781) b!3059386))

(assert (= (and b!3059387 (not c!507781)) b!3059390))

(assert (= (and b!3059386 res!1256065) b!3059399))

(assert (= (and b!3059390 c!507779) b!3059385))

(assert (= (and b!3059390 (not c!507779)) b!3059391))

(assert (= (or b!3059399 b!3059385) bm!211480))

(assert (= (or b!3059395 bm!211480) bm!211474))

(assert (= (or b!3059393 b!3059386) bm!211478))

(declare-fun m!3380963 () Bool)

(assert (=> bm!211478 m!3380963))

(declare-fun m!3380965 () Bool)

(assert (=> bm!211479 m!3380965))

(declare-fun m!3380967 () Bool)

(assert (=> bm!211474 m!3380967))

(declare-fun m!3380969 () Bool)

(assert (=> bm!211477 m!3380969))

(declare-fun m!3380971 () Bool)

(assert (=> bm!211475 m!3380971))

(assert (=> b!3058780 d!855088))

(declare-fun d!855090 () Bool)

(declare-fun lt!1049603 () Int)

(assert (=> d!855090 (>= lt!1049603 0)))

(declare-fun e!1915913 () Int)

(assert (=> d!855090 (= lt!1049603 e!1915913)))

(declare-fun c!507786 () Bool)

(assert (=> d!855090 (= c!507786 ((_ is Nil!35222) s!11993))))

(assert (=> d!855090 (= (size!26551 s!11993) lt!1049603)))

(declare-fun b!3059406 () Bool)

(assert (=> b!3059406 (= e!1915913 0)))

(declare-fun b!3059407 () Bool)

(assert (=> b!3059407 (= e!1915913 (+ 1 (size!26551 (t!234411 s!11993))))))

(assert (= (and d!855090 c!507786) b!3059406))

(assert (= (and d!855090 (not c!507786)) b!3059407))

(declare-fun m!3380973 () Bool)

(assert (=> b!3059407 m!3380973))

(assert (=> b!3058780 d!855090))

(declare-fun d!855092 () Bool)

(declare-fun e!1915916 () Bool)

(assert (=> d!855092 e!1915916))

(declare-fun res!1256066 () Bool)

(assert (=> d!855092 (=> (not res!1256066) (not e!1915916))))

(declare-fun lt!1049604 () Int)

(assert (=> d!855092 (= res!1256066 (> lt!1049604 0))))

(declare-fun e!1915915 () Int)

(assert (=> d!855092 (= lt!1049604 e!1915915)))

(declare-fun c!507788 () Bool)

(assert (=> d!855092 (= c!507788 ((_ is ElementMatch!9481) (regTwo!19474 r!17423)))))

(assert (=> d!855092 (= (regexDepth!99 (regTwo!19474 r!17423)) lt!1049604)))

(declare-fun b!3059408 () Bool)

(declare-fun e!1915922 () Bool)

(declare-fun call!211488 () Int)

(assert (=> b!3059408 (= e!1915922 (> lt!1049604 call!211488))))

(declare-fun b!3059409 () Bool)

(declare-fun res!1256068 () Bool)

(declare-fun e!1915920 () Bool)

(assert (=> b!3059409 (=> (not res!1256068) (not e!1915920))))

(declare-fun call!211492 () Int)

(assert (=> b!3059409 (= res!1256068 (> lt!1049604 call!211492))))

(declare-fun e!1915919 () Bool)

(assert (=> b!3059409 (= e!1915919 e!1915920)))

(declare-fun b!3059410 () Bool)

(declare-fun e!1915921 () Bool)

(assert (=> b!3059410 (= e!1915921 e!1915919)))

(declare-fun c!507791 () Bool)

(assert (=> b!3059410 (= c!507791 ((_ is Concat!14802) (regTwo!19474 r!17423)))))

(declare-fun b!3059411 () Bool)

(assert (=> b!3059411 (= e!1915915 1)))

(declare-fun bm!211481 () Bool)

(declare-fun c!507792 () Bool)

(declare-fun call!211489 () Int)

(assert (=> bm!211481 (= call!211489 (regexDepth!99 (ite c!507792 (regTwo!19475 (regTwo!19474 r!17423)) (ite c!507791 (regTwo!19474 (regTwo!19474 r!17423)) (reg!9810 (regTwo!19474 r!17423))))))))

(declare-fun b!3059412 () Bool)

(declare-fun e!1915917 () Int)

(declare-fun call!211486 () Int)

(assert (=> b!3059412 (= e!1915917 (+ 1 call!211486))))

(declare-fun bm!211482 () Bool)

(declare-fun call!211487 () Int)

(declare-fun c!507787 () Bool)

(assert (=> bm!211482 (= call!211487 (regexDepth!99 (ite c!507787 (regOne!19475 (regTwo!19474 r!17423)) (regOne!19474 (regTwo!19474 r!17423)))))))

(declare-fun b!3059413 () Bool)

(declare-fun c!507789 () Bool)

(assert (=> b!3059413 (= c!507789 ((_ is Star!9481) (regTwo!19474 r!17423)))))

(assert (=> b!3059413 (= e!1915919 e!1915922)))

(declare-fun b!3059414 () Bool)

(assert (=> b!3059414 (= e!1915922 (= lt!1049604 1))))

(declare-fun b!3059415 () Bool)

(declare-fun e!1915918 () Int)

(declare-fun call!211490 () Int)

(assert (=> b!3059415 (= e!1915918 (+ 1 call!211490))))

(declare-fun b!3059416 () Bool)

(declare-fun e!1915914 () Bool)

(assert (=> b!3059416 (= e!1915921 e!1915914)))

(declare-fun res!1256067 () Bool)

(assert (=> b!3059416 (= res!1256067 (> lt!1049604 call!211492))))

(assert (=> b!3059416 (=> (not res!1256067) (not e!1915914))))

(declare-fun b!3059417 () Bool)

(assert (=> b!3059417 (= e!1915916 e!1915921)))

(assert (=> b!3059417 (= c!507792 ((_ is Union!9481) (regTwo!19474 r!17423)))))

(declare-fun b!3059418 () Bool)

(assert (=> b!3059418 (= e!1915914 (> lt!1049604 call!211489))))

(declare-fun b!3059419 () Bool)

(declare-fun e!1915923 () Int)

(assert (=> b!3059419 (= e!1915917 e!1915923)))

(declare-fun c!507790 () Bool)

(assert (=> b!3059419 (= c!507790 ((_ is Concat!14802) (regTwo!19474 r!17423)))))

(declare-fun bm!211483 () Bool)

(declare-fun call!211491 () Int)

(assert (=> bm!211483 (= call!211491 call!211490)))

(declare-fun b!3059420 () Bool)

(assert (=> b!3059420 (= e!1915915 e!1915918)))

(declare-fun c!507793 () Bool)

(assert (=> b!3059420 (= c!507793 ((_ is Star!9481) (regTwo!19474 r!17423)))))

(declare-fun bm!211484 () Bool)

(assert (=> bm!211484 (= call!211490 (regexDepth!99 (ite c!507793 (reg!9810 (regTwo!19474 r!17423)) (ite c!507787 (regTwo!19475 (regTwo!19474 r!17423)) (regTwo!19474 (regTwo!19474 r!17423))))))))

(declare-fun b!3059421 () Bool)

(assert (=> b!3059421 (= e!1915923 (+ 1 call!211486))))

(declare-fun bm!211485 () Bool)

(assert (=> bm!211485 (= call!211492 (regexDepth!99 (ite c!507792 (regOne!19475 (regTwo!19474 r!17423)) (regOne!19474 (regTwo!19474 r!17423)))))))

(declare-fun b!3059422 () Bool)

(assert (=> b!3059422 (= e!1915920 (> lt!1049604 call!211488))))

(declare-fun b!3059423 () Bool)

(assert (=> b!3059423 (= e!1915923 1)))

(declare-fun bm!211486 () Bool)

(assert (=> bm!211486 (= call!211486 (maxBigInt!0 call!211487 call!211491))))

(declare-fun bm!211487 () Bool)

(assert (=> bm!211487 (= call!211488 call!211489)))

(declare-fun b!3059424 () Bool)

(assert (=> b!3059424 (= c!507787 ((_ is Union!9481) (regTwo!19474 r!17423)))))

(assert (=> b!3059424 (= e!1915918 e!1915917)))

(assert (= (and d!855092 c!507788) b!3059411))

(assert (= (and d!855092 (not c!507788)) b!3059420))

(assert (= (and b!3059420 c!507793) b!3059415))

(assert (= (and b!3059420 (not c!507793)) b!3059424))

(assert (= (and b!3059424 c!507787) b!3059412))

(assert (= (and b!3059424 (not c!507787)) b!3059419))

(assert (= (and b!3059419 c!507790) b!3059421))

(assert (= (and b!3059419 (not c!507790)) b!3059423))

(assert (= (or b!3059412 b!3059421) bm!211483))

(assert (= (or b!3059412 b!3059421) bm!211482))

(assert (= (or b!3059412 b!3059421) bm!211486))

(assert (= (or b!3059415 bm!211483) bm!211484))

(assert (= (and d!855092 res!1256066) b!3059417))

(assert (= (and b!3059417 c!507792) b!3059416))

(assert (= (and b!3059417 (not c!507792)) b!3059410))

(assert (= (and b!3059416 res!1256067) b!3059418))

(assert (= (and b!3059410 c!507791) b!3059409))

(assert (= (and b!3059410 (not c!507791)) b!3059413))

(assert (= (and b!3059409 res!1256068) b!3059422))

(assert (= (and b!3059413 c!507789) b!3059408))

(assert (= (and b!3059413 (not c!507789)) b!3059414))

(assert (= (or b!3059422 b!3059408) bm!211487))

(assert (= (or b!3059418 bm!211487) bm!211481))

(assert (= (or b!3059416 b!3059409) bm!211485))

(declare-fun m!3380975 () Bool)

(assert (=> bm!211485 m!3380975))

(declare-fun m!3380977 () Bool)

(assert (=> bm!211486 m!3380977))

(declare-fun m!3380979 () Bool)

(assert (=> bm!211481 m!3380979))

(declare-fun m!3380981 () Bool)

(assert (=> bm!211484 m!3380981))

(declare-fun m!3380983 () Bool)

(assert (=> bm!211482 m!3380983))

(assert (=> b!3058780 d!855092))

(declare-fun d!855094 () Bool)

(assert (=> d!855094 (= (isEmptyLang!532 lt!1049530) ((_ is EmptyLang!9481) lt!1049530))))

(assert (=> b!3058789 d!855094))

(declare-fun b!3059429 () Bool)

(declare-fun e!1915926 () Bool)

(declare-fun tp!967034 () Bool)

(assert (=> b!3059429 (= e!1915926 (and tp_is_empty!16525 tp!967034))))

(assert (=> b!3058788 (= tp!966989 e!1915926)))

(assert (= (and b!3058788 ((_ is Cons!35222) (t!234411 s!11993))) b!3059429))

(declare-fun e!1915929 () Bool)

(assert (=> b!3058786 (= tp!966991 e!1915929)))

(declare-fun b!3059441 () Bool)

(declare-fun tp!967046 () Bool)

(declare-fun tp!967045 () Bool)

(assert (=> b!3059441 (= e!1915929 (and tp!967046 tp!967045))))

(declare-fun b!3059442 () Bool)

(declare-fun tp!967049 () Bool)

(assert (=> b!3059442 (= e!1915929 tp!967049)))

(declare-fun b!3059440 () Bool)

(assert (=> b!3059440 (= e!1915929 tp_is_empty!16525)))

(declare-fun b!3059443 () Bool)

(declare-fun tp!967048 () Bool)

(declare-fun tp!967047 () Bool)

(assert (=> b!3059443 (= e!1915929 (and tp!967048 tp!967047))))

(assert (= (and b!3058786 ((_ is ElementMatch!9481) (regOne!19475 r!17423))) b!3059440))

(assert (= (and b!3058786 ((_ is Concat!14802) (regOne!19475 r!17423))) b!3059441))

(assert (= (and b!3058786 ((_ is Star!9481) (regOne!19475 r!17423))) b!3059442))

(assert (= (and b!3058786 ((_ is Union!9481) (regOne!19475 r!17423))) b!3059443))

(declare-fun e!1915930 () Bool)

(assert (=> b!3058786 (= tp!966988 e!1915930)))

(declare-fun b!3059445 () Bool)

(declare-fun tp!967051 () Bool)

(declare-fun tp!967050 () Bool)

(assert (=> b!3059445 (= e!1915930 (and tp!967051 tp!967050))))

(declare-fun b!3059446 () Bool)

(declare-fun tp!967054 () Bool)

(assert (=> b!3059446 (= e!1915930 tp!967054)))

(declare-fun b!3059444 () Bool)

(assert (=> b!3059444 (= e!1915930 tp_is_empty!16525)))

(declare-fun b!3059447 () Bool)

(declare-fun tp!967053 () Bool)

(declare-fun tp!967052 () Bool)

(assert (=> b!3059447 (= e!1915930 (and tp!967053 tp!967052))))

(assert (= (and b!3058786 ((_ is ElementMatch!9481) (regTwo!19475 r!17423))) b!3059444))

(assert (= (and b!3058786 ((_ is Concat!14802) (regTwo!19475 r!17423))) b!3059445))

(assert (= (and b!3058786 ((_ is Star!9481) (regTwo!19475 r!17423))) b!3059446))

(assert (= (and b!3058786 ((_ is Union!9481) (regTwo!19475 r!17423))) b!3059447))

(declare-fun e!1915931 () Bool)

(assert (=> b!3058785 (= tp!966992 e!1915931)))

(declare-fun b!3059449 () Bool)

(declare-fun tp!967056 () Bool)

(declare-fun tp!967055 () Bool)

(assert (=> b!3059449 (= e!1915931 (and tp!967056 tp!967055))))

(declare-fun b!3059450 () Bool)

(declare-fun tp!967059 () Bool)

(assert (=> b!3059450 (= e!1915931 tp!967059)))

(declare-fun b!3059448 () Bool)

(assert (=> b!3059448 (= e!1915931 tp_is_empty!16525)))

(declare-fun b!3059451 () Bool)

(declare-fun tp!967058 () Bool)

(declare-fun tp!967057 () Bool)

(assert (=> b!3059451 (= e!1915931 (and tp!967058 tp!967057))))

(assert (= (and b!3058785 ((_ is ElementMatch!9481) (regOne!19474 r!17423))) b!3059448))

(assert (= (and b!3058785 ((_ is Concat!14802) (regOne!19474 r!17423))) b!3059449))

(assert (= (and b!3058785 ((_ is Star!9481) (regOne!19474 r!17423))) b!3059450))

(assert (= (and b!3058785 ((_ is Union!9481) (regOne!19474 r!17423))) b!3059451))

(declare-fun e!1915932 () Bool)

(assert (=> b!3058785 (= tp!966990 e!1915932)))

(declare-fun b!3059453 () Bool)

(declare-fun tp!967061 () Bool)

(declare-fun tp!967060 () Bool)

(assert (=> b!3059453 (= e!1915932 (and tp!967061 tp!967060))))

(declare-fun b!3059454 () Bool)

(declare-fun tp!967064 () Bool)

(assert (=> b!3059454 (= e!1915932 tp!967064)))

(declare-fun b!3059452 () Bool)

(assert (=> b!3059452 (= e!1915932 tp_is_empty!16525)))

(declare-fun b!3059455 () Bool)

(declare-fun tp!967063 () Bool)

(declare-fun tp!967062 () Bool)

(assert (=> b!3059455 (= e!1915932 (and tp!967063 tp!967062))))

(assert (= (and b!3058785 ((_ is ElementMatch!9481) (regTwo!19474 r!17423))) b!3059452))

(assert (= (and b!3058785 ((_ is Concat!14802) (regTwo!19474 r!17423))) b!3059453))

(assert (= (and b!3058785 ((_ is Star!9481) (regTwo!19474 r!17423))) b!3059454))

(assert (= (and b!3058785 ((_ is Union!9481) (regTwo!19474 r!17423))) b!3059455))

(declare-fun e!1915933 () Bool)

(assert (=> b!3058784 (= tp!966993 e!1915933)))

(declare-fun b!3059457 () Bool)

(declare-fun tp!967066 () Bool)

(declare-fun tp!967065 () Bool)

(assert (=> b!3059457 (= e!1915933 (and tp!967066 tp!967065))))

(declare-fun b!3059458 () Bool)

(declare-fun tp!967069 () Bool)

(assert (=> b!3059458 (= e!1915933 tp!967069)))

(declare-fun b!3059456 () Bool)

(assert (=> b!3059456 (= e!1915933 tp_is_empty!16525)))

(declare-fun b!3059459 () Bool)

(declare-fun tp!967068 () Bool)

(declare-fun tp!967067 () Bool)

(assert (=> b!3059459 (= e!1915933 (and tp!967068 tp!967067))))

(assert (= (and b!3058784 ((_ is ElementMatch!9481) (reg!9810 r!17423))) b!3059456))

(assert (= (and b!3058784 ((_ is Concat!14802) (reg!9810 r!17423))) b!3059457))

(assert (= (and b!3058784 ((_ is Star!9481) (reg!9810 r!17423))) b!3059458))

(assert (= (and b!3058784 ((_ is Union!9481) (reg!9810 r!17423))) b!3059459))

(check-sat (not b!3059445) (not b!3059245) (not b!3059330) (not b!3059127) (not bm!211350) (not bm!211358) (not bm!211481) (not bm!211448) (not b!3059453) (not bm!211453) (not b!3059455) (not bm!211415) (not d!855086) (not bm!211357) (not b!3058854) (not bm!211456) (not bm!211482) (not b!3059247) (not bm!211351) (not bm!211449) (not b!3059429) (not bm!211454) (not b!3059458) (not bm!211479) (not b!3059442) (not bm!211484) (not bm!211459) (not bm!211416) (not b!3059125) (not b!3059451) (not b!3059237) (not bm!211486) (not b!3059244) (not b!3059443) (not b!3059446) (not bm!211478) (not bm!211474) (not b!3059407) tp_is_empty!16525 (not b!3059441) (not bm!211447) (not bm!211485) (not b!3058845) (not bm!211455) (not b!3059347) (not bm!211431) (not b!3059305) (not b!3059457) (not b!3059450) (not b!3059447) (not bm!211452) (not b!3059322) (not d!855084) (not b!3059454) (not b!3059250) (not b!3059449) (not b!3059459) (not d!855072) (not bm!211475) (not b!3059242) (not bm!211446) (not bm!211477) (not d!855076))
(check-sat)
