; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89734 () Bool)

(assert start!89734)

(declare-fun b!1030774 () Bool)

(assert (=> b!1030774 true))

(assert (=> b!1030774 true))

(declare-fun lambda!36986 () Int)

(declare-fun lambda!36985 () Int)

(assert (=> b!1030774 (not (= lambda!36986 lambda!36985))))

(assert (=> b!1030774 true))

(assert (=> b!1030774 true))

(declare-fun b!1030773 () Bool)

(declare-fun res!463181 () Bool)

(declare-fun e!657110 () Bool)

(assert (=> b!1030773 (=> res!463181 e!657110)))

(declare-datatypes ((C!6292 0))(
  ( (C!6293 (val!3394 Int)) )
))
(declare-datatypes ((List!10091 0))(
  ( (Nil!10075) (Cons!10075 (h!15476 C!6292) (t!101137 List!10091)) )
))
(declare-fun s!10566 () List!10091)

(declare-fun ++!2769 (List!10091 List!10091) List!10091)

(assert (=> b!1030773 (= res!463181 (not (= (++!2769 s!10566 Nil!10075) s!10566)))))

(declare-fun e!657107 () Bool)

(declare-fun e!657106 () Bool)

(assert (=> b!1030774 (= e!657107 e!657106)))

(declare-fun res!463177 () Bool)

(assert (=> b!1030774 (=> res!463177 e!657106)))

(declare-fun isEmpty!6459 (List!10091) Bool)

(assert (=> b!1030774 (= res!463177 (isEmpty!6459 s!10566))))

(declare-fun Exists!588 (Int) Bool)

(assert (=> b!1030774 (= (Exists!588 lambda!36985) (Exists!588 lambda!36986))))

(declare-datatypes ((Unit!15397 0))(
  ( (Unit!15398) )
))
(declare-fun lt!356082 () Unit!15397)

(declare-datatypes ((Regex!2861 0))(
  ( (ElementMatch!2861 (c!170950 C!6292)) (Concat!4694 (regOne!6234 Regex!2861) (regTwo!6234 Regex!2861)) (EmptyExpr!2861) (Star!2861 (reg!3190 Regex!2861)) (EmptyLang!2861) (Union!2861 (regOne!6235 Regex!2861) (regTwo!6235 Regex!2861)) )
))
(declare-fun r!15766 () Regex!2861)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!284 (Regex!2861 Regex!2861 List!10091) Unit!15397)

(assert (=> b!1030774 (= lt!356082 (lemmaExistCutMatchRandMatchRSpecEquivalent!284 (regOne!6234 r!15766) EmptyExpr!2861 s!10566))))

(declare-datatypes ((tuple2!11496 0))(
  ( (tuple2!11497 (_1!6574 List!10091) (_2!6574 List!10091)) )
))
(declare-datatypes ((Option!2390 0))(
  ( (None!2389) (Some!2389 (v!19806 tuple2!11496)) )
))
(declare-fun lt!356085 () Option!2390)

(declare-fun isDefined!2032 (Option!2390) Bool)

(assert (=> b!1030774 (= (isDefined!2032 lt!356085) (Exists!588 lambda!36985))))

(declare-fun findConcatSeparation!496 (Regex!2861 Regex!2861 List!10091 List!10091 List!10091) Option!2390)

(assert (=> b!1030774 (= lt!356085 (findConcatSeparation!496 (regOne!6234 r!15766) EmptyExpr!2861 Nil!10075 s!10566 s!10566))))

(declare-fun lt!356087 () Unit!15397)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!496 (Regex!2861 Regex!2861 List!10091) Unit!15397)

(assert (=> b!1030774 (= lt!356087 (lemmaFindConcatSeparationEquivalentToExists!496 (regOne!6234 r!15766) EmptyExpr!2861 s!10566))))

(declare-fun res!463179 () Bool)

(declare-fun e!657109 () Bool)

(assert (=> start!89734 (=> (not res!463179) (not e!657109))))

(declare-fun validRegex!1330 (Regex!2861) Bool)

(assert (=> start!89734 (= res!463179 (validRegex!1330 r!15766))))

(assert (=> start!89734 e!657109))

(declare-fun e!657111 () Bool)

(assert (=> start!89734 e!657111))

(declare-fun e!657108 () Bool)

(assert (=> start!89734 e!657108))

(declare-fun b!1030775 () Bool)

(declare-fun res!463185 () Bool)

(assert (=> b!1030775 (=> res!463185 e!657110)))

(assert (=> b!1030775 (= res!463185 false)))

(declare-fun b!1030776 () Bool)

(declare-fun tp!312278 () Bool)

(declare-fun tp!312279 () Bool)

(assert (=> b!1030776 (= e!657111 (and tp!312278 tp!312279))))

(declare-fun b!1030777 () Bool)

(declare-fun tp!312275 () Bool)

(declare-fun tp!312280 () Bool)

(assert (=> b!1030777 (= e!657111 (and tp!312275 tp!312280))))

(declare-fun b!1030778 () Bool)

(declare-fun res!463184 () Bool)

(assert (=> b!1030778 (=> res!463184 e!657110)))

(declare-fun isPrefix!1019 (List!10091 List!10091) Bool)

(assert (=> b!1030778 (= res!463184 (not (isPrefix!1019 Nil!10075 s!10566)))))

(declare-fun b!1030779 () Bool)

(declare-fun res!463183 () Bool)

(assert (=> b!1030779 (=> res!463183 e!657110)))

(assert (=> b!1030779 (= res!463183 (not (= (++!2769 Nil!10075 s!10566) s!10566)))))

(declare-fun b!1030780 () Bool)

(declare-fun res!463180 () Bool)

(assert (=> b!1030780 (=> res!463180 e!657106)))

(declare-fun isEmpty!6460 (Option!2390) Bool)

(assert (=> b!1030780 (= res!463180 (not (isEmpty!6460 lt!356085)))))

(declare-fun b!1030781 () Bool)

(assert (=> b!1030781 (= e!657106 e!657110)))

(declare-fun res!463186 () Bool)

(assert (=> b!1030781 (=> res!463186 e!657110)))

(declare-fun lt!356086 () Bool)

(declare-fun lt!356081 () Bool)

(assert (=> b!1030781 (= res!463186 (or (not lt!356086) (not lt!356081)))))

(assert (=> b!1030781 (= lt!356081 lt!356086)))

(declare-fun lt!356083 () Regex!2861)

(declare-fun matchR!1397 (Regex!2861 List!10091) Bool)

(assert (=> b!1030781 (= lt!356086 (matchR!1397 lt!356083 s!10566))))

(assert (=> b!1030781 (= lt!356081 (matchR!1397 (regOne!6234 r!15766) s!10566))))

(declare-fun removeUselessConcat!418 (Regex!2861) Regex!2861)

(assert (=> b!1030781 (= lt!356083 (removeUselessConcat!418 (regOne!6234 r!15766)))))

(declare-fun lt!356079 () Unit!15397)

(declare-fun lemmaRemoveUselessConcatSound!256 (Regex!2861 List!10091) Unit!15397)

(assert (=> b!1030781 (= lt!356079 (lemmaRemoveUselessConcatSound!256 (regOne!6234 r!15766) s!10566))))

(declare-fun b!1030782 () Bool)

(assert (=> b!1030782 (= e!657110 (matchR!1397 EmptyExpr!2861 Nil!10075))))

(declare-fun b!1030783 () Bool)

(declare-fun tp_is_empty!5365 () Bool)

(assert (=> b!1030783 (= e!657111 tp_is_empty!5365)))

(declare-fun b!1030784 () Bool)

(declare-fun tp!312277 () Bool)

(assert (=> b!1030784 (= e!657108 (and tp_is_empty!5365 tp!312277))))

(declare-fun b!1030785 () Bool)

(assert (=> b!1030785 (= e!657109 (not e!657107))))

(declare-fun res!463182 () Bool)

(assert (=> b!1030785 (=> res!463182 e!657107)))

(declare-fun lt!356084 () Bool)

(get-info :version)

(assert (=> b!1030785 (= res!463182 (or lt!356084 (and ((_ is Concat!4694) r!15766) ((_ is EmptyExpr!2861) (regOne!6234 r!15766))) (not ((_ is Concat!4694) r!15766)) (not ((_ is EmptyExpr!2861) (regTwo!6234 r!15766)))))))

(declare-fun matchRSpec!660 (Regex!2861 List!10091) Bool)

(assert (=> b!1030785 (= lt!356084 (matchRSpec!660 r!15766 s!10566))))

(assert (=> b!1030785 (= lt!356084 (matchR!1397 r!15766 s!10566))))

(declare-fun lt!356080 () Unit!15397)

(declare-fun mainMatchTheorem!660 (Regex!2861 List!10091) Unit!15397)

(assert (=> b!1030785 (= lt!356080 (mainMatchTheorem!660 r!15766 s!10566))))

(declare-fun b!1030786 () Bool)

(declare-fun res!463178 () Bool)

(assert (=> b!1030786 (=> res!463178 e!657110)))

(assert (=> b!1030786 (= res!463178 (not (validRegex!1330 (regOne!6234 r!15766))))))

(declare-fun b!1030787 () Bool)

(declare-fun tp!312276 () Bool)

(assert (=> b!1030787 (= e!657111 tp!312276)))

(assert (= (and start!89734 res!463179) b!1030785))

(assert (= (and b!1030785 (not res!463182)) b!1030774))

(assert (= (and b!1030774 (not res!463177)) b!1030780))

(assert (= (and b!1030780 (not res!463180)) b!1030781))

(assert (= (and b!1030781 (not res!463186)) b!1030786))

(assert (= (and b!1030786 (not res!463178)) b!1030775))

(assert (= (and b!1030775 (not res!463185)) b!1030773))

(assert (= (and b!1030773 (not res!463181)) b!1030778))

(assert (= (and b!1030778 (not res!463184)) b!1030779))

(assert (= (and b!1030779 (not res!463183)) b!1030782))

(assert (= (and start!89734 ((_ is ElementMatch!2861) r!15766)) b!1030783))

(assert (= (and start!89734 ((_ is Concat!4694) r!15766)) b!1030777))

(assert (= (and start!89734 ((_ is Star!2861) r!15766)) b!1030787))

(assert (= (and start!89734 ((_ is Union!2861) r!15766)) b!1030776))

(assert (= (and start!89734 ((_ is Cons!10075) s!10566)) b!1030784))

(declare-fun m!1204507 () Bool)

(assert (=> b!1030781 m!1204507))

(declare-fun m!1204509 () Bool)

(assert (=> b!1030781 m!1204509))

(declare-fun m!1204511 () Bool)

(assert (=> b!1030781 m!1204511))

(declare-fun m!1204513 () Bool)

(assert (=> b!1030781 m!1204513))

(declare-fun m!1204515 () Bool)

(assert (=> b!1030786 m!1204515))

(declare-fun m!1204517 () Bool)

(assert (=> b!1030773 m!1204517))

(declare-fun m!1204519 () Bool)

(assert (=> b!1030785 m!1204519))

(declare-fun m!1204521 () Bool)

(assert (=> b!1030785 m!1204521))

(declare-fun m!1204523 () Bool)

(assert (=> b!1030785 m!1204523))

(declare-fun m!1204525 () Bool)

(assert (=> start!89734 m!1204525))

(declare-fun m!1204527 () Bool)

(assert (=> b!1030782 m!1204527))

(declare-fun m!1204529 () Bool)

(assert (=> b!1030779 m!1204529))

(declare-fun m!1204531 () Bool)

(assert (=> b!1030778 m!1204531))

(declare-fun m!1204533 () Bool)

(assert (=> b!1030774 m!1204533))

(declare-fun m!1204535 () Bool)

(assert (=> b!1030774 m!1204535))

(declare-fun m!1204537 () Bool)

(assert (=> b!1030774 m!1204537))

(declare-fun m!1204539 () Bool)

(assert (=> b!1030774 m!1204539))

(assert (=> b!1030774 m!1204537))

(declare-fun m!1204541 () Bool)

(assert (=> b!1030774 m!1204541))

(declare-fun m!1204543 () Bool)

(assert (=> b!1030774 m!1204543))

(declare-fun m!1204545 () Bool)

(assert (=> b!1030774 m!1204545))

(declare-fun m!1204547 () Bool)

(assert (=> b!1030780 m!1204547))

(check-sat (not b!1030786) (not b!1030773) (not start!89734) (not b!1030780) (not b!1030777) tp_is_empty!5365 (not b!1030781) (not b!1030785) (not b!1030779) (not b!1030784) (not b!1030782) (not b!1030787) (not b!1030776) (not b!1030774) (not b!1030778))
(check-sat)
(get-model)

(declare-fun bs!247290 () Bool)

(declare-fun b!1030899 () Bool)

(assert (= bs!247290 (and b!1030899 b!1030774)))

(declare-fun lambda!37000 () Int)

(assert (=> bs!247290 (not (= lambda!37000 lambda!36985))))

(assert (=> bs!247290 (not (= lambda!37000 lambda!36986))))

(assert (=> b!1030899 true))

(assert (=> b!1030899 true))

(declare-fun bs!247291 () Bool)

(declare-fun b!1030890 () Bool)

(assert (= bs!247291 (and b!1030890 b!1030774)))

(declare-fun lambda!37001 () Int)

(assert (=> bs!247291 (not (= lambda!37001 lambda!36985))))

(assert (=> bs!247291 (= (= (regTwo!6234 r!15766) EmptyExpr!2861) (= lambda!37001 lambda!36986))))

(declare-fun bs!247292 () Bool)

(assert (= bs!247292 (and b!1030890 b!1030899)))

(assert (=> bs!247292 (not (= lambda!37001 lambda!37000))))

(assert (=> b!1030890 true))

(assert (=> b!1030890 true))

(declare-fun call!71026 () Bool)

(declare-fun c!170973 () Bool)

(declare-fun bm!71020 () Bool)

(assert (=> bm!71020 (= call!71026 (Exists!588 (ite c!170973 lambda!37000 lambda!37001)))))

(declare-fun b!1030891 () Bool)

(declare-fun e!657174 () Bool)

(declare-fun call!71025 () Bool)

(assert (=> b!1030891 (= e!657174 call!71025)))

(declare-fun b!1030892 () Bool)

(declare-fun e!657177 () Bool)

(declare-fun e!657172 () Bool)

(assert (=> b!1030892 (= e!657177 e!657172)))

(assert (=> b!1030892 (= c!170973 ((_ is Star!2861) r!15766))))

(declare-fun b!1030893 () Bool)

(declare-fun e!657176 () Bool)

(assert (=> b!1030893 (= e!657176 (matchRSpec!660 (regTwo!6235 r!15766) s!10566))))

(declare-fun bm!71021 () Bool)

(assert (=> bm!71021 (= call!71025 (isEmpty!6459 s!10566))))

(declare-fun b!1030894 () Bool)

(declare-fun e!657173 () Bool)

(assert (=> b!1030894 (= e!657173 (= s!10566 (Cons!10075 (c!170950 r!15766) Nil!10075)))))

(declare-fun b!1030895 () Bool)

(declare-fun c!170974 () Bool)

(assert (=> b!1030895 (= c!170974 ((_ is ElementMatch!2861) r!15766))))

(declare-fun e!657175 () Bool)

(assert (=> b!1030895 (= e!657175 e!657173)))

(declare-fun b!1030896 () Bool)

(assert (=> b!1030896 (= e!657177 e!657176)))

(declare-fun res!463246 () Bool)

(assert (=> b!1030896 (= res!463246 (matchRSpec!660 (regOne!6235 r!15766) s!10566))))

(assert (=> b!1030896 (=> res!463246 e!657176)))

(assert (=> b!1030890 (= e!657172 call!71026)))

(declare-fun d!295576 () Bool)

(declare-fun c!170972 () Bool)

(assert (=> d!295576 (= c!170972 ((_ is EmptyExpr!2861) r!15766))))

(assert (=> d!295576 (= (matchRSpec!660 r!15766 s!10566) e!657174)))

(declare-fun b!1030897 () Bool)

(assert (=> b!1030897 (= e!657174 e!657175)))

(declare-fun res!463245 () Bool)

(assert (=> b!1030897 (= res!463245 (not ((_ is EmptyLang!2861) r!15766)))))

(assert (=> b!1030897 (=> (not res!463245) (not e!657175))))

(declare-fun b!1030898 () Bool)

(declare-fun res!463247 () Bool)

(declare-fun e!657178 () Bool)

(assert (=> b!1030898 (=> res!463247 e!657178)))

(assert (=> b!1030898 (= res!463247 call!71025)))

(assert (=> b!1030898 (= e!657172 e!657178)))

(assert (=> b!1030899 (= e!657178 call!71026)))

(declare-fun b!1030900 () Bool)

(declare-fun c!170971 () Bool)

(assert (=> b!1030900 (= c!170971 ((_ is Union!2861) r!15766))))

(assert (=> b!1030900 (= e!657173 e!657177)))

(assert (= (and d!295576 c!170972) b!1030891))

(assert (= (and d!295576 (not c!170972)) b!1030897))

(assert (= (and b!1030897 res!463245) b!1030895))

(assert (= (and b!1030895 c!170974) b!1030894))

(assert (= (and b!1030895 (not c!170974)) b!1030900))

(assert (= (and b!1030900 c!170971) b!1030896))

(assert (= (and b!1030900 (not c!170971)) b!1030892))

(assert (= (and b!1030896 (not res!463246)) b!1030893))

(assert (= (and b!1030892 c!170973) b!1030898))

(assert (= (and b!1030892 (not c!170973)) b!1030890))

(assert (= (and b!1030898 (not res!463247)) b!1030899))

(assert (= (or b!1030899 b!1030890) bm!71020))

(assert (= (or b!1030891 b!1030898) bm!71021))

(declare-fun m!1204607 () Bool)

(assert (=> bm!71020 m!1204607))

(declare-fun m!1204609 () Bool)

(assert (=> b!1030893 m!1204609))

(assert (=> bm!71021 m!1204543))

(declare-fun m!1204611 () Bool)

(assert (=> b!1030896 m!1204611))

(assert (=> b!1030785 d!295576))

(declare-fun b!1031012 () Bool)

(declare-fun res!463308 () Bool)

(declare-fun e!657248 () Bool)

(assert (=> b!1031012 (=> res!463308 e!657248)))

(declare-fun tail!1471 (List!10091) List!10091)

(assert (=> b!1031012 (= res!463308 (not (isEmpty!6459 (tail!1471 s!10566))))))

(declare-fun b!1031013 () Bool)

(declare-fun e!657238 () Bool)

(assert (=> b!1031013 (= e!657238 e!657248)))

(declare-fun res!463313 () Bool)

(assert (=> b!1031013 (=> res!463313 e!657248)))

(declare-fun call!71037 () Bool)

(assert (=> b!1031013 (= res!463313 call!71037)))

(declare-fun b!1031014 () Bool)

(declare-fun e!657242 () Bool)

(assert (=> b!1031014 (= e!657242 e!657238)))

(declare-fun res!463305 () Bool)

(assert (=> b!1031014 (=> (not res!463305) (not e!657238))))

(declare-fun lt!356110 () Bool)

(assert (=> b!1031014 (= res!463305 (not lt!356110))))

(declare-fun b!1031015 () Bool)

(declare-fun res!463306 () Bool)

(declare-fun e!657246 () Bool)

(assert (=> b!1031015 (=> (not res!463306) (not e!657246))))

(assert (=> b!1031015 (= res!463306 (not call!71037))))

(declare-fun b!1031016 () Bool)

(declare-fun e!657240 () Bool)

(assert (=> b!1031016 (= e!657240 (not lt!356110))))

(declare-fun b!1031017 () Bool)

(declare-fun res!463309 () Bool)

(assert (=> b!1031017 (=> (not res!463309) (not e!657246))))

(assert (=> b!1031017 (= res!463309 (isEmpty!6459 (tail!1471 s!10566)))))

(declare-fun b!1031018 () Bool)

(declare-fun e!657243 () Bool)

(assert (=> b!1031018 (= e!657243 e!657240)))

(declare-fun c!171003 () Bool)

(assert (=> b!1031018 (= c!171003 ((_ is EmptyLang!2861) r!15766))))

(declare-fun b!1031019 () Bool)

(declare-fun head!1909 (List!10091) C!6292)

(assert (=> b!1031019 (= e!657246 (= (head!1909 s!10566) (c!170950 r!15766)))))

(declare-fun b!1031020 () Bool)

(declare-fun e!657241 () Bool)

(declare-fun derivativeStep!754 (Regex!2861 C!6292) Regex!2861)

(assert (=> b!1031020 (= e!657241 (matchR!1397 (derivativeStep!754 r!15766 (head!1909 s!10566)) (tail!1471 s!10566)))))

(declare-fun d!295598 () Bool)

(assert (=> d!295598 e!657243))

(declare-fun c!171005 () Bool)

(assert (=> d!295598 (= c!171005 ((_ is EmptyExpr!2861) r!15766))))

(assert (=> d!295598 (= lt!356110 e!657241)))

(declare-fun c!171002 () Bool)

(assert (=> d!295598 (= c!171002 (isEmpty!6459 s!10566))))

(assert (=> d!295598 (validRegex!1330 r!15766)))

(assert (=> d!295598 (= (matchR!1397 r!15766 s!10566) lt!356110)))

(declare-fun b!1031021 () Bool)

(assert (=> b!1031021 (= e!657248 (not (= (head!1909 s!10566) (c!170950 r!15766))))))

(declare-fun b!1031022 () Bool)

(assert (=> b!1031022 (= e!657243 (= lt!356110 call!71037))))

(declare-fun b!1031024 () Bool)

(declare-fun res!463310 () Bool)

(assert (=> b!1031024 (=> res!463310 e!657242)))

(assert (=> b!1031024 (= res!463310 e!657246)))

(declare-fun res!463311 () Bool)

(assert (=> b!1031024 (=> (not res!463311) (not e!657246))))

(assert (=> b!1031024 (= res!463311 lt!356110)))

(declare-fun bm!71032 () Bool)

(assert (=> bm!71032 (= call!71037 (isEmpty!6459 s!10566))))

(declare-fun b!1031027 () Bool)

(declare-fun res!463307 () Bool)

(assert (=> b!1031027 (=> res!463307 e!657242)))

(assert (=> b!1031027 (= res!463307 (not ((_ is ElementMatch!2861) r!15766)))))

(assert (=> b!1031027 (= e!657240 e!657242)))

(declare-fun b!1031029 () Bool)

(declare-fun nullable!954 (Regex!2861) Bool)

(assert (=> b!1031029 (= e!657241 (nullable!954 r!15766))))

(assert (= (and d!295598 c!171002) b!1031029))

(assert (= (and d!295598 (not c!171002)) b!1031020))

(assert (= (and d!295598 c!171005) b!1031022))

(assert (= (and d!295598 (not c!171005)) b!1031018))

(assert (= (and b!1031018 c!171003) b!1031016))

(assert (= (and b!1031018 (not c!171003)) b!1031027))

(assert (= (and b!1031027 (not res!463307)) b!1031024))

(assert (= (and b!1031024 res!463311) b!1031015))

(assert (= (and b!1031015 res!463306) b!1031017))

(assert (= (and b!1031017 res!463309) b!1031019))

(assert (= (and b!1031024 (not res!463310)) b!1031014))

(assert (= (and b!1031014 res!463305) b!1031013))

(assert (= (and b!1031013 (not res!463313)) b!1031012))

(assert (= (and b!1031012 (not res!463308)) b!1031021))

(assert (= (or b!1031022 b!1031013 b!1031015) bm!71032))

(declare-fun m!1204631 () Bool)

(assert (=> b!1031020 m!1204631))

(assert (=> b!1031020 m!1204631))

(declare-fun m!1204633 () Bool)

(assert (=> b!1031020 m!1204633))

(declare-fun m!1204635 () Bool)

(assert (=> b!1031020 m!1204635))

(assert (=> b!1031020 m!1204633))

(assert (=> b!1031020 m!1204635))

(declare-fun m!1204637 () Bool)

(assert (=> b!1031020 m!1204637))

(assert (=> b!1031021 m!1204631))

(assert (=> b!1031017 m!1204635))

(assert (=> b!1031017 m!1204635))

(declare-fun m!1204639 () Bool)

(assert (=> b!1031017 m!1204639))

(assert (=> b!1031012 m!1204635))

(assert (=> b!1031012 m!1204635))

(assert (=> b!1031012 m!1204639))

(assert (=> b!1031019 m!1204631))

(declare-fun m!1204641 () Bool)

(assert (=> b!1031029 m!1204641))

(assert (=> d!295598 m!1204543))

(assert (=> d!295598 m!1204525))

(assert (=> bm!71032 m!1204543))

(assert (=> b!1030785 d!295598))

(declare-fun d!295604 () Bool)

(assert (=> d!295604 (= (matchR!1397 r!15766 s!10566) (matchRSpec!660 r!15766 s!10566))))

(declare-fun lt!356120 () Unit!15397)

(declare-fun choose!6567 (Regex!2861 List!10091) Unit!15397)

(assert (=> d!295604 (= lt!356120 (choose!6567 r!15766 s!10566))))

(assert (=> d!295604 (validRegex!1330 r!15766)))

(assert (=> d!295604 (= (mainMatchTheorem!660 r!15766 s!10566) lt!356120)))

(declare-fun bs!247301 () Bool)

(assert (= bs!247301 d!295604))

(assert (=> bs!247301 m!1204521))

(assert (=> bs!247301 m!1204519))

(declare-fun m!1204665 () Bool)

(assert (=> bs!247301 m!1204665))

(assert (=> bs!247301 m!1204525))

(assert (=> b!1030785 d!295604))

(declare-fun d!295614 () Bool)

(assert (=> d!295614 (= (isEmpty!6460 lt!356085) (not ((_ is Some!2389) lt!356085)))))

(assert (=> b!1030780 d!295614))

(declare-fun d!295616 () Bool)

(declare-fun e!657304 () Bool)

(assert (=> d!295616 e!657304))

(declare-fun res!463360 () Bool)

(assert (=> d!295616 (=> (not res!463360) (not e!657304))))

(declare-fun lt!356130 () List!10091)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1448 (List!10091) (InoxSet C!6292))

(assert (=> d!295616 (= res!463360 (= (content!1448 lt!356130) ((_ map or) (content!1448 Nil!10075) (content!1448 s!10566))))))

(declare-fun e!657305 () List!10091)

(assert (=> d!295616 (= lt!356130 e!657305)))

(declare-fun c!171037 () Bool)

(assert (=> d!295616 (= c!171037 ((_ is Nil!10075) Nil!10075))))

(assert (=> d!295616 (= (++!2769 Nil!10075 s!10566) lt!356130)))

(declare-fun b!1031136 () Bool)

(assert (=> b!1031136 (= e!657305 s!10566)))

(declare-fun b!1031139 () Bool)

(assert (=> b!1031139 (= e!657304 (or (not (= s!10566 Nil!10075)) (= lt!356130 Nil!10075)))))

(declare-fun b!1031137 () Bool)

(assert (=> b!1031137 (= e!657305 (Cons!10075 (h!15476 Nil!10075) (++!2769 (t!101137 Nil!10075) s!10566)))))

(declare-fun b!1031138 () Bool)

(declare-fun res!463359 () Bool)

(assert (=> b!1031138 (=> (not res!463359) (not e!657304))))

(declare-fun size!7994 (List!10091) Int)

(assert (=> b!1031138 (= res!463359 (= (size!7994 lt!356130) (+ (size!7994 Nil!10075) (size!7994 s!10566))))))

(assert (= (and d!295616 c!171037) b!1031136))

(assert (= (and d!295616 (not c!171037)) b!1031137))

(assert (= (and d!295616 res!463360) b!1031138))

(assert (= (and b!1031138 res!463359) b!1031139))

(declare-fun m!1204701 () Bool)

(assert (=> d!295616 m!1204701))

(declare-fun m!1204703 () Bool)

(assert (=> d!295616 m!1204703))

(declare-fun m!1204705 () Bool)

(assert (=> d!295616 m!1204705))

(declare-fun m!1204707 () Bool)

(assert (=> b!1031137 m!1204707))

(declare-fun m!1204709 () Bool)

(assert (=> b!1031138 m!1204709))

(declare-fun m!1204711 () Bool)

(assert (=> b!1031138 m!1204711))

(declare-fun m!1204713 () Bool)

(assert (=> b!1031138 m!1204713))

(assert (=> b!1030779 d!295616))

(declare-fun b!1031205 () Bool)

(declare-fun e!657339 () Option!2390)

(assert (=> b!1031205 (= e!657339 (Some!2389 (tuple2!11497 Nil!10075 s!10566)))))

(declare-fun b!1031206 () Bool)

(declare-fun e!657335 () Option!2390)

(assert (=> b!1031206 (= e!657339 e!657335)))

(declare-fun c!171042 () Bool)

(assert (=> b!1031206 (= c!171042 ((_ is Nil!10075) s!10566))))

(declare-fun b!1031207 () Bool)

(declare-fun res!463383 () Bool)

(declare-fun e!657337 () Bool)

(assert (=> b!1031207 (=> (not res!463383) (not e!657337))))

(declare-fun lt!356141 () Option!2390)

(declare-fun get!3577 (Option!2390) tuple2!11496)

(assert (=> b!1031207 (= res!463383 (matchR!1397 EmptyExpr!2861 (_2!6574 (get!3577 lt!356141))))))

(declare-fun b!1031208 () Bool)

(assert (=> b!1031208 (= e!657337 (= (++!2769 (_1!6574 (get!3577 lt!356141)) (_2!6574 (get!3577 lt!356141))) s!10566))))

(declare-fun b!1031209 () Bool)

(declare-fun lt!356140 () Unit!15397)

(declare-fun lt!356142 () Unit!15397)

(assert (=> b!1031209 (= lt!356140 lt!356142)))

(assert (=> b!1031209 (= (++!2769 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075)) (t!101137 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!362 (List!10091 C!6292 List!10091 List!10091) Unit!15397)

(assert (=> b!1031209 (= lt!356142 (lemmaMoveElementToOtherListKeepsConcatEq!362 Nil!10075 (h!15476 s!10566) (t!101137 s!10566) s!10566))))

(assert (=> b!1031209 (= e!657335 (findConcatSeparation!496 (regOne!6234 r!15766) EmptyExpr!2861 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075)) (t!101137 s!10566) s!10566))))

(declare-fun b!1031210 () Bool)

(declare-fun res!463386 () Bool)

(assert (=> b!1031210 (=> (not res!463386) (not e!657337))))

(assert (=> b!1031210 (= res!463386 (matchR!1397 (regOne!6234 r!15766) (_1!6574 (get!3577 lt!356141))))))

(declare-fun b!1031211 () Bool)

(assert (=> b!1031211 (= e!657335 None!2389)))

(declare-fun b!1031212 () Bool)

(declare-fun e!657338 () Bool)

(assert (=> b!1031212 (= e!657338 (not (isDefined!2032 lt!356141)))))

(declare-fun d!295626 () Bool)

(assert (=> d!295626 e!657338))

(declare-fun res!463384 () Bool)

(assert (=> d!295626 (=> res!463384 e!657338)))

(assert (=> d!295626 (= res!463384 e!657337)))

(declare-fun res!463385 () Bool)

(assert (=> d!295626 (=> (not res!463385) (not e!657337))))

(assert (=> d!295626 (= res!463385 (isDefined!2032 lt!356141))))

(assert (=> d!295626 (= lt!356141 e!657339)))

(declare-fun c!171043 () Bool)

(declare-fun e!657336 () Bool)

(assert (=> d!295626 (= c!171043 e!657336)))

(declare-fun res!463387 () Bool)

(assert (=> d!295626 (=> (not res!463387) (not e!657336))))

(assert (=> d!295626 (= res!463387 (matchR!1397 (regOne!6234 r!15766) Nil!10075))))

(assert (=> d!295626 (validRegex!1330 (regOne!6234 r!15766))))

(assert (=> d!295626 (= (findConcatSeparation!496 (regOne!6234 r!15766) EmptyExpr!2861 Nil!10075 s!10566 s!10566) lt!356141)))

(declare-fun b!1031213 () Bool)

(assert (=> b!1031213 (= e!657336 (matchR!1397 EmptyExpr!2861 s!10566))))

(assert (= (and d!295626 res!463387) b!1031213))

(assert (= (and d!295626 c!171043) b!1031205))

(assert (= (and d!295626 (not c!171043)) b!1031206))

(assert (= (and b!1031206 c!171042) b!1031211))

(assert (= (and b!1031206 (not c!171042)) b!1031209))

(assert (= (and d!295626 res!463385) b!1031210))

(assert (= (and b!1031210 res!463386) b!1031207))

(assert (= (and b!1031207 res!463383) b!1031208))

(assert (= (and d!295626 (not res!463384)) b!1031212))

(declare-fun m!1204717 () Bool)

(assert (=> b!1031207 m!1204717))

(declare-fun m!1204719 () Bool)

(assert (=> b!1031207 m!1204719))

(declare-fun m!1204721 () Bool)

(assert (=> b!1031209 m!1204721))

(assert (=> b!1031209 m!1204721))

(declare-fun m!1204723 () Bool)

(assert (=> b!1031209 m!1204723))

(declare-fun m!1204725 () Bool)

(assert (=> b!1031209 m!1204725))

(assert (=> b!1031209 m!1204721))

(declare-fun m!1204727 () Bool)

(assert (=> b!1031209 m!1204727))

(declare-fun m!1204729 () Bool)

(assert (=> b!1031213 m!1204729))

(declare-fun m!1204731 () Bool)

(assert (=> d!295626 m!1204731))

(declare-fun m!1204733 () Bool)

(assert (=> d!295626 m!1204733))

(assert (=> d!295626 m!1204515))

(assert (=> b!1031212 m!1204731))

(assert (=> b!1031210 m!1204717))

(declare-fun m!1204735 () Bool)

(assert (=> b!1031210 m!1204735))

(assert (=> b!1031208 m!1204717))

(declare-fun m!1204737 () Bool)

(assert (=> b!1031208 m!1204737))

(assert (=> b!1030774 d!295626))

(declare-fun d!295628 () Bool)

(declare-fun choose!6568 (Int) Bool)

(assert (=> d!295628 (= (Exists!588 lambda!36985) (choose!6568 lambda!36985))))

(declare-fun bs!247303 () Bool)

(assert (= bs!247303 d!295628))

(declare-fun m!1204739 () Bool)

(assert (=> bs!247303 m!1204739))

(assert (=> b!1030774 d!295628))

(declare-fun d!295630 () Bool)

(assert (=> d!295630 (= (isEmpty!6459 s!10566) ((_ is Nil!10075) s!10566))))

(assert (=> b!1030774 d!295630))

(declare-fun d!295632 () Bool)

(assert (=> d!295632 (= (Exists!588 lambda!36986) (choose!6568 lambda!36986))))

(declare-fun bs!247304 () Bool)

(assert (= bs!247304 d!295632))

(declare-fun m!1204741 () Bool)

(assert (=> bs!247304 m!1204741))

(assert (=> b!1030774 d!295632))

(declare-fun bs!247305 () Bool)

(declare-fun d!295634 () Bool)

(assert (= bs!247305 (and d!295634 b!1030774)))

(declare-fun lambda!37010 () Int)

(assert (=> bs!247305 (= lambda!37010 lambda!36985)))

(assert (=> bs!247305 (not (= lambda!37010 lambda!36986))))

(declare-fun bs!247306 () Bool)

(assert (= bs!247306 (and d!295634 b!1030899)))

(assert (=> bs!247306 (not (= lambda!37010 lambda!37000))))

(declare-fun bs!247307 () Bool)

(assert (= bs!247307 (and d!295634 b!1030890)))

(assert (=> bs!247307 (not (= lambda!37010 lambda!37001))))

(assert (=> d!295634 true))

(assert (=> d!295634 true))

(assert (=> d!295634 true))

(assert (=> d!295634 (= (isDefined!2032 (findConcatSeparation!496 (regOne!6234 r!15766) EmptyExpr!2861 Nil!10075 s!10566 s!10566)) (Exists!588 lambda!37010))))

(declare-fun lt!356145 () Unit!15397)

(declare-fun choose!6569 (Regex!2861 Regex!2861 List!10091) Unit!15397)

(assert (=> d!295634 (= lt!356145 (choose!6569 (regOne!6234 r!15766) EmptyExpr!2861 s!10566))))

(assert (=> d!295634 (validRegex!1330 (regOne!6234 r!15766))))

(assert (=> d!295634 (= (lemmaFindConcatSeparationEquivalentToExists!496 (regOne!6234 r!15766) EmptyExpr!2861 s!10566) lt!356145)))

(declare-fun bs!247308 () Bool)

(assert (= bs!247308 d!295634))

(declare-fun m!1204743 () Bool)

(assert (=> bs!247308 m!1204743))

(assert (=> bs!247308 m!1204515))

(assert (=> bs!247308 m!1204535))

(declare-fun m!1204745 () Bool)

(assert (=> bs!247308 m!1204745))

(assert (=> bs!247308 m!1204535))

(declare-fun m!1204747 () Bool)

(assert (=> bs!247308 m!1204747))

(assert (=> b!1030774 d!295634))

(declare-fun bs!247309 () Bool)

(declare-fun d!295636 () Bool)

(assert (= bs!247309 (and d!295636 b!1030774)))

(declare-fun lambda!37015 () Int)

(assert (=> bs!247309 (= lambda!37015 lambda!36985)))

(declare-fun bs!247310 () Bool)

(assert (= bs!247310 (and d!295636 d!295634)))

(assert (=> bs!247310 (= lambda!37015 lambda!37010)))

(assert (=> bs!247309 (not (= lambda!37015 lambda!36986))))

(declare-fun bs!247311 () Bool)

(assert (= bs!247311 (and d!295636 b!1030890)))

(assert (=> bs!247311 (not (= lambda!37015 lambda!37001))))

(declare-fun bs!247312 () Bool)

(assert (= bs!247312 (and d!295636 b!1030899)))

(assert (=> bs!247312 (not (= lambda!37015 lambda!37000))))

(assert (=> d!295636 true))

(assert (=> d!295636 true))

(assert (=> d!295636 true))

(declare-fun lambda!37016 () Int)

(assert (=> bs!247309 (not (= lambda!37016 lambda!36985))))

(assert (=> bs!247310 (not (= lambda!37016 lambda!37010))))

(assert (=> bs!247309 (= lambda!37016 lambda!36986)))

(assert (=> bs!247311 (= (= EmptyExpr!2861 (regTwo!6234 r!15766)) (= lambda!37016 lambda!37001))))

(assert (=> bs!247312 (not (= lambda!37016 lambda!37000))))

(declare-fun bs!247313 () Bool)

(assert (= bs!247313 d!295636))

(assert (=> bs!247313 (not (= lambda!37016 lambda!37015))))

(assert (=> d!295636 true))

(assert (=> d!295636 true))

(assert (=> d!295636 true))

(assert (=> d!295636 (= (Exists!588 lambda!37015) (Exists!588 lambda!37016))))

(declare-fun lt!356148 () Unit!15397)

(declare-fun choose!6570 (Regex!2861 Regex!2861 List!10091) Unit!15397)

(assert (=> d!295636 (= lt!356148 (choose!6570 (regOne!6234 r!15766) EmptyExpr!2861 s!10566))))

(assert (=> d!295636 (validRegex!1330 (regOne!6234 r!15766))))

(assert (=> d!295636 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!284 (regOne!6234 r!15766) EmptyExpr!2861 s!10566) lt!356148)))

(declare-fun m!1204749 () Bool)

(assert (=> bs!247313 m!1204749))

(declare-fun m!1204751 () Bool)

(assert (=> bs!247313 m!1204751))

(declare-fun m!1204753 () Bool)

(assert (=> bs!247313 m!1204753))

(assert (=> bs!247313 m!1204515))

(assert (=> b!1030774 d!295636))

(declare-fun d!295638 () Bool)

(assert (=> d!295638 (= (isDefined!2032 lt!356085) (not (isEmpty!6460 lt!356085)))))

(declare-fun bs!247314 () Bool)

(assert (= bs!247314 d!295638))

(assert (=> bs!247314 m!1204547))

(assert (=> b!1030774 d!295638))

(declare-fun d!295640 () Bool)

(declare-fun e!657346 () Bool)

(assert (=> d!295640 e!657346))

(declare-fun res!463401 () Bool)

(assert (=> d!295640 (=> (not res!463401) (not e!657346))))

(declare-fun lt!356149 () List!10091)

(assert (=> d!295640 (= res!463401 (= (content!1448 lt!356149) ((_ map or) (content!1448 s!10566) (content!1448 Nil!10075))))))

(declare-fun e!657347 () List!10091)

(assert (=> d!295640 (= lt!356149 e!657347)))

(declare-fun c!171044 () Bool)

(assert (=> d!295640 (= c!171044 ((_ is Nil!10075) s!10566))))

(assert (=> d!295640 (= (++!2769 s!10566 Nil!10075) lt!356149)))

(declare-fun b!1031226 () Bool)

(assert (=> b!1031226 (= e!657347 Nil!10075)))

(declare-fun b!1031229 () Bool)

(assert (=> b!1031229 (= e!657346 (or (not (= Nil!10075 Nil!10075)) (= lt!356149 s!10566)))))

(declare-fun b!1031227 () Bool)

(assert (=> b!1031227 (= e!657347 (Cons!10075 (h!15476 s!10566) (++!2769 (t!101137 s!10566) Nil!10075)))))

(declare-fun b!1031228 () Bool)

(declare-fun res!463400 () Bool)

(assert (=> b!1031228 (=> (not res!463400) (not e!657346))))

(assert (=> b!1031228 (= res!463400 (= (size!7994 lt!356149) (+ (size!7994 s!10566) (size!7994 Nil!10075))))))

(assert (= (and d!295640 c!171044) b!1031226))

(assert (= (and d!295640 (not c!171044)) b!1031227))

(assert (= (and d!295640 res!463401) b!1031228))

(assert (= (and b!1031228 res!463400) b!1031229))

(declare-fun m!1204755 () Bool)

(assert (=> d!295640 m!1204755))

(assert (=> d!295640 m!1204705))

(assert (=> d!295640 m!1204703))

(declare-fun m!1204757 () Bool)

(assert (=> b!1031227 m!1204757))

(declare-fun m!1204759 () Bool)

(assert (=> b!1031228 m!1204759))

(assert (=> b!1031228 m!1204713))

(assert (=> b!1031228 m!1204711))

(assert (=> b!1030773 d!295640))

(declare-fun b!1031248 () Bool)

(declare-fun e!657368 () Bool)

(declare-fun e!657366 () Bool)

(assert (=> b!1031248 (= e!657368 e!657366)))

(declare-fun res!463413 () Bool)

(assert (=> b!1031248 (=> (not res!463413) (not e!657366))))

(declare-fun call!71067 () Bool)

(assert (=> b!1031248 (= res!463413 call!71067)))

(declare-fun b!1031249 () Bool)

(declare-fun e!657363 () Bool)

(declare-fun e!657367 () Bool)

(assert (=> b!1031249 (= e!657363 e!657367)))

(declare-fun res!463412 () Bool)

(assert (=> b!1031249 (= res!463412 (not (nullable!954 (reg!3190 r!15766))))))

(assert (=> b!1031249 (=> (not res!463412) (not e!657367))))

(declare-fun b!1031250 () Bool)

(declare-fun e!657364 () Bool)

(declare-fun call!71068 () Bool)

(assert (=> b!1031250 (= e!657364 call!71068)))

(declare-fun d!295642 () Bool)

(declare-fun res!463415 () Bool)

(declare-fun e!657362 () Bool)

(assert (=> d!295642 (=> res!463415 e!657362)))

(assert (=> d!295642 (= res!463415 ((_ is ElementMatch!2861) r!15766))))

(assert (=> d!295642 (= (validRegex!1330 r!15766) e!657362)))

(declare-fun b!1031251 () Bool)

(declare-fun res!463416 () Bool)

(assert (=> b!1031251 (=> res!463416 e!657368)))

(assert (=> b!1031251 (= res!463416 (not ((_ is Concat!4694) r!15766)))))

(declare-fun e!657365 () Bool)

(assert (=> b!1031251 (= e!657365 e!657368)))

(declare-fun bm!71061 () Bool)

(declare-fun c!171050 () Bool)

(assert (=> bm!71061 (= call!71067 (validRegex!1330 (ite c!171050 (regOne!6235 r!15766) (regOne!6234 r!15766))))))

(declare-fun b!1031252 () Bool)

(assert (=> b!1031252 (= e!657366 call!71068)))

(declare-fun b!1031253 () Bool)

(assert (=> b!1031253 (= e!657362 e!657363)))

(declare-fun c!171049 () Bool)

(assert (=> b!1031253 (= c!171049 ((_ is Star!2861) r!15766))))

(declare-fun bm!71062 () Bool)

(declare-fun call!71066 () Bool)

(assert (=> bm!71062 (= call!71068 call!71066)))

(declare-fun bm!71063 () Bool)

(assert (=> bm!71063 (= call!71066 (validRegex!1330 (ite c!171049 (reg!3190 r!15766) (ite c!171050 (regTwo!6235 r!15766) (regTwo!6234 r!15766)))))))

(declare-fun b!1031254 () Bool)

(declare-fun res!463414 () Bool)

(assert (=> b!1031254 (=> (not res!463414) (not e!657364))))

(assert (=> b!1031254 (= res!463414 call!71067)))

(assert (=> b!1031254 (= e!657365 e!657364)))

(declare-fun b!1031255 () Bool)

(assert (=> b!1031255 (= e!657367 call!71066)))

(declare-fun b!1031256 () Bool)

(assert (=> b!1031256 (= e!657363 e!657365)))

(assert (=> b!1031256 (= c!171050 ((_ is Union!2861) r!15766))))

(assert (= (and d!295642 (not res!463415)) b!1031253))

(assert (= (and b!1031253 c!171049) b!1031249))

(assert (= (and b!1031253 (not c!171049)) b!1031256))

(assert (= (and b!1031249 res!463412) b!1031255))

(assert (= (and b!1031256 c!171050) b!1031254))

(assert (= (and b!1031256 (not c!171050)) b!1031251))

(assert (= (and b!1031254 res!463414) b!1031250))

(assert (= (and b!1031251 (not res!463416)) b!1031248))

(assert (= (and b!1031248 res!463413) b!1031252))

(assert (= (or b!1031250 b!1031252) bm!71062))

(assert (= (or b!1031254 b!1031248) bm!71061))

(assert (= (or b!1031255 bm!71062) bm!71063))

(declare-fun m!1204761 () Bool)

(assert (=> b!1031249 m!1204761))

(declare-fun m!1204763 () Bool)

(assert (=> bm!71061 m!1204763))

(declare-fun m!1204765 () Bool)

(assert (=> bm!71063 m!1204765))

(assert (=> start!89734 d!295642))

(declare-fun b!1031266 () Bool)

(declare-fun res!463428 () Bool)

(declare-fun e!657375 () Bool)

(assert (=> b!1031266 (=> (not res!463428) (not e!657375))))

(assert (=> b!1031266 (= res!463428 (= (head!1909 Nil!10075) (head!1909 s!10566)))))

(declare-fun d!295644 () Bool)

(declare-fun e!657376 () Bool)

(assert (=> d!295644 e!657376))

(declare-fun res!463425 () Bool)

(assert (=> d!295644 (=> res!463425 e!657376)))

(declare-fun lt!356152 () Bool)

(assert (=> d!295644 (= res!463425 (not lt!356152))))

(declare-fun e!657377 () Bool)

(assert (=> d!295644 (= lt!356152 e!657377)))

(declare-fun res!463426 () Bool)

(assert (=> d!295644 (=> res!463426 e!657377)))

(assert (=> d!295644 (= res!463426 ((_ is Nil!10075) Nil!10075))))

(assert (=> d!295644 (= (isPrefix!1019 Nil!10075 s!10566) lt!356152)))

(declare-fun b!1031265 () Bool)

(assert (=> b!1031265 (= e!657377 e!657375)))

(declare-fun res!463427 () Bool)

(assert (=> b!1031265 (=> (not res!463427) (not e!657375))))

(assert (=> b!1031265 (= res!463427 (not ((_ is Nil!10075) s!10566)))))

(declare-fun b!1031267 () Bool)

(assert (=> b!1031267 (= e!657375 (isPrefix!1019 (tail!1471 Nil!10075) (tail!1471 s!10566)))))

(declare-fun b!1031268 () Bool)

(assert (=> b!1031268 (= e!657376 (>= (size!7994 s!10566) (size!7994 Nil!10075)))))

(assert (= (and d!295644 (not res!463426)) b!1031265))

(assert (= (and b!1031265 res!463427) b!1031266))

(assert (= (and b!1031266 res!463428) b!1031267))

(assert (= (and d!295644 (not res!463425)) b!1031268))

(declare-fun m!1204767 () Bool)

(assert (=> b!1031266 m!1204767))

(assert (=> b!1031266 m!1204631))

(declare-fun m!1204769 () Bool)

(assert (=> b!1031267 m!1204769))

(assert (=> b!1031267 m!1204635))

(assert (=> b!1031267 m!1204769))

(assert (=> b!1031267 m!1204635))

(declare-fun m!1204771 () Bool)

(assert (=> b!1031267 m!1204771))

(assert (=> b!1031268 m!1204713))

(assert (=> b!1031268 m!1204711))

(assert (=> b!1030778 d!295644))

(declare-fun b!1031269 () Bool)

(declare-fun res!463432 () Bool)

(declare-fun e!657384 () Bool)

(assert (=> b!1031269 (=> res!463432 e!657384)))

(assert (=> b!1031269 (= res!463432 (not (isEmpty!6459 (tail!1471 Nil!10075))))))

(declare-fun b!1031270 () Bool)

(declare-fun e!657378 () Bool)

(assert (=> b!1031270 (= e!657378 e!657384)))

(declare-fun res!463436 () Bool)

(assert (=> b!1031270 (=> res!463436 e!657384)))

(declare-fun call!71069 () Bool)

(assert (=> b!1031270 (= res!463436 call!71069)))

(declare-fun b!1031271 () Bool)

(declare-fun e!657381 () Bool)

(assert (=> b!1031271 (= e!657381 e!657378)))

(declare-fun res!463429 () Bool)

(assert (=> b!1031271 (=> (not res!463429) (not e!657378))))

(declare-fun lt!356153 () Bool)

(assert (=> b!1031271 (= res!463429 (not lt!356153))))

(declare-fun b!1031272 () Bool)

(declare-fun res!463430 () Bool)

(declare-fun e!657383 () Bool)

(assert (=> b!1031272 (=> (not res!463430) (not e!657383))))

(assert (=> b!1031272 (= res!463430 (not call!71069))))

(declare-fun b!1031273 () Bool)

(declare-fun e!657379 () Bool)

(assert (=> b!1031273 (= e!657379 (not lt!356153))))

(declare-fun b!1031274 () Bool)

(declare-fun res!463433 () Bool)

(assert (=> b!1031274 (=> (not res!463433) (not e!657383))))

(assert (=> b!1031274 (= res!463433 (isEmpty!6459 (tail!1471 Nil!10075)))))

(declare-fun b!1031275 () Bool)

(declare-fun e!657382 () Bool)

(assert (=> b!1031275 (= e!657382 e!657379)))

(declare-fun c!171052 () Bool)

(assert (=> b!1031275 (= c!171052 ((_ is EmptyLang!2861) EmptyExpr!2861))))

(declare-fun b!1031276 () Bool)

(assert (=> b!1031276 (= e!657383 (= (head!1909 Nil!10075) (c!170950 EmptyExpr!2861)))))

(declare-fun b!1031277 () Bool)

(declare-fun e!657380 () Bool)

(assert (=> b!1031277 (= e!657380 (matchR!1397 (derivativeStep!754 EmptyExpr!2861 (head!1909 Nil!10075)) (tail!1471 Nil!10075)))))

(declare-fun d!295646 () Bool)

(assert (=> d!295646 e!657382))

(declare-fun c!171053 () Bool)

(assert (=> d!295646 (= c!171053 ((_ is EmptyExpr!2861) EmptyExpr!2861))))

(assert (=> d!295646 (= lt!356153 e!657380)))

(declare-fun c!171051 () Bool)

(assert (=> d!295646 (= c!171051 (isEmpty!6459 Nil!10075))))

(assert (=> d!295646 (validRegex!1330 EmptyExpr!2861)))

(assert (=> d!295646 (= (matchR!1397 EmptyExpr!2861 Nil!10075) lt!356153)))

(declare-fun b!1031278 () Bool)

(assert (=> b!1031278 (= e!657384 (not (= (head!1909 Nil!10075) (c!170950 EmptyExpr!2861))))))

(declare-fun b!1031279 () Bool)

(assert (=> b!1031279 (= e!657382 (= lt!356153 call!71069))))

(declare-fun b!1031280 () Bool)

(declare-fun res!463434 () Bool)

(assert (=> b!1031280 (=> res!463434 e!657381)))

(assert (=> b!1031280 (= res!463434 e!657383)))

(declare-fun res!463435 () Bool)

(assert (=> b!1031280 (=> (not res!463435) (not e!657383))))

(assert (=> b!1031280 (= res!463435 lt!356153)))

(declare-fun bm!71064 () Bool)

(assert (=> bm!71064 (= call!71069 (isEmpty!6459 Nil!10075))))

(declare-fun b!1031281 () Bool)

(declare-fun res!463431 () Bool)

(assert (=> b!1031281 (=> res!463431 e!657381)))

(assert (=> b!1031281 (= res!463431 (not ((_ is ElementMatch!2861) EmptyExpr!2861)))))

(assert (=> b!1031281 (= e!657379 e!657381)))

(declare-fun b!1031282 () Bool)

(assert (=> b!1031282 (= e!657380 (nullable!954 EmptyExpr!2861))))

(assert (= (and d!295646 c!171051) b!1031282))

(assert (= (and d!295646 (not c!171051)) b!1031277))

(assert (= (and d!295646 c!171053) b!1031279))

(assert (= (and d!295646 (not c!171053)) b!1031275))

(assert (= (and b!1031275 c!171052) b!1031273))

(assert (= (and b!1031275 (not c!171052)) b!1031281))

(assert (= (and b!1031281 (not res!463431)) b!1031280))

(assert (= (and b!1031280 res!463435) b!1031272))

(assert (= (and b!1031272 res!463430) b!1031274))

(assert (= (and b!1031274 res!463433) b!1031276))

(assert (= (and b!1031280 (not res!463434)) b!1031271))

(assert (= (and b!1031271 res!463429) b!1031270))

(assert (= (and b!1031270 (not res!463436)) b!1031269))

(assert (= (and b!1031269 (not res!463432)) b!1031278))

(assert (= (or b!1031279 b!1031270 b!1031272) bm!71064))

(assert (=> b!1031277 m!1204767))

(assert (=> b!1031277 m!1204767))

(declare-fun m!1204773 () Bool)

(assert (=> b!1031277 m!1204773))

(assert (=> b!1031277 m!1204769))

(assert (=> b!1031277 m!1204773))

(assert (=> b!1031277 m!1204769))

(declare-fun m!1204775 () Bool)

(assert (=> b!1031277 m!1204775))

(assert (=> b!1031278 m!1204767))

(assert (=> b!1031274 m!1204769))

(assert (=> b!1031274 m!1204769))

(declare-fun m!1204777 () Bool)

(assert (=> b!1031274 m!1204777))

(assert (=> b!1031269 m!1204769))

(assert (=> b!1031269 m!1204769))

(assert (=> b!1031269 m!1204777))

(assert (=> b!1031276 m!1204767))

(declare-fun m!1204779 () Bool)

(assert (=> b!1031282 m!1204779))

(declare-fun m!1204781 () Bool)

(assert (=> d!295646 m!1204781))

(declare-fun m!1204783 () Bool)

(assert (=> d!295646 m!1204783))

(assert (=> bm!71064 m!1204781))

(assert (=> b!1030782 d!295646))

(declare-fun b!1031283 () Bool)

(declare-fun res!463440 () Bool)

(declare-fun e!657391 () Bool)

(assert (=> b!1031283 (=> res!463440 e!657391)))

(assert (=> b!1031283 (= res!463440 (not (isEmpty!6459 (tail!1471 s!10566))))))

(declare-fun b!1031284 () Bool)

(declare-fun e!657385 () Bool)

(assert (=> b!1031284 (= e!657385 e!657391)))

(declare-fun res!463444 () Bool)

(assert (=> b!1031284 (=> res!463444 e!657391)))

(declare-fun call!71070 () Bool)

(assert (=> b!1031284 (= res!463444 call!71070)))

(declare-fun b!1031285 () Bool)

(declare-fun e!657388 () Bool)

(assert (=> b!1031285 (= e!657388 e!657385)))

(declare-fun res!463437 () Bool)

(assert (=> b!1031285 (=> (not res!463437) (not e!657385))))

(declare-fun lt!356154 () Bool)

(assert (=> b!1031285 (= res!463437 (not lt!356154))))

(declare-fun b!1031286 () Bool)

(declare-fun res!463438 () Bool)

(declare-fun e!657390 () Bool)

(assert (=> b!1031286 (=> (not res!463438) (not e!657390))))

(assert (=> b!1031286 (= res!463438 (not call!71070))))

(declare-fun b!1031287 () Bool)

(declare-fun e!657386 () Bool)

(assert (=> b!1031287 (= e!657386 (not lt!356154))))

(declare-fun b!1031288 () Bool)

(declare-fun res!463441 () Bool)

(assert (=> b!1031288 (=> (not res!463441) (not e!657390))))

(assert (=> b!1031288 (= res!463441 (isEmpty!6459 (tail!1471 s!10566)))))

(declare-fun b!1031289 () Bool)

(declare-fun e!657389 () Bool)

(assert (=> b!1031289 (= e!657389 e!657386)))

(declare-fun c!171055 () Bool)

(assert (=> b!1031289 (= c!171055 ((_ is EmptyLang!2861) lt!356083))))

(declare-fun b!1031290 () Bool)

(assert (=> b!1031290 (= e!657390 (= (head!1909 s!10566) (c!170950 lt!356083)))))

(declare-fun b!1031291 () Bool)

(declare-fun e!657387 () Bool)

(assert (=> b!1031291 (= e!657387 (matchR!1397 (derivativeStep!754 lt!356083 (head!1909 s!10566)) (tail!1471 s!10566)))))

(declare-fun d!295648 () Bool)

(assert (=> d!295648 e!657389))

(declare-fun c!171056 () Bool)

(assert (=> d!295648 (= c!171056 ((_ is EmptyExpr!2861) lt!356083))))

(assert (=> d!295648 (= lt!356154 e!657387)))

(declare-fun c!171054 () Bool)

(assert (=> d!295648 (= c!171054 (isEmpty!6459 s!10566))))

(assert (=> d!295648 (validRegex!1330 lt!356083)))

(assert (=> d!295648 (= (matchR!1397 lt!356083 s!10566) lt!356154)))

(declare-fun b!1031292 () Bool)

(assert (=> b!1031292 (= e!657391 (not (= (head!1909 s!10566) (c!170950 lt!356083))))))

(declare-fun b!1031293 () Bool)

(assert (=> b!1031293 (= e!657389 (= lt!356154 call!71070))))

(declare-fun b!1031294 () Bool)

(declare-fun res!463442 () Bool)

(assert (=> b!1031294 (=> res!463442 e!657388)))

(assert (=> b!1031294 (= res!463442 e!657390)))

(declare-fun res!463443 () Bool)

(assert (=> b!1031294 (=> (not res!463443) (not e!657390))))

(assert (=> b!1031294 (= res!463443 lt!356154)))

(declare-fun bm!71065 () Bool)

(assert (=> bm!71065 (= call!71070 (isEmpty!6459 s!10566))))

(declare-fun b!1031295 () Bool)

(declare-fun res!463439 () Bool)

(assert (=> b!1031295 (=> res!463439 e!657388)))

(assert (=> b!1031295 (= res!463439 (not ((_ is ElementMatch!2861) lt!356083)))))

(assert (=> b!1031295 (= e!657386 e!657388)))

(declare-fun b!1031296 () Bool)

(assert (=> b!1031296 (= e!657387 (nullable!954 lt!356083))))

(assert (= (and d!295648 c!171054) b!1031296))

(assert (= (and d!295648 (not c!171054)) b!1031291))

(assert (= (and d!295648 c!171056) b!1031293))

(assert (= (and d!295648 (not c!171056)) b!1031289))

(assert (= (and b!1031289 c!171055) b!1031287))

(assert (= (and b!1031289 (not c!171055)) b!1031295))

(assert (= (and b!1031295 (not res!463439)) b!1031294))

(assert (= (and b!1031294 res!463443) b!1031286))

(assert (= (and b!1031286 res!463438) b!1031288))

(assert (= (and b!1031288 res!463441) b!1031290))

(assert (= (and b!1031294 (not res!463442)) b!1031285))

(assert (= (and b!1031285 res!463437) b!1031284))

(assert (= (and b!1031284 (not res!463444)) b!1031283))

(assert (= (and b!1031283 (not res!463440)) b!1031292))

(assert (= (or b!1031293 b!1031284 b!1031286) bm!71065))

(assert (=> b!1031291 m!1204631))

(assert (=> b!1031291 m!1204631))

(declare-fun m!1204785 () Bool)

(assert (=> b!1031291 m!1204785))

(assert (=> b!1031291 m!1204635))

(assert (=> b!1031291 m!1204785))

(assert (=> b!1031291 m!1204635))

(declare-fun m!1204787 () Bool)

(assert (=> b!1031291 m!1204787))

(assert (=> b!1031292 m!1204631))

(assert (=> b!1031288 m!1204635))

(assert (=> b!1031288 m!1204635))

(assert (=> b!1031288 m!1204639))

(assert (=> b!1031283 m!1204635))

(assert (=> b!1031283 m!1204635))

(assert (=> b!1031283 m!1204639))

(assert (=> b!1031290 m!1204631))

(declare-fun m!1204789 () Bool)

(assert (=> b!1031296 m!1204789))

(assert (=> d!295648 m!1204543))

(declare-fun m!1204791 () Bool)

(assert (=> d!295648 m!1204791))

(assert (=> bm!71065 m!1204543))

(assert (=> b!1030781 d!295648))

(declare-fun b!1031297 () Bool)

(declare-fun res!463448 () Bool)

(declare-fun e!657398 () Bool)

(assert (=> b!1031297 (=> res!463448 e!657398)))

(assert (=> b!1031297 (= res!463448 (not (isEmpty!6459 (tail!1471 s!10566))))))

(declare-fun b!1031298 () Bool)

(declare-fun e!657392 () Bool)

(assert (=> b!1031298 (= e!657392 e!657398)))

(declare-fun res!463452 () Bool)

(assert (=> b!1031298 (=> res!463452 e!657398)))

(declare-fun call!71071 () Bool)

(assert (=> b!1031298 (= res!463452 call!71071)))

(declare-fun b!1031299 () Bool)

(declare-fun e!657395 () Bool)

(assert (=> b!1031299 (= e!657395 e!657392)))

(declare-fun res!463445 () Bool)

(assert (=> b!1031299 (=> (not res!463445) (not e!657392))))

(declare-fun lt!356155 () Bool)

(assert (=> b!1031299 (= res!463445 (not lt!356155))))

(declare-fun b!1031300 () Bool)

(declare-fun res!463446 () Bool)

(declare-fun e!657397 () Bool)

(assert (=> b!1031300 (=> (not res!463446) (not e!657397))))

(assert (=> b!1031300 (= res!463446 (not call!71071))))

(declare-fun b!1031301 () Bool)

(declare-fun e!657393 () Bool)

(assert (=> b!1031301 (= e!657393 (not lt!356155))))

(declare-fun b!1031302 () Bool)

(declare-fun res!463449 () Bool)

(assert (=> b!1031302 (=> (not res!463449) (not e!657397))))

(assert (=> b!1031302 (= res!463449 (isEmpty!6459 (tail!1471 s!10566)))))

(declare-fun b!1031303 () Bool)

(declare-fun e!657396 () Bool)

(assert (=> b!1031303 (= e!657396 e!657393)))

(declare-fun c!171058 () Bool)

(assert (=> b!1031303 (= c!171058 ((_ is EmptyLang!2861) (regOne!6234 r!15766)))))

(declare-fun b!1031304 () Bool)

(assert (=> b!1031304 (= e!657397 (= (head!1909 s!10566) (c!170950 (regOne!6234 r!15766))))))

(declare-fun b!1031305 () Bool)

(declare-fun e!657394 () Bool)

(assert (=> b!1031305 (= e!657394 (matchR!1397 (derivativeStep!754 (regOne!6234 r!15766) (head!1909 s!10566)) (tail!1471 s!10566)))))

(declare-fun d!295650 () Bool)

(assert (=> d!295650 e!657396))

(declare-fun c!171059 () Bool)

(assert (=> d!295650 (= c!171059 ((_ is EmptyExpr!2861) (regOne!6234 r!15766)))))

(assert (=> d!295650 (= lt!356155 e!657394)))

(declare-fun c!171057 () Bool)

(assert (=> d!295650 (= c!171057 (isEmpty!6459 s!10566))))

(assert (=> d!295650 (validRegex!1330 (regOne!6234 r!15766))))

(assert (=> d!295650 (= (matchR!1397 (regOne!6234 r!15766) s!10566) lt!356155)))

(declare-fun b!1031306 () Bool)

(assert (=> b!1031306 (= e!657398 (not (= (head!1909 s!10566) (c!170950 (regOne!6234 r!15766)))))))

(declare-fun b!1031307 () Bool)

(assert (=> b!1031307 (= e!657396 (= lt!356155 call!71071))))

(declare-fun b!1031308 () Bool)

(declare-fun res!463450 () Bool)

(assert (=> b!1031308 (=> res!463450 e!657395)))

(assert (=> b!1031308 (= res!463450 e!657397)))

(declare-fun res!463451 () Bool)

(assert (=> b!1031308 (=> (not res!463451) (not e!657397))))

(assert (=> b!1031308 (= res!463451 lt!356155)))

(declare-fun bm!71066 () Bool)

(assert (=> bm!71066 (= call!71071 (isEmpty!6459 s!10566))))

(declare-fun b!1031309 () Bool)

(declare-fun res!463447 () Bool)

(assert (=> b!1031309 (=> res!463447 e!657395)))

(assert (=> b!1031309 (= res!463447 (not ((_ is ElementMatch!2861) (regOne!6234 r!15766))))))

(assert (=> b!1031309 (= e!657393 e!657395)))

(declare-fun b!1031310 () Bool)

(assert (=> b!1031310 (= e!657394 (nullable!954 (regOne!6234 r!15766)))))

(assert (= (and d!295650 c!171057) b!1031310))

(assert (= (and d!295650 (not c!171057)) b!1031305))

(assert (= (and d!295650 c!171059) b!1031307))

(assert (= (and d!295650 (not c!171059)) b!1031303))

(assert (= (and b!1031303 c!171058) b!1031301))

(assert (= (and b!1031303 (not c!171058)) b!1031309))

(assert (= (and b!1031309 (not res!463447)) b!1031308))

(assert (= (and b!1031308 res!463451) b!1031300))

(assert (= (and b!1031300 res!463446) b!1031302))

(assert (= (and b!1031302 res!463449) b!1031304))

(assert (= (and b!1031308 (not res!463450)) b!1031299))

(assert (= (and b!1031299 res!463445) b!1031298))

(assert (= (and b!1031298 (not res!463452)) b!1031297))

(assert (= (and b!1031297 (not res!463448)) b!1031306))

(assert (= (or b!1031307 b!1031298 b!1031300) bm!71066))

(assert (=> b!1031305 m!1204631))

(assert (=> b!1031305 m!1204631))

(declare-fun m!1204793 () Bool)

(assert (=> b!1031305 m!1204793))

(assert (=> b!1031305 m!1204635))

(assert (=> b!1031305 m!1204793))

(assert (=> b!1031305 m!1204635))

(declare-fun m!1204795 () Bool)

(assert (=> b!1031305 m!1204795))

(assert (=> b!1031306 m!1204631))

(assert (=> b!1031302 m!1204635))

(assert (=> b!1031302 m!1204635))

(assert (=> b!1031302 m!1204639))

(assert (=> b!1031297 m!1204635))

(assert (=> b!1031297 m!1204635))

(assert (=> b!1031297 m!1204639))

(assert (=> b!1031304 m!1204631))

(declare-fun m!1204797 () Bool)

(assert (=> b!1031310 m!1204797))

(assert (=> d!295650 m!1204543))

(assert (=> d!295650 m!1204515))

(assert (=> bm!71066 m!1204543))

(assert (=> b!1030781 d!295650))

(declare-fun bm!71077 () Bool)

(declare-fun call!71084 () Regex!2861)

(declare-fun call!71085 () Regex!2861)

(assert (=> bm!71077 (= call!71084 call!71085)))

(declare-fun b!1031333 () Bool)

(declare-fun e!657416 () Regex!2861)

(assert (=> b!1031333 (= e!657416 (regOne!6234 r!15766))))

(declare-fun bm!71078 () Bool)

(declare-fun call!71086 () Regex!2861)

(declare-fun call!71083 () Regex!2861)

(assert (=> bm!71078 (= call!71086 call!71083)))

(declare-fun d!295652 () Bool)

(declare-fun e!657411 () Bool)

(assert (=> d!295652 e!657411))

(declare-fun res!463455 () Bool)

(assert (=> d!295652 (=> (not res!463455) (not e!657411))))

(declare-fun lt!356158 () Regex!2861)

(assert (=> d!295652 (= res!463455 (validRegex!1330 lt!356158))))

(declare-fun e!657415 () Regex!2861)

(assert (=> d!295652 (= lt!356158 e!657415)))

(declare-fun c!171074 () Bool)

(assert (=> d!295652 (= c!171074 (and ((_ is Concat!4694) (regOne!6234 r!15766)) ((_ is EmptyExpr!2861) (regOne!6234 (regOne!6234 r!15766)))))))

(assert (=> d!295652 (validRegex!1330 (regOne!6234 r!15766))))

(assert (=> d!295652 (= (removeUselessConcat!418 (regOne!6234 r!15766)) lt!356158)))

(declare-fun b!1031334 () Bool)

(assert (=> b!1031334 (= e!657411 (= (nullable!954 lt!356158) (nullable!954 (regOne!6234 r!15766))))))

(declare-fun b!1031335 () Bool)

(declare-fun c!171072 () Bool)

(assert (=> b!1031335 (= c!171072 ((_ is Concat!4694) (regOne!6234 r!15766)))))

(declare-fun e!657414 () Regex!2861)

(declare-fun e!657412 () Regex!2861)

(assert (=> b!1031335 (= e!657414 e!657412)))

(declare-fun bm!71079 () Bool)

(assert (=> bm!71079 (= call!71085 (removeUselessConcat!418 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))))))

(declare-fun b!1031336 () Bool)

(assert (=> b!1031336 (= e!657415 e!657414)))

(declare-fun c!171070 () Bool)

(assert (=> b!1031336 (= c!171070 (and ((_ is Concat!4694) (regOne!6234 r!15766)) ((_ is EmptyExpr!2861) (regTwo!6234 (regOne!6234 r!15766)))))))

(declare-fun b!1031337 () Bool)

(assert (=> b!1031337 (= e!657415 call!71085)))

(declare-fun b!1031338 () Bool)

(assert (=> b!1031338 (= e!657412 (Concat!4694 call!71084 call!71083))))

(declare-fun b!1031339 () Bool)

(declare-fun e!657413 () Regex!2861)

(assert (=> b!1031339 (= e!657413 (Union!2861 call!71084 call!71086))))

(declare-fun b!1031340 () Bool)

(declare-fun call!71082 () Regex!2861)

(assert (=> b!1031340 (= e!657414 call!71082)))

(declare-fun bm!71080 () Bool)

(declare-fun c!171071 () Bool)

(assert (=> bm!71080 (= call!71082 (removeUselessConcat!418 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))))))

(declare-fun b!1031341 () Bool)

(assert (=> b!1031341 (= e!657412 e!657413)))

(assert (=> b!1031341 (= c!171071 ((_ is Union!2861) (regOne!6234 r!15766)))))

(declare-fun b!1031342 () Bool)

(assert (=> b!1031342 (= e!657416 (Star!2861 call!71086))))

(declare-fun bm!71081 () Bool)

(assert (=> bm!71081 (= call!71083 call!71082)))

(declare-fun b!1031343 () Bool)

(declare-fun c!171073 () Bool)

(assert (=> b!1031343 (= c!171073 ((_ is Star!2861) (regOne!6234 r!15766)))))

(assert (=> b!1031343 (= e!657413 e!657416)))

(assert (= (and d!295652 c!171074) b!1031337))

(assert (= (and d!295652 (not c!171074)) b!1031336))

(assert (= (and b!1031336 c!171070) b!1031340))

(assert (= (and b!1031336 (not c!171070)) b!1031335))

(assert (= (and b!1031335 c!171072) b!1031338))

(assert (= (and b!1031335 (not c!171072)) b!1031341))

(assert (= (and b!1031341 c!171071) b!1031339))

(assert (= (and b!1031341 (not c!171071)) b!1031343))

(assert (= (and b!1031343 c!171073) b!1031342))

(assert (= (and b!1031343 (not c!171073)) b!1031333))

(assert (= (or b!1031339 b!1031342) bm!71078))

(assert (= (or b!1031338 bm!71078) bm!71081))

(assert (= (or b!1031338 b!1031339) bm!71077))

(assert (= (or b!1031340 bm!71081) bm!71080))

(assert (= (or b!1031337 bm!71077) bm!71079))

(assert (= (and d!295652 res!463455) b!1031334))

(declare-fun m!1204799 () Bool)

(assert (=> d!295652 m!1204799))

(assert (=> d!295652 m!1204515))

(declare-fun m!1204801 () Bool)

(assert (=> b!1031334 m!1204801))

(assert (=> b!1031334 m!1204797))

(declare-fun m!1204803 () Bool)

(assert (=> bm!71079 m!1204803))

(declare-fun m!1204805 () Bool)

(assert (=> bm!71080 m!1204805))

(assert (=> b!1030781 d!295652))

(declare-fun d!295654 () Bool)

(assert (=> d!295654 (= (matchR!1397 (regOne!6234 r!15766) s!10566) (matchR!1397 (removeUselessConcat!418 (regOne!6234 r!15766)) s!10566))))

(declare-fun lt!356161 () Unit!15397)

(declare-fun choose!6571 (Regex!2861 List!10091) Unit!15397)

(assert (=> d!295654 (= lt!356161 (choose!6571 (regOne!6234 r!15766) s!10566))))

(assert (=> d!295654 (validRegex!1330 (regOne!6234 r!15766))))

(assert (=> d!295654 (= (lemmaRemoveUselessConcatSound!256 (regOne!6234 r!15766) s!10566) lt!356161)))

(declare-fun bs!247315 () Bool)

(assert (= bs!247315 d!295654))

(assert (=> bs!247315 m!1204509))

(assert (=> bs!247315 m!1204511))

(assert (=> bs!247315 m!1204515))

(declare-fun m!1204807 () Bool)

(assert (=> bs!247315 m!1204807))

(assert (=> bs!247315 m!1204511))

(declare-fun m!1204809 () Bool)

(assert (=> bs!247315 m!1204809))

(assert (=> b!1030781 d!295654))

(declare-fun b!1031344 () Bool)

(declare-fun e!657423 () Bool)

(declare-fun e!657421 () Bool)

(assert (=> b!1031344 (= e!657423 e!657421)))

(declare-fun res!463457 () Bool)

(assert (=> b!1031344 (=> (not res!463457) (not e!657421))))

(declare-fun call!71088 () Bool)

(assert (=> b!1031344 (= res!463457 call!71088)))

(declare-fun b!1031345 () Bool)

(declare-fun e!657418 () Bool)

(declare-fun e!657422 () Bool)

(assert (=> b!1031345 (= e!657418 e!657422)))

(declare-fun res!463456 () Bool)

(assert (=> b!1031345 (= res!463456 (not (nullable!954 (reg!3190 (regOne!6234 r!15766)))))))

(assert (=> b!1031345 (=> (not res!463456) (not e!657422))))

(declare-fun b!1031346 () Bool)

(declare-fun e!657419 () Bool)

(declare-fun call!71089 () Bool)

(assert (=> b!1031346 (= e!657419 call!71089)))

(declare-fun d!295656 () Bool)

(declare-fun res!463459 () Bool)

(declare-fun e!657417 () Bool)

(assert (=> d!295656 (=> res!463459 e!657417)))

(assert (=> d!295656 (= res!463459 ((_ is ElementMatch!2861) (regOne!6234 r!15766)))))

(assert (=> d!295656 (= (validRegex!1330 (regOne!6234 r!15766)) e!657417)))

(declare-fun b!1031347 () Bool)

(declare-fun res!463460 () Bool)

(assert (=> b!1031347 (=> res!463460 e!657423)))

(assert (=> b!1031347 (= res!463460 (not ((_ is Concat!4694) (regOne!6234 r!15766))))))

(declare-fun e!657420 () Bool)

(assert (=> b!1031347 (= e!657420 e!657423)))

(declare-fun bm!71082 () Bool)

(declare-fun c!171076 () Bool)

(assert (=> bm!71082 (= call!71088 (validRegex!1330 (ite c!171076 (regOne!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766)))))))

(declare-fun b!1031348 () Bool)

(assert (=> b!1031348 (= e!657421 call!71089)))

(declare-fun b!1031349 () Bool)

(assert (=> b!1031349 (= e!657417 e!657418)))

(declare-fun c!171075 () Bool)

(assert (=> b!1031349 (= c!171075 ((_ is Star!2861) (regOne!6234 r!15766)))))

(declare-fun bm!71083 () Bool)

(declare-fun call!71087 () Bool)

(assert (=> bm!71083 (= call!71089 call!71087)))

(declare-fun bm!71084 () Bool)

(assert (=> bm!71084 (= call!71087 (validRegex!1330 (ite c!171075 (reg!3190 (regOne!6234 r!15766)) (ite c!171076 (regTwo!6235 (regOne!6234 r!15766)) (regTwo!6234 (regOne!6234 r!15766))))))))

(declare-fun b!1031350 () Bool)

(declare-fun res!463458 () Bool)

(assert (=> b!1031350 (=> (not res!463458) (not e!657419))))

(assert (=> b!1031350 (= res!463458 call!71088)))

(assert (=> b!1031350 (= e!657420 e!657419)))

(declare-fun b!1031351 () Bool)

(assert (=> b!1031351 (= e!657422 call!71087)))

(declare-fun b!1031352 () Bool)

(assert (=> b!1031352 (= e!657418 e!657420)))

(assert (=> b!1031352 (= c!171076 ((_ is Union!2861) (regOne!6234 r!15766)))))

(assert (= (and d!295656 (not res!463459)) b!1031349))

(assert (= (and b!1031349 c!171075) b!1031345))

(assert (= (and b!1031349 (not c!171075)) b!1031352))

(assert (= (and b!1031345 res!463456) b!1031351))

(assert (= (and b!1031352 c!171076) b!1031350))

(assert (= (and b!1031352 (not c!171076)) b!1031347))

(assert (= (and b!1031350 res!463458) b!1031346))

(assert (= (and b!1031347 (not res!463460)) b!1031344))

(assert (= (and b!1031344 res!463457) b!1031348))

(assert (= (or b!1031346 b!1031348) bm!71083))

(assert (= (or b!1031350 b!1031344) bm!71082))

(assert (= (or b!1031351 bm!71083) bm!71084))

(declare-fun m!1204811 () Bool)

(assert (=> b!1031345 m!1204811))

(declare-fun m!1204813 () Bool)

(assert (=> bm!71082 m!1204813))

(declare-fun m!1204815 () Bool)

(assert (=> bm!71084 m!1204815))

(assert (=> b!1030786 d!295656))

(declare-fun b!1031357 () Bool)

(declare-fun e!657426 () Bool)

(declare-fun tp!312321 () Bool)

(assert (=> b!1031357 (= e!657426 (and tp_is_empty!5365 tp!312321))))

(assert (=> b!1030784 (= tp!312277 e!657426)))

(assert (= (and b!1030784 ((_ is Cons!10075) (t!101137 s!10566))) b!1031357))

(declare-fun b!1031370 () Bool)

(declare-fun e!657429 () Bool)

(declare-fun tp!312335 () Bool)

(assert (=> b!1031370 (= e!657429 tp!312335)))

(declare-fun b!1031369 () Bool)

(declare-fun tp!312332 () Bool)

(declare-fun tp!312334 () Bool)

(assert (=> b!1031369 (= e!657429 (and tp!312332 tp!312334))))

(declare-fun b!1031371 () Bool)

(declare-fun tp!312336 () Bool)

(declare-fun tp!312333 () Bool)

(assert (=> b!1031371 (= e!657429 (and tp!312336 tp!312333))))

(declare-fun b!1031368 () Bool)

(assert (=> b!1031368 (= e!657429 tp_is_empty!5365)))

(assert (=> b!1030777 (= tp!312275 e!657429)))

(assert (= (and b!1030777 ((_ is ElementMatch!2861) (regOne!6234 r!15766))) b!1031368))

(assert (= (and b!1030777 ((_ is Concat!4694) (regOne!6234 r!15766))) b!1031369))

(assert (= (and b!1030777 ((_ is Star!2861) (regOne!6234 r!15766))) b!1031370))

(assert (= (and b!1030777 ((_ is Union!2861) (regOne!6234 r!15766))) b!1031371))

(declare-fun b!1031374 () Bool)

(declare-fun e!657430 () Bool)

(declare-fun tp!312340 () Bool)

(assert (=> b!1031374 (= e!657430 tp!312340)))

(declare-fun b!1031373 () Bool)

(declare-fun tp!312337 () Bool)

(declare-fun tp!312339 () Bool)

(assert (=> b!1031373 (= e!657430 (and tp!312337 tp!312339))))

(declare-fun b!1031375 () Bool)

(declare-fun tp!312341 () Bool)

(declare-fun tp!312338 () Bool)

(assert (=> b!1031375 (= e!657430 (and tp!312341 tp!312338))))

(declare-fun b!1031372 () Bool)

(assert (=> b!1031372 (= e!657430 tp_is_empty!5365)))

(assert (=> b!1030777 (= tp!312280 e!657430)))

(assert (= (and b!1030777 ((_ is ElementMatch!2861) (regTwo!6234 r!15766))) b!1031372))

(assert (= (and b!1030777 ((_ is Concat!4694) (regTwo!6234 r!15766))) b!1031373))

(assert (= (and b!1030777 ((_ is Star!2861) (regTwo!6234 r!15766))) b!1031374))

(assert (= (and b!1030777 ((_ is Union!2861) (regTwo!6234 r!15766))) b!1031375))

(declare-fun b!1031378 () Bool)

(declare-fun e!657431 () Bool)

(declare-fun tp!312345 () Bool)

(assert (=> b!1031378 (= e!657431 tp!312345)))

(declare-fun b!1031377 () Bool)

(declare-fun tp!312342 () Bool)

(declare-fun tp!312344 () Bool)

(assert (=> b!1031377 (= e!657431 (and tp!312342 tp!312344))))

(declare-fun b!1031379 () Bool)

(declare-fun tp!312346 () Bool)

(declare-fun tp!312343 () Bool)

(assert (=> b!1031379 (= e!657431 (and tp!312346 tp!312343))))

(declare-fun b!1031376 () Bool)

(assert (=> b!1031376 (= e!657431 tp_is_empty!5365)))

(assert (=> b!1030787 (= tp!312276 e!657431)))

(assert (= (and b!1030787 ((_ is ElementMatch!2861) (reg!3190 r!15766))) b!1031376))

(assert (= (and b!1030787 ((_ is Concat!4694) (reg!3190 r!15766))) b!1031377))

(assert (= (and b!1030787 ((_ is Star!2861) (reg!3190 r!15766))) b!1031378))

(assert (= (and b!1030787 ((_ is Union!2861) (reg!3190 r!15766))) b!1031379))

(declare-fun b!1031382 () Bool)

(declare-fun e!657432 () Bool)

(declare-fun tp!312350 () Bool)

(assert (=> b!1031382 (= e!657432 tp!312350)))

(declare-fun b!1031381 () Bool)

(declare-fun tp!312347 () Bool)

(declare-fun tp!312349 () Bool)

(assert (=> b!1031381 (= e!657432 (and tp!312347 tp!312349))))

(declare-fun b!1031383 () Bool)

(declare-fun tp!312351 () Bool)

(declare-fun tp!312348 () Bool)

(assert (=> b!1031383 (= e!657432 (and tp!312351 tp!312348))))

(declare-fun b!1031380 () Bool)

(assert (=> b!1031380 (= e!657432 tp_is_empty!5365)))

(assert (=> b!1030776 (= tp!312278 e!657432)))

(assert (= (and b!1030776 ((_ is ElementMatch!2861) (regOne!6235 r!15766))) b!1031380))

(assert (= (and b!1030776 ((_ is Concat!4694) (regOne!6235 r!15766))) b!1031381))

(assert (= (and b!1030776 ((_ is Star!2861) (regOne!6235 r!15766))) b!1031382))

(assert (= (and b!1030776 ((_ is Union!2861) (regOne!6235 r!15766))) b!1031383))

(declare-fun b!1031386 () Bool)

(declare-fun e!657433 () Bool)

(declare-fun tp!312355 () Bool)

(assert (=> b!1031386 (= e!657433 tp!312355)))

(declare-fun b!1031385 () Bool)

(declare-fun tp!312352 () Bool)

(declare-fun tp!312354 () Bool)

(assert (=> b!1031385 (= e!657433 (and tp!312352 tp!312354))))

(declare-fun b!1031387 () Bool)

(declare-fun tp!312356 () Bool)

(declare-fun tp!312353 () Bool)

(assert (=> b!1031387 (= e!657433 (and tp!312356 tp!312353))))

(declare-fun b!1031384 () Bool)

(assert (=> b!1031384 (= e!657433 tp_is_empty!5365)))

(assert (=> b!1030776 (= tp!312279 e!657433)))

(assert (= (and b!1030776 ((_ is ElementMatch!2861) (regTwo!6235 r!15766))) b!1031384))

(assert (= (and b!1030776 ((_ is Concat!4694) (regTwo!6235 r!15766))) b!1031385))

(assert (= (and b!1030776 ((_ is Star!2861) (regTwo!6235 r!15766))) b!1031386))

(assert (= (and b!1030776 ((_ is Union!2861) (regTwo!6235 r!15766))) b!1031387))

(check-sat (not b!1031310) (not bm!71061) (not d!295652) (not b!1031210) (not d!295628) (not b!1031377) (not b!1031369) (not bm!71066) (not b!1031277) (not bm!71064) (not b!1031282) (not b!1031345) (not d!295634) (not b!1031207) (not d!295626) (not b!1031213) (not b!1031290) (not b!1031267) (not d!295640) (not b!1031334) (not b!1031375) (not b!1031020) (not b!1031029) (not b!1031382) (not b!1031292) (not b!1031383) (not b!1031269) (not b!1031370) tp_is_empty!5365 (not b!1031274) (not bm!71065) (not b!1031017) (not b!1031374) (not d!295654) (not b!1030893) (not b!1031297) (not b!1031386) (not bm!71021) (not b!1031227) (not b!1030896) (not b!1031276) (not b!1031378) (not b!1031212) (not bm!71082) (not d!295616) (not bm!71084) (not b!1031291) (not b!1031249) (not b!1031012) (not b!1031302) (not bm!71063) (not b!1031268) (not b!1031278) (not d!295646) (not d!295638) (not b!1031137) (not d!295598) (not b!1031019) (not b!1031021) (not b!1031381) (not b!1031209) (not b!1031304) (not d!295636) (not b!1031379) (not bm!71080) (not b!1031138) (not d!295648) (not bm!71020) (not d!295604) (not b!1031373) (not b!1031385) (not b!1031288) (not b!1031387) (not d!295632) (not b!1031266) (not b!1031305) (not bm!71032) (not b!1031296) (not b!1031228) (not b!1031357) (not bm!71079) (not b!1031208) (not b!1031283) (not b!1031306) (not b!1031371) (not d!295650))
(check-sat)
(get-model)

(declare-fun d!295674 () Bool)

(declare-fun nullableFct!218 (Regex!2861) Bool)

(assert (=> d!295674 (= (nullable!954 r!15766) (nullableFct!218 r!15766))))

(declare-fun bs!247318 () Bool)

(assert (= bs!247318 d!295674))

(declare-fun m!1204843 () Bool)

(assert (=> bs!247318 m!1204843))

(assert (=> b!1031029 d!295674))

(declare-fun d!295676 () Bool)

(assert (not d!295676))

(assert (=> b!1031277 d!295676))

(declare-fun d!295678 () Bool)

(assert (not d!295678))

(assert (=> b!1031277 d!295678))

(declare-fun d!295682 () Bool)

(assert (not d!295682))

(assert (=> b!1031277 d!295682))

(declare-fun d!295684 () Bool)

(assert (not d!295684))

(assert (=> b!1031277 d!295684))

(declare-fun d!295688 () Bool)

(assert (=> d!295688 (= (nullable!954 (reg!3190 (regOne!6234 r!15766))) (nullableFct!218 (reg!3190 (regOne!6234 r!15766))))))

(declare-fun bs!247319 () Bool)

(assert (= bs!247319 d!295688))

(declare-fun m!1204851 () Bool)

(assert (=> bs!247319 m!1204851))

(assert (=> b!1031345 d!295688))

(declare-fun d!295692 () Bool)

(assert (=> d!295692 (= (isEmpty!6459 (tail!1471 s!10566)) ((_ is Nil!10075) (tail!1471 s!10566)))))

(assert (=> b!1031297 d!295692))

(declare-fun d!295696 () Bool)

(assert (=> d!295696 (= (tail!1471 s!10566) (t!101137 s!10566))))

(assert (=> b!1031297 d!295696))

(declare-fun d!295700 () Bool)

(assert (=> d!295700 (= (isDefined!2032 (findConcatSeparation!496 (regOne!6234 r!15766) EmptyExpr!2861 Nil!10075 s!10566 s!10566)) (not (isEmpty!6460 (findConcatSeparation!496 (regOne!6234 r!15766) EmptyExpr!2861 Nil!10075 s!10566 s!10566))))))

(declare-fun bs!247320 () Bool)

(assert (= bs!247320 d!295700))

(assert (=> bs!247320 m!1204535))

(declare-fun m!1204853 () Bool)

(assert (=> bs!247320 m!1204853))

(assert (=> d!295634 d!295700))

(assert (=> d!295634 d!295656))

(assert (=> d!295634 d!295626))

(declare-fun bs!247322 () Bool)

(declare-fun d!295702 () Bool)

(assert (= bs!247322 (and d!295702 b!1030774)))

(declare-fun lambda!37019 () Int)

(assert (=> bs!247322 (= lambda!37019 lambda!36985)))

(declare-fun bs!247323 () Bool)

(assert (= bs!247323 (and d!295702 d!295634)))

(assert (=> bs!247323 (= lambda!37019 lambda!37010)))

(assert (=> bs!247322 (not (= lambda!37019 lambda!36986))))

(declare-fun bs!247324 () Bool)

(assert (= bs!247324 (and d!295702 b!1030890)))

(assert (=> bs!247324 (not (= lambda!37019 lambda!37001))))

(declare-fun bs!247325 () Bool)

(assert (= bs!247325 (and d!295702 b!1030899)))

(assert (=> bs!247325 (not (= lambda!37019 lambda!37000))))

(declare-fun bs!247326 () Bool)

(assert (= bs!247326 (and d!295702 d!295636)))

(assert (=> bs!247326 (= lambda!37019 lambda!37015)))

(assert (=> bs!247326 (not (= lambda!37019 lambda!37016))))

(assert (=> d!295702 true))

(assert (=> d!295702 true))

(assert (=> d!295702 true))

(assert (=> d!295702 (= (isDefined!2032 (findConcatSeparation!496 (regOne!6234 r!15766) EmptyExpr!2861 Nil!10075 s!10566 s!10566)) (Exists!588 lambda!37019))))

(assert (=> d!295702 true))

(declare-fun _$89!1203 () Unit!15397)

(assert (=> d!295702 (= (choose!6569 (regOne!6234 r!15766) EmptyExpr!2861 s!10566) _$89!1203)))

(declare-fun bs!247327 () Bool)

(assert (= bs!247327 d!295702))

(assert (=> bs!247327 m!1204535))

(assert (=> bs!247327 m!1204535))

(assert (=> bs!247327 m!1204747))

(declare-fun m!1204877 () Bool)

(assert (=> bs!247327 m!1204877))

(assert (=> d!295634 d!295702))

(declare-fun d!295710 () Bool)

(assert (=> d!295710 (= (Exists!588 lambda!37010) (choose!6568 lambda!37010))))

(declare-fun bs!247328 () Bool)

(assert (= bs!247328 d!295710))

(declare-fun m!1204879 () Bool)

(assert (=> bs!247328 m!1204879))

(assert (=> d!295634 d!295710))

(declare-fun b!1031477 () Bool)

(declare-fun res!463499 () Bool)

(declare-fun e!657492 () Bool)

(assert (=> b!1031477 (=> res!463499 e!657492)))

(assert (=> b!1031477 (= res!463499 (not (isEmpty!6459 (tail!1471 s!10566))))))

(declare-fun b!1031478 () Bool)

(declare-fun e!657486 () Bool)

(assert (=> b!1031478 (= e!657486 e!657492)))

(declare-fun res!463503 () Bool)

(assert (=> b!1031478 (=> res!463503 e!657492)))

(declare-fun call!71103 () Bool)

(assert (=> b!1031478 (= res!463503 call!71103)))

(declare-fun b!1031479 () Bool)

(declare-fun e!657489 () Bool)

(assert (=> b!1031479 (= e!657489 e!657486)))

(declare-fun res!463496 () Bool)

(assert (=> b!1031479 (=> (not res!463496) (not e!657486))))

(declare-fun lt!356171 () Bool)

(assert (=> b!1031479 (= res!463496 (not lt!356171))))

(declare-fun b!1031480 () Bool)

(declare-fun res!463497 () Bool)

(declare-fun e!657491 () Bool)

(assert (=> b!1031480 (=> (not res!463497) (not e!657491))))

(assert (=> b!1031480 (= res!463497 (not call!71103))))

(declare-fun b!1031481 () Bool)

(declare-fun e!657487 () Bool)

(assert (=> b!1031481 (= e!657487 (not lt!356171))))

(declare-fun b!1031482 () Bool)

(declare-fun res!463500 () Bool)

(assert (=> b!1031482 (=> (not res!463500) (not e!657491))))

(assert (=> b!1031482 (= res!463500 (isEmpty!6459 (tail!1471 s!10566)))))

(declare-fun b!1031483 () Bool)

(declare-fun e!657490 () Bool)

(assert (=> b!1031483 (= e!657490 e!657487)))

(declare-fun c!171105 () Bool)

(assert (=> b!1031483 (= c!171105 ((_ is EmptyLang!2861) EmptyExpr!2861))))

(declare-fun b!1031484 () Bool)

(assert (=> b!1031484 (= e!657491 (= (head!1909 s!10566) (c!170950 EmptyExpr!2861)))))

(declare-fun b!1031485 () Bool)

(declare-fun e!657488 () Bool)

(assert (=> b!1031485 (= e!657488 (matchR!1397 (derivativeStep!754 EmptyExpr!2861 (head!1909 s!10566)) (tail!1471 s!10566)))))

(declare-fun d!295712 () Bool)

(assert (=> d!295712 e!657490))

(declare-fun c!171106 () Bool)

(assert (=> d!295712 (= c!171106 ((_ is EmptyExpr!2861) EmptyExpr!2861))))

(assert (=> d!295712 (= lt!356171 e!657488)))

(declare-fun c!171104 () Bool)

(assert (=> d!295712 (= c!171104 (isEmpty!6459 s!10566))))

(assert (=> d!295712 (validRegex!1330 EmptyExpr!2861)))

(assert (=> d!295712 (= (matchR!1397 EmptyExpr!2861 s!10566) lt!356171)))

(declare-fun b!1031486 () Bool)

(assert (=> b!1031486 (= e!657492 (not (= (head!1909 s!10566) (c!170950 EmptyExpr!2861))))))

(declare-fun b!1031487 () Bool)

(assert (=> b!1031487 (= e!657490 (= lt!356171 call!71103))))

(declare-fun b!1031488 () Bool)

(declare-fun res!463501 () Bool)

(assert (=> b!1031488 (=> res!463501 e!657489)))

(assert (=> b!1031488 (= res!463501 e!657491)))

(declare-fun res!463502 () Bool)

(assert (=> b!1031488 (=> (not res!463502) (not e!657491))))

(assert (=> b!1031488 (= res!463502 lt!356171)))

(declare-fun bm!71098 () Bool)

(assert (=> bm!71098 (= call!71103 (isEmpty!6459 s!10566))))

(declare-fun b!1031489 () Bool)

(declare-fun res!463498 () Bool)

(assert (=> b!1031489 (=> res!463498 e!657489)))

(assert (=> b!1031489 (= res!463498 (not ((_ is ElementMatch!2861) EmptyExpr!2861)))))

(assert (=> b!1031489 (= e!657487 e!657489)))

(declare-fun b!1031490 () Bool)

(assert (=> b!1031490 (= e!657488 (nullable!954 EmptyExpr!2861))))

(assert (= (and d!295712 c!171104) b!1031490))

(assert (= (and d!295712 (not c!171104)) b!1031485))

(assert (= (and d!295712 c!171106) b!1031487))

(assert (= (and d!295712 (not c!171106)) b!1031483))

(assert (= (and b!1031483 c!171105) b!1031481))

(assert (= (and b!1031483 (not c!171105)) b!1031489))

(assert (= (and b!1031489 (not res!463498)) b!1031488))

(assert (= (and b!1031488 res!463502) b!1031480))

(assert (= (and b!1031480 res!463497) b!1031482))

(assert (= (and b!1031482 res!463500) b!1031484))

(assert (= (and b!1031488 (not res!463501)) b!1031479))

(assert (= (and b!1031479 res!463496) b!1031478))

(assert (= (and b!1031478 (not res!463503)) b!1031477))

(assert (= (and b!1031477 (not res!463499)) b!1031486))

(assert (= (or b!1031487 b!1031478 b!1031480) bm!71098))

(assert (=> b!1031485 m!1204631))

(assert (=> b!1031485 m!1204631))

(declare-fun m!1204881 () Bool)

(assert (=> b!1031485 m!1204881))

(assert (=> b!1031485 m!1204635))

(assert (=> b!1031485 m!1204881))

(assert (=> b!1031485 m!1204635))

(declare-fun m!1204883 () Bool)

(assert (=> b!1031485 m!1204883))

(assert (=> b!1031486 m!1204631))

(assert (=> b!1031482 m!1204635))

(assert (=> b!1031482 m!1204635))

(assert (=> b!1031482 m!1204639))

(assert (=> b!1031477 m!1204635))

(assert (=> b!1031477 m!1204635))

(assert (=> b!1031477 m!1204639))

(assert (=> b!1031484 m!1204631))

(assert (=> b!1031490 m!1204779))

(assert (=> d!295712 m!1204543))

(assert (=> d!295712 m!1204783))

(assert (=> bm!71098 m!1204543))

(assert (=> b!1031213 d!295712))

(declare-fun d!295714 () Bool)

(declare-fun lt!356174 () Int)

(assert (=> d!295714 (>= lt!356174 0)))

(declare-fun e!657495 () Int)

(assert (=> d!295714 (= lt!356174 e!657495)))

(declare-fun c!171109 () Bool)

(assert (=> d!295714 (= c!171109 ((_ is Nil!10075) lt!356130))))

(assert (=> d!295714 (= (size!7994 lt!356130) lt!356174)))

(declare-fun b!1031495 () Bool)

(assert (=> b!1031495 (= e!657495 0)))

(declare-fun b!1031496 () Bool)

(assert (=> b!1031496 (= e!657495 (+ 1 (size!7994 (t!101137 lt!356130))))))

(assert (= (and d!295714 c!171109) b!1031495))

(assert (= (and d!295714 (not c!171109)) b!1031496))

(declare-fun m!1204885 () Bool)

(assert (=> b!1031496 m!1204885))

(assert (=> b!1031138 d!295714))

(declare-fun d!295716 () Bool)

(declare-fun lt!356175 () Int)

(assert (=> d!295716 (>= lt!356175 0)))

(declare-fun e!657496 () Int)

(assert (=> d!295716 (= lt!356175 e!657496)))

(declare-fun c!171110 () Bool)

(assert (=> d!295716 (= c!171110 ((_ is Nil!10075) Nil!10075))))

(assert (=> d!295716 (= (size!7994 Nil!10075) lt!356175)))

(declare-fun b!1031497 () Bool)

(assert (=> b!1031497 (= e!657496 0)))

(declare-fun b!1031498 () Bool)

(assert (=> b!1031498 (= e!657496 (+ 1 (size!7994 (t!101137 Nil!10075))))))

(assert (= (and d!295716 c!171110) b!1031497))

(assert (= (and d!295716 (not c!171110)) b!1031498))

(declare-fun m!1204887 () Bool)

(assert (=> b!1031498 m!1204887))

(assert (=> b!1031138 d!295716))

(declare-fun d!295718 () Bool)

(declare-fun lt!356176 () Int)

(assert (=> d!295718 (>= lt!356176 0)))

(declare-fun e!657497 () Int)

(assert (=> d!295718 (= lt!356176 e!657497)))

(declare-fun c!171111 () Bool)

(assert (=> d!295718 (= c!171111 ((_ is Nil!10075) s!10566))))

(assert (=> d!295718 (= (size!7994 s!10566) lt!356176)))

(declare-fun b!1031499 () Bool)

(assert (=> b!1031499 (= e!657497 0)))

(declare-fun b!1031500 () Bool)

(assert (=> b!1031500 (= e!657497 (+ 1 (size!7994 (t!101137 s!10566))))))

(assert (= (and d!295718 c!171111) b!1031499))

(assert (= (and d!295718 (not c!171111)) b!1031500))

(declare-fun m!1204889 () Bool)

(assert (=> b!1031500 m!1204889))

(assert (=> b!1031138 d!295718))

(assert (=> b!1031288 d!295692))

(assert (=> b!1031288 d!295696))

(assert (=> d!295650 d!295630))

(assert (=> d!295650 d!295656))

(declare-fun d!295720 () Bool)

(assert (=> d!295720 (= (head!1909 s!10566) (h!15476 s!10566))))

(assert (=> b!1031290 d!295720))

(declare-fun d!295722 () Bool)

(assert (=> d!295722 (= (nullable!954 EmptyExpr!2861) true)))

(assert (=> b!1031282 d!295722))

(declare-fun d!295724 () Bool)

(assert (=> d!295724 (= (isEmpty!6459 Nil!10075) true)))

(assert (=> bm!71064 d!295724))

(declare-fun d!295726 () Bool)

(assert (not d!295726))

(assert (=> b!1031267 d!295726))

(assert (=> b!1031267 d!295684))

(assert (=> b!1031267 d!295696))

(declare-fun b!1031501 () Bool)

(declare-fun res!463507 () Bool)

(declare-fun e!657504 () Bool)

(assert (=> b!1031501 (=> res!463507 e!657504)))

(assert (=> b!1031501 (= res!463507 (not (isEmpty!6459 (tail!1471 (tail!1471 s!10566)))))))

(declare-fun b!1031502 () Bool)

(declare-fun e!657498 () Bool)

(assert (=> b!1031502 (= e!657498 e!657504)))

(declare-fun res!463511 () Bool)

(assert (=> b!1031502 (=> res!463511 e!657504)))

(declare-fun call!71110 () Bool)

(assert (=> b!1031502 (= res!463511 call!71110)))

(declare-fun b!1031503 () Bool)

(declare-fun e!657501 () Bool)

(assert (=> b!1031503 (= e!657501 e!657498)))

(declare-fun res!463504 () Bool)

(assert (=> b!1031503 (=> (not res!463504) (not e!657498))))

(declare-fun lt!356177 () Bool)

(assert (=> b!1031503 (= res!463504 (not lt!356177))))

(declare-fun b!1031504 () Bool)

(declare-fun res!463505 () Bool)

(declare-fun e!657503 () Bool)

(assert (=> b!1031504 (=> (not res!463505) (not e!657503))))

(assert (=> b!1031504 (= res!463505 (not call!71110))))

(declare-fun b!1031505 () Bool)

(declare-fun e!657499 () Bool)

(assert (=> b!1031505 (= e!657499 (not lt!356177))))

(declare-fun b!1031506 () Bool)

(declare-fun res!463508 () Bool)

(assert (=> b!1031506 (=> (not res!463508) (not e!657503))))

(assert (=> b!1031506 (= res!463508 (isEmpty!6459 (tail!1471 (tail!1471 s!10566))))))

(declare-fun b!1031507 () Bool)

(declare-fun e!657502 () Bool)

(assert (=> b!1031507 (= e!657502 e!657499)))

(declare-fun c!171113 () Bool)

(assert (=> b!1031507 (= c!171113 ((_ is EmptyLang!2861) (derivativeStep!754 (regOne!6234 r!15766) (head!1909 s!10566))))))

(declare-fun b!1031508 () Bool)

(assert (=> b!1031508 (= e!657503 (= (head!1909 (tail!1471 s!10566)) (c!170950 (derivativeStep!754 (regOne!6234 r!15766) (head!1909 s!10566)))))))

(declare-fun b!1031509 () Bool)

(declare-fun e!657500 () Bool)

(assert (=> b!1031509 (= e!657500 (matchR!1397 (derivativeStep!754 (derivativeStep!754 (regOne!6234 r!15766) (head!1909 s!10566)) (head!1909 (tail!1471 s!10566))) (tail!1471 (tail!1471 s!10566))))))

(declare-fun d!295728 () Bool)

(assert (=> d!295728 e!657502))

(declare-fun c!171114 () Bool)

(assert (=> d!295728 (= c!171114 ((_ is EmptyExpr!2861) (derivativeStep!754 (regOne!6234 r!15766) (head!1909 s!10566))))))

(assert (=> d!295728 (= lt!356177 e!657500)))

(declare-fun c!171112 () Bool)

(assert (=> d!295728 (= c!171112 (isEmpty!6459 (tail!1471 s!10566)))))

(assert (=> d!295728 (validRegex!1330 (derivativeStep!754 (regOne!6234 r!15766) (head!1909 s!10566)))))

(assert (=> d!295728 (= (matchR!1397 (derivativeStep!754 (regOne!6234 r!15766) (head!1909 s!10566)) (tail!1471 s!10566)) lt!356177)))

(declare-fun b!1031510 () Bool)

(assert (=> b!1031510 (= e!657504 (not (= (head!1909 (tail!1471 s!10566)) (c!170950 (derivativeStep!754 (regOne!6234 r!15766) (head!1909 s!10566))))))))

(declare-fun b!1031511 () Bool)

(assert (=> b!1031511 (= e!657502 (= lt!356177 call!71110))))

(declare-fun b!1031512 () Bool)

(declare-fun res!463509 () Bool)

(assert (=> b!1031512 (=> res!463509 e!657501)))

(assert (=> b!1031512 (= res!463509 e!657503)))

(declare-fun res!463510 () Bool)

(assert (=> b!1031512 (=> (not res!463510) (not e!657503))))

(assert (=> b!1031512 (= res!463510 lt!356177)))

(declare-fun bm!71105 () Bool)

(assert (=> bm!71105 (= call!71110 (isEmpty!6459 (tail!1471 s!10566)))))

(declare-fun b!1031513 () Bool)

(declare-fun res!463506 () Bool)

(assert (=> b!1031513 (=> res!463506 e!657501)))

(assert (=> b!1031513 (= res!463506 (not ((_ is ElementMatch!2861) (derivativeStep!754 (regOne!6234 r!15766) (head!1909 s!10566)))))))

(assert (=> b!1031513 (= e!657499 e!657501)))

(declare-fun b!1031514 () Bool)

(assert (=> b!1031514 (= e!657500 (nullable!954 (derivativeStep!754 (regOne!6234 r!15766) (head!1909 s!10566))))))

(assert (= (and d!295728 c!171112) b!1031514))

(assert (= (and d!295728 (not c!171112)) b!1031509))

(assert (= (and d!295728 c!171114) b!1031511))

(assert (= (and d!295728 (not c!171114)) b!1031507))

(assert (= (and b!1031507 c!171113) b!1031505))

(assert (= (and b!1031507 (not c!171113)) b!1031513))

(assert (= (and b!1031513 (not res!463506)) b!1031512))

(assert (= (and b!1031512 res!463510) b!1031504))

(assert (= (and b!1031504 res!463505) b!1031506))

(assert (= (and b!1031506 res!463508) b!1031508))

(assert (= (and b!1031512 (not res!463509)) b!1031503))

(assert (= (and b!1031503 res!463504) b!1031502))

(assert (= (and b!1031502 (not res!463511)) b!1031501))

(assert (= (and b!1031501 (not res!463507)) b!1031510))

(assert (= (or b!1031511 b!1031502 b!1031504) bm!71105))

(assert (=> b!1031509 m!1204635))

(declare-fun m!1204891 () Bool)

(assert (=> b!1031509 m!1204891))

(assert (=> b!1031509 m!1204793))

(assert (=> b!1031509 m!1204891))

(declare-fun m!1204893 () Bool)

(assert (=> b!1031509 m!1204893))

(assert (=> b!1031509 m!1204635))

(declare-fun m!1204895 () Bool)

(assert (=> b!1031509 m!1204895))

(assert (=> b!1031509 m!1204893))

(assert (=> b!1031509 m!1204895))

(declare-fun m!1204897 () Bool)

(assert (=> b!1031509 m!1204897))

(assert (=> b!1031510 m!1204635))

(assert (=> b!1031510 m!1204891))

(assert (=> b!1031506 m!1204635))

(assert (=> b!1031506 m!1204895))

(assert (=> b!1031506 m!1204895))

(declare-fun m!1204899 () Bool)

(assert (=> b!1031506 m!1204899))

(assert (=> b!1031501 m!1204635))

(assert (=> b!1031501 m!1204895))

(assert (=> b!1031501 m!1204895))

(assert (=> b!1031501 m!1204899))

(assert (=> b!1031508 m!1204635))

(assert (=> b!1031508 m!1204891))

(assert (=> b!1031514 m!1204793))

(declare-fun m!1204901 () Bool)

(assert (=> b!1031514 m!1204901))

(assert (=> d!295728 m!1204635))

(assert (=> d!295728 m!1204639))

(assert (=> d!295728 m!1204793))

(declare-fun m!1204903 () Bool)

(assert (=> d!295728 m!1204903))

(assert (=> bm!71105 m!1204635))

(assert (=> bm!71105 m!1204639))

(assert (=> b!1031305 d!295728))

(declare-fun b!1031596 () Bool)

(declare-fun e!657552 () Regex!2861)

(declare-fun call!71134 () Regex!2861)

(declare-fun call!71132 () Regex!2861)

(assert (=> b!1031596 (= e!657552 (Union!2861 (Concat!4694 call!71132 (regTwo!6234 (regOne!6234 r!15766))) call!71134))))

(declare-fun b!1031597 () Bool)

(declare-fun c!171148 () Bool)

(assert (=> b!1031597 (= c!171148 (nullable!954 (regOne!6234 (regOne!6234 r!15766))))))

(declare-fun e!657551 () Regex!2861)

(assert (=> b!1031597 (= e!657551 e!657552)))

(declare-fun b!1031598 () Bool)

(declare-fun e!657548 () Regex!2861)

(declare-fun e!657549 () Regex!2861)

(assert (=> b!1031598 (= e!657548 e!657549)))

(declare-fun c!171145 () Bool)

(assert (=> b!1031598 (= c!171145 ((_ is ElementMatch!2861) (regOne!6234 r!15766)))))

(declare-fun c!171144 () Bool)

(declare-fun c!171146 () Bool)

(declare-fun bm!71127 () Bool)

(declare-fun call!71133 () Regex!2861)

(assert (=> bm!71127 (= call!71133 (derivativeStep!754 (ite c!171146 (regOne!6235 (regOne!6234 r!15766)) (ite c!171144 (reg!3190 (regOne!6234 r!15766)) (ite c!171148 (regTwo!6234 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766))))) (head!1909 s!10566)))))

(declare-fun b!1031599 () Bool)

(assert (=> b!1031599 (= e!657548 EmptyLang!2861)))

(declare-fun b!1031600 () Bool)

(declare-fun e!657550 () Regex!2861)

(assert (=> b!1031600 (= e!657550 (Union!2861 call!71133 call!71132))))

(declare-fun b!1031601 () Bool)

(assert (=> b!1031601 (= e!657552 (Union!2861 (Concat!4694 call!71134 (regTwo!6234 (regOne!6234 r!15766))) EmptyLang!2861))))

(declare-fun b!1031602 () Bool)

(assert (=> b!1031602 (= e!657549 (ite (= (head!1909 s!10566) (c!170950 (regOne!6234 r!15766))) EmptyExpr!2861 EmptyLang!2861))))

(declare-fun b!1031603 () Bool)

(assert (=> b!1031603 (= e!657550 e!657551)))

(assert (=> b!1031603 (= c!171144 ((_ is Star!2861) (regOne!6234 r!15766)))))

(declare-fun b!1031604 () Bool)

(declare-fun call!71135 () Regex!2861)

(assert (=> b!1031604 (= e!657551 (Concat!4694 call!71135 (regOne!6234 r!15766)))))

(declare-fun bm!71129 () Bool)

(assert (=> bm!71129 (= call!71134 call!71135)))

(declare-fun d!295730 () Bool)

(declare-fun lt!356185 () Regex!2861)

(assert (=> d!295730 (validRegex!1330 lt!356185)))

(assert (=> d!295730 (= lt!356185 e!657548)))

(declare-fun c!171147 () Bool)

(assert (=> d!295730 (= c!171147 (or ((_ is EmptyExpr!2861) (regOne!6234 r!15766)) ((_ is EmptyLang!2861) (regOne!6234 r!15766))))))

(assert (=> d!295730 (validRegex!1330 (regOne!6234 r!15766))))

(assert (=> d!295730 (= (derivativeStep!754 (regOne!6234 r!15766) (head!1909 s!10566)) lt!356185)))

(declare-fun bm!71128 () Bool)

(assert (=> bm!71128 (= call!71135 call!71133)))

(declare-fun b!1031605 () Bool)

(assert (=> b!1031605 (= c!171146 ((_ is Union!2861) (regOne!6234 r!15766)))))

(assert (=> b!1031605 (= e!657549 e!657550)))

(declare-fun bm!71130 () Bool)

(assert (=> bm!71130 (= call!71132 (derivativeStep!754 (ite c!171146 (regTwo!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766))) (head!1909 s!10566)))))

(assert (= (and d!295730 c!171147) b!1031599))

(assert (= (and d!295730 (not c!171147)) b!1031598))

(assert (= (and b!1031598 c!171145) b!1031602))

(assert (= (and b!1031598 (not c!171145)) b!1031605))

(assert (= (and b!1031605 c!171146) b!1031600))

(assert (= (and b!1031605 (not c!171146)) b!1031603))

(assert (= (and b!1031603 c!171144) b!1031604))

(assert (= (and b!1031603 (not c!171144)) b!1031597))

(assert (= (and b!1031597 c!171148) b!1031596))

(assert (= (and b!1031597 (not c!171148)) b!1031601))

(assert (= (or b!1031596 b!1031601) bm!71129))

(assert (= (or b!1031604 bm!71129) bm!71128))

(assert (= (or b!1031600 bm!71128) bm!71127))

(assert (= (or b!1031600 b!1031596) bm!71130))

(declare-fun m!1204947 () Bool)

(assert (=> b!1031597 m!1204947))

(assert (=> bm!71127 m!1204631))

(declare-fun m!1204949 () Bool)

(assert (=> bm!71127 m!1204949))

(declare-fun m!1204951 () Bool)

(assert (=> d!295730 m!1204951))

(assert (=> d!295730 m!1204515))

(assert (=> bm!71130 m!1204631))

(declare-fun m!1204953 () Bool)

(assert (=> bm!71130 m!1204953))

(assert (=> b!1031305 d!295730))

(assert (=> b!1031305 d!295720))

(assert (=> b!1031305 d!295696))

(declare-fun d!295756 () Bool)

(declare-fun lt!356187 () Int)

(assert (=> d!295756 (>= lt!356187 0)))

(declare-fun e!657559 () Int)

(assert (=> d!295756 (= lt!356187 e!657559)))

(declare-fun c!171154 () Bool)

(assert (=> d!295756 (= c!171154 ((_ is Nil!10075) lt!356149))))

(assert (=> d!295756 (= (size!7994 lt!356149) lt!356187)))

(declare-fun b!1031617 () Bool)

(assert (=> b!1031617 (= e!657559 0)))

(declare-fun b!1031618 () Bool)

(assert (=> b!1031618 (= e!657559 (+ 1 (size!7994 (t!101137 lt!356149))))))

(assert (= (and d!295756 c!171154) b!1031617))

(assert (= (and d!295756 (not c!171154)) b!1031618))

(declare-fun m!1204955 () Bool)

(assert (=> b!1031618 m!1204955))

(assert (=> b!1031228 d!295756))

(assert (=> b!1031228 d!295718))

(assert (=> b!1031228 d!295716))

(declare-fun d!295758 () Bool)

(assert (=> d!295758 (= (Exists!588 (ite c!170973 lambda!37000 lambda!37001)) (choose!6568 (ite c!170973 lambda!37000 lambda!37001)))))

(declare-fun bs!247329 () Bool)

(assert (= bs!247329 d!295758))

(declare-fun m!1204957 () Bool)

(assert (=> bs!247329 m!1204957))

(assert (=> bm!71020 d!295758))

(assert (=> b!1031292 d!295720))

(assert (=> bm!71065 d!295630))

(assert (=> b!1031021 d!295720))

(declare-fun b!1031619 () Bool)

(declare-fun res!463539 () Bool)

(declare-fun e!657566 () Bool)

(assert (=> b!1031619 (=> res!463539 e!657566)))

(assert (=> b!1031619 (= res!463539 (not (isEmpty!6459 (tail!1471 (tail!1471 s!10566)))))))

(declare-fun b!1031620 () Bool)

(declare-fun e!657560 () Bool)

(assert (=> b!1031620 (= e!657560 e!657566)))

(declare-fun res!463543 () Bool)

(assert (=> b!1031620 (=> res!463543 e!657566)))

(declare-fun call!71141 () Bool)

(assert (=> b!1031620 (= res!463543 call!71141)))

(declare-fun b!1031621 () Bool)

(declare-fun e!657563 () Bool)

(assert (=> b!1031621 (= e!657563 e!657560)))

(declare-fun res!463536 () Bool)

(assert (=> b!1031621 (=> (not res!463536) (not e!657560))))

(declare-fun lt!356188 () Bool)

(assert (=> b!1031621 (= res!463536 (not lt!356188))))

(declare-fun b!1031622 () Bool)

(declare-fun res!463537 () Bool)

(declare-fun e!657565 () Bool)

(assert (=> b!1031622 (=> (not res!463537) (not e!657565))))

(assert (=> b!1031622 (= res!463537 (not call!71141))))

(declare-fun b!1031623 () Bool)

(declare-fun e!657561 () Bool)

(assert (=> b!1031623 (= e!657561 (not lt!356188))))

(declare-fun b!1031624 () Bool)

(declare-fun res!463540 () Bool)

(assert (=> b!1031624 (=> (not res!463540) (not e!657565))))

(assert (=> b!1031624 (= res!463540 (isEmpty!6459 (tail!1471 (tail!1471 s!10566))))))

(declare-fun b!1031625 () Bool)

(declare-fun e!657564 () Bool)

(assert (=> b!1031625 (= e!657564 e!657561)))

(declare-fun c!171156 () Bool)

(assert (=> b!1031625 (= c!171156 ((_ is EmptyLang!2861) (derivativeStep!754 r!15766 (head!1909 s!10566))))))

(declare-fun b!1031626 () Bool)

(assert (=> b!1031626 (= e!657565 (= (head!1909 (tail!1471 s!10566)) (c!170950 (derivativeStep!754 r!15766 (head!1909 s!10566)))))))

(declare-fun b!1031627 () Bool)

(declare-fun e!657562 () Bool)

(assert (=> b!1031627 (= e!657562 (matchR!1397 (derivativeStep!754 (derivativeStep!754 r!15766 (head!1909 s!10566)) (head!1909 (tail!1471 s!10566))) (tail!1471 (tail!1471 s!10566))))))

(declare-fun d!295760 () Bool)

(assert (=> d!295760 e!657564))

(declare-fun c!171157 () Bool)

(assert (=> d!295760 (= c!171157 ((_ is EmptyExpr!2861) (derivativeStep!754 r!15766 (head!1909 s!10566))))))

(assert (=> d!295760 (= lt!356188 e!657562)))

(declare-fun c!171155 () Bool)

(assert (=> d!295760 (= c!171155 (isEmpty!6459 (tail!1471 s!10566)))))

(assert (=> d!295760 (validRegex!1330 (derivativeStep!754 r!15766 (head!1909 s!10566)))))

(assert (=> d!295760 (= (matchR!1397 (derivativeStep!754 r!15766 (head!1909 s!10566)) (tail!1471 s!10566)) lt!356188)))

(declare-fun b!1031628 () Bool)

(assert (=> b!1031628 (= e!657566 (not (= (head!1909 (tail!1471 s!10566)) (c!170950 (derivativeStep!754 r!15766 (head!1909 s!10566))))))))

(declare-fun b!1031629 () Bool)

(assert (=> b!1031629 (= e!657564 (= lt!356188 call!71141))))

(declare-fun b!1031630 () Bool)

(declare-fun res!463541 () Bool)

(assert (=> b!1031630 (=> res!463541 e!657563)))

(assert (=> b!1031630 (= res!463541 e!657565)))

(declare-fun res!463542 () Bool)

(assert (=> b!1031630 (=> (not res!463542) (not e!657565))))

(assert (=> b!1031630 (= res!463542 lt!356188)))

(declare-fun bm!71136 () Bool)

(assert (=> bm!71136 (= call!71141 (isEmpty!6459 (tail!1471 s!10566)))))

(declare-fun b!1031631 () Bool)

(declare-fun res!463538 () Bool)

(assert (=> b!1031631 (=> res!463538 e!657563)))

(assert (=> b!1031631 (= res!463538 (not ((_ is ElementMatch!2861) (derivativeStep!754 r!15766 (head!1909 s!10566)))))))

(assert (=> b!1031631 (= e!657561 e!657563)))

(declare-fun b!1031632 () Bool)

(assert (=> b!1031632 (= e!657562 (nullable!954 (derivativeStep!754 r!15766 (head!1909 s!10566))))))

(assert (= (and d!295760 c!171155) b!1031632))

(assert (= (and d!295760 (not c!171155)) b!1031627))

(assert (= (and d!295760 c!171157) b!1031629))

(assert (= (and d!295760 (not c!171157)) b!1031625))

(assert (= (and b!1031625 c!171156) b!1031623))

(assert (= (and b!1031625 (not c!171156)) b!1031631))

(assert (= (and b!1031631 (not res!463538)) b!1031630))

(assert (= (and b!1031630 res!463542) b!1031622))

(assert (= (and b!1031622 res!463537) b!1031624))

(assert (= (and b!1031624 res!463540) b!1031626))

(assert (= (and b!1031630 (not res!463541)) b!1031621))

(assert (= (and b!1031621 res!463536) b!1031620))

(assert (= (and b!1031620 (not res!463543)) b!1031619))

(assert (= (and b!1031619 (not res!463539)) b!1031628))

(assert (= (or b!1031629 b!1031620 b!1031622) bm!71136))

(assert (=> b!1031627 m!1204635))

(assert (=> b!1031627 m!1204891))

(assert (=> b!1031627 m!1204633))

(assert (=> b!1031627 m!1204891))

(declare-fun m!1204971 () Bool)

(assert (=> b!1031627 m!1204971))

(assert (=> b!1031627 m!1204635))

(assert (=> b!1031627 m!1204895))

(assert (=> b!1031627 m!1204971))

(assert (=> b!1031627 m!1204895))

(declare-fun m!1204975 () Bool)

(assert (=> b!1031627 m!1204975))

(assert (=> b!1031628 m!1204635))

(assert (=> b!1031628 m!1204891))

(assert (=> b!1031624 m!1204635))

(assert (=> b!1031624 m!1204895))

(assert (=> b!1031624 m!1204895))

(assert (=> b!1031624 m!1204899))

(assert (=> b!1031619 m!1204635))

(assert (=> b!1031619 m!1204895))

(assert (=> b!1031619 m!1204895))

(assert (=> b!1031619 m!1204899))

(assert (=> b!1031626 m!1204635))

(assert (=> b!1031626 m!1204891))

(assert (=> b!1031632 m!1204633))

(declare-fun m!1204981 () Bool)

(assert (=> b!1031632 m!1204981))

(assert (=> d!295760 m!1204635))

(assert (=> d!295760 m!1204639))

(assert (=> d!295760 m!1204633))

(declare-fun m!1204983 () Bool)

(assert (=> d!295760 m!1204983))

(assert (=> bm!71136 m!1204635))

(assert (=> bm!71136 m!1204639))

(assert (=> b!1031020 d!295760))

(declare-fun call!71145 () Regex!2861)

(declare-fun e!657580 () Regex!2861)

(declare-fun b!1031646 () Bool)

(declare-fun call!71147 () Regex!2861)

(assert (=> b!1031646 (= e!657580 (Union!2861 (Concat!4694 call!71145 (regTwo!6234 r!15766)) call!71147))))

(declare-fun b!1031647 () Bool)

(declare-fun c!171165 () Bool)

(assert (=> b!1031647 (= c!171165 (nullable!954 (regOne!6234 r!15766)))))

(declare-fun e!657579 () Regex!2861)

(assert (=> b!1031647 (= e!657579 e!657580)))

(declare-fun b!1031648 () Bool)

(declare-fun e!657576 () Regex!2861)

(declare-fun e!657577 () Regex!2861)

(assert (=> b!1031648 (= e!657576 e!657577)))

(declare-fun c!171162 () Bool)

(assert (=> b!1031648 (= c!171162 ((_ is ElementMatch!2861) r!15766))))

(declare-fun c!171163 () Bool)

(declare-fun c!171161 () Bool)

(declare-fun call!71146 () Regex!2861)

(declare-fun bm!71140 () Bool)

(assert (=> bm!71140 (= call!71146 (derivativeStep!754 (ite c!171163 (regOne!6235 r!15766) (ite c!171161 (reg!3190 r!15766) (ite c!171165 (regTwo!6234 r!15766) (regOne!6234 r!15766)))) (head!1909 s!10566)))))

(declare-fun b!1031649 () Bool)

(assert (=> b!1031649 (= e!657576 EmptyLang!2861)))

(declare-fun b!1031650 () Bool)

(declare-fun e!657578 () Regex!2861)

(assert (=> b!1031650 (= e!657578 (Union!2861 call!71146 call!71145))))

(declare-fun b!1031651 () Bool)

(assert (=> b!1031651 (= e!657580 (Union!2861 (Concat!4694 call!71147 (regTwo!6234 r!15766)) EmptyLang!2861))))

(declare-fun b!1031652 () Bool)

(assert (=> b!1031652 (= e!657577 (ite (= (head!1909 s!10566) (c!170950 r!15766)) EmptyExpr!2861 EmptyLang!2861))))

(declare-fun b!1031653 () Bool)

(assert (=> b!1031653 (= e!657578 e!657579)))

(assert (=> b!1031653 (= c!171161 ((_ is Star!2861) r!15766))))

(declare-fun b!1031654 () Bool)

(declare-fun call!71148 () Regex!2861)

(assert (=> b!1031654 (= e!657579 (Concat!4694 call!71148 r!15766))))

(declare-fun bm!71142 () Bool)

(assert (=> bm!71142 (= call!71147 call!71148)))

(declare-fun d!295766 () Bool)

(declare-fun lt!356190 () Regex!2861)

(assert (=> d!295766 (validRegex!1330 lt!356190)))

(assert (=> d!295766 (= lt!356190 e!657576)))

(declare-fun c!171164 () Bool)

(assert (=> d!295766 (= c!171164 (or ((_ is EmptyExpr!2861) r!15766) ((_ is EmptyLang!2861) r!15766)))))

(assert (=> d!295766 (validRegex!1330 r!15766)))

(assert (=> d!295766 (= (derivativeStep!754 r!15766 (head!1909 s!10566)) lt!356190)))

(declare-fun bm!71141 () Bool)

(assert (=> bm!71141 (= call!71148 call!71146)))

(declare-fun b!1031655 () Bool)

(assert (=> b!1031655 (= c!171163 ((_ is Union!2861) r!15766))))

(assert (=> b!1031655 (= e!657577 e!657578)))

(declare-fun bm!71143 () Bool)

(assert (=> bm!71143 (= call!71145 (derivativeStep!754 (ite c!171163 (regTwo!6235 r!15766) (regOne!6234 r!15766)) (head!1909 s!10566)))))

(assert (= (and d!295766 c!171164) b!1031649))

(assert (= (and d!295766 (not c!171164)) b!1031648))

(assert (= (and b!1031648 c!171162) b!1031652))

(assert (= (and b!1031648 (not c!171162)) b!1031655))

(assert (= (and b!1031655 c!171163) b!1031650))

(assert (= (and b!1031655 (not c!171163)) b!1031653))

(assert (= (and b!1031653 c!171161) b!1031654))

(assert (= (and b!1031653 (not c!171161)) b!1031647))

(assert (= (and b!1031647 c!171165) b!1031646))

(assert (= (and b!1031647 (not c!171165)) b!1031651))

(assert (= (or b!1031646 b!1031651) bm!71142))

(assert (= (or b!1031654 bm!71142) bm!71141))

(assert (= (or b!1031650 bm!71141) bm!71140))

(assert (= (or b!1031650 b!1031646) bm!71143))

(assert (=> b!1031647 m!1204797))

(assert (=> bm!71140 m!1204631))

(declare-fun m!1204995 () Bool)

(assert (=> bm!71140 m!1204995))

(declare-fun m!1204997 () Bool)

(assert (=> d!295766 m!1204997))

(assert (=> d!295766 m!1204525))

(assert (=> bm!71143 m!1204631))

(declare-fun m!1205003 () Bool)

(assert (=> bm!71143 m!1205003))

(assert (=> b!1031020 d!295766))

(assert (=> b!1031020 d!295720))

(assert (=> b!1031020 d!295696))

(assert (=> b!1031306 d!295720))

(assert (=> d!295654 d!295650))

(assert (=> d!295654 d!295656))

(declare-fun d!295770 () Bool)

(assert (=> d!295770 (= (matchR!1397 (regOne!6234 r!15766) s!10566) (matchR!1397 (removeUselessConcat!418 (regOne!6234 r!15766)) s!10566))))

(assert (=> d!295770 true))

(declare-fun _$94!391 () Unit!15397)

(assert (=> d!295770 (= (choose!6571 (regOne!6234 r!15766) s!10566) _$94!391)))

(declare-fun bs!247330 () Bool)

(assert (= bs!247330 d!295770))

(assert (=> bs!247330 m!1204509))

(assert (=> bs!247330 m!1204511))

(assert (=> bs!247330 m!1204511))

(assert (=> bs!247330 m!1204809))

(assert (=> d!295654 d!295770))

(assert (=> d!295654 d!295652))

(declare-fun b!1031660 () Bool)

(declare-fun res!463556 () Bool)

(declare-fun e!657589 () Bool)

(assert (=> b!1031660 (=> res!463556 e!657589)))

(assert (=> b!1031660 (= res!463556 (not (isEmpty!6459 (tail!1471 s!10566))))))

(declare-fun b!1031661 () Bool)

(declare-fun e!657583 () Bool)

(assert (=> b!1031661 (= e!657583 e!657589)))

(declare-fun res!463560 () Bool)

(assert (=> b!1031661 (=> res!463560 e!657589)))

(declare-fun call!71149 () Bool)

(assert (=> b!1031661 (= res!463560 call!71149)))

(declare-fun b!1031662 () Bool)

(declare-fun e!657586 () Bool)

(assert (=> b!1031662 (= e!657586 e!657583)))

(declare-fun res!463553 () Bool)

(assert (=> b!1031662 (=> (not res!463553) (not e!657583))))

(declare-fun lt!356192 () Bool)

(assert (=> b!1031662 (= res!463553 (not lt!356192))))

(declare-fun b!1031663 () Bool)

(declare-fun res!463554 () Bool)

(declare-fun e!657588 () Bool)

(assert (=> b!1031663 (=> (not res!463554) (not e!657588))))

(assert (=> b!1031663 (= res!463554 (not call!71149))))

(declare-fun b!1031664 () Bool)

(declare-fun e!657584 () Bool)

(assert (=> b!1031664 (= e!657584 (not lt!356192))))

(declare-fun b!1031665 () Bool)

(declare-fun res!463557 () Bool)

(assert (=> b!1031665 (=> (not res!463557) (not e!657588))))

(assert (=> b!1031665 (= res!463557 (isEmpty!6459 (tail!1471 s!10566)))))

(declare-fun b!1031666 () Bool)

(declare-fun e!657587 () Bool)

(assert (=> b!1031666 (= e!657587 e!657584)))

(declare-fun c!171168 () Bool)

(assert (=> b!1031666 (= c!171168 ((_ is EmptyLang!2861) (removeUselessConcat!418 (regOne!6234 r!15766))))))

(declare-fun b!1031667 () Bool)

(assert (=> b!1031667 (= e!657588 (= (head!1909 s!10566) (c!170950 (removeUselessConcat!418 (regOne!6234 r!15766)))))))

(declare-fun b!1031668 () Bool)

(declare-fun e!657585 () Bool)

(assert (=> b!1031668 (= e!657585 (matchR!1397 (derivativeStep!754 (removeUselessConcat!418 (regOne!6234 r!15766)) (head!1909 s!10566)) (tail!1471 s!10566)))))

(declare-fun d!295774 () Bool)

(assert (=> d!295774 e!657587))

(declare-fun c!171169 () Bool)

(assert (=> d!295774 (= c!171169 ((_ is EmptyExpr!2861) (removeUselessConcat!418 (regOne!6234 r!15766))))))

(assert (=> d!295774 (= lt!356192 e!657585)))

(declare-fun c!171167 () Bool)

(assert (=> d!295774 (= c!171167 (isEmpty!6459 s!10566))))

(assert (=> d!295774 (validRegex!1330 (removeUselessConcat!418 (regOne!6234 r!15766)))))

(assert (=> d!295774 (= (matchR!1397 (removeUselessConcat!418 (regOne!6234 r!15766)) s!10566) lt!356192)))

(declare-fun b!1031669 () Bool)

(assert (=> b!1031669 (= e!657589 (not (= (head!1909 s!10566) (c!170950 (removeUselessConcat!418 (regOne!6234 r!15766))))))))

(declare-fun b!1031670 () Bool)

(assert (=> b!1031670 (= e!657587 (= lt!356192 call!71149))))

(declare-fun b!1031671 () Bool)

(declare-fun res!463558 () Bool)

(assert (=> b!1031671 (=> res!463558 e!657586)))

(assert (=> b!1031671 (= res!463558 e!657588)))

(declare-fun res!463559 () Bool)

(assert (=> b!1031671 (=> (not res!463559) (not e!657588))))

(assert (=> b!1031671 (= res!463559 lt!356192)))

(declare-fun bm!71144 () Bool)

(assert (=> bm!71144 (= call!71149 (isEmpty!6459 s!10566))))

(declare-fun b!1031672 () Bool)

(declare-fun res!463555 () Bool)

(assert (=> b!1031672 (=> res!463555 e!657586)))

(assert (=> b!1031672 (= res!463555 (not ((_ is ElementMatch!2861) (removeUselessConcat!418 (regOne!6234 r!15766)))))))

(assert (=> b!1031672 (= e!657584 e!657586)))

(declare-fun b!1031673 () Bool)

(assert (=> b!1031673 (= e!657585 (nullable!954 (removeUselessConcat!418 (regOne!6234 r!15766))))))

(assert (= (and d!295774 c!171167) b!1031673))

(assert (= (and d!295774 (not c!171167)) b!1031668))

(assert (= (and d!295774 c!171169) b!1031670))

(assert (= (and d!295774 (not c!171169)) b!1031666))

(assert (= (and b!1031666 c!171168) b!1031664))

(assert (= (and b!1031666 (not c!171168)) b!1031672))

(assert (= (and b!1031672 (not res!463555)) b!1031671))

(assert (= (and b!1031671 res!463559) b!1031663))

(assert (= (and b!1031663 res!463554) b!1031665))

(assert (= (and b!1031665 res!463557) b!1031667))

(assert (= (and b!1031671 (not res!463558)) b!1031662))

(assert (= (and b!1031662 res!463553) b!1031661))

(assert (= (and b!1031661 (not res!463560)) b!1031660))

(assert (= (and b!1031660 (not res!463556)) b!1031669))

(assert (= (or b!1031670 b!1031661 b!1031663) bm!71144))

(assert (=> b!1031668 m!1204631))

(assert (=> b!1031668 m!1204511))

(assert (=> b!1031668 m!1204631))

(declare-fun m!1205011 () Bool)

(assert (=> b!1031668 m!1205011))

(assert (=> b!1031668 m!1204635))

(assert (=> b!1031668 m!1205011))

(assert (=> b!1031668 m!1204635))

(declare-fun m!1205013 () Bool)

(assert (=> b!1031668 m!1205013))

(assert (=> b!1031669 m!1204631))

(assert (=> b!1031665 m!1204635))

(assert (=> b!1031665 m!1204635))

(assert (=> b!1031665 m!1204639))

(assert (=> b!1031660 m!1204635))

(assert (=> b!1031660 m!1204635))

(assert (=> b!1031660 m!1204639))

(assert (=> b!1031667 m!1204631))

(assert (=> b!1031673 m!1204511))

(declare-fun m!1205015 () Bool)

(assert (=> b!1031673 m!1205015))

(assert (=> d!295774 m!1204543))

(assert (=> d!295774 m!1204511))

(declare-fun m!1205017 () Bool)

(assert (=> d!295774 m!1205017))

(assert (=> bm!71144 m!1204543))

(assert (=> d!295654 d!295774))

(declare-fun d!295776 () Bool)

(assert (not d!295776))

(assert (=> b!1031269 d!295776))

(assert (=> b!1031269 d!295684))

(assert (=> d!295646 d!295724))

(declare-fun d!295780 () Bool)

(assert (=> d!295780 (= (validRegex!1330 EmptyExpr!2861) true)))

(assert (=> d!295646 d!295780))

(assert (=> bm!71021 d!295630))

(declare-fun d!295782 () Bool)

(assert (=> d!295782 (= (nullable!954 lt!356083) (nullableFct!218 lt!356083))))

(declare-fun bs!247332 () Bool)

(assert (= bs!247332 d!295782))

(declare-fun m!1205023 () Bool)

(assert (=> bs!247332 m!1205023))

(assert (=> b!1031296 d!295782))

(declare-fun d!295784 () Bool)

(assert (=> d!295784 (= (isDefined!2032 lt!356141) (not (isEmpty!6460 lt!356141)))))

(declare-fun bs!247333 () Bool)

(assert (= bs!247333 d!295784))

(declare-fun m!1205025 () Bool)

(assert (=> bs!247333 m!1205025))

(assert (=> d!295626 d!295784))

(declare-fun b!1031683 () Bool)

(declare-fun res!463569 () Bool)

(declare-fun e!657601 () Bool)

(assert (=> b!1031683 (=> res!463569 e!657601)))

(assert (=> b!1031683 (= res!463569 (not (isEmpty!6459 (tail!1471 Nil!10075))))))

(declare-fun b!1031684 () Bool)

(declare-fun e!657595 () Bool)

(assert (=> b!1031684 (= e!657595 e!657601)))

(declare-fun res!463573 () Bool)

(assert (=> b!1031684 (=> res!463573 e!657601)))

(declare-fun call!71150 () Bool)

(assert (=> b!1031684 (= res!463573 call!71150)))

(declare-fun b!1031685 () Bool)

(declare-fun e!657598 () Bool)

(assert (=> b!1031685 (= e!657598 e!657595)))

(declare-fun res!463566 () Bool)

(assert (=> b!1031685 (=> (not res!463566) (not e!657595))))

(declare-fun lt!356199 () Bool)

(assert (=> b!1031685 (= res!463566 (not lt!356199))))

(declare-fun b!1031686 () Bool)

(declare-fun res!463567 () Bool)

(declare-fun e!657600 () Bool)

(assert (=> b!1031686 (=> (not res!463567) (not e!657600))))

(assert (=> b!1031686 (= res!463567 (not call!71150))))

(declare-fun b!1031687 () Bool)

(declare-fun e!657596 () Bool)

(assert (=> b!1031687 (= e!657596 (not lt!356199))))

(declare-fun b!1031688 () Bool)

(declare-fun res!463570 () Bool)

(assert (=> b!1031688 (=> (not res!463570) (not e!657600))))

(assert (=> b!1031688 (= res!463570 (isEmpty!6459 (tail!1471 Nil!10075)))))

(declare-fun b!1031689 () Bool)

(declare-fun e!657599 () Bool)

(assert (=> b!1031689 (= e!657599 e!657596)))

(declare-fun c!171173 () Bool)

(assert (=> b!1031689 (= c!171173 ((_ is EmptyLang!2861) (regOne!6234 r!15766)))))

(declare-fun b!1031690 () Bool)

(assert (=> b!1031690 (= e!657600 (= (head!1909 Nil!10075) (c!170950 (regOne!6234 r!15766))))))

(declare-fun b!1031691 () Bool)

(declare-fun e!657597 () Bool)

(assert (=> b!1031691 (= e!657597 (matchR!1397 (derivativeStep!754 (regOne!6234 r!15766) (head!1909 Nil!10075)) (tail!1471 Nil!10075)))))

(declare-fun d!295786 () Bool)

(assert (=> d!295786 e!657599))

(declare-fun c!171174 () Bool)

(assert (=> d!295786 (= c!171174 ((_ is EmptyExpr!2861) (regOne!6234 r!15766)))))

(assert (=> d!295786 (= lt!356199 e!657597)))

(declare-fun c!171172 () Bool)

(assert (=> d!295786 (= c!171172 (isEmpty!6459 Nil!10075))))

(assert (=> d!295786 (validRegex!1330 (regOne!6234 r!15766))))

(assert (=> d!295786 (= (matchR!1397 (regOne!6234 r!15766) Nil!10075) lt!356199)))

(declare-fun b!1031692 () Bool)

(assert (=> b!1031692 (= e!657601 (not (= (head!1909 Nil!10075) (c!170950 (regOne!6234 r!15766)))))))

(declare-fun b!1031693 () Bool)

(assert (=> b!1031693 (= e!657599 (= lt!356199 call!71150))))

(declare-fun b!1031694 () Bool)

(declare-fun res!463571 () Bool)

(assert (=> b!1031694 (=> res!463571 e!657598)))

(assert (=> b!1031694 (= res!463571 e!657600)))

(declare-fun res!463572 () Bool)

(assert (=> b!1031694 (=> (not res!463572) (not e!657600))))

(assert (=> b!1031694 (= res!463572 lt!356199)))

(declare-fun bm!71145 () Bool)

(assert (=> bm!71145 (= call!71150 (isEmpty!6459 Nil!10075))))

(declare-fun b!1031695 () Bool)

(declare-fun res!463568 () Bool)

(assert (=> b!1031695 (=> res!463568 e!657598)))

(assert (=> b!1031695 (= res!463568 (not ((_ is ElementMatch!2861) (regOne!6234 r!15766))))))

(assert (=> b!1031695 (= e!657596 e!657598)))

(declare-fun b!1031696 () Bool)

(assert (=> b!1031696 (= e!657597 (nullable!954 (regOne!6234 r!15766)))))

(assert (= (and d!295786 c!171172) b!1031696))

(assert (= (and d!295786 (not c!171172)) b!1031691))

(assert (= (and d!295786 c!171174) b!1031693))

(assert (= (and d!295786 (not c!171174)) b!1031689))

(assert (= (and b!1031689 c!171173) b!1031687))

(assert (= (and b!1031689 (not c!171173)) b!1031695))

(assert (= (and b!1031695 (not res!463568)) b!1031694))

(assert (= (and b!1031694 res!463572) b!1031686))

(assert (= (and b!1031686 res!463567) b!1031688))

(assert (= (and b!1031688 res!463570) b!1031690))

(assert (= (and b!1031694 (not res!463571)) b!1031685))

(assert (= (and b!1031685 res!463566) b!1031684))

(assert (= (and b!1031684 (not res!463573)) b!1031683))

(assert (= (and b!1031683 (not res!463569)) b!1031692))

(assert (= (or b!1031693 b!1031684 b!1031686) bm!71145))

(assert (=> b!1031691 m!1204767))

(assert (=> b!1031691 m!1204767))

(declare-fun m!1205041 () Bool)

(assert (=> b!1031691 m!1205041))

(assert (=> b!1031691 m!1204769))

(assert (=> b!1031691 m!1205041))

(assert (=> b!1031691 m!1204769))

(declare-fun m!1205047 () Bool)

(assert (=> b!1031691 m!1205047))

(assert (=> b!1031692 m!1204767))

(assert (=> b!1031688 m!1204769))

(assert (=> b!1031688 m!1204769))

(assert (=> b!1031688 m!1204777))

(assert (=> b!1031683 m!1204769))

(assert (=> b!1031683 m!1204769))

(assert (=> b!1031683 m!1204777))

(assert (=> b!1031690 m!1204767))

(assert (=> b!1031696 m!1204797))

(assert (=> d!295786 m!1204781))

(assert (=> d!295786 m!1204515))

(assert (=> bm!71145 m!1204781))

(assert (=> d!295626 d!295786))

(assert (=> d!295626 d!295656))

(declare-fun d!295790 () Bool)

(declare-fun e!657609 () Bool)

(assert (=> d!295790 e!657609))

(declare-fun res!463583 () Bool)

(assert (=> d!295790 (=> (not res!463583) (not e!657609))))

(declare-fun lt!356201 () List!10091)

(assert (=> d!295790 (= res!463583 (= (content!1448 lt!356201) ((_ map or) (content!1448 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075))) (content!1448 (t!101137 s!10566)))))))

(declare-fun e!657610 () List!10091)

(assert (=> d!295790 (= lt!356201 e!657610)))

(declare-fun c!171178 () Bool)

(assert (=> d!295790 (= c!171178 ((_ is Nil!10075) (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075))))))

(assert (=> d!295790 (= (++!2769 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075)) (t!101137 s!10566)) lt!356201)))

(declare-fun b!1031711 () Bool)

(assert (=> b!1031711 (= e!657610 (t!101137 s!10566))))

(declare-fun b!1031714 () Bool)

(assert (=> b!1031714 (= e!657609 (or (not (= (t!101137 s!10566) Nil!10075)) (= lt!356201 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075)))))))

(declare-fun b!1031712 () Bool)

(assert (=> b!1031712 (= e!657610 (Cons!10075 (h!15476 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075))) (++!2769 (t!101137 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075))) (t!101137 s!10566))))))

(declare-fun b!1031713 () Bool)

(declare-fun res!463582 () Bool)

(assert (=> b!1031713 (=> (not res!463582) (not e!657609))))

(assert (=> b!1031713 (= res!463582 (= (size!7994 lt!356201) (+ (size!7994 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075))) (size!7994 (t!101137 s!10566)))))))

(assert (= (and d!295790 c!171178) b!1031711))

(assert (= (and d!295790 (not c!171178)) b!1031712))

(assert (= (and d!295790 res!463583) b!1031713))

(assert (= (and b!1031713 res!463582) b!1031714))

(declare-fun m!1205053 () Bool)

(assert (=> d!295790 m!1205053))

(assert (=> d!295790 m!1204721))

(declare-fun m!1205055 () Bool)

(assert (=> d!295790 m!1205055))

(declare-fun m!1205057 () Bool)

(assert (=> d!295790 m!1205057))

(declare-fun m!1205059 () Bool)

(assert (=> b!1031712 m!1205059))

(declare-fun m!1205061 () Bool)

(assert (=> b!1031713 m!1205061))

(assert (=> b!1031713 m!1204721))

(declare-fun m!1205063 () Bool)

(assert (=> b!1031713 m!1205063))

(assert (=> b!1031713 m!1204889))

(assert (=> b!1031209 d!295790))

(declare-fun d!295792 () Bool)

(declare-fun e!657611 () Bool)

(assert (=> d!295792 e!657611))

(declare-fun res!463585 () Bool)

(assert (=> d!295792 (=> (not res!463585) (not e!657611))))

(declare-fun lt!356202 () List!10091)

(assert (=> d!295792 (= res!463585 (= (content!1448 lt!356202) ((_ map or) (content!1448 Nil!10075) (content!1448 (Cons!10075 (h!15476 s!10566) Nil!10075)))))))

(declare-fun e!657612 () List!10091)

(assert (=> d!295792 (= lt!356202 e!657612)))

(declare-fun c!171179 () Bool)

(assert (=> d!295792 (= c!171179 ((_ is Nil!10075) Nil!10075))))

(assert (=> d!295792 (= (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075)) lt!356202)))

(declare-fun b!1031715 () Bool)

(assert (=> b!1031715 (= e!657612 (Cons!10075 (h!15476 s!10566) Nil!10075))))

(declare-fun b!1031718 () Bool)

(assert (=> b!1031718 (= e!657611 (or (not (= (Cons!10075 (h!15476 s!10566) Nil!10075) Nil!10075)) (= lt!356202 Nil!10075)))))

(declare-fun b!1031716 () Bool)

(assert (=> b!1031716 (= e!657612 (Cons!10075 (h!15476 Nil!10075) (++!2769 (t!101137 Nil!10075) (Cons!10075 (h!15476 s!10566) Nil!10075))))))

(declare-fun b!1031717 () Bool)

(declare-fun res!463584 () Bool)

(assert (=> b!1031717 (=> (not res!463584) (not e!657611))))

(assert (=> b!1031717 (= res!463584 (= (size!7994 lt!356202) (+ (size!7994 Nil!10075) (size!7994 (Cons!10075 (h!15476 s!10566) Nil!10075)))))))

(assert (= (and d!295792 c!171179) b!1031715))

(assert (= (and d!295792 (not c!171179)) b!1031716))

(assert (= (and d!295792 res!463585) b!1031717))

(assert (= (and b!1031717 res!463584) b!1031718))

(declare-fun m!1205069 () Bool)

(assert (=> d!295792 m!1205069))

(assert (=> d!295792 m!1204703))

(declare-fun m!1205071 () Bool)

(assert (=> d!295792 m!1205071))

(declare-fun m!1205073 () Bool)

(assert (=> b!1031716 m!1205073))

(declare-fun m!1205077 () Bool)

(assert (=> b!1031717 m!1205077))

(assert (=> b!1031717 m!1204711))

(declare-fun m!1205079 () Bool)

(assert (=> b!1031717 m!1205079))

(assert (=> b!1031209 d!295792))

(declare-fun d!295794 () Bool)

(assert (=> d!295794 (= (++!2769 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075)) (t!101137 s!10566)) s!10566)))

(declare-fun lt!356208 () Unit!15397)

(declare-fun choose!6572 (List!10091 C!6292 List!10091 List!10091) Unit!15397)

(assert (=> d!295794 (= lt!356208 (choose!6572 Nil!10075 (h!15476 s!10566) (t!101137 s!10566) s!10566))))

(assert (=> d!295794 (= (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) (t!101137 s!10566))) s!10566)))

(assert (=> d!295794 (= (lemmaMoveElementToOtherListKeepsConcatEq!362 Nil!10075 (h!15476 s!10566) (t!101137 s!10566) s!10566) lt!356208)))

(declare-fun bs!247335 () Bool)

(assert (= bs!247335 d!295794))

(assert (=> bs!247335 m!1204721))

(assert (=> bs!247335 m!1204721))

(assert (=> bs!247335 m!1204723))

(declare-fun m!1205103 () Bool)

(assert (=> bs!247335 m!1205103))

(declare-fun m!1205105 () Bool)

(assert (=> bs!247335 m!1205105))

(assert (=> b!1031209 d!295794))

(declare-fun b!1031754 () Bool)

(declare-fun e!657635 () Option!2390)

(assert (=> b!1031754 (= e!657635 (Some!2389 (tuple2!11497 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075)) (t!101137 s!10566))))))

(declare-fun b!1031755 () Bool)

(declare-fun e!657631 () Option!2390)

(assert (=> b!1031755 (= e!657635 e!657631)))

(declare-fun c!171193 () Bool)

(assert (=> b!1031755 (= c!171193 ((_ is Nil!10075) (t!101137 s!10566)))))

(declare-fun b!1031756 () Bool)

(declare-fun res!463595 () Bool)

(declare-fun e!657633 () Bool)

(assert (=> b!1031756 (=> (not res!463595) (not e!657633))))

(declare-fun lt!356210 () Option!2390)

(assert (=> b!1031756 (= res!463595 (matchR!1397 EmptyExpr!2861 (_2!6574 (get!3577 lt!356210))))))

(declare-fun b!1031757 () Bool)

(assert (=> b!1031757 (= e!657633 (= (++!2769 (_1!6574 (get!3577 lt!356210)) (_2!6574 (get!3577 lt!356210))) s!10566))))

(declare-fun b!1031758 () Bool)

(declare-fun lt!356209 () Unit!15397)

(declare-fun lt!356211 () Unit!15397)

(assert (=> b!1031758 (= lt!356209 lt!356211)))

(assert (=> b!1031758 (= (++!2769 (++!2769 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075)) (Cons!10075 (h!15476 (t!101137 s!10566)) Nil!10075)) (t!101137 (t!101137 s!10566))) s!10566)))

(assert (=> b!1031758 (= lt!356211 (lemmaMoveElementToOtherListKeepsConcatEq!362 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075)) (h!15476 (t!101137 s!10566)) (t!101137 (t!101137 s!10566)) s!10566))))

(assert (=> b!1031758 (= e!657631 (findConcatSeparation!496 (regOne!6234 r!15766) EmptyExpr!2861 (++!2769 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075)) (Cons!10075 (h!15476 (t!101137 s!10566)) Nil!10075)) (t!101137 (t!101137 s!10566)) s!10566))))

(declare-fun b!1031759 () Bool)

(declare-fun res!463598 () Bool)

(assert (=> b!1031759 (=> (not res!463598) (not e!657633))))

(assert (=> b!1031759 (= res!463598 (matchR!1397 (regOne!6234 r!15766) (_1!6574 (get!3577 lt!356210))))))

(declare-fun b!1031760 () Bool)

(assert (=> b!1031760 (= e!657631 None!2389)))

(declare-fun b!1031761 () Bool)

(declare-fun e!657634 () Bool)

(assert (=> b!1031761 (= e!657634 (not (isDefined!2032 lt!356210)))))

(declare-fun d!295804 () Bool)

(assert (=> d!295804 e!657634))

(declare-fun res!463596 () Bool)

(assert (=> d!295804 (=> res!463596 e!657634)))

(assert (=> d!295804 (= res!463596 e!657633)))

(declare-fun res!463597 () Bool)

(assert (=> d!295804 (=> (not res!463597) (not e!657633))))

(assert (=> d!295804 (= res!463597 (isDefined!2032 lt!356210))))

(assert (=> d!295804 (= lt!356210 e!657635)))

(declare-fun c!171194 () Bool)

(declare-fun e!657632 () Bool)

(assert (=> d!295804 (= c!171194 e!657632)))

(declare-fun res!463599 () Bool)

(assert (=> d!295804 (=> (not res!463599) (not e!657632))))

(assert (=> d!295804 (= res!463599 (matchR!1397 (regOne!6234 r!15766) (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075))))))

(assert (=> d!295804 (validRegex!1330 (regOne!6234 r!15766))))

(assert (=> d!295804 (= (findConcatSeparation!496 (regOne!6234 r!15766) EmptyExpr!2861 (++!2769 Nil!10075 (Cons!10075 (h!15476 s!10566) Nil!10075)) (t!101137 s!10566) s!10566) lt!356210)))

(declare-fun b!1031762 () Bool)

(assert (=> b!1031762 (= e!657632 (matchR!1397 EmptyExpr!2861 (t!101137 s!10566)))))

(assert (= (and d!295804 res!463599) b!1031762))

(assert (= (and d!295804 c!171194) b!1031754))

(assert (= (and d!295804 (not c!171194)) b!1031755))

(assert (= (and b!1031755 c!171193) b!1031760))

(assert (= (and b!1031755 (not c!171193)) b!1031758))

(assert (= (and d!295804 res!463597) b!1031759))

(assert (= (and b!1031759 res!463598) b!1031756))

(assert (= (and b!1031756 res!463595) b!1031757))

(assert (= (and d!295804 (not res!463596)) b!1031761))

(declare-fun m!1205113 () Bool)

(assert (=> b!1031756 m!1205113))

(declare-fun m!1205115 () Bool)

(assert (=> b!1031756 m!1205115))

(assert (=> b!1031758 m!1204721))

(declare-fun m!1205117 () Bool)

(assert (=> b!1031758 m!1205117))

(assert (=> b!1031758 m!1205117))

(declare-fun m!1205119 () Bool)

(assert (=> b!1031758 m!1205119))

(assert (=> b!1031758 m!1204721))

(declare-fun m!1205121 () Bool)

(assert (=> b!1031758 m!1205121))

(assert (=> b!1031758 m!1205117))

(declare-fun m!1205123 () Bool)

(assert (=> b!1031758 m!1205123))

(declare-fun m!1205125 () Bool)

(assert (=> b!1031762 m!1205125))

(declare-fun m!1205127 () Bool)

(assert (=> d!295804 m!1205127))

(assert (=> d!295804 m!1204721))

(declare-fun m!1205129 () Bool)

(assert (=> d!295804 m!1205129))

(assert (=> d!295804 m!1204515))

(assert (=> b!1031761 m!1205127))

(assert (=> b!1031759 m!1205113))

(declare-fun m!1205131 () Bool)

(assert (=> b!1031759 m!1205131))

(assert (=> b!1031757 m!1205113))

(declare-fun m!1205133 () Bool)

(assert (=> b!1031757 m!1205133))

(assert (=> b!1031209 d!295804))

(declare-fun b!1031763 () Bool)

(declare-fun res!463606 () Bool)

(declare-fun e!657642 () Bool)

(assert (=> b!1031763 (=> res!463606 e!657642)))

(assert (=> b!1031763 (= res!463606 (not (isEmpty!6459 (tail!1471 (_2!6574 (get!3577 lt!356141))))))))

(declare-fun b!1031764 () Bool)

(declare-fun e!657636 () Bool)

(assert (=> b!1031764 (= e!657636 e!657642)))

(declare-fun res!463610 () Bool)

(assert (=> b!1031764 (=> res!463610 e!657642)))

(declare-fun call!71162 () Bool)

(assert (=> b!1031764 (= res!463610 call!71162)))

(declare-fun b!1031765 () Bool)

(declare-fun e!657639 () Bool)

(assert (=> b!1031765 (= e!657639 e!657636)))

(declare-fun res!463603 () Bool)

(assert (=> b!1031765 (=> (not res!463603) (not e!657636))))

(declare-fun lt!356212 () Bool)

(assert (=> b!1031765 (= res!463603 (not lt!356212))))

(declare-fun b!1031766 () Bool)

(declare-fun res!463604 () Bool)

(declare-fun e!657641 () Bool)

(assert (=> b!1031766 (=> (not res!463604) (not e!657641))))

(assert (=> b!1031766 (= res!463604 (not call!71162))))

(declare-fun b!1031767 () Bool)

(declare-fun e!657637 () Bool)

(assert (=> b!1031767 (= e!657637 (not lt!356212))))

(declare-fun b!1031768 () Bool)

(declare-fun res!463607 () Bool)

(assert (=> b!1031768 (=> (not res!463607) (not e!657641))))

(assert (=> b!1031768 (= res!463607 (isEmpty!6459 (tail!1471 (_2!6574 (get!3577 lt!356141)))))))

(declare-fun b!1031769 () Bool)

(declare-fun e!657640 () Bool)

(assert (=> b!1031769 (= e!657640 e!657637)))

(declare-fun c!171196 () Bool)

(assert (=> b!1031769 (= c!171196 ((_ is EmptyLang!2861) EmptyExpr!2861))))

(declare-fun b!1031770 () Bool)

(assert (=> b!1031770 (= e!657641 (= (head!1909 (_2!6574 (get!3577 lt!356141))) (c!170950 EmptyExpr!2861)))))

(declare-fun b!1031771 () Bool)

(declare-fun e!657638 () Bool)

(assert (=> b!1031771 (= e!657638 (matchR!1397 (derivativeStep!754 EmptyExpr!2861 (head!1909 (_2!6574 (get!3577 lt!356141)))) (tail!1471 (_2!6574 (get!3577 lt!356141)))))))

(declare-fun d!295814 () Bool)

(assert (=> d!295814 e!657640))

(declare-fun c!171197 () Bool)

(assert (=> d!295814 (= c!171197 ((_ is EmptyExpr!2861) EmptyExpr!2861))))

(assert (=> d!295814 (= lt!356212 e!657638)))

(declare-fun c!171195 () Bool)

(assert (=> d!295814 (= c!171195 (isEmpty!6459 (_2!6574 (get!3577 lt!356141))))))

(assert (=> d!295814 (validRegex!1330 EmptyExpr!2861)))

(assert (=> d!295814 (= (matchR!1397 EmptyExpr!2861 (_2!6574 (get!3577 lt!356141))) lt!356212)))

(declare-fun b!1031772 () Bool)

(assert (=> b!1031772 (= e!657642 (not (= (head!1909 (_2!6574 (get!3577 lt!356141))) (c!170950 EmptyExpr!2861))))))

(declare-fun b!1031773 () Bool)

(assert (=> b!1031773 (= e!657640 (= lt!356212 call!71162))))

(declare-fun b!1031774 () Bool)

(declare-fun res!463608 () Bool)

(assert (=> b!1031774 (=> res!463608 e!657639)))

(assert (=> b!1031774 (= res!463608 e!657641)))

(declare-fun res!463609 () Bool)

(assert (=> b!1031774 (=> (not res!463609) (not e!657641))))

(assert (=> b!1031774 (= res!463609 lt!356212)))

(declare-fun bm!71157 () Bool)

(assert (=> bm!71157 (= call!71162 (isEmpty!6459 (_2!6574 (get!3577 lt!356141))))))

(declare-fun b!1031775 () Bool)

(declare-fun res!463605 () Bool)

(assert (=> b!1031775 (=> res!463605 e!657639)))

(assert (=> b!1031775 (= res!463605 (not ((_ is ElementMatch!2861) EmptyExpr!2861)))))

(assert (=> b!1031775 (= e!657637 e!657639)))

(declare-fun b!1031776 () Bool)

(assert (=> b!1031776 (= e!657638 (nullable!954 EmptyExpr!2861))))

(assert (= (and d!295814 c!171195) b!1031776))

(assert (= (and d!295814 (not c!171195)) b!1031771))

(assert (= (and d!295814 c!171197) b!1031773))

(assert (= (and d!295814 (not c!171197)) b!1031769))

(assert (= (and b!1031769 c!171196) b!1031767))

(assert (= (and b!1031769 (not c!171196)) b!1031775))

(assert (= (and b!1031775 (not res!463605)) b!1031774))

(assert (= (and b!1031774 res!463609) b!1031766))

(assert (= (and b!1031766 res!463604) b!1031768))

(assert (= (and b!1031768 res!463607) b!1031770))

(assert (= (and b!1031774 (not res!463608)) b!1031765))

(assert (= (and b!1031765 res!463603) b!1031764))

(assert (= (and b!1031764 (not res!463610)) b!1031763))

(assert (= (and b!1031763 (not res!463606)) b!1031772))

(assert (= (or b!1031773 b!1031764 b!1031766) bm!71157))

(declare-fun m!1205135 () Bool)

(assert (=> b!1031771 m!1205135))

(assert (=> b!1031771 m!1205135))

(declare-fun m!1205137 () Bool)

(assert (=> b!1031771 m!1205137))

(declare-fun m!1205139 () Bool)

(assert (=> b!1031771 m!1205139))

(assert (=> b!1031771 m!1205137))

(assert (=> b!1031771 m!1205139))

(declare-fun m!1205141 () Bool)

(assert (=> b!1031771 m!1205141))

(assert (=> b!1031772 m!1205135))

(assert (=> b!1031768 m!1205139))

(assert (=> b!1031768 m!1205139))

(declare-fun m!1205143 () Bool)

(assert (=> b!1031768 m!1205143))

(assert (=> b!1031763 m!1205139))

(assert (=> b!1031763 m!1205139))

(assert (=> b!1031763 m!1205143))

(assert (=> b!1031770 m!1205135))

(assert (=> b!1031776 m!1204779))

(declare-fun m!1205145 () Bool)

(assert (=> d!295814 m!1205145))

(assert (=> d!295814 m!1204783))

(assert (=> bm!71157 m!1205145))

(assert (=> b!1031207 d!295814))

(declare-fun d!295816 () Bool)

(assert (=> d!295816 (= (get!3577 lt!356141) (v!19806 lt!356141))))

(assert (=> b!1031207 d!295816))

(declare-fun b!1031785 () Bool)

(declare-fun e!657653 () Bool)

(declare-fun e!657651 () Bool)

(assert (=> b!1031785 (= e!657653 e!657651)))

(declare-fun res!463612 () Bool)

(assert (=> b!1031785 (=> (not res!463612) (not e!657651))))

(declare-fun call!71164 () Bool)

(assert (=> b!1031785 (= res!463612 call!71164)))

(declare-fun b!1031786 () Bool)

(declare-fun e!657648 () Bool)

(declare-fun e!657652 () Bool)

(assert (=> b!1031786 (= e!657648 e!657652)))

(declare-fun res!463611 () Bool)

(assert (=> b!1031786 (= res!463611 (not (nullable!954 (reg!3190 (ite c!171050 (regOne!6235 r!15766) (regOne!6234 r!15766))))))))

(assert (=> b!1031786 (=> (not res!463611) (not e!657652))))

(declare-fun b!1031787 () Bool)

(declare-fun e!657649 () Bool)

(declare-fun call!71165 () Bool)

(assert (=> b!1031787 (= e!657649 call!71165)))

(declare-fun d!295820 () Bool)

(declare-fun res!463614 () Bool)

(declare-fun e!657647 () Bool)

(assert (=> d!295820 (=> res!463614 e!657647)))

(assert (=> d!295820 (= res!463614 ((_ is ElementMatch!2861) (ite c!171050 (regOne!6235 r!15766) (regOne!6234 r!15766))))))

(assert (=> d!295820 (= (validRegex!1330 (ite c!171050 (regOne!6235 r!15766) (regOne!6234 r!15766))) e!657647)))

(declare-fun b!1031788 () Bool)

(declare-fun res!463615 () Bool)

(assert (=> b!1031788 (=> res!463615 e!657653)))

(assert (=> b!1031788 (= res!463615 (not ((_ is Concat!4694) (ite c!171050 (regOne!6235 r!15766) (regOne!6234 r!15766)))))))

(declare-fun e!657650 () Bool)

(assert (=> b!1031788 (= e!657650 e!657653)))

(declare-fun c!171203 () Bool)

(declare-fun bm!71158 () Bool)

(assert (=> bm!71158 (= call!71164 (validRegex!1330 (ite c!171203 (regOne!6235 (ite c!171050 (regOne!6235 r!15766) (regOne!6234 r!15766))) (regOne!6234 (ite c!171050 (regOne!6235 r!15766) (regOne!6234 r!15766))))))))

(declare-fun b!1031789 () Bool)

(assert (=> b!1031789 (= e!657651 call!71165)))

(declare-fun b!1031790 () Bool)

(assert (=> b!1031790 (= e!657647 e!657648)))

(declare-fun c!171202 () Bool)

(assert (=> b!1031790 (= c!171202 ((_ is Star!2861) (ite c!171050 (regOne!6235 r!15766) (regOne!6234 r!15766))))))

(declare-fun bm!71159 () Bool)

(declare-fun call!71163 () Bool)

(assert (=> bm!71159 (= call!71165 call!71163)))

(declare-fun bm!71160 () Bool)

(assert (=> bm!71160 (= call!71163 (validRegex!1330 (ite c!171202 (reg!3190 (ite c!171050 (regOne!6235 r!15766) (regOne!6234 r!15766))) (ite c!171203 (regTwo!6235 (ite c!171050 (regOne!6235 r!15766) (regOne!6234 r!15766))) (regTwo!6234 (ite c!171050 (regOne!6235 r!15766) (regOne!6234 r!15766)))))))))

(declare-fun b!1031791 () Bool)

(declare-fun res!463613 () Bool)

(assert (=> b!1031791 (=> (not res!463613) (not e!657649))))

(assert (=> b!1031791 (= res!463613 call!71164)))

(assert (=> b!1031791 (= e!657650 e!657649)))

(declare-fun b!1031792 () Bool)

(assert (=> b!1031792 (= e!657652 call!71163)))

(declare-fun b!1031793 () Bool)

(assert (=> b!1031793 (= e!657648 e!657650)))

(assert (=> b!1031793 (= c!171203 ((_ is Union!2861) (ite c!171050 (regOne!6235 r!15766) (regOne!6234 r!15766))))))

(assert (= (and d!295820 (not res!463614)) b!1031790))

(assert (= (and b!1031790 c!171202) b!1031786))

(assert (= (and b!1031790 (not c!171202)) b!1031793))

(assert (= (and b!1031786 res!463611) b!1031792))

(assert (= (and b!1031793 c!171203) b!1031791))

(assert (= (and b!1031793 (not c!171203)) b!1031788))

(assert (= (and b!1031791 res!463613) b!1031787))

(assert (= (and b!1031788 (not res!463615)) b!1031785))

(assert (= (and b!1031785 res!463612) b!1031789))

(assert (= (or b!1031787 b!1031789) bm!71159))

(assert (= (or b!1031791 b!1031785) bm!71158))

(assert (= (or b!1031792 bm!71159) bm!71160))

(declare-fun m!1205155 () Bool)

(assert (=> b!1031786 m!1205155))

(declare-fun m!1205157 () Bool)

(assert (=> bm!71158 m!1205157))

(declare-fun m!1205159 () Bool)

(assert (=> bm!71160 m!1205159))

(assert (=> bm!71061 d!295820))

(declare-fun b!1031805 () Bool)

(declare-fun e!657667 () Bool)

(declare-fun e!657665 () Bool)

(assert (=> b!1031805 (= e!657667 e!657665)))

(declare-fun res!463620 () Bool)

(assert (=> b!1031805 (=> (not res!463620) (not e!657665))))

(declare-fun call!71169 () Bool)

(assert (=> b!1031805 (= res!463620 call!71169)))

(declare-fun b!1031806 () Bool)

(declare-fun e!657662 () Bool)

(declare-fun e!657666 () Bool)

(assert (=> b!1031806 (= e!657662 e!657666)))

(declare-fun res!463619 () Bool)

(assert (=> b!1031806 (= res!463619 (not (nullable!954 (reg!3190 (ite c!171049 (reg!3190 r!15766) (ite c!171050 (regTwo!6235 r!15766) (regTwo!6234 r!15766)))))))))

(assert (=> b!1031806 (=> (not res!463619) (not e!657666))))

(declare-fun b!1031807 () Bool)

(declare-fun e!657663 () Bool)

(declare-fun call!71170 () Bool)

(assert (=> b!1031807 (= e!657663 call!71170)))

(declare-fun d!295828 () Bool)

(declare-fun res!463622 () Bool)

(declare-fun e!657661 () Bool)

(assert (=> d!295828 (=> res!463622 e!657661)))

(assert (=> d!295828 (= res!463622 ((_ is ElementMatch!2861) (ite c!171049 (reg!3190 r!15766) (ite c!171050 (regTwo!6235 r!15766) (regTwo!6234 r!15766)))))))

(assert (=> d!295828 (= (validRegex!1330 (ite c!171049 (reg!3190 r!15766) (ite c!171050 (regTwo!6235 r!15766) (regTwo!6234 r!15766)))) e!657661)))

(declare-fun b!1031808 () Bool)

(declare-fun res!463623 () Bool)

(assert (=> b!1031808 (=> res!463623 e!657667)))

(assert (=> b!1031808 (= res!463623 (not ((_ is Concat!4694) (ite c!171049 (reg!3190 r!15766) (ite c!171050 (regTwo!6235 r!15766) (regTwo!6234 r!15766))))))))

(declare-fun e!657664 () Bool)

(assert (=> b!1031808 (= e!657664 e!657667)))

(declare-fun c!171209 () Bool)

(declare-fun bm!71163 () Bool)

(assert (=> bm!71163 (= call!71169 (validRegex!1330 (ite c!171209 (regOne!6235 (ite c!171049 (reg!3190 r!15766) (ite c!171050 (regTwo!6235 r!15766) (regTwo!6234 r!15766)))) (regOne!6234 (ite c!171049 (reg!3190 r!15766) (ite c!171050 (regTwo!6235 r!15766) (regTwo!6234 r!15766)))))))))

(declare-fun b!1031809 () Bool)

(assert (=> b!1031809 (= e!657665 call!71170)))

(declare-fun b!1031810 () Bool)

(assert (=> b!1031810 (= e!657661 e!657662)))

(declare-fun c!171208 () Bool)

(assert (=> b!1031810 (= c!171208 ((_ is Star!2861) (ite c!171049 (reg!3190 r!15766) (ite c!171050 (regTwo!6235 r!15766) (regTwo!6234 r!15766)))))))

(declare-fun bm!71164 () Bool)

(declare-fun call!71168 () Bool)

(assert (=> bm!71164 (= call!71170 call!71168)))

(declare-fun bm!71165 () Bool)

(assert (=> bm!71165 (= call!71168 (validRegex!1330 (ite c!171208 (reg!3190 (ite c!171049 (reg!3190 r!15766) (ite c!171050 (regTwo!6235 r!15766) (regTwo!6234 r!15766)))) (ite c!171209 (regTwo!6235 (ite c!171049 (reg!3190 r!15766) (ite c!171050 (regTwo!6235 r!15766) (regTwo!6234 r!15766)))) (regTwo!6234 (ite c!171049 (reg!3190 r!15766) (ite c!171050 (regTwo!6235 r!15766) (regTwo!6234 r!15766))))))))))

(declare-fun b!1031811 () Bool)

(declare-fun res!463621 () Bool)

(assert (=> b!1031811 (=> (not res!463621) (not e!657663))))

(assert (=> b!1031811 (= res!463621 call!71169)))

(assert (=> b!1031811 (= e!657664 e!657663)))

(declare-fun b!1031812 () Bool)

(assert (=> b!1031812 (= e!657666 call!71168)))

(declare-fun b!1031813 () Bool)

(assert (=> b!1031813 (= e!657662 e!657664)))

(assert (=> b!1031813 (= c!171209 ((_ is Union!2861) (ite c!171049 (reg!3190 r!15766) (ite c!171050 (regTwo!6235 r!15766) (regTwo!6234 r!15766)))))))

(assert (= (and d!295828 (not res!463622)) b!1031810))

(assert (= (and b!1031810 c!171208) b!1031806))

(assert (= (and b!1031810 (not c!171208)) b!1031813))

(assert (= (and b!1031806 res!463619) b!1031812))

(assert (= (and b!1031813 c!171209) b!1031811))

(assert (= (and b!1031813 (not c!171209)) b!1031808))

(assert (= (and b!1031811 res!463621) b!1031807))

(assert (= (and b!1031808 (not res!463623)) b!1031805))

(assert (= (and b!1031805 res!463620) b!1031809))

(assert (= (or b!1031807 b!1031809) bm!71164))

(assert (= (or b!1031811 b!1031805) bm!71163))

(assert (= (or b!1031812 bm!71164) bm!71165))

(declare-fun m!1205161 () Bool)

(assert (=> b!1031806 m!1205161))

(declare-fun m!1205163 () Bool)

(assert (=> bm!71163 m!1205163))

(declare-fun m!1205165 () Bool)

(assert (=> bm!71165 m!1205165))

(assert (=> bm!71063 d!295828))

(declare-fun d!295830 () Bool)

(declare-fun c!171212 () Bool)

(assert (=> d!295830 (= c!171212 ((_ is Nil!10075) lt!356130))))

(declare-fun e!657670 () (InoxSet C!6292))

(assert (=> d!295830 (= (content!1448 lt!356130) e!657670)))

(declare-fun b!1031818 () Bool)

(assert (=> b!1031818 (= e!657670 ((as const (Array C!6292 Bool)) false))))

(declare-fun b!1031819 () Bool)

(assert (=> b!1031819 (= e!657670 ((_ map or) (store ((as const (Array C!6292 Bool)) false) (h!15476 lt!356130) true) (content!1448 (t!101137 lt!356130))))))

(assert (= (and d!295830 c!171212) b!1031818))

(assert (= (and d!295830 (not c!171212)) b!1031819))

(declare-fun m!1205167 () Bool)

(assert (=> b!1031819 m!1205167))

(declare-fun m!1205169 () Bool)

(assert (=> b!1031819 m!1205169))

(assert (=> d!295616 d!295830))

(declare-fun d!295832 () Bool)

(assert (=> d!295832 (= (content!1448 Nil!10075) ((as const (Array C!6292 Bool)) false))))

(assert (=> d!295616 d!295832))

(declare-fun d!295834 () Bool)

(declare-fun c!171213 () Bool)

(assert (=> d!295834 (= c!171213 ((_ is Nil!10075) s!10566))))

(declare-fun e!657671 () (InoxSet C!6292))

(assert (=> d!295834 (= (content!1448 s!10566) e!657671)))

(declare-fun b!1031820 () Bool)

(assert (=> b!1031820 (= e!657671 ((as const (Array C!6292 Bool)) false))))

(declare-fun b!1031821 () Bool)

(assert (=> b!1031821 (= e!657671 ((_ map or) (store ((as const (Array C!6292 Bool)) false) (h!15476 s!10566) true) (content!1448 (t!101137 s!10566))))))

(assert (= (and d!295834 c!171213) b!1031820))

(assert (= (and d!295834 (not c!171213)) b!1031821))

(declare-fun m!1205171 () Bool)

(assert (=> b!1031821 m!1205171))

(assert (=> b!1031821 m!1205057))

(assert (=> d!295616 d!295834))

(assert (=> bm!71032 d!295630))

(declare-fun d!295836 () Bool)

(assert (=> d!295836 (= (Exists!588 lambda!37015) (choose!6568 lambda!37015))))

(declare-fun bs!247349 () Bool)

(assert (= bs!247349 d!295836))

(declare-fun m!1205173 () Bool)

(assert (=> bs!247349 m!1205173))

(assert (=> d!295636 d!295836))

(declare-fun d!295838 () Bool)

(assert (=> d!295838 (= (Exists!588 lambda!37016) (choose!6568 lambda!37016))))

(declare-fun bs!247350 () Bool)

(assert (= bs!247350 d!295838))

(declare-fun m!1205175 () Bool)

(assert (=> bs!247350 m!1205175))

(assert (=> d!295636 d!295838))

(declare-fun bs!247353 () Bool)

(declare-fun d!295840 () Bool)

(assert (= bs!247353 (and d!295840 b!1030774)))

(declare-fun lambda!37030 () Int)

(assert (=> bs!247353 (= lambda!37030 lambda!36985)))

(declare-fun bs!247354 () Bool)

(assert (= bs!247354 (and d!295840 d!295634)))

(assert (=> bs!247354 (= lambda!37030 lambda!37010)))

(assert (=> bs!247353 (not (= lambda!37030 lambda!36986))))

(declare-fun bs!247355 () Bool)

(assert (= bs!247355 (and d!295840 d!295702)))

(assert (=> bs!247355 (= lambda!37030 lambda!37019)))

(declare-fun bs!247356 () Bool)

(assert (= bs!247356 (and d!295840 b!1030890)))

(assert (=> bs!247356 (not (= lambda!37030 lambda!37001))))

(declare-fun bs!247357 () Bool)

(assert (= bs!247357 (and d!295840 b!1030899)))

(assert (=> bs!247357 (not (= lambda!37030 lambda!37000))))

(declare-fun bs!247358 () Bool)

(assert (= bs!247358 (and d!295840 d!295636)))

(assert (=> bs!247358 (= lambda!37030 lambda!37015)))

(assert (=> bs!247358 (not (= lambda!37030 lambda!37016))))

(assert (=> d!295840 true))

(assert (=> d!295840 true))

(assert (=> d!295840 true))

(declare-fun lambda!37032 () Int)

(assert (=> bs!247353 (not (= lambda!37032 lambda!36985))))

(assert (=> bs!247354 (not (= lambda!37032 lambda!37010))))

(assert (=> bs!247355 (not (= lambda!37032 lambda!37019))))

(assert (=> bs!247356 (= (= EmptyExpr!2861 (regTwo!6234 r!15766)) (= lambda!37032 lambda!37001))))

(assert (=> bs!247357 (not (= lambda!37032 lambda!37000))))

(declare-fun bs!247366 () Bool)

(assert (= bs!247366 d!295840))

(assert (=> bs!247366 (not (= lambda!37032 lambda!37030))))

(assert (=> bs!247353 (= lambda!37032 lambda!36986)))

(assert (=> bs!247358 (not (= lambda!37032 lambda!37015))))

(assert (=> bs!247358 (= lambda!37032 lambda!37016)))

(assert (=> d!295840 true))

(assert (=> d!295840 true))

(assert (=> d!295840 true))

(assert (=> d!295840 (= (Exists!588 lambda!37030) (Exists!588 lambda!37032))))

(assert (=> d!295840 true))

(declare-fun _$90!857 () Unit!15397)

(assert (=> d!295840 (= (choose!6570 (regOne!6234 r!15766) EmptyExpr!2861 s!10566) _$90!857)))

(declare-fun m!1205187 () Bool)

(assert (=> bs!247366 m!1205187))

(declare-fun m!1205189 () Bool)

(assert (=> bs!247366 m!1205189))

(assert (=> d!295636 d!295840))

(assert (=> d!295636 d!295656))

(assert (=> b!1031283 d!295692))

(assert (=> b!1031283 d!295696))

(assert (=> b!1031212 d!295784))

(assert (=> d!295648 d!295630))

(declare-fun b!1031838 () Bool)

(declare-fun e!657686 () Bool)

(declare-fun e!657684 () Bool)

(assert (=> b!1031838 (= e!657686 e!657684)))

(declare-fun res!463641 () Bool)

(assert (=> b!1031838 (=> (not res!463641) (not e!657684))))

(declare-fun call!71172 () Bool)

(assert (=> b!1031838 (= res!463641 call!71172)))

(declare-fun b!1031839 () Bool)

(declare-fun e!657681 () Bool)

(declare-fun e!657685 () Bool)

(assert (=> b!1031839 (= e!657681 e!657685)))

(declare-fun res!463640 () Bool)

(assert (=> b!1031839 (= res!463640 (not (nullable!954 (reg!3190 lt!356083))))))

(assert (=> b!1031839 (=> (not res!463640) (not e!657685))))

(declare-fun b!1031840 () Bool)

(declare-fun e!657682 () Bool)

(declare-fun call!71173 () Bool)

(assert (=> b!1031840 (= e!657682 call!71173)))

(declare-fun d!295848 () Bool)

(declare-fun res!463643 () Bool)

(declare-fun e!657680 () Bool)

(assert (=> d!295848 (=> res!463643 e!657680)))

(assert (=> d!295848 (= res!463643 ((_ is ElementMatch!2861) lt!356083))))

(assert (=> d!295848 (= (validRegex!1330 lt!356083) e!657680)))

(declare-fun b!1031841 () Bool)

(declare-fun res!463644 () Bool)

(assert (=> b!1031841 (=> res!463644 e!657686)))

(assert (=> b!1031841 (= res!463644 (not ((_ is Concat!4694) lt!356083)))))

(declare-fun e!657683 () Bool)

(assert (=> b!1031841 (= e!657683 e!657686)))

(declare-fun bm!71166 () Bool)

(declare-fun c!171215 () Bool)

(assert (=> bm!71166 (= call!71172 (validRegex!1330 (ite c!171215 (regOne!6235 lt!356083) (regOne!6234 lt!356083))))))

(declare-fun b!1031842 () Bool)

(assert (=> b!1031842 (= e!657684 call!71173)))

(declare-fun b!1031843 () Bool)

(assert (=> b!1031843 (= e!657680 e!657681)))

(declare-fun c!171214 () Bool)

(assert (=> b!1031843 (= c!171214 ((_ is Star!2861) lt!356083))))

(declare-fun bm!71167 () Bool)

(declare-fun call!71171 () Bool)

(assert (=> bm!71167 (= call!71173 call!71171)))

(declare-fun bm!71168 () Bool)

(assert (=> bm!71168 (= call!71171 (validRegex!1330 (ite c!171214 (reg!3190 lt!356083) (ite c!171215 (regTwo!6235 lt!356083) (regTwo!6234 lt!356083)))))))

(declare-fun b!1031844 () Bool)

(declare-fun res!463642 () Bool)

(assert (=> b!1031844 (=> (not res!463642) (not e!657682))))

(assert (=> b!1031844 (= res!463642 call!71172)))

(assert (=> b!1031844 (= e!657683 e!657682)))

(declare-fun b!1031845 () Bool)

(assert (=> b!1031845 (= e!657685 call!71171)))

(declare-fun b!1031846 () Bool)

(assert (=> b!1031846 (= e!657681 e!657683)))

(assert (=> b!1031846 (= c!171215 ((_ is Union!2861) lt!356083))))

(assert (= (and d!295848 (not res!463643)) b!1031843))

(assert (= (and b!1031843 c!171214) b!1031839))

(assert (= (and b!1031843 (not c!171214)) b!1031846))

(assert (= (and b!1031839 res!463640) b!1031845))

(assert (= (and b!1031846 c!171215) b!1031844))

(assert (= (and b!1031846 (not c!171215)) b!1031841))

(assert (= (and b!1031844 res!463642) b!1031840))

(assert (= (and b!1031841 (not res!463644)) b!1031838))

(assert (= (and b!1031838 res!463641) b!1031842))

(assert (= (or b!1031840 b!1031842) bm!71167))

(assert (= (or b!1031844 b!1031838) bm!71166))

(assert (= (or b!1031845 bm!71167) bm!71168))

(declare-fun m!1205191 () Bool)

(assert (=> b!1031839 m!1205191))

(declare-fun m!1205193 () Bool)

(assert (=> bm!71166 m!1205193))

(declare-fun m!1205195 () Bool)

(assert (=> bm!71168 m!1205195))

(assert (=> d!295648 d!295848))

(assert (=> b!1031276 d!295682))

(declare-fun b!1031847 () Bool)

(declare-fun e!657693 () Bool)

(declare-fun e!657691 () Bool)

(assert (=> b!1031847 (= e!657693 e!657691)))

(declare-fun res!463646 () Bool)

(assert (=> b!1031847 (=> (not res!463646) (not e!657691))))

(declare-fun call!71175 () Bool)

(assert (=> b!1031847 (= res!463646 call!71175)))

(declare-fun b!1031848 () Bool)

(declare-fun e!657688 () Bool)

(declare-fun e!657692 () Bool)

(assert (=> b!1031848 (= e!657688 e!657692)))

(declare-fun res!463645 () Bool)

(assert (=> b!1031848 (= res!463645 (not (nullable!954 (reg!3190 (ite c!171076 (regOne!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766)))))))))

(assert (=> b!1031848 (=> (not res!463645) (not e!657692))))

(declare-fun b!1031849 () Bool)

(declare-fun e!657689 () Bool)

(declare-fun call!71176 () Bool)

(assert (=> b!1031849 (= e!657689 call!71176)))

(declare-fun d!295850 () Bool)

(declare-fun res!463648 () Bool)

(declare-fun e!657687 () Bool)

(assert (=> d!295850 (=> res!463648 e!657687)))

(assert (=> d!295850 (= res!463648 ((_ is ElementMatch!2861) (ite c!171076 (regOne!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766)))))))

(assert (=> d!295850 (= (validRegex!1330 (ite c!171076 (regOne!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766)))) e!657687)))

(declare-fun b!1031850 () Bool)

(declare-fun res!463649 () Bool)

(assert (=> b!1031850 (=> res!463649 e!657693)))

(assert (=> b!1031850 (= res!463649 (not ((_ is Concat!4694) (ite c!171076 (regOne!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766))))))))

(declare-fun e!657690 () Bool)

(assert (=> b!1031850 (= e!657690 e!657693)))

(declare-fun bm!71169 () Bool)

(declare-fun c!171217 () Bool)

(assert (=> bm!71169 (= call!71175 (validRegex!1330 (ite c!171217 (regOne!6235 (ite c!171076 (regOne!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766)))) (regOne!6234 (ite c!171076 (regOne!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766)))))))))

(declare-fun b!1031851 () Bool)

(assert (=> b!1031851 (= e!657691 call!71176)))

(declare-fun b!1031852 () Bool)

(assert (=> b!1031852 (= e!657687 e!657688)))

(declare-fun c!171216 () Bool)

(assert (=> b!1031852 (= c!171216 ((_ is Star!2861) (ite c!171076 (regOne!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766)))))))

(declare-fun bm!71170 () Bool)

(declare-fun call!71174 () Bool)

(assert (=> bm!71170 (= call!71176 call!71174)))

(declare-fun bm!71171 () Bool)

(assert (=> bm!71171 (= call!71174 (validRegex!1330 (ite c!171216 (reg!3190 (ite c!171076 (regOne!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766)))) (ite c!171217 (regTwo!6235 (ite c!171076 (regOne!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766)))) (regTwo!6234 (ite c!171076 (regOne!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766))))))))))

(declare-fun b!1031853 () Bool)

(declare-fun res!463647 () Bool)

(assert (=> b!1031853 (=> (not res!463647) (not e!657689))))

(assert (=> b!1031853 (= res!463647 call!71175)))

(assert (=> b!1031853 (= e!657690 e!657689)))

(declare-fun b!1031854 () Bool)

(assert (=> b!1031854 (= e!657692 call!71174)))

(declare-fun b!1031855 () Bool)

(assert (=> b!1031855 (= e!657688 e!657690)))

(assert (=> b!1031855 (= c!171217 ((_ is Union!2861) (ite c!171076 (regOne!6235 (regOne!6234 r!15766)) (regOne!6234 (regOne!6234 r!15766)))))))

(assert (= (and d!295850 (not res!463648)) b!1031852))

(assert (= (and b!1031852 c!171216) b!1031848))

(assert (= (and b!1031852 (not c!171216)) b!1031855))

(assert (= (and b!1031848 res!463645) b!1031854))

(assert (= (and b!1031855 c!171217) b!1031853))

(assert (= (and b!1031855 (not c!171217)) b!1031850))

(assert (= (and b!1031853 res!463647) b!1031849))

(assert (= (and b!1031850 (not res!463649)) b!1031847))

(assert (= (and b!1031847 res!463646) b!1031851))

(assert (= (or b!1031849 b!1031851) bm!71170))

(assert (= (or b!1031853 b!1031847) bm!71169))

(assert (= (or b!1031854 bm!71170) bm!71171))

(declare-fun m!1205201 () Bool)

(assert (=> b!1031848 m!1205201))

(declare-fun m!1205203 () Bool)

(assert (=> bm!71169 m!1205203))

(declare-fun m!1205205 () Bool)

(assert (=> bm!71171 m!1205205))

(assert (=> bm!71082 d!295850))

(assert (=> b!1031017 d!295692))

(assert (=> b!1031017 d!295696))

(assert (=> b!1031278 d!295682))

(declare-fun b!1031856 () Bool)

(declare-fun e!657700 () Bool)

(declare-fun e!657698 () Bool)

(assert (=> b!1031856 (= e!657700 e!657698)))

(declare-fun res!463651 () Bool)

(assert (=> b!1031856 (=> (not res!463651) (not e!657698))))

(declare-fun call!71178 () Bool)

(assert (=> b!1031856 (= res!463651 call!71178)))

(declare-fun b!1031857 () Bool)

(declare-fun e!657695 () Bool)

(declare-fun e!657699 () Bool)

(assert (=> b!1031857 (= e!657695 e!657699)))

(declare-fun res!463650 () Bool)

(assert (=> b!1031857 (= res!463650 (not (nullable!954 (reg!3190 lt!356158))))))

(assert (=> b!1031857 (=> (not res!463650) (not e!657699))))

(declare-fun b!1031858 () Bool)

(declare-fun e!657696 () Bool)

(declare-fun call!71179 () Bool)

(assert (=> b!1031858 (= e!657696 call!71179)))

(declare-fun d!295854 () Bool)

(declare-fun res!463653 () Bool)

(declare-fun e!657694 () Bool)

(assert (=> d!295854 (=> res!463653 e!657694)))

(assert (=> d!295854 (= res!463653 ((_ is ElementMatch!2861) lt!356158))))

(assert (=> d!295854 (= (validRegex!1330 lt!356158) e!657694)))

(declare-fun b!1031859 () Bool)

(declare-fun res!463654 () Bool)

(assert (=> b!1031859 (=> res!463654 e!657700)))

(assert (=> b!1031859 (= res!463654 (not ((_ is Concat!4694) lt!356158)))))

(declare-fun e!657697 () Bool)

(assert (=> b!1031859 (= e!657697 e!657700)))

(declare-fun bm!71172 () Bool)

(declare-fun c!171219 () Bool)

(assert (=> bm!71172 (= call!71178 (validRegex!1330 (ite c!171219 (regOne!6235 lt!356158) (regOne!6234 lt!356158))))))

(declare-fun b!1031860 () Bool)

(assert (=> b!1031860 (= e!657698 call!71179)))

(declare-fun b!1031861 () Bool)

(assert (=> b!1031861 (= e!657694 e!657695)))

(declare-fun c!171218 () Bool)

(assert (=> b!1031861 (= c!171218 ((_ is Star!2861) lt!356158))))

(declare-fun bm!71173 () Bool)

(declare-fun call!71177 () Bool)

(assert (=> bm!71173 (= call!71179 call!71177)))

(declare-fun bm!71174 () Bool)

(assert (=> bm!71174 (= call!71177 (validRegex!1330 (ite c!171218 (reg!3190 lt!356158) (ite c!171219 (regTwo!6235 lt!356158) (regTwo!6234 lt!356158)))))))

(declare-fun b!1031862 () Bool)

(declare-fun res!463652 () Bool)

(assert (=> b!1031862 (=> (not res!463652) (not e!657696))))

(assert (=> b!1031862 (= res!463652 call!71178)))

(assert (=> b!1031862 (= e!657697 e!657696)))

(declare-fun b!1031863 () Bool)

(assert (=> b!1031863 (= e!657699 call!71177)))

(declare-fun b!1031864 () Bool)

(assert (=> b!1031864 (= e!657695 e!657697)))

(assert (=> b!1031864 (= c!171219 ((_ is Union!2861) lt!356158))))

(assert (= (and d!295854 (not res!463653)) b!1031861))

(assert (= (and b!1031861 c!171218) b!1031857))

(assert (= (and b!1031861 (not c!171218)) b!1031864))

(assert (= (and b!1031857 res!463650) b!1031863))

(assert (= (and b!1031864 c!171219) b!1031862))

(assert (= (and b!1031864 (not c!171219)) b!1031859))

(assert (= (and b!1031862 res!463652) b!1031858))

(assert (= (and b!1031859 (not res!463654)) b!1031856))

(assert (= (and b!1031856 res!463651) b!1031860))

(assert (= (or b!1031858 b!1031860) bm!71173))

(assert (= (or b!1031862 b!1031856) bm!71172))

(assert (= (or b!1031863 bm!71173) bm!71174))

(declare-fun m!1205207 () Bool)

(assert (=> b!1031857 m!1205207))

(declare-fun m!1205209 () Bool)

(assert (=> bm!71172 m!1205209))

(declare-fun m!1205211 () Bool)

(assert (=> bm!71174 m!1205211))

(assert (=> d!295652 d!295854))

(assert (=> d!295652 d!295656))

(declare-fun d!295860 () Bool)

(assert (=> d!295860 true))

(assert (=> d!295860 true))

(declare-fun res!463657 () Bool)

(assert (=> d!295860 (= (choose!6568 lambda!36985) res!463657)))

(assert (=> d!295628 d!295860))

(assert (=> b!1031268 d!295718))

(assert (=> b!1031268 d!295716))

(assert (=> b!1031302 d!295692))

(assert (=> b!1031302 d!295696))

(declare-fun d!295864 () Bool)

(declare-fun e!657702 () Bool)

(assert (=> d!295864 e!657702))

(declare-fun res!463659 () Bool)

(assert (=> d!295864 (=> (not res!463659) (not e!657702))))

(declare-fun lt!356213 () List!10091)

(assert (=> d!295864 (= res!463659 (= (content!1448 lt!356213) ((_ map or) (content!1448 (t!101137 s!10566)) (content!1448 Nil!10075))))))

(declare-fun e!657703 () List!10091)

(assert (=> d!295864 (= lt!356213 e!657703)))

(declare-fun c!171221 () Bool)

(assert (=> d!295864 (= c!171221 ((_ is Nil!10075) (t!101137 s!10566)))))

(assert (=> d!295864 (= (++!2769 (t!101137 s!10566) Nil!10075) lt!356213)))

(declare-fun b!1031867 () Bool)

(assert (=> b!1031867 (= e!657703 Nil!10075)))

(declare-fun b!1031870 () Bool)

(assert (=> b!1031870 (= e!657702 (or (not (= Nil!10075 Nil!10075)) (= lt!356213 (t!101137 s!10566))))))

(declare-fun b!1031868 () Bool)

(assert (=> b!1031868 (= e!657703 (Cons!10075 (h!15476 (t!101137 s!10566)) (++!2769 (t!101137 (t!101137 s!10566)) Nil!10075)))))

(declare-fun b!1031869 () Bool)

(declare-fun res!463658 () Bool)

(assert (=> b!1031869 (=> (not res!463658) (not e!657702))))

(assert (=> b!1031869 (= res!463658 (= (size!7994 lt!356213) (+ (size!7994 (t!101137 s!10566)) (size!7994 Nil!10075))))))

(assert (= (and d!295864 c!171221) b!1031867))

(assert (= (and d!295864 (not c!171221)) b!1031868))

(assert (= (and d!295864 res!463659) b!1031869))

(assert (= (and b!1031869 res!463658) b!1031870))

(declare-fun m!1205217 () Bool)

(assert (=> d!295864 m!1205217))

(assert (=> d!295864 m!1205057))

(assert (=> d!295864 m!1204703))

(declare-fun m!1205219 () Bool)

(assert (=> b!1031868 m!1205219))

(declare-fun m!1205221 () Bool)

(assert (=> b!1031869 m!1205221))

(assert (=> b!1031869 m!1204889))

(assert (=> b!1031869 m!1204711))

(assert (=> b!1031227 d!295864))

(assert (=> b!1031266 d!295682))

(assert (=> b!1031266 d!295720))

(assert (=> b!1031304 d!295720))

(declare-fun b!1031871 () Bool)

(declare-fun res!463663 () Bool)

(declare-fun e!657710 () Bool)

(assert (=> b!1031871 (=> res!463663 e!657710)))

(assert (=> b!1031871 (= res!463663 (not (isEmpty!6459 (tail!1471 (tail!1471 s!10566)))))))

(declare-fun b!1031872 () Bool)

(declare-fun e!657704 () Bool)

(assert (=> b!1031872 (= e!657704 e!657710)))

(declare-fun res!463667 () Bool)

(assert (=> b!1031872 (=> res!463667 e!657710)))

(declare-fun call!71180 () Bool)

(assert (=> b!1031872 (= res!463667 call!71180)))

(declare-fun b!1031873 () Bool)

(declare-fun e!657707 () Bool)

(assert (=> b!1031873 (= e!657707 e!657704)))

(declare-fun res!463660 () Bool)

(assert (=> b!1031873 (=> (not res!463660) (not e!657704))))

(declare-fun lt!356214 () Bool)

(assert (=> b!1031873 (= res!463660 (not lt!356214))))

(declare-fun b!1031874 () Bool)

(declare-fun res!463661 () Bool)

(declare-fun e!657709 () Bool)

(assert (=> b!1031874 (=> (not res!463661) (not e!657709))))

(assert (=> b!1031874 (= res!463661 (not call!71180))))

(declare-fun b!1031875 () Bool)

(declare-fun e!657705 () Bool)

(assert (=> b!1031875 (= e!657705 (not lt!356214))))

(declare-fun b!1031876 () Bool)

(declare-fun res!463664 () Bool)

(assert (=> b!1031876 (=> (not res!463664) (not e!657709))))

(assert (=> b!1031876 (= res!463664 (isEmpty!6459 (tail!1471 (tail!1471 s!10566))))))

(declare-fun b!1031877 () Bool)

(declare-fun e!657708 () Bool)

(assert (=> b!1031877 (= e!657708 e!657705)))

(declare-fun c!171223 () Bool)

(assert (=> b!1031877 (= c!171223 ((_ is EmptyLang!2861) (derivativeStep!754 lt!356083 (head!1909 s!10566))))))

(declare-fun b!1031878 () Bool)

(assert (=> b!1031878 (= e!657709 (= (head!1909 (tail!1471 s!10566)) (c!170950 (derivativeStep!754 lt!356083 (head!1909 s!10566)))))))

(declare-fun b!1031879 () Bool)

(declare-fun e!657706 () Bool)

(assert (=> b!1031879 (= e!657706 (matchR!1397 (derivativeStep!754 (derivativeStep!754 lt!356083 (head!1909 s!10566)) (head!1909 (tail!1471 s!10566))) (tail!1471 (tail!1471 s!10566))))))

(declare-fun d!295866 () Bool)

(assert (=> d!295866 e!657708))

(declare-fun c!171224 () Bool)

(assert (=> d!295866 (= c!171224 ((_ is EmptyExpr!2861) (derivativeStep!754 lt!356083 (head!1909 s!10566))))))

(assert (=> d!295866 (= lt!356214 e!657706)))

(declare-fun c!171222 () Bool)

(assert (=> d!295866 (= c!171222 (isEmpty!6459 (tail!1471 s!10566)))))

(assert (=> d!295866 (validRegex!1330 (derivativeStep!754 lt!356083 (head!1909 s!10566)))))

(assert (=> d!295866 (= (matchR!1397 (derivativeStep!754 lt!356083 (head!1909 s!10566)) (tail!1471 s!10566)) lt!356214)))

(declare-fun b!1031880 () Bool)

(assert (=> b!1031880 (= e!657710 (not (= (head!1909 (tail!1471 s!10566)) (c!170950 (derivativeStep!754 lt!356083 (head!1909 s!10566))))))))

(declare-fun b!1031881 () Bool)

(assert (=> b!1031881 (= e!657708 (= lt!356214 call!71180))))

(declare-fun b!1031882 () Bool)

(declare-fun res!463665 () Bool)

(assert (=> b!1031882 (=> res!463665 e!657707)))

(assert (=> b!1031882 (= res!463665 e!657709)))

(declare-fun res!463666 () Bool)

(assert (=> b!1031882 (=> (not res!463666) (not e!657709))))

(assert (=> b!1031882 (= res!463666 lt!356214)))

(declare-fun bm!71175 () Bool)

(assert (=> bm!71175 (= call!71180 (isEmpty!6459 (tail!1471 s!10566)))))

(declare-fun b!1031883 () Bool)

(declare-fun res!463662 () Bool)

(assert (=> b!1031883 (=> res!463662 e!657707)))

(assert (=> b!1031883 (= res!463662 (not ((_ is ElementMatch!2861) (derivativeStep!754 lt!356083 (head!1909 s!10566)))))))

(assert (=> b!1031883 (= e!657705 e!657707)))

(declare-fun b!1031884 () Bool)

(assert (=> b!1031884 (= e!657706 (nullable!954 (derivativeStep!754 lt!356083 (head!1909 s!10566))))))

(assert (= (and d!295866 c!171222) b!1031884))

(assert (= (and d!295866 (not c!171222)) b!1031879))

(assert (= (and d!295866 c!171224) b!1031881))

(assert (= (and d!295866 (not c!171224)) b!1031877))

(assert (= (and b!1031877 c!171223) b!1031875))

(assert (= (and b!1031877 (not c!171223)) b!1031883))

(assert (= (and b!1031883 (not res!463662)) b!1031882))

(assert (= (and b!1031882 res!463666) b!1031874))

(assert (= (and b!1031874 res!463661) b!1031876))

(assert (= (and b!1031876 res!463664) b!1031878))

(assert (= (and b!1031882 (not res!463665)) b!1031873))

(assert (= (and b!1031873 res!463660) b!1031872))

(assert (= (and b!1031872 (not res!463667)) b!1031871))

(assert (= (and b!1031871 (not res!463663)) b!1031880))

(assert (= (or b!1031881 b!1031872 b!1031874) bm!71175))

(assert (=> b!1031879 m!1204635))

(assert (=> b!1031879 m!1204891))

(assert (=> b!1031879 m!1204785))

(assert (=> b!1031879 m!1204891))

(declare-fun m!1205223 () Bool)

(assert (=> b!1031879 m!1205223))

(assert (=> b!1031879 m!1204635))

(assert (=> b!1031879 m!1204895))

(assert (=> b!1031879 m!1205223))

(assert (=> b!1031879 m!1204895))

(declare-fun m!1205225 () Bool)

(assert (=> b!1031879 m!1205225))

(assert (=> b!1031880 m!1204635))

(assert (=> b!1031880 m!1204891))

(assert (=> b!1031876 m!1204635))

(assert (=> b!1031876 m!1204895))

(assert (=> b!1031876 m!1204895))

(assert (=> b!1031876 m!1204899))

(assert (=> b!1031871 m!1204635))

(assert (=> b!1031871 m!1204895))

(assert (=> b!1031871 m!1204895))

(assert (=> b!1031871 m!1204899))

(assert (=> b!1031878 m!1204635))

(assert (=> b!1031878 m!1204891))

(assert (=> b!1031884 m!1204785))

(declare-fun m!1205227 () Bool)

(assert (=> b!1031884 m!1205227))

(assert (=> d!295866 m!1204635))

(assert (=> d!295866 m!1204639))

(assert (=> d!295866 m!1204785))

(declare-fun m!1205229 () Bool)

(assert (=> d!295866 m!1205229))

(assert (=> bm!71175 m!1204635))

(assert (=> bm!71175 m!1204639))

(assert (=> b!1031291 d!295866))

(declare-fun call!71182 () Regex!2861)

(declare-fun e!657722 () Regex!2861)

(declare-fun b!1031899 () Bool)

(declare-fun call!71184 () Regex!2861)

(assert (=> b!1031899 (= e!657722 (Union!2861 (Concat!4694 call!71182 (regTwo!6234 lt!356083)) call!71184))))

(declare-fun b!1031900 () Bool)

(declare-fun c!171232 () Bool)

(assert (=> b!1031900 (= c!171232 (nullable!954 (regOne!6234 lt!356083)))))

(declare-fun e!657721 () Regex!2861)

(assert (=> b!1031900 (= e!657721 e!657722)))

(declare-fun b!1031901 () Bool)

(declare-fun e!657718 () Regex!2861)

(declare-fun e!657719 () Regex!2861)

(assert (=> b!1031901 (= e!657718 e!657719)))

(declare-fun c!171229 () Bool)

(assert (=> b!1031901 (= c!171229 ((_ is ElementMatch!2861) lt!356083))))

(declare-fun c!171230 () Bool)

(declare-fun call!71183 () Regex!2861)

(declare-fun c!171228 () Bool)

(declare-fun bm!71177 () Bool)

(assert (=> bm!71177 (= call!71183 (derivativeStep!754 (ite c!171230 (regOne!6235 lt!356083) (ite c!171228 (reg!3190 lt!356083) (ite c!171232 (regTwo!6234 lt!356083) (regOne!6234 lt!356083)))) (head!1909 s!10566)))))

(declare-fun b!1031902 () Bool)

(assert (=> b!1031902 (= e!657718 EmptyLang!2861)))

(declare-fun b!1031903 () Bool)

(declare-fun e!657720 () Regex!2861)

(assert (=> b!1031903 (= e!657720 (Union!2861 call!71183 call!71182))))

(declare-fun b!1031904 () Bool)

(assert (=> b!1031904 (= e!657722 (Union!2861 (Concat!4694 call!71184 (regTwo!6234 lt!356083)) EmptyLang!2861))))

(declare-fun b!1031905 () Bool)

(assert (=> b!1031905 (= e!657719 (ite (= (head!1909 s!10566) (c!170950 lt!356083)) EmptyExpr!2861 EmptyLang!2861))))

(declare-fun b!1031906 () Bool)

(assert (=> b!1031906 (= e!657720 e!657721)))

(assert (=> b!1031906 (= c!171228 ((_ is Star!2861) lt!356083))))

(declare-fun b!1031907 () Bool)

(declare-fun call!71185 () Regex!2861)

(assert (=> b!1031907 (= e!657721 (Concat!4694 call!71185 lt!356083))))

(declare-fun bm!71179 () Bool)

(assert (=> bm!71179 (= call!71184 call!71185)))

(declare-fun d!295870 () Bool)

(declare-fun lt!356216 () Regex!2861)

(assert (=> d!295870 (validRegex!1330 lt!356216)))

(assert (=> d!295870 (= lt!356216 e!657718)))

(declare-fun c!171231 () Bool)

(assert (=> d!295870 (= c!171231 (or ((_ is EmptyExpr!2861) lt!356083) ((_ is EmptyLang!2861) lt!356083)))))

(assert (=> d!295870 (validRegex!1330 lt!356083)))

(assert (=> d!295870 (= (derivativeStep!754 lt!356083 (head!1909 s!10566)) lt!356216)))

(declare-fun bm!71178 () Bool)

(assert (=> bm!71178 (= call!71185 call!71183)))

(declare-fun b!1031908 () Bool)

(assert (=> b!1031908 (= c!171230 ((_ is Union!2861) lt!356083))))

(assert (=> b!1031908 (= e!657719 e!657720)))

(declare-fun bm!71180 () Bool)

(assert (=> bm!71180 (= call!71182 (derivativeStep!754 (ite c!171230 (regTwo!6235 lt!356083) (regOne!6234 lt!356083)) (head!1909 s!10566)))))

(assert (= (and d!295870 c!171231) b!1031902))

(assert (= (and d!295870 (not c!171231)) b!1031901))

(assert (= (and b!1031901 c!171229) b!1031905))

(assert (= (and b!1031901 (not c!171229)) b!1031908))

(assert (= (and b!1031908 c!171230) b!1031903))

(assert (= (and b!1031908 (not c!171230)) b!1031906))

(assert (= (and b!1031906 c!171228) b!1031907))

(assert (= (and b!1031906 (not c!171228)) b!1031900))

(assert (= (and b!1031900 c!171232) b!1031899))

(assert (= (and b!1031900 (not c!171232)) b!1031904))

(assert (= (or b!1031899 b!1031904) bm!71179))

(assert (= (or b!1031907 bm!71179) bm!71178))

(assert (= (or b!1031903 bm!71178) bm!71177))

(assert (= (or b!1031903 b!1031899) bm!71180))

(declare-fun m!1205239 () Bool)

(assert (=> b!1031900 m!1205239))

(assert (=> bm!71177 m!1204631))

(declare-fun m!1205241 () Bool)

(assert (=> bm!71177 m!1205241))

(declare-fun m!1205243 () Bool)

(assert (=> d!295870 m!1205243))

(assert (=> d!295870 m!1204791))

(assert (=> bm!71180 m!1204631))

(declare-fun m!1205245 () Bool)

(assert (=> bm!71180 m!1205245))

(assert (=> b!1031291 d!295870))

(assert (=> b!1031291 d!295720))

(assert (=> b!1031291 d!295696))

(declare-fun b!1031920 () Bool)

(declare-fun e!657736 () Bool)

(declare-fun e!657734 () Bool)

(assert (=> b!1031920 (= e!657736 e!657734)))

(declare-fun res!463681 () Bool)

(assert (=> b!1031920 (=> (not res!463681) (not e!657734))))

(declare-fun call!71189 () Bool)

(assert (=> b!1031920 (= res!463681 call!71189)))

(declare-fun b!1031921 () Bool)

(declare-fun e!657731 () Bool)

(declare-fun e!657735 () Bool)

(assert (=> b!1031921 (= e!657731 e!657735)))

(declare-fun res!463680 () Bool)

(assert (=> b!1031921 (= res!463680 (not (nullable!954 (reg!3190 (ite c!171075 (reg!3190 (regOne!6234 r!15766)) (ite c!171076 (regTwo!6235 (regOne!6234 r!15766)) (regTwo!6234 (regOne!6234 r!15766))))))))))

(assert (=> b!1031921 (=> (not res!463680) (not e!657735))))

(declare-fun b!1031922 () Bool)

(declare-fun e!657732 () Bool)

(declare-fun call!71190 () Bool)

(assert (=> b!1031922 (= e!657732 call!71190)))

(declare-fun d!295876 () Bool)

(declare-fun res!463683 () Bool)

(declare-fun e!657730 () Bool)

(assert (=> d!295876 (=> res!463683 e!657730)))

(assert (=> d!295876 (= res!463683 ((_ is ElementMatch!2861) (ite c!171075 (reg!3190 (regOne!6234 r!15766)) (ite c!171076 (regTwo!6235 (regOne!6234 r!15766)) (regTwo!6234 (regOne!6234 r!15766))))))))

(assert (=> d!295876 (= (validRegex!1330 (ite c!171075 (reg!3190 (regOne!6234 r!15766)) (ite c!171076 (regTwo!6235 (regOne!6234 r!15766)) (regTwo!6234 (regOne!6234 r!15766))))) e!657730)))

(declare-fun b!1031923 () Bool)

(declare-fun res!463684 () Bool)

(assert (=> b!1031923 (=> res!463684 e!657736)))

(assert (=> b!1031923 (= res!463684 (not ((_ is Concat!4694) (ite c!171075 (reg!3190 (regOne!6234 r!15766)) (ite c!171076 (regTwo!6235 (regOne!6234 r!15766)) (regTwo!6234 (regOne!6234 r!15766)))))))))

(declare-fun e!657733 () Bool)

(assert (=> b!1031923 (= e!657733 e!657736)))

(declare-fun c!171238 () Bool)

(declare-fun bm!71183 () Bool)

(assert (=> bm!71183 (= call!71189 (validRegex!1330 (ite c!171238 (regOne!6235 (ite c!171075 (reg!3190 (regOne!6234 r!15766)) (ite c!171076 (regTwo!6235 (regOne!6234 r!15766)) (regTwo!6234 (regOne!6234 r!15766))))) (regOne!6234 (ite c!171075 (reg!3190 (regOne!6234 r!15766)) (ite c!171076 (regTwo!6235 (regOne!6234 r!15766)) (regTwo!6234 (regOne!6234 r!15766))))))))))

(declare-fun b!1031924 () Bool)

(assert (=> b!1031924 (= e!657734 call!71190)))

(declare-fun b!1031925 () Bool)

(assert (=> b!1031925 (= e!657730 e!657731)))

(declare-fun c!171237 () Bool)

(assert (=> b!1031925 (= c!171237 ((_ is Star!2861) (ite c!171075 (reg!3190 (regOne!6234 r!15766)) (ite c!171076 (regTwo!6235 (regOne!6234 r!15766)) (regTwo!6234 (regOne!6234 r!15766))))))))

(declare-fun bm!71184 () Bool)

(declare-fun call!71188 () Bool)

(assert (=> bm!71184 (= call!71190 call!71188)))

(declare-fun bm!71185 () Bool)

(assert (=> bm!71185 (= call!71188 (validRegex!1330 (ite c!171237 (reg!3190 (ite c!171075 (reg!3190 (regOne!6234 r!15766)) (ite c!171076 (regTwo!6235 (regOne!6234 r!15766)) (regTwo!6234 (regOne!6234 r!15766))))) (ite c!171238 (regTwo!6235 (ite c!171075 (reg!3190 (regOne!6234 r!15766)) (ite c!171076 (regTwo!6235 (regOne!6234 r!15766)) (regTwo!6234 (regOne!6234 r!15766))))) (regTwo!6234 (ite c!171075 (reg!3190 (regOne!6234 r!15766)) (ite c!171076 (regTwo!6235 (regOne!6234 r!15766)) (regTwo!6234 (regOne!6234 r!15766)))))))))))

(declare-fun b!1031926 () Bool)

(declare-fun res!463682 () Bool)

(assert (=> b!1031926 (=> (not res!463682) (not e!657732))))

(assert (=> b!1031926 (= res!463682 call!71189)))

(assert (=> b!1031926 (= e!657733 e!657732)))

(declare-fun b!1031927 () Bool)

(assert (=> b!1031927 (= e!657735 call!71188)))

(declare-fun b!1031928 () Bool)

(assert (=> b!1031928 (= e!657731 e!657733)))

(assert (=> b!1031928 (= c!171238 ((_ is Union!2861) (ite c!171075 (reg!3190 (regOne!6234 r!15766)) (ite c!171076 (regTwo!6235 (regOne!6234 r!15766)) (regTwo!6234 (regOne!6234 r!15766))))))))

(assert (= (and d!295876 (not res!463683)) b!1031925))

(assert (= (and b!1031925 c!171237) b!1031921))

(assert (= (and b!1031925 (not c!171237)) b!1031928))

(assert (= (and b!1031921 res!463680) b!1031927))

(assert (= (and b!1031928 c!171238) b!1031926))

(assert (= (and b!1031928 (not c!171238)) b!1031923))

(assert (= (and b!1031926 res!463682) b!1031922))

(assert (= (and b!1031923 (not res!463684)) b!1031920))

(assert (= (and b!1031920 res!463681) b!1031924))

(assert (= (or b!1031922 b!1031924) bm!71184))

(assert (= (or b!1031926 b!1031920) bm!71183))

(assert (= (or b!1031927 bm!71184) bm!71185))

(declare-fun m!1205247 () Bool)

(assert (=> b!1031921 m!1205247))

(declare-fun m!1205249 () Bool)

(assert (=> bm!71183 m!1205249))

(declare-fun m!1205251 () Bool)

(assert (=> bm!71185 m!1205251))

(assert (=> bm!71084 d!295876))

(assert (=> b!1031019 d!295720))

(declare-fun bm!71186 () Bool)

(declare-fun call!71193 () Regex!2861)

(declare-fun call!71194 () Regex!2861)

(assert (=> bm!71186 (= call!71193 call!71194)))

(declare-fun e!657742 () Regex!2861)

(declare-fun b!1031929 () Bool)

(assert (=> b!1031929 (= e!657742 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766)))))))

(declare-fun bm!71187 () Bool)

(declare-fun call!71195 () Regex!2861)

(declare-fun call!71192 () Regex!2861)

(assert (=> bm!71187 (= call!71195 call!71192)))

(declare-fun d!295878 () Bool)

(declare-fun e!657737 () Bool)

(assert (=> d!295878 e!657737))

(declare-fun res!463685 () Bool)

(assert (=> d!295878 (=> (not res!463685) (not e!657737))))

(declare-fun lt!356217 () Regex!2861)

(assert (=> d!295878 (= res!463685 (validRegex!1330 lt!356217))))

(declare-fun e!657741 () Regex!2861)

(assert (=> d!295878 (= lt!356217 e!657741)))

(declare-fun c!171243 () Bool)

(assert (=> d!295878 (= c!171243 (and ((_ is Concat!4694) (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))) ((_ is EmptyExpr!2861) (regOne!6234 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))))))))

(assert (=> d!295878 (validRegex!1330 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766)))))))

(assert (=> d!295878 (= (removeUselessConcat!418 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))) lt!356217)))

(declare-fun b!1031930 () Bool)

(assert (=> b!1031930 (= e!657737 (= (nullable!954 lt!356217) (nullable!954 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766)))))))))

(declare-fun b!1031931 () Bool)

(declare-fun c!171241 () Bool)

(assert (=> b!1031931 (= c!171241 ((_ is Concat!4694) (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))))))

(declare-fun e!657740 () Regex!2861)

(declare-fun e!657738 () Regex!2861)

(assert (=> b!1031931 (= e!657740 e!657738)))

(declare-fun bm!71188 () Bool)

(assert (=> bm!71188 (= call!71194 (removeUselessConcat!418 (ite c!171243 (regTwo!6234 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))) (ite c!171241 (regOne!6234 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))) (regOne!6235 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766)))))))))))

(declare-fun b!1031932 () Bool)

(assert (=> b!1031932 (= e!657741 e!657740)))

(declare-fun c!171239 () Bool)

(assert (=> b!1031932 (= c!171239 (and ((_ is Concat!4694) (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))) ((_ is EmptyExpr!2861) (regTwo!6234 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))))))))

(declare-fun b!1031933 () Bool)

(assert (=> b!1031933 (= e!657741 call!71194)))

(declare-fun b!1031934 () Bool)

(assert (=> b!1031934 (= e!657738 (Concat!4694 call!71193 call!71192))))

(declare-fun b!1031935 () Bool)

(declare-fun e!657739 () Regex!2861)

(assert (=> b!1031935 (= e!657739 (Union!2861 call!71193 call!71195))))

(declare-fun b!1031936 () Bool)

(declare-fun call!71191 () Regex!2861)

(assert (=> b!1031936 (= e!657740 call!71191)))

(declare-fun bm!71189 () Bool)

(declare-fun c!171240 () Bool)

(assert (=> bm!71189 (= call!71191 (removeUselessConcat!418 (ite c!171239 (regOne!6234 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))) (ite c!171241 (regTwo!6234 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))) (ite c!171240 (regTwo!6235 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))) (reg!3190 (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))))))))))

(declare-fun b!1031937 () Bool)

(assert (=> b!1031937 (= e!657738 e!657739)))

(assert (=> b!1031937 (= c!171240 ((_ is Union!2861) (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))))))

(declare-fun b!1031938 () Bool)

(assert (=> b!1031938 (= e!657742 (Star!2861 call!71195))))

(declare-fun bm!71190 () Bool)

(assert (=> bm!71190 (= call!71192 call!71191)))

(declare-fun c!171242 () Bool)

(declare-fun b!1031939 () Bool)

(assert (=> b!1031939 (= c!171242 ((_ is Star!2861) (ite c!171074 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171072 (regOne!6234 (regOne!6234 r!15766)) (regOne!6235 (regOne!6234 r!15766))))))))

(assert (=> b!1031939 (= e!657739 e!657742)))

(assert (= (and d!295878 c!171243) b!1031933))

(assert (= (and d!295878 (not c!171243)) b!1031932))

(assert (= (and b!1031932 c!171239) b!1031936))

(assert (= (and b!1031932 (not c!171239)) b!1031931))

(assert (= (and b!1031931 c!171241) b!1031934))

(assert (= (and b!1031931 (not c!171241)) b!1031937))

(assert (= (and b!1031937 c!171240) b!1031935))

(assert (= (and b!1031937 (not c!171240)) b!1031939))

(assert (= (and b!1031939 c!171242) b!1031938))

(assert (= (and b!1031939 (not c!171242)) b!1031929))

(assert (= (or b!1031935 b!1031938) bm!71187))

(assert (= (or b!1031934 bm!71187) bm!71190))

(assert (= (or b!1031934 b!1031935) bm!71186))

(assert (= (or b!1031936 bm!71190) bm!71189))

(assert (= (or b!1031933 bm!71186) bm!71188))

(assert (= (and d!295878 res!463685) b!1031930))

(declare-fun m!1205253 () Bool)

(assert (=> d!295878 m!1205253))

(declare-fun m!1205255 () Bool)

(assert (=> d!295878 m!1205255))

(declare-fun m!1205257 () Bool)

(assert (=> b!1031930 m!1205257))

(declare-fun m!1205259 () Bool)

(assert (=> b!1031930 m!1205259))

(declare-fun m!1205261 () Bool)

(assert (=> bm!71188 m!1205261))

(declare-fun m!1205263 () Bool)

(assert (=> bm!71189 m!1205263))

(assert (=> bm!71079 d!295878))

(declare-fun bs!247382 () Bool)

(declare-fun b!1031949 () Bool)

(assert (= bs!247382 (and b!1031949 b!1030774)))

(declare-fun lambda!37036 () Int)

(assert (=> bs!247382 (not (= lambda!37036 lambda!36985))))

(declare-fun bs!247384 () Bool)

(assert (= bs!247384 (and b!1031949 d!295840)))

(assert (=> bs!247384 (not (= lambda!37036 lambda!37032))))

(declare-fun bs!247386 () Bool)

(assert (= bs!247386 (and b!1031949 d!295634)))

(assert (=> bs!247386 (not (= lambda!37036 lambda!37010))))

(declare-fun bs!247388 () Bool)

(assert (= bs!247388 (and b!1031949 d!295702)))

(assert (=> bs!247388 (not (= lambda!37036 lambda!37019))))

(declare-fun bs!247389 () Bool)

(assert (= bs!247389 (and b!1031949 b!1030890)))

(assert (=> bs!247389 (not (= lambda!37036 lambda!37001))))

(declare-fun bs!247391 () Bool)

(assert (= bs!247391 (and b!1031949 b!1030899)))

(assert (=> bs!247391 (= (and (= (reg!3190 (regTwo!6235 r!15766)) (reg!3190 r!15766)) (= (regTwo!6235 r!15766) r!15766)) (= lambda!37036 lambda!37000))))

(assert (=> bs!247384 (not (= lambda!37036 lambda!37030))))

(assert (=> bs!247382 (not (= lambda!37036 lambda!36986))))

(declare-fun bs!247392 () Bool)

(assert (= bs!247392 (and b!1031949 d!295636)))

(assert (=> bs!247392 (not (= lambda!37036 lambda!37015))))

(assert (=> bs!247392 (not (= lambda!37036 lambda!37016))))

(assert (=> b!1031949 true))

(assert (=> b!1031949 true))

(declare-fun bs!247393 () Bool)

(declare-fun b!1031940 () Bool)

(assert (= bs!247393 (and b!1031940 b!1030774)))

(declare-fun lambda!37037 () Int)

(assert (=> bs!247393 (not (= lambda!37037 lambda!36985))))

(declare-fun bs!247394 () Bool)

(assert (= bs!247394 (and b!1031940 d!295634)))

(assert (=> bs!247394 (not (= lambda!37037 lambda!37010))))

(declare-fun bs!247395 () Bool)

(assert (= bs!247395 (and b!1031940 d!295702)))

(assert (=> bs!247395 (not (= lambda!37037 lambda!37019))))

(declare-fun bs!247397 () Bool)

(assert (= bs!247397 (and b!1031940 b!1030890)))

(assert (=> bs!247397 (= (and (= (regOne!6234 (regTwo!6235 r!15766)) (regOne!6234 r!15766)) (= (regTwo!6234 (regTwo!6235 r!15766)) (regTwo!6234 r!15766))) (= lambda!37037 lambda!37001))))

(declare-fun bs!247399 () Bool)

(assert (= bs!247399 (and b!1031940 b!1030899)))

(assert (=> bs!247399 (not (= lambda!37037 lambda!37000))))

(declare-fun bs!247400 () Bool)

(assert (= bs!247400 (and b!1031940 b!1031949)))

(assert (=> bs!247400 (not (= lambda!37037 lambda!37036))))

(declare-fun bs!247401 () Bool)

(assert (= bs!247401 (and b!1031940 d!295840)))

(assert (=> bs!247401 (= (and (= (regOne!6234 (regTwo!6235 r!15766)) (regOne!6234 r!15766)) (= (regTwo!6234 (regTwo!6235 r!15766)) EmptyExpr!2861)) (= lambda!37037 lambda!37032))))

(assert (=> bs!247401 (not (= lambda!37037 lambda!37030))))

(assert (=> bs!247393 (= (and (= (regOne!6234 (regTwo!6235 r!15766)) (regOne!6234 r!15766)) (= (regTwo!6234 (regTwo!6235 r!15766)) EmptyExpr!2861)) (= lambda!37037 lambda!36986))))

(declare-fun bs!247402 () Bool)

(assert (= bs!247402 (and b!1031940 d!295636)))

(assert (=> bs!247402 (not (= lambda!37037 lambda!37015))))

(assert (=> bs!247402 (= (and (= (regOne!6234 (regTwo!6235 r!15766)) (regOne!6234 r!15766)) (= (regTwo!6234 (regTwo!6235 r!15766)) EmptyExpr!2861)) (= lambda!37037 lambda!37016))))

(assert (=> b!1031940 true))

(assert (=> b!1031940 true))

(declare-fun bm!71191 () Bool)

(declare-fun call!71197 () Bool)

(declare-fun c!171246 () Bool)

(assert (=> bm!71191 (= call!71197 (Exists!588 (ite c!171246 lambda!37036 lambda!37037)))))

(declare-fun b!1031941 () Bool)

(declare-fun e!657745 () Bool)

(declare-fun call!71196 () Bool)

(assert (=> b!1031941 (= e!657745 call!71196)))

(declare-fun b!1031942 () Bool)

(declare-fun e!657748 () Bool)

(declare-fun e!657743 () Bool)

(assert (=> b!1031942 (= e!657748 e!657743)))

(assert (=> b!1031942 (= c!171246 ((_ is Star!2861) (regTwo!6235 r!15766)))))

(declare-fun b!1031943 () Bool)

(declare-fun e!657747 () Bool)

(assert (=> b!1031943 (= e!657747 (matchRSpec!660 (regTwo!6235 (regTwo!6235 r!15766)) s!10566))))

(declare-fun bm!71192 () Bool)

(assert (=> bm!71192 (= call!71196 (isEmpty!6459 s!10566))))

(declare-fun b!1031944 () Bool)

(declare-fun e!657744 () Bool)

(assert (=> b!1031944 (= e!657744 (= s!10566 (Cons!10075 (c!170950 (regTwo!6235 r!15766)) Nil!10075)))))

(declare-fun b!1031945 () Bool)

(declare-fun c!171247 () Bool)

(assert (=> b!1031945 (= c!171247 ((_ is ElementMatch!2861) (regTwo!6235 r!15766)))))

(declare-fun e!657746 () Bool)

(assert (=> b!1031945 (= e!657746 e!657744)))

(declare-fun b!1031946 () Bool)

(assert (=> b!1031946 (= e!657748 e!657747)))

(declare-fun res!463687 () Bool)

(assert (=> b!1031946 (= res!463687 (matchRSpec!660 (regOne!6235 (regTwo!6235 r!15766)) s!10566))))

(assert (=> b!1031946 (=> res!463687 e!657747)))

(assert (=> b!1031940 (= e!657743 call!71197)))

(declare-fun d!295880 () Bool)

(declare-fun c!171245 () Bool)

(assert (=> d!295880 (= c!171245 ((_ is EmptyExpr!2861) (regTwo!6235 r!15766)))))

(assert (=> d!295880 (= (matchRSpec!660 (regTwo!6235 r!15766) s!10566) e!657745)))

(declare-fun b!1031947 () Bool)

(assert (=> b!1031947 (= e!657745 e!657746)))

(declare-fun res!463686 () Bool)

(assert (=> b!1031947 (= res!463686 (not ((_ is EmptyLang!2861) (regTwo!6235 r!15766))))))

(assert (=> b!1031947 (=> (not res!463686) (not e!657746))))

(declare-fun b!1031948 () Bool)

(declare-fun res!463688 () Bool)

(declare-fun e!657749 () Bool)

(assert (=> b!1031948 (=> res!463688 e!657749)))

(assert (=> b!1031948 (= res!463688 call!71196)))

(assert (=> b!1031948 (= e!657743 e!657749)))

(assert (=> b!1031949 (= e!657749 call!71197)))

(declare-fun b!1031950 () Bool)

(declare-fun c!171244 () Bool)

(assert (=> b!1031950 (= c!171244 ((_ is Union!2861) (regTwo!6235 r!15766)))))

(assert (=> b!1031950 (= e!657744 e!657748)))

(assert (= (and d!295880 c!171245) b!1031941))

(assert (= (and d!295880 (not c!171245)) b!1031947))

(assert (= (and b!1031947 res!463686) b!1031945))

(assert (= (and b!1031945 c!171247) b!1031944))

(assert (= (and b!1031945 (not c!171247)) b!1031950))

(assert (= (and b!1031950 c!171244) b!1031946))

(assert (= (and b!1031950 (not c!171244)) b!1031942))

(assert (= (and b!1031946 (not res!463687)) b!1031943))

(assert (= (and b!1031942 c!171246) b!1031948))

(assert (= (and b!1031942 (not c!171246)) b!1031940))

(assert (= (and b!1031948 (not res!463688)) b!1031949))

(assert (= (or b!1031949 b!1031940) bm!71191))

(assert (= (or b!1031941 b!1031948) bm!71192))

(declare-fun m!1205297 () Bool)

(assert (=> bm!71191 m!1205297))

(declare-fun m!1205299 () Bool)

(assert (=> b!1031943 m!1205299))

(assert (=> bm!71192 m!1204543))

(declare-fun m!1205301 () Bool)

(assert (=> b!1031946 m!1205301))

(assert (=> b!1030893 d!295880))

(assert (=> d!295598 d!295630))

(assert (=> d!295598 d!295642))

(declare-fun d!295896 () Bool)

(assert (=> d!295896 (= (nullable!954 lt!356158) (nullableFct!218 lt!356158))))

(declare-fun bs!247404 () Bool)

(assert (= bs!247404 d!295896))

(declare-fun m!1205303 () Bool)

(assert (=> bs!247404 m!1205303))

(assert (=> b!1031334 d!295896))

(declare-fun d!295898 () Bool)

(assert (=> d!295898 (= (nullable!954 (regOne!6234 r!15766)) (nullableFct!218 (regOne!6234 r!15766)))))

(declare-fun bs!247405 () Bool)

(assert (= bs!247405 d!295898))

(declare-fun m!1205305 () Bool)

(assert (=> bs!247405 m!1205305))

(assert (=> b!1031334 d!295898))

(assert (=> d!295638 d!295614))

(declare-fun d!295900 () Bool)

(assert (=> d!295900 (= (nullable!954 (reg!3190 r!15766)) (nullableFct!218 (reg!3190 r!15766)))))

(declare-fun bs!247406 () Bool)

(assert (= bs!247406 d!295900))

(declare-fun m!1205307 () Bool)

(assert (=> bs!247406 m!1205307))

(assert (=> b!1031249 d!295900))

(assert (=> bm!71066 d!295630))

(declare-fun d!295902 () Bool)

(declare-fun e!657766 () Bool)

(assert (=> d!295902 e!657766))

(declare-fun res!463705 () Bool)

(assert (=> d!295902 (=> (not res!463705) (not e!657766))))

(declare-fun lt!356220 () List!10091)

(assert (=> d!295902 (= res!463705 (= (content!1448 lt!356220) ((_ map or) (content!1448 (_1!6574 (get!3577 lt!356141))) (content!1448 (_2!6574 (get!3577 lt!356141))))))))

(declare-fun e!657767 () List!10091)

(assert (=> d!295902 (= lt!356220 e!657767)))

(declare-fun c!171254 () Bool)

(assert (=> d!295902 (= c!171254 ((_ is Nil!10075) (_1!6574 (get!3577 lt!356141))))))

(assert (=> d!295902 (= (++!2769 (_1!6574 (get!3577 lt!356141)) (_2!6574 (get!3577 lt!356141))) lt!356220)))

(declare-fun b!1031978 () Bool)

(assert (=> b!1031978 (= e!657767 (_2!6574 (get!3577 lt!356141)))))

(declare-fun b!1031981 () Bool)

(assert (=> b!1031981 (= e!657766 (or (not (= (_2!6574 (get!3577 lt!356141)) Nil!10075)) (= lt!356220 (_1!6574 (get!3577 lt!356141)))))))

(declare-fun b!1031979 () Bool)

(assert (=> b!1031979 (= e!657767 (Cons!10075 (h!15476 (_1!6574 (get!3577 lt!356141))) (++!2769 (t!101137 (_1!6574 (get!3577 lt!356141))) (_2!6574 (get!3577 lt!356141)))))))

(declare-fun b!1031980 () Bool)

(declare-fun res!463704 () Bool)

(assert (=> b!1031980 (=> (not res!463704) (not e!657766))))

(assert (=> b!1031980 (= res!463704 (= (size!7994 lt!356220) (+ (size!7994 (_1!6574 (get!3577 lt!356141))) (size!7994 (_2!6574 (get!3577 lt!356141))))))))

(assert (= (and d!295902 c!171254) b!1031978))

(assert (= (and d!295902 (not c!171254)) b!1031979))

(assert (= (and d!295902 res!463705) b!1031980))

(assert (= (and b!1031980 res!463704) b!1031981))

(declare-fun m!1205319 () Bool)

(assert (=> d!295902 m!1205319))

(declare-fun m!1205321 () Bool)

(assert (=> d!295902 m!1205321))

(declare-fun m!1205323 () Bool)

(assert (=> d!295902 m!1205323))

(declare-fun m!1205327 () Bool)

(assert (=> b!1031979 m!1205327))

(declare-fun m!1205329 () Bool)

(assert (=> b!1031980 m!1205329))

(declare-fun m!1205331 () Bool)

(assert (=> b!1031980 m!1205331))

(declare-fun m!1205333 () Bool)

(assert (=> b!1031980 m!1205333))

(assert (=> b!1031208 d!295902))

(assert (=> b!1031208 d!295816))

(assert (=> b!1031012 d!295692))

(assert (=> b!1031012 d!295696))

(assert (=> b!1031310 d!295898))

(declare-fun d!295906 () Bool)

(assert (=> d!295906 true))

(assert (=> d!295906 true))

(declare-fun res!463706 () Bool)

(assert (=> d!295906 (= (choose!6568 lambda!36986) res!463706)))

(assert (=> d!295632 d!295906))

(declare-fun bs!247408 () Bool)

(declare-fun b!1031991 () Bool)

(assert (= bs!247408 (and b!1031991 b!1030774)))

(declare-fun lambda!37038 () Int)

(assert (=> bs!247408 (not (= lambda!37038 lambda!36985))))

(declare-fun bs!247409 () Bool)

(assert (= bs!247409 (and b!1031991 d!295634)))

(assert (=> bs!247409 (not (= lambda!37038 lambda!37010))))

(declare-fun bs!247410 () Bool)

(assert (= bs!247410 (and b!1031991 d!295702)))

(assert (=> bs!247410 (not (= lambda!37038 lambda!37019))))

(declare-fun bs!247411 () Bool)

(assert (= bs!247411 (and b!1031991 b!1030890)))

(assert (=> bs!247411 (not (= lambda!37038 lambda!37001))))

(declare-fun bs!247412 () Bool)

(assert (= bs!247412 (and b!1031991 b!1031949)))

(assert (=> bs!247412 (= (and (= (reg!3190 (regOne!6235 r!15766)) (reg!3190 (regTwo!6235 r!15766))) (= (regOne!6235 r!15766) (regTwo!6235 r!15766))) (= lambda!37038 lambda!37036))))

(declare-fun bs!247413 () Bool)

(assert (= bs!247413 (and b!1031991 d!295840)))

(assert (=> bs!247413 (not (= lambda!37038 lambda!37032))))

(assert (=> bs!247413 (not (= lambda!37038 lambda!37030))))

(assert (=> bs!247408 (not (= lambda!37038 lambda!36986))))

(declare-fun bs!247414 () Bool)

(assert (= bs!247414 (and b!1031991 b!1030899)))

(assert (=> bs!247414 (= (and (= (reg!3190 (regOne!6235 r!15766)) (reg!3190 r!15766)) (= (regOne!6235 r!15766) r!15766)) (= lambda!37038 lambda!37000))))

(declare-fun bs!247415 () Bool)

(assert (= bs!247415 (and b!1031991 b!1031940)))

(assert (=> bs!247415 (not (= lambda!37038 lambda!37037))))

(declare-fun bs!247416 () Bool)

(assert (= bs!247416 (and b!1031991 d!295636)))

(assert (=> bs!247416 (not (= lambda!37038 lambda!37015))))

(assert (=> bs!247416 (not (= lambda!37038 lambda!37016))))

(assert (=> b!1031991 true))

(assert (=> b!1031991 true))

(declare-fun bs!247417 () Bool)

(declare-fun b!1031982 () Bool)

(assert (= bs!247417 (and b!1031982 b!1030774)))

(declare-fun lambda!37039 () Int)

(assert (=> bs!247417 (not (= lambda!37039 lambda!36985))))

(declare-fun bs!247418 () Bool)

(assert (= bs!247418 (and b!1031982 d!295634)))

(assert (=> bs!247418 (not (= lambda!37039 lambda!37010))))

(declare-fun bs!247419 () Bool)

(assert (= bs!247419 (and b!1031982 d!295702)))

(assert (=> bs!247419 (not (= lambda!37039 lambda!37019))))

(declare-fun bs!247420 () Bool)

(assert (= bs!247420 (and b!1031982 b!1030890)))

(assert (=> bs!247420 (= (and (= (regOne!6234 (regOne!6235 r!15766)) (regOne!6234 r!15766)) (= (regTwo!6234 (regOne!6235 r!15766)) (regTwo!6234 r!15766))) (= lambda!37039 lambda!37001))))

(declare-fun bs!247421 () Bool)

(assert (= bs!247421 (and b!1031982 b!1031991)))

(assert (=> bs!247421 (not (= lambda!37039 lambda!37038))))

(declare-fun bs!247422 () Bool)

(assert (= bs!247422 (and b!1031982 b!1031949)))

(assert (=> bs!247422 (not (= lambda!37039 lambda!37036))))

(declare-fun bs!247423 () Bool)

(assert (= bs!247423 (and b!1031982 d!295840)))

(assert (=> bs!247423 (= (and (= (regOne!6234 (regOne!6235 r!15766)) (regOne!6234 r!15766)) (= (regTwo!6234 (regOne!6235 r!15766)) EmptyExpr!2861)) (= lambda!37039 lambda!37032))))

(assert (=> bs!247423 (not (= lambda!37039 lambda!37030))))

(assert (=> bs!247417 (= (and (= (regOne!6234 (regOne!6235 r!15766)) (regOne!6234 r!15766)) (= (regTwo!6234 (regOne!6235 r!15766)) EmptyExpr!2861)) (= lambda!37039 lambda!36986))))

(declare-fun bs!247424 () Bool)

(assert (= bs!247424 (and b!1031982 b!1030899)))

(assert (=> bs!247424 (not (= lambda!37039 lambda!37000))))

(declare-fun bs!247425 () Bool)

(assert (= bs!247425 (and b!1031982 b!1031940)))

(assert (=> bs!247425 (= (and (= (regOne!6234 (regOne!6235 r!15766)) (regOne!6234 (regTwo!6235 r!15766))) (= (regTwo!6234 (regOne!6235 r!15766)) (regTwo!6234 (regTwo!6235 r!15766)))) (= lambda!37039 lambda!37037))))

(declare-fun bs!247426 () Bool)

(assert (= bs!247426 (and b!1031982 d!295636)))

(assert (=> bs!247426 (not (= lambda!37039 lambda!37015))))

(assert (=> bs!247426 (= (and (= (regOne!6234 (regOne!6235 r!15766)) (regOne!6234 r!15766)) (= (regTwo!6234 (regOne!6235 r!15766)) EmptyExpr!2861)) (= lambda!37039 lambda!37016))))

(assert (=> b!1031982 true))

(assert (=> b!1031982 true))

(declare-fun c!171257 () Bool)

(declare-fun call!71203 () Bool)

(declare-fun bm!71197 () Bool)

(assert (=> bm!71197 (= call!71203 (Exists!588 (ite c!171257 lambda!37038 lambda!37039)))))

(declare-fun b!1031983 () Bool)

(declare-fun e!657770 () Bool)

(declare-fun call!71202 () Bool)

(assert (=> b!1031983 (= e!657770 call!71202)))

(declare-fun b!1031984 () Bool)

(declare-fun e!657773 () Bool)

(declare-fun e!657768 () Bool)

(assert (=> b!1031984 (= e!657773 e!657768)))

(assert (=> b!1031984 (= c!171257 ((_ is Star!2861) (regOne!6235 r!15766)))))

(declare-fun b!1031985 () Bool)

(declare-fun e!657772 () Bool)

(assert (=> b!1031985 (= e!657772 (matchRSpec!660 (regTwo!6235 (regOne!6235 r!15766)) s!10566))))

(declare-fun bm!71198 () Bool)

(assert (=> bm!71198 (= call!71202 (isEmpty!6459 s!10566))))

(declare-fun b!1031986 () Bool)

(declare-fun e!657769 () Bool)

(assert (=> b!1031986 (= e!657769 (= s!10566 (Cons!10075 (c!170950 (regOne!6235 r!15766)) Nil!10075)))))

(declare-fun b!1031987 () Bool)

(declare-fun c!171258 () Bool)

(assert (=> b!1031987 (= c!171258 ((_ is ElementMatch!2861) (regOne!6235 r!15766)))))

(declare-fun e!657771 () Bool)

(assert (=> b!1031987 (= e!657771 e!657769)))

(declare-fun b!1031988 () Bool)

(assert (=> b!1031988 (= e!657773 e!657772)))

(declare-fun res!463708 () Bool)

(assert (=> b!1031988 (= res!463708 (matchRSpec!660 (regOne!6235 (regOne!6235 r!15766)) s!10566))))

(assert (=> b!1031988 (=> res!463708 e!657772)))

(assert (=> b!1031982 (= e!657768 call!71203)))

(declare-fun d!295908 () Bool)

(declare-fun c!171256 () Bool)

(assert (=> d!295908 (= c!171256 ((_ is EmptyExpr!2861) (regOne!6235 r!15766)))))

(assert (=> d!295908 (= (matchRSpec!660 (regOne!6235 r!15766) s!10566) e!657770)))

(declare-fun b!1031989 () Bool)

(assert (=> b!1031989 (= e!657770 e!657771)))

(declare-fun res!463707 () Bool)

(assert (=> b!1031989 (= res!463707 (not ((_ is EmptyLang!2861) (regOne!6235 r!15766))))))

(assert (=> b!1031989 (=> (not res!463707) (not e!657771))))

(declare-fun b!1031990 () Bool)

(declare-fun res!463709 () Bool)

(declare-fun e!657774 () Bool)

(assert (=> b!1031990 (=> res!463709 e!657774)))

(assert (=> b!1031990 (= res!463709 call!71202)))

(assert (=> b!1031990 (= e!657768 e!657774)))

(assert (=> b!1031991 (= e!657774 call!71203)))

(declare-fun b!1031992 () Bool)

(declare-fun c!171255 () Bool)

(assert (=> b!1031992 (= c!171255 ((_ is Union!2861) (regOne!6235 r!15766)))))

(assert (=> b!1031992 (= e!657769 e!657773)))

(assert (= (and d!295908 c!171256) b!1031983))

(assert (= (and d!295908 (not c!171256)) b!1031989))

(assert (= (and b!1031989 res!463707) b!1031987))

(assert (= (and b!1031987 c!171258) b!1031986))

(assert (= (and b!1031987 (not c!171258)) b!1031992))

(assert (= (and b!1031992 c!171255) b!1031988))

(assert (= (and b!1031992 (not c!171255)) b!1031984))

(assert (= (and b!1031988 (not res!463708)) b!1031985))

(assert (= (and b!1031984 c!171257) b!1031990))

(assert (= (and b!1031984 (not c!171257)) b!1031982))

(assert (= (and b!1031990 (not res!463709)) b!1031991))

(assert (= (or b!1031991 b!1031982) bm!71197))

(assert (= (or b!1031983 b!1031990) bm!71198))

(declare-fun m!1205337 () Bool)

(assert (=> bm!71197 m!1205337))

(declare-fun m!1205339 () Bool)

(assert (=> b!1031985 m!1205339))

(assert (=> bm!71198 m!1204543))

(declare-fun m!1205341 () Bool)

(assert (=> b!1031988 m!1205341))

(assert (=> b!1030896 d!295908))

(assert (=> b!1031274 d!295776))

(assert (=> b!1031274 d!295684))

(declare-fun d!295912 () Bool)

(assert (not d!295912))

(assert (=> b!1031137 d!295912))

(declare-fun d!295914 () Bool)

(declare-fun c!171259 () Bool)

(assert (=> d!295914 (= c!171259 ((_ is Nil!10075) lt!356149))))

(declare-fun e!657777 () (InoxSet C!6292))

(assert (=> d!295914 (= (content!1448 lt!356149) e!657777)))

(declare-fun b!1031997 () Bool)

(assert (=> b!1031997 (= e!657777 ((as const (Array C!6292 Bool)) false))))

(declare-fun b!1031998 () Bool)

(assert (=> b!1031998 (= e!657777 ((_ map or) (store ((as const (Array C!6292 Bool)) false) (h!15476 lt!356149) true) (content!1448 (t!101137 lt!356149))))))

(assert (= (and d!295914 c!171259) b!1031997))

(assert (= (and d!295914 (not c!171259)) b!1031998))

(declare-fun m!1205343 () Bool)

(assert (=> b!1031998 m!1205343))

(declare-fun m!1205345 () Bool)

(assert (=> b!1031998 m!1205345))

(assert (=> d!295640 d!295914))

(assert (=> d!295640 d!295834))

(assert (=> d!295640 d!295832))

(assert (=> d!295604 d!295598))

(assert (=> d!295604 d!295576))

(declare-fun d!295916 () Bool)

(assert (=> d!295916 (= (matchR!1397 r!15766 s!10566) (matchRSpec!660 r!15766 s!10566))))

(assert (=> d!295916 true))

(declare-fun _$88!3088 () Unit!15397)

(assert (=> d!295916 (= (choose!6567 r!15766 s!10566) _$88!3088)))

(declare-fun bs!247437 () Bool)

(assert (= bs!247437 d!295916))

(assert (=> bs!247437 m!1204521))

(assert (=> bs!247437 m!1204519))

(assert (=> d!295604 d!295916))

(assert (=> d!295604 d!295642))

(declare-fun bm!71199 () Bool)

(declare-fun call!71206 () Regex!2861)

(declare-fun call!71207 () Regex!2861)

(assert (=> bm!71199 (= call!71206 call!71207)))

(declare-fun e!657783 () Regex!2861)

(declare-fun b!1031999 () Bool)

(assert (=> b!1031999 (= e!657783 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766))))))))

(declare-fun bm!71200 () Bool)

(declare-fun call!71208 () Regex!2861)

(declare-fun call!71205 () Regex!2861)

(assert (=> bm!71200 (= call!71208 call!71205)))

(declare-fun d!295918 () Bool)

(declare-fun e!657778 () Bool)

(assert (=> d!295918 e!657778))

(declare-fun res!463714 () Bool)

(assert (=> d!295918 (=> (not res!463714) (not e!657778))))

(declare-fun lt!356221 () Regex!2861)

(assert (=> d!295918 (= res!463714 (validRegex!1330 lt!356221))))

(declare-fun e!657782 () Regex!2861)

(assert (=> d!295918 (= lt!356221 e!657782)))

(declare-fun c!171264 () Bool)

(assert (=> d!295918 (= c!171264 (and ((_ is Concat!4694) (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))) ((_ is EmptyExpr!2861) (regOne!6234 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))))))))

(assert (=> d!295918 (validRegex!1330 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766))))))))

(assert (=> d!295918 (= (removeUselessConcat!418 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))) lt!356221)))

(declare-fun b!1032000 () Bool)

(assert (=> b!1032000 (= e!657778 (= (nullable!954 lt!356221) (nullable!954 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766))))))))))

(declare-fun c!171262 () Bool)

(declare-fun b!1032001 () Bool)

(assert (=> b!1032001 (= c!171262 ((_ is Concat!4694) (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))))))

(declare-fun e!657781 () Regex!2861)

(declare-fun e!657779 () Regex!2861)

(assert (=> b!1032001 (= e!657781 e!657779)))

(declare-fun bm!71201 () Bool)

(assert (=> bm!71201 (= call!71207 (removeUselessConcat!418 (ite c!171264 (regTwo!6234 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))) (ite c!171262 (regOne!6234 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))) (regOne!6235 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766))))))))))))

(declare-fun b!1032002 () Bool)

(assert (=> b!1032002 (= e!657782 e!657781)))

(declare-fun c!171260 () Bool)

(assert (=> b!1032002 (= c!171260 (and ((_ is Concat!4694) (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))) ((_ is EmptyExpr!2861) (regTwo!6234 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))))))))

(declare-fun b!1032003 () Bool)

(assert (=> b!1032003 (= e!657782 call!71207)))

(declare-fun b!1032004 () Bool)

(assert (=> b!1032004 (= e!657779 (Concat!4694 call!71206 call!71205))))

(declare-fun b!1032005 () Bool)

(declare-fun e!657780 () Regex!2861)

(assert (=> b!1032005 (= e!657780 (Union!2861 call!71206 call!71208))))

(declare-fun b!1032006 () Bool)

(declare-fun call!71204 () Regex!2861)

(assert (=> b!1032006 (= e!657781 call!71204)))

(declare-fun c!171261 () Bool)

(declare-fun bm!71202 () Bool)

(assert (=> bm!71202 (= call!71204 (removeUselessConcat!418 (ite c!171260 (regOne!6234 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))) (ite c!171262 (regTwo!6234 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))) (ite c!171261 (regTwo!6235 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))) (reg!3190 (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))))))))))

(declare-fun b!1032007 () Bool)

(assert (=> b!1032007 (= e!657779 e!657780)))

(assert (=> b!1032007 (= c!171261 ((_ is Union!2861) (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))))))

(declare-fun b!1032008 () Bool)

(assert (=> b!1032008 (= e!657783 (Star!2861 call!71208))))

(declare-fun bm!71203 () Bool)

(assert (=> bm!71203 (= call!71205 call!71204)))

(declare-fun b!1032009 () Bool)

(declare-fun c!171263 () Bool)

(assert (=> b!1032009 (= c!171263 ((_ is Star!2861) (ite c!171070 (regOne!6234 (regOne!6234 r!15766)) (ite c!171072 (regTwo!6234 (regOne!6234 r!15766)) (ite c!171071 (regTwo!6235 (regOne!6234 r!15766)) (reg!3190 (regOne!6234 r!15766)))))))))

(assert (=> b!1032009 (= e!657780 e!657783)))

(assert (= (and d!295918 c!171264) b!1032003))

(assert (= (and d!295918 (not c!171264)) b!1032002))

(assert (= (and b!1032002 c!171260) b!1032006))

(assert (= (and b!1032002 (not c!171260)) b!1032001))

(assert (= (and b!1032001 c!171262) b!1032004))

(assert (= (and b!1032001 (not c!171262)) b!1032007))

(assert (= (and b!1032007 c!171261) b!1032005))

(assert (= (and b!1032007 (not c!171261)) b!1032009))

(assert (= (and b!1032009 c!171263) b!1032008))

(assert (= (and b!1032009 (not c!171263)) b!1031999))

(assert (= (or b!1032005 b!1032008) bm!71200))

(assert (= (or b!1032004 bm!71200) bm!71203))

(assert (= (or b!1032004 b!1032005) bm!71199))

(assert (= (or b!1032006 bm!71203) bm!71202))

(assert (= (or b!1032003 bm!71199) bm!71201))

(assert (= (and d!295918 res!463714) b!1032000))

(declare-fun m!1205353 () Bool)

(assert (=> d!295918 m!1205353))

(declare-fun m!1205355 () Bool)

(assert (=> d!295918 m!1205355))

(declare-fun m!1205357 () Bool)

(assert (=> b!1032000 m!1205357))

(declare-fun m!1205359 () Bool)

(assert (=> b!1032000 m!1205359))

(declare-fun m!1205361 () Bool)

(assert (=> bm!71201 m!1205361))

(declare-fun m!1205363 () Bool)

(assert (=> bm!71202 m!1205363))

(assert (=> bm!71080 d!295918))

(declare-fun b!1032020 () Bool)

(declare-fun res!463718 () Bool)

(declare-fun e!657793 () Bool)

(assert (=> b!1032020 (=> res!463718 e!657793)))

(assert (=> b!1032020 (= res!463718 (not (isEmpty!6459 (tail!1471 (_1!6574 (get!3577 lt!356141))))))))

(declare-fun b!1032021 () Bool)

(declare-fun e!657787 () Bool)

(assert (=> b!1032021 (= e!657787 e!657793)))

(declare-fun res!463722 () Bool)

(assert (=> b!1032021 (=> res!463722 e!657793)))

(declare-fun call!71209 () Bool)

(assert (=> b!1032021 (= res!463722 call!71209)))

(declare-fun b!1032022 () Bool)

(declare-fun e!657790 () Bool)

(assert (=> b!1032022 (= e!657790 e!657787)))

(declare-fun res!463715 () Bool)

(assert (=> b!1032022 (=> (not res!463715) (not e!657787))))

(declare-fun lt!356223 () Bool)

(assert (=> b!1032022 (= res!463715 (not lt!356223))))

(declare-fun b!1032023 () Bool)

(declare-fun res!463716 () Bool)

(declare-fun e!657792 () Bool)

(assert (=> b!1032023 (=> (not res!463716) (not e!657792))))

(assert (=> b!1032023 (= res!463716 (not call!71209))))

(declare-fun b!1032024 () Bool)

(declare-fun e!657788 () Bool)

(assert (=> b!1032024 (= e!657788 (not lt!356223))))

(declare-fun b!1032025 () Bool)

(declare-fun res!463719 () Bool)

(assert (=> b!1032025 (=> (not res!463719) (not e!657792))))

(assert (=> b!1032025 (= res!463719 (isEmpty!6459 (tail!1471 (_1!6574 (get!3577 lt!356141)))))))

(declare-fun b!1032026 () Bool)

(declare-fun e!657791 () Bool)

(assert (=> b!1032026 (= e!657791 e!657788)))

(declare-fun c!171267 () Bool)

(assert (=> b!1032026 (= c!171267 ((_ is EmptyLang!2861) (regOne!6234 r!15766)))))

(declare-fun b!1032027 () Bool)

(assert (=> b!1032027 (= e!657792 (= (head!1909 (_1!6574 (get!3577 lt!356141))) (c!170950 (regOne!6234 r!15766))))))

(declare-fun b!1032028 () Bool)

(declare-fun e!657789 () Bool)

(assert (=> b!1032028 (= e!657789 (matchR!1397 (derivativeStep!754 (regOne!6234 r!15766) (head!1909 (_1!6574 (get!3577 lt!356141)))) (tail!1471 (_1!6574 (get!3577 lt!356141)))))))

(declare-fun d!295924 () Bool)

(assert (=> d!295924 e!657791))

(declare-fun c!171268 () Bool)

(assert (=> d!295924 (= c!171268 ((_ is EmptyExpr!2861) (regOne!6234 r!15766)))))

(assert (=> d!295924 (= lt!356223 e!657789)))

(declare-fun c!171266 () Bool)

(assert (=> d!295924 (= c!171266 (isEmpty!6459 (_1!6574 (get!3577 lt!356141))))))

(assert (=> d!295924 (validRegex!1330 (regOne!6234 r!15766))))

(assert (=> d!295924 (= (matchR!1397 (regOne!6234 r!15766) (_1!6574 (get!3577 lt!356141))) lt!356223)))

(declare-fun b!1032029 () Bool)

(assert (=> b!1032029 (= e!657793 (not (= (head!1909 (_1!6574 (get!3577 lt!356141))) (c!170950 (regOne!6234 r!15766)))))))

(declare-fun b!1032030 () Bool)

(assert (=> b!1032030 (= e!657791 (= lt!356223 call!71209))))

(declare-fun b!1032031 () Bool)

(declare-fun res!463720 () Bool)

(assert (=> b!1032031 (=> res!463720 e!657790)))

(assert (=> b!1032031 (= res!463720 e!657792)))

(declare-fun res!463721 () Bool)

(assert (=> b!1032031 (=> (not res!463721) (not e!657792))))

(assert (=> b!1032031 (= res!463721 lt!356223)))

(declare-fun bm!71204 () Bool)

(assert (=> bm!71204 (= call!71209 (isEmpty!6459 (_1!6574 (get!3577 lt!356141))))))

(declare-fun b!1032032 () Bool)

(declare-fun res!463717 () Bool)

(assert (=> b!1032032 (=> res!463717 e!657790)))

(assert (=> b!1032032 (= res!463717 (not ((_ is ElementMatch!2861) (regOne!6234 r!15766))))))

(assert (=> b!1032032 (= e!657788 e!657790)))

(declare-fun b!1032033 () Bool)

(assert (=> b!1032033 (= e!657789 (nullable!954 (regOne!6234 r!15766)))))

(assert (= (and d!295924 c!171266) b!1032033))

(assert (= (and d!295924 (not c!171266)) b!1032028))

(assert (= (and d!295924 c!171268) b!1032030))

(assert (= (and d!295924 (not c!171268)) b!1032026))

(assert (= (and b!1032026 c!171267) b!1032024))

(assert (= (and b!1032026 (not c!171267)) b!1032032))

(assert (= (and b!1032032 (not res!463717)) b!1032031))

(assert (= (and b!1032031 res!463721) b!1032023))

(assert (= (and b!1032023 res!463716) b!1032025))

(assert (= (and b!1032025 res!463719) b!1032027))

(assert (= (and b!1032031 (not res!463720)) b!1032022))

(assert (= (and b!1032022 res!463715) b!1032021))

(assert (= (and b!1032021 (not res!463722)) b!1032020))

(assert (= (and b!1032020 (not res!463718)) b!1032029))

(assert (= (or b!1032030 b!1032021 b!1032023) bm!71204))

(declare-fun m!1205365 () Bool)

(assert (=> b!1032028 m!1205365))

(assert (=> b!1032028 m!1205365))

(declare-fun m!1205367 () Bool)

(assert (=> b!1032028 m!1205367))

(declare-fun m!1205369 () Bool)

(assert (=> b!1032028 m!1205369))

(assert (=> b!1032028 m!1205367))

(assert (=> b!1032028 m!1205369))

(declare-fun m!1205371 () Bool)

(assert (=> b!1032028 m!1205371))

(assert (=> b!1032029 m!1205365))

(assert (=> b!1032025 m!1205369))

(assert (=> b!1032025 m!1205369))

(declare-fun m!1205373 () Bool)

(assert (=> b!1032025 m!1205373))

(assert (=> b!1032020 m!1205369))

(assert (=> b!1032020 m!1205369))

(assert (=> b!1032020 m!1205373))

(assert (=> b!1032027 m!1205365))

(assert (=> b!1032033 m!1204797))

(declare-fun m!1205375 () Bool)

(assert (=> d!295924 m!1205375))

(assert (=> d!295924 m!1204515))

(assert (=> bm!71204 m!1205375))

(assert (=> b!1031210 d!295924))

(assert (=> b!1031210 d!295816))

(declare-fun b!1032072 () Bool)

(declare-fun e!657803 () Bool)

(declare-fun tp!312415 () Bool)

(assert (=> b!1032072 (= e!657803 tp!312415)))

(declare-fun b!1032071 () Bool)

(declare-fun tp!312412 () Bool)

(declare-fun tp!312414 () Bool)

(assert (=> b!1032071 (= e!657803 (and tp!312412 tp!312414))))

(declare-fun b!1032073 () Bool)

(declare-fun tp!312416 () Bool)

(declare-fun tp!312413 () Bool)

(assert (=> b!1032073 (= e!657803 (and tp!312416 tp!312413))))

(declare-fun b!1032070 () Bool)

(assert (=> b!1032070 (= e!657803 tp_is_empty!5365)))

(assert (=> b!1031377 (= tp!312342 e!657803)))

(assert (= (and b!1031377 ((_ is ElementMatch!2861) (regOne!6234 (reg!3190 r!15766)))) b!1032070))

(assert (= (and b!1031377 ((_ is Concat!4694) (regOne!6234 (reg!3190 r!15766)))) b!1032071))

(assert (= (and b!1031377 ((_ is Star!2861) (regOne!6234 (reg!3190 r!15766)))) b!1032072))

(assert (= (and b!1031377 ((_ is Union!2861) (regOne!6234 (reg!3190 r!15766)))) b!1032073))

(declare-fun b!1032080 () Bool)

(declare-fun e!657805 () Bool)

(declare-fun tp!312425 () Bool)

(assert (=> b!1032080 (= e!657805 tp!312425)))

(declare-fun b!1032079 () Bool)

(declare-fun tp!312422 () Bool)

(declare-fun tp!312424 () Bool)

(assert (=> b!1032079 (= e!657805 (and tp!312422 tp!312424))))

(declare-fun b!1032081 () Bool)

(declare-fun tp!312426 () Bool)

(declare-fun tp!312423 () Bool)

(assert (=> b!1032081 (= e!657805 (and tp!312426 tp!312423))))

(declare-fun b!1032078 () Bool)

(assert (=> b!1032078 (= e!657805 tp_is_empty!5365)))

(assert (=> b!1031377 (= tp!312344 e!657805)))

(assert (= (and b!1031377 ((_ is ElementMatch!2861) (regTwo!6234 (reg!3190 r!15766)))) b!1032078))

(assert (= (and b!1031377 ((_ is Concat!4694) (regTwo!6234 (reg!3190 r!15766)))) b!1032079))

(assert (= (and b!1031377 ((_ is Star!2861) (regTwo!6234 (reg!3190 r!15766)))) b!1032080))

(assert (= (and b!1031377 ((_ is Union!2861) (regTwo!6234 (reg!3190 r!15766)))) b!1032081))

(declare-fun b!1032088 () Bool)

(declare-fun e!657807 () Bool)

(declare-fun tp!312435 () Bool)

(assert (=> b!1032088 (= e!657807 tp!312435)))

(declare-fun b!1032087 () Bool)

(declare-fun tp!312432 () Bool)

(declare-fun tp!312434 () Bool)

(assert (=> b!1032087 (= e!657807 (and tp!312432 tp!312434))))

(declare-fun b!1032089 () Bool)

(declare-fun tp!312436 () Bool)

(declare-fun tp!312433 () Bool)

(assert (=> b!1032089 (= e!657807 (and tp!312436 tp!312433))))

(declare-fun b!1032086 () Bool)

(assert (=> b!1032086 (= e!657807 tp_is_empty!5365)))

(assert (=> b!1031382 (= tp!312350 e!657807)))

(assert (= (and b!1031382 ((_ is ElementMatch!2861) (reg!3190 (regOne!6235 r!15766)))) b!1032086))

(assert (= (and b!1031382 ((_ is Concat!4694) (reg!3190 (regOne!6235 r!15766)))) b!1032087))

(assert (= (and b!1031382 ((_ is Star!2861) (reg!3190 (regOne!6235 r!15766)))) b!1032088))

(assert (= (and b!1031382 ((_ is Union!2861) (reg!3190 (regOne!6235 r!15766)))) b!1032089))

(declare-fun b!1032097 () Bool)

(declare-fun e!657810 () Bool)

(declare-fun tp!312446 () Bool)

(assert (=> b!1032097 (= e!657810 tp!312446)))

(declare-fun b!1032096 () Bool)

(declare-fun tp!312442 () Bool)

(declare-fun tp!312445 () Bool)

(assert (=> b!1032096 (= e!657810 (and tp!312442 tp!312445))))

(declare-fun b!1032098 () Bool)

(declare-fun tp!312447 () Bool)

(declare-fun tp!312443 () Bool)

(assert (=> b!1032098 (= e!657810 (and tp!312447 tp!312443))))

(declare-fun b!1032095 () Bool)

(assert (=> b!1032095 (= e!657810 tp_is_empty!5365)))

(assert (=> b!1031373 (= tp!312337 e!657810)))

(assert (= (and b!1031373 ((_ is ElementMatch!2861) (regOne!6234 (regTwo!6234 r!15766)))) b!1032095))

(assert (= (and b!1031373 ((_ is Concat!4694) (regOne!6234 (regTwo!6234 r!15766)))) b!1032096))

(assert (= (and b!1031373 ((_ is Star!2861) (regOne!6234 (regTwo!6234 r!15766)))) b!1032097))

(assert (= (and b!1031373 ((_ is Union!2861) (regOne!6234 (regTwo!6234 r!15766)))) b!1032098))

(declare-fun b!1032105 () Bool)

(declare-fun e!657812 () Bool)

(declare-fun tp!312456 () Bool)

(assert (=> b!1032105 (= e!657812 tp!312456)))

(declare-fun b!1032104 () Bool)

(declare-fun tp!312453 () Bool)

(declare-fun tp!312455 () Bool)

(assert (=> b!1032104 (= e!657812 (and tp!312453 tp!312455))))

(declare-fun b!1032106 () Bool)

(declare-fun tp!312457 () Bool)

(declare-fun tp!312454 () Bool)

(assert (=> b!1032106 (= e!657812 (and tp!312457 tp!312454))))

(declare-fun b!1032103 () Bool)

(assert (=> b!1032103 (= e!657812 tp_is_empty!5365)))

(assert (=> b!1031373 (= tp!312339 e!657812)))

(assert (= (and b!1031373 ((_ is ElementMatch!2861) (regTwo!6234 (regTwo!6234 r!15766)))) b!1032103))

(assert (= (and b!1031373 ((_ is Concat!4694) (regTwo!6234 (regTwo!6234 r!15766)))) b!1032104))

(assert (= (and b!1031373 ((_ is Star!2861) (regTwo!6234 (regTwo!6234 r!15766)))) b!1032105))

(assert (= (and b!1031373 ((_ is Union!2861) (regTwo!6234 (regTwo!6234 r!15766)))) b!1032106))

(declare-fun b!1032113 () Bool)

(declare-fun e!657814 () Bool)

(declare-fun tp!312466 () Bool)

(assert (=> b!1032113 (= e!657814 tp!312466)))

(declare-fun b!1032112 () Bool)

(declare-fun tp!312463 () Bool)

(declare-fun tp!312465 () Bool)

(assert (=> b!1032112 (= e!657814 (and tp!312463 tp!312465))))

(declare-fun b!1032114 () Bool)

(declare-fun tp!312467 () Bool)

(declare-fun tp!312464 () Bool)

(assert (=> b!1032114 (= e!657814 (and tp!312467 tp!312464))))

(declare-fun b!1032111 () Bool)

(assert (=> b!1032111 (= e!657814 tp_is_empty!5365)))

(assert (=> b!1031387 (= tp!312356 e!657814)))

(assert (= (and b!1031387 ((_ is ElementMatch!2861) (regOne!6235 (regTwo!6235 r!15766)))) b!1032111))

(assert (= (and b!1031387 ((_ is Concat!4694) (regOne!6235 (regTwo!6235 r!15766)))) b!1032112))

(assert (= (and b!1031387 ((_ is Star!2861) (regOne!6235 (regTwo!6235 r!15766)))) b!1032113))

(assert (= (and b!1031387 ((_ is Union!2861) (regOne!6235 (regTwo!6235 r!15766)))) b!1032114))

(declare-fun b!1032121 () Bool)

(declare-fun e!657816 () Bool)

(declare-fun tp!312476 () Bool)

(assert (=> b!1032121 (= e!657816 tp!312476)))

(declare-fun b!1032120 () Bool)

(declare-fun tp!312473 () Bool)

(declare-fun tp!312475 () Bool)

(assert (=> b!1032120 (= e!657816 (and tp!312473 tp!312475))))

(declare-fun b!1032122 () Bool)

(declare-fun tp!312477 () Bool)

(declare-fun tp!312474 () Bool)

(assert (=> b!1032122 (= e!657816 (and tp!312477 tp!312474))))

(declare-fun b!1032119 () Bool)

(assert (=> b!1032119 (= e!657816 tp_is_empty!5365)))

(assert (=> b!1031387 (= tp!312353 e!657816)))

(assert (= (and b!1031387 ((_ is ElementMatch!2861) (regTwo!6235 (regTwo!6235 r!15766)))) b!1032119))

(assert (= (and b!1031387 ((_ is Concat!4694) (regTwo!6235 (regTwo!6235 r!15766)))) b!1032120))

(assert (= (and b!1031387 ((_ is Star!2861) (regTwo!6235 (regTwo!6235 r!15766)))) b!1032121))

(assert (= (and b!1031387 ((_ is Union!2861) (regTwo!6235 (regTwo!6235 r!15766)))) b!1032122))

(declare-fun b!1032129 () Bool)

(declare-fun e!657818 () Bool)

(declare-fun tp!312486 () Bool)

(assert (=> b!1032129 (= e!657818 tp!312486)))

(declare-fun b!1032128 () Bool)

(declare-fun tp!312483 () Bool)

(declare-fun tp!312485 () Bool)

(assert (=> b!1032128 (= e!657818 (and tp!312483 tp!312485))))

(declare-fun b!1032130 () Bool)

(declare-fun tp!312487 () Bool)

(declare-fun tp!312484 () Bool)

(assert (=> b!1032130 (= e!657818 (and tp!312487 tp!312484))))

(declare-fun b!1032127 () Bool)

(assert (=> b!1032127 (= e!657818 tp_is_empty!5365)))

(assert (=> b!1031378 (= tp!312345 e!657818)))

(assert (= (and b!1031378 ((_ is ElementMatch!2861) (reg!3190 (reg!3190 r!15766)))) b!1032127))

(assert (= (and b!1031378 ((_ is Concat!4694) (reg!3190 (reg!3190 r!15766)))) b!1032128))

(assert (= (and b!1031378 ((_ is Star!2861) (reg!3190 (reg!3190 r!15766)))) b!1032129))

(assert (= (and b!1031378 ((_ is Union!2861) (reg!3190 (reg!3190 r!15766)))) b!1032130))

(declare-fun b!1032137 () Bool)

(declare-fun e!657820 () Bool)

(declare-fun tp!312496 () Bool)

(assert (=> b!1032137 (= e!657820 tp!312496)))

(declare-fun b!1032136 () Bool)

(declare-fun tp!312493 () Bool)

(declare-fun tp!312495 () Bool)

(assert (=> b!1032136 (= e!657820 (and tp!312493 tp!312495))))

(declare-fun b!1032138 () Bool)

(declare-fun tp!312497 () Bool)

(declare-fun tp!312494 () Bool)

(assert (=> b!1032138 (= e!657820 (and tp!312497 tp!312494))))

(declare-fun b!1032135 () Bool)

(assert (=> b!1032135 (= e!657820 tp_is_empty!5365)))

(assert (=> b!1031385 (= tp!312352 e!657820)))

(assert (= (and b!1031385 ((_ is ElementMatch!2861) (regOne!6234 (regTwo!6235 r!15766)))) b!1032135))

(assert (= (and b!1031385 ((_ is Concat!4694) (regOne!6234 (regTwo!6235 r!15766)))) b!1032136))

(assert (= (and b!1031385 ((_ is Star!2861) (regOne!6234 (regTwo!6235 r!15766)))) b!1032137))

(assert (= (and b!1031385 ((_ is Union!2861) (regOne!6234 (regTwo!6235 r!15766)))) b!1032138))

(declare-fun b!1032145 () Bool)

(declare-fun e!657822 () Bool)

(declare-fun tp!312506 () Bool)

(assert (=> b!1032145 (= e!657822 tp!312506)))

(declare-fun b!1032144 () Bool)

(declare-fun tp!312503 () Bool)

(declare-fun tp!312505 () Bool)

(assert (=> b!1032144 (= e!657822 (and tp!312503 tp!312505))))

(declare-fun b!1032146 () Bool)

(declare-fun tp!312507 () Bool)

(declare-fun tp!312504 () Bool)

(assert (=> b!1032146 (= e!657822 (and tp!312507 tp!312504))))

(declare-fun b!1032143 () Bool)

(assert (=> b!1032143 (= e!657822 tp_is_empty!5365)))

(assert (=> b!1031385 (= tp!312354 e!657822)))

(assert (= (and b!1031385 ((_ is ElementMatch!2861) (regTwo!6234 (regTwo!6235 r!15766)))) b!1032143))

(assert (= (and b!1031385 ((_ is Concat!4694) (regTwo!6234 (regTwo!6235 r!15766)))) b!1032144))

(assert (= (and b!1031385 ((_ is Star!2861) (regTwo!6234 (regTwo!6235 r!15766)))) b!1032145))

(assert (= (and b!1031385 ((_ is Union!2861) (regTwo!6234 (regTwo!6235 r!15766)))) b!1032146))

(declare-fun b!1032151 () Bool)

(declare-fun e!657824 () Bool)

(declare-fun tp!312513 () Bool)

(assert (=> b!1032151 (= e!657824 (and tp_is_empty!5365 tp!312513))))

(assert (=> b!1031357 (= tp!312321 e!657824)))

(assert (= (and b!1031357 ((_ is Cons!10075) (t!101137 (t!101137 s!10566)))) b!1032151))

(declare-fun b!1032158 () Bool)

(declare-fun e!657826 () Bool)

(declare-fun tp!312522 () Bool)

(assert (=> b!1032158 (= e!657826 tp!312522)))

(declare-fun b!1032157 () Bool)

(declare-fun tp!312519 () Bool)

(declare-fun tp!312521 () Bool)

(assert (=> b!1032157 (= e!657826 (and tp!312519 tp!312521))))

(declare-fun b!1032159 () Bool)

(declare-fun tp!312523 () Bool)

(declare-fun tp!312520 () Bool)

(assert (=> b!1032159 (= e!657826 (and tp!312523 tp!312520))))

(declare-fun b!1032156 () Bool)

(assert (=> b!1032156 (= e!657826 tp_is_empty!5365)))

(assert (=> b!1031381 (= tp!312347 e!657826)))

(assert (= (and b!1031381 ((_ is ElementMatch!2861) (regOne!6234 (regOne!6235 r!15766)))) b!1032156))

(assert (= (and b!1031381 ((_ is Concat!4694) (regOne!6234 (regOne!6235 r!15766)))) b!1032157))

(assert (= (and b!1031381 ((_ is Star!2861) (regOne!6234 (regOne!6235 r!15766)))) b!1032158))

(assert (= (and b!1031381 ((_ is Union!2861) (regOne!6234 (regOne!6235 r!15766)))) b!1032159))

(declare-fun b!1032166 () Bool)

(declare-fun e!657828 () Bool)

(declare-fun tp!312532 () Bool)

(assert (=> b!1032166 (= e!657828 tp!312532)))

(declare-fun b!1032165 () Bool)

(declare-fun tp!312529 () Bool)

(declare-fun tp!312531 () Bool)

(assert (=> b!1032165 (= e!657828 (and tp!312529 tp!312531))))

(declare-fun b!1032167 () Bool)

(declare-fun tp!312533 () Bool)

(declare-fun tp!312530 () Bool)

(assert (=> b!1032167 (= e!657828 (and tp!312533 tp!312530))))

(declare-fun b!1032164 () Bool)

(assert (=> b!1032164 (= e!657828 tp_is_empty!5365)))

(assert (=> b!1031381 (= tp!312349 e!657828)))

(assert (= (and b!1031381 ((_ is ElementMatch!2861) (regTwo!6234 (regOne!6235 r!15766)))) b!1032164))

(assert (= (and b!1031381 ((_ is Concat!4694) (regTwo!6234 (regOne!6235 r!15766)))) b!1032165))

(assert (= (and b!1031381 ((_ is Star!2861) (regTwo!6234 (regOne!6235 r!15766)))) b!1032166))

(assert (= (and b!1031381 ((_ is Union!2861) (regTwo!6234 (regOne!6235 r!15766)))) b!1032167))

(declare-fun b!1032174 () Bool)

(declare-fun e!657830 () Bool)

(declare-fun tp!312542 () Bool)

(assert (=> b!1032174 (= e!657830 tp!312542)))

(declare-fun b!1032173 () Bool)

(declare-fun tp!312539 () Bool)

(declare-fun tp!312541 () Bool)

(assert (=> b!1032173 (= e!657830 (and tp!312539 tp!312541))))

(declare-fun b!1032175 () Bool)

(declare-fun tp!312543 () Bool)

(declare-fun tp!312540 () Bool)

(assert (=> b!1032175 (= e!657830 (and tp!312543 tp!312540))))

(declare-fun b!1032172 () Bool)

(assert (=> b!1032172 (= e!657830 tp_is_empty!5365)))

(assert (=> b!1031386 (= tp!312355 e!657830)))

(assert (= (and b!1031386 ((_ is ElementMatch!2861) (reg!3190 (regTwo!6235 r!15766)))) b!1032172))

(assert (= (and b!1031386 ((_ is Concat!4694) (reg!3190 (regTwo!6235 r!15766)))) b!1032173))

(assert (= (and b!1031386 ((_ is Star!2861) (reg!3190 (regTwo!6235 r!15766)))) b!1032174))

(assert (= (and b!1031386 ((_ is Union!2861) (reg!3190 (regTwo!6235 r!15766)))) b!1032175))

(declare-fun b!1032182 () Bool)

(declare-fun e!657832 () Bool)

(declare-fun tp!312552 () Bool)

(assert (=> b!1032182 (= e!657832 tp!312552)))

(declare-fun b!1032181 () Bool)

(declare-fun tp!312549 () Bool)

(declare-fun tp!312551 () Bool)

(assert (=> b!1032181 (= e!657832 (and tp!312549 tp!312551))))

(declare-fun b!1032183 () Bool)

(declare-fun tp!312553 () Bool)

(declare-fun tp!312550 () Bool)

(assert (=> b!1032183 (= e!657832 (and tp!312553 tp!312550))))

(declare-fun b!1032180 () Bool)

(assert (=> b!1032180 (= e!657832 tp_is_empty!5365)))

(assert (=> b!1031375 (= tp!312341 e!657832)))

(assert (= (and b!1031375 ((_ is ElementMatch!2861) (regOne!6235 (regTwo!6234 r!15766)))) b!1032180))

(assert (= (and b!1031375 ((_ is Concat!4694) (regOne!6235 (regTwo!6234 r!15766)))) b!1032181))

(assert (= (and b!1031375 ((_ is Star!2861) (regOne!6235 (regTwo!6234 r!15766)))) b!1032182))

(assert (= (and b!1031375 ((_ is Union!2861) (regOne!6235 (regTwo!6234 r!15766)))) b!1032183))

(declare-fun b!1032186 () Bool)

(declare-fun e!657833 () Bool)

(declare-fun tp!312557 () Bool)

(assert (=> b!1032186 (= e!657833 tp!312557)))

(declare-fun b!1032185 () Bool)

(declare-fun tp!312554 () Bool)

(declare-fun tp!312556 () Bool)

(assert (=> b!1032185 (= e!657833 (and tp!312554 tp!312556))))

(declare-fun b!1032187 () Bool)

(declare-fun tp!312558 () Bool)

(declare-fun tp!312555 () Bool)

(assert (=> b!1032187 (= e!657833 (and tp!312558 tp!312555))))

(declare-fun b!1032184 () Bool)

(assert (=> b!1032184 (= e!657833 tp_is_empty!5365)))

(assert (=> b!1031375 (= tp!312338 e!657833)))

(assert (= (and b!1031375 ((_ is ElementMatch!2861) (regTwo!6235 (regTwo!6234 r!15766)))) b!1032184))

(assert (= (and b!1031375 ((_ is Concat!4694) (regTwo!6235 (regTwo!6234 r!15766)))) b!1032185))

(assert (= (and b!1031375 ((_ is Star!2861) (regTwo!6235 (regTwo!6234 r!15766)))) b!1032186))

(assert (= (and b!1031375 ((_ is Union!2861) (regTwo!6235 (regTwo!6234 r!15766)))) b!1032187))

(declare-fun b!1032190 () Bool)

(declare-fun e!657834 () Bool)

(declare-fun tp!312562 () Bool)

(assert (=> b!1032190 (= e!657834 tp!312562)))

(declare-fun b!1032189 () Bool)

(declare-fun tp!312559 () Bool)

(declare-fun tp!312561 () Bool)

(assert (=> b!1032189 (= e!657834 (and tp!312559 tp!312561))))

(declare-fun b!1032191 () Bool)

(declare-fun tp!312563 () Bool)

(declare-fun tp!312560 () Bool)

(assert (=> b!1032191 (= e!657834 (and tp!312563 tp!312560))))

(declare-fun b!1032188 () Bool)

(assert (=> b!1032188 (= e!657834 tp_is_empty!5365)))

(assert (=> b!1031371 (= tp!312336 e!657834)))

(assert (= (and b!1031371 ((_ is ElementMatch!2861) (regOne!6235 (regOne!6234 r!15766)))) b!1032188))

(assert (= (and b!1031371 ((_ is Concat!4694) (regOne!6235 (regOne!6234 r!15766)))) b!1032189))

(assert (= (and b!1031371 ((_ is Star!2861) (regOne!6235 (regOne!6234 r!15766)))) b!1032190))

(assert (= (and b!1031371 ((_ is Union!2861) (regOne!6235 (regOne!6234 r!15766)))) b!1032191))

(declare-fun b!1032194 () Bool)

(declare-fun e!657835 () Bool)

(declare-fun tp!312567 () Bool)

(assert (=> b!1032194 (= e!657835 tp!312567)))

(declare-fun b!1032193 () Bool)

(declare-fun tp!312564 () Bool)

(declare-fun tp!312566 () Bool)

(assert (=> b!1032193 (= e!657835 (and tp!312564 tp!312566))))

(declare-fun b!1032195 () Bool)

(declare-fun tp!312568 () Bool)

(declare-fun tp!312565 () Bool)

(assert (=> b!1032195 (= e!657835 (and tp!312568 tp!312565))))

(declare-fun b!1032192 () Bool)

(assert (=> b!1032192 (= e!657835 tp_is_empty!5365)))

(assert (=> b!1031371 (= tp!312333 e!657835)))

(assert (= (and b!1031371 ((_ is ElementMatch!2861) (regTwo!6235 (regOne!6234 r!15766)))) b!1032192))

(assert (= (and b!1031371 ((_ is Concat!4694) (regTwo!6235 (regOne!6234 r!15766)))) b!1032193))

(assert (= (and b!1031371 ((_ is Star!2861) (regTwo!6235 (regOne!6234 r!15766)))) b!1032194))

(assert (= (and b!1031371 ((_ is Union!2861) (regTwo!6235 (regOne!6234 r!15766)))) b!1032195))

(declare-fun b!1032198 () Bool)

(declare-fun e!657836 () Bool)

(declare-fun tp!312572 () Bool)

(assert (=> b!1032198 (= e!657836 tp!312572)))

(declare-fun b!1032197 () Bool)

(declare-fun tp!312569 () Bool)

(declare-fun tp!312571 () Bool)

(assert (=> b!1032197 (= e!657836 (and tp!312569 tp!312571))))

(declare-fun b!1032199 () Bool)

(declare-fun tp!312573 () Bool)

(declare-fun tp!312570 () Bool)

(assert (=> b!1032199 (= e!657836 (and tp!312573 tp!312570))))

(declare-fun b!1032196 () Bool)

(assert (=> b!1032196 (= e!657836 tp_is_empty!5365)))

(assert (=> b!1031369 (= tp!312332 e!657836)))

(assert (= (and b!1031369 ((_ is ElementMatch!2861) (regOne!6234 (regOne!6234 r!15766)))) b!1032196))

(assert (= (and b!1031369 ((_ is Concat!4694) (regOne!6234 (regOne!6234 r!15766)))) b!1032197))

(assert (= (and b!1031369 ((_ is Star!2861) (regOne!6234 (regOne!6234 r!15766)))) b!1032198))

(assert (= (and b!1031369 ((_ is Union!2861) (regOne!6234 (regOne!6234 r!15766)))) b!1032199))

(declare-fun b!1032202 () Bool)

(declare-fun e!657837 () Bool)

(declare-fun tp!312577 () Bool)

(assert (=> b!1032202 (= e!657837 tp!312577)))

(declare-fun b!1032201 () Bool)

(declare-fun tp!312574 () Bool)

(declare-fun tp!312576 () Bool)

(assert (=> b!1032201 (= e!657837 (and tp!312574 tp!312576))))

(declare-fun b!1032203 () Bool)

(declare-fun tp!312578 () Bool)

(declare-fun tp!312575 () Bool)

(assert (=> b!1032203 (= e!657837 (and tp!312578 tp!312575))))

(declare-fun b!1032200 () Bool)

(assert (=> b!1032200 (= e!657837 tp_is_empty!5365)))

(assert (=> b!1031369 (= tp!312334 e!657837)))

(assert (= (and b!1031369 ((_ is ElementMatch!2861) (regTwo!6234 (regOne!6234 r!15766)))) b!1032200))

(assert (= (and b!1031369 ((_ is Concat!4694) (regTwo!6234 (regOne!6234 r!15766)))) b!1032201))

(assert (= (and b!1031369 ((_ is Star!2861) (regTwo!6234 (regOne!6234 r!15766)))) b!1032202))

(assert (= (and b!1031369 ((_ is Union!2861) (regTwo!6234 (regOne!6234 r!15766)))) b!1032203))

(declare-fun b!1032206 () Bool)

(declare-fun e!657838 () Bool)

(declare-fun tp!312582 () Bool)

(assert (=> b!1032206 (= e!657838 tp!312582)))

(declare-fun b!1032205 () Bool)

(declare-fun tp!312579 () Bool)

(declare-fun tp!312581 () Bool)

(assert (=> b!1032205 (= e!657838 (and tp!312579 tp!312581))))

(declare-fun b!1032207 () Bool)

(declare-fun tp!312583 () Bool)

(declare-fun tp!312580 () Bool)

(assert (=> b!1032207 (= e!657838 (and tp!312583 tp!312580))))

(declare-fun b!1032204 () Bool)

(assert (=> b!1032204 (= e!657838 tp_is_empty!5365)))

(assert (=> b!1031383 (= tp!312351 e!657838)))

(assert (= (and b!1031383 ((_ is ElementMatch!2861) (regOne!6235 (regOne!6235 r!15766)))) b!1032204))

(assert (= (and b!1031383 ((_ is Concat!4694) (regOne!6235 (regOne!6235 r!15766)))) b!1032205))

(assert (= (and b!1031383 ((_ is Star!2861) (regOne!6235 (regOne!6235 r!15766)))) b!1032206))

(assert (= (and b!1031383 ((_ is Union!2861) (regOne!6235 (regOne!6235 r!15766)))) b!1032207))

(declare-fun b!1032210 () Bool)

(declare-fun e!657839 () Bool)

(declare-fun tp!312587 () Bool)

(assert (=> b!1032210 (= e!657839 tp!312587)))

(declare-fun b!1032209 () Bool)

(declare-fun tp!312584 () Bool)

(declare-fun tp!312586 () Bool)

(assert (=> b!1032209 (= e!657839 (and tp!312584 tp!312586))))

(declare-fun b!1032211 () Bool)

(declare-fun tp!312588 () Bool)

(declare-fun tp!312585 () Bool)

(assert (=> b!1032211 (= e!657839 (and tp!312588 tp!312585))))

(declare-fun b!1032208 () Bool)

(assert (=> b!1032208 (= e!657839 tp_is_empty!5365)))

(assert (=> b!1031383 (= tp!312348 e!657839)))

(assert (= (and b!1031383 ((_ is ElementMatch!2861) (regTwo!6235 (regOne!6235 r!15766)))) b!1032208))

(assert (= (and b!1031383 ((_ is Concat!4694) (regTwo!6235 (regOne!6235 r!15766)))) b!1032209))

(assert (= (and b!1031383 ((_ is Star!2861) (regTwo!6235 (regOne!6235 r!15766)))) b!1032210))

(assert (= (and b!1031383 ((_ is Union!2861) (regTwo!6235 (regOne!6235 r!15766)))) b!1032211))

(declare-fun b!1032214 () Bool)

(declare-fun e!657840 () Bool)

(declare-fun tp!312592 () Bool)

(assert (=> b!1032214 (= e!657840 tp!312592)))

(declare-fun b!1032213 () Bool)

(declare-fun tp!312589 () Bool)

(declare-fun tp!312591 () Bool)

(assert (=> b!1032213 (= e!657840 (and tp!312589 tp!312591))))

(declare-fun b!1032215 () Bool)

(declare-fun tp!312593 () Bool)

(declare-fun tp!312590 () Bool)

(assert (=> b!1032215 (= e!657840 (and tp!312593 tp!312590))))

(declare-fun b!1032212 () Bool)

(assert (=> b!1032212 (= e!657840 tp_is_empty!5365)))

(assert (=> b!1031374 (= tp!312340 e!657840)))

(assert (= (and b!1031374 ((_ is ElementMatch!2861) (reg!3190 (regTwo!6234 r!15766)))) b!1032212))

(assert (= (and b!1031374 ((_ is Concat!4694) (reg!3190 (regTwo!6234 r!15766)))) b!1032213))

(assert (= (and b!1031374 ((_ is Star!2861) (reg!3190 (regTwo!6234 r!15766)))) b!1032214))

(assert (= (and b!1031374 ((_ is Union!2861) (reg!3190 (regTwo!6234 r!15766)))) b!1032215))

(declare-fun b!1032218 () Bool)

(declare-fun e!657841 () Bool)

(declare-fun tp!312597 () Bool)

(assert (=> b!1032218 (= e!657841 tp!312597)))

(declare-fun b!1032217 () Bool)

(declare-fun tp!312594 () Bool)

(declare-fun tp!312596 () Bool)

(assert (=> b!1032217 (= e!657841 (and tp!312594 tp!312596))))

(declare-fun b!1032219 () Bool)

(declare-fun tp!312598 () Bool)

(declare-fun tp!312595 () Bool)

(assert (=> b!1032219 (= e!657841 (and tp!312598 tp!312595))))

(declare-fun b!1032216 () Bool)

(assert (=> b!1032216 (= e!657841 tp_is_empty!5365)))

(assert (=> b!1031379 (= tp!312346 e!657841)))

(assert (= (and b!1031379 ((_ is ElementMatch!2861) (regOne!6235 (reg!3190 r!15766)))) b!1032216))

(assert (= (and b!1031379 ((_ is Concat!4694) (regOne!6235 (reg!3190 r!15766)))) b!1032217))

(assert (= (and b!1031379 ((_ is Star!2861) (regOne!6235 (reg!3190 r!15766)))) b!1032218))

(assert (= (and b!1031379 ((_ is Union!2861) (regOne!6235 (reg!3190 r!15766)))) b!1032219))

(declare-fun b!1032222 () Bool)

(declare-fun e!657842 () Bool)

(declare-fun tp!312602 () Bool)

(assert (=> b!1032222 (= e!657842 tp!312602)))

(declare-fun b!1032221 () Bool)

(declare-fun tp!312599 () Bool)

(declare-fun tp!312601 () Bool)

(assert (=> b!1032221 (= e!657842 (and tp!312599 tp!312601))))

(declare-fun b!1032223 () Bool)

(declare-fun tp!312603 () Bool)

(declare-fun tp!312600 () Bool)

(assert (=> b!1032223 (= e!657842 (and tp!312603 tp!312600))))

(declare-fun b!1032220 () Bool)

(assert (=> b!1032220 (= e!657842 tp_is_empty!5365)))

(assert (=> b!1031379 (= tp!312343 e!657842)))

(assert (= (and b!1031379 ((_ is ElementMatch!2861) (regTwo!6235 (reg!3190 r!15766)))) b!1032220))

(assert (= (and b!1031379 ((_ is Concat!4694) (regTwo!6235 (reg!3190 r!15766)))) b!1032221))

(assert (= (and b!1031379 ((_ is Star!2861) (regTwo!6235 (reg!3190 r!15766)))) b!1032222))

(assert (= (and b!1031379 ((_ is Union!2861) (regTwo!6235 (reg!3190 r!15766)))) b!1032223))

(declare-fun b!1032226 () Bool)

(declare-fun e!657843 () Bool)

(declare-fun tp!312607 () Bool)

(assert (=> b!1032226 (= e!657843 tp!312607)))

(declare-fun b!1032225 () Bool)

(declare-fun tp!312604 () Bool)

(declare-fun tp!312606 () Bool)

(assert (=> b!1032225 (= e!657843 (and tp!312604 tp!312606))))

(declare-fun b!1032227 () Bool)

(declare-fun tp!312608 () Bool)

(declare-fun tp!312605 () Bool)

(assert (=> b!1032227 (= e!657843 (and tp!312608 tp!312605))))

(declare-fun b!1032224 () Bool)

(assert (=> b!1032224 (= e!657843 tp_is_empty!5365)))

(assert (=> b!1031370 (= tp!312335 e!657843)))

(assert (= (and b!1031370 ((_ is ElementMatch!2861) (reg!3190 (regOne!6234 r!15766)))) b!1032224))

(assert (= (and b!1031370 ((_ is Concat!4694) (reg!3190 (regOne!6234 r!15766)))) b!1032225))

(assert (= (and b!1031370 ((_ is Star!2861) (reg!3190 (regOne!6234 r!15766)))) b!1032226))

(assert (= (and b!1031370 ((_ is Union!2861) (reg!3190 (regOne!6234 r!15766)))) b!1032227))

(check-sat (not d!295814) (not bm!71189) (not d!295774) (not b!1031647) (not b!1032175) (not d!295728) (not b!1031868) (not b!1031772) (not d!295782) (not b!1032210) (not b!1031692) (not b!1032129) (not d!295784) (not b!1031771) (not b!1031500) (not b!1031786) (not b!1032191) (not b!1032000) (not d!295870) (not b!1032189) (not b!1031876) (not bm!71204) (not b!1032165) (not b!1031946) (not b!1032182) (not b!1032183) (not d!295918) (not b!1032071) (not d!295710) (not b!1032185) (not b!1031508) (not b!1032190) (not b!1031762) (not b!1032106) (not b!1031839) (not b!1031988) (not b!1032226) (not b!1032213) (not d!295924) (not b!1032081) (not bm!71145) (not bm!71165) (not b!1032167) (not d!295838) (not d!295900) (not b!1031806) (not b!1031884) (not b!1032080) (not b!1031485) (not bm!71201) (not b!1032104) (not b!1032097) (not b!1032072) (not bm!71163) (not b!1031477) (not b!1032088) (not b!1031486) (not b!1031768) (not b!1031624) (not b!1032146) (not b!1031759) tp_is_empty!5365 (not b!1031998) (not bm!71140) (not b!1031667) (not bm!71175) (not d!295896) (not bm!71192) (not b!1032181) (not bm!71136) (not b!1031632) (not b!1031496) (not bm!71191) (not b!1032087) (not b!1032128) (not b!1031498) (not b!1032225) (not b!1031879) (not b!1031763) (not b!1032206) (not bm!71185) (not b!1032221) (not b!1031509) (not b!1031690) (not b!1031776) (not d!295758) (not b!1032217) (not bm!71158) (not b!1031668) (not b!1031980) (not bm!71105) (not b!1031757) (not b!1032079) (not b!1031597) (not b!1031626) (not b!1031756) (not b!1032193) (not d!295674) (not d!295790) (not d!295840) (not b!1032130) (not b!1032027) (not b!1032214) (not bm!71160) (not b!1031848) (not b!1032033) (not b!1032194) (not b!1031869) (not b!1031490) (not b!1031484) (not b!1032215) (not b!1032197) (not b!1032166) (not b!1031716) (not bm!71198) (not b!1032218) (not b!1032029) (not bm!71180) (not b!1032144) (not b!1031979) (not b!1032138) (not bm!71169) (not d!295898) (not b!1031618) (not b!1032227) (not b!1031683) (not b!1031900) (not bm!71188) (not d!295700) (not bm!71174) (not b!1031985) (not b!1032173) (not d!295792) (not d!295794) (not b!1031770) (not b!1032113) (not b!1032025) (not d!295712) (not b!1032202) (not d!295786) (not b!1032205) (not b!1032211) (not d!295702) (not b!1032020) (not d!295878) (not b!1031628) (not d!295902) (not bm!71172) (not d!295760) (not bm!71144) (not b!1031878) (not b!1031761) (not b!1032073) (not b!1031619) (not bm!71197) (not b!1031921) (not b!1031871) (not b!1032151) (not b!1031510) (not b!1032186) (not b!1032219) (not b!1032199) (not b!1032120) (not d!295688) (not bm!71130) (not b!1032096) (not b!1032028) (not d!295916) (not b!1032203) (not b!1031943) (not b!1032098) (not b!1032137) (not b!1031819) (not b!1032158) (not b!1031688) (not b!1031669) (not b!1031713) (not b!1032209) (not bm!71202) (not d!295836) (not b!1032207) (not b!1032198) (not b!1031717) (not b!1031857) (not bm!71171) (not b!1032159) (not b!1032105) (not b!1032114) (not b!1032145) (not b!1032122) (not b!1032121) (not d!295766) (not bm!71168) (not d!295804) (not b!1031758) (not b!1031482) (not b!1031514) (not b!1031501) (not b!1031880) (not b!1032136) (not b!1032187) (not b!1032201) (not d!295770) (not b!1032112) (not b!1031673) (not b!1032089) (not b!1031930) (not b!1031696) (not bm!71166) (not b!1031821) (not b!1031712) (not d!295730) (not b!1032157) (not b!1031691) (not b!1032174) (not bm!71098) (not b!1032195) (not d!295864) (not b!1031627) (not b!1032222) (not bm!71183) (not bm!71143) (not bm!71127) (not bm!71177) (not b!1032223) (not b!1031665) (not bm!71157) (not b!1031506) (not d!295866) (not b!1031660))
(check-sat)
