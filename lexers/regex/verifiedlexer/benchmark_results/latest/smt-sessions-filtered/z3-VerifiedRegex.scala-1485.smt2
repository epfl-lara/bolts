; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79274 () Bool)

(assert start!79274)

(declare-fun res!398806 () Bool)

(declare-fun e!576275 () Bool)

(assert (=> start!79274 (=> (not res!398806) (not e!576275))))

(declare-datatypes ((C!5028 0))(
  ( (C!5029 (val!2762 Int)) )
))
(declare-datatypes ((Regex!2229 0))(
  ( (ElementMatch!2229 (c!141806 C!5028)) (Concat!4062 (regOne!4970 Regex!2229) (regTwo!4970 Regex!2229)) (EmptyExpr!2229) (Star!2229 (reg!2558 Regex!2229)) (EmptyLang!2229) (Union!2229 (regOne!4971 Regex!2229) (regTwo!4971 Regex!2229)) )
))
(declare-fun r!15766 () Regex!2229)

(declare-fun validRegex!698 (Regex!2229) Bool)

(assert (=> start!79274 (= res!398806 (validRegex!698 r!15766))))

(assert (=> start!79274 e!576275))

(declare-fun e!576276 () Bool)

(assert (=> start!79274 e!576276))

(declare-fun e!576274 () Bool)

(assert (=> start!79274 e!576274))

(declare-fun b!876998 () Bool)

(declare-fun e!576277 () Bool)

(assert (=> b!876998 (= e!576275 (not e!576277))))

(declare-fun res!398805 () Bool)

(assert (=> b!876998 (=> res!398805 e!576277)))

(declare-fun lt!329986 () Bool)

(get-info :version)

(assert (=> b!876998 (= res!398805 (or (not lt!329986) (and ((_ is Concat!4062) r!15766) ((_ is EmptyExpr!2229) (regOne!4970 r!15766))) (not ((_ is Concat!4062) r!15766)) (not ((_ is EmptyExpr!2229) (regTwo!4970 r!15766)))))))

(declare-datatypes ((List!9459 0))(
  ( (Nil!9443) (Cons!9443 (h!14844 C!5028) (t!100505 List!9459)) )
))
(declare-fun s!10566 () List!9459)

(declare-fun matchRSpec!30 (Regex!2229 List!9459) Bool)

(assert (=> b!876998 (= lt!329986 (matchRSpec!30 r!15766 s!10566))))

(declare-fun matchR!767 (Regex!2229 List!9459) Bool)

(assert (=> b!876998 (= lt!329986 (matchR!767 r!15766 s!10566))))

(declare-datatypes ((Unit!14037 0))(
  ( (Unit!14038) )
))
(declare-fun lt!329987 () Unit!14037)

(declare-fun mainMatchTheorem!30 (Regex!2229 List!9459) Unit!14037)

(assert (=> b!876998 (= lt!329987 (mainMatchTheorem!30 r!15766 s!10566))))

(declare-fun b!876999 () Bool)

(declare-fun tp!277266 () Bool)

(assert (=> b!876999 (= e!576276 tp!277266)))

(declare-fun b!877000 () Bool)

(declare-fun tp!277267 () Bool)

(declare-fun tp!277265 () Bool)

(assert (=> b!877000 (= e!576276 (and tp!277267 tp!277265))))

(declare-fun b!877001 () Bool)

(declare-fun removeUselessConcat!8 (Regex!2229) Regex!2229)

(assert (=> b!877001 (= e!576277 (validRegex!698 (removeUselessConcat!8 r!15766)))))

(declare-fun b!877002 () Bool)

(declare-fun tp_is_empty!4101 () Bool)

(declare-fun tp!277264 () Bool)

(assert (=> b!877002 (= e!576274 (and tp_is_empty!4101 tp!277264))))

(declare-fun b!877003 () Bool)

(assert (=> b!877003 (= e!576276 tp_is_empty!4101)))

(declare-fun b!877004 () Bool)

(declare-fun tp!277263 () Bool)

(declare-fun tp!277268 () Bool)

(assert (=> b!877004 (= e!576276 (and tp!277263 tp!277268))))

(declare-fun b!877005 () Bool)

(declare-fun res!398804 () Bool)

(assert (=> b!877005 (=> res!398804 e!576277)))

(declare-fun isEmpty!5634 (List!9459) Bool)

(assert (=> b!877005 (= res!398804 (not (isEmpty!5634 s!10566)))))

(assert (= (and start!79274 res!398806) b!876998))

(assert (= (and b!876998 (not res!398805)) b!877005))

(assert (= (and b!877005 (not res!398804)) b!877001))

(assert (= (and start!79274 ((_ is ElementMatch!2229) r!15766)) b!877003))

(assert (= (and start!79274 ((_ is Concat!4062) r!15766)) b!877004))

(assert (= (and start!79274 ((_ is Star!2229) r!15766)) b!876999))

(assert (= (and start!79274 ((_ is Union!2229) r!15766)) b!877000))

(assert (= (and start!79274 ((_ is Cons!9443) s!10566)) b!877002))

(declare-fun m!1127575 () Bool)

(assert (=> start!79274 m!1127575))

(declare-fun m!1127577 () Bool)

(assert (=> b!876998 m!1127577))

(declare-fun m!1127579 () Bool)

(assert (=> b!876998 m!1127579))

(declare-fun m!1127581 () Bool)

(assert (=> b!876998 m!1127581))

(declare-fun m!1127583 () Bool)

(assert (=> b!877001 m!1127583))

(assert (=> b!877001 m!1127583))

(declare-fun m!1127585 () Bool)

(assert (=> b!877001 m!1127585))

(declare-fun m!1127587 () Bool)

(assert (=> b!877005 m!1127587))

(check-sat (not b!876998) (not b!877004) tp_is_empty!4101 (not b!877001) (not b!877000) (not b!877005) (not start!79274) (not b!877002) (not b!876999))
(check-sat)
(get-model)

(declare-fun c!141815 () Bool)

(declare-fun bm!51041 () Bool)

(declare-fun call!51047 () Bool)

(declare-fun c!141816 () Bool)

(assert (=> bm!51041 (= call!51047 (validRegex!698 (ite c!141816 (reg!2558 (removeUselessConcat!8 r!15766)) (ite c!141815 (regOne!4971 (removeUselessConcat!8 r!15766)) (regOne!4970 (removeUselessConcat!8 r!15766))))))))

(declare-fun b!877034 () Bool)

(declare-fun e!576303 () Bool)

(declare-fun e!576298 () Bool)

(assert (=> b!877034 (= e!576303 e!576298)))

(declare-fun res!398821 () Bool)

(declare-fun nullable!560 (Regex!2229) Bool)

(assert (=> b!877034 (= res!398821 (not (nullable!560 (reg!2558 (removeUselessConcat!8 r!15766)))))))

(assert (=> b!877034 (=> (not res!398821) (not e!576298))))

(declare-fun bm!51042 () Bool)

(declare-fun call!51048 () Bool)

(assert (=> bm!51042 (= call!51048 (validRegex!698 (ite c!141815 (regTwo!4971 (removeUselessConcat!8 r!15766)) (regTwo!4970 (removeUselessConcat!8 r!15766)))))))

(declare-fun b!877036 () Bool)

(declare-fun e!576304 () Bool)

(assert (=> b!877036 (= e!576304 call!51048)))

(declare-fun bm!51043 () Bool)

(declare-fun call!51046 () Bool)

(assert (=> bm!51043 (= call!51046 call!51047)))

(declare-fun b!877037 () Bool)

(declare-fun e!576301 () Bool)

(assert (=> b!877037 (= e!576301 e!576304)))

(declare-fun res!398820 () Bool)

(assert (=> b!877037 (=> (not res!398820) (not e!576304))))

(assert (=> b!877037 (= res!398820 call!51046)))

(declare-fun b!877041 () Bool)

(declare-fun res!398822 () Bool)

(assert (=> b!877041 (=> res!398822 e!576301)))

(assert (=> b!877041 (= res!398822 (not ((_ is Concat!4062) (removeUselessConcat!8 r!15766))))))

(declare-fun e!576300 () Bool)

(assert (=> b!877041 (= e!576300 e!576301)))

(declare-fun b!877035 () Bool)

(declare-fun res!398819 () Bool)

(declare-fun e!576299 () Bool)

(assert (=> b!877035 (=> (not res!398819) (not e!576299))))

(assert (=> b!877035 (= res!398819 call!51046)))

(assert (=> b!877035 (= e!576300 e!576299)))

(declare-fun d!275978 () Bool)

(declare-fun res!398823 () Bool)

(declare-fun e!576302 () Bool)

(assert (=> d!275978 (=> res!398823 e!576302)))

(assert (=> d!275978 (= res!398823 ((_ is ElementMatch!2229) (removeUselessConcat!8 r!15766)))))

(assert (=> d!275978 (= (validRegex!698 (removeUselessConcat!8 r!15766)) e!576302)))

(declare-fun b!877043 () Bool)

(assert (=> b!877043 (= e!576302 e!576303)))

(assert (=> b!877043 (= c!141816 ((_ is Star!2229) (removeUselessConcat!8 r!15766)))))

(declare-fun b!877044 () Bool)

(assert (=> b!877044 (= e!576303 e!576300)))

(assert (=> b!877044 (= c!141815 ((_ is Union!2229) (removeUselessConcat!8 r!15766)))))

(declare-fun b!877045 () Bool)

(assert (=> b!877045 (= e!576298 call!51047)))

(declare-fun b!877046 () Bool)

(assert (=> b!877046 (= e!576299 call!51048)))

(assert (= (and d!275978 (not res!398823)) b!877043))

(assert (= (and b!877043 c!141816) b!877034))

(assert (= (and b!877043 (not c!141816)) b!877044))

(assert (= (and b!877034 res!398821) b!877045))

(assert (= (and b!877044 c!141815) b!877035))

(assert (= (and b!877044 (not c!141815)) b!877041))

(assert (= (and b!877035 res!398819) b!877046))

(assert (= (and b!877041 (not res!398822)) b!877037))

(assert (= (and b!877037 res!398820) b!877036))

(assert (= (or b!877046 b!877036) bm!51042))

(assert (= (or b!877035 b!877037) bm!51043))

(assert (= (or b!877045 bm!51043) bm!51041))

(declare-fun m!1127589 () Bool)

(assert (=> bm!51041 m!1127589))

(declare-fun m!1127591 () Bool)

(assert (=> b!877034 m!1127591))

(declare-fun m!1127593 () Bool)

(assert (=> bm!51042 m!1127593))

(assert (=> b!877001 d!275978))

(declare-fun bm!51054 () Bool)

(declare-fun call!51063 () Regex!2229)

(declare-fun c!141835 () Bool)

(assert (=> bm!51054 (= call!51063 (removeUselessConcat!8 (ite c!141835 (regOne!4970 r!15766) (regOne!4971 r!15766))))))

(declare-fun b!877077 () Bool)

(assert (=> b!877077 (= c!141835 ((_ is Concat!4062) r!15766))))

(declare-fun e!576330 () Regex!2229)

(declare-fun e!576325 () Regex!2229)

(assert (=> b!877077 (= e!576330 e!576325)))

(declare-fun bm!51055 () Bool)

(declare-fun call!51059 () Regex!2229)

(declare-fun call!51061 () Regex!2229)

(assert (=> bm!51055 (= call!51059 call!51061)))

(declare-fun b!877078 () Bool)

(declare-fun c!141832 () Bool)

(assert (=> b!877078 (= c!141832 ((_ is Star!2229) r!15766))))

(declare-fun e!576327 () Regex!2229)

(declare-fun e!576328 () Regex!2229)

(assert (=> b!877078 (= e!576327 e!576328)))

(declare-fun d!275982 () Bool)

(declare-fun e!576326 () Bool)

(assert (=> d!275982 e!576326))

(declare-fun res!398830 () Bool)

(assert (=> d!275982 (=> (not res!398830) (not e!576326))))

(declare-fun lt!329990 () Regex!2229)

(assert (=> d!275982 (= res!398830 (validRegex!698 lt!329990))))

(declare-fun e!576329 () Regex!2229)

(assert (=> d!275982 (= lt!329990 e!576329)))

(declare-fun c!141831 () Bool)

(assert (=> d!275982 (= c!141831 (and ((_ is Concat!4062) r!15766) ((_ is EmptyExpr!2229) (regOne!4970 r!15766))))))

(assert (=> d!275982 (validRegex!698 r!15766)))

(assert (=> d!275982 (= (removeUselessConcat!8 r!15766) lt!329990)))

(declare-fun b!877079 () Bool)

(declare-fun call!51062 () Regex!2229)

(assert (=> b!877079 (= e!576325 (Concat!4062 call!51063 call!51062))))

(declare-fun b!877080 () Bool)

(declare-fun call!51060 () Regex!2229)

(assert (=> b!877080 (= e!576327 (Union!2229 call!51063 call!51060))))

(declare-fun c!141833 () Bool)

(declare-fun c!141834 () Bool)

(declare-fun bm!51056 () Bool)

(assert (=> bm!51056 (= call!51061 (removeUselessConcat!8 (ite c!141831 (regTwo!4970 r!15766) (ite c!141834 (regOne!4970 r!15766) (ite c!141835 (regTwo!4970 r!15766) (ite c!141833 (regTwo!4971 r!15766) (reg!2558 r!15766)))))))))

(declare-fun b!877081 () Bool)

(assert (=> b!877081 (= e!576330 call!51059)))

(declare-fun bm!51057 () Bool)

(assert (=> bm!51057 (= call!51062 call!51059)))

(declare-fun b!877082 () Bool)

(assert (=> b!877082 (= e!576326 (= (nullable!560 lt!329990) (nullable!560 r!15766)))))

(declare-fun b!877083 () Bool)

(assert (=> b!877083 (= e!576325 e!576327)))

(assert (=> b!877083 (= c!141833 ((_ is Union!2229) r!15766))))

(declare-fun b!877084 () Bool)

(assert (=> b!877084 (= e!576328 (Star!2229 call!51060))))

(declare-fun b!877085 () Bool)

(assert (=> b!877085 (= e!576329 e!576330)))

(assert (=> b!877085 (= c!141834 (and ((_ is Concat!4062) r!15766) ((_ is EmptyExpr!2229) (regTwo!4970 r!15766))))))

(declare-fun bm!51058 () Bool)

(assert (=> bm!51058 (= call!51060 call!51062)))

(declare-fun b!877086 () Bool)

(assert (=> b!877086 (= e!576329 call!51061)))

(declare-fun b!877087 () Bool)

(assert (=> b!877087 (= e!576328 r!15766)))

(assert (= (and d!275982 c!141831) b!877086))

(assert (= (and d!275982 (not c!141831)) b!877085))

(assert (= (and b!877085 c!141834) b!877081))

(assert (= (and b!877085 (not c!141834)) b!877077))

(assert (= (and b!877077 c!141835) b!877079))

(assert (= (and b!877077 (not c!141835)) b!877083))

(assert (= (and b!877083 c!141833) b!877080))

(assert (= (and b!877083 (not c!141833)) b!877078))

(assert (= (and b!877078 c!141832) b!877084))

(assert (= (and b!877078 (not c!141832)) b!877087))

(assert (= (or b!877080 b!877084) bm!51058))

(assert (= (or b!877079 bm!51058) bm!51057))

(assert (= (or b!877079 b!877080) bm!51054))

(assert (= (or b!877081 bm!51057) bm!51055))

(assert (= (or b!877086 bm!51055) bm!51056))

(assert (= (and d!275982 res!398830) b!877082))

(declare-fun m!1127595 () Bool)

(assert (=> bm!51054 m!1127595))

(declare-fun m!1127597 () Bool)

(assert (=> d!275982 m!1127597))

(assert (=> d!275982 m!1127575))

(declare-fun m!1127599 () Bool)

(assert (=> bm!51056 m!1127599))

(declare-fun m!1127601 () Bool)

(assert (=> b!877082 m!1127601))

(declare-fun m!1127603 () Bool)

(assert (=> b!877082 m!1127603))

(assert (=> b!877001 d!275982))

(declare-fun c!141836 () Bool)

(declare-fun c!141837 () Bool)

(declare-fun bm!51059 () Bool)

(declare-fun call!51065 () Bool)

(assert (=> bm!51059 (= call!51065 (validRegex!698 (ite c!141837 (reg!2558 r!15766) (ite c!141836 (regOne!4971 r!15766) (regOne!4970 r!15766)))))))

(declare-fun b!877088 () Bool)

(declare-fun e!576336 () Bool)

(declare-fun e!576331 () Bool)

(assert (=> b!877088 (= e!576336 e!576331)))

(declare-fun res!398833 () Bool)

(assert (=> b!877088 (= res!398833 (not (nullable!560 (reg!2558 r!15766))))))

(assert (=> b!877088 (=> (not res!398833) (not e!576331))))

(declare-fun bm!51060 () Bool)

(declare-fun call!51066 () Bool)

(assert (=> bm!51060 (= call!51066 (validRegex!698 (ite c!141836 (regTwo!4971 r!15766) (regTwo!4970 r!15766))))))

(declare-fun b!877090 () Bool)

(declare-fun e!576337 () Bool)

(assert (=> b!877090 (= e!576337 call!51066)))

(declare-fun bm!51061 () Bool)

(declare-fun call!51064 () Bool)

(assert (=> bm!51061 (= call!51064 call!51065)))

(declare-fun b!877091 () Bool)

(declare-fun e!576334 () Bool)

(assert (=> b!877091 (= e!576334 e!576337)))

(declare-fun res!398832 () Bool)

(assert (=> b!877091 (=> (not res!398832) (not e!576337))))

(assert (=> b!877091 (= res!398832 call!51064)))

(declare-fun b!877092 () Bool)

(declare-fun res!398834 () Bool)

(assert (=> b!877092 (=> res!398834 e!576334)))

(assert (=> b!877092 (= res!398834 (not ((_ is Concat!4062) r!15766)))))

(declare-fun e!576333 () Bool)

(assert (=> b!877092 (= e!576333 e!576334)))

(declare-fun b!877089 () Bool)

(declare-fun res!398831 () Bool)

(declare-fun e!576332 () Bool)

(assert (=> b!877089 (=> (not res!398831) (not e!576332))))

(assert (=> b!877089 (= res!398831 call!51064)))

(assert (=> b!877089 (= e!576333 e!576332)))

(declare-fun d!275984 () Bool)

(declare-fun res!398835 () Bool)

(declare-fun e!576335 () Bool)

(assert (=> d!275984 (=> res!398835 e!576335)))

(assert (=> d!275984 (= res!398835 ((_ is ElementMatch!2229) r!15766))))

(assert (=> d!275984 (= (validRegex!698 r!15766) e!576335)))

(declare-fun b!877093 () Bool)

(assert (=> b!877093 (= e!576335 e!576336)))

(assert (=> b!877093 (= c!141837 ((_ is Star!2229) r!15766))))

(declare-fun b!877094 () Bool)

(assert (=> b!877094 (= e!576336 e!576333)))

(assert (=> b!877094 (= c!141836 ((_ is Union!2229) r!15766))))

(declare-fun b!877095 () Bool)

(assert (=> b!877095 (= e!576331 call!51065)))

(declare-fun b!877096 () Bool)

(assert (=> b!877096 (= e!576332 call!51066)))

(assert (= (and d!275984 (not res!398835)) b!877093))

(assert (= (and b!877093 c!141837) b!877088))

(assert (= (and b!877093 (not c!141837)) b!877094))

(assert (= (and b!877088 res!398833) b!877095))

(assert (= (and b!877094 c!141836) b!877089))

(assert (= (and b!877094 (not c!141836)) b!877092))

(assert (= (and b!877089 res!398831) b!877096))

(assert (= (and b!877092 (not res!398834)) b!877091))

(assert (= (and b!877091 res!398832) b!877090))

(assert (= (or b!877096 b!877090) bm!51060))

(assert (= (or b!877089 b!877091) bm!51061))

(assert (= (or b!877095 bm!51061) bm!51059))

(declare-fun m!1127605 () Bool)

(assert (=> bm!51059 m!1127605))

(declare-fun m!1127607 () Bool)

(assert (=> b!877088 m!1127607))

(declare-fun m!1127609 () Bool)

(assert (=> bm!51060 m!1127609))

(assert (=> start!79274 d!275984))

(declare-fun b!877307 () Bool)

(assert (=> b!877307 true))

(assert (=> b!877307 true))

(declare-fun bs!234160 () Bool)

(declare-fun b!877310 () Bool)

(assert (= bs!234160 (and b!877310 b!877307)))

(declare-fun lambda!26582 () Int)

(declare-fun lambda!26581 () Int)

(assert (=> bs!234160 (not (= lambda!26582 lambda!26581))))

(assert (=> b!877310 true))

(assert (=> b!877310 true))

(declare-fun d!275986 () Bool)

(declare-fun c!141882 () Bool)

(assert (=> d!275986 (= c!141882 ((_ is EmptyExpr!2229) r!15766))))

(declare-fun e!576449 () Bool)

(assert (=> d!275986 (= (matchRSpec!30 r!15766 s!10566) e!576449)))

(declare-fun b!877300 () Bool)

(declare-fun e!576444 () Bool)

(declare-fun e!576448 () Bool)

(assert (=> b!877300 (= e!576444 e!576448)))

(declare-fun res!398913 () Bool)

(assert (=> b!877300 (= res!398913 (matchRSpec!30 (regOne!4971 r!15766) s!10566))))

(assert (=> b!877300 (=> res!398913 e!576448)))

(declare-fun bm!51102 () Bool)

(declare-fun call!51107 () Bool)

(assert (=> bm!51102 (= call!51107 (isEmpty!5634 s!10566))))

(declare-fun b!877301 () Bool)

(declare-fun res!398914 () Bool)

(declare-fun e!576447 () Bool)

(assert (=> b!877301 (=> res!398914 e!576447)))

(assert (=> b!877301 (= res!398914 call!51107)))

(declare-fun e!576446 () Bool)

(assert (=> b!877301 (= e!576446 e!576447)))

(declare-fun b!877302 () Bool)

(declare-fun e!576445 () Bool)

(assert (=> b!877302 (= e!576445 (= s!10566 (Cons!9443 (c!141806 r!15766) Nil!9443)))))

(declare-fun b!877303 () Bool)

(declare-fun c!141884 () Bool)

(assert (=> b!877303 (= c!141884 ((_ is Union!2229) r!15766))))

(assert (=> b!877303 (= e!576445 e!576444)))

(declare-fun b!877304 () Bool)

(assert (=> b!877304 (= e!576448 (matchRSpec!30 (regTwo!4971 r!15766) s!10566))))

(declare-fun b!877305 () Bool)

(declare-fun e!576450 () Bool)

(assert (=> b!877305 (= e!576449 e!576450)))

(declare-fun res!398912 () Bool)

(assert (=> b!877305 (= res!398912 (not ((_ is EmptyLang!2229) r!15766)))))

(assert (=> b!877305 (=> (not res!398912) (not e!576450))))

(declare-fun b!877306 () Bool)

(declare-fun c!141883 () Bool)

(assert (=> b!877306 (= c!141883 ((_ is ElementMatch!2229) r!15766))))

(assert (=> b!877306 (= e!576450 e!576445)))

(declare-fun call!51108 () Bool)

(assert (=> b!877307 (= e!576447 call!51108)))

(declare-fun bm!51103 () Bool)

(declare-fun c!141885 () Bool)

(declare-fun Exists!28 (Int) Bool)

(assert (=> bm!51103 (= call!51108 (Exists!28 (ite c!141885 lambda!26581 lambda!26582)))))

(declare-fun b!877308 () Bool)

(assert (=> b!877308 (= e!576444 e!576446)))

(assert (=> b!877308 (= c!141885 ((_ is Star!2229) r!15766))))

(declare-fun b!877309 () Bool)

(assert (=> b!877309 (= e!576449 call!51107)))

(assert (=> b!877310 (= e!576446 call!51108)))

(assert (= (and d!275986 c!141882) b!877309))

(assert (= (and d!275986 (not c!141882)) b!877305))

(assert (= (and b!877305 res!398912) b!877306))

(assert (= (and b!877306 c!141883) b!877302))

(assert (= (and b!877306 (not c!141883)) b!877303))

(assert (= (and b!877303 c!141884) b!877300))

(assert (= (and b!877303 (not c!141884)) b!877308))

(assert (= (and b!877300 (not res!398913)) b!877304))

(assert (= (and b!877308 c!141885) b!877301))

(assert (= (and b!877308 (not c!141885)) b!877310))

(assert (= (and b!877301 (not res!398914)) b!877307))

(assert (= (or b!877307 b!877310) bm!51103))

(assert (= (or b!877309 b!877301) bm!51102))

(declare-fun m!1127651 () Bool)

(assert (=> b!877300 m!1127651))

(assert (=> bm!51102 m!1127587))

(declare-fun m!1127653 () Bool)

(assert (=> b!877304 m!1127653))

(declare-fun m!1127655 () Bool)

(assert (=> bm!51103 m!1127655))

(assert (=> b!876998 d!275986))

(declare-fun b!877343 () Bool)

(declare-fun e!576471 () Bool)

(declare-fun e!576468 () Bool)

(assert (=> b!877343 (= e!576471 e!576468)))

(declare-fun res!398936 () Bool)

(assert (=> b!877343 (=> res!398936 e!576468)))

(declare-fun call!51111 () Bool)

(assert (=> b!877343 (= res!398936 call!51111)))

(declare-fun b!877345 () Bool)

(declare-fun res!398938 () Bool)

(declare-fun e!576469 () Bool)

(assert (=> b!877345 (=> (not res!398938) (not e!576469))))

(assert (=> b!877345 (= res!398938 (not call!51111))))

(declare-fun b!877346 () Bool)

(declare-fun res!398931 () Bool)

(assert (=> b!877346 (=> res!398931 e!576468)))

(declare-fun tail!1089 (List!9459) List!9459)

(assert (=> b!877346 (= res!398931 (not (isEmpty!5634 (tail!1089 s!10566))))))

(declare-fun b!877347 () Bool)

(declare-fun e!576467 () Bool)

(declare-fun derivativeStep!374 (Regex!2229 C!5028) Regex!2229)

(declare-fun head!1527 (List!9459) C!5028)

(assert (=> b!877347 (= e!576467 (matchR!767 (derivativeStep!374 r!15766 (head!1527 s!10566)) (tail!1089 s!10566)))))

(declare-fun b!877348 () Bool)

(assert (=> b!877348 (= e!576467 (nullable!560 r!15766))))

(declare-fun b!877349 () Bool)

(declare-fun e!576470 () Bool)

(declare-fun lt!330002 () Bool)

(assert (=> b!877349 (= e!576470 (not lt!330002))))

(declare-fun d!276000 () Bool)

(declare-fun e!576465 () Bool)

(assert (=> d!276000 e!576465))

(declare-fun c!141893 () Bool)

(assert (=> d!276000 (= c!141893 ((_ is EmptyExpr!2229) r!15766))))

(assert (=> d!276000 (= lt!330002 e!576467)))

(declare-fun c!141892 () Bool)

(assert (=> d!276000 (= c!141892 (isEmpty!5634 s!10566))))

(assert (=> d!276000 (validRegex!698 r!15766)))

(assert (=> d!276000 (= (matchR!767 r!15766 s!10566) lt!330002)))

(declare-fun b!877344 () Bool)

(assert (=> b!877344 (= e!576465 (= lt!330002 call!51111))))

(declare-fun b!877350 () Bool)

(declare-fun res!398933 () Bool)

(assert (=> b!877350 (=> (not res!398933) (not e!576469))))

(assert (=> b!877350 (= res!398933 (isEmpty!5634 (tail!1089 s!10566)))))

(declare-fun b!877351 () Bool)

(assert (=> b!877351 (= e!576465 e!576470)))

(declare-fun c!141894 () Bool)

(assert (=> b!877351 (= c!141894 ((_ is EmptyLang!2229) r!15766))))

(declare-fun b!877352 () Bool)

(declare-fun res!398935 () Bool)

(declare-fun e!576466 () Bool)

(assert (=> b!877352 (=> res!398935 e!576466)))

(assert (=> b!877352 (= res!398935 e!576469)))

(declare-fun res!398937 () Bool)

(assert (=> b!877352 (=> (not res!398937) (not e!576469))))

(assert (=> b!877352 (= res!398937 lt!330002)))

(declare-fun b!877353 () Bool)

(assert (=> b!877353 (= e!576469 (= (head!1527 s!10566) (c!141806 r!15766)))))

(declare-fun b!877354 () Bool)

(assert (=> b!877354 (= e!576468 (not (= (head!1527 s!10566) (c!141806 r!15766))))))

(declare-fun b!877355 () Bool)

(declare-fun res!398934 () Bool)

(assert (=> b!877355 (=> res!398934 e!576466)))

(assert (=> b!877355 (= res!398934 (not ((_ is ElementMatch!2229) r!15766)))))

(assert (=> b!877355 (= e!576470 e!576466)))

(declare-fun b!877356 () Bool)

(assert (=> b!877356 (= e!576466 e!576471)))

(declare-fun res!398932 () Bool)

(assert (=> b!877356 (=> (not res!398932) (not e!576471))))

(assert (=> b!877356 (= res!398932 (not lt!330002))))

(declare-fun bm!51106 () Bool)

(assert (=> bm!51106 (= call!51111 (isEmpty!5634 s!10566))))

(assert (= (and d!276000 c!141892) b!877348))

(assert (= (and d!276000 (not c!141892)) b!877347))

(assert (= (and d!276000 c!141893) b!877344))

(assert (= (and d!276000 (not c!141893)) b!877351))

(assert (= (and b!877351 c!141894) b!877349))

(assert (= (and b!877351 (not c!141894)) b!877355))

(assert (= (and b!877355 (not res!398934)) b!877352))

(assert (= (and b!877352 res!398937) b!877345))

(assert (= (and b!877345 res!398938) b!877350))

(assert (= (and b!877350 res!398933) b!877353))

(assert (= (and b!877352 (not res!398935)) b!877356))

(assert (= (and b!877356 res!398932) b!877343))

(assert (= (and b!877343 (not res!398936)) b!877346))

(assert (= (and b!877346 (not res!398931)) b!877354))

(assert (= (or b!877344 b!877343 b!877345) bm!51106))

(assert (=> bm!51106 m!1127587))

(declare-fun m!1127657 () Bool)

(assert (=> b!877347 m!1127657))

(assert (=> b!877347 m!1127657))

(declare-fun m!1127659 () Bool)

(assert (=> b!877347 m!1127659))

(declare-fun m!1127661 () Bool)

(assert (=> b!877347 m!1127661))

(assert (=> b!877347 m!1127659))

(assert (=> b!877347 m!1127661))

(declare-fun m!1127663 () Bool)

(assert (=> b!877347 m!1127663))

(assert (=> b!877346 m!1127661))

(assert (=> b!877346 m!1127661))

(declare-fun m!1127665 () Bool)

(assert (=> b!877346 m!1127665))

(assert (=> b!877350 m!1127661))

(assert (=> b!877350 m!1127661))

(assert (=> b!877350 m!1127665))

(assert (=> b!877353 m!1127657))

(assert (=> b!877348 m!1127603))

(assert (=> d!276000 m!1127587))

(assert (=> d!276000 m!1127575))

(assert (=> b!877354 m!1127657))

(assert (=> b!876998 d!276000))

(declare-fun d!276002 () Bool)

(assert (=> d!276002 (= (matchR!767 r!15766 s!10566) (matchRSpec!30 r!15766 s!10566))))

(declare-fun lt!330005 () Unit!14037)

(declare-fun choose!5171 (Regex!2229 List!9459) Unit!14037)

(assert (=> d!276002 (= lt!330005 (choose!5171 r!15766 s!10566))))

(assert (=> d!276002 (validRegex!698 r!15766)))

(assert (=> d!276002 (= (mainMatchTheorem!30 r!15766 s!10566) lt!330005)))

(declare-fun bs!234161 () Bool)

(assert (= bs!234161 d!276002))

(assert (=> bs!234161 m!1127579))

(assert (=> bs!234161 m!1127577))

(declare-fun m!1127667 () Bool)

(assert (=> bs!234161 m!1127667))

(assert (=> bs!234161 m!1127575))

(assert (=> b!876998 d!276002))

(declare-fun d!276004 () Bool)

(assert (=> d!276004 (= (isEmpty!5634 s!10566) ((_ is Nil!9443) s!10566))))

(assert (=> b!877005 d!276004))

(declare-fun b!877369 () Bool)

(declare-fun e!576474 () Bool)

(declare-fun tp!277317 () Bool)

(assert (=> b!877369 (= e!576474 tp!277317)))

(declare-fun b!877367 () Bool)

(assert (=> b!877367 (= e!576474 tp_is_empty!4101)))

(declare-fun b!877370 () Bool)

(declare-fun tp!277321 () Bool)

(declare-fun tp!277320 () Bool)

(assert (=> b!877370 (= e!576474 (and tp!277321 tp!277320))))

(assert (=> b!877000 (= tp!277267 e!576474)))

(declare-fun b!877368 () Bool)

(declare-fun tp!277319 () Bool)

(declare-fun tp!277318 () Bool)

(assert (=> b!877368 (= e!576474 (and tp!277319 tp!277318))))

(assert (= (and b!877000 ((_ is ElementMatch!2229) (regOne!4971 r!15766))) b!877367))

(assert (= (and b!877000 ((_ is Concat!4062) (regOne!4971 r!15766))) b!877368))

(assert (= (and b!877000 ((_ is Star!2229) (regOne!4971 r!15766))) b!877369))

(assert (= (and b!877000 ((_ is Union!2229) (regOne!4971 r!15766))) b!877370))

(declare-fun b!877373 () Bool)

(declare-fun e!576475 () Bool)

(declare-fun tp!277322 () Bool)

(assert (=> b!877373 (= e!576475 tp!277322)))

(declare-fun b!877371 () Bool)

(assert (=> b!877371 (= e!576475 tp_is_empty!4101)))

(declare-fun b!877374 () Bool)

(declare-fun tp!277326 () Bool)

(declare-fun tp!277325 () Bool)

(assert (=> b!877374 (= e!576475 (and tp!277326 tp!277325))))

(assert (=> b!877000 (= tp!277265 e!576475)))

(declare-fun b!877372 () Bool)

(declare-fun tp!277324 () Bool)

(declare-fun tp!277323 () Bool)

(assert (=> b!877372 (= e!576475 (and tp!277324 tp!277323))))

(assert (= (and b!877000 ((_ is ElementMatch!2229) (regTwo!4971 r!15766))) b!877371))

(assert (= (and b!877000 ((_ is Concat!4062) (regTwo!4971 r!15766))) b!877372))

(assert (= (and b!877000 ((_ is Star!2229) (regTwo!4971 r!15766))) b!877373))

(assert (= (and b!877000 ((_ is Union!2229) (regTwo!4971 r!15766))) b!877374))

(declare-fun b!877379 () Bool)

(declare-fun e!576478 () Bool)

(declare-fun tp!277329 () Bool)

(assert (=> b!877379 (= e!576478 (and tp_is_empty!4101 tp!277329))))

(assert (=> b!877002 (= tp!277264 e!576478)))

(assert (= (and b!877002 ((_ is Cons!9443) (t!100505 s!10566))) b!877379))

(declare-fun b!877382 () Bool)

(declare-fun e!576479 () Bool)

(declare-fun tp!277330 () Bool)

(assert (=> b!877382 (= e!576479 tp!277330)))

(declare-fun b!877380 () Bool)

(assert (=> b!877380 (= e!576479 tp_is_empty!4101)))

(declare-fun b!877383 () Bool)

(declare-fun tp!277334 () Bool)

(declare-fun tp!277333 () Bool)

(assert (=> b!877383 (= e!576479 (and tp!277334 tp!277333))))

(assert (=> b!876999 (= tp!277266 e!576479)))

(declare-fun b!877381 () Bool)

(declare-fun tp!277332 () Bool)

(declare-fun tp!277331 () Bool)

(assert (=> b!877381 (= e!576479 (and tp!277332 tp!277331))))

(assert (= (and b!876999 ((_ is ElementMatch!2229) (reg!2558 r!15766))) b!877380))

(assert (= (and b!876999 ((_ is Concat!4062) (reg!2558 r!15766))) b!877381))

(assert (= (and b!876999 ((_ is Star!2229) (reg!2558 r!15766))) b!877382))

(assert (= (and b!876999 ((_ is Union!2229) (reg!2558 r!15766))) b!877383))

(declare-fun b!877386 () Bool)

(declare-fun e!576480 () Bool)

(declare-fun tp!277335 () Bool)

(assert (=> b!877386 (= e!576480 tp!277335)))

(declare-fun b!877384 () Bool)

(assert (=> b!877384 (= e!576480 tp_is_empty!4101)))

(declare-fun b!877387 () Bool)

(declare-fun tp!277339 () Bool)

(declare-fun tp!277338 () Bool)

(assert (=> b!877387 (= e!576480 (and tp!277339 tp!277338))))

(assert (=> b!877004 (= tp!277263 e!576480)))

(declare-fun b!877385 () Bool)

(declare-fun tp!277337 () Bool)

(declare-fun tp!277336 () Bool)

(assert (=> b!877385 (= e!576480 (and tp!277337 tp!277336))))

(assert (= (and b!877004 ((_ is ElementMatch!2229) (regOne!4970 r!15766))) b!877384))

(assert (= (and b!877004 ((_ is Concat!4062) (regOne!4970 r!15766))) b!877385))

(assert (= (and b!877004 ((_ is Star!2229) (regOne!4970 r!15766))) b!877386))

(assert (= (and b!877004 ((_ is Union!2229) (regOne!4970 r!15766))) b!877387))

(declare-fun b!877390 () Bool)

(declare-fun e!576481 () Bool)

(declare-fun tp!277340 () Bool)

(assert (=> b!877390 (= e!576481 tp!277340)))

(declare-fun b!877388 () Bool)

(assert (=> b!877388 (= e!576481 tp_is_empty!4101)))

(declare-fun b!877391 () Bool)

(declare-fun tp!277344 () Bool)

(declare-fun tp!277343 () Bool)

(assert (=> b!877391 (= e!576481 (and tp!277344 tp!277343))))

(assert (=> b!877004 (= tp!277268 e!576481)))

(declare-fun b!877389 () Bool)

(declare-fun tp!277342 () Bool)

(declare-fun tp!277341 () Bool)

(assert (=> b!877389 (= e!576481 (and tp!277342 tp!277341))))

(assert (= (and b!877004 ((_ is ElementMatch!2229) (regTwo!4970 r!15766))) b!877388))

(assert (= (and b!877004 ((_ is Concat!4062) (regTwo!4970 r!15766))) b!877389))

(assert (= (and b!877004 ((_ is Star!2229) (regTwo!4970 r!15766))) b!877390))

(assert (= (and b!877004 ((_ is Union!2229) (regTwo!4970 r!15766))) b!877391))

(check-sat (not b!877088) (not bm!51059) (not b!877370) tp_is_empty!4101 (not b!877379) (not b!877368) (not bm!51102) (not b!877374) (not b!877354) (not b!877082) (not b!877034) (not b!877372) (not d!276002) (not bm!51060) (not b!877300) (not b!877381) (not b!877385) (not b!877387) (not d!275982) (not b!877348) (not b!877389) (not b!877390) (not bm!51103) (not bm!51056) (not b!877382) (not b!877350) (not b!877391) (not b!877386) (not b!877369) (not b!877373) (not bm!51054) (not bm!51042) (not b!877304) (not b!877346) (not bm!51106) (not d!276000) (not b!877347) (not b!877353) (not b!877383) (not bm!51041))
(check-sat)
