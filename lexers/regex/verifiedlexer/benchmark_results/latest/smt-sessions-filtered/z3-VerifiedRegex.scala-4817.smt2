; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247600 () Bool)

(assert start!247600)

(declare-fun b!2553895 () Bool)

(declare-fun e!1613511 () Bool)

(declare-fun tp!814433 () Bool)

(assert (=> b!2553895 (= e!1613511 tp!814433)))

(declare-fun b!2553896 () Bool)

(declare-fun e!1613512 () Bool)

(declare-fun e!1613506 () Bool)

(assert (=> b!2553896 (= e!1613512 (not e!1613506))))

(declare-fun res!1075686 () Bool)

(assert (=> b!2553896 (=> res!1075686 e!1613506)))

(declare-fun lt!903910 () Bool)

(assert (=> b!2553896 (= res!1075686 (not lt!903910))))

(declare-fun e!1613508 () Bool)

(assert (=> b!2553896 e!1613508))

(declare-fun res!1075682 () Bool)

(assert (=> b!2553896 (=> res!1075682 e!1613508)))

(assert (=> b!2553896 (= res!1075682 lt!903910)))

(declare-datatypes ((C!15376 0))(
  ( (C!15377 (val!9340 Int)) )
))
(declare-datatypes ((Regex!7609 0))(
  ( (ElementMatch!7609 (c!409621 C!15376)) (Concat!12305 (regOne!15730 Regex!7609) (regTwo!15730 Regex!7609)) (EmptyExpr!7609) (Star!7609 (reg!7938 Regex!7609)) (EmptyLang!7609) (Union!7609 (regOne!15731 Regex!7609) (regTwo!15731 Regex!7609)) )
))
(declare-fun lt!903905 () Regex!7609)

(declare-datatypes ((List!29674 0))(
  ( (Nil!29574) (Cons!29574 (h!34994 C!15376) (t!211373 List!29674)) )
))
(declare-fun tl!4068 () List!29674)

(declare-fun matchR!3554 (Regex!7609 List!29674) Bool)

(assert (=> b!2553896 (= lt!903910 (matchR!3554 lt!903905 tl!4068))))

(declare-datatypes ((Unit!43403 0))(
  ( (Unit!43404) )
))
(declare-fun lt!903903 () Unit!43403)

(declare-fun lt!903906 () Regex!7609)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!204 (Regex!7609 Regex!7609 List!29674) Unit!43403)

(assert (=> b!2553896 (= lt!903903 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!204 lt!903905 lt!903906 tl!4068))))

(declare-fun lt!903902 () Regex!7609)

(declare-fun derivative!304 (Regex!7609 List!29674) Regex!7609)

(assert (=> b!2553896 (= (matchR!3554 lt!903902 tl!4068) (matchR!3554 (derivative!304 lt!903902 tl!4068) Nil!29574))))

(declare-fun lt!903908 () Unit!43403)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!200 (Regex!7609 List!29674) Unit!43403)

(assert (=> b!2553896 (= lt!903908 (lemmaMatchRIsSameAsWholeDerivativeAndNil!200 lt!903902 tl!4068))))

(assert (=> b!2553896 (= lt!903902 (Union!7609 lt!903905 lt!903906))))

(declare-fun r!27340 () Regex!7609)

(declare-fun c!14016 () C!15376)

(declare-fun derivativeStep!2178 (Regex!7609 C!15376) Regex!7609)

(assert (=> b!2553896 (= lt!903906 (derivativeStep!2178 (regTwo!15730 r!27340) c!14016))))

(declare-fun lt!903911 () Regex!7609)

(assert (=> b!2553896 (= lt!903905 (Concat!12305 lt!903911 (regTwo!15730 r!27340)))))

(assert (=> b!2553896 (= lt!903911 (derivativeStep!2178 (regOne!15730 r!27340) c!14016))))

(declare-fun b!2553897 () Bool)

(declare-fun res!1075688 () Bool)

(declare-fun e!1613507 () Bool)

(assert (=> b!2553897 (=> res!1075688 e!1613507)))

(declare-datatypes ((tuple2!29580 0))(
  ( (tuple2!29581 (_1!17332 List!29674) (_2!17332 List!29674)) )
))
(declare-fun lt!903904 () tuple2!29580)

(assert (=> b!2553897 (= res!1075688 (not (matchR!3554 (regTwo!15730 r!27340) (_2!17332 lt!903904))))))

(declare-fun b!2553898 () Bool)

(assert (=> b!2553898 (= e!1613506 e!1613507)))

(declare-fun res!1075681 () Bool)

(assert (=> b!2553898 (=> res!1075681 e!1613507)))

(declare-fun ++!7266 (List!29674 List!29674) List!29674)

(assert (=> b!2553898 (= res!1075681 (not (= (++!7266 (_1!17332 lt!903904) (_2!17332 lt!903904)) tl!4068)))))

(declare-datatypes ((Option!5910 0))(
  ( (None!5909) (Some!5909 (v!31850 tuple2!29580)) )
))
(declare-fun lt!903907 () Option!5910)

(declare-fun get!9293 (Option!5910) tuple2!29580)

(assert (=> b!2553898 (= lt!903904 (get!9293 lt!903907))))

(declare-fun isDefined!4732 (Option!5910) Bool)

(assert (=> b!2553898 (isDefined!4732 lt!903907)))

(declare-fun findConcatSeparation!932 (Regex!7609 Regex!7609 List!29674 List!29674 List!29674) Option!5910)

(assert (=> b!2553898 (= lt!903907 (findConcatSeparation!932 lt!903911 (regTwo!15730 r!27340) Nil!29574 tl!4068 tl!4068))))

(declare-fun lt!903909 () Unit!43403)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!214 (Regex!7609 Regex!7609 List!29674) Unit!43403)

(assert (=> b!2553898 (= lt!903909 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!214 lt!903911 (regTwo!15730 r!27340) tl!4068))))

(declare-fun b!2553899 () Bool)

(declare-fun res!1075680 () Bool)

(assert (=> b!2553899 (=> (not res!1075680) (not e!1613512))))

(get-info :version)

(assert (=> b!2553899 (= res!1075680 (and (not ((_ is EmptyExpr!7609) r!27340)) (not ((_ is EmptyLang!7609) r!27340)) (not ((_ is ElementMatch!7609) r!27340)) (not ((_ is Union!7609) r!27340)) (not ((_ is Star!7609) r!27340))))))

(declare-fun b!2553900 () Bool)

(declare-fun res!1075687 () Bool)

(assert (=> b!2553900 (=> res!1075687 e!1613507)))

(assert (=> b!2553900 (= res!1075687 (not (matchR!3554 lt!903911 (_1!17332 lt!903904))))))

(declare-fun b!2553901 () Bool)

(assert (=> b!2553901 (= e!1613508 (matchR!3554 lt!903906 tl!4068))))

(declare-fun b!2553902 () Bool)

(declare-fun res!1075685 () Bool)

(assert (=> b!2553902 (=> res!1075685 e!1613507)))

(assert (=> b!2553902 (= res!1075685 (not (matchR!3554 (regOne!15730 r!27340) (Cons!29574 c!14016 (_1!17332 lt!903904)))))))

(declare-fun b!2553904 () Bool)

(declare-fun e!1613509 () Bool)

(assert (=> b!2553904 (= e!1613507 e!1613509)))

(declare-fun res!1075683 () Bool)

(assert (=> b!2553904 (=> res!1075683 e!1613509)))

(declare-fun validRegex!3235 (Regex!7609) Bool)

(assert (=> b!2553904 (= res!1075683 (not (validRegex!3235 (regOne!15730 r!27340))))))

(declare-fun lt!903901 () Regex!7609)

(assert (=> b!2553904 (matchR!3554 lt!903901 Nil!29574)))

(assert (=> b!2553904 (= lt!903901 (derivative!304 lt!903911 (_1!17332 lt!903904)))))

(declare-fun lt!903912 () Unit!43403)

(assert (=> b!2553904 (= lt!903912 (lemmaMatchRIsSameAsWholeDerivativeAndNil!200 lt!903911 (_1!17332 lt!903904)))))

(declare-fun b!2553905 () Bool)

(declare-fun tp!814435 () Bool)

(declare-fun tp!814438 () Bool)

(assert (=> b!2553905 (= e!1613511 (and tp!814435 tp!814438))))

(declare-fun b!2553906 () Bool)

(declare-fun e!1613510 () Bool)

(declare-fun tp_is_empty!13073 () Bool)

(declare-fun tp!814437 () Bool)

(assert (=> b!2553906 (= e!1613510 (and tp_is_empty!13073 tp!814437))))

(declare-fun b!2553907 () Bool)

(declare-fun res!1075690 () Bool)

(assert (=> b!2553907 (=> (not res!1075690) (not e!1613512))))

(declare-fun nullable!2526 (Regex!7609) Bool)

(assert (=> b!2553907 (= res!1075690 (nullable!2526 (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068)))))

(declare-fun b!2553908 () Bool)

(declare-fun tp!814434 () Bool)

(declare-fun tp!814436 () Bool)

(assert (=> b!2553908 (= e!1613511 (and tp!814434 tp!814436))))

(declare-fun b!2553903 () Bool)

(declare-fun res!1075684 () Bool)

(assert (=> b!2553903 (=> (not res!1075684) (not e!1613512))))

(assert (=> b!2553903 (= res!1075684 (nullable!2526 (regOne!15730 r!27340)))))

(declare-fun res!1075689 () Bool)

(assert (=> start!247600 (=> (not res!1075689) (not e!1613512))))

(assert (=> start!247600 (= res!1075689 (validRegex!3235 r!27340))))

(assert (=> start!247600 e!1613512))

(assert (=> start!247600 e!1613511))

(assert (=> start!247600 tp_is_empty!13073))

(assert (=> start!247600 e!1613510))

(declare-fun b!2553909 () Bool)

(assert (=> b!2553909 (= e!1613509 (nullable!2526 lt!903901))))

(declare-fun b!2553910 () Bool)

(assert (=> b!2553910 (= e!1613511 tp_is_empty!13073)))

(assert (= (and start!247600 res!1075689) b!2553907))

(assert (= (and b!2553907 res!1075690) b!2553899))

(assert (= (and b!2553899 res!1075680) b!2553903))

(assert (= (and b!2553903 res!1075684) b!2553896))

(assert (= (and b!2553896 (not res!1075682)) b!2553901))

(assert (= (and b!2553896 (not res!1075686)) b!2553898))

(assert (= (and b!2553898 (not res!1075681)) b!2553900))

(assert (= (and b!2553900 (not res!1075687)) b!2553897))

(assert (= (and b!2553897 (not res!1075688)) b!2553902))

(assert (= (and b!2553902 (not res!1075685)) b!2553904))

(assert (= (and b!2553904 (not res!1075683)) b!2553909))

(assert (= (and start!247600 ((_ is ElementMatch!7609) r!27340)) b!2553910))

(assert (= (and start!247600 ((_ is Concat!12305) r!27340)) b!2553905))

(assert (= (and start!247600 ((_ is Star!7609) r!27340)) b!2553895))

(assert (= (and start!247600 ((_ is Union!7609) r!27340)) b!2553908))

(assert (= (and start!247600 ((_ is Cons!29574) tl!4068)) b!2553906))

(declare-fun m!2895999 () Bool)

(assert (=> b!2553900 m!2895999))

(declare-fun m!2896001 () Bool)

(assert (=> start!247600 m!2896001))

(declare-fun m!2896003 () Bool)

(assert (=> b!2553907 m!2896003))

(assert (=> b!2553907 m!2896003))

(declare-fun m!2896005 () Bool)

(assert (=> b!2553907 m!2896005))

(assert (=> b!2553907 m!2896005))

(declare-fun m!2896007 () Bool)

(assert (=> b!2553907 m!2896007))

(declare-fun m!2896009 () Bool)

(assert (=> b!2553909 m!2896009))

(declare-fun m!2896011 () Bool)

(assert (=> b!2553896 m!2896011))

(declare-fun m!2896013 () Bool)

(assert (=> b!2553896 m!2896013))

(declare-fun m!2896015 () Bool)

(assert (=> b!2553896 m!2896015))

(declare-fun m!2896017 () Bool)

(assert (=> b!2553896 m!2896017))

(declare-fun m!2896019 () Bool)

(assert (=> b!2553896 m!2896019))

(assert (=> b!2553896 m!2896011))

(declare-fun m!2896021 () Bool)

(assert (=> b!2553896 m!2896021))

(declare-fun m!2896023 () Bool)

(assert (=> b!2553896 m!2896023))

(declare-fun m!2896025 () Bool)

(assert (=> b!2553896 m!2896025))

(declare-fun m!2896027 () Bool)

(assert (=> b!2553903 m!2896027))

(declare-fun m!2896029 () Bool)

(assert (=> b!2553897 m!2896029))

(declare-fun m!2896031 () Bool)

(assert (=> b!2553898 m!2896031))

(declare-fun m!2896033 () Bool)

(assert (=> b!2553898 m!2896033))

(declare-fun m!2896035 () Bool)

(assert (=> b!2553898 m!2896035))

(declare-fun m!2896037 () Bool)

(assert (=> b!2553898 m!2896037))

(declare-fun m!2896039 () Bool)

(assert (=> b!2553898 m!2896039))

(declare-fun m!2896041 () Bool)

(assert (=> b!2553904 m!2896041))

(declare-fun m!2896043 () Bool)

(assert (=> b!2553904 m!2896043))

(declare-fun m!2896045 () Bool)

(assert (=> b!2553904 m!2896045))

(declare-fun m!2896047 () Bool)

(assert (=> b!2553904 m!2896047))

(declare-fun m!2896049 () Bool)

(assert (=> b!2553902 m!2896049))

(declare-fun m!2896051 () Bool)

(assert (=> b!2553901 m!2896051))

(check-sat (not b!2553909) (not b!2553896) (not b!2553903) (not b!2553902) (not b!2553900) (not b!2553901) (not b!2553907) tp_is_empty!13073 (not b!2553897) (not b!2553908) (not b!2553904) (not b!2553898) (not b!2553895) (not start!247600) (not b!2553906) (not b!2553905))
(check-sat)
(get-model)

(declare-fun d!723746 () Bool)

(declare-fun nullableFct!751 (Regex!7609) Bool)

(assert (=> d!723746 (= (nullable!2526 (regOne!15730 r!27340)) (nullableFct!751 (regOne!15730 r!27340)))))

(declare-fun bs!469669 () Bool)

(assert (= bs!469669 d!723746))

(declare-fun m!2896055 () Bool)

(assert (=> bs!469669 m!2896055))

(assert (=> b!2553903 d!723746))

(declare-fun b!2553955 () Bool)

(declare-fun e!1613542 () Bool)

(declare-fun call!162781 () Bool)

(assert (=> b!2553955 (= e!1613542 call!162781)))

(declare-fun b!2553956 () Bool)

(declare-fun e!1613545 () Bool)

(declare-fun call!162780 () Bool)

(assert (=> b!2553956 (= e!1613545 call!162780)))

(declare-fun b!2553957 () Bool)

(declare-fun e!1613546 () Bool)

(assert (=> b!2553957 (= e!1613546 e!1613542)))

(declare-fun res!1075701 () Bool)

(assert (=> b!2553957 (= res!1075701 (not (nullable!2526 (reg!7938 (regOne!15730 r!27340)))))))

(assert (=> b!2553957 (=> (not res!1075701) (not e!1613542))))

(declare-fun c!409640 () Bool)

(declare-fun bm!162773 () Bool)

(declare-fun c!409639 () Bool)

(assert (=> bm!162773 (= call!162781 (validRegex!3235 (ite c!409639 (reg!7938 (regOne!15730 r!27340)) (ite c!409640 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))))))

(declare-fun d!723748 () Bool)

(declare-fun res!1075702 () Bool)

(declare-fun e!1613543 () Bool)

(assert (=> d!723748 (=> res!1075702 e!1613543)))

(assert (=> d!723748 (= res!1075702 ((_ is ElementMatch!7609) (regOne!15730 r!27340)))))

(assert (=> d!723748 (= (validRegex!3235 (regOne!15730 r!27340)) e!1613543)))

(declare-fun b!2553958 () Bool)

(declare-fun e!1613544 () Bool)

(assert (=> b!2553958 (= e!1613546 e!1613544)))

(assert (=> b!2553958 (= c!409640 ((_ is Union!7609) (regOne!15730 r!27340)))))

(declare-fun b!2553959 () Bool)

(assert (=> b!2553959 (= e!1613543 e!1613546)))

(assert (=> b!2553959 (= c!409639 ((_ is Star!7609) (regOne!15730 r!27340)))))

(declare-fun b!2553960 () Bool)

(declare-fun res!1075704 () Bool)

(declare-fun e!1613540 () Bool)

(assert (=> b!2553960 (=> res!1075704 e!1613540)))

(assert (=> b!2553960 (= res!1075704 (not ((_ is Concat!12305) (regOne!15730 r!27340))))))

(assert (=> b!2553960 (= e!1613544 e!1613540)))

(declare-fun b!2553961 () Bool)

(declare-fun e!1613541 () Bool)

(assert (=> b!2553961 (= e!1613540 e!1613541)))

(declare-fun res!1075705 () Bool)

(assert (=> b!2553961 (=> (not res!1075705) (not e!1613541))))

(assert (=> b!2553961 (= res!1075705 call!162780)))

(declare-fun bm!162774 () Bool)

(assert (=> bm!162774 (= call!162780 (validRegex!3235 (ite c!409640 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))))

(declare-fun bm!162775 () Bool)

(declare-fun call!162782 () Bool)

(assert (=> bm!162775 (= call!162782 call!162781)))

(declare-fun b!2553962 () Bool)

(declare-fun res!1075703 () Bool)

(assert (=> b!2553962 (=> (not res!1075703) (not e!1613545))))

(assert (=> b!2553962 (= res!1075703 call!162782)))

(assert (=> b!2553962 (= e!1613544 e!1613545)))

(declare-fun b!2553963 () Bool)

(assert (=> b!2553963 (= e!1613541 call!162782)))

(assert (= (and d!723748 (not res!1075702)) b!2553959))

(assert (= (and b!2553959 c!409639) b!2553957))

(assert (= (and b!2553959 (not c!409639)) b!2553958))

(assert (= (and b!2553957 res!1075701) b!2553955))

(assert (= (and b!2553958 c!409640) b!2553962))

(assert (= (and b!2553958 (not c!409640)) b!2553960))

(assert (= (and b!2553962 res!1075703) b!2553956))

(assert (= (and b!2553960 (not res!1075704)) b!2553961))

(assert (= (and b!2553961 res!1075705) b!2553963))

(assert (= (or b!2553962 b!2553963) bm!162775))

(assert (= (or b!2553956 b!2553961) bm!162774))

(assert (= (or b!2553955 bm!162775) bm!162773))

(declare-fun m!2896065 () Bool)

(assert (=> b!2553957 m!2896065))

(declare-fun m!2896067 () Bool)

(assert (=> bm!162773 m!2896067))

(declare-fun m!2896069 () Bool)

(assert (=> bm!162774 m!2896069))

(assert (=> b!2553904 d!723748))

(declare-fun b!2554002 () Bool)

(declare-fun e!1613570 () Bool)

(declare-fun head!5816 (List!29674) C!15376)

(declare-fun tail!4091 (List!29674) List!29674)

(assert (=> b!2554002 (= e!1613570 (matchR!3554 (derivativeStep!2178 lt!903901 (head!5816 Nil!29574)) (tail!4091 Nil!29574)))))

(declare-fun b!2554003 () Bool)

(declare-fun e!1613568 () Bool)

(declare-fun e!1613566 () Bool)

(assert (=> b!2554003 (= e!1613568 e!1613566)))

(declare-fun res!1075725 () Bool)

(assert (=> b!2554003 (=> (not res!1075725) (not e!1613566))))

(declare-fun lt!903924 () Bool)

(assert (=> b!2554003 (= res!1075725 (not lt!903924))))

(declare-fun b!2554004 () Bool)

(assert (=> b!2554004 (= e!1613570 (nullable!2526 lt!903901))))

(declare-fun b!2554006 () Bool)

(declare-fun e!1613569 () Bool)

(assert (=> b!2554006 (= e!1613569 (not lt!903924))))

(declare-fun b!2554007 () Bool)

(declare-fun e!1613572 () Bool)

(assert (=> b!2554007 (= e!1613566 e!1613572)))

(declare-fun res!1075724 () Bool)

(assert (=> b!2554007 (=> res!1075724 e!1613572)))

(declare-fun call!162793 () Bool)

(assert (=> b!2554007 (= res!1075724 call!162793)))

(declare-fun b!2554008 () Bool)

(declare-fun res!1075722 () Bool)

(declare-fun e!1613567 () Bool)

(assert (=> b!2554008 (=> (not res!1075722) (not e!1613567))))

(declare-fun isEmpty!17027 (List!29674) Bool)

(assert (=> b!2554008 (= res!1075722 (isEmpty!17027 (tail!4091 Nil!29574)))))

(declare-fun b!2554009 () Bool)

(declare-fun res!1075729 () Bool)

(assert (=> b!2554009 (=> res!1075729 e!1613572)))

(assert (=> b!2554009 (= res!1075729 (not (isEmpty!17027 (tail!4091 Nil!29574))))))

(declare-fun b!2554010 () Bool)

(declare-fun e!1613571 () Bool)

(assert (=> b!2554010 (= e!1613571 e!1613569)))

(declare-fun c!409654 () Bool)

(assert (=> b!2554010 (= c!409654 ((_ is EmptyLang!7609) lt!903901))))

(declare-fun b!2554011 () Bool)

(assert (=> b!2554011 (= e!1613567 (= (head!5816 Nil!29574) (c!409621 lt!903901)))))

(declare-fun b!2554012 () Bool)

(assert (=> b!2554012 (= e!1613572 (not (= (head!5816 Nil!29574) (c!409621 lt!903901))))))

(declare-fun b!2554013 () Bool)

(declare-fun res!1075726 () Bool)

(assert (=> b!2554013 (=> res!1075726 e!1613568)))

(assert (=> b!2554013 (= res!1075726 e!1613567)))

(declare-fun res!1075727 () Bool)

(assert (=> b!2554013 (=> (not res!1075727) (not e!1613567))))

(assert (=> b!2554013 (= res!1075727 lt!903924)))

(declare-fun b!2554014 () Bool)

(assert (=> b!2554014 (= e!1613571 (= lt!903924 call!162793))))

(declare-fun b!2554005 () Bool)

(declare-fun res!1075728 () Bool)

(assert (=> b!2554005 (=> (not res!1075728) (not e!1613567))))

(assert (=> b!2554005 (= res!1075728 (not call!162793))))

(declare-fun d!723752 () Bool)

(assert (=> d!723752 e!1613571))

(declare-fun c!409653 () Bool)

(assert (=> d!723752 (= c!409653 ((_ is EmptyExpr!7609) lt!903901))))

(assert (=> d!723752 (= lt!903924 e!1613570)))

(declare-fun c!409652 () Bool)

(assert (=> d!723752 (= c!409652 (isEmpty!17027 Nil!29574))))

(assert (=> d!723752 (validRegex!3235 lt!903901)))

(assert (=> d!723752 (= (matchR!3554 lt!903901 Nil!29574) lt!903924)))

(declare-fun b!2554015 () Bool)

(declare-fun res!1075723 () Bool)

(assert (=> b!2554015 (=> res!1075723 e!1613568)))

(assert (=> b!2554015 (= res!1075723 (not ((_ is ElementMatch!7609) lt!903901)))))

(assert (=> b!2554015 (= e!1613569 e!1613568)))

(declare-fun bm!162788 () Bool)

(assert (=> bm!162788 (= call!162793 (isEmpty!17027 Nil!29574))))

(assert (= (and d!723752 c!409652) b!2554004))

(assert (= (and d!723752 (not c!409652)) b!2554002))

(assert (= (and d!723752 c!409653) b!2554014))

(assert (= (and d!723752 (not c!409653)) b!2554010))

(assert (= (and b!2554010 c!409654) b!2554006))

(assert (= (and b!2554010 (not c!409654)) b!2554015))

(assert (= (and b!2554015 (not res!1075723)) b!2554013))

(assert (= (and b!2554013 res!1075727) b!2554005))

(assert (= (and b!2554005 res!1075728) b!2554008))

(assert (= (and b!2554008 res!1075722) b!2554011))

(assert (= (and b!2554013 (not res!1075726)) b!2554003))

(assert (= (and b!2554003 res!1075725) b!2554007))

(assert (= (and b!2554007 (not res!1075724)) b!2554009))

(assert (= (and b!2554009 (not res!1075729)) b!2554012))

(assert (= (or b!2554014 b!2554005 b!2554007) bm!162788))

(declare-fun m!2896083 () Bool)

(assert (=> bm!162788 m!2896083))

(declare-fun m!2896085 () Bool)

(assert (=> b!2554008 m!2896085))

(assert (=> b!2554008 m!2896085))

(declare-fun m!2896087 () Bool)

(assert (=> b!2554008 m!2896087))

(declare-fun m!2896089 () Bool)

(assert (=> b!2554002 m!2896089))

(assert (=> b!2554002 m!2896089))

(declare-fun m!2896091 () Bool)

(assert (=> b!2554002 m!2896091))

(assert (=> b!2554002 m!2896085))

(assert (=> b!2554002 m!2896091))

(assert (=> b!2554002 m!2896085))

(declare-fun m!2896093 () Bool)

(assert (=> b!2554002 m!2896093))

(assert (=> b!2554004 m!2896009))

(assert (=> d!723752 m!2896083))

(declare-fun m!2896095 () Bool)

(assert (=> d!723752 m!2896095))

(assert (=> b!2554011 m!2896089))

(assert (=> b!2554009 m!2896085))

(assert (=> b!2554009 m!2896085))

(assert (=> b!2554009 m!2896087))

(assert (=> b!2554012 m!2896089))

(assert (=> b!2553904 d!723752))

(declare-fun d!723760 () Bool)

(declare-fun lt!903933 () Regex!7609)

(assert (=> d!723760 (validRegex!3235 lt!903933)))

(declare-fun e!1613581 () Regex!7609)

(assert (=> d!723760 (= lt!903933 e!1613581)))

(declare-fun c!409661 () Bool)

(assert (=> d!723760 (= c!409661 ((_ is Cons!29574) (_1!17332 lt!903904)))))

(assert (=> d!723760 (validRegex!3235 lt!903911)))

(assert (=> d!723760 (= (derivative!304 lt!903911 (_1!17332 lt!903904)) lt!903933)))

(declare-fun b!2554030 () Bool)

(assert (=> b!2554030 (= e!1613581 (derivative!304 (derivativeStep!2178 lt!903911 (h!34994 (_1!17332 lt!903904))) (t!211373 (_1!17332 lt!903904))))))

(declare-fun b!2554031 () Bool)

(assert (=> b!2554031 (= e!1613581 lt!903911)))

(assert (= (and d!723760 c!409661) b!2554030))

(assert (= (and d!723760 (not c!409661)) b!2554031))

(declare-fun m!2896097 () Bool)

(assert (=> d!723760 m!2896097))

(declare-fun m!2896099 () Bool)

(assert (=> d!723760 m!2896099))

(declare-fun m!2896101 () Bool)

(assert (=> b!2554030 m!2896101))

(assert (=> b!2554030 m!2896101))

(declare-fun m!2896103 () Bool)

(assert (=> b!2554030 m!2896103))

(assert (=> b!2553904 d!723760))

(declare-fun d!723762 () Bool)

(assert (=> d!723762 (= (matchR!3554 lt!903911 (_1!17332 lt!903904)) (matchR!3554 (derivative!304 lt!903911 (_1!17332 lt!903904)) Nil!29574))))

(declare-fun lt!903936 () Unit!43403)

(declare-fun choose!15082 (Regex!7609 List!29674) Unit!43403)

(assert (=> d!723762 (= lt!903936 (choose!15082 lt!903911 (_1!17332 lt!903904)))))

(assert (=> d!723762 (validRegex!3235 lt!903911)))

(assert (=> d!723762 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!200 lt!903911 (_1!17332 lt!903904)) lt!903936)))

(declare-fun bs!469671 () Bool)

(assert (= bs!469671 d!723762))

(assert (=> bs!469671 m!2895999))

(declare-fun m!2896105 () Bool)

(assert (=> bs!469671 m!2896105))

(assert (=> bs!469671 m!2896099))

(assert (=> bs!469671 m!2896045))

(assert (=> bs!469671 m!2896045))

(declare-fun m!2896107 () Bool)

(assert (=> bs!469671 m!2896107))

(assert (=> b!2553904 d!723762))

(declare-fun b!2554040 () Bool)

(declare-fun e!1613590 () Bool)

(assert (=> b!2554040 (= e!1613590 (matchR!3554 (derivativeStep!2178 (regOne!15730 r!27340) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904)))) (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904)))))))

(declare-fun b!2554041 () Bool)

(declare-fun e!1613588 () Bool)

(declare-fun e!1613586 () Bool)

(assert (=> b!2554041 (= e!1613588 e!1613586)))

(declare-fun res!1075743 () Bool)

(assert (=> b!2554041 (=> (not res!1075743) (not e!1613586))))

(declare-fun lt!903937 () Bool)

(assert (=> b!2554041 (= res!1075743 (not lt!903937))))

(declare-fun b!2554042 () Bool)

(assert (=> b!2554042 (= e!1613590 (nullable!2526 (regOne!15730 r!27340)))))

(declare-fun b!2554044 () Bool)

(declare-fun e!1613589 () Bool)

(assert (=> b!2554044 (= e!1613589 (not lt!903937))))

(declare-fun b!2554045 () Bool)

(declare-fun e!1613593 () Bool)

(assert (=> b!2554045 (= e!1613586 e!1613593)))

(declare-fun res!1075742 () Bool)

(assert (=> b!2554045 (=> res!1075742 e!1613593)))

(declare-fun call!162794 () Bool)

(assert (=> b!2554045 (= res!1075742 call!162794)))

(declare-fun b!2554046 () Bool)

(declare-fun res!1075740 () Bool)

(declare-fun e!1613587 () Bool)

(assert (=> b!2554046 (=> (not res!1075740) (not e!1613587))))

(assert (=> b!2554046 (= res!1075740 (isEmpty!17027 (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904)))))))

(declare-fun b!2554047 () Bool)

(declare-fun res!1075748 () Bool)

(assert (=> b!2554047 (=> res!1075748 e!1613593)))

(assert (=> b!2554047 (= res!1075748 (not (isEmpty!17027 (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904))))))))

(declare-fun b!2554048 () Bool)

(declare-fun e!1613591 () Bool)

(assert (=> b!2554048 (= e!1613591 e!1613589)))

(declare-fun c!409664 () Bool)

(assert (=> b!2554048 (= c!409664 ((_ is EmptyLang!7609) (regOne!15730 r!27340)))))

(declare-fun b!2554050 () Bool)

(assert (=> b!2554050 (= e!1613587 (= (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904))) (c!409621 (regOne!15730 r!27340))))))

(declare-fun b!2554052 () Bool)

(assert (=> b!2554052 (= e!1613593 (not (= (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904))) (c!409621 (regOne!15730 r!27340)))))))

(declare-fun b!2554054 () Bool)

(declare-fun res!1075744 () Bool)

(assert (=> b!2554054 (=> res!1075744 e!1613588)))

(assert (=> b!2554054 (= res!1075744 e!1613587)))

(declare-fun res!1075745 () Bool)

(assert (=> b!2554054 (=> (not res!1075745) (not e!1613587))))

(assert (=> b!2554054 (= res!1075745 lt!903937)))

(declare-fun b!2554056 () Bool)

(assert (=> b!2554056 (= e!1613591 (= lt!903937 call!162794))))

(declare-fun b!2554043 () Bool)

(declare-fun res!1075746 () Bool)

(assert (=> b!2554043 (=> (not res!1075746) (not e!1613587))))

(assert (=> b!2554043 (= res!1075746 (not call!162794))))

(declare-fun d!723764 () Bool)

(assert (=> d!723764 e!1613591))

(declare-fun c!409663 () Bool)

(assert (=> d!723764 (= c!409663 ((_ is EmptyExpr!7609) (regOne!15730 r!27340)))))

(assert (=> d!723764 (= lt!903937 e!1613590)))

(declare-fun c!409662 () Bool)

(assert (=> d!723764 (= c!409662 (isEmpty!17027 (Cons!29574 c!14016 (_1!17332 lt!903904))))))

(assert (=> d!723764 (validRegex!3235 (regOne!15730 r!27340))))

(assert (=> d!723764 (= (matchR!3554 (regOne!15730 r!27340) (Cons!29574 c!14016 (_1!17332 lt!903904))) lt!903937)))

(declare-fun b!2554058 () Bool)

(declare-fun res!1075741 () Bool)

(assert (=> b!2554058 (=> res!1075741 e!1613588)))

(assert (=> b!2554058 (= res!1075741 (not ((_ is ElementMatch!7609) (regOne!15730 r!27340))))))

(assert (=> b!2554058 (= e!1613589 e!1613588)))

(declare-fun bm!162789 () Bool)

(assert (=> bm!162789 (= call!162794 (isEmpty!17027 (Cons!29574 c!14016 (_1!17332 lt!903904))))))

(assert (= (and d!723764 c!409662) b!2554042))

(assert (= (and d!723764 (not c!409662)) b!2554040))

(assert (= (and d!723764 c!409663) b!2554056))

(assert (= (and d!723764 (not c!409663)) b!2554048))

(assert (= (and b!2554048 c!409664) b!2554044))

(assert (= (and b!2554048 (not c!409664)) b!2554058))

(assert (= (and b!2554058 (not res!1075741)) b!2554054))

(assert (= (and b!2554054 res!1075745) b!2554043))

(assert (= (and b!2554043 res!1075746) b!2554046))

(assert (= (and b!2554046 res!1075740) b!2554050))

(assert (= (and b!2554054 (not res!1075744)) b!2554041))

(assert (= (and b!2554041 res!1075743) b!2554045))

(assert (= (and b!2554045 (not res!1075742)) b!2554047))

(assert (= (and b!2554047 (not res!1075748)) b!2554052))

(assert (= (or b!2554056 b!2554043 b!2554045) bm!162789))

(declare-fun m!2896109 () Bool)

(assert (=> bm!162789 m!2896109))

(declare-fun m!2896113 () Bool)

(assert (=> b!2554046 m!2896113))

(assert (=> b!2554046 m!2896113))

(declare-fun m!2896115 () Bool)

(assert (=> b!2554046 m!2896115))

(declare-fun m!2896117 () Bool)

(assert (=> b!2554040 m!2896117))

(assert (=> b!2554040 m!2896117))

(declare-fun m!2896123 () Bool)

(assert (=> b!2554040 m!2896123))

(assert (=> b!2554040 m!2896113))

(assert (=> b!2554040 m!2896123))

(assert (=> b!2554040 m!2896113))

(declare-fun m!2896131 () Bool)

(assert (=> b!2554040 m!2896131))

(assert (=> b!2554042 m!2896027))

(assert (=> d!723764 m!2896109))

(assert (=> d!723764 m!2896041))

(assert (=> b!2554050 m!2896117))

(assert (=> b!2554047 m!2896113))

(assert (=> b!2554047 m!2896113))

(assert (=> b!2554047 m!2896115))

(assert (=> b!2554052 m!2896117))

(assert (=> b!2553902 d!723764))

(declare-fun d!723766 () Bool)

(assert (=> d!723766 (= (matchR!3554 lt!903902 tl!4068) (matchR!3554 (derivative!304 lt!903902 tl!4068) Nil!29574))))

(declare-fun lt!903941 () Unit!43403)

(assert (=> d!723766 (= lt!903941 (choose!15082 lt!903902 tl!4068))))

(assert (=> d!723766 (validRegex!3235 lt!903902)))

(assert (=> d!723766 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!200 lt!903902 tl!4068) lt!903941)))

(declare-fun bs!469672 () Bool)

(assert (= bs!469672 d!723766))

(assert (=> bs!469672 m!2896021))

(declare-fun m!2896143 () Bool)

(assert (=> bs!469672 m!2896143))

(declare-fun m!2896145 () Bool)

(assert (=> bs!469672 m!2896145))

(assert (=> bs!469672 m!2896011))

(assert (=> bs!469672 m!2896011))

(assert (=> bs!469672 m!2896013))

(assert (=> b!2553896 d!723766))

(declare-fun b!2554063 () Bool)

(declare-fun e!1613602 () Bool)

(assert (=> b!2554063 (= e!1613602 (matchR!3554 (derivativeStep!2178 (derivative!304 lt!903902 tl!4068) (head!5816 Nil!29574)) (tail!4091 Nil!29574)))))

(declare-fun b!2554064 () Bool)

(declare-fun e!1613600 () Bool)

(declare-fun e!1613598 () Bool)

(assert (=> b!2554064 (= e!1613600 e!1613598)))

(declare-fun res!1075756 () Bool)

(assert (=> b!2554064 (=> (not res!1075756) (not e!1613598))))

(declare-fun lt!903942 () Bool)

(assert (=> b!2554064 (= res!1075756 (not lt!903942))))

(declare-fun b!2554065 () Bool)

(assert (=> b!2554065 (= e!1613602 (nullable!2526 (derivative!304 lt!903902 tl!4068)))))

(declare-fun b!2554067 () Bool)

(declare-fun e!1613601 () Bool)

(assert (=> b!2554067 (= e!1613601 (not lt!903942))))

(declare-fun b!2554068 () Bool)

(declare-fun e!1613604 () Bool)

(assert (=> b!2554068 (= e!1613598 e!1613604)))

(declare-fun res!1075755 () Bool)

(assert (=> b!2554068 (=> res!1075755 e!1613604)))

(declare-fun call!162795 () Bool)

(assert (=> b!2554068 (= res!1075755 call!162795)))

(declare-fun b!2554069 () Bool)

(declare-fun res!1075753 () Bool)

(declare-fun e!1613599 () Bool)

(assert (=> b!2554069 (=> (not res!1075753) (not e!1613599))))

(assert (=> b!2554069 (= res!1075753 (isEmpty!17027 (tail!4091 Nil!29574)))))

(declare-fun b!2554070 () Bool)

(declare-fun res!1075760 () Bool)

(assert (=> b!2554070 (=> res!1075760 e!1613604)))

(assert (=> b!2554070 (= res!1075760 (not (isEmpty!17027 (tail!4091 Nil!29574))))))

(declare-fun b!2554071 () Bool)

(declare-fun e!1613603 () Bool)

(assert (=> b!2554071 (= e!1613603 e!1613601)))

(declare-fun c!409669 () Bool)

(assert (=> b!2554071 (= c!409669 ((_ is EmptyLang!7609) (derivative!304 lt!903902 tl!4068)))))

(declare-fun b!2554072 () Bool)

(assert (=> b!2554072 (= e!1613599 (= (head!5816 Nil!29574) (c!409621 (derivative!304 lt!903902 tl!4068))))))

(declare-fun b!2554073 () Bool)

(assert (=> b!2554073 (= e!1613604 (not (= (head!5816 Nil!29574) (c!409621 (derivative!304 lt!903902 tl!4068)))))))

(declare-fun b!2554074 () Bool)

(declare-fun res!1075757 () Bool)

(assert (=> b!2554074 (=> res!1075757 e!1613600)))

(assert (=> b!2554074 (= res!1075757 e!1613599)))

(declare-fun res!1075758 () Bool)

(assert (=> b!2554074 (=> (not res!1075758) (not e!1613599))))

(assert (=> b!2554074 (= res!1075758 lt!903942)))

(declare-fun b!2554075 () Bool)

(assert (=> b!2554075 (= e!1613603 (= lt!903942 call!162795))))

(declare-fun b!2554066 () Bool)

(declare-fun res!1075759 () Bool)

(assert (=> b!2554066 (=> (not res!1075759) (not e!1613599))))

(assert (=> b!2554066 (= res!1075759 (not call!162795))))

(declare-fun d!723770 () Bool)

(assert (=> d!723770 e!1613603))

(declare-fun c!409668 () Bool)

(assert (=> d!723770 (= c!409668 ((_ is EmptyExpr!7609) (derivative!304 lt!903902 tl!4068)))))

(assert (=> d!723770 (= lt!903942 e!1613602)))

(declare-fun c!409667 () Bool)

(assert (=> d!723770 (= c!409667 (isEmpty!17027 Nil!29574))))

(assert (=> d!723770 (validRegex!3235 (derivative!304 lt!903902 tl!4068))))

(assert (=> d!723770 (= (matchR!3554 (derivative!304 lt!903902 tl!4068) Nil!29574) lt!903942)))

(declare-fun b!2554076 () Bool)

(declare-fun res!1075754 () Bool)

(assert (=> b!2554076 (=> res!1075754 e!1613600)))

(assert (=> b!2554076 (= res!1075754 (not ((_ is ElementMatch!7609) (derivative!304 lt!903902 tl!4068))))))

(assert (=> b!2554076 (= e!1613601 e!1613600)))

(declare-fun bm!162790 () Bool)

(assert (=> bm!162790 (= call!162795 (isEmpty!17027 Nil!29574))))

(assert (= (and d!723770 c!409667) b!2554065))

(assert (= (and d!723770 (not c!409667)) b!2554063))

(assert (= (and d!723770 c!409668) b!2554075))

(assert (= (and d!723770 (not c!409668)) b!2554071))

(assert (= (and b!2554071 c!409669) b!2554067))

(assert (= (and b!2554071 (not c!409669)) b!2554076))

(assert (= (and b!2554076 (not res!1075754)) b!2554074))

(assert (= (and b!2554074 res!1075758) b!2554066))

(assert (= (and b!2554066 res!1075759) b!2554069))

(assert (= (and b!2554069 res!1075753) b!2554072))

(assert (= (and b!2554074 (not res!1075757)) b!2554064))

(assert (= (and b!2554064 res!1075756) b!2554068))

(assert (= (and b!2554068 (not res!1075755)) b!2554070))

(assert (= (and b!2554070 (not res!1075760)) b!2554073))

(assert (= (or b!2554075 b!2554066 b!2554068) bm!162790))

(assert (=> bm!162790 m!2896083))

(assert (=> b!2554069 m!2896085))

(assert (=> b!2554069 m!2896085))

(assert (=> b!2554069 m!2896087))

(assert (=> b!2554063 m!2896089))

(assert (=> b!2554063 m!2896011))

(assert (=> b!2554063 m!2896089))

(declare-fun m!2896147 () Bool)

(assert (=> b!2554063 m!2896147))

(assert (=> b!2554063 m!2896085))

(assert (=> b!2554063 m!2896147))

(assert (=> b!2554063 m!2896085))

(declare-fun m!2896149 () Bool)

(assert (=> b!2554063 m!2896149))

(assert (=> b!2554065 m!2896011))

(declare-fun m!2896151 () Bool)

(assert (=> b!2554065 m!2896151))

(assert (=> d!723770 m!2896083))

(assert (=> d!723770 m!2896011))

(declare-fun m!2896153 () Bool)

(assert (=> d!723770 m!2896153))

(assert (=> b!2554072 m!2896089))

(assert (=> b!2554070 m!2896085))

(assert (=> b!2554070 m!2896085))

(assert (=> b!2554070 m!2896087))

(assert (=> b!2554073 m!2896089))

(assert (=> b!2553896 d!723770))

(declare-fun d!723772 () Bool)

(declare-fun lt!903943 () Regex!7609)

(assert (=> d!723772 (validRegex!3235 lt!903943)))

(declare-fun e!1613605 () Regex!7609)

(assert (=> d!723772 (= lt!903943 e!1613605)))

(declare-fun c!409670 () Bool)

(assert (=> d!723772 (= c!409670 ((_ is Cons!29574) tl!4068))))

(assert (=> d!723772 (validRegex!3235 lt!903902)))

(assert (=> d!723772 (= (derivative!304 lt!903902 tl!4068) lt!903943)))

(declare-fun b!2554077 () Bool)

(assert (=> b!2554077 (= e!1613605 (derivative!304 (derivativeStep!2178 lt!903902 (h!34994 tl!4068)) (t!211373 tl!4068)))))

(declare-fun b!2554078 () Bool)

(assert (=> b!2554078 (= e!1613605 lt!903902)))

(assert (= (and d!723772 c!409670) b!2554077))

(assert (= (and d!723772 (not c!409670)) b!2554078))

(declare-fun m!2896155 () Bool)

(assert (=> d!723772 m!2896155))

(assert (=> d!723772 m!2896145))

(declare-fun m!2896157 () Bool)

(assert (=> b!2554077 m!2896157))

(assert (=> b!2554077 m!2896157))

(declare-fun m!2896159 () Bool)

(assert (=> b!2554077 m!2896159))

(assert (=> b!2553896 d!723772))

(declare-fun b!2554079 () Bool)

(declare-fun e!1613610 () Bool)

(assert (=> b!2554079 (= e!1613610 (matchR!3554 (derivativeStep!2178 lt!903905 (head!5816 tl!4068)) (tail!4091 tl!4068)))))

(declare-fun b!2554080 () Bool)

(declare-fun e!1613608 () Bool)

(declare-fun e!1613606 () Bool)

(assert (=> b!2554080 (= e!1613608 e!1613606)))

(declare-fun res!1075764 () Bool)

(assert (=> b!2554080 (=> (not res!1075764) (not e!1613606))))

(declare-fun lt!903944 () Bool)

(assert (=> b!2554080 (= res!1075764 (not lt!903944))))

(declare-fun b!2554081 () Bool)

(assert (=> b!2554081 (= e!1613610 (nullable!2526 lt!903905))))

(declare-fun b!2554083 () Bool)

(declare-fun e!1613609 () Bool)

(assert (=> b!2554083 (= e!1613609 (not lt!903944))))

(declare-fun b!2554084 () Bool)

(declare-fun e!1613612 () Bool)

(assert (=> b!2554084 (= e!1613606 e!1613612)))

(declare-fun res!1075763 () Bool)

(assert (=> b!2554084 (=> res!1075763 e!1613612)))

(declare-fun call!162796 () Bool)

(assert (=> b!2554084 (= res!1075763 call!162796)))

(declare-fun b!2554085 () Bool)

(declare-fun res!1075761 () Bool)

(declare-fun e!1613607 () Bool)

(assert (=> b!2554085 (=> (not res!1075761) (not e!1613607))))

(assert (=> b!2554085 (= res!1075761 (isEmpty!17027 (tail!4091 tl!4068)))))

(declare-fun b!2554086 () Bool)

(declare-fun res!1075768 () Bool)

(assert (=> b!2554086 (=> res!1075768 e!1613612)))

(assert (=> b!2554086 (= res!1075768 (not (isEmpty!17027 (tail!4091 tl!4068))))))

(declare-fun b!2554087 () Bool)

(declare-fun e!1613611 () Bool)

(assert (=> b!2554087 (= e!1613611 e!1613609)))

(declare-fun c!409673 () Bool)

(assert (=> b!2554087 (= c!409673 ((_ is EmptyLang!7609) lt!903905))))

(declare-fun b!2554088 () Bool)

(assert (=> b!2554088 (= e!1613607 (= (head!5816 tl!4068) (c!409621 lt!903905)))))

(declare-fun b!2554089 () Bool)

(assert (=> b!2554089 (= e!1613612 (not (= (head!5816 tl!4068) (c!409621 lt!903905))))))

(declare-fun b!2554090 () Bool)

(declare-fun res!1075765 () Bool)

(assert (=> b!2554090 (=> res!1075765 e!1613608)))

(assert (=> b!2554090 (= res!1075765 e!1613607)))

(declare-fun res!1075766 () Bool)

(assert (=> b!2554090 (=> (not res!1075766) (not e!1613607))))

(assert (=> b!2554090 (= res!1075766 lt!903944)))

(declare-fun b!2554091 () Bool)

(assert (=> b!2554091 (= e!1613611 (= lt!903944 call!162796))))

(declare-fun b!2554082 () Bool)

(declare-fun res!1075767 () Bool)

(assert (=> b!2554082 (=> (not res!1075767) (not e!1613607))))

(assert (=> b!2554082 (= res!1075767 (not call!162796))))

(declare-fun d!723774 () Bool)

(assert (=> d!723774 e!1613611))

(declare-fun c!409672 () Bool)

(assert (=> d!723774 (= c!409672 ((_ is EmptyExpr!7609) lt!903905))))

(assert (=> d!723774 (= lt!903944 e!1613610)))

(declare-fun c!409671 () Bool)

(assert (=> d!723774 (= c!409671 (isEmpty!17027 tl!4068))))

(assert (=> d!723774 (validRegex!3235 lt!903905)))

(assert (=> d!723774 (= (matchR!3554 lt!903905 tl!4068) lt!903944)))

(declare-fun b!2554092 () Bool)

(declare-fun res!1075762 () Bool)

(assert (=> b!2554092 (=> res!1075762 e!1613608)))

(assert (=> b!2554092 (= res!1075762 (not ((_ is ElementMatch!7609) lt!903905)))))

(assert (=> b!2554092 (= e!1613609 e!1613608)))

(declare-fun bm!162791 () Bool)

(assert (=> bm!162791 (= call!162796 (isEmpty!17027 tl!4068))))

(assert (= (and d!723774 c!409671) b!2554081))

(assert (= (and d!723774 (not c!409671)) b!2554079))

(assert (= (and d!723774 c!409672) b!2554091))

(assert (= (and d!723774 (not c!409672)) b!2554087))

(assert (= (and b!2554087 c!409673) b!2554083))

(assert (= (and b!2554087 (not c!409673)) b!2554092))

(assert (= (and b!2554092 (not res!1075762)) b!2554090))

(assert (= (and b!2554090 res!1075766) b!2554082))

(assert (= (and b!2554082 res!1075767) b!2554085))

(assert (= (and b!2554085 res!1075761) b!2554088))

(assert (= (and b!2554090 (not res!1075765)) b!2554080))

(assert (= (and b!2554080 res!1075764) b!2554084))

(assert (= (and b!2554084 (not res!1075763)) b!2554086))

(assert (= (and b!2554086 (not res!1075768)) b!2554089))

(assert (= (or b!2554091 b!2554082 b!2554084) bm!162791))

(declare-fun m!2896161 () Bool)

(assert (=> bm!162791 m!2896161))

(declare-fun m!2896163 () Bool)

(assert (=> b!2554085 m!2896163))

(assert (=> b!2554085 m!2896163))

(declare-fun m!2896165 () Bool)

(assert (=> b!2554085 m!2896165))

(declare-fun m!2896167 () Bool)

(assert (=> b!2554079 m!2896167))

(assert (=> b!2554079 m!2896167))

(declare-fun m!2896169 () Bool)

(assert (=> b!2554079 m!2896169))

(assert (=> b!2554079 m!2896163))

(assert (=> b!2554079 m!2896169))

(assert (=> b!2554079 m!2896163))

(declare-fun m!2896171 () Bool)

(assert (=> b!2554079 m!2896171))

(declare-fun m!2896173 () Bool)

(assert (=> b!2554081 m!2896173))

(assert (=> d!723774 m!2896161))

(declare-fun m!2896175 () Bool)

(assert (=> d!723774 m!2896175))

(assert (=> b!2554088 m!2896167))

(assert (=> b!2554086 m!2896163))

(assert (=> b!2554086 m!2896163))

(assert (=> b!2554086 m!2896165))

(assert (=> b!2554089 m!2896167))

(assert (=> b!2553896 d!723774))

(declare-fun call!162817 () Regex!7609)

(declare-fun c!409703 () Bool)

(declare-fun c!409704 () Bool)

(declare-fun bm!162812 () Bool)

(assert (=> bm!162812 (= call!162817 (derivativeStep!2178 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340)))) c!14016))))

(declare-fun b!2554194 () Bool)

(declare-fun e!1613675 () Regex!7609)

(declare-fun call!162818 () Regex!7609)

(assert (=> b!2554194 (= e!1613675 (Union!7609 call!162817 call!162818))))

(declare-fun b!2554195 () Bool)

(declare-fun c!409706 () Bool)

(assert (=> b!2554195 (= c!409706 (nullable!2526 (regOne!15730 (regTwo!15730 r!27340))))))

(declare-fun e!1613673 () Regex!7609)

(declare-fun e!1613674 () Regex!7609)

(assert (=> b!2554195 (= e!1613673 e!1613674)))

(declare-fun b!2554196 () Bool)

(declare-fun call!162819 () Regex!7609)

(assert (=> b!2554196 (= e!1613674 (Union!7609 (Concat!12305 call!162819 (regTwo!15730 (regTwo!15730 r!27340))) EmptyLang!7609))))

(declare-fun d!723776 () Bool)

(declare-fun lt!903953 () Regex!7609)

(assert (=> d!723776 (validRegex!3235 lt!903953)))

(declare-fun e!1613672 () Regex!7609)

(assert (=> d!723776 (= lt!903953 e!1613672)))

(declare-fun c!409702 () Bool)

(assert (=> d!723776 (= c!409702 (or ((_ is EmptyExpr!7609) (regTwo!15730 r!27340)) ((_ is EmptyLang!7609) (regTwo!15730 r!27340))))))

(assert (=> d!723776 (validRegex!3235 (regTwo!15730 r!27340))))

(assert (=> d!723776 (= (derivativeStep!2178 (regTwo!15730 r!27340) c!14016) lt!903953)))

(declare-fun b!2554197 () Bool)

(declare-fun e!1613671 () Regex!7609)

(assert (=> b!2554197 (= e!1613672 e!1613671)))

(declare-fun c!409705 () Bool)

(assert (=> b!2554197 (= c!409705 ((_ is ElementMatch!7609) (regTwo!15730 r!27340)))))

(declare-fun b!2554198 () Bool)

(assert (=> b!2554198 (= e!1613672 EmptyLang!7609)))

(declare-fun bm!162813 () Bool)

(assert (=> bm!162813 (= call!162818 (derivativeStep!2178 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340))) c!14016))))

(declare-fun bm!162814 () Bool)

(declare-fun call!162820 () Regex!7609)

(assert (=> bm!162814 (= call!162819 call!162820)))

(declare-fun b!2554199 () Bool)

(assert (=> b!2554199 (= e!1613671 (ite (= c!14016 (c!409621 (regTwo!15730 r!27340))) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2554200 () Bool)

(assert (=> b!2554200 (= e!1613673 (Concat!12305 call!162820 (regTwo!15730 r!27340)))))

(declare-fun b!2554201 () Bool)

(assert (=> b!2554201 (= c!409703 ((_ is Union!7609) (regTwo!15730 r!27340)))))

(assert (=> b!2554201 (= e!1613671 e!1613675)))

(declare-fun b!2554202 () Bool)

(assert (=> b!2554202 (= e!1613675 e!1613673)))

(assert (=> b!2554202 (= c!409704 ((_ is Star!7609) (regTwo!15730 r!27340)))))

(declare-fun bm!162815 () Bool)

(assert (=> bm!162815 (= call!162820 call!162817)))

(declare-fun b!2554203 () Bool)

(assert (=> b!2554203 (= e!1613674 (Union!7609 (Concat!12305 call!162819 (regTwo!15730 (regTwo!15730 r!27340))) call!162818))))

(assert (= (and d!723776 c!409702) b!2554198))

(assert (= (and d!723776 (not c!409702)) b!2554197))

(assert (= (and b!2554197 c!409705) b!2554199))

(assert (= (and b!2554197 (not c!409705)) b!2554201))

(assert (= (and b!2554201 c!409703) b!2554194))

(assert (= (and b!2554201 (not c!409703)) b!2554202))

(assert (= (and b!2554202 c!409704) b!2554200))

(assert (= (and b!2554202 (not c!409704)) b!2554195))

(assert (= (and b!2554195 c!409706) b!2554203))

(assert (= (and b!2554195 (not c!409706)) b!2554196))

(assert (= (or b!2554203 b!2554196) bm!162814))

(assert (= (or b!2554200 bm!162814) bm!162815))

(assert (= (or b!2554194 b!2554203) bm!162813))

(assert (= (or b!2554194 bm!162815) bm!162812))

(declare-fun m!2896231 () Bool)

(assert (=> bm!162812 m!2896231))

(declare-fun m!2896235 () Bool)

(assert (=> b!2554195 m!2896235))

(declare-fun m!2896239 () Bool)

(assert (=> d!723776 m!2896239))

(declare-fun m!2896241 () Bool)

(assert (=> d!723776 m!2896241))

(declare-fun m!2896243 () Bool)

(assert (=> bm!162813 m!2896243))

(assert (=> b!2553896 d!723776))

(declare-fun c!409712 () Bool)

(declare-fun c!409713 () Bool)

(declare-fun call!162822 () Regex!7609)

(declare-fun bm!162817 () Bool)

(assert (=> bm!162817 (= call!162822 (derivativeStep!2178 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))) c!14016))))

(declare-fun b!2554220 () Bool)

(declare-fun e!1613688 () Regex!7609)

(declare-fun call!162823 () Regex!7609)

(assert (=> b!2554220 (= e!1613688 (Union!7609 call!162822 call!162823))))

(declare-fun b!2554221 () Bool)

(declare-fun c!409715 () Bool)

(assert (=> b!2554221 (= c!409715 (nullable!2526 (regOne!15730 (regOne!15730 r!27340))))))

(declare-fun e!1613686 () Regex!7609)

(declare-fun e!1613687 () Regex!7609)

(assert (=> b!2554221 (= e!1613686 e!1613687)))

(declare-fun b!2554222 () Bool)

(declare-fun call!162824 () Regex!7609)

(assert (=> b!2554222 (= e!1613687 (Union!7609 (Concat!12305 call!162824 (regTwo!15730 (regOne!15730 r!27340))) EmptyLang!7609))))

(declare-fun d!723790 () Bool)

(declare-fun lt!903956 () Regex!7609)

(assert (=> d!723790 (validRegex!3235 lt!903956)))

(declare-fun e!1613685 () Regex!7609)

(assert (=> d!723790 (= lt!903956 e!1613685)))

(declare-fun c!409711 () Bool)

(assert (=> d!723790 (= c!409711 (or ((_ is EmptyExpr!7609) (regOne!15730 r!27340)) ((_ is EmptyLang!7609) (regOne!15730 r!27340))))))

(assert (=> d!723790 (validRegex!3235 (regOne!15730 r!27340))))

(assert (=> d!723790 (= (derivativeStep!2178 (regOne!15730 r!27340) c!14016) lt!903956)))

(declare-fun b!2554223 () Bool)

(declare-fun e!1613684 () Regex!7609)

(assert (=> b!2554223 (= e!1613685 e!1613684)))

(declare-fun c!409714 () Bool)

(assert (=> b!2554223 (= c!409714 ((_ is ElementMatch!7609) (regOne!15730 r!27340)))))

(declare-fun b!2554224 () Bool)

(assert (=> b!2554224 (= e!1613685 EmptyLang!7609)))

(declare-fun bm!162818 () Bool)

(assert (=> bm!162818 (= call!162823 (derivativeStep!2178 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))) c!14016))))

(declare-fun bm!162819 () Bool)

(declare-fun call!162825 () Regex!7609)

(assert (=> bm!162819 (= call!162824 call!162825)))

(declare-fun b!2554225 () Bool)

(assert (=> b!2554225 (= e!1613684 (ite (= c!14016 (c!409621 (regOne!15730 r!27340))) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2554226 () Bool)

(assert (=> b!2554226 (= e!1613686 (Concat!12305 call!162825 (regOne!15730 r!27340)))))

(declare-fun b!2554227 () Bool)

(assert (=> b!2554227 (= c!409712 ((_ is Union!7609) (regOne!15730 r!27340)))))

(assert (=> b!2554227 (= e!1613684 e!1613688)))

(declare-fun b!2554228 () Bool)

(assert (=> b!2554228 (= e!1613688 e!1613686)))

(assert (=> b!2554228 (= c!409713 ((_ is Star!7609) (regOne!15730 r!27340)))))

(declare-fun bm!162820 () Bool)

(assert (=> bm!162820 (= call!162825 call!162822)))

(declare-fun b!2554229 () Bool)

(assert (=> b!2554229 (= e!1613687 (Union!7609 (Concat!12305 call!162824 (regTwo!15730 (regOne!15730 r!27340))) call!162823))))

(assert (= (and d!723790 c!409711) b!2554224))

(assert (= (and d!723790 (not c!409711)) b!2554223))

(assert (= (and b!2554223 c!409714) b!2554225))

(assert (= (and b!2554223 (not c!409714)) b!2554227))

(assert (= (and b!2554227 c!409712) b!2554220))

(assert (= (and b!2554227 (not c!409712)) b!2554228))

(assert (= (and b!2554228 c!409713) b!2554226))

(assert (= (and b!2554228 (not c!409713)) b!2554221))

(assert (= (and b!2554221 c!409715) b!2554229))

(assert (= (and b!2554221 (not c!409715)) b!2554222))

(assert (= (or b!2554229 b!2554222) bm!162819))

(assert (= (or b!2554226 bm!162819) bm!162820))

(assert (= (or b!2554220 b!2554229) bm!162818))

(assert (= (or b!2554220 bm!162820) bm!162817))

(declare-fun m!2896245 () Bool)

(assert (=> bm!162817 m!2896245))

(declare-fun m!2896247 () Bool)

(assert (=> b!2554221 m!2896247))

(declare-fun m!2896249 () Bool)

(assert (=> d!723790 m!2896249))

(assert (=> d!723790 m!2896041))

(declare-fun m!2896251 () Bool)

(assert (=> bm!162818 m!2896251))

(assert (=> b!2553896 d!723790))

(declare-fun b!2554230 () Bool)

(declare-fun e!1613693 () Bool)

(assert (=> b!2554230 (= e!1613693 (matchR!3554 (derivativeStep!2178 lt!903902 (head!5816 tl!4068)) (tail!4091 tl!4068)))))

(declare-fun b!2554231 () Bool)

(declare-fun e!1613691 () Bool)

(declare-fun e!1613689 () Bool)

(assert (=> b!2554231 (= e!1613691 e!1613689)))

(declare-fun res!1075825 () Bool)

(assert (=> b!2554231 (=> (not res!1075825) (not e!1613689))))

(declare-fun lt!903959 () Bool)

(assert (=> b!2554231 (= res!1075825 (not lt!903959))))

(declare-fun b!2554232 () Bool)

(assert (=> b!2554232 (= e!1613693 (nullable!2526 lt!903902))))

(declare-fun b!2554234 () Bool)

(declare-fun e!1613692 () Bool)

(assert (=> b!2554234 (= e!1613692 (not lt!903959))))

(declare-fun b!2554235 () Bool)

(declare-fun e!1613695 () Bool)

(assert (=> b!2554235 (= e!1613689 e!1613695)))

(declare-fun res!1075824 () Bool)

(assert (=> b!2554235 (=> res!1075824 e!1613695)))

(declare-fun call!162826 () Bool)

(assert (=> b!2554235 (= res!1075824 call!162826)))

(declare-fun b!2554236 () Bool)

(declare-fun res!1075822 () Bool)

(declare-fun e!1613690 () Bool)

(assert (=> b!2554236 (=> (not res!1075822) (not e!1613690))))

(assert (=> b!2554236 (= res!1075822 (isEmpty!17027 (tail!4091 tl!4068)))))

(declare-fun b!2554237 () Bool)

(declare-fun res!1075829 () Bool)

(assert (=> b!2554237 (=> res!1075829 e!1613695)))

(assert (=> b!2554237 (= res!1075829 (not (isEmpty!17027 (tail!4091 tl!4068))))))

(declare-fun b!2554238 () Bool)

(declare-fun e!1613694 () Bool)

(assert (=> b!2554238 (= e!1613694 e!1613692)))

(declare-fun c!409718 () Bool)

(assert (=> b!2554238 (= c!409718 ((_ is EmptyLang!7609) lt!903902))))

(declare-fun b!2554239 () Bool)

(assert (=> b!2554239 (= e!1613690 (= (head!5816 tl!4068) (c!409621 lt!903902)))))

(declare-fun b!2554240 () Bool)

(assert (=> b!2554240 (= e!1613695 (not (= (head!5816 tl!4068) (c!409621 lt!903902))))))

(declare-fun b!2554241 () Bool)

(declare-fun res!1075826 () Bool)

(assert (=> b!2554241 (=> res!1075826 e!1613691)))

(assert (=> b!2554241 (= res!1075826 e!1613690)))

(declare-fun res!1075827 () Bool)

(assert (=> b!2554241 (=> (not res!1075827) (not e!1613690))))

(assert (=> b!2554241 (= res!1075827 lt!903959)))

(declare-fun b!2554242 () Bool)

(assert (=> b!2554242 (= e!1613694 (= lt!903959 call!162826))))

(declare-fun b!2554233 () Bool)

(declare-fun res!1075828 () Bool)

(assert (=> b!2554233 (=> (not res!1075828) (not e!1613690))))

(assert (=> b!2554233 (= res!1075828 (not call!162826))))

(declare-fun d!723792 () Bool)

(assert (=> d!723792 e!1613694))

(declare-fun c!409717 () Bool)

(assert (=> d!723792 (= c!409717 ((_ is EmptyExpr!7609) lt!903902))))

(assert (=> d!723792 (= lt!903959 e!1613693)))

(declare-fun c!409716 () Bool)

(assert (=> d!723792 (= c!409716 (isEmpty!17027 tl!4068))))

(assert (=> d!723792 (validRegex!3235 lt!903902)))

(assert (=> d!723792 (= (matchR!3554 lt!903902 tl!4068) lt!903959)))

(declare-fun b!2554243 () Bool)

(declare-fun res!1075823 () Bool)

(assert (=> b!2554243 (=> res!1075823 e!1613691)))

(assert (=> b!2554243 (= res!1075823 (not ((_ is ElementMatch!7609) lt!903902)))))

(assert (=> b!2554243 (= e!1613692 e!1613691)))

(declare-fun bm!162821 () Bool)

(assert (=> bm!162821 (= call!162826 (isEmpty!17027 tl!4068))))

(assert (= (and d!723792 c!409716) b!2554232))

(assert (= (and d!723792 (not c!409716)) b!2554230))

(assert (= (and d!723792 c!409717) b!2554242))

(assert (= (and d!723792 (not c!409717)) b!2554238))

(assert (= (and b!2554238 c!409718) b!2554234))

(assert (= (and b!2554238 (not c!409718)) b!2554243))

(assert (= (and b!2554243 (not res!1075823)) b!2554241))

(assert (= (and b!2554241 res!1075827) b!2554233))

(assert (= (and b!2554233 res!1075828) b!2554236))

(assert (= (and b!2554236 res!1075822) b!2554239))

(assert (= (and b!2554241 (not res!1075826)) b!2554231))

(assert (= (and b!2554231 res!1075825) b!2554235))

(assert (= (and b!2554235 (not res!1075824)) b!2554237))

(assert (= (and b!2554237 (not res!1075829)) b!2554240))

(assert (= (or b!2554242 b!2554233 b!2554235) bm!162821))

(assert (=> bm!162821 m!2896161))

(assert (=> b!2554236 m!2896163))

(assert (=> b!2554236 m!2896163))

(assert (=> b!2554236 m!2896165))

(assert (=> b!2554230 m!2896167))

(assert (=> b!2554230 m!2896167))

(declare-fun m!2896269 () Bool)

(assert (=> b!2554230 m!2896269))

(assert (=> b!2554230 m!2896163))

(assert (=> b!2554230 m!2896269))

(assert (=> b!2554230 m!2896163))

(declare-fun m!2896273 () Bool)

(assert (=> b!2554230 m!2896273))

(declare-fun m!2896277 () Bool)

(assert (=> b!2554232 m!2896277))

(assert (=> d!723792 m!2896161))

(assert (=> d!723792 m!2896145))

(assert (=> b!2554239 m!2896167))

(assert (=> b!2554237 m!2896163))

(assert (=> b!2554237 m!2896163))

(assert (=> b!2554237 m!2896165))

(assert (=> b!2554240 m!2896167))

(assert (=> b!2553896 d!723792))

(declare-fun d!723800 () Bool)

(declare-fun e!1613747 () Bool)

(assert (=> d!723800 e!1613747))

(declare-fun res!1075881 () Bool)

(assert (=> d!723800 (=> res!1075881 e!1613747)))

(assert (=> d!723800 (= res!1075881 (matchR!3554 lt!903905 tl!4068))))

(declare-fun lt!903973 () Unit!43403)

(declare-fun choose!15084 (Regex!7609 Regex!7609 List!29674) Unit!43403)

(assert (=> d!723800 (= lt!903973 (choose!15084 lt!903905 lt!903906 tl!4068))))

(declare-fun e!1613746 () Bool)

(assert (=> d!723800 e!1613746))

(declare-fun res!1075880 () Bool)

(assert (=> d!723800 (=> (not res!1075880) (not e!1613746))))

(assert (=> d!723800 (= res!1075880 (validRegex!3235 lt!903905))))

(assert (=> d!723800 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!204 lt!903905 lt!903906 tl!4068) lt!903973)))

(declare-fun b!2554334 () Bool)

(assert (=> b!2554334 (= e!1613746 (validRegex!3235 lt!903906))))

(declare-fun b!2554335 () Bool)

(assert (=> b!2554335 (= e!1613747 (matchR!3554 lt!903906 tl!4068))))

(assert (= (and d!723800 res!1075880) b!2554334))

(assert (= (and d!723800 (not res!1075881)) b!2554335))

(assert (=> d!723800 m!2896019))

(declare-fun m!2896327 () Bool)

(assert (=> d!723800 m!2896327))

(assert (=> d!723800 m!2896175))

(declare-fun m!2896333 () Bool)

(assert (=> b!2554334 m!2896333))

(assert (=> b!2554335 m!2896051))

(assert (=> b!2553896 d!723800))

(declare-fun d!723816 () Bool)

(assert (=> d!723816 (= (get!9293 lt!903907) (v!31850 lt!903907))))

(assert (=> b!2553898 d!723816))

(declare-fun d!723822 () Bool)

(declare-fun isEmpty!17028 (Option!5910) Bool)

(assert (=> d!723822 (= (isDefined!4732 lt!903907) (not (isEmpty!17028 lt!903907)))))

(declare-fun bs!469678 () Bool)

(assert (= bs!469678 d!723822))

(declare-fun m!2896357 () Bool)

(assert (=> bs!469678 m!2896357))

(assert (=> b!2553898 d!723822))

(declare-fun b!2554424 () Bool)

(declare-fun e!1613791 () Option!5910)

(declare-fun e!1613788 () Option!5910)

(assert (=> b!2554424 (= e!1613791 e!1613788)))

(declare-fun c!409755 () Bool)

(assert (=> b!2554424 (= c!409755 ((_ is Nil!29574) tl!4068))))

(declare-fun d!723828 () Bool)

(declare-fun e!1613789 () Bool)

(assert (=> d!723828 e!1613789))

(declare-fun res!1075905 () Bool)

(assert (=> d!723828 (=> res!1075905 e!1613789)))

(declare-fun e!1613790 () Bool)

(assert (=> d!723828 (= res!1075905 e!1613790)))

(declare-fun res!1075908 () Bool)

(assert (=> d!723828 (=> (not res!1075908) (not e!1613790))))

(declare-fun lt!903985 () Option!5910)

(assert (=> d!723828 (= res!1075908 (isDefined!4732 lt!903985))))

(assert (=> d!723828 (= lt!903985 e!1613791)))

(declare-fun c!409754 () Bool)

(declare-fun e!1613792 () Bool)

(assert (=> d!723828 (= c!409754 e!1613792)))

(declare-fun res!1075909 () Bool)

(assert (=> d!723828 (=> (not res!1075909) (not e!1613792))))

(assert (=> d!723828 (= res!1075909 (matchR!3554 lt!903911 Nil!29574))))

(assert (=> d!723828 (validRegex!3235 lt!903911)))

(assert (=> d!723828 (= (findConcatSeparation!932 lt!903911 (regTwo!15730 r!27340) Nil!29574 tl!4068 tl!4068) lt!903985)))

(declare-fun b!2554425 () Bool)

(declare-fun res!1075907 () Bool)

(assert (=> b!2554425 (=> (not res!1075907) (not e!1613790))))

(assert (=> b!2554425 (= res!1075907 (matchR!3554 lt!903911 (_1!17332 (get!9293 lt!903985))))))

(declare-fun b!2554426 () Bool)

(assert (=> b!2554426 (= e!1613789 (not (isDefined!4732 lt!903985)))))

(declare-fun b!2554427 () Bool)

(declare-fun res!1075906 () Bool)

(assert (=> b!2554427 (=> (not res!1075906) (not e!1613790))))

(assert (=> b!2554427 (= res!1075906 (matchR!3554 (regTwo!15730 r!27340) (_2!17332 (get!9293 lt!903985))))))

(declare-fun b!2554428 () Bool)

(assert (=> b!2554428 (= e!1613790 (= (++!7266 (_1!17332 (get!9293 lt!903985)) (_2!17332 (get!9293 lt!903985))) tl!4068))))

(declare-fun b!2554429 () Bool)

(assert (=> b!2554429 (= e!1613792 (matchR!3554 (regTwo!15730 r!27340) tl!4068))))

(declare-fun b!2554430 () Bool)

(assert (=> b!2554430 (= e!1613788 None!5909)))

(declare-fun b!2554431 () Bool)

(declare-fun lt!903984 () Unit!43403)

(declare-fun lt!903983 () Unit!43403)

(assert (=> b!2554431 (= lt!903984 lt!903983)))

(assert (=> b!2554431 (= (++!7266 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574)) (t!211373 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!799 (List!29674 C!15376 List!29674 List!29674) Unit!43403)

(assert (=> b!2554431 (= lt!903983 (lemmaMoveElementToOtherListKeepsConcatEq!799 Nil!29574 (h!34994 tl!4068) (t!211373 tl!4068) tl!4068))))

(assert (=> b!2554431 (= e!1613788 (findConcatSeparation!932 lt!903911 (regTwo!15730 r!27340) (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574)) (t!211373 tl!4068) tl!4068))))

(declare-fun b!2554432 () Bool)

(assert (=> b!2554432 (= e!1613791 (Some!5909 (tuple2!29581 Nil!29574 tl!4068)))))

(assert (= (and d!723828 res!1075909) b!2554429))

(assert (= (and d!723828 c!409754) b!2554432))

(assert (= (and d!723828 (not c!409754)) b!2554424))

(assert (= (and b!2554424 c!409755) b!2554430))

(assert (= (and b!2554424 (not c!409755)) b!2554431))

(assert (= (and d!723828 res!1075908) b!2554425))

(assert (= (and b!2554425 res!1075907) b!2554427))

(assert (= (and b!2554427 res!1075906) b!2554428))

(assert (= (and d!723828 (not res!1075905)) b!2554426))

(declare-fun m!2896371 () Bool)

(assert (=> b!2554428 m!2896371))

(declare-fun m!2896373 () Bool)

(assert (=> b!2554428 m!2896373))

(declare-fun m!2896375 () Bool)

(assert (=> b!2554431 m!2896375))

(assert (=> b!2554431 m!2896375))

(declare-fun m!2896377 () Bool)

(assert (=> b!2554431 m!2896377))

(declare-fun m!2896379 () Bool)

(assert (=> b!2554431 m!2896379))

(assert (=> b!2554431 m!2896375))

(declare-fun m!2896381 () Bool)

(assert (=> b!2554431 m!2896381))

(assert (=> b!2554425 m!2896371))

(declare-fun m!2896383 () Bool)

(assert (=> b!2554425 m!2896383))

(assert (=> b!2554427 m!2896371))

(declare-fun m!2896385 () Bool)

(assert (=> b!2554427 m!2896385))

(declare-fun m!2896387 () Bool)

(assert (=> d!723828 m!2896387))

(declare-fun m!2896389 () Bool)

(assert (=> d!723828 m!2896389))

(assert (=> d!723828 m!2896099))

(assert (=> b!2554426 m!2896387))

(declare-fun m!2896391 () Bool)

(assert (=> b!2554429 m!2896391))

(assert (=> b!2553898 d!723828))

(declare-fun b!2554441 () Bool)

(declare-fun e!1613797 () List!29674)

(assert (=> b!2554441 (= e!1613797 (_2!17332 lt!903904))))

(declare-fun b!2554443 () Bool)

(declare-fun res!1075914 () Bool)

(declare-fun e!1613798 () Bool)

(assert (=> b!2554443 (=> (not res!1075914) (not e!1613798))))

(declare-fun lt!903988 () List!29674)

(declare-fun size!22952 (List!29674) Int)

(assert (=> b!2554443 (= res!1075914 (= (size!22952 lt!903988) (+ (size!22952 (_1!17332 lt!903904)) (size!22952 (_2!17332 lt!903904)))))))

(declare-fun b!2554444 () Bool)

(assert (=> b!2554444 (= e!1613798 (or (not (= (_2!17332 lt!903904) Nil!29574)) (= lt!903988 (_1!17332 lt!903904))))))

(declare-fun b!2554442 () Bool)

(assert (=> b!2554442 (= e!1613797 (Cons!29574 (h!34994 (_1!17332 lt!903904)) (++!7266 (t!211373 (_1!17332 lt!903904)) (_2!17332 lt!903904))))))

(declare-fun d!723830 () Bool)

(assert (=> d!723830 e!1613798))

(declare-fun res!1075915 () Bool)

(assert (=> d!723830 (=> (not res!1075915) (not e!1613798))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4072 (List!29674) (InoxSet C!15376))

(assert (=> d!723830 (= res!1075915 (= (content!4072 lt!903988) ((_ map or) (content!4072 (_1!17332 lt!903904)) (content!4072 (_2!17332 lt!903904)))))))

(assert (=> d!723830 (= lt!903988 e!1613797)))

(declare-fun c!409758 () Bool)

(assert (=> d!723830 (= c!409758 ((_ is Nil!29574) (_1!17332 lt!903904)))))

(assert (=> d!723830 (= (++!7266 (_1!17332 lt!903904) (_2!17332 lt!903904)) lt!903988)))

(assert (= (and d!723830 c!409758) b!2554441))

(assert (= (and d!723830 (not c!409758)) b!2554442))

(assert (= (and d!723830 res!1075915) b!2554443))

(assert (= (and b!2554443 res!1075914) b!2554444))

(declare-fun m!2896393 () Bool)

(assert (=> b!2554443 m!2896393))

(declare-fun m!2896395 () Bool)

(assert (=> b!2554443 m!2896395))

(declare-fun m!2896397 () Bool)

(assert (=> b!2554443 m!2896397))

(declare-fun m!2896399 () Bool)

(assert (=> b!2554442 m!2896399))

(declare-fun m!2896401 () Bool)

(assert (=> d!723830 m!2896401))

(declare-fun m!2896403 () Bool)

(assert (=> d!723830 m!2896403))

(declare-fun m!2896405 () Bool)

(assert (=> d!723830 m!2896405))

(assert (=> b!2553898 d!723830))

(declare-fun d!723832 () Bool)

(assert (=> d!723832 (isDefined!4732 (findConcatSeparation!932 lt!903911 (regTwo!15730 r!27340) Nil!29574 tl!4068 tl!4068))))

(declare-fun lt!903991 () Unit!43403)

(declare-fun choose!15085 (Regex!7609 Regex!7609 List!29674) Unit!43403)

(assert (=> d!723832 (= lt!903991 (choose!15085 lt!903911 (regTwo!15730 r!27340) tl!4068))))

(assert (=> d!723832 (validRegex!3235 lt!903911)))

(assert (=> d!723832 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!214 lt!903911 (regTwo!15730 r!27340) tl!4068) lt!903991)))

(declare-fun bs!469679 () Bool)

(assert (= bs!469679 d!723832))

(assert (=> bs!469679 m!2896037))

(assert (=> bs!469679 m!2896037))

(declare-fun m!2896407 () Bool)

(assert (=> bs!469679 m!2896407))

(declare-fun m!2896409 () Bool)

(assert (=> bs!469679 m!2896409))

(assert (=> bs!469679 m!2896099))

(assert (=> b!2553898 d!723832))

(declare-fun d!723834 () Bool)

(assert (=> d!723834 (= (nullable!2526 lt!903901) (nullableFct!751 lt!903901))))

(declare-fun bs!469680 () Bool)

(assert (= bs!469680 d!723834))

(declare-fun m!2896411 () Bool)

(assert (=> bs!469680 m!2896411))

(assert (=> b!2553909 d!723834))

(declare-fun d!723836 () Bool)

(assert (=> d!723836 (= (nullable!2526 (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068)) (nullableFct!751 (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469681 () Bool)

(assert (= bs!469681 d!723836))

(assert (=> bs!469681 m!2896005))

(declare-fun m!2896413 () Bool)

(assert (=> bs!469681 m!2896413))

(assert (=> b!2553907 d!723836))

(declare-fun d!723838 () Bool)

(declare-fun lt!903992 () Regex!7609)

(assert (=> d!723838 (validRegex!3235 lt!903992)))

(declare-fun e!1613799 () Regex!7609)

(assert (=> d!723838 (= lt!903992 e!1613799)))

(declare-fun c!409759 () Bool)

(assert (=> d!723838 (= c!409759 ((_ is Cons!29574) tl!4068))))

(assert (=> d!723838 (validRegex!3235 (derivativeStep!2178 r!27340 c!14016))))

(assert (=> d!723838 (= (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068) lt!903992)))

(declare-fun b!2554445 () Bool)

(assert (=> b!2554445 (= e!1613799 (derivative!304 (derivativeStep!2178 (derivativeStep!2178 r!27340 c!14016) (h!34994 tl!4068)) (t!211373 tl!4068)))))

(declare-fun b!2554446 () Bool)

(assert (=> b!2554446 (= e!1613799 (derivativeStep!2178 r!27340 c!14016))))

(assert (= (and d!723838 c!409759) b!2554445))

(assert (= (and d!723838 (not c!409759)) b!2554446))

(declare-fun m!2896415 () Bool)

(assert (=> d!723838 m!2896415))

(assert (=> d!723838 m!2896003))

(declare-fun m!2896417 () Bool)

(assert (=> d!723838 m!2896417))

(assert (=> b!2554445 m!2896003))

(declare-fun m!2896419 () Bool)

(assert (=> b!2554445 m!2896419))

(assert (=> b!2554445 m!2896419))

(declare-fun m!2896421 () Bool)

(assert (=> b!2554445 m!2896421))

(assert (=> b!2553907 d!723838))

(declare-fun bm!162839 () Bool)

(declare-fun call!162844 () Regex!7609)

(declare-fun c!409762 () Bool)

(declare-fun c!409761 () Bool)

(assert (=> bm!162839 (= call!162844 (derivativeStep!2178 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340))) c!14016))))

(declare-fun b!2554447 () Bool)

(declare-fun e!1613804 () Regex!7609)

(declare-fun call!162845 () Regex!7609)

(assert (=> b!2554447 (= e!1613804 (Union!7609 call!162844 call!162845))))

(declare-fun b!2554448 () Bool)

(declare-fun c!409764 () Bool)

(assert (=> b!2554448 (= c!409764 (nullable!2526 (regOne!15730 r!27340)))))

(declare-fun e!1613802 () Regex!7609)

(declare-fun e!1613803 () Regex!7609)

(assert (=> b!2554448 (= e!1613802 e!1613803)))

(declare-fun b!2554449 () Bool)

(declare-fun call!162846 () Regex!7609)

(assert (=> b!2554449 (= e!1613803 (Union!7609 (Concat!12305 call!162846 (regTwo!15730 r!27340)) EmptyLang!7609))))

(declare-fun d!723840 () Bool)

(declare-fun lt!903993 () Regex!7609)

(assert (=> d!723840 (validRegex!3235 lt!903993)))

(declare-fun e!1613801 () Regex!7609)

(assert (=> d!723840 (= lt!903993 e!1613801)))

(declare-fun c!409760 () Bool)

(assert (=> d!723840 (= c!409760 (or ((_ is EmptyExpr!7609) r!27340) ((_ is EmptyLang!7609) r!27340)))))

(assert (=> d!723840 (validRegex!3235 r!27340)))

(assert (=> d!723840 (= (derivativeStep!2178 r!27340 c!14016) lt!903993)))

(declare-fun b!2554450 () Bool)

(declare-fun e!1613800 () Regex!7609)

(assert (=> b!2554450 (= e!1613801 e!1613800)))

(declare-fun c!409763 () Bool)

(assert (=> b!2554450 (= c!409763 ((_ is ElementMatch!7609) r!27340))))

(declare-fun b!2554451 () Bool)

(assert (=> b!2554451 (= e!1613801 EmptyLang!7609)))

(declare-fun bm!162840 () Bool)

(assert (=> bm!162840 (= call!162845 (derivativeStep!2178 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340)) c!14016))))

(declare-fun bm!162841 () Bool)

(declare-fun call!162847 () Regex!7609)

(assert (=> bm!162841 (= call!162846 call!162847)))

(declare-fun b!2554452 () Bool)

(assert (=> b!2554452 (= e!1613800 (ite (= c!14016 (c!409621 r!27340)) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2554453 () Bool)

(assert (=> b!2554453 (= e!1613802 (Concat!12305 call!162847 r!27340))))

(declare-fun b!2554454 () Bool)

(assert (=> b!2554454 (= c!409761 ((_ is Union!7609) r!27340))))

(assert (=> b!2554454 (= e!1613800 e!1613804)))

(declare-fun b!2554455 () Bool)

(assert (=> b!2554455 (= e!1613804 e!1613802)))

(assert (=> b!2554455 (= c!409762 ((_ is Star!7609) r!27340))))

(declare-fun bm!162842 () Bool)

(assert (=> bm!162842 (= call!162847 call!162844)))

(declare-fun b!2554456 () Bool)

(assert (=> b!2554456 (= e!1613803 (Union!7609 (Concat!12305 call!162846 (regTwo!15730 r!27340)) call!162845))))

(assert (= (and d!723840 c!409760) b!2554451))

(assert (= (and d!723840 (not c!409760)) b!2554450))

(assert (= (and b!2554450 c!409763) b!2554452))

(assert (= (and b!2554450 (not c!409763)) b!2554454))

(assert (= (and b!2554454 c!409761) b!2554447))

(assert (= (and b!2554454 (not c!409761)) b!2554455))

(assert (= (and b!2554455 c!409762) b!2554453))

(assert (= (and b!2554455 (not c!409762)) b!2554448))

(assert (= (and b!2554448 c!409764) b!2554456))

(assert (= (and b!2554448 (not c!409764)) b!2554449))

(assert (= (or b!2554456 b!2554449) bm!162841))

(assert (= (or b!2554453 bm!162841) bm!162842))

(assert (= (or b!2554447 b!2554456) bm!162840))

(assert (= (or b!2554447 bm!162842) bm!162839))

(declare-fun m!2896423 () Bool)

(assert (=> bm!162839 m!2896423))

(assert (=> b!2554448 m!2896027))

(declare-fun m!2896425 () Bool)

(assert (=> d!723840 m!2896425))

(assert (=> d!723840 m!2896001))

(declare-fun m!2896427 () Bool)

(assert (=> bm!162840 m!2896427))

(assert (=> b!2553907 d!723840))

(declare-fun b!2554457 () Bool)

(declare-fun e!1613809 () Bool)

(assert (=> b!2554457 (= e!1613809 (matchR!3554 (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 (_2!17332 lt!903904))) (tail!4091 (_2!17332 lt!903904))))))

(declare-fun b!2554458 () Bool)

(declare-fun e!1613807 () Bool)

(declare-fun e!1613805 () Bool)

(assert (=> b!2554458 (= e!1613807 e!1613805)))

(declare-fun res!1075919 () Bool)

(assert (=> b!2554458 (=> (not res!1075919) (not e!1613805))))

(declare-fun lt!903994 () Bool)

(assert (=> b!2554458 (= res!1075919 (not lt!903994))))

(declare-fun b!2554459 () Bool)

(assert (=> b!2554459 (= e!1613809 (nullable!2526 (regTwo!15730 r!27340)))))

(declare-fun b!2554461 () Bool)

(declare-fun e!1613808 () Bool)

(assert (=> b!2554461 (= e!1613808 (not lt!903994))))

(declare-fun b!2554462 () Bool)

(declare-fun e!1613811 () Bool)

(assert (=> b!2554462 (= e!1613805 e!1613811)))

(declare-fun res!1075918 () Bool)

(assert (=> b!2554462 (=> res!1075918 e!1613811)))

(declare-fun call!162848 () Bool)

(assert (=> b!2554462 (= res!1075918 call!162848)))

(declare-fun b!2554463 () Bool)

(declare-fun res!1075916 () Bool)

(declare-fun e!1613806 () Bool)

(assert (=> b!2554463 (=> (not res!1075916) (not e!1613806))))

(assert (=> b!2554463 (= res!1075916 (isEmpty!17027 (tail!4091 (_2!17332 lt!903904))))))

(declare-fun b!2554464 () Bool)

(declare-fun res!1075923 () Bool)

(assert (=> b!2554464 (=> res!1075923 e!1613811)))

(assert (=> b!2554464 (= res!1075923 (not (isEmpty!17027 (tail!4091 (_2!17332 lt!903904)))))))

(declare-fun b!2554465 () Bool)

(declare-fun e!1613810 () Bool)

(assert (=> b!2554465 (= e!1613810 e!1613808)))

(declare-fun c!409767 () Bool)

(assert (=> b!2554465 (= c!409767 ((_ is EmptyLang!7609) (regTwo!15730 r!27340)))))

(declare-fun b!2554466 () Bool)

(assert (=> b!2554466 (= e!1613806 (= (head!5816 (_2!17332 lt!903904)) (c!409621 (regTwo!15730 r!27340))))))

(declare-fun b!2554467 () Bool)

(assert (=> b!2554467 (= e!1613811 (not (= (head!5816 (_2!17332 lt!903904)) (c!409621 (regTwo!15730 r!27340)))))))

(declare-fun b!2554468 () Bool)

(declare-fun res!1075920 () Bool)

(assert (=> b!2554468 (=> res!1075920 e!1613807)))

(assert (=> b!2554468 (= res!1075920 e!1613806)))

(declare-fun res!1075921 () Bool)

(assert (=> b!2554468 (=> (not res!1075921) (not e!1613806))))

(assert (=> b!2554468 (= res!1075921 lt!903994)))

(declare-fun b!2554469 () Bool)

(assert (=> b!2554469 (= e!1613810 (= lt!903994 call!162848))))

(declare-fun b!2554460 () Bool)

(declare-fun res!1075922 () Bool)

(assert (=> b!2554460 (=> (not res!1075922) (not e!1613806))))

(assert (=> b!2554460 (= res!1075922 (not call!162848))))

(declare-fun d!723842 () Bool)

(assert (=> d!723842 e!1613810))

(declare-fun c!409766 () Bool)

(assert (=> d!723842 (= c!409766 ((_ is EmptyExpr!7609) (regTwo!15730 r!27340)))))

(assert (=> d!723842 (= lt!903994 e!1613809)))

(declare-fun c!409765 () Bool)

(assert (=> d!723842 (= c!409765 (isEmpty!17027 (_2!17332 lt!903904)))))

(assert (=> d!723842 (validRegex!3235 (regTwo!15730 r!27340))))

(assert (=> d!723842 (= (matchR!3554 (regTwo!15730 r!27340) (_2!17332 lt!903904)) lt!903994)))

(declare-fun b!2554470 () Bool)

(declare-fun res!1075917 () Bool)

(assert (=> b!2554470 (=> res!1075917 e!1613807)))

(assert (=> b!2554470 (= res!1075917 (not ((_ is ElementMatch!7609) (regTwo!15730 r!27340))))))

(assert (=> b!2554470 (= e!1613808 e!1613807)))

(declare-fun bm!162843 () Bool)

(assert (=> bm!162843 (= call!162848 (isEmpty!17027 (_2!17332 lt!903904)))))

(assert (= (and d!723842 c!409765) b!2554459))

(assert (= (and d!723842 (not c!409765)) b!2554457))

(assert (= (and d!723842 c!409766) b!2554469))

(assert (= (and d!723842 (not c!409766)) b!2554465))

(assert (= (and b!2554465 c!409767) b!2554461))

(assert (= (and b!2554465 (not c!409767)) b!2554470))

(assert (= (and b!2554470 (not res!1075917)) b!2554468))

(assert (= (and b!2554468 res!1075921) b!2554460))

(assert (= (and b!2554460 res!1075922) b!2554463))

(assert (= (and b!2554463 res!1075916) b!2554466))

(assert (= (and b!2554468 (not res!1075920)) b!2554458))

(assert (= (and b!2554458 res!1075919) b!2554462))

(assert (= (and b!2554462 (not res!1075918)) b!2554464))

(assert (= (and b!2554464 (not res!1075923)) b!2554467))

(assert (= (or b!2554469 b!2554460 b!2554462) bm!162843))

(declare-fun m!2896429 () Bool)

(assert (=> bm!162843 m!2896429))

(declare-fun m!2896431 () Bool)

(assert (=> b!2554463 m!2896431))

(assert (=> b!2554463 m!2896431))

(declare-fun m!2896433 () Bool)

(assert (=> b!2554463 m!2896433))

(declare-fun m!2896435 () Bool)

(assert (=> b!2554457 m!2896435))

(assert (=> b!2554457 m!2896435))

(declare-fun m!2896437 () Bool)

(assert (=> b!2554457 m!2896437))

(assert (=> b!2554457 m!2896431))

(assert (=> b!2554457 m!2896437))

(assert (=> b!2554457 m!2896431))

(declare-fun m!2896439 () Bool)

(assert (=> b!2554457 m!2896439))

(declare-fun m!2896441 () Bool)

(assert (=> b!2554459 m!2896441))

(assert (=> d!723842 m!2896429))

(assert (=> d!723842 m!2896241))

(assert (=> b!2554466 m!2896435))

(assert (=> b!2554464 m!2896431))

(assert (=> b!2554464 m!2896431))

(assert (=> b!2554464 m!2896433))

(assert (=> b!2554467 m!2896435))

(assert (=> b!2553897 d!723842))

(declare-fun b!2554471 () Bool)

(declare-fun e!1613814 () Bool)

(declare-fun call!162850 () Bool)

(assert (=> b!2554471 (= e!1613814 call!162850)))

(declare-fun b!2554472 () Bool)

(declare-fun e!1613817 () Bool)

(declare-fun call!162849 () Bool)

(assert (=> b!2554472 (= e!1613817 call!162849)))

(declare-fun b!2554473 () Bool)

(declare-fun e!1613818 () Bool)

(assert (=> b!2554473 (= e!1613818 e!1613814)))

(declare-fun res!1075924 () Bool)

(assert (=> b!2554473 (= res!1075924 (not (nullable!2526 (reg!7938 r!27340))))))

(assert (=> b!2554473 (=> (not res!1075924) (not e!1613814))))

(declare-fun bm!162844 () Bool)

(declare-fun c!409768 () Bool)

(declare-fun c!409769 () Bool)

(assert (=> bm!162844 (= call!162850 (validRegex!3235 (ite c!409768 (reg!7938 r!27340) (ite c!409769 (regOne!15731 r!27340) (regTwo!15730 r!27340)))))))

(declare-fun d!723844 () Bool)

(declare-fun res!1075925 () Bool)

(declare-fun e!1613815 () Bool)

(assert (=> d!723844 (=> res!1075925 e!1613815)))

(assert (=> d!723844 (= res!1075925 ((_ is ElementMatch!7609) r!27340))))

(assert (=> d!723844 (= (validRegex!3235 r!27340) e!1613815)))

(declare-fun b!2554474 () Bool)

(declare-fun e!1613816 () Bool)

(assert (=> b!2554474 (= e!1613818 e!1613816)))

(assert (=> b!2554474 (= c!409769 ((_ is Union!7609) r!27340))))

(declare-fun b!2554475 () Bool)

(assert (=> b!2554475 (= e!1613815 e!1613818)))

(assert (=> b!2554475 (= c!409768 ((_ is Star!7609) r!27340))))

(declare-fun b!2554476 () Bool)

(declare-fun res!1075927 () Bool)

(declare-fun e!1613812 () Bool)

(assert (=> b!2554476 (=> res!1075927 e!1613812)))

(assert (=> b!2554476 (= res!1075927 (not ((_ is Concat!12305) r!27340)))))

(assert (=> b!2554476 (= e!1613816 e!1613812)))

(declare-fun b!2554477 () Bool)

(declare-fun e!1613813 () Bool)

(assert (=> b!2554477 (= e!1613812 e!1613813)))

(declare-fun res!1075928 () Bool)

(assert (=> b!2554477 (=> (not res!1075928) (not e!1613813))))

(assert (=> b!2554477 (= res!1075928 call!162849)))

(declare-fun bm!162845 () Bool)

(assert (=> bm!162845 (= call!162849 (validRegex!3235 (ite c!409769 (regTwo!15731 r!27340) (regOne!15730 r!27340))))))

(declare-fun bm!162846 () Bool)

(declare-fun call!162851 () Bool)

(assert (=> bm!162846 (= call!162851 call!162850)))

(declare-fun b!2554478 () Bool)

(declare-fun res!1075926 () Bool)

(assert (=> b!2554478 (=> (not res!1075926) (not e!1613817))))

(assert (=> b!2554478 (= res!1075926 call!162851)))

(assert (=> b!2554478 (= e!1613816 e!1613817)))

(declare-fun b!2554479 () Bool)

(assert (=> b!2554479 (= e!1613813 call!162851)))

(assert (= (and d!723844 (not res!1075925)) b!2554475))

(assert (= (and b!2554475 c!409768) b!2554473))

(assert (= (and b!2554475 (not c!409768)) b!2554474))

(assert (= (and b!2554473 res!1075924) b!2554471))

(assert (= (and b!2554474 c!409769) b!2554478))

(assert (= (and b!2554474 (not c!409769)) b!2554476))

(assert (= (and b!2554478 res!1075926) b!2554472))

(assert (= (and b!2554476 (not res!1075927)) b!2554477))

(assert (= (and b!2554477 res!1075928) b!2554479))

(assert (= (or b!2554478 b!2554479) bm!162846))

(assert (= (or b!2554472 b!2554477) bm!162845))

(assert (= (or b!2554471 bm!162846) bm!162844))

(declare-fun m!2896443 () Bool)

(assert (=> b!2554473 m!2896443))

(declare-fun m!2896445 () Bool)

(assert (=> bm!162844 m!2896445))

(declare-fun m!2896447 () Bool)

(assert (=> bm!162845 m!2896447))

(assert (=> start!247600 d!723844))

(declare-fun b!2554480 () Bool)

(declare-fun e!1613823 () Bool)

(assert (=> b!2554480 (= e!1613823 (matchR!3554 (derivativeStep!2178 lt!903906 (head!5816 tl!4068)) (tail!4091 tl!4068)))))

(declare-fun b!2554481 () Bool)

(declare-fun e!1613821 () Bool)

(declare-fun e!1613819 () Bool)

(assert (=> b!2554481 (= e!1613821 e!1613819)))

(declare-fun res!1075932 () Bool)

(assert (=> b!2554481 (=> (not res!1075932) (not e!1613819))))

(declare-fun lt!903995 () Bool)

(assert (=> b!2554481 (= res!1075932 (not lt!903995))))

(declare-fun b!2554482 () Bool)

(assert (=> b!2554482 (= e!1613823 (nullable!2526 lt!903906))))

(declare-fun b!2554484 () Bool)

(declare-fun e!1613822 () Bool)

(assert (=> b!2554484 (= e!1613822 (not lt!903995))))

(declare-fun b!2554485 () Bool)

(declare-fun e!1613825 () Bool)

(assert (=> b!2554485 (= e!1613819 e!1613825)))

(declare-fun res!1075931 () Bool)

(assert (=> b!2554485 (=> res!1075931 e!1613825)))

(declare-fun call!162852 () Bool)

(assert (=> b!2554485 (= res!1075931 call!162852)))

(declare-fun b!2554486 () Bool)

(declare-fun res!1075929 () Bool)

(declare-fun e!1613820 () Bool)

(assert (=> b!2554486 (=> (not res!1075929) (not e!1613820))))

(assert (=> b!2554486 (= res!1075929 (isEmpty!17027 (tail!4091 tl!4068)))))

(declare-fun b!2554487 () Bool)

(declare-fun res!1075936 () Bool)

(assert (=> b!2554487 (=> res!1075936 e!1613825)))

(assert (=> b!2554487 (= res!1075936 (not (isEmpty!17027 (tail!4091 tl!4068))))))

(declare-fun b!2554488 () Bool)

(declare-fun e!1613824 () Bool)

(assert (=> b!2554488 (= e!1613824 e!1613822)))

(declare-fun c!409772 () Bool)

(assert (=> b!2554488 (= c!409772 ((_ is EmptyLang!7609) lt!903906))))

(declare-fun b!2554489 () Bool)

(assert (=> b!2554489 (= e!1613820 (= (head!5816 tl!4068) (c!409621 lt!903906)))))

(declare-fun b!2554490 () Bool)

(assert (=> b!2554490 (= e!1613825 (not (= (head!5816 tl!4068) (c!409621 lt!903906))))))

(declare-fun b!2554491 () Bool)

(declare-fun res!1075933 () Bool)

(assert (=> b!2554491 (=> res!1075933 e!1613821)))

(assert (=> b!2554491 (= res!1075933 e!1613820)))

(declare-fun res!1075934 () Bool)

(assert (=> b!2554491 (=> (not res!1075934) (not e!1613820))))

(assert (=> b!2554491 (= res!1075934 lt!903995)))

(declare-fun b!2554492 () Bool)

(assert (=> b!2554492 (= e!1613824 (= lt!903995 call!162852))))

(declare-fun b!2554483 () Bool)

(declare-fun res!1075935 () Bool)

(assert (=> b!2554483 (=> (not res!1075935) (not e!1613820))))

(assert (=> b!2554483 (= res!1075935 (not call!162852))))

(declare-fun d!723846 () Bool)

(assert (=> d!723846 e!1613824))

(declare-fun c!409771 () Bool)

(assert (=> d!723846 (= c!409771 ((_ is EmptyExpr!7609) lt!903906))))

(assert (=> d!723846 (= lt!903995 e!1613823)))

(declare-fun c!409770 () Bool)

(assert (=> d!723846 (= c!409770 (isEmpty!17027 tl!4068))))

(assert (=> d!723846 (validRegex!3235 lt!903906)))

(assert (=> d!723846 (= (matchR!3554 lt!903906 tl!4068) lt!903995)))

(declare-fun b!2554493 () Bool)

(declare-fun res!1075930 () Bool)

(assert (=> b!2554493 (=> res!1075930 e!1613821)))

(assert (=> b!2554493 (= res!1075930 (not ((_ is ElementMatch!7609) lt!903906)))))

(assert (=> b!2554493 (= e!1613822 e!1613821)))

(declare-fun bm!162847 () Bool)

(assert (=> bm!162847 (= call!162852 (isEmpty!17027 tl!4068))))

(assert (= (and d!723846 c!409770) b!2554482))

(assert (= (and d!723846 (not c!409770)) b!2554480))

(assert (= (and d!723846 c!409771) b!2554492))

(assert (= (and d!723846 (not c!409771)) b!2554488))

(assert (= (and b!2554488 c!409772) b!2554484))

(assert (= (and b!2554488 (not c!409772)) b!2554493))

(assert (= (and b!2554493 (not res!1075930)) b!2554491))

(assert (= (and b!2554491 res!1075934) b!2554483))

(assert (= (and b!2554483 res!1075935) b!2554486))

(assert (= (and b!2554486 res!1075929) b!2554489))

(assert (= (and b!2554491 (not res!1075933)) b!2554481))

(assert (= (and b!2554481 res!1075932) b!2554485))

(assert (= (and b!2554485 (not res!1075931)) b!2554487))

(assert (= (and b!2554487 (not res!1075936)) b!2554490))

(assert (= (or b!2554492 b!2554483 b!2554485) bm!162847))

(assert (=> bm!162847 m!2896161))

(assert (=> b!2554486 m!2896163))

(assert (=> b!2554486 m!2896163))

(assert (=> b!2554486 m!2896165))

(assert (=> b!2554480 m!2896167))

(assert (=> b!2554480 m!2896167))

(declare-fun m!2896449 () Bool)

(assert (=> b!2554480 m!2896449))

(assert (=> b!2554480 m!2896163))

(assert (=> b!2554480 m!2896449))

(assert (=> b!2554480 m!2896163))

(declare-fun m!2896451 () Bool)

(assert (=> b!2554480 m!2896451))

(declare-fun m!2896453 () Bool)

(assert (=> b!2554482 m!2896453))

(assert (=> d!723846 m!2896161))

(assert (=> d!723846 m!2896333))

(assert (=> b!2554489 m!2896167))

(assert (=> b!2554487 m!2896163))

(assert (=> b!2554487 m!2896163))

(assert (=> b!2554487 m!2896165))

(assert (=> b!2554490 m!2896167))

(assert (=> b!2553901 d!723846))

(declare-fun b!2554494 () Bool)

(declare-fun e!1613830 () Bool)

(assert (=> b!2554494 (= e!1613830 (matchR!3554 (derivativeStep!2178 lt!903911 (head!5816 (_1!17332 lt!903904))) (tail!4091 (_1!17332 lt!903904))))))

(declare-fun b!2554495 () Bool)

(declare-fun e!1613828 () Bool)

(declare-fun e!1613826 () Bool)

(assert (=> b!2554495 (= e!1613828 e!1613826)))

(declare-fun res!1075940 () Bool)

(assert (=> b!2554495 (=> (not res!1075940) (not e!1613826))))

(declare-fun lt!903996 () Bool)

(assert (=> b!2554495 (= res!1075940 (not lt!903996))))

(declare-fun b!2554496 () Bool)

(assert (=> b!2554496 (= e!1613830 (nullable!2526 lt!903911))))

(declare-fun b!2554498 () Bool)

(declare-fun e!1613829 () Bool)

(assert (=> b!2554498 (= e!1613829 (not lt!903996))))

(declare-fun b!2554499 () Bool)

(declare-fun e!1613832 () Bool)

(assert (=> b!2554499 (= e!1613826 e!1613832)))

(declare-fun res!1075939 () Bool)

(assert (=> b!2554499 (=> res!1075939 e!1613832)))

(declare-fun call!162853 () Bool)

(assert (=> b!2554499 (= res!1075939 call!162853)))

(declare-fun b!2554500 () Bool)

(declare-fun res!1075937 () Bool)

(declare-fun e!1613827 () Bool)

(assert (=> b!2554500 (=> (not res!1075937) (not e!1613827))))

(assert (=> b!2554500 (= res!1075937 (isEmpty!17027 (tail!4091 (_1!17332 lt!903904))))))

(declare-fun b!2554501 () Bool)

(declare-fun res!1075944 () Bool)

(assert (=> b!2554501 (=> res!1075944 e!1613832)))

(assert (=> b!2554501 (= res!1075944 (not (isEmpty!17027 (tail!4091 (_1!17332 lt!903904)))))))

(declare-fun b!2554502 () Bool)

(declare-fun e!1613831 () Bool)

(assert (=> b!2554502 (= e!1613831 e!1613829)))

(declare-fun c!409775 () Bool)

(assert (=> b!2554502 (= c!409775 ((_ is EmptyLang!7609) lt!903911))))

(declare-fun b!2554503 () Bool)

(assert (=> b!2554503 (= e!1613827 (= (head!5816 (_1!17332 lt!903904)) (c!409621 lt!903911)))))

(declare-fun b!2554504 () Bool)

(assert (=> b!2554504 (= e!1613832 (not (= (head!5816 (_1!17332 lt!903904)) (c!409621 lt!903911))))))

(declare-fun b!2554505 () Bool)

(declare-fun res!1075941 () Bool)

(assert (=> b!2554505 (=> res!1075941 e!1613828)))

(assert (=> b!2554505 (= res!1075941 e!1613827)))

(declare-fun res!1075942 () Bool)

(assert (=> b!2554505 (=> (not res!1075942) (not e!1613827))))

(assert (=> b!2554505 (= res!1075942 lt!903996)))

(declare-fun b!2554506 () Bool)

(assert (=> b!2554506 (= e!1613831 (= lt!903996 call!162853))))

(declare-fun b!2554497 () Bool)

(declare-fun res!1075943 () Bool)

(assert (=> b!2554497 (=> (not res!1075943) (not e!1613827))))

(assert (=> b!2554497 (= res!1075943 (not call!162853))))

(declare-fun d!723848 () Bool)

(assert (=> d!723848 e!1613831))

(declare-fun c!409774 () Bool)

(assert (=> d!723848 (= c!409774 ((_ is EmptyExpr!7609) lt!903911))))

(assert (=> d!723848 (= lt!903996 e!1613830)))

(declare-fun c!409773 () Bool)

(assert (=> d!723848 (= c!409773 (isEmpty!17027 (_1!17332 lt!903904)))))

(assert (=> d!723848 (validRegex!3235 lt!903911)))

(assert (=> d!723848 (= (matchR!3554 lt!903911 (_1!17332 lt!903904)) lt!903996)))

(declare-fun b!2554507 () Bool)

(declare-fun res!1075938 () Bool)

(assert (=> b!2554507 (=> res!1075938 e!1613828)))

(assert (=> b!2554507 (= res!1075938 (not ((_ is ElementMatch!7609) lt!903911)))))

(assert (=> b!2554507 (= e!1613829 e!1613828)))

(declare-fun bm!162848 () Bool)

(assert (=> bm!162848 (= call!162853 (isEmpty!17027 (_1!17332 lt!903904)))))

(assert (= (and d!723848 c!409773) b!2554496))

(assert (= (and d!723848 (not c!409773)) b!2554494))

(assert (= (and d!723848 c!409774) b!2554506))

(assert (= (and d!723848 (not c!409774)) b!2554502))

(assert (= (and b!2554502 c!409775) b!2554498))

(assert (= (and b!2554502 (not c!409775)) b!2554507))

(assert (= (and b!2554507 (not res!1075938)) b!2554505))

(assert (= (and b!2554505 res!1075942) b!2554497))

(assert (= (and b!2554497 res!1075943) b!2554500))

(assert (= (and b!2554500 res!1075937) b!2554503))

(assert (= (and b!2554505 (not res!1075941)) b!2554495))

(assert (= (and b!2554495 res!1075940) b!2554499))

(assert (= (and b!2554499 (not res!1075939)) b!2554501))

(assert (= (and b!2554501 (not res!1075944)) b!2554504))

(assert (= (or b!2554506 b!2554497 b!2554499) bm!162848))

(declare-fun m!2896455 () Bool)

(assert (=> bm!162848 m!2896455))

(declare-fun m!2896457 () Bool)

(assert (=> b!2554500 m!2896457))

(assert (=> b!2554500 m!2896457))

(declare-fun m!2896459 () Bool)

(assert (=> b!2554500 m!2896459))

(declare-fun m!2896461 () Bool)

(assert (=> b!2554494 m!2896461))

(assert (=> b!2554494 m!2896461))

(declare-fun m!2896463 () Bool)

(assert (=> b!2554494 m!2896463))

(assert (=> b!2554494 m!2896457))

(assert (=> b!2554494 m!2896463))

(assert (=> b!2554494 m!2896457))

(declare-fun m!2896465 () Bool)

(assert (=> b!2554494 m!2896465))

(declare-fun m!2896467 () Bool)

(assert (=> b!2554496 m!2896467))

(assert (=> d!723848 m!2896455))

(assert (=> d!723848 m!2896099))

(assert (=> b!2554503 m!2896461))

(assert (=> b!2554501 m!2896457))

(assert (=> b!2554501 m!2896457))

(assert (=> b!2554501 m!2896459))

(assert (=> b!2554504 m!2896461))

(assert (=> b!2553900 d!723848))

(declare-fun b!2554520 () Bool)

(declare-fun e!1613835 () Bool)

(declare-fun tp!814490 () Bool)

(assert (=> b!2554520 (= e!1613835 tp!814490)))

(declare-fun b!2554518 () Bool)

(assert (=> b!2554518 (= e!1613835 tp_is_empty!13073)))

(assert (=> b!2553908 (= tp!814434 e!1613835)))

(declare-fun b!2554521 () Bool)

(declare-fun tp!814488 () Bool)

(declare-fun tp!814491 () Bool)

(assert (=> b!2554521 (= e!1613835 (and tp!814488 tp!814491))))

(declare-fun b!2554519 () Bool)

(declare-fun tp!814489 () Bool)

(declare-fun tp!814487 () Bool)

(assert (=> b!2554519 (= e!1613835 (and tp!814489 tp!814487))))

(assert (= (and b!2553908 ((_ is ElementMatch!7609) (regOne!15731 r!27340))) b!2554518))

(assert (= (and b!2553908 ((_ is Concat!12305) (regOne!15731 r!27340))) b!2554519))

(assert (= (and b!2553908 ((_ is Star!7609) (regOne!15731 r!27340))) b!2554520))

(assert (= (and b!2553908 ((_ is Union!7609) (regOne!15731 r!27340))) b!2554521))

(declare-fun b!2554524 () Bool)

(declare-fun e!1613836 () Bool)

(declare-fun tp!814495 () Bool)

(assert (=> b!2554524 (= e!1613836 tp!814495)))

(declare-fun b!2554522 () Bool)

(assert (=> b!2554522 (= e!1613836 tp_is_empty!13073)))

(assert (=> b!2553908 (= tp!814436 e!1613836)))

(declare-fun b!2554525 () Bool)

(declare-fun tp!814493 () Bool)

(declare-fun tp!814496 () Bool)

(assert (=> b!2554525 (= e!1613836 (and tp!814493 tp!814496))))

(declare-fun b!2554523 () Bool)

(declare-fun tp!814494 () Bool)

(declare-fun tp!814492 () Bool)

(assert (=> b!2554523 (= e!1613836 (and tp!814494 tp!814492))))

(assert (= (and b!2553908 ((_ is ElementMatch!7609) (regTwo!15731 r!27340))) b!2554522))

(assert (= (and b!2553908 ((_ is Concat!12305) (regTwo!15731 r!27340))) b!2554523))

(assert (= (and b!2553908 ((_ is Star!7609) (regTwo!15731 r!27340))) b!2554524))

(assert (= (and b!2553908 ((_ is Union!7609) (regTwo!15731 r!27340))) b!2554525))

(declare-fun b!2554530 () Bool)

(declare-fun e!1613839 () Bool)

(declare-fun tp!814499 () Bool)

(assert (=> b!2554530 (= e!1613839 (and tp_is_empty!13073 tp!814499))))

(assert (=> b!2553906 (= tp!814437 e!1613839)))

(assert (= (and b!2553906 ((_ is Cons!29574) (t!211373 tl!4068))) b!2554530))

(declare-fun b!2554533 () Bool)

(declare-fun e!1613840 () Bool)

(declare-fun tp!814503 () Bool)

(assert (=> b!2554533 (= e!1613840 tp!814503)))

(declare-fun b!2554531 () Bool)

(assert (=> b!2554531 (= e!1613840 tp_is_empty!13073)))

(assert (=> b!2553895 (= tp!814433 e!1613840)))

(declare-fun b!2554534 () Bool)

(declare-fun tp!814501 () Bool)

(declare-fun tp!814504 () Bool)

(assert (=> b!2554534 (= e!1613840 (and tp!814501 tp!814504))))

(declare-fun b!2554532 () Bool)

(declare-fun tp!814502 () Bool)

(declare-fun tp!814500 () Bool)

(assert (=> b!2554532 (= e!1613840 (and tp!814502 tp!814500))))

(assert (= (and b!2553895 ((_ is ElementMatch!7609) (reg!7938 r!27340))) b!2554531))

(assert (= (and b!2553895 ((_ is Concat!12305) (reg!7938 r!27340))) b!2554532))

(assert (= (and b!2553895 ((_ is Star!7609) (reg!7938 r!27340))) b!2554533))

(assert (= (and b!2553895 ((_ is Union!7609) (reg!7938 r!27340))) b!2554534))

(declare-fun b!2554537 () Bool)

(declare-fun e!1613841 () Bool)

(declare-fun tp!814508 () Bool)

(assert (=> b!2554537 (= e!1613841 tp!814508)))

(declare-fun b!2554535 () Bool)

(assert (=> b!2554535 (= e!1613841 tp_is_empty!13073)))

(assert (=> b!2553905 (= tp!814435 e!1613841)))

(declare-fun b!2554538 () Bool)

(declare-fun tp!814506 () Bool)

(declare-fun tp!814509 () Bool)

(assert (=> b!2554538 (= e!1613841 (and tp!814506 tp!814509))))

(declare-fun b!2554536 () Bool)

(declare-fun tp!814507 () Bool)

(declare-fun tp!814505 () Bool)

(assert (=> b!2554536 (= e!1613841 (and tp!814507 tp!814505))))

(assert (= (and b!2553905 ((_ is ElementMatch!7609) (regOne!15730 r!27340))) b!2554535))

(assert (= (and b!2553905 ((_ is Concat!12305) (regOne!15730 r!27340))) b!2554536))

(assert (= (and b!2553905 ((_ is Star!7609) (regOne!15730 r!27340))) b!2554537))

(assert (= (and b!2553905 ((_ is Union!7609) (regOne!15730 r!27340))) b!2554538))

(declare-fun b!2554541 () Bool)

(declare-fun e!1613842 () Bool)

(declare-fun tp!814513 () Bool)

(assert (=> b!2554541 (= e!1613842 tp!814513)))

(declare-fun b!2554539 () Bool)

(assert (=> b!2554539 (= e!1613842 tp_is_empty!13073)))

(assert (=> b!2553905 (= tp!814438 e!1613842)))

(declare-fun b!2554542 () Bool)

(declare-fun tp!814511 () Bool)

(declare-fun tp!814514 () Bool)

(assert (=> b!2554542 (= e!1613842 (and tp!814511 tp!814514))))

(declare-fun b!2554540 () Bool)

(declare-fun tp!814512 () Bool)

(declare-fun tp!814510 () Bool)

(assert (=> b!2554540 (= e!1613842 (and tp!814512 tp!814510))))

(assert (= (and b!2553905 ((_ is ElementMatch!7609) (regTwo!15730 r!27340))) b!2554539))

(assert (= (and b!2553905 ((_ is Concat!12305) (regTwo!15730 r!27340))) b!2554540))

(assert (= (and b!2553905 ((_ is Star!7609) (regTwo!15730 r!27340))) b!2554541))

(assert (= (and b!2553905 ((_ is Union!7609) (regTwo!15730 r!27340))) b!2554542))

(check-sat (not b!2554073) (not b!2554537) (not b!2554086) (not b!2554030) (not b!2554482) (not d!723764) (not b!2554011) (not bm!162848) (not b!2554063) (not d!723746) (not bm!162812) (not d!723770) (not b!2554002) (not d!723838) (not b!2554480) (not d!723776) (not b!2554500) (not b!2554523) (not d!723774) (not b!2554466) (not b!2554334) (not b!2554004) (not b!2554443) (not b!2554427) (not bm!162845) (not d!723752) (not b!2554504) (not d!723848) (not b!2554490) (not b!2554536) (not bm!162790) (not b!2554426) (not d!723834) (not b!2554487) (not b!2554221) (not d!723836) (not bm!162813) (not bm!162774) (not b!2554425) (not bm!162788) (not bm!162773) (not b!2554088) (not b!2554519) (not d!723830) (not d!723840) (not b!2554538) (not b!2554457) (not b!2554077) (not bm!162818) (not b!2554467) (not b!2554232) (not b!2554089) (not b!2554521) (not b!2554541) (not b!2554040) (not b!2554237) (not d!723832) (not b!2554335) (not b!2554489) (not bm!162840) (not b!2554534) (not d!723822) (not b!2554009) (not b!2554240) (not b!2554542) (not b!2554050) (not bm!162791) (not d!723828) (not d!723846) (not bm!162821) (not b!2554494) (not b!2554525) (not b!2554042) (not b!2554008) (not b!2554195) (not b!2554079) (not b!2554486) (not b!2554065) (not b!2554069) (not b!2554052) (not d!723792) (not b!2554533) (not b!2554459) (not b!2554524) (not d!723842) (not d!723760) (not b!2554012) (not bm!162817) (not b!2554230) (not b!2554448) (not b!2554442) (not b!2554530) (not b!2554532) (not b!2554081) (not b!2554473) (not b!2554085) (not d!723766) (not b!2554239) (not b!2554501) (not b!2554046) (not b!2554540) (not b!2554070) (not b!2554464) (not d!723790) (not bm!162789) (not bm!162847) (not b!2554428) tp_is_empty!13073 (not d!723772) (not b!2554496) (not b!2554445) (not bm!162844) (not b!2554047) (not b!2554520) (not d!723800) (not b!2554429) (not b!2554463) (not b!2554503) (not b!2554072) (not b!2553957) (not bm!162843) (not d!723762) (not bm!162839) (not b!2554431) (not b!2554236))
(check-sat)
(get-model)

(declare-fun d!723962 () Bool)

(assert (=> d!723962 (= (nullable!2526 lt!903911) (nullableFct!751 lt!903911))))

(declare-fun bs!469690 () Bool)

(assert (= bs!469690 d!723962))

(declare-fun m!2896727 () Bool)

(assert (=> bs!469690 m!2896727))

(assert (=> b!2554496 d!723962))

(declare-fun d!723966 () Bool)

(assert (=> d!723966 (= (head!5816 tl!4068) (h!34994 tl!4068))))

(assert (=> b!2554089 d!723966))

(declare-fun b!2554775 () Bool)

(declare-fun e!1613984 () Bool)

(declare-fun call!162917 () Bool)

(assert (=> b!2554775 (= e!1613984 call!162917)))

(declare-fun b!2554776 () Bool)

(declare-fun e!1613987 () Bool)

(declare-fun call!162916 () Bool)

(assert (=> b!2554776 (= e!1613987 call!162916)))

(declare-fun b!2554777 () Bool)

(declare-fun e!1613988 () Bool)

(assert (=> b!2554777 (= e!1613988 e!1613984)))

(declare-fun res!1076027 () Bool)

(assert (=> b!2554777 (= res!1076027 (not (nullable!2526 (reg!7938 lt!903953))))))

(assert (=> b!2554777 (=> (not res!1076027) (not e!1613984))))

(declare-fun c!409852 () Bool)

(declare-fun c!409851 () Bool)

(declare-fun bm!162911 () Bool)

(assert (=> bm!162911 (= call!162917 (validRegex!3235 (ite c!409851 (reg!7938 lt!903953) (ite c!409852 (regOne!15731 lt!903953) (regTwo!15730 lt!903953)))))))

(declare-fun d!723968 () Bool)

(declare-fun res!1076028 () Bool)

(declare-fun e!1613985 () Bool)

(assert (=> d!723968 (=> res!1076028 e!1613985)))

(assert (=> d!723968 (= res!1076028 ((_ is ElementMatch!7609) lt!903953))))

(assert (=> d!723968 (= (validRegex!3235 lt!903953) e!1613985)))

(declare-fun b!2554778 () Bool)

(declare-fun e!1613986 () Bool)

(assert (=> b!2554778 (= e!1613988 e!1613986)))

(assert (=> b!2554778 (= c!409852 ((_ is Union!7609) lt!903953))))

(declare-fun b!2554779 () Bool)

(assert (=> b!2554779 (= e!1613985 e!1613988)))

(assert (=> b!2554779 (= c!409851 ((_ is Star!7609) lt!903953))))

(declare-fun b!2554780 () Bool)

(declare-fun res!1076030 () Bool)

(declare-fun e!1613982 () Bool)

(assert (=> b!2554780 (=> res!1076030 e!1613982)))

(assert (=> b!2554780 (= res!1076030 (not ((_ is Concat!12305) lt!903953)))))

(assert (=> b!2554780 (= e!1613986 e!1613982)))

(declare-fun b!2554781 () Bool)

(declare-fun e!1613983 () Bool)

(assert (=> b!2554781 (= e!1613982 e!1613983)))

(declare-fun res!1076031 () Bool)

(assert (=> b!2554781 (=> (not res!1076031) (not e!1613983))))

(assert (=> b!2554781 (= res!1076031 call!162916)))

(declare-fun bm!162912 () Bool)

(assert (=> bm!162912 (= call!162916 (validRegex!3235 (ite c!409852 (regTwo!15731 lt!903953) (regOne!15730 lt!903953))))))

(declare-fun bm!162913 () Bool)

(declare-fun call!162918 () Bool)

(assert (=> bm!162913 (= call!162918 call!162917)))

(declare-fun b!2554782 () Bool)

(declare-fun res!1076029 () Bool)

(assert (=> b!2554782 (=> (not res!1076029) (not e!1613987))))

(assert (=> b!2554782 (= res!1076029 call!162918)))

(assert (=> b!2554782 (= e!1613986 e!1613987)))

(declare-fun b!2554783 () Bool)

(assert (=> b!2554783 (= e!1613983 call!162918)))

(assert (= (and d!723968 (not res!1076028)) b!2554779))

(assert (= (and b!2554779 c!409851) b!2554777))

(assert (= (and b!2554779 (not c!409851)) b!2554778))

(assert (= (and b!2554777 res!1076027) b!2554775))

(assert (= (and b!2554778 c!409852) b!2554782))

(assert (= (and b!2554778 (not c!409852)) b!2554780))

(assert (= (and b!2554782 res!1076029) b!2554776))

(assert (= (and b!2554780 (not res!1076030)) b!2554781))

(assert (= (and b!2554781 res!1076031) b!2554783))

(assert (= (or b!2554782 b!2554783) bm!162913))

(assert (= (or b!2554776 b!2554781) bm!162912))

(assert (= (or b!2554775 bm!162913) bm!162911))

(declare-fun m!2896739 () Bool)

(assert (=> b!2554777 m!2896739))

(declare-fun m!2896741 () Bool)

(assert (=> bm!162911 m!2896741))

(declare-fun m!2896743 () Bool)

(assert (=> bm!162912 m!2896743))

(assert (=> d!723776 d!723968))

(declare-fun b!2554798 () Bool)

(declare-fun e!1613998 () Bool)

(declare-fun call!162921 () Bool)

(assert (=> b!2554798 (= e!1613998 call!162921)))

(declare-fun b!2554799 () Bool)

(declare-fun e!1614001 () Bool)

(declare-fun call!162920 () Bool)

(assert (=> b!2554799 (= e!1614001 call!162920)))

(declare-fun b!2554800 () Bool)

(declare-fun e!1614002 () Bool)

(assert (=> b!2554800 (= e!1614002 e!1613998)))

(declare-fun res!1076040 () Bool)

(assert (=> b!2554800 (= res!1076040 (not (nullable!2526 (reg!7938 (regTwo!15730 r!27340)))))))

(assert (=> b!2554800 (=> (not res!1076040) (not e!1613998))))

(declare-fun bm!162915 () Bool)

(declare-fun c!409856 () Bool)

(declare-fun c!409857 () Bool)

(assert (=> bm!162915 (= call!162921 (validRegex!3235 (ite c!409856 (reg!7938 (regTwo!15730 r!27340)) (ite c!409857 (regOne!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340))))))))

(declare-fun d!723972 () Bool)

(declare-fun res!1076041 () Bool)

(declare-fun e!1613999 () Bool)

(assert (=> d!723972 (=> res!1076041 e!1613999)))

(assert (=> d!723972 (= res!1076041 ((_ is ElementMatch!7609) (regTwo!15730 r!27340)))))

(assert (=> d!723972 (= (validRegex!3235 (regTwo!15730 r!27340)) e!1613999)))

(declare-fun b!2554801 () Bool)

(declare-fun e!1614000 () Bool)

(assert (=> b!2554801 (= e!1614002 e!1614000)))

(assert (=> b!2554801 (= c!409857 ((_ is Union!7609) (regTwo!15730 r!27340)))))

(declare-fun b!2554802 () Bool)

(assert (=> b!2554802 (= e!1613999 e!1614002)))

(assert (=> b!2554802 (= c!409856 ((_ is Star!7609) (regTwo!15730 r!27340)))))

(declare-fun b!2554803 () Bool)

(declare-fun res!1076043 () Bool)

(declare-fun e!1613996 () Bool)

(assert (=> b!2554803 (=> res!1076043 e!1613996)))

(assert (=> b!2554803 (= res!1076043 (not ((_ is Concat!12305) (regTwo!15730 r!27340))))))

(assert (=> b!2554803 (= e!1614000 e!1613996)))

(declare-fun b!2554804 () Bool)

(declare-fun e!1613997 () Bool)

(assert (=> b!2554804 (= e!1613996 e!1613997)))

(declare-fun res!1076044 () Bool)

(assert (=> b!2554804 (=> (not res!1076044) (not e!1613997))))

(assert (=> b!2554804 (= res!1076044 call!162920)))

(declare-fun bm!162916 () Bool)

(assert (=> bm!162916 (= call!162920 (validRegex!3235 (ite c!409857 (regTwo!15731 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340)))))))

(declare-fun bm!162917 () Bool)

(declare-fun call!162922 () Bool)

(assert (=> bm!162917 (= call!162922 call!162921)))

(declare-fun b!2554805 () Bool)

(declare-fun res!1076042 () Bool)

(assert (=> b!2554805 (=> (not res!1076042) (not e!1614001))))

(assert (=> b!2554805 (= res!1076042 call!162922)))

(assert (=> b!2554805 (= e!1614000 e!1614001)))

(declare-fun b!2554806 () Bool)

(assert (=> b!2554806 (= e!1613997 call!162922)))

(assert (= (and d!723972 (not res!1076041)) b!2554802))

(assert (= (and b!2554802 c!409856) b!2554800))

(assert (= (and b!2554802 (not c!409856)) b!2554801))

(assert (= (and b!2554800 res!1076040) b!2554798))

(assert (= (and b!2554801 c!409857) b!2554805))

(assert (= (and b!2554801 (not c!409857)) b!2554803))

(assert (= (and b!2554805 res!1076042) b!2554799))

(assert (= (and b!2554803 (not res!1076043)) b!2554804))

(assert (= (and b!2554804 res!1076044) b!2554806))

(assert (= (or b!2554805 b!2554806) bm!162917))

(assert (= (or b!2554799 b!2554804) bm!162916))

(assert (= (or b!2554798 bm!162917) bm!162915))

(declare-fun m!2896753 () Bool)

(assert (=> b!2554800 m!2896753))

(declare-fun m!2896755 () Bool)

(assert (=> bm!162915 m!2896755))

(declare-fun m!2896757 () Bool)

(assert (=> bm!162916 m!2896757))

(assert (=> d!723776 d!723972))

(declare-fun d!723976 () Bool)

(assert (=> d!723976 (= (isEmpty!17027 tl!4068) ((_ is Nil!29574) tl!4068))))

(assert (=> bm!162791 d!723976))

(declare-fun d!723978 () Bool)

(assert (=> d!723978 (= (isEmpty!17027 (tail!4091 (_2!17332 lt!903904))) ((_ is Nil!29574) (tail!4091 (_2!17332 lt!903904))))))

(assert (=> b!2554464 d!723978))

(declare-fun d!723980 () Bool)

(assert (=> d!723980 (= (tail!4091 (_2!17332 lt!903904)) (t!211373 (_2!17332 lt!903904)))))

(assert (=> b!2554464 d!723980))

(declare-fun b!2554807 () Bool)

(declare-fun e!1614003 () List!29674)

(assert (=> b!2554807 (= e!1614003 (_2!17332 lt!903904))))

(declare-fun b!2554809 () Bool)

(declare-fun res!1076045 () Bool)

(declare-fun e!1614004 () Bool)

(assert (=> b!2554809 (=> (not res!1076045) (not e!1614004))))

(declare-fun lt!904021 () List!29674)

(assert (=> b!2554809 (= res!1076045 (= (size!22952 lt!904021) (+ (size!22952 (t!211373 (_1!17332 lt!903904))) (size!22952 (_2!17332 lt!903904)))))))

(declare-fun b!2554810 () Bool)

(assert (=> b!2554810 (= e!1614004 (or (not (= (_2!17332 lt!903904) Nil!29574)) (= lt!904021 (t!211373 (_1!17332 lt!903904)))))))

(declare-fun b!2554808 () Bool)

(assert (=> b!2554808 (= e!1614003 (Cons!29574 (h!34994 (t!211373 (_1!17332 lt!903904))) (++!7266 (t!211373 (t!211373 (_1!17332 lt!903904))) (_2!17332 lt!903904))))))

(declare-fun d!723982 () Bool)

(assert (=> d!723982 e!1614004))

(declare-fun res!1076046 () Bool)

(assert (=> d!723982 (=> (not res!1076046) (not e!1614004))))

(assert (=> d!723982 (= res!1076046 (= (content!4072 lt!904021) ((_ map or) (content!4072 (t!211373 (_1!17332 lt!903904))) (content!4072 (_2!17332 lt!903904)))))))

(assert (=> d!723982 (= lt!904021 e!1614003)))

(declare-fun c!409858 () Bool)

(assert (=> d!723982 (= c!409858 ((_ is Nil!29574) (t!211373 (_1!17332 lt!903904))))))

(assert (=> d!723982 (= (++!7266 (t!211373 (_1!17332 lt!903904)) (_2!17332 lt!903904)) lt!904021)))

(assert (= (and d!723982 c!409858) b!2554807))

(assert (= (and d!723982 (not c!409858)) b!2554808))

(assert (= (and d!723982 res!1076046) b!2554809))

(assert (= (and b!2554809 res!1076045) b!2554810))

(declare-fun m!2896759 () Bool)

(assert (=> b!2554809 m!2896759))

(declare-fun m!2896761 () Bool)

(assert (=> b!2554809 m!2896761))

(assert (=> b!2554809 m!2896397))

(declare-fun m!2896763 () Bool)

(assert (=> b!2554808 m!2896763))

(declare-fun m!2896765 () Bool)

(assert (=> d!723982 m!2896765))

(declare-fun m!2896767 () Bool)

(assert (=> d!723982 m!2896767))

(assert (=> d!723982 m!2896405))

(assert (=> b!2554442 d!723982))

(declare-fun d!723984 () Bool)

(assert (=> d!723984 (= (isEmpty!17027 (tail!4091 (_1!17332 lt!903904))) ((_ is Nil!29574) (tail!4091 (_1!17332 lt!903904))))))

(assert (=> b!2554500 d!723984))

(declare-fun d!723986 () Bool)

(assert (=> d!723986 (= (tail!4091 (_1!17332 lt!903904)) (t!211373 (_1!17332 lt!903904)))))

(assert (=> b!2554500 d!723986))

(declare-fun d!723988 () Bool)

(assert (=> d!723988 (= (matchR!3554 lt!903902 tl!4068) (matchR!3554 (derivative!304 lt!903902 tl!4068) Nil!29574))))

(assert (=> d!723988 true))

(declare-fun _$108!351 () Unit!43403)

(assert (=> d!723988 (= (choose!15082 lt!903902 tl!4068) _$108!351)))

(declare-fun bs!469693 () Bool)

(assert (= bs!469693 d!723988))

(assert (=> bs!469693 m!2896021))

(assert (=> bs!469693 m!2896011))

(assert (=> bs!469693 m!2896011))

(assert (=> bs!469693 m!2896013))

(assert (=> d!723766 d!723988))

(assert (=> d!723766 d!723770))

(assert (=> d!723766 d!723792))

(assert (=> d!723766 d!723772))

(declare-fun b!2554834 () Bool)

(declare-fun e!1614021 () Bool)

(declare-fun call!162928 () Bool)

(assert (=> b!2554834 (= e!1614021 call!162928)))

(declare-fun b!2554835 () Bool)

(declare-fun e!1614024 () Bool)

(declare-fun call!162927 () Bool)

(assert (=> b!2554835 (= e!1614024 call!162927)))

(declare-fun b!2554836 () Bool)

(declare-fun e!1614025 () Bool)

(assert (=> b!2554836 (= e!1614025 e!1614021)))

(declare-fun res!1076060 () Bool)

(assert (=> b!2554836 (= res!1076060 (not (nullable!2526 (reg!7938 lt!903902))))))

(assert (=> b!2554836 (=> (not res!1076060) (not e!1614021))))

(declare-fun c!409864 () Bool)

(declare-fun bm!162922 () Bool)

(declare-fun c!409865 () Bool)

(assert (=> bm!162922 (= call!162928 (validRegex!3235 (ite c!409864 (reg!7938 lt!903902) (ite c!409865 (regOne!15731 lt!903902) (regTwo!15730 lt!903902)))))))

(declare-fun d!723996 () Bool)

(declare-fun res!1076061 () Bool)

(declare-fun e!1614022 () Bool)

(assert (=> d!723996 (=> res!1076061 e!1614022)))

(assert (=> d!723996 (= res!1076061 ((_ is ElementMatch!7609) lt!903902))))

(assert (=> d!723996 (= (validRegex!3235 lt!903902) e!1614022)))

(declare-fun b!2554837 () Bool)

(declare-fun e!1614023 () Bool)

(assert (=> b!2554837 (= e!1614025 e!1614023)))

(assert (=> b!2554837 (= c!409865 ((_ is Union!7609) lt!903902))))

(declare-fun b!2554838 () Bool)

(assert (=> b!2554838 (= e!1614022 e!1614025)))

(assert (=> b!2554838 (= c!409864 ((_ is Star!7609) lt!903902))))

(declare-fun b!2554839 () Bool)

(declare-fun res!1076063 () Bool)

(declare-fun e!1614019 () Bool)

(assert (=> b!2554839 (=> res!1076063 e!1614019)))

(assert (=> b!2554839 (= res!1076063 (not ((_ is Concat!12305) lt!903902)))))

(assert (=> b!2554839 (= e!1614023 e!1614019)))

(declare-fun b!2554840 () Bool)

(declare-fun e!1614020 () Bool)

(assert (=> b!2554840 (= e!1614019 e!1614020)))

(declare-fun res!1076064 () Bool)

(assert (=> b!2554840 (=> (not res!1076064) (not e!1614020))))

(assert (=> b!2554840 (= res!1076064 call!162927)))

(declare-fun bm!162923 () Bool)

(assert (=> bm!162923 (= call!162927 (validRegex!3235 (ite c!409865 (regTwo!15731 lt!903902) (regOne!15730 lt!903902))))))

(declare-fun bm!162924 () Bool)

(declare-fun call!162929 () Bool)

(assert (=> bm!162924 (= call!162929 call!162928)))

(declare-fun b!2554841 () Bool)

(declare-fun res!1076062 () Bool)

(assert (=> b!2554841 (=> (not res!1076062) (not e!1614024))))

(assert (=> b!2554841 (= res!1076062 call!162929)))

(assert (=> b!2554841 (= e!1614023 e!1614024)))

(declare-fun b!2554842 () Bool)

(assert (=> b!2554842 (= e!1614020 call!162929)))

(assert (= (and d!723996 (not res!1076061)) b!2554838))

(assert (= (and b!2554838 c!409864) b!2554836))

(assert (= (and b!2554838 (not c!409864)) b!2554837))

(assert (= (and b!2554836 res!1076060) b!2554834))

(assert (= (and b!2554837 c!409865) b!2554841))

(assert (= (and b!2554837 (not c!409865)) b!2554839))

(assert (= (and b!2554841 res!1076062) b!2554835))

(assert (= (and b!2554839 (not res!1076063)) b!2554840))

(assert (= (and b!2554840 res!1076064) b!2554842))

(assert (= (or b!2554841 b!2554842) bm!162924))

(assert (= (or b!2554835 b!2554840) bm!162923))

(assert (= (or b!2554834 bm!162924) bm!162922))

(declare-fun m!2896791 () Bool)

(assert (=> b!2554836 m!2896791))

(declare-fun m!2896793 () Bool)

(assert (=> bm!162922 m!2896793))

(declare-fun m!2896795 () Bool)

(assert (=> bm!162923 m!2896795))

(assert (=> d!723766 d!723996))

(declare-fun b!2554853 () Bool)

(declare-fun e!1614031 () List!29674)

(assert (=> b!2554853 (= e!1614031 (_2!17332 (get!9293 lt!903985)))))

(declare-fun b!2554855 () Bool)

(declare-fun res!1076065 () Bool)

(declare-fun e!1614032 () Bool)

(assert (=> b!2554855 (=> (not res!1076065) (not e!1614032))))

(declare-fun lt!904024 () List!29674)

(assert (=> b!2554855 (= res!1076065 (= (size!22952 lt!904024) (+ (size!22952 (_1!17332 (get!9293 lt!903985))) (size!22952 (_2!17332 (get!9293 lt!903985))))))))

(declare-fun b!2554856 () Bool)

(assert (=> b!2554856 (= e!1614032 (or (not (= (_2!17332 (get!9293 lt!903985)) Nil!29574)) (= lt!904024 (_1!17332 (get!9293 lt!903985)))))))

(declare-fun b!2554854 () Bool)

(assert (=> b!2554854 (= e!1614031 (Cons!29574 (h!34994 (_1!17332 (get!9293 lt!903985))) (++!7266 (t!211373 (_1!17332 (get!9293 lt!903985))) (_2!17332 (get!9293 lt!903985)))))))

(declare-fun d!724000 () Bool)

(assert (=> d!724000 e!1614032))

(declare-fun res!1076066 () Bool)

(assert (=> d!724000 (=> (not res!1076066) (not e!1614032))))

(assert (=> d!724000 (= res!1076066 (= (content!4072 lt!904024) ((_ map or) (content!4072 (_1!17332 (get!9293 lt!903985))) (content!4072 (_2!17332 (get!9293 lt!903985))))))))

(assert (=> d!724000 (= lt!904024 e!1614031)))

(declare-fun c!409871 () Bool)

(assert (=> d!724000 (= c!409871 ((_ is Nil!29574) (_1!17332 (get!9293 lt!903985))))))

(assert (=> d!724000 (= (++!7266 (_1!17332 (get!9293 lt!903985)) (_2!17332 (get!9293 lt!903985))) lt!904024)))

(assert (= (and d!724000 c!409871) b!2554853))

(assert (= (and d!724000 (not c!409871)) b!2554854))

(assert (= (and d!724000 res!1076066) b!2554855))

(assert (= (and b!2554855 res!1076065) b!2554856))

(declare-fun m!2896797 () Bool)

(assert (=> b!2554855 m!2896797))

(declare-fun m!2896801 () Bool)

(assert (=> b!2554855 m!2896801))

(declare-fun m!2896803 () Bool)

(assert (=> b!2554855 m!2896803))

(declare-fun m!2896805 () Bool)

(assert (=> b!2554854 m!2896805))

(declare-fun m!2896809 () Bool)

(assert (=> d!724000 m!2896809))

(declare-fun m!2896811 () Bool)

(assert (=> d!724000 m!2896811))

(declare-fun m!2896813 () Bool)

(assert (=> d!724000 m!2896813))

(assert (=> b!2554428 d!724000))

(declare-fun d!724002 () Bool)

(assert (=> d!724002 (= (get!9293 lt!903985) (v!31850 lt!903985))))

(assert (=> b!2554428 d!724002))

(declare-fun d!724006 () Bool)

(assert (=> d!724006 (= (isEmpty!17027 (tail!4091 tl!4068)) ((_ is Nil!29574) (tail!4091 tl!4068)))))

(assert (=> b!2554487 d!724006))

(declare-fun d!724010 () Bool)

(assert (=> d!724010 (= (tail!4091 tl!4068) (t!211373 tl!4068))))

(assert (=> b!2554487 d!724010))

(declare-fun d!724012 () Bool)

(assert (not d!724012))

(assert (=> b!2554072 d!724012))

(declare-fun b!2554866 () Bool)

(declare-fun e!1614042 () Bool)

(declare-fun call!162938 () Bool)

(assert (=> b!2554866 (= e!1614042 call!162938)))

(declare-fun b!2554867 () Bool)

(declare-fun e!1614045 () Bool)

(declare-fun call!162937 () Bool)

(assert (=> b!2554867 (= e!1614045 call!162937)))

(declare-fun b!2554868 () Bool)

(declare-fun e!1614046 () Bool)

(assert (=> b!2554868 (= e!1614046 e!1614042)))

(declare-fun res!1076072 () Bool)

(assert (=> b!2554868 (= res!1076072 (not (nullable!2526 (reg!7938 lt!903906))))))

(assert (=> b!2554868 (=> (not res!1076072) (not e!1614042))))

(declare-fun bm!162932 () Bool)

(declare-fun c!409875 () Bool)

(declare-fun c!409874 () Bool)

(assert (=> bm!162932 (= call!162938 (validRegex!3235 (ite c!409874 (reg!7938 lt!903906) (ite c!409875 (regOne!15731 lt!903906) (regTwo!15730 lt!903906)))))))

(declare-fun d!724018 () Bool)

(declare-fun res!1076073 () Bool)

(declare-fun e!1614043 () Bool)

(assert (=> d!724018 (=> res!1076073 e!1614043)))

(assert (=> d!724018 (= res!1076073 ((_ is ElementMatch!7609) lt!903906))))

(assert (=> d!724018 (= (validRegex!3235 lt!903906) e!1614043)))

(declare-fun b!2554869 () Bool)

(declare-fun e!1614044 () Bool)

(assert (=> b!2554869 (= e!1614046 e!1614044)))

(assert (=> b!2554869 (= c!409875 ((_ is Union!7609) lt!903906))))

(declare-fun b!2554870 () Bool)

(assert (=> b!2554870 (= e!1614043 e!1614046)))

(assert (=> b!2554870 (= c!409874 ((_ is Star!7609) lt!903906))))

(declare-fun b!2554871 () Bool)

(declare-fun res!1076075 () Bool)

(declare-fun e!1614040 () Bool)

(assert (=> b!2554871 (=> res!1076075 e!1614040)))

(assert (=> b!2554871 (= res!1076075 (not ((_ is Concat!12305) lt!903906)))))

(assert (=> b!2554871 (= e!1614044 e!1614040)))

(declare-fun b!2554872 () Bool)

(declare-fun e!1614041 () Bool)

(assert (=> b!2554872 (= e!1614040 e!1614041)))

(declare-fun res!1076076 () Bool)

(assert (=> b!2554872 (=> (not res!1076076) (not e!1614041))))

(assert (=> b!2554872 (= res!1076076 call!162937)))

(declare-fun bm!162933 () Bool)

(assert (=> bm!162933 (= call!162937 (validRegex!3235 (ite c!409875 (regTwo!15731 lt!903906) (regOne!15730 lt!903906))))))

(declare-fun bm!162934 () Bool)

(declare-fun call!162939 () Bool)

(assert (=> bm!162934 (= call!162939 call!162938)))

(declare-fun b!2554873 () Bool)

(declare-fun res!1076074 () Bool)

(assert (=> b!2554873 (=> (not res!1076074) (not e!1614045))))

(assert (=> b!2554873 (= res!1076074 call!162939)))

(assert (=> b!2554873 (= e!1614044 e!1614045)))

(declare-fun b!2554874 () Bool)

(assert (=> b!2554874 (= e!1614041 call!162939)))

(assert (= (and d!724018 (not res!1076073)) b!2554870))

(assert (= (and b!2554870 c!409874) b!2554868))

(assert (= (and b!2554870 (not c!409874)) b!2554869))

(assert (= (and b!2554868 res!1076072) b!2554866))

(assert (= (and b!2554869 c!409875) b!2554873))

(assert (= (and b!2554869 (not c!409875)) b!2554871))

(assert (= (and b!2554873 res!1076074) b!2554867))

(assert (= (and b!2554871 (not res!1076075)) b!2554872))

(assert (= (and b!2554872 res!1076076) b!2554874))

(assert (= (or b!2554873 b!2554874) bm!162934))

(assert (= (or b!2554867 b!2554872) bm!162933))

(assert (= (or b!2554866 bm!162934) bm!162932))

(declare-fun m!2896827 () Bool)

(assert (=> b!2554868 m!2896827))

(declare-fun m!2896829 () Bool)

(assert (=> bm!162932 m!2896829))

(declare-fun m!2896831 () Bool)

(assert (=> bm!162933 m!2896831))

(assert (=> b!2554334 d!724018))

(declare-fun d!724022 () Bool)

(assert (not d!724022))

(assert (=> b!2554009 d!724022))

(declare-fun d!724024 () Bool)

(assert (not d!724024))

(assert (=> b!2554009 d!724024))

(declare-fun d!724026 () Bool)

(assert (=> d!724026 (= (head!5816 (_1!17332 lt!903904)) (h!34994 (_1!17332 lt!903904)))))

(assert (=> b!2554504 d!724026))

(declare-fun b!2554875 () Bool)

(declare-fun e!1614049 () Bool)

(declare-fun call!162941 () Bool)

(assert (=> b!2554875 (= e!1614049 call!162941)))

(declare-fun b!2554876 () Bool)

(declare-fun e!1614052 () Bool)

(declare-fun call!162940 () Bool)

(assert (=> b!2554876 (= e!1614052 call!162940)))

(declare-fun b!2554877 () Bool)

(declare-fun e!1614053 () Bool)

(assert (=> b!2554877 (= e!1614053 e!1614049)))

(declare-fun res!1076077 () Bool)

(assert (=> b!2554877 (= res!1076077 (not (nullable!2526 (reg!7938 lt!903992))))))

(assert (=> b!2554877 (=> (not res!1076077) (not e!1614049))))

(declare-fun c!409877 () Bool)

(declare-fun bm!162935 () Bool)

(declare-fun c!409876 () Bool)

(assert (=> bm!162935 (= call!162941 (validRegex!3235 (ite c!409876 (reg!7938 lt!903992) (ite c!409877 (regOne!15731 lt!903992) (regTwo!15730 lt!903992)))))))

(declare-fun d!724028 () Bool)

(declare-fun res!1076078 () Bool)

(declare-fun e!1614050 () Bool)

(assert (=> d!724028 (=> res!1076078 e!1614050)))

(assert (=> d!724028 (= res!1076078 ((_ is ElementMatch!7609) lt!903992))))

(assert (=> d!724028 (= (validRegex!3235 lt!903992) e!1614050)))

(declare-fun b!2554878 () Bool)

(declare-fun e!1614051 () Bool)

(assert (=> b!2554878 (= e!1614053 e!1614051)))

(assert (=> b!2554878 (= c!409877 ((_ is Union!7609) lt!903992))))

(declare-fun b!2554879 () Bool)

(assert (=> b!2554879 (= e!1614050 e!1614053)))

(assert (=> b!2554879 (= c!409876 ((_ is Star!7609) lt!903992))))

(declare-fun b!2554880 () Bool)

(declare-fun res!1076080 () Bool)

(declare-fun e!1614047 () Bool)

(assert (=> b!2554880 (=> res!1076080 e!1614047)))

(assert (=> b!2554880 (= res!1076080 (not ((_ is Concat!12305) lt!903992)))))

(assert (=> b!2554880 (= e!1614051 e!1614047)))

(declare-fun b!2554881 () Bool)

(declare-fun e!1614048 () Bool)

(assert (=> b!2554881 (= e!1614047 e!1614048)))

(declare-fun res!1076081 () Bool)

(assert (=> b!2554881 (=> (not res!1076081) (not e!1614048))))

(assert (=> b!2554881 (= res!1076081 call!162940)))

(declare-fun bm!162936 () Bool)

(assert (=> bm!162936 (= call!162940 (validRegex!3235 (ite c!409877 (regTwo!15731 lt!903992) (regOne!15730 lt!903992))))))

(declare-fun bm!162937 () Bool)

(declare-fun call!162942 () Bool)

(assert (=> bm!162937 (= call!162942 call!162941)))

(declare-fun b!2554882 () Bool)

(declare-fun res!1076079 () Bool)

(assert (=> b!2554882 (=> (not res!1076079) (not e!1614052))))

(assert (=> b!2554882 (= res!1076079 call!162942)))

(assert (=> b!2554882 (= e!1614051 e!1614052)))

(declare-fun b!2554883 () Bool)

(assert (=> b!2554883 (= e!1614048 call!162942)))

(assert (= (and d!724028 (not res!1076078)) b!2554879))

(assert (= (and b!2554879 c!409876) b!2554877))

(assert (= (and b!2554879 (not c!409876)) b!2554878))

(assert (= (and b!2554877 res!1076077) b!2554875))

(assert (= (and b!2554878 c!409877) b!2554882))

(assert (= (and b!2554878 (not c!409877)) b!2554880))

(assert (= (and b!2554882 res!1076079) b!2554876))

(assert (= (and b!2554880 (not res!1076080)) b!2554881))

(assert (= (and b!2554881 res!1076081) b!2554883))

(assert (= (or b!2554882 b!2554883) bm!162937))

(assert (= (or b!2554876 b!2554881) bm!162936))

(assert (= (or b!2554875 bm!162937) bm!162935))

(declare-fun m!2896833 () Bool)

(assert (=> b!2554877 m!2896833))

(declare-fun m!2896835 () Bool)

(assert (=> bm!162935 m!2896835))

(declare-fun m!2896837 () Bool)

(assert (=> bm!162936 m!2896837))

(assert (=> d!723838 d!724028))

(declare-fun b!2554884 () Bool)

(declare-fun e!1614056 () Bool)

(declare-fun call!162944 () Bool)

(assert (=> b!2554884 (= e!1614056 call!162944)))

(declare-fun b!2554885 () Bool)

(declare-fun e!1614061 () Bool)

(declare-fun call!162943 () Bool)

(assert (=> b!2554885 (= e!1614061 call!162943)))

(declare-fun b!2554886 () Bool)

(declare-fun e!1614062 () Bool)

(assert (=> b!2554886 (= e!1614062 e!1614056)))

(declare-fun res!1076082 () Bool)

(assert (=> b!2554886 (= res!1076082 (not (nullable!2526 (reg!7938 (derivativeStep!2178 r!27340 c!14016)))))))

(assert (=> b!2554886 (=> (not res!1076082) (not e!1614056))))

(declare-fun c!409878 () Bool)

(declare-fun bm!162938 () Bool)

(declare-fun c!409879 () Bool)

(assert (=> bm!162938 (= call!162944 (validRegex!3235 (ite c!409878 (reg!7938 (derivativeStep!2178 r!27340 c!14016)) (ite c!409879 (regOne!15731 (derivativeStep!2178 r!27340 c!14016)) (regTwo!15730 (derivativeStep!2178 r!27340 c!14016))))))))

(declare-fun d!724030 () Bool)

(declare-fun res!1076083 () Bool)

(declare-fun e!1614058 () Bool)

(assert (=> d!724030 (=> res!1076083 e!1614058)))

(assert (=> d!724030 (= res!1076083 ((_ is ElementMatch!7609) (derivativeStep!2178 r!27340 c!14016)))))

(assert (=> d!724030 (= (validRegex!3235 (derivativeStep!2178 r!27340 c!14016)) e!1614058)))

(declare-fun b!2554889 () Bool)

(declare-fun e!1614060 () Bool)

(assert (=> b!2554889 (= e!1614062 e!1614060)))

(assert (=> b!2554889 (= c!409879 ((_ is Union!7609) (derivativeStep!2178 r!27340 c!14016)))))

(declare-fun b!2554890 () Bool)

(assert (=> b!2554890 (= e!1614058 e!1614062)))

(assert (=> b!2554890 (= c!409878 ((_ is Star!7609) (derivativeStep!2178 r!27340 c!14016)))))

(declare-fun b!2554891 () Bool)

(declare-fun res!1076087 () Bool)

(declare-fun e!1614054 () Bool)

(assert (=> b!2554891 (=> res!1076087 e!1614054)))

(assert (=> b!2554891 (= res!1076087 (not ((_ is Concat!12305) (derivativeStep!2178 r!27340 c!14016))))))

(assert (=> b!2554891 (= e!1614060 e!1614054)))

(declare-fun b!2554892 () Bool)

(declare-fun e!1614055 () Bool)

(assert (=> b!2554892 (= e!1614054 e!1614055)))

(declare-fun res!1076088 () Bool)

(assert (=> b!2554892 (=> (not res!1076088) (not e!1614055))))

(assert (=> b!2554892 (= res!1076088 call!162943)))

(declare-fun bm!162939 () Bool)

(assert (=> bm!162939 (= call!162943 (validRegex!3235 (ite c!409879 (regTwo!15731 (derivativeStep!2178 r!27340 c!14016)) (regOne!15730 (derivativeStep!2178 r!27340 c!14016)))))))

(declare-fun bm!162940 () Bool)

(declare-fun call!162945 () Bool)

(assert (=> bm!162940 (= call!162945 call!162944)))

(declare-fun b!2554893 () Bool)

(declare-fun res!1076085 () Bool)

(assert (=> b!2554893 (=> (not res!1076085) (not e!1614061))))

(assert (=> b!2554893 (= res!1076085 call!162945)))

(assert (=> b!2554893 (= e!1614060 e!1614061)))

(declare-fun b!2554894 () Bool)

(assert (=> b!2554894 (= e!1614055 call!162945)))

(assert (= (and d!724030 (not res!1076083)) b!2554890))

(assert (= (and b!2554890 c!409878) b!2554886))

(assert (= (and b!2554890 (not c!409878)) b!2554889))

(assert (= (and b!2554886 res!1076082) b!2554884))

(assert (= (and b!2554889 c!409879) b!2554893))

(assert (= (and b!2554889 (not c!409879)) b!2554891))

(assert (= (and b!2554893 res!1076085) b!2554885))

(assert (= (and b!2554891 (not res!1076087)) b!2554892))

(assert (= (and b!2554892 res!1076088) b!2554894))

(assert (= (or b!2554893 b!2554894) bm!162940))

(assert (= (or b!2554885 b!2554892) bm!162939))

(assert (= (or b!2554884 bm!162940) bm!162938))

(declare-fun m!2896839 () Bool)

(assert (=> b!2554886 m!2896839))

(declare-fun m!2896841 () Bool)

(assert (=> bm!162938 m!2896841))

(declare-fun m!2896843 () Bool)

(assert (=> bm!162939 m!2896843))

(assert (=> d!723838 d!724030))

(assert (=> b!2554237 d!724006))

(assert (=> b!2554237 d!724010))

(declare-fun d!724032 () Bool)

(assert (=> d!724032 (= (isEmpty!17027 (_1!17332 lt!903904)) ((_ is Nil!29574) (_1!17332 lt!903904)))))

(assert (=> bm!162848 d!724032))

(declare-fun d!724034 () Bool)

(declare-fun lt!904025 () Regex!7609)

(assert (=> d!724034 (validRegex!3235 lt!904025)))

(declare-fun e!1614064 () Regex!7609)

(assert (=> d!724034 (= lt!904025 e!1614064)))

(declare-fun c!409880 () Bool)

(assert (=> d!724034 (= c!409880 ((_ is Cons!29574) (t!211373 tl!4068)))))

(assert (=> d!724034 (validRegex!3235 (derivativeStep!2178 (derivativeStep!2178 r!27340 c!14016) (h!34994 tl!4068)))))

(assert (=> d!724034 (= (derivative!304 (derivativeStep!2178 (derivativeStep!2178 r!27340 c!14016) (h!34994 tl!4068)) (t!211373 tl!4068)) lt!904025)))

(declare-fun b!2554896 () Bool)

(assert (=> b!2554896 (= e!1614064 (derivative!304 (derivativeStep!2178 (derivativeStep!2178 (derivativeStep!2178 r!27340 c!14016) (h!34994 tl!4068)) (h!34994 (t!211373 tl!4068))) (t!211373 (t!211373 tl!4068))))))

(declare-fun b!2554897 () Bool)

(assert (=> b!2554897 (= e!1614064 (derivativeStep!2178 (derivativeStep!2178 r!27340 c!14016) (h!34994 tl!4068)))))

(assert (= (and d!724034 c!409880) b!2554896))

(assert (= (and d!724034 (not c!409880)) b!2554897))

(declare-fun m!2896845 () Bool)

(assert (=> d!724034 m!2896845))

(assert (=> d!724034 m!2896419))

(declare-fun m!2896847 () Bool)

(assert (=> d!724034 m!2896847))

(assert (=> b!2554896 m!2896419))

(declare-fun m!2896849 () Bool)

(assert (=> b!2554896 m!2896849))

(assert (=> b!2554896 m!2896849))

(declare-fun m!2896851 () Bool)

(assert (=> b!2554896 m!2896851))

(assert (=> b!2554445 d!724034))

(declare-fun c!409885 () Bool)

(declare-fun call!162949 () Regex!7609)

(declare-fun bm!162944 () Bool)

(declare-fun c!409884 () Bool)

(assert (=> bm!162944 (= call!162949 (derivativeStep!2178 (ite c!409884 (regOne!15731 (derivativeStep!2178 r!27340 c!14016)) (ite c!409885 (reg!7938 (derivativeStep!2178 r!27340 c!14016)) (regOne!15730 (derivativeStep!2178 r!27340 c!14016)))) (h!34994 tl!4068)))))

(declare-fun b!2554907 () Bool)

(declare-fun e!1614076 () Regex!7609)

(declare-fun call!162950 () Regex!7609)

(assert (=> b!2554907 (= e!1614076 (Union!7609 call!162949 call!162950))))

(declare-fun b!2554908 () Bool)

(declare-fun c!409887 () Bool)

(assert (=> b!2554908 (= c!409887 (nullable!2526 (regOne!15730 (derivativeStep!2178 r!27340 c!14016))))))

(declare-fun e!1614074 () Regex!7609)

(declare-fun e!1614075 () Regex!7609)

(assert (=> b!2554908 (= e!1614074 e!1614075)))

(declare-fun call!162951 () Regex!7609)

(declare-fun b!2554909 () Bool)

(assert (=> b!2554909 (= e!1614075 (Union!7609 (Concat!12305 call!162951 (regTwo!15730 (derivativeStep!2178 r!27340 c!14016))) EmptyLang!7609))))

(declare-fun d!724038 () Bool)

(declare-fun lt!904026 () Regex!7609)

(assert (=> d!724038 (validRegex!3235 lt!904026)))

(declare-fun e!1614073 () Regex!7609)

(assert (=> d!724038 (= lt!904026 e!1614073)))

(declare-fun c!409883 () Bool)

(assert (=> d!724038 (= c!409883 (or ((_ is EmptyExpr!7609) (derivativeStep!2178 r!27340 c!14016)) ((_ is EmptyLang!7609) (derivativeStep!2178 r!27340 c!14016))))))

(assert (=> d!724038 (validRegex!3235 (derivativeStep!2178 r!27340 c!14016))))

(assert (=> d!724038 (= (derivativeStep!2178 (derivativeStep!2178 r!27340 c!14016) (h!34994 tl!4068)) lt!904026)))

(declare-fun b!2554910 () Bool)

(declare-fun e!1614072 () Regex!7609)

(assert (=> b!2554910 (= e!1614073 e!1614072)))

(declare-fun c!409886 () Bool)

(assert (=> b!2554910 (= c!409886 ((_ is ElementMatch!7609) (derivativeStep!2178 r!27340 c!14016)))))

(declare-fun b!2554911 () Bool)

(assert (=> b!2554911 (= e!1614073 EmptyLang!7609)))

(declare-fun bm!162945 () Bool)

(assert (=> bm!162945 (= call!162950 (derivativeStep!2178 (ite c!409884 (regTwo!15731 (derivativeStep!2178 r!27340 c!14016)) (regTwo!15730 (derivativeStep!2178 r!27340 c!14016))) (h!34994 tl!4068)))))

(declare-fun bm!162946 () Bool)

(declare-fun call!162952 () Regex!7609)

(assert (=> bm!162946 (= call!162951 call!162952)))

(declare-fun b!2554912 () Bool)

(assert (=> b!2554912 (= e!1614072 (ite (= (h!34994 tl!4068) (c!409621 (derivativeStep!2178 r!27340 c!14016))) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2554913 () Bool)

(assert (=> b!2554913 (= e!1614074 (Concat!12305 call!162952 (derivativeStep!2178 r!27340 c!14016)))))

(declare-fun b!2554914 () Bool)

(assert (=> b!2554914 (= c!409884 ((_ is Union!7609) (derivativeStep!2178 r!27340 c!14016)))))

(assert (=> b!2554914 (= e!1614072 e!1614076)))

(declare-fun b!2554915 () Bool)

(assert (=> b!2554915 (= e!1614076 e!1614074)))

(assert (=> b!2554915 (= c!409885 ((_ is Star!7609) (derivativeStep!2178 r!27340 c!14016)))))

(declare-fun bm!162947 () Bool)

(assert (=> bm!162947 (= call!162952 call!162949)))

(declare-fun b!2554916 () Bool)

(assert (=> b!2554916 (= e!1614075 (Union!7609 (Concat!12305 call!162951 (regTwo!15730 (derivativeStep!2178 r!27340 c!14016))) call!162950))))

(assert (= (and d!724038 c!409883) b!2554911))

(assert (= (and d!724038 (not c!409883)) b!2554910))

(assert (= (and b!2554910 c!409886) b!2554912))

(assert (= (and b!2554910 (not c!409886)) b!2554914))

(assert (= (and b!2554914 c!409884) b!2554907))

(assert (= (and b!2554914 (not c!409884)) b!2554915))

(assert (= (and b!2554915 c!409885) b!2554913))

(assert (= (and b!2554915 (not c!409885)) b!2554908))

(assert (= (and b!2554908 c!409887) b!2554916))

(assert (= (and b!2554908 (not c!409887)) b!2554909))

(assert (= (or b!2554916 b!2554909) bm!162946))

(assert (= (or b!2554913 bm!162946) bm!162947))

(assert (= (or b!2554907 b!2554916) bm!162945))

(assert (= (or b!2554907 bm!162947) bm!162944))

(declare-fun m!2896865 () Bool)

(assert (=> bm!162944 m!2896865))

(declare-fun m!2896867 () Bool)

(assert (=> b!2554908 m!2896867))

(declare-fun m!2896871 () Bool)

(assert (=> d!724038 m!2896871))

(assert (=> d!724038 m!2896003))

(assert (=> d!724038 m!2896417))

(declare-fun m!2896873 () Bool)

(assert (=> bm!162945 m!2896873))

(assert (=> b!2554445 d!724038))

(declare-fun d!724044 () Bool)

(assert (=> d!724044 (= (nullable!2526 (regOne!15730 (regTwo!15730 r!27340))) (nullableFct!751 (regOne!15730 (regTwo!15730 r!27340))))))

(declare-fun bs!469696 () Bool)

(assert (= bs!469696 d!724044))

(declare-fun m!2896875 () Bool)

(assert (=> bs!469696 m!2896875))

(assert (=> b!2554195 d!724044))

(declare-fun d!724046 () Bool)

(assert (=> d!724046 (= (isDefined!4732 lt!903985) (not (isEmpty!17028 lt!903985)))))

(declare-fun bs!469697 () Bool)

(assert (= bs!469697 d!724046))

(declare-fun m!2896877 () Bool)

(assert (=> bs!469697 m!2896877))

(assert (=> d!723828 d!724046))

(declare-fun b!2554929 () Bool)

(declare-fun e!1614087 () Bool)

(assert (=> b!2554929 (= e!1614087 (matchR!3554 (derivativeStep!2178 lt!903911 (head!5816 Nil!29574)) (tail!4091 Nil!29574)))))

(declare-fun b!2554930 () Bool)

(declare-fun e!1614085 () Bool)

(declare-fun e!1614083 () Bool)

(assert (=> b!2554930 (= e!1614085 e!1614083)))

(declare-fun res!1076098 () Bool)

(assert (=> b!2554930 (=> (not res!1076098) (not e!1614083))))

(declare-fun lt!904029 () Bool)

(assert (=> b!2554930 (= res!1076098 (not lt!904029))))

(declare-fun b!2554931 () Bool)

(assert (=> b!2554931 (= e!1614087 (nullable!2526 lt!903911))))

(declare-fun b!2554933 () Bool)

(declare-fun e!1614086 () Bool)

(assert (=> b!2554933 (= e!1614086 (not lt!904029))))

(declare-fun b!2554934 () Bool)

(declare-fun e!1614089 () Bool)

(assert (=> b!2554934 (= e!1614083 e!1614089)))

(declare-fun res!1076097 () Bool)

(assert (=> b!2554934 (=> res!1076097 e!1614089)))

(declare-fun call!162957 () Bool)

(assert (=> b!2554934 (= res!1076097 call!162957)))

(declare-fun b!2554935 () Bool)

(declare-fun res!1076095 () Bool)

(declare-fun e!1614084 () Bool)

(assert (=> b!2554935 (=> (not res!1076095) (not e!1614084))))

(assert (=> b!2554935 (= res!1076095 (isEmpty!17027 (tail!4091 Nil!29574)))))

(declare-fun b!2554936 () Bool)

(declare-fun res!1076102 () Bool)

(assert (=> b!2554936 (=> res!1076102 e!1614089)))

(assert (=> b!2554936 (= res!1076102 (not (isEmpty!17027 (tail!4091 Nil!29574))))))

(declare-fun b!2554937 () Bool)

(declare-fun e!1614088 () Bool)

(assert (=> b!2554937 (= e!1614088 e!1614086)))

(declare-fun c!409896 () Bool)

(assert (=> b!2554937 (= c!409896 ((_ is EmptyLang!7609) lt!903911))))

(declare-fun b!2554938 () Bool)

(assert (=> b!2554938 (= e!1614084 (= (head!5816 Nil!29574) (c!409621 lt!903911)))))

(declare-fun b!2554939 () Bool)

(assert (=> b!2554939 (= e!1614089 (not (= (head!5816 Nil!29574) (c!409621 lt!903911))))))

(declare-fun b!2554940 () Bool)

(declare-fun res!1076099 () Bool)

(assert (=> b!2554940 (=> res!1076099 e!1614085)))

(assert (=> b!2554940 (= res!1076099 e!1614084)))

(declare-fun res!1076100 () Bool)

(assert (=> b!2554940 (=> (not res!1076100) (not e!1614084))))

(assert (=> b!2554940 (= res!1076100 lt!904029)))

(declare-fun b!2554941 () Bool)

(assert (=> b!2554941 (= e!1614088 (= lt!904029 call!162957))))

(declare-fun b!2554932 () Bool)

(declare-fun res!1076101 () Bool)

(assert (=> b!2554932 (=> (not res!1076101) (not e!1614084))))

(assert (=> b!2554932 (= res!1076101 (not call!162957))))

(declare-fun d!724048 () Bool)

(assert (=> d!724048 e!1614088))

(declare-fun c!409895 () Bool)

(assert (=> d!724048 (= c!409895 ((_ is EmptyExpr!7609) lt!903911))))

(assert (=> d!724048 (= lt!904029 e!1614087)))

(declare-fun c!409894 () Bool)

(assert (=> d!724048 (= c!409894 (isEmpty!17027 Nil!29574))))

(assert (=> d!724048 (validRegex!3235 lt!903911)))

(assert (=> d!724048 (= (matchR!3554 lt!903911 Nil!29574) lt!904029)))

(declare-fun b!2554942 () Bool)

(declare-fun res!1076096 () Bool)

(assert (=> b!2554942 (=> res!1076096 e!1614085)))

(assert (=> b!2554942 (= res!1076096 (not ((_ is ElementMatch!7609) lt!903911)))))

(assert (=> b!2554942 (= e!1614086 e!1614085)))

(declare-fun bm!162952 () Bool)

(assert (=> bm!162952 (= call!162957 (isEmpty!17027 Nil!29574))))

(assert (= (and d!724048 c!409894) b!2554931))

(assert (= (and d!724048 (not c!409894)) b!2554929))

(assert (= (and d!724048 c!409895) b!2554941))

(assert (= (and d!724048 (not c!409895)) b!2554937))

(assert (= (and b!2554937 c!409896) b!2554933))

(assert (= (and b!2554937 (not c!409896)) b!2554942))

(assert (= (and b!2554942 (not res!1076096)) b!2554940))

(assert (= (and b!2554940 res!1076100) b!2554932))

(assert (= (and b!2554932 res!1076101) b!2554935))

(assert (= (and b!2554935 res!1076095) b!2554938))

(assert (= (and b!2554940 (not res!1076099)) b!2554930))

(assert (= (and b!2554930 res!1076098) b!2554934))

(assert (= (and b!2554934 (not res!1076097)) b!2554936))

(assert (= (and b!2554936 (not res!1076102)) b!2554939))

(assert (= (or b!2554941 b!2554932 b!2554934) bm!162952))

(assert (=> bm!162952 m!2896083))

(assert (=> b!2554935 m!2896085))

(assert (=> b!2554935 m!2896085))

(assert (=> b!2554935 m!2896087))

(assert (=> b!2554929 m!2896089))

(assert (=> b!2554929 m!2896089))

(declare-fun m!2896885 () Bool)

(assert (=> b!2554929 m!2896885))

(assert (=> b!2554929 m!2896085))

(assert (=> b!2554929 m!2896885))

(assert (=> b!2554929 m!2896085))

(declare-fun m!2896889 () Bool)

(assert (=> b!2554929 m!2896889))

(assert (=> b!2554931 m!2896467))

(assert (=> d!724048 m!2896083))

(assert (=> d!724048 m!2896099))

(assert (=> b!2554938 m!2896089))

(assert (=> b!2554936 m!2896085))

(assert (=> b!2554936 m!2896085))

(assert (=> b!2554936 m!2896087))

(assert (=> b!2554939 m!2896089))

(assert (=> d!723828 d!724048))

(declare-fun b!2554952 () Bool)

(declare-fun e!1614099 () Bool)

(declare-fun call!162962 () Bool)

(assert (=> b!2554952 (= e!1614099 call!162962)))

(declare-fun b!2554953 () Bool)

(declare-fun e!1614106 () Bool)

(declare-fun call!162961 () Bool)

(assert (=> b!2554953 (= e!1614106 call!162961)))

(declare-fun b!2554954 () Bool)

(declare-fun e!1614108 () Bool)

(assert (=> b!2554954 (= e!1614108 e!1614099)))

(declare-fun res!1076109 () Bool)

(assert (=> b!2554954 (= res!1076109 (not (nullable!2526 (reg!7938 lt!903911))))))

(assert (=> b!2554954 (=> (not res!1076109) (not e!1614099))))

(declare-fun c!409902 () Bool)

(declare-fun c!409899 () Bool)

(declare-fun bm!162956 () Bool)

(assert (=> bm!162956 (= call!162962 (validRegex!3235 (ite c!409899 (reg!7938 lt!903911) (ite c!409902 (regOne!15731 lt!903911) (regTwo!15730 lt!903911)))))))

(declare-fun d!724054 () Bool)

(declare-fun res!1076111 () Bool)

(declare-fun e!1614101 () Bool)

(assert (=> d!724054 (=> res!1076111 e!1614101)))

(assert (=> d!724054 (= res!1076111 ((_ is ElementMatch!7609) lt!903911))))

(assert (=> d!724054 (= (validRegex!3235 lt!903911) e!1614101)))

(declare-fun b!2554956 () Bool)

(declare-fun e!1614102 () Bool)

(assert (=> b!2554956 (= e!1614108 e!1614102)))

(assert (=> b!2554956 (= c!409902 ((_ is Union!7609) lt!903911))))

(declare-fun b!2554958 () Bool)

(assert (=> b!2554958 (= e!1614101 e!1614108)))

(assert (=> b!2554958 (= c!409899 ((_ is Star!7609) lt!903911))))

(declare-fun b!2554960 () Bool)

(declare-fun res!1076117 () Bool)

(declare-fun e!1614097 () Bool)

(assert (=> b!2554960 (=> res!1076117 e!1614097)))

(assert (=> b!2554960 (= res!1076117 (not ((_ is Concat!12305) lt!903911)))))

(assert (=> b!2554960 (= e!1614102 e!1614097)))

(declare-fun b!2554962 () Bool)

(declare-fun e!1614098 () Bool)

(assert (=> b!2554962 (= e!1614097 e!1614098)))

(declare-fun res!1076118 () Bool)

(assert (=> b!2554962 (=> (not res!1076118) (not e!1614098))))

(assert (=> b!2554962 (= res!1076118 call!162961)))

(declare-fun bm!162957 () Bool)

(assert (=> bm!162957 (= call!162961 (validRegex!3235 (ite c!409902 (regTwo!15731 lt!903911) (regOne!15730 lt!903911))))))

(declare-fun bm!162958 () Bool)

(declare-fun call!162964 () Bool)

(assert (=> bm!162958 (= call!162964 call!162962)))

(declare-fun b!2554966 () Bool)

(declare-fun res!1076116 () Bool)

(assert (=> b!2554966 (=> (not res!1076116) (not e!1614106))))

(assert (=> b!2554966 (= res!1076116 call!162964)))

(assert (=> b!2554966 (= e!1614102 e!1614106)))

(declare-fun b!2554968 () Bool)

(assert (=> b!2554968 (= e!1614098 call!162964)))

(assert (= (and d!724054 (not res!1076111)) b!2554958))

(assert (= (and b!2554958 c!409899) b!2554954))

(assert (= (and b!2554958 (not c!409899)) b!2554956))

(assert (= (and b!2554954 res!1076109) b!2554952))

(assert (= (and b!2554956 c!409902) b!2554966))

(assert (= (and b!2554956 (not c!409902)) b!2554960))

(assert (= (and b!2554966 res!1076116) b!2554953))

(assert (= (and b!2554960 (not res!1076117)) b!2554962))

(assert (= (and b!2554962 res!1076118) b!2554968))

(assert (= (or b!2554966 b!2554968) bm!162958))

(assert (= (or b!2554953 b!2554962) bm!162957))

(assert (= (or b!2554952 bm!162958) bm!162956))

(declare-fun m!2896895 () Bool)

(assert (=> b!2554954 m!2896895))

(declare-fun m!2896897 () Bool)

(assert (=> bm!162956 m!2896897))

(declare-fun m!2896899 () Bool)

(assert (=> bm!162957 m!2896899))

(assert (=> d!723828 d!724054))

(declare-fun d!724056 () Bool)

(assert (not d!724056))

(assert (=> b!2554063 d!724056))

(declare-fun d!724058 () Bool)

(assert (not d!724058))

(assert (=> b!2554063 d!724058))

(assert (=> b!2554063 d!724012))

(assert (=> b!2554063 d!724024))

(assert (=> b!2554448 d!723746))

(declare-fun d!724060 () Bool)

(assert (=> d!724060 (= (isEmpty!17027 (Cons!29574 c!14016 (_1!17332 lt!903904))) ((_ is Nil!29574) (Cons!29574 c!14016 (_1!17332 lt!903904))))))

(assert (=> d!723764 d!724060))

(assert (=> d!723764 d!723748))

(declare-fun d!724062 () Bool)

(assert (=> d!724062 (= (nullable!2526 (regTwo!15730 r!27340)) (nullableFct!751 (regTwo!15730 r!27340)))))

(declare-fun bs!469698 () Bool)

(assert (= bs!469698 d!724062))

(declare-fun m!2896907 () Bool)

(assert (=> bs!469698 m!2896907))

(assert (=> b!2554459 d!724062))

(declare-fun d!724064 () Bool)

(assert (=> d!724064 (= (isEmpty!17027 Nil!29574) true)))

(assert (=> d!723770 d!724064))

(declare-fun b!2554985 () Bool)

(declare-fun e!1614118 () Bool)

(declare-fun call!162970 () Bool)

(assert (=> b!2554985 (= e!1614118 call!162970)))

(declare-fun b!2554986 () Bool)

(declare-fun e!1614121 () Bool)

(declare-fun call!162969 () Bool)

(assert (=> b!2554986 (= e!1614121 call!162969)))

(declare-fun b!2554987 () Bool)

(declare-fun e!1614122 () Bool)

(assert (=> b!2554987 (= e!1614122 e!1614118)))

(declare-fun res!1076121 () Bool)

(assert (=> b!2554987 (= res!1076121 (not (nullable!2526 (reg!7938 (derivative!304 lt!903902 tl!4068)))))))

(assert (=> b!2554987 (=> (not res!1076121) (not e!1614118))))

(declare-fun c!409910 () Bool)

(declare-fun c!409909 () Bool)

(declare-fun bm!162964 () Bool)

(assert (=> bm!162964 (= call!162970 (validRegex!3235 (ite c!409909 (reg!7938 (derivative!304 lt!903902 tl!4068)) (ite c!409910 (regOne!15731 (derivative!304 lt!903902 tl!4068)) (regTwo!15730 (derivative!304 lt!903902 tl!4068))))))))

(declare-fun d!724068 () Bool)

(declare-fun res!1076122 () Bool)

(declare-fun e!1614119 () Bool)

(assert (=> d!724068 (=> res!1076122 e!1614119)))

(assert (=> d!724068 (= res!1076122 ((_ is ElementMatch!7609) (derivative!304 lt!903902 tl!4068)))))

(assert (=> d!724068 (= (validRegex!3235 (derivative!304 lt!903902 tl!4068)) e!1614119)))

(declare-fun b!2554988 () Bool)

(declare-fun e!1614120 () Bool)

(assert (=> b!2554988 (= e!1614122 e!1614120)))

(assert (=> b!2554988 (= c!409910 ((_ is Union!7609) (derivative!304 lt!903902 tl!4068)))))

(declare-fun b!2554989 () Bool)

(assert (=> b!2554989 (= e!1614119 e!1614122)))

(assert (=> b!2554989 (= c!409909 ((_ is Star!7609) (derivative!304 lt!903902 tl!4068)))))

(declare-fun b!2554990 () Bool)

(declare-fun res!1076124 () Bool)

(declare-fun e!1614116 () Bool)

(assert (=> b!2554990 (=> res!1076124 e!1614116)))

(assert (=> b!2554990 (= res!1076124 (not ((_ is Concat!12305) (derivative!304 lt!903902 tl!4068))))))

(assert (=> b!2554990 (= e!1614120 e!1614116)))

(declare-fun b!2554991 () Bool)

(declare-fun e!1614117 () Bool)

(assert (=> b!2554991 (= e!1614116 e!1614117)))

(declare-fun res!1076125 () Bool)

(assert (=> b!2554991 (=> (not res!1076125) (not e!1614117))))

(assert (=> b!2554991 (= res!1076125 call!162969)))

(declare-fun bm!162965 () Bool)

(assert (=> bm!162965 (= call!162969 (validRegex!3235 (ite c!409910 (regTwo!15731 (derivative!304 lt!903902 tl!4068)) (regOne!15730 (derivative!304 lt!903902 tl!4068)))))))

(declare-fun bm!162966 () Bool)

(declare-fun call!162971 () Bool)

(assert (=> bm!162966 (= call!162971 call!162970)))

(declare-fun b!2554992 () Bool)

(declare-fun res!1076123 () Bool)

(assert (=> b!2554992 (=> (not res!1076123) (not e!1614121))))

(assert (=> b!2554992 (= res!1076123 call!162971)))

(assert (=> b!2554992 (= e!1614120 e!1614121)))

(declare-fun b!2554993 () Bool)

(assert (=> b!2554993 (= e!1614117 call!162971)))

(assert (= (and d!724068 (not res!1076122)) b!2554989))

(assert (= (and b!2554989 c!409909) b!2554987))

(assert (= (and b!2554989 (not c!409909)) b!2554988))

(assert (= (and b!2554987 res!1076121) b!2554985))

(assert (= (and b!2554988 c!409910) b!2554992))

(assert (= (and b!2554988 (not c!409910)) b!2554990))

(assert (= (and b!2554992 res!1076123) b!2554986))

(assert (= (and b!2554990 (not res!1076124)) b!2554991))

(assert (= (and b!2554991 res!1076125) b!2554993))

(assert (= (or b!2554992 b!2554993) bm!162966))

(assert (= (or b!2554986 b!2554991) bm!162965))

(assert (= (or b!2554985 bm!162966) bm!162964))

(declare-fun m!2896919 () Bool)

(assert (=> b!2554987 m!2896919))

(declare-fun m!2896921 () Bool)

(assert (=> bm!162964 m!2896921))

(declare-fun m!2896923 () Bool)

(assert (=> bm!162965 m!2896923))

(assert (=> d!723770 d!724068))

(declare-fun call!162973 () Regex!7609)

(declare-fun c!409916 () Bool)

(declare-fun c!409915 () Bool)

(declare-fun bm!162968 () Bool)

(assert (=> bm!162968 (= call!162973 (derivativeStep!2178 (ite c!409915 (regOne!15731 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340)))) (ite c!409916 (reg!7938 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340)))) (regOne!15730 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340)))))) c!14016))))

(declare-fun b!2555008 () Bool)

(declare-fun e!1614134 () Regex!7609)

(declare-fun call!162974 () Regex!7609)

(assert (=> b!2555008 (= e!1614134 (Union!7609 call!162973 call!162974))))

(declare-fun b!2555009 () Bool)

(declare-fun c!409918 () Bool)

(assert (=> b!2555009 (= c!409918 (nullable!2526 (regOne!15730 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340))))))))

(declare-fun e!1614132 () Regex!7609)

(declare-fun e!1614133 () Regex!7609)

(assert (=> b!2555009 (= e!1614132 e!1614133)))

(declare-fun b!2555010 () Bool)

(declare-fun call!162975 () Regex!7609)

(assert (=> b!2555010 (= e!1614133 (Union!7609 (Concat!12305 call!162975 (regTwo!15730 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340))))) EmptyLang!7609))))

(declare-fun d!724072 () Bool)

(declare-fun lt!904033 () Regex!7609)

(assert (=> d!724072 (validRegex!3235 lt!904033)))

(declare-fun e!1614131 () Regex!7609)

(assert (=> d!724072 (= lt!904033 e!1614131)))

(declare-fun c!409914 () Bool)

(assert (=> d!724072 (= c!409914 (or ((_ is EmptyExpr!7609) (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340)))) ((_ is EmptyLang!7609) (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340))))))))

(assert (=> d!724072 (validRegex!3235 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340))))))

(assert (=> d!724072 (= (derivativeStep!2178 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340))) c!14016) lt!904033)))

(declare-fun b!2555011 () Bool)

(declare-fun e!1614130 () Regex!7609)

(assert (=> b!2555011 (= e!1614131 e!1614130)))

(declare-fun c!409917 () Bool)

(assert (=> b!2555011 (= c!409917 ((_ is ElementMatch!7609) (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340)))))))

(declare-fun b!2555012 () Bool)

(assert (=> b!2555012 (= e!1614131 EmptyLang!7609)))

(declare-fun bm!162969 () Bool)

(assert (=> bm!162969 (= call!162974 (derivativeStep!2178 (ite c!409915 (regTwo!15731 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340)))) (regTwo!15730 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340))))) c!14016))))

(declare-fun bm!162970 () Bool)

(declare-fun call!162976 () Regex!7609)

(assert (=> bm!162970 (= call!162975 call!162976)))

(declare-fun b!2555013 () Bool)

(assert (=> b!2555013 (= e!1614130 (ite (= c!14016 (c!409621 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340))))) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555014 () Bool)

(assert (=> b!2555014 (= e!1614132 (Concat!12305 call!162976 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340)))))))

(declare-fun b!2555015 () Bool)

(assert (=> b!2555015 (= c!409915 ((_ is Union!7609) (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340)))))))

(assert (=> b!2555015 (= e!1614130 e!1614134)))

(declare-fun b!2555016 () Bool)

(assert (=> b!2555016 (= e!1614134 e!1614132)))

(assert (=> b!2555016 (= c!409916 ((_ is Star!7609) (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340)))))))

(declare-fun bm!162971 () Bool)

(assert (=> bm!162971 (= call!162976 call!162973)))

(declare-fun b!2555017 () Bool)

(assert (=> b!2555017 (= e!1614133 (Union!7609 (Concat!12305 call!162975 (regTwo!15730 (ite c!409703 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340))))) call!162974))))

(assert (= (and d!724072 c!409914) b!2555012))

(assert (= (and d!724072 (not c!409914)) b!2555011))

(assert (= (and b!2555011 c!409917) b!2555013))

(assert (= (and b!2555011 (not c!409917)) b!2555015))

(assert (= (and b!2555015 c!409915) b!2555008))

(assert (= (and b!2555015 (not c!409915)) b!2555016))

(assert (= (and b!2555016 c!409916) b!2555014))

(assert (= (and b!2555016 (not c!409916)) b!2555009))

(assert (= (and b!2555009 c!409918) b!2555017))

(assert (= (and b!2555009 (not c!409918)) b!2555010))

(assert (= (or b!2555017 b!2555010) bm!162970))

(assert (= (or b!2555014 bm!162970) bm!162971))

(assert (= (or b!2555008 b!2555017) bm!162969))

(assert (= (or b!2555008 bm!162971) bm!162968))

(declare-fun m!2896931 () Bool)

(assert (=> bm!162968 m!2896931))

(declare-fun m!2896933 () Bool)

(assert (=> b!2555009 m!2896933))

(declare-fun m!2896935 () Bool)

(assert (=> d!724072 m!2896935))

(declare-fun m!2896937 () Bool)

(assert (=> d!724072 m!2896937))

(declare-fun m!2896941 () Bool)

(assert (=> bm!162969 m!2896941))

(assert (=> bm!162813 d!724072))

(declare-fun d!724074 () Bool)

(assert (=> d!724074 (= (isEmpty!17027 (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904)))) ((_ is Nil!29574) (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904)))))))

(assert (=> b!2554047 d!724074))

(declare-fun d!724076 () Bool)

(assert (=> d!724076 (= (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904))) (t!211373 (Cons!29574 c!14016 (_1!17332 lt!903904))))))

(assert (=> b!2554047 d!724076))

(declare-fun d!724078 () Bool)

(assert (=> d!724078 (= (nullable!2526 lt!903906) (nullableFct!751 lt!903906))))

(declare-fun bs!469699 () Bool)

(assert (= bs!469699 d!724078))

(declare-fun m!2896947 () Bool)

(assert (=> bs!469699 m!2896947))

(assert (=> b!2554482 d!724078))

(declare-fun d!724082 () Bool)

(assert (=> d!724082 (= (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904))) (h!34994 (Cons!29574 c!14016 (_1!17332 lt!903904))))))

(assert (=> b!2554050 d!724082))

(assert (=> b!2554088 d!723966))

(assert (=> d!723792 d!723976))

(assert (=> d!723792 d!723996))

(declare-fun c!409923 () Bool)

(declare-fun c!409924 () Bool)

(declare-fun call!162978 () Regex!7609)

(declare-fun bm!162973 () Bool)

(assert (=> bm!162973 (= call!162978 (derivativeStep!2178 (ite c!409923 (regOne!15731 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340))) (ite c!409924 (reg!7938 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340))) (regOne!15730 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340))))) c!14016))))

(declare-fun b!2555032 () Bool)

(declare-fun e!1614146 () Regex!7609)

(declare-fun call!162979 () Regex!7609)

(assert (=> b!2555032 (= e!1614146 (Union!7609 call!162978 call!162979))))

(declare-fun b!2555033 () Bool)

(declare-fun c!409926 () Bool)

(assert (=> b!2555033 (= c!409926 (nullable!2526 (regOne!15730 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340)))))))

(declare-fun e!1614144 () Regex!7609)

(declare-fun e!1614145 () Regex!7609)

(assert (=> b!2555033 (= e!1614144 e!1614145)))

(declare-fun call!162980 () Regex!7609)

(declare-fun b!2555034 () Bool)

(assert (=> b!2555034 (= e!1614145 (Union!7609 (Concat!12305 call!162980 (regTwo!15730 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340)))) EmptyLang!7609))))

(declare-fun d!724086 () Bool)

(declare-fun lt!904035 () Regex!7609)

(assert (=> d!724086 (validRegex!3235 lt!904035)))

(declare-fun e!1614143 () Regex!7609)

(assert (=> d!724086 (= lt!904035 e!1614143)))

(declare-fun c!409922 () Bool)

(assert (=> d!724086 (= c!409922 (or ((_ is EmptyExpr!7609) (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340))) ((_ is EmptyLang!7609) (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340)))))))

(assert (=> d!724086 (validRegex!3235 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340)))))

(assert (=> d!724086 (= (derivativeStep!2178 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340)) c!14016) lt!904035)))

(declare-fun b!2555035 () Bool)

(declare-fun e!1614142 () Regex!7609)

(assert (=> b!2555035 (= e!1614143 e!1614142)))

(declare-fun c!409925 () Bool)

(assert (=> b!2555035 (= c!409925 ((_ is ElementMatch!7609) (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340))))))

(declare-fun b!2555036 () Bool)

(assert (=> b!2555036 (= e!1614143 EmptyLang!7609)))

(declare-fun bm!162974 () Bool)

(assert (=> bm!162974 (= call!162979 (derivativeStep!2178 (ite c!409923 (regTwo!15731 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340))) (regTwo!15730 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340)))) c!14016))))

(declare-fun bm!162975 () Bool)

(declare-fun call!162981 () Regex!7609)

(assert (=> bm!162975 (= call!162980 call!162981)))

(declare-fun b!2555037 () Bool)

(assert (=> b!2555037 (= e!1614142 (ite (= c!14016 (c!409621 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340)))) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555038 () Bool)

(assert (=> b!2555038 (= e!1614144 (Concat!12305 call!162981 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340))))))

(declare-fun b!2555039 () Bool)

(assert (=> b!2555039 (= c!409923 ((_ is Union!7609) (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340))))))

(assert (=> b!2555039 (= e!1614142 e!1614146)))

(declare-fun b!2555040 () Bool)

(assert (=> b!2555040 (= e!1614146 e!1614144)))

(assert (=> b!2555040 (= c!409924 ((_ is Star!7609) (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340))))))

(declare-fun bm!162976 () Bool)

(assert (=> bm!162976 (= call!162981 call!162978)))

(declare-fun b!2555041 () Bool)

(assert (=> b!2555041 (= e!1614145 (Union!7609 (Concat!12305 call!162980 (regTwo!15730 (ite c!409761 (regTwo!15731 r!27340) (regTwo!15730 r!27340)))) call!162979))))

(assert (= (and d!724086 c!409922) b!2555036))

(assert (= (and d!724086 (not c!409922)) b!2555035))

(assert (= (and b!2555035 c!409925) b!2555037))

(assert (= (and b!2555035 (not c!409925)) b!2555039))

(assert (= (and b!2555039 c!409923) b!2555032))

(assert (= (and b!2555039 (not c!409923)) b!2555040))

(assert (= (and b!2555040 c!409924) b!2555038))

(assert (= (and b!2555040 (not c!409924)) b!2555033))

(assert (= (and b!2555033 c!409926) b!2555041))

(assert (= (and b!2555033 (not c!409926)) b!2555034))

(assert (= (or b!2555041 b!2555034) bm!162975))

(assert (= (or b!2555038 bm!162975) bm!162976))

(assert (= (or b!2555032 b!2555041) bm!162974))

(assert (= (or b!2555032 bm!162976) bm!162973))

(declare-fun m!2896953 () Bool)

(assert (=> bm!162973 m!2896953))

(declare-fun m!2896955 () Bool)

(assert (=> b!2555033 m!2896955))

(declare-fun m!2896957 () Bool)

(assert (=> d!724086 m!2896957))

(declare-fun m!2896959 () Bool)

(assert (=> d!724086 m!2896959))

(declare-fun m!2896963 () Bool)

(assert (=> bm!162974 m!2896963))

(assert (=> bm!162840 d!724086))

(declare-fun d!724092 () Bool)

(assert (=> d!724092 (= (nullable!2526 (regOne!15730 (regOne!15730 r!27340))) (nullableFct!751 (regOne!15730 (regOne!15730 r!27340))))))

(declare-fun bs!469701 () Bool)

(assert (= bs!469701 d!724092))

(declare-fun m!2896965 () Bool)

(assert (=> bs!469701 m!2896965))

(assert (=> b!2554221 d!724092))

(assert (=> b!2554004 d!723834))

(assert (=> b!2554463 d!723978))

(assert (=> b!2554463 d!723980))

(declare-fun call!162985 () Regex!7609)

(declare-fun bm!162980 () Bool)

(declare-fun c!409930 () Bool)

(declare-fun c!409931 () Bool)

(assert (=> bm!162980 (= call!162985 (derivativeStep!2178 (ite c!409930 (regOne!15731 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340)))) (ite c!409931 (reg!7938 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340)))) (regOne!15730 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340)))))) c!14016))))

(declare-fun b!2555051 () Bool)

(declare-fun e!1614158 () Regex!7609)

(declare-fun call!162986 () Regex!7609)

(assert (=> b!2555051 (= e!1614158 (Union!7609 call!162985 call!162986))))

(declare-fun b!2555052 () Bool)

(declare-fun c!409933 () Bool)

(assert (=> b!2555052 (= c!409933 (nullable!2526 (regOne!15730 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))))))

(declare-fun e!1614156 () Regex!7609)

(declare-fun e!1614157 () Regex!7609)

(assert (=> b!2555052 (= e!1614156 e!1614157)))

(declare-fun call!162987 () Regex!7609)

(declare-fun b!2555053 () Bool)

(assert (=> b!2555053 (= e!1614157 (Union!7609 (Concat!12305 call!162987 (regTwo!15730 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))) EmptyLang!7609))))

(declare-fun d!724094 () Bool)

(declare-fun lt!904036 () Regex!7609)

(assert (=> d!724094 (validRegex!3235 lt!904036)))

(declare-fun e!1614155 () Regex!7609)

(assert (=> d!724094 (= lt!904036 e!1614155)))

(declare-fun c!409929 () Bool)

(assert (=> d!724094 (= c!409929 (or ((_ is EmptyExpr!7609) (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340)))) ((_ is EmptyLang!7609) (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))))))

(assert (=> d!724094 (validRegex!3235 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))))

(assert (=> d!724094 (= (derivativeStep!2178 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))) c!14016) lt!904036)))

(declare-fun b!2555054 () Bool)

(declare-fun e!1614154 () Regex!7609)

(assert (=> b!2555054 (= e!1614155 e!1614154)))

(declare-fun c!409932 () Bool)

(assert (=> b!2555054 (= c!409932 ((_ is ElementMatch!7609) (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340)))))))

(declare-fun b!2555055 () Bool)

(assert (=> b!2555055 (= e!1614155 EmptyLang!7609)))

(declare-fun bm!162981 () Bool)

(assert (=> bm!162981 (= call!162986 (derivativeStep!2178 (ite c!409930 (regTwo!15731 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340)))) (regTwo!15730 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))) c!14016))))

(declare-fun bm!162982 () Bool)

(declare-fun call!162988 () Regex!7609)

(assert (=> bm!162982 (= call!162987 call!162988)))

(declare-fun b!2555056 () Bool)

(assert (=> b!2555056 (= e!1614154 (ite (= c!14016 (c!409621 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555057 () Bool)

(assert (=> b!2555057 (= e!1614156 (Concat!12305 call!162988 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340)))))))

(declare-fun b!2555058 () Bool)

(assert (=> b!2555058 (= c!409930 ((_ is Union!7609) (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340)))))))

(assert (=> b!2555058 (= e!1614154 e!1614158)))

(declare-fun b!2555059 () Bool)

(assert (=> b!2555059 (= e!1614158 e!1614156)))

(assert (=> b!2555059 (= c!409931 ((_ is Star!7609) (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340)))))))

(declare-fun bm!162983 () Bool)

(assert (=> bm!162983 (= call!162988 call!162985)))

(declare-fun b!2555060 () Bool)

(assert (=> b!2555060 (= e!1614157 (Union!7609 (Concat!12305 call!162987 (regTwo!15730 (ite c!409712 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))) call!162986))))

(assert (= (and d!724094 c!409929) b!2555055))

(assert (= (and d!724094 (not c!409929)) b!2555054))

(assert (= (and b!2555054 c!409932) b!2555056))

(assert (= (and b!2555054 (not c!409932)) b!2555058))

(assert (= (and b!2555058 c!409930) b!2555051))

(assert (= (and b!2555058 (not c!409930)) b!2555059))

(assert (= (and b!2555059 c!409931) b!2555057))

(assert (= (and b!2555059 (not c!409931)) b!2555052))

(assert (= (and b!2555052 c!409933) b!2555060))

(assert (= (and b!2555052 (not c!409933)) b!2555053))

(assert (= (or b!2555060 b!2555053) bm!162982))

(assert (= (or b!2555057 bm!162982) bm!162983))

(assert (= (or b!2555051 b!2555060) bm!162981))

(assert (= (or b!2555051 bm!162983) bm!162980))

(declare-fun m!2896973 () Bool)

(assert (=> bm!162980 m!2896973))

(declare-fun m!2896975 () Bool)

(assert (=> b!2555052 m!2896975))

(declare-fun m!2896977 () Bool)

(assert (=> d!724094 m!2896977))

(declare-fun m!2896979 () Bool)

(assert (=> d!724094 m!2896979))

(declare-fun m!2896981 () Bool)

(assert (=> bm!162981 m!2896981))

(assert (=> bm!162818 d!724094))

(assert (=> b!2554008 d!724022))

(assert (=> b!2554008 d!724024))

(declare-fun b!2555147 () Bool)

(declare-fun e!1614218 () Bool)

(declare-fun e!1614219 () Bool)

(assert (=> b!2555147 (= e!1614218 e!1614219)))

(declare-fun res!1076204 () Bool)

(declare-fun call!163006 () Bool)

(assert (=> b!2555147 (= res!1076204 call!163006)))

(assert (=> b!2555147 (=> (not res!1076204) (not e!1614219))))

(declare-fun b!2555148 () Bool)

(declare-fun call!163005 () Bool)

(assert (=> b!2555148 (= e!1614219 call!163005)))

(declare-fun b!2555149 () Bool)

(declare-fun e!1614217 () Bool)

(assert (=> b!2555149 (= e!1614217 call!163006)))

(declare-fun b!2555151 () Bool)

(declare-fun e!1614221 () Bool)

(declare-fun e!1614222 () Bool)

(assert (=> b!2555151 (= e!1614221 e!1614222)))

(declare-fun res!1076203 () Bool)

(assert (=> b!2555151 (=> res!1076203 e!1614222)))

(assert (=> b!2555151 (= res!1076203 ((_ is Star!7609) (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068)))))

(declare-fun bm!163000 () Bool)

(declare-fun c!409950 () Bool)

(assert (=> bm!163000 (= call!163005 (nullable!2526 (ite c!409950 (regOne!15731 (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068)) (regTwo!15730 (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2555152 () Bool)

(declare-fun e!1614220 () Bool)

(assert (=> b!2555152 (= e!1614220 e!1614221)))

(declare-fun res!1076205 () Bool)

(assert (=> b!2555152 (=> (not res!1076205) (not e!1614221))))

(assert (=> b!2555152 (= res!1076205 (and (not ((_ is EmptyLang!7609) (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7609) (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068)))))))

(declare-fun bm!163001 () Bool)

(assert (=> bm!163001 (= call!163006 (nullable!2526 (ite c!409950 (regTwo!15731 (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068)) (regOne!15730 (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2555153 () Bool)

(assert (=> b!2555153 (= e!1614222 e!1614218)))

(assert (=> b!2555153 (= c!409950 ((_ is Union!7609) (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068)))))

(declare-fun b!2555150 () Bool)

(assert (=> b!2555150 (= e!1614218 e!1614217)))

(declare-fun res!1076201 () Bool)

(assert (=> b!2555150 (= res!1076201 call!163005)))

(assert (=> b!2555150 (=> res!1076201 e!1614217)))

(declare-fun d!724098 () Bool)

(declare-fun res!1076202 () Bool)

(assert (=> d!724098 (=> res!1076202 e!1614220)))

(assert (=> d!724098 (= res!1076202 ((_ is EmptyExpr!7609) (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068)))))

(assert (=> d!724098 (= (nullableFct!751 (derivative!304 (derivativeStep!2178 r!27340 c!14016) tl!4068)) e!1614220)))

(assert (= (and d!724098 (not res!1076202)) b!2555152))

(assert (= (and b!2555152 res!1076205) b!2555151))

(assert (= (and b!2555151 (not res!1076203)) b!2555153))

(assert (= (and b!2555153 c!409950) b!2555150))

(assert (= (and b!2555153 (not c!409950)) b!2555147))

(assert (= (and b!2555150 (not res!1076201)) b!2555149))

(assert (= (and b!2555147 res!1076204) b!2555148))

(assert (= (or b!2555149 b!2555147) bm!163001))

(assert (= (or b!2555150 b!2555148) bm!163000))

(declare-fun m!2897027 () Bool)

(assert (=> bm!163000 m!2897027))

(declare-fun m!2897029 () Bool)

(assert (=> bm!163001 m!2897029))

(assert (=> d!723836 d!724098))

(declare-fun b!2555174 () Bool)

(declare-fun e!1614237 () Bool)

(assert (=> b!2555174 (= e!1614237 (matchR!3554 (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 (_2!17332 (get!9293 lt!903985)))) (tail!4091 (_2!17332 (get!9293 lt!903985)))))))

(declare-fun b!2555175 () Bool)

(declare-fun e!1614235 () Bool)

(declare-fun e!1614233 () Bool)

(assert (=> b!2555175 (= e!1614235 e!1614233)))

(declare-fun res!1076209 () Bool)

(assert (=> b!2555175 (=> (not res!1076209) (not e!1614233))))

(declare-fun lt!904042 () Bool)

(assert (=> b!2555175 (= res!1076209 (not lt!904042))))

(declare-fun b!2555176 () Bool)

(assert (=> b!2555176 (= e!1614237 (nullable!2526 (regTwo!15730 r!27340)))))

(declare-fun b!2555178 () Bool)

(declare-fun e!1614236 () Bool)

(assert (=> b!2555178 (= e!1614236 (not lt!904042))))

(declare-fun b!2555179 () Bool)

(declare-fun e!1614239 () Bool)

(assert (=> b!2555179 (= e!1614233 e!1614239)))

(declare-fun res!1076208 () Bool)

(assert (=> b!2555179 (=> res!1076208 e!1614239)))

(declare-fun call!163015 () Bool)

(assert (=> b!2555179 (= res!1076208 call!163015)))

(declare-fun b!2555180 () Bool)

(declare-fun res!1076206 () Bool)

(declare-fun e!1614234 () Bool)

(assert (=> b!2555180 (=> (not res!1076206) (not e!1614234))))

(assert (=> b!2555180 (= res!1076206 (isEmpty!17027 (tail!4091 (_2!17332 (get!9293 lt!903985)))))))

(declare-fun b!2555181 () Bool)

(declare-fun res!1076213 () Bool)

(assert (=> b!2555181 (=> res!1076213 e!1614239)))

(assert (=> b!2555181 (= res!1076213 (not (isEmpty!17027 (tail!4091 (_2!17332 (get!9293 lt!903985))))))))

(declare-fun b!2555182 () Bool)

(declare-fun e!1614238 () Bool)

(assert (=> b!2555182 (= e!1614238 e!1614236)))

(declare-fun c!409963 () Bool)

(assert (=> b!2555182 (= c!409963 ((_ is EmptyLang!7609) (regTwo!15730 r!27340)))))

(declare-fun b!2555183 () Bool)

(assert (=> b!2555183 (= e!1614234 (= (head!5816 (_2!17332 (get!9293 lt!903985))) (c!409621 (regTwo!15730 r!27340))))))

(declare-fun b!2555184 () Bool)

(assert (=> b!2555184 (= e!1614239 (not (= (head!5816 (_2!17332 (get!9293 lt!903985))) (c!409621 (regTwo!15730 r!27340)))))))

(declare-fun b!2555185 () Bool)

(declare-fun res!1076210 () Bool)

(assert (=> b!2555185 (=> res!1076210 e!1614235)))

(assert (=> b!2555185 (= res!1076210 e!1614234)))

(declare-fun res!1076211 () Bool)

(assert (=> b!2555185 (=> (not res!1076211) (not e!1614234))))

(assert (=> b!2555185 (= res!1076211 lt!904042)))

(declare-fun b!2555186 () Bool)

(assert (=> b!2555186 (= e!1614238 (= lt!904042 call!163015))))

(declare-fun b!2555177 () Bool)

(declare-fun res!1076212 () Bool)

(assert (=> b!2555177 (=> (not res!1076212) (not e!1614234))))

(assert (=> b!2555177 (= res!1076212 (not call!163015))))

(declare-fun d!724114 () Bool)

(assert (=> d!724114 e!1614238))

(declare-fun c!409962 () Bool)

(assert (=> d!724114 (= c!409962 ((_ is EmptyExpr!7609) (regTwo!15730 r!27340)))))

(assert (=> d!724114 (= lt!904042 e!1614237)))

(declare-fun c!409961 () Bool)

(assert (=> d!724114 (= c!409961 (isEmpty!17027 (_2!17332 (get!9293 lt!903985))))))

(assert (=> d!724114 (validRegex!3235 (regTwo!15730 r!27340))))

(assert (=> d!724114 (= (matchR!3554 (regTwo!15730 r!27340) (_2!17332 (get!9293 lt!903985))) lt!904042)))

(declare-fun b!2555187 () Bool)

(declare-fun res!1076207 () Bool)

(assert (=> b!2555187 (=> res!1076207 e!1614235)))

(assert (=> b!2555187 (= res!1076207 (not ((_ is ElementMatch!7609) (regTwo!15730 r!27340))))))

(assert (=> b!2555187 (= e!1614236 e!1614235)))

(declare-fun bm!163010 () Bool)

(assert (=> bm!163010 (= call!163015 (isEmpty!17027 (_2!17332 (get!9293 lt!903985))))))

(assert (= (and d!724114 c!409961) b!2555176))

(assert (= (and d!724114 (not c!409961)) b!2555174))

(assert (= (and d!724114 c!409962) b!2555186))

(assert (= (and d!724114 (not c!409962)) b!2555182))

(assert (= (and b!2555182 c!409963) b!2555178))

(assert (= (and b!2555182 (not c!409963)) b!2555187))

(assert (= (and b!2555187 (not res!1076207)) b!2555185))

(assert (= (and b!2555185 res!1076211) b!2555177))

(assert (= (and b!2555177 res!1076212) b!2555180))

(assert (= (and b!2555180 res!1076206) b!2555183))

(assert (= (and b!2555185 (not res!1076210)) b!2555175))

(assert (= (and b!2555175 res!1076209) b!2555179))

(assert (= (and b!2555179 (not res!1076208)) b!2555181))

(assert (= (and b!2555181 (not res!1076213)) b!2555184))

(assert (= (or b!2555186 b!2555177 b!2555179) bm!163010))

(declare-fun m!2897051 () Bool)

(assert (=> bm!163010 m!2897051))

(declare-fun m!2897053 () Bool)

(assert (=> b!2555180 m!2897053))

(assert (=> b!2555180 m!2897053))

(declare-fun m!2897055 () Bool)

(assert (=> b!2555180 m!2897055))

(declare-fun m!2897057 () Bool)

(assert (=> b!2555174 m!2897057))

(assert (=> b!2555174 m!2897057))

(declare-fun m!2897059 () Bool)

(assert (=> b!2555174 m!2897059))

(assert (=> b!2555174 m!2897053))

(assert (=> b!2555174 m!2897059))

(assert (=> b!2555174 m!2897053))

(declare-fun m!2897061 () Bool)

(assert (=> b!2555174 m!2897061))

(assert (=> b!2555176 m!2896441))

(assert (=> d!724114 m!2897051))

(assert (=> d!724114 m!2896241))

(assert (=> b!2555183 m!2897057))

(assert (=> b!2555181 m!2897053))

(assert (=> b!2555181 m!2897053))

(assert (=> b!2555181 m!2897055))

(assert (=> b!2555184 m!2897057))

(assert (=> b!2554427 d!724114))

(assert (=> b!2554427 d!724002))

(assert (=> b!2554486 d!724006))

(assert (=> b!2554486 d!724010))

(declare-fun d!724122 () Bool)

(assert (=> d!724122 (= (head!5816 (_2!17332 lt!903904)) (h!34994 (_2!17332 lt!903904)))))

(assert (=> b!2554467 d!724122))

(declare-fun d!724124 () Bool)

(assert (=> d!724124 (= (matchR!3554 lt!903911 (_1!17332 lt!903904)) (matchR!3554 (derivative!304 lt!903911 (_1!17332 lt!903904)) Nil!29574))))

(assert (=> d!724124 true))

(declare-fun _$108!352 () Unit!43403)

(assert (=> d!724124 (= (choose!15082 lt!903911 (_1!17332 lt!903904)) _$108!352)))

(declare-fun bs!469703 () Bool)

(assert (= bs!469703 d!724124))

(assert (=> bs!469703 m!2895999))

(assert (=> bs!469703 m!2896045))

(assert (=> bs!469703 m!2896045))

(assert (=> bs!469703 m!2896107))

(assert (=> d!723762 d!724124))

(assert (=> d!723762 d!724054))

(assert (=> d!723762 d!723848))

(declare-fun b!2555215 () Bool)

(declare-fun e!1614260 () Bool)

(assert (=> b!2555215 (= e!1614260 (matchR!3554 (derivativeStep!2178 (derivative!304 lt!903911 (_1!17332 lt!903904)) (head!5816 Nil!29574)) (tail!4091 Nil!29574)))))

(declare-fun b!2555216 () Bool)

(declare-fun e!1614258 () Bool)

(declare-fun e!1614256 () Bool)

(assert (=> b!2555216 (= e!1614258 e!1614256)))

(declare-fun res!1076222 () Bool)

(assert (=> b!2555216 (=> (not res!1076222) (not e!1614256))))

(declare-fun lt!904045 () Bool)

(assert (=> b!2555216 (= res!1076222 (not lt!904045))))

(declare-fun b!2555217 () Bool)

(assert (=> b!2555217 (= e!1614260 (nullable!2526 (derivative!304 lt!903911 (_1!17332 lt!903904))))))

(declare-fun b!2555219 () Bool)

(declare-fun e!1614259 () Bool)

(assert (=> b!2555219 (= e!1614259 (not lt!904045))))

(declare-fun b!2555220 () Bool)

(declare-fun e!1614262 () Bool)

(assert (=> b!2555220 (= e!1614256 e!1614262)))

(declare-fun res!1076221 () Bool)

(assert (=> b!2555220 (=> res!1076221 e!1614262)))

(declare-fun call!163026 () Bool)

(assert (=> b!2555220 (= res!1076221 call!163026)))

(declare-fun b!2555221 () Bool)

(declare-fun res!1076219 () Bool)

(declare-fun e!1614257 () Bool)

(assert (=> b!2555221 (=> (not res!1076219) (not e!1614257))))

(assert (=> b!2555221 (= res!1076219 (isEmpty!17027 (tail!4091 Nil!29574)))))

(declare-fun b!2555222 () Bool)

(declare-fun res!1076226 () Bool)

(assert (=> b!2555222 (=> res!1076226 e!1614262)))

(assert (=> b!2555222 (= res!1076226 (not (isEmpty!17027 (tail!4091 Nil!29574))))))

(declare-fun b!2555223 () Bool)

(declare-fun e!1614261 () Bool)

(assert (=> b!2555223 (= e!1614261 e!1614259)))

(declare-fun c!409977 () Bool)

(assert (=> b!2555223 (= c!409977 ((_ is EmptyLang!7609) (derivative!304 lt!903911 (_1!17332 lt!903904))))))

(declare-fun b!2555224 () Bool)

(assert (=> b!2555224 (= e!1614257 (= (head!5816 Nil!29574) (c!409621 (derivative!304 lt!903911 (_1!17332 lt!903904)))))))

(declare-fun b!2555225 () Bool)

(assert (=> b!2555225 (= e!1614262 (not (= (head!5816 Nil!29574) (c!409621 (derivative!304 lt!903911 (_1!17332 lt!903904))))))))

(declare-fun b!2555226 () Bool)

(declare-fun res!1076223 () Bool)

(assert (=> b!2555226 (=> res!1076223 e!1614258)))

(assert (=> b!2555226 (= res!1076223 e!1614257)))

(declare-fun res!1076224 () Bool)

(assert (=> b!2555226 (=> (not res!1076224) (not e!1614257))))

(assert (=> b!2555226 (= res!1076224 lt!904045)))

(declare-fun b!2555227 () Bool)

(assert (=> b!2555227 (= e!1614261 (= lt!904045 call!163026))))

(declare-fun b!2555218 () Bool)

(declare-fun res!1076225 () Bool)

(assert (=> b!2555218 (=> (not res!1076225) (not e!1614257))))

(assert (=> b!2555218 (= res!1076225 (not call!163026))))

(declare-fun d!724126 () Bool)

(assert (=> d!724126 e!1614261))

(declare-fun c!409976 () Bool)

(assert (=> d!724126 (= c!409976 ((_ is EmptyExpr!7609) (derivative!304 lt!903911 (_1!17332 lt!903904))))))

(assert (=> d!724126 (= lt!904045 e!1614260)))

(declare-fun c!409975 () Bool)

(assert (=> d!724126 (= c!409975 (isEmpty!17027 Nil!29574))))

(assert (=> d!724126 (validRegex!3235 (derivative!304 lt!903911 (_1!17332 lt!903904)))))

(assert (=> d!724126 (= (matchR!3554 (derivative!304 lt!903911 (_1!17332 lt!903904)) Nil!29574) lt!904045)))

(declare-fun b!2555228 () Bool)

(declare-fun res!1076220 () Bool)

(assert (=> b!2555228 (=> res!1076220 e!1614258)))

(assert (=> b!2555228 (= res!1076220 (not ((_ is ElementMatch!7609) (derivative!304 lt!903911 (_1!17332 lt!903904)))))))

(assert (=> b!2555228 (= e!1614259 e!1614258)))

(declare-fun bm!163021 () Bool)

(assert (=> bm!163021 (= call!163026 (isEmpty!17027 Nil!29574))))

(assert (= (and d!724126 c!409975) b!2555217))

(assert (= (and d!724126 (not c!409975)) b!2555215))

(assert (= (and d!724126 c!409976) b!2555227))

(assert (= (and d!724126 (not c!409976)) b!2555223))

(assert (= (and b!2555223 c!409977) b!2555219))

(assert (= (and b!2555223 (not c!409977)) b!2555228))

(assert (= (and b!2555228 (not res!1076220)) b!2555226))

(assert (= (and b!2555226 res!1076224) b!2555218))

(assert (= (and b!2555218 res!1076225) b!2555221))

(assert (= (and b!2555221 res!1076219) b!2555224))

(assert (= (and b!2555226 (not res!1076223)) b!2555216))

(assert (= (and b!2555216 res!1076222) b!2555220))

(assert (= (and b!2555220 (not res!1076221)) b!2555222))

(assert (= (and b!2555222 (not res!1076226)) b!2555225))

(assert (= (or b!2555227 b!2555218 b!2555220) bm!163021))

(assert (=> bm!163021 m!2896083))

(assert (=> b!2555221 m!2896085))

(assert (=> b!2555221 m!2896085))

(assert (=> b!2555221 m!2896087))

(assert (=> b!2555215 m!2896089))

(assert (=> b!2555215 m!2896045))

(assert (=> b!2555215 m!2896089))

(declare-fun m!2897089 () Bool)

(assert (=> b!2555215 m!2897089))

(assert (=> b!2555215 m!2896085))

(assert (=> b!2555215 m!2897089))

(assert (=> b!2555215 m!2896085))

(declare-fun m!2897091 () Bool)

(assert (=> b!2555215 m!2897091))

(assert (=> b!2555217 m!2896045))

(declare-fun m!2897093 () Bool)

(assert (=> b!2555217 m!2897093))

(assert (=> d!724126 m!2896083))

(assert (=> d!724126 m!2896045))

(declare-fun m!2897095 () Bool)

(assert (=> d!724126 m!2897095))

(assert (=> b!2555224 m!2896089))

(assert (=> b!2555222 m!2896085))

(assert (=> b!2555222 m!2896085))

(assert (=> b!2555222 m!2896087))

(assert (=> b!2555225 m!2896089))

(assert (=> d!723762 d!724126))

(assert (=> d!723762 d!723760))

(declare-fun d!724138 () Bool)

(assert (=> d!724138 (= (nullable!2526 lt!903902) (nullableFct!751 lt!903902))))

(declare-fun bs!469705 () Bool)

(assert (= bs!469705 d!724138))

(declare-fun m!2897097 () Bool)

(assert (=> bs!469705 m!2897097))

(assert (=> b!2554232 d!724138))

(assert (=> b!2554503 d!724026))

(declare-fun b!2555247 () Bool)

(declare-fun e!1614279 () Bool)

(declare-fun call!163034 () Bool)

(assert (=> b!2555247 (= e!1614279 call!163034)))

(declare-fun b!2555248 () Bool)

(declare-fun e!1614282 () Bool)

(declare-fun call!163033 () Bool)

(assert (=> b!2555248 (= e!1614282 call!163033)))

(declare-fun b!2555249 () Bool)

(declare-fun e!1614283 () Bool)

(assert (=> b!2555249 (= e!1614283 e!1614279)))

(declare-fun res!1076237 () Bool)

(assert (=> b!2555249 (= res!1076237 (not (nullable!2526 (reg!7938 (ite c!409769 (regTwo!15731 r!27340) (regOne!15730 r!27340))))))))

(assert (=> b!2555249 (=> (not res!1076237) (not e!1614279))))

(declare-fun bm!163028 () Bool)

(declare-fun c!409983 () Bool)

(declare-fun c!409982 () Bool)

(assert (=> bm!163028 (= call!163034 (validRegex!3235 (ite c!409982 (reg!7938 (ite c!409769 (regTwo!15731 r!27340) (regOne!15730 r!27340))) (ite c!409983 (regOne!15731 (ite c!409769 (regTwo!15731 r!27340) (regOne!15730 r!27340))) (regTwo!15730 (ite c!409769 (regTwo!15731 r!27340) (regOne!15730 r!27340)))))))))

(declare-fun d!724140 () Bool)

(declare-fun res!1076238 () Bool)

(declare-fun e!1614280 () Bool)

(assert (=> d!724140 (=> res!1076238 e!1614280)))

(assert (=> d!724140 (= res!1076238 ((_ is ElementMatch!7609) (ite c!409769 (regTwo!15731 r!27340) (regOne!15730 r!27340))))))

(assert (=> d!724140 (= (validRegex!3235 (ite c!409769 (regTwo!15731 r!27340) (regOne!15730 r!27340))) e!1614280)))

(declare-fun b!2555250 () Bool)

(declare-fun e!1614281 () Bool)

(assert (=> b!2555250 (= e!1614283 e!1614281)))

(assert (=> b!2555250 (= c!409983 ((_ is Union!7609) (ite c!409769 (regTwo!15731 r!27340) (regOne!15730 r!27340))))))

(declare-fun b!2555251 () Bool)

(assert (=> b!2555251 (= e!1614280 e!1614283)))

(assert (=> b!2555251 (= c!409982 ((_ is Star!7609) (ite c!409769 (regTwo!15731 r!27340) (regOne!15730 r!27340))))))

(declare-fun b!2555252 () Bool)

(declare-fun res!1076240 () Bool)

(declare-fun e!1614277 () Bool)

(assert (=> b!2555252 (=> res!1076240 e!1614277)))

(assert (=> b!2555252 (= res!1076240 (not ((_ is Concat!12305) (ite c!409769 (regTwo!15731 r!27340) (regOne!15730 r!27340)))))))

(assert (=> b!2555252 (= e!1614281 e!1614277)))

(declare-fun b!2555253 () Bool)

(declare-fun e!1614278 () Bool)

(assert (=> b!2555253 (= e!1614277 e!1614278)))

(declare-fun res!1076241 () Bool)

(assert (=> b!2555253 (=> (not res!1076241) (not e!1614278))))

(assert (=> b!2555253 (= res!1076241 call!163033)))

(declare-fun bm!163029 () Bool)

(assert (=> bm!163029 (= call!163033 (validRegex!3235 (ite c!409983 (regTwo!15731 (ite c!409769 (regTwo!15731 r!27340) (regOne!15730 r!27340))) (regOne!15730 (ite c!409769 (regTwo!15731 r!27340) (regOne!15730 r!27340))))))))

(declare-fun bm!163030 () Bool)

(declare-fun call!163035 () Bool)

(assert (=> bm!163030 (= call!163035 call!163034)))

(declare-fun b!2555254 () Bool)

(declare-fun res!1076239 () Bool)

(assert (=> b!2555254 (=> (not res!1076239) (not e!1614282))))

(assert (=> b!2555254 (= res!1076239 call!163035)))

(assert (=> b!2555254 (= e!1614281 e!1614282)))

(declare-fun b!2555255 () Bool)

(assert (=> b!2555255 (= e!1614278 call!163035)))

(assert (= (and d!724140 (not res!1076238)) b!2555251))

(assert (= (and b!2555251 c!409982) b!2555249))

(assert (= (and b!2555251 (not c!409982)) b!2555250))

(assert (= (and b!2555249 res!1076237) b!2555247))

(assert (= (and b!2555250 c!409983) b!2555254))

(assert (= (and b!2555250 (not c!409983)) b!2555252))

(assert (= (and b!2555254 res!1076239) b!2555248))

(assert (= (and b!2555252 (not res!1076240)) b!2555253))

(assert (= (and b!2555253 res!1076241) b!2555255))

(assert (= (or b!2555254 b!2555255) bm!163030))

(assert (= (or b!2555248 b!2555253) bm!163029))

(assert (= (or b!2555247 bm!163030) bm!163028))

(declare-fun m!2897099 () Bool)

(assert (=> b!2555249 m!2897099))

(declare-fun m!2897101 () Bool)

(assert (=> bm!163028 m!2897101))

(declare-fun m!2897107 () Bool)

(assert (=> bm!163029 m!2897107))

(assert (=> bm!162845 d!724140))

(declare-fun b!2555264 () Bool)

(declare-fun e!1614288 () List!29674)

(assert (=> b!2555264 (= e!1614288 (t!211373 tl!4068))))

(declare-fun b!2555266 () Bool)

(declare-fun res!1076242 () Bool)

(declare-fun e!1614289 () Bool)

(assert (=> b!2555266 (=> (not res!1076242) (not e!1614289))))

(declare-fun lt!904046 () List!29674)

(assert (=> b!2555266 (= res!1076242 (= (size!22952 lt!904046) (+ (size!22952 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574))) (size!22952 (t!211373 tl!4068)))))))

(declare-fun b!2555267 () Bool)

(assert (=> b!2555267 (= e!1614289 (or (not (= (t!211373 tl!4068) Nil!29574)) (= lt!904046 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574)))))))

(declare-fun b!2555265 () Bool)

(assert (=> b!2555265 (= e!1614288 (Cons!29574 (h!34994 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574))) (++!7266 (t!211373 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574))) (t!211373 tl!4068))))))

(declare-fun d!724144 () Bool)

(assert (=> d!724144 e!1614289))

(declare-fun res!1076243 () Bool)

(assert (=> d!724144 (=> (not res!1076243) (not e!1614289))))

(assert (=> d!724144 (= res!1076243 (= (content!4072 lt!904046) ((_ map or) (content!4072 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574))) (content!4072 (t!211373 tl!4068)))))))

(assert (=> d!724144 (= lt!904046 e!1614288)))

(declare-fun c!409988 () Bool)

(assert (=> d!724144 (= c!409988 ((_ is Nil!29574) (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574))))))

(assert (=> d!724144 (= (++!7266 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574)) (t!211373 tl!4068)) lt!904046)))

(assert (= (and d!724144 c!409988) b!2555264))

(assert (= (and d!724144 (not c!409988)) b!2555265))

(assert (= (and d!724144 res!1076243) b!2555266))

(assert (= (and b!2555266 res!1076242) b!2555267))

(declare-fun m!2897115 () Bool)

(assert (=> b!2555266 m!2897115))

(assert (=> b!2555266 m!2896375))

(declare-fun m!2897117 () Bool)

(assert (=> b!2555266 m!2897117))

(declare-fun m!2897119 () Bool)

(assert (=> b!2555266 m!2897119))

(declare-fun m!2897121 () Bool)

(assert (=> b!2555265 m!2897121))

(declare-fun m!2897123 () Bool)

(assert (=> d!724144 m!2897123))

(assert (=> d!724144 m!2896375))

(declare-fun m!2897125 () Bool)

(assert (=> d!724144 m!2897125))

(declare-fun m!2897127 () Bool)

(assert (=> d!724144 m!2897127))

(assert (=> b!2554431 d!724144))

(declare-fun b!2555274 () Bool)

(declare-fun e!1614291 () List!29674)

(assert (=> b!2555274 (= e!1614291 (Cons!29574 (h!34994 tl!4068) Nil!29574))))

(declare-fun b!2555276 () Bool)

(declare-fun res!1076244 () Bool)

(declare-fun e!1614294 () Bool)

(assert (=> b!2555276 (=> (not res!1076244) (not e!1614294))))

(declare-fun lt!904049 () List!29674)

(assert (=> b!2555276 (= res!1076244 (= (size!22952 lt!904049) (+ (size!22952 Nil!29574) (size!22952 (Cons!29574 (h!34994 tl!4068) Nil!29574)))))))

(declare-fun b!2555277 () Bool)

(assert (=> b!2555277 (= e!1614294 (or (not (= (Cons!29574 (h!34994 tl!4068) Nil!29574) Nil!29574)) (= lt!904049 Nil!29574)))))

(declare-fun b!2555275 () Bool)

(assert (=> b!2555275 (= e!1614291 (Cons!29574 (h!34994 Nil!29574) (++!7266 (t!211373 Nil!29574) (Cons!29574 (h!34994 tl!4068) Nil!29574))))))

(declare-fun d!724150 () Bool)

(assert (=> d!724150 e!1614294))

(declare-fun res!1076245 () Bool)

(assert (=> d!724150 (=> (not res!1076245) (not e!1614294))))

(assert (=> d!724150 (= res!1076245 (= (content!4072 lt!904049) ((_ map or) (content!4072 Nil!29574) (content!4072 (Cons!29574 (h!34994 tl!4068) Nil!29574)))))))

(assert (=> d!724150 (= lt!904049 e!1614291)))

(declare-fun c!409991 () Bool)

(assert (=> d!724150 (= c!409991 ((_ is Nil!29574) Nil!29574))))

(assert (=> d!724150 (= (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574)) lt!904049)))

(assert (= (and d!724150 c!409991) b!2555274))

(assert (= (and d!724150 (not c!409991)) b!2555275))

(assert (= (and d!724150 res!1076245) b!2555276))

(assert (= (and b!2555276 res!1076244) b!2555277))

(declare-fun m!2897129 () Bool)

(assert (=> b!2555276 m!2897129))

(declare-fun m!2897131 () Bool)

(assert (=> b!2555276 m!2897131))

(declare-fun m!2897133 () Bool)

(assert (=> b!2555276 m!2897133))

(declare-fun m!2897135 () Bool)

(assert (=> b!2555275 m!2897135))

(declare-fun m!2897137 () Bool)

(assert (=> d!724150 m!2897137))

(declare-fun m!2897139 () Bool)

(assert (=> d!724150 m!2897139))

(declare-fun m!2897141 () Bool)

(assert (=> d!724150 m!2897141))

(assert (=> b!2554431 d!724150))

(declare-fun d!724152 () Bool)

(assert (=> d!724152 (= (++!7266 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574)) (t!211373 tl!4068)) tl!4068)))

(declare-fun lt!904055 () Unit!43403)

(declare-fun choose!15086 (List!29674 C!15376 List!29674 List!29674) Unit!43403)

(assert (=> d!724152 (= lt!904055 (choose!15086 Nil!29574 (h!34994 tl!4068) (t!211373 tl!4068) tl!4068))))

(assert (=> d!724152 (= (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) (t!211373 tl!4068))) tl!4068)))

(assert (=> d!724152 (= (lemmaMoveElementToOtherListKeepsConcatEq!799 Nil!29574 (h!34994 tl!4068) (t!211373 tl!4068) tl!4068) lt!904055)))

(declare-fun bs!469707 () Bool)

(assert (= bs!469707 d!724152))

(assert (=> bs!469707 m!2896375))

(assert (=> bs!469707 m!2896375))

(assert (=> bs!469707 m!2896377))

(declare-fun m!2897159 () Bool)

(assert (=> bs!469707 m!2897159))

(declare-fun m!2897161 () Bool)

(assert (=> bs!469707 m!2897161))

(assert (=> b!2554431 d!724152))

(declare-fun b!2555401 () Bool)

(declare-fun e!1614339 () Option!5910)

(declare-fun e!1614336 () Option!5910)

(assert (=> b!2555401 (= e!1614339 e!1614336)))

(declare-fun c!410000 () Bool)

(assert (=> b!2555401 (= c!410000 ((_ is Nil!29574) (t!211373 tl!4068)))))

(declare-fun d!724166 () Bool)

(declare-fun e!1614337 () Bool)

(assert (=> d!724166 e!1614337))

(declare-fun res!1076256 () Bool)

(assert (=> d!724166 (=> res!1076256 e!1614337)))

(declare-fun e!1614338 () Bool)

(assert (=> d!724166 (= res!1076256 e!1614338)))

(declare-fun res!1076259 () Bool)

(assert (=> d!724166 (=> (not res!1076259) (not e!1614338))))

(declare-fun lt!904058 () Option!5910)

(assert (=> d!724166 (= res!1076259 (isDefined!4732 lt!904058))))

(assert (=> d!724166 (= lt!904058 e!1614339)))

(declare-fun c!409999 () Bool)

(declare-fun e!1614341 () Bool)

(assert (=> d!724166 (= c!409999 e!1614341)))

(declare-fun res!1076260 () Bool)

(assert (=> d!724166 (=> (not res!1076260) (not e!1614341))))

(assert (=> d!724166 (= res!1076260 (matchR!3554 lt!903911 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574))))))

(assert (=> d!724166 (validRegex!3235 lt!903911)))

(assert (=> d!724166 (= (findConcatSeparation!932 lt!903911 (regTwo!15730 r!27340) (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574)) (t!211373 tl!4068) tl!4068) lt!904058)))

(declare-fun b!2555402 () Bool)

(declare-fun res!1076258 () Bool)

(assert (=> b!2555402 (=> (not res!1076258) (not e!1614338))))

(assert (=> b!2555402 (= res!1076258 (matchR!3554 lt!903911 (_1!17332 (get!9293 lt!904058))))))

(declare-fun b!2555403 () Bool)

(assert (=> b!2555403 (= e!1614337 (not (isDefined!4732 lt!904058)))))

(declare-fun b!2555404 () Bool)

(declare-fun res!1076257 () Bool)

(assert (=> b!2555404 (=> (not res!1076257) (not e!1614338))))

(assert (=> b!2555404 (= res!1076257 (matchR!3554 (regTwo!15730 r!27340) (_2!17332 (get!9293 lt!904058))))))

(declare-fun b!2555405 () Bool)

(assert (=> b!2555405 (= e!1614338 (= (++!7266 (_1!17332 (get!9293 lt!904058)) (_2!17332 (get!9293 lt!904058))) tl!4068))))

(declare-fun b!2555406 () Bool)

(assert (=> b!2555406 (= e!1614341 (matchR!3554 (regTwo!15730 r!27340) (t!211373 tl!4068)))))

(declare-fun b!2555407 () Bool)

(assert (=> b!2555407 (= e!1614336 None!5909)))

(declare-fun b!2555408 () Bool)

(declare-fun lt!904057 () Unit!43403)

(declare-fun lt!904056 () Unit!43403)

(assert (=> b!2555408 (= lt!904057 lt!904056)))

(assert (=> b!2555408 (= (++!7266 (++!7266 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574)) (Cons!29574 (h!34994 (t!211373 tl!4068)) Nil!29574)) (t!211373 (t!211373 tl!4068))) tl!4068)))

(assert (=> b!2555408 (= lt!904056 (lemmaMoveElementToOtherListKeepsConcatEq!799 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574)) (h!34994 (t!211373 tl!4068)) (t!211373 (t!211373 tl!4068)) tl!4068))))

(assert (=> b!2555408 (= e!1614336 (findConcatSeparation!932 lt!903911 (regTwo!15730 r!27340) (++!7266 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574)) (Cons!29574 (h!34994 (t!211373 tl!4068)) Nil!29574)) (t!211373 (t!211373 tl!4068)) tl!4068))))

(declare-fun b!2555409 () Bool)

(assert (=> b!2555409 (= e!1614339 (Some!5909 (tuple2!29581 (++!7266 Nil!29574 (Cons!29574 (h!34994 tl!4068) Nil!29574)) (t!211373 tl!4068))))))

(assert (= (and d!724166 res!1076260) b!2555406))

(assert (= (and d!724166 c!409999) b!2555409))

(assert (= (and d!724166 (not c!409999)) b!2555401))

(assert (= (and b!2555401 c!410000) b!2555407))

(assert (= (and b!2555401 (not c!410000)) b!2555408))

(assert (= (and d!724166 res!1076259) b!2555402))

(assert (= (and b!2555402 res!1076258) b!2555404))

(assert (= (and b!2555404 res!1076257) b!2555405))

(assert (= (and d!724166 (not res!1076256)) b!2555403))

(declare-fun m!2897163 () Bool)

(assert (=> b!2555405 m!2897163))

(declare-fun m!2897165 () Bool)

(assert (=> b!2555405 m!2897165))

(assert (=> b!2555408 m!2896375))

(declare-fun m!2897167 () Bool)

(assert (=> b!2555408 m!2897167))

(assert (=> b!2555408 m!2897167))

(declare-fun m!2897169 () Bool)

(assert (=> b!2555408 m!2897169))

(assert (=> b!2555408 m!2896375))

(declare-fun m!2897171 () Bool)

(assert (=> b!2555408 m!2897171))

(assert (=> b!2555408 m!2897167))

(declare-fun m!2897173 () Bool)

(assert (=> b!2555408 m!2897173))

(assert (=> b!2555402 m!2897163))

(declare-fun m!2897175 () Bool)

(assert (=> b!2555402 m!2897175))

(assert (=> b!2555404 m!2897163))

(declare-fun m!2897177 () Bool)

(assert (=> b!2555404 m!2897177))

(declare-fun m!2897179 () Bool)

(assert (=> d!724166 m!2897179))

(assert (=> d!724166 m!2896375))

(declare-fun m!2897181 () Bool)

(assert (=> d!724166 m!2897181))

(assert (=> d!724166 m!2896099))

(assert (=> b!2555403 m!2897179))

(declare-fun m!2897183 () Bool)

(assert (=> b!2555406 m!2897183))

(assert (=> b!2554431 d!724166))

(assert (=> b!2554490 d!723966))

(assert (=> b!2554012 d!724012))

(declare-fun d!724168 () Bool)

(assert (=> d!724168 (= (isEmpty!17027 (_2!17332 lt!903904)) ((_ is Nil!29574) (_2!17332 lt!903904)))))

(assert (=> bm!162843 d!724168))

(declare-fun b!2555410 () Bool)

(declare-fun e!1614346 () Bool)

(assert (=> b!2555410 (= e!1614346 (matchR!3554 (derivativeStep!2178 (derivativeStep!2178 lt!903905 (head!5816 tl!4068)) (head!5816 (tail!4091 tl!4068))) (tail!4091 (tail!4091 tl!4068))))))

(declare-fun b!2555411 () Bool)

(declare-fun e!1614344 () Bool)

(declare-fun e!1614342 () Bool)

(assert (=> b!2555411 (= e!1614344 e!1614342)))

(declare-fun res!1076264 () Bool)

(assert (=> b!2555411 (=> (not res!1076264) (not e!1614342))))

(declare-fun lt!904059 () Bool)

(assert (=> b!2555411 (= res!1076264 (not lt!904059))))

(declare-fun b!2555412 () Bool)

(assert (=> b!2555412 (= e!1614346 (nullable!2526 (derivativeStep!2178 lt!903905 (head!5816 tl!4068))))))

(declare-fun b!2555414 () Bool)

(declare-fun e!1614345 () Bool)

(assert (=> b!2555414 (= e!1614345 (not lt!904059))))

(declare-fun b!2555415 () Bool)

(declare-fun e!1614348 () Bool)

(assert (=> b!2555415 (= e!1614342 e!1614348)))

(declare-fun res!1076263 () Bool)

(assert (=> b!2555415 (=> res!1076263 e!1614348)))

(declare-fun call!163041 () Bool)

(assert (=> b!2555415 (= res!1076263 call!163041)))

(declare-fun b!2555416 () Bool)

(declare-fun res!1076261 () Bool)

(declare-fun e!1614343 () Bool)

(assert (=> b!2555416 (=> (not res!1076261) (not e!1614343))))

(assert (=> b!2555416 (= res!1076261 (isEmpty!17027 (tail!4091 (tail!4091 tl!4068))))))

(declare-fun b!2555417 () Bool)

(declare-fun res!1076268 () Bool)

(assert (=> b!2555417 (=> res!1076268 e!1614348)))

(assert (=> b!2555417 (= res!1076268 (not (isEmpty!17027 (tail!4091 (tail!4091 tl!4068)))))))

(declare-fun b!2555418 () Bool)

(declare-fun e!1614347 () Bool)

(assert (=> b!2555418 (= e!1614347 e!1614345)))

(declare-fun c!410003 () Bool)

(assert (=> b!2555418 (= c!410003 ((_ is EmptyLang!7609) (derivativeStep!2178 lt!903905 (head!5816 tl!4068))))))

(declare-fun b!2555419 () Bool)

(assert (=> b!2555419 (= e!1614343 (= (head!5816 (tail!4091 tl!4068)) (c!409621 (derivativeStep!2178 lt!903905 (head!5816 tl!4068)))))))

(declare-fun b!2555420 () Bool)

(assert (=> b!2555420 (= e!1614348 (not (= (head!5816 (tail!4091 tl!4068)) (c!409621 (derivativeStep!2178 lt!903905 (head!5816 tl!4068))))))))

(declare-fun b!2555421 () Bool)

(declare-fun res!1076265 () Bool)

(assert (=> b!2555421 (=> res!1076265 e!1614344)))

(assert (=> b!2555421 (= res!1076265 e!1614343)))

(declare-fun res!1076266 () Bool)

(assert (=> b!2555421 (=> (not res!1076266) (not e!1614343))))

(assert (=> b!2555421 (= res!1076266 lt!904059)))

(declare-fun b!2555422 () Bool)

(assert (=> b!2555422 (= e!1614347 (= lt!904059 call!163041))))

(declare-fun b!2555413 () Bool)

(declare-fun res!1076267 () Bool)

(assert (=> b!2555413 (=> (not res!1076267) (not e!1614343))))

(assert (=> b!2555413 (= res!1076267 (not call!163041))))

(declare-fun d!724170 () Bool)

(assert (=> d!724170 e!1614347))

(declare-fun c!410002 () Bool)

(assert (=> d!724170 (= c!410002 ((_ is EmptyExpr!7609) (derivativeStep!2178 lt!903905 (head!5816 tl!4068))))))

(assert (=> d!724170 (= lt!904059 e!1614346)))

(declare-fun c!410001 () Bool)

(assert (=> d!724170 (= c!410001 (isEmpty!17027 (tail!4091 tl!4068)))))

(assert (=> d!724170 (validRegex!3235 (derivativeStep!2178 lt!903905 (head!5816 tl!4068)))))

(assert (=> d!724170 (= (matchR!3554 (derivativeStep!2178 lt!903905 (head!5816 tl!4068)) (tail!4091 tl!4068)) lt!904059)))

(declare-fun b!2555423 () Bool)

(declare-fun res!1076262 () Bool)

(assert (=> b!2555423 (=> res!1076262 e!1614344)))

(assert (=> b!2555423 (= res!1076262 (not ((_ is ElementMatch!7609) (derivativeStep!2178 lt!903905 (head!5816 tl!4068)))))))

(assert (=> b!2555423 (= e!1614345 e!1614344)))

(declare-fun bm!163036 () Bool)

(assert (=> bm!163036 (= call!163041 (isEmpty!17027 (tail!4091 tl!4068)))))

(assert (= (and d!724170 c!410001) b!2555412))

(assert (= (and d!724170 (not c!410001)) b!2555410))

(assert (= (and d!724170 c!410002) b!2555422))

(assert (= (and d!724170 (not c!410002)) b!2555418))

(assert (= (and b!2555418 c!410003) b!2555414))

(assert (= (and b!2555418 (not c!410003)) b!2555423))

(assert (= (and b!2555423 (not res!1076262)) b!2555421))

(assert (= (and b!2555421 res!1076266) b!2555413))

(assert (= (and b!2555413 res!1076267) b!2555416))

(assert (= (and b!2555416 res!1076261) b!2555419))

(assert (= (and b!2555421 (not res!1076265)) b!2555411))

(assert (= (and b!2555411 res!1076264) b!2555415))

(assert (= (and b!2555415 (not res!1076263)) b!2555417))

(assert (= (and b!2555417 (not res!1076268)) b!2555420))

(assert (= (or b!2555422 b!2555413 b!2555415) bm!163036))

(assert (=> bm!163036 m!2896163))

(assert (=> bm!163036 m!2896165))

(assert (=> b!2555416 m!2896163))

(declare-fun m!2897185 () Bool)

(assert (=> b!2555416 m!2897185))

(assert (=> b!2555416 m!2897185))

(declare-fun m!2897187 () Bool)

(assert (=> b!2555416 m!2897187))

(assert (=> b!2555410 m!2896163))

(declare-fun m!2897189 () Bool)

(assert (=> b!2555410 m!2897189))

(assert (=> b!2555410 m!2896169))

(assert (=> b!2555410 m!2897189))

(declare-fun m!2897191 () Bool)

(assert (=> b!2555410 m!2897191))

(assert (=> b!2555410 m!2896163))

(assert (=> b!2555410 m!2897185))

(assert (=> b!2555410 m!2897191))

(assert (=> b!2555410 m!2897185))

(declare-fun m!2897193 () Bool)

(assert (=> b!2555410 m!2897193))

(assert (=> b!2555412 m!2896169))

(declare-fun m!2897195 () Bool)

(assert (=> b!2555412 m!2897195))

(assert (=> d!724170 m!2896163))

(assert (=> d!724170 m!2896165))

(assert (=> d!724170 m!2896169))

(declare-fun m!2897197 () Bool)

(assert (=> d!724170 m!2897197))

(assert (=> b!2555419 m!2896163))

(assert (=> b!2555419 m!2897189))

(assert (=> b!2555417 m!2896163))

(assert (=> b!2555417 m!2897185))

(assert (=> b!2555417 m!2897185))

(assert (=> b!2555417 m!2897187))

(assert (=> b!2555420 m!2896163))

(assert (=> b!2555420 m!2897189))

(assert (=> b!2554079 d!724170))

(declare-fun bm!163037 () Bool)

(declare-fun call!163042 () Regex!7609)

(declare-fun c!410006 () Bool)

(declare-fun c!410005 () Bool)

(assert (=> bm!163037 (= call!163042 (derivativeStep!2178 (ite c!410005 (regOne!15731 lt!903905) (ite c!410006 (reg!7938 lt!903905) (regOne!15730 lt!903905))) (head!5816 tl!4068)))))

(declare-fun b!2555424 () Bool)

(declare-fun e!1614353 () Regex!7609)

(declare-fun call!163043 () Regex!7609)

(assert (=> b!2555424 (= e!1614353 (Union!7609 call!163042 call!163043))))

(declare-fun b!2555425 () Bool)

(declare-fun c!410008 () Bool)

(assert (=> b!2555425 (= c!410008 (nullable!2526 (regOne!15730 lt!903905)))))

(declare-fun e!1614351 () Regex!7609)

(declare-fun e!1614352 () Regex!7609)

(assert (=> b!2555425 (= e!1614351 e!1614352)))

(declare-fun b!2555426 () Bool)

(declare-fun call!163044 () Regex!7609)

(assert (=> b!2555426 (= e!1614352 (Union!7609 (Concat!12305 call!163044 (regTwo!15730 lt!903905)) EmptyLang!7609))))

(declare-fun d!724172 () Bool)

(declare-fun lt!904060 () Regex!7609)

(assert (=> d!724172 (validRegex!3235 lt!904060)))

(declare-fun e!1614350 () Regex!7609)

(assert (=> d!724172 (= lt!904060 e!1614350)))

(declare-fun c!410004 () Bool)

(assert (=> d!724172 (= c!410004 (or ((_ is EmptyExpr!7609) lt!903905) ((_ is EmptyLang!7609) lt!903905)))))

(assert (=> d!724172 (validRegex!3235 lt!903905)))

(assert (=> d!724172 (= (derivativeStep!2178 lt!903905 (head!5816 tl!4068)) lt!904060)))

(declare-fun b!2555427 () Bool)

(declare-fun e!1614349 () Regex!7609)

(assert (=> b!2555427 (= e!1614350 e!1614349)))

(declare-fun c!410007 () Bool)

(assert (=> b!2555427 (= c!410007 ((_ is ElementMatch!7609) lt!903905))))

(declare-fun b!2555428 () Bool)

(assert (=> b!2555428 (= e!1614350 EmptyLang!7609)))

(declare-fun bm!163038 () Bool)

(assert (=> bm!163038 (= call!163043 (derivativeStep!2178 (ite c!410005 (regTwo!15731 lt!903905) (regTwo!15730 lt!903905)) (head!5816 tl!4068)))))

(declare-fun bm!163039 () Bool)

(declare-fun call!163045 () Regex!7609)

(assert (=> bm!163039 (= call!163044 call!163045)))

(declare-fun b!2555429 () Bool)

(assert (=> b!2555429 (= e!1614349 (ite (= (head!5816 tl!4068) (c!409621 lt!903905)) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555430 () Bool)

(assert (=> b!2555430 (= e!1614351 (Concat!12305 call!163045 lt!903905))))

(declare-fun b!2555431 () Bool)

(assert (=> b!2555431 (= c!410005 ((_ is Union!7609) lt!903905))))

(assert (=> b!2555431 (= e!1614349 e!1614353)))

(declare-fun b!2555432 () Bool)

(assert (=> b!2555432 (= e!1614353 e!1614351)))

(assert (=> b!2555432 (= c!410006 ((_ is Star!7609) lt!903905))))

(declare-fun bm!163040 () Bool)

(assert (=> bm!163040 (= call!163045 call!163042)))

(declare-fun b!2555433 () Bool)

(assert (=> b!2555433 (= e!1614352 (Union!7609 (Concat!12305 call!163044 (regTwo!15730 lt!903905)) call!163043))))

(assert (= (and d!724172 c!410004) b!2555428))

(assert (= (and d!724172 (not c!410004)) b!2555427))

(assert (= (and b!2555427 c!410007) b!2555429))

(assert (= (and b!2555427 (not c!410007)) b!2555431))

(assert (= (and b!2555431 c!410005) b!2555424))

(assert (= (and b!2555431 (not c!410005)) b!2555432))

(assert (= (and b!2555432 c!410006) b!2555430))

(assert (= (and b!2555432 (not c!410006)) b!2555425))

(assert (= (and b!2555425 c!410008) b!2555433))

(assert (= (and b!2555425 (not c!410008)) b!2555426))

(assert (= (or b!2555433 b!2555426) bm!163039))

(assert (= (or b!2555430 bm!163039) bm!163040))

(assert (= (or b!2555424 b!2555433) bm!163038))

(assert (= (or b!2555424 bm!163040) bm!163037))

(assert (=> bm!163037 m!2896167))

(declare-fun m!2897199 () Bool)

(assert (=> bm!163037 m!2897199))

(declare-fun m!2897201 () Bool)

(assert (=> b!2555425 m!2897201))

(declare-fun m!2897203 () Bool)

(assert (=> d!724172 m!2897203))

(assert (=> d!724172 m!2896175))

(assert (=> bm!163038 m!2896167))

(declare-fun m!2897205 () Bool)

(assert (=> bm!163038 m!2897205))

(assert (=> b!2554079 d!724172))

(assert (=> b!2554079 d!723966))

(assert (=> b!2554079 d!724010))

(assert (=> bm!162788 d!724064))

(assert (=> d!723774 d!723976))

(declare-fun b!2555434 () Bool)

(declare-fun e!1614356 () Bool)

(declare-fun call!163047 () Bool)

(assert (=> b!2555434 (= e!1614356 call!163047)))

(declare-fun b!2555435 () Bool)

(declare-fun e!1614359 () Bool)

(declare-fun call!163046 () Bool)

(assert (=> b!2555435 (= e!1614359 call!163046)))

(declare-fun b!2555436 () Bool)

(declare-fun e!1614360 () Bool)

(assert (=> b!2555436 (= e!1614360 e!1614356)))

(declare-fun res!1076269 () Bool)

(assert (=> b!2555436 (= res!1076269 (not (nullable!2526 (reg!7938 lt!903905))))))

(assert (=> b!2555436 (=> (not res!1076269) (not e!1614356))))

(declare-fun c!410010 () Bool)

(declare-fun bm!163041 () Bool)

(declare-fun c!410009 () Bool)

(assert (=> bm!163041 (= call!163047 (validRegex!3235 (ite c!410009 (reg!7938 lt!903905) (ite c!410010 (regOne!15731 lt!903905) (regTwo!15730 lt!903905)))))))

(declare-fun d!724174 () Bool)

(declare-fun res!1076270 () Bool)

(declare-fun e!1614357 () Bool)

(assert (=> d!724174 (=> res!1076270 e!1614357)))

(assert (=> d!724174 (= res!1076270 ((_ is ElementMatch!7609) lt!903905))))

(assert (=> d!724174 (= (validRegex!3235 lt!903905) e!1614357)))

(declare-fun b!2555437 () Bool)

(declare-fun e!1614358 () Bool)

(assert (=> b!2555437 (= e!1614360 e!1614358)))

(assert (=> b!2555437 (= c!410010 ((_ is Union!7609) lt!903905))))

(declare-fun b!2555438 () Bool)

(assert (=> b!2555438 (= e!1614357 e!1614360)))

(assert (=> b!2555438 (= c!410009 ((_ is Star!7609) lt!903905))))

(declare-fun b!2555439 () Bool)

(declare-fun res!1076272 () Bool)

(declare-fun e!1614354 () Bool)

(assert (=> b!2555439 (=> res!1076272 e!1614354)))

(assert (=> b!2555439 (= res!1076272 (not ((_ is Concat!12305) lt!903905)))))

(assert (=> b!2555439 (= e!1614358 e!1614354)))

(declare-fun b!2555440 () Bool)

(declare-fun e!1614355 () Bool)

(assert (=> b!2555440 (= e!1614354 e!1614355)))

(declare-fun res!1076273 () Bool)

(assert (=> b!2555440 (=> (not res!1076273) (not e!1614355))))

(assert (=> b!2555440 (= res!1076273 call!163046)))

(declare-fun bm!163042 () Bool)

(assert (=> bm!163042 (= call!163046 (validRegex!3235 (ite c!410010 (regTwo!15731 lt!903905) (regOne!15730 lt!903905))))))

(declare-fun bm!163043 () Bool)

(declare-fun call!163048 () Bool)

(assert (=> bm!163043 (= call!163048 call!163047)))

(declare-fun b!2555441 () Bool)

(declare-fun res!1076271 () Bool)

(assert (=> b!2555441 (=> (not res!1076271) (not e!1614359))))

(assert (=> b!2555441 (= res!1076271 call!163048)))

(assert (=> b!2555441 (= e!1614358 e!1614359)))

(declare-fun b!2555442 () Bool)

(assert (=> b!2555442 (= e!1614355 call!163048)))

(assert (= (and d!724174 (not res!1076270)) b!2555438))

(assert (= (and b!2555438 c!410009) b!2555436))

(assert (= (and b!2555438 (not c!410009)) b!2555437))

(assert (= (and b!2555436 res!1076269) b!2555434))

(assert (= (and b!2555437 c!410010) b!2555441))

(assert (= (and b!2555437 (not c!410010)) b!2555439))

(assert (= (and b!2555441 res!1076271) b!2555435))

(assert (= (and b!2555439 (not res!1076272)) b!2555440))

(assert (= (and b!2555440 res!1076273) b!2555442))

(assert (= (or b!2555441 b!2555442) bm!163043))

(assert (= (or b!2555435 b!2555440) bm!163042))

(assert (= (or b!2555434 bm!163043) bm!163041))

(declare-fun m!2897207 () Bool)

(assert (=> b!2555436 m!2897207))

(declare-fun m!2897209 () Bool)

(assert (=> bm!163041 m!2897209))

(declare-fun m!2897211 () Bool)

(assert (=> bm!163042 m!2897211))

(assert (=> d!723774 d!724174))

(declare-fun b!2555443 () Bool)

(declare-fun e!1614362 () Bool)

(declare-fun e!1614363 () Bool)

(assert (=> b!2555443 (= e!1614362 e!1614363)))

(declare-fun res!1076277 () Bool)

(declare-fun call!163050 () Bool)

(assert (=> b!2555443 (= res!1076277 call!163050)))

(assert (=> b!2555443 (=> (not res!1076277) (not e!1614363))))

(declare-fun b!2555444 () Bool)

(declare-fun call!163049 () Bool)

(assert (=> b!2555444 (= e!1614363 call!163049)))

(declare-fun b!2555445 () Bool)

(declare-fun e!1614361 () Bool)

(assert (=> b!2555445 (= e!1614361 call!163050)))

(declare-fun b!2555447 () Bool)

(declare-fun e!1614365 () Bool)

(declare-fun e!1614366 () Bool)

(assert (=> b!2555447 (= e!1614365 e!1614366)))

(declare-fun res!1076276 () Bool)

(assert (=> b!2555447 (=> res!1076276 e!1614366)))

(assert (=> b!2555447 (= res!1076276 ((_ is Star!7609) (regOne!15730 r!27340)))))

(declare-fun bm!163044 () Bool)

(declare-fun c!410011 () Bool)

(assert (=> bm!163044 (= call!163049 (nullable!2526 (ite c!410011 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340)))))))

(declare-fun b!2555448 () Bool)

(declare-fun e!1614364 () Bool)

(assert (=> b!2555448 (= e!1614364 e!1614365)))

(declare-fun res!1076278 () Bool)

(assert (=> b!2555448 (=> (not res!1076278) (not e!1614365))))

(assert (=> b!2555448 (= res!1076278 (and (not ((_ is EmptyLang!7609) (regOne!15730 r!27340))) (not ((_ is ElementMatch!7609) (regOne!15730 r!27340)))))))

(declare-fun bm!163045 () Bool)

(assert (=> bm!163045 (= call!163050 (nullable!2526 (ite c!410011 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))))

(declare-fun b!2555449 () Bool)

(assert (=> b!2555449 (= e!1614366 e!1614362)))

(assert (=> b!2555449 (= c!410011 ((_ is Union!7609) (regOne!15730 r!27340)))))

(declare-fun b!2555446 () Bool)

(assert (=> b!2555446 (= e!1614362 e!1614361)))

(declare-fun res!1076274 () Bool)

(assert (=> b!2555446 (= res!1076274 call!163049)))

(assert (=> b!2555446 (=> res!1076274 e!1614361)))

(declare-fun d!724176 () Bool)

(declare-fun res!1076275 () Bool)

(assert (=> d!724176 (=> res!1076275 e!1614364)))

(assert (=> d!724176 (= res!1076275 ((_ is EmptyExpr!7609) (regOne!15730 r!27340)))))

(assert (=> d!724176 (= (nullableFct!751 (regOne!15730 r!27340)) e!1614364)))

(assert (= (and d!724176 (not res!1076275)) b!2555448))

(assert (= (and b!2555448 res!1076278) b!2555447))

(assert (= (and b!2555447 (not res!1076276)) b!2555449))

(assert (= (and b!2555449 c!410011) b!2555446))

(assert (= (and b!2555449 (not c!410011)) b!2555443))

(assert (= (and b!2555446 (not res!1076274)) b!2555445))

(assert (= (and b!2555443 res!1076277) b!2555444))

(assert (= (or b!2555445 b!2555443) bm!163045))

(assert (= (or b!2555446 b!2555444) bm!163044))

(declare-fun m!2897213 () Bool)

(assert (=> bm!163044 m!2897213))

(declare-fun m!2897215 () Bool)

(assert (=> bm!163045 m!2897215))

(assert (=> d!723746 d!724176))

(declare-fun d!724178 () Bool)

(declare-fun c!410014 () Bool)

(assert (=> d!724178 (= c!410014 ((_ is Nil!29574) lt!903988))))

(declare-fun e!1614369 () (InoxSet C!15376))

(assert (=> d!724178 (= (content!4072 lt!903988) e!1614369)))

(declare-fun b!2555454 () Bool)

(assert (=> b!2555454 (= e!1614369 ((as const (Array C!15376 Bool)) false))))

(declare-fun b!2555455 () Bool)

(assert (=> b!2555455 (= e!1614369 ((_ map or) (store ((as const (Array C!15376 Bool)) false) (h!34994 lt!903988) true) (content!4072 (t!211373 lt!903988))))))

(assert (= (and d!724178 c!410014) b!2555454))

(assert (= (and d!724178 (not c!410014)) b!2555455))

(declare-fun m!2897217 () Bool)

(assert (=> b!2555455 m!2897217))

(declare-fun m!2897219 () Bool)

(assert (=> b!2555455 m!2897219))

(assert (=> d!723830 d!724178))

(declare-fun d!724180 () Bool)

(declare-fun c!410015 () Bool)

(assert (=> d!724180 (= c!410015 ((_ is Nil!29574) (_1!17332 lt!903904)))))

(declare-fun e!1614370 () (InoxSet C!15376))

(assert (=> d!724180 (= (content!4072 (_1!17332 lt!903904)) e!1614370)))

(declare-fun b!2555456 () Bool)

(assert (=> b!2555456 (= e!1614370 ((as const (Array C!15376 Bool)) false))))

(declare-fun b!2555457 () Bool)

(assert (=> b!2555457 (= e!1614370 ((_ map or) (store ((as const (Array C!15376 Bool)) false) (h!34994 (_1!17332 lt!903904)) true) (content!4072 (t!211373 (_1!17332 lt!903904)))))))

(assert (= (and d!724180 c!410015) b!2555456))

(assert (= (and d!724180 (not c!410015)) b!2555457))

(declare-fun m!2897221 () Bool)

(assert (=> b!2555457 m!2897221))

(assert (=> b!2555457 m!2896767))

(assert (=> d!723830 d!724180))

(declare-fun d!724182 () Bool)

(declare-fun c!410016 () Bool)

(assert (=> d!724182 (= c!410016 ((_ is Nil!29574) (_2!17332 lt!903904)))))

(declare-fun e!1614371 () (InoxSet C!15376))

(assert (=> d!724182 (= (content!4072 (_2!17332 lt!903904)) e!1614371)))

(declare-fun b!2555458 () Bool)

(assert (=> b!2555458 (= e!1614371 ((as const (Array C!15376 Bool)) false))))

(declare-fun b!2555459 () Bool)

(assert (=> b!2555459 (= e!1614371 ((_ map or) (store ((as const (Array C!15376 Bool)) false) (h!34994 (_2!17332 lt!903904)) true) (content!4072 (t!211373 (_2!17332 lt!903904)))))))

(assert (= (and d!724182 c!410016) b!2555458))

(assert (= (and d!724182 (not c!410016)) b!2555459))

(declare-fun m!2897223 () Bool)

(assert (=> b!2555459 m!2897223))

(declare-fun m!2897225 () Bool)

(assert (=> b!2555459 m!2897225))

(assert (=> d!723830 d!724182))

(assert (=> bm!162847 d!723976))

(assert (=> b!2554236 d!724006))

(assert (=> b!2554236 d!724010))

(assert (=> d!723752 d!724064))

(declare-fun b!2555460 () Bool)

(declare-fun e!1614374 () Bool)

(declare-fun call!163052 () Bool)

(assert (=> b!2555460 (= e!1614374 call!163052)))

(declare-fun b!2555461 () Bool)

(declare-fun e!1614377 () Bool)

(declare-fun call!163051 () Bool)

(assert (=> b!2555461 (= e!1614377 call!163051)))

(declare-fun b!2555462 () Bool)

(declare-fun e!1614378 () Bool)

(assert (=> b!2555462 (= e!1614378 e!1614374)))

(declare-fun res!1076279 () Bool)

(assert (=> b!2555462 (= res!1076279 (not (nullable!2526 (reg!7938 lt!903901))))))

(assert (=> b!2555462 (=> (not res!1076279) (not e!1614374))))

(declare-fun c!410018 () Bool)

(declare-fun bm!163046 () Bool)

(declare-fun c!410017 () Bool)

(assert (=> bm!163046 (= call!163052 (validRegex!3235 (ite c!410017 (reg!7938 lt!903901) (ite c!410018 (regOne!15731 lt!903901) (regTwo!15730 lt!903901)))))))

(declare-fun d!724184 () Bool)

(declare-fun res!1076280 () Bool)

(declare-fun e!1614375 () Bool)

(assert (=> d!724184 (=> res!1076280 e!1614375)))

(assert (=> d!724184 (= res!1076280 ((_ is ElementMatch!7609) lt!903901))))

(assert (=> d!724184 (= (validRegex!3235 lt!903901) e!1614375)))

(declare-fun b!2555463 () Bool)

(declare-fun e!1614376 () Bool)

(assert (=> b!2555463 (= e!1614378 e!1614376)))

(assert (=> b!2555463 (= c!410018 ((_ is Union!7609) lt!903901))))

(declare-fun b!2555464 () Bool)

(assert (=> b!2555464 (= e!1614375 e!1614378)))

(assert (=> b!2555464 (= c!410017 ((_ is Star!7609) lt!903901))))

(declare-fun b!2555465 () Bool)

(declare-fun res!1076282 () Bool)

(declare-fun e!1614372 () Bool)

(assert (=> b!2555465 (=> res!1076282 e!1614372)))

(assert (=> b!2555465 (= res!1076282 (not ((_ is Concat!12305) lt!903901)))))

(assert (=> b!2555465 (= e!1614376 e!1614372)))

(declare-fun b!2555466 () Bool)

(declare-fun e!1614373 () Bool)

(assert (=> b!2555466 (= e!1614372 e!1614373)))

(declare-fun res!1076283 () Bool)

(assert (=> b!2555466 (=> (not res!1076283) (not e!1614373))))

(assert (=> b!2555466 (= res!1076283 call!163051)))

(declare-fun bm!163047 () Bool)

(assert (=> bm!163047 (= call!163051 (validRegex!3235 (ite c!410018 (regTwo!15731 lt!903901) (regOne!15730 lt!903901))))))

(declare-fun bm!163048 () Bool)

(declare-fun call!163053 () Bool)

(assert (=> bm!163048 (= call!163053 call!163052)))

(declare-fun b!2555467 () Bool)

(declare-fun res!1076281 () Bool)

(assert (=> b!2555467 (=> (not res!1076281) (not e!1614377))))

(assert (=> b!2555467 (= res!1076281 call!163053)))

(assert (=> b!2555467 (= e!1614376 e!1614377)))

(declare-fun b!2555468 () Bool)

(assert (=> b!2555468 (= e!1614373 call!163053)))

(assert (= (and d!724184 (not res!1076280)) b!2555464))

(assert (= (and b!2555464 c!410017) b!2555462))

(assert (= (and b!2555464 (not c!410017)) b!2555463))

(assert (= (and b!2555462 res!1076279) b!2555460))

(assert (= (and b!2555463 c!410018) b!2555467))

(assert (= (and b!2555463 (not c!410018)) b!2555465))

(assert (= (and b!2555467 res!1076281) b!2555461))

(assert (= (and b!2555465 (not res!1076282)) b!2555466))

(assert (= (and b!2555466 res!1076283) b!2555468))

(assert (= (or b!2555467 b!2555468) bm!163048))

(assert (= (or b!2555461 b!2555466) bm!163047))

(assert (= (or b!2555460 bm!163048) bm!163046))

(declare-fun m!2897227 () Bool)

(assert (=> b!2555462 m!2897227))

(declare-fun m!2897229 () Bool)

(assert (=> bm!163046 m!2897229))

(declare-fun m!2897231 () Bool)

(assert (=> bm!163047 m!2897231))

(assert (=> d!723752 d!724184))

(assert (=> b!2554240 d!723966))

(declare-fun b!2555469 () Bool)

(declare-fun e!1614381 () Bool)

(declare-fun call!163055 () Bool)

(assert (=> b!2555469 (= e!1614381 call!163055)))

(declare-fun b!2555470 () Bool)

(declare-fun e!1614384 () Bool)

(declare-fun call!163054 () Bool)

(assert (=> b!2555470 (= e!1614384 call!163054)))

(declare-fun b!2555471 () Bool)

(declare-fun e!1614385 () Bool)

(assert (=> b!2555471 (= e!1614385 e!1614381)))

(declare-fun res!1076284 () Bool)

(assert (=> b!2555471 (= res!1076284 (not (nullable!2526 (reg!7938 (ite c!409640 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))))))

(assert (=> b!2555471 (=> (not res!1076284) (not e!1614381))))

(declare-fun c!410019 () Bool)

(declare-fun c!410020 () Bool)

(declare-fun bm!163049 () Bool)

(assert (=> bm!163049 (= call!163055 (validRegex!3235 (ite c!410019 (reg!7938 (ite c!409640 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))) (ite c!410020 (regOne!15731 (ite c!409640 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))) (regTwo!15730 (ite c!409640 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340))))))))))

(declare-fun d!724186 () Bool)

(declare-fun res!1076285 () Bool)

(declare-fun e!1614382 () Bool)

(assert (=> d!724186 (=> res!1076285 e!1614382)))

(assert (=> d!724186 (= res!1076285 ((_ is ElementMatch!7609) (ite c!409640 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))))

(assert (=> d!724186 (= (validRegex!3235 (ite c!409640 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))) e!1614382)))

(declare-fun b!2555472 () Bool)

(declare-fun e!1614383 () Bool)

(assert (=> b!2555472 (= e!1614385 e!1614383)))

(assert (=> b!2555472 (= c!410020 ((_ is Union!7609) (ite c!409640 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))))

(declare-fun b!2555473 () Bool)

(assert (=> b!2555473 (= e!1614382 e!1614385)))

(assert (=> b!2555473 (= c!410019 ((_ is Star!7609) (ite c!409640 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))))

(declare-fun b!2555474 () Bool)

(declare-fun res!1076287 () Bool)

(declare-fun e!1614379 () Bool)

(assert (=> b!2555474 (=> res!1076287 e!1614379)))

(assert (=> b!2555474 (= res!1076287 (not ((_ is Concat!12305) (ite c!409640 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340))))))))

(assert (=> b!2555474 (= e!1614383 e!1614379)))

(declare-fun b!2555475 () Bool)

(declare-fun e!1614380 () Bool)

(assert (=> b!2555475 (= e!1614379 e!1614380)))

(declare-fun res!1076288 () Bool)

(assert (=> b!2555475 (=> (not res!1076288) (not e!1614380))))

(assert (=> b!2555475 (= res!1076288 call!163054)))

(declare-fun bm!163050 () Bool)

(assert (=> bm!163050 (= call!163054 (validRegex!3235 (ite c!410020 (regTwo!15731 (ite c!409640 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))) (regOne!15730 (ite c!409640 (regTwo!15731 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))))))

(declare-fun bm!163051 () Bool)

(declare-fun call!163056 () Bool)

(assert (=> bm!163051 (= call!163056 call!163055)))

(declare-fun b!2555476 () Bool)

(declare-fun res!1076286 () Bool)

(assert (=> b!2555476 (=> (not res!1076286) (not e!1614384))))

(assert (=> b!2555476 (= res!1076286 call!163056)))

(assert (=> b!2555476 (= e!1614383 e!1614384)))

(declare-fun b!2555477 () Bool)

(assert (=> b!2555477 (= e!1614380 call!163056)))

(assert (= (and d!724186 (not res!1076285)) b!2555473))

(assert (= (and b!2555473 c!410019) b!2555471))

(assert (= (and b!2555473 (not c!410019)) b!2555472))

(assert (= (and b!2555471 res!1076284) b!2555469))

(assert (= (and b!2555472 c!410020) b!2555476))

(assert (= (and b!2555472 (not c!410020)) b!2555474))

(assert (= (and b!2555476 res!1076286) b!2555470))

(assert (= (and b!2555474 (not res!1076287)) b!2555475))

(assert (= (and b!2555475 res!1076288) b!2555477))

(assert (= (or b!2555476 b!2555477) bm!163051))

(assert (= (or b!2555470 b!2555475) bm!163050))

(assert (= (or b!2555469 bm!163051) bm!163049))

(declare-fun m!2897233 () Bool)

(assert (=> b!2555471 m!2897233))

(declare-fun m!2897235 () Bool)

(assert (=> bm!163049 m!2897235))

(declare-fun m!2897237 () Bool)

(assert (=> bm!163050 m!2897237))

(assert (=> bm!162774 d!724186))

(declare-fun b!2555478 () Bool)

(declare-fun e!1614387 () Bool)

(declare-fun e!1614388 () Bool)

(assert (=> b!2555478 (= e!1614387 e!1614388)))

(declare-fun res!1076292 () Bool)

(declare-fun call!163058 () Bool)

(assert (=> b!2555478 (= res!1076292 call!163058)))

(assert (=> b!2555478 (=> (not res!1076292) (not e!1614388))))

(declare-fun b!2555479 () Bool)

(declare-fun call!163057 () Bool)

(assert (=> b!2555479 (= e!1614388 call!163057)))

(declare-fun b!2555480 () Bool)

(declare-fun e!1614386 () Bool)

(assert (=> b!2555480 (= e!1614386 call!163058)))

(declare-fun b!2555482 () Bool)

(declare-fun e!1614390 () Bool)

(declare-fun e!1614391 () Bool)

(assert (=> b!2555482 (= e!1614390 e!1614391)))

(declare-fun res!1076291 () Bool)

(assert (=> b!2555482 (=> res!1076291 e!1614391)))

(assert (=> b!2555482 (= res!1076291 ((_ is Star!7609) lt!903901))))

(declare-fun bm!163052 () Bool)

(declare-fun c!410021 () Bool)

(assert (=> bm!163052 (= call!163057 (nullable!2526 (ite c!410021 (regOne!15731 lt!903901) (regTwo!15730 lt!903901))))))

(declare-fun b!2555483 () Bool)

(declare-fun e!1614389 () Bool)

(assert (=> b!2555483 (= e!1614389 e!1614390)))

(declare-fun res!1076293 () Bool)

(assert (=> b!2555483 (=> (not res!1076293) (not e!1614390))))

(assert (=> b!2555483 (= res!1076293 (and (not ((_ is EmptyLang!7609) lt!903901)) (not ((_ is ElementMatch!7609) lt!903901))))))

(declare-fun bm!163053 () Bool)

(assert (=> bm!163053 (= call!163058 (nullable!2526 (ite c!410021 (regTwo!15731 lt!903901) (regOne!15730 lt!903901))))))

(declare-fun b!2555484 () Bool)

(assert (=> b!2555484 (= e!1614391 e!1614387)))

(assert (=> b!2555484 (= c!410021 ((_ is Union!7609) lt!903901))))

(declare-fun b!2555481 () Bool)

(assert (=> b!2555481 (= e!1614387 e!1614386)))

(declare-fun res!1076289 () Bool)

(assert (=> b!2555481 (= res!1076289 call!163057)))

(assert (=> b!2555481 (=> res!1076289 e!1614386)))

(declare-fun d!724188 () Bool)

(declare-fun res!1076290 () Bool)

(assert (=> d!724188 (=> res!1076290 e!1614389)))

(assert (=> d!724188 (= res!1076290 ((_ is EmptyExpr!7609) lt!903901))))

(assert (=> d!724188 (= (nullableFct!751 lt!903901) e!1614389)))

(assert (= (and d!724188 (not res!1076290)) b!2555483))

(assert (= (and b!2555483 res!1076293) b!2555482))

(assert (= (and b!2555482 (not res!1076291)) b!2555484))

(assert (= (and b!2555484 c!410021) b!2555481))

(assert (= (and b!2555484 (not c!410021)) b!2555478))

(assert (= (and b!2555481 (not res!1076289)) b!2555480))

(assert (= (and b!2555478 res!1076292) b!2555479))

(assert (= (or b!2555480 b!2555478) bm!163053))

(assert (= (or b!2555481 b!2555479) bm!163052))

(declare-fun m!2897239 () Bool)

(assert (=> bm!163052 m!2897239))

(declare-fun m!2897241 () Bool)

(assert (=> bm!163053 m!2897241))

(assert (=> d!723834 d!724188))

(declare-fun b!2555485 () Bool)

(declare-fun e!1614394 () Bool)

(declare-fun call!163060 () Bool)

(assert (=> b!2555485 (= e!1614394 call!163060)))

(declare-fun b!2555486 () Bool)

(declare-fun e!1614397 () Bool)

(declare-fun call!163059 () Bool)

(assert (=> b!2555486 (= e!1614397 call!163059)))

(declare-fun b!2555487 () Bool)

(declare-fun e!1614398 () Bool)

(assert (=> b!2555487 (= e!1614398 e!1614394)))

(declare-fun res!1076294 () Bool)

(assert (=> b!2555487 (= res!1076294 (not (nullable!2526 (reg!7938 lt!903943))))))

(assert (=> b!2555487 (=> (not res!1076294) (not e!1614394))))

(declare-fun bm!163054 () Bool)

(declare-fun c!410023 () Bool)

(declare-fun c!410022 () Bool)

(assert (=> bm!163054 (= call!163060 (validRegex!3235 (ite c!410022 (reg!7938 lt!903943) (ite c!410023 (regOne!15731 lt!903943) (regTwo!15730 lt!903943)))))))

(declare-fun d!724190 () Bool)

(declare-fun res!1076295 () Bool)

(declare-fun e!1614395 () Bool)

(assert (=> d!724190 (=> res!1076295 e!1614395)))

(assert (=> d!724190 (= res!1076295 ((_ is ElementMatch!7609) lt!903943))))

(assert (=> d!724190 (= (validRegex!3235 lt!903943) e!1614395)))

(declare-fun b!2555488 () Bool)

(declare-fun e!1614396 () Bool)

(assert (=> b!2555488 (= e!1614398 e!1614396)))

(assert (=> b!2555488 (= c!410023 ((_ is Union!7609) lt!903943))))

(declare-fun b!2555489 () Bool)

(assert (=> b!2555489 (= e!1614395 e!1614398)))

(assert (=> b!2555489 (= c!410022 ((_ is Star!7609) lt!903943))))

(declare-fun b!2555490 () Bool)

(declare-fun res!1076297 () Bool)

(declare-fun e!1614392 () Bool)

(assert (=> b!2555490 (=> res!1076297 e!1614392)))

(assert (=> b!2555490 (= res!1076297 (not ((_ is Concat!12305) lt!903943)))))

(assert (=> b!2555490 (= e!1614396 e!1614392)))

(declare-fun b!2555491 () Bool)

(declare-fun e!1614393 () Bool)

(assert (=> b!2555491 (= e!1614392 e!1614393)))

(declare-fun res!1076298 () Bool)

(assert (=> b!2555491 (=> (not res!1076298) (not e!1614393))))

(assert (=> b!2555491 (= res!1076298 call!163059)))

(declare-fun bm!163055 () Bool)

(assert (=> bm!163055 (= call!163059 (validRegex!3235 (ite c!410023 (regTwo!15731 lt!903943) (regOne!15730 lt!903943))))))

(declare-fun bm!163056 () Bool)

(declare-fun call!163061 () Bool)

(assert (=> bm!163056 (= call!163061 call!163060)))

(declare-fun b!2555492 () Bool)

(declare-fun res!1076296 () Bool)

(assert (=> b!2555492 (=> (not res!1076296) (not e!1614397))))

(assert (=> b!2555492 (= res!1076296 call!163061)))

(assert (=> b!2555492 (= e!1614396 e!1614397)))

(declare-fun b!2555493 () Bool)

(assert (=> b!2555493 (= e!1614393 call!163061)))

(assert (= (and d!724190 (not res!1076295)) b!2555489))

(assert (= (and b!2555489 c!410022) b!2555487))

(assert (= (and b!2555489 (not c!410022)) b!2555488))

(assert (= (and b!2555487 res!1076294) b!2555485))

(assert (= (and b!2555488 c!410023) b!2555492))

(assert (= (and b!2555488 (not c!410023)) b!2555490))

(assert (= (and b!2555492 res!1076296) b!2555486))

(assert (= (and b!2555490 (not res!1076297)) b!2555491))

(assert (= (and b!2555491 res!1076298) b!2555493))

(assert (= (or b!2555492 b!2555493) bm!163056))

(assert (= (or b!2555486 b!2555491) bm!163055))

(assert (= (or b!2555485 bm!163056) bm!163054))

(declare-fun m!2897243 () Bool)

(assert (=> b!2555487 m!2897243))

(declare-fun m!2897245 () Bool)

(assert (=> bm!163054 m!2897245))

(declare-fun m!2897247 () Bool)

(assert (=> bm!163055 m!2897247))

(assert (=> d!723772 d!724190))

(assert (=> d!723772 d!723996))

(assert (=> d!723848 d!724032))

(assert (=> d!723848 d!724054))

(assert (=> bm!162821 d!723976))

(declare-fun b!2555494 () Bool)

(declare-fun e!1614403 () Bool)

(assert (=> b!2555494 (= e!1614403 (matchR!3554 (derivativeStep!2178 (derivativeStep!2178 lt!903911 (head!5816 (_1!17332 lt!903904))) (head!5816 (tail!4091 (_1!17332 lt!903904)))) (tail!4091 (tail!4091 (_1!17332 lt!903904)))))))

(declare-fun b!2555495 () Bool)

(declare-fun e!1614401 () Bool)

(declare-fun e!1614399 () Bool)

(assert (=> b!2555495 (= e!1614401 e!1614399)))

(declare-fun res!1076302 () Bool)

(assert (=> b!2555495 (=> (not res!1076302) (not e!1614399))))

(declare-fun lt!904061 () Bool)

(assert (=> b!2555495 (= res!1076302 (not lt!904061))))

(declare-fun b!2555496 () Bool)

(assert (=> b!2555496 (= e!1614403 (nullable!2526 (derivativeStep!2178 lt!903911 (head!5816 (_1!17332 lt!903904)))))))

(declare-fun b!2555498 () Bool)

(declare-fun e!1614402 () Bool)

(assert (=> b!2555498 (= e!1614402 (not lt!904061))))

(declare-fun b!2555499 () Bool)

(declare-fun e!1614405 () Bool)

(assert (=> b!2555499 (= e!1614399 e!1614405)))

(declare-fun res!1076301 () Bool)

(assert (=> b!2555499 (=> res!1076301 e!1614405)))

(declare-fun call!163062 () Bool)

(assert (=> b!2555499 (= res!1076301 call!163062)))

(declare-fun b!2555500 () Bool)

(declare-fun res!1076299 () Bool)

(declare-fun e!1614400 () Bool)

(assert (=> b!2555500 (=> (not res!1076299) (not e!1614400))))

(assert (=> b!2555500 (= res!1076299 (isEmpty!17027 (tail!4091 (tail!4091 (_1!17332 lt!903904)))))))

(declare-fun b!2555501 () Bool)

(declare-fun res!1076306 () Bool)

(assert (=> b!2555501 (=> res!1076306 e!1614405)))

(assert (=> b!2555501 (= res!1076306 (not (isEmpty!17027 (tail!4091 (tail!4091 (_1!17332 lt!903904))))))))

(declare-fun b!2555502 () Bool)

(declare-fun e!1614404 () Bool)

(assert (=> b!2555502 (= e!1614404 e!1614402)))

(declare-fun c!410026 () Bool)

(assert (=> b!2555502 (= c!410026 ((_ is EmptyLang!7609) (derivativeStep!2178 lt!903911 (head!5816 (_1!17332 lt!903904)))))))

(declare-fun b!2555503 () Bool)

(assert (=> b!2555503 (= e!1614400 (= (head!5816 (tail!4091 (_1!17332 lt!903904))) (c!409621 (derivativeStep!2178 lt!903911 (head!5816 (_1!17332 lt!903904))))))))

(declare-fun b!2555504 () Bool)

(assert (=> b!2555504 (= e!1614405 (not (= (head!5816 (tail!4091 (_1!17332 lt!903904))) (c!409621 (derivativeStep!2178 lt!903911 (head!5816 (_1!17332 lt!903904)))))))))

(declare-fun b!2555505 () Bool)

(declare-fun res!1076303 () Bool)

(assert (=> b!2555505 (=> res!1076303 e!1614401)))

(assert (=> b!2555505 (= res!1076303 e!1614400)))

(declare-fun res!1076304 () Bool)

(assert (=> b!2555505 (=> (not res!1076304) (not e!1614400))))

(assert (=> b!2555505 (= res!1076304 lt!904061)))

(declare-fun b!2555506 () Bool)

(assert (=> b!2555506 (= e!1614404 (= lt!904061 call!163062))))

(declare-fun b!2555497 () Bool)

(declare-fun res!1076305 () Bool)

(assert (=> b!2555497 (=> (not res!1076305) (not e!1614400))))

(assert (=> b!2555497 (= res!1076305 (not call!163062))))

(declare-fun d!724192 () Bool)

(assert (=> d!724192 e!1614404))

(declare-fun c!410025 () Bool)

(assert (=> d!724192 (= c!410025 ((_ is EmptyExpr!7609) (derivativeStep!2178 lt!903911 (head!5816 (_1!17332 lt!903904)))))))

(assert (=> d!724192 (= lt!904061 e!1614403)))

(declare-fun c!410024 () Bool)

(assert (=> d!724192 (= c!410024 (isEmpty!17027 (tail!4091 (_1!17332 lt!903904))))))

(assert (=> d!724192 (validRegex!3235 (derivativeStep!2178 lt!903911 (head!5816 (_1!17332 lt!903904))))))

(assert (=> d!724192 (= (matchR!3554 (derivativeStep!2178 lt!903911 (head!5816 (_1!17332 lt!903904))) (tail!4091 (_1!17332 lt!903904))) lt!904061)))

(declare-fun b!2555507 () Bool)

(declare-fun res!1076300 () Bool)

(assert (=> b!2555507 (=> res!1076300 e!1614401)))

(assert (=> b!2555507 (= res!1076300 (not ((_ is ElementMatch!7609) (derivativeStep!2178 lt!903911 (head!5816 (_1!17332 lt!903904))))))))

(assert (=> b!2555507 (= e!1614402 e!1614401)))

(declare-fun bm!163057 () Bool)

(assert (=> bm!163057 (= call!163062 (isEmpty!17027 (tail!4091 (_1!17332 lt!903904))))))

(assert (= (and d!724192 c!410024) b!2555496))

(assert (= (and d!724192 (not c!410024)) b!2555494))

(assert (= (and d!724192 c!410025) b!2555506))

(assert (= (and d!724192 (not c!410025)) b!2555502))

(assert (= (and b!2555502 c!410026) b!2555498))

(assert (= (and b!2555502 (not c!410026)) b!2555507))

(assert (= (and b!2555507 (not res!1076300)) b!2555505))

(assert (= (and b!2555505 res!1076304) b!2555497))

(assert (= (and b!2555497 res!1076305) b!2555500))

(assert (= (and b!2555500 res!1076299) b!2555503))

(assert (= (and b!2555505 (not res!1076303)) b!2555495))

(assert (= (and b!2555495 res!1076302) b!2555499))

(assert (= (and b!2555499 (not res!1076301)) b!2555501))

(assert (= (and b!2555501 (not res!1076306)) b!2555504))

(assert (= (or b!2555506 b!2555497 b!2555499) bm!163057))

(assert (=> bm!163057 m!2896457))

(assert (=> bm!163057 m!2896459))

(assert (=> b!2555500 m!2896457))

(declare-fun m!2897249 () Bool)

(assert (=> b!2555500 m!2897249))

(assert (=> b!2555500 m!2897249))

(declare-fun m!2897251 () Bool)

(assert (=> b!2555500 m!2897251))

(assert (=> b!2555494 m!2896457))

(declare-fun m!2897253 () Bool)

(assert (=> b!2555494 m!2897253))

(assert (=> b!2555494 m!2896463))

(assert (=> b!2555494 m!2897253))

(declare-fun m!2897255 () Bool)

(assert (=> b!2555494 m!2897255))

(assert (=> b!2555494 m!2896457))

(assert (=> b!2555494 m!2897249))

(assert (=> b!2555494 m!2897255))

(assert (=> b!2555494 m!2897249))

(declare-fun m!2897257 () Bool)

(assert (=> b!2555494 m!2897257))

(assert (=> b!2555496 m!2896463))

(declare-fun m!2897259 () Bool)

(assert (=> b!2555496 m!2897259))

(assert (=> d!724192 m!2896457))

(assert (=> d!724192 m!2896459))

(assert (=> d!724192 m!2896463))

(declare-fun m!2897261 () Bool)

(assert (=> d!724192 m!2897261))

(assert (=> b!2555503 m!2896457))

(assert (=> b!2555503 m!2897253))

(assert (=> b!2555501 m!2896457))

(assert (=> b!2555501 m!2897249))

(assert (=> b!2555501 m!2897249))

(assert (=> b!2555501 m!2897251))

(assert (=> b!2555504 m!2896457))

(assert (=> b!2555504 m!2897253))

(assert (=> b!2554494 d!724192))

(declare-fun bm!163058 () Bool)

(declare-fun c!410029 () Bool)

(declare-fun c!410028 () Bool)

(declare-fun call!163063 () Regex!7609)

(assert (=> bm!163058 (= call!163063 (derivativeStep!2178 (ite c!410028 (regOne!15731 lt!903911) (ite c!410029 (reg!7938 lt!903911) (regOne!15730 lt!903911))) (head!5816 (_1!17332 lt!903904))))))

(declare-fun b!2555508 () Bool)

(declare-fun e!1614410 () Regex!7609)

(declare-fun call!163064 () Regex!7609)

(assert (=> b!2555508 (= e!1614410 (Union!7609 call!163063 call!163064))))

(declare-fun b!2555509 () Bool)

(declare-fun c!410031 () Bool)

(assert (=> b!2555509 (= c!410031 (nullable!2526 (regOne!15730 lt!903911)))))

(declare-fun e!1614408 () Regex!7609)

(declare-fun e!1614409 () Regex!7609)

(assert (=> b!2555509 (= e!1614408 e!1614409)))

(declare-fun b!2555510 () Bool)

(declare-fun call!163065 () Regex!7609)

(assert (=> b!2555510 (= e!1614409 (Union!7609 (Concat!12305 call!163065 (regTwo!15730 lt!903911)) EmptyLang!7609))))

(declare-fun d!724194 () Bool)

(declare-fun lt!904062 () Regex!7609)

(assert (=> d!724194 (validRegex!3235 lt!904062)))

(declare-fun e!1614407 () Regex!7609)

(assert (=> d!724194 (= lt!904062 e!1614407)))

(declare-fun c!410027 () Bool)

(assert (=> d!724194 (= c!410027 (or ((_ is EmptyExpr!7609) lt!903911) ((_ is EmptyLang!7609) lt!903911)))))

(assert (=> d!724194 (validRegex!3235 lt!903911)))

(assert (=> d!724194 (= (derivativeStep!2178 lt!903911 (head!5816 (_1!17332 lt!903904))) lt!904062)))

(declare-fun b!2555511 () Bool)

(declare-fun e!1614406 () Regex!7609)

(assert (=> b!2555511 (= e!1614407 e!1614406)))

(declare-fun c!410030 () Bool)

(assert (=> b!2555511 (= c!410030 ((_ is ElementMatch!7609) lt!903911))))

(declare-fun b!2555512 () Bool)

(assert (=> b!2555512 (= e!1614407 EmptyLang!7609)))

(declare-fun bm!163059 () Bool)

(assert (=> bm!163059 (= call!163064 (derivativeStep!2178 (ite c!410028 (regTwo!15731 lt!903911) (regTwo!15730 lt!903911)) (head!5816 (_1!17332 lt!903904))))))

(declare-fun bm!163060 () Bool)

(declare-fun call!163066 () Regex!7609)

(assert (=> bm!163060 (= call!163065 call!163066)))

(declare-fun b!2555513 () Bool)

(assert (=> b!2555513 (= e!1614406 (ite (= (head!5816 (_1!17332 lt!903904)) (c!409621 lt!903911)) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555514 () Bool)

(assert (=> b!2555514 (= e!1614408 (Concat!12305 call!163066 lt!903911))))

(declare-fun b!2555515 () Bool)

(assert (=> b!2555515 (= c!410028 ((_ is Union!7609) lt!903911))))

(assert (=> b!2555515 (= e!1614406 e!1614410)))

(declare-fun b!2555516 () Bool)

(assert (=> b!2555516 (= e!1614410 e!1614408)))

(assert (=> b!2555516 (= c!410029 ((_ is Star!7609) lt!903911))))

(declare-fun bm!163061 () Bool)

(assert (=> bm!163061 (= call!163066 call!163063)))

(declare-fun b!2555517 () Bool)

(assert (=> b!2555517 (= e!1614409 (Union!7609 (Concat!12305 call!163065 (regTwo!15730 lt!903911)) call!163064))))

(assert (= (and d!724194 c!410027) b!2555512))

(assert (= (and d!724194 (not c!410027)) b!2555511))

(assert (= (and b!2555511 c!410030) b!2555513))

(assert (= (and b!2555511 (not c!410030)) b!2555515))

(assert (= (and b!2555515 c!410028) b!2555508))

(assert (= (and b!2555515 (not c!410028)) b!2555516))

(assert (= (and b!2555516 c!410029) b!2555514))

(assert (= (and b!2555516 (not c!410029)) b!2555509))

(assert (= (and b!2555509 c!410031) b!2555517))

(assert (= (and b!2555509 (not c!410031)) b!2555510))

(assert (= (or b!2555517 b!2555510) bm!163060))

(assert (= (or b!2555514 bm!163060) bm!163061))

(assert (= (or b!2555508 b!2555517) bm!163059))

(assert (= (or b!2555508 bm!163061) bm!163058))

(assert (=> bm!163058 m!2896461))

(declare-fun m!2897263 () Bool)

(assert (=> bm!163058 m!2897263))

(declare-fun m!2897265 () Bool)

(assert (=> b!2555509 m!2897265))

(declare-fun m!2897267 () Bool)

(assert (=> d!724194 m!2897267))

(assert (=> d!724194 m!2896099))

(assert (=> bm!163059 m!2896461))

(declare-fun m!2897269 () Bool)

(assert (=> bm!163059 m!2897269))

(assert (=> b!2554494 d!724194))

(assert (=> b!2554494 d!724026))

(assert (=> b!2554494 d!723986))

(declare-fun b!2555518 () Bool)

(declare-fun e!1614413 () Bool)

(declare-fun call!163068 () Bool)

(assert (=> b!2555518 (= e!1614413 call!163068)))

(declare-fun b!2555519 () Bool)

(declare-fun e!1614416 () Bool)

(declare-fun call!163067 () Bool)

(assert (=> b!2555519 (= e!1614416 call!163067)))

(declare-fun b!2555520 () Bool)

(declare-fun e!1614417 () Bool)

(assert (=> b!2555520 (= e!1614417 e!1614413)))

(declare-fun res!1076307 () Bool)

(assert (=> b!2555520 (= res!1076307 (not (nullable!2526 (reg!7938 lt!903993))))))

(assert (=> b!2555520 (=> (not res!1076307) (not e!1614413))))

(declare-fun c!410032 () Bool)

(declare-fun bm!163062 () Bool)

(declare-fun c!410033 () Bool)

(assert (=> bm!163062 (= call!163068 (validRegex!3235 (ite c!410032 (reg!7938 lt!903993) (ite c!410033 (regOne!15731 lt!903993) (regTwo!15730 lt!903993)))))))

(declare-fun d!724196 () Bool)

(declare-fun res!1076308 () Bool)

(declare-fun e!1614414 () Bool)

(assert (=> d!724196 (=> res!1076308 e!1614414)))

(assert (=> d!724196 (= res!1076308 ((_ is ElementMatch!7609) lt!903993))))

(assert (=> d!724196 (= (validRegex!3235 lt!903993) e!1614414)))

(declare-fun b!2555521 () Bool)

(declare-fun e!1614415 () Bool)

(assert (=> b!2555521 (= e!1614417 e!1614415)))

(assert (=> b!2555521 (= c!410033 ((_ is Union!7609) lt!903993))))

(declare-fun b!2555522 () Bool)

(assert (=> b!2555522 (= e!1614414 e!1614417)))

(assert (=> b!2555522 (= c!410032 ((_ is Star!7609) lt!903993))))

(declare-fun b!2555523 () Bool)

(declare-fun res!1076310 () Bool)

(declare-fun e!1614411 () Bool)

(assert (=> b!2555523 (=> res!1076310 e!1614411)))

(assert (=> b!2555523 (= res!1076310 (not ((_ is Concat!12305) lt!903993)))))

(assert (=> b!2555523 (= e!1614415 e!1614411)))

(declare-fun b!2555524 () Bool)

(declare-fun e!1614412 () Bool)

(assert (=> b!2555524 (= e!1614411 e!1614412)))

(declare-fun res!1076311 () Bool)

(assert (=> b!2555524 (=> (not res!1076311) (not e!1614412))))

(assert (=> b!2555524 (= res!1076311 call!163067)))

(declare-fun bm!163063 () Bool)

(assert (=> bm!163063 (= call!163067 (validRegex!3235 (ite c!410033 (regTwo!15731 lt!903993) (regOne!15730 lt!903993))))))

(declare-fun bm!163064 () Bool)

(declare-fun call!163069 () Bool)

(assert (=> bm!163064 (= call!163069 call!163068)))

(declare-fun b!2555525 () Bool)

(declare-fun res!1076309 () Bool)

(assert (=> b!2555525 (=> (not res!1076309) (not e!1614416))))

(assert (=> b!2555525 (= res!1076309 call!163069)))

(assert (=> b!2555525 (= e!1614415 e!1614416)))

(declare-fun b!2555526 () Bool)

(assert (=> b!2555526 (= e!1614412 call!163069)))

(assert (= (and d!724196 (not res!1076308)) b!2555522))

(assert (= (and b!2555522 c!410032) b!2555520))

(assert (= (and b!2555522 (not c!410032)) b!2555521))

(assert (= (and b!2555520 res!1076307) b!2555518))

(assert (= (and b!2555521 c!410033) b!2555525))

(assert (= (and b!2555521 (not c!410033)) b!2555523))

(assert (= (and b!2555525 res!1076309) b!2555519))

(assert (= (and b!2555523 (not res!1076310)) b!2555524))

(assert (= (and b!2555524 res!1076311) b!2555526))

(assert (= (or b!2555525 b!2555526) bm!163064))

(assert (= (or b!2555519 b!2555524) bm!163063))

(assert (= (or b!2555518 bm!163064) bm!163062))

(declare-fun m!2897271 () Bool)

(assert (=> b!2555520 m!2897271))

(declare-fun m!2897273 () Bool)

(assert (=> bm!163062 m!2897273))

(declare-fun m!2897275 () Bool)

(assert (=> bm!163063 m!2897275))

(assert (=> d!723840 d!724196))

(assert (=> d!723840 d!723844))

(assert (=> b!2554070 d!724022))

(assert (=> b!2554070 d!724024))

(assert (=> b!2554426 d!724046))

(declare-fun d!724198 () Bool)

(assert (=> d!724198 (= (isEmpty!17028 lt!903907) (not ((_ is Some!5909) lt!903907)))))

(assert (=> d!723822 d!724198))

(assert (=> b!2554466 d!724122))

(declare-fun d!724200 () Bool)

(declare-fun lt!904063 () Regex!7609)

(assert (=> d!724200 (validRegex!3235 lt!904063)))

(declare-fun e!1614418 () Regex!7609)

(assert (=> d!724200 (= lt!904063 e!1614418)))

(declare-fun c!410034 () Bool)

(assert (=> d!724200 (= c!410034 ((_ is Cons!29574) (t!211373 tl!4068)))))

(assert (=> d!724200 (validRegex!3235 (derivativeStep!2178 lt!903902 (h!34994 tl!4068)))))

(assert (=> d!724200 (= (derivative!304 (derivativeStep!2178 lt!903902 (h!34994 tl!4068)) (t!211373 tl!4068)) lt!904063)))

(declare-fun b!2555527 () Bool)

(assert (=> b!2555527 (= e!1614418 (derivative!304 (derivativeStep!2178 (derivativeStep!2178 lt!903902 (h!34994 tl!4068)) (h!34994 (t!211373 tl!4068))) (t!211373 (t!211373 tl!4068))))))

(declare-fun b!2555528 () Bool)

(assert (=> b!2555528 (= e!1614418 (derivativeStep!2178 lt!903902 (h!34994 tl!4068)))))

(assert (= (and d!724200 c!410034) b!2555527))

(assert (= (and d!724200 (not c!410034)) b!2555528))

(declare-fun m!2897277 () Bool)

(assert (=> d!724200 m!2897277))

(assert (=> d!724200 m!2896157))

(declare-fun m!2897279 () Bool)

(assert (=> d!724200 m!2897279))

(assert (=> b!2555527 m!2896157))

(declare-fun m!2897281 () Bool)

(assert (=> b!2555527 m!2897281))

(assert (=> b!2555527 m!2897281))

(declare-fun m!2897283 () Bool)

(assert (=> b!2555527 m!2897283))

(assert (=> b!2554077 d!724200))

(declare-fun bm!163065 () Bool)

(declare-fun c!410036 () Bool)

(declare-fun c!410037 () Bool)

(declare-fun call!163070 () Regex!7609)

(assert (=> bm!163065 (= call!163070 (derivativeStep!2178 (ite c!410036 (regOne!15731 lt!903902) (ite c!410037 (reg!7938 lt!903902) (regOne!15730 lt!903902))) (h!34994 tl!4068)))))

(declare-fun b!2555529 () Bool)

(declare-fun e!1614423 () Regex!7609)

(declare-fun call!163071 () Regex!7609)

(assert (=> b!2555529 (= e!1614423 (Union!7609 call!163070 call!163071))))

(declare-fun b!2555530 () Bool)

(declare-fun c!410039 () Bool)

(assert (=> b!2555530 (= c!410039 (nullable!2526 (regOne!15730 lt!903902)))))

(declare-fun e!1614421 () Regex!7609)

(declare-fun e!1614422 () Regex!7609)

(assert (=> b!2555530 (= e!1614421 e!1614422)))

(declare-fun b!2555531 () Bool)

(declare-fun call!163072 () Regex!7609)

(assert (=> b!2555531 (= e!1614422 (Union!7609 (Concat!12305 call!163072 (regTwo!15730 lt!903902)) EmptyLang!7609))))

(declare-fun d!724202 () Bool)

(declare-fun lt!904064 () Regex!7609)

(assert (=> d!724202 (validRegex!3235 lt!904064)))

(declare-fun e!1614420 () Regex!7609)

(assert (=> d!724202 (= lt!904064 e!1614420)))

(declare-fun c!410035 () Bool)

(assert (=> d!724202 (= c!410035 (or ((_ is EmptyExpr!7609) lt!903902) ((_ is EmptyLang!7609) lt!903902)))))

(assert (=> d!724202 (validRegex!3235 lt!903902)))

(assert (=> d!724202 (= (derivativeStep!2178 lt!903902 (h!34994 tl!4068)) lt!904064)))

(declare-fun b!2555532 () Bool)

(declare-fun e!1614419 () Regex!7609)

(assert (=> b!2555532 (= e!1614420 e!1614419)))

(declare-fun c!410038 () Bool)

(assert (=> b!2555532 (= c!410038 ((_ is ElementMatch!7609) lt!903902))))

(declare-fun b!2555533 () Bool)

(assert (=> b!2555533 (= e!1614420 EmptyLang!7609)))

(declare-fun bm!163066 () Bool)

(assert (=> bm!163066 (= call!163071 (derivativeStep!2178 (ite c!410036 (regTwo!15731 lt!903902) (regTwo!15730 lt!903902)) (h!34994 tl!4068)))))

(declare-fun bm!163067 () Bool)

(declare-fun call!163073 () Regex!7609)

(assert (=> bm!163067 (= call!163072 call!163073)))

(declare-fun b!2555534 () Bool)

(assert (=> b!2555534 (= e!1614419 (ite (= (h!34994 tl!4068) (c!409621 lt!903902)) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555535 () Bool)

(assert (=> b!2555535 (= e!1614421 (Concat!12305 call!163073 lt!903902))))

(declare-fun b!2555536 () Bool)

(assert (=> b!2555536 (= c!410036 ((_ is Union!7609) lt!903902))))

(assert (=> b!2555536 (= e!1614419 e!1614423)))

(declare-fun b!2555537 () Bool)

(assert (=> b!2555537 (= e!1614423 e!1614421)))

(assert (=> b!2555537 (= c!410037 ((_ is Star!7609) lt!903902))))

(declare-fun bm!163068 () Bool)

(assert (=> bm!163068 (= call!163073 call!163070)))

(declare-fun b!2555538 () Bool)

(assert (=> b!2555538 (= e!1614422 (Union!7609 (Concat!12305 call!163072 (regTwo!15730 lt!903902)) call!163071))))

(assert (= (and d!724202 c!410035) b!2555533))

(assert (= (and d!724202 (not c!410035)) b!2555532))

(assert (= (and b!2555532 c!410038) b!2555534))

(assert (= (and b!2555532 (not c!410038)) b!2555536))

(assert (= (and b!2555536 c!410036) b!2555529))

(assert (= (and b!2555536 (not c!410036)) b!2555537))

(assert (= (and b!2555537 c!410037) b!2555535))

(assert (= (and b!2555537 (not c!410037)) b!2555530))

(assert (= (and b!2555530 c!410039) b!2555538))

(assert (= (and b!2555530 (not c!410039)) b!2555531))

(assert (= (or b!2555538 b!2555531) bm!163067))

(assert (= (or b!2555535 bm!163067) bm!163068))

(assert (= (or b!2555529 b!2555538) bm!163066))

(assert (= (or b!2555529 bm!163068) bm!163065))

(declare-fun m!2897285 () Bool)

(assert (=> bm!163065 m!2897285))

(declare-fun m!2897287 () Bool)

(assert (=> b!2555530 m!2897287))

(declare-fun m!2897289 () Bool)

(assert (=> d!724202 m!2897289))

(assert (=> d!724202 m!2896145))

(declare-fun m!2897291 () Bool)

(assert (=> bm!163066 m!2897291))

(assert (=> b!2554077 d!724202))

(declare-fun b!2555539 () Bool)

(declare-fun e!1614426 () Bool)

(declare-fun call!163075 () Bool)

(assert (=> b!2555539 (= e!1614426 call!163075)))

(declare-fun b!2555540 () Bool)

(declare-fun e!1614429 () Bool)

(declare-fun call!163074 () Bool)

(assert (=> b!2555540 (= e!1614429 call!163074)))

(declare-fun b!2555541 () Bool)

(declare-fun e!1614430 () Bool)

(assert (=> b!2555541 (= e!1614430 e!1614426)))

(declare-fun res!1076312 () Bool)

(assert (=> b!2555541 (= res!1076312 (not (nullable!2526 (reg!7938 lt!903956))))))

(assert (=> b!2555541 (=> (not res!1076312) (not e!1614426))))

(declare-fun c!410040 () Bool)

(declare-fun bm!163069 () Bool)

(declare-fun c!410041 () Bool)

(assert (=> bm!163069 (= call!163075 (validRegex!3235 (ite c!410040 (reg!7938 lt!903956) (ite c!410041 (regOne!15731 lt!903956) (regTwo!15730 lt!903956)))))))

(declare-fun d!724204 () Bool)

(declare-fun res!1076313 () Bool)

(declare-fun e!1614427 () Bool)

(assert (=> d!724204 (=> res!1076313 e!1614427)))

(assert (=> d!724204 (= res!1076313 ((_ is ElementMatch!7609) lt!903956))))

(assert (=> d!724204 (= (validRegex!3235 lt!903956) e!1614427)))

(declare-fun b!2555542 () Bool)

(declare-fun e!1614428 () Bool)

(assert (=> b!2555542 (= e!1614430 e!1614428)))

(assert (=> b!2555542 (= c!410041 ((_ is Union!7609) lt!903956))))

(declare-fun b!2555543 () Bool)

(assert (=> b!2555543 (= e!1614427 e!1614430)))

(assert (=> b!2555543 (= c!410040 ((_ is Star!7609) lt!903956))))

(declare-fun b!2555544 () Bool)

(declare-fun res!1076315 () Bool)

(declare-fun e!1614424 () Bool)

(assert (=> b!2555544 (=> res!1076315 e!1614424)))

(assert (=> b!2555544 (= res!1076315 (not ((_ is Concat!12305) lt!903956)))))

(assert (=> b!2555544 (= e!1614428 e!1614424)))

(declare-fun b!2555545 () Bool)

(declare-fun e!1614425 () Bool)

(assert (=> b!2555545 (= e!1614424 e!1614425)))

(declare-fun res!1076316 () Bool)

(assert (=> b!2555545 (=> (not res!1076316) (not e!1614425))))

(assert (=> b!2555545 (= res!1076316 call!163074)))

(declare-fun bm!163070 () Bool)

(assert (=> bm!163070 (= call!163074 (validRegex!3235 (ite c!410041 (regTwo!15731 lt!903956) (regOne!15730 lt!903956))))))

(declare-fun bm!163071 () Bool)

(declare-fun call!163076 () Bool)

(assert (=> bm!163071 (= call!163076 call!163075)))

(declare-fun b!2555546 () Bool)

(declare-fun res!1076314 () Bool)

(assert (=> b!2555546 (=> (not res!1076314) (not e!1614429))))

(assert (=> b!2555546 (= res!1076314 call!163076)))

(assert (=> b!2555546 (= e!1614428 e!1614429)))

(declare-fun b!2555547 () Bool)

(assert (=> b!2555547 (= e!1614425 call!163076)))

(assert (= (and d!724204 (not res!1076313)) b!2555543))

(assert (= (and b!2555543 c!410040) b!2555541))

(assert (= (and b!2555543 (not c!410040)) b!2555542))

(assert (= (and b!2555541 res!1076312) b!2555539))

(assert (= (and b!2555542 c!410041) b!2555546))

(assert (= (and b!2555542 (not c!410041)) b!2555544))

(assert (= (and b!2555546 res!1076314) b!2555540))

(assert (= (and b!2555544 (not res!1076315)) b!2555545))

(assert (= (and b!2555545 res!1076316) b!2555547))

(assert (= (or b!2555546 b!2555547) bm!163071))

(assert (= (or b!2555540 b!2555545) bm!163070))

(assert (= (or b!2555539 bm!163071) bm!163069))

(declare-fun m!2897293 () Bool)

(assert (=> b!2555541 m!2897293))

(declare-fun m!2897295 () Bool)

(assert (=> bm!163069 m!2897295))

(declare-fun m!2897297 () Bool)

(assert (=> bm!163070 m!2897297))

(assert (=> d!723790 d!724204))

(assert (=> d!723790 d!723748))

(declare-fun b!2555548 () Bool)

(declare-fun e!1614433 () Bool)

(declare-fun call!163078 () Bool)

(assert (=> b!2555548 (= e!1614433 call!163078)))

(declare-fun b!2555549 () Bool)

(declare-fun e!1614436 () Bool)

(declare-fun call!163077 () Bool)

(assert (=> b!2555549 (= e!1614436 call!163077)))

(declare-fun b!2555550 () Bool)

(declare-fun e!1614437 () Bool)

(assert (=> b!2555550 (= e!1614437 e!1614433)))

(declare-fun res!1076317 () Bool)

(assert (=> b!2555550 (= res!1076317 (not (nullable!2526 (reg!7938 (ite c!409768 (reg!7938 r!27340) (ite c!409769 (regOne!15731 r!27340) (regTwo!15730 r!27340)))))))))

(assert (=> b!2555550 (=> (not res!1076317) (not e!1614433))))

(declare-fun c!410042 () Bool)

(declare-fun c!410043 () Bool)

(declare-fun bm!163072 () Bool)

(assert (=> bm!163072 (= call!163078 (validRegex!3235 (ite c!410042 (reg!7938 (ite c!409768 (reg!7938 r!27340) (ite c!409769 (regOne!15731 r!27340) (regTwo!15730 r!27340)))) (ite c!410043 (regOne!15731 (ite c!409768 (reg!7938 r!27340) (ite c!409769 (regOne!15731 r!27340) (regTwo!15730 r!27340)))) (regTwo!15730 (ite c!409768 (reg!7938 r!27340) (ite c!409769 (regOne!15731 r!27340) (regTwo!15730 r!27340))))))))))

(declare-fun d!724206 () Bool)

(declare-fun res!1076318 () Bool)

(declare-fun e!1614434 () Bool)

(assert (=> d!724206 (=> res!1076318 e!1614434)))

(assert (=> d!724206 (= res!1076318 ((_ is ElementMatch!7609) (ite c!409768 (reg!7938 r!27340) (ite c!409769 (regOne!15731 r!27340) (regTwo!15730 r!27340)))))))

(assert (=> d!724206 (= (validRegex!3235 (ite c!409768 (reg!7938 r!27340) (ite c!409769 (regOne!15731 r!27340) (regTwo!15730 r!27340)))) e!1614434)))

(declare-fun b!2555551 () Bool)

(declare-fun e!1614435 () Bool)

(assert (=> b!2555551 (= e!1614437 e!1614435)))

(assert (=> b!2555551 (= c!410043 ((_ is Union!7609) (ite c!409768 (reg!7938 r!27340) (ite c!409769 (regOne!15731 r!27340) (regTwo!15730 r!27340)))))))

(declare-fun b!2555552 () Bool)

(assert (=> b!2555552 (= e!1614434 e!1614437)))

(assert (=> b!2555552 (= c!410042 ((_ is Star!7609) (ite c!409768 (reg!7938 r!27340) (ite c!409769 (regOne!15731 r!27340) (regTwo!15730 r!27340)))))))

(declare-fun b!2555553 () Bool)

(declare-fun res!1076320 () Bool)

(declare-fun e!1614431 () Bool)

(assert (=> b!2555553 (=> res!1076320 e!1614431)))

(assert (=> b!2555553 (= res!1076320 (not ((_ is Concat!12305) (ite c!409768 (reg!7938 r!27340) (ite c!409769 (regOne!15731 r!27340) (regTwo!15730 r!27340))))))))

(assert (=> b!2555553 (= e!1614435 e!1614431)))

(declare-fun b!2555554 () Bool)

(declare-fun e!1614432 () Bool)

(assert (=> b!2555554 (= e!1614431 e!1614432)))

(declare-fun res!1076321 () Bool)

(assert (=> b!2555554 (=> (not res!1076321) (not e!1614432))))

(assert (=> b!2555554 (= res!1076321 call!163077)))

(declare-fun bm!163073 () Bool)

(assert (=> bm!163073 (= call!163077 (validRegex!3235 (ite c!410043 (regTwo!15731 (ite c!409768 (reg!7938 r!27340) (ite c!409769 (regOne!15731 r!27340) (regTwo!15730 r!27340)))) (regOne!15730 (ite c!409768 (reg!7938 r!27340) (ite c!409769 (regOne!15731 r!27340) (regTwo!15730 r!27340)))))))))

(declare-fun bm!163074 () Bool)

(declare-fun call!163079 () Bool)

(assert (=> bm!163074 (= call!163079 call!163078)))

(declare-fun b!2555555 () Bool)

(declare-fun res!1076319 () Bool)

(assert (=> b!2555555 (=> (not res!1076319) (not e!1614436))))

(assert (=> b!2555555 (= res!1076319 call!163079)))

(assert (=> b!2555555 (= e!1614435 e!1614436)))

(declare-fun b!2555556 () Bool)

(assert (=> b!2555556 (= e!1614432 call!163079)))

(assert (= (and d!724206 (not res!1076318)) b!2555552))

(assert (= (and b!2555552 c!410042) b!2555550))

(assert (= (and b!2555552 (not c!410042)) b!2555551))

(assert (= (and b!2555550 res!1076317) b!2555548))

(assert (= (and b!2555551 c!410043) b!2555555))

(assert (= (and b!2555551 (not c!410043)) b!2555553))

(assert (= (and b!2555555 res!1076319) b!2555549))

(assert (= (and b!2555553 (not res!1076320)) b!2555554))

(assert (= (and b!2555554 res!1076321) b!2555556))

(assert (= (or b!2555555 b!2555556) bm!163074))

(assert (= (or b!2555549 b!2555554) bm!163073))

(assert (= (or b!2555548 bm!163074) bm!163072))

(declare-fun m!2897299 () Bool)

(assert (=> b!2555550 m!2897299))

(declare-fun m!2897301 () Bool)

(assert (=> bm!163072 m!2897301))

(declare-fun m!2897303 () Bool)

(assert (=> bm!163073 m!2897303))

(assert (=> bm!162844 d!724206))

(declare-fun b!2555557 () Bool)

(declare-fun e!1614440 () Bool)

(declare-fun call!163081 () Bool)

(assert (=> b!2555557 (= e!1614440 call!163081)))

(declare-fun b!2555558 () Bool)

(declare-fun e!1614443 () Bool)

(declare-fun call!163080 () Bool)

(assert (=> b!2555558 (= e!1614443 call!163080)))

(declare-fun b!2555559 () Bool)

(declare-fun e!1614444 () Bool)

(assert (=> b!2555559 (= e!1614444 e!1614440)))

(declare-fun res!1076322 () Bool)

(assert (=> b!2555559 (= res!1076322 (not (nullable!2526 (reg!7938 lt!903933))))))

(assert (=> b!2555559 (=> (not res!1076322) (not e!1614440))))

(declare-fun bm!163075 () Bool)

(declare-fun c!410045 () Bool)

(declare-fun c!410044 () Bool)

(assert (=> bm!163075 (= call!163081 (validRegex!3235 (ite c!410044 (reg!7938 lt!903933) (ite c!410045 (regOne!15731 lt!903933) (regTwo!15730 lt!903933)))))))

(declare-fun d!724208 () Bool)

(declare-fun res!1076323 () Bool)

(declare-fun e!1614441 () Bool)

(assert (=> d!724208 (=> res!1076323 e!1614441)))

(assert (=> d!724208 (= res!1076323 ((_ is ElementMatch!7609) lt!903933))))

(assert (=> d!724208 (= (validRegex!3235 lt!903933) e!1614441)))

(declare-fun b!2555560 () Bool)

(declare-fun e!1614442 () Bool)

(assert (=> b!2555560 (= e!1614444 e!1614442)))

(assert (=> b!2555560 (= c!410045 ((_ is Union!7609) lt!903933))))

(declare-fun b!2555561 () Bool)

(assert (=> b!2555561 (= e!1614441 e!1614444)))

(assert (=> b!2555561 (= c!410044 ((_ is Star!7609) lt!903933))))

(declare-fun b!2555562 () Bool)

(declare-fun res!1076325 () Bool)

(declare-fun e!1614438 () Bool)

(assert (=> b!2555562 (=> res!1076325 e!1614438)))

(assert (=> b!2555562 (= res!1076325 (not ((_ is Concat!12305) lt!903933)))))

(assert (=> b!2555562 (= e!1614442 e!1614438)))

(declare-fun b!2555563 () Bool)

(declare-fun e!1614439 () Bool)

(assert (=> b!2555563 (= e!1614438 e!1614439)))

(declare-fun res!1076326 () Bool)

(assert (=> b!2555563 (=> (not res!1076326) (not e!1614439))))

(assert (=> b!2555563 (= res!1076326 call!163080)))

(declare-fun bm!163076 () Bool)

(assert (=> bm!163076 (= call!163080 (validRegex!3235 (ite c!410045 (regTwo!15731 lt!903933) (regOne!15730 lt!903933))))))

(declare-fun bm!163077 () Bool)

(declare-fun call!163082 () Bool)

(assert (=> bm!163077 (= call!163082 call!163081)))

(declare-fun b!2555564 () Bool)

(declare-fun res!1076324 () Bool)

(assert (=> b!2555564 (=> (not res!1076324) (not e!1614443))))

(assert (=> b!2555564 (= res!1076324 call!163082)))

(assert (=> b!2555564 (= e!1614442 e!1614443)))

(declare-fun b!2555565 () Bool)

(assert (=> b!2555565 (= e!1614439 call!163082)))

(assert (= (and d!724208 (not res!1076323)) b!2555561))

(assert (= (and b!2555561 c!410044) b!2555559))

(assert (= (and b!2555561 (not c!410044)) b!2555560))

(assert (= (and b!2555559 res!1076322) b!2555557))

(assert (= (and b!2555560 c!410045) b!2555564))

(assert (= (and b!2555560 (not c!410045)) b!2555562))

(assert (= (and b!2555564 res!1076324) b!2555558))

(assert (= (and b!2555562 (not res!1076325)) b!2555563))

(assert (= (and b!2555563 res!1076326) b!2555565))

(assert (= (or b!2555564 b!2555565) bm!163077))

(assert (= (or b!2555558 b!2555563) bm!163076))

(assert (= (or b!2555557 bm!163077) bm!163075))

(declare-fun m!2897305 () Bool)

(assert (=> b!2555559 m!2897305))

(declare-fun m!2897307 () Bool)

(assert (=> bm!163075 m!2897307))

(declare-fun m!2897309 () Bool)

(assert (=> bm!163076 m!2897309))

(assert (=> d!723760 d!724208))

(assert (=> d!723760 d!724054))

(declare-fun e!1614449 () Bool)

(declare-fun b!2555566 () Bool)

(assert (=> b!2555566 (= e!1614449 (matchR!3554 (derivativeStep!2178 (derivativeStep!2178 (regOne!15730 r!27340) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904)))) (head!5816 (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904))))) (tail!4091 (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904))))))))

(declare-fun b!2555567 () Bool)

(declare-fun e!1614447 () Bool)

(declare-fun e!1614445 () Bool)

(assert (=> b!2555567 (= e!1614447 e!1614445)))

(declare-fun res!1076330 () Bool)

(assert (=> b!2555567 (=> (not res!1076330) (not e!1614445))))

(declare-fun lt!904065 () Bool)

(assert (=> b!2555567 (= res!1076330 (not lt!904065))))

(declare-fun b!2555568 () Bool)

(assert (=> b!2555568 (= e!1614449 (nullable!2526 (derivativeStep!2178 (regOne!15730 r!27340) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904))))))))

(declare-fun b!2555570 () Bool)

(declare-fun e!1614448 () Bool)

(assert (=> b!2555570 (= e!1614448 (not lt!904065))))

(declare-fun b!2555571 () Bool)

(declare-fun e!1614451 () Bool)

(assert (=> b!2555571 (= e!1614445 e!1614451)))

(declare-fun res!1076329 () Bool)

(assert (=> b!2555571 (=> res!1076329 e!1614451)))

(declare-fun call!163083 () Bool)

(assert (=> b!2555571 (= res!1076329 call!163083)))

(declare-fun b!2555572 () Bool)

(declare-fun res!1076327 () Bool)

(declare-fun e!1614446 () Bool)

(assert (=> b!2555572 (=> (not res!1076327) (not e!1614446))))

(assert (=> b!2555572 (= res!1076327 (isEmpty!17027 (tail!4091 (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904))))))))

(declare-fun b!2555573 () Bool)

(declare-fun res!1076334 () Bool)

(assert (=> b!2555573 (=> res!1076334 e!1614451)))

(assert (=> b!2555573 (= res!1076334 (not (isEmpty!17027 (tail!4091 (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904)))))))))

(declare-fun b!2555574 () Bool)

(declare-fun e!1614450 () Bool)

(assert (=> b!2555574 (= e!1614450 e!1614448)))

(declare-fun c!410048 () Bool)

(assert (=> b!2555574 (= c!410048 ((_ is EmptyLang!7609) (derivativeStep!2178 (regOne!15730 r!27340) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904))))))))

(declare-fun b!2555575 () Bool)

(assert (=> b!2555575 (= e!1614446 (= (head!5816 (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904)))) (c!409621 (derivativeStep!2178 (regOne!15730 r!27340) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904)))))))))

(declare-fun b!2555576 () Bool)

(assert (=> b!2555576 (= e!1614451 (not (= (head!5816 (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904)))) (c!409621 (derivativeStep!2178 (regOne!15730 r!27340) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904))))))))))

(declare-fun b!2555577 () Bool)

(declare-fun res!1076331 () Bool)

(assert (=> b!2555577 (=> res!1076331 e!1614447)))

(assert (=> b!2555577 (= res!1076331 e!1614446)))

(declare-fun res!1076332 () Bool)

(assert (=> b!2555577 (=> (not res!1076332) (not e!1614446))))

(assert (=> b!2555577 (= res!1076332 lt!904065)))

(declare-fun b!2555578 () Bool)

(assert (=> b!2555578 (= e!1614450 (= lt!904065 call!163083))))

(declare-fun b!2555569 () Bool)

(declare-fun res!1076333 () Bool)

(assert (=> b!2555569 (=> (not res!1076333) (not e!1614446))))

(assert (=> b!2555569 (= res!1076333 (not call!163083))))

(declare-fun d!724210 () Bool)

(assert (=> d!724210 e!1614450))

(declare-fun c!410047 () Bool)

(assert (=> d!724210 (= c!410047 ((_ is EmptyExpr!7609) (derivativeStep!2178 (regOne!15730 r!27340) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904))))))))

(assert (=> d!724210 (= lt!904065 e!1614449)))

(declare-fun c!410046 () Bool)

(assert (=> d!724210 (= c!410046 (isEmpty!17027 (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904)))))))

(assert (=> d!724210 (validRegex!3235 (derivativeStep!2178 (regOne!15730 r!27340) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904)))))))

(assert (=> d!724210 (= (matchR!3554 (derivativeStep!2178 (regOne!15730 r!27340) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904)))) (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904)))) lt!904065)))

(declare-fun b!2555579 () Bool)

(declare-fun res!1076328 () Bool)

(assert (=> b!2555579 (=> res!1076328 e!1614447)))

(assert (=> b!2555579 (= res!1076328 (not ((_ is ElementMatch!7609) (derivativeStep!2178 (regOne!15730 r!27340) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904)))))))))

(assert (=> b!2555579 (= e!1614448 e!1614447)))

(declare-fun bm!163078 () Bool)

(assert (=> bm!163078 (= call!163083 (isEmpty!17027 (tail!4091 (Cons!29574 c!14016 (_1!17332 lt!903904)))))))

(assert (= (and d!724210 c!410046) b!2555568))

(assert (= (and d!724210 (not c!410046)) b!2555566))

(assert (= (and d!724210 c!410047) b!2555578))

(assert (= (and d!724210 (not c!410047)) b!2555574))

(assert (= (and b!2555574 c!410048) b!2555570))

(assert (= (and b!2555574 (not c!410048)) b!2555579))

(assert (= (and b!2555579 (not res!1076328)) b!2555577))

(assert (= (and b!2555577 res!1076332) b!2555569))

(assert (= (and b!2555569 res!1076333) b!2555572))

(assert (= (and b!2555572 res!1076327) b!2555575))

(assert (= (and b!2555577 (not res!1076331)) b!2555567))

(assert (= (and b!2555567 res!1076330) b!2555571))

(assert (= (and b!2555571 (not res!1076329)) b!2555573))

(assert (= (and b!2555573 (not res!1076334)) b!2555576))

(assert (= (or b!2555578 b!2555569 b!2555571) bm!163078))

(assert (=> bm!163078 m!2896113))

(assert (=> bm!163078 m!2896115))

(assert (=> b!2555572 m!2896113))

(declare-fun m!2897311 () Bool)

(assert (=> b!2555572 m!2897311))

(assert (=> b!2555572 m!2897311))

(declare-fun m!2897313 () Bool)

(assert (=> b!2555572 m!2897313))

(assert (=> b!2555566 m!2896113))

(declare-fun m!2897315 () Bool)

(assert (=> b!2555566 m!2897315))

(assert (=> b!2555566 m!2896123))

(assert (=> b!2555566 m!2897315))

(declare-fun m!2897317 () Bool)

(assert (=> b!2555566 m!2897317))

(assert (=> b!2555566 m!2896113))

(assert (=> b!2555566 m!2897311))

(assert (=> b!2555566 m!2897317))

(assert (=> b!2555566 m!2897311))

(declare-fun m!2897319 () Bool)

(assert (=> b!2555566 m!2897319))

(assert (=> b!2555568 m!2896123))

(declare-fun m!2897321 () Bool)

(assert (=> b!2555568 m!2897321))

(assert (=> d!724210 m!2896113))

(assert (=> d!724210 m!2896115))

(assert (=> d!724210 m!2896123))

(declare-fun m!2897323 () Bool)

(assert (=> d!724210 m!2897323))

(assert (=> b!2555575 m!2896113))

(assert (=> b!2555575 m!2897315))

(assert (=> b!2555573 m!2896113))

(assert (=> b!2555573 m!2897311))

(assert (=> b!2555573 m!2897311))

(assert (=> b!2555573 m!2897313))

(assert (=> b!2555576 m!2896113))

(assert (=> b!2555576 m!2897315))

(assert (=> b!2554040 d!724210))

(declare-fun call!163084 () Regex!7609)

(declare-fun bm!163079 () Bool)

(declare-fun c!410051 () Bool)

(declare-fun c!410050 () Bool)

(assert (=> bm!163079 (= call!163084 (derivativeStep!2178 (ite c!410050 (regOne!15731 (regOne!15730 r!27340)) (ite c!410051 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904)))))))

(declare-fun b!2555580 () Bool)

(declare-fun e!1614456 () Regex!7609)

(declare-fun call!163085 () Regex!7609)

(assert (=> b!2555580 (= e!1614456 (Union!7609 call!163084 call!163085))))

(declare-fun b!2555581 () Bool)

(declare-fun c!410053 () Bool)

(assert (=> b!2555581 (= c!410053 (nullable!2526 (regOne!15730 (regOne!15730 r!27340))))))

(declare-fun e!1614454 () Regex!7609)

(declare-fun e!1614455 () Regex!7609)

(assert (=> b!2555581 (= e!1614454 e!1614455)))

(declare-fun b!2555582 () Bool)

(declare-fun call!163086 () Regex!7609)

(assert (=> b!2555582 (= e!1614455 (Union!7609 (Concat!12305 call!163086 (regTwo!15730 (regOne!15730 r!27340))) EmptyLang!7609))))

(declare-fun d!724212 () Bool)

(declare-fun lt!904066 () Regex!7609)

(assert (=> d!724212 (validRegex!3235 lt!904066)))

(declare-fun e!1614453 () Regex!7609)

(assert (=> d!724212 (= lt!904066 e!1614453)))

(declare-fun c!410049 () Bool)

(assert (=> d!724212 (= c!410049 (or ((_ is EmptyExpr!7609) (regOne!15730 r!27340)) ((_ is EmptyLang!7609) (regOne!15730 r!27340))))))

(assert (=> d!724212 (validRegex!3235 (regOne!15730 r!27340))))

(assert (=> d!724212 (= (derivativeStep!2178 (regOne!15730 r!27340) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904)))) lt!904066)))

(declare-fun b!2555583 () Bool)

(declare-fun e!1614452 () Regex!7609)

(assert (=> b!2555583 (= e!1614453 e!1614452)))

(declare-fun c!410052 () Bool)

(assert (=> b!2555583 (= c!410052 ((_ is ElementMatch!7609) (regOne!15730 r!27340)))))

(declare-fun b!2555584 () Bool)

(assert (=> b!2555584 (= e!1614453 EmptyLang!7609)))

(declare-fun bm!163080 () Bool)

(assert (=> bm!163080 (= call!163085 (derivativeStep!2178 (ite c!410050 (regTwo!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))) (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904)))))))

(declare-fun bm!163081 () Bool)

(declare-fun call!163087 () Regex!7609)

(assert (=> bm!163081 (= call!163086 call!163087)))

(declare-fun b!2555585 () Bool)

(assert (=> b!2555585 (= e!1614452 (ite (= (head!5816 (Cons!29574 c!14016 (_1!17332 lt!903904))) (c!409621 (regOne!15730 r!27340))) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555586 () Bool)

(assert (=> b!2555586 (= e!1614454 (Concat!12305 call!163087 (regOne!15730 r!27340)))))

(declare-fun b!2555587 () Bool)

(assert (=> b!2555587 (= c!410050 ((_ is Union!7609) (regOne!15730 r!27340)))))

(assert (=> b!2555587 (= e!1614452 e!1614456)))

(declare-fun b!2555588 () Bool)

(assert (=> b!2555588 (= e!1614456 e!1614454)))

(assert (=> b!2555588 (= c!410051 ((_ is Star!7609) (regOne!15730 r!27340)))))

(declare-fun bm!163082 () Bool)

(assert (=> bm!163082 (= call!163087 call!163084)))

(declare-fun b!2555589 () Bool)

(assert (=> b!2555589 (= e!1614455 (Union!7609 (Concat!12305 call!163086 (regTwo!15730 (regOne!15730 r!27340))) call!163085))))

(assert (= (and d!724212 c!410049) b!2555584))

(assert (= (and d!724212 (not c!410049)) b!2555583))

(assert (= (and b!2555583 c!410052) b!2555585))

(assert (= (and b!2555583 (not c!410052)) b!2555587))

(assert (= (and b!2555587 c!410050) b!2555580))

(assert (= (and b!2555587 (not c!410050)) b!2555588))

(assert (= (and b!2555588 c!410051) b!2555586))

(assert (= (and b!2555588 (not c!410051)) b!2555581))

(assert (= (and b!2555581 c!410053) b!2555589))

(assert (= (and b!2555581 (not c!410053)) b!2555582))

(assert (= (or b!2555589 b!2555582) bm!163081))

(assert (= (or b!2555586 bm!163081) bm!163082))

(assert (= (or b!2555580 b!2555589) bm!163080))

(assert (= (or b!2555580 bm!163082) bm!163079))

(assert (=> bm!163079 m!2896117))

(declare-fun m!2897325 () Bool)

(assert (=> bm!163079 m!2897325))

(assert (=> b!2555581 m!2896247))

(declare-fun m!2897327 () Bool)

(assert (=> d!724212 m!2897327))

(assert (=> d!724212 m!2896041))

(assert (=> bm!163080 m!2896117))

(declare-fun m!2897329 () Bool)

(assert (=> bm!163080 m!2897329))

(assert (=> b!2554040 d!724212))

(assert (=> b!2554040 d!724082))

(assert (=> b!2554040 d!724076))

(assert (=> b!2554489 d!723966))

(assert (=> b!2554042 d!723746))

(assert (=> b!2554011 d!724012))

(declare-fun b!2555590 () Bool)

(declare-fun e!1614459 () Bool)

(declare-fun call!163089 () Bool)

(assert (=> b!2555590 (= e!1614459 call!163089)))

(declare-fun b!2555591 () Bool)

(declare-fun e!1614462 () Bool)

(declare-fun call!163088 () Bool)

(assert (=> b!2555591 (= e!1614462 call!163088)))

(declare-fun b!2555592 () Bool)

(declare-fun e!1614463 () Bool)

(assert (=> b!2555592 (= e!1614463 e!1614459)))

(declare-fun res!1076335 () Bool)

(assert (=> b!2555592 (= res!1076335 (not (nullable!2526 (reg!7938 (ite c!409639 (reg!7938 (regOne!15730 r!27340)) (ite c!409640 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))))))))

(assert (=> b!2555592 (=> (not res!1076335) (not e!1614459))))

(declare-fun bm!163083 () Bool)

(declare-fun c!410055 () Bool)

(declare-fun c!410054 () Bool)

(assert (=> bm!163083 (= call!163089 (validRegex!3235 (ite c!410054 (reg!7938 (ite c!409639 (reg!7938 (regOne!15730 r!27340)) (ite c!409640 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))) (ite c!410055 (regOne!15731 (ite c!409639 (reg!7938 (regOne!15730 r!27340)) (ite c!409640 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))) (regTwo!15730 (ite c!409639 (reg!7938 (regOne!15730 r!27340)) (ite c!409640 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340)))))))))))

(declare-fun d!724214 () Bool)

(declare-fun res!1076336 () Bool)

(declare-fun e!1614460 () Bool)

(assert (=> d!724214 (=> res!1076336 e!1614460)))

(assert (=> d!724214 (= res!1076336 ((_ is ElementMatch!7609) (ite c!409639 (reg!7938 (regOne!15730 r!27340)) (ite c!409640 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))))))

(assert (=> d!724214 (= (validRegex!3235 (ite c!409639 (reg!7938 (regOne!15730 r!27340)) (ite c!409640 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))) e!1614460)))

(declare-fun b!2555593 () Bool)

(declare-fun e!1614461 () Bool)

(assert (=> b!2555593 (= e!1614463 e!1614461)))

(assert (=> b!2555593 (= c!410055 ((_ is Union!7609) (ite c!409639 (reg!7938 (regOne!15730 r!27340)) (ite c!409640 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))))))

(declare-fun b!2555594 () Bool)

(assert (=> b!2555594 (= e!1614460 e!1614463)))

(assert (=> b!2555594 (= c!410054 ((_ is Star!7609) (ite c!409639 (reg!7938 (regOne!15730 r!27340)) (ite c!409640 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))))))

(declare-fun b!2555595 () Bool)

(declare-fun res!1076338 () Bool)

(declare-fun e!1614457 () Bool)

(assert (=> b!2555595 (=> res!1076338 e!1614457)))

(assert (=> b!2555595 (= res!1076338 (not ((_ is Concat!12305) (ite c!409639 (reg!7938 (regOne!15730 r!27340)) (ite c!409640 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340)))))))))

(assert (=> b!2555595 (= e!1614461 e!1614457)))

(declare-fun b!2555596 () Bool)

(declare-fun e!1614458 () Bool)

(assert (=> b!2555596 (= e!1614457 e!1614458)))

(declare-fun res!1076339 () Bool)

(assert (=> b!2555596 (=> (not res!1076339) (not e!1614458))))

(assert (=> b!2555596 (= res!1076339 call!163088)))

(declare-fun bm!163084 () Bool)

(assert (=> bm!163084 (= call!163088 (validRegex!3235 (ite c!410055 (regTwo!15731 (ite c!409639 (reg!7938 (regOne!15730 r!27340)) (ite c!409640 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))) (regOne!15730 (ite c!409639 (reg!7938 (regOne!15730 r!27340)) (ite c!409640 (regOne!15731 (regOne!15730 r!27340)) (regTwo!15730 (regOne!15730 r!27340))))))))))

(declare-fun bm!163085 () Bool)

(declare-fun call!163090 () Bool)

(assert (=> bm!163085 (= call!163090 call!163089)))

(declare-fun b!2555597 () Bool)

(declare-fun res!1076337 () Bool)

(assert (=> b!2555597 (=> (not res!1076337) (not e!1614462))))

(assert (=> b!2555597 (= res!1076337 call!163090)))

(assert (=> b!2555597 (= e!1614461 e!1614462)))

(declare-fun b!2555598 () Bool)

(assert (=> b!2555598 (= e!1614458 call!163090)))

(assert (= (and d!724214 (not res!1076336)) b!2555594))

(assert (= (and b!2555594 c!410054) b!2555592))

(assert (= (and b!2555594 (not c!410054)) b!2555593))

(assert (= (and b!2555592 res!1076335) b!2555590))

(assert (= (and b!2555593 c!410055) b!2555597))

(assert (= (and b!2555593 (not c!410055)) b!2555595))

(assert (= (and b!2555597 res!1076337) b!2555591))

(assert (= (and b!2555595 (not res!1076338)) b!2555596))

(assert (= (and b!2555596 res!1076339) b!2555598))

(assert (= (or b!2555597 b!2555598) bm!163085))

(assert (= (or b!2555591 b!2555596) bm!163084))

(assert (= (or b!2555590 bm!163085) bm!163083))

(declare-fun m!2897331 () Bool)

(assert (=> b!2555592 m!2897331))

(declare-fun m!2897333 () Bool)

(assert (=> bm!163083 m!2897333))

(declare-fun m!2897335 () Bool)

(assert (=> bm!163084 m!2897335))

(assert (=> bm!162773 d!724214))

(assert (=> b!2554239 d!723966))

(declare-fun bm!163086 () Bool)

(declare-fun c!410058 () Bool)

(declare-fun c!410057 () Bool)

(declare-fun call!163091 () Regex!7609)

(assert (=> bm!163086 (= call!163091 (derivativeStep!2178 (ite c!410057 (regOne!15731 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340))))) (ite c!410058 (reg!7938 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340))))) (regOne!15730 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340))))))) c!14016))))

(declare-fun b!2555599 () Bool)

(declare-fun e!1614468 () Regex!7609)

(declare-fun call!163092 () Regex!7609)

(assert (=> b!2555599 (= e!1614468 (Union!7609 call!163091 call!163092))))

(declare-fun b!2555600 () Bool)

(declare-fun c!410060 () Bool)

(assert (=> b!2555600 (= c!410060 (nullable!2526 (regOne!15730 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340)))))))))

(declare-fun e!1614466 () Regex!7609)

(declare-fun e!1614467 () Regex!7609)

(assert (=> b!2555600 (= e!1614466 e!1614467)))

(declare-fun call!163093 () Regex!7609)

(declare-fun b!2555601 () Bool)

(assert (=> b!2555601 (= e!1614467 (Union!7609 (Concat!12305 call!163093 (regTwo!15730 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340)))))) EmptyLang!7609))))

(declare-fun d!724216 () Bool)

(declare-fun lt!904067 () Regex!7609)

(assert (=> d!724216 (validRegex!3235 lt!904067)))

(declare-fun e!1614465 () Regex!7609)

(assert (=> d!724216 (= lt!904067 e!1614465)))

(declare-fun c!410056 () Bool)

(assert (=> d!724216 (= c!410056 (or ((_ is EmptyExpr!7609) (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340))))) ((_ is EmptyLang!7609) (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340)))))))))

(assert (=> d!724216 (validRegex!3235 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340)))))))

(assert (=> d!724216 (= (derivativeStep!2178 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340)))) c!14016) lt!904067)))

(declare-fun b!2555602 () Bool)

(declare-fun e!1614464 () Regex!7609)

(assert (=> b!2555602 (= e!1614465 e!1614464)))

(declare-fun c!410059 () Bool)

(assert (=> b!2555602 (= c!410059 ((_ is ElementMatch!7609) (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340))))))))

(declare-fun b!2555603 () Bool)

(assert (=> b!2555603 (= e!1614465 EmptyLang!7609)))

(declare-fun bm!163087 () Bool)

(assert (=> bm!163087 (= call!163092 (derivativeStep!2178 (ite c!410057 (regTwo!15731 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340))))) (regTwo!15730 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340)))))) c!14016))))

(declare-fun bm!163088 () Bool)

(declare-fun call!163094 () Regex!7609)

(assert (=> bm!163088 (= call!163093 call!163094)))

(declare-fun b!2555604 () Bool)

(assert (=> b!2555604 (= e!1614464 (ite (= c!14016 (c!409621 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340)))))) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555605 () Bool)

(assert (=> b!2555605 (= e!1614466 (Concat!12305 call!163094 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340))))))))

(declare-fun b!2555606 () Bool)

(assert (=> b!2555606 (= c!410057 ((_ is Union!7609) (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340))))))))

(assert (=> b!2555606 (= e!1614464 e!1614468)))

(declare-fun b!2555607 () Bool)

(assert (=> b!2555607 (= e!1614468 e!1614466)))

(assert (=> b!2555607 (= c!410058 ((_ is Star!7609) (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340))))))))

(declare-fun bm!163089 () Bool)

(assert (=> bm!163089 (= call!163094 call!163091)))

(declare-fun b!2555608 () Bool)

(assert (=> b!2555608 (= e!1614467 (Union!7609 (Concat!12305 call!163093 (regTwo!15730 (ite c!409703 (regOne!15731 (regTwo!15730 r!27340)) (ite c!409704 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340)))))) call!163092))))

(assert (= (and d!724216 c!410056) b!2555603))

(assert (= (and d!724216 (not c!410056)) b!2555602))

(assert (= (and b!2555602 c!410059) b!2555604))

(assert (= (and b!2555602 (not c!410059)) b!2555606))

(assert (= (and b!2555606 c!410057) b!2555599))

(assert (= (and b!2555606 (not c!410057)) b!2555607))

(assert (= (and b!2555607 c!410058) b!2555605))

(assert (= (and b!2555607 (not c!410058)) b!2555600))

(assert (= (and b!2555600 c!410060) b!2555608))

(assert (= (and b!2555600 (not c!410060)) b!2555601))

(assert (= (or b!2555608 b!2555601) bm!163088))

(assert (= (or b!2555605 bm!163088) bm!163089))

(assert (= (or b!2555599 b!2555608) bm!163087))

(assert (= (or b!2555599 bm!163089) bm!163086))

(declare-fun m!2897337 () Bool)

(assert (=> bm!163086 m!2897337))

(declare-fun m!2897339 () Bool)

(assert (=> b!2555600 m!2897339))

(declare-fun m!2897341 () Bool)

(assert (=> d!724216 m!2897341))

(declare-fun m!2897343 () Bool)

(assert (=> d!724216 m!2897343))

(declare-fun m!2897345 () Bool)

(assert (=> bm!163087 m!2897345))

(assert (=> bm!162812 d!724216))

(declare-fun b!2555609 () Bool)

(declare-fun e!1614473 () Bool)

(assert (=> b!2555609 (= e!1614473 (matchR!3554 (derivativeStep!2178 (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 (_2!17332 lt!903904))) (head!5816 (tail!4091 (_2!17332 lt!903904)))) (tail!4091 (tail!4091 (_2!17332 lt!903904)))))))

(declare-fun b!2555610 () Bool)

(declare-fun e!1614471 () Bool)

(declare-fun e!1614469 () Bool)

(assert (=> b!2555610 (= e!1614471 e!1614469)))

(declare-fun res!1076343 () Bool)

(assert (=> b!2555610 (=> (not res!1076343) (not e!1614469))))

(declare-fun lt!904068 () Bool)

(assert (=> b!2555610 (= res!1076343 (not lt!904068))))

(declare-fun b!2555611 () Bool)

(assert (=> b!2555611 (= e!1614473 (nullable!2526 (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 (_2!17332 lt!903904)))))))

(declare-fun b!2555613 () Bool)

(declare-fun e!1614472 () Bool)

(assert (=> b!2555613 (= e!1614472 (not lt!904068))))

(declare-fun b!2555614 () Bool)

(declare-fun e!1614475 () Bool)

(assert (=> b!2555614 (= e!1614469 e!1614475)))

(declare-fun res!1076342 () Bool)

(assert (=> b!2555614 (=> res!1076342 e!1614475)))

(declare-fun call!163095 () Bool)

(assert (=> b!2555614 (= res!1076342 call!163095)))

(declare-fun b!2555615 () Bool)

(declare-fun res!1076340 () Bool)

(declare-fun e!1614470 () Bool)

(assert (=> b!2555615 (=> (not res!1076340) (not e!1614470))))

(assert (=> b!2555615 (= res!1076340 (isEmpty!17027 (tail!4091 (tail!4091 (_2!17332 lt!903904)))))))

(declare-fun b!2555616 () Bool)

(declare-fun res!1076347 () Bool)

(assert (=> b!2555616 (=> res!1076347 e!1614475)))

(assert (=> b!2555616 (= res!1076347 (not (isEmpty!17027 (tail!4091 (tail!4091 (_2!17332 lt!903904))))))))

(declare-fun b!2555617 () Bool)

(declare-fun e!1614474 () Bool)

(assert (=> b!2555617 (= e!1614474 e!1614472)))

(declare-fun c!410063 () Bool)

(assert (=> b!2555617 (= c!410063 ((_ is EmptyLang!7609) (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 (_2!17332 lt!903904)))))))

(declare-fun b!2555618 () Bool)

(assert (=> b!2555618 (= e!1614470 (= (head!5816 (tail!4091 (_2!17332 lt!903904))) (c!409621 (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 (_2!17332 lt!903904))))))))

(declare-fun b!2555619 () Bool)

(assert (=> b!2555619 (= e!1614475 (not (= (head!5816 (tail!4091 (_2!17332 lt!903904))) (c!409621 (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 (_2!17332 lt!903904)))))))))

(declare-fun b!2555620 () Bool)

(declare-fun res!1076344 () Bool)

(assert (=> b!2555620 (=> res!1076344 e!1614471)))

(assert (=> b!2555620 (= res!1076344 e!1614470)))

(declare-fun res!1076345 () Bool)

(assert (=> b!2555620 (=> (not res!1076345) (not e!1614470))))

(assert (=> b!2555620 (= res!1076345 lt!904068)))

(declare-fun b!2555621 () Bool)

(assert (=> b!2555621 (= e!1614474 (= lt!904068 call!163095))))

(declare-fun b!2555612 () Bool)

(declare-fun res!1076346 () Bool)

(assert (=> b!2555612 (=> (not res!1076346) (not e!1614470))))

(assert (=> b!2555612 (= res!1076346 (not call!163095))))

(declare-fun d!724218 () Bool)

(assert (=> d!724218 e!1614474))

(declare-fun c!410062 () Bool)

(assert (=> d!724218 (= c!410062 ((_ is EmptyExpr!7609) (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 (_2!17332 lt!903904)))))))

(assert (=> d!724218 (= lt!904068 e!1614473)))

(declare-fun c!410061 () Bool)

(assert (=> d!724218 (= c!410061 (isEmpty!17027 (tail!4091 (_2!17332 lt!903904))))))

(assert (=> d!724218 (validRegex!3235 (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 (_2!17332 lt!903904))))))

(assert (=> d!724218 (= (matchR!3554 (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 (_2!17332 lt!903904))) (tail!4091 (_2!17332 lt!903904))) lt!904068)))

(declare-fun b!2555622 () Bool)

(declare-fun res!1076341 () Bool)

(assert (=> b!2555622 (=> res!1076341 e!1614471)))

(assert (=> b!2555622 (= res!1076341 (not ((_ is ElementMatch!7609) (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 (_2!17332 lt!903904))))))))

(assert (=> b!2555622 (= e!1614472 e!1614471)))

(declare-fun bm!163090 () Bool)

(assert (=> bm!163090 (= call!163095 (isEmpty!17027 (tail!4091 (_2!17332 lt!903904))))))

(assert (= (and d!724218 c!410061) b!2555611))

(assert (= (and d!724218 (not c!410061)) b!2555609))

(assert (= (and d!724218 c!410062) b!2555621))

(assert (= (and d!724218 (not c!410062)) b!2555617))

(assert (= (and b!2555617 c!410063) b!2555613))

(assert (= (and b!2555617 (not c!410063)) b!2555622))

(assert (= (and b!2555622 (not res!1076341)) b!2555620))

(assert (= (and b!2555620 res!1076345) b!2555612))

(assert (= (and b!2555612 res!1076346) b!2555615))

(assert (= (and b!2555615 res!1076340) b!2555618))

(assert (= (and b!2555620 (not res!1076344)) b!2555610))

(assert (= (and b!2555610 res!1076343) b!2555614))

(assert (= (and b!2555614 (not res!1076342)) b!2555616))

(assert (= (and b!2555616 (not res!1076347)) b!2555619))

(assert (= (or b!2555621 b!2555612 b!2555614) bm!163090))

(assert (=> bm!163090 m!2896431))

(assert (=> bm!163090 m!2896433))

(assert (=> b!2555615 m!2896431))

(declare-fun m!2897347 () Bool)

(assert (=> b!2555615 m!2897347))

(assert (=> b!2555615 m!2897347))

(declare-fun m!2897349 () Bool)

(assert (=> b!2555615 m!2897349))

(assert (=> b!2555609 m!2896431))

(declare-fun m!2897351 () Bool)

(assert (=> b!2555609 m!2897351))

(assert (=> b!2555609 m!2896437))

(assert (=> b!2555609 m!2897351))

(declare-fun m!2897353 () Bool)

(assert (=> b!2555609 m!2897353))

(assert (=> b!2555609 m!2896431))

(assert (=> b!2555609 m!2897347))

(assert (=> b!2555609 m!2897353))

(assert (=> b!2555609 m!2897347))

(declare-fun m!2897355 () Bool)

(assert (=> b!2555609 m!2897355))

(assert (=> b!2555611 m!2896437))

(declare-fun m!2897357 () Bool)

(assert (=> b!2555611 m!2897357))

(assert (=> d!724218 m!2896431))

(assert (=> d!724218 m!2896433))

(assert (=> d!724218 m!2896437))

(declare-fun m!2897359 () Bool)

(assert (=> d!724218 m!2897359))

(assert (=> b!2555618 m!2896431))

(assert (=> b!2555618 m!2897351))

(assert (=> b!2555616 m!2896431))

(assert (=> b!2555616 m!2897347))

(assert (=> b!2555616 m!2897347))

(assert (=> b!2555616 m!2897349))

(assert (=> b!2555619 m!2896431))

(assert (=> b!2555619 m!2897351))

(assert (=> b!2554457 d!724218))

(declare-fun c!410065 () Bool)

(declare-fun bm!163091 () Bool)

(declare-fun call!163096 () Regex!7609)

(declare-fun c!410066 () Bool)

(assert (=> bm!163091 (= call!163096 (derivativeStep!2178 (ite c!410065 (regOne!15731 (regTwo!15730 r!27340)) (ite c!410066 (reg!7938 (regTwo!15730 r!27340)) (regOne!15730 (regTwo!15730 r!27340)))) (head!5816 (_2!17332 lt!903904))))))

(declare-fun b!2555623 () Bool)

(declare-fun e!1614480 () Regex!7609)

(declare-fun call!163097 () Regex!7609)

(assert (=> b!2555623 (= e!1614480 (Union!7609 call!163096 call!163097))))

(declare-fun b!2555624 () Bool)

(declare-fun c!410068 () Bool)

(assert (=> b!2555624 (= c!410068 (nullable!2526 (regOne!15730 (regTwo!15730 r!27340))))))

(declare-fun e!1614478 () Regex!7609)

(declare-fun e!1614479 () Regex!7609)

(assert (=> b!2555624 (= e!1614478 e!1614479)))

(declare-fun b!2555625 () Bool)

(declare-fun call!163098 () Regex!7609)

(assert (=> b!2555625 (= e!1614479 (Union!7609 (Concat!12305 call!163098 (regTwo!15730 (regTwo!15730 r!27340))) EmptyLang!7609))))

(declare-fun d!724220 () Bool)

(declare-fun lt!904069 () Regex!7609)

(assert (=> d!724220 (validRegex!3235 lt!904069)))

(declare-fun e!1614477 () Regex!7609)

(assert (=> d!724220 (= lt!904069 e!1614477)))

(declare-fun c!410064 () Bool)

(assert (=> d!724220 (= c!410064 (or ((_ is EmptyExpr!7609) (regTwo!15730 r!27340)) ((_ is EmptyLang!7609) (regTwo!15730 r!27340))))))

(assert (=> d!724220 (validRegex!3235 (regTwo!15730 r!27340))))

(assert (=> d!724220 (= (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 (_2!17332 lt!903904))) lt!904069)))

(declare-fun b!2555626 () Bool)

(declare-fun e!1614476 () Regex!7609)

(assert (=> b!2555626 (= e!1614477 e!1614476)))

(declare-fun c!410067 () Bool)

(assert (=> b!2555626 (= c!410067 ((_ is ElementMatch!7609) (regTwo!15730 r!27340)))))

(declare-fun b!2555627 () Bool)

(assert (=> b!2555627 (= e!1614477 EmptyLang!7609)))

(declare-fun bm!163092 () Bool)

(assert (=> bm!163092 (= call!163097 (derivativeStep!2178 (ite c!410065 (regTwo!15731 (regTwo!15730 r!27340)) (regTwo!15730 (regTwo!15730 r!27340))) (head!5816 (_2!17332 lt!903904))))))

(declare-fun bm!163093 () Bool)

(declare-fun call!163099 () Regex!7609)

(assert (=> bm!163093 (= call!163098 call!163099)))

(declare-fun b!2555628 () Bool)

(assert (=> b!2555628 (= e!1614476 (ite (= (head!5816 (_2!17332 lt!903904)) (c!409621 (regTwo!15730 r!27340))) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555629 () Bool)

(assert (=> b!2555629 (= e!1614478 (Concat!12305 call!163099 (regTwo!15730 r!27340)))))

(declare-fun b!2555630 () Bool)

(assert (=> b!2555630 (= c!410065 ((_ is Union!7609) (regTwo!15730 r!27340)))))

(assert (=> b!2555630 (= e!1614476 e!1614480)))

(declare-fun b!2555631 () Bool)

(assert (=> b!2555631 (= e!1614480 e!1614478)))

(assert (=> b!2555631 (= c!410066 ((_ is Star!7609) (regTwo!15730 r!27340)))))

(declare-fun bm!163094 () Bool)

(assert (=> bm!163094 (= call!163099 call!163096)))

(declare-fun b!2555632 () Bool)

(assert (=> b!2555632 (= e!1614479 (Union!7609 (Concat!12305 call!163098 (regTwo!15730 (regTwo!15730 r!27340))) call!163097))))

(assert (= (and d!724220 c!410064) b!2555627))

(assert (= (and d!724220 (not c!410064)) b!2555626))

(assert (= (and b!2555626 c!410067) b!2555628))

(assert (= (and b!2555626 (not c!410067)) b!2555630))

(assert (= (and b!2555630 c!410065) b!2555623))

(assert (= (and b!2555630 (not c!410065)) b!2555631))

(assert (= (and b!2555631 c!410066) b!2555629))

(assert (= (and b!2555631 (not c!410066)) b!2555624))

(assert (= (and b!2555624 c!410068) b!2555632))

(assert (= (and b!2555624 (not c!410068)) b!2555625))

(assert (= (or b!2555632 b!2555625) bm!163093))

(assert (= (or b!2555629 bm!163093) bm!163094))

(assert (= (or b!2555623 b!2555632) bm!163092))

(assert (= (or b!2555623 bm!163094) bm!163091))

(assert (=> bm!163091 m!2896435))

(declare-fun m!2897361 () Bool)

(assert (=> bm!163091 m!2897361))

(assert (=> b!2555624 m!2896235))

(declare-fun m!2897363 () Bool)

(assert (=> d!724220 m!2897363))

(assert (=> d!724220 m!2896241))

(assert (=> bm!163092 m!2896435))

(declare-fun m!2897365 () Bool)

(assert (=> bm!163092 m!2897365))

(assert (=> b!2554457 d!724220))

(assert (=> b!2554457 d!724122))

(assert (=> b!2554457 d!723980))

(assert (=> b!2554046 d!724074))

(assert (=> b!2554046 d!724076))

(declare-fun c!410071 () Bool)

(declare-fun call!163100 () Regex!7609)

(declare-fun c!410070 () Bool)

(declare-fun bm!163095 () Bool)

(assert (=> bm!163095 (= call!163100 (derivativeStep!2178 (ite c!410070 (regOne!15731 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340)))) (ite c!410071 (reg!7938 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340)))) (regOne!15730 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340)))))) c!14016))))

(declare-fun b!2555633 () Bool)

(declare-fun e!1614485 () Regex!7609)

(declare-fun call!163101 () Regex!7609)

(assert (=> b!2555633 (= e!1614485 (Union!7609 call!163100 call!163101))))

(declare-fun b!2555634 () Bool)

(declare-fun c!410073 () Bool)

(assert (=> b!2555634 (= c!410073 (nullable!2526 (regOne!15730 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340))))))))

(declare-fun e!1614483 () Regex!7609)

(declare-fun e!1614484 () Regex!7609)

(assert (=> b!2555634 (= e!1614483 e!1614484)))

(declare-fun call!163102 () Regex!7609)

(declare-fun b!2555635 () Bool)

(assert (=> b!2555635 (= e!1614484 (Union!7609 (Concat!12305 call!163102 (regTwo!15730 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340))))) EmptyLang!7609))))

(declare-fun d!724222 () Bool)

(declare-fun lt!904070 () Regex!7609)

(assert (=> d!724222 (validRegex!3235 lt!904070)))

(declare-fun e!1614482 () Regex!7609)

(assert (=> d!724222 (= lt!904070 e!1614482)))

(declare-fun c!410069 () Bool)

(assert (=> d!724222 (= c!410069 (or ((_ is EmptyExpr!7609) (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340)))) ((_ is EmptyLang!7609) (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340))))))))

(assert (=> d!724222 (validRegex!3235 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340))))))

(assert (=> d!724222 (= (derivativeStep!2178 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340))) c!14016) lt!904070)))

(declare-fun b!2555636 () Bool)

(declare-fun e!1614481 () Regex!7609)

(assert (=> b!2555636 (= e!1614482 e!1614481)))

(declare-fun c!410072 () Bool)

(assert (=> b!2555636 (= c!410072 ((_ is ElementMatch!7609) (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340)))))))

(declare-fun b!2555637 () Bool)

(assert (=> b!2555637 (= e!1614482 EmptyLang!7609)))

(declare-fun bm!163096 () Bool)

(assert (=> bm!163096 (= call!163101 (derivativeStep!2178 (ite c!410070 (regTwo!15731 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340)))) (regTwo!15730 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340))))) c!14016))))

(declare-fun bm!163097 () Bool)

(declare-fun call!163103 () Regex!7609)

(assert (=> bm!163097 (= call!163102 call!163103)))

(declare-fun b!2555638 () Bool)

(assert (=> b!2555638 (= e!1614481 (ite (= c!14016 (c!409621 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340))))) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555639 () Bool)

(assert (=> b!2555639 (= e!1614483 (Concat!12305 call!163103 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340)))))))

(declare-fun b!2555640 () Bool)

(assert (=> b!2555640 (= c!410070 ((_ is Union!7609) (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340)))))))

(assert (=> b!2555640 (= e!1614481 e!1614485)))

(declare-fun b!2555641 () Bool)

(assert (=> b!2555641 (= e!1614485 e!1614483)))

(assert (=> b!2555641 (= c!410071 ((_ is Star!7609) (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340)))))))

(declare-fun bm!163098 () Bool)

(assert (=> bm!163098 (= call!163103 call!163100)))

(declare-fun b!2555642 () Bool)

(assert (=> b!2555642 (= e!1614484 (Union!7609 (Concat!12305 call!163102 (regTwo!15730 (ite c!409761 (regOne!15731 r!27340) (ite c!409762 (reg!7938 r!27340) (regOne!15730 r!27340))))) call!163101))))

(assert (= (and d!724222 c!410069) b!2555637))

(assert (= (and d!724222 (not c!410069)) b!2555636))

(assert (= (and b!2555636 c!410072) b!2555638))

(assert (= (and b!2555636 (not c!410072)) b!2555640))

(assert (= (and b!2555640 c!410070) b!2555633))

(assert (= (and b!2555640 (not c!410070)) b!2555641))

(assert (= (and b!2555641 c!410071) b!2555639))

(assert (= (and b!2555641 (not c!410071)) b!2555634))

(assert (= (and b!2555634 c!410073) b!2555642))

(assert (= (and b!2555634 (not c!410073)) b!2555635))

(assert (= (or b!2555642 b!2555635) bm!163097))

(assert (= (or b!2555639 bm!163097) bm!163098))

(assert (= (or b!2555633 b!2555642) bm!163096))

(assert (= (or b!2555633 bm!163098) bm!163095))

(declare-fun m!2897367 () Bool)

(assert (=> bm!163095 m!2897367))

(declare-fun m!2897369 () Bool)

(assert (=> b!2555634 m!2897369))

(declare-fun m!2897371 () Bool)

(assert (=> d!724222 m!2897371))

(declare-fun m!2897373 () Bool)

(assert (=> d!724222 m!2897373))

(declare-fun m!2897375 () Bool)

(assert (=> bm!163096 m!2897375))

(assert (=> bm!162839 d!724222))

(assert (=> d!723842 d!724168))

(assert (=> d!723842 d!723972))

(declare-fun d!724224 () Bool)

(assert (not d!724224))

(assert (=> b!2554002 d!724224))

(declare-fun d!724226 () Bool)

(assert (not d!724226))

(assert (=> b!2554002 d!724226))

(assert (=> b!2554002 d!724012))

(assert (=> b!2554002 d!724024))

(declare-fun b!2555643 () Bool)

(declare-fun e!1614490 () Bool)

(assert (=> b!2555643 (= e!1614490 (matchR!3554 (derivativeStep!2178 (derivativeStep!2178 lt!903906 (head!5816 tl!4068)) (head!5816 (tail!4091 tl!4068))) (tail!4091 (tail!4091 tl!4068))))))

(declare-fun b!2555644 () Bool)

(declare-fun e!1614488 () Bool)

(declare-fun e!1614486 () Bool)

(assert (=> b!2555644 (= e!1614488 e!1614486)))

(declare-fun res!1076351 () Bool)

(assert (=> b!2555644 (=> (not res!1076351) (not e!1614486))))

(declare-fun lt!904071 () Bool)

(assert (=> b!2555644 (= res!1076351 (not lt!904071))))

(declare-fun b!2555645 () Bool)

(assert (=> b!2555645 (= e!1614490 (nullable!2526 (derivativeStep!2178 lt!903906 (head!5816 tl!4068))))))

(declare-fun b!2555647 () Bool)

(declare-fun e!1614489 () Bool)

(assert (=> b!2555647 (= e!1614489 (not lt!904071))))

(declare-fun b!2555648 () Bool)

(declare-fun e!1614492 () Bool)

(assert (=> b!2555648 (= e!1614486 e!1614492)))

(declare-fun res!1076350 () Bool)

(assert (=> b!2555648 (=> res!1076350 e!1614492)))

(declare-fun call!163104 () Bool)

(assert (=> b!2555648 (= res!1076350 call!163104)))

(declare-fun b!2555649 () Bool)

(declare-fun res!1076348 () Bool)

(declare-fun e!1614487 () Bool)

(assert (=> b!2555649 (=> (not res!1076348) (not e!1614487))))

(assert (=> b!2555649 (= res!1076348 (isEmpty!17027 (tail!4091 (tail!4091 tl!4068))))))

(declare-fun b!2555650 () Bool)

(declare-fun res!1076355 () Bool)

(assert (=> b!2555650 (=> res!1076355 e!1614492)))

(assert (=> b!2555650 (= res!1076355 (not (isEmpty!17027 (tail!4091 (tail!4091 tl!4068)))))))

(declare-fun b!2555651 () Bool)

(declare-fun e!1614491 () Bool)

(assert (=> b!2555651 (= e!1614491 e!1614489)))

(declare-fun c!410076 () Bool)

(assert (=> b!2555651 (= c!410076 ((_ is EmptyLang!7609) (derivativeStep!2178 lt!903906 (head!5816 tl!4068))))))

(declare-fun b!2555652 () Bool)

(assert (=> b!2555652 (= e!1614487 (= (head!5816 (tail!4091 tl!4068)) (c!409621 (derivativeStep!2178 lt!903906 (head!5816 tl!4068)))))))

(declare-fun b!2555653 () Bool)

(assert (=> b!2555653 (= e!1614492 (not (= (head!5816 (tail!4091 tl!4068)) (c!409621 (derivativeStep!2178 lt!903906 (head!5816 tl!4068))))))))

(declare-fun b!2555654 () Bool)

(declare-fun res!1076352 () Bool)

(assert (=> b!2555654 (=> res!1076352 e!1614488)))

(assert (=> b!2555654 (= res!1076352 e!1614487)))

(declare-fun res!1076353 () Bool)

(assert (=> b!2555654 (=> (not res!1076353) (not e!1614487))))

(assert (=> b!2555654 (= res!1076353 lt!904071)))

(declare-fun b!2555655 () Bool)

(assert (=> b!2555655 (= e!1614491 (= lt!904071 call!163104))))

(declare-fun b!2555646 () Bool)

(declare-fun res!1076354 () Bool)

(assert (=> b!2555646 (=> (not res!1076354) (not e!1614487))))

(assert (=> b!2555646 (= res!1076354 (not call!163104))))

(declare-fun d!724228 () Bool)

(assert (=> d!724228 e!1614491))

(declare-fun c!410075 () Bool)

(assert (=> d!724228 (= c!410075 ((_ is EmptyExpr!7609) (derivativeStep!2178 lt!903906 (head!5816 tl!4068))))))

(assert (=> d!724228 (= lt!904071 e!1614490)))

(declare-fun c!410074 () Bool)

(assert (=> d!724228 (= c!410074 (isEmpty!17027 (tail!4091 tl!4068)))))

(assert (=> d!724228 (validRegex!3235 (derivativeStep!2178 lt!903906 (head!5816 tl!4068)))))

(assert (=> d!724228 (= (matchR!3554 (derivativeStep!2178 lt!903906 (head!5816 tl!4068)) (tail!4091 tl!4068)) lt!904071)))

(declare-fun b!2555656 () Bool)

(declare-fun res!1076349 () Bool)

(assert (=> b!2555656 (=> res!1076349 e!1614488)))

(assert (=> b!2555656 (= res!1076349 (not ((_ is ElementMatch!7609) (derivativeStep!2178 lt!903906 (head!5816 tl!4068)))))))

(assert (=> b!2555656 (= e!1614489 e!1614488)))

(declare-fun bm!163099 () Bool)

(assert (=> bm!163099 (= call!163104 (isEmpty!17027 (tail!4091 tl!4068)))))

(assert (= (and d!724228 c!410074) b!2555645))

(assert (= (and d!724228 (not c!410074)) b!2555643))

(assert (= (and d!724228 c!410075) b!2555655))

(assert (= (and d!724228 (not c!410075)) b!2555651))

(assert (= (and b!2555651 c!410076) b!2555647))

(assert (= (and b!2555651 (not c!410076)) b!2555656))

(assert (= (and b!2555656 (not res!1076349)) b!2555654))

(assert (= (and b!2555654 res!1076353) b!2555646))

(assert (= (and b!2555646 res!1076354) b!2555649))

(assert (= (and b!2555649 res!1076348) b!2555652))

(assert (= (and b!2555654 (not res!1076352)) b!2555644))

(assert (= (and b!2555644 res!1076351) b!2555648))

(assert (= (and b!2555648 (not res!1076350)) b!2555650))

(assert (= (and b!2555650 (not res!1076355)) b!2555653))

(assert (= (or b!2555655 b!2555646 b!2555648) bm!163099))

(assert (=> bm!163099 m!2896163))

(assert (=> bm!163099 m!2896165))

(assert (=> b!2555649 m!2896163))

(assert (=> b!2555649 m!2897185))

(assert (=> b!2555649 m!2897185))

(assert (=> b!2555649 m!2897187))

(assert (=> b!2555643 m!2896163))

(assert (=> b!2555643 m!2897189))

(assert (=> b!2555643 m!2896449))

(assert (=> b!2555643 m!2897189))

(declare-fun m!2897377 () Bool)

(assert (=> b!2555643 m!2897377))

(assert (=> b!2555643 m!2896163))

(assert (=> b!2555643 m!2897185))

(assert (=> b!2555643 m!2897377))

(assert (=> b!2555643 m!2897185))

(declare-fun m!2897379 () Bool)

(assert (=> b!2555643 m!2897379))

(assert (=> b!2555645 m!2896449))

(declare-fun m!2897381 () Bool)

(assert (=> b!2555645 m!2897381))

(assert (=> d!724228 m!2896163))

(assert (=> d!724228 m!2896165))

(assert (=> d!724228 m!2896449))

(declare-fun m!2897383 () Bool)

(assert (=> d!724228 m!2897383))

(assert (=> b!2555652 m!2896163))

(assert (=> b!2555652 m!2897189))

(assert (=> b!2555650 m!2896163))

(assert (=> b!2555650 m!2897185))

(assert (=> b!2555650 m!2897185))

(assert (=> b!2555650 m!2897187))

(assert (=> b!2555653 m!2896163))

(assert (=> b!2555653 m!2897189))

(assert (=> b!2554480 d!724228))

(declare-fun c!410078 () Bool)

(declare-fun bm!163100 () Bool)

(declare-fun c!410079 () Bool)

(declare-fun call!163105 () Regex!7609)

(assert (=> bm!163100 (= call!163105 (derivativeStep!2178 (ite c!410078 (regOne!15731 lt!903906) (ite c!410079 (reg!7938 lt!903906) (regOne!15730 lt!903906))) (head!5816 tl!4068)))))

(declare-fun b!2555657 () Bool)

(declare-fun e!1614497 () Regex!7609)

(declare-fun call!163106 () Regex!7609)

(assert (=> b!2555657 (= e!1614497 (Union!7609 call!163105 call!163106))))

(declare-fun b!2555658 () Bool)

(declare-fun c!410081 () Bool)

(assert (=> b!2555658 (= c!410081 (nullable!2526 (regOne!15730 lt!903906)))))

(declare-fun e!1614495 () Regex!7609)

(declare-fun e!1614496 () Regex!7609)

(assert (=> b!2555658 (= e!1614495 e!1614496)))

(declare-fun b!2555659 () Bool)

(declare-fun call!163107 () Regex!7609)

(assert (=> b!2555659 (= e!1614496 (Union!7609 (Concat!12305 call!163107 (regTwo!15730 lt!903906)) EmptyLang!7609))))

(declare-fun d!724230 () Bool)

(declare-fun lt!904072 () Regex!7609)

(assert (=> d!724230 (validRegex!3235 lt!904072)))

(declare-fun e!1614494 () Regex!7609)

(assert (=> d!724230 (= lt!904072 e!1614494)))

(declare-fun c!410077 () Bool)

(assert (=> d!724230 (= c!410077 (or ((_ is EmptyExpr!7609) lt!903906) ((_ is EmptyLang!7609) lt!903906)))))

(assert (=> d!724230 (validRegex!3235 lt!903906)))

(assert (=> d!724230 (= (derivativeStep!2178 lt!903906 (head!5816 tl!4068)) lt!904072)))

(declare-fun b!2555660 () Bool)

(declare-fun e!1614493 () Regex!7609)

(assert (=> b!2555660 (= e!1614494 e!1614493)))

(declare-fun c!410080 () Bool)

(assert (=> b!2555660 (= c!410080 ((_ is ElementMatch!7609) lt!903906))))

(declare-fun b!2555661 () Bool)

(assert (=> b!2555661 (= e!1614494 EmptyLang!7609)))

(declare-fun bm!163101 () Bool)

(assert (=> bm!163101 (= call!163106 (derivativeStep!2178 (ite c!410078 (regTwo!15731 lt!903906) (regTwo!15730 lt!903906)) (head!5816 tl!4068)))))

(declare-fun bm!163102 () Bool)

(declare-fun call!163108 () Regex!7609)

(assert (=> bm!163102 (= call!163107 call!163108)))

(declare-fun b!2555662 () Bool)

(assert (=> b!2555662 (= e!1614493 (ite (= (head!5816 tl!4068) (c!409621 lt!903906)) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555663 () Bool)

(assert (=> b!2555663 (= e!1614495 (Concat!12305 call!163108 lt!903906))))

(declare-fun b!2555664 () Bool)

(assert (=> b!2555664 (= c!410078 ((_ is Union!7609) lt!903906))))

(assert (=> b!2555664 (= e!1614493 e!1614497)))

(declare-fun b!2555665 () Bool)

(assert (=> b!2555665 (= e!1614497 e!1614495)))

(assert (=> b!2555665 (= c!410079 ((_ is Star!7609) lt!903906))))

(declare-fun bm!163103 () Bool)

(assert (=> bm!163103 (= call!163108 call!163105)))

(declare-fun b!2555666 () Bool)

(assert (=> b!2555666 (= e!1614496 (Union!7609 (Concat!12305 call!163107 (regTwo!15730 lt!903906)) call!163106))))

(assert (= (and d!724230 c!410077) b!2555661))

(assert (= (and d!724230 (not c!410077)) b!2555660))

(assert (= (and b!2555660 c!410080) b!2555662))

(assert (= (and b!2555660 (not c!410080)) b!2555664))

(assert (= (and b!2555664 c!410078) b!2555657))

(assert (= (and b!2555664 (not c!410078)) b!2555665))

(assert (= (and b!2555665 c!410079) b!2555663))

(assert (= (and b!2555665 (not c!410079)) b!2555658))

(assert (= (and b!2555658 c!410081) b!2555666))

(assert (= (and b!2555658 (not c!410081)) b!2555659))

(assert (= (or b!2555666 b!2555659) bm!163102))

(assert (= (or b!2555663 bm!163102) bm!163103))

(assert (= (or b!2555657 b!2555666) bm!163101))

(assert (= (or b!2555657 bm!163103) bm!163100))

(assert (=> bm!163100 m!2896167))

(declare-fun m!2897385 () Bool)

(assert (=> bm!163100 m!2897385))

(declare-fun m!2897387 () Bool)

(assert (=> b!2555658 m!2897387))

(declare-fun m!2897389 () Bool)

(assert (=> d!724230 m!2897389))

(assert (=> d!724230 m!2896333))

(assert (=> bm!163101 m!2896167))

(declare-fun m!2897391 () Bool)

(assert (=> bm!163101 m!2897391))

(assert (=> b!2554480 d!724230))

(assert (=> b!2554480 d!723966))

(assert (=> b!2554480 d!724010))

(declare-fun d!724232 () Bool)

(assert (=> d!724232 (= (nullable!2526 (derivative!304 lt!903902 tl!4068)) (nullableFct!751 (derivative!304 lt!903902 tl!4068)))))

(declare-fun bs!469708 () Bool)

(assert (= bs!469708 d!724232))

(assert (=> bs!469708 m!2896011))

(declare-fun m!2897393 () Bool)

(assert (=> bs!469708 m!2897393))

(assert (=> b!2554065 d!724232))

(assert (=> b!2554086 d!724006))

(assert (=> b!2554086 d!724010))

(declare-fun bm!163104 () Bool)

(declare-fun c!410083 () Bool)

(declare-fun c!410084 () Bool)

(declare-fun call!163109 () Regex!7609)

(assert (=> bm!163104 (= call!163109 (derivativeStep!2178 (ite c!410083 (regOne!15731 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340))))) (ite c!410084 (reg!7938 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340))))) (regOne!15730 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340))))))) c!14016))))

(declare-fun b!2555667 () Bool)

(declare-fun e!1614502 () Regex!7609)

(declare-fun call!163110 () Regex!7609)

(assert (=> b!2555667 (= e!1614502 (Union!7609 call!163109 call!163110))))

(declare-fun c!410086 () Bool)

(declare-fun b!2555668 () Bool)

(assert (=> b!2555668 (= c!410086 (nullable!2526 (regOne!15730 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))))))

(declare-fun e!1614500 () Regex!7609)

(declare-fun e!1614501 () Regex!7609)

(assert (=> b!2555668 (= e!1614500 e!1614501)))

(declare-fun b!2555669 () Bool)

(declare-fun call!163111 () Regex!7609)

(assert (=> b!2555669 (= e!1614501 (Union!7609 (Concat!12305 call!163111 (regTwo!15730 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))) EmptyLang!7609))))

(declare-fun d!724234 () Bool)

(declare-fun lt!904073 () Regex!7609)

(assert (=> d!724234 (validRegex!3235 lt!904073)))

(declare-fun e!1614499 () Regex!7609)

(assert (=> d!724234 (= lt!904073 e!1614499)))

(declare-fun c!410082 () Bool)

(assert (=> d!724234 (= c!410082 (or ((_ is EmptyExpr!7609) (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340))))) ((_ is EmptyLang!7609) (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))))))

(assert (=> d!724234 (validRegex!3235 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))))

(assert (=> d!724234 (= (derivativeStep!2178 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))) c!14016) lt!904073)))

(declare-fun b!2555670 () Bool)

(declare-fun e!1614498 () Regex!7609)

(assert (=> b!2555670 (= e!1614499 e!1614498)))

(declare-fun c!410085 () Bool)

(assert (=> b!2555670 (= c!410085 ((_ is ElementMatch!7609) (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340))))))))

(declare-fun b!2555671 () Bool)

(assert (=> b!2555671 (= e!1614499 EmptyLang!7609)))

(declare-fun bm!163105 () Bool)

(assert (=> bm!163105 (= call!163110 (derivativeStep!2178 (ite c!410083 (regTwo!15731 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340))))) (regTwo!15730 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))) c!14016))))

(declare-fun bm!163106 () Bool)

(declare-fun call!163112 () Regex!7609)

(assert (=> bm!163106 (= call!163111 call!163112)))

(declare-fun b!2555672 () Bool)

(assert (=> b!2555672 (= e!1614498 (ite (= c!14016 (c!409621 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555673 () Bool)

(assert (=> b!2555673 (= e!1614500 (Concat!12305 call!163112 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340))))))))

(declare-fun b!2555674 () Bool)

(assert (=> b!2555674 (= c!410083 ((_ is Union!7609) (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340))))))))

(assert (=> b!2555674 (= e!1614498 e!1614502)))

(declare-fun b!2555675 () Bool)

(assert (=> b!2555675 (= e!1614502 e!1614500)))

(assert (=> b!2555675 (= c!410084 ((_ is Star!7609) (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340))))))))

(declare-fun bm!163107 () Bool)

(assert (=> bm!163107 (= call!163112 call!163109)))

(declare-fun b!2555676 () Bool)

(assert (=> b!2555676 (= e!1614501 (Union!7609 (Concat!12305 call!163111 (regTwo!15730 (ite c!409712 (regOne!15731 (regOne!15730 r!27340)) (ite c!409713 (reg!7938 (regOne!15730 r!27340)) (regOne!15730 (regOne!15730 r!27340)))))) call!163110))))

(assert (= (and d!724234 c!410082) b!2555671))

(assert (= (and d!724234 (not c!410082)) b!2555670))

(assert (= (and b!2555670 c!410085) b!2555672))

(assert (= (and b!2555670 (not c!410085)) b!2555674))

(assert (= (and b!2555674 c!410083) b!2555667))

(assert (= (and b!2555674 (not c!410083)) b!2555675))

(assert (= (and b!2555675 c!410084) b!2555673))

(assert (= (and b!2555675 (not c!410084)) b!2555668))

(assert (= (and b!2555668 c!410086) b!2555676))

(assert (= (and b!2555668 (not c!410086)) b!2555669))

(assert (= (or b!2555676 b!2555669) bm!163106))

(assert (= (or b!2555673 bm!163106) bm!163107))

(assert (= (or b!2555667 b!2555676) bm!163105))

(assert (= (or b!2555667 bm!163107) bm!163104))

(declare-fun m!2897395 () Bool)

(assert (=> bm!163104 m!2897395))

(declare-fun m!2897397 () Bool)

(assert (=> b!2555668 m!2897397))

(declare-fun m!2897399 () Bool)

(assert (=> d!724234 m!2897399))

(declare-fun m!2897401 () Bool)

(assert (=> d!724234 m!2897401))

(declare-fun m!2897403 () Bool)

(assert (=> bm!163105 m!2897403))

(assert (=> bm!162817 d!724234))

(assert (=> d!723846 d!723976))

(assert (=> d!723846 d!724018))

(declare-fun d!724236 () Bool)

(assert (=> d!724236 (= (isDefined!4732 (findConcatSeparation!932 lt!903911 (regTwo!15730 r!27340) Nil!29574 tl!4068 tl!4068)) (not (isEmpty!17028 (findConcatSeparation!932 lt!903911 (regTwo!15730 r!27340) Nil!29574 tl!4068 tl!4068))))))

(declare-fun bs!469709 () Bool)

(assert (= bs!469709 d!724236))

(assert (=> bs!469709 m!2896037))

(declare-fun m!2897405 () Bool)

(assert (=> bs!469709 m!2897405))

(assert (=> d!723832 d!724236))

(assert (=> d!723832 d!723828))

(declare-fun d!724238 () Bool)

(assert (=> d!724238 (isDefined!4732 (findConcatSeparation!932 lt!903911 (regTwo!15730 r!27340) Nil!29574 tl!4068 tl!4068))))

(assert (=> d!724238 true))

(declare-fun _$122!331 () Unit!43403)

(assert (=> d!724238 (= (choose!15085 lt!903911 (regTwo!15730 r!27340) tl!4068) _$122!331)))

(declare-fun bs!469710 () Bool)

(assert (= bs!469710 d!724238))

(assert (=> bs!469710 m!2896037))

(assert (=> bs!469710 m!2896037))

(assert (=> bs!469710 m!2896407))

(assert (=> d!723832 d!724238))

(assert (=> d!723832 d!724054))

(assert (=> b!2554052 d!724082))

(declare-fun d!724240 () Bool)

(assert (=> d!724240 (= (nullable!2526 (reg!7938 r!27340)) (nullableFct!751 (reg!7938 r!27340)))))

(declare-fun bs!469711 () Bool)

(assert (= bs!469711 d!724240))

(declare-fun m!2897407 () Bool)

(assert (=> bs!469711 m!2897407))

(assert (=> b!2554473 d!724240))

(declare-fun b!2555677 () Bool)

(declare-fun e!1614507 () Bool)

(assert (=> b!2555677 (= e!1614507 (matchR!3554 (derivativeStep!2178 lt!903911 (head!5816 (_1!17332 (get!9293 lt!903985)))) (tail!4091 (_1!17332 (get!9293 lt!903985)))))))

(declare-fun b!2555678 () Bool)

(declare-fun e!1614505 () Bool)

(declare-fun e!1614503 () Bool)

(assert (=> b!2555678 (= e!1614505 e!1614503)))

(declare-fun res!1076359 () Bool)

(assert (=> b!2555678 (=> (not res!1076359) (not e!1614503))))

(declare-fun lt!904074 () Bool)

(assert (=> b!2555678 (= res!1076359 (not lt!904074))))

(declare-fun b!2555679 () Bool)

(assert (=> b!2555679 (= e!1614507 (nullable!2526 lt!903911))))

(declare-fun b!2555681 () Bool)

(declare-fun e!1614506 () Bool)

(assert (=> b!2555681 (= e!1614506 (not lt!904074))))

(declare-fun b!2555682 () Bool)

(declare-fun e!1614509 () Bool)

(assert (=> b!2555682 (= e!1614503 e!1614509)))

(declare-fun res!1076358 () Bool)

(assert (=> b!2555682 (=> res!1076358 e!1614509)))

(declare-fun call!163113 () Bool)

(assert (=> b!2555682 (= res!1076358 call!163113)))

(declare-fun b!2555683 () Bool)

(declare-fun res!1076356 () Bool)

(declare-fun e!1614504 () Bool)

(assert (=> b!2555683 (=> (not res!1076356) (not e!1614504))))

(assert (=> b!2555683 (= res!1076356 (isEmpty!17027 (tail!4091 (_1!17332 (get!9293 lt!903985)))))))

(declare-fun b!2555684 () Bool)

(declare-fun res!1076363 () Bool)

(assert (=> b!2555684 (=> res!1076363 e!1614509)))

(assert (=> b!2555684 (= res!1076363 (not (isEmpty!17027 (tail!4091 (_1!17332 (get!9293 lt!903985))))))))

(declare-fun b!2555685 () Bool)

(declare-fun e!1614508 () Bool)

(assert (=> b!2555685 (= e!1614508 e!1614506)))

(declare-fun c!410089 () Bool)

(assert (=> b!2555685 (= c!410089 ((_ is EmptyLang!7609) lt!903911))))

(declare-fun b!2555686 () Bool)

(assert (=> b!2555686 (= e!1614504 (= (head!5816 (_1!17332 (get!9293 lt!903985))) (c!409621 lt!903911)))))

(declare-fun b!2555687 () Bool)

(assert (=> b!2555687 (= e!1614509 (not (= (head!5816 (_1!17332 (get!9293 lt!903985))) (c!409621 lt!903911))))))

(declare-fun b!2555688 () Bool)

(declare-fun res!1076360 () Bool)

(assert (=> b!2555688 (=> res!1076360 e!1614505)))

(assert (=> b!2555688 (= res!1076360 e!1614504)))

(declare-fun res!1076361 () Bool)

(assert (=> b!2555688 (=> (not res!1076361) (not e!1614504))))

(assert (=> b!2555688 (= res!1076361 lt!904074)))

(declare-fun b!2555689 () Bool)

(assert (=> b!2555689 (= e!1614508 (= lt!904074 call!163113))))

(declare-fun b!2555680 () Bool)

(declare-fun res!1076362 () Bool)

(assert (=> b!2555680 (=> (not res!1076362) (not e!1614504))))

(assert (=> b!2555680 (= res!1076362 (not call!163113))))

(declare-fun d!724242 () Bool)

(assert (=> d!724242 e!1614508))

(declare-fun c!410088 () Bool)

(assert (=> d!724242 (= c!410088 ((_ is EmptyExpr!7609) lt!903911))))

(assert (=> d!724242 (= lt!904074 e!1614507)))

(declare-fun c!410087 () Bool)

(assert (=> d!724242 (= c!410087 (isEmpty!17027 (_1!17332 (get!9293 lt!903985))))))

(assert (=> d!724242 (validRegex!3235 lt!903911)))

(assert (=> d!724242 (= (matchR!3554 lt!903911 (_1!17332 (get!9293 lt!903985))) lt!904074)))

(declare-fun b!2555690 () Bool)

(declare-fun res!1076357 () Bool)

(assert (=> b!2555690 (=> res!1076357 e!1614505)))

(assert (=> b!2555690 (= res!1076357 (not ((_ is ElementMatch!7609) lt!903911)))))

(assert (=> b!2555690 (= e!1614506 e!1614505)))

(declare-fun bm!163108 () Bool)

(assert (=> bm!163108 (= call!163113 (isEmpty!17027 (_1!17332 (get!9293 lt!903985))))))

(assert (= (and d!724242 c!410087) b!2555679))

(assert (= (and d!724242 (not c!410087)) b!2555677))

(assert (= (and d!724242 c!410088) b!2555689))

(assert (= (and d!724242 (not c!410088)) b!2555685))

(assert (= (and b!2555685 c!410089) b!2555681))

(assert (= (and b!2555685 (not c!410089)) b!2555690))

(assert (= (and b!2555690 (not res!1076357)) b!2555688))

(assert (= (and b!2555688 res!1076361) b!2555680))

(assert (= (and b!2555680 res!1076362) b!2555683))

(assert (= (and b!2555683 res!1076356) b!2555686))

(assert (= (and b!2555688 (not res!1076360)) b!2555678))

(assert (= (and b!2555678 res!1076359) b!2555682))

(assert (= (and b!2555682 (not res!1076358)) b!2555684))

(assert (= (and b!2555684 (not res!1076363)) b!2555687))

(assert (= (or b!2555689 b!2555680 b!2555682) bm!163108))

(declare-fun m!2897409 () Bool)

(assert (=> bm!163108 m!2897409))

(declare-fun m!2897411 () Bool)

(assert (=> b!2555683 m!2897411))

(assert (=> b!2555683 m!2897411))

(declare-fun m!2897413 () Bool)

(assert (=> b!2555683 m!2897413))

(declare-fun m!2897415 () Bool)

(assert (=> b!2555677 m!2897415))

(assert (=> b!2555677 m!2897415))

(declare-fun m!2897417 () Bool)

(assert (=> b!2555677 m!2897417))

(assert (=> b!2555677 m!2897411))

(assert (=> b!2555677 m!2897417))

(assert (=> b!2555677 m!2897411))

(declare-fun m!2897419 () Bool)

(assert (=> b!2555677 m!2897419))

(assert (=> b!2555679 m!2896467))

(assert (=> d!724242 m!2897409))

(assert (=> d!724242 m!2896099))

(assert (=> b!2555686 m!2897415))

(assert (=> b!2555684 m!2897411))

(assert (=> b!2555684 m!2897411))

(assert (=> b!2555684 m!2897413))

(assert (=> b!2555687 m!2897415))

(assert (=> b!2554425 d!724242))

(assert (=> b!2554425 d!724002))

(assert (=> b!2554069 d!724022))

(assert (=> b!2554069 d!724024))

(assert (=> b!2554073 d!724012))

(declare-fun d!724244 () Bool)

(declare-fun lt!904077 () Int)

(assert (=> d!724244 (>= lt!904077 0)))

(declare-fun e!1614512 () Int)

(assert (=> d!724244 (= lt!904077 e!1614512)))

(declare-fun c!410092 () Bool)

(assert (=> d!724244 (= c!410092 ((_ is Nil!29574) lt!903988))))

(assert (=> d!724244 (= (size!22952 lt!903988) lt!904077)))

(declare-fun b!2555695 () Bool)

(assert (=> b!2555695 (= e!1614512 0)))

(declare-fun b!2555696 () Bool)

(assert (=> b!2555696 (= e!1614512 (+ 1 (size!22952 (t!211373 lt!903988))))))

(assert (= (and d!724244 c!410092) b!2555695))

(assert (= (and d!724244 (not c!410092)) b!2555696))

(declare-fun m!2897421 () Bool)

(assert (=> b!2555696 m!2897421))

(assert (=> b!2554443 d!724244))

(declare-fun d!724246 () Bool)

(declare-fun lt!904078 () Int)

(assert (=> d!724246 (>= lt!904078 0)))

(declare-fun e!1614513 () Int)

(assert (=> d!724246 (= lt!904078 e!1614513)))

(declare-fun c!410093 () Bool)

(assert (=> d!724246 (= c!410093 ((_ is Nil!29574) (_1!17332 lt!903904)))))

(assert (=> d!724246 (= (size!22952 (_1!17332 lt!903904)) lt!904078)))

(declare-fun b!2555697 () Bool)

(assert (=> b!2555697 (= e!1614513 0)))

(declare-fun b!2555698 () Bool)

(assert (=> b!2555698 (= e!1614513 (+ 1 (size!22952 (t!211373 (_1!17332 lt!903904)))))))

(assert (= (and d!724246 c!410093) b!2555697))

(assert (= (and d!724246 (not c!410093)) b!2555698))

(assert (=> b!2555698 m!2896761))

(assert (=> b!2554443 d!724246))

(declare-fun d!724248 () Bool)

(declare-fun lt!904079 () Int)

(assert (=> d!724248 (>= lt!904079 0)))

(declare-fun e!1614514 () Int)

(assert (=> d!724248 (= lt!904079 e!1614514)))

(declare-fun c!410094 () Bool)

(assert (=> d!724248 (= c!410094 ((_ is Nil!29574) (_2!17332 lt!903904)))))

(assert (=> d!724248 (= (size!22952 (_2!17332 lt!903904)) lt!904079)))

(declare-fun b!2555699 () Bool)

(assert (=> b!2555699 (= e!1614514 0)))

(declare-fun b!2555700 () Bool)

(assert (=> b!2555700 (= e!1614514 (+ 1 (size!22952 (t!211373 (_2!17332 lt!903904)))))))

(assert (= (and d!724248 c!410094) b!2555699))

(assert (= (and d!724248 (not c!410094)) b!2555700))

(declare-fun m!2897423 () Bool)

(assert (=> b!2555700 m!2897423))

(assert (=> b!2554443 d!724248))

(assert (=> b!2554501 d!723984))

(assert (=> b!2554501 d!723986))

(declare-fun b!2555701 () Bool)

(declare-fun e!1614519 () Bool)

(assert (=> b!2555701 (= e!1614519 (matchR!3554 (derivativeStep!2178 (derivativeStep!2178 lt!903902 (head!5816 tl!4068)) (head!5816 (tail!4091 tl!4068))) (tail!4091 (tail!4091 tl!4068))))))

(declare-fun b!2555702 () Bool)

(declare-fun e!1614517 () Bool)

(declare-fun e!1614515 () Bool)

(assert (=> b!2555702 (= e!1614517 e!1614515)))

(declare-fun res!1076367 () Bool)

(assert (=> b!2555702 (=> (not res!1076367) (not e!1614515))))

(declare-fun lt!904080 () Bool)

(assert (=> b!2555702 (= res!1076367 (not lt!904080))))

(declare-fun b!2555703 () Bool)

(assert (=> b!2555703 (= e!1614519 (nullable!2526 (derivativeStep!2178 lt!903902 (head!5816 tl!4068))))))

(declare-fun b!2555705 () Bool)

(declare-fun e!1614518 () Bool)

(assert (=> b!2555705 (= e!1614518 (not lt!904080))))

(declare-fun b!2555706 () Bool)

(declare-fun e!1614521 () Bool)

(assert (=> b!2555706 (= e!1614515 e!1614521)))

(declare-fun res!1076366 () Bool)

(assert (=> b!2555706 (=> res!1076366 e!1614521)))

(declare-fun call!163114 () Bool)

(assert (=> b!2555706 (= res!1076366 call!163114)))

(declare-fun b!2555707 () Bool)

(declare-fun res!1076364 () Bool)

(declare-fun e!1614516 () Bool)

(assert (=> b!2555707 (=> (not res!1076364) (not e!1614516))))

(assert (=> b!2555707 (= res!1076364 (isEmpty!17027 (tail!4091 (tail!4091 tl!4068))))))

(declare-fun b!2555708 () Bool)

(declare-fun res!1076371 () Bool)

(assert (=> b!2555708 (=> res!1076371 e!1614521)))

(assert (=> b!2555708 (= res!1076371 (not (isEmpty!17027 (tail!4091 (tail!4091 tl!4068)))))))

(declare-fun b!2555709 () Bool)

(declare-fun e!1614520 () Bool)

(assert (=> b!2555709 (= e!1614520 e!1614518)))

(declare-fun c!410097 () Bool)

(assert (=> b!2555709 (= c!410097 ((_ is EmptyLang!7609) (derivativeStep!2178 lt!903902 (head!5816 tl!4068))))))

(declare-fun b!2555710 () Bool)

(assert (=> b!2555710 (= e!1614516 (= (head!5816 (tail!4091 tl!4068)) (c!409621 (derivativeStep!2178 lt!903902 (head!5816 tl!4068)))))))

(declare-fun b!2555711 () Bool)

(assert (=> b!2555711 (= e!1614521 (not (= (head!5816 (tail!4091 tl!4068)) (c!409621 (derivativeStep!2178 lt!903902 (head!5816 tl!4068))))))))

(declare-fun b!2555712 () Bool)

(declare-fun res!1076368 () Bool)

(assert (=> b!2555712 (=> res!1076368 e!1614517)))

(assert (=> b!2555712 (= res!1076368 e!1614516)))

(declare-fun res!1076369 () Bool)

(assert (=> b!2555712 (=> (not res!1076369) (not e!1614516))))

(assert (=> b!2555712 (= res!1076369 lt!904080)))

(declare-fun b!2555713 () Bool)

(assert (=> b!2555713 (= e!1614520 (= lt!904080 call!163114))))

(declare-fun b!2555704 () Bool)

(declare-fun res!1076370 () Bool)

(assert (=> b!2555704 (=> (not res!1076370) (not e!1614516))))

(assert (=> b!2555704 (= res!1076370 (not call!163114))))

(declare-fun d!724250 () Bool)

(assert (=> d!724250 e!1614520))

(declare-fun c!410096 () Bool)

(assert (=> d!724250 (= c!410096 ((_ is EmptyExpr!7609) (derivativeStep!2178 lt!903902 (head!5816 tl!4068))))))

(assert (=> d!724250 (= lt!904080 e!1614519)))

(declare-fun c!410095 () Bool)

(assert (=> d!724250 (= c!410095 (isEmpty!17027 (tail!4091 tl!4068)))))

(assert (=> d!724250 (validRegex!3235 (derivativeStep!2178 lt!903902 (head!5816 tl!4068)))))

(assert (=> d!724250 (= (matchR!3554 (derivativeStep!2178 lt!903902 (head!5816 tl!4068)) (tail!4091 tl!4068)) lt!904080)))

(declare-fun b!2555714 () Bool)

(declare-fun res!1076365 () Bool)

(assert (=> b!2555714 (=> res!1076365 e!1614517)))

(assert (=> b!2555714 (= res!1076365 (not ((_ is ElementMatch!7609) (derivativeStep!2178 lt!903902 (head!5816 tl!4068)))))))

(assert (=> b!2555714 (= e!1614518 e!1614517)))

(declare-fun bm!163109 () Bool)

(assert (=> bm!163109 (= call!163114 (isEmpty!17027 (tail!4091 tl!4068)))))

(assert (= (and d!724250 c!410095) b!2555703))

(assert (= (and d!724250 (not c!410095)) b!2555701))

(assert (= (and d!724250 c!410096) b!2555713))

(assert (= (and d!724250 (not c!410096)) b!2555709))

(assert (= (and b!2555709 c!410097) b!2555705))

(assert (= (and b!2555709 (not c!410097)) b!2555714))

(assert (= (and b!2555714 (not res!1076365)) b!2555712))

(assert (= (and b!2555712 res!1076369) b!2555704))

(assert (= (and b!2555704 res!1076370) b!2555707))

(assert (= (and b!2555707 res!1076364) b!2555710))

(assert (= (and b!2555712 (not res!1076368)) b!2555702))

(assert (= (and b!2555702 res!1076367) b!2555706))

(assert (= (and b!2555706 (not res!1076366)) b!2555708))

(assert (= (and b!2555708 (not res!1076371)) b!2555711))

(assert (= (or b!2555713 b!2555704 b!2555706) bm!163109))

(assert (=> bm!163109 m!2896163))

(assert (=> bm!163109 m!2896165))

(assert (=> b!2555707 m!2896163))

(assert (=> b!2555707 m!2897185))

(assert (=> b!2555707 m!2897185))

(assert (=> b!2555707 m!2897187))

(assert (=> b!2555701 m!2896163))

(assert (=> b!2555701 m!2897189))

(assert (=> b!2555701 m!2896269))

(assert (=> b!2555701 m!2897189))

(declare-fun m!2897425 () Bool)

(assert (=> b!2555701 m!2897425))

(assert (=> b!2555701 m!2896163))

(assert (=> b!2555701 m!2897185))

(assert (=> b!2555701 m!2897425))

(assert (=> b!2555701 m!2897185))

(declare-fun m!2897427 () Bool)

(assert (=> b!2555701 m!2897427))

(assert (=> b!2555703 m!2896269))

(declare-fun m!2897429 () Bool)

(assert (=> b!2555703 m!2897429))

(assert (=> d!724250 m!2896163))

(assert (=> d!724250 m!2896165))

(assert (=> d!724250 m!2896269))

(declare-fun m!2897431 () Bool)

(assert (=> d!724250 m!2897431))

(assert (=> b!2555710 m!2896163))

(assert (=> b!2555710 m!2897189))

(assert (=> b!2555708 m!2896163))

(assert (=> b!2555708 m!2897185))

(assert (=> b!2555708 m!2897185))

(assert (=> b!2555708 m!2897187))

(assert (=> b!2555711 m!2896163))

(assert (=> b!2555711 m!2897189))

(assert (=> b!2554230 d!724250))

(declare-fun c!410100 () Bool)

(declare-fun c!410099 () Bool)

(declare-fun call!163115 () Regex!7609)

(declare-fun bm!163110 () Bool)

(assert (=> bm!163110 (= call!163115 (derivativeStep!2178 (ite c!410099 (regOne!15731 lt!903902) (ite c!410100 (reg!7938 lt!903902) (regOne!15730 lt!903902))) (head!5816 tl!4068)))))

(declare-fun b!2555715 () Bool)

(declare-fun e!1614526 () Regex!7609)

(declare-fun call!163116 () Regex!7609)

(assert (=> b!2555715 (= e!1614526 (Union!7609 call!163115 call!163116))))

(declare-fun b!2555716 () Bool)

(declare-fun c!410102 () Bool)

(assert (=> b!2555716 (= c!410102 (nullable!2526 (regOne!15730 lt!903902)))))

(declare-fun e!1614524 () Regex!7609)

(declare-fun e!1614525 () Regex!7609)

(assert (=> b!2555716 (= e!1614524 e!1614525)))

(declare-fun b!2555717 () Bool)

(declare-fun call!163117 () Regex!7609)

(assert (=> b!2555717 (= e!1614525 (Union!7609 (Concat!12305 call!163117 (regTwo!15730 lt!903902)) EmptyLang!7609))))

(declare-fun d!724252 () Bool)

(declare-fun lt!904081 () Regex!7609)

(assert (=> d!724252 (validRegex!3235 lt!904081)))

(declare-fun e!1614523 () Regex!7609)

(assert (=> d!724252 (= lt!904081 e!1614523)))

(declare-fun c!410098 () Bool)

(assert (=> d!724252 (= c!410098 (or ((_ is EmptyExpr!7609) lt!903902) ((_ is EmptyLang!7609) lt!903902)))))

(assert (=> d!724252 (validRegex!3235 lt!903902)))

(assert (=> d!724252 (= (derivativeStep!2178 lt!903902 (head!5816 tl!4068)) lt!904081)))

(declare-fun b!2555718 () Bool)

(declare-fun e!1614522 () Regex!7609)

(assert (=> b!2555718 (= e!1614523 e!1614522)))

(declare-fun c!410101 () Bool)

(assert (=> b!2555718 (= c!410101 ((_ is ElementMatch!7609) lt!903902))))

(declare-fun b!2555719 () Bool)

(assert (=> b!2555719 (= e!1614523 EmptyLang!7609)))

(declare-fun bm!163111 () Bool)

(assert (=> bm!163111 (= call!163116 (derivativeStep!2178 (ite c!410099 (regTwo!15731 lt!903902) (regTwo!15730 lt!903902)) (head!5816 tl!4068)))))

(declare-fun bm!163112 () Bool)

(declare-fun call!163118 () Regex!7609)

(assert (=> bm!163112 (= call!163117 call!163118)))

(declare-fun b!2555720 () Bool)

(assert (=> b!2555720 (= e!1614522 (ite (= (head!5816 tl!4068) (c!409621 lt!903902)) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555721 () Bool)

(assert (=> b!2555721 (= e!1614524 (Concat!12305 call!163118 lt!903902))))

(declare-fun b!2555722 () Bool)

(assert (=> b!2555722 (= c!410099 ((_ is Union!7609) lt!903902))))

(assert (=> b!2555722 (= e!1614522 e!1614526)))

(declare-fun b!2555723 () Bool)

(assert (=> b!2555723 (= e!1614526 e!1614524)))

(assert (=> b!2555723 (= c!410100 ((_ is Star!7609) lt!903902))))

(declare-fun bm!163113 () Bool)

(assert (=> bm!163113 (= call!163118 call!163115)))

(declare-fun b!2555724 () Bool)

(assert (=> b!2555724 (= e!1614525 (Union!7609 (Concat!12305 call!163117 (regTwo!15730 lt!903902)) call!163116))))

(assert (= (and d!724252 c!410098) b!2555719))

(assert (= (and d!724252 (not c!410098)) b!2555718))

(assert (= (and b!2555718 c!410101) b!2555720))

(assert (= (and b!2555718 (not c!410101)) b!2555722))

(assert (= (and b!2555722 c!410099) b!2555715))

(assert (= (and b!2555722 (not c!410099)) b!2555723))

(assert (= (and b!2555723 c!410100) b!2555721))

(assert (= (and b!2555723 (not c!410100)) b!2555716))

(assert (= (and b!2555716 c!410102) b!2555724))

(assert (= (and b!2555716 (not c!410102)) b!2555717))

(assert (= (or b!2555724 b!2555717) bm!163112))

(assert (= (or b!2555721 bm!163112) bm!163113))

(assert (= (or b!2555715 b!2555724) bm!163111))

(assert (= (or b!2555715 bm!163113) bm!163110))

(assert (=> bm!163110 m!2896167))

(declare-fun m!2897433 () Bool)

(assert (=> bm!163110 m!2897433))

(assert (=> b!2555716 m!2897287))

(declare-fun m!2897435 () Bool)

(assert (=> d!724252 m!2897435))

(assert (=> d!724252 m!2896145))

(assert (=> bm!163111 m!2896167))

(declare-fun m!2897437 () Bool)

(assert (=> bm!163111 m!2897437))

(assert (=> b!2554230 d!724252))

(assert (=> b!2554230 d!723966))

(assert (=> b!2554230 d!724010))

(declare-fun b!2555725 () Bool)

(declare-fun e!1614531 () Bool)

(assert (=> b!2555725 (= e!1614531 (matchR!3554 (derivativeStep!2178 (regTwo!15730 r!27340) (head!5816 tl!4068)) (tail!4091 tl!4068)))))

(declare-fun b!2555726 () Bool)

(declare-fun e!1614529 () Bool)

(declare-fun e!1614527 () Bool)

(assert (=> b!2555726 (= e!1614529 e!1614527)))

(declare-fun res!1076375 () Bool)

(assert (=> b!2555726 (=> (not res!1076375) (not e!1614527))))

(declare-fun lt!904082 () Bool)

(assert (=> b!2555726 (= res!1076375 (not lt!904082))))

(declare-fun b!2555727 () Bool)

(assert (=> b!2555727 (= e!1614531 (nullable!2526 (regTwo!15730 r!27340)))))

(declare-fun b!2555729 () Bool)

(declare-fun e!1614530 () Bool)

(assert (=> b!2555729 (= e!1614530 (not lt!904082))))

(declare-fun b!2555730 () Bool)

(declare-fun e!1614533 () Bool)

(assert (=> b!2555730 (= e!1614527 e!1614533)))

(declare-fun res!1076374 () Bool)

(assert (=> b!2555730 (=> res!1076374 e!1614533)))

(declare-fun call!163119 () Bool)

(assert (=> b!2555730 (= res!1076374 call!163119)))

(declare-fun b!2555731 () Bool)

(declare-fun res!1076372 () Bool)

(declare-fun e!1614528 () Bool)

(assert (=> b!2555731 (=> (not res!1076372) (not e!1614528))))

(assert (=> b!2555731 (= res!1076372 (isEmpty!17027 (tail!4091 tl!4068)))))

(declare-fun b!2555732 () Bool)

(declare-fun res!1076379 () Bool)

(assert (=> b!2555732 (=> res!1076379 e!1614533)))

(assert (=> b!2555732 (= res!1076379 (not (isEmpty!17027 (tail!4091 tl!4068))))))

(declare-fun b!2555733 () Bool)

(declare-fun e!1614532 () Bool)

(assert (=> b!2555733 (= e!1614532 e!1614530)))

(declare-fun c!410105 () Bool)

(assert (=> b!2555733 (= c!410105 ((_ is EmptyLang!7609) (regTwo!15730 r!27340)))))

(declare-fun b!2555734 () Bool)

(assert (=> b!2555734 (= e!1614528 (= (head!5816 tl!4068) (c!409621 (regTwo!15730 r!27340))))))

(declare-fun b!2555735 () Bool)

(assert (=> b!2555735 (= e!1614533 (not (= (head!5816 tl!4068) (c!409621 (regTwo!15730 r!27340)))))))

(declare-fun b!2555736 () Bool)

(declare-fun res!1076376 () Bool)

(assert (=> b!2555736 (=> res!1076376 e!1614529)))

(assert (=> b!2555736 (= res!1076376 e!1614528)))

(declare-fun res!1076377 () Bool)

(assert (=> b!2555736 (=> (not res!1076377) (not e!1614528))))

(assert (=> b!2555736 (= res!1076377 lt!904082)))

(declare-fun b!2555737 () Bool)

(assert (=> b!2555737 (= e!1614532 (= lt!904082 call!163119))))

(declare-fun b!2555728 () Bool)

(declare-fun res!1076378 () Bool)

(assert (=> b!2555728 (=> (not res!1076378) (not e!1614528))))

(assert (=> b!2555728 (= res!1076378 (not call!163119))))

(declare-fun d!724254 () Bool)

(assert (=> d!724254 e!1614532))

(declare-fun c!410104 () Bool)

(assert (=> d!724254 (= c!410104 ((_ is EmptyExpr!7609) (regTwo!15730 r!27340)))))

(assert (=> d!724254 (= lt!904082 e!1614531)))

(declare-fun c!410103 () Bool)

(assert (=> d!724254 (= c!410103 (isEmpty!17027 tl!4068))))

(assert (=> d!724254 (validRegex!3235 (regTwo!15730 r!27340))))

(assert (=> d!724254 (= (matchR!3554 (regTwo!15730 r!27340) tl!4068) lt!904082)))

(declare-fun b!2555738 () Bool)

(declare-fun res!1076373 () Bool)

(assert (=> b!2555738 (=> res!1076373 e!1614529)))

(assert (=> b!2555738 (= res!1076373 (not ((_ is ElementMatch!7609) (regTwo!15730 r!27340))))))

(assert (=> b!2555738 (= e!1614530 e!1614529)))

(declare-fun bm!163114 () Bool)

(assert (=> bm!163114 (= call!163119 (isEmpty!17027 tl!4068))))

(assert (= (and d!724254 c!410103) b!2555727))

(assert (= (and d!724254 (not c!410103)) b!2555725))

(assert (= (and d!724254 c!410104) b!2555737))

(assert (= (and d!724254 (not c!410104)) b!2555733))

(assert (= (and b!2555733 c!410105) b!2555729))

(assert (= (and b!2555733 (not c!410105)) b!2555738))

(assert (= (and b!2555738 (not res!1076373)) b!2555736))

(assert (= (and b!2555736 res!1076377) b!2555728))

(assert (= (and b!2555728 res!1076378) b!2555731))

(assert (= (and b!2555731 res!1076372) b!2555734))

(assert (= (and b!2555736 (not res!1076376)) b!2555726))

(assert (= (and b!2555726 res!1076375) b!2555730))

(assert (= (and b!2555730 (not res!1076374)) b!2555732))

(assert (= (and b!2555732 (not res!1076379)) b!2555735))

(assert (= (or b!2555737 b!2555728 b!2555730) bm!163114))

(assert (=> bm!163114 m!2896161))

(assert (=> b!2555731 m!2896163))

(assert (=> b!2555731 m!2896163))

(assert (=> b!2555731 m!2896165))

(assert (=> b!2555725 m!2896167))

(assert (=> b!2555725 m!2896167))

(declare-fun m!2897439 () Bool)

(assert (=> b!2555725 m!2897439))

(assert (=> b!2555725 m!2896163))

(assert (=> b!2555725 m!2897439))

(assert (=> b!2555725 m!2896163))

(declare-fun m!2897441 () Bool)

(assert (=> b!2555725 m!2897441))

(assert (=> b!2555727 m!2896441))

(assert (=> d!724254 m!2896161))

(assert (=> d!724254 m!2896241))

(assert (=> b!2555734 m!2896167))

(assert (=> b!2555732 m!2896163))

(assert (=> b!2555732 m!2896163))

(assert (=> b!2555732 m!2896165))

(assert (=> b!2555735 m!2896167))

(assert (=> b!2554429 d!724254))

(declare-fun d!724256 () Bool)

(assert (=> d!724256 (= (nullable!2526 (reg!7938 (regOne!15730 r!27340))) (nullableFct!751 (reg!7938 (regOne!15730 r!27340))))))

(declare-fun bs!469712 () Bool)

(assert (= bs!469712 d!724256))

(declare-fun m!2897443 () Bool)

(assert (=> bs!469712 m!2897443))

(assert (=> b!2553957 d!724256))

(assert (=> b!2554335 d!723846))

(assert (=> bm!162789 d!724060))

(assert (=> bm!162790 d!724064))

(declare-fun d!724258 () Bool)

(assert (=> d!724258 (= (nullable!2526 lt!903905) (nullableFct!751 lt!903905))))

(declare-fun bs!469713 () Bool)

(assert (= bs!469713 d!724258))

(declare-fun m!2897445 () Bool)

(assert (=> bs!469713 m!2897445))

(assert (=> b!2554081 d!724258))

(declare-fun d!724260 () Bool)

(declare-fun lt!904083 () Regex!7609)

(assert (=> d!724260 (validRegex!3235 lt!904083)))

(declare-fun e!1614534 () Regex!7609)

(assert (=> d!724260 (= lt!904083 e!1614534)))

(declare-fun c!410106 () Bool)

(assert (=> d!724260 (= c!410106 ((_ is Cons!29574) (t!211373 (_1!17332 lt!903904))))))

(assert (=> d!724260 (validRegex!3235 (derivativeStep!2178 lt!903911 (h!34994 (_1!17332 lt!903904))))))

(assert (=> d!724260 (= (derivative!304 (derivativeStep!2178 lt!903911 (h!34994 (_1!17332 lt!903904))) (t!211373 (_1!17332 lt!903904))) lt!904083)))

(declare-fun b!2555739 () Bool)

(assert (=> b!2555739 (= e!1614534 (derivative!304 (derivativeStep!2178 (derivativeStep!2178 lt!903911 (h!34994 (_1!17332 lt!903904))) (h!34994 (t!211373 (_1!17332 lt!903904)))) (t!211373 (t!211373 (_1!17332 lt!903904)))))))

(declare-fun b!2555740 () Bool)

(assert (=> b!2555740 (= e!1614534 (derivativeStep!2178 lt!903911 (h!34994 (_1!17332 lt!903904))))))

(assert (= (and d!724260 c!410106) b!2555739))

(assert (= (and d!724260 (not c!410106)) b!2555740))

(declare-fun m!2897447 () Bool)

(assert (=> d!724260 m!2897447))

(assert (=> d!724260 m!2896101))

(declare-fun m!2897449 () Bool)

(assert (=> d!724260 m!2897449))

(assert (=> b!2555739 m!2896101))

(declare-fun m!2897451 () Bool)

(assert (=> b!2555739 m!2897451))

(assert (=> b!2555739 m!2897451))

(declare-fun m!2897453 () Bool)

(assert (=> b!2555739 m!2897453))

(assert (=> b!2554030 d!724260))

(declare-fun call!163120 () Regex!7609)

(declare-fun c!410109 () Bool)

(declare-fun bm!163115 () Bool)

(declare-fun c!410108 () Bool)

(assert (=> bm!163115 (= call!163120 (derivativeStep!2178 (ite c!410108 (regOne!15731 lt!903911) (ite c!410109 (reg!7938 lt!903911) (regOne!15730 lt!903911))) (h!34994 (_1!17332 lt!903904))))))

(declare-fun b!2555741 () Bool)

(declare-fun e!1614539 () Regex!7609)

(declare-fun call!163121 () Regex!7609)

(assert (=> b!2555741 (= e!1614539 (Union!7609 call!163120 call!163121))))

(declare-fun b!2555742 () Bool)

(declare-fun c!410111 () Bool)

(assert (=> b!2555742 (= c!410111 (nullable!2526 (regOne!15730 lt!903911)))))

(declare-fun e!1614537 () Regex!7609)

(declare-fun e!1614538 () Regex!7609)

(assert (=> b!2555742 (= e!1614537 e!1614538)))

(declare-fun b!2555743 () Bool)

(declare-fun call!163122 () Regex!7609)

(assert (=> b!2555743 (= e!1614538 (Union!7609 (Concat!12305 call!163122 (regTwo!15730 lt!903911)) EmptyLang!7609))))

(declare-fun d!724262 () Bool)

(declare-fun lt!904084 () Regex!7609)

(assert (=> d!724262 (validRegex!3235 lt!904084)))

(declare-fun e!1614536 () Regex!7609)

(assert (=> d!724262 (= lt!904084 e!1614536)))

(declare-fun c!410107 () Bool)

(assert (=> d!724262 (= c!410107 (or ((_ is EmptyExpr!7609) lt!903911) ((_ is EmptyLang!7609) lt!903911)))))

(assert (=> d!724262 (validRegex!3235 lt!903911)))

(assert (=> d!724262 (= (derivativeStep!2178 lt!903911 (h!34994 (_1!17332 lt!903904))) lt!904084)))

(declare-fun b!2555744 () Bool)

(declare-fun e!1614535 () Regex!7609)

(assert (=> b!2555744 (= e!1614536 e!1614535)))

(declare-fun c!410110 () Bool)

(assert (=> b!2555744 (= c!410110 ((_ is ElementMatch!7609) lt!903911))))

(declare-fun b!2555745 () Bool)

(assert (=> b!2555745 (= e!1614536 EmptyLang!7609)))

(declare-fun bm!163116 () Bool)

(assert (=> bm!163116 (= call!163121 (derivativeStep!2178 (ite c!410108 (regTwo!15731 lt!903911) (regTwo!15730 lt!903911)) (h!34994 (_1!17332 lt!903904))))))

(declare-fun bm!163117 () Bool)

(declare-fun call!163123 () Regex!7609)

(assert (=> bm!163117 (= call!163122 call!163123)))

(declare-fun b!2555746 () Bool)

(assert (=> b!2555746 (= e!1614535 (ite (= (h!34994 (_1!17332 lt!903904)) (c!409621 lt!903911)) EmptyExpr!7609 EmptyLang!7609))))

(declare-fun b!2555747 () Bool)

(assert (=> b!2555747 (= e!1614537 (Concat!12305 call!163123 lt!903911))))

(declare-fun b!2555748 () Bool)

(assert (=> b!2555748 (= c!410108 ((_ is Union!7609) lt!903911))))

(assert (=> b!2555748 (= e!1614535 e!1614539)))

(declare-fun b!2555749 () Bool)

(assert (=> b!2555749 (= e!1614539 e!1614537)))

(assert (=> b!2555749 (= c!410109 ((_ is Star!7609) lt!903911))))

(declare-fun bm!163118 () Bool)

(assert (=> bm!163118 (= call!163123 call!163120)))

(declare-fun b!2555750 () Bool)

(assert (=> b!2555750 (= e!1614538 (Union!7609 (Concat!12305 call!163122 (regTwo!15730 lt!903911)) call!163121))))

(assert (= (and d!724262 c!410107) b!2555745))

(assert (= (and d!724262 (not c!410107)) b!2555744))

(assert (= (and b!2555744 c!410110) b!2555746))

(assert (= (and b!2555744 (not c!410110)) b!2555748))

(assert (= (and b!2555748 c!410108) b!2555741))

(assert (= (and b!2555748 (not c!410108)) b!2555749))

(assert (= (and b!2555749 c!410109) b!2555747))

(assert (= (and b!2555749 (not c!410109)) b!2555742))

(assert (= (and b!2555742 c!410111) b!2555750))

(assert (= (and b!2555742 (not c!410111)) b!2555743))

(assert (= (or b!2555750 b!2555743) bm!163117))

(assert (= (or b!2555747 bm!163117) bm!163118))

(assert (= (or b!2555741 b!2555750) bm!163116))

(assert (= (or b!2555741 bm!163118) bm!163115))

(declare-fun m!2897455 () Bool)

(assert (=> bm!163115 m!2897455))

(assert (=> b!2555742 m!2897265))

(declare-fun m!2897457 () Bool)

(assert (=> d!724262 m!2897457))

(assert (=> d!724262 m!2896099))

(declare-fun m!2897459 () Bool)

(assert (=> bm!163116 m!2897459))

(assert (=> b!2554030 d!724262))

(assert (=> b!2554085 d!724006))

(assert (=> b!2554085 d!724010))

(assert (=> d!723800 d!723774))

(declare-fun d!724264 () Bool)

(declare-fun e!1614542 () Bool)

(assert (=> d!724264 e!1614542))

(declare-fun res!1076382 () Bool)

(assert (=> d!724264 (=> res!1076382 e!1614542)))

(assert (=> d!724264 (= res!1076382 (matchR!3554 lt!903905 tl!4068))))

(assert (=> d!724264 true))

(declare-fun _$116!331 () Unit!43403)

(assert (=> d!724264 (= (choose!15084 lt!903905 lt!903906 tl!4068) _$116!331)))

(declare-fun b!2555753 () Bool)

(assert (=> b!2555753 (= e!1614542 (matchR!3554 lt!903906 tl!4068))))

(assert (= (and d!724264 (not res!1076382)) b!2555753))

(assert (=> d!724264 m!2896019))

(assert (=> b!2555753 m!2896051))

(assert (=> d!723800 d!724264))

(assert (=> d!723800 d!724174))

(declare-fun b!2555756 () Bool)

(declare-fun e!1614543 () Bool)

(declare-fun tp!814644 () Bool)

(assert (=> b!2555756 (= e!1614543 tp!814644)))

(declare-fun b!2555754 () Bool)

(assert (=> b!2555754 (= e!1614543 tp_is_empty!13073)))

(assert (=> b!2554538 (= tp!814506 e!1614543)))

(declare-fun b!2555757 () Bool)

(declare-fun tp!814642 () Bool)

(declare-fun tp!814645 () Bool)

(assert (=> b!2555757 (= e!1614543 (and tp!814642 tp!814645))))

(declare-fun b!2555755 () Bool)

(declare-fun tp!814643 () Bool)

(declare-fun tp!814641 () Bool)

(assert (=> b!2555755 (= e!1614543 (and tp!814643 tp!814641))))

(assert (= (and b!2554538 ((_ is ElementMatch!7609) (regOne!15731 (regOne!15730 r!27340)))) b!2555754))

(assert (= (and b!2554538 ((_ is Concat!12305) (regOne!15731 (regOne!15730 r!27340)))) b!2555755))

(assert (= (and b!2554538 ((_ is Star!7609) (regOne!15731 (regOne!15730 r!27340)))) b!2555756))

(assert (= (and b!2554538 ((_ is Union!7609) (regOne!15731 (regOne!15730 r!27340)))) b!2555757))

(declare-fun b!2555760 () Bool)

(declare-fun e!1614544 () Bool)

(declare-fun tp!814649 () Bool)

(assert (=> b!2555760 (= e!1614544 tp!814649)))

(declare-fun b!2555758 () Bool)

(assert (=> b!2555758 (= e!1614544 tp_is_empty!13073)))

(assert (=> b!2554538 (= tp!814509 e!1614544)))

(declare-fun b!2555761 () Bool)

(declare-fun tp!814647 () Bool)

(declare-fun tp!814650 () Bool)

(assert (=> b!2555761 (= e!1614544 (and tp!814647 tp!814650))))

(declare-fun b!2555759 () Bool)

(declare-fun tp!814648 () Bool)

(declare-fun tp!814646 () Bool)

(assert (=> b!2555759 (= e!1614544 (and tp!814648 tp!814646))))

(assert (= (and b!2554538 ((_ is ElementMatch!7609) (regTwo!15731 (regOne!15730 r!27340)))) b!2555758))

(assert (= (and b!2554538 ((_ is Concat!12305) (regTwo!15731 (regOne!15730 r!27340)))) b!2555759))

(assert (= (and b!2554538 ((_ is Star!7609) (regTwo!15731 (regOne!15730 r!27340)))) b!2555760))

(assert (= (and b!2554538 ((_ is Union!7609) (regTwo!15731 (regOne!15730 r!27340)))) b!2555761))

(declare-fun b!2555764 () Bool)

(declare-fun e!1614545 () Bool)

(declare-fun tp!814654 () Bool)

(assert (=> b!2555764 (= e!1614545 tp!814654)))

(declare-fun b!2555762 () Bool)

(assert (=> b!2555762 (= e!1614545 tp_is_empty!13073)))

(assert (=> b!2554533 (= tp!814503 e!1614545)))

(declare-fun b!2555765 () Bool)

(declare-fun tp!814652 () Bool)

(declare-fun tp!814655 () Bool)

(assert (=> b!2555765 (= e!1614545 (and tp!814652 tp!814655))))

(declare-fun b!2555763 () Bool)

(declare-fun tp!814653 () Bool)

(declare-fun tp!814651 () Bool)

(assert (=> b!2555763 (= e!1614545 (and tp!814653 tp!814651))))

(assert (= (and b!2554533 ((_ is ElementMatch!7609) (reg!7938 (reg!7938 r!27340)))) b!2555762))

(assert (= (and b!2554533 ((_ is Concat!12305) (reg!7938 (reg!7938 r!27340)))) b!2555763))

(assert (= (and b!2554533 ((_ is Star!7609) (reg!7938 (reg!7938 r!27340)))) b!2555764))

(assert (= (and b!2554533 ((_ is Union!7609) (reg!7938 (reg!7938 r!27340)))) b!2555765))

(declare-fun b!2555768 () Bool)

(declare-fun e!1614546 () Bool)

(declare-fun tp!814659 () Bool)

(assert (=> b!2555768 (= e!1614546 tp!814659)))

(declare-fun b!2555766 () Bool)

(assert (=> b!2555766 (= e!1614546 tp_is_empty!13073)))

(assert (=> b!2554542 (= tp!814511 e!1614546)))

(declare-fun b!2555769 () Bool)

(declare-fun tp!814657 () Bool)

(declare-fun tp!814660 () Bool)

(assert (=> b!2555769 (= e!1614546 (and tp!814657 tp!814660))))

(declare-fun b!2555767 () Bool)

(declare-fun tp!814658 () Bool)

(declare-fun tp!814656 () Bool)

(assert (=> b!2555767 (= e!1614546 (and tp!814658 tp!814656))))

(assert (= (and b!2554542 ((_ is ElementMatch!7609) (regOne!15731 (regTwo!15730 r!27340)))) b!2555766))

(assert (= (and b!2554542 ((_ is Concat!12305) (regOne!15731 (regTwo!15730 r!27340)))) b!2555767))

(assert (= (and b!2554542 ((_ is Star!7609) (regOne!15731 (regTwo!15730 r!27340)))) b!2555768))

(assert (= (and b!2554542 ((_ is Union!7609) (regOne!15731 (regTwo!15730 r!27340)))) b!2555769))

(declare-fun b!2555772 () Bool)

(declare-fun e!1614547 () Bool)

(declare-fun tp!814664 () Bool)

(assert (=> b!2555772 (= e!1614547 tp!814664)))

(declare-fun b!2555770 () Bool)

(assert (=> b!2555770 (= e!1614547 tp_is_empty!13073)))

(assert (=> b!2554542 (= tp!814514 e!1614547)))

(declare-fun b!2555773 () Bool)

(declare-fun tp!814662 () Bool)

(declare-fun tp!814665 () Bool)

(assert (=> b!2555773 (= e!1614547 (and tp!814662 tp!814665))))

(declare-fun b!2555771 () Bool)

(declare-fun tp!814663 () Bool)

(declare-fun tp!814661 () Bool)

(assert (=> b!2555771 (= e!1614547 (and tp!814663 tp!814661))))

(assert (= (and b!2554542 ((_ is ElementMatch!7609) (regTwo!15731 (regTwo!15730 r!27340)))) b!2555770))

(assert (= (and b!2554542 ((_ is Concat!12305) (regTwo!15731 (regTwo!15730 r!27340)))) b!2555771))

(assert (= (and b!2554542 ((_ is Star!7609) (regTwo!15731 (regTwo!15730 r!27340)))) b!2555772))

(assert (= (and b!2554542 ((_ is Union!7609) (regTwo!15731 (regTwo!15730 r!27340)))) b!2555773))

(declare-fun b!2555776 () Bool)

(declare-fun e!1614548 () Bool)

(declare-fun tp!814669 () Bool)

(assert (=> b!2555776 (= e!1614548 tp!814669)))

(declare-fun b!2555774 () Bool)

(assert (=> b!2555774 (= e!1614548 tp_is_empty!13073)))

(assert (=> b!2554537 (= tp!814508 e!1614548)))

(declare-fun b!2555777 () Bool)

(declare-fun tp!814667 () Bool)

(declare-fun tp!814670 () Bool)

(assert (=> b!2555777 (= e!1614548 (and tp!814667 tp!814670))))

(declare-fun b!2555775 () Bool)

(declare-fun tp!814668 () Bool)

(declare-fun tp!814666 () Bool)

(assert (=> b!2555775 (= e!1614548 (and tp!814668 tp!814666))))

(assert (= (and b!2554537 ((_ is ElementMatch!7609) (reg!7938 (regOne!15730 r!27340)))) b!2555774))

(assert (= (and b!2554537 ((_ is Concat!12305) (reg!7938 (regOne!15730 r!27340)))) b!2555775))

(assert (= (and b!2554537 ((_ is Star!7609) (reg!7938 (regOne!15730 r!27340)))) b!2555776))

(assert (= (and b!2554537 ((_ is Union!7609) (reg!7938 (regOne!15730 r!27340)))) b!2555777))

(declare-fun b!2555778 () Bool)

(declare-fun e!1614549 () Bool)

(declare-fun tp!814671 () Bool)

(assert (=> b!2555778 (= e!1614549 (and tp_is_empty!13073 tp!814671))))

(assert (=> b!2554530 (= tp!814499 e!1614549)))

(assert (= (and b!2554530 ((_ is Cons!29574) (t!211373 (t!211373 tl!4068)))) b!2555778))

(declare-fun b!2555781 () Bool)

(declare-fun e!1614550 () Bool)

(declare-fun tp!814675 () Bool)

(assert (=> b!2555781 (= e!1614550 tp!814675)))

(declare-fun b!2555779 () Bool)

(assert (=> b!2555779 (= e!1614550 tp_is_empty!13073)))

(assert (=> b!2554534 (= tp!814501 e!1614550)))

(declare-fun b!2555782 () Bool)

(declare-fun tp!814673 () Bool)

(declare-fun tp!814676 () Bool)

(assert (=> b!2555782 (= e!1614550 (and tp!814673 tp!814676))))

(declare-fun b!2555780 () Bool)

(declare-fun tp!814674 () Bool)

(declare-fun tp!814672 () Bool)

(assert (=> b!2555780 (= e!1614550 (and tp!814674 tp!814672))))

(assert (= (and b!2554534 ((_ is ElementMatch!7609) (regOne!15731 (reg!7938 r!27340)))) b!2555779))

(assert (= (and b!2554534 ((_ is Concat!12305) (regOne!15731 (reg!7938 r!27340)))) b!2555780))

(assert (= (and b!2554534 ((_ is Star!7609) (regOne!15731 (reg!7938 r!27340)))) b!2555781))

(assert (= (and b!2554534 ((_ is Union!7609) (regOne!15731 (reg!7938 r!27340)))) b!2555782))

(declare-fun b!2555785 () Bool)

(declare-fun e!1614551 () Bool)

(declare-fun tp!814680 () Bool)

(assert (=> b!2555785 (= e!1614551 tp!814680)))

(declare-fun b!2555783 () Bool)

(assert (=> b!2555783 (= e!1614551 tp_is_empty!13073)))

(assert (=> b!2554534 (= tp!814504 e!1614551)))

(declare-fun b!2555786 () Bool)

(declare-fun tp!814678 () Bool)

(declare-fun tp!814681 () Bool)

(assert (=> b!2555786 (= e!1614551 (and tp!814678 tp!814681))))

(declare-fun b!2555784 () Bool)

(declare-fun tp!814679 () Bool)

(declare-fun tp!814677 () Bool)

(assert (=> b!2555784 (= e!1614551 (and tp!814679 tp!814677))))

(assert (= (and b!2554534 ((_ is ElementMatch!7609) (regTwo!15731 (reg!7938 r!27340)))) b!2555783))

(assert (= (and b!2554534 ((_ is Concat!12305) (regTwo!15731 (reg!7938 r!27340)))) b!2555784))

(assert (= (and b!2554534 ((_ is Star!7609) (regTwo!15731 (reg!7938 r!27340)))) b!2555785))

(assert (= (and b!2554534 ((_ is Union!7609) (regTwo!15731 (reg!7938 r!27340)))) b!2555786))

(declare-fun b!2555789 () Bool)

(declare-fun e!1614552 () Bool)

(declare-fun tp!814685 () Bool)

(assert (=> b!2555789 (= e!1614552 tp!814685)))

(declare-fun b!2555787 () Bool)

(assert (=> b!2555787 (= e!1614552 tp_is_empty!13073)))

(assert (=> b!2554524 (= tp!814495 e!1614552)))

(declare-fun b!2555790 () Bool)

(declare-fun tp!814683 () Bool)

(declare-fun tp!814686 () Bool)

(assert (=> b!2555790 (= e!1614552 (and tp!814683 tp!814686))))

(declare-fun b!2555788 () Bool)

(declare-fun tp!814684 () Bool)

(declare-fun tp!814682 () Bool)

(assert (=> b!2555788 (= e!1614552 (and tp!814684 tp!814682))))

(assert (= (and b!2554524 ((_ is ElementMatch!7609) (reg!7938 (regTwo!15731 r!27340)))) b!2555787))

(assert (= (and b!2554524 ((_ is Concat!12305) (reg!7938 (regTwo!15731 r!27340)))) b!2555788))

(assert (= (and b!2554524 ((_ is Star!7609) (reg!7938 (regTwo!15731 r!27340)))) b!2555789))

(assert (= (and b!2554524 ((_ is Union!7609) (reg!7938 (regTwo!15731 r!27340)))) b!2555790))

(declare-fun b!2555793 () Bool)

(declare-fun e!1614553 () Bool)

(declare-fun tp!814690 () Bool)

(assert (=> b!2555793 (= e!1614553 tp!814690)))

(declare-fun b!2555791 () Bool)

(assert (=> b!2555791 (= e!1614553 tp_is_empty!13073)))

(assert (=> b!2554519 (= tp!814489 e!1614553)))

(declare-fun b!2555794 () Bool)

(declare-fun tp!814688 () Bool)

(declare-fun tp!814691 () Bool)

(assert (=> b!2555794 (= e!1614553 (and tp!814688 tp!814691))))

(declare-fun b!2555792 () Bool)

(declare-fun tp!814689 () Bool)

(declare-fun tp!814687 () Bool)

(assert (=> b!2555792 (= e!1614553 (and tp!814689 tp!814687))))

(assert (= (and b!2554519 ((_ is ElementMatch!7609) (regOne!15730 (regOne!15731 r!27340)))) b!2555791))

(assert (= (and b!2554519 ((_ is Concat!12305) (regOne!15730 (regOne!15731 r!27340)))) b!2555792))

(assert (= (and b!2554519 ((_ is Star!7609) (regOne!15730 (regOne!15731 r!27340)))) b!2555793))

(assert (= (and b!2554519 ((_ is Union!7609) (regOne!15730 (regOne!15731 r!27340)))) b!2555794))

(declare-fun b!2555797 () Bool)

(declare-fun e!1614554 () Bool)

(declare-fun tp!814695 () Bool)

(assert (=> b!2555797 (= e!1614554 tp!814695)))

(declare-fun b!2555795 () Bool)

(assert (=> b!2555795 (= e!1614554 tp_is_empty!13073)))

(assert (=> b!2554519 (= tp!814487 e!1614554)))

(declare-fun b!2555798 () Bool)

(declare-fun tp!814693 () Bool)

(declare-fun tp!814696 () Bool)

(assert (=> b!2555798 (= e!1614554 (and tp!814693 tp!814696))))

(declare-fun b!2555796 () Bool)

(declare-fun tp!814694 () Bool)

(declare-fun tp!814692 () Bool)

(assert (=> b!2555796 (= e!1614554 (and tp!814694 tp!814692))))

(assert (= (and b!2554519 ((_ is ElementMatch!7609) (regTwo!15730 (regOne!15731 r!27340)))) b!2555795))

(assert (= (and b!2554519 ((_ is Concat!12305) (regTwo!15730 (regOne!15731 r!27340)))) b!2555796))

(assert (= (and b!2554519 ((_ is Star!7609) (regTwo!15730 (regOne!15731 r!27340)))) b!2555797))

(assert (= (and b!2554519 ((_ is Union!7609) (regTwo!15730 (regOne!15731 r!27340)))) b!2555798))

(declare-fun b!2555801 () Bool)

(declare-fun e!1614555 () Bool)

(declare-fun tp!814700 () Bool)

(assert (=> b!2555801 (= e!1614555 tp!814700)))

(declare-fun b!2555799 () Bool)

(assert (=> b!2555799 (= e!1614555 tp_is_empty!13073)))

(assert (=> b!2554523 (= tp!814494 e!1614555)))

(declare-fun b!2555802 () Bool)

(declare-fun tp!814698 () Bool)

(declare-fun tp!814701 () Bool)

(assert (=> b!2555802 (= e!1614555 (and tp!814698 tp!814701))))

(declare-fun b!2555800 () Bool)

(declare-fun tp!814699 () Bool)

(declare-fun tp!814697 () Bool)

(assert (=> b!2555800 (= e!1614555 (and tp!814699 tp!814697))))

(assert (= (and b!2554523 ((_ is ElementMatch!7609) (regOne!15730 (regTwo!15731 r!27340)))) b!2555799))

(assert (= (and b!2554523 ((_ is Concat!12305) (regOne!15730 (regTwo!15731 r!27340)))) b!2555800))

(assert (= (and b!2554523 ((_ is Star!7609) (regOne!15730 (regTwo!15731 r!27340)))) b!2555801))

(assert (= (and b!2554523 ((_ is Union!7609) (regOne!15730 (regTwo!15731 r!27340)))) b!2555802))

(declare-fun b!2555805 () Bool)

(declare-fun e!1614556 () Bool)

(declare-fun tp!814705 () Bool)

(assert (=> b!2555805 (= e!1614556 tp!814705)))

(declare-fun b!2555803 () Bool)

(assert (=> b!2555803 (= e!1614556 tp_is_empty!13073)))

(assert (=> b!2554523 (= tp!814492 e!1614556)))

(declare-fun b!2555806 () Bool)

(declare-fun tp!814703 () Bool)

(declare-fun tp!814706 () Bool)

(assert (=> b!2555806 (= e!1614556 (and tp!814703 tp!814706))))

(declare-fun b!2555804 () Bool)

(declare-fun tp!814704 () Bool)

(declare-fun tp!814702 () Bool)

(assert (=> b!2555804 (= e!1614556 (and tp!814704 tp!814702))))

(assert (= (and b!2554523 ((_ is ElementMatch!7609) (regTwo!15730 (regTwo!15731 r!27340)))) b!2555803))

(assert (= (and b!2554523 ((_ is Concat!12305) (regTwo!15730 (regTwo!15731 r!27340)))) b!2555804))

(assert (= (and b!2554523 ((_ is Star!7609) (regTwo!15730 (regTwo!15731 r!27340)))) b!2555805))

(assert (= (and b!2554523 ((_ is Union!7609) (regTwo!15730 (regTwo!15731 r!27340)))) b!2555806))

(declare-fun b!2555809 () Bool)

(declare-fun e!1614557 () Bool)

(declare-fun tp!814710 () Bool)

(assert (=> b!2555809 (= e!1614557 tp!814710)))

(declare-fun b!2555807 () Bool)

(assert (=> b!2555807 (= e!1614557 tp_is_empty!13073)))

(assert (=> b!2554540 (= tp!814512 e!1614557)))

(declare-fun b!2555810 () Bool)

(declare-fun tp!814708 () Bool)

(declare-fun tp!814711 () Bool)

(assert (=> b!2555810 (= e!1614557 (and tp!814708 tp!814711))))

(declare-fun b!2555808 () Bool)

(declare-fun tp!814709 () Bool)

(declare-fun tp!814707 () Bool)

(assert (=> b!2555808 (= e!1614557 (and tp!814709 tp!814707))))

(assert (= (and b!2554540 ((_ is ElementMatch!7609) (regOne!15730 (regTwo!15730 r!27340)))) b!2555807))

(assert (= (and b!2554540 ((_ is Concat!12305) (regOne!15730 (regTwo!15730 r!27340)))) b!2555808))

(assert (= (and b!2554540 ((_ is Star!7609) (regOne!15730 (regTwo!15730 r!27340)))) b!2555809))

(assert (= (and b!2554540 ((_ is Union!7609) (regOne!15730 (regTwo!15730 r!27340)))) b!2555810))

(declare-fun b!2555813 () Bool)

(declare-fun e!1614558 () Bool)

(declare-fun tp!814715 () Bool)

(assert (=> b!2555813 (= e!1614558 tp!814715)))

(declare-fun b!2555811 () Bool)

(assert (=> b!2555811 (= e!1614558 tp_is_empty!13073)))

(assert (=> b!2554540 (= tp!814510 e!1614558)))

(declare-fun b!2555814 () Bool)

(declare-fun tp!814713 () Bool)

(declare-fun tp!814716 () Bool)

(assert (=> b!2555814 (= e!1614558 (and tp!814713 tp!814716))))

(declare-fun b!2555812 () Bool)

(declare-fun tp!814714 () Bool)

(declare-fun tp!814712 () Bool)

(assert (=> b!2555812 (= e!1614558 (and tp!814714 tp!814712))))

(assert (= (and b!2554540 ((_ is ElementMatch!7609) (regTwo!15730 (regTwo!15730 r!27340)))) b!2555811))

(assert (= (and b!2554540 ((_ is Concat!12305) (regTwo!15730 (regTwo!15730 r!27340)))) b!2555812))

(assert (= (and b!2554540 ((_ is Star!7609) (regTwo!15730 (regTwo!15730 r!27340)))) b!2555813))

(assert (= (and b!2554540 ((_ is Union!7609) (regTwo!15730 (regTwo!15730 r!27340)))) b!2555814))

(declare-fun b!2555817 () Bool)

(declare-fun e!1614559 () Bool)

(declare-fun tp!814720 () Bool)

(assert (=> b!2555817 (= e!1614559 tp!814720)))

(declare-fun b!2555815 () Bool)

(assert (=> b!2555815 (= e!1614559 tp_is_empty!13073)))

(assert (=> b!2554525 (= tp!814493 e!1614559)))

(declare-fun b!2555818 () Bool)

(declare-fun tp!814718 () Bool)

(declare-fun tp!814721 () Bool)

(assert (=> b!2555818 (= e!1614559 (and tp!814718 tp!814721))))

(declare-fun b!2555816 () Bool)

(declare-fun tp!814719 () Bool)

(declare-fun tp!814717 () Bool)

(assert (=> b!2555816 (= e!1614559 (and tp!814719 tp!814717))))

(assert (= (and b!2554525 ((_ is ElementMatch!7609) (regOne!15731 (regTwo!15731 r!27340)))) b!2555815))

(assert (= (and b!2554525 ((_ is Concat!12305) (regOne!15731 (regTwo!15731 r!27340)))) b!2555816))

(assert (= (and b!2554525 ((_ is Star!7609) (regOne!15731 (regTwo!15731 r!27340)))) b!2555817))

(assert (= (and b!2554525 ((_ is Union!7609) (regOne!15731 (regTwo!15731 r!27340)))) b!2555818))

(declare-fun b!2555821 () Bool)

(declare-fun e!1614560 () Bool)

(declare-fun tp!814725 () Bool)

(assert (=> b!2555821 (= e!1614560 tp!814725)))

(declare-fun b!2555819 () Bool)

(assert (=> b!2555819 (= e!1614560 tp_is_empty!13073)))

(assert (=> b!2554525 (= tp!814496 e!1614560)))

(declare-fun b!2555822 () Bool)

(declare-fun tp!814723 () Bool)

(declare-fun tp!814726 () Bool)

(assert (=> b!2555822 (= e!1614560 (and tp!814723 tp!814726))))

(declare-fun b!2555820 () Bool)

(declare-fun tp!814724 () Bool)

(declare-fun tp!814722 () Bool)

(assert (=> b!2555820 (= e!1614560 (and tp!814724 tp!814722))))

(assert (= (and b!2554525 ((_ is ElementMatch!7609) (regTwo!15731 (regTwo!15731 r!27340)))) b!2555819))

(assert (= (and b!2554525 ((_ is Concat!12305) (regTwo!15731 (regTwo!15731 r!27340)))) b!2555820))

(assert (= (and b!2554525 ((_ is Star!7609) (regTwo!15731 (regTwo!15731 r!27340)))) b!2555821))

(assert (= (and b!2554525 ((_ is Union!7609) (regTwo!15731 (regTwo!15731 r!27340)))) b!2555822))

(declare-fun b!2555825 () Bool)

(declare-fun e!1614561 () Bool)

(declare-fun tp!814730 () Bool)

(assert (=> b!2555825 (= e!1614561 tp!814730)))

(declare-fun b!2555823 () Bool)

(assert (=> b!2555823 (= e!1614561 tp_is_empty!13073)))

(assert (=> b!2554520 (= tp!814490 e!1614561)))

(declare-fun b!2555826 () Bool)

(declare-fun tp!814728 () Bool)

(declare-fun tp!814731 () Bool)

(assert (=> b!2555826 (= e!1614561 (and tp!814728 tp!814731))))

(declare-fun b!2555824 () Bool)

(declare-fun tp!814729 () Bool)

(declare-fun tp!814727 () Bool)

(assert (=> b!2555824 (= e!1614561 (and tp!814729 tp!814727))))

(assert (= (and b!2554520 ((_ is ElementMatch!7609) (reg!7938 (regOne!15731 r!27340)))) b!2555823))

(assert (= (and b!2554520 ((_ is Concat!12305) (reg!7938 (regOne!15731 r!27340)))) b!2555824))

(assert (= (and b!2554520 ((_ is Star!7609) (reg!7938 (regOne!15731 r!27340)))) b!2555825))

(assert (= (and b!2554520 ((_ is Union!7609) (reg!7938 (regOne!15731 r!27340)))) b!2555826))

(declare-fun b!2555829 () Bool)

(declare-fun e!1614562 () Bool)

(declare-fun tp!814735 () Bool)

(assert (=> b!2555829 (= e!1614562 tp!814735)))

(declare-fun b!2555827 () Bool)

(assert (=> b!2555827 (= e!1614562 tp_is_empty!13073)))

(assert (=> b!2554532 (= tp!814502 e!1614562)))

(declare-fun b!2555830 () Bool)

(declare-fun tp!814733 () Bool)

(declare-fun tp!814736 () Bool)

(assert (=> b!2555830 (= e!1614562 (and tp!814733 tp!814736))))

(declare-fun b!2555828 () Bool)

(declare-fun tp!814734 () Bool)

(declare-fun tp!814732 () Bool)

(assert (=> b!2555828 (= e!1614562 (and tp!814734 tp!814732))))

(assert (= (and b!2554532 ((_ is ElementMatch!7609) (regOne!15730 (reg!7938 r!27340)))) b!2555827))

(assert (= (and b!2554532 ((_ is Concat!12305) (regOne!15730 (reg!7938 r!27340)))) b!2555828))

(assert (= (and b!2554532 ((_ is Star!7609) (regOne!15730 (reg!7938 r!27340)))) b!2555829))

(assert (= (and b!2554532 ((_ is Union!7609) (regOne!15730 (reg!7938 r!27340)))) b!2555830))

(declare-fun b!2555833 () Bool)

(declare-fun e!1614563 () Bool)

(declare-fun tp!814740 () Bool)

(assert (=> b!2555833 (= e!1614563 tp!814740)))

(declare-fun b!2555831 () Bool)

(assert (=> b!2555831 (= e!1614563 tp_is_empty!13073)))

(assert (=> b!2554532 (= tp!814500 e!1614563)))

(declare-fun b!2555834 () Bool)

(declare-fun tp!814738 () Bool)

(declare-fun tp!814741 () Bool)

(assert (=> b!2555834 (= e!1614563 (and tp!814738 tp!814741))))

(declare-fun b!2555832 () Bool)

(declare-fun tp!814739 () Bool)

(declare-fun tp!814737 () Bool)

(assert (=> b!2555832 (= e!1614563 (and tp!814739 tp!814737))))

(assert (= (and b!2554532 ((_ is ElementMatch!7609) (regTwo!15730 (reg!7938 r!27340)))) b!2555831))

(assert (= (and b!2554532 ((_ is Concat!12305) (regTwo!15730 (reg!7938 r!27340)))) b!2555832))

(assert (= (and b!2554532 ((_ is Star!7609) (regTwo!15730 (reg!7938 r!27340)))) b!2555833))

(assert (= (and b!2554532 ((_ is Union!7609) (regTwo!15730 (reg!7938 r!27340)))) b!2555834))

(declare-fun b!2555837 () Bool)

(declare-fun e!1614564 () Bool)

(declare-fun tp!814745 () Bool)

(assert (=> b!2555837 (= e!1614564 tp!814745)))

(declare-fun b!2555835 () Bool)

(assert (=> b!2555835 (= e!1614564 tp_is_empty!13073)))

(assert (=> b!2554541 (= tp!814513 e!1614564)))

(declare-fun b!2555838 () Bool)

(declare-fun tp!814743 () Bool)

(declare-fun tp!814746 () Bool)

(assert (=> b!2555838 (= e!1614564 (and tp!814743 tp!814746))))

(declare-fun b!2555836 () Bool)

(declare-fun tp!814744 () Bool)

(declare-fun tp!814742 () Bool)

(assert (=> b!2555836 (= e!1614564 (and tp!814744 tp!814742))))

(assert (= (and b!2554541 ((_ is ElementMatch!7609) (reg!7938 (regTwo!15730 r!27340)))) b!2555835))

(assert (= (and b!2554541 ((_ is Concat!12305) (reg!7938 (regTwo!15730 r!27340)))) b!2555836))

(assert (= (and b!2554541 ((_ is Star!7609) (reg!7938 (regTwo!15730 r!27340)))) b!2555837))

(assert (= (and b!2554541 ((_ is Union!7609) (reg!7938 (regTwo!15730 r!27340)))) b!2555838))

(declare-fun b!2555841 () Bool)

(declare-fun e!1614565 () Bool)

(declare-fun tp!814750 () Bool)

(assert (=> b!2555841 (= e!1614565 tp!814750)))

(declare-fun b!2555839 () Bool)

(assert (=> b!2555839 (= e!1614565 tp_is_empty!13073)))

(assert (=> b!2554536 (= tp!814507 e!1614565)))

(declare-fun b!2555842 () Bool)

(declare-fun tp!814748 () Bool)

(declare-fun tp!814751 () Bool)

(assert (=> b!2555842 (= e!1614565 (and tp!814748 tp!814751))))

(declare-fun b!2555840 () Bool)

(declare-fun tp!814749 () Bool)

(declare-fun tp!814747 () Bool)

(assert (=> b!2555840 (= e!1614565 (and tp!814749 tp!814747))))

(assert (= (and b!2554536 ((_ is ElementMatch!7609) (regOne!15730 (regOne!15730 r!27340)))) b!2555839))

(assert (= (and b!2554536 ((_ is Concat!12305) (regOne!15730 (regOne!15730 r!27340)))) b!2555840))

(assert (= (and b!2554536 ((_ is Star!7609) (regOne!15730 (regOne!15730 r!27340)))) b!2555841))

(assert (= (and b!2554536 ((_ is Union!7609) (regOne!15730 (regOne!15730 r!27340)))) b!2555842))

(declare-fun b!2555845 () Bool)

(declare-fun e!1614566 () Bool)

(declare-fun tp!814755 () Bool)

(assert (=> b!2555845 (= e!1614566 tp!814755)))

(declare-fun b!2555843 () Bool)

(assert (=> b!2555843 (= e!1614566 tp_is_empty!13073)))

(assert (=> b!2554536 (= tp!814505 e!1614566)))

(declare-fun b!2555846 () Bool)

(declare-fun tp!814753 () Bool)

(declare-fun tp!814756 () Bool)

(assert (=> b!2555846 (= e!1614566 (and tp!814753 tp!814756))))

(declare-fun b!2555844 () Bool)

(declare-fun tp!814754 () Bool)

(declare-fun tp!814752 () Bool)

(assert (=> b!2555844 (= e!1614566 (and tp!814754 tp!814752))))

(assert (= (and b!2554536 ((_ is ElementMatch!7609) (regTwo!15730 (regOne!15730 r!27340)))) b!2555843))

(assert (= (and b!2554536 ((_ is Concat!12305) (regTwo!15730 (regOne!15730 r!27340)))) b!2555844))

(assert (= (and b!2554536 ((_ is Star!7609) (regTwo!15730 (regOne!15730 r!27340)))) b!2555845))

(assert (= (and b!2554536 ((_ is Union!7609) (regTwo!15730 (regOne!15730 r!27340)))) b!2555846))

(declare-fun b!2555849 () Bool)

(declare-fun e!1614567 () Bool)

(declare-fun tp!814760 () Bool)

(assert (=> b!2555849 (= e!1614567 tp!814760)))

(declare-fun b!2555847 () Bool)

(assert (=> b!2555847 (= e!1614567 tp_is_empty!13073)))

(assert (=> b!2554521 (= tp!814488 e!1614567)))

(declare-fun b!2555850 () Bool)

(declare-fun tp!814758 () Bool)

(declare-fun tp!814761 () Bool)

(assert (=> b!2555850 (= e!1614567 (and tp!814758 tp!814761))))

(declare-fun b!2555848 () Bool)

(declare-fun tp!814759 () Bool)

(declare-fun tp!814757 () Bool)

(assert (=> b!2555848 (= e!1614567 (and tp!814759 tp!814757))))

(assert (= (and b!2554521 ((_ is ElementMatch!7609) (regOne!15731 (regOne!15731 r!27340)))) b!2555847))

(assert (= (and b!2554521 ((_ is Concat!12305) (regOne!15731 (regOne!15731 r!27340)))) b!2555848))

(assert (= (and b!2554521 ((_ is Star!7609) (regOne!15731 (regOne!15731 r!27340)))) b!2555849))

(assert (= (and b!2554521 ((_ is Union!7609) (regOne!15731 (regOne!15731 r!27340)))) b!2555850))

(declare-fun b!2555853 () Bool)

(declare-fun e!1614568 () Bool)

(declare-fun tp!814765 () Bool)

(assert (=> b!2555853 (= e!1614568 tp!814765)))

(declare-fun b!2555851 () Bool)

(assert (=> b!2555851 (= e!1614568 tp_is_empty!13073)))

(assert (=> b!2554521 (= tp!814491 e!1614568)))

(declare-fun b!2555854 () Bool)

(declare-fun tp!814763 () Bool)

(declare-fun tp!814766 () Bool)

(assert (=> b!2555854 (= e!1614568 (and tp!814763 tp!814766))))

(declare-fun b!2555852 () Bool)

(declare-fun tp!814764 () Bool)

(declare-fun tp!814762 () Bool)

(assert (=> b!2555852 (= e!1614568 (and tp!814764 tp!814762))))

(assert (= (and b!2554521 ((_ is ElementMatch!7609) (regTwo!15731 (regOne!15731 r!27340)))) b!2555851))

(assert (= (and b!2554521 ((_ is Concat!12305) (regTwo!15731 (regOne!15731 r!27340)))) b!2555852))

(assert (= (and b!2554521 ((_ is Star!7609) (regTwo!15731 (regOne!15731 r!27340)))) b!2555853))

(assert (= (and b!2554521 ((_ is Union!7609) (regTwo!15731 (regOne!15731 r!27340)))) b!2555854))

(check-sat (not b!2555403) (not b!2554908) (not b!2555420) (not b!2554987) (not b!2554929) (not b!2555784) (not d!724124) (not b!2555852) (not bm!162915) (not b!2555775) (not d!723962) (not bm!163062) (not bm!163063) (not b!2555634) (not bm!163036) (not d!724044) (not b!2554854) (not d!724212) (not b!2555806) (not b!2555184) (not d!724240) (not d!724144) (not bm!163109) (not bm!162969) (not b!2555649) (not b!2555840) (not b!2555842) (not b!2555653) (not bm!162932) (not b!2555033) (not b!2555734) (not b!2555771) (not d!724048) (not bm!163075) (not b!2555755) (not b!2555410) (not d!724250) (not b!2554868) (not b!2555611) (not d!724234) (not b!2555181) (not bm!162939) (not bm!163073) (not b!2555848) (not bm!162964) (not b!2555541) (not b!2555710) (not b!2555615) (not bm!162938) (not d!724126) (not b!2555854) (not b!2555698) (not b!2555581) (not b!2555822) (not b!2555249) (not d!724216) (not b!2555844) (not bm!163041) (not d!724038) (not b!2555716) (not b!2555821) (not b!2555459) (not b!2555701) (not b!2555788) (not b!2555679) (not b!2555471) (not d!724170) (not b!2555455) (not bm!163046) (not b!2555850) (not b!2555772) (not b!2555550) (not bm!162974) (not bm!163028) (not b!2555686) (not bm!163086) (not bm!162911) (not b!2555708) (not b!2555789) (not d!724138) (not bm!163049) (not bm!163070) (not b!2555643) (not b!2555836) (not b!2555275) (not b!2555820) (not b!2555841) (not bm!163080) (not d!724114) (not bm!163092) (not b!2555785) (not d!724062) (not d!724238) (not d!724078) (not d!724000) (not b!2555501) (not b!2555684) (not b!2555790) (not b!2555742) (not bm!163065) (not d!724254) (not b!2555677) (not bm!163114) (not b!2555412) (not b!2555404) (not b!2555417) (not b!2555416) (not d!724236) (not b!2555798) (not d!724200) (not bm!162935) (not b!2555828) (not d!724258) (not d!724166) (not b!2555812) (not bm!163116) (not b!2555494) (not bm!162922) (not bm!162968) (not b!2555711) (not bm!163058) (not bm!162923) (not b!2555527) (not b!2555419) (not b!2555619) (not b!2555786) (not d!724194) (not bm!162945) (not b!2555600) (not b!2555217) (not b!2555756) (not bm!163050) (not bm!162973) (not b!2555776) (not b!2555573) (not b!2555805) (not bm!163101) (not b!2554939) (not b!2555725) (not b!2555832) (not b!2555802) (not b!2555687) (not bm!162912) (not bm!163105) (not bm!163053) (not b!2554931) (not b!2555826) (not bm!163038) (not b!2555735) (not bm!163104) (not b!2555824) (not b!2555457) (not bm!162916) (not b!2555800) (not d!724202) (not b!2555530) (not d!724150) (not d!724192) (not b!2555504) (not b!2555568) (not bm!163029) (not b!2555834) (not b!2555176) (not b!2555696) (not bm!163115) (not bm!162933) (not b!2555009) (not bm!162957) (not b!2555402) (not b!2554938) (not d!723988) (not bm!163091) (not b!2555618) (not b!2555500) (not b!2555616) (not bm!163000) (not bm!162952) (not b!2555816) (not b!2555796) (not d!724152) (not b!2555797) (not b!2555566) (not b!2555222) (not b!2555846) (not d!724046) (not d!724242) (not b!2555572) (not bm!163079) (not bm!163069) (not b!2554777) (not bm!163045) (not b!2555652) (not b!2555609) (not bm!163111) (not b!2554877) (not b!2555777) (not b!2555760) (not d!724218) (not b!2555804) (not b!2555520) (not bm!163001) (not d!724230) (not d!724262) (not b!2555825) (not d!724072) (not b!2555462) (not b!2555576) (not b!2555650) (not bm!163052) (not b!2555668) (not b!2555436) (not b!2555814) (not bm!162956) (not b!2555405) (not bm!163096) (not bm!163055) (not bm!163042) (not b!2555700) (not bm!162980) (not bm!163076) (not b!2555793) (not b!2555425) (not bm!163059) (not b!2555761) (not b!2555849) (not b!2555496) (not b!2555830) (not d!724220) (not bm!163054) (not b!2555769) (not b!2555753) (not b!2554800) (not b!2555503) (not bm!162936) (not bm!163037) (not d!724210) (not b!2555276) (not b!2555183) (not b!2554808) (not b!2555658) (not b!2555406) (not b!2555782) (not b!2555810) (not b!2555707) (not bm!163100) (not b!2555813) (not d!723982) (not b!2555408) (not bm!163095) (not b!2555801) (not b!2555225) (not d!724034) (not b!2555575) (not b!2555781) (not b!2555265) (not b!2555809) (not b!2554954) (not b!2555838) (not d!724256) (not b!2555818) (not b!2555778) (not bm!163108) (not b!2555052) (not b!2555768) (not d!724222) (not b!2555833) (not b!2555732) (not b!2555792) (not b!2555180) (not bm!163090) (not bm!163099) (not b!2555794) (not bm!163010) (not d!724252) (not b!2555215) (not b!2554809) (not b!2555224) (not b!2554936) (not b!2554886) (not b!2554935) (not b!2555780) (not bm!163087) (not b!2555559) tp_is_empty!13073 (not b!2554855) (not b!2555845) (not d!724092) (not b!2555266) (not bm!163072) (not bm!163083) (not b!2555624) (not b!2555757) (not b!2555829) (not b!2555853) (not b!2555727) (not b!2555683) (not b!2555764) (not b!2555767) (not d!724228) (not d!724086) (not bm!162965) (not b!2555703) (not b!2555817) (not b!2555487) (not bm!163047) (not b!2555731) (not d!724232) (not b!2555837) (not d!724172) (not b!2555763) (not b!2555739) (not b!2555509) (not b!2555773) (not bm!163078) (not b!2555221) (not bm!163084) (not d!724094) (not d!724264) (not bm!163057) (not bm!163066) (not b!2555808) (not d!724260) (not b!2555645) (not bm!163110) (not bm!163021) (not b!2555592) (not bm!162944) (not b!2555759) (not b!2554836) (not b!2555174) (not bm!163044) (not b!2555765) (not b!2554896) (not bm!162981))
(check-sat)
