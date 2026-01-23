; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84438 () Bool)

(assert start!84438)

(declare-fun b!947317 () Bool)

(assert (=> b!947317 true))

(assert (=> b!947317 true))

(assert (=> b!947317 true))

(declare-fun lambda!32384 () Int)

(declare-fun lambda!32383 () Int)

(assert (=> b!947317 (not (= lambda!32384 lambda!32383))))

(assert (=> b!947317 true))

(assert (=> b!947317 true))

(assert (=> b!947317 true))

(declare-fun bs!239679 () Bool)

(declare-fun b!947309 () Bool)

(assert (= bs!239679 (and b!947309 b!947317)))

(declare-datatypes ((C!5784 0))(
  ( (C!5785 (val!3140 Int)) )
))
(declare-datatypes ((Regex!2607 0))(
  ( (ElementMatch!2607 (c!154196 C!5784)) (Concat!4440 (regOne!5726 Regex!2607) (regTwo!5726 Regex!2607)) (EmptyExpr!2607) (Star!2607 (reg!2936 Regex!2607)) (EmptyLang!2607) (Union!2607 (regOne!5727 Regex!2607) (regTwo!5727 Regex!2607)) )
))
(declare-fun lt!344002 () Regex!2607)

(declare-fun r!15766 () Regex!2607)

(declare-fun lt!344005 () Regex!2607)

(declare-fun lambda!32385 () Int)

(declare-fun lt!344004 () Regex!2607)

(assert (=> bs!239679 (= (and (= lt!344004 (reg!2936 r!15766)) (= lt!344005 lt!344002)) (= lambda!32385 lambda!32383))))

(assert (=> bs!239679 (not (= lambda!32385 lambda!32384))))

(assert (=> b!947309 true))

(assert (=> b!947309 true))

(assert (=> b!947309 true))

(declare-fun lambda!32386 () Int)

(assert (=> bs!239679 (not (= lambda!32386 lambda!32383))))

(assert (=> bs!239679 (= (and (= lt!344004 (reg!2936 r!15766)) (= lt!344005 lt!344002)) (= lambda!32386 lambda!32384))))

(assert (=> b!947309 (not (= lambda!32386 lambda!32385))))

(assert (=> b!947309 true))

(assert (=> b!947309 true))

(assert (=> b!947309 true))

(declare-fun b!947304 () Bool)

(declare-fun res!430607 () Bool)

(declare-fun e!613725 () Bool)

(assert (=> b!947304 (=> res!430607 e!613725)))

(declare-fun validRegex!1076 (Regex!2607) Bool)

(assert (=> b!947304 (= res!430607 (not (validRegex!1076 lt!344002)))))

(declare-fun b!947305 () Bool)

(declare-fun e!613729 () Bool)

(declare-fun tp_is_empty!4857 () Bool)

(declare-fun tp!292199 () Bool)

(assert (=> b!947305 (= e!613729 (and tp_is_empty!4857 tp!292199))))

(declare-fun b!947306 () Bool)

(declare-fun e!613722 () Bool)

(declare-fun tp!292202 () Bool)

(assert (=> b!947306 (= e!613722 tp!292202)))

(declare-fun b!947307 () Bool)

(assert (=> b!947307 (= e!613725 true)))

(declare-datatypes ((List!9837 0))(
  ( (Nil!9821) (Cons!9821 (h!15222 C!5784) (t!100883 List!9837)) )
))
(declare-datatypes ((tuple2!11112 0))(
  ( (tuple2!11113 (_1!6382 List!9837) (_2!6382 List!9837)) )
))
(declare-fun lt!344003 () tuple2!11112)

(declare-fun matchR!1145 (Regex!2607 List!9837) Bool)

(declare-fun ++!2621 (List!9837 List!9837) List!9837)

(assert (=> b!947307 (matchR!1145 lt!344002 (++!2621 (_1!6382 lt!344003) (_2!6382 lt!344003)))))

(declare-datatypes ((Unit!14851 0))(
  ( (Unit!14852) )
))
(declare-fun lt!343999 () Unit!14851)

(declare-fun lemmaStarApp!6 (Regex!2607 List!9837 List!9837) Unit!14851)

(assert (=> b!947307 (= lt!343999 (lemmaStarApp!6 (reg!2936 r!15766) (_1!6382 lt!344003) (_2!6382 lt!344003)))))

(declare-fun b!947308 () Bool)

(declare-fun e!613723 () Bool)

(declare-fun e!613726 () Bool)

(assert (=> b!947308 (= e!613723 (not e!613726))))

(declare-fun res!430612 () Bool)

(assert (=> b!947308 (=> res!430612 e!613726)))

(declare-fun lt!343998 () Bool)

(get-info :version)

(assert (=> b!947308 (= res!430612 (or lt!343998 (and ((_ is Concat!4440) r!15766) ((_ is EmptyExpr!2607) (regOne!5726 r!15766))) (and ((_ is Concat!4440) r!15766) ((_ is EmptyExpr!2607) (regTwo!5726 r!15766))) ((_ is Concat!4440) r!15766) ((_ is Union!2607) r!15766) (not ((_ is Star!2607) r!15766))))))

(declare-fun s!10566 () List!9837)

(declare-fun matchRSpec!408 (Regex!2607 List!9837) Bool)

(assert (=> b!947308 (= lt!343998 (matchRSpec!408 r!15766 s!10566))))

(assert (=> b!947308 (= lt!343998 (matchR!1145 r!15766 s!10566))))

(declare-fun lt!343994 () Unit!14851)

(declare-fun mainMatchTheorem!408 (Regex!2607 List!9837) Unit!14851)

(assert (=> b!947308 (= lt!343994 (mainMatchTheorem!408 r!15766 s!10566))))

(declare-fun e!613727 () Bool)

(declare-fun e!613728 () Bool)

(assert (=> b!947309 (= e!613727 e!613728)))

(declare-fun res!430606 () Bool)

(assert (=> b!947309 (=> res!430606 e!613728)))

(declare-fun isEmpty!6084 (List!9837) Bool)

(assert (=> b!947309 (= res!430606 (isEmpty!6084 s!10566))))

(declare-fun Exists!358 (Int) Bool)

(assert (=> b!947309 (= (Exists!358 lambda!32385) (Exists!358 lambda!32386))))

(declare-fun lt!343989 () Unit!14851)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!102 (Regex!2607 List!9837) Unit!14851)

(assert (=> b!947309 (= lt!343989 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!102 lt!344004 s!10566))))

(declare-fun lt!343996 () Bool)

(assert (=> b!947309 (= lt!343996 (Exists!358 lambda!32385))))

(declare-datatypes ((Option!2198 0))(
  ( (None!2197) (Some!2197 (v!19614 tuple2!11112)) )
))
(declare-fun lt!343990 () Option!2198)

(declare-fun isDefined!1840 (Option!2198) Bool)

(assert (=> b!947309 (= lt!343996 (isDefined!1840 lt!343990))))

(declare-fun findConcatSeparation!304 (Regex!2607 Regex!2607 List!9837 List!9837 List!9837) Option!2198)

(assert (=> b!947309 (= lt!343990 (findConcatSeparation!304 lt!344004 lt!344005 Nil!9821 s!10566 s!10566))))

(declare-fun lt!343995 () Unit!14851)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!304 (Regex!2607 Regex!2607 List!9837) Unit!14851)

(assert (=> b!947309 (= lt!343995 (lemmaFindConcatSeparationEquivalentToExists!304 lt!344004 lt!344005 s!10566))))

(assert (=> b!947309 (matchRSpec!408 lt!344005 s!10566)))

(declare-fun lt!343987 () Unit!14851)

(assert (=> b!947309 (= lt!343987 (mainMatchTheorem!408 lt!344005 s!10566))))

(declare-fun b!947310 () Bool)

(declare-fun res!430609 () Bool)

(assert (=> b!947310 (=> res!430609 e!613728)))

(assert (=> b!947310 (= res!430609 (not lt!343996))))

(declare-fun b!947311 () Bool)

(declare-fun e!613721 () Bool)

(assert (=> b!947311 (= e!613728 e!613721)))

(declare-fun res!430611 () Bool)

(assert (=> b!947311 (=> res!430611 e!613721)))

(assert (=> b!947311 (= res!430611 (not (matchR!1145 lt!344004 (_1!6382 lt!344003))))))

(declare-fun get!3292 (Option!2198) tuple2!11112)

(assert (=> b!947311 (= lt!344003 (get!3292 lt!343990))))

(declare-fun b!947312 () Bool)

(assert (=> b!947312 (= e!613721 e!613725)))

(declare-fun res!430605 () Bool)

(assert (=> b!947312 (=> res!430605 e!613725)))

(declare-fun lt!344001 () Bool)

(assert (=> b!947312 (= res!430605 (not lt!344001))))

(declare-fun lt!343992 () Regex!2607)

(assert (=> b!947312 (= lt!344001 (matchR!1145 lt!343992 (_2!6382 lt!344003)))))

(assert (=> b!947312 (= lt!344001 (matchR!1145 lt!344002 (_2!6382 lt!344003)))))

(declare-fun removeUselessConcat!276 (Regex!2607) Regex!2607)

(assert (=> b!947312 (= lt!343992 (removeUselessConcat!276 lt!344002))))

(declare-fun lt!343991 () Unit!14851)

(declare-fun lemmaRemoveUselessConcatSound!142 (Regex!2607 List!9837) Unit!14851)

(assert (=> b!947312 (= lt!343991 (lemmaRemoveUselessConcatSound!142 lt!344002 (_2!6382 lt!344003)))))

(declare-fun lt!344000 () Unit!14851)

(declare-fun e!613724 () Unit!14851)

(assert (=> b!947312 (= lt!344000 e!613724)))

(declare-fun c!154195 () Bool)

(declare-fun size!7905 (List!9837) Int)

(assert (=> b!947312 (= c!154195 (= (size!7905 (_2!6382 lt!344003)) (size!7905 s!10566)))))

(assert (=> b!947312 (matchR!1145 (reg!2936 r!15766) (_1!6382 lt!344003))))

(declare-fun lt!343993 () Unit!14851)

(assert (=> b!947312 (= lt!343993 (lemmaRemoveUselessConcatSound!142 (reg!2936 r!15766) (_1!6382 lt!344003)))))

(declare-fun b!947313 () Bool)

(assert (=> b!947313 (= e!613722 tp_is_empty!4857)))

(declare-fun b!947314 () Bool)

(declare-fun res!430608 () Bool)

(assert (=> b!947314 (=> res!430608 e!613721)))

(assert (=> b!947314 (= res!430608 (not (matchR!1145 lt!344005 (_2!6382 lt!344003))))))

(declare-fun b!947315 () Bool)

(declare-fun tp!292203 () Bool)

(declare-fun tp!292204 () Bool)

(assert (=> b!947315 (= e!613722 (and tp!292203 tp!292204))))

(declare-fun res!430604 () Bool)

(assert (=> start!84438 (=> (not res!430604) (not e!613723))))

(assert (=> start!84438 (= res!430604 (validRegex!1076 r!15766))))

(assert (=> start!84438 e!613723))

(assert (=> start!84438 e!613722))

(assert (=> start!84438 e!613729))

(declare-fun b!947316 () Bool)

(declare-fun Unit!14853 () Unit!14851)

(assert (=> b!947316 (= e!613724 Unit!14853)))

(assert (=> b!947317 (= e!613726 e!613727)))

(declare-fun res!430610 () Bool)

(assert (=> b!947317 (=> res!430610 e!613727)))

(assert (=> b!947317 (= res!430610 (not (matchR!1145 lt!344005 s!10566)))))

(assert (=> b!947317 (= lt!344005 (Star!2607 lt!344004))))

(assert (=> b!947317 (= lt!344004 (removeUselessConcat!276 (reg!2936 r!15766)))))

(assert (=> b!947317 (= (Exists!358 lambda!32383) (Exists!358 lambda!32384))))

(declare-fun lt!343988 () Unit!14851)

(assert (=> b!947317 (= lt!343988 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!102 (reg!2936 r!15766) s!10566))))

(assert (=> b!947317 (= (isDefined!1840 (findConcatSeparation!304 (reg!2936 r!15766) lt!344002 Nil!9821 s!10566 s!10566)) (Exists!358 lambda!32383))))

(declare-fun lt!343986 () Unit!14851)

(assert (=> b!947317 (= lt!343986 (lemmaFindConcatSeparationEquivalentToExists!304 (reg!2936 r!15766) lt!344002 s!10566))))

(assert (=> b!947317 (= lt!344002 (Star!2607 (reg!2936 r!15766)))))

(declare-fun b!947318 () Bool)

(declare-fun tp!292201 () Bool)

(declare-fun tp!292200 () Bool)

(assert (=> b!947318 (= e!613722 (and tp!292201 tp!292200))))

(declare-fun b!947319 () Bool)

(declare-fun Unit!14854 () Unit!14851)

(assert (=> b!947319 (= e!613724 Unit!14854)))

(declare-fun lt!343997 () Unit!14851)

(assert (=> b!947319 (= lt!343997 (mainMatchTheorem!408 (reg!2936 r!15766) (_1!6382 lt!344003)))))

(assert (=> b!947319 false))

(assert (= (and start!84438 res!430604) b!947308))

(assert (= (and b!947308 (not res!430612)) b!947317))

(assert (= (and b!947317 (not res!430610)) b!947309))

(assert (= (and b!947309 (not res!430606)) b!947310))

(assert (= (and b!947310 (not res!430609)) b!947311))

(assert (= (and b!947311 (not res!430611)) b!947314))

(assert (= (and b!947314 (not res!430608)) b!947312))

(assert (= (and b!947312 c!154195) b!947319))

(assert (= (and b!947312 (not c!154195)) b!947316))

(assert (= (and b!947312 (not res!430605)) b!947304))

(assert (= (and b!947304 (not res!430607)) b!947307))

(assert (= (and start!84438 ((_ is ElementMatch!2607) r!15766)) b!947313))

(assert (= (and start!84438 ((_ is Concat!4440) r!15766)) b!947315))

(assert (= (and start!84438 ((_ is Star!2607) r!15766)) b!947306))

(assert (= (and start!84438 ((_ is Union!2607) r!15766)) b!947318))

(assert (= (and start!84438 ((_ is Cons!9821) s!10566)) b!947305))

(declare-fun m!1161911 () Bool)

(assert (=> b!947311 m!1161911))

(declare-fun m!1161913 () Bool)

(assert (=> b!947311 m!1161913))

(declare-fun m!1161915 () Bool)

(assert (=> b!947308 m!1161915))

(declare-fun m!1161917 () Bool)

(assert (=> b!947308 m!1161917))

(declare-fun m!1161919 () Bool)

(assert (=> b!947308 m!1161919))

(declare-fun m!1161921 () Bool)

(assert (=> b!947319 m!1161921))

(declare-fun m!1161923 () Bool)

(assert (=> b!947309 m!1161923))

(declare-fun m!1161925 () Bool)

(assert (=> b!947309 m!1161925))

(declare-fun m!1161927 () Bool)

(assert (=> b!947309 m!1161927))

(declare-fun m!1161929 () Bool)

(assert (=> b!947309 m!1161929))

(declare-fun m!1161931 () Bool)

(assert (=> b!947309 m!1161931))

(declare-fun m!1161933 () Bool)

(assert (=> b!947309 m!1161933))

(declare-fun m!1161935 () Bool)

(assert (=> b!947309 m!1161935))

(assert (=> b!947309 m!1161925))

(declare-fun m!1161937 () Bool)

(assert (=> b!947309 m!1161937))

(declare-fun m!1161939 () Bool)

(assert (=> b!947309 m!1161939))

(declare-fun m!1161941 () Bool)

(assert (=> start!84438 m!1161941))

(declare-fun m!1161943 () Bool)

(assert (=> b!947317 m!1161943))

(declare-fun m!1161945 () Bool)

(assert (=> b!947317 m!1161945))

(declare-fun m!1161947 () Bool)

(assert (=> b!947317 m!1161947))

(declare-fun m!1161949 () Bool)

(assert (=> b!947317 m!1161949))

(declare-fun m!1161951 () Bool)

(assert (=> b!947317 m!1161951))

(assert (=> b!947317 m!1161945))

(declare-fun m!1161953 () Bool)

(assert (=> b!947317 m!1161953))

(assert (=> b!947317 m!1161953))

(declare-fun m!1161955 () Bool)

(assert (=> b!947317 m!1161955))

(declare-fun m!1161957 () Bool)

(assert (=> b!947317 m!1161957))

(declare-fun m!1161959 () Bool)

(assert (=> b!947304 m!1161959))

(declare-fun m!1161961 () Bool)

(assert (=> b!947314 m!1161961))

(declare-fun m!1161963 () Bool)

(assert (=> b!947312 m!1161963))

(declare-fun m!1161965 () Bool)

(assert (=> b!947312 m!1161965))

(declare-fun m!1161967 () Bool)

(assert (=> b!947312 m!1161967))

(declare-fun m!1161969 () Bool)

(assert (=> b!947312 m!1161969))

(declare-fun m!1161971 () Bool)

(assert (=> b!947312 m!1161971))

(declare-fun m!1161973 () Bool)

(assert (=> b!947312 m!1161973))

(declare-fun m!1161975 () Bool)

(assert (=> b!947312 m!1161975))

(declare-fun m!1161977 () Bool)

(assert (=> b!947312 m!1161977))

(declare-fun m!1161979 () Bool)

(assert (=> b!947307 m!1161979))

(assert (=> b!947307 m!1161979))

(declare-fun m!1161981 () Bool)

(assert (=> b!947307 m!1161981))

(declare-fun m!1161983 () Bool)

(assert (=> b!947307 m!1161983))

(check-sat (not b!947318) (not b!947307) (not b!947319) (not b!947312) (not b!947304) (not b!947309) (not b!947314) (not b!947315) (not b!947311) (not b!947305) (not b!947317) (not b!947306) (not b!947308) tp_is_empty!4857 (not start!84438))
(check-sat)
