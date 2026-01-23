; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351262 () Bool)

(assert start!351262)

(declare-fun b!3738120 () Bool)

(declare-fun res!1516183 () Bool)

(declare-fun e!2311819 () Bool)

(assert (=> b!3738120 (=> (not res!1516183) (not e!2311819))))

(declare-datatypes ((C!22068 0))(
  ( (C!22069 (val!13082 Int)) )
))
(declare-datatypes ((Regex!10941 0))(
  ( (ElementMatch!10941 (c!647507 C!22068)) (Concat!17212 (regOne!22394 Regex!10941) (regTwo!22394 Regex!10941)) (EmptyExpr!10941) (Star!10941 (reg!11270 Regex!10941)) (EmptyLang!10941) (Union!10941 (regOne!22395 Regex!10941) (regTwo!22395 Regex!10941)) )
))
(declare-fun r!26968 () Regex!10941)

(declare-fun cNot!42 () C!22068)

(declare-datatypes ((List!39822 0))(
  ( (Nil!39698) (Cons!39698 (h!45118 C!22068) (t!302505 List!39822)) )
))
(declare-fun contains!8034 (List!39822 C!22068) Bool)

(declare-fun usedCharacters!1204 (Regex!10941) List!39822)

(assert (=> b!3738120 (= res!1516183 (not (contains!8034 (usedCharacters!1204 r!26968) cNot!42)))))

(declare-fun b!3738121 () Bool)

(declare-fun res!1516182 () Bool)

(assert (=> b!3738121 (=> (not res!1516182) (not e!2311819))))

(declare-fun nullable!3849 (Regex!10941) Bool)

(assert (=> b!3738121 (= res!1516182 (not (nullable!3849 (regOne!22394 r!26968))))))

(declare-fun res!1516186 () Bool)

(assert (=> start!351262 (=> (not res!1516186) (not e!2311819))))

(declare-fun validRegex!5048 (Regex!10941) Bool)

(assert (=> start!351262 (= res!1516186 (validRegex!5048 r!26968))))

(assert (=> start!351262 e!2311819))

(declare-fun e!2311820 () Bool)

(assert (=> start!351262 e!2311820))

(declare-fun tp_is_empty!18897 () Bool)

(assert (=> start!351262 tp_is_empty!18897))

(declare-fun b!3738122 () Bool)

(declare-fun tp!1138432 () Bool)

(declare-fun tp!1138430 () Bool)

(assert (=> b!3738122 (= e!2311820 (and tp!1138432 tp!1138430))))

(declare-fun b!3738123 () Bool)

(declare-fun res!1516184 () Bool)

(assert (=> b!3738123 (=> (not res!1516184) (not e!2311819))))

(get-info :version)

(assert (=> b!3738123 (= res!1516184 (and (not ((_ is EmptyExpr!10941) r!26968)) (not ((_ is EmptyLang!10941) r!26968)) (not ((_ is ElementMatch!10941) r!26968)) (not ((_ is Union!10941) r!26968)) (not ((_ is Star!10941) r!26968))))))

(declare-fun b!3738124 () Bool)

(declare-fun tp!1138434 () Bool)

(assert (=> b!3738124 (= e!2311820 tp!1138434)))

(declare-fun b!3738125 () Bool)

(assert (=> b!3738125 (= e!2311819 (contains!8034 (usedCharacters!1204 (regOne!22394 r!26968)) cNot!42))))

(declare-fun b!3738126 () Bool)

(declare-fun tp!1138433 () Bool)

(declare-fun tp!1138431 () Bool)

(assert (=> b!3738126 (= e!2311820 (and tp!1138433 tp!1138431))))

(declare-fun b!3738127 () Bool)

(declare-fun res!1516185 () Bool)

(assert (=> b!3738127 (=> (not res!1516185) (not e!2311819))))

(assert (=> b!3738127 (= res!1516185 (validRegex!5048 (regOne!22394 r!26968)))))

(declare-fun b!3738128 () Bool)

(assert (=> b!3738128 (= e!2311820 tp_is_empty!18897)))

(assert (= (and start!351262 res!1516186) b!3738120))

(assert (= (and b!3738120 res!1516183) b!3738123))

(assert (= (and b!3738123 res!1516184) b!3738121))

(assert (= (and b!3738121 res!1516182) b!3738127))

(assert (= (and b!3738127 res!1516185) b!3738125))

(assert (= (and start!351262 ((_ is ElementMatch!10941) r!26968)) b!3738128))

(assert (= (and start!351262 ((_ is Concat!17212) r!26968)) b!3738126))

(assert (= (and start!351262 ((_ is Star!10941) r!26968)) b!3738124))

(assert (= (and start!351262 ((_ is Union!10941) r!26968)) b!3738122))

(declare-fun m!4234331 () Bool)

(assert (=> b!3738125 m!4234331))

(assert (=> b!3738125 m!4234331))

(declare-fun m!4234333 () Bool)

(assert (=> b!3738125 m!4234333))

(declare-fun m!4234335 () Bool)

(assert (=> start!351262 m!4234335))

(declare-fun m!4234337 () Bool)

(assert (=> b!3738121 m!4234337))

(declare-fun m!4234339 () Bool)

(assert (=> b!3738120 m!4234339))

(assert (=> b!3738120 m!4234339))

(declare-fun m!4234341 () Bool)

(assert (=> b!3738120 m!4234341))

(declare-fun m!4234343 () Bool)

(assert (=> b!3738127 m!4234343))

(check-sat (not b!3738122) (not b!3738125) (not b!3738121) (not b!3738124) (not start!351262) tp_is_empty!18897 (not b!3738120) (not b!3738127) (not b!3738126))
(check-sat)
(get-model)

(declare-fun d!1091980 () Bool)

(declare-fun lt!1299084 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5798 (List!39822) (InoxSet C!22068))

(assert (=> d!1091980 (= lt!1299084 (select (content!5798 (usedCharacters!1204 (regOne!22394 r!26968))) cNot!42))))

(declare-fun e!2311843 () Bool)

(assert (=> d!1091980 (= lt!1299084 e!2311843)))

(declare-fun res!1516197 () Bool)

(assert (=> d!1091980 (=> (not res!1516197) (not e!2311843))))

(assert (=> d!1091980 (= res!1516197 ((_ is Cons!39698) (usedCharacters!1204 (regOne!22394 r!26968))))))

(assert (=> d!1091980 (= (contains!8034 (usedCharacters!1204 (regOne!22394 r!26968)) cNot!42) lt!1299084)))

(declare-fun b!3738163 () Bool)

(declare-fun e!2311844 () Bool)

(assert (=> b!3738163 (= e!2311843 e!2311844)))

(declare-fun res!1516198 () Bool)

(assert (=> b!3738163 (=> res!1516198 e!2311844)))

(assert (=> b!3738163 (= res!1516198 (= (h!45118 (usedCharacters!1204 (regOne!22394 r!26968))) cNot!42))))

(declare-fun b!3738164 () Bool)

(assert (=> b!3738164 (= e!2311844 (contains!8034 (t!302505 (usedCharacters!1204 (regOne!22394 r!26968))) cNot!42))))

(assert (= (and d!1091980 res!1516197) b!3738163))

(assert (= (and b!3738163 (not res!1516198)) b!3738164))

(assert (=> d!1091980 m!4234331))

(declare-fun m!4234359 () Bool)

(assert (=> d!1091980 m!4234359))

(declare-fun m!4234361 () Bool)

(assert (=> d!1091980 m!4234361))

(declare-fun m!4234363 () Bool)

(assert (=> b!3738164 m!4234363))

(assert (=> b!3738125 d!1091980))

(declare-fun b!3738257 () Bool)

(declare-fun e!2311896 () List!39822)

(declare-fun call!274009 () List!39822)

(assert (=> b!3738257 (= e!2311896 call!274009)))

(declare-fun call!274010 () List!39822)

(declare-fun call!274012 () List!39822)

(declare-fun bm!274004 () Bool)

(declare-fun c!647542 () Bool)

(declare-fun ++!9865 (List!39822 List!39822) List!39822)

(assert (=> bm!274004 (= call!274009 (++!9865 (ite c!647542 call!274010 call!274012) (ite c!647542 call!274012 call!274010)))))

(declare-fun b!3738258 () Bool)

(declare-fun e!2311897 () List!39822)

(assert (=> b!3738258 (= e!2311897 Nil!39698)))

(declare-fun b!3738259 () Bool)

(declare-fun c!647543 () Bool)

(assert (=> b!3738259 (= c!647543 ((_ is Star!10941) (regOne!22394 r!26968)))))

(declare-fun e!2311894 () List!39822)

(declare-fun e!2311895 () List!39822)

(assert (=> b!3738259 (= e!2311894 e!2311895)))

(declare-fun b!3738260 () Bool)

(declare-fun call!274011 () List!39822)

(assert (=> b!3738260 (= e!2311895 call!274011)))

(declare-fun bm!274005 () Bool)

(assert (=> bm!274005 (= call!274011 (usedCharacters!1204 (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))))))

(declare-fun d!1091986 () Bool)

(declare-fun c!647540 () Bool)

(assert (=> d!1091986 (= c!647540 (or ((_ is EmptyExpr!10941) (regOne!22394 r!26968)) ((_ is EmptyLang!10941) (regOne!22394 r!26968))))))

(assert (=> d!1091986 (= (usedCharacters!1204 (regOne!22394 r!26968)) e!2311897)))

(declare-fun b!3738261 () Bool)

(assert (=> b!3738261 (= e!2311895 e!2311896)))

(assert (=> b!3738261 (= c!647542 ((_ is Union!10941) (regOne!22394 r!26968)))))

(declare-fun b!3738262 () Bool)

(assert (=> b!3738262 (= e!2311897 e!2311894)))

(declare-fun c!647541 () Bool)

(assert (=> b!3738262 (= c!647541 ((_ is ElementMatch!10941) (regOne!22394 r!26968)))))

(declare-fun b!3738263 () Bool)

(assert (=> b!3738263 (= e!2311894 (Cons!39698 (c!647507 (regOne!22394 r!26968)) Nil!39698))))

(declare-fun b!3738264 () Bool)

(assert (=> b!3738264 (= e!2311896 call!274009)))

(declare-fun bm!274006 () Bool)

(assert (=> bm!274006 (= call!274010 (usedCharacters!1204 (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))))))

(declare-fun bm!274007 () Bool)

(assert (=> bm!274007 (= call!274012 call!274011)))

(assert (= (and d!1091986 c!647540) b!3738258))

(assert (= (and d!1091986 (not c!647540)) b!3738262))

(assert (= (and b!3738262 c!647541) b!3738263))

(assert (= (and b!3738262 (not c!647541)) b!3738259))

(assert (= (and b!3738259 c!647543) b!3738260))

(assert (= (and b!3738259 (not c!647543)) b!3738261))

(assert (= (and b!3738261 c!647542) b!3738257))

(assert (= (and b!3738261 (not c!647542)) b!3738264))

(assert (= (or b!3738257 b!3738264) bm!274006))

(assert (= (or b!3738257 b!3738264) bm!274007))

(assert (= (or b!3738257 b!3738264) bm!274004))

(assert (= (or b!3738260 bm!274007) bm!274005))

(declare-fun m!4234389 () Bool)

(assert (=> bm!274004 m!4234389))

(declare-fun m!4234391 () Bool)

(assert (=> bm!274005 m!4234391))

(declare-fun m!4234393 () Bool)

(assert (=> bm!274006 m!4234393))

(assert (=> b!3738125 d!1091986))

(declare-fun d!1091994 () Bool)

(declare-fun lt!1299086 () Bool)

(assert (=> d!1091994 (= lt!1299086 (select (content!5798 (usedCharacters!1204 r!26968)) cNot!42))))

(declare-fun e!2311898 () Bool)

(assert (=> d!1091994 (= lt!1299086 e!2311898)))

(declare-fun res!1516221 () Bool)

(assert (=> d!1091994 (=> (not res!1516221) (not e!2311898))))

(assert (=> d!1091994 (= res!1516221 ((_ is Cons!39698) (usedCharacters!1204 r!26968)))))

(assert (=> d!1091994 (= (contains!8034 (usedCharacters!1204 r!26968) cNot!42) lt!1299086)))

(declare-fun b!3738265 () Bool)

(declare-fun e!2311899 () Bool)

(assert (=> b!3738265 (= e!2311898 e!2311899)))

(declare-fun res!1516222 () Bool)

(assert (=> b!3738265 (=> res!1516222 e!2311899)))

(assert (=> b!3738265 (= res!1516222 (= (h!45118 (usedCharacters!1204 r!26968)) cNot!42))))

(declare-fun b!3738266 () Bool)

(assert (=> b!3738266 (= e!2311899 (contains!8034 (t!302505 (usedCharacters!1204 r!26968)) cNot!42))))

(assert (= (and d!1091994 res!1516221) b!3738265))

(assert (= (and b!3738265 (not res!1516222)) b!3738266))

(assert (=> d!1091994 m!4234339))

(declare-fun m!4234395 () Bool)

(assert (=> d!1091994 m!4234395))

(declare-fun m!4234397 () Bool)

(assert (=> d!1091994 m!4234397))

(declare-fun m!4234399 () Bool)

(assert (=> b!3738266 m!4234399))

(assert (=> b!3738120 d!1091994))

(declare-fun b!3738267 () Bool)

(declare-fun e!2311902 () List!39822)

(declare-fun call!274013 () List!39822)

(assert (=> b!3738267 (= e!2311902 call!274013)))

(declare-fun call!274016 () List!39822)

(declare-fun c!647546 () Bool)

(declare-fun call!274014 () List!39822)

(declare-fun bm!274008 () Bool)

(assert (=> bm!274008 (= call!274013 (++!9865 (ite c!647546 call!274014 call!274016) (ite c!647546 call!274016 call!274014)))))

(declare-fun b!3738268 () Bool)

(declare-fun e!2311903 () List!39822)

(assert (=> b!3738268 (= e!2311903 Nil!39698)))

(declare-fun b!3738269 () Bool)

(declare-fun c!647547 () Bool)

(assert (=> b!3738269 (= c!647547 ((_ is Star!10941) r!26968))))

(declare-fun e!2311900 () List!39822)

(declare-fun e!2311901 () List!39822)

(assert (=> b!3738269 (= e!2311900 e!2311901)))

(declare-fun b!3738270 () Bool)

(declare-fun call!274015 () List!39822)

(assert (=> b!3738270 (= e!2311901 call!274015)))

(declare-fun bm!274009 () Bool)

(assert (=> bm!274009 (= call!274015 (usedCharacters!1204 (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968)))))))

(declare-fun d!1091996 () Bool)

(declare-fun c!647544 () Bool)

(assert (=> d!1091996 (= c!647544 (or ((_ is EmptyExpr!10941) r!26968) ((_ is EmptyLang!10941) r!26968)))))

(assert (=> d!1091996 (= (usedCharacters!1204 r!26968) e!2311903)))

(declare-fun b!3738271 () Bool)

(assert (=> b!3738271 (= e!2311901 e!2311902)))

(assert (=> b!3738271 (= c!647546 ((_ is Union!10941) r!26968))))

(declare-fun b!3738272 () Bool)

(assert (=> b!3738272 (= e!2311903 e!2311900)))

(declare-fun c!647545 () Bool)

(assert (=> b!3738272 (= c!647545 ((_ is ElementMatch!10941) r!26968))))

(declare-fun b!3738273 () Bool)

(assert (=> b!3738273 (= e!2311900 (Cons!39698 (c!647507 r!26968) Nil!39698))))

(declare-fun b!3738274 () Bool)

(assert (=> b!3738274 (= e!2311902 call!274013)))

(declare-fun bm!274010 () Bool)

(assert (=> bm!274010 (= call!274014 (usedCharacters!1204 (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968))))))

(declare-fun bm!274011 () Bool)

(assert (=> bm!274011 (= call!274016 call!274015)))

(assert (= (and d!1091996 c!647544) b!3738268))

(assert (= (and d!1091996 (not c!647544)) b!3738272))

(assert (= (and b!3738272 c!647545) b!3738273))

(assert (= (and b!3738272 (not c!647545)) b!3738269))

(assert (= (and b!3738269 c!647547) b!3738270))

(assert (= (and b!3738269 (not c!647547)) b!3738271))

(assert (= (and b!3738271 c!647546) b!3738267))

(assert (= (and b!3738271 (not c!647546)) b!3738274))

(assert (= (or b!3738267 b!3738274) bm!274010))

(assert (= (or b!3738267 b!3738274) bm!274011))

(assert (= (or b!3738267 b!3738274) bm!274008))

(assert (= (or b!3738270 bm!274011) bm!274009))

(declare-fun m!4234401 () Bool)

(assert (=> bm!274008 m!4234401))

(declare-fun m!4234403 () Bool)

(assert (=> bm!274009 m!4234403))

(declare-fun m!4234405 () Bool)

(assert (=> bm!274010 m!4234405))

(assert (=> b!3738120 d!1091996))

(declare-fun d!1091998 () Bool)

(declare-fun nullableFct!1102 (Regex!10941) Bool)

(assert (=> d!1091998 (= (nullable!3849 (regOne!22394 r!26968)) (nullableFct!1102 (regOne!22394 r!26968)))))

(declare-fun bs!575197 () Bool)

(assert (= bs!575197 d!1091998))

(declare-fun m!4234407 () Bool)

(assert (=> bs!575197 m!4234407))

(assert (=> b!3738121 d!1091998))

(declare-fun b!3738293 () Bool)

(declare-fun res!1516234 () Bool)

(declare-fun e!2311921 () Bool)

(assert (=> b!3738293 (=> (not res!1516234) (not e!2311921))))

(declare-fun call!274025 () Bool)

(assert (=> b!3738293 (= res!1516234 call!274025)))

(declare-fun e!2311922 () Bool)

(assert (=> b!3738293 (= e!2311922 e!2311921)))

(declare-fun b!3738294 () Bool)

(declare-fun e!2311924 () Bool)

(declare-fun e!2311919 () Bool)

(assert (=> b!3738294 (= e!2311924 e!2311919)))

(declare-fun res!1516233 () Bool)

(assert (=> b!3738294 (=> (not res!1516233) (not e!2311919))))

(assert (=> b!3738294 (= res!1516233 call!274025)))

(declare-fun bm!274018 () Bool)

(declare-fun call!274023 () Bool)

(declare-fun call!274024 () Bool)

(assert (=> bm!274018 (= call!274023 call!274024)))

(declare-fun bm!274019 () Bool)

(declare-fun c!647553 () Bool)

(declare-fun c!647552 () Bool)

(assert (=> bm!274019 (= call!274024 (validRegex!5048 (ite c!647553 (reg!11270 (regOne!22394 r!26968)) (ite c!647552 (regTwo!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968))))))))

(declare-fun b!3738295 () Bool)

(declare-fun e!2311920 () Bool)

(assert (=> b!3738295 (= e!2311920 e!2311922)))

(assert (=> b!3738295 (= c!647552 ((_ is Union!10941) (regOne!22394 r!26968)))))

(declare-fun b!3738296 () Bool)

(declare-fun e!2311918 () Bool)

(assert (=> b!3738296 (= e!2311920 e!2311918)))

(declare-fun res!1516236 () Bool)

(assert (=> b!3738296 (= res!1516236 (not (nullable!3849 (reg!11270 (regOne!22394 r!26968)))))))

(assert (=> b!3738296 (=> (not res!1516236) (not e!2311918))))

(declare-fun b!3738297 () Bool)

(assert (=> b!3738297 (= e!2311921 call!274023)))

(declare-fun d!1092000 () Bool)

(declare-fun res!1516235 () Bool)

(declare-fun e!2311923 () Bool)

(assert (=> d!1092000 (=> res!1516235 e!2311923)))

(assert (=> d!1092000 (= res!1516235 ((_ is ElementMatch!10941) (regOne!22394 r!26968)))))

(assert (=> d!1092000 (= (validRegex!5048 (regOne!22394 r!26968)) e!2311923)))

(declare-fun bm!274020 () Bool)

(assert (=> bm!274020 (= call!274025 (validRegex!5048 (ite c!647552 (regOne!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))))))

(declare-fun b!3738298 () Bool)

(assert (=> b!3738298 (= e!2311919 call!274023)))

(declare-fun b!3738299 () Bool)

(assert (=> b!3738299 (= e!2311918 call!274024)))

(declare-fun b!3738300 () Bool)

(declare-fun res!1516237 () Bool)

(assert (=> b!3738300 (=> res!1516237 e!2311924)))

(assert (=> b!3738300 (= res!1516237 (not ((_ is Concat!17212) (regOne!22394 r!26968))))))

(assert (=> b!3738300 (= e!2311922 e!2311924)))

(declare-fun b!3738301 () Bool)

(assert (=> b!3738301 (= e!2311923 e!2311920)))

(assert (=> b!3738301 (= c!647553 ((_ is Star!10941) (regOne!22394 r!26968)))))

(assert (= (and d!1092000 (not res!1516235)) b!3738301))

(assert (= (and b!3738301 c!647553) b!3738296))

(assert (= (and b!3738301 (not c!647553)) b!3738295))

(assert (= (and b!3738296 res!1516236) b!3738299))

(assert (= (and b!3738295 c!647552) b!3738293))

(assert (= (and b!3738295 (not c!647552)) b!3738300))

(assert (= (and b!3738293 res!1516234) b!3738297))

(assert (= (and b!3738300 (not res!1516237)) b!3738294))

(assert (= (and b!3738294 res!1516233) b!3738298))

(assert (= (or b!3738297 b!3738298) bm!274018))

(assert (= (or b!3738293 b!3738294) bm!274020))

(assert (= (or b!3738299 bm!274018) bm!274019))

(declare-fun m!4234409 () Bool)

(assert (=> bm!274019 m!4234409))

(declare-fun m!4234411 () Bool)

(assert (=> b!3738296 m!4234411))

(declare-fun m!4234413 () Bool)

(assert (=> bm!274020 m!4234413))

(assert (=> b!3738127 d!1092000))

(declare-fun b!3738302 () Bool)

(declare-fun res!1516239 () Bool)

(declare-fun e!2311928 () Bool)

(assert (=> b!3738302 (=> (not res!1516239) (not e!2311928))))

(declare-fun call!274028 () Bool)

(assert (=> b!3738302 (= res!1516239 call!274028)))

(declare-fun e!2311929 () Bool)

(assert (=> b!3738302 (= e!2311929 e!2311928)))

(declare-fun b!3738303 () Bool)

(declare-fun e!2311931 () Bool)

(declare-fun e!2311926 () Bool)

(assert (=> b!3738303 (= e!2311931 e!2311926)))

(declare-fun res!1516238 () Bool)

(assert (=> b!3738303 (=> (not res!1516238) (not e!2311926))))

(assert (=> b!3738303 (= res!1516238 call!274028)))

(declare-fun bm!274021 () Bool)

(declare-fun call!274026 () Bool)

(declare-fun call!274027 () Bool)

(assert (=> bm!274021 (= call!274026 call!274027)))

(declare-fun bm!274022 () Bool)

(declare-fun c!647554 () Bool)

(declare-fun c!647555 () Bool)

(assert (=> bm!274022 (= call!274027 (validRegex!5048 (ite c!647555 (reg!11270 r!26968) (ite c!647554 (regTwo!22395 r!26968) (regTwo!22394 r!26968)))))))

(declare-fun b!3738304 () Bool)

(declare-fun e!2311927 () Bool)

(assert (=> b!3738304 (= e!2311927 e!2311929)))

(assert (=> b!3738304 (= c!647554 ((_ is Union!10941) r!26968))))

(declare-fun b!3738305 () Bool)

(declare-fun e!2311925 () Bool)

(assert (=> b!3738305 (= e!2311927 e!2311925)))

(declare-fun res!1516241 () Bool)

(assert (=> b!3738305 (= res!1516241 (not (nullable!3849 (reg!11270 r!26968))))))

(assert (=> b!3738305 (=> (not res!1516241) (not e!2311925))))

(declare-fun b!3738306 () Bool)

(assert (=> b!3738306 (= e!2311928 call!274026)))

(declare-fun d!1092002 () Bool)

(declare-fun res!1516240 () Bool)

(declare-fun e!2311930 () Bool)

(assert (=> d!1092002 (=> res!1516240 e!2311930)))

(assert (=> d!1092002 (= res!1516240 ((_ is ElementMatch!10941) r!26968))))

(assert (=> d!1092002 (= (validRegex!5048 r!26968) e!2311930)))

(declare-fun bm!274023 () Bool)

(assert (=> bm!274023 (= call!274028 (validRegex!5048 (ite c!647554 (regOne!22395 r!26968) (regOne!22394 r!26968))))))

(declare-fun b!3738307 () Bool)

(assert (=> b!3738307 (= e!2311926 call!274026)))

(declare-fun b!3738308 () Bool)

(assert (=> b!3738308 (= e!2311925 call!274027)))

(declare-fun b!3738309 () Bool)

(declare-fun res!1516242 () Bool)

(assert (=> b!3738309 (=> res!1516242 e!2311931)))

(assert (=> b!3738309 (= res!1516242 (not ((_ is Concat!17212) r!26968)))))

(assert (=> b!3738309 (= e!2311929 e!2311931)))

(declare-fun b!3738310 () Bool)

(assert (=> b!3738310 (= e!2311930 e!2311927)))

(assert (=> b!3738310 (= c!647555 ((_ is Star!10941) r!26968))))

(assert (= (and d!1092002 (not res!1516240)) b!3738310))

(assert (= (and b!3738310 c!647555) b!3738305))

(assert (= (and b!3738310 (not c!647555)) b!3738304))

(assert (= (and b!3738305 res!1516241) b!3738308))

(assert (= (and b!3738304 c!647554) b!3738302))

(assert (= (and b!3738304 (not c!647554)) b!3738309))

(assert (= (and b!3738302 res!1516239) b!3738306))

(assert (= (and b!3738309 (not res!1516242)) b!3738303))

(assert (= (and b!3738303 res!1516238) b!3738307))

(assert (= (or b!3738306 b!3738307) bm!274021))

(assert (= (or b!3738302 b!3738303) bm!274023))

(assert (= (or b!3738308 bm!274021) bm!274022))

(declare-fun m!4234415 () Bool)

(assert (=> bm!274022 m!4234415))

(declare-fun m!4234417 () Bool)

(assert (=> b!3738305 m!4234417))

(declare-fun m!4234419 () Bool)

(assert (=> bm!274023 m!4234419))

(assert (=> start!351262 d!1092002))

(declare-fun b!3738323 () Bool)

(declare-fun e!2311934 () Bool)

(declare-fun tp!1138480 () Bool)

(assert (=> b!3738323 (= e!2311934 tp!1138480)))

(declare-fun b!3738324 () Bool)

(declare-fun tp!1138482 () Bool)

(declare-fun tp!1138481 () Bool)

(assert (=> b!3738324 (= e!2311934 (and tp!1138482 tp!1138481))))

(declare-fun b!3738322 () Bool)

(declare-fun tp!1138483 () Bool)

(declare-fun tp!1138484 () Bool)

(assert (=> b!3738322 (= e!2311934 (and tp!1138483 tp!1138484))))

(assert (=> b!3738124 (= tp!1138434 e!2311934)))

(declare-fun b!3738321 () Bool)

(assert (=> b!3738321 (= e!2311934 tp_is_empty!18897)))

(assert (= (and b!3738124 ((_ is ElementMatch!10941) (reg!11270 r!26968))) b!3738321))

(assert (= (and b!3738124 ((_ is Concat!17212) (reg!11270 r!26968))) b!3738322))

(assert (= (and b!3738124 ((_ is Star!10941) (reg!11270 r!26968))) b!3738323))

(assert (= (and b!3738124 ((_ is Union!10941) (reg!11270 r!26968))) b!3738324))

(declare-fun b!3738327 () Bool)

(declare-fun e!2311935 () Bool)

(declare-fun tp!1138485 () Bool)

(assert (=> b!3738327 (= e!2311935 tp!1138485)))

(declare-fun b!3738328 () Bool)

(declare-fun tp!1138487 () Bool)

(declare-fun tp!1138486 () Bool)

(assert (=> b!3738328 (= e!2311935 (and tp!1138487 tp!1138486))))

(declare-fun b!3738326 () Bool)

(declare-fun tp!1138488 () Bool)

(declare-fun tp!1138489 () Bool)

(assert (=> b!3738326 (= e!2311935 (and tp!1138488 tp!1138489))))

(assert (=> b!3738126 (= tp!1138433 e!2311935)))

(declare-fun b!3738325 () Bool)

(assert (=> b!3738325 (= e!2311935 tp_is_empty!18897)))

(assert (= (and b!3738126 ((_ is ElementMatch!10941) (regOne!22394 r!26968))) b!3738325))

(assert (= (and b!3738126 ((_ is Concat!17212) (regOne!22394 r!26968))) b!3738326))

(assert (= (and b!3738126 ((_ is Star!10941) (regOne!22394 r!26968))) b!3738327))

(assert (= (and b!3738126 ((_ is Union!10941) (regOne!22394 r!26968))) b!3738328))

(declare-fun b!3738331 () Bool)

(declare-fun e!2311936 () Bool)

(declare-fun tp!1138490 () Bool)

(assert (=> b!3738331 (= e!2311936 tp!1138490)))

(declare-fun b!3738332 () Bool)

(declare-fun tp!1138492 () Bool)

(declare-fun tp!1138491 () Bool)

(assert (=> b!3738332 (= e!2311936 (and tp!1138492 tp!1138491))))

(declare-fun b!3738330 () Bool)

(declare-fun tp!1138493 () Bool)

(declare-fun tp!1138494 () Bool)

(assert (=> b!3738330 (= e!2311936 (and tp!1138493 tp!1138494))))

(assert (=> b!3738126 (= tp!1138431 e!2311936)))

(declare-fun b!3738329 () Bool)

(assert (=> b!3738329 (= e!2311936 tp_is_empty!18897)))

(assert (= (and b!3738126 ((_ is ElementMatch!10941) (regTwo!22394 r!26968))) b!3738329))

(assert (= (and b!3738126 ((_ is Concat!17212) (regTwo!22394 r!26968))) b!3738330))

(assert (= (and b!3738126 ((_ is Star!10941) (regTwo!22394 r!26968))) b!3738331))

(assert (= (and b!3738126 ((_ is Union!10941) (regTwo!22394 r!26968))) b!3738332))

(declare-fun b!3738335 () Bool)

(declare-fun e!2311937 () Bool)

(declare-fun tp!1138495 () Bool)

(assert (=> b!3738335 (= e!2311937 tp!1138495)))

(declare-fun b!3738336 () Bool)

(declare-fun tp!1138497 () Bool)

(declare-fun tp!1138496 () Bool)

(assert (=> b!3738336 (= e!2311937 (and tp!1138497 tp!1138496))))

(declare-fun b!3738334 () Bool)

(declare-fun tp!1138498 () Bool)

(declare-fun tp!1138499 () Bool)

(assert (=> b!3738334 (= e!2311937 (and tp!1138498 tp!1138499))))

(assert (=> b!3738122 (= tp!1138432 e!2311937)))

(declare-fun b!3738333 () Bool)

(assert (=> b!3738333 (= e!2311937 tp_is_empty!18897)))

(assert (= (and b!3738122 ((_ is ElementMatch!10941) (regOne!22395 r!26968))) b!3738333))

(assert (= (and b!3738122 ((_ is Concat!17212) (regOne!22395 r!26968))) b!3738334))

(assert (= (and b!3738122 ((_ is Star!10941) (regOne!22395 r!26968))) b!3738335))

(assert (= (and b!3738122 ((_ is Union!10941) (regOne!22395 r!26968))) b!3738336))

(declare-fun b!3738339 () Bool)

(declare-fun e!2311938 () Bool)

(declare-fun tp!1138500 () Bool)

(assert (=> b!3738339 (= e!2311938 tp!1138500)))

(declare-fun b!3738340 () Bool)

(declare-fun tp!1138502 () Bool)

(declare-fun tp!1138501 () Bool)

(assert (=> b!3738340 (= e!2311938 (and tp!1138502 tp!1138501))))

(declare-fun b!3738338 () Bool)

(declare-fun tp!1138503 () Bool)

(declare-fun tp!1138504 () Bool)

(assert (=> b!3738338 (= e!2311938 (and tp!1138503 tp!1138504))))

(assert (=> b!3738122 (= tp!1138430 e!2311938)))

(declare-fun b!3738337 () Bool)

(assert (=> b!3738337 (= e!2311938 tp_is_empty!18897)))

(assert (= (and b!3738122 ((_ is ElementMatch!10941) (regTwo!22395 r!26968))) b!3738337))

(assert (= (and b!3738122 ((_ is Concat!17212) (regTwo!22395 r!26968))) b!3738338))

(assert (= (and b!3738122 ((_ is Star!10941) (regTwo!22395 r!26968))) b!3738339))

(assert (= (and b!3738122 ((_ is Union!10941) (regTwo!22395 r!26968))) b!3738340))

(check-sat (not bm!274020) (not b!3738324) (not b!3738332) (not b!3738338) (not b!3738327) (not b!3738322) (not bm!274022) (not b!3738164) (not b!3738326) (not b!3738331) (not d!1091998) (not b!3738305) (not bm!274006) (not bm!274008) (not b!3738339) (not b!3738335) (not b!3738296) (not bm!274010) (not b!3738334) (not bm!274009) (not b!3738330) (not b!3738328) (not d!1091980) (not b!3738266) (not bm!274004) tp_is_empty!18897 (not bm!274019) (not bm!274005) (not b!3738340) (not b!3738323) (not d!1091994) (not bm!274023) (not b!3738336))
(check-sat)
(get-model)

(declare-fun b!3738558 () Bool)

(declare-fun res!1516291 () Bool)

(declare-fun e!2312045 () Bool)

(assert (=> b!3738558 (=> (not res!1516291) (not e!2312045))))

(declare-fun call!274065 () Bool)

(assert (=> b!3738558 (= res!1516291 call!274065)))

(declare-fun e!2312046 () Bool)

(assert (=> b!3738558 (= e!2312046 e!2312045)))

(declare-fun b!3738559 () Bool)

(declare-fun e!2312048 () Bool)

(declare-fun e!2312043 () Bool)

(assert (=> b!3738559 (= e!2312048 e!2312043)))

(declare-fun res!1516290 () Bool)

(assert (=> b!3738559 (=> (not res!1516290) (not e!2312043))))

(assert (=> b!3738559 (= res!1516290 call!274065)))

(declare-fun bm!274058 () Bool)

(declare-fun call!274063 () Bool)

(declare-fun call!274064 () Bool)

(assert (=> bm!274058 (= call!274063 call!274064)))

(declare-fun c!647592 () Bool)

(declare-fun c!647591 () Bool)

(declare-fun bm!274059 () Bool)

(assert (=> bm!274059 (= call!274064 (validRegex!5048 (ite c!647592 (reg!11270 (ite c!647554 (regOne!22395 r!26968) (regOne!22394 r!26968))) (ite c!647591 (regTwo!22395 (ite c!647554 (regOne!22395 r!26968) (regOne!22394 r!26968))) (regTwo!22394 (ite c!647554 (regOne!22395 r!26968) (regOne!22394 r!26968)))))))))

(declare-fun b!3738560 () Bool)

(declare-fun e!2312044 () Bool)

(assert (=> b!3738560 (= e!2312044 e!2312046)))

(assert (=> b!3738560 (= c!647591 ((_ is Union!10941) (ite c!647554 (regOne!22395 r!26968) (regOne!22394 r!26968))))))

(declare-fun b!3738561 () Bool)

(declare-fun e!2312042 () Bool)

(assert (=> b!3738561 (= e!2312044 e!2312042)))

(declare-fun res!1516293 () Bool)

(assert (=> b!3738561 (= res!1516293 (not (nullable!3849 (reg!11270 (ite c!647554 (regOne!22395 r!26968) (regOne!22394 r!26968))))))))

(assert (=> b!3738561 (=> (not res!1516293) (not e!2312042))))

(declare-fun b!3738562 () Bool)

(assert (=> b!3738562 (= e!2312045 call!274063)))

(declare-fun d!1092038 () Bool)

(declare-fun res!1516292 () Bool)

(declare-fun e!2312047 () Bool)

(assert (=> d!1092038 (=> res!1516292 e!2312047)))

(assert (=> d!1092038 (= res!1516292 ((_ is ElementMatch!10941) (ite c!647554 (regOne!22395 r!26968) (regOne!22394 r!26968))))))

(assert (=> d!1092038 (= (validRegex!5048 (ite c!647554 (regOne!22395 r!26968) (regOne!22394 r!26968))) e!2312047)))

(declare-fun bm!274060 () Bool)

(assert (=> bm!274060 (= call!274065 (validRegex!5048 (ite c!647591 (regOne!22395 (ite c!647554 (regOne!22395 r!26968) (regOne!22394 r!26968))) (regOne!22394 (ite c!647554 (regOne!22395 r!26968) (regOne!22394 r!26968))))))))

(declare-fun b!3738563 () Bool)

(assert (=> b!3738563 (= e!2312043 call!274063)))

(declare-fun b!3738564 () Bool)

(assert (=> b!3738564 (= e!2312042 call!274064)))

(declare-fun b!3738565 () Bool)

(declare-fun res!1516294 () Bool)

(assert (=> b!3738565 (=> res!1516294 e!2312048)))

(assert (=> b!3738565 (= res!1516294 (not ((_ is Concat!17212) (ite c!647554 (regOne!22395 r!26968) (regOne!22394 r!26968)))))))

(assert (=> b!3738565 (= e!2312046 e!2312048)))

(declare-fun b!3738566 () Bool)

(assert (=> b!3738566 (= e!2312047 e!2312044)))

(assert (=> b!3738566 (= c!647592 ((_ is Star!10941) (ite c!647554 (regOne!22395 r!26968) (regOne!22394 r!26968))))))

(assert (= (and d!1092038 (not res!1516292)) b!3738566))

(assert (= (and b!3738566 c!647592) b!3738561))

(assert (= (and b!3738566 (not c!647592)) b!3738560))

(assert (= (and b!3738561 res!1516293) b!3738564))

(assert (= (and b!3738560 c!647591) b!3738558))

(assert (= (and b!3738560 (not c!647591)) b!3738565))

(assert (= (and b!3738558 res!1516291) b!3738562))

(assert (= (and b!3738565 (not res!1516294)) b!3738559))

(assert (= (and b!3738559 res!1516290) b!3738563))

(assert (= (or b!3738562 b!3738563) bm!274058))

(assert (= (or b!3738558 b!3738559) bm!274060))

(assert (= (or b!3738564 bm!274058) bm!274059))

(declare-fun m!4234521 () Bool)

(assert (=> bm!274059 m!4234521))

(declare-fun m!4234523 () Bool)

(assert (=> b!3738561 m!4234523))

(declare-fun m!4234525 () Bool)

(assert (=> bm!274060 m!4234525))

(assert (=> bm!274023 d!1092038))

(declare-fun b!3738575 () Bool)

(declare-fun e!2312053 () List!39822)

(assert (=> b!3738575 (= e!2312053 (ite c!647546 call!274016 call!274014))))

(declare-fun e!2312054 () Bool)

(declare-fun b!3738578 () Bool)

(declare-fun lt!1299095 () List!39822)

(assert (=> b!3738578 (= e!2312054 (or (not (= (ite c!647546 call!274016 call!274014) Nil!39698)) (= lt!1299095 (ite c!647546 call!274014 call!274016))))))

(declare-fun b!3738577 () Bool)

(declare-fun res!1516299 () Bool)

(assert (=> b!3738577 (=> (not res!1516299) (not e!2312054))))

(declare-fun size!30048 (List!39822) Int)

(assert (=> b!3738577 (= res!1516299 (= (size!30048 lt!1299095) (+ (size!30048 (ite c!647546 call!274014 call!274016)) (size!30048 (ite c!647546 call!274016 call!274014)))))))

(declare-fun d!1092040 () Bool)

(assert (=> d!1092040 e!2312054))

(declare-fun res!1516300 () Bool)

(assert (=> d!1092040 (=> (not res!1516300) (not e!2312054))))

(assert (=> d!1092040 (= res!1516300 (= (content!5798 lt!1299095) ((_ map or) (content!5798 (ite c!647546 call!274014 call!274016)) (content!5798 (ite c!647546 call!274016 call!274014)))))))

(assert (=> d!1092040 (= lt!1299095 e!2312053)))

(declare-fun c!647595 () Bool)

(assert (=> d!1092040 (= c!647595 ((_ is Nil!39698) (ite c!647546 call!274014 call!274016)))))

(assert (=> d!1092040 (= (++!9865 (ite c!647546 call!274014 call!274016) (ite c!647546 call!274016 call!274014)) lt!1299095)))

(declare-fun b!3738576 () Bool)

(assert (=> b!3738576 (= e!2312053 (Cons!39698 (h!45118 (ite c!647546 call!274014 call!274016)) (++!9865 (t!302505 (ite c!647546 call!274014 call!274016)) (ite c!647546 call!274016 call!274014))))))

(assert (= (and d!1092040 c!647595) b!3738575))

(assert (= (and d!1092040 (not c!647595)) b!3738576))

(assert (= (and d!1092040 res!1516300) b!3738577))

(assert (= (and b!3738577 res!1516299) b!3738578))

(declare-fun m!4234527 () Bool)

(assert (=> b!3738577 m!4234527))

(declare-fun m!4234529 () Bool)

(assert (=> b!3738577 m!4234529))

(declare-fun m!4234531 () Bool)

(assert (=> b!3738577 m!4234531))

(declare-fun m!4234533 () Bool)

(assert (=> d!1092040 m!4234533))

(declare-fun m!4234535 () Bool)

(assert (=> d!1092040 m!4234535))

(declare-fun m!4234537 () Bool)

(assert (=> d!1092040 m!4234537))

(declare-fun m!4234539 () Bool)

(assert (=> b!3738576 m!4234539))

(assert (=> bm!274008 d!1092040))

(declare-fun b!3738579 () Bool)

(declare-fun e!2312057 () List!39822)

(declare-fun call!274066 () List!39822)

(assert (=> b!3738579 (= e!2312057 call!274066)))

(declare-fun c!647598 () Bool)

(declare-fun call!274069 () List!39822)

(declare-fun call!274067 () List!39822)

(declare-fun bm!274061 () Bool)

(assert (=> bm!274061 (= call!274066 (++!9865 (ite c!647598 call!274067 call!274069) (ite c!647598 call!274069 call!274067)))))

(declare-fun b!3738580 () Bool)

(declare-fun e!2312058 () List!39822)

(assert (=> b!3738580 (= e!2312058 Nil!39698)))

(declare-fun b!3738581 () Bool)

(declare-fun c!647599 () Bool)

(assert (=> b!3738581 (= c!647599 ((_ is Star!10941) (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))))))

(declare-fun e!2312055 () List!39822)

(declare-fun e!2312056 () List!39822)

(assert (=> b!3738581 (= e!2312055 e!2312056)))

(declare-fun b!3738582 () Bool)

(declare-fun call!274068 () List!39822)

(assert (=> b!3738582 (= e!2312056 call!274068)))

(declare-fun bm!274062 () Bool)

(assert (=> bm!274062 (= call!274068 (usedCharacters!1204 (ite c!647599 (reg!11270 (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))) (ite c!647598 (regTwo!22395 (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))) (regOne!22394 (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))))))))))

(declare-fun c!647596 () Bool)

(declare-fun d!1092042 () Bool)

(assert (=> d!1092042 (= c!647596 (or ((_ is EmptyExpr!10941) (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))) ((_ is EmptyLang!10941) (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))))))))

(assert (=> d!1092042 (= (usedCharacters!1204 (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))) e!2312058)))

(declare-fun b!3738583 () Bool)

(assert (=> b!3738583 (= e!2312056 e!2312057)))

(assert (=> b!3738583 (= c!647598 ((_ is Union!10941) (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))))))

(declare-fun b!3738584 () Bool)

(assert (=> b!3738584 (= e!2312058 e!2312055)))

(declare-fun c!647597 () Bool)

(assert (=> b!3738584 (= c!647597 ((_ is ElementMatch!10941) (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))))))

(declare-fun b!3738585 () Bool)

(assert (=> b!3738585 (= e!2312055 (Cons!39698 (c!647507 (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))) Nil!39698))))

(declare-fun b!3738586 () Bool)

(assert (=> b!3738586 (= e!2312057 call!274066)))

(declare-fun bm!274063 () Bool)

(assert (=> bm!274063 (= call!274067 (usedCharacters!1204 (ite c!647598 (regOne!22395 (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))) (regTwo!22394 (ite c!647543 (reg!11270 (regOne!22394 r!26968)) (ite c!647542 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))))))))

(declare-fun bm!274064 () Bool)

(assert (=> bm!274064 (= call!274069 call!274068)))

(assert (= (and d!1092042 c!647596) b!3738580))

(assert (= (and d!1092042 (not c!647596)) b!3738584))

(assert (= (and b!3738584 c!647597) b!3738585))

(assert (= (and b!3738584 (not c!647597)) b!3738581))

(assert (= (and b!3738581 c!647599) b!3738582))

(assert (= (and b!3738581 (not c!647599)) b!3738583))

(assert (= (and b!3738583 c!647598) b!3738579))

(assert (= (and b!3738583 (not c!647598)) b!3738586))

(assert (= (or b!3738579 b!3738586) bm!274063))

(assert (= (or b!3738579 b!3738586) bm!274064))

(assert (= (or b!3738579 b!3738586) bm!274061))

(assert (= (or b!3738582 bm!274064) bm!274062))

(declare-fun m!4234541 () Bool)

(assert (=> bm!274061 m!4234541))

(declare-fun m!4234543 () Bool)

(assert (=> bm!274062 m!4234543))

(declare-fun m!4234545 () Bool)

(assert (=> bm!274063 m!4234545))

(assert (=> bm!274005 d!1092042))

(declare-fun d!1092044 () Bool)

(declare-fun lt!1299096 () Bool)

(assert (=> d!1092044 (= lt!1299096 (select (content!5798 (t!302505 (usedCharacters!1204 r!26968))) cNot!42))))

(declare-fun e!2312059 () Bool)

(assert (=> d!1092044 (= lt!1299096 e!2312059)))

(declare-fun res!1516301 () Bool)

(assert (=> d!1092044 (=> (not res!1516301) (not e!2312059))))

(assert (=> d!1092044 (= res!1516301 ((_ is Cons!39698) (t!302505 (usedCharacters!1204 r!26968))))))

(assert (=> d!1092044 (= (contains!8034 (t!302505 (usedCharacters!1204 r!26968)) cNot!42) lt!1299096)))

(declare-fun b!3738587 () Bool)

(declare-fun e!2312060 () Bool)

(assert (=> b!3738587 (= e!2312059 e!2312060)))

(declare-fun res!1516302 () Bool)

(assert (=> b!3738587 (=> res!1516302 e!2312060)))

(assert (=> b!3738587 (= res!1516302 (= (h!45118 (t!302505 (usedCharacters!1204 r!26968))) cNot!42))))

(declare-fun b!3738588 () Bool)

(assert (=> b!3738588 (= e!2312060 (contains!8034 (t!302505 (t!302505 (usedCharacters!1204 r!26968))) cNot!42))))

(assert (= (and d!1092044 res!1516301) b!3738587))

(assert (= (and b!3738587 (not res!1516302)) b!3738588))

(declare-fun m!4234547 () Bool)

(assert (=> d!1092044 m!4234547))

(declare-fun m!4234549 () Bool)

(assert (=> d!1092044 m!4234549))

(declare-fun m!4234551 () Bool)

(assert (=> b!3738588 m!4234551))

(assert (=> b!3738266 d!1092044))

(declare-fun d!1092046 () Bool)

(assert (=> d!1092046 (= (nullable!3849 (reg!11270 r!26968)) (nullableFct!1102 (reg!11270 r!26968)))))

(declare-fun bs!575200 () Bool)

(assert (= bs!575200 d!1092046))

(declare-fun m!4234553 () Bool)

(assert (=> bs!575200 m!4234553))

(assert (=> b!3738305 d!1092046))

(declare-fun b!3738589 () Bool)

(declare-fun e!2312063 () List!39822)

(declare-fun call!274070 () List!39822)

(assert (=> b!3738589 (= e!2312063 call!274070)))

(declare-fun c!647602 () Bool)

(declare-fun bm!274065 () Bool)

(declare-fun call!274073 () List!39822)

(declare-fun call!274071 () List!39822)

(assert (=> bm!274065 (= call!274070 (++!9865 (ite c!647602 call!274071 call!274073) (ite c!647602 call!274073 call!274071)))))

(declare-fun b!3738590 () Bool)

(declare-fun e!2312064 () List!39822)

(assert (=> b!3738590 (= e!2312064 Nil!39698)))

(declare-fun b!3738591 () Bool)

(declare-fun c!647603 () Bool)

(assert (=> b!3738591 (= c!647603 ((_ is Star!10941) (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968))))))

(declare-fun e!2312061 () List!39822)

(declare-fun e!2312062 () List!39822)

(assert (=> b!3738591 (= e!2312061 e!2312062)))

(declare-fun b!3738592 () Bool)

(declare-fun call!274072 () List!39822)

(assert (=> b!3738592 (= e!2312062 call!274072)))

(declare-fun bm!274066 () Bool)

(assert (=> bm!274066 (= call!274072 (usedCharacters!1204 (ite c!647603 (reg!11270 (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968))) (ite c!647602 (regTwo!22395 (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968))) (regOne!22394 (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968)))))))))

(declare-fun d!1092048 () Bool)

(declare-fun c!647600 () Bool)

(assert (=> d!1092048 (= c!647600 (or ((_ is EmptyExpr!10941) (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968))) ((_ is EmptyLang!10941) (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968)))))))

(assert (=> d!1092048 (= (usedCharacters!1204 (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968))) e!2312064)))

(declare-fun b!3738593 () Bool)

(assert (=> b!3738593 (= e!2312062 e!2312063)))

(assert (=> b!3738593 (= c!647602 ((_ is Union!10941) (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968))))))

(declare-fun b!3738594 () Bool)

(assert (=> b!3738594 (= e!2312064 e!2312061)))

(declare-fun c!647601 () Bool)

(assert (=> b!3738594 (= c!647601 ((_ is ElementMatch!10941) (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968))))))

(declare-fun b!3738595 () Bool)

(assert (=> b!3738595 (= e!2312061 (Cons!39698 (c!647507 (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968))) Nil!39698))))

(declare-fun b!3738596 () Bool)

(assert (=> b!3738596 (= e!2312063 call!274070)))

(declare-fun bm!274067 () Bool)

(assert (=> bm!274067 (= call!274071 (usedCharacters!1204 (ite c!647602 (regOne!22395 (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968))) (regTwo!22394 (ite c!647546 (regOne!22395 r!26968) (regTwo!22394 r!26968))))))))

(declare-fun bm!274068 () Bool)

(assert (=> bm!274068 (= call!274073 call!274072)))

(assert (= (and d!1092048 c!647600) b!3738590))

(assert (= (and d!1092048 (not c!647600)) b!3738594))

(assert (= (and b!3738594 c!647601) b!3738595))

(assert (= (and b!3738594 (not c!647601)) b!3738591))

(assert (= (and b!3738591 c!647603) b!3738592))

(assert (= (and b!3738591 (not c!647603)) b!3738593))

(assert (= (and b!3738593 c!647602) b!3738589))

(assert (= (and b!3738593 (not c!647602)) b!3738596))

(assert (= (or b!3738589 b!3738596) bm!274067))

(assert (= (or b!3738589 b!3738596) bm!274068))

(assert (= (or b!3738589 b!3738596) bm!274065))

(assert (= (or b!3738592 bm!274068) bm!274066))

(declare-fun m!4234555 () Bool)

(assert (=> bm!274065 m!4234555))

(declare-fun m!4234557 () Bool)

(assert (=> bm!274066 m!4234557))

(declare-fun m!4234559 () Bool)

(assert (=> bm!274067 m!4234559))

(assert (=> bm!274010 d!1092048))

(declare-fun d!1092050 () Bool)

(declare-fun lt!1299097 () Bool)

(assert (=> d!1092050 (= lt!1299097 (select (content!5798 (t!302505 (usedCharacters!1204 (regOne!22394 r!26968)))) cNot!42))))

(declare-fun e!2312065 () Bool)

(assert (=> d!1092050 (= lt!1299097 e!2312065)))

(declare-fun res!1516303 () Bool)

(assert (=> d!1092050 (=> (not res!1516303) (not e!2312065))))

(assert (=> d!1092050 (= res!1516303 ((_ is Cons!39698) (t!302505 (usedCharacters!1204 (regOne!22394 r!26968)))))))

(assert (=> d!1092050 (= (contains!8034 (t!302505 (usedCharacters!1204 (regOne!22394 r!26968))) cNot!42) lt!1299097)))

(declare-fun b!3738597 () Bool)

(declare-fun e!2312066 () Bool)

(assert (=> b!3738597 (= e!2312065 e!2312066)))

(declare-fun res!1516304 () Bool)

(assert (=> b!3738597 (=> res!1516304 e!2312066)))

(assert (=> b!3738597 (= res!1516304 (= (h!45118 (t!302505 (usedCharacters!1204 (regOne!22394 r!26968)))) cNot!42))))

(declare-fun b!3738598 () Bool)

(assert (=> b!3738598 (= e!2312066 (contains!8034 (t!302505 (t!302505 (usedCharacters!1204 (regOne!22394 r!26968)))) cNot!42))))

(assert (= (and d!1092050 res!1516303) b!3738597))

(assert (= (and b!3738597 (not res!1516304)) b!3738598))

(declare-fun m!4234561 () Bool)

(assert (=> d!1092050 m!4234561))

(declare-fun m!4234563 () Bool)

(assert (=> d!1092050 m!4234563))

(declare-fun m!4234565 () Bool)

(assert (=> b!3738598 m!4234565))

(assert (=> b!3738164 d!1092050))

(declare-fun b!3738613 () Bool)

(declare-fun e!2312079 () Bool)

(declare-fun e!2312080 () Bool)

(assert (=> b!3738613 (= e!2312079 e!2312080)))

(declare-fun res!1516316 () Bool)

(assert (=> b!3738613 (=> (not res!1516316) (not e!2312080))))

(assert (=> b!3738613 (= res!1516316 (and (not ((_ is EmptyLang!10941) (regOne!22394 r!26968))) (not ((_ is ElementMatch!10941) (regOne!22394 r!26968)))))))

(declare-fun b!3738614 () Bool)

(declare-fun e!2312083 () Bool)

(declare-fun e!2312081 () Bool)

(assert (=> b!3738614 (= e!2312083 e!2312081)))

(declare-fun res!1516317 () Bool)

(declare-fun call!274078 () Bool)

(assert (=> b!3738614 (= res!1516317 call!274078)))

(assert (=> b!3738614 (=> res!1516317 e!2312081)))

(declare-fun d!1092052 () Bool)

(declare-fun res!1516315 () Bool)

(assert (=> d!1092052 (=> res!1516315 e!2312079)))

(assert (=> d!1092052 (= res!1516315 ((_ is EmptyExpr!10941) (regOne!22394 r!26968)))))

(assert (=> d!1092052 (= (nullableFct!1102 (regOne!22394 r!26968)) e!2312079)))

(declare-fun b!3738615 () Bool)

(declare-fun call!274079 () Bool)

(assert (=> b!3738615 (= e!2312081 call!274079)))

(declare-fun bm!274073 () Bool)

(declare-fun c!647606 () Bool)

(assert (=> bm!274073 (= call!274078 (nullable!3849 (ite c!647606 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))))))

(declare-fun b!3738616 () Bool)

(declare-fun e!2312084 () Bool)

(assert (=> b!3738616 (= e!2312080 e!2312084)))

(declare-fun res!1516318 () Bool)

(assert (=> b!3738616 (=> res!1516318 e!2312084)))

(assert (=> b!3738616 (= res!1516318 ((_ is Star!10941) (regOne!22394 r!26968)))))

(declare-fun b!3738617 () Bool)

(assert (=> b!3738617 (= e!2312084 e!2312083)))

(assert (=> b!3738617 (= c!647606 ((_ is Union!10941) (regOne!22394 r!26968)))))

(declare-fun bm!274074 () Bool)

(assert (=> bm!274074 (= call!274079 (nullable!3849 (ite c!647606 (regTwo!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))))))

(declare-fun b!3738618 () Bool)

(declare-fun e!2312082 () Bool)

(assert (=> b!3738618 (= e!2312083 e!2312082)))

(declare-fun res!1516319 () Bool)

(assert (=> b!3738618 (= res!1516319 call!274079)))

(assert (=> b!3738618 (=> (not res!1516319) (not e!2312082))))

(declare-fun b!3738619 () Bool)

(assert (=> b!3738619 (= e!2312082 call!274078)))

(assert (= (and d!1092052 (not res!1516315)) b!3738613))

(assert (= (and b!3738613 res!1516316) b!3738616))

(assert (= (and b!3738616 (not res!1516318)) b!3738617))

(assert (= (and b!3738617 c!647606) b!3738614))

(assert (= (and b!3738617 (not c!647606)) b!3738618))

(assert (= (and b!3738614 (not res!1516317)) b!3738615))

(assert (= (and b!3738618 res!1516319) b!3738619))

(assert (= (or b!3738615 b!3738618) bm!274074))

(assert (= (or b!3738614 b!3738619) bm!274073))

(declare-fun m!4234567 () Bool)

(assert (=> bm!274073 m!4234567))

(declare-fun m!4234569 () Bool)

(assert (=> bm!274074 m!4234569))

(assert (=> d!1091998 d!1092052))

(declare-fun b!3738620 () Bool)

(declare-fun res!1516321 () Bool)

(declare-fun e!2312088 () Bool)

(assert (=> b!3738620 (=> (not res!1516321) (not e!2312088))))

(declare-fun call!274082 () Bool)

(assert (=> b!3738620 (= res!1516321 call!274082)))

(declare-fun e!2312089 () Bool)

(assert (=> b!3738620 (= e!2312089 e!2312088)))

(declare-fun b!3738621 () Bool)

(declare-fun e!2312091 () Bool)

(declare-fun e!2312086 () Bool)

(assert (=> b!3738621 (= e!2312091 e!2312086)))

(declare-fun res!1516320 () Bool)

(assert (=> b!3738621 (=> (not res!1516320) (not e!2312086))))

(assert (=> b!3738621 (= res!1516320 call!274082)))

(declare-fun bm!274075 () Bool)

(declare-fun call!274080 () Bool)

(declare-fun call!274081 () Bool)

(assert (=> bm!274075 (= call!274080 call!274081)))

(declare-fun c!647607 () Bool)

(declare-fun c!647608 () Bool)

(declare-fun bm!274076 () Bool)

(assert (=> bm!274076 (= call!274081 (validRegex!5048 (ite c!647608 (reg!11270 (ite c!647555 (reg!11270 r!26968) (ite c!647554 (regTwo!22395 r!26968) (regTwo!22394 r!26968)))) (ite c!647607 (regTwo!22395 (ite c!647555 (reg!11270 r!26968) (ite c!647554 (regTwo!22395 r!26968) (regTwo!22394 r!26968)))) (regTwo!22394 (ite c!647555 (reg!11270 r!26968) (ite c!647554 (regTwo!22395 r!26968) (regTwo!22394 r!26968))))))))))

(declare-fun b!3738622 () Bool)

(declare-fun e!2312087 () Bool)

(assert (=> b!3738622 (= e!2312087 e!2312089)))

(assert (=> b!3738622 (= c!647607 ((_ is Union!10941) (ite c!647555 (reg!11270 r!26968) (ite c!647554 (regTwo!22395 r!26968) (regTwo!22394 r!26968)))))))

(declare-fun b!3738623 () Bool)

(declare-fun e!2312085 () Bool)

(assert (=> b!3738623 (= e!2312087 e!2312085)))

(declare-fun res!1516323 () Bool)

(assert (=> b!3738623 (= res!1516323 (not (nullable!3849 (reg!11270 (ite c!647555 (reg!11270 r!26968) (ite c!647554 (regTwo!22395 r!26968) (regTwo!22394 r!26968)))))))))

(assert (=> b!3738623 (=> (not res!1516323) (not e!2312085))))

(declare-fun b!3738624 () Bool)

(assert (=> b!3738624 (= e!2312088 call!274080)))

(declare-fun d!1092054 () Bool)

(declare-fun res!1516322 () Bool)

(declare-fun e!2312090 () Bool)

(assert (=> d!1092054 (=> res!1516322 e!2312090)))

(assert (=> d!1092054 (= res!1516322 ((_ is ElementMatch!10941) (ite c!647555 (reg!11270 r!26968) (ite c!647554 (regTwo!22395 r!26968) (regTwo!22394 r!26968)))))))

(assert (=> d!1092054 (= (validRegex!5048 (ite c!647555 (reg!11270 r!26968) (ite c!647554 (regTwo!22395 r!26968) (regTwo!22394 r!26968)))) e!2312090)))

(declare-fun bm!274077 () Bool)

(assert (=> bm!274077 (= call!274082 (validRegex!5048 (ite c!647607 (regOne!22395 (ite c!647555 (reg!11270 r!26968) (ite c!647554 (regTwo!22395 r!26968) (regTwo!22394 r!26968)))) (regOne!22394 (ite c!647555 (reg!11270 r!26968) (ite c!647554 (regTwo!22395 r!26968) (regTwo!22394 r!26968)))))))))

(declare-fun b!3738625 () Bool)

(assert (=> b!3738625 (= e!2312086 call!274080)))

(declare-fun b!3738626 () Bool)

(assert (=> b!3738626 (= e!2312085 call!274081)))

(declare-fun b!3738627 () Bool)

(declare-fun res!1516324 () Bool)

(assert (=> b!3738627 (=> res!1516324 e!2312091)))

(assert (=> b!3738627 (= res!1516324 (not ((_ is Concat!17212) (ite c!647555 (reg!11270 r!26968) (ite c!647554 (regTwo!22395 r!26968) (regTwo!22394 r!26968))))))))

(assert (=> b!3738627 (= e!2312089 e!2312091)))

(declare-fun b!3738628 () Bool)

(assert (=> b!3738628 (= e!2312090 e!2312087)))

(assert (=> b!3738628 (= c!647608 ((_ is Star!10941) (ite c!647555 (reg!11270 r!26968) (ite c!647554 (regTwo!22395 r!26968) (regTwo!22394 r!26968)))))))

(assert (= (and d!1092054 (not res!1516322)) b!3738628))

(assert (= (and b!3738628 c!647608) b!3738623))

(assert (= (and b!3738628 (not c!647608)) b!3738622))

(assert (= (and b!3738623 res!1516323) b!3738626))

(assert (= (and b!3738622 c!647607) b!3738620))

(assert (= (and b!3738622 (not c!647607)) b!3738627))

(assert (= (and b!3738620 res!1516321) b!3738624))

(assert (= (and b!3738627 (not res!1516324)) b!3738621))

(assert (= (and b!3738621 res!1516320) b!3738625))

(assert (= (or b!3738624 b!3738625) bm!274075))

(assert (= (or b!3738620 b!3738621) bm!274077))

(assert (= (or b!3738626 bm!274075) bm!274076))

(declare-fun m!4234571 () Bool)

(assert (=> bm!274076 m!4234571))

(declare-fun m!4234573 () Bool)

(assert (=> b!3738623 m!4234573))

(declare-fun m!4234575 () Bool)

(assert (=> bm!274077 m!4234575))

(assert (=> bm!274022 d!1092054))

(declare-fun d!1092056 () Bool)

(declare-fun c!647611 () Bool)

(assert (=> d!1092056 (= c!647611 ((_ is Nil!39698) (usedCharacters!1204 (regOne!22394 r!26968))))))

(declare-fun e!2312094 () (InoxSet C!22068))

(assert (=> d!1092056 (= (content!5798 (usedCharacters!1204 (regOne!22394 r!26968))) e!2312094)))

(declare-fun b!3738633 () Bool)

(assert (=> b!3738633 (= e!2312094 ((as const (Array C!22068 Bool)) false))))

(declare-fun b!3738634 () Bool)

(assert (=> b!3738634 (= e!2312094 ((_ map or) (store ((as const (Array C!22068 Bool)) false) (h!45118 (usedCharacters!1204 (regOne!22394 r!26968))) true) (content!5798 (t!302505 (usedCharacters!1204 (regOne!22394 r!26968))))))))

(assert (= (and d!1092056 c!647611) b!3738633))

(assert (= (and d!1092056 (not c!647611)) b!3738634))

(declare-fun m!4234577 () Bool)

(assert (=> b!3738634 m!4234577))

(assert (=> b!3738634 m!4234561))

(assert (=> d!1091980 d!1092056))

(declare-fun e!2312095 () List!39822)

(declare-fun b!3738635 () Bool)

(assert (=> b!3738635 (= e!2312095 (ite c!647542 call!274012 call!274010))))

(declare-fun e!2312096 () Bool)

(declare-fun b!3738638 () Bool)

(declare-fun lt!1299098 () List!39822)

(assert (=> b!3738638 (= e!2312096 (or (not (= (ite c!647542 call!274012 call!274010) Nil!39698)) (= lt!1299098 (ite c!647542 call!274010 call!274012))))))

(declare-fun b!3738637 () Bool)

(declare-fun res!1516325 () Bool)

(assert (=> b!3738637 (=> (not res!1516325) (not e!2312096))))

(assert (=> b!3738637 (= res!1516325 (= (size!30048 lt!1299098) (+ (size!30048 (ite c!647542 call!274010 call!274012)) (size!30048 (ite c!647542 call!274012 call!274010)))))))

(declare-fun d!1092058 () Bool)

(assert (=> d!1092058 e!2312096))

(declare-fun res!1516326 () Bool)

(assert (=> d!1092058 (=> (not res!1516326) (not e!2312096))))

(assert (=> d!1092058 (= res!1516326 (= (content!5798 lt!1299098) ((_ map or) (content!5798 (ite c!647542 call!274010 call!274012)) (content!5798 (ite c!647542 call!274012 call!274010)))))))

(assert (=> d!1092058 (= lt!1299098 e!2312095)))

(declare-fun c!647612 () Bool)

(assert (=> d!1092058 (= c!647612 ((_ is Nil!39698) (ite c!647542 call!274010 call!274012)))))

(assert (=> d!1092058 (= (++!9865 (ite c!647542 call!274010 call!274012) (ite c!647542 call!274012 call!274010)) lt!1299098)))

(declare-fun b!3738636 () Bool)

(assert (=> b!3738636 (= e!2312095 (Cons!39698 (h!45118 (ite c!647542 call!274010 call!274012)) (++!9865 (t!302505 (ite c!647542 call!274010 call!274012)) (ite c!647542 call!274012 call!274010))))))

(assert (= (and d!1092058 c!647612) b!3738635))

(assert (= (and d!1092058 (not c!647612)) b!3738636))

(assert (= (and d!1092058 res!1516326) b!3738637))

(assert (= (and b!3738637 res!1516325) b!3738638))

(declare-fun m!4234579 () Bool)

(assert (=> b!3738637 m!4234579))

(declare-fun m!4234581 () Bool)

(assert (=> b!3738637 m!4234581))

(declare-fun m!4234583 () Bool)

(assert (=> b!3738637 m!4234583))

(declare-fun m!4234585 () Bool)

(assert (=> d!1092058 m!4234585))

(declare-fun m!4234587 () Bool)

(assert (=> d!1092058 m!4234587))

(declare-fun m!4234589 () Bool)

(assert (=> d!1092058 m!4234589))

(declare-fun m!4234591 () Bool)

(assert (=> b!3738636 m!4234591))

(assert (=> bm!274004 d!1092058))

(declare-fun b!3738639 () Bool)

(declare-fun res!1516328 () Bool)

(declare-fun e!2312100 () Bool)

(assert (=> b!3738639 (=> (not res!1516328) (not e!2312100))))

(declare-fun call!274085 () Bool)

(assert (=> b!3738639 (= res!1516328 call!274085)))

(declare-fun e!2312101 () Bool)

(assert (=> b!3738639 (= e!2312101 e!2312100)))

(declare-fun b!3738640 () Bool)

(declare-fun e!2312103 () Bool)

(declare-fun e!2312098 () Bool)

(assert (=> b!3738640 (= e!2312103 e!2312098)))

(declare-fun res!1516327 () Bool)

(assert (=> b!3738640 (=> (not res!1516327) (not e!2312098))))

(assert (=> b!3738640 (= res!1516327 call!274085)))

(declare-fun bm!274078 () Bool)

(declare-fun call!274083 () Bool)

(declare-fun call!274084 () Bool)

(assert (=> bm!274078 (= call!274083 call!274084)))

(declare-fun bm!274079 () Bool)

(declare-fun c!647613 () Bool)

(declare-fun c!647614 () Bool)

(assert (=> bm!274079 (= call!274084 (validRegex!5048 (ite c!647614 (reg!11270 (ite c!647552 (regOne!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))) (ite c!647613 (regTwo!22395 (ite c!647552 (regOne!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))) (regTwo!22394 (ite c!647552 (regOne!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))))))))

(declare-fun b!3738641 () Bool)

(declare-fun e!2312099 () Bool)

(assert (=> b!3738641 (= e!2312099 e!2312101)))

(assert (=> b!3738641 (= c!647613 ((_ is Union!10941) (ite c!647552 (regOne!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))))))

(declare-fun b!3738642 () Bool)

(declare-fun e!2312097 () Bool)

(assert (=> b!3738642 (= e!2312099 e!2312097)))

(declare-fun res!1516330 () Bool)

(assert (=> b!3738642 (= res!1516330 (not (nullable!3849 (reg!11270 (ite c!647552 (regOne!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))))))))

(assert (=> b!3738642 (=> (not res!1516330) (not e!2312097))))

(declare-fun b!3738643 () Bool)

(assert (=> b!3738643 (= e!2312100 call!274083)))

(declare-fun d!1092060 () Bool)

(declare-fun res!1516329 () Bool)

(declare-fun e!2312102 () Bool)

(assert (=> d!1092060 (=> res!1516329 e!2312102)))

(assert (=> d!1092060 (= res!1516329 ((_ is ElementMatch!10941) (ite c!647552 (regOne!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))))))

(assert (=> d!1092060 (= (validRegex!5048 (ite c!647552 (regOne!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))) e!2312102)))

(declare-fun bm!274080 () Bool)

(assert (=> bm!274080 (= call!274085 (validRegex!5048 (ite c!647613 (regOne!22395 (ite c!647552 (regOne!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))) (regOne!22394 (ite c!647552 (regOne!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))))))))

(declare-fun b!3738644 () Bool)

(assert (=> b!3738644 (= e!2312098 call!274083)))

(declare-fun b!3738645 () Bool)

(assert (=> b!3738645 (= e!2312097 call!274084)))

(declare-fun b!3738646 () Bool)

(declare-fun res!1516331 () Bool)

(assert (=> b!3738646 (=> res!1516331 e!2312103)))

(assert (=> b!3738646 (= res!1516331 (not ((_ is Concat!17212) (ite c!647552 (regOne!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968))))))))

(assert (=> b!3738646 (= e!2312101 e!2312103)))

(declare-fun b!3738647 () Bool)

(assert (=> b!3738647 (= e!2312102 e!2312099)))

(assert (=> b!3738647 (= c!647614 ((_ is Star!10941) (ite c!647552 (regOne!22395 (regOne!22394 r!26968)) (regOne!22394 (regOne!22394 r!26968)))))))

(assert (= (and d!1092060 (not res!1516329)) b!3738647))

(assert (= (and b!3738647 c!647614) b!3738642))

(assert (= (and b!3738647 (not c!647614)) b!3738641))

(assert (= (and b!3738642 res!1516330) b!3738645))

(assert (= (and b!3738641 c!647613) b!3738639))

(assert (= (and b!3738641 (not c!647613)) b!3738646))

(assert (= (and b!3738639 res!1516328) b!3738643))

(assert (= (and b!3738646 (not res!1516331)) b!3738640))

(assert (= (and b!3738640 res!1516327) b!3738644))

(assert (= (or b!3738643 b!3738644) bm!274078))

(assert (= (or b!3738639 b!3738640) bm!274080))

(assert (= (or b!3738645 bm!274078) bm!274079))

(declare-fun m!4234593 () Bool)

(assert (=> bm!274079 m!4234593))

(declare-fun m!4234595 () Bool)

(assert (=> b!3738642 m!4234595))

(declare-fun m!4234597 () Bool)

(assert (=> bm!274080 m!4234597))

(assert (=> bm!274020 d!1092060))

(declare-fun b!3738648 () Bool)

(declare-fun e!2312106 () List!39822)

(declare-fun call!274086 () List!39822)

(assert (=> b!3738648 (= e!2312106 call!274086)))

(declare-fun c!647617 () Bool)

(declare-fun call!274089 () List!39822)

(declare-fun bm!274081 () Bool)

(declare-fun call!274087 () List!39822)

(assert (=> bm!274081 (= call!274086 (++!9865 (ite c!647617 call!274087 call!274089) (ite c!647617 call!274089 call!274087)))))

(declare-fun b!3738649 () Bool)

(declare-fun e!2312107 () List!39822)

(assert (=> b!3738649 (= e!2312107 Nil!39698)))

(declare-fun b!3738650 () Bool)

(declare-fun c!647618 () Bool)

(assert (=> b!3738650 (= c!647618 ((_ is Star!10941) (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))))))

(declare-fun e!2312104 () List!39822)

(declare-fun e!2312105 () List!39822)

(assert (=> b!3738650 (= e!2312104 e!2312105)))

(declare-fun b!3738651 () Bool)

(declare-fun call!274088 () List!39822)

(assert (=> b!3738651 (= e!2312105 call!274088)))

(declare-fun bm!274082 () Bool)

(assert (=> bm!274082 (= call!274088 (usedCharacters!1204 (ite c!647618 (reg!11270 (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))) (ite c!647617 (regTwo!22395 (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))) (regOne!22394 (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968))))))))))

(declare-fun d!1092062 () Bool)

(declare-fun c!647615 () Bool)

(assert (=> d!1092062 (= c!647615 (or ((_ is EmptyExpr!10941) (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))) ((_ is EmptyLang!10941) (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968))))))))

(assert (=> d!1092062 (= (usedCharacters!1204 (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))) e!2312107)))

(declare-fun b!3738652 () Bool)

(assert (=> b!3738652 (= e!2312105 e!2312106)))

(assert (=> b!3738652 (= c!647617 ((_ is Union!10941) (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))))))

(declare-fun b!3738653 () Bool)

(assert (=> b!3738653 (= e!2312107 e!2312104)))

(declare-fun c!647616 () Bool)

(assert (=> b!3738653 (= c!647616 ((_ is ElementMatch!10941) (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))))))

(declare-fun b!3738654 () Bool)

(assert (=> b!3738654 (= e!2312104 (Cons!39698 (c!647507 (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))) Nil!39698))))

(declare-fun b!3738655 () Bool)

(assert (=> b!3738655 (= e!2312106 call!274086)))

(declare-fun bm!274083 () Bool)

(assert (=> bm!274083 (= call!274087 (usedCharacters!1204 (ite c!647617 (regOne!22395 (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))) (regTwo!22394 (ite c!647542 (regOne!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))))))))

(declare-fun bm!274084 () Bool)

(assert (=> bm!274084 (= call!274089 call!274088)))

(assert (= (and d!1092062 c!647615) b!3738649))

(assert (= (and d!1092062 (not c!647615)) b!3738653))

(assert (= (and b!3738653 c!647616) b!3738654))

(assert (= (and b!3738653 (not c!647616)) b!3738650))

(assert (= (and b!3738650 c!647618) b!3738651))

(assert (= (and b!3738650 (not c!647618)) b!3738652))

(assert (= (and b!3738652 c!647617) b!3738648))

(assert (= (and b!3738652 (not c!647617)) b!3738655))

(assert (= (or b!3738648 b!3738655) bm!274083))

(assert (= (or b!3738648 b!3738655) bm!274084))

(assert (= (or b!3738648 b!3738655) bm!274081))

(assert (= (or b!3738651 bm!274084) bm!274082))

(declare-fun m!4234599 () Bool)

(assert (=> bm!274081 m!4234599))

(declare-fun m!4234601 () Bool)

(assert (=> bm!274082 m!4234601))

(declare-fun m!4234603 () Bool)

(assert (=> bm!274083 m!4234603))

(assert (=> bm!274006 d!1092062))

(declare-fun d!1092064 () Bool)

(assert (=> d!1092064 (= (nullable!3849 (reg!11270 (regOne!22394 r!26968))) (nullableFct!1102 (reg!11270 (regOne!22394 r!26968))))))

(declare-fun bs!575201 () Bool)

(assert (= bs!575201 d!1092064))

(declare-fun m!4234605 () Bool)

(assert (=> bs!575201 m!4234605))

(assert (=> b!3738296 d!1092064))

(declare-fun b!3738656 () Bool)

(declare-fun e!2312110 () List!39822)

(declare-fun call!274090 () List!39822)

(assert (=> b!3738656 (= e!2312110 call!274090)))

(declare-fun c!647621 () Bool)

(declare-fun call!274091 () List!39822)

(declare-fun bm!274085 () Bool)

(declare-fun call!274093 () List!39822)

(assert (=> bm!274085 (= call!274090 (++!9865 (ite c!647621 call!274091 call!274093) (ite c!647621 call!274093 call!274091)))))

(declare-fun b!3738657 () Bool)

(declare-fun e!2312111 () List!39822)

(assert (=> b!3738657 (= e!2312111 Nil!39698)))

(declare-fun c!647622 () Bool)

(declare-fun b!3738658 () Bool)

(assert (=> b!3738658 (= c!647622 ((_ is Star!10941) (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968)))))))

(declare-fun e!2312108 () List!39822)

(declare-fun e!2312109 () List!39822)

(assert (=> b!3738658 (= e!2312108 e!2312109)))

(declare-fun b!3738659 () Bool)

(declare-fun call!274092 () List!39822)

(assert (=> b!3738659 (= e!2312109 call!274092)))

(declare-fun bm!274086 () Bool)

(assert (=> bm!274086 (= call!274092 (usedCharacters!1204 (ite c!647622 (reg!11270 (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968)))) (ite c!647621 (regTwo!22395 (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968)))) (regOne!22394 (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968))))))))))

(declare-fun d!1092066 () Bool)

(declare-fun c!647619 () Bool)

(assert (=> d!1092066 (= c!647619 (or ((_ is EmptyExpr!10941) (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968)))) ((_ is EmptyLang!10941) (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968))))))))

(assert (=> d!1092066 (= (usedCharacters!1204 (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968)))) e!2312111)))

(declare-fun b!3738660 () Bool)

(assert (=> b!3738660 (= e!2312109 e!2312110)))

(assert (=> b!3738660 (= c!647621 ((_ is Union!10941) (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968)))))))

(declare-fun b!3738661 () Bool)

(assert (=> b!3738661 (= e!2312111 e!2312108)))

(declare-fun c!647620 () Bool)

(assert (=> b!3738661 (= c!647620 ((_ is ElementMatch!10941) (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968)))))))

(declare-fun b!3738662 () Bool)

(assert (=> b!3738662 (= e!2312108 (Cons!39698 (c!647507 (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968)))) Nil!39698))))

(declare-fun b!3738663 () Bool)

(assert (=> b!3738663 (= e!2312110 call!274090)))

(declare-fun bm!274087 () Bool)

(assert (=> bm!274087 (= call!274091 (usedCharacters!1204 (ite c!647621 (regOne!22395 (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968)))) (regTwo!22394 (ite c!647547 (reg!11270 r!26968) (ite c!647546 (regTwo!22395 r!26968) (regOne!22394 r!26968)))))))))

(declare-fun bm!274088 () Bool)

(assert (=> bm!274088 (= call!274093 call!274092)))

(assert (= (and d!1092066 c!647619) b!3738657))

(assert (= (and d!1092066 (not c!647619)) b!3738661))

(assert (= (and b!3738661 c!647620) b!3738662))

(assert (= (and b!3738661 (not c!647620)) b!3738658))

(assert (= (and b!3738658 c!647622) b!3738659))

(assert (= (and b!3738658 (not c!647622)) b!3738660))

(assert (= (and b!3738660 c!647621) b!3738656))

(assert (= (and b!3738660 (not c!647621)) b!3738663))

(assert (= (or b!3738656 b!3738663) bm!274087))

(assert (= (or b!3738656 b!3738663) bm!274088))

(assert (= (or b!3738656 b!3738663) bm!274085))

(assert (= (or b!3738659 bm!274088) bm!274086))

(declare-fun m!4234607 () Bool)

(assert (=> bm!274085 m!4234607))

(declare-fun m!4234609 () Bool)

(assert (=> bm!274086 m!4234609))

(declare-fun m!4234611 () Bool)

(assert (=> bm!274087 m!4234611))

(assert (=> bm!274009 d!1092066))

(declare-fun d!1092068 () Bool)

(declare-fun c!647623 () Bool)

(assert (=> d!1092068 (= c!647623 ((_ is Nil!39698) (usedCharacters!1204 r!26968)))))

(declare-fun e!2312112 () (InoxSet C!22068))

(assert (=> d!1092068 (= (content!5798 (usedCharacters!1204 r!26968)) e!2312112)))

(declare-fun b!3738664 () Bool)

(assert (=> b!3738664 (= e!2312112 ((as const (Array C!22068 Bool)) false))))

(declare-fun b!3738665 () Bool)

(assert (=> b!3738665 (= e!2312112 ((_ map or) (store ((as const (Array C!22068 Bool)) false) (h!45118 (usedCharacters!1204 r!26968)) true) (content!5798 (t!302505 (usedCharacters!1204 r!26968)))))))

(assert (= (and d!1092068 c!647623) b!3738664))

(assert (= (and d!1092068 (not c!647623)) b!3738665))

(declare-fun m!4234613 () Bool)

(assert (=> b!3738665 m!4234613))

(assert (=> b!3738665 m!4234547))

(assert (=> d!1091994 d!1092068))

(declare-fun b!3738666 () Bool)

(declare-fun res!1516333 () Bool)

(declare-fun e!2312116 () Bool)

(assert (=> b!3738666 (=> (not res!1516333) (not e!2312116))))

(declare-fun call!274096 () Bool)

(assert (=> b!3738666 (= res!1516333 call!274096)))

(declare-fun e!2312117 () Bool)

(assert (=> b!3738666 (= e!2312117 e!2312116)))

(declare-fun b!3738667 () Bool)

(declare-fun e!2312119 () Bool)

(declare-fun e!2312114 () Bool)

(assert (=> b!3738667 (= e!2312119 e!2312114)))

(declare-fun res!1516332 () Bool)

(assert (=> b!3738667 (=> (not res!1516332) (not e!2312114))))

(assert (=> b!3738667 (= res!1516332 call!274096)))

(declare-fun bm!274089 () Bool)

(declare-fun call!274094 () Bool)

(declare-fun call!274095 () Bool)

(assert (=> bm!274089 (= call!274094 call!274095)))

(declare-fun c!647624 () Bool)

(declare-fun bm!274090 () Bool)

(declare-fun c!647625 () Bool)

(assert (=> bm!274090 (= call!274095 (validRegex!5048 (ite c!647625 (reg!11270 (ite c!647553 (reg!11270 (regOne!22394 r!26968)) (ite c!647552 (regTwo!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968))))) (ite c!647624 (regTwo!22395 (ite c!647553 (reg!11270 (regOne!22394 r!26968)) (ite c!647552 (regTwo!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968))))) (regTwo!22394 (ite c!647553 (reg!11270 (regOne!22394 r!26968)) (ite c!647552 (regTwo!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))))))))))

(declare-fun b!3738668 () Bool)

(declare-fun e!2312115 () Bool)

(assert (=> b!3738668 (= e!2312115 e!2312117)))

(assert (=> b!3738668 (= c!647624 ((_ is Union!10941) (ite c!647553 (reg!11270 (regOne!22394 r!26968)) (ite c!647552 (regTwo!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968))))))))

(declare-fun b!3738669 () Bool)

(declare-fun e!2312113 () Bool)

(assert (=> b!3738669 (= e!2312115 e!2312113)))

(declare-fun res!1516335 () Bool)

(assert (=> b!3738669 (= res!1516335 (not (nullable!3849 (reg!11270 (ite c!647553 (reg!11270 (regOne!22394 r!26968)) (ite c!647552 (regTwo!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968))))))))))

(assert (=> b!3738669 (=> (not res!1516335) (not e!2312113))))

(declare-fun b!3738670 () Bool)

(assert (=> b!3738670 (= e!2312116 call!274094)))

(declare-fun d!1092070 () Bool)

(declare-fun res!1516334 () Bool)

(declare-fun e!2312118 () Bool)

(assert (=> d!1092070 (=> res!1516334 e!2312118)))

(assert (=> d!1092070 (= res!1516334 ((_ is ElementMatch!10941) (ite c!647553 (reg!11270 (regOne!22394 r!26968)) (ite c!647552 (regTwo!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968))))))))

(assert (=> d!1092070 (= (validRegex!5048 (ite c!647553 (reg!11270 (regOne!22394 r!26968)) (ite c!647552 (regTwo!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968))))) e!2312118)))

(declare-fun bm!274091 () Bool)

(assert (=> bm!274091 (= call!274096 (validRegex!5048 (ite c!647624 (regOne!22395 (ite c!647553 (reg!11270 (regOne!22394 r!26968)) (ite c!647552 (regTwo!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968))))) (regOne!22394 (ite c!647553 (reg!11270 (regOne!22394 r!26968)) (ite c!647552 (regTwo!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968))))))))))

(declare-fun b!3738671 () Bool)

(assert (=> b!3738671 (= e!2312114 call!274094)))

(declare-fun b!3738672 () Bool)

(assert (=> b!3738672 (= e!2312113 call!274095)))

(declare-fun b!3738673 () Bool)

(declare-fun res!1516336 () Bool)

(assert (=> b!3738673 (=> res!1516336 e!2312119)))

(assert (=> b!3738673 (= res!1516336 (not ((_ is Concat!17212) (ite c!647553 (reg!11270 (regOne!22394 r!26968)) (ite c!647552 (regTwo!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968)))))))))

(assert (=> b!3738673 (= e!2312117 e!2312119)))

(declare-fun b!3738674 () Bool)

(assert (=> b!3738674 (= e!2312118 e!2312115)))

(assert (=> b!3738674 (= c!647625 ((_ is Star!10941) (ite c!647553 (reg!11270 (regOne!22394 r!26968)) (ite c!647552 (regTwo!22395 (regOne!22394 r!26968)) (regTwo!22394 (regOne!22394 r!26968))))))))

(assert (= (and d!1092070 (not res!1516334)) b!3738674))

(assert (= (and b!3738674 c!647625) b!3738669))

(assert (= (and b!3738674 (not c!647625)) b!3738668))

(assert (= (and b!3738669 res!1516335) b!3738672))

(assert (= (and b!3738668 c!647624) b!3738666))

(assert (= (and b!3738668 (not c!647624)) b!3738673))

(assert (= (and b!3738666 res!1516333) b!3738670))

(assert (= (and b!3738673 (not res!1516336)) b!3738667))

(assert (= (and b!3738667 res!1516332) b!3738671))

(assert (= (or b!3738670 b!3738671) bm!274089))

(assert (= (or b!3738666 b!3738667) bm!274091))

(assert (= (or b!3738672 bm!274089) bm!274090))

(declare-fun m!4234615 () Bool)

(assert (=> bm!274090 m!4234615))

(declare-fun m!4234617 () Bool)

(assert (=> b!3738669 m!4234617))

(declare-fun m!4234619 () Bool)

(assert (=> bm!274091 m!4234619))

(assert (=> bm!274019 d!1092070))

(declare-fun b!3738677 () Bool)

(declare-fun e!2312120 () Bool)

(declare-fun tp!1138630 () Bool)

(assert (=> b!3738677 (= e!2312120 tp!1138630)))

(declare-fun b!3738678 () Bool)

(declare-fun tp!1138632 () Bool)

(declare-fun tp!1138631 () Bool)

(assert (=> b!3738678 (= e!2312120 (and tp!1138632 tp!1138631))))

(declare-fun b!3738676 () Bool)

(declare-fun tp!1138633 () Bool)

(declare-fun tp!1138634 () Bool)

(assert (=> b!3738676 (= e!2312120 (and tp!1138633 tp!1138634))))

(assert (=> b!3738331 (= tp!1138490 e!2312120)))

(declare-fun b!3738675 () Bool)

(assert (=> b!3738675 (= e!2312120 tp_is_empty!18897)))

(assert (= (and b!3738331 ((_ is ElementMatch!10941) (reg!11270 (regTwo!22394 r!26968)))) b!3738675))

(assert (= (and b!3738331 ((_ is Concat!17212) (reg!11270 (regTwo!22394 r!26968)))) b!3738676))

(assert (= (and b!3738331 ((_ is Star!10941) (reg!11270 (regTwo!22394 r!26968)))) b!3738677))

(assert (= (and b!3738331 ((_ is Union!10941) (reg!11270 (regTwo!22394 r!26968)))) b!3738678))

(declare-fun b!3738681 () Bool)

(declare-fun e!2312121 () Bool)

(declare-fun tp!1138635 () Bool)

(assert (=> b!3738681 (= e!2312121 tp!1138635)))

(declare-fun b!3738682 () Bool)

(declare-fun tp!1138637 () Bool)

(declare-fun tp!1138636 () Bool)

(assert (=> b!3738682 (= e!2312121 (and tp!1138637 tp!1138636))))

(declare-fun b!3738680 () Bool)

(declare-fun tp!1138638 () Bool)

(declare-fun tp!1138639 () Bool)

(assert (=> b!3738680 (= e!2312121 (and tp!1138638 tp!1138639))))

(assert (=> b!3738326 (= tp!1138488 e!2312121)))

(declare-fun b!3738679 () Bool)

(assert (=> b!3738679 (= e!2312121 tp_is_empty!18897)))

(assert (= (and b!3738326 ((_ is ElementMatch!10941) (regOne!22394 (regOne!22394 r!26968)))) b!3738679))

(assert (= (and b!3738326 ((_ is Concat!17212) (regOne!22394 (regOne!22394 r!26968)))) b!3738680))

(assert (= (and b!3738326 ((_ is Star!10941) (regOne!22394 (regOne!22394 r!26968)))) b!3738681))

(assert (= (and b!3738326 ((_ is Union!10941) (regOne!22394 (regOne!22394 r!26968)))) b!3738682))

(declare-fun b!3738685 () Bool)

(declare-fun e!2312122 () Bool)

(declare-fun tp!1138640 () Bool)

(assert (=> b!3738685 (= e!2312122 tp!1138640)))

(declare-fun b!3738686 () Bool)

(declare-fun tp!1138642 () Bool)

(declare-fun tp!1138641 () Bool)

(assert (=> b!3738686 (= e!2312122 (and tp!1138642 tp!1138641))))

(declare-fun b!3738684 () Bool)

(declare-fun tp!1138643 () Bool)

(declare-fun tp!1138644 () Bool)

(assert (=> b!3738684 (= e!2312122 (and tp!1138643 tp!1138644))))

(assert (=> b!3738326 (= tp!1138489 e!2312122)))

(declare-fun b!3738683 () Bool)

(assert (=> b!3738683 (= e!2312122 tp_is_empty!18897)))

(assert (= (and b!3738326 ((_ is ElementMatch!10941) (regTwo!22394 (regOne!22394 r!26968)))) b!3738683))

(assert (= (and b!3738326 ((_ is Concat!17212) (regTwo!22394 (regOne!22394 r!26968)))) b!3738684))

(assert (= (and b!3738326 ((_ is Star!10941) (regTwo!22394 (regOne!22394 r!26968)))) b!3738685))

(assert (= (and b!3738326 ((_ is Union!10941) (regTwo!22394 (regOne!22394 r!26968)))) b!3738686))

(declare-fun b!3738689 () Bool)

(declare-fun e!2312123 () Bool)

(declare-fun tp!1138645 () Bool)

(assert (=> b!3738689 (= e!2312123 tp!1138645)))

(declare-fun b!3738690 () Bool)

(declare-fun tp!1138647 () Bool)

(declare-fun tp!1138646 () Bool)

(assert (=> b!3738690 (= e!2312123 (and tp!1138647 tp!1138646))))

(declare-fun b!3738688 () Bool)

(declare-fun tp!1138648 () Bool)

(declare-fun tp!1138649 () Bool)

(assert (=> b!3738688 (= e!2312123 (and tp!1138648 tp!1138649))))

(assert (=> b!3738340 (= tp!1138502 e!2312123)))

(declare-fun b!3738687 () Bool)

(assert (=> b!3738687 (= e!2312123 tp_is_empty!18897)))

(assert (= (and b!3738340 ((_ is ElementMatch!10941) (regOne!22395 (regTwo!22395 r!26968)))) b!3738687))

(assert (= (and b!3738340 ((_ is Concat!17212) (regOne!22395 (regTwo!22395 r!26968)))) b!3738688))

(assert (= (and b!3738340 ((_ is Star!10941) (regOne!22395 (regTwo!22395 r!26968)))) b!3738689))

(assert (= (and b!3738340 ((_ is Union!10941) (regOne!22395 (regTwo!22395 r!26968)))) b!3738690))

(declare-fun b!3738693 () Bool)

(declare-fun e!2312124 () Bool)

(declare-fun tp!1138650 () Bool)

(assert (=> b!3738693 (= e!2312124 tp!1138650)))

(declare-fun b!3738694 () Bool)

(declare-fun tp!1138652 () Bool)

(declare-fun tp!1138651 () Bool)

(assert (=> b!3738694 (= e!2312124 (and tp!1138652 tp!1138651))))

(declare-fun b!3738692 () Bool)

(declare-fun tp!1138653 () Bool)

(declare-fun tp!1138654 () Bool)

(assert (=> b!3738692 (= e!2312124 (and tp!1138653 tp!1138654))))

(assert (=> b!3738340 (= tp!1138501 e!2312124)))

(declare-fun b!3738691 () Bool)

(assert (=> b!3738691 (= e!2312124 tp_is_empty!18897)))

(assert (= (and b!3738340 ((_ is ElementMatch!10941) (regTwo!22395 (regTwo!22395 r!26968)))) b!3738691))

(assert (= (and b!3738340 ((_ is Concat!17212) (regTwo!22395 (regTwo!22395 r!26968)))) b!3738692))

(assert (= (and b!3738340 ((_ is Star!10941) (regTwo!22395 (regTwo!22395 r!26968)))) b!3738693))

(assert (= (and b!3738340 ((_ is Union!10941) (regTwo!22395 (regTwo!22395 r!26968)))) b!3738694))

(declare-fun b!3738697 () Bool)

(declare-fun e!2312125 () Bool)

(declare-fun tp!1138655 () Bool)

(assert (=> b!3738697 (= e!2312125 tp!1138655)))

(declare-fun b!3738698 () Bool)

(declare-fun tp!1138657 () Bool)

(declare-fun tp!1138656 () Bool)

(assert (=> b!3738698 (= e!2312125 (and tp!1138657 tp!1138656))))

(declare-fun b!3738696 () Bool)

(declare-fun tp!1138658 () Bool)

(declare-fun tp!1138659 () Bool)

(assert (=> b!3738696 (= e!2312125 (and tp!1138658 tp!1138659))))

(assert (=> b!3738335 (= tp!1138495 e!2312125)))

(declare-fun b!3738695 () Bool)

(assert (=> b!3738695 (= e!2312125 tp_is_empty!18897)))

(assert (= (and b!3738335 ((_ is ElementMatch!10941) (reg!11270 (regOne!22395 r!26968)))) b!3738695))

(assert (= (and b!3738335 ((_ is Concat!17212) (reg!11270 (regOne!22395 r!26968)))) b!3738696))

(assert (= (and b!3738335 ((_ is Star!10941) (reg!11270 (regOne!22395 r!26968)))) b!3738697))

(assert (= (and b!3738335 ((_ is Union!10941) (reg!11270 (regOne!22395 r!26968)))) b!3738698))

(declare-fun b!3738701 () Bool)

(declare-fun e!2312126 () Bool)

(declare-fun tp!1138660 () Bool)

(assert (=> b!3738701 (= e!2312126 tp!1138660)))

(declare-fun b!3738702 () Bool)

(declare-fun tp!1138662 () Bool)

(declare-fun tp!1138661 () Bool)

(assert (=> b!3738702 (= e!2312126 (and tp!1138662 tp!1138661))))

(declare-fun b!3738700 () Bool)

(declare-fun tp!1138663 () Bool)

(declare-fun tp!1138664 () Bool)

(assert (=> b!3738700 (= e!2312126 (and tp!1138663 tp!1138664))))

(assert (=> b!3738330 (= tp!1138493 e!2312126)))

(declare-fun b!3738699 () Bool)

(assert (=> b!3738699 (= e!2312126 tp_is_empty!18897)))

(assert (= (and b!3738330 ((_ is ElementMatch!10941) (regOne!22394 (regTwo!22394 r!26968)))) b!3738699))

(assert (= (and b!3738330 ((_ is Concat!17212) (regOne!22394 (regTwo!22394 r!26968)))) b!3738700))

(assert (= (and b!3738330 ((_ is Star!10941) (regOne!22394 (regTwo!22394 r!26968)))) b!3738701))

(assert (= (and b!3738330 ((_ is Union!10941) (regOne!22394 (regTwo!22394 r!26968)))) b!3738702))

(declare-fun b!3738705 () Bool)

(declare-fun e!2312127 () Bool)

(declare-fun tp!1138665 () Bool)

(assert (=> b!3738705 (= e!2312127 tp!1138665)))

(declare-fun b!3738706 () Bool)

(declare-fun tp!1138667 () Bool)

(declare-fun tp!1138666 () Bool)

(assert (=> b!3738706 (= e!2312127 (and tp!1138667 tp!1138666))))

(declare-fun b!3738704 () Bool)

(declare-fun tp!1138668 () Bool)

(declare-fun tp!1138669 () Bool)

(assert (=> b!3738704 (= e!2312127 (and tp!1138668 tp!1138669))))

(assert (=> b!3738330 (= tp!1138494 e!2312127)))

(declare-fun b!3738703 () Bool)

(assert (=> b!3738703 (= e!2312127 tp_is_empty!18897)))

(assert (= (and b!3738330 ((_ is ElementMatch!10941) (regTwo!22394 (regTwo!22394 r!26968)))) b!3738703))

(assert (= (and b!3738330 ((_ is Concat!17212) (regTwo!22394 (regTwo!22394 r!26968)))) b!3738704))

(assert (= (and b!3738330 ((_ is Star!10941) (regTwo!22394 (regTwo!22394 r!26968)))) b!3738705))

(assert (= (and b!3738330 ((_ is Union!10941) (regTwo!22394 (regTwo!22394 r!26968)))) b!3738706))

(declare-fun b!3738709 () Bool)

(declare-fun e!2312128 () Bool)

(declare-fun tp!1138670 () Bool)

(assert (=> b!3738709 (= e!2312128 tp!1138670)))

(declare-fun b!3738710 () Bool)

(declare-fun tp!1138672 () Bool)

(declare-fun tp!1138671 () Bool)

(assert (=> b!3738710 (= e!2312128 (and tp!1138672 tp!1138671))))

(declare-fun b!3738708 () Bool)

(declare-fun tp!1138673 () Bool)

(declare-fun tp!1138674 () Bool)

(assert (=> b!3738708 (= e!2312128 (and tp!1138673 tp!1138674))))

(assert (=> b!3738339 (= tp!1138500 e!2312128)))

(declare-fun b!3738707 () Bool)

(assert (=> b!3738707 (= e!2312128 tp_is_empty!18897)))

(assert (= (and b!3738339 ((_ is ElementMatch!10941) (reg!11270 (regTwo!22395 r!26968)))) b!3738707))

(assert (= (and b!3738339 ((_ is Concat!17212) (reg!11270 (regTwo!22395 r!26968)))) b!3738708))

(assert (= (and b!3738339 ((_ is Star!10941) (reg!11270 (regTwo!22395 r!26968)))) b!3738709))

(assert (= (and b!3738339 ((_ is Union!10941) (reg!11270 (regTwo!22395 r!26968)))) b!3738710))

(declare-fun b!3738713 () Bool)

(declare-fun e!2312129 () Bool)

(declare-fun tp!1138675 () Bool)

(assert (=> b!3738713 (= e!2312129 tp!1138675)))

(declare-fun b!3738714 () Bool)

(declare-fun tp!1138677 () Bool)

(declare-fun tp!1138676 () Bool)

(assert (=> b!3738714 (= e!2312129 (and tp!1138677 tp!1138676))))

(declare-fun b!3738712 () Bool)

(declare-fun tp!1138678 () Bool)

(declare-fun tp!1138679 () Bool)

(assert (=> b!3738712 (= e!2312129 (and tp!1138678 tp!1138679))))

(assert (=> b!3738334 (= tp!1138498 e!2312129)))

(declare-fun b!3738711 () Bool)

(assert (=> b!3738711 (= e!2312129 tp_is_empty!18897)))

(assert (= (and b!3738334 ((_ is ElementMatch!10941) (regOne!22394 (regOne!22395 r!26968)))) b!3738711))

(assert (= (and b!3738334 ((_ is Concat!17212) (regOne!22394 (regOne!22395 r!26968)))) b!3738712))

(assert (= (and b!3738334 ((_ is Star!10941) (regOne!22394 (regOne!22395 r!26968)))) b!3738713))

(assert (= (and b!3738334 ((_ is Union!10941) (regOne!22394 (regOne!22395 r!26968)))) b!3738714))

(declare-fun b!3738717 () Bool)

(declare-fun e!2312130 () Bool)

(declare-fun tp!1138680 () Bool)

(assert (=> b!3738717 (= e!2312130 tp!1138680)))

(declare-fun b!3738718 () Bool)

(declare-fun tp!1138682 () Bool)

(declare-fun tp!1138681 () Bool)

(assert (=> b!3738718 (= e!2312130 (and tp!1138682 tp!1138681))))

(declare-fun b!3738716 () Bool)

(declare-fun tp!1138683 () Bool)

(declare-fun tp!1138684 () Bool)

(assert (=> b!3738716 (= e!2312130 (and tp!1138683 tp!1138684))))

(assert (=> b!3738334 (= tp!1138499 e!2312130)))

(declare-fun b!3738715 () Bool)

(assert (=> b!3738715 (= e!2312130 tp_is_empty!18897)))

(assert (= (and b!3738334 ((_ is ElementMatch!10941) (regTwo!22394 (regOne!22395 r!26968)))) b!3738715))

(assert (= (and b!3738334 ((_ is Concat!17212) (regTwo!22394 (regOne!22395 r!26968)))) b!3738716))

(assert (= (and b!3738334 ((_ is Star!10941) (regTwo!22394 (regOne!22395 r!26968)))) b!3738717))

(assert (= (and b!3738334 ((_ is Union!10941) (regTwo!22394 (regOne!22395 r!26968)))) b!3738718))

(declare-fun b!3738721 () Bool)

(declare-fun e!2312131 () Bool)

(declare-fun tp!1138685 () Bool)

(assert (=> b!3738721 (= e!2312131 tp!1138685)))

(declare-fun b!3738722 () Bool)

(declare-fun tp!1138687 () Bool)

(declare-fun tp!1138686 () Bool)

(assert (=> b!3738722 (= e!2312131 (and tp!1138687 tp!1138686))))

(declare-fun b!3738720 () Bool)

(declare-fun tp!1138688 () Bool)

(declare-fun tp!1138689 () Bool)

(assert (=> b!3738720 (= e!2312131 (and tp!1138688 tp!1138689))))

(assert (=> b!3738338 (= tp!1138503 e!2312131)))

(declare-fun b!3738719 () Bool)

(assert (=> b!3738719 (= e!2312131 tp_is_empty!18897)))

(assert (= (and b!3738338 ((_ is ElementMatch!10941) (regOne!22394 (regTwo!22395 r!26968)))) b!3738719))

(assert (= (and b!3738338 ((_ is Concat!17212) (regOne!22394 (regTwo!22395 r!26968)))) b!3738720))

(assert (= (and b!3738338 ((_ is Star!10941) (regOne!22394 (regTwo!22395 r!26968)))) b!3738721))

(assert (= (and b!3738338 ((_ is Union!10941) (regOne!22394 (regTwo!22395 r!26968)))) b!3738722))

(declare-fun b!3738725 () Bool)

(declare-fun e!2312132 () Bool)

(declare-fun tp!1138690 () Bool)

(assert (=> b!3738725 (= e!2312132 tp!1138690)))

(declare-fun b!3738726 () Bool)

(declare-fun tp!1138692 () Bool)

(declare-fun tp!1138691 () Bool)

(assert (=> b!3738726 (= e!2312132 (and tp!1138692 tp!1138691))))

(declare-fun b!3738724 () Bool)

(declare-fun tp!1138693 () Bool)

(declare-fun tp!1138694 () Bool)

(assert (=> b!3738724 (= e!2312132 (and tp!1138693 tp!1138694))))

(assert (=> b!3738338 (= tp!1138504 e!2312132)))

(declare-fun b!3738723 () Bool)

(assert (=> b!3738723 (= e!2312132 tp_is_empty!18897)))

(assert (= (and b!3738338 ((_ is ElementMatch!10941) (regTwo!22394 (regTwo!22395 r!26968)))) b!3738723))

(assert (= (and b!3738338 ((_ is Concat!17212) (regTwo!22394 (regTwo!22395 r!26968)))) b!3738724))

(assert (= (and b!3738338 ((_ is Star!10941) (regTwo!22394 (regTwo!22395 r!26968)))) b!3738725))

(assert (= (and b!3738338 ((_ is Union!10941) (regTwo!22394 (regTwo!22395 r!26968)))) b!3738726))

(declare-fun b!3738729 () Bool)

(declare-fun e!2312133 () Bool)

(declare-fun tp!1138695 () Bool)

(assert (=> b!3738729 (= e!2312133 tp!1138695)))

(declare-fun b!3738730 () Bool)

(declare-fun tp!1138697 () Bool)

(declare-fun tp!1138696 () Bool)

(assert (=> b!3738730 (= e!2312133 (and tp!1138697 tp!1138696))))

(declare-fun b!3738728 () Bool)

(declare-fun tp!1138698 () Bool)

(declare-fun tp!1138699 () Bool)

(assert (=> b!3738728 (= e!2312133 (and tp!1138698 tp!1138699))))

(assert (=> b!3738324 (= tp!1138482 e!2312133)))

(declare-fun b!3738727 () Bool)

(assert (=> b!3738727 (= e!2312133 tp_is_empty!18897)))

(assert (= (and b!3738324 ((_ is ElementMatch!10941) (regOne!22395 (reg!11270 r!26968)))) b!3738727))

(assert (= (and b!3738324 ((_ is Concat!17212) (regOne!22395 (reg!11270 r!26968)))) b!3738728))

(assert (= (and b!3738324 ((_ is Star!10941) (regOne!22395 (reg!11270 r!26968)))) b!3738729))

(assert (= (and b!3738324 ((_ is Union!10941) (regOne!22395 (reg!11270 r!26968)))) b!3738730))

(declare-fun b!3738733 () Bool)

(declare-fun e!2312134 () Bool)

(declare-fun tp!1138700 () Bool)

(assert (=> b!3738733 (= e!2312134 tp!1138700)))

(declare-fun b!3738734 () Bool)

(declare-fun tp!1138702 () Bool)

(declare-fun tp!1138701 () Bool)

(assert (=> b!3738734 (= e!2312134 (and tp!1138702 tp!1138701))))

(declare-fun b!3738732 () Bool)

(declare-fun tp!1138703 () Bool)

(declare-fun tp!1138704 () Bool)

(assert (=> b!3738732 (= e!2312134 (and tp!1138703 tp!1138704))))

(assert (=> b!3738324 (= tp!1138481 e!2312134)))

(declare-fun b!3738731 () Bool)

(assert (=> b!3738731 (= e!2312134 tp_is_empty!18897)))

(assert (= (and b!3738324 ((_ is ElementMatch!10941) (regTwo!22395 (reg!11270 r!26968)))) b!3738731))

(assert (= (and b!3738324 ((_ is Concat!17212) (regTwo!22395 (reg!11270 r!26968)))) b!3738732))

(assert (= (and b!3738324 ((_ is Star!10941) (regTwo!22395 (reg!11270 r!26968)))) b!3738733))

(assert (= (and b!3738324 ((_ is Union!10941) (regTwo!22395 (reg!11270 r!26968)))) b!3738734))

(declare-fun b!3738737 () Bool)

(declare-fun e!2312135 () Bool)

(declare-fun tp!1138705 () Bool)

(assert (=> b!3738737 (= e!2312135 tp!1138705)))

(declare-fun b!3738738 () Bool)

(declare-fun tp!1138707 () Bool)

(declare-fun tp!1138706 () Bool)

(assert (=> b!3738738 (= e!2312135 (and tp!1138707 tp!1138706))))

(declare-fun b!3738736 () Bool)

(declare-fun tp!1138708 () Bool)

(declare-fun tp!1138709 () Bool)

(assert (=> b!3738736 (= e!2312135 (and tp!1138708 tp!1138709))))

(assert (=> b!3738328 (= tp!1138487 e!2312135)))

(declare-fun b!3738735 () Bool)

(assert (=> b!3738735 (= e!2312135 tp_is_empty!18897)))

(assert (= (and b!3738328 ((_ is ElementMatch!10941) (regOne!22395 (regOne!22394 r!26968)))) b!3738735))

(assert (= (and b!3738328 ((_ is Concat!17212) (regOne!22395 (regOne!22394 r!26968)))) b!3738736))

(assert (= (and b!3738328 ((_ is Star!10941) (regOne!22395 (regOne!22394 r!26968)))) b!3738737))

(assert (= (and b!3738328 ((_ is Union!10941) (regOne!22395 (regOne!22394 r!26968)))) b!3738738))

(declare-fun b!3738741 () Bool)

(declare-fun e!2312136 () Bool)

(declare-fun tp!1138710 () Bool)

(assert (=> b!3738741 (= e!2312136 tp!1138710)))

(declare-fun b!3738742 () Bool)

(declare-fun tp!1138712 () Bool)

(declare-fun tp!1138711 () Bool)

(assert (=> b!3738742 (= e!2312136 (and tp!1138712 tp!1138711))))

(declare-fun b!3738740 () Bool)

(declare-fun tp!1138713 () Bool)

(declare-fun tp!1138714 () Bool)

(assert (=> b!3738740 (= e!2312136 (and tp!1138713 tp!1138714))))

(assert (=> b!3738328 (= tp!1138486 e!2312136)))

(declare-fun b!3738739 () Bool)

(assert (=> b!3738739 (= e!2312136 tp_is_empty!18897)))

(assert (= (and b!3738328 ((_ is ElementMatch!10941) (regTwo!22395 (regOne!22394 r!26968)))) b!3738739))

(assert (= (and b!3738328 ((_ is Concat!17212) (regTwo!22395 (regOne!22394 r!26968)))) b!3738740))

(assert (= (and b!3738328 ((_ is Star!10941) (regTwo!22395 (regOne!22394 r!26968)))) b!3738741))

(assert (= (and b!3738328 ((_ is Union!10941) (regTwo!22395 (regOne!22394 r!26968)))) b!3738742))

(declare-fun b!3738745 () Bool)

(declare-fun e!2312137 () Bool)

(declare-fun tp!1138715 () Bool)

(assert (=> b!3738745 (= e!2312137 tp!1138715)))

(declare-fun b!3738746 () Bool)

(declare-fun tp!1138717 () Bool)

(declare-fun tp!1138716 () Bool)

(assert (=> b!3738746 (= e!2312137 (and tp!1138717 tp!1138716))))

(declare-fun b!3738744 () Bool)

(declare-fun tp!1138718 () Bool)

(declare-fun tp!1138719 () Bool)

(assert (=> b!3738744 (= e!2312137 (and tp!1138718 tp!1138719))))

(assert (=> b!3738323 (= tp!1138480 e!2312137)))

(declare-fun b!3738743 () Bool)

(assert (=> b!3738743 (= e!2312137 tp_is_empty!18897)))

(assert (= (and b!3738323 ((_ is ElementMatch!10941) (reg!11270 (reg!11270 r!26968)))) b!3738743))

(assert (= (and b!3738323 ((_ is Concat!17212) (reg!11270 (reg!11270 r!26968)))) b!3738744))

(assert (= (and b!3738323 ((_ is Star!10941) (reg!11270 (reg!11270 r!26968)))) b!3738745))

(assert (= (and b!3738323 ((_ is Union!10941) (reg!11270 (reg!11270 r!26968)))) b!3738746))

(declare-fun b!3738749 () Bool)

(declare-fun e!2312138 () Bool)

(declare-fun tp!1138720 () Bool)

(assert (=> b!3738749 (= e!2312138 tp!1138720)))

(declare-fun b!3738750 () Bool)

(declare-fun tp!1138722 () Bool)

(declare-fun tp!1138721 () Bool)

(assert (=> b!3738750 (= e!2312138 (and tp!1138722 tp!1138721))))

(declare-fun b!3738748 () Bool)

(declare-fun tp!1138723 () Bool)

(declare-fun tp!1138724 () Bool)

(assert (=> b!3738748 (= e!2312138 (and tp!1138723 tp!1138724))))

(assert (=> b!3738332 (= tp!1138492 e!2312138)))

(declare-fun b!3738747 () Bool)

(assert (=> b!3738747 (= e!2312138 tp_is_empty!18897)))

(assert (= (and b!3738332 ((_ is ElementMatch!10941) (regOne!22395 (regTwo!22394 r!26968)))) b!3738747))

(assert (= (and b!3738332 ((_ is Concat!17212) (regOne!22395 (regTwo!22394 r!26968)))) b!3738748))

(assert (= (and b!3738332 ((_ is Star!10941) (regOne!22395 (regTwo!22394 r!26968)))) b!3738749))

(assert (= (and b!3738332 ((_ is Union!10941) (regOne!22395 (regTwo!22394 r!26968)))) b!3738750))

(declare-fun b!3738753 () Bool)

(declare-fun e!2312139 () Bool)

(declare-fun tp!1138725 () Bool)

(assert (=> b!3738753 (= e!2312139 tp!1138725)))

(declare-fun b!3738754 () Bool)

(declare-fun tp!1138727 () Bool)

(declare-fun tp!1138726 () Bool)

(assert (=> b!3738754 (= e!2312139 (and tp!1138727 tp!1138726))))

(declare-fun b!3738752 () Bool)

(declare-fun tp!1138728 () Bool)

(declare-fun tp!1138729 () Bool)

(assert (=> b!3738752 (= e!2312139 (and tp!1138728 tp!1138729))))

(assert (=> b!3738332 (= tp!1138491 e!2312139)))

(declare-fun b!3738751 () Bool)

(assert (=> b!3738751 (= e!2312139 tp_is_empty!18897)))

(assert (= (and b!3738332 ((_ is ElementMatch!10941) (regTwo!22395 (regTwo!22394 r!26968)))) b!3738751))

(assert (= (and b!3738332 ((_ is Concat!17212) (regTwo!22395 (regTwo!22394 r!26968)))) b!3738752))

(assert (= (and b!3738332 ((_ is Star!10941) (regTwo!22395 (regTwo!22394 r!26968)))) b!3738753))

(assert (= (and b!3738332 ((_ is Union!10941) (regTwo!22395 (regTwo!22394 r!26968)))) b!3738754))

(declare-fun b!3738757 () Bool)

(declare-fun e!2312140 () Bool)

(declare-fun tp!1138730 () Bool)

(assert (=> b!3738757 (= e!2312140 tp!1138730)))

(declare-fun b!3738758 () Bool)

(declare-fun tp!1138732 () Bool)

(declare-fun tp!1138731 () Bool)

(assert (=> b!3738758 (= e!2312140 (and tp!1138732 tp!1138731))))

(declare-fun b!3738756 () Bool)

(declare-fun tp!1138733 () Bool)

(declare-fun tp!1138734 () Bool)

(assert (=> b!3738756 (= e!2312140 (and tp!1138733 tp!1138734))))

(assert (=> b!3738327 (= tp!1138485 e!2312140)))

(declare-fun b!3738755 () Bool)

(assert (=> b!3738755 (= e!2312140 tp_is_empty!18897)))

(assert (= (and b!3738327 ((_ is ElementMatch!10941) (reg!11270 (regOne!22394 r!26968)))) b!3738755))

(assert (= (and b!3738327 ((_ is Concat!17212) (reg!11270 (regOne!22394 r!26968)))) b!3738756))

(assert (= (and b!3738327 ((_ is Star!10941) (reg!11270 (regOne!22394 r!26968)))) b!3738757))

(assert (= (and b!3738327 ((_ is Union!10941) (reg!11270 (regOne!22394 r!26968)))) b!3738758))

(declare-fun b!3738761 () Bool)

(declare-fun e!2312141 () Bool)

(declare-fun tp!1138735 () Bool)

(assert (=> b!3738761 (= e!2312141 tp!1138735)))

(declare-fun b!3738762 () Bool)

(declare-fun tp!1138737 () Bool)

(declare-fun tp!1138736 () Bool)

(assert (=> b!3738762 (= e!2312141 (and tp!1138737 tp!1138736))))

(declare-fun b!3738760 () Bool)

(declare-fun tp!1138738 () Bool)

(declare-fun tp!1138739 () Bool)

(assert (=> b!3738760 (= e!2312141 (and tp!1138738 tp!1138739))))

(assert (=> b!3738322 (= tp!1138483 e!2312141)))

(declare-fun b!3738759 () Bool)

(assert (=> b!3738759 (= e!2312141 tp_is_empty!18897)))

(assert (= (and b!3738322 ((_ is ElementMatch!10941) (regOne!22394 (reg!11270 r!26968)))) b!3738759))

(assert (= (and b!3738322 ((_ is Concat!17212) (regOne!22394 (reg!11270 r!26968)))) b!3738760))

(assert (= (and b!3738322 ((_ is Star!10941) (regOne!22394 (reg!11270 r!26968)))) b!3738761))

(assert (= (and b!3738322 ((_ is Union!10941) (regOne!22394 (reg!11270 r!26968)))) b!3738762))

(declare-fun b!3738765 () Bool)

(declare-fun e!2312142 () Bool)

(declare-fun tp!1138740 () Bool)

(assert (=> b!3738765 (= e!2312142 tp!1138740)))

(declare-fun b!3738766 () Bool)

(declare-fun tp!1138742 () Bool)

(declare-fun tp!1138741 () Bool)

(assert (=> b!3738766 (= e!2312142 (and tp!1138742 tp!1138741))))

(declare-fun b!3738764 () Bool)

(declare-fun tp!1138743 () Bool)

(declare-fun tp!1138744 () Bool)

(assert (=> b!3738764 (= e!2312142 (and tp!1138743 tp!1138744))))

(assert (=> b!3738322 (= tp!1138484 e!2312142)))

(declare-fun b!3738763 () Bool)

(assert (=> b!3738763 (= e!2312142 tp_is_empty!18897)))

(assert (= (and b!3738322 ((_ is ElementMatch!10941) (regTwo!22394 (reg!11270 r!26968)))) b!3738763))

(assert (= (and b!3738322 ((_ is Concat!17212) (regTwo!22394 (reg!11270 r!26968)))) b!3738764))

(assert (= (and b!3738322 ((_ is Star!10941) (regTwo!22394 (reg!11270 r!26968)))) b!3738765))

(assert (= (and b!3738322 ((_ is Union!10941) (regTwo!22394 (reg!11270 r!26968)))) b!3738766))

(declare-fun b!3738769 () Bool)

(declare-fun e!2312143 () Bool)

(declare-fun tp!1138745 () Bool)

(assert (=> b!3738769 (= e!2312143 tp!1138745)))

(declare-fun b!3738770 () Bool)

(declare-fun tp!1138747 () Bool)

(declare-fun tp!1138746 () Bool)

(assert (=> b!3738770 (= e!2312143 (and tp!1138747 tp!1138746))))

(declare-fun b!3738768 () Bool)

(declare-fun tp!1138748 () Bool)

(declare-fun tp!1138749 () Bool)

(assert (=> b!3738768 (= e!2312143 (and tp!1138748 tp!1138749))))

(assert (=> b!3738336 (= tp!1138497 e!2312143)))

(declare-fun b!3738767 () Bool)

(assert (=> b!3738767 (= e!2312143 tp_is_empty!18897)))

(assert (= (and b!3738336 ((_ is ElementMatch!10941) (regOne!22395 (regOne!22395 r!26968)))) b!3738767))

(assert (= (and b!3738336 ((_ is Concat!17212) (regOne!22395 (regOne!22395 r!26968)))) b!3738768))

(assert (= (and b!3738336 ((_ is Star!10941) (regOne!22395 (regOne!22395 r!26968)))) b!3738769))

(assert (= (and b!3738336 ((_ is Union!10941) (regOne!22395 (regOne!22395 r!26968)))) b!3738770))

(declare-fun b!3738773 () Bool)

(declare-fun e!2312144 () Bool)

(declare-fun tp!1138750 () Bool)

(assert (=> b!3738773 (= e!2312144 tp!1138750)))

(declare-fun b!3738774 () Bool)

(declare-fun tp!1138752 () Bool)

(declare-fun tp!1138751 () Bool)

(assert (=> b!3738774 (= e!2312144 (and tp!1138752 tp!1138751))))

(declare-fun b!3738772 () Bool)

(declare-fun tp!1138753 () Bool)

(declare-fun tp!1138754 () Bool)

(assert (=> b!3738772 (= e!2312144 (and tp!1138753 tp!1138754))))

(assert (=> b!3738336 (= tp!1138496 e!2312144)))

(declare-fun b!3738771 () Bool)

(assert (=> b!3738771 (= e!2312144 tp_is_empty!18897)))

(assert (= (and b!3738336 ((_ is ElementMatch!10941) (regTwo!22395 (regOne!22395 r!26968)))) b!3738771))

(assert (= (and b!3738336 ((_ is Concat!17212) (regTwo!22395 (regOne!22395 r!26968)))) b!3738772))

(assert (= (and b!3738336 ((_ is Star!10941) (regTwo!22395 (regOne!22395 r!26968)))) b!3738773))

(assert (= (and b!3738336 ((_ is Union!10941) (regTwo!22395 (regOne!22395 r!26968)))) b!3738774))

(check-sat (not b!3738704) (not b!3738693) (not bm!274082) (not b!3738637) (not b!3738682) (not b!3738705) (not b!3738722) (not b!3738773) (not b!3738634) (not bm!274090) (not b!3738726) (not b!3738698) (not bm!274067) (not bm!274076) (not b!3738690) (not d!1092040) (not b!3738576) (not b!3738684) (not b!3738725) (not d!1092064) (not b!3738765) (not bm!274059) (not b!3738696) (not b!3738749) (not b!3738681) (not b!3738677) (not b!3738761) (not b!3738688) (not b!3738694) (not b!3738737) (not b!3738724) (not b!3738692) (not b!3738736) (not bm!274081) (not b!3738708) (not b!3738702) (not b!3738762) (not b!3738754) (not b!3738744) (not b!3738768) (not b!3738772) (not b!3738680) (not b!3738685) (not b!3738733) (not b!3738728) (not b!3738738) (not b!3738713) (not bm!274065) (not b!3738764) (not b!3738756) (not b!3738770) (not b!3738774) (not b!3738598) (not bm!274085) (not bm!274086) (not b!3738676) (not b!3738718) (not b!3738717) (not d!1092058) (not bm!274063) (not b!3738721) (not bm!274073) (not b!3738746) (not b!3738686) (not b!3738689) (not b!3738745) (not bm!274074) tp_is_empty!18897 (not b!3738642) (not b!3738678) (not b!3738665) (not b!3738706) (not b!3738758) (not bm!274091) (not bm!274080) (not b!3738740) (not b!3738750) (not b!3738769) (not bm!274083) (not b!3738636) (not b!3738757) (not b!3738734) (not b!3738700) (not b!3738742) (not d!1092046) (not bm!274060) (not b!3738753) (not b!3738561) (not b!3738710) (not b!3738766) (not b!3738669) (not bm!274061) (not b!3738714) (not bm!274087) (not d!1092050) (not b!3738730) (not b!3738701) (not b!3738748) (not d!1092044) (not b!3738588) (not bm!274079) (not b!3738709) (not bm!274077) (not b!3738729) (not b!3738577) (not b!3738623) (not b!3738697) (not b!3738741) (not b!3738712) (not bm!274062) (not b!3738732) (not b!3738752) (not bm!274066) (not b!3738760) (not b!3738720) (not b!3738716))
(check-sat)
