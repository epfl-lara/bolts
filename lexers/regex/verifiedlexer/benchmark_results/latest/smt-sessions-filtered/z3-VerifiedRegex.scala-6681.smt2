; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350650 () Bool)

(assert start!350650)

(declare-fun b!3723906 () Bool)

(declare-fun e!2304899 () Bool)

(declare-fun tp!1132684 () Bool)

(assert (=> b!3723906 (= e!2304899 tp!1132684)))

(declare-fun res!1513155 () Bool)

(declare-fun e!2304900 () Bool)

(assert (=> start!350650 (=> (not res!1513155) (not e!2304900))))

(declare-datatypes ((C!21988 0))(
  ( (C!21989 (val!13042 Int)) )
))
(declare-datatypes ((Regex!10901 0))(
  ( (ElementMatch!10901 (c!644187 C!21988)) (Concat!17172 (regOne!22314 Regex!10901) (regTwo!22314 Regex!10901)) (EmptyExpr!10901) (Star!10901 (reg!11230 Regex!10901)) (EmptyLang!10901) (Union!10901 (regOne!22315 Regex!10901) (regTwo!22315 Regex!10901)) )
))
(declare-fun r!26968 () Regex!10901)

(declare-fun validRegex!5008 (Regex!10901) Bool)

(assert (=> start!350650 (= res!1513155 (validRegex!5008 r!26968))))

(assert (=> start!350650 e!2304900))

(assert (=> start!350650 e!2304899))

(declare-fun tp_is_empty!18817 () Bool)

(assert (=> start!350650 tp_is_empty!18817))

(declare-fun b!3723907 () Bool)

(assert (=> b!3723907 (= e!2304899 tp_is_empty!18817)))

(declare-fun b!3723908 () Bool)

(declare-fun tp!1132683 () Bool)

(declare-fun tp!1132682 () Bool)

(assert (=> b!3723908 (= e!2304899 (and tp!1132683 tp!1132682))))

(declare-fun b!3723909 () Bool)

(declare-fun res!1513156 () Bool)

(assert (=> b!3723909 (=> (not res!1513156) (not e!2304900))))

(declare-fun cNot!42 () C!21988)

(declare-datatypes ((List!39782 0))(
  ( (Nil!39658) (Cons!39658 (h!45078 C!21988) (t!302465 List!39782)) )
))
(declare-fun contains!7994 (List!39782 C!21988) Bool)

(declare-fun usedCharacters!1164 (Regex!10901) List!39782)

(assert (=> b!3723909 (= res!1513156 (not (contains!7994 (usedCharacters!1164 r!26968) cNot!42)))))

(declare-fun b!3723910 () Bool)

(declare-fun tp!1132681 () Bool)

(declare-fun tp!1132680 () Bool)

(assert (=> b!3723910 (= e!2304899 (and tp!1132681 tp!1132680))))

(declare-fun b!3723911 () Bool)

(declare-fun res!1513154 () Bool)

(assert (=> b!3723911 (=> (not res!1513154) (not e!2304900))))

(get-info :version)

(assert (=> b!3723911 (= res!1513154 (and (not ((_ is EmptyExpr!10901) r!26968)) (not ((_ is EmptyLang!10901) r!26968)) ((_ is ElementMatch!10901) r!26968)))))

(declare-fun c!13797 () C!21988)

(declare-fun b!3723912 () Bool)

(declare-fun derivativeStep!3354 (Regex!10901 C!21988) Regex!10901)

(assert (=> b!3723912 (= e!2304900 (contains!7994 (usedCharacters!1164 (derivativeStep!3354 r!26968 c!13797)) cNot!42))))

(assert (= (and start!350650 res!1513155) b!3723909))

(assert (= (and b!3723909 res!1513156) b!3723911))

(assert (= (and b!3723911 res!1513154) b!3723912))

(assert (= (and start!350650 ((_ is ElementMatch!10901) r!26968)) b!3723907))

(assert (= (and start!350650 ((_ is Concat!17172) r!26968)) b!3723908))

(assert (= (and start!350650 ((_ is Star!10901) r!26968)) b!3723906))

(assert (= (and start!350650 ((_ is Union!10901) r!26968)) b!3723910))

(declare-fun m!4226897 () Bool)

(assert (=> start!350650 m!4226897))

(declare-fun m!4226899 () Bool)

(assert (=> b!3723909 m!4226899))

(assert (=> b!3723909 m!4226899))

(declare-fun m!4226901 () Bool)

(assert (=> b!3723909 m!4226901))

(declare-fun m!4226903 () Bool)

(assert (=> b!3723912 m!4226903))

(assert (=> b!3723912 m!4226903))

(declare-fun m!4226905 () Bool)

(assert (=> b!3723912 m!4226905))

(assert (=> b!3723912 m!4226905))

(declare-fun m!4226907 () Bool)

(assert (=> b!3723912 m!4226907))

(check-sat tp_is_empty!18817 (not b!3723908) (not b!3723906) (not b!3723910) (not b!3723909) (not start!350650) (not b!3723912))
(check-sat)
(get-model)

(declare-fun lt!1298284 () Bool)

(declare-fun d!1089622 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5758 (List!39782) (InoxSet C!21988))

(assert (=> d!1089622 (= lt!1298284 (select (content!5758 (usedCharacters!1164 (derivativeStep!3354 r!26968 c!13797))) cNot!42))))

(declare-fun e!2304911 () Bool)

(assert (=> d!1089622 (= lt!1298284 e!2304911)))

(declare-fun res!1513168 () Bool)

(assert (=> d!1089622 (=> (not res!1513168) (not e!2304911))))

(assert (=> d!1089622 (= res!1513168 ((_ is Cons!39658) (usedCharacters!1164 (derivativeStep!3354 r!26968 c!13797))))))

(assert (=> d!1089622 (= (contains!7994 (usedCharacters!1164 (derivativeStep!3354 r!26968 c!13797)) cNot!42) lt!1298284)))

(declare-fun b!3723923 () Bool)

(declare-fun e!2304912 () Bool)

(assert (=> b!3723923 (= e!2304911 e!2304912)))

(declare-fun res!1513167 () Bool)

(assert (=> b!3723923 (=> res!1513167 e!2304912)))

(assert (=> b!3723923 (= res!1513167 (= (h!45078 (usedCharacters!1164 (derivativeStep!3354 r!26968 c!13797))) cNot!42))))

(declare-fun b!3723924 () Bool)

(assert (=> b!3723924 (= e!2304912 (contains!7994 (t!302465 (usedCharacters!1164 (derivativeStep!3354 r!26968 c!13797))) cNot!42))))

(assert (= (and d!1089622 res!1513168) b!3723923))

(assert (= (and b!3723923 (not res!1513167)) b!3723924))

(assert (=> d!1089622 m!4226905))

(declare-fun m!4226915 () Bool)

(assert (=> d!1089622 m!4226915))

(declare-fun m!4226917 () Bool)

(assert (=> d!1089622 m!4226917))

(declare-fun m!4226919 () Bool)

(assert (=> b!3723924 m!4226919))

(assert (=> b!3723912 d!1089622))

(declare-fun d!1089626 () Bool)

(declare-fun c!644210 () Bool)

(assert (=> d!1089626 (= c!644210 (or ((_ is EmptyExpr!10901) (derivativeStep!3354 r!26968 c!13797)) ((_ is EmptyLang!10901) (derivativeStep!3354 r!26968 c!13797))))))

(declare-fun e!2304935 () List!39782)

(assert (=> d!1089626 (= (usedCharacters!1164 (derivativeStep!3354 r!26968 c!13797)) e!2304935)))

(declare-fun b!3723965 () Bool)

(assert (=> b!3723965 (= e!2304935 Nil!39658)))

(declare-fun bm!270980 () Bool)

(declare-fun call!270985 () List!39782)

(declare-fun c!644209 () Bool)

(declare-fun c!644208 () Bool)

(assert (=> bm!270980 (= call!270985 (usedCharacters!1164 (ite c!644208 (reg!11230 (derivativeStep!3354 r!26968 c!13797)) (ite c!644209 (regOne!22315 (derivativeStep!3354 r!26968 c!13797)) (regTwo!22314 (derivativeStep!3354 r!26968 c!13797))))))))

(declare-fun b!3723966 () Bool)

(declare-fun e!2304933 () List!39782)

(assert (=> b!3723966 (= e!2304933 call!270985)))

(declare-fun bm!270981 () Bool)

(declare-fun call!270987 () List!39782)

(assert (=> bm!270981 (= call!270987 call!270985)))

(declare-fun bm!270982 () Bool)

(declare-fun call!270988 () List!39782)

(assert (=> bm!270982 (= call!270988 (usedCharacters!1164 (ite c!644209 (regTwo!22315 (derivativeStep!3354 r!26968 c!13797)) (regOne!22314 (derivativeStep!3354 r!26968 c!13797)))))))

(declare-fun call!270986 () List!39782)

(declare-fun bm!270983 () Bool)

(declare-fun ++!9825 (List!39782 List!39782) List!39782)

(assert (=> bm!270983 (= call!270986 (++!9825 (ite c!644209 call!270987 call!270988) (ite c!644209 call!270988 call!270987)))))

(declare-fun b!3723967 () Bool)

(declare-fun e!2304934 () List!39782)

(assert (=> b!3723967 (= e!2304934 call!270986)))

(declare-fun b!3723968 () Bool)

(assert (=> b!3723968 (= e!2304933 e!2304934)))

(assert (=> b!3723968 (= c!644209 ((_ is Union!10901) (derivativeStep!3354 r!26968 c!13797)))))

(declare-fun b!3723969 () Bool)

(assert (=> b!3723969 (= c!644208 ((_ is Star!10901) (derivativeStep!3354 r!26968 c!13797)))))

(declare-fun e!2304936 () List!39782)

(assert (=> b!3723969 (= e!2304936 e!2304933)))

(declare-fun b!3723970 () Bool)

(assert (=> b!3723970 (= e!2304936 (Cons!39658 (c!644187 (derivativeStep!3354 r!26968 c!13797)) Nil!39658))))

(declare-fun b!3723971 () Bool)

(assert (=> b!3723971 (= e!2304934 call!270986)))

(declare-fun b!3723972 () Bool)

(assert (=> b!3723972 (= e!2304935 e!2304936)))

(declare-fun c!644211 () Bool)

(assert (=> b!3723972 (= c!644211 ((_ is ElementMatch!10901) (derivativeStep!3354 r!26968 c!13797)))))

(assert (= (and d!1089626 c!644210) b!3723965))

(assert (= (and d!1089626 (not c!644210)) b!3723972))

(assert (= (and b!3723972 c!644211) b!3723970))

(assert (= (and b!3723972 (not c!644211)) b!3723969))

(assert (= (and b!3723969 c!644208) b!3723966))

(assert (= (and b!3723969 (not c!644208)) b!3723968))

(assert (= (and b!3723968 c!644209) b!3723967))

(assert (= (and b!3723968 (not c!644209)) b!3723971))

(assert (= (or b!3723967 b!3723971) bm!270981))

(assert (= (or b!3723967 b!3723971) bm!270982))

(assert (= (or b!3723967 b!3723971) bm!270983))

(assert (= (or b!3723966 bm!270981) bm!270980))

(declare-fun m!4226927 () Bool)

(assert (=> bm!270980 m!4226927))

(declare-fun m!4226929 () Bool)

(assert (=> bm!270982 m!4226929))

(declare-fun m!4226931 () Bool)

(assert (=> bm!270983 m!4226931))

(assert (=> b!3723912 d!1089626))

(declare-fun b!3724023 () Bool)

(declare-fun e!2304962 () Regex!10901)

(declare-fun call!271012 () Regex!10901)

(assert (=> b!3724023 (= e!2304962 (Concat!17172 call!271012 r!26968))))

(declare-fun c!644240 () Bool)

(declare-fun call!271010 () Regex!10901)

(declare-fun c!644241 () Bool)

(declare-fun bm!271004 () Bool)

(declare-fun c!644239 () Bool)

(assert (=> bm!271004 (= call!271010 (derivativeStep!3354 (ite c!644240 (regOne!22315 r!26968) (ite c!644239 (reg!11230 r!26968) (ite c!644241 (regTwo!22314 r!26968) (regOne!22314 r!26968)))) c!13797))))

(declare-fun b!3724024 () Bool)

(declare-fun e!2304964 () Regex!10901)

(assert (=> b!3724024 (= e!2304964 EmptyLang!10901)))

(declare-fun b!3724025 () Bool)

(declare-fun e!2304963 () Regex!10901)

(declare-fun call!271011 () Regex!10901)

(assert (=> b!3724025 (= e!2304963 (Union!10901 (Concat!17172 call!271011 (regTwo!22314 r!26968)) EmptyLang!10901))))

(declare-fun bm!271005 () Bool)

(assert (=> bm!271005 (= call!271012 call!271010)))

(declare-fun bm!271006 () Bool)

(assert (=> bm!271006 (= call!271011 call!271012)))

(declare-fun b!3724026 () Bool)

(declare-fun e!2304965 () Regex!10901)

(assert (=> b!3724026 (= e!2304965 e!2304962)))

(assert (=> b!3724026 (= c!644239 ((_ is Star!10901) r!26968))))

(declare-fun b!3724027 () Bool)

(declare-fun e!2304966 () Regex!10901)

(assert (=> b!3724027 (= e!2304966 (ite (= c!13797 (c!644187 r!26968)) EmptyExpr!10901 EmptyLang!10901))))

(declare-fun d!1089630 () Bool)

(declare-fun lt!1298290 () Regex!10901)

(assert (=> d!1089630 (validRegex!5008 lt!1298290)))

(assert (=> d!1089630 (= lt!1298290 e!2304964)))

(declare-fun c!644237 () Bool)

(assert (=> d!1089630 (= c!644237 (or ((_ is EmptyExpr!10901) r!26968) ((_ is EmptyLang!10901) r!26968)))))

(assert (=> d!1089630 (validRegex!5008 r!26968)))

(assert (=> d!1089630 (= (derivativeStep!3354 r!26968 c!13797) lt!1298290)))

(declare-fun b!3724028 () Bool)

(assert (=> b!3724028 (= e!2304964 e!2304966)))

(declare-fun c!644238 () Bool)

(assert (=> b!3724028 (= c!644238 ((_ is ElementMatch!10901) r!26968))))

(declare-fun b!3724029 () Bool)

(assert (=> b!3724029 (= c!644240 ((_ is Union!10901) r!26968))))

(assert (=> b!3724029 (= e!2304966 e!2304965)))

(declare-fun call!271009 () Regex!10901)

(declare-fun bm!271007 () Bool)

(assert (=> bm!271007 (= call!271009 (derivativeStep!3354 (ite c!644240 (regTwo!22315 r!26968) (regOne!22314 r!26968)) c!13797))))

(declare-fun b!3724030 () Bool)

(assert (=> b!3724030 (= e!2304965 (Union!10901 call!271010 call!271009))))

(declare-fun b!3724031 () Bool)

(assert (=> b!3724031 (= e!2304963 (Union!10901 (Concat!17172 call!271009 (regTwo!22314 r!26968)) call!271011))))

(declare-fun b!3724032 () Bool)

(declare-fun nullable!3809 (Regex!10901) Bool)

(assert (=> b!3724032 (= c!644241 (nullable!3809 (regOne!22314 r!26968)))))

(assert (=> b!3724032 (= e!2304962 e!2304963)))

(assert (= (and d!1089630 c!644237) b!3724024))

(assert (= (and d!1089630 (not c!644237)) b!3724028))

(assert (= (and b!3724028 c!644238) b!3724027))

(assert (= (and b!3724028 (not c!644238)) b!3724029))

(assert (= (and b!3724029 c!644240) b!3724030))

(assert (= (and b!3724029 (not c!644240)) b!3724026))

(assert (= (and b!3724026 c!644239) b!3724023))

(assert (= (and b!3724026 (not c!644239)) b!3724032))

(assert (= (and b!3724032 c!644241) b!3724031))

(assert (= (and b!3724032 (not c!644241)) b!3724025))

(assert (= (or b!3724031 b!3724025) bm!271006))

(assert (= (or b!3724023 bm!271006) bm!271005))

(assert (= (or b!3724030 bm!271005) bm!271004))

(assert (= (or b!3724030 b!3724031) bm!271007))

(declare-fun m!4226941 () Bool)

(assert (=> bm!271004 m!4226941))

(declare-fun m!4226943 () Bool)

(assert (=> d!1089630 m!4226943))

(assert (=> d!1089630 m!4226897))

(declare-fun m!4226945 () Bool)

(assert (=> bm!271007 m!4226945))

(declare-fun m!4226947 () Bool)

(assert (=> b!3724032 m!4226947))

(assert (=> b!3723912 d!1089630))

(declare-fun c!644256 () Bool)

(declare-fun call!271033 () Bool)

(declare-fun c!644257 () Bool)

(declare-fun bm!271027 () Bool)

(assert (=> bm!271027 (= call!271033 (validRegex!5008 (ite c!644257 (reg!11230 r!26968) (ite c!644256 (regOne!22315 r!26968) (regOne!22314 r!26968)))))))

(declare-fun b!3724094 () Bool)

(declare-fun e!2305015 () Bool)

(declare-fun e!2305011 () Bool)

(assert (=> b!3724094 (= e!2305015 e!2305011)))

(declare-fun res!1513197 () Bool)

(assert (=> b!3724094 (=> (not res!1513197) (not e!2305011))))

(declare-fun call!271032 () Bool)

(assert (=> b!3724094 (= res!1513197 call!271032)))

(declare-fun b!3724095 () Bool)

(declare-fun res!1513200 () Bool)

(declare-fun e!2305014 () Bool)

(assert (=> b!3724095 (=> (not res!1513200) (not e!2305014))))

(assert (=> b!3724095 (= res!1513200 call!271032)))

(declare-fun e!2305016 () Bool)

(assert (=> b!3724095 (= e!2305016 e!2305014)))

(declare-fun bm!271028 () Bool)

(declare-fun call!271034 () Bool)

(assert (=> bm!271028 (= call!271034 (validRegex!5008 (ite c!644256 (regTwo!22315 r!26968) (regTwo!22314 r!26968))))))

(declare-fun b!3724096 () Bool)

(declare-fun e!2305010 () Bool)

(assert (=> b!3724096 (= e!2305010 e!2305016)))

(assert (=> b!3724096 (= c!644256 ((_ is Union!10901) r!26968))))

(declare-fun b!3724097 () Bool)

(assert (=> b!3724097 (= e!2305014 call!271034)))

(declare-fun b!3724098 () Bool)

(declare-fun e!2305012 () Bool)

(assert (=> b!3724098 (= e!2305012 call!271033)))

(declare-fun bm!271029 () Bool)

(assert (=> bm!271029 (= call!271032 call!271033)))

(declare-fun b!3724100 () Bool)

(declare-fun res!1513196 () Bool)

(assert (=> b!3724100 (=> res!1513196 e!2305015)))

(assert (=> b!3724100 (= res!1513196 (not ((_ is Concat!17172) r!26968)))))

(assert (=> b!3724100 (= e!2305016 e!2305015)))

(declare-fun b!3724101 () Bool)

(declare-fun e!2305013 () Bool)

(assert (=> b!3724101 (= e!2305013 e!2305010)))

(assert (=> b!3724101 (= c!644257 ((_ is Star!10901) r!26968))))

(declare-fun b!3724102 () Bool)

(assert (=> b!3724102 (= e!2305010 e!2305012)))

(declare-fun res!1513198 () Bool)

(assert (=> b!3724102 (= res!1513198 (not (nullable!3809 (reg!11230 r!26968))))))

(assert (=> b!3724102 (=> (not res!1513198) (not e!2305012))))

(declare-fun d!1089634 () Bool)

(declare-fun res!1513199 () Bool)

(assert (=> d!1089634 (=> res!1513199 e!2305013)))

(assert (=> d!1089634 (= res!1513199 ((_ is ElementMatch!10901) r!26968))))

(assert (=> d!1089634 (= (validRegex!5008 r!26968) e!2305013)))

(declare-fun b!3724099 () Bool)

(assert (=> b!3724099 (= e!2305011 call!271034)))

(assert (= (and d!1089634 (not res!1513199)) b!3724101))

(assert (= (and b!3724101 c!644257) b!3724102))

(assert (= (and b!3724101 (not c!644257)) b!3724096))

(assert (= (and b!3724102 res!1513198) b!3724098))

(assert (= (and b!3724096 c!644256) b!3724095))

(assert (= (and b!3724096 (not c!644256)) b!3724100))

(assert (= (and b!3724095 res!1513200) b!3724097))

(assert (= (and b!3724100 (not res!1513196)) b!3724094))

(assert (= (and b!3724094 res!1513197) b!3724099))

(assert (= (or b!3724097 b!3724099) bm!271028))

(assert (= (or b!3724095 b!3724094) bm!271029))

(assert (= (or b!3724098 bm!271029) bm!271027))

(declare-fun m!4226967 () Bool)

(assert (=> bm!271027 m!4226967))

(declare-fun m!4226969 () Bool)

(assert (=> bm!271028 m!4226969))

(declare-fun m!4226971 () Bool)

(assert (=> b!3724102 m!4226971))

(assert (=> start!350650 d!1089634))

(declare-fun d!1089640 () Bool)

(declare-fun lt!1298292 () Bool)

(assert (=> d!1089640 (= lt!1298292 (select (content!5758 (usedCharacters!1164 r!26968)) cNot!42))))

(declare-fun e!2305017 () Bool)

(assert (=> d!1089640 (= lt!1298292 e!2305017)))

(declare-fun res!1513202 () Bool)

(assert (=> d!1089640 (=> (not res!1513202) (not e!2305017))))

(assert (=> d!1089640 (= res!1513202 ((_ is Cons!39658) (usedCharacters!1164 r!26968)))))

(assert (=> d!1089640 (= (contains!7994 (usedCharacters!1164 r!26968) cNot!42) lt!1298292)))

(declare-fun b!3724107 () Bool)

(declare-fun e!2305018 () Bool)

(assert (=> b!3724107 (= e!2305017 e!2305018)))

(declare-fun res!1513201 () Bool)

(assert (=> b!3724107 (=> res!1513201 e!2305018)))

(assert (=> b!3724107 (= res!1513201 (= (h!45078 (usedCharacters!1164 r!26968)) cNot!42))))

(declare-fun b!3724108 () Bool)

(assert (=> b!3724108 (= e!2305018 (contains!7994 (t!302465 (usedCharacters!1164 r!26968)) cNot!42))))

(assert (= (and d!1089640 res!1513202) b!3724107))

(assert (= (and b!3724107 (not res!1513201)) b!3724108))

(assert (=> d!1089640 m!4226899))

(declare-fun m!4226973 () Bool)

(assert (=> d!1089640 m!4226973))

(declare-fun m!4226975 () Bool)

(assert (=> d!1089640 m!4226975))

(declare-fun m!4226977 () Bool)

(assert (=> b!3724108 m!4226977))

(assert (=> b!3723909 d!1089640))

(declare-fun d!1089642 () Bool)

(declare-fun c!644260 () Bool)

(assert (=> d!1089642 (= c!644260 (or ((_ is EmptyExpr!10901) r!26968) ((_ is EmptyLang!10901) r!26968)))))

(declare-fun e!2305023 () List!39782)

(assert (=> d!1089642 (= (usedCharacters!1164 r!26968) e!2305023)))

(declare-fun b!3724117 () Bool)

(assert (=> b!3724117 (= e!2305023 Nil!39658)))

(declare-fun call!271035 () List!39782)

(declare-fun c!644258 () Bool)

(declare-fun c!644259 () Bool)

(declare-fun bm!271030 () Bool)

(assert (=> bm!271030 (= call!271035 (usedCharacters!1164 (ite c!644258 (reg!11230 r!26968) (ite c!644259 (regOne!22315 r!26968) (regTwo!22314 r!26968)))))))

(declare-fun b!3724118 () Bool)

(declare-fun e!2305021 () List!39782)

(assert (=> b!3724118 (= e!2305021 call!271035)))

(declare-fun bm!271031 () Bool)

(declare-fun call!271037 () List!39782)

(assert (=> bm!271031 (= call!271037 call!271035)))

(declare-fun bm!271032 () Bool)

(declare-fun call!271038 () List!39782)

(assert (=> bm!271032 (= call!271038 (usedCharacters!1164 (ite c!644259 (regTwo!22315 r!26968) (regOne!22314 r!26968))))))

(declare-fun bm!271033 () Bool)

(declare-fun call!271036 () List!39782)

(assert (=> bm!271033 (= call!271036 (++!9825 (ite c!644259 call!271037 call!271038) (ite c!644259 call!271038 call!271037)))))

(declare-fun b!3724119 () Bool)

(declare-fun e!2305022 () List!39782)

(assert (=> b!3724119 (= e!2305022 call!271036)))

(declare-fun b!3724120 () Bool)

(assert (=> b!3724120 (= e!2305021 e!2305022)))

(assert (=> b!3724120 (= c!644259 ((_ is Union!10901) r!26968))))

(declare-fun b!3724121 () Bool)

(assert (=> b!3724121 (= c!644258 ((_ is Star!10901) r!26968))))

(declare-fun e!2305024 () List!39782)

(assert (=> b!3724121 (= e!2305024 e!2305021)))

(declare-fun b!3724122 () Bool)

(assert (=> b!3724122 (= e!2305024 (Cons!39658 (c!644187 r!26968) Nil!39658))))

(declare-fun b!3724123 () Bool)

(assert (=> b!3724123 (= e!2305022 call!271036)))

(declare-fun b!3724124 () Bool)

(assert (=> b!3724124 (= e!2305023 e!2305024)))

(declare-fun c!644261 () Bool)

(assert (=> b!3724124 (= c!644261 ((_ is ElementMatch!10901) r!26968))))

(assert (= (and d!1089642 c!644260) b!3724117))

(assert (= (and d!1089642 (not c!644260)) b!3724124))

(assert (= (and b!3724124 c!644261) b!3724122))

(assert (= (and b!3724124 (not c!644261)) b!3724121))

(assert (= (and b!3724121 c!644258) b!3724118))

(assert (= (and b!3724121 (not c!644258)) b!3724120))

(assert (= (and b!3724120 c!644259) b!3724119))

(assert (= (and b!3724120 (not c!644259)) b!3724123))

(assert (= (or b!3724119 b!3724123) bm!271031))

(assert (= (or b!3724119 b!3724123) bm!271032))

(assert (= (or b!3724119 b!3724123) bm!271033))

(assert (= (or b!3724118 bm!271031) bm!271030))

(declare-fun m!4226979 () Bool)

(assert (=> bm!271030 m!4226979))

(declare-fun m!4226981 () Bool)

(assert (=> bm!271032 m!4226981))

(declare-fun m!4226983 () Bool)

(assert (=> bm!271033 m!4226983))

(assert (=> b!3723909 d!1089642))

(declare-fun b!3724150 () Bool)

(declare-fun e!2305030 () Bool)

(declare-fun tp!1132732 () Bool)

(declare-fun tp!1132734 () Bool)

(assert (=> b!3724150 (= e!2305030 (and tp!1132732 tp!1132734))))

(assert (=> b!3723910 (= tp!1132681 e!2305030)))

(declare-fun b!3724148 () Bool)

(declare-fun tp!1132731 () Bool)

(declare-fun tp!1132730 () Bool)

(assert (=> b!3724148 (= e!2305030 (and tp!1132731 tp!1132730))))

(declare-fun b!3724147 () Bool)

(assert (=> b!3724147 (= e!2305030 tp_is_empty!18817)))

(declare-fun b!3724149 () Bool)

(declare-fun tp!1132733 () Bool)

(assert (=> b!3724149 (= e!2305030 tp!1132733)))

(assert (= (and b!3723910 ((_ is ElementMatch!10901) (regOne!22315 r!26968))) b!3724147))

(assert (= (and b!3723910 ((_ is Concat!17172) (regOne!22315 r!26968))) b!3724148))

(assert (= (and b!3723910 ((_ is Star!10901) (regOne!22315 r!26968))) b!3724149))

(assert (= (and b!3723910 ((_ is Union!10901) (regOne!22315 r!26968))) b!3724150))

(declare-fun b!3724154 () Bool)

(declare-fun e!2305031 () Bool)

(declare-fun tp!1132737 () Bool)

(declare-fun tp!1132739 () Bool)

(assert (=> b!3724154 (= e!2305031 (and tp!1132737 tp!1132739))))

(assert (=> b!3723910 (= tp!1132680 e!2305031)))

(declare-fun b!3724152 () Bool)

(declare-fun tp!1132736 () Bool)

(declare-fun tp!1132735 () Bool)

(assert (=> b!3724152 (= e!2305031 (and tp!1132736 tp!1132735))))

(declare-fun b!3724151 () Bool)

(assert (=> b!3724151 (= e!2305031 tp_is_empty!18817)))

(declare-fun b!3724153 () Bool)

(declare-fun tp!1132738 () Bool)

(assert (=> b!3724153 (= e!2305031 tp!1132738)))

(assert (= (and b!3723910 ((_ is ElementMatch!10901) (regTwo!22315 r!26968))) b!3724151))

(assert (= (and b!3723910 ((_ is Concat!17172) (regTwo!22315 r!26968))) b!3724152))

(assert (= (and b!3723910 ((_ is Star!10901) (regTwo!22315 r!26968))) b!3724153))

(assert (= (and b!3723910 ((_ is Union!10901) (regTwo!22315 r!26968))) b!3724154))

(declare-fun b!3724158 () Bool)

(declare-fun e!2305032 () Bool)

(declare-fun tp!1132742 () Bool)

(declare-fun tp!1132744 () Bool)

(assert (=> b!3724158 (= e!2305032 (and tp!1132742 tp!1132744))))

(assert (=> b!3723906 (= tp!1132684 e!2305032)))

(declare-fun b!3724156 () Bool)

(declare-fun tp!1132741 () Bool)

(declare-fun tp!1132740 () Bool)

(assert (=> b!3724156 (= e!2305032 (and tp!1132741 tp!1132740))))

(declare-fun b!3724155 () Bool)

(assert (=> b!3724155 (= e!2305032 tp_is_empty!18817)))

(declare-fun b!3724157 () Bool)

(declare-fun tp!1132743 () Bool)

(assert (=> b!3724157 (= e!2305032 tp!1132743)))

(assert (= (and b!3723906 ((_ is ElementMatch!10901) (reg!11230 r!26968))) b!3724155))

(assert (= (and b!3723906 ((_ is Concat!17172) (reg!11230 r!26968))) b!3724156))

(assert (= (and b!3723906 ((_ is Star!10901) (reg!11230 r!26968))) b!3724157))

(assert (= (and b!3723906 ((_ is Union!10901) (reg!11230 r!26968))) b!3724158))

(declare-fun b!3724162 () Bool)

(declare-fun e!2305033 () Bool)

(declare-fun tp!1132747 () Bool)

(declare-fun tp!1132749 () Bool)

(assert (=> b!3724162 (= e!2305033 (and tp!1132747 tp!1132749))))

(assert (=> b!3723908 (= tp!1132683 e!2305033)))

(declare-fun b!3724160 () Bool)

(declare-fun tp!1132746 () Bool)

(declare-fun tp!1132745 () Bool)

(assert (=> b!3724160 (= e!2305033 (and tp!1132746 tp!1132745))))

(declare-fun b!3724159 () Bool)

(assert (=> b!3724159 (= e!2305033 tp_is_empty!18817)))

(declare-fun b!3724161 () Bool)

(declare-fun tp!1132748 () Bool)

(assert (=> b!3724161 (= e!2305033 tp!1132748)))

(assert (= (and b!3723908 ((_ is ElementMatch!10901) (regOne!22314 r!26968))) b!3724159))

(assert (= (and b!3723908 ((_ is Concat!17172) (regOne!22314 r!26968))) b!3724160))

(assert (= (and b!3723908 ((_ is Star!10901) (regOne!22314 r!26968))) b!3724161))

(assert (= (and b!3723908 ((_ is Union!10901) (regOne!22314 r!26968))) b!3724162))

(declare-fun b!3724166 () Bool)

(declare-fun e!2305034 () Bool)

(declare-fun tp!1132752 () Bool)

(declare-fun tp!1132754 () Bool)

(assert (=> b!3724166 (= e!2305034 (and tp!1132752 tp!1132754))))

(assert (=> b!3723908 (= tp!1132682 e!2305034)))

(declare-fun b!3724164 () Bool)

(declare-fun tp!1132751 () Bool)

(declare-fun tp!1132750 () Bool)

(assert (=> b!3724164 (= e!2305034 (and tp!1132751 tp!1132750))))

(declare-fun b!3724163 () Bool)

(assert (=> b!3724163 (= e!2305034 tp_is_empty!18817)))

(declare-fun b!3724165 () Bool)

(declare-fun tp!1132753 () Bool)

(assert (=> b!3724165 (= e!2305034 tp!1132753)))

(assert (= (and b!3723908 ((_ is ElementMatch!10901) (regTwo!22314 r!26968))) b!3724163))

(assert (= (and b!3723908 ((_ is Concat!17172) (regTwo!22314 r!26968))) b!3724164))

(assert (= (and b!3723908 ((_ is Star!10901) (regTwo!22314 r!26968))) b!3724165))

(assert (= (and b!3723908 ((_ is Union!10901) (regTwo!22314 r!26968))) b!3724166))

(check-sat (not b!3724157) (not b!3724161) tp_is_empty!18817 (not d!1089640) (not b!3724148) (not b!3723924) (not bm!271027) (not b!3724108) (not b!3724164) (not bm!271033) (not b!3724158) (not b!3724166) (not bm!270980) (not b!3724154) (not bm!270983) (not d!1089630) (not bm!271004) (not bm!271032) (not b!3724149) (not b!3724102) (not b!3724165) (not b!3724152) (not bm!271007) (not d!1089622) (not b!3724156) (not bm!271028) (not b!3724150) (not bm!270982) (not bm!271030) (not b!3724162) (not b!3724153) (not b!3724032) (not b!3724160))
(check-sat)
