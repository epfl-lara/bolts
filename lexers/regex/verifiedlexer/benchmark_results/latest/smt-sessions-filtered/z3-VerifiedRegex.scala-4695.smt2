; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243592 () Bool)

(assert start!243592)

(declare-fun res!1054834 () Bool)

(declare-fun e!1582622 () Bool)

(assert (=> start!243592 (=> (not res!1054834) (not e!1582622))))

(declare-datatypes ((C!14888 0))(
  ( (C!14889 (val!9096 Int)) )
))
(declare-datatypes ((Regex!7365 0))(
  ( (ElementMatch!7365 (c!396477 C!14888)) (Concat!12061 (regOne!15242 Regex!7365) (regTwo!15242 Regex!7365)) (EmptyExpr!7365) (Star!7365 (reg!7694 Regex!7365)) (EmptyLang!7365) (Union!7365 (regOne!15243 Regex!7365) (regTwo!15243 Regex!7365)) )
))
(declare-fun r!27340 () Regex!7365)

(declare-fun validRegex!2991 (Regex!7365) Bool)

(assert (=> start!243592 (= res!1054834 (validRegex!2991 r!27340))))

(assert (=> start!243592 e!1582622))

(declare-fun e!1582620 () Bool)

(assert (=> start!243592 e!1582620))

(declare-fun tp_is_empty!12585 () Bool)

(assert (=> start!243592 tp_is_empty!12585))

(declare-fun e!1582623 () Bool)

(assert (=> start!243592 e!1582623))

(declare-fun b!2493801 () Bool)

(declare-fun e!1582624 () Bool)

(assert (=> b!2493801 (= e!1582622 e!1582624)))

(declare-fun res!1054836 () Bool)

(assert (=> b!2493801 (=> (not res!1054836) (not e!1582624))))

(declare-fun lt!894225 () Regex!7365)

(declare-fun nullable!2282 (Regex!7365) Bool)

(assert (=> b!2493801 (= res!1054836 (nullable!2282 lt!894225))))

(declare-fun lt!894228 () Regex!7365)

(declare-datatypes ((List!29430 0))(
  ( (Nil!29330) (Cons!29330 (h!34750 C!14888) (t!211129 List!29430)) )
))
(declare-fun tl!4068 () List!29430)

(declare-fun derivative!60 (Regex!7365 List!29430) Regex!7365)

(assert (=> b!2493801 (= lt!894225 (derivative!60 lt!894228 tl!4068))))

(declare-fun c!14016 () C!14888)

(declare-fun derivativeStep!1934 (Regex!7365 C!14888) Regex!7365)

(assert (=> b!2493801 (= lt!894228 (derivativeStep!1934 r!27340 c!14016))))

(declare-fun b!2493802 () Bool)

(declare-fun tp!798865 () Bool)

(declare-fun tp!798868 () Bool)

(assert (=> b!2493802 (= e!1582620 (and tp!798865 tp!798868))))

(declare-fun b!2493803 () Bool)

(assert (=> b!2493803 (= e!1582620 tp_is_empty!12585)))

(declare-fun b!2493804 () Bool)

(declare-fun tp!798870 () Bool)

(assert (=> b!2493804 (= e!1582623 (and tp_is_empty!12585 tp!798870))))

(declare-fun b!2493805 () Bool)

(declare-fun res!1054837 () Bool)

(declare-fun e!1582621 () Bool)

(assert (=> b!2493805 (=> (not res!1054837) (not e!1582621))))

(declare-fun lt!894226 () Regex!7365)

(assert (=> b!2493805 (= res!1054837 (not (nullable!2282 (derivative!60 lt!894226 tl!4068))))))

(declare-fun b!2493806 () Bool)

(assert (=> b!2493806 (= e!1582624 e!1582621)))

(declare-fun res!1054835 () Bool)

(assert (=> b!2493806 (=> (not res!1054835) (not e!1582621))))

(assert (=> b!2493806 (= res!1054835 (= lt!894228 (Concat!12061 lt!894226 (Star!7365 (reg!7694 r!27340)))))))

(assert (=> b!2493806 (= lt!894226 (derivativeStep!1934 (reg!7694 r!27340) c!14016))))

(declare-fun b!2493807 () Bool)

(declare-fun res!1054838 () Bool)

(assert (=> b!2493807 (=> (not res!1054838) (not e!1582624))))

(get-info :version)

(assert (=> b!2493807 (= res!1054838 (and (not ((_ is EmptyExpr!7365) r!27340)) (not ((_ is EmptyLang!7365) r!27340)) (not ((_ is ElementMatch!7365) r!27340)) (not ((_ is Union!7365) r!27340)) ((_ is Star!7365) r!27340)))))

(declare-fun b!2493808 () Bool)

(declare-fun tp!798867 () Bool)

(assert (=> b!2493808 (= e!1582620 tp!798867)))

(declare-fun b!2493809 () Bool)

(declare-fun tp!798869 () Bool)

(declare-fun tp!798866 () Bool)

(assert (=> b!2493809 (= e!1582620 (and tp!798869 tp!798866))))

(declare-fun b!2493810 () Bool)

(assert (=> b!2493810 (= e!1582621 (not (validRegex!2991 lt!894228)))))

(declare-fun matchR!3374 (Regex!7365 List!29430) Bool)

(assert (=> b!2493810 (= (matchR!3374 lt!894228 tl!4068) (matchR!3374 lt!894225 Nil!29330))))

(declare-datatypes ((Unit!42999 0))(
  ( (Unit!43000) )
))
(declare-fun lt!894227 () Unit!42999)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!20 (Regex!7365 List!29430) Unit!42999)

(assert (=> b!2493810 (= lt!894227 (lemmaMatchRIsSameAsWholeDerivativeAndNil!20 lt!894228 tl!4068))))

(assert (= (and start!243592 res!1054834) b!2493801))

(assert (= (and b!2493801 res!1054836) b!2493807))

(assert (= (and b!2493807 res!1054838) b!2493806))

(assert (= (and b!2493806 res!1054835) b!2493805))

(assert (= (and b!2493805 res!1054837) b!2493810))

(assert (= (and start!243592 ((_ is ElementMatch!7365) r!27340)) b!2493803))

(assert (= (and start!243592 ((_ is Concat!12061) r!27340)) b!2493809))

(assert (= (and start!243592 ((_ is Star!7365) r!27340)) b!2493808))

(assert (= (and start!243592 ((_ is Union!7365) r!27340)) b!2493802))

(assert (= (and start!243592 ((_ is Cons!29330) tl!4068)) b!2493804))

(declare-fun m!2859271 () Bool)

(assert (=> b!2493801 m!2859271))

(declare-fun m!2859273 () Bool)

(assert (=> b!2493801 m!2859273))

(declare-fun m!2859275 () Bool)

(assert (=> b!2493801 m!2859275))

(declare-fun m!2859277 () Bool)

(assert (=> start!243592 m!2859277))

(declare-fun m!2859279 () Bool)

(assert (=> b!2493806 m!2859279))

(declare-fun m!2859281 () Bool)

(assert (=> b!2493810 m!2859281))

(declare-fun m!2859283 () Bool)

(assert (=> b!2493810 m!2859283))

(declare-fun m!2859285 () Bool)

(assert (=> b!2493810 m!2859285))

(declare-fun m!2859287 () Bool)

(assert (=> b!2493810 m!2859287))

(declare-fun m!2859289 () Bool)

(assert (=> b!2493805 m!2859289))

(assert (=> b!2493805 m!2859289))

(declare-fun m!2859291 () Bool)

(assert (=> b!2493805 m!2859291))

(check-sat (not b!2493804) (not b!2493801) (not b!2493802) (not start!243592) tp_is_empty!12585 (not b!2493806) (not b!2493809) (not b!2493805) (not b!2493810) (not b!2493808))
(check-sat)
(get-model)

(declare-fun b!2493856 () Bool)

(declare-fun e!1582661 () Bool)

(declare-fun e!1582662 () Bool)

(assert (=> b!2493856 (= e!1582661 e!1582662)))

(declare-fun res!1054865 () Bool)

(assert (=> b!2493856 (=> (not res!1054865) (not e!1582662))))

(declare-fun call!153545 () Bool)

(assert (=> b!2493856 (= res!1054865 call!153545)))

(declare-fun bm!153540 () Bool)

(declare-fun c!396489 () Bool)

(assert (=> bm!153540 (= call!153545 (validRegex!2991 (ite c!396489 (regTwo!15243 lt!894228) (regOne!15242 lt!894228))))))

(declare-fun c!396488 () Bool)

(declare-fun bm!153541 () Bool)

(declare-fun call!153547 () Bool)

(assert (=> bm!153541 (= call!153547 (validRegex!2991 (ite c!396488 (reg!7694 lt!894228) (ite c!396489 (regOne!15243 lt!894228) (regTwo!15242 lt!894228)))))))

(declare-fun b!2493857 () Bool)

(declare-fun call!153546 () Bool)

(assert (=> b!2493857 (= e!1582662 call!153546)))

(declare-fun b!2493858 () Bool)

(declare-fun e!1582664 () Bool)

(declare-fun e!1582660 () Bool)

(assert (=> b!2493858 (= e!1582664 e!1582660)))

(assert (=> b!2493858 (= c!396489 ((_ is Union!7365) lt!894228))))

(declare-fun b!2493859 () Bool)

(declare-fun e!1582666 () Bool)

(assert (=> b!2493859 (= e!1582666 call!153545)))

(declare-fun b!2493860 () Bool)

(declare-fun e!1582665 () Bool)

(assert (=> b!2493860 (= e!1582665 e!1582664)))

(assert (=> b!2493860 (= c!396488 ((_ is Star!7365) lt!894228))))

(declare-fun b!2493861 () Bool)

(declare-fun e!1582663 () Bool)

(assert (=> b!2493861 (= e!1582663 call!153547)))

(declare-fun d!714630 () Bool)

(declare-fun res!1054868 () Bool)

(assert (=> d!714630 (=> res!1054868 e!1582665)))

(assert (=> d!714630 (= res!1054868 ((_ is ElementMatch!7365) lt!894228))))

(assert (=> d!714630 (= (validRegex!2991 lt!894228) e!1582665)))

(declare-fun b!2493862 () Bool)

(declare-fun res!1054864 () Bool)

(assert (=> b!2493862 (=> res!1054864 e!1582661)))

(assert (=> b!2493862 (= res!1054864 (not ((_ is Concat!12061) lt!894228)))))

(assert (=> b!2493862 (= e!1582660 e!1582661)))

(declare-fun bm!153542 () Bool)

(assert (=> bm!153542 (= call!153546 call!153547)))

(declare-fun b!2493863 () Bool)

(declare-fun res!1054867 () Bool)

(assert (=> b!2493863 (=> (not res!1054867) (not e!1582666))))

(assert (=> b!2493863 (= res!1054867 call!153546)))

(assert (=> b!2493863 (= e!1582660 e!1582666)))

(declare-fun b!2493864 () Bool)

(assert (=> b!2493864 (= e!1582664 e!1582663)))

(declare-fun res!1054866 () Bool)

(assert (=> b!2493864 (= res!1054866 (not (nullable!2282 (reg!7694 lt!894228))))))

(assert (=> b!2493864 (=> (not res!1054866) (not e!1582663))))

(assert (= (and d!714630 (not res!1054868)) b!2493860))

(assert (= (and b!2493860 c!396488) b!2493864))

(assert (= (and b!2493860 (not c!396488)) b!2493858))

(assert (= (and b!2493864 res!1054866) b!2493861))

(assert (= (and b!2493858 c!396489) b!2493863))

(assert (= (and b!2493858 (not c!396489)) b!2493862))

(assert (= (and b!2493863 res!1054867) b!2493859))

(assert (= (and b!2493862 (not res!1054864)) b!2493856))

(assert (= (and b!2493856 res!1054865) b!2493857))

(assert (= (or b!2493863 b!2493857) bm!153542))

(assert (= (or b!2493859 b!2493856) bm!153540))

(assert (= (or b!2493861 bm!153542) bm!153541))

(declare-fun m!2859299 () Bool)

(assert (=> bm!153540 m!2859299))

(declare-fun m!2859301 () Bool)

(assert (=> bm!153541 m!2859301))

(declare-fun m!2859303 () Bool)

(assert (=> b!2493864 m!2859303))

(assert (=> b!2493810 d!714630))

(declare-fun b!2493949 () Bool)

(declare-fun e!1582715 () Bool)

(declare-fun head!5675 (List!29430) C!14888)

(assert (=> b!2493949 (= e!1582715 (= (head!5675 tl!4068) (c!396477 lt!894228)))))

(declare-fun b!2493950 () Bool)

(declare-fun e!1582712 () Bool)

(declare-fun e!1582713 () Bool)

(assert (=> b!2493950 (= e!1582712 e!1582713)))

(declare-fun res!1054924 () Bool)

(assert (=> b!2493950 (=> res!1054924 e!1582713)))

(declare-fun call!153554 () Bool)

(assert (=> b!2493950 (= res!1054924 call!153554)))

(declare-fun b!2493951 () Bool)

(declare-fun e!1582709 () Bool)

(declare-fun tail!3952 (List!29430) List!29430)

(assert (=> b!2493951 (= e!1582709 (matchR!3374 (derivativeStep!1934 lt!894228 (head!5675 tl!4068)) (tail!3952 tl!4068)))))

(declare-fun b!2493952 () Bool)

(declare-fun res!1054919 () Bool)

(declare-fun e!1582714 () Bool)

(assert (=> b!2493952 (=> res!1054919 e!1582714)))

(assert (=> b!2493952 (= res!1054919 e!1582715)))

(declare-fun res!1054920 () Bool)

(assert (=> b!2493952 (=> (not res!1054920) (not e!1582715))))

(declare-fun lt!894235 () Bool)

(assert (=> b!2493952 (= res!1054920 lt!894235)))

(declare-fun b!2493953 () Bool)

(declare-fun res!1054921 () Bool)

(assert (=> b!2493953 (=> (not res!1054921) (not e!1582715))))

(assert (=> b!2493953 (= res!1054921 (not call!153554))))

(declare-fun b!2493954 () Bool)

(declare-fun res!1054917 () Bool)

(assert (=> b!2493954 (=> res!1054917 e!1582714)))

(assert (=> b!2493954 (= res!1054917 (not ((_ is ElementMatch!7365) lt!894228)))))

(declare-fun e!1582710 () Bool)

(assert (=> b!2493954 (= e!1582710 e!1582714)))

(declare-fun b!2493955 () Bool)

(assert (=> b!2493955 (= e!1582709 (nullable!2282 lt!894228))))

(declare-fun b!2493956 () Bool)

(assert (=> b!2493956 (= e!1582713 (not (= (head!5675 tl!4068) (c!396477 lt!894228))))))

(declare-fun b!2493957 () Bool)

(assert (=> b!2493957 (= e!1582710 (not lt!894235))))

(declare-fun b!2493958 () Bool)

(declare-fun e!1582711 () Bool)

(assert (=> b!2493958 (= e!1582711 (= lt!894235 call!153554))))

(declare-fun d!714634 () Bool)

(assert (=> d!714634 e!1582711))

(declare-fun c!396509 () Bool)

(assert (=> d!714634 (= c!396509 ((_ is EmptyExpr!7365) lt!894228))))

(assert (=> d!714634 (= lt!894235 e!1582709)))

(declare-fun c!396510 () Bool)

(declare-fun isEmpty!16799 (List!29430) Bool)

(assert (=> d!714634 (= c!396510 (isEmpty!16799 tl!4068))))

(assert (=> d!714634 (validRegex!2991 lt!894228)))

(assert (=> d!714634 (= (matchR!3374 lt!894228 tl!4068) lt!894235)))

(declare-fun b!2493959 () Bool)

(declare-fun res!1054923 () Bool)

(assert (=> b!2493959 (=> (not res!1054923) (not e!1582715))))

(assert (=> b!2493959 (= res!1054923 (isEmpty!16799 (tail!3952 tl!4068)))))

(declare-fun b!2493960 () Bool)

(assert (=> b!2493960 (= e!1582714 e!1582712)))

(declare-fun res!1054922 () Bool)

(assert (=> b!2493960 (=> (not res!1054922) (not e!1582712))))

(assert (=> b!2493960 (= res!1054922 (not lt!894235))))

(declare-fun b!2493961 () Bool)

(assert (=> b!2493961 (= e!1582711 e!1582710)))

(declare-fun c!396508 () Bool)

(assert (=> b!2493961 (= c!396508 ((_ is EmptyLang!7365) lt!894228))))

(declare-fun bm!153549 () Bool)

(assert (=> bm!153549 (= call!153554 (isEmpty!16799 tl!4068))))

(declare-fun b!2493962 () Bool)

(declare-fun res!1054918 () Bool)

(assert (=> b!2493962 (=> res!1054918 e!1582713)))

(assert (=> b!2493962 (= res!1054918 (not (isEmpty!16799 (tail!3952 tl!4068))))))

(assert (= (and d!714634 c!396510) b!2493955))

(assert (= (and d!714634 (not c!396510)) b!2493951))

(assert (= (and d!714634 c!396509) b!2493958))

(assert (= (and d!714634 (not c!396509)) b!2493961))

(assert (= (and b!2493961 c!396508) b!2493957))

(assert (= (and b!2493961 (not c!396508)) b!2493954))

(assert (= (and b!2493954 (not res!1054917)) b!2493952))

(assert (= (and b!2493952 res!1054920) b!2493953))

(assert (= (and b!2493953 res!1054921) b!2493959))

(assert (= (and b!2493959 res!1054923) b!2493949))

(assert (= (and b!2493952 (not res!1054919)) b!2493960))

(assert (= (and b!2493960 res!1054922) b!2493950))

(assert (= (and b!2493950 (not res!1054924)) b!2493962))

(assert (= (and b!2493962 (not res!1054918)) b!2493956))

(assert (= (or b!2493958 b!2493950 b!2493953) bm!153549))

(declare-fun m!2859333 () Bool)

(assert (=> b!2493962 m!2859333))

(assert (=> b!2493962 m!2859333))

(declare-fun m!2859335 () Bool)

(assert (=> b!2493962 m!2859335))

(declare-fun m!2859337 () Bool)

(assert (=> bm!153549 m!2859337))

(declare-fun m!2859339 () Bool)

(assert (=> b!2493949 m!2859339))

(assert (=> b!2493951 m!2859339))

(assert (=> b!2493951 m!2859339))

(declare-fun m!2859341 () Bool)

(assert (=> b!2493951 m!2859341))

(assert (=> b!2493951 m!2859333))

(assert (=> b!2493951 m!2859341))

(assert (=> b!2493951 m!2859333))

(declare-fun m!2859343 () Bool)

(assert (=> b!2493951 m!2859343))

(assert (=> b!2493959 m!2859333))

(assert (=> b!2493959 m!2859333))

(assert (=> b!2493959 m!2859335))

(declare-fun m!2859345 () Bool)

(assert (=> b!2493955 m!2859345))

(assert (=> b!2493956 m!2859339))

(assert (=> d!714634 m!2859337))

(assert (=> d!714634 m!2859281))

(assert (=> b!2493810 d!714634))

(declare-fun b!2493963 () Bool)

(declare-fun e!1582722 () Bool)

(assert (=> b!2493963 (= e!1582722 (= (head!5675 Nil!29330) (c!396477 lt!894225)))))

(declare-fun b!2493964 () Bool)

(declare-fun e!1582719 () Bool)

(declare-fun e!1582720 () Bool)

(assert (=> b!2493964 (= e!1582719 e!1582720)))

(declare-fun res!1054932 () Bool)

(assert (=> b!2493964 (=> res!1054932 e!1582720)))

(declare-fun call!153555 () Bool)

(assert (=> b!2493964 (= res!1054932 call!153555)))

(declare-fun b!2493965 () Bool)

(declare-fun e!1582716 () Bool)

(assert (=> b!2493965 (= e!1582716 (matchR!3374 (derivativeStep!1934 lt!894225 (head!5675 Nil!29330)) (tail!3952 Nil!29330)))))

(declare-fun b!2493966 () Bool)

(declare-fun res!1054927 () Bool)

(declare-fun e!1582721 () Bool)

(assert (=> b!2493966 (=> res!1054927 e!1582721)))

(assert (=> b!2493966 (= res!1054927 e!1582722)))

(declare-fun res!1054928 () Bool)

(assert (=> b!2493966 (=> (not res!1054928) (not e!1582722))))

(declare-fun lt!894236 () Bool)

(assert (=> b!2493966 (= res!1054928 lt!894236)))

(declare-fun b!2493967 () Bool)

(declare-fun res!1054929 () Bool)

(assert (=> b!2493967 (=> (not res!1054929) (not e!1582722))))

(assert (=> b!2493967 (= res!1054929 (not call!153555))))

(declare-fun b!2493968 () Bool)

(declare-fun res!1054925 () Bool)

(assert (=> b!2493968 (=> res!1054925 e!1582721)))

(assert (=> b!2493968 (= res!1054925 (not ((_ is ElementMatch!7365) lt!894225)))))

(declare-fun e!1582717 () Bool)

(assert (=> b!2493968 (= e!1582717 e!1582721)))

(declare-fun b!2493969 () Bool)

(assert (=> b!2493969 (= e!1582716 (nullable!2282 lt!894225))))

(declare-fun b!2493970 () Bool)

(assert (=> b!2493970 (= e!1582720 (not (= (head!5675 Nil!29330) (c!396477 lt!894225))))))

(declare-fun b!2493971 () Bool)

(assert (=> b!2493971 (= e!1582717 (not lt!894236))))

(declare-fun b!2493972 () Bool)

(declare-fun e!1582718 () Bool)

(assert (=> b!2493972 (= e!1582718 (= lt!894236 call!153555))))

(declare-fun d!714640 () Bool)

(assert (=> d!714640 e!1582718))

(declare-fun c!396512 () Bool)

(assert (=> d!714640 (= c!396512 ((_ is EmptyExpr!7365) lt!894225))))

(assert (=> d!714640 (= lt!894236 e!1582716)))

(declare-fun c!396513 () Bool)

(assert (=> d!714640 (= c!396513 (isEmpty!16799 Nil!29330))))

(assert (=> d!714640 (validRegex!2991 lt!894225)))

(assert (=> d!714640 (= (matchR!3374 lt!894225 Nil!29330) lt!894236)))

(declare-fun b!2493973 () Bool)

(declare-fun res!1054931 () Bool)

(assert (=> b!2493973 (=> (not res!1054931) (not e!1582722))))

(assert (=> b!2493973 (= res!1054931 (isEmpty!16799 (tail!3952 Nil!29330)))))

(declare-fun b!2493974 () Bool)

(assert (=> b!2493974 (= e!1582721 e!1582719)))

(declare-fun res!1054930 () Bool)

(assert (=> b!2493974 (=> (not res!1054930) (not e!1582719))))

(assert (=> b!2493974 (= res!1054930 (not lt!894236))))

(declare-fun b!2493975 () Bool)

(assert (=> b!2493975 (= e!1582718 e!1582717)))

(declare-fun c!396511 () Bool)

(assert (=> b!2493975 (= c!396511 ((_ is EmptyLang!7365) lt!894225))))

(declare-fun bm!153550 () Bool)

(assert (=> bm!153550 (= call!153555 (isEmpty!16799 Nil!29330))))

(declare-fun b!2493976 () Bool)

(declare-fun res!1054926 () Bool)

(assert (=> b!2493976 (=> res!1054926 e!1582720)))

(assert (=> b!2493976 (= res!1054926 (not (isEmpty!16799 (tail!3952 Nil!29330))))))

(assert (= (and d!714640 c!396513) b!2493969))

(assert (= (and d!714640 (not c!396513)) b!2493965))

(assert (= (and d!714640 c!396512) b!2493972))

(assert (= (and d!714640 (not c!396512)) b!2493975))

(assert (= (and b!2493975 c!396511) b!2493971))

(assert (= (and b!2493975 (not c!396511)) b!2493968))

(assert (= (and b!2493968 (not res!1054925)) b!2493966))

(assert (= (and b!2493966 res!1054928) b!2493967))

(assert (= (and b!2493967 res!1054929) b!2493973))

(assert (= (and b!2493973 res!1054931) b!2493963))

(assert (= (and b!2493966 (not res!1054927)) b!2493974))

(assert (= (and b!2493974 res!1054930) b!2493964))

(assert (= (and b!2493964 (not res!1054932)) b!2493976))

(assert (= (and b!2493976 (not res!1054926)) b!2493970))

(assert (= (or b!2493972 b!2493964 b!2493967) bm!153550))

(declare-fun m!2859347 () Bool)

(assert (=> b!2493976 m!2859347))

(assert (=> b!2493976 m!2859347))

(declare-fun m!2859349 () Bool)

(assert (=> b!2493976 m!2859349))

(declare-fun m!2859351 () Bool)

(assert (=> bm!153550 m!2859351))

(declare-fun m!2859353 () Bool)

(assert (=> b!2493963 m!2859353))

(assert (=> b!2493965 m!2859353))

(assert (=> b!2493965 m!2859353))

(declare-fun m!2859355 () Bool)

(assert (=> b!2493965 m!2859355))

(assert (=> b!2493965 m!2859347))

(assert (=> b!2493965 m!2859355))

(assert (=> b!2493965 m!2859347))

(declare-fun m!2859357 () Bool)

(assert (=> b!2493965 m!2859357))

(assert (=> b!2493973 m!2859347))

(assert (=> b!2493973 m!2859347))

(assert (=> b!2493973 m!2859349))

(assert (=> b!2493969 m!2859271))

(assert (=> b!2493970 m!2859353))

(assert (=> d!714640 m!2859351))

(declare-fun m!2859359 () Bool)

(assert (=> d!714640 m!2859359))

(assert (=> b!2493810 d!714640))

(declare-fun d!714642 () Bool)

(assert (=> d!714642 (= (matchR!3374 lt!894228 tl!4068) (matchR!3374 (derivative!60 lt!894228 tl!4068) Nil!29330))))

(declare-fun lt!894242 () Unit!42999)

(declare-fun choose!14733 (Regex!7365 List!29430) Unit!42999)

(assert (=> d!714642 (= lt!894242 (choose!14733 lt!894228 tl!4068))))

(assert (=> d!714642 (validRegex!2991 lt!894228)))

(assert (=> d!714642 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!20 lt!894228 tl!4068) lt!894242)))

(declare-fun bs!468417 () Bool)

(assert (= bs!468417 d!714642))

(assert (=> bs!468417 m!2859273))

(assert (=> bs!468417 m!2859273))

(declare-fun m!2859365 () Bool)

(assert (=> bs!468417 m!2859365))

(assert (=> bs!468417 m!2859281))

(assert (=> bs!468417 m!2859283))

(declare-fun m!2859367 () Bool)

(assert (=> bs!468417 m!2859367))

(assert (=> b!2493810 d!714642))

(declare-fun d!714646 () Bool)

(declare-fun nullableFct!566 (Regex!7365) Bool)

(assert (=> d!714646 (= (nullable!2282 (derivative!60 lt!894226 tl!4068)) (nullableFct!566 (derivative!60 lt!894226 tl!4068)))))

(declare-fun bs!468418 () Bool)

(assert (= bs!468418 d!714646))

(assert (=> bs!468418 m!2859289))

(declare-fun m!2859369 () Bool)

(assert (=> bs!468418 m!2859369))

(assert (=> b!2493805 d!714646))

(declare-fun d!714648 () Bool)

(declare-fun lt!894247 () Regex!7365)

(assert (=> d!714648 (validRegex!2991 lt!894247)))

(declare-fun e!1582735 () Regex!7365)

(assert (=> d!714648 (= lt!894247 e!1582735)))

(declare-fun c!396526 () Bool)

(assert (=> d!714648 (= c!396526 ((_ is Cons!29330) tl!4068))))

(assert (=> d!714648 (validRegex!2991 lt!894226)))

(assert (=> d!714648 (= (derivative!60 lt!894226 tl!4068) lt!894247)))

(declare-fun b!2494001 () Bool)

(assert (=> b!2494001 (= e!1582735 (derivative!60 (derivativeStep!1934 lt!894226 (h!34750 tl!4068)) (t!211129 tl!4068)))))

(declare-fun b!2494002 () Bool)

(assert (=> b!2494002 (= e!1582735 lt!894226)))

(assert (= (and d!714648 c!396526) b!2494001))

(assert (= (and d!714648 (not c!396526)) b!2494002))

(declare-fun m!2859371 () Bool)

(assert (=> d!714648 m!2859371))

(declare-fun m!2859373 () Bool)

(assert (=> d!714648 m!2859373))

(declare-fun m!2859375 () Bool)

(assert (=> b!2494001 m!2859375))

(assert (=> b!2494001 m!2859375))

(declare-fun m!2859377 () Bool)

(assert (=> b!2494001 m!2859377))

(assert (=> b!2493805 d!714648))

(declare-fun call!153583 () Regex!7365)

(declare-fun c!396555 () Bool)

(declare-fun bm!153578 () Bool)

(assert (=> bm!153578 (= call!153583 (derivativeStep!1934 (ite c!396555 (regOne!15243 (reg!7694 r!27340)) (regTwo!15242 (reg!7694 r!27340))) c!14016))))

(declare-fun b!2494075 () Bool)

(declare-fun e!1582773 () Regex!7365)

(declare-fun call!153585 () Regex!7365)

(assert (=> b!2494075 (= e!1582773 (Union!7365 (Concat!12061 call!153585 (regTwo!15242 (reg!7694 r!27340))) EmptyLang!7365))))

(declare-fun b!2494076 () Bool)

(declare-fun e!1582776 () Regex!7365)

(declare-fun e!1582774 () Regex!7365)

(assert (=> b!2494076 (= e!1582776 e!1582774)))

(declare-fun c!396556 () Bool)

(assert (=> b!2494076 (= c!396556 ((_ is Star!7365) (reg!7694 r!27340)))))

(declare-fun b!2494077 () Bool)

(declare-fun call!153586 () Regex!7365)

(assert (=> b!2494077 (= e!1582774 (Concat!12061 call!153586 (reg!7694 r!27340)))))

(declare-fun b!2494078 () Bool)

(assert (=> b!2494078 (= e!1582773 (Union!7365 (Concat!12061 call!153585 (regTwo!15242 (reg!7694 r!27340))) call!153583))))

(declare-fun b!2494079 () Bool)

(declare-fun e!1582775 () Regex!7365)

(assert (=> b!2494079 (= e!1582775 EmptyLang!7365)))

(declare-fun call!153584 () Regex!7365)

(declare-fun bm!153580 () Bool)

(assert (=> bm!153580 (= call!153584 (derivativeStep!1934 (ite c!396555 (regTwo!15243 (reg!7694 r!27340)) (ite c!396556 (reg!7694 (reg!7694 r!27340)) (regOne!15242 (reg!7694 r!27340)))) c!14016))))

(declare-fun b!2494080 () Bool)

(declare-fun e!1582772 () Regex!7365)

(assert (=> b!2494080 (= e!1582772 (ite (= c!14016 (c!396477 (reg!7694 r!27340))) EmptyExpr!7365 EmptyLang!7365))))

(declare-fun bm!153581 () Bool)

(assert (=> bm!153581 (= call!153585 call!153586)))

(declare-fun b!2494081 () Bool)

(assert (=> b!2494081 (= e!1582775 e!1582772)))

(declare-fun c!396557 () Bool)

(assert (=> b!2494081 (= c!396557 ((_ is ElementMatch!7365) (reg!7694 r!27340)))))

(declare-fun b!2494082 () Bool)

(assert (=> b!2494082 (= e!1582776 (Union!7365 call!153583 call!153584))))

(declare-fun d!714650 () Bool)

(declare-fun lt!894256 () Regex!7365)

(assert (=> d!714650 (validRegex!2991 lt!894256)))

(assert (=> d!714650 (= lt!894256 e!1582775)))

(declare-fun c!396554 () Bool)

(assert (=> d!714650 (= c!396554 (or ((_ is EmptyExpr!7365) (reg!7694 r!27340)) ((_ is EmptyLang!7365) (reg!7694 r!27340))))))

(assert (=> d!714650 (validRegex!2991 (reg!7694 r!27340))))

(assert (=> d!714650 (= (derivativeStep!1934 (reg!7694 r!27340) c!14016) lt!894256)))

(declare-fun bm!153579 () Bool)

(assert (=> bm!153579 (= call!153586 call!153584)))

(declare-fun b!2494083 () Bool)

(declare-fun c!396553 () Bool)

(assert (=> b!2494083 (= c!396553 (nullable!2282 (regOne!15242 (reg!7694 r!27340))))))

(assert (=> b!2494083 (= e!1582774 e!1582773)))

(declare-fun b!2494084 () Bool)

(assert (=> b!2494084 (= c!396555 ((_ is Union!7365) (reg!7694 r!27340)))))

(assert (=> b!2494084 (= e!1582772 e!1582776)))

(assert (= (and d!714650 c!396554) b!2494079))

(assert (= (and d!714650 (not c!396554)) b!2494081))

(assert (= (and b!2494081 c!396557) b!2494080))

(assert (= (and b!2494081 (not c!396557)) b!2494084))

(assert (= (and b!2494084 c!396555) b!2494082))

(assert (= (and b!2494084 (not c!396555)) b!2494076))

(assert (= (and b!2494076 c!396556) b!2494077))

(assert (= (and b!2494076 (not c!396556)) b!2494083))

(assert (= (and b!2494083 c!396553) b!2494078))

(assert (= (and b!2494083 (not c!396553)) b!2494075))

(assert (= (or b!2494078 b!2494075) bm!153581))

(assert (= (or b!2494077 bm!153581) bm!153579))

(assert (= (or b!2494082 bm!153579) bm!153580))

(assert (= (or b!2494082 b!2494078) bm!153578))

(declare-fun m!2859421 () Bool)

(assert (=> bm!153578 m!2859421))

(declare-fun m!2859423 () Bool)

(assert (=> bm!153580 m!2859423))

(declare-fun m!2859425 () Bool)

(assert (=> d!714650 m!2859425))

(declare-fun m!2859427 () Bool)

(assert (=> d!714650 m!2859427))

(declare-fun m!2859429 () Bool)

(assert (=> b!2494083 m!2859429))

(assert (=> b!2493806 d!714650))

(declare-fun d!714664 () Bool)

(assert (=> d!714664 (= (nullable!2282 lt!894225) (nullableFct!566 lt!894225))))

(declare-fun bs!468421 () Bool)

(assert (= bs!468421 d!714664))

(declare-fun m!2859431 () Bool)

(assert (=> bs!468421 m!2859431))

(assert (=> b!2493801 d!714664))

(declare-fun d!714666 () Bool)

(declare-fun lt!894257 () Regex!7365)

(assert (=> d!714666 (validRegex!2991 lt!894257)))

(declare-fun e!1582782 () Regex!7365)

(assert (=> d!714666 (= lt!894257 e!1582782)))

(declare-fun c!396558 () Bool)

(assert (=> d!714666 (= c!396558 ((_ is Cons!29330) tl!4068))))

(assert (=> d!714666 (validRegex!2991 lt!894228)))

(assert (=> d!714666 (= (derivative!60 lt!894228 tl!4068) lt!894257)))

(declare-fun b!2494105 () Bool)

(assert (=> b!2494105 (= e!1582782 (derivative!60 (derivativeStep!1934 lt!894228 (h!34750 tl!4068)) (t!211129 tl!4068)))))

(declare-fun b!2494106 () Bool)

(assert (=> b!2494106 (= e!1582782 lt!894228)))

(assert (= (and d!714666 c!396558) b!2494105))

(assert (= (and d!714666 (not c!396558)) b!2494106))

(declare-fun m!2859433 () Bool)

(assert (=> d!714666 m!2859433))

(assert (=> d!714666 m!2859281))

(declare-fun m!2859435 () Bool)

(assert (=> b!2494105 m!2859435))

(assert (=> b!2494105 m!2859435))

(declare-fun m!2859437 () Bool)

(assert (=> b!2494105 m!2859437))

(assert (=> b!2493801 d!714666))

(declare-fun bm!153582 () Bool)

(declare-fun call!153587 () Regex!7365)

(declare-fun c!396561 () Bool)

(assert (=> bm!153582 (= call!153587 (derivativeStep!1934 (ite c!396561 (regOne!15243 r!27340) (regTwo!15242 r!27340)) c!14016))))

(declare-fun b!2494107 () Bool)

(declare-fun e!1582784 () Regex!7365)

(declare-fun call!153589 () Regex!7365)

(assert (=> b!2494107 (= e!1582784 (Union!7365 (Concat!12061 call!153589 (regTwo!15242 r!27340)) EmptyLang!7365))))

(declare-fun b!2494108 () Bool)

(declare-fun e!1582787 () Regex!7365)

(declare-fun e!1582785 () Regex!7365)

(assert (=> b!2494108 (= e!1582787 e!1582785)))

(declare-fun c!396562 () Bool)

(assert (=> b!2494108 (= c!396562 ((_ is Star!7365) r!27340))))

(declare-fun b!2494109 () Bool)

(declare-fun call!153590 () Regex!7365)

(assert (=> b!2494109 (= e!1582785 (Concat!12061 call!153590 r!27340))))

(declare-fun b!2494110 () Bool)

(assert (=> b!2494110 (= e!1582784 (Union!7365 (Concat!12061 call!153589 (regTwo!15242 r!27340)) call!153587))))

(declare-fun b!2494111 () Bool)

(declare-fun e!1582786 () Regex!7365)

(assert (=> b!2494111 (= e!1582786 EmptyLang!7365)))

(declare-fun bm!153584 () Bool)

(declare-fun call!153588 () Regex!7365)

(assert (=> bm!153584 (= call!153588 (derivativeStep!1934 (ite c!396561 (regTwo!15243 r!27340) (ite c!396562 (reg!7694 r!27340) (regOne!15242 r!27340))) c!14016))))

(declare-fun b!2494112 () Bool)

(declare-fun e!1582783 () Regex!7365)

(assert (=> b!2494112 (= e!1582783 (ite (= c!14016 (c!396477 r!27340)) EmptyExpr!7365 EmptyLang!7365))))

(declare-fun bm!153585 () Bool)

(assert (=> bm!153585 (= call!153589 call!153590)))

(declare-fun b!2494113 () Bool)

(assert (=> b!2494113 (= e!1582786 e!1582783)))

(declare-fun c!396563 () Bool)

(assert (=> b!2494113 (= c!396563 ((_ is ElementMatch!7365) r!27340))))

(declare-fun b!2494114 () Bool)

(assert (=> b!2494114 (= e!1582787 (Union!7365 call!153587 call!153588))))

(declare-fun d!714668 () Bool)

(declare-fun lt!894258 () Regex!7365)

(assert (=> d!714668 (validRegex!2991 lt!894258)))

(assert (=> d!714668 (= lt!894258 e!1582786)))

(declare-fun c!396560 () Bool)

(assert (=> d!714668 (= c!396560 (or ((_ is EmptyExpr!7365) r!27340) ((_ is EmptyLang!7365) r!27340)))))

(assert (=> d!714668 (validRegex!2991 r!27340)))

(assert (=> d!714668 (= (derivativeStep!1934 r!27340 c!14016) lt!894258)))

(declare-fun bm!153583 () Bool)

(assert (=> bm!153583 (= call!153590 call!153588)))

(declare-fun b!2494115 () Bool)

(declare-fun c!396559 () Bool)

(assert (=> b!2494115 (= c!396559 (nullable!2282 (regOne!15242 r!27340)))))

(assert (=> b!2494115 (= e!1582785 e!1582784)))

(declare-fun b!2494116 () Bool)

(assert (=> b!2494116 (= c!396561 ((_ is Union!7365) r!27340))))

(assert (=> b!2494116 (= e!1582783 e!1582787)))

(assert (= (and d!714668 c!396560) b!2494111))

(assert (= (and d!714668 (not c!396560)) b!2494113))

(assert (= (and b!2494113 c!396563) b!2494112))

(assert (= (and b!2494113 (not c!396563)) b!2494116))

(assert (= (and b!2494116 c!396561) b!2494114))

(assert (= (and b!2494116 (not c!396561)) b!2494108))

(assert (= (and b!2494108 c!396562) b!2494109))

(assert (= (and b!2494108 (not c!396562)) b!2494115))

(assert (= (and b!2494115 c!396559) b!2494110))

(assert (= (and b!2494115 (not c!396559)) b!2494107))

(assert (= (or b!2494110 b!2494107) bm!153585))

(assert (= (or b!2494109 bm!153585) bm!153583))

(assert (= (or b!2494114 bm!153583) bm!153584))

(assert (= (or b!2494114 b!2494110) bm!153582))

(declare-fun m!2859439 () Bool)

(assert (=> bm!153582 m!2859439))

(declare-fun m!2859441 () Bool)

(assert (=> bm!153584 m!2859441))

(declare-fun m!2859443 () Bool)

(assert (=> d!714668 m!2859443))

(assert (=> d!714668 m!2859277))

(declare-fun m!2859445 () Bool)

(assert (=> b!2494115 m!2859445))

(assert (=> b!2493801 d!714668))

(declare-fun b!2494117 () Bool)

(declare-fun e!1582789 () Bool)

(declare-fun e!1582790 () Bool)

(assert (=> b!2494117 (= e!1582789 e!1582790)))

(declare-fun res!1054939 () Bool)

(assert (=> b!2494117 (=> (not res!1054939) (not e!1582790))))

(declare-fun call!153591 () Bool)

(assert (=> b!2494117 (= res!1054939 call!153591)))

(declare-fun bm!153586 () Bool)

(declare-fun c!396565 () Bool)

(assert (=> bm!153586 (= call!153591 (validRegex!2991 (ite c!396565 (regTwo!15243 r!27340) (regOne!15242 r!27340))))))

(declare-fun c!396564 () Bool)

(declare-fun call!153593 () Bool)

(declare-fun bm!153587 () Bool)

(assert (=> bm!153587 (= call!153593 (validRegex!2991 (ite c!396564 (reg!7694 r!27340) (ite c!396565 (regOne!15243 r!27340) (regTwo!15242 r!27340)))))))

(declare-fun b!2494118 () Bool)

(declare-fun call!153592 () Bool)

(assert (=> b!2494118 (= e!1582790 call!153592)))

(declare-fun b!2494119 () Bool)

(declare-fun e!1582792 () Bool)

(declare-fun e!1582788 () Bool)

(assert (=> b!2494119 (= e!1582792 e!1582788)))

(assert (=> b!2494119 (= c!396565 ((_ is Union!7365) r!27340))))

(declare-fun b!2494120 () Bool)

(declare-fun e!1582794 () Bool)

(assert (=> b!2494120 (= e!1582794 call!153591)))

(declare-fun b!2494121 () Bool)

(declare-fun e!1582793 () Bool)

(assert (=> b!2494121 (= e!1582793 e!1582792)))

(assert (=> b!2494121 (= c!396564 ((_ is Star!7365) r!27340))))

(declare-fun b!2494122 () Bool)

(declare-fun e!1582791 () Bool)

(assert (=> b!2494122 (= e!1582791 call!153593)))

(declare-fun d!714670 () Bool)

(declare-fun res!1054942 () Bool)

(assert (=> d!714670 (=> res!1054942 e!1582793)))

(assert (=> d!714670 (= res!1054942 ((_ is ElementMatch!7365) r!27340))))

(assert (=> d!714670 (= (validRegex!2991 r!27340) e!1582793)))

(declare-fun b!2494123 () Bool)

(declare-fun res!1054938 () Bool)

(assert (=> b!2494123 (=> res!1054938 e!1582789)))

(assert (=> b!2494123 (= res!1054938 (not ((_ is Concat!12061) r!27340)))))

(assert (=> b!2494123 (= e!1582788 e!1582789)))

(declare-fun bm!153588 () Bool)

(assert (=> bm!153588 (= call!153592 call!153593)))

(declare-fun b!2494124 () Bool)

(declare-fun res!1054941 () Bool)

(assert (=> b!2494124 (=> (not res!1054941) (not e!1582794))))

(assert (=> b!2494124 (= res!1054941 call!153592)))

(assert (=> b!2494124 (= e!1582788 e!1582794)))

(declare-fun b!2494125 () Bool)

(assert (=> b!2494125 (= e!1582792 e!1582791)))

(declare-fun res!1054940 () Bool)

(assert (=> b!2494125 (= res!1054940 (not (nullable!2282 (reg!7694 r!27340))))))

(assert (=> b!2494125 (=> (not res!1054940) (not e!1582791))))

(assert (= (and d!714670 (not res!1054942)) b!2494121))

(assert (= (and b!2494121 c!396564) b!2494125))

(assert (= (and b!2494121 (not c!396564)) b!2494119))

(assert (= (and b!2494125 res!1054940) b!2494122))

(assert (= (and b!2494119 c!396565) b!2494124))

(assert (= (and b!2494119 (not c!396565)) b!2494123))

(assert (= (and b!2494124 res!1054941) b!2494120))

(assert (= (and b!2494123 (not res!1054938)) b!2494117))

(assert (= (and b!2494117 res!1054939) b!2494118))

(assert (= (or b!2494124 b!2494118) bm!153588))

(assert (= (or b!2494120 b!2494117) bm!153586))

(assert (= (or b!2494122 bm!153588) bm!153587))

(declare-fun m!2859447 () Bool)

(assert (=> bm!153586 m!2859447))

(declare-fun m!2859449 () Bool)

(assert (=> bm!153587 m!2859449))

(declare-fun m!2859451 () Bool)

(assert (=> b!2494125 m!2859451))

(assert (=> start!243592 d!714670))

(declare-fun b!2494137 () Bool)

(declare-fun e!1582797 () Bool)

(declare-fun tp!798922 () Bool)

(declare-fun tp!798919 () Bool)

(assert (=> b!2494137 (= e!1582797 (and tp!798922 tp!798919))))

(declare-fun b!2494138 () Bool)

(declare-fun tp!798923 () Bool)

(assert (=> b!2494138 (= e!1582797 tp!798923)))

(declare-fun b!2494139 () Bool)

(declare-fun tp!798920 () Bool)

(declare-fun tp!798921 () Bool)

(assert (=> b!2494139 (= e!1582797 (and tp!798920 tp!798921))))

(assert (=> b!2493802 (= tp!798865 e!1582797)))

(declare-fun b!2494136 () Bool)

(assert (=> b!2494136 (= e!1582797 tp_is_empty!12585)))

(assert (= (and b!2493802 ((_ is ElementMatch!7365) (regOne!15243 r!27340))) b!2494136))

(assert (= (and b!2493802 ((_ is Concat!12061) (regOne!15243 r!27340))) b!2494137))

(assert (= (and b!2493802 ((_ is Star!7365) (regOne!15243 r!27340))) b!2494138))

(assert (= (and b!2493802 ((_ is Union!7365) (regOne!15243 r!27340))) b!2494139))

(declare-fun b!2494141 () Bool)

(declare-fun e!1582798 () Bool)

(declare-fun tp!798927 () Bool)

(declare-fun tp!798924 () Bool)

(assert (=> b!2494141 (= e!1582798 (and tp!798927 tp!798924))))

(declare-fun b!2494142 () Bool)

(declare-fun tp!798928 () Bool)

(assert (=> b!2494142 (= e!1582798 tp!798928)))

(declare-fun b!2494143 () Bool)

(declare-fun tp!798925 () Bool)

(declare-fun tp!798926 () Bool)

(assert (=> b!2494143 (= e!1582798 (and tp!798925 tp!798926))))

(assert (=> b!2493802 (= tp!798868 e!1582798)))

(declare-fun b!2494140 () Bool)

(assert (=> b!2494140 (= e!1582798 tp_is_empty!12585)))

(assert (= (and b!2493802 ((_ is ElementMatch!7365) (regTwo!15243 r!27340))) b!2494140))

(assert (= (and b!2493802 ((_ is Concat!12061) (regTwo!15243 r!27340))) b!2494141))

(assert (= (and b!2493802 ((_ is Star!7365) (regTwo!15243 r!27340))) b!2494142))

(assert (= (and b!2493802 ((_ is Union!7365) (regTwo!15243 r!27340))) b!2494143))

(declare-fun b!2494145 () Bool)

(declare-fun e!1582799 () Bool)

(declare-fun tp!798932 () Bool)

(declare-fun tp!798929 () Bool)

(assert (=> b!2494145 (= e!1582799 (and tp!798932 tp!798929))))

(declare-fun b!2494146 () Bool)

(declare-fun tp!798933 () Bool)

(assert (=> b!2494146 (= e!1582799 tp!798933)))

(declare-fun b!2494147 () Bool)

(declare-fun tp!798930 () Bool)

(declare-fun tp!798931 () Bool)

(assert (=> b!2494147 (= e!1582799 (and tp!798930 tp!798931))))

(assert (=> b!2493808 (= tp!798867 e!1582799)))

(declare-fun b!2494144 () Bool)

(assert (=> b!2494144 (= e!1582799 tp_is_empty!12585)))

(assert (= (and b!2493808 ((_ is ElementMatch!7365) (reg!7694 r!27340))) b!2494144))

(assert (= (and b!2493808 ((_ is Concat!12061) (reg!7694 r!27340))) b!2494145))

(assert (= (and b!2493808 ((_ is Star!7365) (reg!7694 r!27340))) b!2494146))

(assert (= (and b!2493808 ((_ is Union!7365) (reg!7694 r!27340))) b!2494147))

(declare-fun b!2494149 () Bool)

(declare-fun e!1582800 () Bool)

(declare-fun tp!798937 () Bool)

(declare-fun tp!798934 () Bool)

(assert (=> b!2494149 (= e!1582800 (and tp!798937 tp!798934))))

(declare-fun b!2494150 () Bool)

(declare-fun tp!798938 () Bool)

(assert (=> b!2494150 (= e!1582800 tp!798938)))

(declare-fun b!2494151 () Bool)

(declare-fun tp!798935 () Bool)

(declare-fun tp!798936 () Bool)

(assert (=> b!2494151 (= e!1582800 (and tp!798935 tp!798936))))

(assert (=> b!2493809 (= tp!798869 e!1582800)))

(declare-fun b!2494148 () Bool)

(assert (=> b!2494148 (= e!1582800 tp_is_empty!12585)))

(assert (= (and b!2493809 ((_ is ElementMatch!7365) (regOne!15242 r!27340))) b!2494148))

(assert (= (and b!2493809 ((_ is Concat!12061) (regOne!15242 r!27340))) b!2494149))

(assert (= (and b!2493809 ((_ is Star!7365) (regOne!15242 r!27340))) b!2494150))

(assert (= (and b!2493809 ((_ is Union!7365) (regOne!15242 r!27340))) b!2494151))

(declare-fun b!2494153 () Bool)

(declare-fun e!1582801 () Bool)

(declare-fun tp!798942 () Bool)

(declare-fun tp!798939 () Bool)

(assert (=> b!2494153 (= e!1582801 (and tp!798942 tp!798939))))

(declare-fun b!2494154 () Bool)

(declare-fun tp!798943 () Bool)

(assert (=> b!2494154 (= e!1582801 tp!798943)))

(declare-fun b!2494155 () Bool)

(declare-fun tp!798940 () Bool)

(declare-fun tp!798941 () Bool)

(assert (=> b!2494155 (= e!1582801 (and tp!798940 tp!798941))))

(assert (=> b!2493809 (= tp!798866 e!1582801)))

(declare-fun b!2494152 () Bool)

(assert (=> b!2494152 (= e!1582801 tp_is_empty!12585)))

(assert (= (and b!2493809 ((_ is ElementMatch!7365) (regTwo!15242 r!27340))) b!2494152))

(assert (= (and b!2493809 ((_ is Concat!12061) (regTwo!15242 r!27340))) b!2494153))

(assert (= (and b!2493809 ((_ is Star!7365) (regTwo!15242 r!27340))) b!2494154))

(assert (= (and b!2493809 ((_ is Union!7365) (regTwo!15242 r!27340))) b!2494155))

(declare-fun b!2494160 () Bool)

(declare-fun e!1582804 () Bool)

(declare-fun tp!798946 () Bool)

(assert (=> b!2494160 (= e!1582804 (and tp_is_empty!12585 tp!798946))))

(assert (=> b!2493804 (= tp!798870 e!1582804)))

(assert (= (and b!2493804 ((_ is Cons!29330) (t!211129 tl!4068))) b!2494160))

(check-sat (not b!2494147) (not bm!153549) (not bm!153578) (not b!2494141) (not b!2494001) (not b!2494150) (not bm!153540) (not b!2494155) (not b!2494143) (not b!2493956) (not b!2493963) (not b!2494146) (not b!2494151) (not b!2493976) (not bm!153541) (not b!2494137) (not d!714634) (not b!2494083) (not bm!153587) (not b!2494142) (not b!2493864) (not b!2494139) (not b!2494149) (not b!2493955) (not b!2493962) (not d!714668) (not b!2493951) (not b!2493965) (not d!714664) (not b!2494154) (not d!714646) (not d!714640) (not bm!153550) (not b!2493969) (not b!2494160) (not bm!153584) (not b!2494145) (not b!2493970) (not bm!153582) (not b!2494125) (not b!2494153) (not b!2494138) tp_is_empty!12585 (not d!714650) (not d!714648) (not b!2493949) (not d!714666) (not b!2493959) (not b!2494105) (not bm!153580) (not d!714642) (not b!2494115) (not b!2493973) (not bm!153586))
(check-sat)
