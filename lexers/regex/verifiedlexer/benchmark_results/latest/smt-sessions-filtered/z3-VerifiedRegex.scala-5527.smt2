; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!278402 () Bool)

(assert start!278402)

(declare-fun b!2860780 () Bool)

(declare-fun e!1811197 () Bool)

(declare-datatypes ((C!17400 0))(
  ( (C!17401 (val!10734 Int)) )
))
(declare-datatypes ((Regex!8609 0))(
  ( (ElementMatch!8609 (c!461082 C!17400)) (Concat!13930 (regOne!17730 Regex!8609) (regTwo!17730 Regex!8609)) (EmptyExpr!8609) (Star!8609 (reg!8938 Regex!8609)) (EmptyLang!8609) (Union!8609 (regOne!17731 Regex!8609) (regTwo!17731 Regex!8609)) )
))
(declare-fun lt!1014499 () Regex!8609)

(declare-datatypes ((List!34206 0))(
  ( (Nil!34082) (Cons!34082 (h!39502 C!17400) (t!233241 List!34206)) )
))
(declare-fun prefix!1470 () List!34206)

(declare-fun prefixMatch!917 (Regex!8609 List!34206) Bool)

(assert (=> b!2860780 (= e!1811197 (not (prefixMatch!917 lt!1014499 (t!233241 prefix!1470))))))

(declare-fun b!2860781 () Bool)

(declare-fun e!1811195 () Bool)

(assert (=> b!2860781 (= e!1811195 e!1811197)))

(declare-fun res!1188031 () Bool)

(assert (=> b!2860781 (=> (not res!1188031) (not e!1811197))))

(declare-fun validRegex!3479 (Regex!8609) Bool)

(assert (=> b!2860781 (= res!1188031 (validRegex!3479 lt!1014499))))

(declare-fun r!23423 () Regex!8609)

(declare-fun derivativeStep!2298 (Regex!8609 C!17400) Regex!8609)

(assert (=> b!2860781 (= lt!1014499 (derivativeStep!2298 r!23423 (h!39502 prefix!1470)))))

(declare-fun b!2860782 () Bool)

(declare-fun e!1811196 () Bool)

(declare-fun tp_is_empty!14955 () Bool)

(declare-fun tp!920912 () Bool)

(assert (=> b!2860782 (= e!1811196 (and tp_is_empty!14955 tp!920912))))

(declare-fun b!2860783 () Bool)

(declare-fun e!1811198 () Bool)

(assert (=> b!2860783 (= e!1811198 tp_is_empty!14955)))

(declare-fun b!2860785 () Bool)

(declare-fun res!1188033 () Bool)

(assert (=> b!2860785 (=> (not res!1188033) (not e!1811195))))

(assert (=> b!2860785 (= res!1188033 (prefixMatch!917 r!23423 prefix!1470))))

(declare-fun b!2860786 () Bool)

(declare-fun res!1188034 () Bool)

(assert (=> b!2860786 (=> (not res!1188034) (not e!1811195))))

(get-info :version)

(assert (=> b!2860786 (= res!1188034 (not ((_ is Nil!34082) prefix!1470)))))

(declare-fun b!2860787 () Bool)

(declare-fun tp!920914 () Bool)

(declare-fun tp!920913 () Bool)

(assert (=> b!2860787 (= e!1811198 (and tp!920914 tp!920913))))

(declare-fun b!2860788 () Bool)

(declare-fun tp!920911 () Bool)

(assert (=> b!2860788 (= e!1811198 tp!920911)))

(declare-fun res!1188032 () Bool)

(assert (=> start!278402 (=> (not res!1188032) (not e!1811195))))

(assert (=> start!278402 (= res!1188032 (validRegex!3479 r!23423))))

(assert (=> start!278402 e!1811195))

(assert (=> start!278402 e!1811198))

(assert (=> start!278402 e!1811196))

(declare-fun b!2860784 () Bool)

(declare-fun tp!920915 () Bool)

(declare-fun tp!920916 () Bool)

(assert (=> b!2860784 (= e!1811198 (and tp!920915 tp!920916))))

(assert (= (and start!278402 res!1188032) b!2860785))

(assert (= (and b!2860785 res!1188033) b!2860786))

(assert (= (and b!2860786 res!1188034) b!2860781))

(assert (= (and b!2860781 res!1188031) b!2860780))

(assert (= (and start!278402 ((_ is ElementMatch!8609) r!23423)) b!2860783))

(assert (= (and start!278402 ((_ is Concat!13930) r!23423)) b!2860787))

(assert (= (and start!278402 ((_ is Star!8609) r!23423)) b!2860788))

(assert (= (and start!278402 ((_ is Union!8609) r!23423)) b!2860784))

(assert (= (and start!278402 ((_ is Cons!34082) prefix!1470)) b!2860782))

(declare-fun m!3280879 () Bool)

(assert (=> b!2860780 m!3280879))

(declare-fun m!3280881 () Bool)

(assert (=> b!2860781 m!3280881))

(declare-fun m!3280883 () Bool)

(assert (=> b!2860781 m!3280883))

(declare-fun m!3280885 () Bool)

(assert (=> b!2860785 m!3280885))

(declare-fun m!3280887 () Bool)

(assert (=> start!278402 m!3280887))

(check-sat (not b!2860788) (not b!2860785) (not b!2860780) (not start!278402) (not b!2860787) (not b!2860784) (not b!2860782) tp_is_empty!14955 (not b!2860781))
(check-sat)
(get-model)

(declare-fun d!827110 () Bool)

(declare-fun c!461089 () Bool)

(declare-fun isEmpty!18616 (List!34206) Bool)

(assert (=> d!827110 (= c!461089 (isEmpty!18616 (t!233241 prefix!1470)))))

(declare-fun e!1811215 () Bool)

(assert (=> d!827110 (= (prefixMatch!917 lt!1014499 (t!233241 prefix!1470)) e!1811215)))

(declare-fun b!2860811 () Bool)

(declare-fun lostCause!761 (Regex!8609) Bool)

(assert (=> b!2860811 (= e!1811215 (not (lostCause!761 lt!1014499)))))

(declare-fun b!2860812 () Bool)

(declare-fun head!6291 (List!34206) C!17400)

(declare-fun tail!4516 (List!34206) List!34206)

(assert (=> b!2860812 (= e!1811215 (prefixMatch!917 (derivativeStep!2298 lt!1014499 (head!6291 (t!233241 prefix!1470))) (tail!4516 (t!233241 prefix!1470))))))

(assert (= (and d!827110 c!461089) b!2860811))

(assert (= (and d!827110 (not c!461089)) b!2860812))

(declare-fun m!3280889 () Bool)

(assert (=> d!827110 m!3280889))

(declare-fun m!3280891 () Bool)

(assert (=> b!2860811 m!3280891))

(declare-fun m!3280893 () Bool)

(assert (=> b!2860812 m!3280893))

(assert (=> b!2860812 m!3280893))

(declare-fun m!3280895 () Bool)

(assert (=> b!2860812 m!3280895))

(declare-fun m!3280897 () Bool)

(assert (=> b!2860812 m!3280897))

(assert (=> b!2860812 m!3280895))

(assert (=> b!2860812 m!3280897))

(declare-fun m!3280899 () Bool)

(assert (=> b!2860812 m!3280899))

(assert (=> b!2860780 d!827110))

(declare-fun d!827112 () Bool)

(declare-fun c!461092 () Bool)

(assert (=> d!827112 (= c!461092 (isEmpty!18616 prefix!1470))))

(declare-fun e!1811223 () Bool)

(assert (=> d!827112 (= (prefixMatch!917 r!23423 prefix!1470) e!1811223)))

(declare-fun b!2860822 () Bool)

(assert (=> b!2860822 (= e!1811223 (not (lostCause!761 r!23423)))))

(declare-fun b!2860823 () Bool)

(assert (=> b!2860823 (= e!1811223 (prefixMatch!917 (derivativeStep!2298 r!23423 (head!6291 prefix!1470)) (tail!4516 prefix!1470)))))

(assert (= (and d!827112 c!461092) b!2860822))

(assert (= (and d!827112 (not c!461092)) b!2860823))

(declare-fun m!3280901 () Bool)

(assert (=> d!827112 m!3280901))

(declare-fun m!3280903 () Bool)

(assert (=> b!2860822 m!3280903))

(declare-fun m!3280905 () Bool)

(assert (=> b!2860823 m!3280905))

(assert (=> b!2860823 m!3280905))

(declare-fun m!3280907 () Bool)

(assert (=> b!2860823 m!3280907))

(declare-fun m!3280909 () Bool)

(assert (=> b!2860823 m!3280909))

(assert (=> b!2860823 m!3280907))

(assert (=> b!2860823 m!3280909))

(declare-fun m!3280911 () Bool)

(assert (=> b!2860823 m!3280911))

(assert (=> b!2860785 d!827112))

(declare-fun b!2860859 () Bool)

(declare-fun e!1811251 () Bool)

(declare-fun e!1811250 () Bool)

(assert (=> b!2860859 (= e!1811251 e!1811250)))

(declare-fun res!1188066 () Bool)

(declare-fun nullable!2663 (Regex!8609) Bool)

(assert (=> b!2860859 (= res!1188066 (not (nullable!2663 (reg!8938 lt!1014499))))))

(assert (=> b!2860859 (=> (not res!1188066) (not e!1811250))))

(declare-fun b!2860860 () Bool)

(declare-fun res!1188069 () Bool)

(declare-fun e!1811254 () Bool)

(assert (=> b!2860860 (=> res!1188069 e!1811254)))

(assert (=> b!2860860 (= res!1188069 (not ((_ is Concat!13930) lt!1014499)))))

(declare-fun e!1811249 () Bool)

(assert (=> b!2860860 (= e!1811249 e!1811254)))

(declare-fun b!2860861 () Bool)

(declare-fun call!184527 () Bool)

(assert (=> b!2860861 (= e!1811250 call!184527)))

(declare-fun bm!184520 () Bool)

(declare-fun call!184526 () Bool)

(declare-fun c!461103 () Bool)

(assert (=> bm!184520 (= call!184526 (validRegex!3479 (ite c!461103 (regTwo!17731 lt!1014499) (regTwo!17730 lt!1014499))))))

(declare-fun bm!184521 () Bool)

(declare-fun call!184525 () Bool)

(assert (=> bm!184521 (= call!184525 call!184527)))

(declare-fun b!2860862 () Bool)

(declare-fun e!1811252 () Bool)

(assert (=> b!2860862 (= e!1811252 call!184526)))

(declare-fun b!2860863 () Bool)

(declare-fun res!1188068 () Bool)

(declare-fun e!1811255 () Bool)

(assert (=> b!2860863 (=> (not res!1188068) (not e!1811255))))

(assert (=> b!2860863 (= res!1188068 call!184525)))

(assert (=> b!2860863 (= e!1811249 e!1811255)))

(declare-fun b!2860864 () Bool)

(assert (=> b!2860864 (= e!1811255 call!184526)))

(declare-fun d!827114 () Bool)

(declare-fun res!1188065 () Bool)

(declare-fun e!1811253 () Bool)

(assert (=> d!827114 (=> res!1188065 e!1811253)))

(assert (=> d!827114 (= res!1188065 ((_ is ElementMatch!8609) lt!1014499))))

(assert (=> d!827114 (= (validRegex!3479 lt!1014499) e!1811253)))

(declare-fun b!2860865 () Bool)

(assert (=> b!2860865 (= e!1811254 e!1811252)))

(declare-fun res!1188067 () Bool)

(assert (=> b!2860865 (=> (not res!1188067) (not e!1811252))))

(assert (=> b!2860865 (= res!1188067 call!184525)))

(declare-fun b!2860866 () Bool)

(assert (=> b!2860866 (= e!1811251 e!1811249)))

(assert (=> b!2860866 (= c!461103 ((_ is Union!8609) lt!1014499))))

(declare-fun bm!184522 () Bool)

(declare-fun c!461104 () Bool)

(assert (=> bm!184522 (= call!184527 (validRegex!3479 (ite c!461104 (reg!8938 lt!1014499) (ite c!461103 (regOne!17731 lt!1014499) (regOne!17730 lt!1014499)))))))

(declare-fun b!2860867 () Bool)

(assert (=> b!2860867 (= e!1811253 e!1811251)))

(assert (=> b!2860867 (= c!461104 ((_ is Star!8609) lt!1014499))))

(assert (= (and d!827114 (not res!1188065)) b!2860867))

(assert (= (and b!2860867 c!461104) b!2860859))

(assert (= (and b!2860867 (not c!461104)) b!2860866))

(assert (= (and b!2860859 res!1188066) b!2860861))

(assert (= (and b!2860866 c!461103) b!2860863))

(assert (= (and b!2860866 (not c!461103)) b!2860860))

(assert (= (and b!2860863 res!1188068) b!2860864))

(assert (= (and b!2860860 (not res!1188069)) b!2860865))

(assert (= (and b!2860865 res!1188067) b!2860862))

(assert (= (or b!2860864 b!2860862) bm!184520))

(assert (= (or b!2860863 b!2860865) bm!184521))

(assert (= (or b!2860861 bm!184521) bm!184522))

(declare-fun m!3280949 () Bool)

(assert (=> b!2860859 m!3280949))

(declare-fun m!3280951 () Bool)

(assert (=> bm!184520 m!3280951))

(declare-fun m!3280953 () Bool)

(assert (=> bm!184522 m!3280953))

(assert (=> b!2860781 d!827114))

(declare-fun d!827124 () Bool)

(declare-fun lt!1014505 () Regex!8609)

(assert (=> d!827124 (validRegex!3479 lt!1014505)))

(declare-fun e!1811286 () Regex!8609)

(assert (=> d!827124 (= lt!1014505 e!1811286)))

(declare-fun c!461130 () Bool)

(assert (=> d!827124 (= c!461130 (or ((_ is EmptyExpr!8609) r!23423) ((_ is EmptyLang!8609) r!23423)))))

(assert (=> d!827124 (validRegex!3479 r!23423)))

(assert (=> d!827124 (= (derivativeStep!2298 r!23423 (h!39502 prefix!1470)) lt!1014505)))

(declare-fun call!184548 () Regex!8609)

(declare-fun c!461133 () Bool)

(declare-fun bm!184543 () Bool)

(assert (=> bm!184543 (= call!184548 (derivativeStep!2298 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423)) (h!39502 prefix!1470)))))

(declare-fun b!2860933 () Bool)

(assert (=> b!2860933 (= c!461133 ((_ is Union!8609) r!23423))))

(declare-fun e!1811290 () Regex!8609)

(declare-fun e!1811287 () Regex!8609)

(assert (=> b!2860933 (= e!1811290 e!1811287)))

(declare-fun bm!184544 () Bool)

(declare-fun call!184549 () Regex!8609)

(declare-fun call!184550 () Regex!8609)

(assert (=> bm!184544 (= call!184549 call!184550)))

(declare-fun bm!184545 () Bool)

(declare-fun call!184551 () Regex!8609)

(assert (=> bm!184545 (= call!184550 call!184551)))

(declare-fun b!2860934 () Bool)

(assert (=> b!2860934 (= e!1811286 EmptyLang!8609)))

(declare-fun b!2860935 () Bool)

(declare-fun e!1811289 () Regex!8609)

(assert (=> b!2860935 (= e!1811289 (Union!8609 (Concat!13930 call!184549 (regTwo!17730 r!23423)) EmptyLang!8609))))

(declare-fun b!2860936 () Bool)

(assert (=> b!2860936 (= e!1811290 (ite (= (h!39502 prefix!1470) (c!461082 r!23423)) EmptyExpr!8609 EmptyLang!8609))))

(declare-fun b!2860937 () Bool)

(declare-fun c!461134 () Bool)

(assert (=> b!2860937 (= c!461134 (nullable!2663 (regOne!17730 r!23423)))))

(declare-fun e!1811288 () Regex!8609)

(assert (=> b!2860937 (= e!1811288 e!1811289)))

(declare-fun b!2860938 () Bool)

(assert (=> b!2860938 (= e!1811287 (Union!8609 call!184551 call!184548))))

(declare-fun b!2860939 () Bool)

(assert (=> b!2860939 (= e!1811289 (Union!8609 (Concat!13930 call!184548 (regTwo!17730 r!23423)) call!184549))))

(declare-fun b!2860940 () Bool)

(assert (=> b!2860940 (= e!1811286 e!1811290)))

(declare-fun c!461131 () Bool)

(assert (=> b!2860940 (= c!461131 ((_ is ElementMatch!8609) r!23423))))

(declare-fun bm!184546 () Bool)

(declare-fun c!461132 () Bool)

(assert (=> bm!184546 (= call!184551 (derivativeStep!2298 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423)))) (h!39502 prefix!1470)))))

(declare-fun b!2860941 () Bool)

(assert (=> b!2860941 (= e!1811287 e!1811288)))

(assert (=> b!2860941 (= c!461132 ((_ is Star!8609) r!23423))))

(declare-fun b!2860942 () Bool)

(assert (=> b!2860942 (= e!1811288 (Concat!13930 call!184550 r!23423))))

(assert (= (and d!827124 c!461130) b!2860934))

(assert (= (and d!827124 (not c!461130)) b!2860940))

(assert (= (and b!2860940 c!461131) b!2860936))

(assert (= (and b!2860940 (not c!461131)) b!2860933))

(assert (= (and b!2860933 c!461133) b!2860938))

(assert (= (and b!2860933 (not c!461133)) b!2860941))

(assert (= (and b!2860941 c!461132) b!2860942))

(assert (= (and b!2860941 (not c!461132)) b!2860937))

(assert (= (and b!2860937 c!461134) b!2860939))

(assert (= (and b!2860937 (not c!461134)) b!2860935))

(assert (= (or b!2860939 b!2860935) bm!184544))

(assert (= (or b!2860942 bm!184544) bm!184545))

(assert (= (or b!2860938 b!2860939) bm!184543))

(assert (= (or b!2860938 bm!184545) bm!184546))

(declare-fun m!3280963 () Bool)

(assert (=> d!827124 m!3280963))

(assert (=> d!827124 m!3280887))

(declare-fun m!3280965 () Bool)

(assert (=> bm!184543 m!3280965))

(declare-fun m!3280967 () Bool)

(assert (=> b!2860937 m!3280967))

(declare-fun m!3280969 () Bool)

(assert (=> bm!184546 m!3280969))

(assert (=> b!2860781 d!827124))

(declare-fun b!2860951 () Bool)

(declare-fun e!1811295 () Bool)

(declare-fun e!1811294 () Bool)

(assert (=> b!2860951 (= e!1811295 e!1811294)))

(declare-fun res!1188071 () Bool)

(assert (=> b!2860951 (= res!1188071 (not (nullable!2663 (reg!8938 r!23423))))))

(assert (=> b!2860951 (=> (not res!1188071) (not e!1811294))))

(declare-fun b!2860952 () Bool)

(declare-fun res!1188074 () Bool)

(declare-fun e!1811298 () Bool)

(assert (=> b!2860952 (=> res!1188074 e!1811298)))

(assert (=> b!2860952 (= res!1188074 (not ((_ is Concat!13930) r!23423)))))

(declare-fun e!1811293 () Bool)

(assert (=> b!2860952 (= e!1811293 e!1811298)))

(declare-fun b!2860953 () Bool)

(declare-fun call!184554 () Bool)

(assert (=> b!2860953 (= e!1811294 call!184554)))

(declare-fun bm!184547 () Bool)

(declare-fun call!184553 () Bool)

(declare-fun c!461135 () Bool)

(assert (=> bm!184547 (= call!184553 (validRegex!3479 (ite c!461135 (regTwo!17731 r!23423) (regTwo!17730 r!23423))))))

(declare-fun bm!184548 () Bool)

(declare-fun call!184552 () Bool)

(assert (=> bm!184548 (= call!184552 call!184554)))

(declare-fun b!2860954 () Bool)

(declare-fun e!1811296 () Bool)

(assert (=> b!2860954 (= e!1811296 call!184553)))

(declare-fun b!2860955 () Bool)

(declare-fun res!1188073 () Bool)

(declare-fun e!1811299 () Bool)

(assert (=> b!2860955 (=> (not res!1188073) (not e!1811299))))

(assert (=> b!2860955 (= res!1188073 call!184552)))

(assert (=> b!2860955 (= e!1811293 e!1811299)))

(declare-fun b!2860956 () Bool)

(assert (=> b!2860956 (= e!1811299 call!184553)))

(declare-fun d!827126 () Bool)

(declare-fun res!1188070 () Bool)

(declare-fun e!1811297 () Bool)

(assert (=> d!827126 (=> res!1188070 e!1811297)))

(assert (=> d!827126 (= res!1188070 ((_ is ElementMatch!8609) r!23423))))

(assert (=> d!827126 (= (validRegex!3479 r!23423) e!1811297)))

(declare-fun b!2860957 () Bool)

(assert (=> b!2860957 (= e!1811298 e!1811296)))

(declare-fun res!1188072 () Bool)

(assert (=> b!2860957 (=> (not res!1188072) (not e!1811296))))

(assert (=> b!2860957 (= res!1188072 call!184552)))

(declare-fun b!2860958 () Bool)

(assert (=> b!2860958 (= e!1811295 e!1811293)))

(assert (=> b!2860958 (= c!461135 ((_ is Union!8609) r!23423))))

(declare-fun c!461136 () Bool)

(declare-fun bm!184549 () Bool)

(assert (=> bm!184549 (= call!184554 (validRegex!3479 (ite c!461136 (reg!8938 r!23423) (ite c!461135 (regOne!17731 r!23423) (regOne!17730 r!23423)))))))

(declare-fun b!2860959 () Bool)

(assert (=> b!2860959 (= e!1811297 e!1811295)))

(assert (=> b!2860959 (= c!461136 ((_ is Star!8609) r!23423))))

(assert (= (and d!827126 (not res!1188070)) b!2860959))

(assert (= (and b!2860959 c!461136) b!2860951))

(assert (= (and b!2860959 (not c!461136)) b!2860958))

(assert (= (and b!2860951 res!1188071) b!2860953))

(assert (= (and b!2860958 c!461135) b!2860955))

(assert (= (and b!2860958 (not c!461135)) b!2860952))

(assert (= (and b!2860955 res!1188073) b!2860956))

(assert (= (and b!2860952 (not res!1188074)) b!2860957))

(assert (= (and b!2860957 res!1188072) b!2860954))

(assert (= (or b!2860956 b!2860954) bm!184547))

(assert (= (or b!2860955 b!2860957) bm!184548))

(assert (= (or b!2860953 bm!184548) bm!184549))

(declare-fun m!3280971 () Bool)

(assert (=> b!2860951 m!3280971))

(declare-fun m!3280973 () Bool)

(assert (=> bm!184547 m!3280973))

(declare-fun m!3280975 () Bool)

(assert (=> bm!184549 m!3280975))

(assert (=> start!278402 d!827126))

(declare-fun b!2860976 () Bool)

(declare-fun e!1811305 () Bool)

(declare-fun tp!920957 () Bool)

(assert (=> b!2860976 (= e!1811305 (and tp_is_empty!14955 tp!920957))))

(assert (=> b!2860782 (= tp!920912 e!1811305)))

(assert (= (and b!2860782 ((_ is Cons!34082) (t!233241 prefix!1470))) b!2860976))

(declare-fun e!1811308 () Bool)

(assert (=> b!2860787 (= tp!920914 e!1811308)))

(declare-fun b!2860989 () Bool)

(declare-fun tp!920972 () Bool)

(assert (=> b!2860989 (= e!1811308 tp!920972)))

(declare-fun b!2860988 () Bool)

(declare-fun tp!920968 () Bool)

(declare-fun tp!920971 () Bool)

(assert (=> b!2860988 (= e!1811308 (and tp!920968 tp!920971))))

(declare-fun b!2860987 () Bool)

(assert (=> b!2860987 (= e!1811308 tp_is_empty!14955)))

(declare-fun b!2860990 () Bool)

(declare-fun tp!920970 () Bool)

(declare-fun tp!920969 () Bool)

(assert (=> b!2860990 (= e!1811308 (and tp!920970 tp!920969))))

(assert (= (and b!2860787 ((_ is ElementMatch!8609) (regOne!17730 r!23423))) b!2860987))

(assert (= (and b!2860787 ((_ is Concat!13930) (regOne!17730 r!23423))) b!2860988))

(assert (= (and b!2860787 ((_ is Star!8609) (regOne!17730 r!23423))) b!2860989))

(assert (= (and b!2860787 ((_ is Union!8609) (regOne!17730 r!23423))) b!2860990))

(declare-fun e!1811309 () Bool)

(assert (=> b!2860787 (= tp!920913 e!1811309)))

(declare-fun b!2860993 () Bool)

(declare-fun tp!920977 () Bool)

(assert (=> b!2860993 (= e!1811309 tp!920977)))

(declare-fun b!2860992 () Bool)

(declare-fun tp!920973 () Bool)

(declare-fun tp!920976 () Bool)

(assert (=> b!2860992 (= e!1811309 (and tp!920973 tp!920976))))

(declare-fun b!2860991 () Bool)

(assert (=> b!2860991 (= e!1811309 tp_is_empty!14955)))

(declare-fun b!2860994 () Bool)

(declare-fun tp!920975 () Bool)

(declare-fun tp!920974 () Bool)

(assert (=> b!2860994 (= e!1811309 (and tp!920975 tp!920974))))

(assert (= (and b!2860787 ((_ is ElementMatch!8609) (regTwo!17730 r!23423))) b!2860991))

(assert (= (and b!2860787 ((_ is Concat!13930) (regTwo!17730 r!23423))) b!2860992))

(assert (= (and b!2860787 ((_ is Star!8609) (regTwo!17730 r!23423))) b!2860993))

(assert (= (and b!2860787 ((_ is Union!8609) (regTwo!17730 r!23423))) b!2860994))

(declare-fun e!1811310 () Bool)

(assert (=> b!2860788 (= tp!920911 e!1811310)))

(declare-fun b!2860997 () Bool)

(declare-fun tp!920982 () Bool)

(assert (=> b!2860997 (= e!1811310 tp!920982)))

(declare-fun b!2860996 () Bool)

(declare-fun tp!920978 () Bool)

(declare-fun tp!920981 () Bool)

(assert (=> b!2860996 (= e!1811310 (and tp!920978 tp!920981))))

(declare-fun b!2860995 () Bool)

(assert (=> b!2860995 (= e!1811310 tp_is_empty!14955)))

(declare-fun b!2860998 () Bool)

(declare-fun tp!920980 () Bool)

(declare-fun tp!920979 () Bool)

(assert (=> b!2860998 (= e!1811310 (and tp!920980 tp!920979))))

(assert (= (and b!2860788 ((_ is ElementMatch!8609) (reg!8938 r!23423))) b!2860995))

(assert (= (and b!2860788 ((_ is Concat!13930) (reg!8938 r!23423))) b!2860996))

(assert (= (and b!2860788 ((_ is Star!8609) (reg!8938 r!23423))) b!2860997))

(assert (= (and b!2860788 ((_ is Union!8609) (reg!8938 r!23423))) b!2860998))

(declare-fun e!1811311 () Bool)

(assert (=> b!2860784 (= tp!920915 e!1811311)))

(declare-fun b!2861001 () Bool)

(declare-fun tp!920987 () Bool)

(assert (=> b!2861001 (= e!1811311 tp!920987)))

(declare-fun b!2861000 () Bool)

(declare-fun tp!920983 () Bool)

(declare-fun tp!920986 () Bool)

(assert (=> b!2861000 (= e!1811311 (and tp!920983 tp!920986))))

(declare-fun b!2860999 () Bool)

(assert (=> b!2860999 (= e!1811311 tp_is_empty!14955)))

(declare-fun b!2861002 () Bool)

(declare-fun tp!920985 () Bool)

(declare-fun tp!920984 () Bool)

(assert (=> b!2861002 (= e!1811311 (and tp!920985 tp!920984))))

(assert (= (and b!2860784 ((_ is ElementMatch!8609) (regOne!17731 r!23423))) b!2860999))

(assert (= (and b!2860784 ((_ is Concat!13930) (regOne!17731 r!23423))) b!2861000))

(assert (= (and b!2860784 ((_ is Star!8609) (regOne!17731 r!23423))) b!2861001))

(assert (= (and b!2860784 ((_ is Union!8609) (regOne!17731 r!23423))) b!2861002))

(declare-fun e!1811312 () Bool)

(assert (=> b!2860784 (= tp!920916 e!1811312)))

(declare-fun b!2861005 () Bool)

(declare-fun tp!920992 () Bool)

(assert (=> b!2861005 (= e!1811312 tp!920992)))

(declare-fun b!2861004 () Bool)

(declare-fun tp!920988 () Bool)

(declare-fun tp!920991 () Bool)

(assert (=> b!2861004 (= e!1811312 (and tp!920988 tp!920991))))

(declare-fun b!2861003 () Bool)

(assert (=> b!2861003 (= e!1811312 tp_is_empty!14955)))

(declare-fun b!2861006 () Bool)

(declare-fun tp!920990 () Bool)

(declare-fun tp!920989 () Bool)

(assert (=> b!2861006 (= e!1811312 (and tp!920990 tp!920989))))

(assert (= (and b!2860784 ((_ is ElementMatch!8609) (regTwo!17731 r!23423))) b!2861003))

(assert (= (and b!2860784 ((_ is Concat!13930) (regTwo!17731 r!23423))) b!2861004))

(assert (= (and b!2860784 ((_ is Star!8609) (regTwo!17731 r!23423))) b!2861005))

(assert (= (and b!2860784 ((_ is Union!8609) (regTwo!17731 r!23423))) b!2861006))

(check-sat (not b!2860992) (not b!2860812) (not b!2860822) (not b!2861005) tp_is_empty!14955 (not b!2861002) (not bm!184520) (not b!2860997) (not bm!184549) (not b!2860823) (not b!2860811) (not d!827124) (not bm!184522) (not b!2861001) (not b!2860993) (not d!827110) (not b!2860994) (not b!2860990) (not b!2861006) (not b!2860996) (not bm!184547) (not b!2860998) (not d!827112) (not b!2860976) (not b!2861004) (not bm!184546) (not b!2860937) (not b!2860951) (not b!2860859) (not b!2861000) (not b!2860988) (not b!2860989) (not bm!184543))
(check-sat)
(get-model)

(declare-fun b!2861007 () Bool)

(declare-fun e!1811315 () Bool)

(declare-fun e!1811314 () Bool)

(assert (=> b!2861007 (= e!1811315 e!1811314)))

(declare-fun res!1188076 () Bool)

(assert (=> b!2861007 (= res!1188076 (not (nullable!2663 (reg!8938 lt!1014505))))))

(assert (=> b!2861007 (=> (not res!1188076) (not e!1811314))))

(declare-fun b!2861008 () Bool)

(declare-fun res!1188079 () Bool)

(declare-fun e!1811318 () Bool)

(assert (=> b!2861008 (=> res!1188079 e!1811318)))

(assert (=> b!2861008 (= res!1188079 (not ((_ is Concat!13930) lt!1014505)))))

(declare-fun e!1811313 () Bool)

(assert (=> b!2861008 (= e!1811313 e!1811318)))

(declare-fun b!2861009 () Bool)

(declare-fun call!184557 () Bool)

(assert (=> b!2861009 (= e!1811314 call!184557)))

(declare-fun bm!184550 () Bool)

(declare-fun call!184556 () Bool)

(declare-fun c!461137 () Bool)

(assert (=> bm!184550 (= call!184556 (validRegex!3479 (ite c!461137 (regTwo!17731 lt!1014505) (regTwo!17730 lt!1014505))))))

(declare-fun bm!184551 () Bool)

(declare-fun call!184555 () Bool)

(assert (=> bm!184551 (= call!184555 call!184557)))

(declare-fun b!2861010 () Bool)

(declare-fun e!1811316 () Bool)

(assert (=> b!2861010 (= e!1811316 call!184556)))

(declare-fun b!2861011 () Bool)

(declare-fun res!1188078 () Bool)

(declare-fun e!1811319 () Bool)

(assert (=> b!2861011 (=> (not res!1188078) (not e!1811319))))

(assert (=> b!2861011 (= res!1188078 call!184555)))

(assert (=> b!2861011 (= e!1811313 e!1811319)))

(declare-fun b!2861012 () Bool)

(assert (=> b!2861012 (= e!1811319 call!184556)))

(declare-fun d!827128 () Bool)

(declare-fun res!1188075 () Bool)

(declare-fun e!1811317 () Bool)

(assert (=> d!827128 (=> res!1188075 e!1811317)))

(assert (=> d!827128 (= res!1188075 ((_ is ElementMatch!8609) lt!1014505))))

(assert (=> d!827128 (= (validRegex!3479 lt!1014505) e!1811317)))

(declare-fun b!2861013 () Bool)

(assert (=> b!2861013 (= e!1811318 e!1811316)))

(declare-fun res!1188077 () Bool)

(assert (=> b!2861013 (=> (not res!1188077) (not e!1811316))))

(assert (=> b!2861013 (= res!1188077 call!184555)))

(declare-fun b!2861014 () Bool)

(assert (=> b!2861014 (= e!1811315 e!1811313)))

(assert (=> b!2861014 (= c!461137 ((_ is Union!8609) lt!1014505))))

(declare-fun c!461138 () Bool)

(declare-fun bm!184552 () Bool)

(assert (=> bm!184552 (= call!184557 (validRegex!3479 (ite c!461138 (reg!8938 lt!1014505) (ite c!461137 (regOne!17731 lt!1014505) (regOne!17730 lt!1014505)))))))

(declare-fun b!2861015 () Bool)

(assert (=> b!2861015 (= e!1811317 e!1811315)))

(assert (=> b!2861015 (= c!461138 ((_ is Star!8609) lt!1014505))))

(assert (= (and d!827128 (not res!1188075)) b!2861015))

(assert (= (and b!2861015 c!461138) b!2861007))

(assert (= (and b!2861015 (not c!461138)) b!2861014))

(assert (= (and b!2861007 res!1188076) b!2861009))

(assert (= (and b!2861014 c!461137) b!2861011))

(assert (= (and b!2861014 (not c!461137)) b!2861008))

(assert (= (and b!2861011 res!1188078) b!2861012))

(assert (= (and b!2861008 (not res!1188079)) b!2861013))

(assert (= (and b!2861013 res!1188077) b!2861010))

(assert (= (or b!2861012 b!2861010) bm!184550))

(assert (= (or b!2861011 b!2861013) bm!184551))

(assert (= (or b!2861009 bm!184551) bm!184552))

(declare-fun m!3280977 () Bool)

(assert (=> b!2861007 m!3280977))

(declare-fun m!3280979 () Bool)

(assert (=> bm!184550 m!3280979))

(declare-fun m!3280981 () Bool)

(assert (=> bm!184552 m!3280981))

(assert (=> d!827124 d!827128))

(assert (=> d!827124 d!827126))

(declare-fun d!827130 () Bool)

(declare-fun lostCauseFct!221 (Regex!8609) Bool)

(assert (=> d!827130 (= (lostCause!761 r!23423) (lostCauseFct!221 r!23423))))

(declare-fun bs!520393 () Bool)

(assert (= bs!520393 d!827130))

(declare-fun m!3280983 () Bool)

(assert (=> bs!520393 m!3280983))

(assert (=> b!2860822 d!827130))

(declare-fun d!827132 () Bool)

(declare-fun c!461139 () Bool)

(assert (=> d!827132 (= c!461139 (isEmpty!18616 (tail!4516 prefix!1470)))))

(declare-fun e!1811320 () Bool)

(assert (=> d!827132 (= (prefixMatch!917 (derivativeStep!2298 r!23423 (head!6291 prefix!1470)) (tail!4516 prefix!1470)) e!1811320)))

(declare-fun b!2861016 () Bool)

(assert (=> b!2861016 (= e!1811320 (not (lostCause!761 (derivativeStep!2298 r!23423 (head!6291 prefix!1470)))))))

(declare-fun b!2861017 () Bool)

(assert (=> b!2861017 (= e!1811320 (prefixMatch!917 (derivativeStep!2298 (derivativeStep!2298 r!23423 (head!6291 prefix!1470)) (head!6291 (tail!4516 prefix!1470))) (tail!4516 (tail!4516 prefix!1470))))))

(assert (= (and d!827132 c!461139) b!2861016))

(assert (= (and d!827132 (not c!461139)) b!2861017))

(assert (=> d!827132 m!3280909))

(declare-fun m!3280985 () Bool)

(assert (=> d!827132 m!3280985))

(assert (=> b!2861016 m!3280907))

(declare-fun m!3280987 () Bool)

(assert (=> b!2861016 m!3280987))

(assert (=> b!2861017 m!3280909))

(declare-fun m!3280989 () Bool)

(assert (=> b!2861017 m!3280989))

(assert (=> b!2861017 m!3280907))

(assert (=> b!2861017 m!3280989))

(declare-fun m!3280991 () Bool)

(assert (=> b!2861017 m!3280991))

(assert (=> b!2861017 m!3280909))

(declare-fun m!3280993 () Bool)

(assert (=> b!2861017 m!3280993))

(assert (=> b!2861017 m!3280991))

(assert (=> b!2861017 m!3280993))

(declare-fun m!3280995 () Bool)

(assert (=> b!2861017 m!3280995))

(assert (=> b!2860823 d!827132))

(declare-fun d!827134 () Bool)

(declare-fun lt!1014506 () Regex!8609)

(assert (=> d!827134 (validRegex!3479 lt!1014506)))

(declare-fun e!1811321 () Regex!8609)

(assert (=> d!827134 (= lt!1014506 e!1811321)))

(declare-fun c!461140 () Bool)

(assert (=> d!827134 (= c!461140 (or ((_ is EmptyExpr!8609) r!23423) ((_ is EmptyLang!8609) r!23423)))))

(assert (=> d!827134 (validRegex!3479 r!23423)))

(assert (=> d!827134 (= (derivativeStep!2298 r!23423 (head!6291 prefix!1470)) lt!1014506)))

(declare-fun c!461143 () Bool)

(declare-fun call!184558 () Regex!8609)

(declare-fun bm!184553 () Bool)

(assert (=> bm!184553 (= call!184558 (derivativeStep!2298 (ite c!461143 (regTwo!17731 r!23423) (regOne!17730 r!23423)) (head!6291 prefix!1470)))))

(declare-fun b!2861018 () Bool)

(assert (=> b!2861018 (= c!461143 ((_ is Union!8609) r!23423))))

(declare-fun e!1811325 () Regex!8609)

(declare-fun e!1811322 () Regex!8609)

(assert (=> b!2861018 (= e!1811325 e!1811322)))

(declare-fun bm!184554 () Bool)

(declare-fun call!184559 () Regex!8609)

(declare-fun call!184560 () Regex!8609)

(assert (=> bm!184554 (= call!184559 call!184560)))

(declare-fun bm!184555 () Bool)

(declare-fun call!184561 () Regex!8609)

(assert (=> bm!184555 (= call!184560 call!184561)))

(declare-fun b!2861019 () Bool)

(assert (=> b!2861019 (= e!1811321 EmptyLang!8609)))

(declare-fun b!2861020 () Bool)

(declare-fun e!1811324 () Regex!8609)

(assert (=> b!2861020 (= e!1811324 (Union!8609 (Concat!13930 call!184559 (regTwo!17730 r!23423)) EmptyLang!8609))))

(declare-fun b!2861021 () Bool)

(assert (=> b!2861021 (= e!1811325 (ite (= (head!6291 prefix!1470) (c!461082 r!23423)) EmptyExpr!8609 EmptyLang!8609))))

(declare-fun b!2861022 () Bool)

(declare-fun c!461144 () Bool)

(assert (=> b!2861022 (= c!461144 (nullable!2663 (regOne!17730 r!23423)))))

(declare-fun e!1811323 () Regex!8609)

(assert (=> b!2861022 (= e!1811323 e!1811324)))

(declare-fun b!2861023 () Bool)

(assert (=> b!2861023 (= e!1811322 (Union!8609 call!184561 call!184558))))

(declare-fun b!2861024 () Bool)

(assert (=> b!2861024 (= e!1811324 (Union!8609 (Concat!13930 call!184558 (regTwo!17730 r!23423)) call!184559))))

(declare-fun b!2861025 () Bool)

(assert (=> b!2861025 (= e!1811321 e!1811325)))

(declare-fun c!461141 () Bool)

(assert (=> b!2861025 (= c!461141 ((_ is ElementMatch!8609) r!23423))))

(declare-fun c!461142 () Bool)

(declare-fun bm!184556 () Bool)

(assert (=> bm!184556 (= call!184561 (derivativeStep!2298 (ite c!461143 (regOne!17731 r!23423) (ite c!461142 (reg!8938 r!23423) (ite c!461144 (regTwo!17730 r!23423) (regOne!17730 r!23423)))) (head!6291 prefix!1470)))))

(declare-fun b!2861026 () Bool)

(assert (=> b!2861026 (= e!1811322 e!1811323)))

(assert (=> b!2861026 (= c!461142 ((_ is Star!8609) r!23423))))

(declare-fun b!2861027 () Bool)

(assert (=> b!2861027 (= e!1811323 (Concat!13930 call!184560 r!23423))))

(assert (= (and d!827134 c!461140) b!2861019))

(assert (= (and d!827134 (not c!461140)) b!2861025))

(assert (= (and b!2861025 c!461141) b!2861021))

(assert (= (and b!2861025 (not c!461141)) b!2861018))

(assert (= (and b!2861018 c!461143) b!2861023))

(assert (= (and b!2861018 (not c!461143)) b!2861026))

(assert (= (and b!2861026 c!461142) b!2861027))

(assert (= (and b!2861026 (not c!461142)) b!2861022))

(assert (= (and b!2861022 c!461144) b!2861024))

(assert (= (and b!2861022 (not c!461144)) b!2861020))

(assert (= (or b!2861024 b!2861020) bm!184554))

(assert (= (or b!2861027 bm!184554) bm!184555))

(assert (= (or b!2861023 b!2861024) bm!184553))

(assert (= (or b!2861023 bm!184555) bm!184556))

(declare-fun m!3280997 () Bool)

(assert (=> d!827134 m!3280997))

(assert (=> d!827134 m!3280887))

(assert (=> bm!184553 m!3280905))

(declare-fun m!3280999 () Bool)

(assert (=> bm!184553 m!3280999))

(assert (=> b!2861022 m!3280967))

(assert (=> bm!184556 m!3280905))

(declare-fun m!3281001 () Bool)

(assert (=> bm!184556 m!3281001))

(assert (=> b!2860823 d!827134))

(declare-fun d!827136 () Bool)

(assert (=> d!827136 (= (head!6291 prefix!1470) (h!39502 prefix!1470))))

(assert (=> b!2860823 d!827136))

(declare-fun d!827138 () Bool)

(assert (=> d!827138 (= (tail!4516 prefix!1470) (t!233241 prefix!1470))))

(assert (=> b!2860823 d!827138))

(declare-fun d!827140 () Bool)

(assert (=> d!827140 (= (isEmpty!18616 prefix!1470) ((_ is Nil!34082) prefix!1470))))

(assert (=> d!827112 d!827140))

(declare-fun d!827142 () Bool)

(declare-fun c!461145 () Bool)

(assert (=> d!827142 (= c!461145 (isEmpty!18616 (tail!4516 (t!233241 prefix!1470))))))

(declare-fun e!1811326 () Bool)

(assert (=> d!827142 (= (prefixMatch!917 (derivativeStep!2298 lt!1014499 (head!6291 (t!233241 prefix!1470))) (tail!4516 (t!233241 prefix!1470))) e!1811326)))

(declare-fun b!2861028 () Bool)

(assert (=> b!2861028 (= e!1811326 (not (lostCause!761 (derivativeStep!2298 lt!1014499 (head!6291 (t!233241 prefix!1470))))))))

(declare-fun b!2861029 () Bool)

(assert (=> b!2861029 (= e!1811326 (prefixMatch!917 (derivativeStep!2298 (derivativeStep!2298 lt!1014499 (head!6291 (t!233241 prefix!1470))) (head!6291 (tail!4516 (t!233241 prefix!1470)))) (tail!4516 (tail!4516 (t!233241 prefix!1470)))))))

(assert (= (and d!827142 c!461145) b!2861028))

(assert (= (and d!827142 (not c!461145)) b!2861029))

(assert (=> d!827142 m!3280897))

(declare-fun m!3281003 () Bool)

(assert (=> d!827142 m!3281003))

(assert (=> b!2861028 m!3280895))

(declare-fun m!3281005 () Bool)

(assert (=> b!2861028 m!3281005))

(assert (=> b!2861029 m!3280897))

(declare-fun m!3281007 () Bool)

(assert (=> b!2861029 m!3281007))

(assert (=> b!2861029 m!3280895))

(assert (=> b!2861029 m!3281007))

(declare-fun m!3281009 () Bool)

(assert (=> b!2861029 m!3281009))

(assert (=> b!2861029 m!3280897))

(declare-fun m!3281011 () Bool)

(assert (=> b!2861029 m!3281011))

(assert (=> b!2861029 m!3281009))

(assert (=> b!2861029 m!3281011))

(declare-fun m!3281013 () Bool)

(assert (=> b!2861029 m!3281013))

(assert (=> b!2860812 d!827142))

(declare-fun d!827144 () Bool)

(declare-fun lt!1014507 () Regex!8609)

(assert (=> d!827144 (validRegex!3479 lt!1014507)))

(declare-fun e!1811327 () Regex!8609)

(assert (=> d!827144 (= lt!1014507 e!1811327)))

(declare-fun c!461146 () Bool)

(assert (=> d!827144 (= c!461146 (or ((_ is EmptyExpr!8609) lt!1014499) ((_ is EmptyLang!8609) lt!1014499)))))

(assert (=> d!827144 (validRegex!3479 lt!1014499)))

(assert (=> d!827144 (= (derivativeStep!2298 lt!1014499 (head!6291 (t!233241 prefix!1470))) lt!1014507)))

(declare-fun c!461149 () Bool)

(declare-fun bm!184557 () Bool)

(declare-fun call!184562 () Regex!8609)

(assert (=> bm!184557 (= call!184562 (derivativeStep!2298 (ite c!461149 (regTwo!17731 lt!1014499) (regOne!17730 lt!1014499)) (head!6291 (t!233241 prefix!1470))))))

(declare-fun b!2861030 () Bool)

(assert (=> b!2861030 (= c!461149 ((_ is Union!8609) lt!1014499))))

(declare-fun e!1811331 () Regex!8609)

(declare-fun e!1811328 () Regex!8609)

(assert (=> b!2861030 (= e!1811331 e!1811328)))

(declare-fun bm!184558 () Bool)

(declare-fun call!184563 () Regex!8609)

(declare-fun call!184564 () Regex!8609)

(assert (=> bm!184558 (= call!184563 call!184564)))

(declare-fun bm!184559 () Bool)

(declare-fun call!184565 () Regex!8609)

(assert (=> bm!184559 (= call!184564 call!184565)))

(declare-fun b!2861031 () Bool)

(assert (=> b!2861031 (= e!1811327 EmptyLang!8609)))

(declare-fun b!2861032 () Bool)

(declare-fun e!1811330 () Regex!8609)

(assert (=> b!2861032 (= e!1811330 (Union!8609 (Concat!13930 call!184563 (regTwo!17730 lt!1014499)) EmptyLang!8609))))

(declare-fun b!2861033 () Bool)

(assert (=> b!2861033 (= e!1811331 (ite (= (head!6291 (t!233241 prefix!1470)) (c!461082 lt!1014499)) EmptyExpr!8609 EmptyLang!8609))))

(declare-fun b!2861034 () Bool)

(declare-fun c!461150 () Bool)

(assert (=> b!2861034 (= c!461150 (nullable!2663 (regOne!17730 lt!1014499)))))

(declare-fun e!1811329 () Regex!8609)

(assert (=> b!2861034 (= e!1811329 e!1811330)))

(declare-fun b!2861035 () Bool)

(assert (=> b!2861035 (= e!1811328 (Union!8609 call!184565 call!184562))))

(declare-fun b!2861036 () Bool)

(assert (=> b!2861036 (= e!1811330 (Union!8609 (Concat!13930 call!184562 (regTwo!17730 lt!1014499)) call!184563))))

(declare-fun b!2861037 () Bool)

(assert (=> b!2861037 (= e!1811327 e!1811331)))

(declare-fun c!461147 () Bool)

(assert (=> b!2861037 (= c!461147 ((_ is ElementMatch!8609) lt!1014499))))

(declare-fun c!461148 () Bool)

(declare-fun bm!184560 () Bool)

(assert (=> bm!184560 (= call!184565 (derivativeStep!2298 (ite c!461149 (regOne!17731 lt!1014499) (ite c!461148 (reg!8938 lt!1014499) (ite c!461150 (regTwo!17730 lt!1014499) (regOne!17730 lt!1014499)))) (head!6291 (t!233241 prefix!1470))))))

(declare-fun b!2861038 () Bool)

(assert (=> b!2861038 (= e!1811328 e!1811329)))

(assert (=> b!2861038 (= c!461148 ((_ is Star!8609) lt!1014499))))

(declare-fun b!2861039 () Bool)

(assert (=> b!2861039 (= e!1811329 (Concat!13930 call!184564 lt!1014499))))

(assert (= (and d!827144 c!461146) b!2861031))

(assert (= (and d!827144 (not c!461146)) b!2861037))

(assert (= (and b!2861037 c!461147) b!2861033))

(assert (= (and b!2861037 (not c!461147)) b!2861030))

(assert (= (and b!2861030 c!461149) b!2861035))

(assert (= (and b!2861030 (not c!461149)) b!2861038))

(assert (= (and b!2861038 c!461148) b!2861039))

(assert (= (and b!2861038 (not c!461148)) b!2861034))

(assert (= (and b!2861034 c!461150) b!2861036))

(assert (= (and b!2861034 (not c!461150)) b!2861032))

(assert (= (or b!2861036 b!2861032) bm!184558))

(assert (= (or b!2861039 bm!184558) bm!184559))

(assert (= (or b!2861035 b!2861036) bm!184557))

(assert (= (or b!2861035 bm!184559) bm!184560))

(declare-fun m!3281015 () Bool)

(assert (=> d!827144 m!3281015))

(assert (=> d!827144 m!3280881))

(assert (=> bm!184557 m!3280893))

(declare-fun m!3281017 () Bool)

(assert (=> bm!184557 m!3281017))

(declare-fun m!3281019 () Bool)

(assert (=> b!2861034 m!3281019))

(assert (=> bm!184560 m!3280893))

(declare-fun m!3281021 () Bool)

(assert (=> bm!184560 m!3281021))

(assert (=> b!2860812 d!827144))

(declare-fun d!827146 () Bool)

(assert (=> d!827146 (= (head!6291 (t!233241 prefix!1470)) (h!39502 (t!233241 prefix!1470)))))

(assert (=> b!2860812 d!827146))

(declare-fun d!827148 () Bool)

(assert (=> d!827148 (= (tail!4516 (t!233241 prefix!1470)) (t!233241 (t!233241 prefix!1470)))))

(assert (=> b!2860812 d!827148))

(declare-fun d!827150 () Bool)

(declare-fun lt!1014508 () Regex!8609)

(assert (=> d!827150 (validRegex!3479 lt!1014508)))

(declare-fun e!1811332 () Regex!8609)

(assert (=> d!827150 (= lt!1014508 e!1811332)))

(declare-fun c!461151 () Bool)

(assert (=> d!827150 (= c!461151 (or ((_ is EmptyExpr!8609) (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423))))) ((_ is EmptyLang!8609) (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423)))))))))

(assert (=> d!827150 (validRegex!3479 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423)))))))

(assert (=> d!827150 (= (derivativeStep!2298 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423)))) (h!39502 prefix!1470)) lt!1014508)))

(declare-fun call!184566 () Regex!8609)

(declare-fun bm!184561 () Bool)

(declare-fun c!461154 () Bool)

(assert (=> bm!184561 (= call!184566 (derivativeStep!2298 (ite c!461154 (regTwo!17731 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423))))) (regOne!17730 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423)))))) (h!39502 prefix!1470)))))

(declare-fun b!2861040 () Bool)

(assert (=> b!2861040 (= c!461154 ((_ is Union!8609) (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423))))))))

(declare-fun e!1811336 () Regex!8609)

(declare-fun e!1811333 () Regex!8609)

(assert (=> b!2861040 (= e!1811336 e!1811333)))

(declare-fun bm!184562 () Bool)

(declare-fun call!184567 () Regex!8609)

(declare-fun call!184568 () Regex!8609)

(assert (=> bm!184562 (= call!184567 call!184568)))

(declare-fun bm!184563 () Bool)

(declare-fun call!184569 () Regex!8609)

(assert (=> bm!184563 (= call!184568 call!184569)))

(declare-fun b!2861041 () Bool)

(assert (=> b!2861041 (= e!1811332 EmptyLang!8609)))

(declare-fun e!1811335 () Regex!8609)

(declare-fun b!2861042 () Bool)

(assert (=> b!2861042 (= e!1811335 (Union!8609 (Concat!13930 call!184567 (regTwo!17730 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423)))))) EmptyLang!8609))))

(declare-fun b!2861043 () Bool)

(assert (=> b!2861043 (= e!1811336 (ite (= (h!39502 prefix!1470) (c!461082 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423)))))) EmptyExpr!8609 EmptyLang!8609))))

(declare-fun b!2861044 () Bool)

(declare-fun c!461155 () Bool)

(assert (=> b!2861044 (= c!461155 (nullable!2663 (regOne!17730 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423)))))))))

(declare-fun e!1811334 () Regex!8609)

(assert (=> b!2861044 (= e!1811334 e!1811335)))

(declare-fun b!2861045 () Bool)

(assert (=> b!2861045 (= e!1811333 (Union!8609 call!184569 call!184566))))

(declare-fun b!2861046 () Bool)

(assert (=> b!2861046 (= e!1811335 (Union!8609 (Concat!13930 call!184566 (regTwo!17730 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423)))))) call!184567))))

(declare-fun b!2861047 () Bool)

(assert (=> b!2861047 (= e!1811332 e!1811336)))

(declare-fun c!461152 () Bool)

(assert (=> b!2861047 (= c!461152 ((_ is ElementMatch!8609) (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423))))))))

(declare-fun bm!184564 () Bool)

(declare-fun c!461153 () Bool)

(assert (=> bm!184564 (= call!184569 (derivativeStep!2298 (ite c!461154 (regOne!17731 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423))))) (ite c!461153 (reg!8938 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423))))) (ite c!461155 (regTwo!17730 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423))))) (regOne!17730 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423)))))))) (h!39502 prefix!1470)))))

(declare-fun b!2861048 () Bool)

(assert (=> b!2861048 (= e!1811333 e!1811334)))

(assert (=> b!2861048 (= c!461153 ((_ is Star!8609) (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423))))))))

(declare-fun b!2861049 () Bool)

(assert (=> b!2861049 (= e!1811334 (Concat!13930 call!184568 (ite c!461133 (regOne!17731 r!23423) (ite c!461132 (reg!8938 r!23423) (ite c!461134 (regTwo!17730 r!23423) (regOne!17730 r!23423))))))))

(assert (= (and d!827150 c!461151) b!2861041))

(assert (= (and d!827150 (not c!461151)) b!2861047))

(assert (= (and b!2861047 c!461152) b!2861043))

(assert (= (and b!2861047 (not c!461152)) b!2861040))

(assert (= (and b!2861040 c!461154) b!2861045))

(assert (= (and b!2861040 (not c!461154)) b!2861048))

(assert (= (and b!2861048 c!461153) b!2861049))

(assert (= (and b!2861048 (not c!461153)) b!2861044))

(assert (= (and b!2861044 c!461155) b!2861046))

(assert (= (and b!2861044 (not c!461155)) b!2861042))

(assert (= (or b!2861046 b!2861042) bm!184562))

(assert (= (or b!2861049 bm!184562) bm!184563))

(assert (= (or b!2861045 b!2861046) bm!184561))

(assert (= (or b!2861045 bm!184563) bm!184564))

(declare-fun m!3281023 () Bool)

(assert (=> d!827150 m!3281023))

(declare-fun m!3281025 () Bool)

(assert (=> d!827150 m!3281025))

(declare-fun m!3281027 () Bool)

(assert (=> bm!184561 m!3281027))

(declare-fun m!3281029 () Bool)

(assert (=> b!2861044 m!3281029))

(declare-fun m!3281031 () Bool)

(assert (=> bm!184564 m!3281031))

(assert (=> bm!184546 d!827150))

(declare-fun b!2861050 () Bool)

(declare-fun e!1811339 () Bool)

(declare-fun e!1811338 () Bool)

(assert (=> b!2861050 (= e!1811339 e!1811338)))

(declare-fun res!1188081 () Bool)

(assert (=> b!2861050 (= res!1188081 (not (nullable!2663 (reg!8938 (ite c!461135 (regTwo!17731 r!23423) (regTwo!17730 r!23423))))))))

(assert (=> b!2861050 (=> (not res!1188081) (not e!1811338))))

(declare-fun b!2861051 () Bool)

(declare-fun res!1188084 () Bool)

(declare-fun e!1811342 () Bool)

(assert (=> b!2861051 (=> res!1188084 e!1811342)))

(assert (=> b!2861051 (= res!1188084 (not ((_ is Concat!13930) (ite c!461135 (regTwo!17731 r!23423) (regTwo!17730 r!23423)))))))

(declare-fun e!1811337 () Bool)

(assert (=> b!2861051 (= e!1811337 e!1811342)))

(declare-fun b!2861052 () Bool)

(declare-fun call!184572 () Bool)

(assert (=> b!2861052 (= e!1811338 call!184572)))

(declare-fun call!184571 () Bool)

(declare-fun c!461156 () Bool)

(declare-fun bm!184565 () Bool)

(assert (=> bm!184565 (= call!184571 (validRegex!3479 (ite c!461156 (regTwo!17731 (ite c!461135 (regTwo!17731 r!23423) (regTwo!17730 r!23423))) (regTwo!17730 (ite c!461135 (regTwo!17731 r!23423) (regTwo!17730 r!23423))))))))

(declare-fun bm!184566 () Bool)

(declare-fun call!184570 () Bool)

(assert (=> bm!184566 (= call!184570 call!184572)))

(declare-fun b!2861053 () Bool)

(declare-fun e!1811340 () Bool)

(assert (=> b!2861053 (= e!1811340 call!184571)))

(declare-fun b!2861054 () Bool)

(declare-fun res!1188083 () Bool)

(declare-fun e!1811343 () Bool)

(assert (=> b!2861054 (=> (not res!1188083) (not e!1811343))))

(assert (=> b!2861054 (= res!1188083 call!184570)))

(assert (=> b!2861054 (= e!1811337 e!1811343)))

(declare-fun b!2861055 () Bool)

(assert (=> b!2861055 (= e!1811343 call!184571)))

(declare-fun d!827152 () Bool)

(declare-fun res!1188080 () Bool)

(declare-fun e!1811341 () Bool)

(assert (=> d!827152 (=> res!1188080 e!1811341)))

(assert (=> d!827152 (= res!1188080 ((_ is ElementMatch!8609) (ite c!461135 (regTwo!17731 r!23423) (regTwo!17730 r!23423))))))

(assert (=> d!827152 (= (validRegex!3479 (ite c!461135 (regTwo!17731 r!23423) (regTwo!17730 r!23423))) e!1811341)))

(declare-fun b!2861056 () Bool)

(assert (=> b!2861056 (= e!1811342 e!1811340)))

(declare-fun res!1188082 () Bool)

(assert (=> b!2861056 (=> (not res!1188082) (not e!1811340))))

(assert (=> b!2861056 (= res!1188082 call!184570)))

(declare-fun b!2861057 () Bool)

(assert (=> b!2861057 (= e!1811339 e!1811337)))

(assert (=> b!2861057 (= c!461156 ((_ is Union!8609) (ite c!461135 (regTwo!17731 r!23423) (regTwo!17730 r!23423))))))

(declare-fun c!461157 () Bool)

(declare-fun bm!184567 () Bool)

(assert (=> bm!184567 (= call!184572 (validRegex!3479 (ite c!461157 (reg!8938 (ite c!461135 (regTwo!17731 r!23423) (regTwo!17730 r!23423))) (ite c!461156 (regOne!17731 (ite c!461135 (regTwo!17731 r!23423) (regTwo!17730 r!23423))) (regOne!17730 (ite c!461135 (regTwo!17731 r!23423) (regTwo!17730 r!23423)))))))))

(declare-fun b!2861058 () Bool)

(assert (=> b!2861058 (= e!1811341 e!1811339)))

(assert (=> b!2861058 (= c!461157 ((_ is Star!8609) (ite c!461135 (regTwo!17731 r!23423) (regTwo!17730 r!23423))))))

(assert (= (and d!827152 (not res!1188080)) b!2861058))

(assert (= (and b!2861058 c!461157) b!2861050))

(assert (= (and b!2861058 (not c!461157)) b!2861057))

(assert (= (and b!2861050 res!1188081) b!2861052))

(assert (= (and b!2861057 c!461156) b!2861054))

(assert (= (and b!2861057 (not c!461156)) b!2861051))

(assert (= (and b!2861054 res!1188083) b!2861055))

(assert (= (and b!2861051 (not res!1188084)) b!2861056))

(assert (= (and b!2861056 res!1188082) b!2861053))

(assert (= (or b!2861055 b!2861053) bm!184565))

(assert (= (or b!2861054 b!2861056) bm!184566))

(assert (= (or b!2861052 bm!184566) bm!184567))

(declare-fun m!3281033 () Bool)

(assert (=> b!2861050 m!3281033))

(declare-fun m!3281035 () Bool)

(assert (=> bm!184565 m!3281035))

(declare-fun m!3281037 () Bool)

(assert (=> bm!184567 m!3281037))

(assert (=> bm!184547 d!827152))

(declare-fun b!2861059 () Bool)

(declare-fun e!1811346 () Bool)

(declare-fun e!1811345 () Bool)

(assert (=> b!2861059 (= e!1811346 e!1811345)))

(declare-fun res!1188086 () Bool)

(assert (=> b!2861059 (= res!1188086 (not (nullable!2663 (reg!8938 (ite c!461103 (regTwo!17731 lt!1014499) (regTwo!17730 lt!1014499))))))))

(assert (=> b!2861059 (=> (not res!1188086) (not e!1811345))))

(declare-fun b!2861060 () Bool)

(declare-fun res!1188089 () Bool)

(declare-fun e!1811349 () Bool)

(assert (=> b!2861060 (=> res!1188089 e!1811349)))

(assert (=> b!2861060 (= res!1188089 (not ((_ is Concat!13930) (ite c!461103 (regTwo!17731 lt!1014499) (regTwo!17730 lt!1014499)))))))

(declare-fun e!1811344 () Bool)

(assert (=> b!2861060 (= e!1811344 e!1811349)))

(declare-fun b!2861061 () Bool)

(declare-fun call!184575 () Bool)

(assert (=> b!2861061 (= e!1811345 call!184575)))

(declare-fun bm!184568 () Bool)

(declare-fun c!461158 () Bool)

(declare-fun call!184574 () Bool)

(assert (=> bm!184568 (= call!184574 (validRegex!3479 (ite c!461158 (regTwo!17731 (ite c!461103 (regTwo!17731 lt!1014499) (regTwo!17730 lt!1014499))) (regTwo!17730 (ite c!461103 (regTwo!17731 lt!1014499) (regTwo!17730 lt!1014499))))))))

(declare-fun bm!184569 () Bool)

(declare-fun call!184573 () Bool)

(assert (=> bm!184569 (= call!184573 call!184575)))

(declare-fun b!2861062 () Bool)

(declare-fun e!1811347 () Bool)

(assert (=> b!2861062 (= e!1811347 call!184574)))

(declare-fun b!2861063 () Bool)

(declare-fun res!1188088 () Bool)

(declare-fun e!1811350 () Bool)

(assert (=> b!2861063 (=> (not res!1188088) (not e!1811350))))

(assert (=> b!2861063 (= res!1188088 call!184573)))

(assert (=> b!2861063 (= e!1811344 e!1811350)))

(declare-fun b!2861064 () Bool)

(assert (=> b!2861064 (= e!1811350 call!184574)))

(declare-fun d!827154 () Bool)

(declare-fun res!1188085 () Bool)

(declare-fun e!1811348 () Bool)

(assert (=> d!827154 (=> res!1188085 e!1811348)))

(assert (=> d!827154 (= res!1188085 ((_ is ElementMatch!8609) (ite c!461103 (regTwo!17731 lt!1014499) (regTwo!17730 lt!1014499))))))

(assert (=> d!827154 (= (validRegex!3479 (ite c!461103 (regTwo!17731 lt!1014499) (regTwo!17730 lt!1014499))) e!1811348)))

(declare-fun b!2861065 () Bool)

(assert (=> b!2861065 (= e!1811349 e!1811347)))

(declare-fun res!1188087 () Bool)

(assert (=> b!2861065 (=> (not res!1188087) (not e!1811347))))

(assert (=> b!2861065 (= res!1188087 call!184573)))

(declare-fun b!2861066 () Bool)

(assert (=> b!2861066 (= e!1811346 e!1811344)))

(assert (=> b!2861066 (= c!461158 ((_ is Union!8609) (ite c!461103 (regTwo!17731 lt!1014499) (regTwo!17730 lt!1014499))))))

(declare-fun bm!184570 () Bool)

(declare-fun c!461159 () Bool)

(assert (=> bm!184570 (= call!184575 (validRegex!3479 (ite c!461159 (reg!8938 (ite c!461103 (regTwo!17731 lt!1014499) (regTwo!17730 lt!1014499))) (ite c!461158 (regOne!17731 (ite c!461103 (regTwo!17731 lt!1014499) (regTwo!17730 lt!1014499))) (regOne!17730 (ite c!461103 (regTwo!17731 lt!1014499) (regTwo!17730 lt!1014499)))))))))

(declare-fun b!2861067 () Bool)

(assert (=> b!2861067 (= e!1811348 e!1811346)))

(assert (=> b!2861067 (= c!461159 ((_ is Star!8609) (ite c!461103 (regTwo!17731 lt!1014499) (regTwo!17730 lt!1014499))))))

(assert (= (and d!827154 (not res!1188085)) b!2861067))

(assert (= (and b!2861067 c!461159) b!2861059))

(assert (= (and b!2861067 (not c!461159)) b!2861066))

(assert (= (and b!2861059 res!1188086) b!2861061))

(assert (= (and b!2861066 c!461158) b!2861063))

(assert (= (and b!2861066 (not c!461158)) b!2861060))

(assert (= (and b!2861063 res!1188088) b!2861064))

(assert (= (and b!2861060 (not res!1188089)) b!2861065))

(assert (= (and b!2861065 res!1188087) b!2861062))

(assert (= (or b!2861064 b!2861062) bm!184568))

(assert (= (or b!2861063 b!2861065) bm!184569))

(assert (= (or b!2861061 bm!184569) bm!184570))

(declare-fun m!3281039 () Bool)

(assert (=> b!2861059 m!3281039))

(declare-fun m!3281041 () Bool)

(assert (=> bm!184568 m!3281041))

(declare-fun m!3281043 () Bool)

(assert (=> bm!184570 m!3281043))

(assert (=> bm!184520 d!827154))

(declare-fun d!827156 () Bool)

(declare-fun nullableFct!806 (Regex!8609) Bool)

(assert (=> d!827156 (= (nullable!2663 (regOne!17730 r!23423)) (nullableFct!806 (regOne!17730 r!23423)))))

(declare-fun bs!520394 () Bool)

(assert (= bs!520394 d!827156))

(declare-fun m!3281045 () Bool)

(assert (=> bs!520394 m!3281045))

(assert (=> b!2860937 d!827156))

(declare-fun b!2861068 () Bool)

(declare-fun e!1811353 () Bool)

(declare-fun e!1811352 () Bool)

(assert (=> b!2861068 (= e!1811353 e!1811352)))

(declare-fun res!1188091 () Bool)

(assert (=> b!2861068 (= res!1188091 (not (nullable!2663 (reg!8938 (ite c!461136 (reg!8938 r!23423) (ite c!461135 (regOne!17731 r!23423) (regOne!17730 r!23423)))))))))

(assert (=> b!2861068 (=> (not res!1188091) (not e!1811352))))

(declare-fun b!2861069 () Bool)

(declare-fun res!1188094 () Bool)

(declare-fun e!1811356 () Bool)

(assert (=> b!2861069 (=> res!1188094 e!1811356)))

(assert (=> b!2861069 (= res!1188094 (not ((_ is Concat!13930) (ite c!461136 (reg!8938 r!23423) (ite c!461135 (regOne!17731 r!23423) (regOne!17730 r!23423))))))))

(declare-fun e!1811351 () Bool)

(assert (=> b!2861069 (= e!1811351 e!1811356)))

(declare-fun b!2861070 () Bool)

(declare-fun call!184578 () Bool)

(assert (=> b!2861070 (= e!1811352 call!184578)))

(declare-fun c!461160 () Bool)

(declare-fun bm!184571 () Bool)

(declare-fun call!184577 () Bool)

(assert (=> bm!184571 (= call!184577 (validRegex!3479 (ite c!461160 (regTwo!17731 (ite c!461136 (reg!8938 r!23423) (ite c!461135 (regOne!17731 r!23423) (regOne!17730 r!23423)))) (regTwo!17730 (ite c!461136 (reg!8938 r!23423) (ite c!461135 (regOne!17731 r!23423) (regOne!17730 r!23423)))))))))

(declare-fun bm!184572 () Bool)

(declare-fun call!184576 () Bool)

(assert (=> bm!184572 (= call!184576 call!184578)))

(declare-fun b!2861071 () Bool)

(declare-fun e!1811354 () Bool)

(assert (=> b!2861071 (= e!1811354 call!184577)))

(declare-fun b!2861072 () Bool)

(declare-fun res!1188093 () Bool)

(declare-fun e!1811357 () Bool)

(assert (=> b!2861072 (=> (not res!1188093) (not e!1811357))))

(assert (=> b!2861072 (= res!1188093 call!184576)))

(assert (=> b!2861072 (= e!1811351 e!1811357)))

(declare-fun b!2861073 () Bool)

(assert (=> b!2861073 (= e!1811357 call!184577)))

(declare-fun d!827158 () Bool)

(declare-fun res!1188090 () Bool)

(declare-fun e!1811355 () Bool)

(assert (=> d!827158 (=> res!1188090 e!1811355)))

(assert (=> d!827158 (= res!1188090 ((_ is ElementMatch!8609) (ite c!461136 (reg!8938 r!23423) (ite c!461135 (regOne!17731 r!23423) (regOne!17730 r!23423)))))))

(assert (=> d!827158 (= (validRegex!3479 (ite c!461136 (reg!8938 r!23423) (ite c!461135 (regOne!17731 r!23423) (regOne!17730 r!23423)))) e!1811355)))

(declare-fun b!2861074 () Bool)

(assert (=> b!2861074 (= e!1811356 e!1811354)))

(declare-fun res!1188092 () Bool)

(assert (=> b!2861074 (=> (not res!1188092) (not e!1811354))))

(assert (=> b!2861074 (= res!1188092 call!184576)))

(declare-fun b!2861075 () Bool)

(assert (=> b!2861075 (= e!1811353 e!1811351)))

(assert (=> b!2861075 (= c!461160 ((_ is Union!8609) (ite c!461136 (reg!8938 r!23423) (ite c!461135 (regOne!17731 r!23423) (regOne!17730 r!23423)))))))

(declare-fun c!461161 () Bool)

(declare-fun bm!184573 () Bool)

(assert (=> bm!184573 (= call!184578 (validRegex!3479 (ite c!461161 (reg!8938 (ite c!461136 (reg!8938 r!23423) (ite c!461135 (regOne!17731 r!23423) (regOne!17730 r!23423)))) (ite c!461160 (regOne!17731 (ite c!461136 (reg!8938 r!23423) (ite c!461135 (regOne!17731 r!23423) (regOne!17730 r!23423)))) (regOne!17730 (ite c!461136 (reg!8938 r!23423) (ite c!461135 (regOne!17731 r!23423) (regOne!17730 r!23423))))))))))

(declare-fun b!2861076 () Bool)

(assert (=> b!2861076 (= e!1811355 e!1811353)))

(assert (=> b!2861076 (= c!461161 ((_ is Star!8609) (ite c!461136 (reg!8938 r!23423) (ite c!461135 (regOne!17731 r!23423) (regOne!17730 r!23423)))))))

(assert (= (and d!827158 (not res!1188090)) b!2861076))

(assert (= (and b!2861076 c!461161) b!2861068))

(assert (= (and b!2861076 (not c!461161)) b!2861075))

(assert (= (and b!2861068 res!1188091) b!2861070))

(assert (= (and b!2861075 c!461160) b!2861072))

(assert (= (and b!2861075 (not c!461160)) b!2861069))

(assert (= (and b!2861072 res!1188093) b!2861073))

(assert (= (and b!2861069 (not res!1188094)) b!2861074))

(assert (= (and b!2861074 res!1188092) b!2861071))

(assert (= (or b!2861073 b!2861071) bm!184571))

(assert (= (or b!2861072 b!2861074) bm!184572))

(assert (= (or b!2861070 bm!184572) bm!184573))

(declare-fun m!3281047 () Bool)

(assert (=> b!2861068 m!3281047))

(declare-fun m!3281049 () Bool)

(assert (=> bm!184571 m!3281049))

(declare-fun m!3281051 () Bool)

(assert (=> bm!184573 m!3281051))

(assert (=> bm!184549 d!827158))

(declare-fun d!827160 () Bool)

(assert (=> d!827160 (= (isEmpty!18616 (t!233241 prefix!1470)) ((_ is Nil!34082) (t!233241 prefix!1470)))))

(assert (=> d!827110 d!827160))

(declare-fun b!2861077 () Bool)

(declare-fun e!1811360 () Bool)

(declare-fun e!1811359 () Bool)

(assert (=> b!2861077 (= e!1811360 e!1811359)))

(declare-fun res!1188096 () Bool)

(assert (=> b!2861077 (= res!1188096 (not (nullable!2663 (reg!8938 (ite c!461104 (reg!8938 lt!1014499) (ite c!461103 (regOne!17731 lt!1014499) (regOne!17730 lt!1014499)))))))))

(assert (=> b!2861077 (=> (not res!1188096) (not e!1811359))))

(declare-fun b!2861078 () Bool)

(declare-fun res!1188099 () Bool)

(declare-fun e!1811363 () Bool)

(assert (=> b!2861078 (=> res!1188099 e!1811363)))

(assert (=> b!2861078 (= res!1188099 (not ((_ is Concat!13930) (ite c!461104 (reg!8938 lt!1014499) (ite c!461103 (regOne!17731 lt!1014499) (regOne!17730 lt!1014499))))))))

(declare-fun e!1811358 () Bool)

(assert (=> b!2861078 (= e!1811358 e!1811363)))

(declare-fun b!2861079 () Bool)

(declare-fun call!184581 () Bool)

(assert (=> b!2861079 (= e!1811359 call!184581)))

(declare-fun call!184580 () Bool)

(declare-fun c!461162 () Bool)

(declare-fun bm!184574 () Bool)

(assert (=> bm!184574 (= call!184580 (validRegex!3479 (ite c!461162 (regTwo!17731 (ite c!461104 (reg!8938 lt!1014499) (ite c!461103 (regOne!17731 lt!1014499) (regOne!17730 lt!1014499)))) (regTwo!17730 (ite c!461104 (reg!8938 lt!1014499) (ite c!461103 (regOne!17731 lt!1014499) (regOne!17730 lt!1014499)))))))))

(declare-fun bm!184575 () Bool)

(declare-fun call!184579 () Bool)

(assert (=> bm!184575 (= call!184579 call!184581)))

(declare-fun b!2861080 () Bool)

(declare-fun e!1811361 () Bool)

(assert (=> b!2861080 (= e!1811361 call!184580)))

(declare-fun b!2861081 () Bool)

(declare-fun res!1188098 () Bool)

(declare-fun e!1811364 () Bool)

(assert (=> b!2861081 (=> (not res!1188098) (not e!1811364))))

(assert (=> b!2861081 (= res!1188098 call!184579)))

(assert (=> b!2861081 (= e!1811358 e!1811364)))

(declare-fun b!2861082 () Bool)

(assert (=> b!2861082 (= e!1811364 call!184580)))

(declare-fun d!827162 () Bool)

(declare-fun res!1188095 () Bool)

(declare-fun e!1811362 () Bool)

(assert (=> d!827162 (=> res!1188095 e!1811362)))

(assert (=> d!827162 (= res!1188095 ((_ is ElementMatch!8609) (ite c!461104 (reg!8938 lt!1014499) (ite c!461103 (regOne!17731 lt!1014499) (regOne!17730 lt!1014499)))))))

(assert (=> d!827162 (= (validRegex!3479 (ite c!461104 (reg!8938 lt!1014499) (ite c!461103 (regOne!17731 lt!1014499) (regOne!17730 lt!1014499)))) e!1811362)))

(declare-fun b!2861083 () Bool)

(assert (=> b!2861083 (= e!1811363 e!1811361)))

(declare-fun res!1188097 () Bool)

(assert (=> b!2861083 (=> (not res!1188097) (not e!1811361))))

(assert (=> b!2861083 (= res!1188097 call!184579)))

(declare-fun b!2861084 () Bool)

(assert (=> b!2861084 (= e!1811360 e!1811358)))

(assert (=> b!2861084 (= c!461162 ((_ is Union!8609) (ite c!461104 (reg!8938 lt!1014499) (ite c!461103 (regOne!17731 lt!1014499) (regOne!17730 lt!1014499)))))))

(declare-fun c!461163 () Bool)

(declare-fun bm!184576 () Bool)

(assert (=> bm!184576 (= call!184581 (validRegex!3479 (ite c!461163 (reg!8938 (ite c!461104 (reg!8938 lt!1014499) (ite c!461103 (regOne!17731 lt!1014499) (regOne!17730 lt!1014499)))) (ite c!461162 (regOne!17731 (ite c!461104 (reg!8938 lt!1014499) (ite c!461103 (regOne!17731 lt!1014499) (regOne!17730 lt!1014499)))) (regOne!17730 (ite c!461104 (reg!8938 lt!1014499) (ite c!461103 (regOne!17731 lt!1014499) (regOne!17730 lt!1014499))))))))))

(declare-fun b!2861085 () Bool)

(assert (=> b!2861085 (= e!1811362 e!1811360)))

(assert (=> b!2861085 (= c!461163 ((_ is Star!8609) (ite c!461104 (reg!8938 lt!1014499) (ite c!461103 (regOne!17731 lt!1014499) (regOne!17730 lt!1014499)))))))

(assert (= (and d!827162 (not res!1188095)) b!2861085))

(assert (= (and b!2861085 c!461163) b!2861077))

(assert (= (and b!2861085 (not c!461163)) b!2861084))

(assert (= (and b!2861077 res!1188096) b!2861079))

(assert (= (and b!2861084 c!461162) b!2861081))

(assert (= (and b!2861084 (not c!461162)) b!2861078))

(assert (= (and b!2861081 res!1188098) b!2861082))

(assert (= (and b!2861078 (not res!1188099)) b!2861083))

(assert (= (and b!2861083 res!1188097) b!2861080))

(assert (= (or b!2861082 b!2861080) bm!184574))

(assert (= (or b!2861081 b!2861083) bm!184575))

(assert (= (or b!2861079 bm!184575) bm!184576))

(declare-fun m!3281053 () Bool)

(assert (=> b!2861077 m!3281053))

(declare-fun m!3281055 () Bool)

(assert (=> bm!184574 m!3281055))

(declare-fun m!3281057 () Bool)

(assert (=> bm!184576 m!3281057))

(assert (=> bm!184522 d!827162))

(declare-fun d!827164 () Bool)

(assert (=> d!827164 (= (nullable!2663 (reg!8938 r!23423)) (nullableFct!806 (reg!8938 r!23423)))))

(declare-fun bs!520395 () Bool)

(assert (= bs!520395 d!827164))

(declare-fun m!3281059 () Bool)

(assert (=> bs!520395 m!3281059))

(assert (=> b!2860951 d!827164))

(declare-fun d!827166 () Bool)

(assert (=> d!827166 (= (nullable!2663 (reg!8938 lt!1014499)) (nullableFct!806 (reg!8938 lt!1014499)))))

(declare-fun bs!520396 () Bool)

(assert (= bs!520396 d!827166))

(declare-fun m!3281061 () Bool)

(assert (=> bs!520396 m!3281061))

(assert (=> b!2860859 d!827166))

(declare-fun d!827168 () Bool)

(assert (=> d!827168 (= (lostCause!761 lt!1014499) (lostCauseFct!221 lt!1014499))))

(declare-fun bs!520397 () Bool)

(assert (= bs!520397 d!827168))

(declare-fun m!3281063 () Bool)

(assert (=> bs!520397 m!3281063))

(assert (=> b!2860811 d!827168))

(declare-fun d!827170 () Bool)

(declare-fun lt!1014509 () Regex!8609)

(assert (=> d!827170 (validRegex!3479 lt!1014509)))

(declare-fun e!1811365 () Regex!8609)

(assert (=> d!827170 (= lt!1014509 e!1811365)))

(declare-fun c!461164 () Bool)

(assert (=> d!827170 (= c!461164 (or ((_ is EmptyExpr!8609) (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423))) ((_ is EmptyLang!8609) (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423)))))))

(assert (=> d!827170 (validRegex!3479 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423)))))

(assert (=> d!827170 (= (derivativeStep!2298 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423)) (h!39502 prefix!1470)) lt!1014509)))

(declare-fun bm!184577 () Bool)

(declare-fun c!461167 () Bool)

(declare-fun call!184582 () Regex!8609)

(assert (=> bm!184577 (= call!184582 (derivativeStep!2298 (ite c!461167 (regTwo!17731 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423))) (regOne!17730 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423)))) (h!39502 prefix!1470)))))

(declare-fun b!2861086 () Bool)

(assert (=> b!2861086 (= c!461167 ((_ is Union!8609) (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423))))))

(declare-fun e!1811369 () Regex!8609)

(declare-fun e!1811366 () Regex!8609)

(assert (=> b!2861086 (= e!1811369 e!1811366)))

(declare-fun bm!184578 () Bool)

(declare-fun call!184583 () Regex!8609)

(declare-fun call!184584 () Regex!8609)

(assert (=> bm!184578 (= call!184583 call!184584)))

(declare-fun bm!184579 () Bool)

(declare-fun call!184585 () Regex!8609)

(assert (=> bm!184579 (= call!184584 call!184585)))

(declare-fun b!2861087 () Bool)

(assert (=> b!2861087 (= e!1811365 EmptyLang!8609)))

(declare-fun b!2861088 () Bool)

(declare-fun e!1811368 () Regex!8609)

(assert (=> b!2861088 (= e!1811368 (Union!8609 (Concat!13930 call!184583 (regTwo!17730 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423)))) EmptyLang!8609))))

(declare-fun b!2861089 () Bool)

(assert (=> b!2861089 (= e!1811369 (ite (= (h!39502 prefix!1470) (c!461082 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423)))) EmptyExpr!8609 EmptyLang!8609))))

(declare-fun b!2861090 () Bool)

(declare-fun c!461168 () Bool)

(assert (=> b!2861090 (= c!461168 (nullable!2663 (regOne!17730 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423)))))))

(declare-fun e!1811367 () Regex!8609)

(assert (=> b!2861090 (= e!1811367 e!1811368)))

(declare-fun b!2861091 () Bool)

(assert (=> b!2861091 (= e!1811366 (Union!8609 call!184585 call!184582))))

(declare-fun b!2861092 () Bool)

(assert (=> b!2861092 (= e!1811368 (Union!8609 (Concat!13930 call!184582 (regTwo!17730 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423)))) call!184583))))

(declare-fun b!2861093 () Bool)

(assert (=> b!2861093 (= e!1811365 e!1811369)))

(declare-fun c!461165 () Bool)

(assert (=> b!2861093 (= c!461165 ((_ is ElementMatch!8609) (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423))))))

(declare-fun bm!184580 () Bool)

(declare-fun c!461166 () Bool)

(assert (=> bm!184580 (= call!184585 (derivativeStep!2298 (ite c!461167 (regOne!17731 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423))) (ite c!461166 (reg!8938 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423))) (ite c!461168 (regTwo!17730 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423))) (regOne!17730 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423)))))) (h!39502 prefix!1470)))))

(declare-fun b!2861094 () Bool)

(assert (=> b!2861094 (= e!1811366 e!1811367)))

(assert (=> b!2861094 (= c!461166 ((_ is Star!8609) (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423))))))

(declare-fun b!2861095 () Bool)

(assert (=> b!2861095 (= e!1811367 (Concat!13930 call!184584 (ite c!461133 (regTwo!17731 r!23423) (regOne!17730 r!23423))))))

(assert (= (and d!827170 c!461164) b!2861087))

(assert (= (and d!827170 (not c!461164)) b!2861093))

(assert (= (and b!2861093 c!461165) b!2861089))

(assert (= (and b!2861093 (not c!461165)) b!2861086))

(assert (= (and b!2861086 c!461167) b!2861091))

(assert (= (and b!2861086 (not c!461167)) b!2861094))

(assert (= (and b!2861094 c!461166) b!2861095))

(assert (= (and b!2861094 (not c!461166)) b!2861090))

(assert (= (and b!2861090 c!461168) b!2861092))

(assert (= (and b!2861090 (not c!461168)) b!2861088))

(assert (= (or b!2861092 b!2861088) bm!184578))

(assert (= (or b!2861095 bm!184578) bm!184579))

(assert (= (or b!2861091 b!2861092) bm!184577))

(assert (= (or b!2861091 bm!184579) bm!184580))

(declare-fun m!3281065 () Bool)

(assert (=> d!827170 m!3281065))

(declare-fun m!3281067 () Bool)

(assert (=> d!827170 m!3281067))

(declare-fun m!3281069 () Bool)

(assert (=> bm!184577 m!3281069))

(declare-fun m!3281071 () Bool)

(assert (=> b!2861090 m!3281071))

(declare-fun m!3281073 () Bool)

(assert (=> bm!184580 m!3281073))

(assert (=> bm!184543 d!827170))

(declare-fun e!1811370 () Bool)

(assert (=> b!2861004 (= tp!920988 e!1811370)))

(declare-fun b!2861098 () Bool)

(declare-fun tp!920997 () Bool)

(assert (=> b!2861098 (= e!1811370 tp!920997)))

(declare-fun b!2861097 () Bool)

(declare-fun tp!920993 () Bool)

(declare-fun tp!920996 () Bool)

(assert (=> b!2861097 (= e!1811370 (and tp!920993 tp!920996))))

(declare-fun b!2861096 () Bool)

(assert (=> b!2861096 (= e!1811370 tp_is_empty!14955)))

(declare-fun b!2861099 () Bool)

(declare-fun tp!920995 () Bool)

(declare-fun tp!920994 () Bool)

(assert (=> b!2861099 (= e!1811370 (and tp!920995 tp!920994))))

(assert (= (and b!2861004 ((_ is ElementMatch!8609) (regOne!17730 (regTwo!17731 r!23423)))) b!2861096))

(assert (= (and b!2861004 ((_ is Concat!13930) (regOne!17730 (regTwo!17731 r!23423)))) b!2861097))

(assert (= (and b!2861004 ((_ is Star!8609) (regOne!17730 (regTwo!17731 r!23423)))) b!2861098))

(assert (= (and b!2861004 ((_ is Union!8609) (regOne!17730 (regTwo!17731 r!23423)))) b!2861099))

(declare-fun e!1811371 () Bool)

(assert (=> b!2861004 (= tp!920991 e!1811371)))

(declare-fun b!2861102 () Bool)

(declare-fun tp!921002 () Bool)

(assert (=> b!2861102 (= e!1811371 tp!921002)))

(declare-fun b!2861101 () Bool)

(declare-fun tp!920998 () Bool)

(declare-fun tp!921001 () Bool)

(assert (=> b!2861101 (= e!1811371 (and tp!920998 tp!921001))))

(declare-fun b!2861100 () Bool)

(assert (=> b!2861100 (= e!1811371 tp_is_empty!14955)))

(declare-fun b!2861103 () Bool)

(declare-fun tp!921000 () Bool)

(declare-fun tp!920999 () Bool)

(assert (=> b!2861103 (= e!1811371 (and tp!921000 tp!920999))))

(assert (= (and b!2861004 ((_ is ElementMatch!8609) (regTwo!17730 (regTwo!17731 r!23423)))) b!2861100))

(assert (= (and b!2861004 ((_ is Concat!13930) (regTwo!17730 (regTwo!17731 r!23423)))) b!2861101))

(assert (= (and b!2861004 ((_ is Star!8609) (regTwo!17730 (regTwo!17731 r!23423)))) b!2861102))

(assert (= (and b!2861004 ((_ is Union!8609) (regTwo!17730 (regTwo!17731 r!23423)))) b!2861103))

(declare-fun e!1811372 () Bool)

(assert (=> b!2861000 (= tp!920983 e!1811372)))

(declare-fun b!2861106 () Bool)

(declare-fun tp!921007 () Bool)

(assert (=> b!2861106 (= e!1811372 tp!921007)))

(declare-fun b!2861105 () Bool)

(declare-fun tp!921003 () Bool)

(declare-fun tp!921006 () Bool)

(assert (=> b!2861105 (= e!1811372 (and tp!921003 tp!921006))))

(declare-fun b!2861104 () Bool)

(assert (=> b!2861104 (= e!1811372 tp_is_empty!14955)))

(declare-fun b!2861107 () Bool)

(declare-fun tp!921005 () Bool)

(declare-fun tp!921004 () Bool)

(assert (=> b!2861107 (= e!1811372 (and tp!921005 tp!921004))))

(assert (= (and b!2861000 ((_ is ElementMatch!8609) (regOne!17730 (regOne!17731 r!23423)))) b!2861104))

(assert (= (and b!2861000 ((_ is Concat!13930) (regOne!17730 (regOne!17731 r!23423)))) b!2861105))

(assert (= (and b!2861000 ((_ is Star!8609) (regOne!17730 (regOne!17731 r!23423)))) b!2861106))

(assert (= (and b!2861000 ((_ is Union!8609) (regOne!17730 (regOne!17731 r!23423)))) b!2861107))

(declare-fun e!1811373 () Bool)

(assert (=> b!2861000 (= tp!920986 e!1811373)))

(declare-fun b!2861110 () Bool)

(declare-fun tp!921012 () Bool)

(assert (=> b!2861110 (= e!1811373 tp!921012)))

(declare-fun b!2861109 () Bool)

(declare-fun tp!921008 () Bool)

(declare-fun tp!921011 () Bool)

(assert (=> b!2861109 (= e!1811373 (and tp!921008 tp!921011))))

(declare-fun b!2861108 () Bool)

(assert (=> b!2861108 (= e!1811373 tp_is_empty!14955)))

(declare-fun b!2861111 () Bool)

(declare-fun tp!921010 () Bool)

(declare-fun tp!921009 () Bool)

(assert (=> b!2861111 (= e!1811373 (and tp!921010 tp!921009))))

(assert (= (and b!2861000 ((_ is ElementMatch!8609) (regTwo!17730 (regOne!17731 r!23423)))) b!2861108))

(assert (= (and b!2861000 ((_ is Concat!13930) (regTwo!17730 (regOne!17731 r!23423)))) b!2861109))

(assert (= (and b!2861000 ((_ is Star!8609) (regTwo!17730 (regOne!17731 r!23423)))) b!2861110))

(assert (= (and b!2861000 ((_ is Union!8609) (regTwo!17730 (regOne!17731 r!23423)))) b!2861111))

(declare-fun b!2861112 () Bool)

(declare-fun e!1811374 () Bool)

(declare-fun tp!921013 () Bool)

(assert (=> b!2861112 (= e!1811374 (and tp_is_empty!14955 tp!921013))))

(assert (=> b!2860976 (= tp!920957 e!1811374)))

(assert (= (and b!2860976 ((_ is Cons!34082) (t!233241 (t!233241 prefix!1470)))) b!2861112))

(declare-fun e!1811375 () Bool)

(assert (=> b!2860996 (= tp!920978 e!1811375)))

(declare-fun b!2861115 () Bool)

(declare-fun tp!921018 () Bool)

(assert (=> b!2861115 (= e!1811375 tp!921018)))

(declare-fun b!2861114 () Bool)

(declare-fun tp!921014 () Bool)

(declare-fun tp!921017 () Bool)

(assert (=> b!2861114 (= e!1811375 (and tp!921014 tp!921017))))

(declare-fun b!2861113 () Bool)

(assert (=> b!2861113 (= e!1811375 tp_is_empty!14955)))

(declare-fun b!2861116 () Bool)

(declare-fun tp!921016 () Bool)

(declare-fun tp!921015 () Bool)

(assert (=> b!2861116 (= e!1811375 (and tp!921016 tp!921015))))

(assert (= (and b!2860996 ((_ is ElementMatch!8609) (regOne!17730 (reg!8938 r!23423)))) b!2861113))

(assert (= (and b!2860996 ((_ is Concat!13930) (regOne!17730 (reg!8938 r!23423)))) b!2861114))

(assert (= (and b!2860996 ((_ is Star!8609) (regOne!17730 (reg!8938 r!23423)))) b!2861115))

(assert (= (and b!2860996 ((_ is Union!8609) (regOne!17730 (reg!8938 r!23423)))) b!2861116))

(declare-fun e!1811376 () Bool)

(assert (=> b!2860996 (= tp!920981 e!1811376)))

(declare-fun b!2861119 () Bool)

(declare-fun tp!921023 () Bool)

(assert (=> b!2861119 (= e!1811376 tp!921023)))

(declare-fun b!2861118 () Bool)

(declare-fun tp!921019 () Bool)

(declare-fun tp!921022 () Bool)

(assert (=> b!2861118 (= e!1811376 (and tp!921019 tp!921022))))

(declare-fun b!2861117 () Bool)

(assert (=> b!2861117 (= e!1811376 tp_is_empty!14955)))

(declare-fun b!2861120 () Bool)

(declare-fun tp!921021 () Bool)

(declare-fun tp!921020 () Bool)

(assert (=> b!2861120 (= e!1811376 (and tp!921021 tp!921020))))

(assert (= (and b!2860996 ((_ is ElementMatch!8609) (regTwo!17730 (reg!8938 r!23423)))) b!2861117))

(assert (= (and b!2860996 ((_ is Concat!13930) (regTwo!17730 (reg!8938 r!23423)))) b!2861118))

(assert (= (and b!2860996 ((_ is Star!8609) (regTwo!17730 (reg!8938 r!23423)))) b!2861119))

(assert (= (and b!2860996 ((_ is Union!8609) (regTwo!17730 (reg!8938 r!23423)))) b!2861120))

(declare-fun e!1811377 () Bool)

(assert (=> b!2861005 (= tp!920992 e!1811377)))

(declare-fun b!2861123 () Bool)

(declare-fun tp!921028 () Bool)

(assert (=> b!2861123 (= e!1811377 tp!921028)))

(declare-fun b!2861122 () Bool)

(declare-fun tp!921024 () Bool)

(declare-fun tp!921027 () Bool)

(assert (=> b!2861122 (= e!1811377 (and tp!921024 tp!921027))))

(declare-fun b!2861121 () Bool)

(assert (=> b!2861121 (= e!1811377 tp_is_empty!14955)))

(declare-fun b!2861124 () Bool)

(declare-fun tp!921026 () Bool)

(declare-fun tp!921025 () Bool)

(assert (=> b!2861124 (= e!1811377 (and tp!921026 tp!921025))))

(assert (= (and b!2861005 ((_ is ElementMatch!8609) (reg!8938 (regTwo!17731 r!23423)))) b!2861121))

(assert (= (and b!2861005 ((_ is Concat!13930) (reg!8938 (regTwo!17731 r!23423)))) b!2861122))

(assert (= (and b!2861005 ((_ is Star!8609) (reg!8938 (regTwo!17731 r!23423)))) b!2861123))

(assert (= (and b!2861005 ((_ is Union!8609) (reg!8938 (regTwo!17731 r!23423)))) b!2861124))

(declare-fun e!1811378 () Bool)

(assert (=> b!2860990 (= tp!920970 e!1811378)))

(declare-fun b!2861127 () Bool)

(declare-fun tp!921033 () Bool)

(assert (=> b!2861127 (= e!1811378 tp!921033)))

(declare-fun b!2861126 () Bool)

(declare-fun tp!921029 () Bool)

(declare-fun tp!921032 () Bool)

(assert (=> b!2861126 (= e!1811378 (and tp!921029 tp!921032))))

(declare-fun b!2861125 () Bool)

(assert (=> b!2861125 (= e!1811378 tp_is_empty!14955)))

(declare-fun b!2861128 () Bool)

(declare-fun tp!921031 () Bool)

(declare-fun tp!921030 () Bool)

(assert (=> b!2861128 (= e!1811378 (and tp!921031 tp!921030))))

(assert (= (and b!2860990 ((_ is ElementMatch!8609) (regOne!17731 (regOne!17730 r!23423)))) b!2861125))

(assert (= (and b!2860990 ((_ is Concat!13930) (regOne!17731 (regOne!17730 r!23423)))) b!2861126))

(assert (= (and b!2860990 ((_ is Star!8609) (regOne!17731 (regOne!17730 r!23423)))) b!2861127))

(assert (= (and b!2860990 ((_ is Union!8609) (regOne!17731 (regOne!17730 r!23423)))) b!2861128))

(declare-fun e!1811379 () Bool)

(assert (=> b!2860990 (= tp!920969 e!1811379)))

(declare-fun b!2861131 () Bool)

(declare-fun tp!921038 () Bool)

(assert (=> b!2861131 (= e!1811379 tp!921038)))

(declare-fun b!2861130 () Bool)

(declare-fun tp!921034 () Bool)

(declare-fun tp!921037 () Bool)

(assert (=> b!2861130 (= e!1811379 (and tp!921034 tp!921037))))

(declare-fun b!2861129 () Bool)

(assert (=> b!2861129 (= e!1811379 tp_is_empty!14955)))

(declare-fun b!2861132 () Bool)

(declare-fun tp!921036 () Bool)

(declare-fun tp!921035 () Bool)

(assert (=> b!2861132 (= e!1811379 (and tp!921036 tp!921035))))

(assert (= (and b!2860990 ((_ is ElementMatch!8609) (regTwo!17731 (regOne!17730 r!23423)))) b!2861129))

(assert (= (and b!2860990 ((_ is Concat!13930) (regTwo!17731 (regOne!17730 r!23423)))) b!2861130))

(assert (= (and b!2860990 ((_ is Star!8609) (regTwo!17731 (regOne!17730 r!23423)))) b!2861131))

(assert (= (and b!2860990 ((_ is Union!8609) (regTwo!17731 (regOne!17730 r!23423)))) b!2861132))

(declare-fun e!1811380 () Bool)

(assert (=> b!2861006 (= tp!920990 e!1811380)))

(declare-fun b!2861135 () Bool)

(declare-fun tp!921043 () Bool)

(assert (=> b!2861135 (= e!1811380 tp!921043)))

(declare-fun b!2861134 () Bool)

(declare-fun tp!921039 () Bool)

(declare-fun tp!921042 () Bool)

(assert (=> b!2861134 (= e!1811380 (and tp!921039 tp!921042))))

(declare-fun b!2861133 () Bool)

(assert (=> b!2861133 (= e!1811380 tp_is_empty!14955)))

(declare-fun b!2861136 () Bool)

(declare-fun tp!921041 () Bool)

(declare-fun tp!921040 () Bool)

(assert (=> b!2861136 (= e!1811380 (and tp!921041 tp!921040))))

(assert (= (and b!2861006 ((_ is ElementMatch!8609) (regOne!17731 (regTwo!17731 r!23423)))) b!2861133))

(assert (= (and b!2861006 ((_ is Concat!13930) (regOne!17731 (regTwo!17731 r!23423)))) b!2861134))

(assert (= (and b!2861006 ((_ is Star!8609) (regOne!17731 (regTwo!17731 r!23423)))) b!2861135))

(assert (= (and b!2861006 ((_ is Union!8609) (regOne!17731 (regTwo!17731 r!23423)))) b!2861136))

(declare-fun e!1811381 () Bool)

(assert (=> b!2861006 (= tp!920989 e!1811381)))

(declare-fun b!2861139 () Bool)

(declare-fun tp!921048 () Bool)

(assert (=> b!2861139 (= e!1811381 tp!921048)))

(declare-fun b!2861138 () Bool)

(declare-fun tp!921044 () Bool)

(declare-fun tp!921047 () Bool)

(assert (=> b!2861138 (= e!1811381 (and tp!921044 tp!921047))))

(declare-fun b!2861137 () Bool)

(assert (=> b!2861137 (= e!1811381 tp_is_empty!14955)))

(declare-fun b!2861140 () Bool)

(declare-fun tp!921046 () Bool)

(declare-fun tp!921045 () Bool)

(assert (=> b!2861140 (= e!1811381 (and tp!921046 tp!921045))))

(assert (= (and b!2861006 ((_ is ElementMatch!8609) (regTwo!17731 (regTwo!17731 r!23423)))) b!2861137))

(assert (= (and b!2861006 ((_ is Concat!13930) (regTwo!17731 (regTwo!17731 r!23423)))) b!2861138))

(assert (= (and b!2861006 ((_ is Star!8609) (regTwo!17731 (regTwo!17731 r!23423)))) b!2861139))

(assert (= (and b!2861006 ((_ is Union!8609) (regTwo!17731 (regTwo!17731 r!23423)))) b!2861140))

(declare-fun e!1811382 () Bool)

(assert (=> b!2860992 (= tp!920973 e!1811382)))

(declare-fun b!2861143 () Bool)

(declare-fun tp!921053 () Bool)

(assert (=> b!2861143 (= e!1811382 tp!921053)))

(declare-fun b!2861142 () Bool)

(declare-fun tp!921049 () Bool)

(declare-fun tp!921052 () Bool)

(assert (=> b!2861142 (= e!1811382 (and tp!921049 tp!921052))))

(declare-fun b!2861141 () Bool)

(assert (=> b!2861141 (= e!1811382 tp_is_empty!14955)))

(declare-fun b!2861144 () Bool)

(declare-fun tp!921051 () Bool)

(declare-fun tp!921050 () Bool)

(assert (=> b!2861144 (= e!1811382 (and tp!921051 tp!921050))))

(assert (= (and b!2860992 ((_ is ElementMatch!8609) (regOne!17730 (regTwo!17730 r!23423)))) b!2861141))

(assert (= (and b!2860992 ((_ is Concat!13930) (regOne!17730 (regTwo!17730 r!23423)))) b!2861142))

(assert (= (and b!2860992 ((_ is Star!8609) (regOne!17730 (regTwo!17730 r!23423)))) b!2861143))

(assert (= (and b!2860992 ((_ is Union!8609) (regOne!17730 (regTwo!17730 r!23423)))) b!2861144))

(declare-fun e!1811383 () Bool)

(assert (=> b!2860992 (= tp!920976 e!1811383)))

(declare-fun b!2861147 () Bool)

(declare-fun tp!921058 () Bool)

(assert (=> b!2861147 (= e!1811383 tp!921058)))

(declare-fun b!2861146 () Bool)

(declare-fun tp!921054 () Bool)

(declare-fun tp!921057 () Bool)

(assert (=> b!2861146 (= e!1811383 (and tp!921054 tp!921057))))

(declare-fun b!2861145 () Bool)

(assert (=> b!2861145 (= e!1811383 tp_is_empty!14955)))

(declare-fun b!2861148 () Bool)

(declare-fun tp!921056 () Bool)

(declare-fun tp!921055 () Bool)

(assert (=> b!2861148 (= e!1811383 (and tp!921056 tp!921055))))

(assert (= (and b!2860992 ((_ is ElementMatch!8609) (regTwo!17730 (regTwo!17730 r!23423)))) b!2861145))

(assert (= (and b!2860992 ((_ is Concat!13930) (regTwo!17730 (regTwo!17730 r!23423)))) b!2861146))

(assert (= (and b!2860992 ((_ is Star!8609) (regTwo!17730 (regTwo!17730 r!23423)))) b!2861147))

(assert (= (and b!2860992 ((_ is Union!8609) (regTwo!17730 (regTwo!17730 r!23423)))) b!2861148))

(declare-fun e!1811384 () Bool)

(assert (=> b!2861001 (= tp!920987 e!1811384)))

(declare-fun b!2861151 () Bool)

(declare-fun tp!921063 () Bool)

(assert (=> b!2861151 (= e!1811384 tp!921063)))

(declare-fun b!2861150 () Bool)

(declare-fun tp!921059 () Bool)

(declare-fun tp!921062 () Bool)

(assert (=> b!2861150 (= e!1811384 (and tp!921059 tp!921062))))

(declare-fun b!2861149 () Bool)

(assert (=> b!2861149 (= e!1811384 tp_is_empty!14955)))

(declare-fun b!2861152 () Bool)

(declare-fun tp!921061 () Bool)

(declare-fun tp!921060 () Bool)

(assert (=> b!2861152 (= e!1811384 (and tp!921061 tp!921060))))

(assert (= (and b!2861001 ((_ is ElementMatch!8609) (reg!8938 (regOne!17731 r!23423)))) b!2861149))

(assert (= (and b!2861001 ((_ is Concat!13930) (reg!8938 (regOne!17731 r!23423)))) b!2861150))

(assert (= (and b!2861001 ((_ is Star!8609) (reg!8938 (regOne!17731 r!23423)))) b!2861151))

(assert (= (and b!2861001 ((_ is Union!8609) (reg!8938 (regOne!17731 r!23423)))) b!2861152))

(declare-fun e!1811385 () Bool)

(assert (=> b!2861002 (= tp!920985 e!1811385)))

(declare-fun b!2861155 () Bool)

(declare-fun tp!921068 () Bool)

(assert (=> b!2861155 (= e!1811385 tp!921068)))

(declare-fun b!2861154 () Bool)

(declare-fun tp!921064 () Bool)

(declare-fun tp!921067 () Bool)

(assert (=> b!2861154 (= e!1811385 (and tp!921064 tp!921067))))

(declare-fun b!2861153 () Bool)

(assert (=> b!2861153 (= e!1811385 tp_is_empty!14955)))

(declare-fun b!2861156 () Bool)

(declare-fun tp!921066 () Bool)

(declare-fun tp!921065 () Bool)

(assert (=> b!2861156 (= e!1811385 (and tp!921066 tp!921065))))

(assert (= (and b!2861002 ((_ is ElementMatch!8609) (regOne!17731 (regOne!17731 r!23423)))) b!2861153))

(assert (= (and b!2861002 ((_ is Concat!13930) (regOne!17731 (regOne!17731 r!23423)))) b!2861154))

(assert (= (and b!2861002 ((_ is Star!8609) (regOne!17731 (regOne!17731 r!23423)))) b!2861155))

(assert (= (and b!2861002 ((_ is Union!8609) (regOne!17731 (regOne!17731 r!23423)))) b!2861156))

(declare-fun e!1811386 () Bool)

(assert (=> b!2861002 (= tp!920984 e!1811386)))

(declare-fun b!2861159 () Bool)

(declare-fun tp!921073 () Bool)

(assert (=> b!2861159 (= e!1811386 tp!921073)))

(declare-fun b!2861158 () Bool)

(declare-fun tp!921069 () Bool)

(declare-fun tp!921072 () Bool)

(assert (=> b!2861158 (= e!1811386 (and tp!921069 tp!921072))))

(declare-fun b!2861157 () Bool)

(assert (=> b!2861157 (= e!1811386 tp_is_empty!14955)))

(declare-fun b!2861160 () Bool)

(declare-fun tp!921071 () Bool)

(declare-fun tp!921070 () Bool)

(assert (=> b!2861160 (= e!1811386 (and tp!921071 tp!921070))))

(assert (= (and b!2861002 ((_ is ElementMatch!8609) (regTwo!17731 (regOne!17731 r!23423)))) b!2861157))

(assert (= (and b!2861002 ((_ is Concat!13930) (regTwo!17731 (regOne!17731 r!23423)))) b!2861158))

(assert (= (and b!2861002 ((_ is Star!8609) (regTwo!17731 (regOne!17731 r!23423)))) b!2861159))

(assert (= (and b!2861002 ((_ is Union!8609) (regTwo!17731 (regOne!17731 r!23423)))) b!2861160))

(declare-fun e!1811387 () Bool)

(assert (=> b!2860988 (= tp!920968 e!1811387)))

(declare-fun b!2861163 () Bool)

(declare-fun tp!921078 () Bool)

(assert (=> b!2861163 (= e!1811387 tp!921078)))

(declare-fun b!2861162 () Bool)

(declare-fun tp!921074 () Bool)

(declare-fun tp!921077 () Bool)

(assert (=> b!2861162 (= e!1811387 (and tp!921074 tp!921077))))

(declare-fun b!2861161 () Bool)

(assert (=> b!2861161 (= e!1811387 tp_is_empty!14955)))

(declare-fun b!2861164 () Bool)

(declare-fun tp!921076 () Bool)

(declare-fun tp!921075 () Bool)

(assert (=> b!2861164 (= e!1811387 (and tp!921076 tp!921075))))

(assert (= (and b!2860988 ((_ is ElementMatch!8609) (regOne!17730 (regOne!17730 r!23423)))) b!2861161))

(assert (= (and b!2860988 ((_ is Concat!13930) (regOne!17730 (regOne!17730 r!23423)))) b!2861162))

(assert (= (and b!2860988 ((_ is Star!8609) (regOne!17730 (regOne!17730 r!23423)))) b!2861163))

(assert (= (and b!2860988 ((_ is Union!8609) (regOne!17730 (regOne!17730 r!23423)))) b!2861164))

(declare-fun e!1811388 () Bool)

(assert (=> b!2860988 (= tp!920971 e!1811388)))

(declare-fun b!2861167 () Bool)

(declare-fun tp!921083 () Bool)

(assert (=> b!2861167 (= e!1811388 tp!921083)))

(declare-fun b!2861166 () Bool)

(declare-fun tp!921079 () Bool)

(declare-fun tp!921082 () Bool)

(assert (=> b!2861166 (= e!1811388 (and tp!921079 tp!921082))))

(declare-fun b!2861165 () Bool)

(assert (=> b!2861165 (= e!1811388 tp_is_empty!14955)))

(declare-fun b!2861168 () Bool)

(declare-fun tp!921081 () Bool)

(declare-fun tp!921080 () Bool)

(assert (=> b!2861168 (= e!1811388 (and tp!921081 tp!921080))))

(assert (= (and b!2860988 ((_ is ElementMatch!8609) (regTwo!17730 (regOne!17730 r!23423)))) b!2861165))

(assert (= (and b!2860988 ((_ is Concat!13930) (regTwo!17730 (regOne!17730 r!23423)))) b!2861166))

(assert (= (and b!2860988 ((_ is Star!8609) (regTwo!17730 (regOne!17730 r!23423)))) b!2861167))

(assert (= (and b!2860988 ((_ is Union!8609) (regTwo!17730 (regOne!17730 r!23423)))) b!2861168))

(declare-fun e!1811389 () Bool)

(assert (=> b!2860997 (= tp!920982 e!1811389)))

(declare-fun b!2861171 () Bool)

(declare-fun tp!921088 () Bool)

(assert (=> b!2861171 (= e!1811389 tp!921088)))

(declare-fun b!2861170 () Bool)

(declare-fun tp!921084 () Bool)

(declare-fun tp!921087 () Bool)

(assert (=> b!2861170 (= e!1811389 (and tp!921084 tp!921087))))

(declare-fun b!2861169 () Bool)

(assert (=> b!2861169 (= e!1811389 tp_is_empty!14955)))

(declare-fun b!2861172 () Bool)

(declare-fun tp!921086 () Bool)

(declare-fun tp!921085 () Bool)

(assert (=> b!2861172 (= e!1811389 (and tp!921086 tp!921085))))

(assert (= (and b!2860997 ((_ is ElementMatch!8609) (reg!8938 (reg!8938 r!23423)))) b!2861169))

(assert (= (and b!2860997 ((_ is Concat!13930) (reg!8938 (reg!8938 r!23423)))) b!2861170))

(assert (= (and b!2860997 ((_ is Star!8609) (reg!8938 (reg!8938 r!23423)))) b!2861171))

(assert (= (and b!2860997 ((_ is Union!8609) (reg!8938 (reg!8938 r!23423)))) b!2861172))

(declare-fun e!1811390 () Bool)

(assert (=> b!2860998 (= tp!920980 e!1811390)))

(declare-fun b!2861175 () Bool)

(declare-fun tp!921093 () Bool)

(assert (=> b!2861175 (= e!1811390 tp!921093)))

(declare-fun b!2861174 () Bool)

(declare-fun tp!921089 () Bool)

(declare-fun tp!921092 () Bool)

(assert (=> b!2861174 (= e!1811390 (and tp!921089 tp!921092))))

(declare-fun b!2861173 () Bool)

(assert (=> b!2861173 (= e!1811390 tp_is_empty!14955)))

(declare-fun b!2861176 () Bool)

(declare-fun tp!921091 () Bool)

(declare-fun tp!921090 () Bool)

(assert (=> b!2861176 (= e!1811390 (and tp!921091 tp!921090))))

(assert (= (and b!2860998 ((_ is ElementMatch!8609) (regOne!17731 (reg!8938 r!23423)))) b!2861173))

(assert (= (and b!2860998 ((_ is Concat!13930) (regOne!17731 (reg!8938 r!23423)))) b!2861174))

(assert (= (and b!2860998 ((_ is Star!8609) (regOne!17731 (reg!8938 r!23423)))) b!2861175))

(assert (= (and b!2860998 ((_ is Union!8609) (regOne!17731 (reg!8938 r!23423)))) b!2861176))

(declare-fun e!1811391 () Bool)

(assert (=> b!2860998 (= tp!920979 e!1811391)))

(declare-fun b!2861179 () Bool)

(declare-fun tp!921098 () Bool)

(assert (=> b!2861179 (= e!1811391 tp!921098)))

(declare-fun b!2861178 () Bool)

(declare-fun tp!921094 () Bool)

(declare-fun tp!921097 () Bool)

(assert (=> b!2861178 (= e!1811391 (and tp!921094 tp!921097))))

(declare-fun b!2861177 () Bool)

(assert (=> b!2861177 (= e!1811391 tp_is_empty!14955)))

(declare-fun b!2861180 () Bool)

(declare-fun tp!921096 () Bool)

(declare-fun tp!921095 () Bool)

(assert (=> b!2861180 (= e!1811391 (and tp!921096 tp!921095))))

(assert (= (and b!2860998 ((_ is ElementMatch!8609) (regTwo!17731 (reg!8938 r!23423)))) b!2861177))

(assert (= (and b!2860998 ((_ is Concat!13930) (regTwo!17731 (reg!8938 r!23423)))) b!2861178))

(assert (= (and b!2860998 ((_ is Star!8609) (regTwo!17731 (reg!8938 r!23423)))) b!2861179))

(assert (= (and b!2860998 ((_ is Union!8609) (regTwo!17731 (reg!8938 r!23423)))) b!2861180))

(declare-fun e!1811392 () Bool)

(assert (=> b!2860993 (= tp!920977 e!1811392)))

(declare-fun b!2861183 () Bool)

(declare-fun tp!921103 () Bool)

(assert (=> b!2861183 (= e!1811392 tp!921103)))

(declare-fun b!2861182 () Bool)

(declare-fun tp!921099 () Bool)

(declare-fun tp!921102 () Bool)

(assert (=> b!2861182 (= e!1811392 (and tp!921099 tp!921102))))

(declare-fun b!2861181 () Bool)

(assert (=> b!2861181 (= e!1811392 tp_is_empty!14955)))

(declare-fun b!2861184 () Bool)

(declare-fun tp!921101 () Bool)

(declare-fun tp!921100 () Bool)

(assert (=> b!2861184 (= e!1811392 (and tp!921101 tp!921100))))

(assert (= (and b!2860993 ((_ is ElementMatch!8609) (reg!8938 (regTwo!17730 r!23423)))) b!2861181))

(assert (= (and b!2860993 ((_ is Concat!13930) (reg!8938 (regTwo!17730 r!23423)))) b!2861182))

(assert (= (and b!2860993 ((_ is Star!8609) (reg!8938 (regTwo!17730 r!23423)))) b!2861183))

(assert (= (and b!2860993 ((_ is Union!8609) (reg!8938 (regTwo!17730 r!23423)))) b!2861184))

(declare-fun e!1811393 () Bool)

(assert (=> b!2860994 (= tp!920975 e!1811393)))

(declare-fun b!2861187 () Bool)

(declare-fun tp!921108 () Bool)

(assert (=> b!2861187 (= e!1811393 tp!921108)))

(declare-fun b!2861186 () Bool)

(declare-fun tp!921104 () Bool)

(declare-fun tp!921107 () Bool)

(assert (=> b!2861186 (= e!1811393 (and tp!921104 tp!921107))))

(declare-fun b!2861185 () Bool)

(assert (=> b!2861185 (= e!1811393 tp_is_empty!14955)))

(declare-fun b!2861188 () Bool)

(declare-fun tp!921106 () Bool)

(declare-fun tp!921105 () Bool)

(assert (=> b!2861188 (= e!1811393 (and tp!921106 tp!921105))))

(assert (= (and b!2860994 ((_ is ElementMatch!8609) (regOne!17731 (regTwo!17730 r!23423)))) b!2861185))

(assert (= (and b!2860994 ((_ is Concat!13930) (regOne!17731 (regTwo!17730 r!23423)))) b!2861186))

(assert (= (and b!2860994 ((_ is Star!8609) (regOne!17731 (regTwo!17730 r!23423)))) b!2861187))

(assert (= (and b!2860994 ((_ is Union!8609) (regOne!17731 (regTwo!17730 r!23423)))) b!2861188))

(declare-fun e!1811394 () Bool)

(assert (=> b!2860994 (= tp!920974 e!1811394)))

(declare-fun b!2861191 () Bool)

(declare-fun tp!921113 () Bool)

(assert (=> b!2861191 (= e!1811394 tp!921113)))

(declare-fun b!2861190 () Bool)

(declare-fun tp!921109 () Bool)

(declare-fun tp!921112 () Bool)

(assert (=> b!2861190 (= e!1811394 (and tp!921109 tp!921112))))

(declare-fun b!2861189 () Bool)

(assert (=> b!2861189 (= e!1811394 tp_is_empty!14955)))

(declare-fun b!2861192 () Bool)

(declare-fun tp!921111 () Bool)

(declare-fun tp!921110 () Bool)

(assert (=> b!2861192 (= e!1811394 (and tp!921111 tp!921110))))

(assert (= (and b!2860994 ((_ is ElementMatch!8609) (regTwo!17731 (regTwo!17730 r!23423)))) b!2861189))

(assert (= (and b!2860994 ((_ is Concat!13930) (regTwo!17731 (regTwo!17730 r!23423)))) b!2861190))

(assert (= (and b!2860994 ((_ is Star!8609) (regTwo!17731 (regTwo!17730 r!23423)))) b!2861191))

(assert (= (and b!2860994 ((_ is Union!8609) (regTwo!17731 (regTwo!17730 r!23423)))) b!2861192))

(declare-fun e!1811395 () Bool)

(assert (=> b!2860989 (= tp!920972 e!1811395)))

(declare-fun b!2861195 () Bool)

(declare-fun tp!921118 () Bool)

(assert (=> b!2861195 (= e!1811395 tp!921118)))

(declare-fun b!2861194 () Bool)

(declare-fun tp!921114 () Bool)

(declare-fun tp!921117 () Bool)

(assert (=> b!2861194 (= e!1811395 (and tp!921114 tp!921117))))

(declare-fun b!2861193 () Bool)

(assert (=> b!2861193 (= e!1811395 tp_is_empty!14955)))

(declare-fun b!2861196 () Bool)

(declare-fun tp!921116 () Bool)

(declare-fun tp!921115 () Bool)

(assert (=> b!2861196 (= e!1811395 (and tp!921116 tp!921115))))

(assert (= (and b!2860989 ((_ is ElementMatch!8609) (reg!8938 (regOne!17730 r!23423)))) b!2861193))

(assert (= (and b!2860989 ((_ is Concat!13930) (reg!8938 (regOne!17730 r!23423)))) b!2861194))

(assert (= (and b!2860989 ((_ is Star!8609) (reg!8938 (regOne!17730 r!23423)))) b!2861195))

(assert (= (and b!2860989 ((_ is Union!8609) (reg!8938 (regOne!17730 r!23423)))) b!2861196))

(check-sat (not bm!184571) (not bm!184570) (not b!2861167) (not bm!184580) (not b!2861059) (not b!2861166) (not b!2861131) (not b!2861176) (not d!827150) (not b!2861119) (not b!2861103) (not b!2861112) (not bm!184560) (not b!2861178) (not b!2861196) (not b!2861143) (not bm!184561) (not b!2861120) (not b!2861017) (not b!2861154) (not b!2861156) (not b!2861134) (not bm!184556) (not b!2861152) (not bm!184557) (not b!2861155) (not b!2861098) (not b!2861171) (not b!2861150) (not d!827134) (not b!2861127) (not b!2861195) (not b!2861099) (not bm!184576) (not b!2861146) (not b!2861163) (not b!2861138) (not b!2861111) (not bm!184550) (not b!2861183) (not b!2861116) (not b!2861192) tp_is_empty!14955 (not bm!184573) (not b!2861180) (not b!2861140) (not b!2861174) (not b!2861148) (not b!2861101) (not d!827168) (not b!2861136) (not b!2861187) (not bm!184565) (not b!2861179) (not d!827156) (not d!827164) (not b!2861097) (not b!2861124) (not bm!184577) (not b!2861123) (not b!2861162) (not d!827142) (not b!2861168) (not b!2861110) (not b!2861118) (not b!2861194) (not d!827130) (not b!2861170) (not b!2861158) (not b!2861135) (not b!2861106) (not b!2861184) (not b!2861102) (not b!2861175) (not bm!184567) (not b!2861164) (not b!2861147) (not b!2861115) (not b!2861188) (not b!2861050) (not bm!184553) (not b!2861028) (not b!2861139) (not d!827166) (not d!827170) (not b!2861159) (not b!2861107) (not b!2861068) (not b!2861077) (not b!2861128) (not b!2861122) (not b!2861151) (not b!2861034) (not b!2861186) (not b!2861029) (not b!2861090) (not b!2861144) (not b!2861130) (not b!2861190) (not b!2861172) (not b!2861016) (not b!2861182) (not b!2861105) (not b!2861022) (not b!2861126) (not bm!184552) (not b!2861142) (not b!2861007) (not d!827132) (not b!2861132) (not b!2861191) (not b!2861114) (not bm!184564) (not b!2861109) (not b!2861044) (not b!2861160) (not bm!184568) (not d!827144) (not bm!184574))
(check-sat)
