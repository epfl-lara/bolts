; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281650 () Bool)

(assert start!281650)

(declare-fun b!2885885 () Bool)

(declare-fun res!1195487 () Bool)

(declare-fun e!1824989 () Bool)

(assert (=> b!2885885 (=> (not res!1195487) (not e!1824989))))

(declare-datatypes ((C!17808 0))(
  ( (C!17809 (val!10938 Int)) )
))
(declare-datatypes ((Regex!8813 0))(
  ( (ElementMatch!8813 (c!468998 C!17808)) (Concat!14134 (regOne!18138 Regex!8813) (regTwo!18138 Regex!8813)) (EmptyExpr!8813) (Star!8813 (reg!9142 Regex!8813)) (EmptyLang!8813) (Union!8813 (regOne!18139 Regex!8813) (regTwo!18139 Regex!8813)) )
))
(declare-fun r!23079 () Regex!8813)

(get-info :version)

(assert (=> b!2885885 (= res!1195487 ((_ is EmptyExpr!8813) r!23079))))

(declare-fun b!2885886 () Bool)

(declare-fun e!1824990 () Bool)

(declare-fun tp!925497 () Bool)

(declare-fun tp!925495 () Bool)

(assert (=> b!2885886 (= e!1824990 (and tp!925497 tp!925495))))

(declare-fun b!2885887 () Bool)

(declare-fun tp!925499 () Bool)

(assert (=> b!2885887 (= e!1824990 tp!925499)))

(declare-fun b!2885888 () Bool)

(declare-fun e!1824991 () Bool)

(assert (=> b!2885888 (= e!1824991 e!1824989)))

(declare-fun res!1195485 () Bool)

(assert (=> b!2885888 (=> (not res!1195485) (not e!1824989))))

(declare-datatypes ((List!34614 0))(
  ( (Nil!34490) (Cons!34490 (h!39910 C!17808) (t!233657 List!34614)) )
))
(declare-datatypes ((Option!6486 0))(
  ( (None!6485) (Some!6485 (v!34611 List!34614)) )
))
(declare-fun lt!1020650 () Option!6486)

(declare-fun isDefined!5050 (Option!6486) Bool)

(assert (=> b!2885888 (= res!1195485 (isDefined!5050 lt!1020650))))

(declare-fun getLanguageWitness!520 (Regex!8813) Option!6486)

(assert (=> b!2885888 (= lt!1020650 (getLanguageWitness!520 r!23079))))

(declare-fun b!2885889 () Bool)

(declare-fun tp!925496 () Bool)

(declare-fun tp!925498 () Bool)

(assert (=> b!2885889 (= e!1824990 (and tp!925496 tp!925498))))

(declare-fun b!2885890 () Bool)

(declare-fun matchR!3789 (Regex!8813 List!34614) Bool)

(declare-fun get!10428 (Option!6486) List!34614)

(assert (=> b!2885890 (= e!1824989 (not (matchR!3789 r!23079 (get!10428 lt!1020650))))))

(declare-fun b!2885884 () Bool)

(declare-fun tp_is_empty!15213 () Bool)

(assert (=> b!2885884 (= e!1824990 tp_is_empty!15213)))

(declare-fun res!1195486 () Bool)

(assert (=> start!281650 (=> (not res!1195486) (not e!1824991))))

(declare-fun validRegex!3586 (Regex!8813) Bool)

(assert (=> start!281650 (= res!1195486 (validRegex!3586 r!23079))))

(assert (=> start!281650 e!1824991))

(assert (=> start!281650 e!1824990))

(assert (= (and start!281650 res!1195486) b!2885888))

(assert (= (and b!2885888 res!1195485) b!2885885))

(assert (= (and b!2885885 res!1195487) b!2885890))

(assert (= (and start!281650 ((_ is ElementMatch!8813) r!23079)) b!2885884))

(assert (= (and start!281650 ((_ is Concat!14134) r!23079)) b!2885886))

(assert (= (and start!281650 ((_ is Star!8813) r!23079)) b!2885887))

(assert (= (and start!281650 ((_ is Union!8813) r!23079)) b!2885889))

(declare-fun m!3301125 () Bool)

(assert (=> b!2885888 m!3301125))

(declare-fun m!3301127 () Bool)

(assert (=> b!2885888 m!3301127))

(declare-fun m!3301129 () Bool)

(assert (=> b!2885890 m!3301129))

(assert (=> b!2885890 m!3301129))

(declare-fun m!3301131 () Bool)

(assert (=> b!2885890 m!3301131))

(declare-fun m!3301133 () Bool)

(assert (=> start!281650 m!3301133))

(check-sat tp_is_empty!15213 (not b!2885886) (not b!2885888) (not start!281650) (not b!2885887) (not b!2885889) (not b!2885890))
(check-sat)
(get-model)

(declare-fun d!833944 () Bool)

(declare-fun isEmpty!18781 (Option!6486) Bool)

(assert (=> d!833944 (= (isDefined!5050 lt!1020650) (not (isEmpty!18781 lt!1020650)))))

(declare-fun bs!523824 () Bool)

(assert (= bs!523824 d!833944))

(declare-fun m!3301137 () Bool)

(assert (=> bs!523824 m!3301137))

(assert (=> b!2885888 d!833944))

(declare-fun b!2885971 () Bool)

(declare-fun e!1825038 () Option!6486)

(assert (=> b!2885971 (= e!1825038 (Some!6485 (Cons!34490 (c!468998 r!23079) Nil!34490)))))

(declare-fun b!2885972 () Bool)

(declare-fun e!1825037 () Option!6486)

(declare-fun lt!1020668 () Option!6486)

(declare-fun lt!1020666 () Option!6486)

(declare-fun ++!8212 (List!34614 List!34614) List!34614)

(assert (=> b!2885972 (= e!1825037 (Some!6485 (++!8212 (v!34611 lt!1020668) (v!34611 lt!1020666))))))

(declare-fun b!2885973 () Bool)

(declare-fun c!469042 () Bool)

(assert (=> b!2885973 (= c!469042 ((_ is ElementMatch!8813) r!23079))))

(declare-fun e!1825039 () Option!6486)

(assert (=> b!2885973 (= e!1825039 e!1825038)))

(declare-fun b!2885974 () Bool)

(declare-fun e!1825035 () Option!6486)

(declare-fun e!1825033 () Option!6486)

(assert (=> b!2885974 (= e!1825035 e!1825033)))

(declare-fun lt!1020667 () Option!6486)

(declare-fun call!187197 () Option!6486)

(assert (=> b!2885974 (= lt!1020667 call!187197)))

(declare-fun c!469043 () Bool)

(assert (=> b!2885974 (= c!469043 ((_ is Some!6485) lt!1020667))))

(declare-fun b!2885975 () Bool)

(declare-fun e!1825034 () Option!6486)

(assert (=> b!2885975 (= e!1825038 e!1825034)))

(declare-fun c!469046 () Bool)

(assert (=> b!2885975 (= c!469046 ((_ is Star!8813) r!23079))))

(declare-fun bm!187192 () Bool)

(declare-fun c!469044 () Bool)

(assert (=> bm!187192 (= call!187197 (getLanguageWitness!520 (ite c!469044 (regOne!18139 r!23079) (regTwo!18138 r!23079))))))

(declare-fun b!2885976 () Bool)

(assert (=> b!2885976 (= e!1825037 None!6485)))

(declare-fun b!2885977 () Bool)

(assert (=> b!2885977 (= e!1825039 None!6485)))

(declare-fun b!2885978 () Bool)

(declare-fun call!187198 () Option!6486)

(assert (=> b!2885978 (= e!1825033 call!187198)))

(declare-fun b!2885979 () Bool)

(declare-fun e!1825032 () Option!6486)

(assert (=> b!2885979 (= e!1825032 None!6485)))

(declare-fun b!2885980 () Bool)

(declare-fun e!1825036 () Option!6486)

(assert (=> b!2885980 (= e!1825036 (Some!6485 Nil!34490))))

(declare-fun b!2885981 () Bool)

(assert (=> b!2885981 (= e!1825034 (Some!6485 Nil!34490))))

(declare-fun d!833948 () Bool)

(declare-fun c!469041 () Bool)

(assert (=> d!833948 (= c!469041 ((_ is EmptyExpr!8813) r!23079))))

(assert (=> d!833948 (= (getLanguageWitness!520 r!23079) e!1825036)))

(declare-fun b!2885982 () Bool)

(assert (=> b!2885982 (= c!469044 ((_ is Union!8813) r!23079))))

(assert (=> b!2885982 (= e!1825034 e!1825035)))

(declare-fun b!2885983 () Bool)

(assert (=> b!2885983 (= e!1825033 lt!1020667)))

(declare-fun b!2885984 () Bool)

(declare-fun c!469045 () Bool)

(assert (=> b!2885984 (= c!469045 ((_ is Some!6485) lt!1020666))))

(assert (=> b!2885984 (= lt!1020666 call!187197)))

(assert (=> b!2885984 (= e!1825032 e!1825037)))

(declare-fun b!2885985 () Bool)

(assert (=> b!2885985 (= e!1825035 e!1825032)))

(assert (=> b!2885985 (= lt!1020668 call!187198)))

(declare-fun c!469039 () Bool)

(assert (=> b!2885985 (= c!469039 ((_ is Some!6485) lt!1020668))))

(declare-fun b!2885986 () Bool)

(assert (=> b!2885986 (= e!1825036 e!1825039)))

(declare-fun c!469040 () Bool)

(assert (=> b!2885986 (= c!469040 ((_ is EmptyLang!8813) r!23079))))

(declare-fun bm!187193 () Bool)

(assert (=> bm!187193 (= call!187198 (getLanguageWitness!520 (ite c!469044 (regTwo!18139 r!23079) (regOne!18138 r!23079))))))

(assert (= (and d!833948 c!469041) b!2885980))

(assert (= (and d!833948 (not c!469041)) b!2885986))

(assert (= (and b!2885986 c!469040) b!2885977))

(assert (= (and b!2885986 (not c!469040)) b!2885973))

(assert (= (and b!2885973 c!469042) b!2885971))

(assert (= (and b!2885973 (not c!469042)) b!2885975))

(assert (= (and b!2885975 c!469046) b!2885981))

(assert (= (and b!2885975 (not c!469046)) b!2885982))

(assert (= (and b!2885982 c!469044) b!2885974))

(assert (= (and b!2885982 (not c!469044)) b!2885985))

(assert (= (and b!2885974 c!469043) b!2885983))

(assert (= (and b!2885974 (not c!469043)) b!2885978))

(assert (= (and b!2885985 c!469039) b!2885984))

(assert (= (and b!2885985 (not c!469039)) b!2885979))

(assert (= (and b!2885984 c!469045) b!2885972))

(assert (= (and b!2885984 (not c!469045)) b!2885976))

(assert (= (or b!2885978 b!2885985) bm!187193))

(assert (= (or b!2885974 b!2885984) bm!187192))

(declare-fun m!3301145 () Bool)

(assert (=> b!2885972 m!3301145))

(declare-fun m!3301147 () Bool)

(assert (=> bm!187192 m!3301147))

(declare-fun m!3301149 () Bool)

(assert (=> bm!187193 m!3301149))

(assert (=> b!2885888 d!833948))

(declare-fun b!2886046 () Bool)

(declare-fun e!1825081 () Bool)

(declare-fun e!1825078 () Bool)

(assert (=> b!2886046 (= e!1825081 e!1825078)))

(declare-fun res!1195526 () Bool)

(assert (=> b!2886046 (=> res!1195526 e!1825078)))

(declare-fun call!187210 () Bool)

(assert (=> b!2886046 (= res!1195526 call!187210)))

(declare-fun b!2886047 () Bool)

(declare-fun res!1195523 () Bool)

(assert (=> b!2886047 (=> res!1195523 e!1825078)))

(declare-fun isEmpty!18782 (List!34614) Bool)

(declare-fun tail!4599 (List!34614) List!34614)

(assert (=> b!2886047 (= res!1195523 (not (isEmpty!18782 (tail!4599 (get!10428 lt!1020650)))))))

(declare-fun b!2886048 () Bool)

(declare-fun res!1195522 () Bool)

(declare-fun e!1825082 () Bool)

(assert (=> b!2886048 (=> res!1195522 e!1825082)))

(declare-fun e!1825079 () Bool)

(assert (=> b!2886048 (= res!1195522 e!1825079)))

(declare-fun res!1195519 () Bool)

(assert (=> b!2886048 (=> (not res!1195519) (not e!1825079))))

(declare-fun lt!1020673 () Bool)

(assert (=> b!2886048 (= res!1195519 lt!1020673)))

(declare-fun b!2886049 () Bool)

(declare-fun e!1825083 () Bool)

(declare-fun e!1825077 () Bool)

(assert (=> b!2886049 (= e!1825083 e!1825077)))

(declare-fun c!469062 () Bool)

(assert (=> b!2886049 (= c!469062 ((_ is EmptyLang!8813) r!23079))))

(declare-fun b!2886050 () Bool)

(declare-fun head!6374 (List!34614) C!17808)

(assert (=> b!2886050 (= e!1825078 (not (= (head!6374 (get!10428 lt!1020650)) (c!468998 r!23079))))))

(declare-fun d!833952 () Bool)

(assert (=> d!833952 e!1825083))

(declare-fun c!469061 () Bool)

(assert (=> d!833952 (= c!469061 ((_ is EmptyExpr!8813) r!23079))))

(declare-fun e!1825080 () Bool)

(assert (=> d!833952 (= lt!1020673 e!1825080)))

(declare-fun c!469063 () Bool)

(assert (=> d!833952 (= c!469063 (isEmpty!18782 (get!10428 lt!1020650)))))

(assert (=> d!833952 (validRegex!3586 r!23079)))

(assert (=> d!833952 (= (matchR!3789 r!23079 (get!10428 lt!1020650)) lt!1020673)))

(declare-fun b!2886051 () Bool)

(assert (=> b!2886051 (= e!1825082 e!1825081)))

(declare-fun res!1195520 () Bool)

(assert (=> b!2886051 (=> (not res!1195520) (not e!1825081))))

(assert (=> b!2886051 (= res!1195520 (not lt!1020673))))

(declare-fun b!2886052 () Bool)

(assert (=> b!2886052 (= e!1825077 (not lt!1020673))))

(declare-fun b!2886053 () Bool)

(declare-fun derivativeStep!2345 (Regex!8813 C!17808) Regex!8813)

(assert (=> b!2886053 (= e!1825080 (matchR!3789 (derivativeStep!2345 r!23079 (head!6374 (get!10428 lt!1020650))) (tail!4599 (get!10428 lt!1020650))))))

(declare-fun b!2886054 () Bool)

(declare-fun res!1195525 () Bool)

(assert (=> b!2886054 (=> (not res!1195525) (not e!1825079))))

(assert (=> b!2886054 (= res!1195525 (not call!187210))))

(declare-fun b!2886055 () Bool)

(assert (=> b!2886055 (= e!1825083 (= lt!1020673 call!187210))))

(declare-fun bm!187205 () Bool)

(assert (=> bm!187205 (= call!187210 (isEmpty!18782 (get!10428 lt!1020650)))))

(declare-fun b!2886056 () Bool)

(declare-fun res!1195521 () Bool)

(assert (=> b!2886056 (=> (not res!1195521) (not e!1825079))))

(assert (=> b!2886056 (= res!1195521 (isEmpty!18782 (tail!4599 (get!10428 lt!1020650))))))

(declare-fun b!2886057 () Bool)

(assert (=> b!2886057 (= e!1825079 (= (head!6374 (get!10428 lt!1020650)) (c!468998 r!23079)))))

(declare-fun b!2886058 () Bool)

(declare-fun res!1195524 () Bool)

(assert (=> b!2886058 (=> res!1195524 e!1825082)))

(assert (=> b!2886058 (= res!1195524 (not ((_ is ElementMatch!8813) r!23079)))))

(assert (=> b!2886058 (= e!1825077 e!1825082)))

(declare-fun b!2886059 () Bool)

(declare-fun nullable!2715 (Regex!8813) Bool)

(assert (=> b!2886059 (= e!1825080 (nullable!2715 r!23079))))

(assert (= (and d!833952 c!469063) b!2886059))

(assert (= (and d!833952 (not c!469063)) b!2886053))

(assert (= (and d!833952 c!469061) b!2886055))

(assert (= (and d!833952 (not c!469061)) b!2886049))

(assert (= (and b!2886049 c!469062) b!2886052))

(assert (= (and b!2886049 (not c!469062)) b!2886058))

(assert (= (and b!2886058 (not res!1195524)) b!2886048))

(assert (= (and b!2886048 res!1195519) b!2886054))

(assert (= (and b!2886054 res!1195525) b!2886056))

(assert (= (and b!2886056 res!1195521) b!2886057))

(assert (= (and b!2886048 (not res!1195522)) b!2886051))

(assert (= (and b!2886051 res!1195520) b!2886046))

(assert (= (and b!2886046 (not res!1195526)) b!2886047))

(assert (= (and b!2886047 (not res!1195523)) b!2886050))

(assert (= (or b!2886055 b!2886046 b!2886054) bm!187205))

(assert (=> b!2886053 m!3301129))

(declare-fun m!3301157 () Bool)

(assert (=> b!2886053 m!3301157))

(assert (=> b!2886053 m!3301157))

(declare-fun m!3301159 () Bool)

(assert (=> b!2886053 m!3301159))

(assert (=> b!2886053 m!3301129))

(declare-fun m!3301161 () Bool)

(assert (=> b!2886053 m!3301161))

(assert (=> b!2886053 m!3301159))

(assert (=> b!2886053 m!3301161))

(declare-fun m!3301163 () Bool)

(assert (=> b!2886053 m!3301163))

(assert (=> b!2886050 m!3301129))

(assert (=> b!2886050 m!3301157))

(assert (=> b!2886057 m!3301129))

(assert (=> b!2886057 m!3301157))

(assert (=> b!2886047 m!3301129))

(assert (=> b!2886047 m!3301161))

(assert (=> b!2886047 m!3301161))

(declare-fun m!3301165 () Bool)

(assert (=> b!2886047 m!3301165))

(assert (=> bm!187205 m!3301129))

(declare-fun m!3301167 () Bool)

(assert (=> bm!187205 m!3301167))

(assert (=> b!2886056 m!3301129))

(assert (=> b!2886056 m!3301161))

(assert (=> b!2886056 m!3301161))

(assert (=> b!2886056 m!3301165))

(declare-fun m!3301169 () Bool)

(assert (=> b!2886059 m!3301169))

(assert (=> d!833952 m!3301129))

(assert (=> d!833952 m!3301167))

(assert (=> d!833952 m!3301133))

(assert (=> b!2885890 d!833952))

(declare-fun d!833956 () Bool)

(assert (=> d!833956 (= (get!10428 lt!1020650) (v!34611 lt!1020650))))

(assert (=> b!2885890 d!833956))

(declare-fun b!2886138 () Bool)

(declare-fun res!1195565 () Bool)

(declare-fun e!1825128 () Bool)

(assert (=> b!2886138 (=> res!1195565 e!1825128)))

(assert (=> b!2886138 (= res!1195565 (not ((_ is Concat!14134) r!23079)))))

(declare-fun e!1825124 () Bool)

(assert (=> b!2886138 (= e!1825124 e!1825128)))

(declare-fun b!2886139 () Bool)

(declare-fun e!1825121 () Bool)

(assert (=> b!2886139 (= e!1825121 e!1825124)))

(declare-fun c!469075 () Bool)

(assert (=> b!2886139 (= c!469075 ((_ is Union!8813) r!23079))))

(declare-fun bm!187215 () Bool)

(declare-fun call!187221 () Bool)

(assert (=> bm!187215 (= call!187221 (validRegex!3586 (ite c!469075 (regOne!18139 r!23079) (regOne!18138 r!23079))))))

(declare-fun b!2886141 () Bool)

(declare-fun e!1825125 () Bool)

(assert (=> b!2886141 (= e!1825125 e!1825121)))

(declare-fun c!469076 () Bool)

(assert (=> b!2886141 (= c!469076 ((_ is Star!8813) r!23079))))

(declare-fun b!2886142 () Bool)

(declare-fun e!1825123 () Bool)

(assert (=> b!2886142 (= e!1825121 e!1825123)))

(declare-fun res!1195563 () Bool)

(assert (=> b!2886142 (= res!1195563 (not (nullable!2715 (reg!9142 r!23079))))))

(assert (=> b!2886142 (=> (not res!1195563) (not e!1825123))))

(declare-fun b!2886140 () Bool)

(declare-fun e!1825126 () Bool)

(assert (=> b!2886140 (= e!1825128 e!1825126)))

(declare-fun res!1195561 () Bool)

(assert (=> b!2886140 (=> (not res!1195561) (not e!1825126))))

(assert (=> b!2886140 (= res!1195561 call!187221)))

(declare-fun d!833958 () Bool)

(declare-fun res!1195564 () Bool)

(assert (=> d!833958 (=> res!1195564 e!1825125)))

(assert (=> d!833958 (= res!1195564 ((_ is ElementMatch!8813) r!23079))))

(assert (=> d!833958 (= (validRegex!3586 r!23079) e!1825125)))

(declare-fun b!2886143 () Bool)

(declare-fun res!1195562 () Bool)

(declare-fun e!1825127 () Bool)

(assert (=> b!2886143 (=> (not res!1195562) (not e!1825127))))

(assert (=> b!2886143 (= res!1195562 call!187221)))

(assert (=> b!2886143 (= e!1825124 e!1825127)))

(declare-fun b!2886144 () Bool)

(declare-fun call!187222 () Bool)

(assert (=> b!2886144 (= e!1825126 call!187222)))

(declare-fun bm!187216 () Bool)

(declare-fun call!187220 () Bool)

(assert (=> bm!187216 (= call!187222 call!187220)))

(declare-fun b!2886145 () Bool)

(assert (=> b!2886145 (= e!1825123 call!187220)))

(declare-fun bm!187217 () Bool)

(assert (=> bm!187217 (= call!187220 (validRegex!3586 (ite c!469076 (reg!9142 r!23079) (ite c!469075 (regTwo!18139 r!23079) (regTwo!18138 r!23079)))))))

(declare-fun b!2886146 () Bool)

(assert (=> b!2886146 (= e!1825127 call!187222)))

(assert (= (and d!833958 (not res!1195564)) b!2886141))

(assert (= (and b!2886141 c!469076) b!2886142))

(assert (= (and b!2886141 (not c!469076)) b!2886139))

(assert (= (and b!2886142 res!1195563) b!2886145))

(assert (= (and b!2886139 c!469075) b!2886143))

(assert (= (and b!2886139 (not c!469075)) b!2886138))

(assert (= (and b!2886143 res!1195562) b!2886146))

(assert (= (and b!2886138 (not res!1195565)) b!2886140))

(assert (= (and b!2886140 res!1195561) b!2886144))

(assert (= (or b!2886146 b!2886144) bm!187216))

(assert (= (or b!2886143 b!2886140) bm!187215))

(assert (= (or b!2886145 bm!187216) bm!187217))

(declare-fun m!3301185 () Bool)

(assert (=> bm!187215 m!3301185))

(declare-fun m!3301187 () Bool)

(assert (=> b!2886142 m!3301187))

(declare-fun m!3301189 () Bool)

(assert (=> bm!187217 m!3301189))

(assert (=> start!281650 d!833958))

(declare-fun b!2886167 () Bool)

(declare-fun e!1825133 () Bool)

(declare-fun tp!925547 () Bool)

(assert (=> b!2886167 (= e!1825133 tp!925547)))

(declare-fun b!2886166 () Bool)

(declare-fun tp!925548 () Bool)

(declare-fun tp!925545 () Bool)

(assert (=> b!2886166 (= e!1825133 (and tp!925548 tp!925545))))

(declare-fun b!2886165 () Bool)

(assert (=> b!2886165 (= e!1825133 tp_is_empty!15213)))

(declare-fun b!2886168 () Bool)

(declare-fun tp!925546 () Bool)

(declare-fun tp!925549 () Bool)

(assert (=> b!2886168 (= e!1825133 (and tp!925546 tp!925549))))

(assert (=> b!2885886 (= tp!925497 e!1825133)))

(assert (= (and b!2885886 ((_ is ElementMatch!8813) (regOne!18138 r!23079))) b!2886165))

(assert (= (and b!2885886 ((_ is Concat!14134) (regOne!18138 r!23079))) b!2886166))

(assert (= (and b!2885886 ((_ is Star!8813) (regOne!18138 r!23079))) b!2886167))

(assert (= (and b!2885886 ((_ is Union!8813) (regOne!18138 r!23079))) b!2886168))

(declare-fun b!2886171 () Bool)

(declare-fun e!1825134 () Bool)

(declare-fun tp!925552 () Bool)

(assert (=> b!2886171 (= e!1825134 tp!925552)))

(declare-fun b!2886170 () Bool)

(declare-fun tp!925553 () Bool)

(declare-fun tp!925550 () Bool)

(assert (=> b!2886170 (= e!1825134 (and tp!925553 tp!925550))))

(declare-fun b!2886169 () Bool)

(assert (=> b!2886169 (= e!1825134 tp_is_empty!15213)))

(declare-fun b!2886172 () Bool)

(declare-fun tp!925551 () Bool)

(declare-fun tp!925554 () Bool)

(assert (=> b!2886172 (= e!1825134 (and tp!925551 tp!925554))))

(assert (=> b!2885886 (= tp!925495 e!1825134)))

(assert (= (and b!2885886 ((_ is ElementMatch!8813) (regTwo!18138 r!23079))) b!2886169))

(assert (= (and b!2885886 ((_ is Concat!14134) (regTwo!18138 r!23079))) b!2886170))

(assert (= (and b!2885886 ((_ is Star!8813) (regTwo!18138 r!23079))) b!2886171))

(assert (= (and b!2885886 ((_ is Union!8813) (regTwo!18138 r!23079))) b!2886172))

(declare-fun b!2886175 () Bool)

(declare-fun e!1825135 () Bool)

(declare-fun tp!925557 () Bool)

(assert (=> b!2886175 (= e!1825135 tp!925557)))

(declare-fun b!2886174 () Bool)

(declare-fun tp!925558 () Bool)

(declare-fun tp!925555 () Bool)

(assert (=> b!2886174 (= e!1825135 (and tp!925558 tp!925555))))

(declare-fun b!2886173 () Bool)

(assert (=> b!2886173 (= e!1825135 tp_is_empty!15213)))

(declare-fun b!2886176 () Bool)

(declare-fun tp!925556 () Bool)

(declare-fun tp!925559 () Bool)

(assert (=> b!2886176 (= e!1825135 (and tp!925556 tp!925559))))

(assert (=> b!2885887 (= tp!925499 e!1825135)))

(assert (= (and b!2885887 ((_ is ElementMatch!8813) (reg!9142 r!23079))) b!2886173))

(assert (= (and b!2885887 ((_ is Concat!14134) (reg!9142 r!23079))) b!2886174))

(assert (= (and b!2885887 ((_ is Star!8813) (reg!9142 r!23079))) b!2886175))

(assert (= (and b!2885887 ((_ is Union!8813) (reg!9142 r!23079))) b!2886176))

(declare-fun b!2886179 () Bool)

(declare-fun e!1825136 () Bool)

(declare-fun tp!925562 () Bool)

(assert (=> b!2886179 (= e!1825136 tp!925562)))

(declare-fun b!2886178 () Bool)

(declare-fun tp!925563 () Bool)

(declare-fun tp!925560 () Bool)

(assert (=> b!2886178 (= e!1825136 (and tp!925563 tp!925560))))

(declare-fun b!2886177 () Bool)

(assert (=> b!2886177 (= e!1825136 tp_is_empty!15213)))

(declare-fun b!2886180 () Bool)

(declare-fun tp!925561 () Bool)

(declare-fun tp!925564 () Bool)

(assert (=> b!2886180 (= e!1825136 (and tp!925561 tp!925564))))

(assert (=> b!2885889 (= tp!925496 e!1825136)))

(assert (= (and b!2885889 ((_ is ElementMatch!8813) (regOne!18139 r!23079))) b!2886177))

(assert (= (and b!2885889 ((_ is Concat!14134) (regOne!18139 r!23079))) b!2886178))

(assert (= (and b!2885889 ((_ is Star!8813) (regOne!18139 r!23079))) b!2886179))

(assert (= (and b!2885889 ((_ is Union!8813) (regOne!18139 r!23079))) b!2886180))

(declare-fun b!2886183 () Bool)

(declare-fun e!1825137 () Bool)

(declare-fun tp!925567 () Bool)

(assert (=> b!2886183 (= e!1825137 tp!925567)))

(declare-fun b!2886182 () Bool)

(declare-fun tp!925568 () Bool)

(declare-fun tp!925565 () Bool)

(assert (=> b!2886182 (= e!1825137 (and tp!925568 tp!925565))))

(declare-fun b!2886181 () Bool)

(assert (=> b!2886181 (= e!1825137 tp_is_empty!15213)))

(declare-fun b!2886184 () Bool)

(declare-fun tp!925566 () Bool)

(declare-fun tp!925569 () Bool)

(assert (=> b!2886184 (= e!1825137 (and tp!925566 tp!925569))))

(assert (=> b!2885889 (= tp!925498 e!1825137)))

(assert (= (and b!2885889 ((_ is ElementMatch!8813) (regTwo!18139 r!23079))) b!2886181))

(assert (= (and b!2885889 ((_ is Concat!14134) (regTwo!18139 r!23079))) b!2886182))

(assert (= (and b!2885889 ((_ is Star!8813) (regTwo!18139 r!23079))) b!2886183))

(assert (= (and b!2885889 ((_ is Union!8813) (regTwo!18139 r!23079))) b!2886184))

(check-sat (not b!2886047) (not bm!187217) (not b!2885972) (not b!2886184) (not b!2886182) (not b!2886172) (not b!2886050) (not b!2886057) (not b!2886168) (not b!2886142) (not d!833944) (not b!2886166) tp_is_empty!15213 (not b!2886178) (not b!2886171) (not b!2886167) (not bm!187193) (not bm!187192) (not b!2886179) (not bm!187215) (not b!2886056) (not b!2886053) (not b!2886170) (not b!2886183) (not bm!187205) (not b!2886175) (not b!2886180) (not b!2886174) (not d!833952) (not b!2886176) (not b!2886059))
(check-sat)
(get-model)

(declare-fun b!2886185 () Bool)

(declare-fun e!1825142 () Bool)

(declare-fun e!1825139 () Bool)

(assert (=> b!2886185 (= e!1825142 e!1825139)))

(declare-fun res!1195573 () Bool)

(assert (=> b!2886185 (=> res!1195573 e!1825139)))

(declare-fun call!187223 () Bool)

(assert (=> b!2886185 (= res!1195573 call!187223)))

(declare-fun b!2886186 () Bool)

(declare-fun res!1195570 () Bool)

(assert (=> b!2886186 (=> res!1195570 e!1825139)))

(assert (=> b!2886186 (= res!1195570 (not (isEmpty!18782 (tail!4599 (tail!4599 (get!10428 lt!1020650))))))))

(declare-fun b!2886187 () Bool)

(declare-fun res!1195569 () Bool)

(declare-fun e!1825143 () Bool)

(assert (=> b!2886187 (=> res!1195569 e!1825143)))

(declare-fun e!1825140 () Bool)

(assert (=> b!2886187 (= res!1195569 e!1825140)))

(declare-fun res!1195566 () Bool)

(assert (=> b!2886187 (=> (not res!1195566) (not e!1825140))))

(declare-fun lt!1020675 () Bool)

(assert (=> b!2886187 (= res!1195566 lt!1020675)))

(declare-fun b!2886188 () Bool)

(declare-fun e!1825144 () Bool)

(declare-fun e!1825138 () Bool)

(assert (=> b!2886188 (= e!1825144 e!1825138)))

(declare-fun c!469078 () Bool)

(assert (=> b!2886188 (= c!469078 ((_ is EmptyLang!8813) (derivativeStep!2345 r!23079 (head!6374 (get!10428 lt!1020650)))))))

(declare-fun b!2886189 () Bool)

(assert (=> b!2886189 (= e!1825139 (not (= (head!6374 (tail!4599 (get!10428 lt!1020650))) (c!468998 (derivativeStep!2345 r!23079 (head!6374 (get!10428 lt!1020650)))))))))

(declare-fun d!833962 () Bool)

(assert (=> d!833962 e!1825144))

(declare-fun c!469077 () Bool)

(assert (=> d!833962 (= c!469077 ((_ is EmptyExpr!8813) (derivativeStep!2345 r!23079 (head!6374 (get!10428 lt!1020650)))))))

(declare-fun e!1825141 () Bool)

(assert (=> d!833962 (= lt!1020675 e!1825141)))

(declare-fun c!469079 () Bool)

(assert (=> d!833962 (= c!469079 (isEmpty!18782 (tail!4599 (get!10428 lt!1020650))))))

(assert (=> d!833962 (validRegex!3586 (derivativeStep!2345 r!23079 (head!6374 (get!10428 lt!1020650))))))

(assert (=> d!833962 (= (matchR!3789 (derivativeStep!2345 r!23079 (head!6374 (get!10428 lt!1020650))) (tail!4599 (get!10428 lt!1020650))) lt!1020675)))

(declare-fun b!2886190 () Bool)

(assert (=> b!2886190 (= e!1825143 e!1825142)))

(declare-fun res!1195567 () Bool)

(assert (=> b!2886190 (=> (not res!1195567) (not e!1825142))))

(assert (=> b!2886190 (= res!1195567 (not lt!1020675))))

(declare-fun b!2886191 () Bool)

(assert (=> b!2886191 (= e!1825138 (not lt!1020675))))

(declare-fun b!2886192 () Bool)

(assert (=> b!2886192 (= e!1825141 (matchR!3789 (derivativeStep!2345 (derivativeStep!2345 r!23079 (head!6374 (get!10428 lt!1020650))) (head!6374 (tail!4599 (get!10428 lt!1020650)))) (tail!4599 (tail!4599 (get!10428 lt!1020650)))))))

(declare-fun b!2886193 () Bool)

(declare-fun res!1195572 () Bool)

(assert (=> b!2886193 (=> (not res!1195572) (not e!1825140))))

(assert (=> b!2886193 (= res!1195572 (not call!187223))))

(declare-fun b!2886194 () Bool)

(assert (=> b!2886194 (= e!1825144 (= lt!1020675 call!187223))))

(declare-fun bm!187218 () Bool)

(assert (=> bm!187218 (= call!187223 (isEmpty!18782 (tail!4599 (get!10428 lt!1020650))))))

(declare-fun b!2886195 () Bool)

(declare-fun res!1195568 () Bool)

(assert (=> b!2886195 (=> (not res!1195568) (not e!1825140))))

(assert (=> b!2886195 (= res!1195568 (isEmpty!18782 (tail!4599 (tail!4599 (get!10428 lt!1020650)))))))

(declare-fun b!2886196 () Bool)

(assert (=> b!2886196 (= e!1825140 (= (head!6374 (tail!4599 (get!10428 lt!1020650))) (c!468998 (derivativeStep!2345 r!23079 (head!6374 (get!10428 lt!1020650))))))))

(declare-fun b!2886197 () Bool)

(declare-fun res!1195571 () Bool)

(assert (=> b!2886197 (=> res!1195571 e!1825143)))

(assert (=> b!2886197 (= res!1195571 (not ((_ is ElementMatch!8813) (derivativeStep!2345 r!23079 (head!6374 (get!10428 lt!1020650))))))))

(assert (=> b!2886197 (= e!1825138 e!1825143)))

(declare-fun b!2886198 () Bool)

(assert (=> b!2886198 (= e!1825141 (nullable!2715 (derivativeStep!2345 r!23079 (head!6374 (get!10428 lt!1020650)))))))

(assert (= (and d!833962 c!469079) b!2886198))

(assert (= (and d!833962 (not c!469079)) b!2886192))

(assert (= (and d!833962 c!469077) b!2886194))

(assert (= (and d!833962 (not c!469077)) b!2886188))

(assert (= (and b!2886188 c!469078) b!2886191))

(assert (= (and b!2886188 (not c!469078)) b!2886197))

(assert (= (and b!2886197 (not res!1195571)) b!2886187))

(assert (= (and b!2886187 res!1195566) b!2886193))

(assert (= (and b!2886193 res!1195572) b!2886195))

(assert (= (and b!2886195 res!1195568) b!2886196))

(assert (= (and b!2886187 (not res!1195569)) b!2886190))

(assert (= (and b!2886190 res!1195567) b!2886185))

(assert (= (and b!2886185 (not res!1195573)) b!2886186))

(assert (= (and b!2886186 (not res!1195570)) b!2886189))

(assert (= (or b!2886194 b!2886185 b!2886193) bm!187218))

(assert (=> b!2886192 m!3301161))

(declare-fun m!3301191 () Bool)

(assert (=> b!2886192 m!3301191))

(assert (=> b!2886192 m!3301159))

(assert (=> b!2886192 m!3301191))

(declare-fun m!3301193 () Bool)

(assert (=> b!2886192 m!3301193))

(assert (=> b!2886192 m!3301161))

(declare-fun m!3301195 () Bool)

(assert (=> b!2886192 m!3301195))

(assert (=> b!2886192 m!3301193))

(assert (=> b!2886192 m!3301195))

(declare-fun m!3301197 () Bool)

(assert (=> b!2886192 m!3301197))

(assert (=> b!2886189 m!3301161))

(assert (=> b!2886189 m!3301191))

(assert (=> b!2886196 m!3301161))

(assert (=> b!2886196 m!3301191))

(assert (=> b!2886186 m!3301161))

(assert (=> b!2886186 m!3301195))

(assert (=> b!2886186 m!3301195))

(declare-fun m!3301199 () Bool)

(assert (=> b!2886186 m!3301199))

(assert (=> bm!187218 m!3301161))

(assert (=> bm!187218 m!3301165))

(assert (=> b!2886195 m!3301161))

(assert (=> b!2886195 m!3301195))

(assert (=> b!2886195 m!3301195))

(assert (=> b!2886195 m!3301199))

(assert (=> b!2886198 m!3301159))

(declare-fun m!3301201 () Bool)

(assert (=> b!2886198 m!3301201))

(assert (=> d!833962 m!3301161))

(assert (=> d!833962 m!3301165))

(assert (=> d!833962 m!3301159))

(declare-fun m!3301203 () Bool)

(assert (=> d!833962 m!3301203))

(assert (=> b!2886053 d!833962))

(declare-fun b!2886233 () Bool)

(declare-fun e!1825163 () Regex!8813)

(assert (=> b!2886233 (= e!1825163 (ite (= (head!6374 (get!10428 lt!1020650)) (c!468998 r!23079)) EmptyExpr!8813 EmptyLang!8813))))

(declare-fun b!2886234 () Bool)

(declare-fun e!1825164 () Regex!8813)

(assert (=> b!2886234 (= e!1825164 e!1825163)))

(declare-fun c!469095 () Bool)

(assert (=> b!2886234 (= c!469095 ((_ is ElementMatch!8813) r!23079))))

(declare-fun b!2886235 () Bool)

(declare-fun e!1825166 () Regex!8813)

(declare-fun e!1825162 () Regex!8813)

(assert (=> b!2886235 (= e!1825166 e!1825162)))

(declare-fun c!469097 () Bool)

(assert (=> b!2886235 (= c!469097 ((_ is Star!8813) r!23079))))

(declare-fun b!2886236 () Bool)

(declare-fun call!187236 () Regex!8813)

(declare-fun call!187233 () Regex!8813)

(assert (=> b!2886236 (= e!1825166 (Union!8813 call!187236 call!187233))))

(declare-fun b!2886237 () Bool)

(declare-fun e!1825165 () Regex!8813)

(declare-fun call!187235 () Regex!8813)

(assert (=> b!2886237 (= e!1825165 (Union!8813 (Concat!14134 call!187235 (regTwo!18138 r!23079)) EmptyLang!8813))))

(declare-fun b!2886238 () Bool)

(assert (=> b!2886238 (= e!1825164 EmptyLang!8813)))

(declare-fun b!2886239 () Bool)

(declare-fun call!187234 () Regex!8813)

(assert (=> b!2886239 (= e!1825162 (Concat!14134 call!187234 r!23079))))

(declare-fun c!469096 () Bool)

(declare-fun bm!187228 () Bool)

(assert (=> bm!187228 (= call!187236 (derivativeStep!2345 (ite c!469096 (regOne!18139 r!23079) (ite c!469097 (reg!9142 r!23079) (regOne!18138 r!23079))) (head!6374 (get!10428 lt!1020650))))))

(declare-fun bm!187229 () Bool)

(assert (=> bm!187229 (= call!187233 (derivativeStep!2345 (ite c!469096 (regTwo!18139 r!23079) (regTwo!18138 r!23079)) (head!6374 (get!10428 lt!1020650))))))

(declare-fun bm!187230 () Bool)

(assert (=> bm!187230 (= call!187235 call!187234)))

(declare-fun b!2886240 () Bool)

(assert (=> b!2886240 (= e!1825165 (Union!8813 (Concat!14134 call!187235 (regTwo!18138 r!23079)) call!187233))))

(declare-fun b!2886241 () Bool)

(assert (=> b!2886241 (= c!469096 ((_ is Union!8813) r!23079))))

(assert (=> b!2886241 (= e!1825163 e!1825166)))

(declare-fun bm!187231 () Bool)

(assert (=> bm!187231 (= call!187234 call!187236)))

(declare-fun b!2886242 () Bool)

(declare-fun c!469094 () Bool)

(assert (=> b!2886242 (= c!469094 (nullable!2715 (regOne!18138 r!23079)))))

(assert (=> b!2886242 (= e!1825162 e!1825165)))

(declare-fun d!833964 () Bool)

(declare-fun lt!1020679 () Regex!8813)

(assert (=> d!833964 (validRegex!3586 lt!1020679)))

(assert (=> d!833964 (= lt!1020679 e!1825164)))

(declare-fun c!469093 () Bool)

(assert (=> d!833964 (= c!469093 (or ((_ is EmptyExpr!8813) r!23079) ((_ is EmptyLang!8813) r!23079)))))

(assert (=> d!833964 (validRegex!3586 r!23079)))

(assert (=> d!833964 (= (derivativeStep!2345 r!23079 (head!6374 (get!10428 lt!1020650))) lt!1020679)))

(assert (= (and d!833964 c!469093) b!2886238))

(assert (= (and d!833964 (not c!469093)) b!2886234))

(assert (= (and b!2886234 c!469095) b!2886233))

(assert (= (and b!2886234 (not c!469095)) b!2886241))

(assert (= (and b!2886241 c!469096) b!2886236))

(assert (= (and b!2886241 (not c!469096)) b!2886235))

(assert (= (and b!2886235 c!469097) b!2886239))

(assert (= (and b!2886235 (not c!469097)) b!2886242))

(assert (= (and b!2886242 c!469094) b!2886240))

(assert (= (and b!2886242 (not c!469094)) b!2886237))

(assert (= (or b!2886240 b!2886237) bm!187230))

(assert (= (or b!2886239 bm!187230) bm!187231))

(assert (= (or b!2886236 bm!187231) bm!187228))

(assert (= (or b!2886236 b!2886240) bm!187229))

(assert (=> bm!187228 m!3301157))

(declare-fun m!3301219 () Bool)

(assert (=> bm!187228 m!3301219))

(assert (=> bm!187229 m!3301157))

(declare-fun m!3301221 () Bool)

(assert (=> bm!187229 m!3301221))

(declare-fun m!3301223 () Bool)

(assert (=> b!2886242 m!3301223))

(declare-fun m!3301225 () Bool)

(assert (=> d!833964 m!3301225))

(assert (=> d!833964 m!3301133))

(assert (=> b!2886053 d!833964))

(declare-fun d!833970 () Bool)

(assert (=> d!833970 (= (head!6374 (get!10428 lt!1020650)) (h!39910 (get!10428 lt!1020650)))))

(assert (=> b!2886053 d!833970))

(declare-fun d!833972 () Bool)

(assert (=> d!833972 (= (tail!4599 (get!10428 lt!1020650)) (t!233657 (get!10428 lt!1020650)))))

(assert (=> b!2886053 d!833972))

(declare-fun d!833974 () Bool)

(assert (=> d!833974 (= (isEmpty!18782 (get!10428 lt!1020650)) ((_ is Nil!34490) (get!10428 lt!1020650)))))

(assert (=> d!833952 d!833974))

(assert (=> d!833952 d!833958))

(declare-fun b!2886273 () Bool)

(declare-fun res!1195586 () Bool)

(declare-fun e!1825181 () Bool)

(assert (=> b!2886273 (=> (not res!1195586) (not e!1825181))))

(declare-fun lt!1020684 () List!34614)

(declare-fun size!26340 (List!34614) Int)

(assert (=> b!2886273 (= res!1195586 (= (size!26340 lt!1020684) (+ (size!26340 (v!34611 lt!1020668)) (size!26340 (v!34611 lt!1020666)))))))

(declare-fun b!2886272 () Bool)

(declare-fun e!1825182 () List!34614)

(assert (=> b!2886272 (= e!1825182 (Cons!34490 (h!39910 (v!34611 lt!1020668)) (++!8212 (t!233657 (v!34611 lt!1020668)) (v!34611 lt!1020666))))))

(declare-fun b!2886271 () Bool)

(assert (=> b!2886271 (= e!1825182 (v!34611 lt!1020666))))

(declare-fun d!833976 () Bool)

(assert (=> d!833976 e!1825181))

(declare-fun res!1195587 () Bool)

(assert (=> d!833976 (=> (not res!1195587) (not e!1825181))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4721 (List!34614) (InoxSet C!17808))

(assert (=> d!833976 (= res!1195587 (= (content!4721 lt!1020684) ((_ map or) (content!4721 (v!34611 lt!1020668)) (content!4721 (v!34611 lt!1020666)))))))

(assert (=> d!833976 (= lt!1020684 e!1825182)))

(declare-fun c!469110 () Bool)

(assert (=> d!833976 (= c!469110 ((_ is Nil!34490) (v!34611 lt!1020668)))))

(assert (=> d!833976 (= (++!8212 (v!34611 lt!1020668) (v!34611 lt!1020666)) lt!1020684)))

(declare-fun b!2886274 () Bool)

(assert (=> b!2886274 (= e!1825181 (or (not (= (v!34611 lt!1020666) Nil!34490)) (= lt!1020684 (v!34611 lt!1020668))))))

(assert (= (and d!833976 c!469110) b!2886271))

(assert (= (and d!833976 (not c!469110)) b!2886272))

(assert (= (and d!833976 res!1195587) b!2886273))

(assert (= (and b!2886273 res!1195586) b!2886274))

(declare-fun m!3301227 () Bool)

(assert (=> b!2886273 m!3301227))

(declare-fun m!3301229 () Bool)

(assert (=> b!2886273 m!3301229))

(declare-fun m!3301231 () Bool)

(assert (=> b!2886273 m!3301231))

(declare-fun m!3301233 () Bool)

(assert (=> b!2886272 m!3301233))

(declare-fun m!3301235 () Bool)

(assert (=> d!833976 m!3301235))

(declare-fun m!3301237 () Bool)

(assert (=> d!833976 m!3301237))

(declare-fun m!3301239 () Bool)

(assert (=> d!833976 m!3301239))

(assert (=> b!2885972 d!833976))

(declare-fun b!2886275 () Bool)

(declare-fun res!1195592 () Bool)

(declare-fun e!1825189 () Bool)

(assert (=> b!2886275 (=> res!1195592 e!1825189)))

(assert (=> b!2886275 (= res!1195592 (not ((_ is Concat!14134) (ite c!469075 (regOne!18139 r!23079) (regOne!18138 r!23079)))))))

(declare-fun e!1825185 () Bool)

(assert (=> b!2886275 (= e!1825185 e!1825189)))

(declare-fun b!2886276 () Bool)

(declare-fun e!1825183 () Bool)

(assert (=> b!2886276 (= e!1825183 e!1825185)))

(declare-fun c!469111 () Bool)

(assert (=> b!2886276 (= c!469111 ((_ is Union!8813) (ite c!469075 (regOne!18139 r!23079) (regOne!18138 r!23079))))))

(declare-fun bm!187238 () Bool)

(declare-fun call!187244 () Bool)

(assert (=> bm!187238 (= call!187244 (validRegex!3586 (ite c!469111 (regOne!18139 (ite c!469075 (regOne!18139 r!23079) (regOne!18138 r!23079))) (regOne!18138 (ite c!469075 (regOne!18139 r!23079) (regOne!18138 r!23079))))))))

(declare-fun b!2886278 () Bool)

(declare-fun e!1825186 () Bool)

(assert (=> b!2886278 (= e!1825186 e!1825183)))

(declare-fun c!469112 () Bool)

(assert (=> b!2886278 (= c!469112 ((_ is Star!8813) (ite c!469075 (regOne!18139 r!23079) (regOne!18138 r!23079))))))

(declare-fun b!2886279 () Bool)

(declare-fun e!1825184 () Bool)

(assert (=> b!2886279 (= e!1825183 e!1825184)))

(declare-fun res!1195590 () Bool)

(assert (=> b!2886279 (= res!1195590 (not (nullable!2715 (reg!9142 (ite c!469075 (regOne!18139 r!23079) (regOne!18138 r!23079))))))))

(assert (=> b!2886279 (=> (not res!1195590) (not e!1825184))))

(declare-fun b!2886277 () Bool)

(declare-fun e!1825187 () Bool)

(assert (=> b!2886277 (= e!1825189 e!1825187)))

(declare-fun res!1195588 () Bool)

(assert (=> b!2886277 (=> (not res!1195588) (not e!1825187))))

(assert (=> b!2886277 (= res!1195588 call!187244)))

(declare-fun d!833978 () Bool)

(declare-fun res!1195591 () Bool)

(assert (=> d!833978 (=> res!1195591 e!1825186)))

(assert (=> d!833978 (= res!1195591 ((_ is ElementMatch!8813) (ite c!469075 (regOne!18139 r!23079) (regOne!18138 r!23079))))))

(assert (=> d!833978 (= (validRegex!3586 (ite c!469075 (regOne!18139 r!23079) (regOne!18138 r!23079))) e!1825186)))

(declare-fun b!2886280 () Bool)

(declare-fun res!1195589 () Bool)

(declare-fun e!1825188 () Bool)

(assert (=> b!2886280 (=> (not res!1195589) (not e!1825188))))

(assert (=> b!2886280 (= res!1195589 call!187244)))

(assert (=> b!2886280 (= e!1825185 e!1825188)))

(declare-fun b!2886281 () Bool)

(declare-fun call!187245 () Bool)

(assert (=> b!2886281 (= e!1825187 call!187245)))

(declare-fun bm!187239 () Bool)

(declare-fun call!187243 () Bool)

(assert (=> bm!187239 (= call!187245 call!187243)))

(declare-fun b!2886282 () Bool)

(assert (=> b!2886282 (= e!1825184 call!187243)))

(declare-fun bm!187240 () Bool)

(assert (=> bm!187240 (= call!187243 (validRegex!3586 (ite c!469112 (reg!9142 (ite c!469075 (regOne!18139 r!23079) (regOne!18138 r!23079))) (ite c!469111 (regTwo!18139 (ite c!469075 (regOne!18139 r!23079) (regOne!18138 r!23079))) (regTwo!18138 (ite c!469075 (regOne!18139 r!23079) (regOne!18138 r!23079)))))))))

(declare-fun b!2886283 () Bool)

(assert (=> b!2886283 (= e!1825188 call!187245)))

(assert (= (and d!833978 (not res!1195591)) b!2886278))

(assert (= (and b!2886278 c!469112) b!2886279))

(assert (= (and b!2886278 (not c!469112)) b!2886276))

(assert (= (and b!2886279 res!1195590) b!2886282))

(assert (= (and b!2886276 c!469111) b!2886280))

(assert (= (and b!2886276 (not c!469111)) b!2886275))

(assert (= (and b!2886280 res!1195589) b!2886283))

(assert (= (and b!2886275 (not res!1195592)) b!2886277))

(assert (= (and b!2886277 res!1195588) b!2886281))

(assert (= (or b!2886283 b!2886281) bm!187239))

(assert (= (or b!2886280 b!2886277) bm!187238))

(assert (= (or b!2886282 bm!187239) bm!187240))

(declare-fun m!3301241 () Bool)

(assert (=> bm!187238 m!3301241))

(declare-fun m!3301243 () Bool)

(assert (=> b!2886279 m!3301243))

(declare-fun m!3301245 () Bool)

(assert (=> bm!187240 m!3301245))

(assert (=> bm!187215 d!833978))

(assert (=> b!2886050 d!833970))

(declare-fun b!2886284 () Bool)

(declare-fun res!1195597 () Bool)

(declare-fun e!1825196 () Bool)

(assert (=> b!2886284 (=> res!1195597 e!1825196)))

(assert (=> b!2886284 (= res!1195597 (not ((_ is Concat!14134) (ite c!469076 (reg!9142 r!23079) (ite c!469075 (regTwo!18139 r!23079) (regTwo!18138 r!23079))))))))

(declare-fun e!1825192 () Bool)

(assert (=> b!2886284 (= e!1825192 e!1825196)))

(declare-fun b!2886285 () Bool)

(declare-fun e!1825190 () Bool)

(assert (=> b!2886285 (= e!1825190 e!1825192)))

(declare-fun c!469113 () Bool)

(assert (=> b!2886285 (= c!469113 ((_ is Union!8813) (ite c!469076 (reg!9142 r!23079) (ite c!469075 (regTwo!18139 r!23079) (regTwo!18138 r!23079)))))))

(declare-fun bm!187243 () Bool)

(declare-fun call!187249 () Bool)

(assert (=> bm!187243 (= call!187249 (validRegex!3586 (ite c!469113 (regOne!18139 (ite c!469076 (reg!9142 r!23079) (ite c!469075 (regTwo!18139 r!23079) (regTwo!18138 r!23079)))) (regOne!18138 (ite c!469076 (reg!9142 r!23079) (ite c!469075 (regTwo!18139 r!23079) (regTwo!18138 r!23079)))))))))

(declare-fun b!2886287 () Bool)

(declare-fun e!1825193 () Bool)

(assert (=> b!2886287 (= e!1825193 e!1825190)))

(declare-fun c!469114 () Bool)

(assert (=> b!2886287 (= c!469114 ((_ is Star!8813) (ite c!469076 (reg!9142 r!23079) (ite c!469075 (regTwo!18139 r!23079) (regTwo!18138 r!23079)))))))

(declare-fun b!2886288 () Bool)

(declare-fun e!1825191 () Bool)

(assert (=> b!2886288 (= e!1825190 e!1825191)))

(declare-fun res!1195595 () Bool)

(assert (=> b!2886288 (= res!1195595 (not (nullable!2715 (reg!9142 (ite c!469076 (reg!9142 r!23079) (ite c!469075 (regTwo!18139 r!23079) (regTwo!18138 r!23079)))))))))

(assert (=> b!2886288 (=> (not res!1195595) (not e!1825191))))

(declare-fun b!2886286 () Bool)

(declare-fun e!1825194 () Bool)

(assert (=> b!2886286 (= e!1825196 e!1825194)))

(declare-fun res!1195593 () Bool)

(assert (=> b!2886286 (=> (not res!1195593) (not e!1825194))))

(assert (=> b!2886286 (= res!1195593 call!187249)))

(declare-fun d!833980 () Bool)

(declare-fun res!1195596 () Bool)

(assert (=> d!833980 (=> res!1195596 e!1825193)))

(assert (=> d!833980 (= res!1195596 ((_ is ElementMatch!8813) (ite c!469076 (reg!9142 r!23079) (ite c!469075 (regTwo!18139 r!23079) (regTwo!18138 r!23079)))))))

(assert (=> d!833980 (= (validRegex!3586 (ite c!469076 (reg!9142 r!23079) (ite c!469075 (regTwo!18139 r!23079) (regTwo!18138 r!23079)))) e!1825193)))

(declare-fun b!2886289 () Bool)

(declare-fun res!1195594 () Bool)

(declare-fun e!1825195 () Bool)

(assert (=> b!2886289 (=> (not res!1195594) (not e!1825195))))

(assert (=> b!2886289 (= res!1195594 call!187249)))

(assert (=> b!2886289 (= e!1825192 e!1825195)))

(declare-fun b!2886290 () Bool)

(declare-fun call!187250 () Bool)

(assert (=> b!2886290 (= e!1825194 call!187250)))

(declare-fun bm!187244 () Bool)

(declare-fun call!187248 () Bool)

(assert (=> bm!187244 (= call!187250 call!187248)))

(declare-fun b!2886291 () Bool)

(assert (=> b!2886291 (= e!1825191 call!187248)))

(declare-fun bm!187245 () Bool)

(assert (=> bm!187245 (= call!187248 (validRegex!3586 (ite c!469114 (reg!9142 (ite c!469076 (reg!9142 r!23079) (ite c!469075 (regTwo!18139 r!23079) (regTwo!18138 r!23079)))) (ite c!469113 (regTwo!18139 (ite c!469076 (reg!9142 r!23079) (ite c!469075 (regTwo!18139 r!23079) (regTwo!18138 r!23079)))) (regTwo!18138 (ite c!469076 (reg!9142 r!23079) (ite c!469075 (regTwo!18139 r!23079) (regTwo!18138 r!23079))))))))))

(declare-fun b!2886292 () Bool)

(assert (=> b!2886292 (= e!1825195 call!187250)))

(assert (= (and d!833980 (not res!1195596)) b!2886287))

(assert (= (and b!2886287 c!469114) b!2886288))

(assert (= (and b!2886287 (not c!469114)) b!2886285))

(assert (= (and b!2886288 res!1195595) b!2886291))

(assert (= (and b!2886285 c!469113) b!2886289))

(assert (= (and b!2886285 (not c!469113)) b!2886284))

(assert (= (and b!2886289 res!1195594) b!2886292))

(assert (= (and b!2886284 (not res!1195597)) b!2886286))

(assert (= (and b!2886286 res!1195593) b!2886290))

(assert (= (or b!2886292 b!2886290) bm!187244))

(assert (= (or b!2886289 b!2886286) bm!187243))

(assert (= (or b!2886291 bm!187244) bm!187245))

(declare-fun m!3301247 () Bool)

(assert (=> bm!187243 m!3301247))

(declare-fun m!3301249 () Bool)

(assert (=> b!2886288 m!3301249))

(declare-fun m!3301251 () Bool)

(assert (=> bm!187245 m!3301251))

(assert (=> bm!187217 d!833980))

(assert (=> b!2886057 d!833970))

(declare-fun d!833982 () Bool)

(assert (=> d!833982 (= (isEmpty!18782 (tail!4599 (get!10428 lt!1020650))) ((_ is Nil!34490) (tail!4599 (get!10428 lt!1020650))))))

(assert (=> b!2886047 d!833982))

(assert (=> b!2886047 d!833972))

(declare-fun d!833984 () Bool)

(declare-fun nullableFct!830 (Regex!8813) Bool)

(assert (=> d!833984 (= (nullable!2715 (reg!9142 r!23079)) (nullableFct!830 (reg!9142 r!23079)))))

(declare-fun bs!523825 () Bool)

(assert (= bs!523825 d!833984))

(declare-fun m!3301253 () Bool)

(assert (=> bs!523825 m!3301253))

(assert (=> b!2886142 d!833984))

(declare-fun d!833986 () Bool)

(assert (=> d!833986 (= (isEmpty!18781 lt!1020650) (not ((_ is Some!6485) lt!1020650)))))

(assert (=> d!833944 d!833986))

(declare-fun b!2886293 () Bool)

(declare-fun e!1825203 () Option!6486)

(assert (=> b!2886293 (= e!1825203 (Some!6485 (Cons!34490 (c!468998 (ite c!469044 (regTwo!18139 r!23079) (regOne!18138 r!23079))) Nil!34490)))))

(declare-fun b!2886294 () Bool)

(declare-fun e!1825202 () Option!6486)

(declare-fun lt!1020687 () Option!6486)

(declare-fun lt!1020685 () Option!6486)

(assert (=> b!2886294 (= e!1825202 (Some!6485 (++!8212 (v!34611 lt!1020687) (v!34611 lt!1020685))))))

(declare-fun b!2886295 () Bool)

(declare-fun c!469118 () Bool)

(assert (=> b!2886295 (= c!469118 ((_ is ElementMatch!8813) (ite c!469044 (regTwo!18139 r!23079) (regOne!18138 r!23079))))))

(declare-fun e!1825204 () Option!6486)

(assert (=> b!2886295 (= e!1825204 e!1825203)))

(declare-fun b!2886296 () Bool)

(declare-fun e!1825200 () Option!6486)

(declare-fun e!1825198 () Option!6486)

(assert (=> b!2886296 (= e!1825200 e!1825198)))

(declare-fun lt!1020686 () Option!6486)

(declare-fun call!187251 () Option!6486)

(assert (=> b!2886296 (= lt!1020686 call!187251)))

(declare-fun c!469119 () Bool)

(assert (=> b!2886296 (= c!469119 ((_ is Some!6485) lt!1020686))))

(declare-fun b!2886297 () Bool)

(declare-fun e!1825199 () Option!6486)

(assert (=> b!2886297 (= e!1825203 e!1825199)))

(declare-fun c!469122 () Bool)

(assert (=> b!2886297 (= c!469122 ((_ is Star!8813) (ite c!469044 (regTwo!18139 r!23079) (regOne!18138 r!23079))))))

(declare-fun bm!187246 () Bool)

(declare-fun c!469120 () Bool)

(assert (=> bm!187246 (= call!187251 (getLanguageWitness!520 (ite c!469120 (regOne!18139 (ite c!469044 (regTwo!18139 r!23079) (regOne!18138 r!23079))) (regTwo!18138 (ite c!469044 (regTwo!18139 r!23079) (regOne!18138 r!23079))))))))

(declare-fun b!2886298 () Bool)

(assert (=> b!2886298 (= e!1825202 None!6485)))

(declare-fun b!2886299 () Bool)

(assert (=> b!2886299 (= e!1825204 None!6485)))

(declare-fun b!2886300 () Bool)

(declare-fun call!187252 () Option!6486)

(assert (=> b!2886300 (= e!1825198 call!187252)))

(declare-fun b!2886301 () Bool)

(declare-fun e!1825197 () Option!6486)

(assert (=> b!2886301 (= e!1825197 None!6485)))

(declare-fun b!2886302 () Bool)

(declare-fun e!1825201 () Option!6486)

(assert (=> b!2886302 (= e!1825201 (Some!6485 Nil!34490))))

(declare-fun b!2886303 () Bool)

(assert (=> b!2886303 (= e!1825199 (Some!6485 Nil!34490))))

(declare-fun d!833988 () Bool)

(declare-fun c!469117 () Bool)

(assert (=> d!833988 (= c!469117 ((_ is EmptyExpr!8813) (ite c!469044 (regTwo!18139 r!23079) (regOne!18138 r!23079))))))

(assert (=> d!833988 (= (getLanguageWitness!520 (ite c!469044 (regTwo!18139 r!23079) (regOne!18138 r!23079))) e!1825201)))

(declare-fun b!2886304 () Bool)

(assert (=> b!2886304 (= c!469120 ((_ is Union!8813) (ite c!469044 (regTwo!18139 r!23079) (regOne!18138 r!23079))))))

(assert (=> b!2886304 (= e!1825199 e!1825200)))

(declare-fun b!2886305 () Bool)

(assert (=> b!2886305 (= e!1825198 lt!1020686)))

(declare-fun b!2886306 () Bool)

(declare-fun c!469121 () Bool)

(assert (=> b!2886306 (= c!469121 ((_ is Some!6485) lt!1020685))))

(assert (=> b!2886306 (= lt!1020685 call!187251)))

(assert (=> b!2886306 (= e!1825197 e!1825202)))

(declare-fun b!2886307 () Bool)

(assert (=> b!2886307 (= e!1825200 e!1825197)))

(assert (=> b!2886307 (= lt!1020687 call!187252)))

(declare-fun c!469115 () Bool)

(assert (=> b!2886307 (= c!469115 ((_ is Some!6485) lt!1020687))))

(declare-fun b!2886308 () Bool)

(assert (=> b!2886308 (= e!1825201 e!1825204)))

(declare-fun c!469116 () Bool)

(assert (=> b!2886308 (= c!469116 ((_ is EmptyLang!8813) (ite c!469044 (regTwo!18139 r!23079) (regOne!18138 r!23079))))))

(declare-fun bm!187247 () Bool)

(assert (=> bm!187247 (= call!187252 (getLanguageWitness!520 (ite c!469120 (regTwo!18139 (ite c!469044 (regTwo!18139 r!23079) (regOne!18138 r!23079))) (regOne!18138 (ite c!469044 (regTwo!18139 r!23079) (regOne!18138 r!23079))))))))

(assert (= (and d!833988 c!469117) b!2886302))

(assert (= (and d!833988 (not c!469117)) b!2886308))

(assert (= (and b!2886308 c!469116) b!2886299))

(assert (= (and b!2886308 (not c!469116)) b!2886295))

(assert (= (and b!2886295 c!469118) b!2886293))

(assert (= (and b!2886295 (not c!469118)) b!2886297))

(assert (= (and b!2886297 c!469122) b!2886303))

(assert (= (and b!2886297 (not c!469122)) b!2886304))

(assert (= (and b!2886304 c!469120) b!2886296))

(assert (= (and b!2886304 (not c!469120)) b!2886307))

(assert (= (and b!2886296 c!469119) b!2886305))

(assert (= (and b!2886296 (not c!469119)) b!2886300))

(assert (= (and b!2886307 c!469115) b!2886306))

(assert (= (and b!2886307 (not c!469115)) b!2886301))

(assert (= (and b!2886306 c!469121) b!2886294))

(assert (= (and b!2886306 (not c!469121)) b!2886298))

(assert (= (or b!2886300 b!2886307) bm!187247))

(assert (= (or b!2886296 b!2886306) bm!187246))

(declare-fun m!3301255 () Bool)

(assert (=> b!2886294 m!3301255))

(declare-fun m!3301257 () Bool)

(assert (=> bm!187246 m!3301257))

(declare-fun m!3301259 () Bool)

(assert (=> bm!187247 m!3301259))

(assert (=> bm!187193 d!833988))

(declare-fun d!833990 () Bool)

(assert (=> d!833990 (= (nullable!2715 r!23079) (nullableFct!830 r!23079))))

(declare-fun bs!523826 () Bool)

(assert (= bs!523826 d!833990))

(declare-fun m!3301261 () Bool)

(assert (=> bs!523826 m!3301261))

(assert (=> b!2886059 d!833990))

(declare-fun b!2886309 () Bool)

(declare-fun e!1825211 () Option!6486)

(assert (=> b!2886309 (= e!1825211 (Some!6485 (Cons!34490 (c!468998 (ite c!469044 (regOne!18139 r!23079) (regTwo!18138 r!23079))) Nil!34490)))))

(declare-fun b!2886310 () Bool)

(declare-fun e!1825210 () Option!6486)

(declare-fun lt!1020690 () Option!6486)

(declare-fun lt!1020688 () Option!6486)

(assert (=> b!2886310 (= e!1825210 (Some!6485 (++!8212 (v!34611 lt!1020690) (v!34611 lt!1020688))))))

(declare-fun b!2886311 () Bool)

(declare-fun c!469126 () Bool)

(assert (=> b!2886311 (= c!469126 ((_ is ElementMatch!8813) (ite c!469044 (regOne!18139 r!23079) (regTwo!18138 r!23079))))))

(declare-fun e!1825212 () Option!6486)

(assert (=> b!2886311 (= e!1825212 e!1825211)))

(declare-fun b!2886312 () Bool)

(declare-fun e!1825208 () Option!6486)

(declare-fun e!1825206 () Option!6486)

(assert (=> b!2886312 (= e!1825208 e!1825206)))

(declare-fun lt!1020689 () Option!6486)

(declare-fun call!187253 () Option!6486)

(assert (=> b!2886312 (= lt!1020689 call!187253)))

(declare-fun c!469127 () Bool)

(assert (=> b!2886312 (= c!469127 ((_ is Some!6485) lt!1020689))))

(declare-fun b!2886313 () Bool)

(declare-fun e!1825207 () Option!6486)

(assert (=> b!2886313 (= e!1825211 e!1825207)))

(declare-fun c!469130 () Bool)

(assert (=> b!2886313 (= c!469130 ((_ is Star!8813) (ite c!469044 (regOne!18139 r!23079) (regTwo!18138 r!23079))))))

(declare-fun c!469128 () Bool)

(declare-fun bm!187248 () Bool)

(assert (=> bm!187248 (= call!187253 (getLanguageWitness!520 (ite c!469128 (regOne!18139 (ite c!469044 (regOne!18139 r!23079) (regTwo!18138 r!23079))) (regTwo!18138 (ite c!469044 (regOne!18139 r!23079) (regTwo!18138 r!23079))))))))

(declare-fun b!2886314 () Bool)

(assert (=> b!2886314 (= e!1825210 None!6485)))

(declare-fun b!2886315 () Bool)

(assert (=> b!2886315 (= e!1825212 None!6485)))

(declare-fun b!2886316 () Bool)

(declare-fun call!187254 () Option!6486)

(assert (=> b!2886316 (= e!1825206 call!187254)))

(declare-fun b!2886317 () Bool)

(declare-fun e!1825205 () Option!6486)

(assert (=> b!2886317 (= e!1825205 None!6485)))

(declare-fun b!2886318 () Bool)

(declare-fun e!1825209 () Option!6486)

(assert (=> b!2886318 (= e!1825209 (Some!6485 Nil!34490))))

(declare-fun b!2886319 () Bool)

(assert (=> b!2886319 (= e!1825207 (Some!6485 Nil!34490))))

(declare-fun d!833992 () Bool)

(declare-fun c!469125 () Bool)

(assert (=> d!833992 (= c!469125 ((_ is EmptyExpr!8813) (ite c!469044 (regOne!18139 r!23079) (regTwo!18138 r!23079))))))

(assert (=> d!833992 (= (getLanguageWitness!520 (ite c!469044 (regOne!18139 r!23079) (regTwo!18138 r!23079))) e!1825209)))

(declare-fun b!2886320 () Bool)

(assert (=> b!2886320 (= c!469128 ((_ is Union!8813) (ite c!469044 (regOne!18139 r!23079) (regTwo!18138 r!23079))))))

(assert (=> b!2886320 (= e!1825207 e!1825208)))

(declare-fun b!2886321 () Bool)

(assert (=> b!2886321 (= e!1825206 lt!1020689)))

(declare-fun b!2886322 () Bool)

(declare-fun c!469129 () Bool)

(assert (=> b!2886322 (= c!469129 ((_ is Some!6485) lt!1020688))))

(assert (=> b!2886322 (= lt!1020688 call!187253)))

(assert (=> b!2886322 (= e!1825205 e!1825210)))

(declare-fun b!2886323 () Bool)

(assert (=> b!2886323 (= e!1825208 e!1825205)))

(assert (=> b!2886323 (= lt!1020690 call!187254)))

(declare-fun c!469123 () Bool)

(assert (=> b!2886323 (= c!469123 ((_ is Some!6485) lt!1020690))))

(declare-fun b!2886324 () Bool)

(assert (=> b!2886324 (= e!1825209 e!1825212)))

(declare-fun c!469124 () Bool)

(assert (=> b!2886324 (= c!469124 ((_ is EmptyLang!8813) (ite c!469044 (regOne!18139 r!23079) (regTwo!18138 r!23079))))))

(declare-fun bm!187249 () Bool)

(assert (=> bm!187249 (= call!187254 (getLanguageWitness!520 (ite c!469128 (regTwo!18139 (ite c!469044 (regOne!18139 r!23079) (regTwo!18138 r!23079))) (regOne!18138 (ite c!469044 (regOne!18139 r!23079) (regTwo!18138 r!23079))))))))

(assert (= (and d!833992 c!469125) b!2886318))

(assert (= (and d!833992 (not c!469125)) b!2886324))

(assert (= (and b!2886324 c!469124) b!2886315))

(assert (= (and b!2886324 (not c!469124)) b!2886311))

(assert (= (and b!2886311 c!469126) b!2886309))

(assert (= (and b!2886311 (not c!469126)) b!2886313))

(assert (= (and b!2886313 c!469130) b!2886319))

(assert (= (and b!2886313 (not c!469130)) b!2886320))

(assert (= (and b!2886320 c!469128) b!2886312))

(assert (= (and b!2886320 (not c!469128)) b!2886323))

(assert (= (and b!2886312 c!469127) b!2886321))

(assert (= (and b!2886312 (not c!469127)) b!2886316))

(assert (= (and b!2886323 c!469123) b!2886322))

(assert (= (and b!2886323 (not c!469123)) b!2886317))

(assert (= (and b!2886322 c!469129) b!2886310))

(assert (= (and b!2886322 (not c!469129)) b!2886314))

(assert (= (or b!2886316 b!2886323) bm!187249))

(assert (= (or b!2886312 b!2886322) bm!187248))

(declare-fun m!3301263 () Bool)

(assert (=> b!2886310 m!3301263))

(declare-fun m!3301265 () Bool)

(assert (=> bm!187248 m!3301265))

(declare-fun m!3301267 () Bool)

(assert (=> bm!187249 m!3301267))

(assert (=> bm!187192 d!833992))

(assert (=> bm!187205 d!833974))

(assert (=> b!2886056 d!833982))

(assert (=> b!2886056 d!833972))

(declare-fun b!2886327 () Bool)

(declare-fun e!1825213 () Bool)

(declare-fun tp!925572 () Bool)

(assert (=> b!2886327 (= e!1825213 tp!925572)))

(declare-fun b!2886326 () Bool)

(declare-fun tp!925573 () Bool)

(declare-fun tp!925570 () Bool)

(assert (=> b!2886326 (= e!1825213 (and tp!925573 tp!925570))))

(declare-fun b!2886325 () Bool)

(assert (=> b!2886325 (= e!1825213 tp_is_empty!15213)))

(declare-fun b!2886328 () Bool)

(declare-fun tp!925571 () Bool)

(declare-fun tp!925574 () Bool)

(assert (=> b!2886328 (= e!1825213 (and tp!925571 tp!925574))))

(assert (=> b!2886176 (= tp!925556 e!1825213)))

(assert (= (and b!2886176 ((_ is ElementMatch!8813) (regOne!18139 (reg!9142 r!23079)))) b!2886325))

(assert (= (and b!2886176 ((_ is Concat!14134) (regOne!18139 (reg!9142 r!23079)))) b!2886326))

(assert (= (and b!2886176 ((_ is Star!8813) (regOne!18139 (reg!9142 r!23079)))) b!2886327))

(assert (= (and b!2886176 ((_ is Union!8813) (regOne!18139 (reg!9142 r!23079)))) b!2886328))

(declare-fun b!2886331 () Bool)

(declare-fun e!1825214 () Bool)

(declare-fun tp!925577 () Bool)

(assert (=> b!2886331 (= e!1825214 tp!925577)))

(declare-fun b!2886330 () Bool)

(declare-fun tp!925578 () Bool)

(declare-fun tp!925575 () Bool)

(assert (=> b!2886330 (= e!1825214 (and tp!925578 tp!925575))))

(declare-fun b!2886329 () Bool)

(assert (=> b!2886329 (= e!1825214 tp_is_empty!15213)))

(declare-fun b!2886332 () Bool)

(declare-fun tp!925576 () Bool)

(declare-fun tp!925579 () Bool)

(assert (=> b!2886332 (= e!1825214 (and tp!925576 tp!925579))))

(assert (=> b!2886176 (= tp!925559 e!1825214)))

(assert (= (and b!2886176 ((_ is ElementMatch!8813) (regTwo!18139 (reg!9142 r!23079)))) b!2886329))

(assert (= (and b!2886176 ((_ is Concat!14134) (regTwo!18139 (reg!9142 r!23079)))) b!2886330))

(assert (= (and b!2886176 ((_ is Star!8813) (regTwo!18139 (reg!9142 r!23079)))) b!2886331))

(assert (= (and b!2886176 ((_ is Union!8813) (regTwo!18139 (reg!9142 r!23079)))) b!2886332))

(declare-fun b!2886335 () Bool)

(declare-fun e!1825215 () Bool)

(declare-fun tp!925582 () Bool)

(assert (=> b!2886335 (= e!1825215 tp!925582)))

(declare-fun b!2886334 () Bool)

(declare-fun tp!925583 () Bool)

(declare-fun tp!925580 () Bool)

(assert (=> b!2886334 (= e!1825215 (and tp!925583 tp!925580))))

(declare-fun b!2886333 () Bool)

(assert (=> b!2886333 (= e!1825215 tp_is_empty!15213)))

(declare-fun b!2886336 () Bool)

(declare-fun tp!925581 () Bool)

(declare-fun tp!925584 () Bool)

(assert (=> b!2886336 (= e!1825215 (and tp!925581 tp!925584))))

(assert (=> b!2886171 (= tp!925552 e!1825215)))

(assert (= (and b!2886171 ((_ is ElementMatch!8813) (reg!9142 (regTwo!18138 r!23079)))) b!2886333))

(assert (= (and b!2886171 ((_ is Concat!14134) (reg!9142 (regTwo!18138 r!23079)))) b!2886334))

(assert (= (and b!2886171 ((_ is Star!8813) (reg!9142 (regTwo!18138 r!23079)))) b!2886335))

(assert (= (and b!2886171 ((_ is Union!8813) (reg!9142 (regTwo!18138 r!23079)))) b!2886336))

(declare-fun b!2886339 () Bool)

(declare-fun e!1825216 () Bool)

(declare-fun tp!925587 () Bool)

(assert (=> b!2886339 (= e!1825216 tp!925587)))

(declare-fun b!2886338 () Bool)

(declare-fun tp!925588 () Bool)

(declare-fun tp!925585 () Bool)

(assert (=> b!2886338 (= e!1825216 (and tp!925588 tp!925585))))

(declare-fun b!2886337 () Bool)

(assert (=> b!2886337 (= e!1825216 tp_is_empty!15213)))

(declare-fun b!2886340 () Bool)

(declare-fun tp!925586 () Bool)

(declare-fun tp!925589 () Bool)

(assert (=> b!2886340 (= e!1825216 (and tp!925586 tp!925589))))

(assert (=> b!2886180 (= tp!925561 e!1825216)))

(assert (= (and b!2886180 ((_ is ElementMatch!8813) (regOne!18139 (regOne!18139 r!23079)))) b!2886337))

(assert (= (and b!2886180 ((_ is Concat!14134) (regOne!18139 (regOne!18139 r!23079)))) b!2886338))

(assert (= (and b!2886180 ((_ is Star!8813) (regOne!18139 (regOne!18139 r!23079)))) b!2886339))

(assert (= (and b!2886180 ((_ is Union!8813) (regOne!18139 (regOne!18139 r!23079)))) b!2886340))

(declare-fun b!2886347 () Bool)

(declare-fun e!1825220 () Bool)

(declare-fun tp!925592 () Bool)

(assert (=> b!2886347 (= e!1825220 tp!925592)))

(declare-fun b!2886345 () Bool)

(declare-fun tp!925593 () Bool)

(declare-fun tp!925590 () Bool)

(assert (=> b!2886345 (= e!1825220 (and tp!925593 tp!925590))))

(declare-fun b!2886344 () Bool)

(assert (=> b!2886344 (= e!1825220 tp_is_empty!15213)))

(declare-fun b!2886349 () Bool)

(declare-fun tp!925591 () Bool)

(declare-fun tp!925594 () Bool)

(assert (=> b!2886349 (= e!1825220 (and tp!925591 tp!925594))))

(assert (=> b!2886180 (= tp!925564 e!1825220)))

(assert (= (and b!2886180 ((_ is ElementMatch!8813) (regTwo!18139 (regOne!18139 r!23079)))) b!2886344))

(assert (= (and b!2886180 ((_ is Concat!14134) (regTwo!18139 (regOne!18139 r!23079)))) b!2886345))

(assert (= (and b!2886180 ((_ is Star!8813) (regTwo!18139 (regOne!18139 r!23079)))) b!2886347))

(assert (= (and b!2886180 ((_ is Union!8813) (regTwo!18139 (regOne!18139 r!23079)))) b!2886349))

(declare-fun b!2886357 () Bool)

(declare-fun e!1825223 () Bool)

(declare-fun tp!925597 () Bool)

(assert (=> b!2886357 (= e!1825223 tp!925597)))

(declare-fun b!2886356 () Bool)

(declare-fun tp!925598 () Bool)

(declare-fun tp!925595 () Bool)

(assert (=> b!2886356 (= e!1825223 (and tp!925598 tp!925595))))

(declare-fun b!2886355 () Bool)

(assert (=> b!2886355 (= e!1825223 tp_is_empty!15213)))

(declare-fun b!2886358 () Bool)

(declare-fun tp!925596 () Bool)

(declare-fun tp!925599 () Bool)

(assert (=> b!2886358 (= e!1825223 (and tp!925596 tp!925599))))

(assert (=> b!2886166 (= tp!925548 e!1825223)))

(assert (= (and b!2886166 ((_ is ElementMatch!8813) (regOne!18138 (regOne!18138 r!23079)))) b!2886355))

(assert (= (and b!2886166 ((_ is Concat!14134) (regOne!18138 (regOne!18138 r!23079)))) b!2886356))

(assert (= (and b!2886166 ((_ is Star!8813) (regOne!18138 (regOne!18138 r!23079)))) b!2886357))

(assert (= (and b!2886166 ((_ is Union!8813) (regOne!18138 (regOne!18138 r!23079)))) b!2886358))

(declare-fun b!2886361 () Bool)

(declare-fun e!1825224 () Bool)

(declare-fun tp!925602 () Bool)

(assert (=> b!2886361 (= e!1825224 tp!925602)))

(declare-fun b!2886360 () Bool)

(declare-fun tp!925603 () Bool)

(declare-fun tp!925600 () Bool)

(assert (=> b!2886360 (= e!1825224 (and tp!925603 tp!925600))))

(declare-fun b!2886359 () Bool)

(assert (=> b!2886359 (= e!1825224 tp_is_empty!15213)))

(declare-fun b!2886362 () Bool)

(declare-fun tp!925601 () Bool)

(declare-fun tp!925604 () Bool)

(assert (=> b!2886362 (= e!1825224 (and tp!925601 tp!925604))))

(assert (=> b!2886166 (= tp!925545 e!1825224)))

(assert (= (and b!2886166 ((_ is ElementMatch!8813) (regTwo!18138 (regOne!18138 r!23079)))) b!2886359))

(assert (= (and b!2886166 ((_ is Concat!14134) (regTwo!18138 (regOne!18138 r!23079)))) b!2886360))

(assert (= (and b!2886166 ((_ is Star!8813) (regTwo!18138 (regOne!18138 r!23079)))) b!2886361))

(assert (= (and b!2886166 ((_ is Union!8813) (regTwo!18138 (regOne!18138 r!23079)))) b!2886362))

(declare-fun b!2886365 () Bool)

(declare-fun e!1825225 () Bool)

(declare-fun tp!925607 () Bool)

(assert (=> b!2886365 (= e!1825225 tp!925607)))

(declare-fun b!2886364 () Bool)

(declare-fun tp!925608 () Bool)

(declare-fun tp!925605 () Bool)

(assert (=> b!2886364 (= e!1825225 (and tp!925608 tp!925605))))

(declare-fun b!2886363 () Bool)

(assert (=> b!2886363 (= e!1825225 tp_is_empty!15213)))

(declare-fun b!2886366 () Bool)

(declare-fun tp!925606 () Bool)

(declare-fun tp!925609 () Bool)

(assert (=> b!2886366 (= e!1825225 (and tp!925606 tp!925609))))

(assert (=> b!2886175 (= tp!925557 e!1825225)))

(assert (= (and b!2886175 ((_ is ElementMatch!8813) (reg!9142 (reg!9142 r!23079)))) b!2886363))

(assert (= (and b!2886175 ((_ is Concat!14134) (reg!9142 (reg!9142 r!23079)))) b!2886364))

(assert (= (and b!2886175 ((_ is Star!8813) (reg!9142 (reg!9142 r!23079)))) b!2886365))

(assert (= (and b!2886175 ((_ is Union!8813) (reg!9142 (reg!9142 r!23079)))) b!2886366))

(declare-fun b!2886369 () Bool)

(declare-fun e!1825226 () Bool)

(declare-fun tp!925612 () Bool)

(assert (=> b!2886369 (= e!1825226 tp!925612)))

(declare-fun b!2886368 () Bool)

(declare-fun tp!925613 () Bool)

(declare-fun tp!925610 () Bool)

(assert (=> b!2886368 (= e!1825226 (and tp!925613 tp!925610))))

(declare-fun b!2886367 () Bool)

(assert (=> b!2886367 (= e!1825226 tp_is_empty!15213)))

(declare-fun b!2886370 () Bool)

(declare-fun tp!925611 () Bool)

(declare-fun tp!925614 () Bool)

(assert (=> b!2886370 (= e!1825226 (and tp!925611 tp!925614))))

(assert (=> b!2886168 (= tp!925546 e!1825226)))

(assert (= (and b!2886168 ((_ is ElementMatch!8813) (regOne!18139 (regOne!18138 r!23079)))) b!2886367))

(assert (= (and b!2886168 ((_ is Concat!14134) (regOne!18139 (regOne!18138 r!23079)))) b!2886368))

(assert (= (and b!2886168 ((_ is Star!8813) (regOne!18139 (regOne!18138 r!23079)))) b!2886369))

(assert (= (and b!2886168 ((_ is Union!8813) (regOne!18139 (regOne!18138 r!23079)))) b!2886370))

(declare-fun b!2886373 () Bool)

(declare-fun e!1825227 () Bool)

(declare-fun tp!925617 () Bool)

(assert (=> b!2886373 (= e!1825227 tp!925617)))

(declare-fun b!2886372 () Bool)

(declare-fun tp!925618 () Bool)

(declare-fun tp!925615 () Bool)

(assert (=> b!2886372 (= e!1825227 (and tp!925618 tp!925615))))

(declare-fun b!2886371 () Bool)

(assert (=> b!2886371 (= e!1825227 tp_is_empty!15213)))

(declare-fun b!2886374 () Bool)

(declare-fun tp!925616 () Bool)

(declare-fun tp!925619 () Bool)

(assert (=> b!2886374 (= e!1825227 (and tp!925616 tp!925619))))

(assert (=> b!2886168 (= tp!925549 e!1825227)))

(assert (= (and b!2886168 ((_ is ElementMatch!8813) (regTwo!18139 (regOne!18138 r!23079)))) b!2886371))

(assert (= (and b!2886168 ((_ is Concat!14134) (regTwo!18139 (regOne!18138 r!23079)))) b!2886372))

(assert (= (and b!2886168 ((_ is Star!8813) (regTwo!18139 (regOne!18138 r!23079)))) b!2886373))

(assert (= (and b!2886168 ((_ is Union!8813) (regTwo!18139 (regOne!18138 r!23079)))) b!2886374))

(declare-fun b!2886377 () Bool)

(declare-fun e!1825228 () Bool)

(declare-fun tp!925622 () Bool)

(assert (=> b!2886377 (= e!1825228 tp!925622)))

(declare-fun b!2886376 () Bool)

(declare-fun tp!925623 () Bool)

(declare-fun tp!925620 () Bool)

(assert (=> b!2886376 (= e!1825228 (and tp!925623 tp!925620))))

(declare-fun b!2886375 () Bool)

(assert (=> b!2886375 (= e!1825228 tp_is_empty!15213)))

(declare-fun b!2886378 () Bool)

(declare-fun tp!925621 () Bool)

(declare-fun tp!925624 () Bool)

(assert (=> b!2886378 (= e!1825228 (and tp!925621 tp!925624))))

(assert (=> b!2886172 (= tp!925551 e!1825228)))

(assert (= (and b!2886172 ((_ is ElementMatch!8813) (regOne!18139 (regTwo!18138 r!23079)))) b!2886375))

(assert (= (and b!2886172 ((_ is Concat!14134) (regOne!18139 (regTwo!18138 r!23079)))) b!2886376))

(assert (= (and b!2886172 ((_ is Star!8813) (regOne!18139 (regTwo!18138 r!23079)))) b!2886377))

(assert (= (and b!2886172 ((_ is Union!8813) (regOne!18139 (regTwo!18138 r!23079)))) b!2886378))

(declare-fun b!2886381 () Bool)

(declare-fun e!1825229 () Bool)

(declare-fun tp!925627 () Bool)

(assert (=> b!2886381 (= e!1825229 tp!925627)))

(declare-fun b!2886380 () Bool)

(declare-fun tp!925628 () Bool)

(declare-fun tp!925625 () Bool)

(assert (=> b!2886380 (= e!1825229 (and tp!925628 tp!925625))))

(declare-fun b!2886379 () Bool)

(assert (=> b!2886379 (= e!1825229 tp_is_empty!15213)))

(declare-fun b!2886382 () Bool)

(declare-fun tp!925626 () Bool)

(declare-fun tp!925629 () Bool)

(assert (=> b!2886382 (= e!1825229 (and tp!925626 tp!925629))))

(assert (=> b!2886172 (= tp!925554 e!1825229)))

(assert (= (and b!2886172 ((_ is ElementMatch!8813) (regTwo!18139 (regTwo!18138 r!23079)))) b!2886379))

(assert (= (and b!2886172 ((_ is Concat!14134) (regTwo!18139 (regTwo!18138 r!23079)))) b!2886380))

(assert (= (and b!2886172 ((_ is Star!8813) (regTwo!18139 (regTwo!18138 r!23079)))) b!2886381))

(assert (= (and b!2886172 ((_ is Union!8813) (regTwo!18139 (regTwo!18138 r!23079)))) b!2886382))

(declare-fun b!2886385 () Bool)

(declare-fun e!1825230 () Bool)

(declare-fun tp!925632 () Bool)

(assert (=> b!2886385 (= e!1825230 tp!925632)))

(declare-fun b!2886384 () Bool)

(declare-fun tp!925633 () Bool)

(declare-fun tp!925630 () Bool)

(assert (=> b!2886384 (= e!1825230 (and tp!925633 tp!925630))))

(declare-fun b!2886383 () Bool)

(assert (=> b!2886383 (= e!1825230 tp_is_empty!15213)))

(declare-fun b!2886386 () Bool)

(declare-fun tp!925631 () Bool)

(declare-fun tp!925634 () Bool)

(assert (=> b!2886386 (= e!1825230 (and tp!925631 tp!925634))))

(assert (=> b!2886167 (= tp!925547 e!1825230)))

(assert (= (and b!2886167 ((_ is ElementMatch!8813) (reg!9142 (regOne!18138 r!23079)))) b!2886383))

(assert (= (and b!2886167 ((_ is Concat!14134) (reg!9142 (regOne!18138 r!23079)))) b!2886384))

(assert (= (and b!2886167 ((_ is Star!8813) (reg!9142 (regOne!18138 r!23079)))) b!2886385))

(assert (= (and b!2886167 ((_ is Union!8813) (reg!9142 (regOne!18138 r!23079)))) b!2886386))

(declare-fun b!2886389 () Bool)

(declare-fun e!1825231 () Bool)

(declare-fun tp!925637 () Bool)

(assert (=> b!2886389 (= e!1825231 tp!925637)))

(declare-fun b!2886388 () Bool)

(declare-fun tp!925638 () Bool)

(declare-fun tp!925635 () Bool)

(assert (=> b!2886388 (= e!1825231 (and tp!925638 tp!925635))))

(declare-fun b!2886387 () Bool)

(assert (=> b!2886387 (= e!1825231 tp_is_empty!15213)))

(declare-fun b!2886390 () Bool)

(declare-fun tp!925636 () Bool)

(declare-fun tp!925639 () Bool)

(assert (=> b!2886390 (= e!1825231 (and tp!925636 tp!925639))))

(assert (=> b!2886178 (= tp!925563 e!1825231)))

(assert (= (and b!2886178 ((_ is ElementMatch!8813) (regOne!18138 (regOne!18139 r!23079)))) b!2886387))

(assert (= (and b!2886178 ((_ is Concat!14134) (regOne!18138 (regOne!18139 r!23079)))) b!2886388))

(assert (= (and b!2886178 ((_ is Star!8813) (regOne!18138 (regOne!18139 r!23079)))) b!2886389))

(assert (= (and b!2886178 ((_ is Union!8813) (regOne!18138 (regOne!18139 r!23079)))) b!2886390))

(declare-fun b!2886393 () Bool)

(declare-fun e!1825232 () Bool)

(declare-fun tp!925642 () Bool)

(assert (=> b!2886393 (= e!1825232 tp!925642)))

(declare-fun b!2886392 () Bool)

(declare-fun tp!925643 () Bool)

(declare-fun tp!925640 () Bool)

(assert (=> b!2886392 (= e!1825232 (and tp!925643 tp!925640))))

(declare-fun b!2886391 () Bool)

(assert (=> b!2886391 (= e!1825232 tp_is_empty!15213)))

(declare-fun b!2886394 () Bool)

(declare-fun tp!925641 () Bool)

(declare-fun tp!925644 () Bool)

(assert (=> b!2886394 (= e!1825232 (and tp!925641 tp!925644))))

(assert (=> b!2886178 (= tp!925560 e!1825232)))

(assert (= (and b!2886178 ((_ is ElementMatch!8813) (regTwo!18138 (regOne!18139 r!23079)))) b!2886391))

(assert (= (and b!2886178 ((_ is Concat!14134) (regTwo!18138 (regOne!18139 r!23079)))) b!2886392))

(assert (= (and b!2886178 ((_ is Star!8813) (regTwo!18138 (regOne!18139 r!23079)))) b!2886393))

(assert (= (and b!2886178 ((_ is Union!8813) (regTwo!18138 (regOne!18139 r!23079)))) b!2886394))

(declare-fun b!2886397 () Bool)

(declare-fun e!1825233 () Bool)

(declare-fun tp!925647 () Bool)

(assert (=> b!2886397 (= e!1825233 tp!925647)))

(declare-fun b!2886396 () Bool)

(declare-fun tp!925648 () Bool)

(declare-fun tp!925645 () Bool)

(assert (=> b!2886396 (= e!1825233 (and tp!925648 tp!925645))))

(declare-fun b!2886395 () Bool)

(assert (=> b!2886395 (= e!1825233 tp_is_empty!15213)))

(declare-fun b!2886398 () Bool)

(declare-fun tp!925646 () Bool)

(declare-fun tp!925649 () Bool)

(assert (=> b!2886398 (= e!1825233 (and tp!925646 tp!925649))))

(assert (=> b!2886182 (= tp!925568 e!1825233)))

(assert (= (and b!2886182 ((_ is ElementMatch!8813) (regOne!18138 (regTwo!18139 r!23079)))) b!2886395))

(assert (= (and b!2886182 ((_ is Concat!14134) (regOne!18138 (regTwo!18139 r!23079)))) b!2886396))

(assert (= (and b!2886182 ((_ is Star!8813) (regOne!18138 (regTwo!18139 r!23079)))) b!2886397))

(assert (= (and b!2886182 ((_ is Union!8813) (regOne!18138 (regTwo!18139 r!23079)))) b!2886398))

(declare-fun b!2886401 () Bool)

(declare-fun e!1825234 () Bool)

(declare-fun tp!925652 () Bool)

(assert (=> b!2886401 (= e!1825234 tp!925652)))

(declare-fun b!2886400 () Bool)

(declare-fun tp!925653 () Bool)

(declare-fun tp!925650 () Bool)

(assert (=> b!2886400 (= e!1825234 (and tp!925653 tp!925650))))

(declare-fun b!2886399 () Bool)

(assert (=> b!2886399 (= e!1825234 tp_is_empty!15213)))

(declare-fun b!2886402 () Bool)

(declare-fun tp!925651 () Bool)

(declare-fun tp!925654 () Bool)

(assert (=> b!2886402 (= e!1825234 (and tp!925651 tp!925654))))

(assert (=> b!2886182 (= tp!925565 e!1825234)))

(assert (= (and b!2886182 ((_ is ElementMatch!8813) (regTwo!18138 (regTwo!18139 r!23079)))) b!2886399))

(assert (= (and b!2886182 ((_ is Concat!14134) (regTwo!18138 (regTwo!18139 r!23079)))) b!2886400))

(assert (= (and b!2886182 ((_ is Star!8813) (regTwo!18138 (regTwo!18139 r!23079)))) b!2886401))

(assert (= (and b!2886182 ((_ is Union!8813) (regTwo!18138 (regTwo!18139 r!23079)))) b!2886402))

(declare-fun b!2886405 () Bool)

(declare-fun e!1825235 () Bool)

(declare-fun tp!925657 () Bool)

(assert (=> b!2886405 (= e!1825235 tp!925657)))

(declare-fun b!2886404 () Bool)

(declare-fun tp!925658 () Bool)

(declare-fun tp!925655 () Bool)

(assert (=> b!2886404 (= e!1825235 (and tp!925658 tp!925655))))

(declare-fun b!2886403 () Bool)

(assert (=> b!2886403 (= e!1825235 tp_is_empty!15213)))

(declare-fun b!2886406 () Bool)

(declare-fun tp!925656 () Bool)

(declare-fun tp!925659 () Bool)

(assert (=> b!2886406 (= e!1825235 (and tp!925656 tp!925659))))

(assert (=> b!2886184 (= tp!925566 e!1825235)))

(assert (= (and b!2886184 ((_ is ElementMatch!8813) (regOne!18139 (regTwo!18139 r!23079)))) b!2886403))

(assert (= (and b!2886184 ((_ is Concat!14134) (regOne!18139 (regTwo!18139 r!23079)))) b!2886404))

(assert (= (and b!2886184 ((_ is Star!8813) (regOne!18139 (regTwo!18139 r!23079)))) b!2886405))

(assert (= (and b!2886184 ((_ is Union!8813) (regOne!18139 (regTwo!18139 r!23079)))) b!2886406))

(declare-fun b!2886409 () Bool)

(declare-fun e!1825236 () Bool)

(declare-fun tp!925662 () Bool)

(assert (=> b!2886409 (= e!1825236 tp!925662)))

(declare-fun b!2886408 () Bool)

(declare-fun tp!925663 () Bool)

(declare-fun tp!925660 () Bool)

(assert (=> b!2886408 (= e!1825236 (and tp!925663 tp!925660))))

(declare-fun b!2886407 () Bool)

(assert (=> b!2886407 (= e!1825236 tp_is_empty!15213)))

(declare-fun b!2886410 () Bool)

(declare-fun tp!925661 () Bool)

(declare-fun tp!925664 () Bool)

(assert (=> b!2886410 (= e!1825236 (and tp!925661 tp!925664))))

(assert (=> b!2886184 (= tp!925569 e!1825236)))

(assert (= (and b!2886184 ((_ is ElementMatch!8813) (regTwo!18139 (regTwo!18139 r!23079)))) b!2886407))

(assert (= (and b!2886184 ((_ is Concat!14134) (regTwo!18139 (regTwo!18139 r!23079)))) b!2886408))

(assert (= (and b!2886184 ((_ is Star!8813) (regTwo!18139 (regTwo!18139 r!23079)))) b!2886409))

(assert (= (and b!2886184 ((_ is Union!8813) (regTwo!18139 (regTwo!18139 r!23079)))) b!2886410))

(declare-fun b!2886413 () Bool)

(declare-fun e!1825239 () Bool)

(declare-fun tp!925667 () Bool)

(assert (=> b!2886413 (= e!1825239 tp!925667)))

(declare-fun b!2886412 () Bool)

(declare-fun tp!925668 () Bool)

(declare-fun tp!925665 () Bool)

(assert (=> b!2886412 (= e!1825239 (and tp!925668 tp!925665))))

(declare-fun b!2886411 () Bool)

(assert (=> b!2886411 (= e!1825239 tp_is_empty!15213)))

(declare-fun b!2886414 () Bool)

(declare-fun tp!925666 () Bool)

(declare-fun tp!925669 () Bool)

(assert (=> b!2886414 (= e!1825239 (and tp!925666 tp!925669))))

(assert (=> b!2886170 (= tp!925553 e!1825239)))

(assert (= (and b!2886170 ((_ is ElementMatch!8813) (regOne!18138 (regTwo!18138 r!23079)))) b!2886411))

(assert (= (and b!2886170 ((_ is Concat!14134) (regOne!18138 (regTwo!18138 r!23079)))) b!2886412))

(assert (= (and b!2886170 ((_ is Star!8813) (regOne!18138 (regTwo!18138 r!23079)))) b!2886413))

(assert (= (and b!2886170 ((_ is Union!8813) (regOne!18138 (regTwo!18138 r!23079)))) b!2886414))

(declare-fun b!2886426 () Bool)

(declare-fun e!1825245 () Bool)

(declare-fun tp!925672 () Bool)

(assert (=> b!2886426 (= e!1825245 tp!925672)))

(declare-fun b!2886425 () Bool)

(declare-fun tp!925673 () Bool)

(declare-fun tp!925670 () Bool)

(assert (=> b!2886425 (= e!1825245 (and tp!925673 tp!925670))))

(declare-fun b!2886424 () Bool)

(assert (=> b!2886424 (= e!1825245 tp_is_empty!15213)))

(declare-fun b!2886427 () Bool)

(declare-fun tp!925671 () Bool)

(declare-fun tp!925674 () Bool)

(assert (=> b!2886427 (= e!1825245 (and tp!925671 tp!925674))))

(assert (=> b!2886170 (= tp!925550 e!1825245)))

(assert (= (and b!2886170 ((_ is ElementMatch!8813) (regTwo!18138 (regTwo!18138 r!23079)))) b!2886424))

(assert (= (and b!2886170 ((_ is Concat!14134) (regTwo!18138 (regTwo!18138 r!23079)))) b!2886425))

(assert (= (and b!2886170 ((_ is Star!8813) (regTwo!18138 (regTwo!18138 r!23079)))) b!2886426))

(assert (= (and b!2886170 ((_ is Union!8813) (regTwo!18138 (regTwo!18138 r!23079)))) b!2886427))

(declare-fun b!2886430 () Bool)

(declare-fun e!1825246 () Bool)

(declare-fun tp!925677 () Bool)

(assert (=> b!2886430 (= e!1825246 tp!925677)))

(declare-fun b!2886429 () Bool)

(declare-fun tp!925678 () Bool)

(declare-fun tp!925675 () Bool)

(assert (=> b!2886429 (= e!1825246 (and tp!925678 tp!925675))))

(declare-fun b!2886428 () Bool)

(assert (=> b!2886428 (= e!1825246 tp_is_empty!15213)))

(declare-fun b!2886431 () Bool)

(declare-fun tp!925676 () Bool)

(declare-fun tp!925679 () Bool)

(assert (=> b!2886431 (= e!1825246 (and tp!925676 tp!925679))))

(assert (=> b!2886179 (= tp!925562 e!1825246)))

(assert (= (and b!2886179 ((_ is ElementMatch!8813) (reg!9142 (regOne!18139 r!23079)))) b!2886428))

(assert (= (and b!2886179 ((_ is Concat!14134) (reg!9142 (regOne!18139 r!23079)))) b!2886429))

(assert (= (and b!2886179 ((_ is Star!8813) (reg!9142 (regOne!18139 r!23079)))) b!2886430))

(assert (= (and b!2886179 ((_ is Union!8813) (reg!9142 (regOne!18139 r!23079)))) b!2886431))

(declare-fun b!2886434 () Bool)

(declare-fun e!1825247 () Bool)

(declare-fun tp!925682 () Bool)

(assert (=> b!2886434 (= e!1825247 tp!925682)))

(declare-fun b!2886433 () Bool)

(declare-fun tp!925683 () Bool)

(declare-fun tp!925680 () Bool)

(assert (=> b!2886433 (= e!1825247 (and tp!925683 tp!925680))))

(declare-fun b!2886432 () Bool)

(assert (=> b!2886432 (= e!1825247 tp_is_empty!15213)))

(declare-fun b!2886435 () Bool)

(declare-fun tp!925681 () Bool)

(declare-fun tp!925684 () Bool)

(assert (=> b!2886435 (= e!1825247 (and tp!925681 tp!925684))))

(assert (=> b!2886174 (= tp!925558 e!1825247)))

(assert (= (and b!2886174 ((_ is ElementMatch!8813) (regOne!18138 (reg!9142 r!23079)))) b!2886432))

(assert (= (and b!2886174 ((_ is Concat!14134) (regOne!18138 (reg!9142 r!23079)))) b!2886433))

(assert (= (and b!2886174 ((_ is Star!8813) (regOne!18138 (reg!9142 r!23079)))) b!2886434))

(assert (= (and b!2886174 ((_ is Union!8813) (regOne!18138 (reg!9142 r!23079)))) b!2886435))

(declare-fun b!2886438 () Bool)

(declare-fun e!1825248 () Bool)

(declare-fun tp!925687 () Bool)

(assert (=> b!2886438 (= e!1825248 tp!925687)))

(declare-fun b!2886437 () Bool)

(declare-fun tp!925688 () Bool)

(declare-fun tp!925685 () Bool)

(assert (=> b!2886437 (= e!1825248 (and tp!925688 tp!925685))))

(declare-fun b!2886436 () Bool)

(assert (=> b!2886436 (= e!1825248 tp_is_empty!15213)))

(declare-fun b!2886439 () Bool)

(declare-fun tp!925686 () Bool)

(declare-fun tp!925689 () Bool)

(assert (=> b!2886439 (= e!1825248 (and tp!925686 tp!925689))))

(assert (=> b!2886174 (= tp!925555 e!1825248)))

(assert (= (and b!2886174 ((_ is ElementMatch!8813) (regTwo!18138 (reg!9142 r!23079)))) b!2886436))

(assert (= (and b!2886174 ((_ is Concat!14134) (regTwo!18138 (reg!9142 r!23079)))) b!2886437))

(assert (= (and b!2886174 ((_ is Star!8813) (regTwo!18138 (reg!9142 r!23079)))) b!2886438))

(assert (= (and b!2886174 ((_ is Union!8813) (regTwo!18138 (reg!9142 r!23079)))) b!2886439))

(declare-fun b!2886442 () Bool)

(declare-fun e!1825249 () Bool)

(declare-fun tp!925692 () Bool)

(assert (=> b!2886442 (= e!1825249 tp!925692)))

(declare-fun b!2886441 () Bool)

(declare-fun tp!925693 () Bool)

(declare-fun tp!925690 () Bool)

(assert (=> b!2886441 (= e!1825249 (and tp!925693 tp!925690))))

(declare-fun b!2886440 () Bool)

(assert (=> b!2886440 (= e!1825249 tp_is_empty!15213)))

(declare-fun b!2886443 () Bool)

(declare-fun tp!925691 () Bool)

(declare-fun tp!925694 () Bool)

(assert (=> b!2886443 (= e!1825249 (and tp!925691 tp!925694))))

(assert (=> b!2886183 (= tp!925567 e!1825249)))

(assert (= (and b!2886183 ((_ is ElementMatch!8813) (reg!9142 (regTwo!18139 r!23079)))) b!2886440))

(assert (= (and b!2886183 ((_ is Concat!14134) (reg!9142 (regTwo!18139 r!23079)))) b!2886441))

(assert (= (and b!2886183 ((_ is Star!8813) (reg!9142 (regTwo!18139 r!23079)))) b!2886442))

(assert (= (and b!2886183 ((_ is Union!8813) (reg!9142 (regTwo!18139 r!23079)))) b!2886443))

(check-sat (not bm!187243) (not b!2886347) (not d!833964) (not b!2886434) (not b!2886429) (not b!2886426) (not bm!187240) (not b!2886392) (not d!833990) (not b!2886397) (not b!2886186) (not b!2886408) (not b!2886332) (not b!2886404) (not b!2886425) (not b!2886242) (not b!2886365) (not b!2886385) (not d!833976) (not b!2886439) (not b!2886372) (not b!2886410) (not b!2886377) (not b!2886390) (not b!2886396) (not b!2886442) (not d!833962) tp_is_empty!15213 (not bm!187249) (not b!2886384) (not b!2886388) (not b!2886430) (not b!2886405) (not b!2886339) (not b!2886336) (not b!2886340) (not b!2886414) (not b!2886431) (not b!2886272) (not b!2886441) (not b!2886361) (not b!2886334) (not bm!187245) (not bm!187218) (not b!2886360) (not b!2886380) (not b!2886394) (not b!2886196) (not b!2886374) (not b!2886279) (not b!2886349) (not b!2886381) (not bm!187229) (not b!2886195) (not b!2886327) (not b!2886413) (not b!2886366) (not b!2886335) (not b!2886310) (not b!2886412) (not b!2886435) (not bm!187238) (not b!2886406) (not b!2886362) (not b!2886433) (not b!2886370) (not b!2886273) (not b!2886376) (not b!2886409) (not b!2886401) (not b!2886345) (not b!2886198) (not b!2886400) (not b!2886443) (not b!2886328) (not b!2886357) (not b!2886402) (not b!2886378) (not b!2886326) (not b!2886364) (not b!2886330) (not bm!187246) (not b!2886358) (not b!2886398) (not b!2886294) (not b!2886368) (not b!2886288) (not b!2886338) (not bm!187247) (not b!2886393) (not b!2886438) (not b!2886373) (not bm!187228) (not b!2886331) (not b!2886356) (not b!2886386) (not b!2886427) (not b!2886382) (not b!2886437) (not b!2886389) (not b!2886369) (not b!2886189) (not bm!187248) (not b!2886192) (not d!833984))
(check-sat)
