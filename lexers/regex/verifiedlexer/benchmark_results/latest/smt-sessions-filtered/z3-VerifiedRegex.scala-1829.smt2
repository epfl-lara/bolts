; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91158 () Bool)

(assert start!91158)

(declare-fun b!1060498 () Bool)

(declare-fun e!673037 () Bool)

(declare-fun tp_is_empty!5477 () Bool)

(declare-fun tp!318676 () Bool)

(assert (=> b!1060498 (= e!673037 (and tp_is_empty!5477 tp!318676))))

(declare-fun b!1060499 () Bool)

(declare-fun e!673039 () Bool)

(declare-datatypes ((C!6404 0))(
  ( (C!6405 (val!3450 Int)) )
))
(declare-datatypes ((Regex!2917 0))(
  ( (ElementMatch!2917 (c!177708 C!6404)) (Concat!4750 (regOne!6346 Regex!2917) (regTwo!6346 Regex!2917)) (EmptyExpr!2917) (Star!2917 (reg!3246 Regex!2917)) (EmptyLang!2917) (Union!2917 (regOne!6347 Regex!2917) (regTwo!6347 Regex!2917)) )
))
(declare-fun lt!359714 () Regex!2917)

(declare-datatypes ((List!10147 0))(
  ( (Nil!10131) (Cons!10131 (h!15532 C!6404) (t!101193 List!10147)) )
))
(declare-fun s!10566 () List!10147)

(declare-fun matchR!1453 (Regex!2917 List!10147) Bool)

(assert (=> b!1060499 (= e!673039 (matchR!1453 lt!359714 s!10566))))

(declare-fun res!473931 () Bool)

(declare-fun e!673035 () Bool)

(assert (=> start!91158 (=> (not res!473931) (not e!673035))))

(declare-fun r!15766 () Regex!2917)

(declare-fun validRegex!1386 (Regex!2917) Bool)

(assert (=> start!91158 (= res!473931 (validRegex!1386 r!15766))))

(assert (=> start!91158 e!673035))

(declare-fun e!673036 () Bool)

(assert (=> start!91158 e!673036))

(assert (=> start!91158 e!673037))

(declare-fun b!1060500 () Bool)

(declare-fun e!673038 () Bool)

(declare-fun e!673041 () Bool)

(assert (=> b!1060500 (= e!673038 e!673041)))

(declare-fun res!473929 () Bool)

(assert (=> b!1060500 (=> res!473929 e!673041)))

(declare-fun lt!359710 () Regex!2917)

(assert (=> b!1060500 (= res!473929 (not (matchR!1453 lt!359710 s!10566)))))

(declare-fun lt!359713 () Regex!2917)

(assert (=> b!1060500 (= lt!359710 (Union!2917 lt!359713 lt!359714))))

(declare-fun removeUselessConcat!466 (Regex!2917) Regex!2917)

(assert (=> b!1060500 (= lt!359714 (removeUselessConcat!466 (regTwo!6347 r!15766)))))

(assert (=> b!1060500 (= lt!359713 (removeUselessConcat!466 (regOne!6347 r!15766)))))

(declare-fun b!1060501 () Bool)

(assert (=> b!1060501 (= e!673036 tp_is_empty!5477)))

(declare-fun b!1060502 () Bool)

(declare-fun e!673040 () Bool)

(assert (=> b!1060502 (= e!673041 e!673040)))

(declare-fun res!473930 () Bool)

(assert (=> b!1060502 (=> res!473930 e!673040)))

(declare-fun lt!359711 () Bool)

(assert (=> b!1060502 (= res!473930 lt!359711)))

(assert (=> b!1060502 e!673039))

(declare-fun res!473934 () Bool)

(assert (=> b!1060502 (=> res!473934 e!673039)))

(assert (=> b!1060502 (= res!473934 lt!359711)))

(assert (=> b!1060502 (= lt!359711 (matchR!1453 lt!359713 s!10566))))

(declare-datatypes ((Unit!15509 0))(
  ( (Unit!15510) )
))
(declare-fun lt!359707 () Unit!15509)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!96 (Regex!2917 Regex!2917 List!10147) Unit!15509)

(assert (=> b!1060502 (= lt!359707 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!96 lt!359713 lt!359714 s!10566))))

(declare-fun matchRSpec!716 (Regex!2917 List!10147) Bool)

(assert (=> b!1060502 (matchRSpec!716 lt!359710 s!10566)))

(declare-fun lt!359708 () Unit!15509)

(declare-fun mainMatchTheorem!716 (Regex!2917 List!10147) Unit!15509)

(assert (=> b!1060502 (= lt!359708 (mainMatchTheorem!716 lt!359710 s!10566))))

(declare-fun b!1060503 () Bool)

(declare-fun tp!318674 () Bool)

(declare-fun tp!318675 () Bool)

(assert (=> b!1060503 (= e!673036 (and tp!318674 tp!318675))))

(declare-fun b!1060504 () Bool)

(declare-fun e!673042 () Bool)

(assert (=> b!1060504 (= e!673040 e!673042)))

(declare-fun res!473932 () Bool)

(assert (=> b!1060504 (=> res!473932 e!673042)))

(declare-fun lt!359712 () Bool)

(assert (=> b!1060504 (= res!473932 (not lt!359712))))

(assert (=> b!1060504 (= lt!359712 (matchR!1453 lt!359714 s!10566))))

(assert (=> b!1060504 (= lt!359712 (matchR!1453 (regTwo!6347 r!15766) s!10566))))

(declare-fun lt!359706 () Unit!15509)

(declare-fun lemmaRemoveUselessConcatSound!276 (Regex!2917 List!10147) Unit!15509)

(assert (=> b!1060504 (= lt!359706 (lemmaRemoveUselessConcatSound!276 (regTwo!6347 r!15766) s!10566))))

(declare-fun b!1060505 () Bool)

(declare-fun tp!318672 () Bool)

(assert (=> b!1060505 (= e!673036 tp!318672)))

(declare-fun b!1060506 () Bool)

(declare-fun e!673043 () Bool)

(assert (=> b!1060506 (= e!673042 e!673043)))

(declare-fun res!473933 () Bool)

(assert (=> b!1060506 (=> (not res!473933) (not e!673043))))

(assert (=> b!1060506 (= res!473933 (validRegex!1386 (regTwo!6347 r!15766)))))

(declare-fun b!1060507 () Bool)

(assert (=> b!1060507 (= e!673035 (not e!673038))))

(declare-fun res!473928 () Bool)

(assert (=> b!1060507 (=> res!473928 e!673038)))

(declare-fun lt!359709 () Bool)

(get-info :version)

(assert (=> b!1060507 (= res!473928 (or lt!359709 (and ((_ is Concat!4750) r!15766) ((_ is EmptyExpr!2917) (regOne!6346 r!15766))) (and ((_ is Concat!4750) r!15766) ((_ is EmptyExpr!2917) (regTwo!6346 r!15766))) ((_ is Concat!4750) r!15766) (not ((_ is Union!2917) r!15766))))))

(assert (=> b!1060507 (= lt!359709 (matchRSpec!716 r!15766 s!10566))))

(assert (=> b!1060507 (= lt!359709 (matchR!1453 r!15766 s!10566))))

(declare-fun lt!359715 () Unit!15509)

(assert (=> b!1060507 (= lt!359715 (mainMatchTheorem!716 r!15766 s!10566))))

(declare-fun b!1060508 () Bool)

(declare-fun tp!318671 () Bool)

(declare-fun tp!318673 () Bool)

(assert (=> b!1060508 (= e!673036 (and tp!318671 tp!318673))))

(declare-fun b!1060509 () Bool)

(assert (=> b!1060509 (= e!673043 (validRegex!1386 (regOne!6347 r!15766)))))

(assert (= (and start!91158 res!473931) b!1060507))

(assert (= (and b!1060507 (not res!473928)) b!1060500))

(assert (= (and b!1060500 (not res!473929)) b!1060502))

(assert (= (and b!1060502 (not res!473934)) b!1060499))

(assert (= (and b!1060502 (not res!473930)) b!1060504))

(assert (= (and b!1060504 (not res!473932)) b!1060506))

(assert (= (and b!1060506 res!473933) b!1060509))

(assert (= (and start!91158 ((_ is ElementMatch!2917) r!15766)) b!1060501))

(assert (= (and start!91158 ((_ is Concat!4750) r!15766)) b!1060503))

(assert (= (and start!91158 ((_ is Star!2917) r!15766)) b!1060505))

(assert (= (and start!91158 ((_ is Union!2917) r!15766)) b!1060508))

(assert (= (and start!91158 ((_ is Cons!10131) s!10566)) b!1060498))

(declare-fun m!1220813 () Bool)

(assert (=> b!1060506 m!1220813))

(declare-fun m!1220815 () Bool)

(assert (=> b!1060507 m!1220815))

(declare-fun m!1220817 () Bool)

(assert (=> b!1060507 m!1220817))

(declare-fun m!1220819 () Bool)

(assert (=> b!1060507 m!1220819))

(declare-fun m!1220821 () Bool)

(assert (=> b!1060509 m!1220821))

(declare-fun m!1220823 () Bool)

(assert (=> start!91158 m!1220823))

(declare-fun m!1220825 () Bool)

(assert (=> b!1060499 m!1220825))

(declare-fun m!1220827 () Bool)

(assert (=> b!1060502 m!1220827))

(declare-fun m!1220829 () Bool)

(assert (=> b!1060502 m!1220829))

(declare-fun m!1220831 () Bool)

(assert (=> b!1060502 m!1220831))

(declare-fun m!1220833 () Bool)

(assert (=> b!1060502 m!1220833))

(assert (=> b!1060504 m!1220825))

(declare-fun m!1220835 () Bool)

(assert (=> b!1060504 m!1220835))

(declare-fun m!1220837 () Bool)

(assert (=> b!1060504 m!1220837))

(declare-fun m!1220839 () Bool)

(assert (=> b!1060500 m!1220839))

(declare-fun m!1220841 () Bool)

(assert (=> b!1060500 m!1220841))

(declare-fun m!1220843 () Bool)

(assert (=> b!1060500 m!1220843))

(check-sat (not b!1060502) (not b!1060499) (not b!1060506) (not b!1060508) (not start!91158) (not b!1060498) tp_is_empty!5477 (not b!1060505) (not b!1060504) (not b!1060503) (not b!1060500) (not b!1060509) (not b!1060507))
(check-sat)
(get-model)

(declare-fun b!1060538 () Bool)

(declare-fun res!473951 () Bool)

(declare-fun e!673063 () Bool)

(assert (=> b!1060538 (=> res!473951 e!673063)))

(assert (=> b!1060538 (= res!473951 (not ((_ is ElementMatch!2917) lt!359714)))))

(declare-fun e!673064 () Bool)

(assert (=> b!1060538 (= e!673064 e!673063)))

(declare-fun b!1060539 () Bool)

(declare-fun e!673061 () Bool)

(declare-fun nullable!1009 (Regex!2917) Bool)

(assert (=> b!1060539 (= e!673061 (nullable!1009 lt!359714))))

(declare-fun b!1060540 () Bool)

(declare-fun res!473952 () Bool)

(declare-fun e!673062 () Bool)

(assert (=> b!1060540 (=> (not res!473952) (not e!673062))))

(declare-fun call!76184 () Bool)

(assert (=> b!1060540 (= res!473952 (not call!76184))))

(declare-fun b!1060541 () Bool)

(declare-fun res!473953 () Bool)

(assert (=> b!1060541 (=> (not res!473953) (not e!673062))))

(declare-fun isEmpty!6549 (List!10147) Bool)

(declare-fun tail!1526 (List!10147) List!10147)

(assert (=> b!1060541 (= res!473953 (isEmpty!6549 (tail!1526 s!10566)))))

(declare-fun b!1060542 () Bool)

(declare-fun lt!359718 () Bool)

(assert (=> b!1060542 (= e!673064 (not lt!359718))))

(declare-fun d!300606 () Bool)

(declare-fun e!673058 () Bool)

(assert (=> d!300606 e!673058))

(declare-fun c!177717 () Bool)

(assert (=> d!300606 (= c!177717 ((_ is EmptyExpr!2917) lt!359714))))

(assert (=> d!300606 (= lt!359718 e!673061)))

(declare-fun c!177716 () Bool)

(assert (=> d!300606 (= c!177716 (isEmpty!6549 s!10566))))

(assert (=> d!300606 (validRegex!1386 lt!359714)))

(assert (=> d!300606 (= (matchR!1453 lt!359714 s!10566) lt!359718)))

(declare-fun b!1060543 () Bool)

(declare-fun derivativeStep!809 (Regex!2917 C!6404) Regex!2917)

(declare-fun head!1964 (List!10147) C!6404)

(assert (=> b!1060543 (= e!673061 (matchR!1453 (derivativeStep!809 lt!359714 (head!1964 s!10566)) (tail!1526 s!10566)))))

(declare-fun b!1060544 () Bool)

(declare-fun res!473958 () Bool)

(declare-fun e!673059 () Bool)

(assert (=> b!1060544 (=> res!473958 e!673059)))

(assert (=> b!1060544 (= res!473958 (not (isEmpty!6549 (tail!1526 s!10566))))))

(declare-fun b!1060545 () Bool)

(assert (=> b!1060545 (= e!673059 (not (= (head!1964 s!10566) (c!177708 lt!359714))))))

(declare-fun b!1060546 () Bool)

(assert (=> b!1060546 (= e!673058 e!673064)))

(declare-fun c!177715 () Bool)

(assert (=> b!1060546 (= c!177715 ((_ is EmptyLang!2917) lt!359714))))

(declare-fun b!1060547 () Bool)

(declare-fun e!673060 () Bool)

(assert (=> b!1060547 (= e!673063 e!673060)))

(declare-fun res!473956 () Bool)

(assert (=> b!1060547 (=> (not res!473956) (not e!673060))))

(assert (=> b!1060547 (= res!473956 (not lt!359718))))

(declare-fun b!1060548 () Bool)

(assert (=> b!1060548 (= e!673058 (= lt!359718 call!76184))))

(declare-fun b!1060549 () Bool)

(assert (=> b!1060549 (= e!673062 (= (head!1964 s!10566) (c!177708 lt!359714)))))

(declare-fun b!1060550 () Bool)

(assert (=> b!1060550 (= e!673060 e!673059)))

(declare-fun res!473955 () Bool)

(assert (=> b!1060550 (=> res!473955 e!673059)))

(assert (=> b!1060550 (= res!473955 call!76184)))

(declare-fun b!1060551 () Bool)

(declare-fun res!473954 () Bool)

(assert (=> b!1060551 (=> res!473954 e!673063)))

(assert (=> b!1060551 (= res!473954 e!673062)))

(declare-fun res!473957 () Bool)

(assert (=> b!1060551 (=> (not res!473957) (not e!673062))))

(assert (=> b!1060551 (= res!473957 lt!359718)))

(declare-fun bm!76179 () Bool)

(assert (=> bm!76179 (= call!76184 (isEmpty!6549 s!10566))))

(assert (= (and d!300606 c!177716) b!1060539))

(assert (= (and d!300606 (not c!177716)) b!1060543))

(assert (= (and d!300606 c!177717) b!1060548))

(assert (= (and d!300606 (not c!177717)) b!1060546))

(assert (= (and b!1060546 c!177715) b!1060542))

(assert (= (and b!1060546 (not c!177715)) b!1060538))

(assert (= (and b!1060538 (not res!473951)) b!1060551))

(assert (= (and b!1060551 res!473957) b!1060540))

(assert (= (and b!1060540 res!473952) b!1060541))

(assert (= (and b!1060541 res!473953) b!1060549))

(assert (= (and b!1060551 (not res!473954)) b!1060547))

(assert (= (and b!1060547 res!473956) b!1060550))

(assert (= (and b!1060550 (not res!473955)) b!1060544))

(assert (= (and b!1060544 (not res!473958)) b!1060545))

(assert (= (or b!1060548 b!1060540 b!1060550) bm!76179))

(declare-fun m!1220845 () Bool)

(assert (=> b!1060545 m!1220845))

(declare-fun m!1220847 () Bool)

(assert (=> d!300606 m!1220847))

(declare-fun m!1220849 () Bool)

(assert (=> d!300606 m!1220849))

(assert (=> b!1060543 m!1220845))

(assert (=> b!1060543 m!1220845))

(declare-fun m!1220851 () Bool)

(assert (=> b!1060543 m!1220851))

(declare-fun m!1220853 () Bool)

(assert (=> b!1060543 m!1220853))

(assert (=> b!1060543 m!1220851))

(assert (=> b!1060543 m!1220853))

(declare-fun m!1220855 () Bool)

(assert (=> b!1060543 m!1220855))

(declare-fun m!1220857 () Bool)

(assert (=> b!1060539 m!1220857))

(assert (=> bm!76179 m!1220847))

(assert (=> b!1060541 m!1220853))

(assert (=> b!1060541 m!1220853))

(declare-fun m!1220859 () Bool)

(assert (=> b!1060541 m!1220859))

(assert (=> b!1060544 m!1220853))

(assert (=> b!1060544 m!1220853))

(assert (=> b!1060544 m!1220859))

(assert (=> b!1060549 m!1220845))

(assert (=> b!1060504 d!300606))

(declare-fun b!1060552 () Bool)

(declare-fun res!473959 () Bool)

(declare-fun e!673070 () Bool)

(assert (=> b!1060552 (=> res!473959 e!673070)))

(assert (=> b!1060552 (= res!473959 (not ((_ is ElementMatch!2917) (regTwo!6347 r!15766))))))

(declare-fun e!673071 () Bool)

(assert (=> b!1060552 (= e!673071 e!673070)))

(declare-fun b!1060553 () Bool)

(declare-fun e!673068 () Bool)

(assert (=> b!1060553 (= e!673068 (nullable!1009 (regTwo!6347 r!15766)))))

(declare-fun b!1060554 () Bool)

(declare-fun res!473960 () Bool)

(declare-fun e!673069 () Bool)

(assert (=> b!1060554 (=> (not res!473960) (not e!673069))))

(declare-fun call!76185 () Bool)

(assert (=> b!1060554 (= res!473960 (not call!76185))))

(declare-fun b!1060555 () Bool)

(declare-fun res!473961 () Bool)

(assert (=> b!1060555 (=> (not res!473961) (not e!673069))))

(assert (=> b!1060555 (= res!473961 (isEmpty!6549 (tail!1526 s!10566)))))

(declare-fun b!1060556 () Bool)

(declare-fun lt!359719 () Bool)

(assert (=> b!1060556 (= e!673071 (not lt!359719))))

(declare-fun d!300610 () Bool)

(declare-fun e!673065 () Bool)

(assert (=> d!300610 e!673065))

(declare-fun c!177720 () Bool)

(assert (=> d!300610 (= c!177720 ((_ is EmptyExpr!2917) (regTwo!6347 r!15766)))))

(assert (=> d!300610 (= lt!359719 e!673068)))

(declare-fun c!177719 () Bool)

(assert (=> d!300610 (= c!177719 (isEmpty!6549 s!10566))))

(assert (=> d!300610 (validRegex!1386 (regTwo!6347 r!15766))))

(assert (=> d!300610 (= (matchR!1453 (regTwo!6347 r!15766) s!10566) lt!359719)))

(declare-fun b!1060557 () Bool)

(assert (=> b!1060557 (= e!673068 (matchR!1453 (derivativeStep!809 (regTwo!6347 r!15766) (head!1964 s!10566)) (tail!1526 s!10566)))))

(declare-fun b!1060558 () Bool)

(declare-fun res!473966 () Bool)

(declare-fun e!673066 () Bool)

(assert (=> b!1060558 (=> res!473966 e!673066)))

(assert (=> b!1060558 (= res!473966 (not (isEmpty!6549 (tail!1526 s!10566))))))

(declare-fun b!1060559 () Bool)

(assert (=> b!1060559 (= e!673066 (not (= (head!1964 s!10566) (c!177708 (regTwo!6347 r!15766)))))))

(declare-fun b!1060560 () Bool)

(assert (=> b!1060560 (= e!673065 e!673071)))

(declare-fun c!177718 () Bool)

(assert (=> b!1060560 (= c!177718 ((_ is EmptyLang!2917) (regTwo!6347 r!15766)))))

(declare-fun b!1060561 () Bool)

(declare-fun e!673067 () Bool)

(assert (=> b!1060561 (= e!673070 e!673067)))

(declare-fun res!473964 () Bool)

(assert (=> b!1060561 (=> (not res!473964) (not e!673067))))

(assert (=> b!1060561 (= res!473964 (not lt!359719))))

(declare-fun b!1060562 () Bool)

(assert (=> b!1060562 (= e!673065 (= lt!359719 call!76185))))

(declare-fun b!1060563 () Bool)

(assert (=> b!1060563 (= e!673069 (= (head!1964 s!10566) (c!177708 (regTwo!6347 r!15766))))))

(declare-fun b!1060564 () Bool)

(assert (=> b!1060564 (= e!673067 e!673066)))

(declare-fun res!473963 () Bool)

(assert (=> b!1060564 (=> res!473963 e!673066)))

(assert (=> b!1060564 (= res!473963 call!76185)))

(declare-fun b!1060565 () Bool)

(declare-fun res!473962 () Bool)

(assert (=> b!1060565 (=> res!473962 e!673070)))

(assert (=> b!1060565 (= res!473962 e!673069)))

(declare-fun res!473965 () Bool)

(assert (=> b!1060565 (=> (not res!473965) (not e!673069))))

(assert (=> b!1060565 (= res!473965 lt!359719)))

(declare-fun bm!76180 () Bool)

(assert (=> bm!76180 (= call!76185 (isEmpty!6549 s!10566))))

(assert (= (and d!300610 c!177719) b!1060553))

(assert (= (and d!300610 (not c!177719)) b!1060557))

(assert (= (and d!300610 c!177720) b!1060562))

(assert (= (and d!300610 (not c!177720)) b!1060560))

(assert (= (and b!1060560 c!177718) b!1060556))

(assert (= (and b!1060560 (not c!177718)) b!1060552))

(assert (= (and b!1060552 (not res!473959)) b!1060565))

(assert (= (and b!1060565 res!473965) b!1060554))

(assert (= (and b!1060554 res!473960) b!1060555))

(assert (= (and b!1060555 res!473961) b!1060563))

(assert (= (and b!1060565 (not res!473962)) b!1060561))

(assert (= (and b!1060561 res!473964) b!1060564))

(assert (= (and b!1060564 (not res!473963)) b!1060558))

(assert (= (and b!1060558 (not res!473966)) b!1060559))

(assert (= (or b!1060562 b!1060554 b!1060564) bm!76180))

(assert (=> b!1060559 m!1220845))

(assert (=> d!300610 m!1220847))

(assert (=> d!300610 m!1220813))

(assert (=> b!1060557 m!1220845))

(assert (=> b!1060557 m!1220845))

(declare-fun m!1220861 () Bool)

(assert (=> b!1060557 m!1220861))

(assert (=> b!1060557 m!1220853))

(assert (=> b!1060557 m!1220861))

(assert (=> b!1060557 m!1220853))

(declare-fun m!1220863 () Bool)

(assert (=> b!1060557 m!1220863))

(declare-fun m!1220865 () Bool)

(assert (=> b!1060553 m!1220865))

(assert (=> bm!76180 m!1220847))

(assert (=> b!1060555 m!1220853))

(assert (=> b!1060555 m!1220853))

(assert (=> b!1060555 m!1220859))

(assert (=> b!1060558 m!1220853))

(assert (=> b!1060558 m!1220853))

(assert (=> b!1060558 m!1220859))

(assert (=> b!1060563 m!1220845))

(assert (=> b!1060504 d!300610))

(declare-fun d!300612 () Bool)

(assert (=> d!300612 (= (matchR!1453 (regTwo!6347 r!15766) s!10566) (matchR!1453 (removeUselessConcat!466 (regTwo!6347 r!15766)) s!10566))))

(declare-fun lt!359724 () Unit!15509)

(declare-fun choose!6754 (Regex!2917 List!10147) Unit!15509)

(assert (=> d!300612 (= lt!359724 (choose!6754 (regTwo!6347 r!15766) s!10566))))

(assert (=> d!300612 (validRegex!1386 (regTwo!6347 r!15766))))

(assert (=> d!300612 (= (lemmaRemoveUselessConcatSound!276 (regTwo!6347 r!15766) s!10566) lt!359724)))

(declare-fun bs!251818 () Bool)

(assert (= bs!251818 d!300612))

(assert (=> bs!251818 m!1220835))

(assert (=> bs!251818 m!1220841))

(assert (=> bs!251818 m!1220841))

(declare-fun m!1220867 () Bool)

(assert (=> bs!251818 m!1220867))

(declare-fun m!1220869 () Bool)

(assert (=> bs!251818 m!1220869))

(assert (=> bs!251818 m!1220813))

(assert (=> b!1060504 d!300612))

(assert (=> b!1060499 d!300606))

(declare-fun b!1060630 () Bool)

(declare-fun e!673115 () Bool)

(declare-fun call!76197 () Bool)

(assert (=> b!1060630 (= e!673115 call!76197)))

(declare-fun bm!76190 () Bool)

(declare-fun call!76196 () Bool)

(assert (=> bm!76190 (= call!76197 call!76196)))

(declare-fun b!1060631 () Bool)

(declare-fun e!673117 () Bool)

(declare-fun e!673113 () Bool)

(assert (=> b!1060631 (= e!673117 e!673113)))

(declare-fun c!177734 () Bool)

(assert (=> b!1060631 (= c!177734 ((_ is Union!2917) r!15766))))

(declare-fun b!1060632 () Bool)

(declare-fun res!474008 () Bool)

(declare-fun e!673112 () Bool)

(assert (=> b!1060632 (=> res!474008 e!673112)))

(assert (=> b!1060632 (= res!474008 (not ((_ is Concat!4750) r!15766)))))

(assert (=> b!1060632 (= e!673113 e!673112)))

(declare-fun b!1060633 () Bool)

(assert (=> b!1060633 (= e!673112 e!673115)))

(declare-fun res!474007 () Bool)

(assert (=> b!1060633 (=> (not res!474007) (not e!673115))))

(declare-fun call!76195 () Bool)

(assert (=> b!1060633 (= res!474007 call!76195)))

(declare-fun b!1060634 () Bool)

(declare-fun e!673116 () Bool)

(assert (=> b!1060634 (= e!673117 e!673116)))

(declare-fun res!474005 () Bool)

(assert (=> b!1060634 (= res!474005 (not (nullable!1009 (reg!3246 r!15766))))))

(assert (=> b!1060634 (=> (not res!474005) (not e!673116))))

(declare-fun b!1060635 () Bool)

(declare-fun e!673111 () Bool)

(assert (=> b!1060635 (= e!673111 e!673117)))

(declare-fun c!177735 () Bool)

(assert (=> b!1060635 (= c!177735 ((_ is Star!2917) r!15766))))

(declare-fun d!300614 () Bool)

(declare-fun res!474006 () Bool)

(assert (=> d!300614 (=> res!474006 e!673111)))

(assert (=> d!300614 (= res!474006 ((_ is ElementMatch!2917) r!15766))))

(assert (=> d!300614 (= (validRegex!1386 r!15766) e!673111)))

(declare-fun b!1060636 () Bool)

(declare-fun e!673114 () Bool)

(assert (=> b!1060636 (= e!673114 call!76197)))

(declare-fun bm!76191 () Bool)

(assert (=> bm!76191 (= call!76195 (validRegex!1386 (ite c!177734 (regOne!6347 r!15766) (regOne!6346 r!15766))))))

(declare-fun b!1060637 () Bool)

(declare-fun res!474009 () Bool)

(assert (=> b!1060637 (=> (not res!474009) (not e!673114))))

(assert (=> b!1060637 (= res!474009 call!76195)))

(assert (=> b!1060637 (= e!673113 e!673114)))

(declare-fun bm!76192 () Bool)

(assert (=> bm!76192 (= call!76196 (validRegex!1386 (ite c!177735 (reg!3246 r!15766) (ite c!177734 (regTwo!6347 r!15766) (regTwo!6346 r!15766)))))))

(declare-fun b!1060638 () Bool)

(assert (=> b!1060638 (= e!673116 call!76196)))

(assert (= (and d!300614 (not res!474006)) b!1060635))

(assert (= (and b!1060635 c!177735) b!1060634))

(assert (= (and b!1060635 (not c!177735)) b!1060631))

(assert (= (and b!1060634 res!474005) b!1060638))

(assert (= (and b!1060631 c!177734) b!1060637))

(assert (= (and b!1060631 (not c!177734)) b!1060632))

(assert (= (and b!1060637 res!474009) b!1060636))

(assert (= (and b!1060632 (not res!474008)) b!1060633))

(assert (= (and b!1060633 res!474007) b!1060630))

(assert (= (or b!1060636 b!1060630) bm!76190))

(assert (= (or b!1060637 b!1060633) bm!76191))

(assert (= (or b!1060638 bm!76190) bm!76192))

(declare-fun m!1220887 () Bool)

(assert (=> b!1060634 m!1220887))

(declare-fun m!1220889 () Bool)

(assert (=> bm!76191 m!1220889))

(declare-fun m!1220891 () Bool)

(assert (=> bm!76192 m!1220891))

(assert (=> start!91158 d!300614))

(declare-fun b!1060641 () Bool)

(declare-fun e!673124 () Bool)

(declare-fun call!76200 () Bool)

(assert (=> b!1060641 (= e!673124 call!76200)))

(declare-fun bm!76193 () Bool)

(declare-fun call!76199 () Bool)

(assert (=> bm!76193 (= call!76200 call!76199)))

(declare-fun b!1060642 () Bool)

(declare-fun e!673126 () Bool)

(declare-fun e!673122 () Bool)

(assert (=> b!1060642 (= e!673126 e!673122)))

(declare-fun c!177736 () Bool)

(assert (=> b!1060642 (= c!177736 ((_ is Union!2917) (regOne!6347 r!15766)))))

(declare-fun b!1060643 () Bool)

(declare-fun res!474015 () Bool)

(declare-fun e!673121 () Bool)

(assert (=> b!1060643 (=> res!474015 e!673121)))

(assert (=> b!1060643 (= res!474015 (not ((_ is Concat!4750) (regOne!6347 r!15766))))))

(assert (=> b!1060643 (= e!673122 e!673121)))

(declare-fun b!1060644 () Bool)

(assert (=> b!1060644 (= e!673121 e!673124)))

(declare-fun res!474014 () Bool)

(assert (=> b!1060644 (=> (not res!474014) (not e!673124))))

(declare-fun call!76198 () Bool)

(assert (=> b!1060644 (= res!474014 call!76198)))

(declare-fun b!1060645 () Bool)

(declare-fun e!673125 () Bool)

(assert (=> b!1060645 (= e!673126 e!673125)))

(declare-fun res!474012 () Bool)

(assert (=> b!1060645 (= res!474012 (not (nullable!1009 (reg!3246 (regOne!6347 r!15766)))))))

(assert (=> b!1060645 (=> (not res!474012) (not e!673125))))

(declare-fun b!1060646 () Bool)

(declare-fun e!673120 () Bool)

(assert (=> b!1060646 (= e!673120 e!673126)))

(declare-fun c!177737 () Bool)

(assert (=> b!1060646 (= c!177737 ((_ is Star!2917) (regOne!6347 r!15766)))))

(declare-fun d!300618 () Bool)

(declare-fun res!474013 () Bool)

(assert (=> d!300618 (=> res!474013 e!673120)))

(assert (=> d!300618 (= res!474013 ((_ is ElementMatch!2917) (regOne!6347 r!15766)))))

(assert (=> d!300618 (= (validRegex!1386 (regOne!6347 r!15766)) e!673120)))

(declare-fun b!1060647 () Bool)

(declare-fun e!673123 () Bool)

(assert (=> b!1060647 (= e!673123 call!76200)))

(declare-fun bm!76194 () Bool)

(assert (=> bm!76194 (= call!76198 (validRegex!1386 (ite c!177736 (regOne!6347 (regOne!6347 r!15766)) (regOne!6346 (regOne!6347 r!15766)))))))

(declare-fun b!1060648 () Bool)

(declare-fun res!474016 () Bool)

(assert (=> b!1060648 (=> (not res!474016) (not e!673123))))

(assert (=> b!1060648 (= res!474016 call!76198)))

(assert (=> b!1060648 (= e!673122 e!673123)))

(declare-fun bm!76195 () Bool)

(assert (=> bm!76195 (= call!76199 (validRegex!1386 (ite c!177737 (reg!3246 (regOne!6347 r!15766)) (ite c!177736 (regTwo!6347 (regOne!6347 r!15766)) (regTwo!6346 (regOne!6347 r!15766))))))))

(declare-fun b!1060649 () Bool)

(assert (=> b!1060649 (= e!673125 call!76199)))

(assert (= (and d!300618 (not res!474013)) b!1060646))

(assert (= (and b!1060646 c!177737) b!1060645))

(assert (= (and b!1060646 (not c!177737)) b!1060642))

(assert (= (and b!1060645 res!474012) b!1060649))

(assert (= (and b!1060642 c!177736) b!1060648))

(assert (= (and b!1060642 (not c!177736)) b!1060643))

(assert (= (and b!1060648 res!474016) b!1060647))

(assert (= (and b!1060643 (not res!474015)) b!1060644))

(assert (= (and b!1060644 res!474014) b!1060641))

(assert (= (or b!1060647 b!1060641) bm!76193))

(assert (= (or b!1060648 b!1060644) bm!76194))

(assert (= (or b!1060649 bm!76193) bm!76195))

(declare-fun m!1220897 () Bool)

(assert (=> b!1060645 m!1220897))

(declare-fun m!1220899 () Bool)

(assert (=> bm!76194 m!1220899))

(declare-fun m!1220901 () Bool)

(assert (=> bm!76195 m!1220901))

(assert (=> b!1060509 d!300618))

(declare-fun b!1060928 () Bool)

(assert (=> b!1060928 true))

(assert (=> b!1060928 true))

(declare-fun bs!251828 () Bool)

(declare-fun b!1060921 () Bool)

(assert (= bs!251828 (and b!1060921 b!1060928)))

(declare-fun lambda!38330 () Int)

(declare-fun lambda!38329 () Int)

(assert (=> bs!251828 (not (= lambda!38330 lambda!38329))))

(assert (=> b!1060921 true))

(assert (=> b!1060921 true))

(declare-fun b!1060920 () Bool)

(declare-fun e!673274 () Bool)

(declare-fun e!673279 () Bool)

(assert (=> b!1060920 (= e!673274 e!673279)))

(declare-fun res!474116 () Bool)

(assert (=> b!1060920 (= res!474116 (matchRSpec!716 (regOne!6347 r!15766) s!10566))))

(assert (=> b!1060920 (=> res!474116 e!673279)))

(declare-fun e!673275 () Bool)

(declare-fun call!76253 () Bool)

(assert (=> b!1060921 (= e!673275 call!76253)))

(declare-fun bm!76247 () Bool)

(declare-fun call!76252 () Bool)

(assert (=> bm!76247 (= call!76252 (isEmpty!6549 s!10566))))

(declare-fun b!1060922 () Bool)

(declare-fun e!673280 () Bool)

(assert (=> b!1060922 (= e!673280 call!76252)))

(declare-fun b!1060923 () Bool)

(assert (=> b!1060923 (= e!673279 (matchRSpec!716 (regTwo!6347 r!15766) s!10566))))

(declare-fun b!1060924 () Bool)

(assert (=> b!1060924 (= e!673274 e!673275)))

(declare-fun c!177807 () Bool)

(assert (=> b!1060924 (= c!177807 ((_ is Star!2917) r!15766))))

(declare-fun b!1060926 () Bool)

(declare-fun res!474117 () Bool)

(declare-fun e!673277 () Bool)

(assert (=> b!1060926 (=> res!474117 e!673277)))

(assert (=> b!1060926 (= res!474117 call!76252)))

(assert (=> b!1060926 (= e!673275 e!673277)))

(declare-fun b!1060927 () Bool)

(declare-fun c!177805 () Bool)

(assert (=> b!1060927 (= c!177805 ((_ is ElementMatch!2917) r!15766))))

(declare-fun e!673276 () Bool)

(declare-fun e!673278 () Bool)

(assert (=> b!1060927 (= e!673276 e!673278)))

(declare-fun bm!76248 () Bool)

(declare-fun Exists!644 (Int) Bool)

(assert (=> bm!76248 (= call!76253 (Exists!644 (ite c!177807 lambda!38329 lambda!38330)))))

(assert (=> b!1060928 (= e!673277 call!76253)))

(declare-fun b!1060925 () Bool)

(assert (=> b!1060925 (= e!673280 e!673276)))

(declare-fun res!474118 () Bool)

(assert (=> b!1060925 (= res!474118 (not ((_ is EmptyLang!2917) r!15766)))))

(assert (=> b!1060925 (=> (not res!474118) (not e!673276))))

(declare-fun d!300622 () Bool)

(declare-fun c!177806 () Bool)

(assert (=> d!300622 (= c!177806 ((_ is EmptyExpr!2917) r!15766))))

(assert (=> d!300622 (= (matchRSpec!716 r!15766 s!10566) e!673280)))

(declare-fun b!1060929 () Bool)

(assert (=> b!1060929 (= e!673278 (= s!10566 (Cons!10131 (c!177708 r!15766) Nil!10131)))))

(declare-fun b!1060930 () Bool)

(declare-fun c!177804 () Bool)

(assert (=> b!1060930 (= c!177804 ((_ is Union!2917) r!15766))))

(assert (=> b!1060930 (= e!673278 e!673274)))

(assert (= (and d!300622 c!177806) b!1060922))

(assert (= (and d!300622 (not c!177806)) b!1060925))

(assert (= (and b!1060925 res!474118) b!1060927))

(assert (= (and b!1060927 c!177805) b!1060929))

(assert (= (and b!1060927 (not c!177805)) b!1060930))

(assert (= (and b!1060930 c!177804) b!1060920))

(assert (= (and b!1060930 (not c!177804)) b!1060924))

(assert (= (and b!1060920 (not res!474116)) b!1060923))

(assert (= (and b!1060924 c!177807) b!1060926))

(assert (= (and b!1060924 (not c!177807)) b!1060921))

(assert (= (and b!1060926 (not res!474117)) b!1060928))

(assert (= (or b!1060928 b!1060921) bm!76248))

(assert (= (or b!1060922 b!1060926) bm!76247))

(declare-fun m!1220985 () Bool)

(assert (=> b!1060920 m!1220985))

(assert (=> bm!76247 m!1220847))

(declare-fun m!1220987 () Bool)

(assert (=> b!1060923 m!1220987))

(declare-fun m!1220989 () Bool)

(assert (=> bm!76248 m!1220989))

(assert (=> b!1060507 d!300622))

(declare-fun b!1060935 () Bool)

(declare-fun res!474119 () Bool)

(declare-fun e!673286 () Bool)

(assert (=> b!1060935 (=> res!474119 e!673286)))

(assert (=> b!1060935 (= res!474119 (not ((_ is ElementMatch!2917) r!15766)))))

(declare-fun e!673287 () Bool)

(assert (=> b!1060935 (= e!673287 e!673286)))

(declare-fun b!1060936 () Bool)

(declare-fun e!673284 () Bool)

(assert (=> b!1060936 (= e!673284 (nullable!1009 r!15766))))

(declare-fun b!1060937 () Bool)

(declare-fun res!474120 () Bool)

(declare-fun e!673285 () Bool)

(assert (=> b!1060937 (=> (not res!474120) (not e!673285))))

(declare-fun call!76254 () Bool)

(assert (=> b!1060937 (= res!474120 (not call!76254))))

(declare-fun b!1060938 () Bool)

(declare-fun res!474121 () Bool)

(assert (=> b!1060938 (=> (not res!474121) (not e!673285))))

(assert (=> b!1060938 (= res!474121 (isEmpty!6549 (tail!1526 s!10566)))))

(declare-fun b!1060939 () Bool)

(declare-fun lt!359744 () Bool)

(assert (=> b!1060939 (= e!673287 (not lt!359744))))

(declare-fun d!300650 () Bool)

(declare-fun e!673281 () Bool)

(assert (=> d!300650 e!673281))

(declare-fun c!177810 () Bool)

(assert (=> d!300650 (= c!177810 ((_ is EmptyExpr!2917) r!15766))))

(assert (=> d!300650 (= lt!359744 e!673284)))

(declare-fun c!177809 () Bool)

(assert (=> d!300650 (= c!177809 (isEmpty!6549 s!10566))))

(assert (=> d!300650 (validRegex!1386 r!15766)))

(assert (=> d!300650 (= (matchR!1453 r!15766 s!10566) lt!359744)))

(declare-fun b!1060940 () Bool)

(assert (=> b!1060940 (= e!673284 (matchR!1453 (derivativeStep!809 r!15766 (head!1964 s!10566)) (tail!1526 s!10566)))))

(declare-fun b!1060941 () Bool)

(declare-fun res!474126 () Bool)

(declare-fun e!673282 () Bool)

(assert (=> b!1060941 (=> res!474126 e!673282)))

(assert (=> b!1060941 (= res!474126 (not (isEmpty!6549 (tail!1526 s!10566))))))

(declare-fun b!1060942 () Bool)

(assert (=> b!1060942 (= e!673282 (not (= (head!1964 s!10566) (c!177708 r!15766))))))

(declare-fun b!1060943 () Bool)

(assert (=> b!1060943 (= e!673281 e!673287)))

(declare-fun c!177808 () Bool)

(assert (=> b!1060943 (= c!177808 ((_ is EmptyLang!2917) r!15766))))

(declare-fun b!1060944 () Bool)

(declare-fun e!673283 () Bool)

(assert (=> b!1060944 (= e!673286 e!673283)))

(declare-fun res!474124 () Bool)

(assert (=> b!1060944 (=> (not res!474124) (not e!673283))))

(assert (=> b!1060944 (= res!474124 (not lt!359744))))

(declare-fun b!1060945 () Bool)

(assert (=> b!1060945 (= e!673281 (= lt!359744 call!76254))))

(declare-fun b!1060946 () Bool)

(assert (=> b!1060946 (= e!673285 (= (head!1964 s!10566) (c!177708 r!15766)))))

(declare-fun b!1060947 () Bool)

(assert (=> b!1060947 (= e!673283 e!673282)))

(declare-fun res!474123 () Bool)

(assert (=> b!1060947 (=> res!474123 e!673282)))

(assert (=> b!1060947 (= res!474123 call!76254)))

(declare-fun b!1060948 () Bool)

(declare-fun res!474122 () Bool)

(assert (=> b!1060948 (=> res!474122 e!673286)))

(assert (=> b!1060948 (= res!474122 e!673285)))

(declare-fun res!474125 () Bool)

(assert (=> b!1060948 (=> (not res!474125) (not e!673285))))

(assert (=> b!1060948 (= res!474125 lt!359744)))

(declare-fun bm!76249 () Bool)

(assert (=> bm!76249 (= call!76254 (isEmpty!6549 s!10566))))

(assert (= (and d!300650 c!177809) b!1060936))

(assert (= (and d!300650 (not c!177809)) b!1060940))

(assert (= (and d!300650 c!177810) b!1060945))

(assert (= (and d!300650 (not c!177810)) b!1060943))

(assert (= (and b!1060943 c!177808) b!1060939))

(assert (= (and b!1060943 (not c!177808)) b!1060935))

(assert (= (and b!1060935 (not res!474119)) b!1060948))

(assert (= (and b!1060948 res!474125) b!1060937))

(assert (= (and b!1060937 res!474120) b!1060938))

(assert (= (and b!1060938 res!474121) b!1060946))

(assert (= (and b!1060948 (not res!474122)) b!1060944))

(assert (= (and b!1060944 res!474124) b!1060947))

(assert (= (and b!1060947 (not res!474123)) b!1060941))

(assert (= (and b!1060941 (not res!474126)) b!1060942))

(assert (= (or b!1060945 b!1060937 b!1060947) bm!76249))

(assert (=> b!1060942 m!1220845))

(assert (=> d!300650 m!1220847))

(assert (=> d!300650 m!1220823))

(assert (=> b!1060940 m!1220845))

(assert (=> b!1060940 m!1220845))

(declare-fun m!1220991 () Bool)

(assert (=> b!1060940 m!1220991))

(assert (=> b!1060940 m!1220853))

(assert (=> b!1060940 m!1220991))

(assert (=> b!1060940 m!1220853))

(declare-fun m!1220993 () Bool)

(assert (=> b!1060940 m!1220993))

(declare-fun m!1220995 () Bool)

(assert (=> b!1060936 m!1220995))

(assert (=> bm!76249 m!1220847))

(assert (=> b!1060938 m!1220853))

(assert (=> b!1060938 m!1220853))

(assert (=> b!1060938 m!1220859))

(assert (=> b!1060941 m!1220853))

(assert (=> b!1060941 m!1220853))

(assert (=> b!1060941 m!1220859))

(assert (=> b!1060946 m!1220845))

(assert (=> b!1060507 d!300650))

(declare-fun d!300652 () Bool)

(assert (=> d!300652 (= (matchR!1453 r!15766 s!10566) (matchRSpec!716 r!15766 s!10566))))

(declare-fun lt!359747 () Unit!15509)

(declare-fun choose!6755 (Regex!2917 List!10147) Unit!15509)

(assert (=> d!300652 (= lt!359747 (choose!6755 r!15766 s!10566))))

(assert (=> d!300652 (validRegex!1386 r!15766)))

(assert (=> d!300652 (= (mainMatchTheorem!716 r!15766 s!10566) lt!359747)))

(declare-fun bs!251829 () Bool)

(assert (= bs!251829 d!300652))

(assert (=> bs!251829 m!1220817))

(assert (=> bs!251829 m!1220815))

(declare-fun m!1220997 () Bool)

(assert (=> bs!251829 m!1220997))

(assert (=> bs!251829 m!1220823))

(assert (=> b!1060507 d!300652))

(declare-fun b!1060949 () Bool)

(declare-fun res!474127 () Bool)

(declare-fun e!673293 () Bool)

(assert (=> b!1060949 (=> res!474127 e!673293)))

(assert (=> b!1060949 (= res!474127 (not ((_ is ElementMatch!2917) lt!359713)))))

(declare-fun e!673294 () Bool)

(assert (=> b!1060949 (= e!673294 e!673293)))

(declare-fun b!1060950 () Bool)

(declare-fun e!673291 () Bool)

(assert (=> b!1060950 (= e!673291 (nullable!1009 lt!359713))))

(declare-fun b!1060951 () Bool)

(declare-fun res!474128 () Bool)

(declare-fun e!673292 () Bool)

(assert (=> b!1060951 (=> (not res!474128) (not e!673292))))

(declare-fun call!76255 () Bool)

(assert (=> b!1060951 (= res!474128 (not call!76255))))

(declare-fun b!1060952 () Bool)

(declare-fun res!474129 () Bool)

(assert (=> b!1060952 (=> (not res!474129) (not e!673292))))

(assert (=> b!1060952 (= res!474129 (isEmpty!6549 (tail!1526 s!10566)))))

(declare-fun b!1060953 () Bool)

(declare-fun lt!359748 () Bool)

(assert (=> b!1060953 (= e!673294 (not lt!359748))))

(declare-fun d!300654 () Bool)

(declare-fun e!673288 () Bool)

(assert (=> d!300654 e!673288))

(declare-fun c!177813 () Bool)

(assert (=> d!300654 (= c!177813 ((_ is EmptyExpr!2917) lt!359713))))

(assert (=> d!300654 (= lt!359748 e!673291)))

(declare-fun c!177812 () Bool)

(assert (=> d!300654 (= c!177812 (isEmpty!6549 s!10566))))

(assert (=> d!300654 (validRegex!1386 lt!359713)))

(assert (=> d!300654 (= (matchR!1453 lt!359713 s!10566) lt!359748)))

(declare-fun b!1060954 () Bool)

(assert (=> b!1060954 (= e!673291 (matchR!1453 (derivativeStep!809 lt!359713 (head!1964 s!10566)) (tail!1526 s!10566)))))

(declare-fun b!1060955 () Bool)

(declare-fun res!474134 () Bool)

(declare-fun e!673289 () Bool)

(assert (=> b!1060955 (=> res!474134 e!673289)))

(assert (=> b!1060955 (= res!474134 (not (isEmpty!6549 (tail!1526 s!10566))))))

(declare-fun b!1060956 () Bool)

(assert (=> b!1060956 (= e!673289 (not (= (head!1964 s!10566) (c!177708 lt!359713))))))

(declare-fun b!1060957 () Bool)

(assert (=> b!1060957 (= e!673288 e!673294)))

(declare-fun c!177811 () Bool)

(assert (=> b!1060957 (= c!177811 ((_ is EmptyLang!2917) lt!359713))))

(declare-fun b!1060958 () Bool)

(declare-fun e!673290 () Bool)

(assert (=> b!1060958 (= e!673293 e!673290)))

(declare-fun res!474132 () Bool)

(assert (=> b!1060958 (=> (not res!474132) (not e!673290))))

(assert (=> b!1060958 (= res!474132 (not lt!359748))))

(declare-fun b!1060959 () Bool)

(assert (=> b!1060959 (= e!673288 (= lt!359748 call!76255))))

(declare-fun b!1060960 () Bool)

(assert (=> b!1060960 (= e!673292 (= (head!1964 s!10566) (c!177708 lt!359713)))))

(declare-fun b!1060961 () Bool)

(assert (=> b!1060961 (= e!673290 e!673289)))

(declare-fun res!474131 () Bool)

(assert (=> b!1060961 (=> res!474131 e!673289)))

(assert (=> b!1060961 (= res!474131 call!76255)))

(declare-fun b!1060962 () Bool)

(declare-fun res!474130 () Bool)

(assert (=> b!1060962 (=> res!474130 e!673293)))

(assert (=> b!1060962 (= res!474130 e!673292)))

(declare-fun res!474133 () Bool)

(assert (=> b!1060962 (=> (not res!474133) (not e!673292))))

(assert (=> b!1060962 (= res!474133 lt!359748)))

(declare-fun bm!76250 () Bool)

(assert (=> bm!76250 (= call!76255 (isEmpty!6549 s!10566))))

(assert (= (and d!300654 c!177812) b!1060950))

(assert (= (and d!300654 (not c!177812)) b!1060954))

(assert (= (and d!300654 c!177813) b!1060959))

(assert (= (and d!300654 (not c!177813)) b!1060957))

(assert (= (and b!1060957 c!177811) b!1060953))

(assert (= (and b!1060957 (not c!177811)) b!1060949))

(assert (= (and b!1060949 (not res!474127)) b!1060962))

(assert (= (and b!1060962 res!474133) b!1060951))

(assert (= (and b!1060951 res!474128) b!1060952))

(assert (= (and b!1060952 res!474129) b!1060960))

(assert (= (and b!1060962 (not res!474130)) b!1060958))

(assert (= (and b!1060958 res!474132) b!1060961))

(assert (= (and b!1060961 (not res!474131)) b!1060955))

(assert (= (and b!1060955 (not res!474134)) b!1060956))

(assert (= (or b!1060959 b!1060951 b!1060961) bm!76250))

(assert (=> b!1060956 m!1220845))

(assert (=> d!300654 m!1220847))

(declare-fun m!1220999 () Bool)

(assert (=> d!300654 m!1220999))

(assert (=> b!1060954 m!1220845))

(assert (=> b!1060954 m!1220845))

(declare-fun m!1221001 () Bool)

(assert (=> b!1060954 m!1221001))

(assert (=> b!1060954 m!1220853))

(assert (=> b!1060954 m!1221001))

(assert (=> b!1060954 m!1220853))

(declare-fun m!1221003 () Bool)

(assert (=> b!1060954 m!1221003))

(declare-fun m!1221005 () Bool)

(assert (=> b!1060950 m!1221005))

(assert (=> bm!76250 m!1220847))

(assert (=> b!1060952 m!1220853))

(assert (=> b!1060952 m!1220853))

(assert (=> b!1060952 m!1220859))

(assert (=> b!1060955 m!1220853))

(assert (=> b!1060955 m!1220853))

(assert (=> b!1060955 m!1220859))

(assert (=> b!1060960 m!1220845))

(assert (=> b!1060502 d!300654))

(declare-fun d!300656 () Bool)

(declare-fun e!673299 () Bool)

(assert (=> d!300656 e!673299))

(declare-fun res!474140 () Bool)

(assert (=> d!300656 (=> res!474140 e!673299)))

(assert (=> d!300656 (= res!474140 (matchR!1453 lt!359713 s!10566))))

(declare-fun lt!359751 () Unit!15509)

(declare-fun choose!6757 (Regex!2917 Regex!2917 List!10147) Unit!15509)

(assert (=> d!300656 (= lt!359751 (choose!6757 lt!359713 lt!359714 s!10566))))

(declare-fun e!673300 () Bool)

(assert (=> d!300656 e!673300))

(declare-fun res!474139 () Bool)

(assert (=> d!300656 (=> (not res!474139) (not e!673300))))

(assert (=> d!300656 (= res!474139 (validRegex!1386 lt!359713))))

(assert (=> d!300656 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!96 lt!359713 lt!359714 s!10566) lt!359751)))

(declare-fun b!1060967 () Bool)

(assert (=> b!1060967 (= e!673300 (validRegex!1386 lt!359714))))

(declare-fun b!1060968 () Bool)

(assert (=> b!1060968 (= e!673299 (matchR!1453 lt!359714 s!10566))))

(assert (= (and d!300656 res!474139) b!1060967))

(assert (= (and d!300656 (not res!474140)) b!1060968))

(assert (=> d!300656 m!1220827))

(declare-fun m!1221007 () Bool)

(assert (=> d!300656 m!1221007))

(assert (=> d!300656 m!1220999))

(assert (=> b!1060967 m!1220849))

(assert (=> b!1060968 m!1220825))

(assert (=> b!1060502 d!300656))

(declare-fun bs!251830 () Bool)

(declare-fun b!1060977 () Bool)

(assert (= bs!251830 (and b!1060977 b!1060928)))

(declare-fun lambda!38331 () Int)

(assert (=> bs!251830 (= (and (= (reg!3246 lt!359710) (reg!3246 r!15766)) (= lt!359710 r!15766)) (= lambda!38331 lambda!38329))))

(declare-fun bs!251831 () Bool)

(assert (= bs!251831 (and b!1060977 b!1060921)))

(assert (=> bs!251831 (not (= lambda!38331 lambda!38330))))

(assert (=> b!1060977 true))

(assert (=> b!1060977 true))

(declare-fun bs!251832 () Bool)

(declare-fun b!1060970 () Bool)

(assert (= bs!251832 (and b!1060970 b!1060928)))

(declare-fun lambda!38332 () Int)

(assert (=> bs!251832 (not (= lambda!38332 lambda!38329))))

(declare-fun bs!251833 () Bool)

(assert (= bs!251833 (and b!1060970 b!1060921)))

(assert (=> bs!251833 (= (and (= (regOne!6346 lt!359710) (regOne!6346 r!15766)) (= (regTwo!6346 lt!359710) (regTwo!6346 r!15766))) (= lambda!38332 lambda!38330))))

(declare-fun bs!251834 () Bool)

(assert (= bs!251834 (and b!1060970 b!1060977)))

(assert (=> bs!251834 (not (= lambda!38332 lambda!38331))))

(assert (=> b!1060970 true))

(assert (=> b!1060970 true))

(declare-fun b!1060969 () Bool)

(declare-fun e!673301 () Bool)

(declare-fun e!673306 () Bool)

(assert (=> b!1060969 (= e!673301 e!673306)))

(declare-fun res!474141 () Bool)

(assert (=> b!1060969 (= res!474141 (matchRSpec!716 (regOne!6347 lt!359710) s!10566))))

(assert (=> b!1060969 (=> res!474141 e!673306)))

(declare-fun e!673302 () Bool)

(declare-fun call!76257 () Bool)

(assert (=> b!1060970 (= e!673302 call!76257)))

(declare-fun bm!76251 () Bool)

(declare-fun call!76256 () Bool)

(assert (=> bm!76251 (= call!76256 (isEmpty!6549 s!10566))))

(declare-fun b!1060971 () Bool)

(declare-fun e!673307 () Bool)

(assert (=> b!1060971 (= e!673307 call!76256)))

(declare-fun b!1060972 () Bool)

(assert (=> b!1060972 (= e!673306 (matchRSpec!716 (regTwo!6347 lt!359710) s!10566))))

(declare-fun b!1060973 () Bool)

(assert (=> b!1060973 (= e!673301 e!673302)))

(declare-fun c!177817 () Bool)

(assert (=> b!1060973 (= c!177817 ((_ is Star!2917) lt!359710))))

(declare-fun b!1060975 () Bool)

(declare-fun res!474142 () Bool)

(declare-fun e!673304 () Bool)

(assert (=> b!1060975 (=> res!474142 e!673304)))

(assert (=> b!1060975 (= res!474142 call!76256)))

(assert (=> b!1060975 (= e!673302 e!673304)))

(declare-fun b!1060976 () Bool)

(declare-fun c!177815 () Bool)

(assert (=> b!1060976 (= c!177815 ((_ is ElementMatch!2917) lt!359710))))

(declare-fun e!673303 () Bool)

(declare-fun e!673305 () Bool)

(assert (=> b!1060976 (= e!673303 e!673305)))

(declare-fun bm!76252 () Bool)

(assert (=> bm!76252 (= call!76257 (Exists!644 (ite c!177817 lambda!38331 lambda!38332)))))

(assert (=> b!1060977 (= e!673304 call!76257)))

(declare-fun b!1060974 () Bool)

(assert (=> b!1060974 (= e!673307 e!673303)))

(declare-fun res!474143 () Bool)

(assert (=> b!1060974 (= res!474143 (not ((_ is EmptyLang!2917) lt!359710)))))

(assert (=> b!1060974 (=> (not res!474143) (not e!673303))))

(declare-fun d!300658 () Bool)

(declare-fun c!177816 () Bool)

(assert (=> d!300658 (= c!177816 ((_ is EmptyExpr!2917) lt!359710))))

(assert (=> d!300658 (= (matchRSpec!716 lt!359710 s!10566) e!673307)))

(declare-fun b!1060978 () Bool)

(assert (=> b!1060978 (= e!673305 (= s!10566 (Cons!10131 (c!177708 lt!359710) Nil!10131)))))

(declare-fun b!1060979 () Bool)

(declare-fun c!177814 () Bool)

(assert (=> b!1060979 (= c!177814 ((_ is Union!2917) lt!359710))))

(assert (=> b!1060979 (= e!673305 e!673301)))

(assert (= (and d!300658 c!177816) b!1060971))

(assert (= (and d!300658 (not c!177816)) b!1060974))

(assert (= (and b!1060974 res!474143) b!1060976))

(assert (= (and b!1060976 c!177815) b!1060978))

(assert (= (and b!1060976 (not c!177815)) b!1060979))

(assert (= (and b!1060979 c!177814) b!1060969))

(assert (= (and b!1060979 (not c!177814)) b!1060973))

(assert (= (and b!1060969 (not res!474141)) b!1060972))

(assert (= (and b!1060973 c!177817) b!1060975))

(assert (= (and b!1060973 (not c!177817)) b!1060970))

(assert (= (and b!1060975 (not res!474142)) b!1060977))

(assert (= (or b!1060977 b!1060970) bm!76252))

(assert (= (or b!1060971 b!1060975) bm!76251))

(declare-fun m!1221009 () Bool)

(assert (=> b!1060969 m!1221009))

(assert (=> bm!76251 m!1220847))

(declare-fun m!1221011 () Bool)

(assert (=> b!1060972 m!1221011))

(declare-fun m!1221013 () Bool)

(assert (=> bm!76252 m!1221013))

(assert (=> b!1060502 d!300658))

(declare-fun d!300660 () Bool)

(assert (=> d!300660 (= (matchR!1453 lt!359710 s!10566) (matchRSpec!716 lt!359710 s!10566))))

(declare-fun lt!359752 () Unit!15509)

(assert (=> d!300660 (= lt!359752 (choose!6755 lt!359710 s!10566))))

(assert (=> d!300660 (validRegex!1386 lt!359710)))

(assert (=> d!300660 (= (mainMatchTheorem!716 lt!359710 s!10566) lt!359752)))

(declare-fun bs!251835 () Bool)

(assert (= bs!251835 d!300660))

(assert (=> bs!251835 m!1220839))

(assert (=> bs!251835 m!1220831))

(declare-fun m!1221015 () Bool)

(assert (=> bs!251835 m!1221015))

(declare-fun m!1221017 () Bool)

(assert (=> bs!251835 m!1221017))

(assert (=> b!1060502 d!300660))

(declare-fun b!1060980 () Bool)

(declare-fun res!474144 () Bool)

(declare-fun e!673313 () Bool)

(assert (=> b!1060980 (=> res!474144 e!673313)))

(assert (=> b!1060980 (= res!474144 (not ((_ is ElementMatch!2917) lt!359710)))))

(declare-fun e!673314 () Bool)

(assert (=> b!1060980 (= e!673314 e!673313)))

(declare-fun b!1060981 () Bool)

(declare-fun e!673311 () Bool)

(assert (=> b!1060981 (= e!673311 (nullable!1009 lt!359710))))

(declare-fun b!1060982 () Bool)

(declare-fun res!474145 () Bool)

(declare-fun e!673312 () Bool)

(assert (=> b!1060982 (=> (not res!474145) (not e!673312))))

(declare-fun call!76258 () Bool)

(assert (=> b!1060982 (= res!474145 (not call!76258))))

(declare-fun b!1060983 () Bool)

(declare-fun res!474146 () Bool)

(assert (=> b!1060983 (=> (not res!474146) (not e!673312))))

(assert (=> b!1060983 (= res!474146 (isEmpty!6549 (tail!1526 s!10566)))))

(declare-fun b!1060984 () Bool)

(declare-fun lt!359753 () Bool)

(assert (=> b!1060984 (= e!673314 (not lt!359753))))

(declare-fun d!300662 () Bool)

(declare-fun e!673308 () Bool)

(assert (=> d!300662 e!673308))

(declare-fun c!177820 () Bool)

(assert (=> d!300662 (= c!177820 ((_ is EmptyExpr!2917) lt!359710))))

(assert (=> d!300662 (= lt!359753 e!673311)))

(declare-fun c!177819 () Bool)

(assert (=> d!300662 (= c!177819 (isEmpty!6549 s!10566))))

(assert (=> d!300662 (validRegex!1386 lt!359710)))

(assert (=> d!300662 (= (matchR!1453 lt!359710 s!10566) lt!359753)))

(declare-fun b!1060985 () Bool)

(assert (=> b!1060985 (= e!673311 (matchR!1453 (derivativeStep!809 lt!359710 (head!1964 s!10566)) (tail!1526 s!10566)))))

(declare-fun b!1060986 () Bool)

(declare-fun res!474151 () Bool)

(declare-fun e!673309 () Bool)

(assert (=> b!1060986 (=> res!474151 e!673309)))

(assert (=> b!1060986 (= res!474151 (not (isEmpty!6549 (tail!1526 s!10566))))))

(declare-fun b!1060987 () Bool)

(assert (=> b!1060987 (= e!673309 (not (= (head!1964 s!10566) (c!177708 lt!359710))))))

(declare-fun b!1060988 () Bool)

(assert (=> b!1060988 (= e!673308 e!673314)))

(declare-fun c!177818 () Bool)

(assert (=> b!1060988 (= c!177818 ((_ is EmptyLang!2917) lt!359710))))

(declare-fun b!1060989 () Bool)

(declare-fun e!673310 () Bool)

(assert (=> b!1060989 (= e!673313 e!673310)))

(declare-fun res!474149 () Bool)

(assert (=> b!1060989 (=> (not res!474149) (not e!673310))))

(assert (=> b!1060989 (= res!474149 (not lt!359753))))

(declare-fun b!1060990 () Bool)

(assert (=> b!1060990 (= e!673308 (= lt!359753 call!76258))))

(declare-fun b!1060991 () Bool)

(assert (=> b!1060991 (= e!673312 (= (head!1964 s!10566) (c!177708 lt!359710)))))

(declare-fun b!1060992 () Bool)

(assert (=> b!1060992 (= e!673310 e!673309)))

(declare-fun res!474148 () Bool)

(assert (=> b!1060992 (=> res!474148 e!673309)))

(assert (=> b!1060992 (= res!474148 call!76258)))

(declare-fun b!1060993 () Bool)

(declare-fun res!474147 () Bool)

(assert (=> b!1060993 (=> res!474147 e!673313)))

(assert (=> b!1060993 (= res!474147 e!673312)))

(declare-fun res!474150 () Bool)

(assert (=> b!1060993 (=> (not res!474150) (not e!673312))))

(assert (=> b!1060993 (= res!474150 lt!359753)))

(declare-fun bm!76253 () Bool)

(assert (=> bm!76253 (= call!76258 (isEmpty!6549 s!10566))))

(assert (= (and d!300662 c!177819) b!1060981))

(assert (= (and d!300662 (not c!177819)) b!1060985))

(assert (= (and d!300662 c!177820) b!1060990))

(assert (= (and d!300662 (not c!177820)) b!1060988))

(assert (= (and b!1060988 c!177818) b!1060984))

(assert (= (and b!1060988 (not c!177818)) b!1060980))

(assert (= (and b!1060980 (not res!474144)) b!1060993))

(assert (= (and b!1060993 res!474150) b!1060982))

(assert (= (and b!1060982 res!474145) b!1060983))

(assert (= (and b!1060983 res!474146) b!1060991))

(assert (= (and b!1060993 (not res!474147)) b!1060989))

(assert (= (and b!1060989 res!474149) b!1060992))

(assert (= (and b!1060992 (not res!474148)) b!1060986))

(assert (= (and b!1060986 (not res!474151)) b!1060987))

(assert (= (or b!1060990 b!1060982 b!1060992) bm!76253))

(assert (=> b!1060987 m!1220845))

(assert (=> d!300662 m!1220847))

(assert (=> d!300662 m!1221017))

(assert (=> b!1060985 m!1220845))

(assert (=> b!1060985 m!1220845))

(declare-fun m!1221019 () Bool)

(assert (=> b!1060985 m!1221019))

(assert (=> b!1060985 m!1220853))

(assert (=> b!1060985 m!1221019))

(assert (=> b!1060985 m!1220853))

(declare-fun m!1221021 () Bool)

(assert (=> b!1060985 m!1221021))

(declare-fun m!1221023 () Bool)

(assert (=> b!1060981 m!1221023))

(assert (=> bm!76253 m!1220847))

(assert (=> b!1060983 m!1220853))

(assert (=> b!1060983 m!1220853))

(assert (=> b!1060983 m!1220859))

(assert (=> b!1060986 m!1220853))

(assert (=> b!1060986 m!1220853))

(assert (=> b!1060986 m!1220859))

(assert (=> b!1060991 m!1220845))

(assert (=> b!1060500 d!300662))

(declare-fun b!1061016 () Bool)

(declare-fun e!673327 () Regex!2917)

(declare-fun call!76271 () Regex!2917)

(declare-fun call!76273 () Regex!2917)

(assert (=> b!1061016 (= e!673327 (Concat!4750 call!76271 call!76273))))

(declare-fun b!1061017 () Bool)

(declare-fun e!673331 () Regex!2917)

(assert (=> b!1061017 (= e!673331 (regTwo!6347 r!15766))))

(declare-fun b!1061018 () Bool)

(declare-fun c!177834 () Bool)

(assert (=> b!1061018 (= c!177834 ((_ is Star!2917) (regTwo!6347 r!15766)))))

(declare-fun e!673329 () Regex!2917)

(assert (=> b!1061018 (= e!673329 e!673331)))

(declare-fun bm!76264 () Bool)

(declare-fun call!76269 () Regex!2917)

(assert (=> bm!76264 (= call!76273 call!76269)))

(declare-fun bm!76265 () Bool)

(declare-fun call!76270 () Regex!2917)

(assert (=> bm!76265 (= call!76270 call!76273)))

(declare-fun bm!76266 () Bool)

(declare-fun c!177832 () Bool)

(assert (=> bm!76266 (= call!76271 (removeUselessConcat!466 (ite c!177832 (regOne!6346 (regTwo!6347 r!15766)) (regOne!6347 (regTwo!6347 r!15766)))))))

(declare-fun b!1061020 () Bool)

(declare-fun e!673328 () Regex!2917)

(declare-fun call!76272 () Regex!2917)

(assert (=> b!1061020 (= e!673328 call!76272)))

(declare-fun b!1061021 () Bool)

(declare-fun e!673332 () Regex!2917)

(assert (=> b!1061021 (= e!673328 e!673332)))

(declare-fun c!177831 () Bool)

(assert (=> b!1061021 (= c!177831 (and ((_ is Concat!4750) (regTwo!6347 r!15766)) ((_ is EmptyExpr!2917) (regTwo!6346 (regTwo!6347 r!15766)))))))

(declare-fun b!1061022 () Bool)

(assert (=> b!1061022 (= e!673332 call!76269)))

(declare-fun b!1061023 () Bool)

(assert (=> b!1061023 (= e!673331 (Star!2917 call!76270))))

(declare-fun c!177833 () Bool)

(declare-fun bm!76267 () Bool)

(declare-fun c!177835 () Bool)

(assert (=> bm!76267 (= call!76272 (removeUselessConcat!466 (ite c!177835 (regTwo!6346 (regTwo!6347 r!15766)) (ite c!177831 (regOne!6346 (regTwo!6347 r!15766)) (ite c!177832 (regTwo!6346 (regTwo!6347 r!15766)) (ite c!177833 (regTwo!6347 (regTwo!6347 r!15766)) (reg!3246 (regTwo!6347 r!15766))))))))))

(declare-fun b!1061024 () Bool)

(assert (=> b!1061024 (= e!673327 e!673329)))

(assert (=> b!1061024 (= c!177833 ((_ is Union!2917) (regTwo!6347 r!15766)))))

(declare-fun b!1061025 () Bool)

(declare-fun e!673330 () Bool)

(declare-fun lt!359756 () Regex!2917)

(assert (=> b!1061025 (= e!673330 (= (nullable!1009 lt!359756) (nullable!1009 (regTwo!6347 r!15766))))))

(declare-fun b!1061019 () Bool)

(assert (=> b!1061019 (= e!673329 (Union!2917 call!76271 call!76270))))

(declare-fun d!300664 () Bool)

(assert (=> d!300664 e!673330))

(declare-fun res!474154 () Bool)

(assert (=> d!300664 (=> (not res!474154) (not e!673330))))

(assert (=> d!300664 (= res!474154 (validRegex!1386 lt!359756))))

(assert (=> d!300664 (= lt!359756 e!673328)))

(assert (=> d!300664 (= c!177835 (and ((_ is Concat!4750) (regTwo!6347 r!15766)) ((_ is EmptyExpr!2917) (regOne!6346 (regTwo!6347 r!15766)))))))

(assert (=> d!300664 (validRegex!1386 (regTwo!6347 r!15766))))

(assert (=> d!300664 (= (removeUselessConcat!466 (regTwo!6347 r!15766)) lt!359756)))

(declare-fun bm!76268 () Bool)

(assert (=> bm!76268 (= call!76269 call!76272)))

(declare-fun b!1061026 () Bool)

(assert (=> b!1061026 (= c!177832 ((_ is Concat!4750) (regTwo!6347 r!15766)))))

(assert (=> b!1061026 (= e!673332 e!673327)))

(assert (= (and d!300664 c!177835) b!1061020))

(assert (= (and d!300664 (not c!177835)) b!1061021))

(assert (= (and b!1061021 c!177831) b!1061022))

(assert (= (and b!1061021 (not c!177831)) b!1061026))

(assert (= (and b!1061026 c!177832) b!1061016))

(assert (= (and b!1061026 (not c!177832)) b!1061024))

(assert (= (and b!1061024 c!177833) b!1061019))

(assert (= (and b!1061024 (not c!177833)) b!1061018))

(assert (= (and b!1061018 c!177834) b!1061023))

(assert (= (and b!1061018 (not c!177834)) b!1061017))

(assert (= (or b!1061019 b!1061023) bm!76265))

(assert (= (or b!1061016 bm!76265) bm!76264))

(assert (= (or b!1061016 b!1061019) bm!76266))

(assert (= (or b!1061022 bm!76264) bm!76268))

(assert (= (or b!1061020 bm!76268) bm!76267))

(assert (= (and d!300664 res!474154) b!1061025))

(declare-fun m!1221025 () Bool)

(assert (=> bm!76266 m!1221025))

(declare-fun m!1221027 () Bool)

(assert (=> bm!76267 m!1221027))

(declare-fun m!1221029 () Bool)

(assert (=> b!1061025 m!1221029))

(assert (=> b!1061025 m!1220865))

(declare-fun m!1221031 () Bool)

(assert (=> d!300664 m!1221031))

(assert (=> d!300664 m!1220813))

(assert (=> b!1060500 d!300664))

(declare-fun b!1061027 () Bool)

(declare-fun e!673333 () Regex!2917)

(declare-fun call!76276 () Regex!2917)

(declare-fun call!76278 () Regex!2917)

(assert (=> b!1061027 (= e!673333 (Concat!4750 call!76276 call!76278))))

(declare-fun b!1061028 () Bool)

(declare-fun e!673337 () Regex!2917)

(assert (=> b!1061028 (= e!673337 (regOne!6347 r!15766))))

(declare-fun b!1061029 () Bool)

(declare-fun c!177839 () Bool)

(assert (=> b!1061029 (= c!177839 ((_ is Star!2917) (regOne!6347 r!15766)))))

(declare-fun e!673335 () Regex!2917)

(assert (=> b!1061029 (= e!673335 e!673337)))

(declare-fun bm!76269 () Bool)

(declare-fun call!76274 () Regex!2917)

(assert (=> bm!76269 (= call!76278 call!76274)))

(declare-fun bm!76270 () Bool)

(declare-fun call!76275 () Regex!2917)

(assert (=> bm!76270 (= call!76275 call!76278)))

(declare-fun bm!76271 () Bool)

(declare-fun c!177837 () Bool)

(assert (=> bm!76271 (= call!76276 (removeUselessConcat!466 (ite c!177837 (regOne!6346 (regOne!6347 r!15766)) (regOne!6347 (regOne!6347 r!15766)))))))

(declare-fun b!1061031 () Bool)

(declare-fun e!673334 () Regex!2917)

(declare-fun call!76277 () Regex!2917)

(assert (=> b!1061031 (= e!673334 call!76277)))

(declare-fun b!1061032 () Bool)

(declare-fun e!673338 () Regex!2917)

(assert (=> b!1061032 (= e!673334 e!673338)))

(declare-fun c!177836 () Bool)

(assert (=> b!1061032 (= c!177836 (and ((_ is Concat!4750) (regOne!6347 r!15766)) ((_ is EmptyExpr!2917) (regTwo!6346 (regOne!6347 r!15766)))))))

(declare-fun b!1061033 () Bool)

(assert (=> b!1061033 (= e!673338 call!76274)))

(declare-fun b!1061034 () Bool)

(assert (=> b!1061034 (= e!673337 (Star!2917 call!76275))))

(declare-fun bm!76272 () Bool)

(declare-fun c!177840 () Bool)

(declare-fun c!177838 () Bool)

(assert (=> bm!76272 (= call!76277 (removeUselessConcat!466 (ite c!177840 (regTwo!6346 (regOne!6347 r!15766)) (ite c!177836 (regOne!6346 (regOne!6347 r!15766)) (ite c!177837 (regTwo!6346 (regOne!6347 r!15766)) (ite c!177838 (regTwo!6347 (regOne!6347 r!15766)) (reg!3246 (regOne!6347 r!15766))))))))))

(declare-fun b!1061035 () Bool)

(assert (=> b!1061035 (= e!673333 e!673335)))

(assert (=> b!1061035 (= c!177838 ((_ is Union!2917) (regOne!6347 r!15766)))))

(declare-fun b!1061036 () Bool)

(declare-fun e!673336 () Bool)

(declare-fun lt!359757 () Regex!2917)

(assert (=> b!1061036 (= e!673336 (= (nullable!1009 lt!359757) (nullable!1009 (regOne!6347 r!15766))))))

(declare-fun b!1061030 () Bool)

(assert (=> b!1061030 (= e!673335 (Union!2917 call!76276 call!76275))))

(declare-fun d!300666 () Bool)

(assert (=> d!300666 e!673336))

(declare-fun res!474155 () Bool)

(assert (=> d!300666 (=> (not res!474155) (not e!673336))))

(assert (=> d!300666 (= res!474155 (validRegex!1386 lt!359757))))

(assert (=> d!300666 (= lt!359757 e!673334)))

(assert (=> d!300666 (= c!177840 (and ((_ is Concat!4750) (regOne!6347 r!15766)) ((_ is EmptyExpr!2917) (regOne!6346 (regOne!6347 r!15766)))))))

(assert (=> d!300666 (validRegex!1386 (regOne!6347 r!15766))))

(assert (=> d!300666 (= (removeUselessConcat!466 (regOne!6347 r!15766)) lt!359757)))

(declare-fun bm!76273 () Bool)

(assert (=> bm!76273 (= call!76274 call!76277)))

(declare-fun b!1061037 () Bool)

(assert (=> b!1061037 (= c!177837 ((_ is Concat!4750) (regOne!6347 r!15766)))))

(assert (=> b!1061037 (= e!673338 e!673333)))

(assert (= (and d!300666 c!177840) b!1061031))

(assert (= (and d!300666 (not c!177840)) b!1061032))

(assert (= (and b!1061032 c!177836) b!1061033))

(assert (= (and b!1061032 (not c!177836)) b!1061037))

(assert (= (and b!1061037 c!177837) b!1061027))

(assert (= (and b!1061037 (not c!177837)) b!1061035))

(assert (= (and b!1061035 c!177838) b!1061030))

(assert (= (and b!1061035 (not c!177838)) b!1061029))

(assert (= (and b!1061029 c!177839) b!1061034))

(assert (= (and b!1061029 (not c!177839)) b!1061028))

(assert (= (or b!1061030 b!1061034) bm!76270))

(assert (= (or b!1061027 bm!76270) bm!76269))

(assert (= (or b!1061027 b!1061030) bm!76271))

(assert (= (or b!1061033 bm!76269) bm!76273))

(assert (= (or b!1061031 bm!76273) bm!76272))

(assert (= (and d!300666 res!474155) b!1061036))

(declare-fun m!1221033 () Bool)

(assert (=> bm!76271 m!1221033))

(declare-fun m!1221035 () Bool)

(assert (=> bm!76272 m!1221035))

(declare-fun m!1221037 () Bool)

(assert (=> b!1061036 m!1221037))

(declare-fun m!1221039 () Bool)

(assert (=> b!1061036 m!1221039))

(declare-fun m!1221041 () Bool)

(assert (=> d!300666 m!1221041))

(assert (=> d!300666 m!1220821))

(assert (=> b!1060500 d!300666))

(declare-fun b!1061038 () Bool)

(declare-fun e!673343 () Bool)

(declare-fun call!76281 () Bool)

(assert (=> b!1061038 (= e!673343 call!76281)))

(declare-fun bm!76274 () Bool)

(declare-fun call!76280 () Bool)

(assert (=> bm!76274 (= call!76281 call!76280)))

(declare-fun b!1061039 () Bool)

(declare-fun e!673345 () Bool)

(declare-fun e!673341 () Bool)

(assert (=> b!1061039 (= e!673345 e!673341)))

(declare-fun c!177841 () Bool)

(assert (=> b!1061039 (= c!177841 ((_ is Union!2917) (regTwo!6347 r!15766)))))

(declare-fun b!1061040 () Bool)

(declare-fun res!474159 () Bool)

(declare-fun e!673340 () Bool)

(assert (=> b!1061040 (=> res!474159 e!673340)))

(assert (=> b!1061040 (= res!474159 (not ((_ is Concat!4750) (regTwo!6347 r!15766))))))

(assert (=> b!1061040 (= e!673341 e!673340)))

(declare-fun b!1061041 () Bool)

(assert (=> b!1061041 (= e!673340 e!673343)))

(declare-fun res!474158 () Bool)

(assert (=> b!1061041 (=> (not res!474158) (not e!673343))))

(declare-fun call!76279 () Bool)

(assert (=> b!1061041 (= res!474158 call!76279)))

(declare-fun b!1061042 () Bool)

(declare-fun e!673344 () Bool)

(assert (=> b!1061042 (= e!673345 e!673344)))

(declare-fun res!474156 () Bool)

(assert (=> b!1061042 (= res!474156 (not (nullable!1009 (reg!3246 (regTwo!6347 r!15766)))))))

(assert (=> b!1061042 (=> (not res!474156) (not e!673344))))

(declare-fun b!1061043 () Bool)

(declare-fun e!673339 () Bool)

(assert (=> b!1061043 (= e!673339 e!673345)))

(declare-fun c!177842 () Bool)

(assert (=> b!1061043 (= c!177842 ((_ is Star!2917) (regTwo!6347 r!15766)))))

(declare-fun d!300668 () Bool)

(declare-fun res!474157 () Bool)

(assert (=> d!300668 (=> res!474157 e!673339)))

(assert (=> d!300668 (= res!474157 ((_ is ElementMatch!2917) (regTwo!6347 r!15766)))))

(assert (=> d!300668 (= (validRegex!1386 (regTwo!6347 r!15766)) e!673339)))

(declare-fun b!1061044 () Bool)

(declare-fun e!673342 () Bool)

(assert (=> b!1061044 (= e!673342 call!76281)))

(declare-fun bm!76275 () Bool)

(assert (=> bm!76275 (= call!76279 (validRegex!1386 (ite c!177841 (regOne!6347 (regTwo!6347 r!15766)) (regOne!6346 (regTwo!6347 r!15766)))))))

(declare-fun b!1061045 () Bool)

(declare-fun res!474160 () Bool)

(assert (=> b!1061045 (=> (not res!474160) (not e!673342))))

(assert (=> b!1061045 (= res!474160 call!76279)))

(assert (=> b!1061045 (= e!673341 e!673342)))

(declare-fun bm!76276 () Bool)

(assert (=> bm!76276 (= call!76280 (validRegex!1386 (ite c!177842 (reg!3246 (regTwo!6347 r!15766)) (ite c!177841 (regTwo!6347 (regTwo!6347 r!15766)) (regTwo!6346 (regTwo!6347 r!15766))))))))

(declare-fun b!1061046 () Bool)

(assert (=> b!1061046 (= e!673344 call!76280)))

(assert (= (and d!300668 (not res!474157)) b!1061043))

(assert (= (and b!1061043 c!177842) b!1061042))

(assert (= (and b!1061043 (not c!177842)) b!1061039))

(assert (= (and b!1061042 res!474156) b!1061046))

(assert (= (and b!1061039 c!177841) b!1061045))

(assert (= (and b!1061039 (not c!177841)) b!1061040))

(assert (= (and b!1061045 res!474160) b!1061044))

(assert (= (and b!1061040 (not res!474159)) b!1061041))

(assert (= (and b!1061041 res!474158) b!1061038))

(assert (= (or b!1061044 b!1061038) bm!76274))

(assert (= (or b!1061045 b!1061041) bm!76275))

(assert (= (or b!1061046 bm!76274) bm!76276))

(declare-fun m!1221043 () Bool)

(assert (=> b!1061042 m!1221043))

(declare-fun m!1221045 () Bool)

(assert (=> bm!76275 m!1221045))

(declare-fun m!1221047 () Bool)

(assert (=> bm!76276 m!1221047))

(assert (=> b!1060506 d!300668))

(declare-fun b!1061058 () Bool)

(declare-fun e!673348 () Bool)

(declare-fun tp!318725 () Bool)

(declare-fun tp!318728 () Bool)

(assert (=> b!1061058 (= e!673348 (and tp!318725 tp!318728))))

(assert (=> b!1060505 (= tp!318672 e!673348)))

(declare-fun b!1061060 () Bool)

(declare-fun tp!318727 () Bool)

(declare-fun tp!318726 () Bool)

(assert (=> b!1061060 (= e!673348 (and tp!318727 tp!318726))))

(declare-fun b!1061057 () Bool)

(assert (=> b!1061057 (= e!673348 tp_is_empty!5477)))

(declare-fun b!1061059 () Bool)

(declare-fun tp!318729 () Bool)

(assert (=> b!1061059 (= e!673348 tp!318729)))

(assert (= (and b!1060505 ((_ is ElementMatch!2917) (reg!3246 r!15766))) b!1061057))

(assert (= (and b!1060505 ((_ is Concat!4750) (reg!3246 r!15766))) b!1061058))

(assert (= (and b!1060505 ((_ is Star!2917) (reg!3246 r!15766))) b!1061059))

(assert (= (and b!1060505 ((_ is Union!2917) (reg!3246 r!15766))) b!1061060))

(declare-fun b!1061062 () Bool)

(declare-fun e!673349 () Bool)

(declare-fun tp!318730 () Bool)

(declare-fun tp!318733 () Bool)

(assert (=> b!1061062 (= e!673349 (and tp!318730 tp!318733))))

(assert (=> b!1060508 (= tp!318671 e!673349)))

(declare-fun b!1061064 () Bool)

(declare-fun tp!318732 () Bool)

(declare-fun tp!318731 () Bool)

(assert (=> b!1061064 (= e!673349 (and tp!318732 tp!318731))))

(declare-fun b!1061061 () Bool)

(assert (=> b!1061061 (= e!673349 tp_is_empty!5477)))

(declare-fun b!1061063 () Bool)

(declare-fun tp!318734 () Bool)

(assert (=> b!1061063 (= e!673349 tp!318734)))

(assert (= (and b!1060508 ((_ is ElementMatch!2917) (regOne!6347 r!15766))) b!1061061))

(assert (= (and b!1060508 ((_ is Concat!4750) (regOne!6347 r!15766))) b!1061062))

(assert (= (and b!1060508 ((_ is Star!2917) (regOne!6347 r!15766))) b!1061063))

(assert (= (and b!1060508 ((_ is Union!2917) (regOne!6347 r!15766))) b!1061064))

(declare-fun b!1061066 () Bool)

(declare-fun e!673350 () Bool)

(declare-fun tp!318735 () Bool)

(declare-fun tp!318738 () Bool)

(assert (=> b!1061066 (= e!673350 (and tp!318735 tp!318738))))

(assert (=> b!1060508 (= tp!318673 e!673350)))

(declare-fun b!1061068 () Bool)

(declare-fun tp!318737 () Bool)

(declare-fun tp!318736 () Bool)

(assert (=> b!1061068 (= e!673350 (and tp!318737 tp!318736))))

(declare-fun b!1061065 () Bool)

(assert (=> b!1061065 (= e!673350 tp_is_empty!5477)))

(declare-fun b!1061067 () Bool)

(declare-fun tp!318739 () Bool)

(assert (=> b!1061067 (= e!673350 tp!318739)))

(assert (= (and b!1060508 ((_ is ElementMatch!2917) (regTwo!6347 r!15766))) b!1061065))

(assert (= (and b!1060508 ((_ is Concat!4750) (regTwo!6347 r!15766))) b!1061066))

(assert (= (and b!1060508 ((_ is Star!2917) (regTwo!6347 r!15766))) b!1061067))

(assert (= (and b!1060508 ((_ is Union!2917) (regTwo!6347 r!15766))) b!1061068))

(declare-fun b!1061070 () Bool)

(declare-fun e!673351 () Bool)

(declare-fun tp!318740 () Bool)

(declare-fun tp!318743 () Bool)

(assert (=> b!1061070 (= e!673351 (and tp!318740 tp!318743))))

(assert (=> b!1060503 (= tp!318674 e!673351)))

(declare-fun b!1061072 () Bool)

(declare-fun tp!318742 () Bool)

(declare-fun tp!318741 () Bool)

(assert (=> b!1061072 (= e!673351 (and tp!318742 tp!318741))))

(declare-fun b!1061069 () Bool)

(assert (=> b!1061069 (= e!673351 tp_is_empty!5477)))

(declare-fun b!1061071 () Bool)

(declare-fun tp!318744 () Bool)

(assert (=> b!1061071 (= e!673351 tp!318744)))

(assert (= (and b!1060503 ((_ is ElementMatch!2917) (regOne!6346 r!15766))) b!1061069))

(assert (= (and b!1060503 ((_ is Concat!4750) (regOne!6346 r!15766))) b!1061070))

(assert (= (and b!1060503 ((_ is Star!2917) (regOne!6346 r!15766))) b!1061071))

(assert (= (and b!1060503 ((_ is Union!2917) (regOne!6346 r!15766))) b!1061072))

(declare-fun b!1061074 () Bool)

(declare-fun e!673352 () Bool)

(declare-fun tp!318745 () Bool)

(declare-fun tp!318748 () Bool)

(assert (=> b!1061074 (= e!673352 (and tp!318745 tp!318748))))

(assert (=> b!1060503 (= tp!318675 e!673352)))

(declare-fun b!1061076 () Bool)

(declare-fun tp!318747 () Bool)

(declare-fun tp!318746 () Bool)

(assert (=> b!1061076 (= e!673352 (and tp!318747 tp!318746))))

(declare-fun b!1061073 () Bool)

(assert (=> b!1061073 (= e!673352 tp_is_empty!5477)))

(declare-fun b!1061075 () Bool)

(declare-fun tp!318749 () Bool)

(assert (=> b!1061075 (= e!673352 tp!318749)))

(assert (= (and b!1060503 ((_ is ElementMatch!2917) (regTwo!6346 r!15766))) b!1061073))

(assert (= (and b!1060503 ((_ is Concat!4750) (regTwo!6346 r!15766))) b!1061074))

(assert (= (and b!1060503 ((_ is Star!2917) (regTwo!6346 r!15766))) b!1061075))

(assert (= (and b!1060503 ((_ is Union!2917) (regTwo!6346 r!15766))) b!1061076))

(declare-fun b!1061081 () Bool)

(declare-fun e!673355 () Bool)

(declare-fun tp!318752 () Bool)

(assert (=> b!1061081 (= e!673355 (and tp_is_empty!5477 tp!318752))))

(assert (=> b!1060498 (= tp!318676 e!673355)))

(assert (= (and b!1060498 ((_ is Cons!10131) (t!101193 s!10566))) b!1061081))

(check-sat (not bm!76275) (not d!300662) (not b!1060563) (not b!1061060) (not d!300610) (not bm!76272) (not b!1060555) (not b!1061059) (not b!1060543) (not b!1060981) (not bm!76194) (not b!1060923) (not b!1060955) (not b!1060983) (not b!1060969) (not d!300664) (not b!1060558) (not b!1061068) (not bm!76252) (not b!1060952) (not bm!76253) (not b!1061072) (not b!1060967) (not d!300656) (not b!1060553) (not bm!76276) (not b!1060549) (not b!1060986) (not b!1061075) (not b!1060545) (not b!1060544) (not bm!76247) (not d!300650) (not b!1060557) (not d!300606) (not bm!76192) tp_is_empty!5477 (not bm!76250) (not bm!76179) (not bm!76191) (not d!300666) (not b!1060634) (not b!1061066) (not b!1060539) (not b!1061025) (not b!1061042) (not b!1060968) (not b!1061064) (not b!1060941) (not b!1061081) (not b!1061071) (not b!1061063) (not b!1060950) (not b!1060954) (not b!1061076) (not bm!76266) (not d!300660) (not d!300652) (not bm!76180) (not bm!76251) (not b!1060960) (not b!1060920) (not b!1060936) (not b!1061058) (not b!1061070) (not b!1060991) (not b!1061074) (not b!1060940) (not b!1060938) (not b!1060645) (not b!1060541) (not b!1060946) (not bm!76267) (not d!300612) (not b!1060987) (not b!1060985) (not bm!76271) (not b!1060956) (not bm!76249) (not b!1061062) (not d!300654) (not bm!76195) (not b!1060942) (not b!1060559) (not b!1061067) (not b!1061036) (not b!1060972) (not bm!76248))
(check-sat)
