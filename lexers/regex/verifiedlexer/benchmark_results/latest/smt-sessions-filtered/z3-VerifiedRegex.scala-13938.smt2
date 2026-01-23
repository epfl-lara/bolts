; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739300 () Bool)

(assert start!739300)

(declare-fun b!7758920 () Bool)

(declare-fun e!4598691 () Bool)

(declare-fun tp!2277901 () Bool)

(declare-fun tp!2277897 () Bool)

(assert (=> b!7758920 (= e!4598691 (and tp!2277901 tp!2277897))))

(declare-fun b!7758921 () Bool)

(declare-fun res!3093266 () Bool)

(declare-fun e!4598690 () Bool)

(assert (=> b!7758921 (=> (not res!3093266) (not e!4598690))))

(declare-datatypes ((C!41668 0))(
  ( (C!41669 (val!31274 Int)) )
))
(declare-datatypes ((Regex!20671 0))(
  ( (ElementMatch!20671 (c!1430626 C!41668)) (Concat!29516 (regOne!41854 Regex!20671) (regTwo!41854 Regex!20671)) (EmptyExpr!20671) (Star!20671 (reg!21000 Regex!20671)) (EmptyLang!20671) (Union!20671 (regOne!41855 Regex!20671) (regTwo!41855 Regex!20671)) )
))
(declare-fun r2!3230 () Regex!20671)

(declare-fun validRegex!11087 (Regex!20671) Bool)

(assert (=> b!7758921 (= res!3093266 (validRegex!11087 r2!3230))))

(declare-fun b!7758922 () Bool)

(declare-fun e!4598692 () Bool)

(declare-fun tp!2277903 () Bool)

(assert (=> b!7758922 (= e!4598692 tp!2277903)))

(declare-fun b!7758923 () Bool)

(declare-fun e!4598693 () Bool)

(declare-fun tp_is_empty!51697 () Bool)

(declare-fun tp!2277893 () Bool)

(assert (=> b!7758923 (= e!4598693 (and tp_is_empty!51697 tp!2277893))))

(declare-fun b!7758924 () Bool)

(assert (=> b!7758924 (= e!4598692 tp_is_empty!51697)))

(declare-fun b!7758925 () Bool)

(assert (=> b!7758925 (= e!4598691 tp_is_empty!51697)))

(declare-fun b!7758926 () Bool)

(declare-fun tp!2277895 () Bool)

(declare-fun tp!2277896 () Bool)

(assert (=> b!7758926 (= e!4598692 (and tp!2277895 tp!2277896))))

(declare-fun b!7758928 () Bool)

(declare-fun res!3093265 () Bool)

(assert (=> b!7758928 (=> (not res!3093265) (not e!4598690))))

(declare-fun r1!3330 () Regex!20671)

(declare-datatypes ((List!73514 0))(
  ( (Nil!73390) (Cons!73390 (h!79838 C!41668) (t!388249 List!73514)) )
))
(declare-fun s!10216 () List!73514)

(declare-datatypes ((tuple2!69728 0))(
  ( (tuple2!69729 (_1!38167 List!73514) (_2!38167 List!73514)) )
))
(declare-datatypes ((Option!17658 0))(
  ( (None!17657) (Some!17657 (v!54792 tuple2!69728)) )
))
(declare-fun isDefined!14270 (Option!17658) Bool)

(declare-fun findConcatSeparation!3688 (Regex!20671 Regex!20671 List!73514 List!73514 List!73514) Option!17658)

(assert (=> b!7758928 (= res!3093265 (not (isDefined!14270 (findConcatSeparation!3688 r1!3330 r2!3230 Nil!73390 s!10216 s!10216))))))

(declare-fun b!7758929 () Bool)

(declare-fun tp!2277898 () Bool)

(assert (=> b!7758929 (= e!4598691 tp!2277898)))

(declare-fun b!7758930 () Bool)

(declare-fun tp!2277899 () Bool)

(declare-fun tp!2277894 () Bool)

(assert (=> b!7758930 (= e!4598692 (and tp!2277899 tp!2277894))))

(declare-fun b!7758931 () Bool)

(declare-fun ++!17848 (List!73514 List!73514) List!73514)

(assert (=> b!7758931 (= e!4598690 (not (= (++!17848 Nil!73390 s!10216) s!10216)))))

(declare-fun res!3093264 () Bool)

(assert (=> start!739300 (=> (not res!3093264) (not e!4598690))))

(assert (=> start!739300 (= res!3093264 (validRegex!11087 r1!3330))))

(assert (=> start!739300 e!4598690))

(assert (=> start!739300 e!4598692))

(assert (=> start!739300 e!4598691))

(assert (=> start!739300 e!4598693))

(declare-fun b!7758927 () Bool)

(declare-fun tp!2277902 () Bool)

(declare-fun tp!2277900 () Bool)

(assert (=> b!7758927 (= e!4598691 (and tp!2277902 tp!2277900))))

(assert (= (and start!739300 res!3093264) b!7758921))

(assert (= (and b!7758921 res!3093266) b!7758928))

(assert (= (and b!7758928 res!3093265) b!7758931))

(get-info :version)

(assert (= (and start!739300 ((_ is ElementMatch!20671) r1!3330)) b!7758924))

(assert (= (and start!739300 ((_ is Concat!29516) r1!3330)) b!7758930))

(assert (= (and start!739300 ((_ is Star!20671) r1!3330)) b!7758922))

(assert (= (and start!739300 ((_ is Union!20671) r1!3330)) b!7758926))

(assert (= (and start!739300 ((_ is ElementMatch!20671) r2!3230)) b!7758925))

(assert (= (and start!739300 ((_ is Concat!29516) r2!3230)) b!7758927))

(assert (= (and start!739300 ((_ is Star!20671) r2!3230)) b!7758929))

(assert (= (and start!739300 ((_ is Union!20671) r2!3230)) b!7758920))

(assert (= (and start!739300 ((_ is Cons!73390) s!10216)) b!7758923))

(declare-fun m!8220028 () Bool)

(assert (=> b!7758921 m!8220028))

(declare-fun m!8220030 () Bool)

(assert (=> b!7758928 m!8220030))

(assert (=> b!7758928 m!8220030))

(declare-fun m!8220032 () Bool)

(assert (=> b!7758928 m!8220032))

(declare-fun m!8220034 () Bool)

(assert (=> b!7758931 m!8220034))

(declare-fun m!8220036 () Bool)

(assert (=> start!739300 m!8220036))

(check-sat (not b!7758926) (not b!7758921) (not b!7758930) tp_is_empty!51697 (not start!739300) (not b!7758923) (not b!7758928) (not b!7758922) (not b!7758931) (not b!7758920) (not b!7758927) (not b!7758929))
(check-sat)
(get-model)

(declare-fun d!2343475 () Bool)

(declare-fun isEmpty!42054 (Option!17658) Bool)

(assert (=> d!2343475 (= (isDefined!14270 (findConcatSeparation!3688 r1!3330 r2!3230 Nil!73390 s!10216 s!10216)) (not (isEmpty!42054 (findConcatSeparation!3688 r1!3330 r2!3230 Nil!73390 s!10216 s!10216))))))

(declare-fun bs!1965920 () Bool)

(assert (= bs!1965920 d!2343475))

(assert (=> bs!1965920 m!8220030))

(declare-fun m!8220040 () Bool)

(assert (=> bs!1965920 m!8220040))

(assert (=> b!7758928 d!2343475))

(declare-fun b!7758995 () Bool)

(declare-fun e!4598735 () Bool)

(declare-fun lt!2670136 () Option!17658)

(declare-fun get!26159 (Option!17658) tuple2!69728)

(assert (=> b!7758995 (= e!4598735 (= (++!17848 (_1!38167 (get!26159 lt!2670136)) (_2!38167 (get!26159 lt!2670136))) s!10216))))

(declare-fun b!7758996 () Bool)

(declare-fun e!4598736 () Bool)

(declare-fun matchR!10147 (Regex!20671 List!73514) Bool)

(assert (=> b!7758996 (= e!4598736 (matchR!10147 r2!3230 s!10216))))

(declare-fun b!7758997 () Bool)

(declare-fun res!3093306 () Bool)

(assert (=> b!7758997 (=> (not res!3093306) (not e!4598735))))

(assert (=> b!7758997 (= res!3093306 (matchR!10147 r2!3230 (_2!38167 (get!26159 lt!2670136))))))

(declare-fun b!7758998 () Bool)

(declare-fun e!4598733 () Option!17658)

(assert (=> b!7758998 (= e!4598733 (Some!17657 (tuple2!69729 Nil!73390 s!10216)))))

(declare-fun b!7758999 () Bool)

(declare-fun e!4598734 () Bool)

(assert (=> b!7758999 (= e!4598734 (not (isDefined!14270 lt!2670136)))))

(declare-fun d!2343481 () Bool)

(assert (=> d!2343481 e!4598734))

(declare-fun res!3093302 () Bool)

(assert (=> d!2343481 (=> res!3093302 e!4598734)))

(assert (=> d!2343481 (= res!3093302 e!4598735)))

(declare-fun res!3093305 () Bool)

(assert (=> d!2343481 (=> (not res!3093305) (not e!4598735))))

(assert (=> d!2343481 (= res!3093305 (isDefined!14270 lt!2670136))))

(assert (=> d!2343481 (= lt!2670136 e!4598733)))

(declare-fun c!1430641 () Bool)

(assert (=> d!2343481 (= c!1430641 e!4598736)))

(declare-fun res!3093303 () Bool)

(assert (=> d!2343481 (=> (not res!3093303) (not e!4598736))))

(assert (=> d!2343481 (= res!3093303 (matchR!10147 r1!3330 Nil!73390))))

(assert (=> d!2343481 (validRegex!11087 r1!3330)))

(assert (=> d!2343481 (= (findConcatSeparation!3688 r1!3330 r2!3230 Nil!73390 s!10216 s!10216) lt!2670136)))

(declare-fun b!7759000 () Bool)

(declare-fun e!4598737 () Option!17658)

(assert (=> b!7759000 (= e!4598737 None!17657)))

(declare-fun b!7759001 () Bool)

(declare-fun res!3093304 () Bool)

(assert (=> b!7759001 (=> (not res!3093304) (not e!4598735))))

(assert (=> b!7759001 (= res!3093304 (matchR!10147 r1!3330 (_1!38167 (get!26159 lt!2670136))))))

(declare-fun b!7759002 () Bool)

(assert (=> b!7759002 (= e!4598733 e!4598737)))

(declare-fun c!1430642 () Bool)

(assert (=> b!7759002 (= c!1430642 ((_ is Nil!73390) s!10216))))

(declare-fun b!7759003 () Bool)

(declare-datatypes ((Unit!168372 0))(
  ( (Unit!168373) )
))
(declare-fun lt!2670134 () Unit!168372)

(declare-fun lt!2670135 () Unit!168372)

(assert (=> b!7759003 (= lt!2670134 lt!2670135)))

(assert (=> b!7759003 (= (++!17848 (++!17848 Nil!73390 (Cons!73390 (h!79838 s!10216) Nil!73390)) (t!388249 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3354 (List!73514 C!41668 List!73514 List!73514) Unit!168372)

(assert (=> b!7759003 (= lt!2670135 (lemmaMoveElementToOtherListKeepsConcatEq!3354 Nil!73390 (h!79838 s!10216) (t!388249 s!10216) s!10216))))

(assert (=> b!7759003 (= e!4598737 (findConcatSeparation!3688 r1!3330 r2!3230 (++!17848 Nil!73390 (Cons!73390 (h!79838 s!10216) Nil!73390)) (t!388249 s!10216) s!10216))))

(assert (= (and d!2343481 res!3093303) b!7758996))

(assert (= (and d!2343481 c!1430641) b!7758998))

(assert (= (and d!2343481 (not c!1430641)) b!7759002))

(assert (= (and b!7759002 c!1430642) b!7759000))

(assert (= (and b!7759002 (not c!1430642)) b!7759003))

(assert (= (and d!2343481 res!3093305) b!7759001))

(assert (= (and b!7759001 res!3093304) b!7758997))

(assert (= (and b!7758997 res!3093306) b!7758995))

(assert (= (and d!2343481 (not res!3093302)) b!7758999))

(declare-fun m!8220064 () Bool)

(assert (=> b!7759001 m!8220064))

(declare-fun m!8220066 () Bool)

(assert (=> b!7759001 m!8220066))

(declare-fun m!8220068 () Bool)

(assert (=> b!7758996 m!8220068))

(declare-fun m!8220070 () Bool)

(assert (=> d!2343481 m!8220070))

(declare-fun m!8220072 () Bool)

(assert (=> d!2343481 m!8220072))

(assert (=> d!2343481 m!8220036))

(assert (=> b!7758999 m!8220070))

(declare-fun m!8220074 () Bool)

(assert (=> b!7759003 m!8220074))

(assert (=> b!7759003 m!8220074))

(declare-fun m!8220076 () Bool)

(assert (=> b!7759003 m!8220076))

(declare-fun m!8220078 () Bool)

(assert (=> b!7759003 m!8220078))

(assert (=> b!7759003 m!8220074))

(declare-fun m!8220080 () Bool)

(assert (=> b!7759003 m!8220080))

(assert (=> b!7758997 m!8220064))

(declare-fun m!8220082 () Bool)

(assert (=> b!7758997 m!8220082))

(assert (=> b!7758995 m!8220064))

(declare-fun m!8220084 () Bool)

(assert (=> b!7758995 m!8220084))

(assert (=> b!7758928 d!2343481))

(declare-fun b!7759052 () Bool)

(declare-fun e!4598777 () Bool)

(declare-fun call!719099 () Bool)

(assert (=> b!7759052 (= e!4598777 call!719099)))

(declare-fun b!7759053 () Bool)

(declare-fun e!4598775 () Bool)

(declare-fun e!4598776 () Bool)

(assert (=> b!7759053 (= e!4598775 e!4598776)))

(declare-fun res!3093335 () Bool)

(declare-fun nullable!9103 (Regex!20671) Bool)

(assert (=> b!7759053 (= res!3093335 (not (nullable!9103 (reg!21000 r1!3330))))))

(assert (=> b!7759053 (=> (not res!3093335) (not e!4598776))))

(declare-fun b!7759054 () Bool)

(declare-fun e!4598772 () Bool)

(assert (=> b!7759054 (= e!4598775 e!4598772)))

(declare-fun c!1430654 () Bool)

(assert (=> b!7759054 (= c!1430654 ((_ is Union!20671) r1!3330))))

(declare-fun b!7759055 () Bool)

(declare-fun e!4598778 () Bool)

(assert (=> b!7759055 (= e!4598778 e!4598775)))

(declare-fun c!1430655 () Bool)

(assert (=> b!7759055 (= c!1430655 ((_ is Star!20671) r1!3330))))

(declare-fun b!7759056 () Bool)

(declare-fun res!3093334 () Bool)

(declare-fun e!4598774 () Bool)

(assert (=> b!7759056 (=> (not res!3093334) (not e!4598774))))

(declare-fun call!719100 () Bool)

(assert (=> b!7759056 (= res!3093334 call!719100)))

(assert (=> b!7759056 (= e!4598772 e!4598774)))

(declare-fun b!7759057 () Bool)

(declare-fun res!3093336 () Bool)

(declare-fun e!4598773 () Bool)

(assert (=> b!7759057 (=> res!3093336 e!4598773)))

(assert (=> b!7759057 (= res!3093336 (not ((_ is Concat!29516) r1!3330)))))

(assert (=> b!7759057 (= e!4598772 e!4598773)))

(declare-fun d!2343485 () Bool)

(declare-fun res!3093337 () Bool)

(assert (=> d!2343485 (=> res!3093337 e!4598778)))

(assert (=> d!2343485 (= res!3093337 ((_ is ElementMatch!20671) r1!3330))))

(assert (=> d!2343485 (= (validRegex!11087 r1!3330) e!4598778)))

(declare-fun bm!719094 () Bool)

(assert (=> bm!719094 (= call!719100 (validRegex!11087 (ite c!1430654 (regOne!41855 r1!3330) (regOne!41854 r1!3330))))))

(declare-fun b!7759058 () Bool)

(assert (=> b!7759058 (= e!4598774 call!719099)))

(declare-fun b!7759059 () Bool)

(assert (=> b!7759059 (= e!4598773 e!4598777)))

(declare-fun res!3093333 () Bool)

(assert (=> b!7759059 (=> (not res!3093333) (not e!4598777))))

(assert (=> b!7759059 (= res!3093333 call!719100)))

(declare-fun bm!719095 () Bool)

(declare-fun call!719101 () Bool)

(assert (=> bm!719095 (= call!719099 call!719101)))

(declare-fun bm!719096 () Bool)

(assert (=> bm!719096 (= call!719101 (validRegex!11087 (ite c!1430655 (reg!21000 r1!3330) (ite c!1430654 (regTwo!41855 r1!3330) (regTwo!41854 r1!3330)))))))

(declare-fun b!7759060 () Bool)

(assert (=> b!7759060 (= e!4598776 call!719101)))

(assert (= (and d!2343485 (not res!3093337)) b!7759055))

(assert (= (and b!7759055 c!1430655) b!7759053))

(assert (= (and b!7759055 (not c!1430655)) b!7759054))

(assert (= (and b!7759053 res!3093335) b!7759060))

(assert (= (and b!7759054 c!1430654) b!7759056))

(assert (= (and b!7759054 (not c!1430654)) b!7759057))

(assert (= (and b!7759056 res!3093334) b!7759058))

(assert (= (and b!7759057 (not res!3093336)) b!7759059))

(assert (= (and b!7759059 res!3093333) b!7759052))

(assert (= (or b!7759056 b!7759059) bm!719094))

(assert (= (or b!7759058 b!7759052) bm!719095))

(assert (= (or b!7759060 bm!719095) bm!719096))

(declare-fun m!8220112 () Bool)

(assert (=> b!7759053 m!8220112))

(declare-fun m!8220114 () Bool)

(assert (=> bm!719094 m!8220114))

(declare-fun m!8220116 () Bool)

(assert (=> bm!719096 m!8220116))

(assert (=> start!739300 d!2343485))

(declare-fun b!7759071 () Bool)

(declare-fun e!4598786 () Bool)

(declare-fun call!719102 () Bool)

(assert (=> b!7759071 (= e!4598786 call!719102)))

(declare-fun b!7759072 () Bool)

(declare-fun e!4598784 () Bool)

(declare-fun e!4598785 () Bool)

(assert (=> b!7759072 (= e!4598784 e!4598785)))

(declare-fun res!3093340 () Bool)

(assert (=> b!7759072 (= res!3093340 (not (nullable!9103 (reg!21000 r2!3230))))))

(assert (=> b!7759072 (=> (not res!3093340) (not e!4598785))))

(declare-fun b!7759073 () Bool)

(declare-fun e!4598781 () Bool)

(assert (=> b!7759073 (= e!4598784 e!4598781)))

(declare-fun c!1430656 () Bool)

(assert (=> b!7759073 (= c!1430656 ((_ is Union!20671) r2!3230))))

(declare-fun b!7759074 () Bool)

(declare-fun e!4598787 () Bool)

(assert (=> b!7759074 (= e!4598787 e!4598784)))

(declare-fun c!1430657 () Bool)

(assert (=> b!7759074 (= c!1430657 ((_ is Star!20671) r2!3230))))

(declare-fun b!7759075 () Bool)

(declare-fun res!3093339 () Bool)

(declare-fun e!4598783 () Bool)

(assert (=> b!7759075 (=> (not res!3093339) (not e!4598783))))

(declare-fun call!719103 () Bool)

(assert (=> b!7759075 (= res!3093339 call!719103)))

(assert (=> b!7759075 (= e!4598781 e!4598783)))

(declare-fun b!7759076 () Bool)

(declare-fun res!3093341 () Bool)

(declare-fun e!4598782 () Bool)

(assert (=> b!7759076 (=> res!3093341 e!4598782)))

(assert (=> b!7759076 (= res!3093341 (not ((_ is Concat!29516) r2!3230)))))

(assert (=> b!7759076 (= e!4598781 e!4598782)))

(declare-fun d!2343491 () Bool)

(declare-fun res!3093342 () Bool)

(assert (=> d!2343491 (=> res!3093342 e!4598787)))

(assert (=> d!2343491 (= res!3093342 ((_ is ElementMatch!20671) r2!3230))))

(assert (=> d!2343491 (= (validRegex!11087 r2!3230) e!4598787)))

(declare-fun bm!719097 () Bool)

(assert (=> bm!719097 (= call!719103 (validRegex!11087 (ite c!1430656 (regOne!41855 r2!3230) (regOne!41854 r2!3230))))))

(declare-fun b!7759077 () Bool)

(assert (=> b!7759077 (= e!4598783 call!719102)))

(declare-fun b!7759078 () Bool)

(assert (=> b!7759078 (= e!4598782 e!4598786)))

(declare-fun res!3093338 () Bool)

(assert (=> b!7759078 (=> (not res!3093338) (not e!4598786))))

(assert (=> b!7759078 (= res!3093338 call!719103)))

(declare-fun bm!719098 () Bool)

(declare-fun call!719104 () Bool)

(assert (=> bm!719098 (= call!719102 call!719104)))

(declare-fun bm!719099 () Bool)

(assert (=> bm!719099 (= call!719104 (validRegex!11087 (ite c!1430657 (reg!21000 r2!3230) (ite c!1430656 (regTwo!41855 r2!3230) (regTwo!41854 r2!3230)))))))

(declare-fun b!7759079 () Bool)

(assert (=> b!7759079 (= e!4598785 call!719104)))

(assert (= (and d!2343491 (not res!3093342)) b!7759074))

(assert (= (and b!7759074 c!1430657) b!7759072))

(assert (= (and b!7759074 (not c!1430657)) b!7759073))

(assert (= (and b!7759072 res!3093340) b!7759079))

(assert (= (and b!7759073 c!1430656) b!7759075))

(assert (= (and b!7759073 (not c!1430656)) b!7759076))

(assert (= (and b!7759075 res!3093339) b!7759077))

(assert (= (and b!7759076 (not res!3093341)) b!7759078))

(assert (= (and b!7759078 res!3093338) b!7759071))

(assert (= (or b!7759075 b!7759078) bm!719097))

(assert (= (or b!7759077 b!7759071) bm!719098))

(assert (= (or b!7759079 bm!719098) bm!719099))

(declare-fun m!8220118 () Bool)

(assert (=> b!7759072 m!8220118))

(declare-fun m!8220120 () Bool)

(assert (=> bm!719097 m!8220120))

(declare-fun m!8220122 () Bool)

(assert (=> bm!719099 m!8220122))

(assert (=> b!7758921 d!2343491))

(declare-fun b!7759135 () Bool)

(declare-fun res!3093348 () Bool)

(declare-fun e!4598806 () Bool)

(assert (=> b!7759135 (=> (not res!3093348) (not e!4598806))))

(declare-fun lt!2670142 () List!73514)

(declare-fun size!42674 (List!73514) Int)

(assert (=> b!7759135 (= res!3093348 (= (size!42674 lt!2670142) (+ (size!42674 Nil!73390) (size!42674 s!10216))))))

(declare-fun d!2343493 () Bool)

(assert (=> d!2343493 e!4598806))

(declare-fun res!3093347 () Bool)

(assert (=> d!2343493 (=> (not res!3093347) (not e!4598806))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15571 (List!73514) (InoxSet C!41668))

(assert (=> d!2343493 (= res!3093347 (= (content!15571 lt!2670142) ((_ map or) (content!15571 Nil!73390) (content!15571 s!10216))))))

(declare-fun e!4598805 () List!73514)

(assert (=> d!2343493 (= lt!2670142 e!4598805)))

(declare-fun c!1430660 () Bool)

(assert (=> d!2343493 (= c!1430660 ((_ is Nil!73390) Nil!73390))))

(assert (=> d!2343493 (= (++!17848 Nil!73390 s!10216) lt!2670142)))

(declare-fun b!7759134 () Bool)

(assert (=> b!7759134 (= e!4598805 (Cons!73390 (h!79838 Nil!73390) (++!17848 (t!388249 Nil!73390) s!10216)))))

(declare-fun b!7759133 () Bool)

(assert (=> b!7759133 (= e!4598805 s!10216)))

(declare-fun b!7759136 () Bool)

(assert (=> b!7759136 (= e!4598806 (or (not (= s!10216 Nil!73390)) (= lt!2670142 Nil!73390)))))

(assert (= (and d!2343493 c!1430660) b!7759133))

(assert (= (and d!2343493 (not c!1430660)) b!7759134))

(assert (= (and d!2343493 res!3093347) b!7759135))

(assert (= (and b!7759135 res!3093348) b!7759136))

(declare-fun m!8220124 () Bool)

(assert (=> b!7759135 m!8220124))

(declare-fun m!8220126 () Bool)

(assert (=> b!7759135 m!8220126))

(declare-fun m!8220128 () Bool)

(assert (=> b!7759135 m!8220128))

(declare-fun m!8220130 () Bool)

(assert (=> d!2343493 m!8220130))

(declare-fun m!8220132 () Bool)

(assert (=> d!2343493 m!8220132))

(declare-fun m!8220134 () Bool)

(assert (=> d!2343493 m!8220134))

(declare-fun m!8220136 () Bool)

(assert (=> b!7759134 m!8220136))

(assert (=> b!7758931 d!2343493))

(declare-fun b!7759148 () Bool)

(declare-fun e!4598809 () Bool)

(declare-fun tp!2277978 () Bool)

(declare-fun tp!2277981 () Bool)

(assert (=> b!7759148 (= e!4598809 (and tp!2277978 tp!2277981))))

(declare-fun b!7759150 () Bool)

(declare-fun tp!2277979 () Bool)

(declare-fun tp!2277980 () Bool)

(assert (=> b!7759150 (= e!4598809 (and tp!2277979 tp!2277980))))

(assert (=> b!7758927 (= tp!2277902 e!4598809)))

(declare-fun b!7759147 () Bool)

(assert (=> b!7759147 (= e!4598809 tp_is_empty!51697)))

(declare-fun b!7759149 () Bool)

(declare-fun tp!2277977 () Bool)

(assert (=> b!7759149 (= e!4598809 tp!2277977)))

(assert (= (and b!7758927 ((_ is ElementMatch!20671) (regOne!41854 r2!3230))) b!7759147))

(assert (= (and b!7758927 ((_ is Concat!29516) (regOne!41854 r2!3230))) b!7759148))

(assert (= (and b!7758927 ((_ is Star!20671) (regOne!41854 r2!3230))) b!7759149))

(assert (= (and b!7758927 ((_ is Union!20671) (regOne!41854 r2!3230))) b!7759150))

(declare-fun b!7759152 () Bool)

(declare-fun e!4598810 () Bool)

(declare-fun tp!2277983 () Bool)

(declare-fun tp!2277986 () Bool)

(assert (=> b!7759152 (= e!4598810 (and tp!2277983 tp!2277986))))

(declare-fun b!7759154 () Bool)

(declare-fun tp!2277984 () Bool)

(declare-fun tp!2277985 () Bool)

(assert (=> b!7759154 (= e!4598810 (and tp!2277984 tp!2277985))))

(assert (=> b!7758927 (= tp!2277900 e!4598810)))

(declare-fun b!7759151 () Bool)

(assert (=> b!7759151 (= e!4598810 tp_is_empty!51697)))

(declare-fun b!7759153 () Bool)

(declare-fun tp!2277982 () Bool)

(assert (=> b!7759153 (= e!4598810 tp!2277982)))

(assert (= (and b!7758927 ((_ is ElementMatch!20671) (regTwo!41854 r2!3230))) b!7759151))

(assert (= (and b!7758927 ((_ is Concat!29516) (regTwo!41854 r2!3230))) b!7759152))

(assert (= (and b!7758927 ((_ is Star!20671) (regTwo!41854 r2!3230))) b!7759153))

(assert (= (and b!7758927 ((_ is Union!20671) (regTwo!41854 r2!3230))) b!7759154))

(declare-fun b!7759156 () Bool)

(declare-fun e!4598811 () Bool)

(declare-fun tp!2277988 () Bool)

(declare-fun tp!2277991 () Bool)

(assert (=> b!7759156 (= e!4598811 (and tp!2277988 tp!2277991))))

(declare-fun b!7759158 () Bool)

(declare-fun tp!2277989 () Bool)

(declare-fun tp!2277990 () Bool)

(assert (=> b!7759158 (= e!4598811 (and tp!2277989 tp!2277990))))

(assert (=> b!7758922 (= tp!2277903 e!4598811)))

(declare-fun b!7759155 () Bool)

(assert (=> b!7759155 (= e!4598811 tp_is_empty!51697)))

(declare-fun b!7759157 () Bool)

(declare-fun tp!2277987 () Bool)

(assert (=> b!7759157 (= e!4598811 tp!2277987)))

(assert (= (and b!7758922 ((_ is ElementMatch!20671) (reg!21000 r1!3330))) b!7759155))

(assert (= (and b!7758922 ((_ is Concat!29516) (reg!21000 r1!3330))) b!7759156))

(assert (= (and b!7758922 ((_ is Star!20671) (reg!21000 r1!3330))) b!7759157))

(assert (= (and b!7758922 ((_ is Union!20671) (reg!21000 r1!3330))) b!7759158))

(declare-fun b!7759160 () Bool)

(declare-fun e!4598812 () Bool)

(declare-fun tp!2277993 () Bool)

(declare-fun tp!2277996 () Bool)

(assert (=> b!7759160 (= e!4598812 (and tp!2277993 tp!2277996))))

(declare-fun b!7759162 () Bool)

(declare-fun tp!2277994 () Bool)

(declare-fun tp!2277995 () Bool)

(assert (=> b!7759162 (= e!4598812 (and tp!2277994 tp!2277995))))

(assert (=> b!7758929 (= tp!2277898 e!4598812)))

(declare-fun b!7759159 () Bool)

(assert (=> b!7759159 (= e!4598812 tp_is_empty!51697)))

(declare-fun b!7759161 () Bool)

(declare-fun tp!2277992 () Bool)

(assert (=> b!7759161 (= e!4598812 tp!2277992)))

(assert (= (and b!7758929 ((_ is ElementMatch!20671) (reg!21000 r2!3230))) b!7759159))

(assert (= (and b!7758929 ((_ is Concat!29516) (reg!21000 r2!3230))) b!7759160))

(assert (= (and b!7758929 ((_ is Star!20671) (reg!21000 r2!3230))) b!7759161))

(assert (= (and b!7758929 ((_ is Union!20671) (reg!21000 r2!3230))) b!7759162))

(declare-fun b!7759167 () Bool)

(declare-fun e!4598815 () Bool)

(declare-fun tp!2277999 () Bool)

(assert (=> b!7759167 (= e!4598815 (and tp_is_empty!51697 tp!2277999))))

(assert (=> b!7758923 (= tp!2277893 e!4598815)))

(assert (= (and b!7758923 ((_ is Cons!73390) (t!388249 s!10216))) b!7759167))

(declare-fun b!7759169 () Bool)

(declare-fun e!4598816 () Bool)

(declare-fun tp!2278001 () Bool)

(declare-fun tp!2278004 () Bool)

(assert (=> b!7759169 (= e!4598816 (and tp!2278001 tp!2278004))))

(declare-fun b!7759171 () Bool)

(declare-fun tp!2278002 () Bool)

(declare-fun tp!2278003 () Bool)

(assert (=> b!7759171 (= e!4598816 (and tp!2278002 tp!2278003))))

(assert (=> b!7758920 (= tp!2277901 e!4598816)))

(declare-fun b!7759168 () Bool)

(assert (=> b!7759168 (= e!4598816 tp_is_empty!51697)))

(declare-fun b!7759170 () Bool)

(declare-fun tp!2278000 () Bool)

(assert (=> b!7759170 (= e!4598816 tp!2278000)))

(assert (= (and b!7758920 ((_ is ElementMatch!20671) (regOne!41855 r2!3230))) b!7759168))

(assert (= (and b!7758920 ((_ is Concat!29516) (regOne!41855 r2!3230))) b!7759169))

(assert (= (and b!7758920 ((_ is Star!20671) (regOne!41855 r2!3230))) b!7759170))

(assert (= (and b!7758920 ((_ is Union!20671) (regOne!41855 r2!3230))) b!7759171))

(declare-fun b!7759173 () Bool)

(declare-fun e!4598817 () Bool)

(declare-fun tp!2278006 () Bool)

(declare-fun tp!2278009 () Bool)

(assert (=> b!7759173 (= e!4598817 (and tp!2278006 tp!2278009))))

(declare-fun b!7759175 () Bool)

(declare-fun tp!2278007 () Bool)

(declare-fun tp!2278008 () Bool)

(assert (=> b!7759175 (= e!4598817 (and tp!2278007 tp!2278008))))

(assert (=> b!7758920 (= tp!2277897 e!4598817)))

(declare-fun b!7759172 () Bool)

(assert (=> b!7759172 (= e!4598817 tp_is_empty!51697)))

(declare-fun b!7759174 () Bool)

(declare-fun tp!2278005 () Bool)

(assert (=> b!7759174 (= e!4598817 tp!2278005)))

(assert (= (and b!7758920 ((_ is ElementMatch!20671) (regTwo!41855 r2!3230))) b!7759172))

(assert (= (and b!7758920 ((_ is Concat!29516) (regTwo!41855 r2!3230))) b!7759173))

(assert (= (and b!7758920 ((_ is Star!20671) (regTwo!41855 r2!3230))) b!7759174))

(assert (= (and b!7758920 ((_ is Union!20671) (regTwo!41855 r2!3230))) b!7759175))

(declare-fun b!7759177 () Bool)

(declare-fun e!4598818 () Bool)

(declare-fun tp!2278011 () Bool)

(declare-fun tp!2278014 () Bool)

(assert (=> b!7759177 (= e!4598818 (and tp!2278011 tp!2278014))))

(declare-fun b!7759179 () Bool)

(declare-fun tp!2278012 () Bool)

(declare-fun tp!2278013 () Bool)

(assert (=> b!7759179 (= e!4598818 (and tp!2278012 tp!2278013))))

(assert (=> b!7758930 (= tp!2277899 e!4598818)))

(declare-fun b!7759176 () Bool)

(assert (=> b!7759176 (= e!4598818 tp_is_empty!51697)))

(declare-fun b!7759178 () Bool)

(declare-fun tp!2278010 () Bool)

(assert (=> b!7759178 (= e!4598818 tp!2278010)))

(assert (= (and b!7758930 ((_ is ElementMatch!20671) (regOne!41854 r1!3330))) b!7759176))

(assert (= (and b!7758930 ((_ is Concat!29516) (regOne!41854 r1!3330))) b!7759177))

(assert (= (and b!7758930 ((_ is Star!20671) (regOne!41854 r1!3330))) b!7759178))

(assert (= (and b!7758930 ((_ is Union!20671) (regOne!41854 r1!3330))) b!7759179))

(declare-fun b!7759181 () Bool)

(declare-fun e!4598819 () Bool)

(declare-fun tp!2278016 () Bool)

(declare-fun tp!2278019 () Bool)

(assert (=> b!7759181 (= e!4598819 (and tp!2278016 tp!2278019))))

(declare-fun b!7759183 () Bool)

(declare-fun tp!2278017 () Bool)

(declare-fun tp!2278018 () Bool)

(assert (=> b!7759183 (= e!4598819 (and tp!2278017 tp!2278018))))

(assert (=> b!7758930 (= tp!2277894 e!4598819)))

(declare-fun b!7759180 () Bool)

(assert (=> b!7759180 (= e!4598819 tp_is_empty!51697)))

(declare-fun b!7759182 () Bool)

(declare-fun tp!2278015 () Bool)

(assert (=> b!7759182 (= e!4598819 tp!2278015)))

(assert (= (and b!7758930 ((_ is ElementMatch!20671) (regTwo!41854 r1!3330))) b!7759180))

(assert (= (and b!7758930 ((_ is Concat!29516) (regTwo!41854 r1!3330))) b!7759181))

(assert (= (and b!7758930 ((_ is Star!20671) (regTwo!41854 r1!3330))) b!7759182))

(assert (= (and b!7758930 ((_ is Union!20671) (regTwo!41854 r1!3330))) b!7759183))

(declare-fun b!7759185 () Bool)

(declare-fun e!4598820 () Bool)

(declare-fun tp!2278021 () Bool)

(declare-fun tp!2278024 () Bool)

(assert (=> b!7759185 (= e!4598820 (and tp!2278021 tp!2278024))))

(declare-fun b!7759187 () Bool)

(declare-fun tp!2278022 () Bool)

(declare-fun tp!2278023 () Bool)

(assert (=> b!7759187 (= e!4598820 (and tp!2278022 tp!2278023))))

(assert (=> b!7758926 (= tp!2277895 e!4598820)))

(declare-fun b!7759184 () Bool)

(assert (=> b!7759184 (= e!4598820 tp_is_empty!51697)))

(declare-fun b!7759186 () Bool)

(declare-fun tp!2278020 () Bool)

(assert (=> b!7759186 (= e!4598820 tp!2278020)))

(assert (= (and b!7758926 ((_ is ElementMatch!20671) (regOne!41855 r1!3330))) b!7759184))

(assert (= (and b!7758926 ((_ is Concat!29516) (regOne!41855 r1!3330))) b!7759185))

(assert (= (and b!7758926 ((_ is Star!20671) (regOne!41855 r1!3330))) b!7759186))

(assert (= (and b!7758926 ((_ is Union!20671) (regOne!41855 r1!3330))) b!7759187))

(declare-fun b!7759189 () Bool)

(declare-fun e!4598821 () Bool)

(declare-fun tp!2278026 () Bool)

(declare-fun tp!2278029 () Bool)

(assert (=> b!7759189 (= e!4598821 (and tp!2278026 tp!2278029))))

(declare-fun b!7759191 () Bool)

(declare-fun tp!2278027 () Bool)

(declare-fun tp!2278028 () Bool)

(assert (=> b!7759191 (= e!4598821 (and tp!2278027 tp!2278028))))

(assert (=> b!7758926 (= tp!2277896 e!4598821)))

(declare-fun b!7759188 () Bool)

(assert (=> b!7759188 (= e!4598821 tp_is_empty!51697)))

(declare-fun b!7759190 () Bool)

(declare-fun tp!2278025 () Bool)

(assert (=> b!7759190 (= e!4598821 tp!2278025)))

(assert (= (and b!7758926 ((_ is ElementMatch!20671) (regTwo!41855 r1!3330))) b!7759188))

(assert (= (and b!7758926 ((_ is Concat!29516) (regTwo!41855 r1!3330))) b!7759189))

(assert (= (and b!7758926 ((_ is Star!20671) (regTwo!41855 r1!3330))) b!7759190))

(assert (= (and b!7758926 ((_ is Union!20671) (regTwo!41855 r1!3330))) b!7759191))

(check-sat (not b!7759183) (not b!7759167) (not b!7759149) tp_is_empty!51697 (not b!7759135) (not b!7758995) (not b!7758996) (not b!7759169) (not b!7759170) (not b!7759181) (not b!7759185) (not b!7759175) (not b!7758999) (not b!7759152) (not b!7759156) (not b!7759177) (not d!2343475) (not b!7759189) (not b!7758997) (not b!7759162) (not b!7759134) (not b!7759001) (not b!7759158) (not b!7759153) (not bm!719096) (not b!7759148) (not d!2343481) (not bm!719097) (not d!2343493) (not b!7759171) (not b!7759161) (not b!7759191) (not bm!719094) (not b!7759190) (not b!7759157) (not b!7759173) (not b!7759182) (not b!7759053) (not b!7759178) (not b!7759187) (not b!7759003) (not b!7759160) (not b!7759150) (not b!7759072) (not bm!719099) (not b!7759186) (not b!7759174) (not b!7759179) (not b!7759154))
(check-sat)
