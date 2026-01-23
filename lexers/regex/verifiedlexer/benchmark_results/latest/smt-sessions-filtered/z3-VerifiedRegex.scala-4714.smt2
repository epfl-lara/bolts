; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244060 () Bool)

(assert start!244060)

(declare-fun b!2499860 () Bool)

(declare-fun res!1057146 () Bool)

(declare-fun e!1585712 () Bool)

(assert (=> b!2499860 (=> (not res!1057146) (not e!1585712))))

(declare-datatypes ((C!14964 0))(
  ( (C!14965 (val!9134 Int)) )
))
(declare-datatypes ((Regex!7403 0))(
  ( (ElementMatch!7403 (c!397685 C!14964)) (Concat!12099 (regOne!15318 Regex!7403) (regTwo!15318 Regex!7403)) (EmptyExpr!7403) (Star!7403 (reg!7732 Regex!7403)) (EmptyLang!7403) (Union!7403 (regOne!15319 Regex!7403) (regTwo!15319 Regex!7403)) )
))
(declare-fun r!27340 () Regex!7403)

(get-info :version)

(assert (=> b!2499860 (= res!1057146 (and (not ((_ is EmptyExpr!7403) r!27340)) (not ((_ is EmptyLang!7403) r!27340)) (not ((_ is ElementMatch!7403) r!27340)) (not ((_ is Union!7403) r!27340)) (not ((_ is Star!7403) r!27340))))))

(declare-fun b!2499861 () Bool)

(declare-fun e!1585710 () Bool)

(declare-fun tp!800466 () Bool)

(declare-fun tp!800465 () Bool)

(assert (=> b!2499861 (= e!1585710 (and tp!800466 tp!800465))))

(declare-fun b!2499862 () Bool)

(declare-fun res!1057145 () Bool)

(assert (=> b!2499862 (=> (not res!1057145) (not e!1585712))))

(declare-datatypes ((List!29468 0))(
  ( (Nil!29368) (Cons!29368 (h!34788 C!14964) (t!211167 List!29468)) )
))
(declare-fun tl!4068 () List!29468)

(declare-fun c!14016 () C!14964)

(declare-fun nullable!2320 (Regex!7403) Bool)

(declare-fun derivative!98 (Regex!7403 List!29468) Regex!7403)

(declare-fun derivativeStep!1972 (Regex!7403 C!14964) Regex!7403)

(assert (=> b!2499862 (= res!1057145 (nullable!2320 (derivative!98 (derivativeStep!1972 r!27340 c!14016) tl!4068)))))

(declare-fun b!2499863 () Bool)

(declare-fun validRegex!3029 (Regex!7403) Bool)

(assert (=> b!2499863 (= e!1585712 (not (validRegex!3029 (regTwo!15318 r!27340))))))

(declare-fun lt!895477 () Regex!7403)

(declare-fun matchR!3406 (Regex!7403 List!29468) Bool)

(assert (=> b!2499863 (= (matchR!3406 lt!895477 tl!4068) (matchR!3406 (derivative!98 lt!895477 tl!4068) Nil!29368))))

(declare-datatypes ((Unit!43063 0))(
  ( (Unit!43064) )
))
(declare-fun lt!895478 () Unit!43063)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!52 (Regex!7403 List!29468) Unit!43063)

(assert (=> b!2499863 (= lt!895478 (lemmaMatchRIsSameAsWholeDerivativeAndNil!52 lt!895477 tl!4068))))

(assert (=> b!2499863 (= lt!895477 (Union!7403 (Concat!12099 (derivativeStep!1972 (regOne!15318 r!27340) c!14016) (regTwo!15318 r!27340)) (derivativeStep!1972 (regTwo!15318 r!27340) c!14016)))))

(declare-fun b!2499864 () Bool)

(declare-fun tp!800464 () Bool)

(assert (=> b!2499864 (= e!1585710 tp!800464)))

(declare-fun b!2499866 () Bool)

(declare-fun e!1585711 () Bool)

(declare-fun tp_is_empty!12661 () Bool)

(declare-fun tp!800462 () Bool)

(assert (=> b!2499866 (= e!1585711 (and tp_is_empty!12661 tp!800462))))

(declare-fun b!2499867 () Bool)

(declare-fun tp!800461 () Bool)

(declare-fun tp!800463 () Bool)

(assert (=> b!2499867 (= e!1585710 (and tp!800461 tp!800463))))

(declare-fun b!2499868 () Bool)

(declare-fun res!1057143 () Bool)

(assert (=> b!2499868 (=> (not res!1057143) (not e!1585712))))

(assert (=> b!2499868 (= res!1057143 (nullable!2320 (regOne!15318 r!27340)))))

(declare-fun b!2499865 () Bool)

(assert (=> b!2499865 (= e!1585710 tp_is_empty!12661)))

(declare-fun res!1057144 () Bool)

(assert (=> start!244060 (=> (not res!1057144) (not e!1585712))))

(assert (=> start!244060 (= res!1057144 (validRegex!3029 r!27340))))

(assert (=> start!244060 e!1585712))

(assert (=> start!244060 e!1585710))

(assert (=> start!244060 tp_is_empty!12661))

(assert (=> start!244060 e!1585711))

(assert (= (and start!244060 res!1057144) b!2499862))

(assert (= (and b!2499862 res!1057145) b!2499860))

(assert (= (and b!2499860 res!1057146) b!2499868))

(assert (= (and b!2499868 res!1057143) b!2499863))

(assert (= (and start!244060 ((_ is ElementMatch!7403) r!27340)) b!2499865))

(assert (= (and start!244060 ((_ is Concat!12099) r!27340)) b!2499861))

(assert (= (and start!244060 ((_ is Star!7403) r!27340)) b!2499864))

(assert (= (and start!244060 ((_ is Union!7403) r!27340)) b!2499867))

(assert (= (and start!244060 ((_ is Cons!29368) tl!4068)) b!2499866))

(declare-fun m!2862857 () Bool)

(assert (=> b!2499862 m!2862857))

(assert (=> b!2499862 m!2862857))

(declare-fun m!2862859 () Bool)

(assert (=> b!2499862 m!2862859))

(assert (=> b!2499862 m!2862859))

(declare-fun m!2862861 () Bool)

(assert (=> b!2499862 m!2862861))

(declare-fun m!2862863 () Bool)

(assert (=> b!2499863 m!2862863))

(declare-fun m!2862865 () Bool)

(assert (=> b!2499863 m!2862865))

(declare-fun m!2862867 () Bool)

(assert (=> b!2499863 m!2862867))

(declare-fun m!2862869 () Bool)

(assert (=> b!2499863 m!2862869))

(declare-fun m!2862871 () Bool)

(assert (=> b!2499863 m!2862871))

(assert (=> b!2499863 m!2862867))

(declare-fun m!2862873 () Bool)

(assert (=> b!2499863 m!2862873))

(declare-fun m!2862875 () Bool)

(assert (=> b!2499863 m!2862875))

(declare-fun m!2862877 () Bool)

(assert (=> b!2499868 m!2862877))

(declare-fun m!2862879 () Bool)

(assert (=> start!244060 m!2862879))

(check-sat (not b!2499864) (not b!2499866) (not start!244060) (not b!2499862) (not b!2499863) tp_is_empty!12661 (not b!2499867) (not b!2499861) (not b!2499868))
(check-sat)
(get-model)

(declare-fun d!715299 () Bool)

(declare-fun nullableFct!590 (Regex!7403) Bool)

(assert (=> d!715299 (= (nullable!2320 (derivative!98 (derivativeStep!1972 r!27340 c!14016) tl!4068)) (nullableFct!590 (derivative!98 (derivativeStep!1972 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468550 () Bool)

(assert (= bs!468550 d!715299))

(assert (=> bs!468550 m!2862859))

(declare-fun m!2862881 () Bool)

(assert (=> bs!468550 m!2862881))

(assert (=> b!2499862 d!715299))

(declare-fun d!715301 () Bool)

(declare-fun lt!895481 () Regex!7403)

(assert (=> d!715301 (validRegex!3029 lt!895481)))

(declare-fun e!1585722 () Regex!7403)

(assert (=> d!715301 (= lt!895481 e!1585722)))

(declare-fun c!397691 () Bool)

(assert (=> d!715301 (= c!397691 ((_ is Cons!29368) tl!4068))))

(assert (=> d!715301 (validRegex!3029 (derivativeStep!1972 r!27340 c!14016))))

(assert (=> d!715301 (= (derivative!98 (derivativeStep!1972 r!27340 c!14016) tl!4068) lt!895481)))

(declare-fun b!2499885 () Bool)

(assert (=> b!2499885 (= e!1585722 (derivative!98 (derivativeStep!1972 (derivativeStep!1972 r!27340 c!14016) (h!34788 tl!4068)) (t!211167 tl!4068)))))

(declare-fun b!2499886 () Bool)

(assert (=> b!2499886 (= e!1585722 (derivativeStep!1972 r!27340 c!14016))))

(assert (= (and d!715301 c!397691) b!2499885))

(assert (= (and d!715301 (not c!397691)) b!2499886))

(declare-fun m!2862885 () Bool)

(assert (=> d!715301 m!2862885))

(assert (=> d!715301 m!2862857))

(declare-fun m!2862887 () Bool)

(assert (=> d!715301 m!2862887))

(assert (=> b!2499885 m!2862857))

(declare-fun m!2862889 () Bool)

(assert (=> b!2499885 m!2862889))

(assert (=> b!2499885 m!2862889))

(declare-fun m!2862891 () Bool)

(assert (=> b!2499885 m!2862891))

(assert (=> b!2499862 d!715301))

(declare-fun b!2499950 () Bool)

(declare-fun c!397712 () Bool)

(assert (=> b!2499950 (= c!397712 ((_ is Union!7403) r!27340))))

(declare-fun e!1585762 () Regex!7403)

(declare-fun e!1585764 () Regex!7403)

(assert (=> b!2499950 (= e!1585762 e!1585764)))

(declare-fun b!2499951 () Bool)

(declare-fun e!1585761 () Regex!7403)

(assert (=> b!2499951 (= e!1585761 EmptyLang!7403)))

(declare-fun call!154321 () Regex!7403)

(declare-fun b!2499952 () Bool)

(declare-fun e!1585765 () Regex!7403)

(declare-fun call!154323 () Regex!7403)

(assert (=> b!2499952 (= e!1585765 (Union!7403 (Concat!12099 call!154323 (regTwo!15318 r!27340)) call!154321))))

(declare-fun bm!154316 () Bool)

(declare-fun call!154324 () Regex!7403)

(declare-fun call!154322 () Regex!7403)

(assert (=> bm!154316 (= call!154324 call!154322)))

(declare-fun b!2499953 () Bool)

(assert (=> b!2499953 (= e!1585761 e!1585762)))

(declare-fun c!397715 () Bool)

(assert (=> b!2499953 (= c!397715 ((_ is ElementMatch!7403) r!27340))))

(declare-fun b!2499954 () Bool)

(declare-fun e!1585763 () Regex!7403)

(assert (=> b!2499954 (= e!1585763 (Concat!12099 call!154324 r!27340))))

(declare-fun b!2499955 () Bool)

(assert (=> b!2499955 (= e!1585765 (Union!7403 (Concat!12099 call!154323 (regTwo!15318 r!27340)) EmptyLang!7403))))

(declare-fun bm!154317 () Bool)

(declare-fun c!397714 () Bool)

(assert (=> bm!154317 (= call!154322 (derivativeStep!1972 (ite c!397712 (regOne!15319 r!27340) (ite c!397714 (reg!7732 r!27340) (regOne!15318 r!27340))) c!14016))))

(declare-fun d!715307 () Bool)

(declare-fun lt!895486 () Regex!7403)

(assert (=> d!715307 (validRegex!3029 lt!895486)))

(assert (=> d!715307 (= lt!895486 e!1585761)))

(declare-fun c!397711 () Bool)

(assert (=> d!715307 (= c!397711 (or ((_ is EmptyExpr!7403) r!27340) ((_ is EmptyLang!7403) r!27340)))))

(assert (=> d!715307 (validRegex!3029 r!27340)))

(assert (=> d!715307 (= (derivativeStep!1972 r!27340 c!14016) lt!895486)))

(declare-fun b!2499956 () Bool)

(assert (=> b!2499956 (= e!1585764 (Union!7403 call!154322 call!154321))))

(declare-fun b!2499957 () Bool)

(assert (=> b!2499957 (= e!1585764 e!1585763)))

(assert (=> b!2499957 (= c!397714 ((_ is Star!7403) r!27340))))

(declare-fun bm!154318 () Bool)

(assert (=> bm!154318 (= call!154321 (derivativeStep!1972 (ite c!397712 (regTwo!15319 r!27340) (regTwo!15318 r!27340)) c!14016))))

(declare-fun bm!154319 () Bool)

(assert (=> bm!154319 (= call!154323 call!154324)))

(declare-fun b!2499958 () Bool)

(assert (=> b!2499958 (= e!1585762 (ite (= c!14016 (c!397685 r!27340)) EmptyExpr!7403 EmptyLang!7403))))

(declare-fun b!2499959 () Bool)

(declare-fun c!397713 () Bool)

(assert (=> b!2499959 (= c!397713 (nullable!2320 (regOne!15318 r!27340)))))

(assert (=> b!2499959 (= e!1585763 e!1585765)))

(assert (= (and d!715307 c!397711) b!2499951))

(assert (= (and d!715307 (not c!397711)) b!2499953))

(assert (= (and b!2499953 c!397715) b!2499958))

(assert (= (and b!2499953 (not c!397715)) b!2499950))

(assert (= (and b!2499950 c!397712) b!2499956))

(assert (= (and b!2499950 (not c!397712)) b!2499957))

(assert (= (and b!2499957 c!397714) b!2499954))

(assert (= (and b!2499957 (not c!397714)) b!2499959))

(assert (= (and b!2499959 c!397713) b!2499952))

(assert (= (and b!2499959 (not c!397713)) b!2499955))

(assert (= (or b!2499952 b!2499955) bm!154319))

(assert (= (or b!2499954 bm!154319) bm!154316))

(assert (= (or b!2499956 b!2499952) bm!154318))

(assert (= (or b!2499956 bm!154316) bm!154317))

(declare-fun m!2862899 () Bool)

(assert (=> bm!154317 m!2862899))

(declare-fun m!2862901 () Bool)

(assert (=> d!715307 m!2862901))

(assert (=> d!715307 m!2862879))

(declare-fun m!2862903 () Bool)

(assert (=> bm!154318 m!2862903))

(assert (=> b!2499959 m!2862877))

(assert (=> b!2499862 d!715307))

(declare-fun d!715311 () Bool)

(assert (=> d!715311 (= (nullable!2320 (regOne!15318 r!27340)) (nullableFct!590 (regOne!15318 r!27340)))))

(declare-fun bs!468552 () Bool)

(assert (= bs!468552 d!715311))

(declare-fun m!2862905 () Bool)

(assert (=> bs!468552 m!2862905))

(assert (=> b!2499868 d!715311))

(declare-fun bm!154330 () Bool)

(declare-fun call!154336 () Bool)

(declare-fun call!154335 () Bool)

(assert (=> bm!154330 (= call!154336 call!154335)))

(declare-fun bm!154331 () Bool)

(declare-fun c!397727 () Bool)

(declare-fun c!397726 () Bool)

(assert (=> bm!154331 (= call!154335 (validRegex!3029 (ite c!397727 (reg!7732 r!27340) (ite c!397726 (regOne!15319 r!27340) (regTwo!15318 r!27340)))))))

(declare-fun b!2500006 () Bool)

(declare-fun e!1585800 () Bool)

(declare-fun e!1585796 () Bool)

(assert (=> b!2500006 (= e!1585800 e!1585796)))

(declare-fun res!1057207 () Bool)

(assert (=> b!2500006 (=> (not res!1057207) (not e!1585796))))

(declare-fun call!154337 () Bool)

(assert (=> b!2500006 (= res!1057207 call!154337)))

(declare-fun b!2500007 () Bool)

(declare-fun e!1585795 () Bool)

(assert (=> b!2500007 (= e!1585795 call!154337)))

(declare-fun b!2500008 () Bool)

(declare-fun e!1585798 () Bool)

(assert (=> b!2500008 (= e!1585798 call!154335)))

(declare-fun d!715313 () Bool)

(declare-fun res!1057206 () Bool)

(declare-fun e!1585799 () Bool)

(assert (=> d!715313 (=> res!1057206 e!1585799)))

(assert (=> d!715313 (= res!1057206 ((_ is ElementMatch!7403) r!27340))))

(assert (=> d!715313 (= (validRegex!3029 r!27340) e!1585799)))

(declare-fun b!2500009 () Bool)

(declare-fun res!1057205 () Bool)

(assert (=> b!2500009 (=> (not res!1057205) (not e!1585795))))

(assert (=> b!2500009 (= res!1057205 call!154336)))

(declare-fun e!1585794 () Bool)

(assert (=> b!2500009 (= e!1585794 e!1585795)))

(declare-fun bm!154332 () Bool)

(assert (=> bm!154332 (= call!154337 (validRegex!3029 (ite c!397726 (regTwo!15319 r!27340) (regOne!15318 r!27340))))))

(declare-fun b!2500010 () Bool)

(assert (=> b!2500010 (= e!1585796 call!154336)))

(declare-fun b!2500011 () Bool)

(declare-fun e!1585797 () Bool)

(assert (=> b!2500011 (= e!1585797 e!1585794)))

(assert (=> b!2500011 (= c!397726 ((_ is Union!7403) r!27340))))

(declare-fun b!2500012 () Bool)

(assert (=> b!2500012 (= e!1585799 e!1585797)))

(assert (=> b!2500012 (= c!397727 ((_ is Star!7403) r!27340))))

(declare-fun b!2500013 () Bool)

(declare-fun res!1057204 () Bool)

(assert (=> b!2500013 (=> res!1057204 e!1585800)))

(assert (=> b!2500013 (= res!1057204 (not ((_ is Concat!12099) r!27340)))))

(assert (=> b!2500013 (= e!1585794 e!1585800)))

(declare-fun b!2500014 () Bool)

(assert (=> b!2500014 (= e!1585797 e!1585798)))

(declare-fun res!1057208 () Bool)

(assert (=> b!2500014 (= res!1057208 (not (nullable!2320 (reg!7732 r!27340))))))

(assert (=> b!2500014 (=> (not res!1057208) (not e!1585798))))

(assert (= (and d!715313 (not res!1057206)) b!2500012))

(assert (= (and b!2500012 c!397727) b!2500014))

(assert (= (and b!2500012 (not c!397727)) b!2500011))

(assert (= (and b!2500014 res!1057208) b!2500008))

(assert (= (and b!2500011 c!397726) b!2500009))

(assert (= (and b!2500011 (not c!397726)) b!2500013))

(assert (= (and b!2500009 res!1057205) b!2500007))

(assert (= (and b!2500013 (not res!1057204)) b!2500006))

(assert (= (and b!2500006 res!1057207) b!2500010))

(assert (= (or b!2500009 b!2500010) bm!154330))

(assert (= (or b!2500007 b!2500006) bm!154332))

(assert (= (or b!2500008 bm!154330) bm!154331))

(declare-fun m!2862939 () Bool)

(assert (=> bm!154331 m!2862939))

(declare-fun m!2862941 () Bool)

(assert (=> bm!154332 m!2862941))

(declare-fun m!2862943 () Bool)

(assert (=> b!2500014 m!2862943))

(assert (=> start!244060 d!715313))

(declare-fun d!715319 () Bool)

(declare-fun e!1585829 () Bool)

(assert (=> d!715319 e!1585829))

(declare-fun c!397745 () Bool)

(assert (=> d!715319 (= c!397745 ((_ is EmptyExpr!7403) (derivative!98 lt!895477 tl!4068)))))

(declare-fun lt!895499 () Bool)

(declare-fun e!1585825 () Bool)

(assert (=> d!715319 (= lt!895499 e!1585825)))

(declare-fun c!397744 () Bool)

(declare-fun isEmpty!16830 (List!29468) Bool)

(assert (=> d!715319 (= c!397744 (isEmpty!16830 Nil!29368))))

(assert (=> d!715319 (validRegex!3029 (derivative!98 lt!895477 tl!4068))))

(assert (=> d!715319 (= (matchR!3406 (derivative!98 lt!895477 tl!4068) Nil!29368) lt!895499)))

(declare-fun b!2500061 () Bool)

(declare-fun res!1057231 () Bool)

(declare-fun e!1585824 () Bool)

(assert (=> b!2500061 (=> (not res!1057231) (not e!1585824))))

(declare-fun tail!3971 (List!29468) List!29468)

(assert (=> b!2500061 (= res!1057231 (isEmpty!16830 (tail!3971 Nil!29368)))))

(declare-fun b!2500062 () Bool)

(declare-fun head!5694 (List!29468) C!14964)

(assert (=> b!2500062 (= e!1585824 (= (head!5694 Nil!29368) (c!397685 (derivative!98 lt!895477 tl!4068))))))

(declare-fun b!2500063 () Bool)

(declare-fun e!1585830 () Bool)

(declare-fun e!1585827 () Bool)

(assert (=> b!2500063 (= e!1585830 e!1585827)))

(declare-fun res!1057225 () Bool)

(assert (=> b!2500063 (=> res!1057225 e!1585827)))

(declare-fun call!154340 () Bool)

(assert (=> b!2500063 (= res!1057225 call!154340)))

(declare-fun b!2500064 () Bool)

(assert (=> b!2500064 (= e!1585827 (not (= (head!5694 Nil!29368) (c!397685 (derivative!98 lt!895477 tl!4068)))))))

(declare-fun b!2500065 () Bool)

(assert (=> b!2500065 (= e!1585825 (matchR!3406 (derivativeStep!1972 (derivative!98 lt!895477 tl!4068) (head!5694 Nil!29368)) (tail!3971 Nil!29368)))))

(declare-fun b!2500066 () Bool)

(declare-fun res!1057228 () Bool)

(declare-fun e!1585823 () Bool)

(assert (=> b!2500066 (=> res!1057228 e!1585823)))

(assert (=> b!2500066 (= res!1057228 (not ((_ is ElementMatch!7403) (derivative!98 lt!895477 tl!4068))))))

(declare-fun e!1585822 () Bool)

(assert (=> b!2500066 (= e!1585822 e!1585823)))

(declare-fun b!2500067 () Bool)

(assert (=> b!2500067 (= e!1585829 e!1585822)))

(declare-fun c!397742 () Bool)

(assert (=> b!2500067 (= c!397742 ((_ is EmptyLang!7403) (derivative!98 lt!895477 tl!4068)))))

(declare-fun b!2500068 () Bool)

(declare-fun res!1057230 () Bool)

(assert (=> b!2500068 (=> res!1057230 e!1585827)))

(assert (=> b!2500068 (= res!1057230 (not (isEmpty!16830 (tail!3971 Nil!29368))))))

(declare-fun b!2500069 () Bool)

(assert (=> b!2500069 (= e!1585829 (= lt!895499 call!154340))))

(declare-fun b!2500070 () Bool)

(assert (=> b!2500070 (= e!1585825 (nullable!2320 (derivative!98 lt!895477 tl!4068)))))

(declare-fun b!2500071 () Bool)

(assert (=> b!2500071 (= e!1585822 (not lt!895499))))

(declare-fun b!2500072 () Bool)

(declare-fun res!1057232 () Bool)

(assert (=> b!2500072 (=> (not res!1057232) (not e!1585824))))

(assert (=> b!2500072 (= res!1057232 (not call!154340))))

(declare-fun b!2500073 () Bool)

(declare-fun res!1057229 () Bool)

(assert (=> b!2500073 (=> res!1057229 e!1585823)))

(assert (=> b!2500073 (= res!1057229 e!1585824)))

(declare-fun res!1057226 () Bool)

(assert (=> b!2500073 (=> (not res!1057226) (not e!1585824))))

(assert (=> b!2500073 (= res!1057226 lt!895499)))

(declare-fun bm!154335 () Bool)

(assert (=> bm!154335 (= call!154340 (isEmpty!16830 Nil!29368))))

(declare-fun b!2500078 () Bool)

(assert (=> b!2500078 (= e!1585823 e!1585830)))

(declare-fun res!1057227 () Bool)

(assert (=> b!2500078 (=> (not res!1057227) (not e!1585830))))

(assert (=> b!2500078 (= res!1057227 (not lt!895499))))

(assert (= (and d!715319 c!397744) b!2500070))

(assert (= (and d!715319 (not c!397744)) b!2500065))

(assert (= (and d!715319 c!397745) b!2500069))

(assert (= (and d!715319 (not c!397745)) b!2500067))

(assert (= (and b!2500067 c!397742) b!2500071))

(assert (= (and b!2500067 (not c!397742)) b!2500066))

(assert (= (and b!2500066 (not res!1057228)) b!2500073))

(assert (= (and b!2500073 res!1057226) b!2500072))

(assert (= (and b!2500072 res!1057232) b!2500061))

(assert (= (and b!2500061 res!1057231) b!2500062))

(assert (= (and b!2500073 (not res!1057229)) b!2500078))

(assert (= (and b!2500078 res!1057227) b!2500063))

(assert (= (and b!2500063 (not res!1057225)) b!2500068))

(assert (= (and b!2500068 (not res!1057230)) b!2500064))

(assert (= (or b!2500069 b!2500063 b!2500072) bm!154335))

(declare-fun m!2862953 () Bool)

(assert (=> b!2500061 m!2862953))

(assert (=> b!2500061 m!2862953))

(declare-fun m!2862955 () Bool)

(assert (=> b!2500061 m!2862955))

(assert (=> b!2500070 m!2862867))

(declare-fun m!2862957 () Bool)

(assert (=> b!2500070 m!2862957))

(declare-fun m!2862959 () Bool)

(assert (=> b!2500062 m!2862959))

(assert (=> b!2500064 m!2862959))

(assert (=> b!2500065 m!2862959))

(assert (=> b!2500065 m!2862867))

(assert (=> b!2500065 m!2862959))

(declare-fun m!2862961 () Bool)

(assert (=> b!2500065 m!2862961))

(assert (=> b!2500065 m!2862953))

(assert (=> b!2500065 m!2862961))

(assert (=> b!2500065 m!2862953))

(declare-fun m!2862963 () Bool)

(assert (=> b!2500065 m!2862963))

(declare-fun m!2862965 () Bool)

(assert (=> bm!154335 m!2862965))

(assert (=> b!2500068 m!2862953))

(assert (=> b!2500068 m!2862953))

(assert (=> b!2500068 m!2862955))

(assert (=> d!715319 m!2862965))

(assert (=> d!715319 m!2862867))

(declare-fun m!2862967 () Bool)

(assert (=> d!715319 m!2862967))

(assert (=> b!2499863 d!715319))

(declare-fun d!715325 () Bool)

(declare-fun e!1585840 () Bool)

(assert (=> d!715325 e!1585840))

(declare-fun c!397752 () Bool)

(assert (=> d!715325 (= c!397752 ((_ is EmptyExpr!7403) lt!895477))))

(declare-fun lt!895500 () Bool)

(declare-fun e!1585838 () Bool)

(assert (=> d!715325 (= lt!895500 e!1585838)))

(declare-fun c!397751 () Bool)

(assert (=> d!715325 (= c!397751 (isEmpty!16830 tl!4068))))

(assert (=> d!715325 (validRegex!3029 lt!895477)))

(assert (=> d!715325 (= (matchR!3406 lt!895477 tl!4068) lt!895500)))

(declare-fun b!2500083 () Bool)

(declare-fun res!1057239 () Bool)

(declare-fun e!1585837 () Bool)

(assert (=> b!2500083 (=> (not res!1057239) (not e!1585837))))

(assert (=> b!2500083 (= res!1057239 (isEmpty!16830 (tail!3971 tl!4068)))))

(declare-fun b!2500084 () Bool)

(assert (=> b!2500084 (= e!1585837 (= (head!5694 tl!4068) (c!397685 lt!895477)))))

(declare-fun b!2500085 () Bool)

(declare-fun e!1585841 () Bool)

(declare-fun e!1585839 () Bool)

(assert (=> b!2500085 (= e!1585841 e!1585839)))

(declare-fun res!1057233 () Bool)

(assert (=> b!2500085 (=> res!1057233 e!1585839)))

(declare-fun call!154349 () Bool)

(assert (=> b!2500085 (= res!1057233 call!154349)))

(declare-fun b!2500086 () Bool)

(assert (=> b!2500086 (= e!1585839 (not (= (head!5694 tl!4068) (c!397685 lt!895477))))))

(declare-fun b!2500087 () Bool)

(assert (=> b!2500087 (= e!1585838 (matchR!3406 (derivativeStep!1972 lt!895477 (head!5694 tl!4068)) (tail!3971 tl!4068)))))

(declare-fun b!2500088 () Bool)

(declare-fun res!1057236 () Bool)

(declare-fun e!1585836 () Bool)

(assert (=> b!2500088 (=> res!1057236 e!1585836)))

(assert (=> b!2500088 (= res!1057236 (not ((_ is ElementMatch!7403) lt!895477)))))

(declare-fun e!1585835 () Bool)

(assert (=> b!2500088 (= e!1585835 e!1585836)))

(declare-fun b!2500089 () Bool)

(assert (=> b!2500089 (= e!1585840 e!1585835)))

(declare-fun c!397750 () Bool)

(assert (=> b!2500089 (= c!397750 ((_ is EmptyLang!7403) lt!895477))))

(declare-fun b!2500090 () Bool)

(declare-fun res!1057238 () Bool)

(assert (=> b!2500090 (=> res!1057238 e!1585839)))

(assert (=> b!2500090 (= res!1057238 (not (isEmpty!16830 (tail!3971 tl!4068))))))

(declare-fun b!2500091 () Bool)

(assert (=> b!2500091 (= e!1585840 (= lt!895500 call!154349))))

(declare-fun b!2500092 () Bool)

(assert (=> b!2500092 (= e!1585838 (nullable!2320 lt!895477))))

(declare-fun b!2500093 () Bool)

(assert (=> b!2500093 (= e!1585835 (not lt!895500))))

(declare-fun b!2500094 () Bool)

(declare-fun res!1057240 () Bool)

(assert (=> b!2500094 (=> (not res!1057240) (not e!1585837))))

(assert (=> b!2500094 (= res!1057240 (not call!154349))))

(declare-fun b!2500095 () Bool)

(declare-fun res!1057237 () Bool)

(assert (=> b!2500095 (=> res!1057237 e!1585836)))

(assert (=> b!2500095 (= res!1057237 e!1585837)))

(declare-fun res!1057234 () Bool)

(assert (=> b!2500095 (=> (not res!1057234) (not e!1585837))))

(assert (=> b!2500095 (= res!1057234 lt!895500)))

(declare-fun bm!154344 () Bool)

(assert (=> bm!154344 (= call!154349 (isEmpty!16830 tl!4068))))

(declare-fun b!2500096 () Bool)

(assert (=> b!2500096 (= e!1585836 e!1585841)))

(declare-fun res!1057235 () Bool)

(assert (=> b!2500096 (=> (not res!1057235) (not e!1585841))))

(assert (=> b!2500096 (= res!1057235 (not lt!895500))))

(assert (= (and d!715325 c!397751) b!2500092))

(assert (= (and d!715325 (not c!397751)) b!2500087))

(assert (= (and d!715325 c!397752) b!2500091))

(assert (= (and d!715325 (not c!397752)) b!2500089))

(assert (= (and b!2500089 c!397750) b!2500093))

(assert (= (and b!2500089 (not c!397750)) b!2500088))

(assert (= (and b!2500088 (not res!1057236)) b!2500095))

(assert (= (and b!2500095 res!1057234) b!2500094))

(assert (= (and b!2500094 res!1057240) b!2500083))

(assert (= (and b!2500083 res!1057239) b!2500084))

(assert (= (and b!2500095 (not res!1057237)) b!2500096))

(assert (= (and b!2500096 res!1057235) b!2500085))

(assert (= (and b!2500085 (not res!1057233)) b!2500090))

(assert (= (and b!2500090 (not res!1057238)) b!2500086))

(assert (= (or b!2500091 b!2500085 b!2500094) bm!154344))

(declare-fun m!2862969 () Bool)

(assert (=> b!2500083 m!2862969))

(assert (=> b!2500083 m!2862969))

(declare-fun m!2862971 () Bool)

(assert (=> b!2500083 m!2862971))

(declare-fun m!2862973 () Bool)

(assert (=> b!2500092 m!2862973))

(declare-fun m!2862975 () Bool)

(assert (=> b!2500084 m!2862975))

(assert (=> b!2500086 m!2862975))

(assert (=> b!2500087 m!2862975))

(assert (=> b!2500087 m!2862975))

(declare-fun m!2862977 () Bool)

(assert (=> b!2500087 m!2862977))

(assert (=> b!2500087 m!2862969))

(assert (=> b!2500087 m!2862977))

(assert (=> b!2500087 m!2862969))

(declare-fun m!2862979 () Bool)

(assert (=> b!2500087 m!2862979))

(declare-fun m!2862981 () Bool)

(assert (=> bm!154344 m!2862981))

(assert (=> b!2500090 m!2862969))

(assert (=> b!2500090 m!2862969))

(assert (=> b!2500090 m!2862971))

(assert (=> d!715325 m!2862981))

(declare-fun m!2862983 () Bool)

(assert (=> d!715325 m!2862983))

(assert (=> b!2499863 d!715325))

(declare-fun d!715327 () Bool)

(declare-fun lt!895501 () Regex!7403)

(assert (=> d!715327 (validRegex!3029 lt!895501)))

(declare-fun e!1585842 () Regex!7403)

(assert (=> d!715327 (= lt!895501 e!1585842)))

(declare-fun c!397753 () Bool)

(assert (=> d!715327 (= c!397753 ((_ is Cons!29368) tl!4068))))

(assert (=> d!715327 (validRegex!3029 lt!895477)))

(assert (=> d!715327 (= (derivative!98 lt!895477 tl!4068) lt!895501)))

(declare-fun b!2500097 () Bool)

(assert (=> b!2500097 (= e!1585842 (derivative!98 (derivativeStep!1972 lt!895477 (h!34788 tl!4068)) (t!211167 tl!4068)))))

(declare-fun b!2500098 () Bool)

(assert (=> b!2500098 (= e!1585842 lt!895477)))

(assert (= (and d!715327 c!397753) b!2500097))

(assert (= (and d!715327 (not c!397753)) b!2500098))

(declare-fun m!2862985 () Bool)

(assert (=> d!715327 m!2862985))

(assert (=> d!715327 m!2862983))

(declare-fun m!2862987 () Bool)

(assert (=> b!2500097 m!2862987))

(assert (=> b!2500097 m!2862987))

(declare-fun m!2862989 () Bool)

(assert (=> b!2500097 m!2862989))

(assert (=> b!2499863 d!715327))

(declare-fun bm!154345 () Bool)

(declare-fun call!154351 () Bool)

(declare-fun call!154350 () Bool)

(assert (=> bm!154345 (= call!154351 call!154350)))

(declare-fun c!397755 () Bool)

(declare-fun c!397754 () Bool)

(declare-fun bm!154346 () Bool)

(assert (=> bm!154346 (= call!154350 (validRegex!3029 (ite c!397755 (reg!7732 (regTwo!15318 r!27340)) (ite c!397754 (regOne!15319 (regTwo!15318 r!27340)) (regTwo!15318 (regTwo!15318 r!27340))))))))

(declare-fun b!2500099 () Bool)

(declare-fun e!1585849 () Bool)

(declare-fun e!1585845 () Bool)

(assert (=> b!2500099 (= e!1585849 e!1585845)))

(declare-fun res!1057244 () Bool)

(assert (=> b!2500099 (=> (not res!1057244) (not e!1585845))))

(declare-fun call!154352 () Bool)

(assert (=> b!2500099 (= res!1057244 call!154352)))

(declare-fun b!2500100 () Bool)

(declare-fun e!1585844 () Bool)

(assert (=> b!2500100 (= e!1585844 call!154352)))

(declare-fun b!2500101 () Bool)

(declare-fun e!1585847 () Bool)

(assert (=> b!2500101 (= e!1585847 call!154350)))

(declare-fun d!715329 () Bool)

(declare-fun res!1057243 () Bool)

(declare-fun e!1585848 () Bool)

(assert (=> d!715329 (=> res!1057243 e!1585848)))

(assert (=> d!715329 (= res!1057243 ((_ is ElementMatch!7403) (regTwo!15318 r!27340)))))

(assert (=> d!715329 (= (validRegex!3029 (regTwo!15318 r!27340)) e!1585848)))

(declare-fun b!2500102 () Bool)

(declare-fun res!1057242 () Bool)

(assert (=> b!2500102 (=> (not res!1057242) (not e!1585844))))

(assert (=> b!2500102 (= res!1057242 call!154351)))

(declare-fun e!1585843 () Bool)

(assert (=> b!2500102 (= e!1585843 e!1585844)))

(declare-fun bm!154347 () Bool)

(assert (=> bm!154347 (= call!154352 (validRegex!3029 (ite c!397754 (regTwo!15319 (regTwo!15318 r!27340)) (regOne!15318 (regTwo!15318 r!27340)))))))

(declare-fun b!2500103 () Bool)

(assert (=> b!2500103 (= e!1585845 call!154351)))

(declare-fun b!2500104 () Bool)

(declare-fun e!1585846 () Bool)

(assert (=> b!2500104 (= e!1585846 e!1585843)))

(assert (=> b!2500104 (= c!397754 ((_ is Union!7403) (regTwo!15318 r!27340)))))

(declare-fun b!2500105 () Bool)

(assert (=> b!2500105 (= e!1585848 e!1585846)))

(assert (=> b!2500105 (= c!397755 ((_ is Star!7403) (regTwo!15318 r!27340)))))

(declare-fun b!2500106 () Bool)

(declare-fun res!1057241 () Bool)

(assert (=> b!2500106 (=> res!1057241 e!1585849)))

(assert (=> b!2500106 (= res!1057241 (not ((_ is Concat!12099) (regTwo!15318 r!27340))))))

(assert (=> b!2500106 (= e!1585843 e!1585849)))

(declare-fun b!2500107 () Bool)

(assert (=> b!2500107 (= e!1585846 e!1585847)))

(declare-fun res!1057245 () Bool)

(assert (=> b!2500107 (= res!1057245 (not (nullable!2320 (reg!7732 (regTwo!15318 r!27340)))))))

(assert (=> b!2500107 (=> (not res!1057245) (not e!1585847))))

(assert (= (and d!715329 (not res!1057243)) b!2500105))

(assert (= (and b!2500105 c!397755) b!2500107))

(assert (= (and b!2500105 (not c!397755)) b!2500104))

(assert (= (and b!2500107 res!1057245) b!2500101))

(assert (= (and b!2500104 c!397754) b!2500102))

(assert (= (and b!2500104 (not c!397754)) b!2500106))

(assert (= (and b!2500102 res!1057242) b!2500100))

(assert (= (and b!2500106 (not res!1057241)) b!2500099))

(assert (= (and b!2500099 res!1057244) b!2500103))

(assert (= (or b!2500102 b!2500103) bm!154345))

(assert (= (or b!2500100 b!2500099) bm!154347))

(assert (= (or b!2500101 bm!154345) bm!154346))

(declare-fun m!2862991 () Bool)

(assert (=> bm!154346 m!2862991))

(declare-fun m!2862993 () Bool)

(assert (=> bm!154347 m!2862993))

(declare-fun m!2862995 () Bool)

(assert (=> b!2500107 m!2862995))

(assert (=> b!2499863 d!715329))

(declare-fun d!715331 () Bool)

(assert (=> d!715331 (= (matchR!3406 lt!895477 tl!4068) (matchR!3406 (derivative!98 lt!895477 tl!4068) Nil!29368))))

(declare-fun lt!895506 () Unit!43063)

(declare-fun choose!14762 (Regex!7403 List!29468) Unit!43063)

(assert (=> d!715331 (= lt!895506 (choose!14762 lt!895477 tl!4068))))

(assert (=> d!715331 (validRegex!3029 lt!895477)))

(assert (=> d!715331 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!52 lt!895477 tl!4068) lt!895506)))

(declare-fun bs!468555 () Bool)

(assert (= bs!468555 d!715331))

(assert (=> bs!468555 m!2862867))

(assert (=> bs!468555 m!2862867))

(assert (=> bs!468555 m!2862869))

(assert (=> bs!468555 m!2862983))

(assert (=> bs!468555 m!2862873))

(declare-fun m!2863029 () Bool)

(assert (=> bs!468555 m!2863029))

(assert (=> b!2499863 d!715331))

(declare-fun b!2500140 () Bool)

(declare-fun c!397770 () Bool)

(assert (=> b!2500140 (= c!397770 ((_ is Union!7403) (regTwo!15318 r!27340)))))

(declare-fun e!1585871 () Regex!7403)

(declare-fun e!1585874 () Regex!7403)

(assert (=> b!2500140 (= e!1585871 e!1585874)))

(declare-fun b!2500141 () Bool)

(declare-fun e!1585870 () Regex!7403)

(assert (=> b!2500141 (= e!1585870 EmptyLang!7403)))

(declare-fun call!154365 () Regex!7403)

(declare-fun call!154368 () Regex!7403)

(declare-fun e!1585877 () Regex!7403)

(declare-fun b!2500143 () Bool)

(assert (=> b!2500143 (= e!1585877 (Union!7403 (Concat!12099 call!154368 (regTwo!15318 (regTwo!15318 r!27340))) call!154365))))

(declare-fun bm!154360 () Bool)

(declare-fun call!154370 () Regex!7403)

(declare-fun call!154366 () Regex!7403)

(assert (=> bm!154360 (= call!154370 call!154366)))

(declare-fun b!2500146 () Bool)

(assert (=> b!2500146 (= e!1585870 e!1585871)))

(declare-fun c!397777 () Bool)

(assert (=> b!2500146 (= c!397777 ((_ is ElementMatch!7403) (regTwo!15318 r!27340)))))

(declare-fun b!2500148 () Bool)

(declare-fun e!1585872 () Regex!7403)

(assert (=> b!2500148 (= e!1585872 (Concat!12099 call!154370 (regTwo!15318 r!27340)))))

(declare-fun b!2500149 () Bool)

(assert (=> b!2500149 (= e!1585877 (Union!7403 (Concat!12099 call!154368 (regTwo!15318 (regTwo!15318 r!27340))) EmptyLang!7403))))

(declare-fun bm!154362 () Bool)

(declare-fun c!397776 () Bool)

(assert (=> bm!154362 (= call!154366 (derivativeStep!1972 (ite c!397770 (regOne!15319 (regTwo!15318 r!27340)) (ite c!397776 (reg!7732 (regTwo!15318 r!27340)) (regOne!15318 (regTwo!15318 r!27340)))) c!14016))))

(declare-fun d!715341 () Bool)

(declare-fun lt!895509 () Regex!7403)

(assert (=> d!715341 (validRegex!3029 lt!895509)))

(assert (=> d!715341 (= lt!895509 e!1585870)))

(declare-fun c!397769 () Bool)

(assert (=> d!715341 (= c!397769 (or ((_ is EmptyExpr!7403) (regTwo!15318 r!27340)) ((_ is EmptyLang!7403) (regTwo!15318 r!27340))))))

(assert (=> d!715341 (validRegex!3029 (regTwo!15318 r!27340))))

(assert (=> d!715341 (= (derivativeStep!1972 (regTwo!15318 r!27340) c!14016) lt!895509)))

(declare-fun b!2500151 () Bool)

(assert (=> b!2500151 (= e!1585874 (Union!7403 call!154366 call!154365))))

(declare-fun b!2500153 () Bool)

(assert (=> b!2500153 (= e!1585874 e!1585872)))

(assert (=> b!2500153 (= c!397776 ((_ is Star!7403) (regTwo!15318 r!27340)))))

(declare-fun bm!154364 () Bool)

(assert (=> bm!154364 (= call!154365 (derivativeStep!1972 (ite c!397770 (regTwo!15319 (regTwo!15318 r!27340)) (regTwo!15318 (regTwo!15318 r!27340))) c!14016))))

(declare-fun bm!154365 () Bool)

(assert (=> bm!154365 (= call!154368 call!154370)))

(declare-fun b!2500156 () Bool)

(assert (=> b!2500156 (= e!1585871 (ite (= c!14016 (c!397685 (regTwo!15318 r!27340))) EmptyExpr!7403 EmptyLang!7403))))

(declare-fun b!2500158 () Bool)

(declare-fun c!397771 () Bool)

(assert (=> b!2500158 (= c!397771 (nullable!2320 (regOne!15318 (regTwo!15318 r!27340))))))

(assert (=> b!2500158 (= e!1585872 e!1585877)))

(assert (= (and d!715341 c!397769) b!2500141))

(assert (= (and d!715341 (not c!397769)) b!2500146))

(assert (= (and b!2500146 c!397777) b!2500156))

(assert (= (and b!2500146 (not c!397777)) b!2500140))

(assert (= (and b!2500140 c!397770) b!2500151))

(assert (= (and b!2500140 (not c!397770)) b!2500153))

(assert (= (and b!2500153 c!397776) b!2500148))

(assert (= (and b!2500153 (not c!397776)) b!2500158))

(assert (= (and b!2500158 c!397771) b!2500143))

(assert (= (and b!2500158 (not c!397771)) b!2500149))

(assert (= (or b!2500143 b!2500149) bm!154365))

(assert (= (or b!2500148 bm!154365) bm!154360))

(assert (= (or b!2500151 b!2500143) bm!154364))

(assert (= (or b!2500151 bm!154360) bm!154362))

(declare-fun m!2863039 () Bool)

(assert (=> bm!154362 m!2863039))

(declare-fun m!2863041 () Bool)

(assert (=> d!715341 m!2863041))

(assert (=> d!715341 m!2862863))

(declare-fun m!2863043 () Bool)

(assert (=> bm!154364 m!2863043))

(declare-fun m!2863045 () Bool)

(assert (=> b!2500158 m!2863045))

(assert (=> b!2499863 d!715341))

(declare-fun b!2500167 () Bool)

(declare-fun c!397780 () Bool)

(assert (=> b!2500167 (= c!397780 ((_ is Union!7403) (regOne!15318 r!27340)))))

(declare-fun e!1585881 () Regex!7403)

(declare-fun e!1585883 () Regex!7403)

(assert (=> b!2500167 (= e!1585881 e!1585883)))

(declare-fun b!2500168 () Bool)

(declare-fun e!1585880 () Regex!7403)

(assert (=> b!2500168 (= e!1585880 EmptyLang!7403)))

(declare-fun call!154374 () Regex!7403)

(declare-fun b!2500169 () Bool)

(declare-fun call!154372 () Regex!7403)

(declare-fun e!1585884 () Regex!7403)

(assert (=> b!2500169 (= e!1585884 (Union!7403 (Concat!12099 call!154374 (regTwo!15318 (regOne!15318 r!27340))) call!154372))))

(declare-fun bm!154367 () Bool)

(declare-fun call!154375 () Regex!7403)

(declare-fun call!154373 () Regex!7403)

(assert (=> bm!154367 (= call!154375 call!154373)))

(declare-fun b!2500170 () Bool)

(assert (=> b!2500170 (= e!1585880 e!1585881)))

(declare-fun c!397783 () Bool)

(assert (=> b!2500170 (= c!397783 ((_ is ElementMatch!7403) (regOne!15318 r!27340)))))

(declare-fun b!2500171 () Bool)

(declare-fun e!1585882 () Regex!7403)

(assert (=> b!2500171 (= e!1585882 (Concat!12099 call!154375 (regOne!15318 r!27340)))))

(declare-fun b!2500172 () Bool)

(assert (=> b!2500172 (= e!1585884 (Union!7403 (Concat!12099 call!154374 (regTwo!15318 (regOne!15318 r!27340))) EmptyLang!7403))))

(declare-fun c!397782 () Bool)

(declare-fun bm!154368 () Bool)

(assert (=> bm!154368 (= call!154373 (derivativeStep!1972 (ite c!397780 (regOne!15319 (regOne!15318 r!27340)) (ite c!397782 (reg!7732 (regOne!15318 r!27340)) (regOne!15318 (regOne!15318 r!27340)))) c!14016))))

(declare-fun d!715345 () Bool)

(declare-fun lt!895510 () Regex!7403)

(assert (=> d!715345 (validRegex!3029 lt!895510)))

(assert (=> d!715345 (= lt!895510 e!1585880)))

(declare-fun c!397779 () Bool)

(assert (=> d!715345 (= c!397779 (or ((_ is EmptyExpr!7403) (regOne!15318 r!27340)) ((_ is EmptyLang!7403) (regOne!15318 r!27340))))))

(assert (=> d!715345 (validRegex!3029 (regOne!15318 r!27340))))

(assert (=> d!715345 (= (derivativeStep!1972 (regOne!15318 r!27340) c!14016) lt!895510)))

(declare-fun b!2500173 () Bool)

(assert (=> b!2500173 (= e!1585883 (Union!7403 call!154373 call!154372))))

(declare-fun b!2500174 () Bool)

(assert (=> b!2500174 (= e!1585883 e!1585882)))

(assert (=> b!2500174 (= c!397782 ((_ is Star!7403) (regOne!15318 r!27340)))))

(declare-fun bm!154369 () Bool)

(assert (=> bm!154369 (= call!154372 (derivativeStep!1972 (ite c!397780 (regTwo!15319 (regOne!15318 r!27340)) (regTwo!15318 (regOne!15318 r!27340))) c!14016))))

(declare-fun bm!154370 () Bool)

(assert (=> bm!154370 (= call!154374 call!154375)))

(declare-fun b!2500175 () Bool)

(assert (=> b!2500175 (= e!1585881 (ite (= c!14016 (c!397685 (regOne!15318 r!27340))) EmptyExpr!7403 EmptyLang!7403))))

(declare-fun b!2500176 () Bool)

(declare-fun c!397781 () Bool)

(assert (=> b!2500176 (= c!397781 (nullable!2320 (regOne!15318 (regOne!15318 r!27340))))))

(assert (=> b!2500176 (= e!1585882 e!1585884)))

(assert (= (and d!715345 c!397779) b!2500168))

(assert (= (and d!715345 (not c!397779)) b!2500170))

(assert (= (and b!2500170 c!397783) b!2500175))

(assert (= (and b!2500170 (not c!397783)) b!2500167))

(assert (= (and b!2500167 c!397780) b!2500173))

(assert (= (and b!2500167 (not c!397780)) b!2500174))

(assert (= (and b!2500174 c!397782) b!2500171))

(assert (= (and b!2500174 (not c!397782)) b!2500176))

(assert (= (and b!2500176 c!397781) b!2500169))

(assert (= (and b!2500176 (not c!397781)) b!2500172))

(assert (= (or b!2500169 b!2500172) bm!154370))

(assert (= (or b!2500171 bm!154370) bm!154367))

(assert (= (or b!2500173 b!2500169) bm!154369))

(assert (= (or b!2500173 bm!154367) bm!154368))

(declare-fun m!2863047 () Bool)

(assert (=> bm!154368 m!2863047))

(declare-fun m!2863049 () Bool)

(assert (=> d!715345 m!2863049))

(declare-fun m!2863051 () Bool)

(assert (=> d!715345 m!2863051))

(declare-fun m!2863053 () Bool)

(assert (=> bm!154369 m!2863053))

(declare-fun m!2863055 () Bool)

(assert (=> b!2500176 m!2863055))

(assert (=> b!2499863 d!715345))

(declare-fun b!2500199 () Bool)

(declare-fun e!1585891 () Bool)

(declare-fun tp!800499 () Bool)

(assert (=> b!2500199 (= e!1585891 (and tp_is_empty!12661 tp!800499))))

(assert (=> b!2499866 (= tp!800462 e!1585891)))

(assert (= (and b!2499866 ((_ is Cons!29368) (t!211167 tl!4068))) b!2500199))

(declare-fun b!2500220 () Bool)

(declare-fun e!1585898 () Bool)

(declare-fun tp!800521 () Bool)

(declare-fun tp!800518 () Bool)

(assert (=> b!2500220 (= e!1585898 (and tp!800521 tp!800518))))

(assert (=> b!2499861 (= tp!800466 e!1585898)))

(declare-fun b!2500221 () Bool)

(declare-fun tp!800520 () Bool)

(assert (=> b!2500221 (= e!1585898 tp!800520)))

(declare-fun b!2500219 () Bool)

(assert (=> b!2500219 (= e!1585898 tp_is_empty!12661)))

(declare-fun b!2500222 () Bool)

(declare-fun tp!800522 () Bool)

(declare-fun tp!800519 () Bool)

(assert (=> b!2500222 (= e!1585898 (and tp!800522 tp!800519))))

(assert (= (and b!2499861 ((_ is ElementMatch!7403) (regOne!15318 r!27340))) b!2500219))

(assert (= (and b!2499861 ((_ is Concat!12099) (regOne!15318 r!27340))) b!2500220))

(assert (= (and b!2499861 ((_ is Star!7403) (regOne!15318 r!27340))) b!2500221))

(assert (= (and b!2499861 ((_ is Union!7403) (regOne!15318 r!27340))) b!2500222))

(declare-fun b!2500224 () Bool)

(declare-fun e!1585899 () Bool)

(declare-fun tp!800526 () Bool)

(declare-fun tp!800523 () Bool)

(assert (=> b!2500224 (= e!1585899 (and tp!800526 tp!800523))))

(assert (=> b!2499861 (= tp!800465 e!1585899)))

(declare-fun b!2500225 () Bool)

(declare-fun tp!800525 () Bool)

(assert (=> b!2500225 (= e!1585899 tp!800525)))

(declare-fun b!2500223 () Bool)

(assert (=> b!2500223 (= e!1585899 tp_is_empty!12661)))

(declare-fun b!2500226 () Bool)

(declare-fun tp!800527 () Bool)

(declare-fun tp!800524 () Bool)

(assert (=> b!2500226 (= e!1585899 (and tp!800527 tp!800524))))

(assert (= (and b!2499861 ((_ is ElementMatch!7403) (regTwo!15318 r!27340))) b!2500223))

(assert (= (and b!2499861 ((_ is Concat!12099) (regTwo!15318 r!27340))) b!2500224))

(assert (= (and b!2499861 ((_ is Star!7403) (regTwo!15318 r!27340))) b!2500225))

(assert (= (and b!2499861 ((_ is Union!7403) (regTwo!15318 r!27340))) b!2500226))

(declare-fun b!2500228 () Bool)

(declare-fun e!1585900 () Bool)

(declare-fun tp!800531 () Bool)

(declare-fun tp!800528 () Bool)

(assert (=> b!2500228 (= e!1585900 (and tp!800531 tp!800528))))

(assert (=> b!2499867 (= tp!800461 e!1585900)))

(declare-fun b!2500229 () Bool)

(declare-fun tp!800530 () Bool)

(assert (=> b!2500229 (= e!1585900 tp!800530)))

(declare-fun b!2500227 () Bool)

(assert (=> b!2500227 (= e!1585900 tp_is_empty!12661)))

(declare-fun b!2500230 () Bool)

(declare-fun tp!800532 () Bool)

(declare-fun tp!800529 () Bool)

(assert (=> b!2500230 (= e!1585900 (and tp!800532 tp!800529))))

(assert (= (and b!2499867 ((_ is ElementMatch!7403) (regOne!15319 r!27340))) b!2500227))

(assert (= (and b!2499867 ((_ is Concat!12099) (regOne!15319 r!27340))) b!2500228))

(assert (= (and b!2499867 ((_ is Star!7403) (regOne!15319 r!27340))) b!2500229))

(assert (= (and b!2499867 ((_ is Union!7403) (regOne!15319 r!27340))) b!2500230))

(declare-fun b!2500232 () Bool)

(declare-fun e!1585901 () Bool)

(declare-fun tp!800536 () Bool)

(declare-fun tp!800533 () Bool)

(assert (=> b!2500232 (= e!1585901 (and tp!800536 tp!800533))))

(assert (=> b!2499867 (= tp!800463 e!1585901)))

(declare-fun b!2500233 () Bool)

(declare-fun tp!800535 () Bool)

(assert (=> b!2500233 (= e!1585901 tp!800535)))

(declare-fun b!2500231 () Bool)

(assert (=> b!2500231 (= e!1585901 tp_is_empty!12661)))

(declare-fun b!2500234 () Bool)

(declare-fun tp!800537 () Bool)

(declare-fun tp!800534 () Bool)

(assert (=> b!2500234 (= e!1585901 (and tp!800537 tp!800534))))

(assert (= (and b!2499867 ((_ is ElementMatch!7403) (regTwo!15319 r!27340))) b!2500231))

(assert (= (and b!2499867 ((_ is Concat!12099) (regTwo!15319 r!27340))) b!2500232))

(assert (= (and b!2499867 ((_ is Star!7403) (regTwo!15319 r!27340))) b!2500233))

(assert (= (and b!2499867 ((_ is Union!7403) (regTwo!15319 r!27340))) b!2500234))

(declare-fun b!2500236 () Bool)

(declare-fun e!1585902 () Bool)

(declare-fun tp!800541 () Bool)

(declare-fun tp!800538 () Bool)

(assert (=> b!2500236 (= e!1585902 (and tp!800541 tp!800538))))

(assert (=> b!2499864 (= tp!800464 e!1585902)))

(declare-fun b!2500237 () Bool)

(declare-fun tp!800540 () Bool)

(assert (=> b!2500237 (= e!1585902 tp!800540)))

(declare-fun b!2500235 () Bool)

(assert (=> b!2500235 (= e!1585902 tp_is_empty!12661)))

(declare-fun b!2500238 () Bool)

(declare-fun tp!800542 () Bool)

(declare-fun tp!800539 () Bool)

(assert (=> b!2500238 (= e!1585902 (and tp!800542 tp!800539))))

(assert (= (and b!2499864 ((_ is ElementMatch!7403) (reg!7732 r!27340))) b!2500235))

(assert (= (and b!2499864 ((_ is Concat!12099) (reg!7732 r!27340))) b!2500236))

(assert (= (and b!2499864 ((_ is Star!7403) (reg!7732 r!27340))) b!2500237))

(assert (= (and b!2499864 ((_ is Union!7403) (reg!7732 r!27340))) b!2500238))

(check-sat (not b!2499959) (not b!2500230) (not b!2500233) (not b!2500220) (not bm!154332) (not b!2500014) (not b!2500097) (not b!2499885) (not d!715307) (not b!2500070) (not b!2500199) (not bm!154364) (not b!2500064) (not b!2500065) (not b!2500061) (not bm!154368) (not b!2500092) (not b!2500238) (not b!2500090) (not b!2500083) (not bm!154335) (not bm!154318) (not d!715311) (not b!2500086) (not d!715301) (not d!715299) (not bm!154362) (not d!715325) (not b!2500226) (not b!2500176) (not b!2500221) (not bm!154369) (not b!2500222) (not b!2500229) (not d!715319) (not b!2500068) (not bm!154346) (not b!2500232) tp_is_empty!12661 (not b!2500228) (not b!2500234) (not b!2500225) (not b!2500062) (not b!2500237) (not b!2500087) (not b!2500084) (not b!2500236) (not b!2500224) (not d!715327) (not bm!154317) (not b!2500107) (not b!2500158) (not d!715341) (not bm!154344) (not bm!154331) (not d!715331) (not bm!154347) (not d!715345))
(check-sat)
