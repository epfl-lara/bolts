; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247796 () Bool)

(assert start!247796)

(declare-fun res!1077211 () Bool)

(declare-fun e!1615787 () Bool)

(assert (=> start!247796 (=> (not res!1077211) (not e!1615787))))

(declare-datatypes ((C!15384 0))(
  ( (C!15385 (val!9344 Int)) )
))
(declare-datatypes ((Regex!7613 0))(
  ( (ElementMatch!7613 (c!410685 C!15384)) (Concat!12309 (regOne!15738 Regex!7613) (regTwo!15738 Regex!7613)) (EmptyExpr!7613) (Star!7613 (reg!7942 Regex!7613)) (EmptyLang!7613) (Union!7613 (regOne!15739 Regex!7613) (regTwo!15739 Regex!7613)) )
))
(declare-fun r!27340 () Regex!7613)

(declare-fun validRegex!3239 (Regex!7613) Bool)

(assert (=> start!247796 (= res!1077211 (validRegex!3239 r!27340))))

(assert (=> start!247796 e!1615787))

(declare-fun e!1615786 () Bool)

(assert (=> start!247796 e!1615786))

(declare-fun tp_is_empty!13081 () Bool)

(assert (=> start!247796 tp_is_empty!13081))

(declare-fun e!1615783 () Bool)

(assert (=> start!247796 e!1615783))

(declare-fun b!2558146 () Bool)

(declare-fun tp!815164 () Bool)

(declare-fun tp!815165 () Bool)

(assert (=> b!2558146 (= e!1615786 (and tp!815164 tp!815165))))

(declare-fun b!2558147 () Bool)

(declare-fun tp!815161 () Bool)

(assert (=> b!2558147 (= e!1615783 (and tp_is_empty!13081 tp!815161))))

(declare-fun b!2558148 () Bool)

(assert (=> b!2558148 (= e!1615786 tp_is_empty!13081)))

(declare-fun b!2558149 () Bool)

(declare-fun res!1077208 () Bool)

(declare-fun e!1615788 () Bool)

(assert (=> b!2558149 (=> res!1077208 e!1615788)))

(declare-fun lt!904422 () Regex!7613)

(declare-datatypes ((List!29678 0))(
  ( (Nil!29578) (Cons!29578 (h!34998 C!15384) (t!211377 List!29678)) )
))
(declare-datatypes ((tuple2!29588 0))(
  ( (tuple2!29589 (_1!17336 List!29678) (_2!17336 List!29678)) )
))
(declare-fun lt!904412 () tuple2!29588)

(declare-fun matchR!3558 (Regex!7613 List!29678) Bool)

(assert (=> b!2558149 (= res!1077208 (not (matchR!3558 lt!904422 (_1!17336 lt!904412))))))

(declare-fun b!2558150 () Bool)

(declare-fun tp!815166 () Bool)

(assert (=> b!2558150 (= e!1615786 tp!815166)))

(declare-fun b!2558151 () Bool)

(declare-fun res!1077217 () Bool)

(declare-fun e!1615782 () Bool)

(assert (=> b!2558151 (=> res!1077217 e!1615782)))

(declare-fun lt!904417 () Regex!7613)

(declare-fun nullable!2530 (Regex!7613) Bool)

(assert (=> b!2558151 (= res!1077217 (not (nullable!2530 lt!904417)))))

(declare-fun b!2558152 () Bool)

(declare-fun res!1077214 () Bool)

(assert (=> b!2558152 (=> (not res!1077214) (not e!1615787))))

(declare-fun tl!4068 () List!29678)

(declare-fun c!14016 () C!15384)

(declare-fun derivative!308 (Regex!7613 List!29678) Regex!7613)

(declare-fun derivativeStep!2182 (Regex!7613 C!15384) Regex!7613)

(assert (=> b!2558152 (= res!1077214 (nullable!2530 (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068)))))

(declare-fun b!2558153 () Bool)

(declare-fun tp!815162 () Bool)

(declare-fun tp!815163 () Bool)

(assert (=> b!2558153 (= e!1615786 (and tp!815162 tp!815163))))

(declare-fun b!2558154 () Bool)

(declare-fun contains!5305 (List!29678 C!15384) Bool)

(declare-fun firstChars!96 (Regex!7613) List!29678)

(assert (=> b!2558154 (= e!1615782 (contains!5305 (firstChars!96 r!27340) c!14016))))

(assert (=> b!2558154 (contains!5305 (firstChars!96 (regOne!15738 r!27340)) c!14016)))

(declare-datatypes ((Unit!43411 0))(
  ( (Unit!43412) )
))
(declare-fun lt!904418 () Unit!43411)

(declare-fun lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!12 (Regex!7613 C!15384 List!29678) Unit!43411)

(assert (=> b!2558154 (= lt!904418 (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!12 (regOne!15738 r!27340) c!14016 (_1!17336 lt!904412)))))

(declare-fun b!2558155 () Bool)

(assert (=> b!2558155 (= e!1615788 e!1615782)))

(declare-fun res!1077216 () Bool)

(assert (=> b!2558155 (=> res!1077216 e!1615782)))

(assert (=> b!2558155 (= res!1077216 (not (validRegex!3239 (regOne!15738 r!27340))))))

(assert (=> b!2558155 (matchR!3558 lt!904417 Nil!29578)))

(assert (=> b!2558155 (= lt!904417 (derivative!308 lt!904422 (_1!17336 lt!904412)))))

(declare-fun lt!904415 () Unit!43411)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!204 (Regex!7613 List!29678) Unit!43411)

(assert (=> b!2558155 (= lt!904415 (lemmaMatchRIsSameAsWholeDerivativeAndNil!204 lt!904422 (_1!17336 lt!904412)))))

(declare-fun b!2558156 () Bool)

(declare-fun res!1077209 () Bool)

(assert (=> b!2558156 (=> (not res!1077209) (not e!1615787))))

(assert (=> b!2558156 (= res!1077209 (nullable!2530 (regOne!15738 r!27340)))))

(declare-fun b!2558157 () Bool)

(declare-fun e!1615784 () Bool)

(assert (=> b!2558157 (= e!1615787 (not e!1615784))))

(declare-fun res!1077218 () Bool)

(assert (=> b!2558157 (=> res!1077218 e!1615784)))

(declare-fun lt!904419 () Bool)

(assert (=> b!2558157 (= res!1077218 (not lt!904419))))

(declare-fun e!1615785 () Bool)

(assert (=> b!2558157 e!1615785))

(declare-fun res!1077212 () Bool)

(assert (=> b!2558157 (=> res!1077212 e!1615785)))

(assert (=> b!2558157 (= res!1077212 lt!904419)))

(declare-fun lt!904414 () Regex!7613)

(assert (=> b!2558157 (= lt!904419 (matchR!3558 lt!904414 tl!4068))))

(declare-fun lt!904416 () Unit!43411)

(declare-fun lt!904411 () Regex!7613)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!208 (Regex!7613 Regex!7613 List!29678) Unit!43411)

(assert (=> b!2558157 (= lt!904416 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!208 lt!904414 lt!904411 tl!4068))))

(declare-fun lt!904421 () Regex!7613)

(assert (=> b!2558157 (= (matchR!3558 lt!904421 tl!4068) (matchR!3558 (derivative!308 lt!904421 tl!4068) Nil!29578))))

(declare-fun lt!904413 () Unit!43411)

(assert (=> b!2558157 (= lt!904413 (lemmaMatchRIsSameAsWholeDerivativeAndNil!204 lt!904421 tl!4068))))

(assert (=> b!2558157 (= lt!904421 (Union!7613 lt!904414 lt!904411))))

(assert (=> b!2558157 (= lt!904411 (derivativeStep!2182 (regTwo!15738 r!27340) c!14016))))

(assert (=> b!2558157 (= lt!904414 (Concat!12309 lt!904422 (regTwo!15738 r!27340)))))

(assert (=> b!2558157 (= lt!904422 (derivativeStep!2182 (regOne!15738 r!27340) c!14016))))

(declare-fun b!2558158 () Bool)

(assert (=> b!2558158 (= e!1615784 e!1615788)))

(declare-fun res!1077215 () Bool)

(assert (=> b!2558158 (=> res!1077215 e!1615788)))

(declare-fun ++!7270 (List!29678 List!29678) List!29678)

(assert (=> b!2558158 (= res!1077215 (not (= (++!7270 (_1!17336 lt!904412) (_2!17336 lt!904412)) tl!4068)))))

(declare-datatypes ((Option!5914 0))(
  ( (None!5913) (Some!5913 (v!31854 tuple2!29588)) )
))
(declare-fun lt!904410 () Option!5914)

(declare-fun get!9299 (Option!5914) tuple2!29588)

(assert (=> b!2558158 (= lt!904412 (get!9299 lt!904410))))

(declare-fun isDefined!4736 (Option!5914) Bool)

(assert (=> b!2558158 (isDefined!4736 lt!904410)))

(declare-fun findConcatSeparation!936 (Regex!7613 Regex!7613 List!29678 List!29678 List!29678) Option!5914)

(assert (=> b!2558158 (= lt!904410 (findConcatSeparation!936 lt!904422 (regTwo!15738 r!27340) Nil!29578 tl!4068 tl!4068))))

(declare-fun lt!904420 () Unit!43411)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!218 (Regex!7613 Regex!7613 List!29678) Unit!43411)

(assert (=> b!2558158 (= lt!904420 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!218 lt!904422 (regTwo!15738 r!27340) tl!4068))))

(declare-fun b!2558159 () Bool)

(declare-fun res!1077210 () Bool)

(assert (=> b!2558159 (=> res!1077210 e!1615788)))

(assert (=> b!2558159 (= res!1077210 (not (matchR!3558 (regOne!15738 r!27340) (Cons!29578 c!14016 (_1!17336 lt!904412)))))))

(declare-fun b!2558160 () Bool)

(assert (=> b!2558160 (= e!1615785 (matchR!3558 lt!904411 tl!4068))))

(declare-fun b!2558161 () Bool)

(declare-fun res!1077207 () Bool)

(assert (=> b!2558161 (=> (not res!1077207) (not e!1615787))))

(get-info :version)

(assert (=> b!2558161 (= res!1077207 (and (not ((_ is EmptyExpr!7613) r!27340)) (not ((_ is EmptyLang!7613) r!27340)) (not ((_ is ElementMatch!7613) r!27340)) (not ((_ is Union!7613) r!27340)) (not ((_ is Star!7613) r!27340))))))

(declare-fun b!2558162 () Bool)

(declare-fun res!1077213 () Bool)

(assert (=> b!2558162 (=> res!1077213 e!1615788)))

(assert (=> b!2558162 (= res!1077213 (not (matchR!3558 (regTwo!15738 r!27340) (_2!17336 lt!904412))))))

(assert (= (and start!247796 res!1077211) b!2558152))

(assert (= (and b!2558152 res!1077214) b!2558161))

(assert (= (and b!2558161 res!1077207) b!2558156))

(assert (= (and b!2558156 res!1077209) b!2558157))

(assert (= (and b!2558157 (not res!1077212)) b!2558160))

(assert (= (and b!2558157 (not res!1077218)) b!2558158))

(assert (= (and b!2558158 (not res!1077215)) b!2558149))

(assert (= (and b!2558149 (not res!1077208)) b!2558162))

(assert (= (and b!2558162 (not res!1077213)) b!2558159))

(assert (= (and b!2558159 (not res!1077210)) b!2558155))

(assert (= (and b!2558155 (not res!1077216)) b!2558151))

(assert (= (and b!2558151 (not res!1077217)) b!2558154))

(assert (= (and start!247796 ((_ is ElementMatch!7613) r!27340)) b!2558148))

(assert (= (and start!247796 ((_ is Concat!12309) r!27340)) b!2558146))

(assert (= (and start!247796 ((_ is Star!7613) r!27340)) b!2558150))

(assert (= (and start!247796 ((_ is Union!7613) r!27340)) b!2558153))

(assert (= (and start!247796 ((_ is Cons!29578) tl!4068)) b!2558147))

(declare-fun m!2899097 () Bool)

(assert (=> b!2558151 m!2899097))

(declare-fun m!2899099 () Bool)

(assert (=> b!2558157 m!2899099))

(declare-fun m!2899101 () Bool)

(assert (=> b!2558157 m!2899101))

(declare-fun m!2899103 () Bool)

(assert (=> b!2558157 m!2899103))

(declare-fun m!2899105 () Bool)

(assert (=> b!2558157 m!2899105))

(declare-fun m!2899107 () Bool)

(assert (=> b!2558157 m!2899107))

(declare-fun m!2899109 () Bool)

(assert (=> b!2558157 m!2899109))

(assert (=> b!2558157 m!2899107))

(declare-fun m!2899111 () Bool)

(assert (=> b!2558157 m!2899111))

(declare-fun m!2899113 () Bool)

(assert (=> b!2558157 m!2899113))

(declare-fun m!2899115 () Bool)

(assert (=> b!2558152 m!2899115))

(assert (=> b!2558152 m!2899115))

(declare-fun m!2899117 () Bool)

(assert (=> b!2558152 m!2899117))

(assert (=> b!2558152 m!2899117))

(declare-fun m!2899119 () Bool)

(assert (=> b!2558152 m!2899119))

(declare-fun m!2899121 () Bool)

(assert (=> b!2558156 m!2899121))

(declare-fun m!2899123 () Bool)

(assert (=> b!2558154 m!2899123))

(declare-fun m!2899125 () Bool)

(assert (=> b!2558154 m!2899125))

(declare-fun m!2899127 () Bool)

(assert (=> b!2558154 m!2899127))

(declare-fun m!2899129 () Bool)

(assert (=> b!2558154 m!2899129))

(declare-fun m!2899131 () Bool)

(assert (=> b!2558154 m!2899131))

(assert (=> b!2558154 m!2899123))

(assert (=> b!2558154 m!2899129))

(declare-fun m!2899133 () Bool)

(assert (=> b!2558162 m!2899133))

(declare-fun m!2899135 () Bool)

(assert (=> b!2558158 m!2899135))

(declare-fun m!2899137 () Bool)

(assert (=> b!2558158 m!2899137))

(declare-fun m!2899139 () Bool)

(assert (=> b!2558158 m!2899139))

(declare-fun m!2899141 () Bool)

(assert (=> b!2558158 m!2899141))

(declare-fun m!2899143 () Bool)

(assert (=> b!2558158 m!2899143))

(declare-fun m!2899145 () Bool)

(assert (=> b!2558159 m!2899145))

(declare-fun m!2899147 () Bool)

(assert (=> b!2558155 m!2899147))

(declare-fun m!2899149 () Bool)

(assert (=> b!2558155 m!2899149))

(declare-fun m!2899151 () Bool)

(assert (=> b!2558155 m!2899151))

(declare-fun m!2899153 () Bool)

(assert (=> b!2558155 m!2899153))

(declare-fun m!2899155 () Bool)

(assert (=> b!2558149 m!2899155))

(declare-fun m!2899157 () Bool)

(assert (=> start!247796 m!2899157))

(declare-fun m!2899159 () Bool)

(assert (=> b!2558160 m!2899159))

(check-sat (not b!2558158) (not b!2558154) (not b!2558149) (not b!2558151) (not b!2558160) (not b!2558155) (not b!2558162) (not b!2558159) (not b!2558146) (not b!2558147) tp_is_empty!13081 (not b!2558157) (not b!2558153) (not b!2558156) (not start!247796) (not b!2558150) (not b!2558152))
(check-sat)
(get-model)

(declare-fun b!2558233 () Bool)

(declare-fun e!1615829 () Bool)

(declare-fun lt!904428 () Bool)

(declare-fun call!163531 () Bool)

(assert (=> b!2558233 (= e!1615829 (= lt!904428 call!163531))))

(declare-fun b!2558234 () Bool)

(declare-fun res!1077263 () Bool)

(declare-fun e!1615824 () Bool)

(assert (=> b!2558234 (=> res!1077263 e!1615824)))

(declare-fun isEmpty!17034 (List!29678) Bool)

(declare-fun tail!4095 (List!29678) List!29678)

(assert (=> b!2558234 (= res!1077263 (not (isEmpty!17034 (tail!4095 tl!4068))))))

(declare-fun b!2558235 () Bool)

(declare-fun head!5820 (List!29678) C!15384)

(assert (=> b!2558235 (= e!1615824 (not (= (head!5820 tl!4068) (c!410685 lt!904411))))))

(declare-fun bm!163526 () Bool)

(assert (=> bm!163526 (= call!163531 (isEmpty!17034 tl!4068))))

(declare-fun b!2558236 () Bool)

(declare-fun res!1077264 () Bool)

(declare-fun e!1615830 () Bool)

(assert (=> b!2558236 (=> res!1077264 e!1615830)))

(declare-fun e!1615825 () Bool)

(assert (=> b!2558236 (= res!1077264 e!1615825)))

(declare-fun res!1077260 () Bool)

(assert (=> b!2558236 (=> (not res!1077260) (not e!1615825))))

(assert (=> b!2558236 (= res!1077260 lt!904428)))

(declare-fun d!724816 () Bool)

(assert (=> d!724816 e!1615829))

(declare-fun c!410701 () Bool)

(assert (=> d!724816 (= c!410701 ((_ is EmptyExpr!7613) lt!904411))))

(declare-fun e!1615826 () Bool)

(assert (=> d!724816 (= lt!904428 e!1615826)))

(declare-fun c!410703 () Bool)

(assert (=> d!724816 (= c!410703 (isEmpty!17034 tl!4068))))

(assert (=> d!724816 (validRegex!3239 lt!904411)))

(assert (=> d!724816 (= (matchR!3558 lt!904411 tl!4068) lt!904428)))

(declare-fun b!2558237 () Bool)

(assert (=> b!2558237 (= e!1615826 (matchR!3558 (derivativeStep!2182 lt!904411 (head!5820 tl!4068)) (tail!4095 tl!4068)))))

(declare-fun b!2558238 () Bool)

(declare-fun res!1077259 () Bool)

(assert (=> b!2558238 (=> res!1077259 e!1615830)))

(assert (=> b!2558238 (= res!1077259 (not ((_ is ElementMatch!7613) lt!904411)))))

(declare-fun e!1615828 () Bool)

(assert (=> b!2558238 (= e!1615828 e!1615830)))

(declare-fun b!2558239 () Bool)

(assert (=> b!2558239 (= e!1615829 e!1615828)))

(declare-fun c!410702 () Bool)

(assert (=> b!2558239 (= c!410702 ((_ is EmptyLang!7613) lt!904411))))

(declare-fun b!2558240 () Bool)

(declare-fun e!1615827 () Bool)

(assert (=> b!2558240 (= e!1615830 e!1615827)))

(declare-fun res!1077266 () Bool)

(assert (=> b!2558240 (=> (not res!1077266) (not e!1615827))))

(assert (=> b!2558240 (= res!1077266 (not lt!904428))))

(declare-fun b!2558241 () Bool)

(declare-fun res!1077265 () Bool)

(assert (=> b!2558241 (=> (not res!1077265) (not e!1615825))))

(assert (=> b!2558241 (= res!1077265 (isEmpty!17034 (tail!4095 tl!4068)))))

(declare-fun b!2558242 () Bool)

(declare-fun res!1077262 () Bool)

(assert (=> b!2558242 (=> (not res!1077262) (not e!1615825))))

(assert (=> b!2558242 (= res!1077262 (not call!163531))))

(declare-fun b!2558243 () Bool)

(assert (=> b!2558243 (= e!1615828 (not lt!904428))))

(declare-fun b!2558244 () Bool)

(assert (=> b!2558244 (= e!1615827 e!1615824)))

(declare-fun res!1077261 () Bool)

(assert (=> b!2558244 (=> res!1077261 e!1615824)))

(assert (=> b!2558244 (= res!1077261 call!163531)))

(declare-fun b!2558245 () Bool)

(assert (=> b!2558245 (= e!1615825 (= (head!5820 tl!4068) (c!410685 lt!904411)))))

(declare-fun b!2558246 () Bool)

(assert (=> b!2558246 (= e!1615826 (nullable!2530 lt!904411))))

(assert (= (and d!724816 c!410703) b!2558246))

(assert (= (and d!724816 (not c!410703)) b!2558237))

(assert (= (and d!724816 c!410701) b!2558233))

(assert (= (and d!724816 (not c!410701)) b!2558239))

(assert (= (and b!2558239 c!410702) b!2558243))

(assert (= (and b!2558239 (not c!410702)) b!2558238))

(assert (= (and b!2558238 (not res!1077259)) b!2558236))

(assert (= (and b!2558236 res!1077260) b!2558242))

(assert (= (and b!2558242 res!1077262) b!2558241))

(assert (= (and b!2558241 res!1077265) b!2558245))

(assert (= (and b!2558236 (not res!1077264)) b!2558240))

(assert (= (and b!2558240 res!1077266) b!2558244))

(assert (= (and b!2558244 (not res!1077261)) b!2558234))

(assert (= (and b!2558234 (not res!1077263)) b!2558235))

(assert (= (or b!2558233 b!2558242 b!2558244) bm!163526))

(declare-fun m!2899177 () Bool)

(assert (=> bm!163526 m!2899177))

(assert (=> d!724816 m!2899177))

(declare-fun m!2899179 () Bool)

(assert (=> d!724816 m!2899179))

(declare-fun m!2899181 () Bool)

(assert (=> b!2558241 m!2899181))

(assert (=> b!2558241 m!2899181))

(declare-fun m!2899183 () Bool)

(assert (=> b!2558241 m!2899183))

(declare-fun m!2899185 () Bool)

(assert (=> b!2558237 m!2899185))

(assert (=> b!2558237 m!2899185))

(declare-fun m!2899187 () Bool)

(assert (=> b!2558237 m!2899187))

(assert (=> b!2558237 m!2899181))

(assert (=> b!2558237 m!2899187))

(assert (=> b!2558237 m!2899181))

(declare-fun m!2899189 () Bool)

(assert (=> b!2558237 m!2899189))

(declare-fun m!2899191 () Bool)

(assert (=> b!2558246 m!2899191))

(assert (=> b!2558234 m!2899181))

(assert (=> b!2558234 m!2899181))

(assert (=> b!2558234 m!2899183))

(assert (=> b!2558245 m!2899185))

(assert (=> b!2558235 m!2899185))

(assert (=> b!2558160 d!724816))

(declare-fun b!2558265 () Bool)

(declare-fun e!1615850 () Bool)

(declare-fun lt!904429 () Bool)

(declare-fun call!163538 () Bool)

(assert (=> b!2558265 (= e!1615850 (= lt!904429 call!163538))))

(declare-fun b!2558266 () Bool)

(declare-fun res!1077281 () Bool)

(declare-fun e!1615845 () Bool)

(assert (=> b!2558266 (=> res!1077281 e!1615845)))

(assert (=> b!2558266 (= res!1077281 (not (isEmpty!17034 (tail!4095 (_1!17336 lt!904412)))))))

(declare-fun b!2558267 () Bool)

(assert (=> b!2558267 (= e!1615845 (not (= (head!5820 (_1!17336 lt!904412)) (c!410685 lt!904422))))))

(declare-fun bm!163531 () Bool)

(assert (=> bm!163531 (= call!163538 (isEmpty!17034 (_1!17336 lt!904412)))))

(declare-fun b!2558268 () Bool)

(declare-fun res!1077282 () Bool)

(declare-fun e!1615851 () Bool)

(assert (=> b!2558268 (=> res!1077282 e!1615851)))

(declare-fun e!1615846 () Bool)

(assert (=> b!2558268 (= res!1077282 e!1615846)))

(declare-fun res!1077278 () Bool)

(assert (=> b!2558268 (=> (not res!1077278) (not e!1615846))))

(assert (=> b!2558268 (= res!1077278 lt!904429)))

(declare-fun d!724822 () Bool)

(assert (=> d!724822 e!1615850))

(declare-fun c!410708 () Bool)

(assert (=> d!724822 (= c!410708 ((_ is EmptyExpr!7613) lt!904422))))

(declare-fun e!1615847 () Bool)

(assert (=> d!724822 (= lt!904429 e!1615847)))

(declare-fun c!410710 () Bool)

(assert (=> d!724822 (= c!410710 (isEmpty!17034 (_1!17336 lt!904412)))))

(assert (=> d!724822 (validRegex!3239 lt!904422)))

(assert (=> d!724822 (= (matchR!3558 lt!904422 (_1!17336 lt!904412)) lt!904429)))

(declare-fun b!2558269 () Bool)

(assert (=> b!2558269 (= e!1615847 (matchR!3558 (derivativeStep!2182 lt!904422 (head!5820 (_1!17336 lt!904412))) (tail!4095 (_1!17336 lt!904412))))))

(declare-fun b!2558270 () Bool)

(declare-fun res!1077277 () Bool)

(assert (=> b!2558270 (=> res!1077277 e!1615851)))

(assert (=> b!2558270 (= res!1077277 (not ((_ is ElementMatch!7613) lt!904422)))))

(declare-fun e!1615849 () Bool)

(assert (=> b!2558270 (= e!1615849 e!1615851)))

(declare-fun b!2558271 () Bool)

(assert (=> b!2558271 (= e!1615850 e!1615849)))

(declare-fun c!410709 () Bool)

(assert (=> b!2558271 (= c!410709 ((_ is EmptyLang!7613) lt!904422))))

(declare-fun b!2558272 () Bool)

(declare-fun e!1615848 () Bool)

(assert (=> b!2558272 (= e!1615851 e!1615848)))

(declare-fun res!1077284 () Bool)

(assert (=> b!2558272 (=> (not res!1077284) (not e!1615848))))

(assert (=> b!2558272 (= res!1077284 (not lt!904429))))

(declare-fun b!2558273 () Bool)

(declare-fun res!1077283 () Bool)

(assert (=> b!2558273 (=> (not res!1077283) (not e!1615846))))

(assert (=> b!2558273 (= res!1077283 (isEmpty!17034 (tail!4095 (_1!17336 lt!904412))))))

(declare-fun b!2558274 () Bool)

(declare-fun res!1077280 () Bool)

(assert (=> b!2558274 (=> (not res!1077280) (not e!1615846))))

(assert (=> b!2558274 (= res!1077280 (not call!163538))))

(declare-fun b!2558275 () Bool)

(assert (=> b!2558275 (= e!1615849 (not lt!904429))))

(declare-fun b!2558276 () Bool)

(assert (=> b!2558276 (= e!1615848 e!1615845)))

(declare-fun res!1077279 () Bool)

(assert (=> b!2558276 (=> res!1077279 e!1615845)))

(assert (=> b!2558276 (= res!1077279 call!163538)))

(declare-fun b!2558277 () Bool)

(assert (=> b!2558277 (= e!1615846 (= (head!5820 (_1!17336 lt!904412)) (c!410685 lt!904422)))))

(declare-fun b!2558278 () Bool)

(assert (=> b!2558278 (= e!1615847 (nullable!2530 lt!904422))))

(assert (= (and d!724822 c!410710) b!2558278))

(assert (= (and d!724822 (not c!410710)) b!2558269))

(assert (= (and d!724822 c!410708) b!2558265))

(assert (= (and d!724822 (not c!410708)) b!2558271))

(assert (= (and b!2558271 c!410709) b!2558275))

(assert (= (and b!2558271 (not c!410709)) b!2558270))

(assert (= (and b!2558270 (not res!1077277)) b!2558268))

(assert (= (and b!2558268 res!1077278) b!2558274))

(assert (= (and b!2558274 res!1077280) b!2558273))

(assert (= (and b!2558273 res!1077283) b!2558277))

(assert (= (and b!2558268 (not res!1077282)) b!2558272))

(assert (= (and b!2558272 res!1077284) b!2558276))

(assert (= (and b!2558276 (not res!1077279)) b!2558266))

(assert (= (and b!2558266 (not res!1077281)) b!2558267))

(assert (= (or b!2558265 b!2558274 b!2558276) bm!163531))

(declare-fun m!2899193 () Bool)

(assert (=> bm!163531 m!2899193))

(assert (=> d!724822 m!2899193))

(declare-fun m!2899195 () Bool)

(assert (=> d!724822 m!2899195))

(declare-fun m!2899197 () Bool)

(assert (=> b!2558273 m!2899197))

(assert (=> b!2558273 m!2899197))

(declare-fun m!2899199 () Bool)

(assert (=> b!2558273 m!2899199))

(declare-fun m!2899201 () Bool)

(assert (=> b!2558269 m!2899201))

(assert (=> b!2558269 m!2899201))

(declare-fun m!2899203 () Bool)

(assert (=> b!2558269 m!2899203))

(assert (=> b!2558269 m!2899197))

(assert (=> b!2558269 m!2899203))

(assert (=> b!2558269 m!2899197))

(declare-fun m!2899205 () Bool)

(assert (=> b!2558269 m!2899205))

(declare-fun m!2899207 () Bool)

(assert (=> b!2558278 m!2899207))

(assert (=> b!2558266 m!2899197))

(assert (=> b!2558266 m!2899197))

(assert (=> b!2558266 m!2899199))

(assert (=> b!2558277 m!2899201))

(assert (=> b!2558267 m!2899201))

(assert (=> b!2558149 d!724822))

(declare-fun b!2558279 () Bool)

(declare-fun e!1615857 () Bool)

(declare-fun lt!904430 () Bool)

(declare-fun call!163539 () Bool)

(assert (=> b!2558279 (= e!1615857 (= lt!904430 call!163539))))

(declare-fun b!2558280 () Bool)

(declare-fun res!1077289 () Bool)

(declare-fun e!1615852 () Bool)

(assert (=> b!2558280 (=> res!1077289 e!1615852)))

(assert (=> b!2558280 (= res!1077289 (not (isEmpty!17034 (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412))))))))

(declare-fun b!2558281 () Bool)

(assert (=> b!2558281 (= e!1615852 (not (= (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412))) (c!410685 (regOne!15738 r!27340)))))))

(declare-fun bm!163534 () Bool)

(assert (=> bm!163534 (= call!163539 (isEmpty!17034 (Cons!29578 c!14016 (_1!17336 lt!904412))))))

(declare-fun b!2558282 () Bool)

(declare-fun res!1077290 () Bool)

(declare-fun e!1615858 () Bool)

(assert (=> b!2558282 (=> res!1077290 e!1615858)))

(declare-fun e!1615853 () Bool)

(assert (=> b!2558282 (= res!1077290 e!1615853)))

(declare-fun res!1077286 () Bool)

(assert (=> b!2558282 (=> (not res!1077286) (not e!1615853))))

(assert (=> b!2558282 (= res!1077286 lt!904430)))

(declare-fun d!724824 () Bool)

(assert (=> d!724824 e!1615857))

(declare-fun c!410711 () Bool)

(assert (=> d!724824 (= c!410711 ((_ is EmptyExpr!7613) (regOne!15738 r!27340)))))

(declare-fun e!1615854 () Bool)

(assert (=> d!724824 (= lt!904430 e!1615854)))

(declare-fun c!410713 () Bool)

(assert (=> d!724824 (= c!410713 (isEmpty!17034 (Cons!29578 c!14016 (_1!17336 lt!904412))))))

(assert (=> d!724824 (validRegex!3239 (regOne!15738 r!27340))))

(assert (=> d!724824 (= (matchR!3558 (regOne!15738 r!27340) (Cons!29578 c!14016 (_1!17336 lt!904412))) lt!904430)))

(declare-fun b!2558283 () Bool)

(assert (=> b!2558283 (= e!1615854 (matchR!3558 (derivativeStep!2182 (regOne!15738 r!27340) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412)))) (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412)))))))

(declare-fun b!2558284 () Bool)

(declare-fun res!1077285 () Bool)

(assert (=> b!2558284 (=> res!1077285 e!1615858)))

(assert (=> b!2558284 (= res!1077285 (not ((_ is ElementMatch!7613) (regOne!15738 r!27340))))))

(declare-fun e!1615856 () Bool)

(assert (=> b!2558284 (= e!1615856 e!1615858)))

(declare-fun b!2558285 () Bool)

(assert (=> b!2558285 (= e!1615857 e!1615856)))

(declare-fun c!410712 () Bool)

(assert (=> b!2558285 (= c!410712 ((_ is EmptyLang!7613) (regOne!15738 r!27340)))))

(declare-fun b!2558286 () Bool)

(declare-fun e!1615855 () Bool)

(assert (=> b!2558286 (= e!1615858 e!1615855)))

(declare-fun res!1077292 () Bool)

(assert (=> b!2558286 (=> (not res!1077292) (not e!1615855))))

(assert (=> b!2558286 (= res!1077292 (not lt!904430))))

(declare-fun b!2558287 () Bool)

(declare-fun res!1077291 () Bool)

(assert (=> b!2558287 (=> (not res!1077291) (not e!1615853))))

(assert (=> b!2558287 (= res!1077291 (isEmpty!17034 (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412)))))))

(declare-fun b!2558288 () Bool)

(declare-fun res!1077288 () Bool)

(assert (=> b!2558288 (=> (not res!1077288) (not e!1615853))))

(assert (=> b!2558288 (= res!1077288 (not call!163539))))

(declare-fun b!2558289 () Bool)

(assert (=> b!2558289 (= e!1615856 (not lt!904430))))

(declare-fun b!2558290 () Bool)

(assert (=> b!2558290 (= e!1615855 e!1615852)))

(declare-fun res!1077287 () Bool)

(assert (=> b!2558290 (=> res!1077287 e!1615852)))

(assert (=> b!2558290 (= res!1077287 call!163539)))

(declare-fun b!2558291 () Bool)

(assert (=> b!2558291 (= e!1615853 (= (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412))) (c!410685 (regOne!15738 r!27340))))))

(declare-fun b!2558292 () Bool)

(assert (=> b!2558292 (= e!1615854 (nullable!2530 (regOne!15738 r!27340)))))

(assert (= (and d!724824 c!410713) b!2558292))

(assert (= (and d!724824 (not c!410713)) b!2558283))

(assert (= (and d!724824 c!410711) b!2558279))

(assert (= (and d!724824 (not c!410711)) b!2558285))

(assert (= (and b!2558285 c!410712) b!2558289))

(assert (= (and b!2558285 (not c!410712)) b!2558284))

(assert (= (and b!2558284 (not res!1077285)) b!2558282))

(assert (= (and b!2558282 res!1077286) b!2558288))

(assert (= (and b!2558288 res!1077288) b!2558287))

(assert (= (and b!2558287 res!1077291) b!2558291))

(assert (= (and b!2558282 (not res!1077290)) b!2558286))

(assert (= (and b!2558286 res!1077292) b!2558290))

(assert (= (and b!2558290 (not res!1077287)) b!2558280))

(assert (= (and b!2558280 (not res!1077289)) b!2558281))

(assert (= (or b!2558279 b!2558288 b!2558290) bm!163534))

(declare-fun m!2899209 () Bool)

(assert (=> bm!163534 m!2899209))

(assert (=> d!724824 m!2899209))

(assert (=> d!724824 m!2899147))

(declare-fun m!2899211 () Bool)

(assert (=> b!2558287 m!2899211))

(assert (=> b!2558287 m!2899211))

(declare-fun m!2899213 () Bool)

(assert (=> b!2558287 m!2899213))

(declare-fun m!2899215 () Bool)

(assert (=> b!2558283 m!2899215))

(assert (=> b!2558283 m!2899215))

(declare-fun m!2899217 () Bool)

(assert (=> b!2558283 m!2899217))

(assert (=> b!2558283 m!2899211))

(assert (=> b!2558283 m!2899217))

(assert (=> b!2558283 m!2899211))

(declare-fun m!2899219 () Bool)

(assert (=> b!2558283 m!2899219))

(assert (=> b!2558292 m!2899121))

(assert (=> b!2558280 m!2899211))

(assert (=> b!2558280 m!2899211))

(assert (=> b!2558280 m!2899213))

(assert (=> b!2558291 m!2899215))

(assert (=> b!2558281 m!2899215))

(assert (=> b!2558159 d!724824))

(declare-fun d!724826 () Bool)

(declare-fun nullableFct!755 (Regex!7613) Bool)

(assert (=> d!724826 (= (nullable!2530 (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068)) (nullableFct!755 (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469764 () Bool)

(assert (= bs!469764 d!724826))

(assert (=> bs!469764 m!2899117))

(declare-fun m!2899221 () Bool)

(assert (=> bs!469764 m!2899221))

(assert (=> b!2558152 d!724826))

(declare-fun d!724828 () Bool)

(declare-fun lt!904437 () Regex!7613)

(assert (=> d!724828 (validRegex!3239 lt!904437)))

(declare-fun e!1615878 () Regex!7613)

(assert (=> d!724828 (= lt!904437 e!1615878)))

(declare-fun c!410724 () Bool)

(assert (=> d!724828 (= c!410724 ((_ is Cons!29578) tl!4068))))

(assert (=> d!724828 (validRegex!3239 (derivativeStep!2182 r!27340 c!14016))))

(assert (=> d!724828 (= (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068) lt!904437)))

(declare-fun b!2558326 () Bool)

(assert (=> b!2558326 (= e!1615878 (derivative!308 (derivativeStep!2182 (derivativeStep!2182 r!27340 c!14016) (h!34998 tl!4068)) (t!211377 tl!4068)))))

(declare-fun b!2558327 () Bool)

(assert (=> b!2558327 (= e!1615878 (derivativeStep!2182 r!27340 c!14016))))

(assert (= (and d!724828 c!410724) b!2558326))

(assert (= (and d!724828 (not c!410724)) b!2558327))

(declare-fun m!2899251 () Bool)

(assert (=> d!724828 m!2899251))

(assert (=> d!724828 m!2899115))

(declare-fun m!2899253 () Bool)

(assert (=> d!724828 m!2899253))

(assert (=> b!2558326 m!2899115))

(declare-fun m!2899255 () Bool)

(assert (=> b!2558326 m!2899255))

(assert (=> b!2558326 m!2899255))

(declare-fun m!2899257 () Bool)

(assert (=> b!2558326 m!2899257))

(assert (=> b!2558152 d!724828))

(declare-fun bm!163559 () Bool)

(declare-fun call!163566 () Regex!7613)

(declare-fun call!163567 () Regex!7613)

(assert (=> bm!163559 (= call!163566 call!163567)))

(declare-fun b!2558398 () Bool)

(declare-fun e!1615915 () Regex!7613)

(assert (=> b!2558398 (= e!1615915 EmptyLang!7613)))

(declare-fun b!2558399 () Bool)

(declare-fun c!410759 () Bool)

(assert (=> b!2558399 (= c!410759 ((_ is Union!7613) r!27340))))

(declare-fun e!1615917 () Regex!7613)

(declare-fun e!1615919 () Regex!7613)

(assert (=> b!2558399 (= e!1615917 e!1615919)))

(declare-fun call!163564 () Regex!7613)

(declare-fun bm!163560 () Bool)

(assert (=> bm!163560 (= call!163564 (derivativeStep!2182 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340)) c!14016))))

(declare-fun b!2558400 () Bool)

(declare-fun c!410757 () Bool)

(assert (=> b!2558400 (= c!410757 (nullable!2530 (regOne!15738 r!27340)))))

(declare-fun e!1615918 () Regex!7613)

(declare-fun e!1615916 () Regex!7613)

(assert (=> b!2558400 (= e!1615918 e!1615916)))

(declare-fun b!2558401 () Bool)

(assert (=> b!2558401 (= e!1615918 (Concat!12309 call!163566 r!27340))))

(declare-fun bm!163561 () Bool)

(declare-fun call!163565 () Regex!7613)

(assert (=> bm!163561 (= call!163565 call!163566)))

(declare-fun d!724836 () Bool)

(declare-fun lt!904453 () Regex!7613)

(assert (=> d!724836 (validRegex!3239 lt!904453)))

(assert (=> d!724836 (= lt!904453 e!1615915)))

(declare-fun c!410756 () Bool)

(assert (=> d!724836 (= c!410756 (or ((_ is EmptyExpr!7613) r!27340) ((_ is EmptyLang!7613) r!27340)))))

(assert (=> d!724836 (validRegex!3239 r!27340)))

(assert (=> d!724836 (= (derivativeStep!2182 r!27340 c!14016) lt!904453)))

(declare-fun b!2558402 () Bool)

(assert (=> b!2558402 (= e!1615919 (Union!7613 call!163564 call!163567))))

(declare-fun b!2558403 () Bool)

(assert (=> b!2558403 (= e!1615916 (Union!7613 (Concat!12309 call!163565 (regTwo!15738 r!27340)) EmptyLang!7613))))

(declare-fun b!2558404 () Bool)

(assert (=> b!2558404 (= e!1615916 (Union!7613 (Concat!12309 call!163565 (regTwo!15738 r!27340)) call!163564))))

(declare-fun b!2558405 () Bool)

(assert (=> b!2558405 (= e!1615915 e!1615917)))

(declare-fun c!410758 () Bool)

(assert (=> b!2558405 (= c!410758 ((_ is ElementMatch!7613) r!27340))))

(declare-fun b!2558406 () Bool)

(assert (=> b!2558406 (= e!1615919 e!1615918)))

(declare-fun c!410755 () Bool)

(assert (=> b!2558406 (= c!410755 ((_ is Star!7613) r!27340))))

(declare-fun bm!163562 () Bool)

(assert (=> bm!163562 (= call!163567 (derivativeStep!2182 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340))) c!14016))))

(declare-fun b!2558407 () Bool)

(assert (=> b!2558407 (= e!1615917 (ite (= c!14016 (c!410685 r!27340)) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!724836 c!410756) b!2558398))

(assert (= (and d!724836 (not c!410756)) b!2558405))

(assert (= (and b!2558405 c!410758) b!2558407))

(assert (= (and b!2558405 (not c!410758)) b!2558399))

(assert (= (and b!2558399 c!410759) b!2558402))

(assert (= (and b!2558399 (not c!410759)) b!2558406))

(assert (= (and b!2558406 c!410755) b!2558401))

(assert (= (and b!2558406 (not c!410755)) b!2558400))

(assert (= (and b!2558400 c!410757) b!2558404))

(assert (= (and b!2558400 (not c!410757)) b!2558403))

(assert (= (or b!2558404 b!2558403) bm!163561))

(assert (= (or b!2558401 bm!163561) bm!163559))

(assert (= (or b!2558402 bm!163559) bm!163562))

(assert (= (or b!2558402 b!2558404) bm!163560))

(declare-fun m!2899281 () Bool)

(assert (=> bm!163560 m!2899281))

(assert (=> b!2558400 m!2899121))

(declare-fun m!2899283 () Bool)

(assert (=> d!724836 m!2899283))

(assert (=> d!724836 m!2899157))

(declare-fun m!2899285 () Bool)

(assert (=> bm!163562 m!2899285))

(assert (=> b!2558152 d!724836))

(declare-fun b!2558408 () Bool)

(declare-fun e!1615925 () Bool)

(declare-fun lt!904454 () Bool)

(declare-fun call!163568 () Bool)

(assert (=> b!2558408 (= e!1615925 (= lt!904454 call!163568))))

(declare-fun b!2558409 () Bool)

(declare-fun res!1077320 () Bool)

(declare-fun e!1615920 () Bool)

(assert (=> b!2558409 (=> res!1077320 e!1615920)))

(assert (=> b!2558409 (= res!1077320 (not (isEmpty!17034 (tail!4095 (_2!17336 lt!904412)))))))

(declare-fun b!2558410 () Bool)

(assert (=> b!2558410 (= e!1615920 (not (= (head!5820 (_2!17336 lt!904412)) (c!410685 (regTwo!15738 r!27340)))))))

(declare-fun bm!163563 () Bool)

(assert (=> bm!163563 (= call!163568 (isEmpty!17034 (_2!17336 lt!904412)))))

(declare-fun b!2558411 () Bool)

(declare-fun res!1077321 () Bool)

(declare-fun e!1615926 () Bool)

(assert (=> b!2558411 (=> res!1077321 e!1615926)))

(declare-fun e!1615921 () Bool)

(assert (=> b!2558411 (= res!1077321 e!1615921)))

(declare-fun res!1077317 () Bool)

(assert (=> b!2558411 (=> (not res!1077317) (not e!1615921))))

(assert (=> b!2558411 (= res!1077317 lt!904454)))

(declare-fun d!724848 () Bool)

(assert (=> d!724848 e!1615925))

(declare-fun c!410760 () Bool)

(assert (=> d!724848 (= c!410760 ((_ is EmptyExpr!7613) (regTwo!15738 r!27340)))))

(declare-fun e!1615922 () Bool)

(assert (=> d!724848 (= lt!904454 e!1615922)))

(declare-fun c!410762 () Bool)

(assert (=> d!724848 (= c!410762 (isEmpty!17034 (_2!17336 lt!904412)))))

(assert (=> d!724848 (validRegex!3239 (regTwo!15738 r!27340))))

(assert (=> d!724848 (= (matchR!3558 (regTwo!15738 r!27340) (_2!17336 lt!904412)) lt!904454)))

(declare-fun b!2558412 () Bool)

(assert (=> b!2558412 (= e!1615922 (matchR!3558 (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 (_2!17336 lt!904412))) (tail!4095 (_2!17336 lt!904412))))))

(declare-fun b!2558413 () Bool)

(declare-fun res!1077316 () Bool)

(assert (=> b!2558413 (=> res!1077316 e!1615926)))

(assert (=> b!2558413 (= res!1077316 (not ((_ is ElementMatch!7613) (regTwo!15738 r!27340))))))

(declare-fun e!1615924 () Bool)

(assert (=> b!2558413 (= e!1615924 e!1615926)))

(declare-fun b!2558414 () Bool)

(assert (=> b!2558414 (= e!1615925 e!1615924)))

(declare-fun c!410761 () Bool)

(assert (=> b!2558414 (= c!410761 ((_ is EmptyLang!7613) (regTwo!15738 r!27340)))))

(declare-fun b!2558415 () Bool)

(declare-fun e!1615923 () Bool)

(assert (=> b!2558415 (= e!1615926 e!1615923)))

(declare-fun res!1077323 () Bool)

(assert (=> b!2558415 (=> (not res!1077323) (not e!1615923))))

(assert (=> b!2558415 (= res!1077323 (not lt!904454))))

(declare-fun b!2558416 () Bool)

(declare-fun res!1077322 () Bool)

(assert (=> b!2558416 (=> (not res!1077322) (not e!1615921))))

(assert (=> b!2558416 (= res!1077322 (isEmpty!17034 (tail!4095 (_2!17336 lt!904412))))))

(declare-fun b!2558417 () Bool)

(declare-fun res!1077319 () Bool)

(assert (=> b!2558417 (=> (not res!1077319) (not e!1615921))))

(assert (=> b!2558417 (= res!1077319 (not call!163568))))

(declare-fun b!2558418 () Bool)

(assert (=> b!2558418 (= e!1615924 (not lt!904454))))

(declare-fun b!2558419 () Bool)

(assert (=> b!2558419 (= e!1615923 e!1615920)))

(declare-fun res!1077318 () Bool)

(assert (=> b!2558419 (=> res!1077318 e!1615920)))

(assert (=> b!2558419 (= res!1077318 call!163568)))

(declare-fun b!2558420 () Bool)

(assert (=> b!2558420 (= e!1615921 (= (head!5820 (_2!17336 lt!904412)) (c!410685 (regTwo!15738 r!27340))))))

(declare-fun b!2558421 () Bool)

(assert (=> b!2558421 (= e!1615922 (nullable!2530 (regTwo!15738 r!27340)))))

(assert (= (and d!724848 c!410762) b!2558421))

(assert (= (and d!724848 (not c!410762)) b!2558412))

(assert (= (and d!724848 c!410760) b!2558408))

(assert (= (and d!724848 (not c!410760)) b!2558414))

(assert (= (and b!2558414 c!410761) b!2558418))

(assert (= (and b!2558414 (not c!410761)) b!2558413))

(assert (= (and b!2558413 (not res!1077316)) b!2558411))

(assert (= (and b!2558411 res!1077317) b!2558417))

(assert (= (and b!2558417 res!1077319) b!2558416))

(assert (= (and b!2558416 res!1077322) b!2558420))

(assert (= (and b!2558411 (not res!1077321)) b!2558415))

(assert (= (and b!2558415 res!1077323) b!2558419))

(assert (= (and b!2558419 (not res!1077318)) b!2558409))

(assert (= (and b!2558409 (not res!1077320)) b!2558410))

(assert (= (or b!2558408 b!2558417 b!2558419) bm!163563))

(declare-fun m!2899287 () Bool)

(assert (=> bm!163563 m!2899287))

(assert (=> d!724848 m!2899287))

(declare-fun m!2899289 () Bool)

(assert (=> d!724848 m!2899289))

(declare-fun m!2899291 () Bool)

(assert (=> b!2558416 m!2899291))

(assert (=> b!2558416 m!2899291))

(declare-fun m!2899293 () Bool)

(assert (=> b!2558416 m!2899293))

(declare-fun m!2899295 () Bool)

(assert (=> b!2558412 m!2899295))

(assert (=> b!2558412 m!2899295))

(declare-fun m!2899297 () Bool)

(assert (=> b!2558412 m!2899297))

(assert (=> b!2558412 m!2899291))

(assert (=> b!2558412 m!2899297))

(assert (=> b!2558412 m!2899291))

(declare-fun m!2899299 () Bool)

(assert (=> b!2558412 m!2899299))

(declare-fun m!2899301 () Bool)

(assert (=> b!2558421 m!2899301))

(assert (=> b!2558409 m!2899291))

(assert (=> b!2558409 m!2899291))

(assert (=> b!2558409 m!2899293))

(assert (=> b!2558420 m!2899295))

(assert (=> b!2558410 m!2899295))

(assert (=> b!2558162 d!724848))

(declare-fun d!724850 () Bool)

(assert (=> d!724850 (= (nullable!2530 lt!904417) (nullableFct!755 lt!904417))))

(declare-fun bs!469768 () Bool)

(assert (= bs!469768 d!724850))

(declare-fun m!2899303 () Bool)

(assert (=> bs!469768 m!2899303))

(assert (=> b!2558151 d!724850))

(declare-fun bm!163574 () Bool)

(declare-fun call!163579 () Bool)

(declare-fun c!410783 () Bool)

(assert (=> bm!163574 (= call!163579 (validRegex!3239 (ite c!410783 (regTwo!15739 r!27340) (regOne!15738 r!27340))))))

(declare-fun b!2558481 () Bool)

(declare-fun e!1615962 () Bool)

(declare-fun e!1615965 () Bool)

(assert (=> b!2558481 (= e!1615962 e!1615965)))

(declare-fun c!410782 () Bool)

(assert (=> b!2558481 (= c!410782 ((_ is Star!7613) r!27340))))

(declare-fun b!2558482 () Bool)

(declare-fun e!1615964 () Bool)

(declare-fun call!163582 () Bool)

(assert (=> b!2558482 (= e!1615964 call!163582)))

(declare-fun b!2558483 () Bool)

(declare-fun res!1077348 () Bool)

(declare-fun e!1615967 () Bool)

(assert (=> b!2558483 (=> (not res!1077348) (not e!1615967))))

(assert (=> b!2558483 (= res!1077348 call!163582)))

(declare-fun e!1615963 () Bool)

(assert (=> b!2558483 (= e!1615963 e!1615967)))

(declare-fun b!2558484 () Bool)

(assert (=> b!2558484 (= e!1615965 e!1615963)))

(assert (=> b!2558484 (= c!410783 ((_ is Union!7613) r!27340))))

(declare-fun b!2558485 () Bool)

(declare-fun e!1615968 () Bool)

(assert (=> b!2558485 (= e!1615968 e!1615964)))

(declare-fun res!1077349 () Bool)

(assert (=> b!2558485 (=> (not res!1077349) (not e!1615964))))

(assert (=> b!2558485 (= res!1077349 call!163579)))

(declare-fun b!2558486 () Bool)

(declare-fun res!1077346 () Bool)

(assert (=> b!2558486 (=> res!1077346 e!1615968)))

(assert (=> b!2558486 (= res!1077346 (not ((_ is Concat!12309) r!27340)))))

(assert (=> b!2558486 (= e!1615963 e!1615968)))

(declare-fun b!2558487 () Bool)

(declare-fun e!1615966 () Bool)

(declare-fun call!163583 () Bool)

(assert (=> b!2558487 (= e!1615966 call!163583)))

(declare-fun b!2558488 () Bool)

(assert (=> b!2558488 (= e!1615967 call!163579)))

(declare-fun bm!163575 () Bool)

(assert (=> bm!163575 (= call!163583 (validRegex!3239 (ite c!410782 (reg!7942 r!27340) (ite c!410783 (regOne!15739 r!27340) (regTwo!15738 r!27340)))))))

(declare-fun d!724852 () Bool)

(declare-fun res!1077347 () Bool)

(assert (=> d!724852 (=> res!1077347 e!1615962)))

(assert (=> d!724852 (= res!1077347 ((_ is ElementMatch!7613) r!27340))))

(assert (=> d!724852 (= (validRegex!3239 r!27340) e!1615962)))

(declare-fun bm!163578 () Bool)

(assert (=> bm!163578 (= call!163582 call!163583)))

(declare-fun b!2558489 () Bool)

(assert (=> b!2558489 (= e!1615965 e!1615966)))

(declare-fun res!1077345 () Bool)

(assert (=> b!2558489 (= res!1077345 (not (nullable!2530 (reg!7942 r!27340))))))

(assert (=> b!2558489 (=> (not res!1077345) (not e!1615966))))

(assert (= (and d!724852 (not res!1077347)) b!2558481))

(assert (= (and b!2558481 c!410782) b!2558489))

(assert (= (and b!2558481 (not c!410782)) b!2558484))

(assert (= (and b!2558489 res!1077345) b!2558487))

(assert (= (and b!2558484 c!410783) b!2558483))

(assert (= (and b!2558484 (not c!410783)) b!2558486))

(assert (= (and b!2558483 res!1077348) b!2558488))

(assert (= (and b!2558486 (not res!1077346)) b!2558485))

(assert (= (and b!2558485 res!1077349) b!2558482))

(assert (= (or b!2558483 b!2558482) bm!163578))

(assert (= (or b!2558488 b!2558485) bm!163574))

(assert (= (or b!2558487 bm!163578) bm!163575))

(declare-fun m!2899347 () Bool)

(assert (=> bm!163574 m!2899347))

(declare-fun m!2899349 () Bool)

(assert (=> bm!163575 m!2899349))

(declare-fun m!2899351 () Bool)

(assert (=> b!2558489 m!2899351))

(assert (=> start!247796 d!724852))

(declare-fun bm!163583 () Bool)

(declare-fun call!163588 () Bool)

(declare-fun c!410785 () Bool)

(assert (=> bm!163583 (= call!163588 (validRegex!3239 (ite c!410785 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))

(declare-fun b!2558490 () Bool)

(declare-fun e!1615969 () Bool)

(declare-fun e!1615972 () Bool)

(assert (=> b!2558490 (= e!1615969 e!1615972)))

(declare-fun c!410784 () Bool)

(assert (=> b!2558490 (= c!410784 ((_ is Star!7613) (regOne!15738 r!27340)))))

(declare-fun b!2558491 () Bool)

(declare-fun e!1615971 () Bool)

(declare-fun call!163589 () Bool)

(assert (=> b!2558491 (= e!1615971 call!163589)))

(declare-fun b!2558492 () Bool)

(declare-fun res!1077353 () Bool)

(declare-fun e!1615974 () Bool)

(assert (=> b!2558492 (=> (not res!1077353) (not e!1615974))))

(assert (=> b!2558492 (= res!1077353 call!163589)))

(declare-fun e!1615970 () Bool)

(assert (=> b!2558492 (= e!1615970 e!1615974)))

(declare-fun b!2558493 () Bool)

(assert (=> b!2558493 (= e!1615972 e!1615970)))

(assert (=> b!2558493 (= c!410785 ((_ is Union!7613) (regOne!15738 r!27340)))))

(declare-fun b!2558494 () Bool)

(declare-fun e!1615975 () Bool)

(assert (=> b!2558494 (= e!1615975 e!1615971)))

(declare-fun res!1077354 () Bool)

(assert (=> b!2558494 (=> (not res!1077354) (not e!1615971))))

(assert (=> b!2558494 (= res!1077354 call!163588)))

(declare-fun b!2558495 () Bool)

(declare-fun res!1077351 () Bool)

(assert (=> b!2558495 (=> res!1077351 e!1615975)))

(assert (=> b!2558495 (= res!1077351 (not ((_ is Concat!12309) (regOne!15738 r!27340))))))

(assert (=> b!2558495 (= e!1615970 e!1615975)))

(declare-fun b!2558496 () Bool)

(declare-fun e!1615973 () Bool)

(declare-fun call!163590 () Bool)

(assert (=> b!2558496 (= e!1615973 call!163590)))

(declare-fun b!2558497 () Bool)

(assert (=> b!2558497 (= e!1615974 call!163588)))

(declare-fun bm!163584 () Bool)

(assert (=> bm!163584 (= call!163590 (validRegex!3239 (ite c!410784 (reg!7942 (regOne!15738 r!27340)) (ite c!410785 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))))))

(declare-fun d!724864 () Bool)

(declare-fun res!1077352 () Bool)

(assert (=> d!724864 (=> res!1077352 e!1615969)))

(assert (=> d!724864 (= res!1077352 ((_ is ElementMatch!7613) (regOne!15738 r!27340)))))

(assert (=> d!724864 (= (validRegex!3239 (regOne!15738 r!27340)) e!1615969)))

(declare-fun bm!163585 () Bool)

(assert (=> bm!163585 (= call!163589 call!163590)))

(declare-fun b!2558498 () Bool)

(assert (=> b!2558498 (= e!1615972 e!1615973)))

(declare-fun res!1077350 () Bool)

(assert (=> b!2558498 (= res!1077350 (not (nullable!2530 (reg!7942 (regOne!15738 r!27340)))))))

(assert (=> b!2558498 (=> (not res!1077350) (not e!1615973))))

(assert (= (and d!724864 (not res!1077352)) b!2558490))

(assert (= (and b!2558490 c!410784) b!2558498))

(assert (= (and b!2558490 (not c!410784)) b!2558493))

(assert (= (and b!2558498 res!1077350) b!2558496))

(assert (= (and b!2558493 c!410785) b!2558492))

(assert (= (and b!2558493 (not c!410785)) b!2558495))

(assert (= (and b!2558492 res!1077353) b!2558497))

(assert (= (and b!2558495 (not res!1077351)) b!2558494))

(assert (= (and b!2558494 res!1077354) b!2558491))

(assert (= (or b!2558492 b!2558491) bm!163585))

(assert (= (or b!2558497 b!2558494) bm!163583))

(assert (= (or b!2558496 bm!163585) bm!163584))

(declare-fun m!2899353 () Bool)

(assert (=> bm!163583 m!2899353))

(declare-fun m!2899355 () Bool)

(assert (=> bm!163584 m!2899355))

(declare-fun m!2899357 () Bool)

(assert (=> b!2558498 m!2899357))

(assert (=> b!2558155 d!724864))

(declare-fun b!2558499 () Bool)

(declare-fun e!1615981 () Bool)

(declare-fun lt!904464 () Bool)

(declare-fun call!163591 () Bool)

(assert (=> b!2558499 (= e!1615981 (= lt!904464 call!163591))))

(declare-fun b!2558500 () Bool)

(declare-fun res!1077359 () Bool)

(declare-fun e!1615976 () Bool)

(assert (=> b!2558500 (=> res!1077359 e!1615976)))

(assert (=> b!2558500 (= res!1077359 (not (isEmpty!17034 (tail!4095 Nil!29578))))))

(declare-fun b!2558501 () Bool)

(assert (=> b!2558501 (= e!1615976 (not (= (head!5820 Nil!29578) (c!410685 lt!904417))))))

(declare-fun bm!163586 () Bool)

(assert (=> bm!163586 (= call!163591 (isEmpty!17034 Nil!29578))))

(declare-fun b!2558502 () Bool)

(declare-fun res!1077360 () Bool)

(declare-fun e!1615982 () Bool)

(assert (=> b!2558502 (=> res!1077360 e!1615982)))

(declare-fun e!1615977 () Bool)

(assert (=> b!2558502 (= res!1077360 e!1615977)))

(declare-fun res!1077356 () Bool)

(assert (=> b!2558502 (=> (not res!1077356) (not e!1615977))))

(assert (=> b!2558502 (= res!1077356 lt!904464)))

(declare-fun d!724866 () Bool)

(assert (=> d!724866 e!1615981))

(declare-fun c!410786 () Bool)

(assert (=> d!724866 (= c!410786 ((_ is EmptyExpr!7613) lt!904417))))

(declare-fun e!1615978 () Bool)

(assert (=> d!724866 (= lt!904464 e!1615978)))

(declare-fun c!410788 () Bool)

(assert (=> d!724866 (= c!410788 (isEmpty!17034 Nil!29578))))

(assert (=> d!724866 (validRegex!3239 lt!904417)))

(assert (=> d!724866 (= (matchR!3558 lt!904417 Nil!29578) lt!904464)))

(declare-fun b!2558503 () Bool)

(assert (=> b!2558503 (= e!1615978 (matchR!3558 (derivativeStep!2182 lt!904417 (head!5820 Nil!29578)) (tail!4095 Nil!29578)))))

(declare-fun b!2558504 () Bool)

(declare-fun res!1077355 () Bool)

(assert (=> b!2558504 (=> res!1077355 e!1615982)))

(assert (=> b!2558504 (= res!1077355 (not ((_ is ElementMatch!7613) lt!904417)))))

(declare-fun e!1615980 () Bool)

(assert (=> b!2558504 (= e!1615980 e!1615982)))

(declare-fun b!2558505 () Bool)

(assert (=> b!2558505 (= e!1615981 e!1615980)))

(declare-fun c!410787 () Bool)

(assert (=> b!2558505 (= c!410787 ((_ is EmptyLang!7613) lt!904417))))

(declare-fun b!2558506 () Bool)

(declare-fun e!1615979 () Bool)

(assert (=> b!2558506 (= e!1615982 e!1615979)))

(declare-fun res!1077362 () Bool)

(assert (=> b!2558506 (=> (not res!1077362) (not e!1615979))))

(assert (=> b!2558506 (= res!1077362 (not lt!904464))))

(declare-fun b!2558507 () Bool)

(declare-fun res!1077361 () Bool)

(assert (=> b!2558507 (=> (not res!1077361) (not e!1615977))))

(assert (=> b!2558507 (= res!1077361 (isEmpty!17034 (tail!4095 Nil!29578)))))

(declare-fun b!2558508 () Bool)

(declare-fun res!1077358 () Bool)

(assert (=> b!2558508 (=> (not res!1077358) (not e!1615977))))

(assert (=> b!2558508 (= res!1077358 (not call!163591))))

(declare-fun b!2558509 () Bool)

(assert (=> b!2558509 (= e!1615980 (not lt!904464))))

(declare-fun b!2558510 () Bool)

(assert (=> b!2558510 (= e!1615979 e!1615976)))

(declare-fun res!1077357 () Bool)

(assert (=> b!2558510 (=> res!1077357 e!1615976)))

(assert (=> b!2558510 (= res!1077357 call!163591)))

(declare-fun b!2558511 () Bool)

(assert (=> b!2558511 (= e!1615977 (= (head!5820 Nil!29578) (c!410685 lt!904417)))))

(declare-fun b!2558512 () Bool)

(assert (=> b!2558512 (= e!1615978 (nullable!2530 lt!904417))))

(assert (= (and d!724866 c!410788) b!2558512))

(assert (= (and d!724866 (not c!410788)) b!2558503))

(assert (= (and d!724866 c!410786) b!2558499))

(assert (= (and d!724866 (not c!410786)) b!2558505))

(assert (= (and b!2558505 c!410787) b!2558509))

(assert (= (and b!2558505 (not c!410787)) b!2558504))

(assert (= (and b!2558504 (not res!1077355)) b!2558502))

(assert (= (and b!2558502 res!1077356) b!2558508))

(assert (= (and b!2558508 res!1077358) b!2558507))

(assert (= (and b!2558507 res!1077361) b!2558511))

(assert (= (and b!2558502 (not res!1077360)) b!2558506))

(assert (= (and b!2558506 res!1077362) b!2558510))

(assert (= (and b!2558510 (not res!1077357)) b!2558500))

(assert (= (and b!2558500 (not res!1077359)) b!2558501))

(assert (= (or b!2558499 b!2558508 b!2558510) bm!163586))

(declare-fun m!2899359 () Bool)

(assert (=> bm!163586 m!2899359))

(assert (=> d!724866 m!2899359))

(declare-fun m!2899361 () Bool)

(assert (=> d!724866 m!2899361))

(declare-fun m!2899363 () Bool)

(assert (=> b!2558507 m!2899363))

(assert (=> b!2558507 m!2899363))

(declare-fun m!2899365 () Bool)

(assert (=> b!2558507 m!2899365))

(declare-fun m!2899367 () Bool)

(assert (=> b!2558503 m!2899367))

(assert (=> b!2558503 m!2899367))

(declare-fun m!2899369 () Bool)

(assert (=> b!2558503 m!2899369))

(assert (=> b!2558503 m!2899363))

(assert (=> b!2558503 m!2899369))

(assert (=> b!2558503 m!2899363))

(declare-fun m!2899371 () Bool)

(assert (=> b!2558503 m!2899371))

(assert (=> b!2558512 m!2899097))

(assert (=> b!2558500 m!2899363))

(assert (=> b!2558500 m!2899363))

(assert (=> b!2558500 m!2899365))

(assert (=> b!2558511 m!2899367))

(assert (=> b!2558501 m!2899367))

(assert (=> b!2558155 d!724866))

(declare-fun d!724868 () Bool)

(declare-fun lt!904465 () Regex!7613)

(assert (=> d!724868 (validRegex!3239 lt!904465)))

(declare-fun e!1615983 () Regex!7613)

(assert (=> d!724868 (= lt!904465 e!1615983)))

(declare-fun c!410789 () Bool)

(assert (=> d!724868 (= c!410789 ((_ is Cons!29578) (_1!17336 lt!904412)))))

(assert (=> d!724868 (validRegex!3239 lt!904422)))

(assert (=> d!724868 (= (derivative!308 lt!904422 (_1!17336 lt!904412)) lt!904465)))

(declare-fun b!2558513 () Bool)

(assert (=> b!2558513 (= e!1615983 (derivative!308 (derivativeStep!2182 lt!904422 (h!34998 (_1!17336 lt!904412))) (t!211377 (_1!17336 lt!904412))))))

(declare-fun b!2558514 () Bool)

(assert (=> b!2558514 (= e!1615983 lt!904422)))

(assert (= (and d!724868 c!410789) b!2558513))

(assert (= (and d!724868 (not c!410789)) b!2558514))

(declare-fun m!2899373 () Bool)

(assert (=> d!724868 m!2899373))

(assert (=> d!724868 m!2899195))

(declare-fun m!2899375 () Bool)

(assert (=> b!2558513 m!2899375))

(assert (=> b!2558513 m!2899375))

(declare-fun m!2899377 () Bool)

(assert (=> b!2558513 m!2899377))

(assert (=> b!2558155 d!724868))

(declare-fun d!724870 () Bool)

(assert (=> d!724870 (= (matchR!3558 lt!904422 (_1!17336 lt!904412)) (matchR!3558 (derivative!308 lt!904422 (_1!17336 lt!904412)) Nil!29578))))

(declare-fun lt!904472 () Unit!43411)

(declare-fun choose!15100 (Regex!7613 List!29678) Unit!43411)

(assert (=> d!724870 (= lt!904472 (choose!15100 lt!904422 (_1!17336 lt!904412)))))

(assert (=> d!724870 (validRegex!3239 lt!904422)))

(assert (=> d!724870 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!204 lt!904422 (_1!17336 lt!904412)) lt!904472)))

(declare-fun bs!469771 () Bool)

(assert (= bs!469771 d!724870))

(assert (=> bs!469771 m!2899155))

(assert (=> bs!469771 m!2899195))

(assert (=> bs!469771 m!2899151))

(declare-fun m!2899405 () Bool)

(assert (=> bs!469771 m!2899405))

(assert (=> bs!469771 m!2899151))

(declare-fun m!2899407 () Bool)

(assert (=> bs!469771 m!2899407))

(assert (=> b!2558155 d!724870))

(declare-fun bm!163624 () Bool)

(declare-fun call!163631 () List!29678)

(declare-fun call!163629 () List!29678)

(assert (=> bm!163624 (= call!163631 call!163629)))

(declare-fun b!2558690 () Bool)

(declare-fun e!1616084 () List!29678)

(declare-fun call!163633 () List!29678)

(assert (=> b!2558690 (= e!1616084 call!163633)))

(declare-fun c!410844 () Bool)

(declare-fun c!410845 () Bool)

(declare-fun bm!163625 () Bool)

(assert (=> bm!163625 (= call!163633 (firstChars!96 (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340)))))))

(declare-fun b!2558691 () Bool)

(declare-fun e!1616082 () List!29678)

(declare-fun call!163630 () List!29678)

(assert (=> b!2558691 (= e!1616082 call!163630)))

(declare-fun b!2558692 () Bool)

(declare-fun e!1616083 () List!29678)

(assert (=> b!2558692 (= e!1616083 call!163630)))

(declare-fun b!2558693 () Bool)

(declare-fun e!1616079 () List!29678)

(declare-fun e!1616078 () List!29678)

(assert (=> b!2558693 (= e!1616079 e!1616078)))

(declare-fun c!410843 () Bool)

(assert (=> b!2558693 (= c!410843 ((_ is ElementMatch!7613) r!27340))))

(declare-fun b!2558694 () Bool)

(assert (=> b!2558694 (= e!1616084 e!1616083)))

(assert (=> b!2558694 (= c!410845 ((_ is Union!7613) r!27340))))

(declare-fun bm!163626 () Bool)

(declare-fun call!163632 () List!29678)

(assert (=> bm!163626 (= call!163630 (++!7270 (ite c!410845 call!163629 call!163632) (ite c!410845 call!163632 call!163631)))))

(declare-fun c!410842 () Bool)

(declare-fun bm!163627 () Bool)

(assert (=> bm!163627 (= call!163629 (firstChars!96 (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340)))))))

(declare-fun b!2558695 () Bool)

(assert (=> b!2558695 (= c!410844 ((_ is Star!7613) r!27340))))

(assert (=> b!2558695 (= e!1616078 e!1616084)))

(declare-fun b!2558696 () Bool)

(assert (=> b!2558696 (= c!410842 (nullable!2530 (regOne!15738 r!27340)))))

(assert (=> b!2558696 (= e!1616083 e!1616082)))

(declare-fun b!2558697 () Bool)

(assert (=> b!2558697 (= e!1616082 call!163631)))

(declare-fun bm!163628 () Bool)

(assert (=> bm!163628 (= call!163632 call!163633)))

(declare-fun d!724880 () Bool)

(declare-fun c!410846 () Bool)

(assert (=> d!724880 (= c!410846 (or ((_ is EmptyExpr!7613) r!27340) ((_ is EmptyLang!7613) r!27340)))))

(assert (=> d!724880 (= (firstChars!96 r!27340) e!1616079)))

(declare-fun b!2558698 () Bool)

(assert (=> b!2558698 (= e!1616078 (Cons!29578 (c!410685 r!27340) Nil!29578))))

(declare-fun b!2558699 () Bool)

(assert (=> b!2558699 (= e!1616079 Nil!29578)))

(assert (= (and d!724880 c!410846) b!2558699))

(assert (= (and d!724880 (not c!410846)) b!2558693))

(assert (= (and b!2558693 c!410843) b!2558698))

(assert (= (and b!2558693 (not c!410843)) b!2558695))

(assert (= (and b!2558695 c!410844) b!2558690))

(assert (= (and b!2558695 (not c!410844)) b!2558694))

(assert (= (and b!2558694 c!410845) b!2558692))

(assert (= (and b!2558694 (not c!410845)) b!2558696))

(assert (= (and b!2558696 c!410842) b!2558691))

(assert (= (and b!2558696 (not c!410842)) b!2558697))

(assert (= (or b!2558691 b!2558697) bm!163624))

(assert (= (or b!2558692 bm!163624) bm!163627))

(assert (= (or b!2558692 b!2558691) bm!163628))

(assert (= (or b!2558692 b!2558691) bm!163626))

(assert (= (or b!2558690 bm!163628) bm!163625))

(declare-fun m!2899509 () Bool)

(assert (=> bm!163625 m!2899509))

(declare-fun m!2899511 () Bool)

(assert (=> bm!163626 m!2899511))

(declare-fun m!2899513 () Bool)

(assert (=> bm!163627 m!2899513))

(assert (=> b!2558696 m!2899121))

(assert (=> b!2558154 d!724880))

(declare-fun d!724908 () Bool)

(declare-fun lt!904491 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4076 (List!29678) (InoxSet C!15384))

(assert (=> d!724908 (= lt!904491 (select (content!4076 (firstChars!96 r!27340)) c!14016))))

(declare-fun e!1616098 () Bool)

(assert (=> d!724908 (= lt!904491 e!1616098)))

(declare-fun res!1077435 () Bool)

(assert (=> d!724908 (=> (not res!1077435) (not e!1616098))))

(assert (=> d!724908 (= res!1077435 ((_ is Cons!29578) (firstChars!96 r!27340)))))

(assert (=> d!724908 (= (contains!5305 (firstChars!96 r!27340) c!14016) lt!904491)))

(declare-fun b!2558733 () Bool)

(declare-fun e!1616097 () Bool)

(assert (=> b!2558733 (= e!1616098 e!1616097)))

(declare-fun res!1077434 () Bool)

(assert (=> b!2558733 (=> res!1077434 e!1616097)))

(assert (=> b!2558733 (= res!1077434 (= (h!34998 (firstChars!96 r!27340)) c!14016))))

(declare-fun b!2558734 () Bool)

(assert (=> b!2558734 (= e!1616097 (contains!5305 (t!211377 (firstChars!96 r!27340)) c!14016))))

(assert (= (and d!724908 res!1077435) b!2558733))

(assert (= (and b!2558733 (not res!1077434)) b!2558734))

(assert (=> d!724908 m!2899123))

(declare-fun m!2899515 () Bool)

(assert (=> d!724908 m!2899515))

(declare-fun m!2899517 () Bool)

(assert (=> d!724908 m!2899517))

(declare-fun m!2899519 () Bool)

(assert (=> b!2558734 m!2899519))

(assert (=> b!2558154 d!724908))

(declare-fun d!724910 () Bool)

(declare-fun lt!904492 () Bool)

(assert (=> d!724910 (= lt!904492 (select (content!4076 (firstChars!96 (regOne!15738 r!27340))) c!14016))))

(declare-fun e!1616100 () Bool)

(assert (=> d!724910 (= lt!904492 e!1616100)))

(declare-fun res!1077437 () Bool)

(assert (=> d!724910 (=> (not res!1077437) (not e!1616100))))

(assert (=> d!724910 (= res!1077437 ((_ is Cons!29578) (firstChars!96 (regOne!15738 r!27340))))))

(assert (=> d!724910 (= (contains!5305 (firstChars!96 (regOne!15738 r!27340)) c!14016) lt!904492)))

(declare-fun b!2558735 () Bool)

(declare-fun e!1616099 () Bool)

(assert (=> b!2558735 (= e!1616100 e!1616099)))

(declare-fun res!1077436 () Bool)

(assert (=> b!2558735 (=> res!1077436 e!1616099)))

(assert (=> b!2558735 (= res!1077436 (= (h!34998 (firstChars!96 (regOne!15738 r!27340))) c!14016))))

(declare-fun b!2558736 () Bool)

(assert (=> b!2558736 (= e!1616099 (contains!5305 (t!211377 (firstChars!96 (regOne!15738 r!27340))) c!14016))))

(assert (= (and d!724910 res!1077437) b!2558735))

(assert (= (and b!2558735 (not res!1077436)) b!2558736))

(assert (=> d!724910 m!2899129))

(declare-fun m!2899521 () Bool)

(assert (=> d!724910 m!2899521))

(declare-fun m!2899523 () Bool)

(assert (=> d!724910 m!2899523))

(declare-fun m!2899525 () Bool)

(assert (=> b!2558736 m!2899525))

(assert (=> b!2558154 d!724910))

(declare-fun bm!163629 () Bool)

(declare-fun call!163636 () List!29678)

(declare-fun call!163634 () List!29678)

(assert (=> bm!163629 (= call!163636 call!163634)))

(declare-fun b!2558737 () Bool)

(declare-fun e!1616105 () List!29678)

(declare-fun call!163638 () List!29678)

(assert (=> b!2558737 (= e!1616105 call!163638)))

(declare-fun bm!163630 () Bool)

(declare-fun c!410850 () Bool)

(declare-fun c!410849 () Bool)

(assert (=> bm!163630 (= call!163638 (firstChars!96 (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(declare-fun b!2558738 () Bool)

(declare-fun e!1616103 () List!29678)

(declare-fun call!163635 () List!29678)

(assert (=> b!2558738 (= e!1616103 call!163635)))

(declare-fun b!2558739 () Bool)

(declare-fun e!1616104 () List!29678)

(assert (=> b!2558739 (= e!1616104 call!163635)))

(declare-fun b!2558740 () Bool)

(declare-fun e!1616102 () List!29678)

(declare-fun e!1616101 () List!29678)

(assert (=> b!2558740 (= e!1616102 e!1616101)))

(declare-fun c!410848 () Bool)

(assert (=> b!2558740 (= c!410848 ((_ is ElementMatch!7613) (regOne!15738 r!27340)))))

(declare-fun b!2558741 () Bool)

(assert (=> b!2558741 (= e!1616105 e!1616104)))

(assert (=> b!2558741 (= c!410850 ((_ is Union!7613) (regOne!15738 r!27340)))))

(declare-fun bm!163631 () Bool)

(declare-fun call!163637 () List!29678)

(assert (=> bm!163631 (= call!163635 (++!7270 (ite c!410850 call!163634 call!163637) (ite c!410850 call!163637 call!163636)))))

(declare-fun bm!163632 () Bool)

(declare-fun c!410847 () Bool)

(assert (=> bm!163632 (= call!163634 (firstChars!96 (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(declare-fun b!2558742 () Bool)

(assert (=> b!2558742 (= c!410849 ((_ is Star!7613) (regOne!15738 r!27340)))))

(assert (=> b!2558742 (= e!1616101 e!1616105)))

(declare-fun b!2558743 () Bool)

(assert (=> b!2558743 (= c!410847 (nullable!2530 (regOne!15738 (regOne!15738 r!27340))))))

(assert (=> b!2558743 (= e!1616104 e!1616103)))

(declare-fun b!2558744 () Bool)

(assert (=> b!2558744 (= e!1616103 call!163636)))

(declare-fun bm!163633 () Bool)

(assert (=> bm!163633 (= call!163637 call!163638)))

(declare-fun d!724912 () Bool)

(declare-fun c!410851 () Bool)

(assert (=> d!724912 (= c!410851 (or ((_ is EmptyExpr!7613) (regOne!15738 r!27340)) ((_ is EmptyLang!7613) (regOne!15738 r!27340))))))

(assert (=> d!724912 (= (firstChars!96 (regOne!15738 r!27340)) e!1616102)))

(declare-fun b!2558745 () Bool)

(assert (=> b!2558745 (= e!1616101 (Cons!29578 (c!410685 (regOne!15738 r!27340)) Nil!29578))))

(declare-fun b!2558746 () Bool)

(assert (=> b!2558746 (= e!1616102 Nil!29578)))

(assert (= (and d!724912 c!410851) b!2558746))

(assert (= (and d!724912 (not c!410851)) b!2558740))

(assert (= (and b!2558740 c!410848) b!2558745))

(assert (= (and b!2558740 (not c!410848)) b!2558742))

(assert (= (and b!2558742 c!410849) b!2558737))

(assert (= (and b!2558742 (not c!410849)) b!2558741))

(assert (= (and b!2558741 c!410850) b!2558739))

(assert (= (and b!2558741 (not c!410850)) b!2558743))

(assert (= (and b!2558743 c!410847) b!2558738))

(assert (= (and b!2558743 (not c!410847)) b!2558744))

(assert (= (or b!2558738 b!2558744) bm!163629))

(assert (= (or b!2558739 bm!163629) bm!163632))

(assert (= (or b!2558739 b!2558738) bm!163633))

(assert (= (or b!2558739 b!2558738) bm!163631))

(assert (= (or b!2558737 bm!163633) bm!163630))

(declare-fun m!2899527 () Bool)

(assert (=> bm!163630 m!2899527))

(declare-fun m!2899529 () Bool)

(assert (=> bm!163631 m!2899529))

(declare-fun m!2899531 () Bool)

(assert (=> bm!163632 m!2899531))

(declare-fun m!2899533 () Bool)

(assert (=> b!2558743 m!2899533))

(assert (=> b!2558154 d!724912))

(declare-fun d!724914 () Bool)

(assert (=> d!724914 (contains!5305 (firstChars!96 (regOne!15738 r!27340)) c!14016)))

(declare-fun lt!904495 () Unit!43411)

(declare-fun choose!15101 (Regex!7613 C!15384 List!29678) Unit!43411)

(assert (=> d!724914 (= lt!904495 (choose!15101 (regOne!15738 r!27340) c!14016 (_1!17336 lt!904412)))))

(assert (=> d!724914 (validRegex!3239 (regOne!15738 r!27340))))

(assert (=> d!724914 (= (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!12 (regOne!15738 r!27340) c!14016 (_1!17336 lt!904412)) lt!904495)))

(declare-fun bs!469775 () Bool)

(assert (= bs!469775 d!724914))

(assert (=> bs!469775 m!2899129))

(assert (=> bs!469775 m!2899129))

(assert (=> bs!469775 m!2899131))

(declare-fun m!2899535 () Bool)

(assert (=> bs!469775 m!2899535))

(assert (=> bs!469775 m!2899147))

(assert (=> b!2558154 d!724914))

(declare-fun b!2558747 () Bool)

(declare-fun e!1616111 () Bool)

(declare-fun lt!904496 () Bool)

(declare-fun call!163639 () Bool)

(assert (=> b!2558747 (= e!1616111 (= lt!904496 call!163639))))

(declare-fun b!2558748 () Bool)

(declare-fun res!1077442 () Bool)

(declare-fun e!1616106 () Bool)

(assert (=> b!2558748 (=> res!1077442 e!1616106)))

(assert (=> b!2558748 (= res!1077442 (not (isEmpty!17034 (tail!4095 Nil!29578))))))

(declare-fun b!2558749 () Bool)

(assert (=> b!2558749 (= e!1616106 (not (= (head!5820 Nil!29578) (c!410685 (derivative!308 lt!904421 tl!4068)))))))

(declare-fun bm!163634 () Bool)

(assert (=> bm!163634 (= call!163639 (isEmpty!17034 Nil!29578))))

(declare-fun b!2558750 () Bool)

(declare-fun res!1077443 () Bool)

(declare-fun e!1616112 () Bool)

(assert (=> b!2558750 (=> res!1077443 e!1616112)))

(declare-fun e!1616107 () Bool)

(assert (=> b!2558750 (= res!1077443 e!1616107)))

(declare-fun res!1077439 () Bool)

(assert (=> b!2558750 (=> (not res!1077439) (not e!1616107))))

(assert (=> b!2558750 (= res!1077439 lt!904496)))

(declare-fun d!724916 () Bool)

(assert (=> d!724916 e!1616111))

(declare-fun c!410853 () Bool)

(assert (=> d!724916 (= c!410853 ((_ is EmptyExpr!7613) (derivative!308 lt!904421 tl!4068)))))

(declare-fun e!1616108 () Bool)

(assert (=> d!724916 (= lt!904496 e!1616108)))

(declare-fun c!410855 () Bool)

(assert (=> d!724916 (= c!410855 (isEmpty!17034 Nil!29578))))

(assert (=> d!724916 (validRegex!3239 (derivative!308 lt!904421 tl!4068))))

(assert (=> d!724916 (= (matchR!3558 (derivative!308 lt!904421 tl!4068) Nil!29578) lt!904496)))

(declare-fun b!2558751 () Bool)

(assert (=> b!2558751 (= e!1616108 (matchR!3558 (derivativeStep!2182 (derivative!308 lt!904421 tl!4068) (head!5820 Nil!29578)) (tail!4095 Nil!29578)))))

(declare-fun b!2558752 () Bool)

(declare-fun res!1077438 () Bool)

(assert (=> b!2558752 (=> res!1077438 e!1616112)))

(assert (=> b!2558752 (= res!1077438 (not ((_ is ElementMatch!7613) (derivative!308 lt!904421 tl!4068))))))

(declare-fun e!1616110 () Bool)

(assert (=> b!2558752 (= e!1616110 e!1616112)))

(declare-fun b!2558753 () Bool)

(assert (=> b!2558753 (= e!1616111 e!1616110)))

(declare-fun c!410854 () Bool)

(assert (=> b!2558753 (= c!410854 ((_ is EmptyLang!7613) (derivative!308 lt!904421 tl!4068)))))

(declare-fun b!2558754 () Bool)

(declare-fun e!1616109 () Bool)

(assert (=> b!2558754 (= e!1616112 e!1616109)))

(declare-fun res!1077445 () Bool)

(assert (=> b!2558754 (=> (not res!1077445) (not e!1616109))))

(assert (=> b!2558754 (= res!1077445 (not lt!904496))))

(declare-fun b!2558755 () Bool)

(declare-fun res!1077444 () Bool)

(assert (=> b!2558755 (=> (not res!1077444) (not e!1616107))))

(assert (=> b!2558755 (= res!1077444 (isEmpty!17034 (tail!4095 Nil!29578)))))

(declare-fun b!2558756 () Bool)

(declare-fun res!1077441 () Bool)

(assert (=> b!2558756 (=> (not res!1077441) (not e!1616107))))

(assert (=> b!2558756 (= res!1077441 (not call!163639))))

(declare-fun b!2558757 () Bool)

(assert (=> b!2558757 (= e!1616110 (not lt!904496))))

(declare-fun b!2558758 () Bool)

(assert (=> b!2558758 (= e!1616109 e!1616106)))

(declare-fun res!1077440 () Bool)

(assert (=> b!2558758 (=> res!1077440 e!1616106)))

(assert (=> b!2558758 (= res!1077440 call!163639)))

(declare-fun b!2558759 () Bool)

(assert (=> b!2558759 (= e!1616107 (= (head!5820 Nil!29578) (c!410685 (derivative!308 lt!904421 tl!4068))))))

(declare-fun b!2558760 () Bool)

(assert (=> b!2558760 (= e!1616108 (nullable!2530 (derivative!308 lt!904421 tl!4068)))))

(assert (= (and d!724916 c!410855) b!2558760))

(assert (= (and d!724916 (not c!410855)) b!2558751))

(assert (= (and d!724916 c!410853) b!2558747))

(assert (= (and d!724916 (not c!410853)) b!2558753))

(assert (= (and b!2558753 c!410854) b!2558757))

(assert (= (and b!2558753 (not c!410854)) b!2558752))

(assert (= (and b!2558752 (not res!1077438)) b!2558750))

(assert (= (and b!2558750 res!1077439) b!2558756))

(assert (= (and b!2558756 res!1077441) b!2558755))

(assert (= (and b!2558755 res!1077444) b!2558759))

(assert (= (and b!2558750 (not res!1077443)) b!2558754))

(assert (= (and b!2558754 res!1077445) b!2558758))

(assert (= (and b!2558758 (not res!1077440)) b!2558748))

(assert (= (and b!2558748 (not res!1077442)) b!2558749))

(assert (= (or b!2558747 b!2558756 b!2558758) bm!163634))

(assert (=> bm!163634 m!2899359))

(assert (=> d!724916 m!2899359))

(assert (=> d!724916 m!2899107))

(declare-fun m!2899537 () Bool)

(assert (=> d!724916 m!2899537))

(assert (=> b!2558755 m!2899363))

(assert (=> b!2558755 m!2899363))

(assert (=> b!2558755 m!2899365))

(assert (=> b!2558751 m!2899367))

(assert (=> b!2558751 m!2899107))

(assert (=> b!2558751 m!2899367))

(declare-fun m!2899539 () Bool)

(assert (=> b!2558751 m!2899539))

(assert (=> b!2558751 m!2899363))

(assert (=> b!2558751 m!2899539))

(assert (=> b!2558751 m!2899363))

(declare-fun m!2899541 () Bool)

(assert (=> b!2558751 m!2899541))

(assert (=> b!2558760 m!2899107))

(declare-fun m!2899543 () Bool)

(assert (=> b!2558760 m!2899543))

(assert (=> b!2558748 m!2899363))

(assert (=> b!2558748 m!2899363))

(assert (=> b!2558748 m!2899365))

(assert (=> b!2558759 m!2899367))

(assert (=> b!2558749 m!2899367))

(assert (=> b!2558157 d!724916))

(declare-fun d!724918 () Bool)

(declare-fun e!1616118 () Bool)

(assert (=> d!724918 e!1616118))

(declare-fun res!1077450 () Bool)

(assert (=> d!724918 (=> res!1077450 e!1616118)))

(assert (=> d!724918 (= res!1077450 (matchR!3558 lt!904414 tl!4068))))

(declare-fun lt!904499 () Unit!43411)

(declare-fun choose!15102 (Regex!7613 Regex!7613 List!29678) Unit!43411)

(assert (=> d!724918 (= lt!904499 (choose!15102 lt!904414 lt!904411 tl!4068))))

(declare-fun e!1616117 () Bool)

(assert (=> d!724918 e!1616117))

(declare-fun res!1077451 () Bool)

(assert (=> d!724918 (=> (not res!1077451) (not e!1616117))))

(assert (=> d!724918 (= res!1077451 (validRegex!3239 lt!904414))))

(assert (=> d!724918 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!208 lt!904414 lt!904411 tl!4068) lt!904499)))

(declare-fun b!2558765 () Bool)

(assert (=> b!2558765 (= e!1616117 (validRegex!3239 lt!904411))))

(declare-fun b!2558766 () Bool)

(assert (=> b!2558766 (= e!1616118 (matchR!3558 lt!904411 tl!4068))))

(assert (= (and d!724918 res!1077451) b!2558765))

(assert (= (and d!724918 (not res!1077450)) b!2558766))

(assert (=> d!724918 m!2899099))

(declare-fun m!2899545 () Bool)

(assert (=> d!724918 m!2899545))

(declare-fun m!2899547 () Bool)

(assert (=> d!724918 m!2899547))

(assert (=> b!2558765 m!2899179))

(assert (=> b!2558766 m!2899159))

(assert (=> b!2558157 d!724918))

(declare-fun b!2558767 () Bool)

(declare-fun e!1616124 () Bool)

(declare-fun lt!904500 () Bool)

(declare-fun call!163640 () Bool)

(assert (=> b!2558767 (= e!1616124 (= lt!904500 call!163640))))

(declare-fun b!2558768 () Bool)

(declare-fun res!1077456 () Bool)

(declare-fun e!1616119 () Bool)

(assert (=> b!2558768 (=> res!1077456 e!1616119)))

(assert (=> b!2558768 (= res!1077456 (not (isEmpty!17034 (tail!4095 tl!4068))))))

(declare-fun b!2558769 () Bool)

(assert (=> b!2558769 (= e!1616119 (not (= (head!5820 tl!4068) (c!410685 lt!904421))))))

(declare-fun bm!163635 () Bool)

(assert (=> bm!163635 (= call!163640 (isEmpty!17034 tl!4068))))

(declare-fun b!2558770 () Bool)

(declare-fun res!1077457 () Bool)

(declare-fun e!1616125 () Bool)

(assert (=> b!2558770 (=> res!1077457 e!1616125)))

(declare-fun e!1616120 () Bool)

(assert (=> b!2558770 (= res!1077457 e!1616120)))

(declare-fun res!1077453 () Bool)

(assert (=> b!2558770 (=> (not res!1077453) (not e!1616120))))

(assert (=> b!2558770 (= res!1077453 lt!904500)))

(declare-fun d!724920 () Bool)

(assert (=> d!724920 e!1616124))

(declare-fun c!410856 () Bool)

(assert (=> d!724920 (= c!410856 ((_ is EmptyExpr!7613) lt!904421))))

(declare-fun e!1616121 () Bool)

(assert (=> d!724920 (= lt!904500 e!1616121)))

(declare-fun c!410858 () Bool)

(assert (=> d!724920 (= c!410858 (isEmpty!17034 tl!4068))))

(assert (=> d!724920 (validRegex!3239 lt!904421)))

(assert (=> d!724920 (= (matchR!3558 lt!904421 tl!4068) lt!904500)))

(declare-fun b!2558771 () Bool)

(assert (=> b!2558771 (= e!1616121 (matchR!3558 (derivativeStep!2182 lt!904421 (head!5820 tl!4068)) (tail!4095 tl!4068)))))

(declare-fun b!2558772 () Bool)

(declare-fun res!1077452 () Bool)

(assert (=> b!2558772 (=> res!1077452 e!1616125)))

(assert (=> b!2558772 (= res!1077452 (not ((_ is ElementMatch!7613) lt!904421)))))

(declare-fun e!1616123 () Bool)

(assert (=> b!2558772 (= e!1616123 e!1616125)))

(declare-fun b!2558773 () Bool)

(assert (=> b!2558773 (= e!1616124 e!1616123)))

(declare-fun c!410857 () Bool)

(assert (=> b!2558773 (= c!410857 ((_ is EmptyLang!7613) lt!904421))))

(declare-fun b!2558774 () Bool)

(declare-fun e!1616122 () Bool)

(assert (=> b!2558774 (= e!1616125 e!1616122)))

(declare-fun res!1077459 () Bool)

(assert (=> b!2558774 (=> (not res!1077459) (not e!1616122))))

(assert (=> b!2558774 (= res!1077459 (not lt!904500))))

(declare-fun b!2558775 () Bool)

(declare-fun res!1077458 () Bool)

(assert (=> b!2558775 (=> (not res!1077458) (not e!1616120))))

(assert (=> b!2558775 (= res!1077458 (isEmpty!17034 (tail!4095 tl!4068)))))

(declare-fun b!2558776 () Bool)

(declare-fun res!1077455 () Bool)

(assert (=> b!2558776 (=> (not res!1077455) (not e!1616120))))

(assert (=> b!2558776 (= res!1077455 (not call!163640))))

(declare-fun b!2558777 () Bool)

(assert (=> b!2558777 (= e!1616123 (not lt!904500))))

(declare-fun b!2558778 () Bool)

(assert (=> b!2558778 (= e!1616122 e!1616119)))

(declare-fun res!1077454 () Bool)

(assert (=> b!2558778 (=> res!1077454 e!1616119)))

(assert (=> b!2558778 (= res!1077454 call!163640)))

(declare-fun b!2558779 () Bool)

(assert (=> b!2558779 (= e!1616120 (= (head!5820 tl!4068) (c!410685 lt!904421)))))

(declare-fun b!2558780 () Bool)

(assert (=> b!2558780 (= e!1616121 (nullable!2530 lt!904421))))

(assert (= (and d!724920 c!410858) b!2558780))

(assert (= (and d!724920 (not c!410858)) b!2558771))

(assert (= (and d!724920 c!410856) b!2558767))

(assert (= (and d!724920 (not c!410856)) b!2558773))

(assert (= (and b!2558773 c!410857) b!2558777))

(assert (= (and b!2558773 (not c!410857)) b!2558772))

(assert (= (and b!2558772 (not res!1077452)) b!2558770))

(assert (= (and b!2558770 res!1077453) b!2558776))

(assert (= (and b!2558776 res!1077455) b!2558775))

(assert (= (and b!2558775 res!1077458) b!2558779))

(assert (= (and b!2558770 (not res!1077457)) b!2558774))

(assert (= (and b!2558774 res!1077459) b!2558778))

(assert (= (and b!2558778 (not res!1077454)) b!2558768))

(assert (= (and b!2558768 (not res!1077456)) b!2558769))

(assert (= (or b!2558767 b!2558776 b!2558778) bm!163635))

(assert (=> bm!163635 m!2899177))

(assert (=> d!724920 m!2899177))

(declare-fun m!2899549 () Bool)

(assert (=> d!724920 m!2899549))

(assert (=> b!2558775 m!2899181))

(assert (=> b!2558775 m!2899181))

(assert (=> b!2558775 m!2899183))

(assert (=> b!2558771 m!2899185))

(assert (=> b!2558771 m!2899185))

(declare-fun m!2899551 () Bool)

(assert (=> b!2558771 m!2899551))

(assert (=> b!2558771 m!2899181))

(assert (=> b!2558771 m!2899551))

(assert (=> b!2558771 m!2899181))

(declare-fun m!2899553 () Bool)

(assert (=> b!2558771 m!2899553))

(declare-fun m!2899555 () Bool)

(assert (=> b!2558780 m!2899555))

(assert (=> b!2558768 m!2899181))

(assert (=> b!2558768 m!2899181))

(assert (=> b!2558768 m!2899183))

(assert (=> b!2558779 m!2899185))

(assert (=> b!2558769 m!2899185))

(assert (=> b!2558157 d!724920))

(declare-fun d!724922 () Bool)

(declare-fun lt!904501 () Regex!7613)

(assert (=> d!724922 (validRegex!3239 lt!904501)))

(declare-fun e!1616126 () Regex!7613)

(assert (=> d!724922 (= lt!904501 e!1616126)))

(declare-fun c!410859 () Bool)

(assert (=> d!724922 (= c!410859 ((_ is Cons!29578) tl!4068))))

(assert (=> d!724922 (validRegex!3239 lt!904421)))

(assert (=> d!724922 (= (derivative!308 lt!904421 tl!4068) lt!904501)))

(declare-fun b!2558781 () Bool)

(assert (=> b!2558781 (= e!1616126 (derivative!308 (derivativeStep!2182 lt!904421 (h!34998 tl!4068)) (t!211377 tl!4068)))))

(declare-fun b!2558782 () Bool)

(assert (=> b!2558782 (= e!1616126 lt!904421)))

(assert (= (and d!724922 c!410859) b!2558781))

(assert (= (and d!724922 (not c!410859)) b!2558782))

(declare-fun m!2899557 () Bool)

(assert (=> d!724922 m!2899557))

(assert (=> d!724922 m!2899549))

(declare-fun m!2899559 () Bool)

(assert (=> b!2558781 m!2899559))

(assert (=> b!2558781 m!2899559))

(declare-fun m!2899561 () Bool)

(assert (=> b!2558781 m!2899561))

(assert (=> b!2558157 d!724922))

(declare-fun d!724924 () Bool)

(assert (=> d!724924 (= (matchR!3558 lt!904421 tl!4068) (matchR!3558 (derivative!308 lt!904421 tl!4068) Nil!29578))))

(declare-fun lt!904502 () Unit!43411)

(assert (=> d!724924 (= lt!904502 (choose!15100 lt!904421 tl!4068))))

(assert (=> d!724924 (validRegex!3239 lt!904421)))

(assert (=> d!724924 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!204 lt!904421 tl!4068) lt!904502)))

(declare-fun bs!469776 () Bool)

(assert (= bs!469776 d!724924))

(assert (=> bs!469776 m!2899103))

(assert (=> bs!469776 m!2899549))

(assert (=> bs!469776 m!2899107))

(assert (=> bs!469776 m!2899111))

(assert (=> bs!469776 m!2899107))

(declare-fun m!2899563 () Bool)

(assert (=> bs!469776 m!2899563))

(assert (=> b!2558157 d!724924))

(declare-fun b!2558783 () Bool)

(declare-fun e!1616132 () Bool)

(declare-fun lt!904503 () Bool)

(declare-fun call!163641 () Bool)

(assert (=> b!2558783 (= e!1616132 (= lt!904503 call!163641))))

(declare-fun b!2558784 () Bool)

(declare-fun res!1077464 () Bool)

(declare-fun e!1616127 () Bool)

(assert (=> b!2558784 (=> res!1077464 e!1616127)))

(assert (=> b!2558784 (= res!1077464 (not (isEmpty!17034 (tail!4095 tl!4068))))))

(declare-fun b!2558785 () Bool)

(assert (=> b!2558785 (= e!1616127 (not (= (head!5820 tl!4068) (c!410685 lt!904414))))))

(declare-fun bm!163636 () Bool)

(assert (=> bm!163636 (= call!163641 (isEmpty!17034 tl!4068))))

(declare-fun b!2558786 () Bool)

(declare-fun res!1077465 () Bool)

(declare-fun e!1616133 () Bool)

(assert (=> b!2558786 (=> res!1077465 e!1616133)))

(declare-fun e!1616128 () Bool)

(assert (=> b!2558786 (= res!1077465 e!1616128)))

(declare-fun res!1077461 () Bool)

(assert (=> b!2558786 (=> (not res!1077461) (not e!1616128))))

(assert (=> b!2558786 (= res!1077461 lt!904503)))

(declare-fun d!724926 () Bool)

(assert (=> d!724926 e!1616132))

(declare-fun c!410860 () Bool)

(assert (=> d!724926 (= c!410860 ((_ is EmptyExpr!7613) lt!904414))))

(declare-fun e!1616129 () Bool)

(assert (=> d!724926 (= lt!904503 e!1616129)))

(declare-fun c!410862 () Bool)

(assert (=> d!724926 (= c!410862 (isEmpty!17034 tl!4068))))

(assert (=> d!724926 (validRegex!3239 lt!904414)))

(assert (=> d!724926 (= (matchR!3558 lt!904414 tl!4068) lt!904503)))

(declare-fun b!2558787 () Bool)

(assert (=> b!2558787 (= e!1616129 (matchR!3558 (derivativeStep!2182 lt!904414 (head!5820 tl!4068)) (tail!4095 tl!4068)))))

(declare-fun b!2558788 () Bool)

(declare-fun res!1077460 () Bool)

(assert (=> b!2558788 (=> res!1077460 e!1616133)))

(assert (=> b!2558788 (= res!1077460 (not ((_ is ElementMatch!7613) lt!904414)))))

(declare-fun e!1616131 () Bool)

(assert (=> b!2558788 (= e!1616131 e!1616133)))

(declare-fun b!2558789 () Bool)

(assert (=> b!2558789 (= e!1616132 e!1616131)))

(declare-fun c!410861 () Bool)

(assert (=> b!2558789 (= c!410861 ((_ is EmptyLang!7613) lt!904414))))

(declare-fun b!2558790 () Bool)

(declare-fun e!1616130 () Bool)

(assert (=> b!2558790 (= e!1616133 e!1616130)))

(declare-fun res!1077467 () Bool)

(assert (=> b!2558790 (=> (not res!1077467) (not e!1616130))))

(assert (=> b!2558790 (= res!1077467 (not lt!904503))))

(declare-fun b!2558791 () Bool)

(declare-fun res!1077466 () Bool)

(assert (=> b!2558791 (=> (not res!1077466) (not e!1616128))))

(assert (=> b!2558791 (= res!1077466 (isEmpty!17034 (tail!4095 tl!4068)))))

(declare-fun b!2558792 () Bool)

(declare-fun res!1077463 () Bool)

(assert (=> b!2558792 (=> (not res!1077463) (not e!1616128))))

(assert (=> b!2558792 (= res!1077463 (not call!163641))))

(declare-fun b!2558793 () Bool)

(assert (=> b!2558793 (= e!1616131 (not lt!904503))))

(declare-fun b!2558794 () Bool)

(assert (=> b!2558794 (= e!1616130 e!1616127)))

(declare-fun res!1077462 () Bool)

(assert (=> b!2558794 (=> res!1077462 e!1616127)))

(assert (=> b!2558794 (= res!1077462 call!163641)))

(declare-fun b!2558795 () Bool)

(assert (=> b!2558795 (= e!1616128 (= (head!5820 tl!4068) (c!410685 lt!904414)))))

(declare-fun b!2558796 () Bool)

(assert (=> b!2558796 (= e!1616129 (nullable!2530 lt!904414))))

(assert (= (and d!724926 c!410862) b!2558796))

(assert (= (and d!724926 (not c!410862)) b!2558787))

(assert (= (and d!724926 c!410860) b!2558783))

(assert (= (and d!724926 (not c!410860)) b!2558789))

(assert (= (and b!2558789 c!410861) b!2558793))

(assert (= (and b!2558789 (not c!410861)) b!2558788))

(assert (= (and b!2558788 (not res!1077460)) b!2558786))

(assert (= (and b!2558786 res!1077461) b!2558792))

(assert (= (and b!2558792 res!1077463) b!2558791))

(assert (= (and b!2558791 res!1077466) b!2558795))

(assert (= (and b!2558786 (not res!1077465)) b!2558790))

(assert (= (and b!2558790 res!1077467) b!2558794))

(assert (= (and b!2558794 (not res!1077462)) b!2558784))

(assert (= (and b!2558784 (not res!1077464)) b!2558785))

(assert (= (or b!2558783 b!2558792 b!2558794) bm!163636))

(assert (=> bm!163636 m!2899177))

(assert (=> d!724926 m!2899177))

(assert (=> d!724926 m!2899547))

(assert (=> b!2558791 m!2899181))

(assert (=> b!2558791 m!2899181))

(assert (=> b!2558791 m!2899183))

(assert (=> b!2558787 m!2899185))

(assert (=> b!2558787 m!2899185))

(declare-fun m!2899565 () Bool)

(assert (=> b!2558787 m!2899565))

(assert (=> b!2558787 m!2899181))

(assert (=> b!2558787 m!2899565))

(assert (=> b!2558787 m!2899181))

(declare-fun m!2899567 () Bool)

(assert (=> b!2558787 m!2899567))

(declare-fun m!2899569 () Bool)

(assert (=> b!2558796 m!2899569))

(assert (=> b!2558784 m!2899181))

(assert (=> b!2558784 m!2899181))

(assert (=> b!2558784 m!2899183))

(assert (=> b!2558795 m!2899185))

(assert (=> b!2558785 m!2899185))

(assert (=> b!2558157 d!724926))

(declare-fun bm!163637 () Bool)

(declare-fun call!163644 () Regex!7613)

(declare-fun call!163645 () Regex!7613)

(assert (=> bm!163637 (= call!163644 call!163645)))

(declare-fun b!2558797 () Bool)

(declare-fun e!1616134 () Regex!7613)

(assert (=> b!2558797 (= e!1616134 EmptyLang!7613)))

(declare-fun b!2558798 () Bool)

(declare-fun c!410867 () Bool)

(assert (=> b!2558798 (= c!410867 ((_ is Union!7613) (regTwo!15738 r!27340)))))

(declare-fun e!1616136 () Regex!7613)

(declare-fun e!1616138 () Regex!7613)

(assert (=> b!2558798 (= e!1616136 e!1616138)))

(declare-fun call!163642 () Regex!7613)

(declare-fun bm!163638 () Bool)

(assert (=> bm!163638 (= call!163642 (derivativeStep!2182 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340))) c!14016))))

(declare-fun b!2558799 () Bool)

(declare-fun c!410865 () Bool)

(assert (=> b!2558799 (= c!410865 (nullable!2530 (regOne!15738 (regTwo!15738 r!27340))))))

(declare-fun e!1616137 () Regex!7613)

(declare-fun e!1616135 () Regex!7613)

(assert (=> b!2558799 (= e!1616137 e!1616135)))

(declare-fun b!2558800 () Bool)

(assert (=> b!2558800 (= e!1616137 (Concat!12309 call!163644 (regTwo!15738 r!27340)))))

(declare-fun bm!163639 () Bool)

(declare-fun call!163643 () Regex!7613)

(assert (=> bm!163639 (= call!163643 call!163644)))

(declare-fun d!724928 () Bool)

(declare-fun lt!904504 () Regex!7613)

(assert (=> d!724928 (validRegex!3239 lt!904504)))

(assert (=> d!724928 (= lt!904504 e!1616134)))

(declare-fun c!410864 () Bool)

(assert (=> d!724928 (= c!410864 (or ((_ is EmptyExpr!7613) (regTwo!15738 r!27340)) ((_ is EmptyLang!7613) (regTwo!15738 r!27340))))))

(assert (=> d!724928 (validRegex!3239 (regTwo!15738 r!27340))))

(assert (=> d!724928 (= (derivativeStep!2182 (regTwo!15738 r!27340) c!14016) lt!904504)))

(declare-fun b!2558801 () Bool)

(assert (=> b!2558801 (= e!1616138 (Union!7613 call!163642 call!163645))))

(declare-fun b!2558802 () Bool)

(assert (=> b!2558802 (= e!1616135 (Union!7613 (Concat!12309 call!163643 (regTwo!15738 (regTwo!15738 r!27340))) EmptyLang!7613))))

(declare-fun b!2558803 () Bool)

(assert (=> b!2558803 (= e!1616135 (Union!7613 (Concat!12309 call!163643 (regTwo!15738 (regTwo!15738 r!27340))) call!163642))))

(declare-fun b!2558804 () Bool)

(assert (=> b!2558804 (= e!1616134 e!1616136)))

(declare-fun c!410866 () Bool)

(assert (=> b!2558804 (= c!410866 ((_ is ElementMatch!7613) (regTwo!15738 r!27340)))))

(declare-fun b!2558805 () Bool)

(assert (=> b!2558805 (= e!1616138 e!1616137)))

(declare-fun c!410863 () Bool)

(assert (=> b!2558805 (= c!410863 ((_ is Star!7613) (regTwo!15738 r!27340)))))

(declare-fun bm!163640 () Bool)

(assert (=> bm!163640 (= call!163645 (derivativeStep!2182 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340)))) c!14016))))

(declare-fun b!2558806 () Bool)

(assert (=> b!2558806 (= e!1616136 (ite (= c!14016 (c!410685 (regTwo!15738 r!27340))) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!724928 c!410864) b!2558797))

(assert (= (and d!724928 (not c!410864)) b!2558804))

(assert (= (and b!2558804 c!410866) b!2558806))

(assert (= (and b!2558804 (not c!410866)) b!2558798))

(assert (= (and b!2558798 c!410867) b!2558801))

(assert (= (and b!2558798 (not c!410867)) b!2558805))

(assert (= (and b!2558805 c!410863) b!2558800))

(assert (= (and b!2558805 (not c!410863)) b!2558799))

(assert (= (and b!2558799 c!410865) b!2558803))

(assert (= (and b!2558799 (not c!410865)) b!2558802))

(assert (= (or b!2558803 b!2558802) bm!163639))

(assert (= (or b!2558800 bm!163639) bm!163637))

(assert (= (or b!2558801 bm!163637) bm!163640))

(assert (= (or b!2558801 b!2558803) bm!163638))

(declare-fun m!2899571 () Bool)

(assert (=> bm!163638 m!2899571))

(declare-fun m!2899573 () Bool)

(assert (=> b!2558799 m!2899573))

(declare-fun m!2899575 () Bool)

(assert (=> d!724928 m!2899575))

(assert (=> d!724928 m!2899289))

(declare-fun m!2899577 () Bool)

(assert (=> bm!163640 m!2899577))

(assert (=> b!2558157 d!724928))

(declare-fun bm!163641 () Bool)

(declare-fun call!163648 () Regex!7613)

(declare-fun call!163649 () Regex!7613)

(assert (=> bm!163641 (= call!163648 call!163649)))

(declare-fun b!2558807 () Bool)

(declare-fun e!1616139 () Regex!7613)

(assert (=> b!2558807 (= e!1616139 EmptyLang!7613)))

(declare-fun b!2558808 () Bool)

(declare-fun c!410872 () Bool)

(assert (=> b!2558808 (= c!410872 ((_ is Union!7613) (regOne!15738 r!27340)))))

(declare-fun e!1616141 () Regex!7613)

(declare-fun e!1616143 () Regex!7613)

(assert (=> b!2558808 (= e!1616141 e!1616143)))

(declare-fun call!163646 () Regex!7613)

(declare-fun bm!163642 () Bool)

(assert (=> bm!163642 (= call!163646 (derivativeStep!2182 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))) c!14016))))

(declare-fun b!2558809 () Bool)

(declare-fun c!410870 () Bool)

(assert (=> b!2558809 (= c!410870 (nullable!2530 (regOne!15738 (regOne!15738 r!27340))))))

(declare-fun e!1616142 () Regex!7613)

(declare-fun e!1616140 () Regex!7613)

(assert (=> b!2558809 (= e!1616142 e!1616140)))

(declare-fun b!2558810 () Bool)

(assert (=> b!2558810 (= e!1616142 (Concat!12309 call!163648 (regOne!15738 r!27340)))))

(declare-fun bm!163643 () Bool)

(declare-fun call!163647 () Regex!7613)

(assert (=> bm!163643 (= call!163647 call!163648)))

(declare-fun d!724930 () Bool)

(declare-fun lt!904505 () Regex!7613)

(assert (=> d!724930 (validRegex!3239 lt!904505)))

(assert (=> d!724930 (= lt!904505 e!1616139)))

(declare-fun c!410869 () Bool)

(assert (=> d!724930 (= c!410869 (or ((_ is EmptyExpr!7613) (regOne!15738 r!27340)) ((_ is EmptyLang!7613) (regOne!15738 r!27340))))))

(assert (=> d!724930 (validRegex!3239 (regOne!15738 r!27340))))

(assert (=> d!724930 (= (derivativeStep!2182 (regOne!15738 r!27340) c!14016) lt!904505)))

(declare-fun b!2558811 () Bool)

(assert (=> b!2558811 (= e!1616143 (Union!7613 call!163646 call!163649))))

(declare-fun b!2558812 () Bool)

(assert (=> b!2558812 (= e!1616140 (Union!7613 (Concat!12309 call!163647 (regTwo!15738 (regOne!15738 r!27340))) EmptyLang!7613))))

(declare-fun b!2558813 () Bool)

(assert (=> b!2558813 (= e!1616140 (Union!7613 (Concat!12309 call!163647 (regTwo!15738 (regOne!15738 r!27340))) call!163646))))

(declare-fun b!2558814 () Bool)

(assert (=> b!2558814 (= e!1616139 e!1616141)))

(declare-fun c!410871 () Bool)

(assert (=> b!2558814 (= c!410871 ((_ is ElementMatch!7613) (regOne!15738 r!27340)))))

(declare-fun b!2558815 () Bool)

(assert (=> b!2558815 (= e!1616143 e!1616142)))

(declare-fun c!410868 () Bool)

(assert (=> b!2558815 (= c!410868 ((_ is Star!7613) (regOne!15738 r!27340)))))

(declare-fun bm!163644 () Bool)

(assert (=> bm!163644 (= call!163649 (derivativeStep!2182 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))) c!14016))))

(declare-fun b!2558816 () Bool)

(assert (=> b!2558816 (= e!1616141 (ite (= c!14016 (c!410685 (regOne!15738 r!27340))) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!724930 c!410869) b!2558807))

(assert (= (and d!724930 (not c!410869)) b!2558814))

(assert (= (and b!2558814 c!410871) b!2558816))

(assert (= (and b!2558814 (not c!410871)) b!2558808))

(assert (= (and b!2558808 c!410872) b!2558811))

(assert (= (and b!2558808 (not c!410872)) b!2558815))

(assert (= (and b!2558815 c!410868) b!2558810))

(assert (= (and b!2558815 (not c!410868)) b!2558809))

(assert (= (and b!2558809 c!410870) b!2558813))

(assert (= (and b!2558809 (not c!410870)) b!2558812))

(assert (= (or b!2558813 b!2558812) bm!163643))

(assert (= (or b!2558810 bm!163643) bm!163641))

(assert (= (or b!2558811 bm!163641) bm!163644))

(assert (= (or b!2558811 b!2558813) bm!163642))

(declare-fun m!2899579 () Bool)

(assert (=> bm!163642 m!2899579))

(assert (=> b!2558809 m!2899533))

(declare-fun m!2899581 () Bool)

(assert (=> d!724930 m!2899581))

(assert (=> d!724930 m!2899147))

(declare-fun m!2899583 () Bool)

(assert (=> bm!163644 m!2899583))

(assert (=> b!2558157 d!724930))

(declare-fun d!724932 () Bool)

(assert (=> d!724932 (isDefined!4736 (findConcatSeparation!936 lt!904422 (regTwo!15738 r!27340) Nil!29578 tl!4068 tl!4068))))

(declare-fun lt!904508 () Unit!43411)

(declare-fun choose!15103 (Regex!7613 Regex!7613 List!29678) Unit!43411)

(assert (=> d!724932 (= lt!904508 (choose!15103 lt!904422 (regTwo!15738 r!27340) tl!4068))))

(assert (=> d!724932 (validRegex!3239 lt!904422)))

(assert (=> d!724932 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!218 lt!904422 (regTwo!15738 r!27340) tl!4068) lt!904508)))

(declare-fun bs!469777 () Bool)

(assert (= bs!469777 d!724932))

(assert (=> bs!469777 m!2899141))

(assert (=> bs!469777 m!2899141))

(declare-fun m!2899585 () Bool)

(assert (=> bs!469777 m!2899585))

(declare-fun m!2899587 () Bool)

(assert (=> bs!469777 m!2899587))

(assert (=> bs!469777 m!2899195))

(assert (=> b!2558158 d!724932))

(declare-fun d!724934 () Bool)

(declare-fun isEmpty!17036 (Option!5914) Bool)

(assert (=> d!724934 (= (isDefined!4736 lt!904410) (not (isEmpty!17036 lt!904410)))))

(declare-fun bs!469778 () Bool)

(assert (= bs!469778 d!724934))

(declare-fun m!2899589 () Bool)

(assert (=> bs!469778 m!2899589))

(assert (=> b!2558158 d!724934))

(declare-fun b!2558835 () Bool)

(declare-fun res!1077478 () Bool)

(declare-fun e!1616157 () Bool)

(assert (=> b!2558835 (=> (not res!1077478) (not e!1616157))))

(declare-fun lt!904517 () Option!5914)

(assert (=> b!2558835 (= res!1077478 (matchR!3558 (regTwo!15738 r!27340) (_2!17336 (get!9299 lt!904517))))))

(declare-fun b!2558836 () Bool)

(declare-fun lt!904516 () Unit!43411)

(declare-fun lt!904515 () Unit!43411)

(assert (=> b!2558836 (= lt!904516 lt!904515)))

(assert (=> b!2558836 (= (++!7270 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578)) (t!211377 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!803 (List!29678 C!15384 List!29678 List!29678) Unit!43411)

(assert (=> b!2558836 (= lt!904515 (lemmaMoveElementToOtherListKeepsConcatEq!803 Nil!29578 (h!34998 tl!4068) (t!211377 tl!4068) tl!4068))))

(declare-fun e!1616154 () Option!5914)

(assert (=> b!2558836 (= e!1616154 (findConcatSeparation!936 lt!904422 (regTwo!15738 r!27340) (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578)) (t!211377 tl!4068) tl!4068))))

(declare-fun b!2558837 () Bool)

(declare-fun e!1616155 () Bool)

(assert (=> b!2558837 (= e!1616155 (not (isDefined!4736 lt!904517)))))

(declare-fun b!2558838 () Bool)

(assert (=> b!2558838 (= e!1616154 None!5913)))

(declare-fun b!2558839 () Bool)

(declare-fun e!1616156 () Option!5914)

(assert (=> b!2558839 (= e!1616156 e!1616154)))

(declare-fun c!410877 () Bool)

(assert (=> b!2558839 (= c!410877 ((_ is Nil!29578) tl!4068))))

(declare-fun d!724936 () Bool)

(assert (=> d!724936 e!1616155))

(declare-fun res!1077480 () Bool)

(assert (=> d!724936 (=> res!1077480 e!1616155)))

(assert (=> d!724936 (= res!1077480 e!1616157)))

(declare-fun res!1077481 () Bool)

(assert (=> d!724936 (=> (not res!1077481) (not e!1616157))))

(assert (=> d!724936 (= res!1077481 (isDefined!4736 lt!904517))))

(assert (=> d!724936 (= lt!904517 e!1616156)))

(declare-fun c!410878 () Bool)

(declare-fun e!1616158 () Bool)

(assert (=> d!724936 (= c!410878 e!1616158)))

(declare-fun res!1077479 () Bool)

(assert (=> d!724936 (=> (not res!1077479) (not e!1616158))))

(assert (=> d!724936 (= res!1077479 (matchR!3558 lt!904422 Nil!29578))))

(assert (=> d!724936 (validRegex!3239 lt!904422)))

(assert (=> d!724936 (= (findConcatSeparation!936 lt!904422 (regTwo!15738 r!27340) Nil!29578 tl!4068 tl!4068) lt!904517)))

(declare-fun b!2558840 () Bool)

(assert (=> b!2558840 (= e!1616158 (matchR!3558 (regTwo!15738 r!27340) tl!4068))))

(declare-fun b!2558841 () Bool)

(assert (=> b!2558841 (= e!1616156 (Some!5913 (tuple2!29589 Nil!29578 tl!4068)))))

(declare-fun b!2558842 () Bool)

(declare-fun res!1077482 () Bool)

(assert (=> b!2558842 (=> (not res!1077482) (not e!1616157))))

(assert (=> b!2558842 (= res!1077482 (matchR!3558 lt!904422 (_1!17336 (get!9299 lt!904517))))))

(declare-fun b!2558843 () Bool)

(assert (=> b!2558843 (= e!1616157 (= (++!7270 (_1!17336 (get!9299 lt!904517)) (_2!17336 (get!9299 lt!904517))) tl!4068))))

(assert (= (and d!724936 res!1077479) b!2558840))

(assert (= (and d!724936 c!410878) b!2558841))

(assert (= (and d!724936 (not c!410878)) b!2558839))

(assert (= (and b!2558839 c!410877) b!2558838))

(assert (= (and b!2558839 (not c!410877)) b!2558836))

(assert (= (and d!724936 res!1077481) b!2558842))

(assert (= (and b!2558842 res!1077482) b!2558835))

(assert (= (and b!2558835 res!1077478) b!2558843))

(assert (= (and d!724936 (not res!1077480)) b!2558837))

(declare-fun m!2899591 () Bool)

(assert (=> b!2558842 m!2899591))

(declare-fun m!2899593 () Bool)

(assert (=> b!2558842 m!2899593))

(declare-fun m!2899595 () Bool)

(assert (=> b!2558836 m!2899595))

(assert (=> b!2558836 m!2899595))

(declare-fun m!2899597 () Bool)

(assert (=> b!2558836 m!2899597))

(declare-fun m!2899599 () Bool)

(assert (=> b!2558836 m!2899599))

(assert (=> b!2558836 m!2899595))

(declare-fun m!2899601 () Bool)

(assert (=> b!2558836 m!2899601))

(declare-fun m!2899603 () Bool)

(assert (=> b!2558840 m!2899603))

(declare-fun m!2899605 () Bool)

(assert (=> d!724936 m!2899605))

(declare-fun m!2899607 () Bool)

(assert (=> d!724936 m!2899607))

(assert (=> d!724936 m!2899195))

(assert (=> b!2558837 m!2899605))

(assert (=> b!2558835 m!2899591))

(declare-fun m!2899609 () Bool)

(assert (=> b!2558835 m!2899609))

(assert (=> b!2558843 m!2899591))

(declare-fun m!2899611 () Bool)

(assert (=> b!2558843 m!2899611))

(assert (=> b!2558158 d!724936))

(declare-fun b!2558852 () Bool)

(declare-fun e!1616163 () List!29678)

(assert (=> b!2558852 (= e!1616163 (_2!17336 lt!904412))))

(declare-fun d!724938 () Bool)

(declare-fun e!1616164 () Bool)

(assert (=> d!724938 e!1616164))

(declare-fun res!1077488 () Bool)

(assert (=> d!724938 (=> (not res!1077488) (not e!1616164))))

(declare-fun lt!904520 () List!29678)

(assert (=> d!724938 (= res!1077488 (= (content!4076 lt!904520) ((_ map or) (content!4076 (_1!17336 lt!904412)) (content!4076 (_2!17336 lt!904412)))))))

(assert (=> d!724938 (= lt!904520 e!1616163)))

(declare-fun c!410881 () Bool)

(assert (=> d!724938 (= c!410881 ((_ is Nil!29578) (_1!17336 lt!904412)))))

(assert (=> d!724938 (= (++!7270 (_1!17336 lt!904412) (_2!17336 lt!904412)) lt!904520)))

(declare-fun b!2558854 () Bool)

(declare-fun res!1077487 () Bool)

(assert (=> b!2558854 (=> (not res!1077487) (not e!1616164))))

(declare-fun size!22956 (List!29678) Int)

(assert (=> b!2558854 (= res!1077487 (= (size!22956 lt!904520) (+ (size!22956 (_1!17336 lt!904412)) (size!22956 (_2!17336 lt!904412)))))))

(declare-fun b!2558853 () Bool)

(assert (=> b!2558853 (= e!1616163 (Cons!29578 (h!34998 (_1!17336 lt!904412)) (++!7270 (t!211377 (_1!17336 lt!904412)) (_2!17336 lt!904412))))))

(declare-fun b!2558855 () Bool)

(assert (=> b!2558855 (= e!1616164 (or (not (= (_2!17336 lt!904412) Nil!29578)) (= lt!904520 (_1!17336 lt!904412))))))

(assert (= (and d!724938 c!410881) b!2558852))

(assert (= (and d!724938 (not c!410881)) b!2558853))

(assert (= (and d!724938 res!1077488) b!2558854))

(assert (= (and b!2558854 res!1077487) b!2558855))

(declare-fun m!2899613 () Bool)

(assert (=> d!724938 m!2899613))

(declare-fun m!2899615 () Bool)

(assert (=> d!724938 m!2899615))

(declare-fun m!2899617 () Bool)

(assert (=> d!724938 m!2899617))

(declare-fun m!2899619 () Bool)

(assert (=> b!2558854 m!2899619))

(declare-fun m!2899621 () Bool)

(assert (=> b!2558854 m!2899621))

(declare-fun m!2899623 () Bool)

(assert (=> b!2558854 m!2899623))

(declare-fun m!2899625 () Bool)

(assert (=> b!2558853 m!2899625))

(assert (=> b!2558158 d!724938))

(declare-fun d!724940 () Bool)

(assert (=> d!724940 (= (get!9299 lt!904410) (v!31854 lt!904410))))

(assert (=> b!2558158 d!724940))

(declare-fun d!724942 () Bool)

(assert (=> d!724942 (= (nullable!2530 (regOne!15738 r!27340)) (nullableFct!755 (regOne!15738 r!27340)))))

(declare-fun bs!469779 () Bool)

(assert (= bs!469779 d!724942))

(declare-fun m!2899627 () Bool)

(assert (=> bs!469779 m!2899627))

(assert (=> b!2558156 d!724942))

(declare-fun b!2558867 () Bool)

(declare-fun e!1616167 () Bool)

(declare-fun tp!815218 () Bool)

(declare-fun tp!815216 () Bool)

(assert (=> b!2558867 (= e!1616167 (and tp!815218 tp!815216))))

(assert (=> b!2558150 (= tp!815166 e!1616167)))

(declare-fun b!2558869 () Bool)

(declare-fun tp!815219 () Bool)

(declare-fun tp!815215 () Bool)

(assert (=> b!2558869 (= e!1616167 (and tp!815219 tp!815215))))

(declare-fun b!2558868 () Bool)

(declare-fun tp!815217 () Bool)

(assert (=> b!2558868 (= e!1616167 tp!815217)))

(declare-fun b!2558866 () Bool)

(assert (=> b!2558866 (= e!1616167 tp_is_empty!13081)))

(assert (= (and b!2558150 ((_ is ElementMatch!7613) (reg!7942 r!27340))) b!2558866))

(assert (= (and b!2558150 ((_ is Concat!12309) (reg!7942 r!27340))) b!2558867))

(assert (= (and b!2558150 ((_ is Star!7613) (reg!7942 r!27340))) b!2558868))

(assert (= (and b!2558150 ((_ is Union!7613) (reg!7942 r!27340))) b!2558869))

(declare-fun b!2558871 () Bool)

(declare-fun e!1616168 () Bool)

(declare-fun tp!815223 () Bool)

(declare-fun tp!815221 () Bool)

(assert (=> b!2558871 (= e!1616168 (and tp!815223 tp!815221))))

(assert (=> b!2558153 (= tp!815162 e!1616168)))

(declare-fun b!2558873 () Bool)

(declare-fun tp!815224 () Bool)

(declare-fun tp!815220 () Bool)

(assert (=> b!2558873 (= e!1616168 (and tp!815224 tp!815220))))

(declare-fun b!2558872 () Bool)

(declare-fun tp!815222 () Bool)

(assert (=> b!2558872 (= e!1616168 tp!815222)))

(declare-fun b!2558870 () Bool)

(assert (=> b!2558870 (= e!1616168 tp_is_empty!13081)))

(assert (= (and b!2558153 ((_ is ElementMatch!7613) (regOne!15739 r!27340))) b!2558870))

(assert (= (and b!2558153 ((_ is Concat!12309) (regOne!15739 r!27340))) b!2558871))

(assert (= (and b!2558153 ((_ is Star!7613) (regOne!15739 r!27340))) b!2558872))

(assert (= (and b!2558153 ((_ is Union!7613) (regOne!15739 r!27340))) b!2558873))

(declare-fun b!2558875 () Bool)

(declare-fun e!1616169 () Bool)

(declare-fun tp!815228 () Bool)

(declare-fun tp!815226 () Bool)

(assert (=> b!2558875 (= e!1616169 (and tp!815228 tp!815226))))

(assert (=> b!2558153 (= tp!815163 e!1616169)))

(declare-fun b!2558877 () Bool)

(declare-fun tp!815229 () Bool)

(declare-fun tp!815225 () Bool)

(assert (=> b!2558877 (= e!1616169 (and tp!815229 tp!815225))))

(declare-fun b!2558876 () Bool)

(declare-fun tp!815227 () Bool)

(assert (=> b!2558876 (= e!1616169 tp!815227)))

(declare-fun b!2558874 () Bool)

(assert (=> b!2558874 (= e!1616169 tp_is_empty!13081)))

(assert (= (and b!2558153 ((_ is ElementMatch!7613) (regTwo!15739 r!27340))) b!2558874))

(assert (= (and b!2558153 ((_ is Concat!12309) (regTwo!15739 r!27340))) b!2558875))

(assert (= (and b!2558153 ((_ is Star!7613) (regTwo!15739 r!27340))) b!2558876))

(assert (= (and b!2558153 ((_ is Union!7613) (regTwo!15739 r!27340))) b!2558877))

(declare-fun b!2558882 () Bool)

(declare-fun e!1616172 () Bool)

(declare-fun tp!815232 () Bool)

(assert (=> b!2558882 (= e!1616172 (and tp_is_empty!13081 tp!815232))))

(assert (=> b!2558147 (= tp!815161 e!1616172)))

(assert (= (and b!2558147 ((_ is Cons!29578) (t!211377 tl!4068))) b!2558882))

(declare-fun b!2558884 () Bool)

(declare-fun e!1616173 () Bool)

(declare-fun tp!815236 () Bool)

(declare-fun tp!815234 () Bool)

(assert (=> b!2558884 (= e!1616173 (and tp!815236 tp!815234))))

(assert (=> b!2558146 (= tp!815164 e!1616173)))

(declare-fun b!2558886 () Bool)

(declare-fun tp!815237 () Bool)

(declare-fun tp!815233 () Bool)

(assert (=> b!2558886 (= e!1616173 (and tp!815237 tp!815233))))

(declare-fun b!2558885 () Bool)

(declare-fun tp!815235 () Bool)

(assert (=> b!2558885 (= e!1616173 tp!815235)))

(declare-fun b!2558883 () Bool)

(assert (=> b!2558883 (= e!1616173 tp_is_empty!13081)))

(assert (= (and b!2558146 ((_ is ElementMatch!7613) (regOne!15738 r!27340))) b!2558883))

(assert (= (and b!2558146 ((_ is Concat!12309) (regOne!15738 r!27340))) b!2558884))

(assert (= (and b!2558146 ((_ is Star!7613) (regOne!15738 r!27340))) b!2558885))

(assert (= (and b!2558146 ((_ is Union!7613) (regOne!15738 r!27340))) b!2558886))

(declare-fun b!2558888 () Bool)

(declare-fun e!1616174 () Bool)

(declare-fun tp!815241 () Bool)

(declare-fun tp!815239 () Bool)

(assert (=> b!2558888 (= e!1616174 (and tp!815241 tp!815239))))

(assert (=> b!2558146 (= tp!815165 e!1616174)))

(declare-fun b!2558890 () Bool)

(declare-fun tp!815242 () Bool)

(declare-fun tp!815238 () Bool)

(assert (=> b!2558890 (= e!1616174 (and tp!815242 tp!815238))))

(declare-fun b!2558889 () Bool)

(declare-fun tp!815240 () Bool)

(assert (=> b!2558889 (= e!1616174 tp!815240)))

(declare-fun b!2558887 () Bool)

(assert (=> b!2558887 (= e!1616174 tp_is_empty!13081)))

(assert (= (and b!2558146 ((_ is ElementMatch!7613) (regTwo!15738 r!27340))) b!2558887))

(assert (= (and b!2558146 ((_ is Concat!12309) (regTwo!15738 r!27340))) b!2558888))

(assert (= (and b!2558146 ((_ is Star!7613) (regTwo!15738 r!27340))) b!2558889))

(assert (= (and b!2558146 ((_ is Union!7613) (regTwo!15738 r!27340))) b!2558890))

(check-sat (not d!724908) (not d!724914) (not bm!163631) (not d!724850) (not b!2558769) (not bm!163560) (not b!2558842) (not b!2558771) (not b!2558765) (not b!2558868) (not d!724928) (not b!2558696) (not b!2558890) (not d!724848) (not b!2558410) (not b!2558843) (not b!2558283) (not b!2558854) (not b!2558500) (not b!2558768) (not d!724828) (not b!2558512) (not b!2558889) (not b!2558796) (not b!2558498) (not b!2558267) (not bm!163635) (not b!2558837) (not d!724918) (not bm!163625) (not bm!163574) (not bm!163586) (not b!2558743) (not bm!163627) (not b!2558779) (not b!2558884) (not bm!163584) (not bm!163634) (not b!2558873) (not bm!163636) (not b!2558246) (not b!2558234) (not b!2558278) (not d!724916) (not b!2558503) (not d!724910) (not b!2558809) (not bm!163630) (not b!2558775) (not b!2558421) (not b!2558781) (not b!2558241) (not bm!163563) (not b!2558501) (not d!724822) (not b!2558869) (not d!724924) (not d!724930) (not d!724868) (not bm!163575) (not b!2558736) (not bm!163632) (not b!2558420) (not b!2558759) (not b!2558412) (not b!2558277) (not b!2558766) (not d!724816) (not b!2558835) (not b!2558416) (not b!2558511) (not d!724866) (not b!2558755) (not d!724934) (not bm!163642) (not b!2558287) (not b!2558266) (not bm!163644) (not b!2558877) (not d!724926) (not b!2558291) (not b!2558886) (not b!2558281) (not b!2558489) (not bm!163626) (not b!2558784) (not b!2558871) (not bm!163526) (not b!2558751) (not d!724870) (not d!724942) (not b!2558273) (not b!2558853) (not b!2558799) (not b!2558513) (not b!2558292) (not d!724932) (not b!2558400) (not b!2558840) (not b!2558269) (not d!724826) (not b!2558888) (not d!724920) (not d!724836) (not b!2558885) (not b!2558780) (not b!2558875) (not d!724936) (not b!2558882) (not b!2558876) (not bm!163638) (not b!2558326) (not d!724938) (not bm!163583) (not b!2558237) (not d!724824) (not b!2558795) (not b!2558748) (not b!2558836) (not b!2558280) (not bm!163640) (not b!2558760) (not b!2558787) (not b!2558785) (not b!2558791) (not bm!163534) (not b!2558734) (not b!2558245) (not b!2558749) (not bm!163531) (not b!2558235) (not d!724922) tp_is_empty!13081 (not b!2558872) (not b!2558409) (not b!2558507) (not bm!163562) (not b!2558867))
(check-sat)
(get-model)

(declare-fun d!725000 () Bool)

(assert (not d!725000))

(assert (=> b!2558751 d!725000))

(declare-fun d!725002 () Bool)

(assert (not d!725002))

(assert (=> b!2558751 d!725002))

(declare-fun d!725004 () Bool)

(assert (not d!725004))

(assert (=> b!2558751 d!725004))

(declare-fun d!725006 () Bool)

(assert (not d!725006))

(assert (=> b!2558751 d!725006))

(declare-fun d!725008 () Bool)

(assert (=> d!725008 (= (isEmpty!17034 (tail!4095 (_1!17336 lt!904412))) ((_ is Nil!29578) (tail!4095 (_1!17336 lt!904412))))))

(assert (=> b!2558273 d!725008))

(declare-fun d!725012 () Bool)

(assert (=> d!725012 (= (tail!4095 (_1!17336 lt!904412)) (t!211377 (_1!17336 lt!904412)))))

(assert (=> b!2558273 d!725012))

(declare-fun d!725018 () Bool)

(assert (=> d!725018 (= (nullable!2530 (reg!7942 r!27340)) (nullableFct!755 (reg!7942 r!27340)))))

(declare-fun bs!469782 () Bool)

(assert (= bs!469782 d!725018))

(declare-fun m!2899755 () Bool)

(assert (=> bs!469782 m!2899755))

(assert (=> b!2558489 d!725018))

(declare-fun b!2559089 () Bool)

(declare-fun e!1616294 () Bool)

(declare-fun call!163706 () Bool)

(assert (=> b!2559089 (= e!1616294 call!163706)))

(declare-fun b!2559090 () Bool)

(declare-fun e!1616290 () Bool)

(declare-fun call!163707 () Bool)

(assert (=> b!2559090 (= e!1616290 call!163707)))

(declare-fun b!2559091 () Bool)

(declare-fun e!1616293 () Bool)

(declare-fun e!1616289 () Bool)

(assert (=> b!2559091 (= e!1616293 e!1616289)))

(declare-fun c!410953 () Bool)

(assert (=> b!2559091 (= c!410953 ((_ is Union!7613) lt!904417))))

(declare-fun bm!163701 () Bool)

(assert (=> bm!163701 (= call!163707 (nullable!2530 (ite c!410953 (regOne!15739 lt!904417) (regTwo!15738 lt!904417))))))

(declare-fun b!2559092 () Bool)

(assert (=> b!2559092 (= e!1616289 e!1616294)))

(declare-fun res!1077546 () Bool)

(assert (=> b!2559092 (= res!1077546 call!163707)))

(assert (=> b!2559092 (=> res!1077546 e!1616294)))

(declare-fun b!2559093 () Bool)

(declare-fun e!1616292 () Bool)

(declare-fun e!1616291 () Bool)

(assert (=> b!2559093 (= e!1616292 e!1616291)))

(declare-fun res!1077547 () Bool)

(assert (=> b!2559093 (=> (not res!1077547) (not e!1616291))))

(assert (=> b!2559093 (= res!1077547 (and (not ((_ is EmptyLang!7613) lt!904417)) (not ((_ is ElementMatch!7613) lt!904417))))))

(declare-fun b!2559094 () Bool)

(assert (=> b!2559094 (= e!1616289 e!1616290)))

(declare-fun res!1077548 () Bool)

(assert (=> b!2559094 (= res!1077548 call!163706)))

(assert (=> b!2559094 (=> (not res!1077548) (not e!1616290))))

(declare-fun d!725020 () Bool)

(declare-fun res!1077545 () Bool)

(assert (=> d!725020 (=> res!1077545 e!1616292)))

(assert (=> d!725020 (= res!1077545 ((_ is EmptyExpr!7613) lt!904417))))

(assert (=> d!725020 (= (nullableFct!755 lt!904417) e!1616292)))

(declare-fun bm!163702 () Bool)

(assert (=> bm!163702 (= call!163706 (nullable!2530 (ite c!410953 (regTwo!15739 lt!904417) (regOne!15738 lt!904417))))))

(declare-fun b!2559095 () Bool)

(assert (=> b!2559095 (= e!1616291 e!1616293)))

(declare-fun res!1077549 () Bool)

(assert (=> b!2559095 (=> res!1077549 e!1616293)))

(assert (=> b!2559095 (= res!1077549 ((_ is Star!7613) lt!904417))))

(assert (= (and d!725020 (not res!1077545)) b!2559093))

(assert (= (and b!2559093 res!1077547) b!2559095))

(assert (= (and b!2559095 (not res!1077549)) b!2559091))

(assert (= (and b!2559091 c!410953) b!2559092))

(assert (= (and b!2559091 (not c!410953)) b!2559094))

(assert (= (and b!2559092 (not res!1077546)) b!2559089))

(assert (= (and b!2559094 res!1077548) b!2559090))

(assert (= (or b!2559089 b!2559094) bm!163702))

(assert (= (or b!2559092 b!2559090) bm!163701))

(declare-fun m!2899807 () Bool)

(assert (=> bm!163701 m!2899807))

(declare-fun m!2899809 () Bool)

(assert (=> bm!163702 m!2899809))

(assert (=> d!724850 d!725020))

(assert (=> d!724924 d!724916))

(declare-fun bm!163703 () Bool)

(declare-fun call!163708 () Bool)

(declare-fun c!410956 () Bool)

(assert (=> bm!163703 (= call!163708 (validRegex!3239 (ite c!410956 (regTwo!15739 lt!904421) (regOne!15738 lt!904421))))))

(declare-fun b!2559098 () Bool)

(declare-fun e!1616296 () Bool)

(declare-fun e!1616299 () Bool)

(assert (=> b!2559098 (= e!1616296 e!1616299)))

(declare-fun c!410955 () Bool)

(assert (=> b!2559098 (= c!410955 ((_ is Star!7613) lt!904421))))

(declare-fun b!2559099 () Bool)

(declare-fun e!1616298 () Bool)

(declare-fun call!163709 () Bool)

(assert (=> b!2559099 (= e!1616298 call!163709)))

(declare-fun b!2559100 () Bool)

(declare-fun res!1077553 () Bool)

(declare-fun e!1616301 () Bool)

(assert (=> b!2559100 (=> (not res!1077553) (not e!1616301))))

(assert (=> b!2559100 (= res!1077553 call!163709)))

(declare-fun e!1616297 () Bool)

(assert (=> b!2559100 (= e!1616297 e!1616301)))

(declare-fun b!2559101 () Bool)

(assert (=> b!2559101 (= e!1616299 e!1616297)))

(assert (=> b!2559101 (= c!410956 ((_ is Union!7613) lt!904421))))

(declare-fun b!2559102 () Bool)

(declare-fun e!1616302 () Bool)

(assert (=> b!2559102 (= e!1616302 e!1616298)))

(declare-fun res!1077554 () Bool)

(assert (=> b!2559102 (=> (not res!1077554) (not e!1616298))))

(assert (=> b!2559102 (= res!1077554 call!163708)))

(declare-fun b!2559103 () Bool)

(declare-fun res!1077551 () Bool)

(assert (=> b!2559103 (=> res!1077551 e!1616302)))

(assert (=> b!2559103 (= res!1077551 (not ((_ is Concat!12309) lt!904421)))))

(assert (=> b!2559103 (= e!1616297 e!1616302)))

(declare-fun b!2559104 () Bool)

(declare-fun e!1616300 () Bool)

(declare-fun call!163710 () Bool)

(assert (=> b!2559104 (= e!1616300 call!163710)))

(declare-fun b!2559105 () Bool)

(assert (=> b!2559105 (= e!1616301 call!163708)))

(declare-fun bm!163704 () Bool)

(assert (=> bm!163704 (= call!163710 (validRegex!3239 (ite c!410955 (reg!7942 lt!904421) (ite c!410956 (regOne!15739 lt!904421) (regTwo!15738 lt!904421)))))))

(declare-fun d!725038 () Bool)

(declare-fun res!1077552 () Bool)

(assert (=> d!725038 (=> res!1077552 e!1616296)))

(assert (=> d!725038 (= res!1077552 ((_ is ElementMatch!7613) lt!904421))))

(assert (=> d!725038 (= (validRegex!3239 lt!904421) e!1616296)))

(declare-fun bm!163705 () Bool)

(assert (=> bm!163705 (= call!163709 call!163710)))

(declare-fun b!2559106 () Bool)

(assert (=> b!2559106 (= e!1616299 e!1616300)))

(declare-fun res!1077550 () Bool)

(assert (=> b!2559106 (= res!1077550 (not (nullable!2530 (reg!7942 lt!904421))))))

(assert (=> b!2559106 (=> (not res!1077550) (not e!1616300))))

(assert (= (and d!725038 (not res!1077552)) b!2559098))

(assert (= (and b!2559098 c!410955) b!2559106))

(assert (= (and b!2559098 (not c!410955)) b!2559101))

(assert (= (and b!2559106 res!1077550) b!2559104))

(assert (= (and b!2559101 c!410956) b!2559100))

(assert (= (and b!2559101 (not c!410956)) b!2559103))

(assert (= (and b!2559100 res!1077553) b!2559105))

(assert (= (and b!2559103 (not res!1077551)) b!2559102))

(assert (= (and b!2559102 res!1077554) b!2559099))

(assert (= (or b!2559100 b!2559099) bm!163705))

(assert (= (or b!2559105 b!2559102) bm!163703))

(assert (= (or b!2559104 bm!163705) bm!163704))

(declare-fun m!2899819 () Bool)

(assert (=> bm!163703 m!2899819))

(declare-fun m!2899821 () Bool)

(assert (=> bm!163704 m!2899821))

(declare-fun m!2899823 () Bool)

(assert (=> b!2559106 m!2899823))

(assert (=> d!724924 d!725038))

(declare-fun d!725042 () Bool)

(assert (=> d!725042 (= (matchR!3558 lt!904421 tl!4068) (matchR!3558 (derivative!308 lt!904421 tl!4068) Nil!29578))))

(assert (=> d!725042 true))

(declare-fun _$108!364 () Unit!43411)

(assert (=> d!725042 (= (choose!15100 lt!904421 tl!4068) _$108!364)))

(declare-fun bs!469783 () Bool)

(assert (= bs!469783 d!725042))

(assert (=> bs!469783 m!2899103))

(assert (=> bs!469783 m!2899107))

(assert (=> bs!469783 m!2899107))

(assert (=> bs!469783 m!2899111))

(assert (=> d!724924 d!725042))

(assert (=> d!724924 d!724920))

(assert (=> d!724924 d!724922))

(assert (=> b!2558512 d!724850))

(declare-fun d!725056 () Bool)

(assert (not d!725056))

(assert (=> b!2558755 d!725056))

(assert (=> b!2558755 d!725006))

(declare-fun d!725060 () Bool)

(assert (=> d!725060 (= (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412))) (h!34998 (Cons!29578 c!14016 (_1!17336 lt!904412))))))

(assert (=> b!2558291 d!725060))

(assert (=> b!2558748 d!725056))

(assert (=> b!2558748 d!725006))

(declare-fun d!725062 () Bool)

(declare-fun lt!904537 () Bool)

(assert (=> d!725062 (= lt!904537 (select (content!4076 (t!211377 (firstChars!96 (regOne!15738 r!27340)))) c!14016))))

(declare-fun e!1616337 () Bool)

(assert (=> d!725062 (= lt!904537 e!1616337)))

(declare-fun res!1077579 () Bool)

(assert (=> d!725062 (=> (not res!1077579) (not e!1616337))))

(assert (=> d!725062 (= res!1077579 ((_ is Cons!29578) (t!211377 (firstChars!96 (regOne!15738 r!27340)))))))

(assert (=> d!725062 (= (contains!5305 (t!211377 (firstChars!96 (regOne!15738 r!27340))) c!14016) lt!904537)))

(declare-fun b!2559158 () Bool)

(declare-fun e!1616336 () Bool)

(assert (=> b!2559158 (= e!1616337 e!1616336)))

(declare-fun res!1077578 () Bool)

(assert (=> b!2559158 (=> res!1077578 e!1616336)))

(assert (=> b!2559158 (= res!1077578 (= (h!34998 (t!211377 (firstChars!96 (regOne!15738 r!27340)))) c!14016))))

(declare-fun b!2559159 () Bool)

(assert (=> b!2559159 (= e!1616336 (contains!5305 (t!211377 (t!211377 (firstChars!96 (regOne!15738 r!27340)))) c!14016))))

(assert (= (and d!725062 res!1077579) b!2559158))

(assert (= (and b!2559158 (not res!1077578)) b!2559159))

(declare-fun m!2899861 () Bool)

(assert (=> d!725062 m!2899861))

(declare-fun m!2899863 () Bool)

(assert (=> d!725062 m!2899863))

(declare-fun m!2899865 () Bool)

(assert (=> b!2559159 m!2899865))

(assert (=> b!2558736 d!725062))

(declare-fun b!2559160 () Bool)

(declare-fun e!1616343 () Bool)

(declare-fun lt!904538 () Bool)

(declare-fun call!163725 () Bool)

(assert (=> b!2559160 (= e!1616343 (= lt!904538 call!163725))))

(declare-fun b!2559161 () Bool)

(declare-fun res!1077584 () Bool)

(declare-fun e!1616338 () Bool)

(assert (=> b!2559161 (=> res!1077584 e!1616338)))

(assert (=> b!2559161 (= res!1077584 (not (isEmpty!17034 (tail!4095 (tail!4095 (_1!17336 lt!904412))))))))

(declare-fun b!2559162 () Bool)

(assert (=> b!2559162 (= e!1616338 (not (= (head!5820 (tail!4095 (_1!17336 lt!904412))) (c!410685 (derivativeStep!2182 lt!904422 (head!5820 (_1!17336 lt!904412)))))))))

(declare-fun bm!163720 () Bool)

(assert (=> bm!163720 (= call!163725 (isEmpty!17034 (tail!4095 (_1!17336 lt!904412))))))

(declare-fun b!2559163 () Bool)

(declare-fun res!1077585 () Bool)

(declare-fun e!1616344 () Bool)

(assert (=> b!2559163 (=> res!1077585 e!1616344)))

(declare-fun e!1616339 () Bool)

(assert (=> b!2559163 (= res!1077585 e!1616339)))

(declare-fun res!1077581 () Bool)

(assert (=> b!2559163 (=> (not res!1077581) (not e!1616339))))

(assert (=> b!2559163 (= res!1077581 lt!904538)))

(declare-fun d!725064 () Bool)

(assert (=> d!725064 e!1616343))

(declare-fun c!410971 () Bool)

(assert (=> d!725064 (= c!410971 ((_ is EmptyExpr!7613) (derivativeStep!2182 lt!904422 (head!5820 (_1!17336 lt!904412)))))))

(declare-fun e!1616340 () Bool)

(assert (=> d!725064 (= lt!904538 e!1616340)))

(declare-fun c!410973 () Bool)

(assert (=> d!725064 (= c!410973 (isEmpty!17034 (tail!4095 (_1!17336 lt!904412))))))

(assert (=> d!725064 (validRegex!3239 (derivativeStep!2182 lt!904422 (head!5820 (_1!17336 lt!904412))))))

(assert (=> d!725064 (= (matchR!3558 (derivativeStep!2182 lt!904422 (head!5820 (_1!17336 lt!904412))) (tail!4095 (_1!17336 lt!904412))) lt!904538)))

(declare-fun b!2559164 () Bool)

(assert (=> b!2559164 (= e!1616340 (matchR!3558 (derivativeStep!2182 (derivativeStep!2182 lt!904422 (head!5820 (_1!17336 lt!904412))) (head!5820 (tail!4095 (_1!17336 lt!904412)))) (tail!4095 (tail!4095 (_1!17336 lt!904412)))))))

(declare-fun b!2559165 () Bool)

(declare-fun res!1077580 () Bool)

(assert (=> b!2559165 (=> res!1077580 e!1616344)))

(assert (=> b!2559165 (= res!1077580 (not ((_ is ElementMatch!7613) (derivativeStep!2182 lt!904422 (head!5820 (_1!17336 lt!904412))))))))

(declare-fun e!1616342 () Bool)

(assert (=> b!2559165 (= e!1616342 e!1616344)))

(declare-fun b!2559166 () Bool)

(assert (=> b!2559166 (= e!1616343 e!1616342)))

(declare-fun c!410972 () Bool)

(assert (=> b!2559166 (= c!410972 ((_ is EmptyLang!7613) (derivativeStep!2182 lt!904422 (head!5820 (_1!17336 lt!904412)))))))

(declare-fun b!2559167 () Bool)

(declare-fun e!1616341 () Bool)

(assert (=> b!2559167 (= e!1616344 e!1616341)))

(declare-fun res!1077587 () Bool)

(assert (=> b!2559167 (=> (not res!1077587) (not e!1616341))))

(assert (=> b!2559167 (= res!1077587 (not lt!904538))))

(declare-fun b!2559168 () Bool)

(declare-fun res!1077586 () Bool)

(assert (=> b!2559168 (=> (not res!1077586) (not e!1616339))))

(assert (=> b!2559168 (= res!1077586 (isEmpty!17034 (tail!4095 (tail!4095 (_1!17336 lt!904412)))))))

(declare-fun b!2559169 () Bool)

(declare-fun res!1077583 () Bool)

(assert (=> b!2559169 (=> (not res!1077583) (not e!1616339))))

(assert (=> b!2559169 (= res!1077583 (not call!163725))))

(declare-fun b!2559170 () Bool)

(assert (=> b!2559170 (= e!1616342 (not lt!904538))))

(declare-fun b!2559171 () Bool)

(assert (=> b!2559171 (= e!1616341 e!1616338)))

(declare-fun res!1077582 () Bool)

(assert (=> b!2559171 (=> res!1077582 e!1616338)))

(assert (=> b!2559171 (= res!1077582 call!163725)))

(declare-fun b!2559172 () Bool)

(assert (=> b!2559172 (= e!1616339 (= (head!5820 (tail!4095 (_1!17336 lt!904412))) (c!410685 (derivativeStep!2182 lt!904422 (head!5820 (_1!17336 lt!904412))))))))

(declare-fun b!2559173 () Bool)

(assert (=> b!2559173 (= e!1616340 (nullable!2530 (derivativeStep!2182 lt!904422 (head!5820 (_1!17336 lt!904412)))))))

(assert (= (and d!725064 c!410973) b!2559173))

(assert (= (and d!725064 (not c!410973)) b!2559164))

(assert (= (and d!725064 c!410971) b!2559160))

(assert (= (and d!725064 (not c!410971)) b!2559166))

(assert (= (and b!2559166 c!410972) b!2559170))

(assert (= (and b!2559166 (not c!410972)) b!2559165))

(assert (= (and b!2559165 (not res!1077580)) b!2559163))

(assert (= (and b!2559163 res!1077581) b!2559169))

(assert (= (and b!2559169 res!1077583) b!2559168))

(assert (= (and b!2559168 res!1077586) b!2559172))

(assert (= (and b!2559163 (not res!1077585)) b!2559167))

(assert (= (and b!2559167 res!1077587) b!2559171))

(assert (= (and b!2559171 (not res!1077582)) b!2559161))

(assert (= (and b!2559161 (not res!1077584)) b!2559162))

(assert (= (or b!2559160 b!2559169 b!2559171) bm!163720))

(assert (=> bm!163720 m!2899197))

(assert (=> bm!163720 m!2899199))

(assert (=> d!725064 m!2899197))

(assert (=> d!725064 m!2899199))

(assert (=> d!725064 m!2899203))

(declare-fun m!2899867 () Bool)

(assert (=> d!725064 m!2899867))

(assert (=> b!2559168 m!2899197))

(declare-fun m!2899869 () Bool)

(assert (=> b!2559168 m!2899869))

(assert (=> b!2559168 m!2899869))

(declare-fun m!2899871 () Bool)

(assert (=> b!2559168 m!2899871))

(assert (=> b!2559164 m!2899197))

(declare-fun m!2899873 () Bool)

(assert (=> b!2559164 m!2899873))

(assert (=> b!2559164 m!2899203))

(assert (=> b!2559164 m!2899873))

(declare-fun m!2899875 () Bool)

(assert (=> b!2559164 m!2899875))

(assert (=> b!2559164 m!2899197))

(assert (=> b!2559164 m!2899869))

(assert (=> b!2559164 m!2899875))

(assert (=> b!2559164 m!2899869))

(declare-fun m!2899877 () Bool)

(assert (=> b!2559164 m!2899877))

(assert (=> b!2559173 m!2899203))

(declare-fun m!2899881 () Bool)

(assert (=> b!2559173 m!2899881))

(assert (=> b!2559161 m!2899197))

(assert (=> b!2559161 m!2899869))

(assert (=> b!2559161 m!2899869))

(assert (=> b!2559161 m!2899871))

(assert (=> b!2559172 m!2899197))

(assert (=> b!2559172 m!2899873))

(assert (=> b!2559162 m!2899197))

(assert (=> b!2559162 m!2899873))

(assert (=> b!2558269 d!725064))

(declare-fun bm!163724 () Bool)

(declare-fun call!163731 () Regex!7613)

(declare-fun call!163732 () Regex!7613)

(assert (=> bm!163724 (= call!163731 call!163732)))

(declare-fun b!2559183 () Bool)

(declare-fun e!1616352 () Regex!7613)

(assert (=> b!2559183 (= e!1616352 EmptyLang!7613)))

(declare-fun b!2559184 () Bool)

(declare-fun c!410981 () Bool)

(assert (=> b!2559184 (= c!410981 ((_ is Union!7613) lt!904422))))

(declare-fun e!1616354 () Regex!7613)

(declare-fun e!1616357 () Regex!7613)

(assert (=> b!2559184 (= e!1616354 e!1616357)))

(declare-fun call!163729 () Regex!7613)

(declare-fun bm!163725 () Bool)

(assert (=> bm!163725 (= call!163729 (derivativeStep!2182 (ite c!410981 (regOne!15739 lt!904422) (regTwo!15738 lt!904422)) (head!5820 (_1!17336 lt!904412))))))

(declare-fun b!2559185 () Bool)

(declare-fun c!410978 () Bool)

(assert (=> b!2559185 (= c!410978 (nullable!2530 (regOne!15738 lt!904422)))))

(declare-fun e!1616355 () Regex!7613)

(declare-fun e!1616353 () Regex!7613)

(assert (=> b!2559185 (= e!1616355 e!1616353)))

(declare-fun b!2559186 () Bool)

(assert (=> b!2559186 (= e!1616355 (Concat!12309 call!163731 lt!904422))))

(declare-fun bm!163726 () Bool)

(declare-fun call!163730 () Regex!7613)

(assert (=> bm!163726 (= call!163730 call!163731)))

(declare-fun d!725072 () Bool)

(declare-fun lt!904539 () Regex!7613)

(assert (=> d!725072 (validRegex!3239 lt!904539)))

(assert (=> d!725072 (= lt!904539 e!1616352)))

(declare-fun c!410977 () Bool)

(assert (=> d!725072 (= c!410977 (or ((_ is EmptyExpr!7613) lt!904422) ((_ is EmptyLang!7613) lt!904422)))))

(assert (=> d!725072 (validRegex!3239 lt!904422)))

(assert (=> d!725072 (= (derivativeStep!2182 lt!904422 (head!5820 (_1!17336 lt!904412))) lt!904539)))

(declare-fun b!2559187 () Bool)

(assert (=> b!2559187 (= e!1616357 (Union!7613 call!163729 call!163732))))

(declare-fun b!2559188 () Bool)

(assert (=> b!2559188 (= e!1616353 (Union!7613 (Concat!12309 call!163730 (regTwo!15738 lt!904422)) EmptyLang!7613))))

(declare-fun b!2559189 () Bool)

(assert (=> b!2559189 (= e!1616353 (Union!7613 (Concat!12309 call!163730 (regTwo!15738 lt!904422)) call!163729))))

(declare-fun b!2559190 () Bool)

(assert (=> b!2559190 (= e!1616352 e!1616354)))

(declare-fun c!410979 () Bool)

(assert (=> b!2559190 (= c!410979 ((_ is ElementMatch!7613) lt!904422))))

(declare-fun b!2559191 () Bool)

(assert (=> b!2559191 (= e!1616357 e!1616355)))

(declare-fun c!410976 () Bool)

(assert (=> b!2559191 (= c!410976 ((_ is Star!7613) lt!904422))))

(declare-fun bm!163727 () Bool)

(assert (=> bm!163727 (= call!163732 (derivativeStep!2182 (ite c!410981 (regTwo!15739 lt!904422) (ite c!410976 (reg!7942 lt!904422) (regOne!15738 lt!904422))) (head!5820 (_1!17336 lt!904412))))))

(declare-fun b!2559193 () Bool)

(assert (=> b!2559193 (= e!1616354 (ite (= (head!5820 (_1!17336 lt!904412)) (c!410685 lt!904422)) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725072 c!410977) b!2559183))

(assert (= (and d!725072 (not c!410977)) b!2559190))

(assert (= (and b!2559190 c!410979) b!2559193))

(assert (= (and b!2559190 (not c!410979)) b!2559184))

(assert (= (and b!2559184 c!410981) b!2559187))

(assert (= (and b!2559184 (not c!410981)) b!2559191))

(assert (= (and b!2559191 c!410976) b!2559186))

(assert (= (and b!2559191 (not c!410976)) b!2559185))

(assert (= (and b!2559185 c!410978) b!2559189))

(assert (= (and b!2559185 (not c!410978)) b!2559188))

(assert (= (or b!2559189 b!2559188) bm!163726))

(assert (= (or b!2559186 bm!163726) bm!163724))

(assert (= (or b!2559187 bm!163724) bm!163727))

(assert (= (or b!2559187 b!2559189) bm!163725))

(assert (=> bm!163725 m!2899201))

(declare-fun m!2899887 () Bool)

(assert (=> bm!163725 m!2899887))

(declare-fun m!2899889 () Bool)

(assert (=> b!2559185 m!2899889))

(declare-fun m!2899891 () Bool)

(assert (=> d!725072 m!2899891))

(assert (=> d!725072 m!2899195))

(assert (=> bm!163727 m!2899201))

(declare-fun m!2899895 () Bool)

(assert (=> bm!163727 m!2899895))

(assert (=> b!2558269 d!725072))

(declare-fun d!725074 () Bool)

(assert (=> d!725074 (= (head!5820 (_1!17336 lt!904412)) (h!34998 (_1!17336 lt!904412)))))

(assert (=> b!2558269 d!725074))

(assert (=> b!2558269 d!725012))

(declare-fun bm!163729 () Bool)

(declare-fun call!163734 () Bool)

(declare-fun c!410985 () Bool)

(assert (=> bm!163729 (= call!163734 (validRegex!3239 (ite c!410985 (regTwo!15739 lt!904422) (regOne!15738 lt!904422))))))

(declare-fun b!2559207 () Bool)

(declare-fun e!1616364 () Bool)

(declare-fun e!1616367 () Bool)

(assert (=> b!2559207 (= e!1616364 e!1616367)))

(declare-fun c!410984 () Bool)

(assert (=> b!2559207 (= c!410984 ((_ is Star!7613) lt!904422))))

(declare-fun b!2559208 () Bool)

(declare-fun e!1616366 () Bool)

(declare-fun call!163735 () Bool)

(assert (=> b!2559208 (= e!1616366 call!163735)))

(declare-fun b!2559209 () Bool)

(declare-fun res!1077604 () Bool)

(declare-fun e!1616369 () Bool)

(assert (=> b!2559209 (=> (not res!1077604) (not e!1616369))))

(assert (=> b!2559209 (= res!1077604 call!163735)))

(declare-fun e!1616365 () Bool)

(assert (=> b!2559209 (= e!1616365 e!1616369)))

(declare-fun b!2559210 () Bool)

(assert (=> b!2559210 (= e!1616367 e!1616365)))

(assert (=> b!2559210 (= c!410985 ((_ is Union!7613) lt!904422))))

(declare-fun b!2559211 () Bool)

(declare-fun e!1616370 () Bool)

(assert (=> b!2559211 (= e!1616370 e!1616366)))

(declare-fun res!1077605 () Bool)

(assert (=> b!2559211 (=> (not res!1077605) (not e!1616366))))

(assert (=> b!2559211 (= res!1077605 call!163734)))

(declare-fun b!2559212 () Bool)

(declare-fun res!1077602 () Bool)

(assert (=> b!2559212 (=> res!1077602 e!1616370)))

(assert (=> b!2559212 (= res!1077602 (not ((_ is Concat!12309) lt!904422)))))

(assert (=> b!2559212 (= e!1616365 e!1616370)))

(declare-fun b!2559213 () Bool)

(declare-fun e!1616368 () Bool)

(declare-fun call!163736 () Bool)

(assert (=> b!2559213 (= e!1616368 call!163736)))

(declare-fun b!2559214 () Bool)

(assert (=> b!2559214 (= e!1616369 call!163734)))

(declare-fun bm!163730 () Bool)

(assert (=> bm!163730 (= call!163736 (validRegex!3239 (ite c!410984 (reg!7942 lt!904422) (ite c!410985 (regOne!15739 lt!904422) (regTwo!15738 lt!904422)))))))

(declare-fun d!725076 () Bool)

(declare-fun res!1077603 () Bool)

(assert (=> d!725076 (=> res!1077603 e!1616364)))

(assert (=> d!725076 (= res!1077603 ((_ is ElementMatch!7613) lt!904422))))

(assert (=> d!725076 (= (validRegex!3239 lt!904422) e!1616364)))

(declare-fun bm!163731 () Bool)

(assert (=> bm!163731 (= call!163735 call!163736)))

(declare-fun b!2559215 () Bool)

(assert (=> b!2559215 (= e!1616367 e!1616368)))

(declare-fun res!1077601 () Bool)

(assert (=> b!2559215 (= res!1077601 (not (nullable!2530 (reg!7942 lt!904422))))))

(assert (=> b!2559215 (=> (not res!1077601) (not e!1616368))))

(assert (= (and d!725076 (not res!1077603)) b!2559207))

(assert (= (and b!2559207 c!410984) b!2559215))

(assert (= (and b!2559207 (not c!410984)) b!2559210))

(assert (= (and b!2559215 res!1077601) b!2559213))

(assert (= (and b!2559210 c!410985) b!2559209))

(assert (= (and b!2559210 (not c!410985)) b!2559212))

(assert (= (and b!2559209 res!1077604) b!2559214))

(assert (= (and b!2559212 (not res!1077602)) b!2559211))

(assert (= (and b!2559211 res!1077605) b!2559208))

(assert (= (or b!2559209 b!2559208) bm!163731))

(assert (= (or b!2559214 b!2559211) bm!163729))

(assert (= (or b!2559213 bm!163731) bm!163730))

(declare-fun m!2899909 () Bool)

(assert (=> bm!163729 m!2899909))

(declare-fun m!2899911 () Bool)

(assert (=> bm!163730 m!2899911))

(declare-fun m!2899913 () Bool)

(assert (=> b!2559215 m!2899913))

(assert (=> d!724870 d!725076))

(assert (=> d!724870 d!724822))

(declare-fun d!725080 () Bool)

(assert (=> d!725080 (= (matchR!3558 lt!904422 (_1!17336 lt!904412)) (matchR!3558 (derivative!308 lt!904422 (_1!17336 lt!904412)) Nil!29578))))

(assert (=> d!725080 true))

(declare-fun _$108!368 () Unit!43411)

(assert (=> d!725080 (= (choose!15100 lt!904422 (_1!17336 lt!904412)) _$108!368)))

(declare-fun bs!469785 () Bool)

(assert (= bs!469785 d!725080))

(assert (=> bs!469785 m!2899155))

(assert (=> bs!469785 m!2899151))

(assert (=> bs!469785 m!2899151))

(assert (=> bs!469785 m!2899405))

(assert (=> d!724870 d!725080))

(assert (=> d!724870 d!724868))

(declare-fun b!2559226 () Bool)

(declare-fun e!1616381 () Bool)

(declare-fun lt!904542 () Bool)

(declare-fun call!163741 () Bool)

(assert (=> b!2559226 (= e!1616381 (= lt!904542 call!163741))))

(declare-fun b!2559227 () Bool)

(declare-fun res!1077610 () Bool)

(declare-fun e!1616376 () Bool)

(assert (=> b!2559227 (=> res!1077610 e!1616376)))

(assert (=> b!2559227 (= res!1077610 (not (isEmpty!17034 (tail!4095 Nil!29578))))))

(declare-fun b!2559228 () Bool)

(assert (=> b!2559228 (= e!1616376 (not (= (head!5820 Nil!29578) (c!410685 (derivative!308 lt!904422 (_1!17336 lt!904412))))))))

(declare-fun bm!163736 () Bool)

(assert (=> bm!163736 (= call!163741 (isEmpty!17034 Nil!29578))))

(declare-fun b!2559229 () Bool)

(declare-fun res!1077611 () Bool)

(declare-fun e!1616382 () Bool)

(assert (=> b!2559229 (=> res!1077611 e!1616382)))

(declare-fun e!1616377 () Bool)

(assert (=> b!2559229 (= res!1077611 e!1616377)))

(declare-fun res!1077607 () Bool)

(assert (=> b!2559229 (=> (not res!1077607) (not e!1616377))))

(assert (=> b!2559229 (= res!1077607 lt!904542)))

(declare-fun d!725082 () Bool)

(assert (=> d!725082 e!1616381))

(declare-fun c!410991 () Bool)

(assert (=> d!725082 (= c!410991 ((_ is EmptyExpr!7613) (derivative!308 lt!904422 (_1!17336 lt!904412))))))

(declare-fun e!1616378 () Bool)

(assert (=> d!725082 (= lt!904542 e!1616378)))

(declare-fun c!410993 () Bool)

(assert (=> d!725082 (= c!410993 (isEmpty!17034 Nil!29578))))

(assert (=> d!725082 (validRegex!3239 (derivative!308 lt!904422 (_1!17336 lt!904412)))))

(assert (=> d!725082 (= (matchR!3558 (derivative!308 lt!904422 (_1!17336 lt!904412)) Nil!29578) lt!904542)))

(declare-fun b!2559230 () Bool)

(assert (=> b!2559230 (= e!1616378 (matchR!3558 (derivativeStep!2182 (derivative!308 lt!904422 (_1!17336 lt!904412)) (head!5820 Nil!29578)) (tail!4095 Nil!29578)))))

(declare-fun b!2559231 () Bool)

(declare-fun res!1077606 () Bool)

(assert (=> b!2559231 (=> res!1077606 e!1616382)))

(assert (=> b!2559231 (= res!1077606 (not ((_ is ElementMatch!7613) (derivative!308 lt!904422 (_1!17336 lt!904412)))))))

(declare-fun e!1616380 () Bool)

(assert (=> b!2559231 (= e!1616380 e!1616382)))

(declare-fun b!2559232 () Bool)

(assert (=> b!2559232 (= e!1616381 e!1616380)))

(declare-fun c!410992 () Bool)

(assert (=> b!2559232 (= c!410992 ((_ is EmptyLang!7613) (derivative!308 lt!904422 (_1!17336 lt!904412))))))

(declare-fun b!2559233 () Bool)

(declare-fun e!1616379 () Bool)

(assert (=> b!2559233 (= e!1616382 e!1616379)))

(declare-fun res!1077613 () Bool)

(assert (=> b!2559233 (=> (not res!1077613) (not e!1616379))))

(assert (=> b!2559233 (= res!1077613 (not lt!904542))))

(declare-fun b!2559234 () Bool)

(declare-fun res!1077612 () Bool)

(assert (=> b!2559234 (=> (not res!1077612) (not e!1616377))))

(assert (=> b!2559234 (= res!1077612 (isEmpty!17034 (tail!4095 Nil!29578)))))

(declare-fun b!2559235 () Bool)

(declare-fun res!1077609 () Bool)

(assert (=> b!2559235 (=> (not res!1077609) (not e!1616377))))

(assert (=> b!2559235 (= res!1077609 (not call!163741))))

(declare-fun b!2559236 () Bool)

(assert (=> b!2559236 (= e!1616380 (not lt!904542))))

(declare-fun b!2559237 () Bool)

(assert (=> b!2559237 (= e!1616379 e!1616376)))

(declare-fun res!1077608 () Bool)

(assert (=> b!2559237 (=> res!1077608 e!1616376)))

(assert (=> b!2559237 (= res!1077608 call!163741)))

(declare-fun b!2559238 () Bool)

(assert (=> b!2559238 (= e!1616377 (= (head!5820 Nil!29578) (c!410685 (derivative!308 lt!904422 (_1!17336 lt!904412)))))))

(declare-fun b!2559239 () Bool)

(assert (=> b!2559239 (= e!1616378 (nullable!2530 (derivative!308 lt!904422 (_1!17336 lt!904412))))))

(assert (= (and d!725082 c!410993) b!2559239))

(assert (= (and d!725082 (not c!410993)) b!2559230))

(assert (= (and d!725082 c!410991) b!2559226))

(assert (= (and d!725082 (not c!410991)) b!2559232))

(assert (= (and b!2559232 c!410992) b!2559236))

(assert (= (and b!2559232 (not c!410992)) b!2559231))

(assert (= (and b!2559231 (not res!1077606)) b!2559229))

(assert (= (and b!2559229 res!1077607) b!2559235))

(assert (= (and b!2559235 res!1077609) b!2559234))

(assert (= (and b!2559234 res!1077612) b!2559238))

(assert (= (and b!2559229 (not res!1077611)) b!2559233))

(assert (= (and b!2559233 res!1077613) b!2559237))

(assert (= (and b!2559237 (not res!1077608)) b!2559227))

(assert (= (and b!2559227 (not res!1077610)) b!2559228))

(assert (= (or b!2559226 b!2559235 b!2559237) bm!163736))

(assert (=> bm!163736 m!2899359))

(assert (=> d!725082 m!2899359))

(assert (=> d!725082 m!2899151))

(declare-fun m!2899921 () Bool)

(assert (=> d!725082 m!2899921))

(assert (=> b!2559234 m!2899363))

(assert (=> b!2559234 m!2899363))

(assert (=> b!2559234 m!2899365))

(assert (=> b!2559230 m!2899367))

(assert (=> b!2559230 m!2899151))

(assert (=> b!2559230 m!2899367))

(declare-fun m!2899923 () Bool)

(assert (=> b!2559230 m!2899923))

(assert (=> b!2559230 m!2899363))

(assert (=> b!2559230 m!2899923))

(assert (=> b!2559230 m!2899363))

(declare-fun m!2899927 () Bool)

(assert (=> b!2559230 m!2899927))

(assert (=> b!2559239 m!2899151))

(declare-fun m!2899931 () Bool)

(assert (=> b!2559239 m!2899931))

(assert (=> b!2559227 m!2899363))

(assert (=> b!2559227 m!2899363))

(assert (=> b!2559227 m!2899365))

(assert (=> b!2559238 m!2899367))

(assert (=> b!2559228 m!2899367))

(assert (=> d!724870 d!725082))

(declare-fun d!725090 () Bool)

(assert (=> d!725090 (= (isEmpty!17034 tl!4068) ((_ is Nil!29578) tl!4068))))

(assert (=> bm!163636 d!725090))

(declare-fun d!725092 () Bool)

(declare-fun lt!904546 () Int)

(assert (=> d!725092 (>= lt!904546 0)))

(declare-fun e!1616402 () Int)

(assert (=> d!725092 (= lt!904546 e!1616402)))

(declare-fun c!411008 () Bool)

(assert (=> d!725092 (= c!411008 ((_ is Nil!29578) lt!904520))))

(assert (=> d!725092 (= (size!22956 lt!904520) lt!904546)))

(declare-fun b!2559273 () Bool)

(assert (=> b!2559273 (= e!1616402 0)))

(declare-fun b!2559274 () Bool)

(assert (=> b!2559274 (= e!1616402 (+ 1 (size!22956 (t!211377 lt!904520))))))

(assert (= (and d!725092 c!411008) b!2559273))

(assert (= (and d!725092 (not c!411008)) b!2559274))

(declare-fun m!2899955 () Bool)

(assert (=> b!2559274 m!2899955))

(assert (=> b!2558854 d!725092))

(declare-fun d!725100 () Bool)

(declare-fun lt!904547 () Int)

(assert (=> d!725100 (>= lt!904547 0)))

(declare-fun e!1616403 () Int)

(assert (=> d!725100 (= lt!904547 e!1616403)))

(declare-fun c!411009 () Bool)

(assert (=> d!725100 (= c!411009 ((_ is Nil!29578) (_1!17336 lt!904412)))))

(assert (=> d!725100 (= (size!22956 (_1!17336 lt!904412)) lt!904547)))

(declare-fun b!2559275 () Bool)

(assert (=> b!2559275 (= e!1616403 0)))

(declare-fun b!2559276 () Bool)

(assert (=> b!2559276 (= e!1616403 (+ 1 (size!22956 (t!211377 (_1!17336 lt!904412)))))))

(assert (= (and d!725100 c!411009) b!2559275))

(assert (= (and d!725100 (not c!411009)) b!2559276))

(declare-fun m!2899957 () Bool)

(assert (=> b!2559276 m!2899957))

(assert (=> b!2558854 d!725100))

(declare-fun d!725102 () Bool)

(declare-fun lt!904548 () Int)

(assert (=> d!725102 (>= lt!904548 0)))

(declare-fun e!1616404 () Int)

(assert (=> d!725102 (= lt!904548 e!1616404)))

(declare-fun c!411010 () Bool)

(assert (=> d!725102 (= c!411010 ((_ is Nil!29578) (_2!17336 lt!904412)))))

(assert (=> d!725102 (= (size!22956 (_2!17336 lt!904412)) lt!904548)))

(declare-fun b!2559277 () Bool)

(assert (=> b!2559277 (= e!1616404 0)))

(declare-fun b!2559278 () Bool)

(assert (=> b!2559278 (= e!1616404 (+ 1 (size!22956 (t!211377 (_2!17336 lt!904412)))))))

(assert (= (and d!725102 c!411010) b!2559277))

(assert (= (and d!725102 (not c!411010)) b!2559278))

(declare-fun m!2899959 () Bool)

(assert (=> b!2559278 m!2899959))

(assert (=> b!2558854 d!725102))

(assert (=> b!2558501 d!725004))

(declare-fun b!2559279 () Bool)

(declare-fun e!1616405 () List!29678)

(assert (=> b!2559279 (= e!1616405 (ite c!410845 call!163632 call!163631))))

(declare-fun d!725104 () Bool)

(declare-fun e!1616406 () Bool)

(assert (=> d!725104 e!1616406))

(declare-fun res!1077620 () Bool)

(assert (=> d!725104 (=> (not res!1077620) (not e!1616406))))

(declare-fun lt!904549 () List!29678)

(assert (=> d!725104 (= res!1077620 (= (content!4076 lt!904549) ((_ map or) (content!4076 (ite c!410845 call!163629 call!163632)) (content!4076 (ite c!410845 call!163632 call!163631)))))))

(assert (=> d!725104 (= lt!904549 e!1616405)))

(declare-fun c!411012 () Bool)

(assert (=> d!725104 (= c!411012 ((_ is Nil!29578) (ite c!410845 call!163629 call!163632)))))

(assert (=> d!725104 (= (++!7270 (ite c!410845 call!163629 call!163632) (ite c!410845 call!163632 call!163631)) lt!904549)))

(declare-fun b!2559281 () Bool)

(declare-fun res!1077619 () Bool)

(assert (=> b!2559281 (=> (not res!1077619) (not e!1616406))))

(assert (=> b!2559281 (= res!1077619 (= (size!22956 lt!904549) (+ (size!22956 (ite c!410845 call!163629 call!163632)) (size!22956 (ite c!410845 call!163632 call!163631)))))))

(declare-fun b!2559280 () Bool)

(assert (=> b!2559280 (= e!1616405 (Cons!29578 (h!34998 (ite c!410845 call!163629 call!163632)) (++!7270 (t!211377 (ite c!410845 call!163629 call!163632)) (ite c!410845 call!163632 call!163631))))))

(declare-fun b!2559282 () Bool)

(assert (=> b!2559282 (= e!1616406 (or (not (= (ite c!410845 call!163632 call!163631) Nil!29578)) (= lt!904549 (ite c!410845 call!163629 call!163632))))))

(assert (= (and d!725104 c!411012) b!2559279))

(assert (= (and d!725104 (not c!411012)) b!2559280))

(assert (= (and d!725104 res!1077620) b!2559281))

(assert (= (and b!2559281 res!1077619) b!2559282))

(declare-fun m!2899961 () Bool)

(assert (=> d!725104 m!2899961))

(declare-fun m!2899963 () Bool)

(assert (=> d!725104 m!2899963))

(declare-fun m!2899965 () Bool)

(assert (=> d!725104 m!2899965))

(declare-fun m!2899967 () Bool)

(assert (=> b!2559281 m!2899967))

(declare-fun m!2899969 () Bool)

(assert (=> b!2559281 m!2899969))

(declare-fun m!2899971 () Bool)

(assert (=> b!2559281 m!2899971))

(declare-fun m!2899973 () Bool)

(assert (=> b!2559280 m!2899973))

(assert (=> bm!163626 d!725104))

(declare-fun d!725106 () Bool)

(assert (=> d!725106 (= (isDefined!4736 lt!904517) (not (isEmpty!17036 lt!904517)))))

(declare-fun bs!469788 () Bool)

(assert (= bs!469788 d!725106))

(declare-fun m!2899975 () Bool)

(assert (=> bs!469788 m!2899975))

(assert (=> b!2558837 d!725106))

(declare-fun d!725108 () Bool)

(assert (=> d!725108 (= (head!5820 (_2!17336 lt!904412)) (h!34998 (_2!17336 lt!904412)))))

(assert (=> b!2558410 d!725108))

(assert (=> b!2558266 d!725008))

(assert (=> b!2558266 d!725012))

(declare-fun call!163754 () Bool)

(declare-fun c!411015 () Bool)

(declare-fun bm!163749 () Bool)

(assert (=> bm!163749 (= call!163754 (validRegex!3239 (ite c!411015 (regTwo!15739 (ite c!410785 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))) (regOne!15738 (ite c!410785 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))))

(declare-fun b!2559287 () Bool)

(declare-fun e!1616408 () Bool)

(declare-fun e!1616412 () Bool)

(assert (=> b!2559287 (= e!1616408 e!1616412)))

(declare-fun c!411014 () Bool)

(assert (=> b!2559287 (= c!411014 ((_ is Star!7613) (ite c!410785 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))

(declare-fun b!2559288 () Bool)

(declare-fun e!1616411 () Bool)

(declare-fun call!163755 () Bool)

(assert (=> b!2559288 (= e!1616411 call!163755)))

(declare-fun b!2559289 () Bool)

(declare-fun res!1077626 () Bool)

(declare-fun e!1616414 () Bool)

(assert (=> b!2559289 (=> (not res!1077626) (not e!1616414))))

(assert (=> b!2559289 (= res!1077626 call!163755)))

(declare-fun e!1616410 () Bool)

(assert (=> b!2559289 (= e!1616410 e!1616414)))

(declare-fun b!2559290 () Bool)

(assert (=> b!2559290 (= e!1616412 e!1616410)))

(assert (=> b!2559290 (= c!411015 ((_ is Union!7613) (ite c!410785 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))

(declare-fun b!2559291 () Bool)

(declare-fun e!1616415 () Bool)

(assert (=> b!2559291 (= e!1616415 e!1616411)))

(declare-fun res!1077627 () Bool)

(assert (=> b!2559291 (=> (not res!1077627) (not e!1616411))))

(assert (=> b!2559291 (= res!1077627 call!163754)))

(declare-fun b!2559292 () Bool)

(declare-fun res!1077624 () Bool)

(assert (=> b!2559292 (=> res!1077624 e!1616415)))

(assert (=> b!2559292 (= res!1077624 (not ((_ is Concat!12309) (ite c!410785 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(assert (=> b!2559292 (= e!1616410 e!1616415)))

(declare-fun b!2559293 () Bool)

(declare-fun e!1616413 () Bool)

(declare-fun call!163756 () Bool)

(assert (=> b!2559293 (= e!1616413 call!163756)))

(declare-fun b!2559294 () Bool)

(assert (=> b!2559294 (= e!1616414 call!163754)))

(declare-fun bm!163750 () Bool)

(assert (=> bm!163750 (= call!163756 (validRegex!3239 (ite c!411014 (reg!7942 (ite c!410785 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))) (ite c!411015 (regOne!15739 (ite c!410785 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))) (regTwo!15738 (ite c!410785 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))))

(declare-fun d!725112 () Bool)

(declare-fun res!1077625 () Bool)

(assert (=> d!725112 (=> res!1077625 e!1616408)))

(assert (=> d!725112 (= res!1077625 ((_ is ElementMatch!7613) (ite c!410785 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))

(assert (=> d!725112 (= (validRegex!3239 (ite c!410785 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))) e!1616408)))

(declare-fun bm!163751 () Bool)

(assert (=> bm!163751 (= call!163755 call!163756)))

(declare-fun b!2559295 () Bool)

(assert (=> b!2559295 (= e!1616412 e!1616413)))

(declare-fun res!1077622 () Bool)

(assert (=> b!2559295 (= res!1077622 (not (nullable!2530 (reg!7942 (ite c!410785 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))))

(assert (=> b!2559295 (=> (not res!1077622) (not e!1616413))))

(assert (= (and d!725112 (not res!1077625)) b!2559287))

(assert (= (and b!2559287 c!411014) b!2559295))

(assert (= (and b!2559287 (not c!411014)) b!2559290))

(assert (= (and b!2559295 res!1077622) b!2559293))

(assert (= (and b!2559290 c!411015) b!2559289))

(assert (= (and b!2559290 (not c!411015)) b!2559292))

(assert (= (and b!2559289 res!1077626) b!2559294))

(assert (= (and b!2559292 (not res!1077624)) b!2559291))

(assert (= (and b!2559291 res!1077627) b!2559288))

(assert (= (or b!2559289 b!2559288) bm!163751))

(assert (= (or b!2559294 b!2559291) bm!163749))

(assert (= (or b!2559293 bm!163751) bm!163750))

(declare-fun m!2899991 () Bool)

(assert (=> bm!163749 m!2899991))

(declare-fun m!2899993 () Bool)

(assert (=> bm!163750 m!2899993))

(declare-fun m!2899995 () Bool)

(assert (=> b!2559295 m!2899995))

(assert (=> bm!163583 d!725112))

(declare-fun d!725118 () Bool)

(assert (=> d!725118 (= (isEmpty!17034 (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412)))) ((_ is Nil!29578) (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412)))))))

(assert (=> b!2558287 d!725118))

(declare-fun d!725120 () Bool)

(assert (=> d!725120 (= (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412))) (t!211377 (Cons!29578 c!14016 (_1!17336 lt!904412))))))

(assert (=> b!2558287 d!725120))

(declare-fun c!411019 () Bool)

(declare-fun call!163760 () Bool)

(declare-fun bm!163755 () Bool)

(assert (=> bm!163755 (= call!163760 (validRegex!3239 (ite c!411019 (regTwo!15739 (ite c!410782 (reg!7942 r!27340) (ite c!410783 (regOne!15739 r!27340) (regTwo!15738 r!27340)))) (regOne!15738 (ite c!410782 (reg!7942 r!27340) (ite c!410783 (regOne!15739 r!27340) (regTwo!15738 r!27340)))))))))

(declare-fun b!2559305 () Bool)

(declare-fun e!1616423 () Bool)

(declare-fun e!1616426 () Bool)

(assert (=> b!2559305 (= e!1616423 e!1616426)))

(declare-fun c!411018 () Bool)

(assert (=> b!2559305 (= c!411018 ((_ is Star!7613) (ite c!410782 (reg!7942 r!27340) (ite c!410783 (regOne!15739 r!27340) (regTwo!15738 r!27340)))))))

(declare-fun b!2559306 () Bool)

(declare-fun e!1616425 () Bool)

(declare-fun call!163761 () Bool)

(assert (=> b!2559306 (= e!1616425 call!163761)))

(declare-fun b!2559307 () Bool)

(declare-fun res!1077636 () Bool)

(declare-fun e!1616428 () Bool)

(assert (=> b!2559307 (=> (not res!1077636) (not e!1616428))))

(assert (=> b!2559307 (= res!1077636 call!163761)))

(declare-fun e!1616424 () Bool)

(assert (=> b!2559307 (= e!1616424 e!1616428)))

(declare-fun b!2559308 () Bool)

(assert (=> b!2559308 (= e!1616426 e!1616424)))

(assert (=> b!2559308 (= c!411019 ((_ is Union!7613) (ite c!410782 (reg!7942 r!27340) (ite c!410783 (regOne!15739 r!27340) (regTwo!15738 r!27340)))))))

(declare-fun b!2559309 () Bool)

(declare-fun e!1616429 () Bool)

(assert (=> b!2559309 (= e!1616429 e!1616425)))

(declare-fun res!1077637 () Bool)

(assert (=> b!2559309 (=> (not res!1077637) (not e!1616425))))

(assert (=> b!2559309 (= res!1077637 call!163760)))

(declare-fun b!2559310 () Bool)

(declare-fun res!1077634 () Bool)

(assert (=> b!2559310 (=> res!1077634 e!1616429)))

(assert (=> b!2559310 (= res!1077634 (not ((_ is Concat!12309) (ite c!410782 (reg!7942 r!27340) (ite c!410783 (regOne!15739 r!27340) (regTwo!15738 r!27340))))))))

(assert (=> b!2559310 (= e!1616424 e!1616429)))

(declare-fun b!2559311 () Bool)

(declare-fun e!1616427 () Bool)

(declare-fun call!163762 () Bool)

(assert (=> b!2559311 (= e!1616427 call!163762)))

(declare-fun b!2559312 () Bool)

(assert (=> b!2559312 (= e!1616428 call!163760)))

(declare-fun bm!163756 () Bool)

(assert (=> bm!163756 (= call!163762 (validRegex!3239 (ite c!411018 (reg!7942 (ite c!410782 (reg!7942 r!27340) (ite c!410783 (regOne!15739 r!27340) (regTwo!15738 r!27340)))) (ite c!411019 (regOne!15739 (ite c!410782 (reg!7942 r!27340) (ite c!410783 (regOne!15739 r!27340) (regTwo!15738 r!27340)))) (regTwo!15738 (ite c!410782 (reg!7942 r!27340) (ite c!410783 (regOne!15739 r!27340) (regTwo!15738 r!27340))))))))))

(declare-fun d!725122 () Bool)

(declare-fun res!1077635 () Bool)

(assert (=> d!725122 (=> res!1077635 e!1616423)))

(assert (=> d!725122 (= res!1077635 ((_ is ElementMatch!7613) (ite c!410782 (reg!7942 r!27340) (ite c!410783 (regOne!15739 r!27340) (regTwo!15738 r!27340)))))))

(assert (=> d!725122 (= (validRegex!3239 (ite c!410782 (reg!7942 r!27340) (ite c!410783 (regOne!15739 r!27340) (regTwo!15738 r!27340)))) e!1616423)))

(declare-fun bm!163757 () Bool)

(assert (=> bm!163757 (= call!163761 call!163762)))

(declare-fun b!2559313 () Bool)

(assert (=> b!2559313 (= e!1616426 e!1616427)))

(declare-fun res!1077633 () Bool)

(assert (=> b!2559313 (= res!1077633 (not (nullable!2530 (reg!7942 (ite c!410782 (reg!7942 r!27340) (ite c!410783 (regOne!15739 r!27340) (regTwo!15738 r!27340)))))))))

(assert (=> b!2559313 (=> (not res!1077633) (not e!1616427))))

(assert (= (and d!725122 (not res!1077635)) b!2559305))

(assert (= (and b!2559305 c!411018) b!2559313))

(assert (= (and b!2559305 (not c!411018)) b!2559308))

(assert (= (and b!2559313 res!1077633) b!2559311))

(assert (= (and b!2559308 c!411019) b!2559307))

(assert (= (and b!2559308 (not c!411019)) b!2559310))

(assert (= (and b!2559307 res!1077636) b!2559312))

(assert (= (and b!2559310 (not res!1077634)) b!2559309))

(assert (= (and b!2559309 res!1077637) b!2559306))

(assert (= (or b!2559307 b!2559306) bm!163757))

(assert (= (or b!2559312 b!2559309) bm!163755))

(assert (= (or b!2559311 bm!163757) bm!163756))

(declare-fun m!2900003 () Bool)

(assert (=> bm!163755 m!2900003))

(declare-fun m!2900005 () Bool)

(assert (=> bm!163756 m!2900005))

(declare-fun m!2900007 () Bool)

(assert (=> b!2559313 m!2900007))

(assert (=> bm!163575 d!725122))

(assert (=> b!2558280 d!725118))

(assert (=> b!2558280 d!725120))

(declare-fun bm!163759 () Bool)

(declare-fun call!163766 () Regex!7613)

(declare-fun call!163767 () Regex!7613)

(assert (=> bm!163759 (= call!163766 call!163767)))

(declare-fun b!2559328 () Bool)

(declare-fun e!1616437 () Regex!7613)

(assert (=> b!2559328 (= e!1616437 EmptyLang!7613)))

(declare-fun b!2559329 () Bool)

(declare-fun c!411027 () Bool)

(assert (=> b!2559329 (= c!411027 ((_ is Union!7613) (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340)))))))

(declare-fun e!1616439 () Regex!7613)

(declare-fun e!1616441 () Regex!7613)

(assert (=> b!2559329 (= e!1616439 e!1616441)))

(declare-fun call!163764 () Regex!7613)

(declare-fun bm!163760 () Bool)

(assert (=> bm!163760 (= call!163764 (derivativeStep!2182 (ite c!411027 (regOne!15739 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340)))) (regTwo!15738 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340))))) c!14016))))

(declare-fun b!2559330 () Bool)

(declare-fun c!411025 () Bool)

(assert (=> b!2559330 (= c!411025 (nullable!2530 (regOne!15738 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340))))))))

(declare-fun e!1616440 () Regex!7613)

(declare-fun e!1616438 () Regex!7613)

(assert (=> b!2559330 (= e!1616440 e!1616438)))

(declare-fun b!2559331 () Bool)

(assert (=> b!2559331 (= e!1616440 (Concat!12309 call!163766 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340)))))))

(declare-fun bm!163761 () Bool)

(declare-fun call!163765 () Regex!7613)

(assert (=> bm!163761 (= call!163765 call!163766)))

(declare-fun d!725126 () Bool)

(declare-fun lt!904552 () Regex!7613)

(assert (=> d!725126 (validRegex!3239 lt!904552)))

(assert (=> d!725126 (= lt!904552 e!1616437)))

(declare-fun c!411024 () Bool)

(assert (=> d!725126 (= c!411024 (or ((_ is EmptyExpr!7613) (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340)))) ((_ is EmptyLang!7613) (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340))))))))

(assert (=> d!725126 (validRegex!3239 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340))))))

(assert (=> d!725126 (= (derivativeStep!2182 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340))) c!14016) lt!904552)))

(declare-fun b!2559332 () Bool)

(assert (=> b!2559332 (= e!1616441 (Union!7613 call!163764 call!163767))))

(declare-fun b!2559333 () Bool)

(assert (=> b!2559333 (= e!1616438 (Union!7613 (Concat!12309 call!163765 (regTwo!15738 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340))))) EmptyLang!7613))))

(declare-fun b!2559334 () Bool)

(assert (=> b!2559334 (= e!1616438 (Union!7613 (Concat!12309 call!163765 (regTwo!15738 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340))))) call!163764))))

(declare-fun b!2559335 () Bool)

(assert (=> b!2559335 (= e!1616437 e!1616439)))

(declare-fun c!411026 () Bool)

(assert (=> b!2559335 (= c!411026 ((_ is ElementMatch!7613) (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340)))))))

(declare-fun b!2559336 () Bool)

(assert (=> b!2559336 (= e!1616441 e!1616440)))

(declare-fun c!411023 () Bool)

(assert (=> b!2559336 (= c!411023 ((_ is Star!7613) (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340)))))))

(declare-fun bm!163762 () Bool)

(assert (=> bm!163762 (= call!163767 (derivativeStep!2182 (ite c!411027 (regTwo!15739 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340)))) (ite c!411023 (reg!7942 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340)))) (regOne!15738 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340)))))) c!14016))))

(declare-fun b!2559337 () Bool)

(assert (=> b!2559337 (= e!1616439 (ite (= c!14016 (c!410685 (ite c!410867 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340))))) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725126 c!411024) b!2559328))

(assert (= (and d!725126 (not c!411024)) b!2559335))

(assert (= (and b!2559335 c!411026) b!2559337))

(assert (= (and b!2559335 (not c!411026)) b!2559329))

(assert (= (and b!2559329 c!411027) b!2559332))

(assert (= (and b!2559329 (not c!411027)) b!2559336))

(assert (= (and b!2559336 c!411023) b!2559331))

(assert (= (and b!2559336 (not c!411023)) b!2559330))

(assert (= (and b!2559330 c!411025) b!2559334))

(assert (= (and b!2559330 (not c!411025)) b!2559333))

(assert (= (or b!2559334 b!2559333) bm!163761))

(assert (= (or b!2559331 bm!163761) bm!163759))

(assert (= (or b!2559332 bm!163759) bm!163762))

(assert (= (or b!2559332 b!2559334) bm!163760))

(declare-fun m!2900013 () Bool)

(assert (=> bm!163760 m!2900013))

(declare-fun m!2900015 () Bool)

(assert (=> b!2559330 m!2900015))

(declare-fun m!2900017 () Bool)

(assert (=> d!725126 m!2900017))

(declare-fun m!2900019 () Bool)

(assert (=> d!725126 m!2900019))

(declare-fun m!2900021 () Bool)

(assert (=> bm!163762 m!2900021))

(assert (=> bm!163638 d!725126))

(assert (=> d!724920 d!725090))

(assert (=> d!724920 d!725038))

(declare-fun b!2559338 () Bool)

(declare-fun e!1616447 () Bool)

(declare-fun lt!904553 () Bool)

(declare-fun call!163768 () Bool)

(assert (=> b!2559338 (= e!1616447 (= lt!904553 call!163768))))

(declare-fun b!2559339 () Bool)

(declare-fun res!1077650 () Bool)

(declare-fun e!1616442 () Bool)

(assert (=> b!2559339 (=> res!1077650 e!1616442)))

(assert (=> b!2559339 (= res!1077650 (not (isEmpty!17034 (tail!4095 (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412)))))))))

(declare-fun b!2559340 () Bool)

(assert (=> b!2559340 (= e!1616442 (not (= (head!5820 (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412)))) (c!410685 (derivativeStep!2182 (regOne!15738 r!27340) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412))))))))))

(declare-fun bm!163763 () Bool)

(assert (=> bm!163763 (= call!163768 (isEmpty!17034 (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412)))))))

(declare-fun b!2559341 () Bool)

(declare-fun res!1077651 () Bool)

(declare-fun e!1616448 () Bool)

(assert (=> b!2559341 (=> res!1077651 e!1616448)))

(declare-fun e!1616443 () Bool)

(assert (=> b!2559341 (= res!1077651 e!1616443)))

(declare-fun res!1077647 () Bool)

(assert (=> b!2559341 (=> (not res!1077647) (not e!1616443))))

(assert (=> b!2559341 (= res!1077647 lt!904553)))

(declare-fun d!725130 () Bool)

(assert (=> d!725130 e!1616447))

(declare-fun c!411028 () Bool)

(assert (=> d!725130 (= c!411028 ((_ is EmptyExpr!7613) (derivativeStep!2182 (regOne!15738 r!27340) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412))))))))

(declare-fun e!1616444 () Bool)

(assert (=> d!725130 (= lt!904553 e!1616444)))

(declare-fun c!411030 () Bool)

(assert (=> d!725130 (= c!411030 (isEmpty!17034 (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412)))))))

(assert (=> d!725130 (validRegex!3239 (derivativeStep!2182 (regOne!15738 r!27340) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412)))))))

(assert (=> d!725130 (= (matchR!3558 (derivativeStep!2182 (regOne!15738 r!27340) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412)))) (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412)))) lt!904553)))

(declare-fun b!2559342 () Bool)

(assert (=> b!2559342 (= e!1616444 (matchR!3558 (derivativeStep!2182 (derivativeStep!2182 (regOne!15738 r!27340) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412)))) (head!5820 (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412))))) (tail!4095 (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412))))))))

(declare-fun b!2559343 () Bool)

(declare-fun res!1077646 () Bool)

(assert (=> b!2559343 (=> res!1077646 e!1616448)))

(assert (=> b!2559343 (= res!1077646 (not ((_ is ElementMatch!7613) (derivativeStep!2182 (regOne!15738 r!27340) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412)))))))))

(declare-fun e!1616446 () Bool)

(assert (=> b!2559343 (= e!1616446 e!1616448)))

(declare-fun b!2559344 () Bool)

(assert (=> b!2559344 (= e!1616447 e!1616446)))

(declare-fun c!411029 () Bool)

(assert (=> b!2559344 (= c!411029 ((_ is EmptyLang!7613) (derivativeStep!2182 (regOne!15738 r!27340) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412))))))))

(declare-fun b!2559345 () Bool)

(declare-fun e!1616445 () Bool)

(assert (=> b!2559345 (= e!1616448 e!1616445)))

(declare-fun res!1077653 () Bool)

(assert (=> b!2559345 (=> (not res!1077653) (not e!1616445))))

(assert (=> b!2559345 (= res!1077653 (not lt!904553))))

(declare-fun b!2559346 () Bool)

(declare-fun res!1077652 () Bool)

(assert (=> b!2559346 (=> (not res!1077652) (not e!1616443))))

(assert (=> b!2559346 (= res!1077652 (isEmpty!17034 (tail!4095 (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412))))))))

(declare-fun b!2559347 () Bool)

(declare-fun res!1077649 () Bool)

(assert (=> b!2559347 (=> (not res!1077649) (not e!1616443))))

(assert (=> b!2559347 (= res!1077649 (not call!163768))))

(declare-fun b!2559348 () Bool)

(assert (=> b!2559348 (= e!1616446 (not lt!904553))))

(declare-fun b!2559349 () Bool)

(assert (=> b!2559349 (= e!1616445 e!1616442)))

(declare-fun res!1077648 () Bool)

(assert (=> b!2559349 (=> res!1077648 e!1616442)))

(assert (=> b!2559349 (= res!1077648 call!163768)))

(declare-fun b!2559350 () Bool)

(assert (=> b!2559350 (= e!1616443 (= (head!5820 (tail!4095 (Cons!29578 c!14016 (_1!17336 lt!904412)))) (c!410685 (derivativeStep!2182 (regOne!15738 r!27340) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412)))))))))

(declare-fun b!2559351 () Bool)

(assert (=> b!2559351 (= e!1616444 (nullable!2530 (derivativeStep!2182 (regOne!15738 r!27340) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412))))))))

(assert (= (and d!725130 c!411030) b!2559351))

(assert (= (and d!725130 (not c!411030)) b!2559342))

(assert (= (and d!725130 c!411028) b!2559338))

(assert (= (and d!725130 (not c!411028)) b!2559344))

(assert (= (and b!2559344 c!411029) b!2559348))

(assert (= (and b!2559344 (not c!411029)) b!2559343))

(assert (= (and b!2559343 (not res!1077646)) b!2559341))

(assert (= (and b!2559341 res!1077647) b!2559347))

(assert (= (and b!2559347 res!1077649) b!2559346))

(assert (= (and b!2559346 res!1077652) b!2559350))

(assert (= (and b!2559341 (not res!1077651)) b!2559345))

(assert (= (and b!2559345 res!1077653) b!2559349))

(assert (= (and b!2559349 (not res!1077648)) b!2559339))

(assert (= (and b!2559339 (not res!1077650)) b!2559340))

(assert (= (or b!2559338 b!2559347 b!2559349) bm!163763))

(assert (=> bm!163763 m!2899211))

(assert (=> bm!163763 m!2899213))

(assert (=> d!725130 m!2899211))

(assert (=> d!725130 m!2899213))

(assert (=> d!725130 m!2899217))

(declare-fun m!2900023 () Bool)

(assert (=> d!725130 m!2900023))

(assert (=> b!2559346 m!2899211))

(declare-fun m!2900025 () Bool)

(assert (=> b!2559346 m!2900025))

(assert (=> b!2559346 m!2900025))

(declare-fun m!2900027 () Bool)

(assert (=> b!2559346 m!2900027))

(assert (=> b!2559342 m!2899211))

(declare-fun m!2900029 () Bool)

(assert (=> b!2559342 m!2900029))

(assert (=> b!2559342 m!2899217))

(assert (=> b!2559342 m!2900029))

(declare-fun m!2900031 () Bool)

(assert (=> b!2559342 m!2900031))

(assert (=> b!2559342 m!2899211))

(assert (=> b!2559342 m!2900025))

(assert (=> b!2559342 m!2900031))

(assert (=> b!2559342 m!2900025))

(declare-fun m!2900033 () Bool)

(assert (=> b!2559342 m!2900033))

(assert (=> b!2559351 m!2899217))

(declare-fun m!2900035 () Bool)

(assert (=> b!2559351 m!2900035))

(assert (=> b!2559339 m!2899211))

(assert (=> b!2559339 m!2900025))

(assert (=> b!2559339 m!2900025))

(assert (=> b!2559339 m!2900027))

(assert (=> b!2559350 m!2899211))

(assert (=> b!2559350 m!2900029))

(assert (=> b!2559340 m!2899211))

(assert (=> b!2559340 m!2900029))

(assert (=> b!2558283 d!725130))

(declare-fun bm!163764 () Bool)

(declare-fun call!163771 () Regex!7613)

(declare-fun call!163772 () Regex!7613)

(assert (=> bm!163764 (= call!163771 call!163772)))

(declare-fun b!2559354 () Bool)

(declare-fun e!1616451 () Regex!7613)

(assert (=> b!2559354 (= e!1616451 EmptyLang!7613)))

(declare-fun b!2559355 () Bool)

(declare-fun c!411035 () Bool)

(assert (=> b!2559355 (= c!411035 ((_ is Union!7613) (regOne!15738 r!27340)))))

(declare-fun e!1616453 () Regex!7613)

(declare-fun e!1616455 () Regex!7613)

(assert (=> b!2559355 (= e!1616453 e!1616455)))

(declare-fun call!163769 () Regex!7613)

(declare-fun bm!163765 () Bool)

(assert (=> bm!163765 (= call!163769 (derivativeStep!2182 (ite c!411035 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412)))))))

(declare-fun b!2559356 () Bool)

(declare-fun c!411033 () Bool)

(assert (=> b!2559356 (= c!411033 (nullable!2530 (regOne!15738 (regOne!15738 r!27340))))))

(declare-fun e!1616454 () Regex!7613)

(declare-fun e!1616452 () Regex!7613)

(assert (=> b!2559356 (= e!1616454 e!1616452)))

(declare-fun b!2559357 () Bool)

(assert (=> b!2559357 (= e!1616454 (Concat!12309 call!163771 (regOne!15738 r!27340)))))

(declare-fun bm!163766 () Bool)

(declare-fun call!163770 () Regex!7613)

(assert (=> bm!163766 (= call!163770 call!163771)))

(declare-fun d!725132 () Bool)

(declare-fun lt!904554 () Regex!7613)

(assert (=> d!725132 (validRegex!3239 lt!904554)))

(assert (=> d!725132 (= lt!904554 e!1616451)))

(declare-fun c!411032 () Bool)

(assert (=> d!725132 (= c!411032 (or ((_ is EmptyExpr!7613) (regOne!15738 r!27340)) ((_ is EmptyLang!7613) (regOne!15738 r!27340))))))

(assert (=> d!725132 (validRegex!3239 (regOne!15738 r!27340))))

(assert (=> d!725132 (= (derivativeStep!2182 (regOne!15738 r!27340) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412)))) lt!904554)))

(declare-fun b!2559358 () Bool)

(assert (=> b!2559358 (= e!1616455 (Union!7613 call!163769 call!163772))))

(declare-fun b!2559359 () Bool)

(assert (=> b!2559359 (= e!1616452 (Union!7613 (Concat!12309 call!163770 (regTwo!15738 (regOne!15738 r!27340))) EmptyLang!7613))))

(declare-fun b!2559360 () Bool)

(assert (=> b!2559360 (= e!1616452 (Union!7613 (Concat!12309 call!163770 (regTwo!15738 (regOne!15738 r!27340))) call!163769))))

(declare-fun b!2559361 () Bool)

(assert (=> b!2559361 (= e!1616451 e!1616453)))

(declare-fun c!411034 () Bool)

(assert (=> b!2559361 (= c!411034 ((_ is ElementMatch!7613) (regOne!15738 r!27340)))))

(declare-fun b!2559362 () Bool)

(assert (=> b!2559362 (= e!1616455 e!1616454)))

(declare-fun c!411031 () Bool)

(assert (=> b!2559362 (= c!411031 ((_ is Star!7613) (regOne!15738 r!27340)))))

(declare-fun bm!163767 () Bool)

(assert (=> bm!163767 (= call!163772 (derivativeStep!2182 (ite c!411035 (regTwo!15739 (regOne!15738 r!27340)) (ite c!411031 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))) (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412)))))))

(declare-fun b!2559363 () Bool)

(assert (=> b!2559363 (= e!1616453 (ite (= (head!5820 (Cons!29578 c!14016 (_1!17336 lt!904412))) (c!410685 (regOne!15738 r!27340))) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725132 c!411032) b!2559354))

(assert (= (and d!725132 (not c!411032)) b!2559361))

(assert (= (and b!2559361 c!411034) b!2559363))

(assert (= (and b!2559361 (not c!411034)) b!2559355))

(assert (= (and b!2559355 c!411035) b!2559358))

(assert (= (and b!2559355 (not c!411035)) b!2559362))

(assert (= (and b!2559362 c!411031) b!2559357))

(assert (= (and b!2559362 (not c!411031)) b!2559356))

(assert (= (and b!2559356 c!411033) b!2559360))

(assert (= (and b!2559356 (not c!411033)) b!2559359))

(assert (= (or b!2559360 b!2559359) bm!163766))

(assert (= (or b!2559357 bm!163766) bm!163764))

(assert (= (or b!2559358 bm!163764) bm!163767))

(assert (= (or b!2559358 b!2559360) bm!163765))

(assert (=> bm!163765 m!2899215))

(declare-fun m!2900037 () Bool)

(assert (=> bm!163765 m!2900037))

(assert (=> b!2559356 m!2899533))

(declare-fun m!2900039 () Bool)

(assert (=> d!725132 m!2900039))

(assert (=> d!725132 m!2899147))

(assert (=> bm!163767 m!2899215))

(declare-fun m!2900041 () Bool)

(assert (=> bm!163767 m!2900041))

(assert (=> b!2558283 d!725132))

(assert (=> b!2558283 d!725060))

(assert (=> b!2558283 d!725120))

(declare-fun d!725136 () Bool)

(assert (=> d!725136 (= (nullable!2530 (regOne!15738 (regOne!15738 r!27340))) (nullableFct!755 (regOne!15738 (regOne!15738 r!27340))))))

(declare-fun bs!469789 () Bool)

(assert (= bs!469789 d!725136))

(declare-fun m!2900043 () Bool)

(assert (=> bs!469789 m!2900043))

(assert (=> b!2558743 d!725136))

(declare-fun d!725138 () Bool)

(assert (=> d!725138 (= (nullable!2530 (derivative!308 lt!904421 tl!4068)) (nullableFct!755 (derivative!308 lt!904421 tl!4068)))))

(declare-fun bs!469790 () Bool)

(assert (= bs!469790 d!725138))

(assert (=> bs!469790 m!2899107))

(declare-fun m!2900045 () Bool)

(assert (=> bs!469790 m!2900045))

(assert (=> b!2558760 d!725138))

(declare-fun d!725140 () Bool)

(assert (=> d!725140 (= (head!5820 tl!4068) (h!34998 tl!4068))))

(assert (=> b!2558779 d!725140))

(declare-fun bm!163771 () Bool)

(declare-fun call!163778 () List!29678)

(declare-fun call!163776 () List!29678)

(assert (=> bm!163771 (= call!163778 call!163776)))

(declare-fun b!2559374 () Bool)

(declare-fun e!1616468 () List!29678)

(declare-fun call!163780 () List!29678)

(assert (=> b!2559374 (= e!1616468 call!163780)))

(declare-fun c!411040 () Bool)

(declare-fun bm!163772 () Bool)

(declare-fun c!411041 () Bool)

(assert (=> bm!163772 (= call!163780 (firstChars!96 (ite c!411040 (reg!7942 (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) (ite c!411041 (regTwo!15739 (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) (regOne!15738 (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))))))

(declare-fun b!2559375 () Bool)

(declare-fun e!1616466 () List!29678)

(declare-fun call!163777 () List!29678)

(assert (=> b!2559375 (= e!1616466 call!163777)))

(declare-fun b!2559376 () Bool)

(declare-fun e!1616467 () List!29678)

(assert (=> b!2559376 (= e!1616467 call!163777)))

(declare-fun b!2559377 () Bool)

(declare-fun e!1616465 () List!29678)

(declare-fun e!1616464 () List!29678)

(assert (=> b!2559377 (= e!1616465 e!1616464)))

(declare-fun c!411039 () Bool)

(assert (=> b!2559377 (= c!411039 ((_ is ElementMatch!7613) (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(declare-fun b!2559378 () Bool)

(assert (=> b!2559378 (= e!1616468 e!1616467)))

(assert (=> b!2559378 (= c!411041 ((_ is Union!7613) (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(declare-fun call!163779 () List!29678)

(declare-fun bm!163773 () Bool)

(assert (=> bm!163773 (= call!163777 (++!7270 (ite c!411041 call!163776 call!163779) (ite c!411041 call!163779 call!163778)))))

(declare-fun c!411038 () Bool)

(declare-fun bm!163774 () Bool)

(assert (=> bm!163774 (= call!163776 (firstChars!96 (ite c!411041 (regOne!15739 (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) (ite c!411038 (regTwo!15738 (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) (regOne!15738 (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))))))

(declare-fun b!2559379 () Bool)

(assert (=> b!2559379 (= c!411040 ((_ is Star!7613) (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(assert (=> b!2559379 (= e!1616464 e!1616468)))

(declare-fun b!2559380 () Bool)

(assert (=> b!2559380 (= c!411038 (nullable!2530 (regOne!15738 (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))))

(assert (=> b!2559380 (= e!1616467 e!1616466)))

(declare-fun b!2559381 () Bool)

(assert (=> b!2559381 (= e!1616466 call!163778)))

(declare-fun bm!163775 () Bool)

(assert (=> bm!163775 (= call!163779 call!163780)))

(declare-fun c!411042 () Bool)

(declare-fun d!725142 () Bool)

(assert (=> d!725142 (= c!411042 (or ((_ is EmptyExpr!7613) (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) ((_ is EmptyLang!7613) (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))))

(assert (=> d!725142 (= (firstChars!96 (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) e!1616465)))

(declare-fun b!2559382 () Bool)

(assert (=> b!2559382 (= e!1616464 (Cons!29578 (c!410685 (ite c!410849 (reg!7942 (regOne!15738 r!27340)) (ite c!410850 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) Nil!29578))))

(declare-fun b!2559383 () Bool)

(assert (=> b!2559383 (= e!1616465 Nil!29578)))

(assert (= (and d!725142 c!411042) b!2559383))

(assert (= (and d!725142 (not c!411042)) b!2559377))

(assert (= (and b!2559377 c!411039) b!2559382))

(assert (= (and b!2559377 (not c!411039)) b!2559379))

(assert (= (and b!2559379 c!411040) b!2559374))

(assert (= (and b!2559379 (not c!411040)) b!2559378))

(assert (= (and b!2559378 c!411041) b!2559376))

(assert (= (and b!2559378 (not c!411041)) b!2559380))

(assert (= (and b!2559380 c!411038) b!2559375))

(assert (= (and b!2559380 (not c!411038)) b!2559381))

(assert (= (or b!2559375 b!2559381) bm!163771))

(assert (= (or b!2559376 bm!163771) bm!163774))

(assert (= (or b!2559376 b!2559375) bm!163775))

(assert (= (or b!2559376 b!2559375) bm!163773))

(assert (= (or b!2559374 bm!163775) bm!163772))

(declare-fun m!2900055 () Bool)

(assert (=> bm!163772 m!2900055))

(declare-fun m!2900057 () Bool)

(assert (=> bm!163773 m!2900057))

(declare-fun m!2900065 () Bool)

(assert (=> bm!163774 m!2900065))

(declare-fun m!2900069 () Bool)

(assert (=> b!2559380 m!2900069))

(assert (=> bm!163630 d!725142))

(assert (=> b!2558245 d!725140))

(assert (=> d!724936 d!725106))

(declare-fun b!2559403 () Bool)

(declare-fun e!1616486 () Bool)

(declare-fun lt!904556 () Bool)

(declare-fun call!163788 () Bool)

(assert (=> b!2559403 (= e!1616486 (= lt!904556 call!163788))))

(declare-fun b!2559404 () Bool)

(declare-fun res!1077671 () Bool)

(declare-fun e!1616481 () Bool)

(assert (=> b!2559404 (=> res!1077671 e!1616481)))

(assert (=> b!2559404 (= res!1077671 (not (isEmpty!17034 (tail!4095 Nil!29578))))))

(declare-fun b!2559405 () Bool)

(assert (=> b!2559405 (= e!1616481 (not (= (head!5820 Nil!29578) (c!410685 lt!904422))))))

(declare-fun bm!163783 () Bool)

(assert (=> bm!163783 (= call!163788 (isEmpty!17034 Nil!29578))))

(declare-fun b!2559406 () Bool)

(declare-fun res!1077672 () Bool)

(declare-fun e!1616487 () Bool)

(assert (=> b!2559406 (=> res!1077672 e!1616487)))

(declare-fun e!1616482 () Bool)

(assert (=> b!2559406 (= res!1077672 e!1616482)))

(declare-fun res!1077668 () Bool)

(assert (=> b!2559406 (=> (not res!1077668) (not e!1616482))))

(assert (=> b!2559406 (= res!1077668 lt!904556)))

(declare-fun d!725148 () Bool)

(assert (=> d!725148 e!1616486))

(declare-fun c!411050 () Bool)

(assert (=> d!725148 (= c!411050 ((_ is EmptyExpr!7613) lt!904422))))

(declare-fun e!1616483 () Bool)

(assert (=> d!725148 (= lt!904556 e!1616483)))

(declare-fun c!411052 () Bool)

(assert (=> d!725148 (= c!411052 (isEmpty!17034 Nil!29578))))

(assert (=> d!725148 (validRegex!3239 lt!904422)))

(assert (=> d!725148 (= (matchR!3558 lt!904422 Nil!29578) lt!904556)))

(declare-fun b!2559407 () Bool)

(assert (=> b!2559407 (= e!1616483 (matchR!3558 (derivativeStep!2182 lt!904422 (head!5820 Nil!29578)) (tail!4095 Nil!29578)))))

(declare-fun b!2559408 () Bool)

(declare-fun res!1077667 () Bool)

(assert (=> b!2559408 (=> res!1077667 e!1616487)))

(assert (=> b!2559408 (= res!1077667 (not ((_ is ElementMatch!7613) lt!904422)))))

(declare-fun e!1616485 () Bool)

(assert (=> b!2559408 (= e!1616485 e!1616487)))

(declare-fun b!2559409 () Bool)

(assert (=> b!2559409 (= e!1616486 e!1616485)))

(declare-fun c!411051 () Bool)

(assert (=> b!2559409 (= c!411051 ((_ is EmptyLang!7613) lt!904422))))

(declare-fun b!2559410 () Bool)

(declare-fun e!1616484 () Bool)

(assert (=> b!2559410 (= e!1616487 e!1616484)))

(declare-fun res!1077674 () Bool)

(assert (=> b!2559410 (=> (not res!1077674) (not e!1616484))))

(assert (=> b!2559410 (= res!1077674 (not lt!904556))))

(declare-fun b!2559411 () Bool)

(declare-fun res!1077673 () Bool)

(assert (=> b!2559411 (=> (not res!1077673) (not e!1616482))))

(assert (=> b!2559411 (= res!1077673 (isEmpty!17034 (tail!4095 Nil!29578)))))

(declare-fun b!2559412 () Bool)

(declare-fun res!1077670 () Bool)

(assert (=> b!2559412 (=> (not res!1077670) (not e!1616482))))

(assert (=> b!2559412 (= res!1077670 (not call!163788))))

(declare-fun b!2559413 () Bool)

(assert (=> b!2559413 (= e!1616485 (not lt!904556))))

(declare-fun b!2559414 () Bool)

(assert (=> b!2559414 (= e!1616484 e!1616481)))

(declare-fun res!1077669 () Bool)

(assert (=> b!2559414 (=> res!1077669 e!1616481)))

(assert (=> b!2559414 (= res!1077669 call!163788)))

(declare-fun b!2559415 () Bool)

(assert (=> b!2559415 (= e!1616482 (= (head!5820 Nil!29578) (c!410685 lt!904422)))))

(declare-fun b!2559416 () Bool)

(assert (=> b!2559416 (= e!1616483 (nullable!2530 lt!904422))))

(assert (= (and d!725148 c!411052) b!2559416))

(assert (= (and d!725148 (not c!411052)) b!2559407))

(assert (= (and d!725148 c!411050) b!2559403))

(assert (= (and d!725148 (not c!411050)) b!2559409))

(assert (= (and b!2559409 c!411051) b!2559413))

(assert (= (and b!2559409 (not c!411051)) b!2559408))

(assert (= (and b!2559408 (not res!1077667)) b!2559406))

(assert (= (and b!2559406 res!1077668) b!2559412))

(assert (= (and b!2559412 res!1077670) b!2559411))

(assert (= (and b!2559411 res!1077673) b!2559415))

(assert (= (and b!2559406 (not res!1077672)) b!2559410))

(assert (= (and b!2559410 res!1077674) b!2559414))

(assert (= (and b!2559414 (not res!1077669)) b!2559404))

(assert (= (and b!2559404 (not res!1077671)) b!2559405))

(assert (= (or b!2559403 b!2559412 b!2559414) bm!163783))

(assert (=> bm!163783 m!2899359))

(assert (=> d!725148 m!2899359))

(assert (=> d!725148 m!2899195))

(assert (=> b!2559411 m!2899363))

(assert (=> b!2559411 m!2899363))

(assert (=> b!2559411 m!2899365))

(assert (=> b!2559407 m!2899367))

(assert (=> b!2559407 m!2899367))

(declare-fun m!2900077 () Bool)

(assert (=> b!2559407 m!2900077))

(assert (=> b!2559407 m!2899363))

(assert (=> b!2559407 m!2900077))

(assert (=> b!2559407 m!2899363))

(declare-fun m!2900079 () Bool)

(assert (=> b!2559407 m!2900079))

(assert (=> b!2559416 m!2899207))

(assert (=> b!2559404 m!2899363))

(assert (=> b!2559404 m!2899363))

(assert (=> b!2559404 m!2899365))

(assert (=> b!2559415 m!2899367))

(assert (=> b!2559405 m!2899367))

(assert (=> d!724936 d!725148))

(assert (=> d!724936 d!725076))

(declare-fun d!725152 () Bool)

(assert (=> d!725152 (= (isEmpty!17034 (tail!4095 tl!4068)) ((_ is Nil!29578) (tail!4095 tl!4068)))))

(assert (=> b!2558241 d!725152))

(declare-fun d!725154 () Bool)

(assert (=> d!725154 (= (tail!4095 tl!4068) (t!211377 tl!4068))))

(assert (=> b!2558241 d!725154))

(declare-fun bm!163787 () Bool)

(declare-fun c!411056 () Bool)

(declare-fun call!163792 () Bool)

(assert (=> bm!163787 (= call!163792 (validRegex!3239 (ite c!411056 (regTwo!15739 (ite c!410784 (reg!7942 (regOne!15738 r!27340)) (ite c!410785 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))) (regOne!15738 (ite c!410784 (reg!7942 (regOne!15738 r!27340)) (ite c!410785 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))))))))

(declare-fun b!2559426 () Bool)

(declare-fun e!1616495 () Bool)

(declare-fun e!1616498 () Bool)

(assert (=> b!2559426 (= e!1616495 e!1616498)))

(declare-fun c!411055 () Bool)

(assert (=> b!2559426 (= c!411055 ((_ is Star!7613) (ite c!410784 (reg!7942 (regOne!15738 r!27340)) (ite c!410785 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))))))

(declare-fun b!2559427 () Bool)

(declare-fun e!1616497 () Bool)

(declare-fun call!163793 () Bool)

(assert (=> b!2559427 (= e!1616497 call!163793)))

(declare-fun b!2559428 () Bool)

(declare-fun res!1077683 () Bool)

(declare-fun e!1616500 () Bool)

(assert (=> b!2559428 (=> (not res!1077683) (not e!1616500))))

(assert (=> b!2559428 (= res!1077683 call!163793)))

(declare-fun e!1616496 () Bool)

(assert (=> b!2559428 (= e!1616496 e!1616500)))

(declare-fun b!2559429 () Bool)

(assert (=> b!2559429 (= e!1616498 e!1616496)))

(assert (=> b!2559429 (= c!411056 ((_ is Union!7613) (ite c!410784 (reg!7942 (regOne!15738 r!27340)) (ite c!410785 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))))))

(declare-fun b!2559430 () Bool)

(declare-fun e!1616501 () Bool)

(assert (=> b!2559430 (= e!1616501 e!1616497)))

(declare-fun res!1077684 () Bool)

(assert (=> b!2559430 (=> (not res!1077684) (not e!1616497))))

(assert (=> b!2559430 (= res!1077684 call!163792)))

(declare-fun b!2559431 () Bool)

(declare-fun res!1077681 () Bool)

(assert (=> b!2559431 (=> res!1077681 e!1616501)))

(assert (=> b!2559431 (= res!1077681 (not ((_ is Concat!12309) (ite c!410784 (reg!7942 (regOne!15738 r!27340)) (ite c!410785 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340)))))))))

(assert (=> b!2559431 (= e!1616496 e!1616501)))

(declare-fun b!2559432 () Bool)

(declare-fun e!1616499 () Bool)

(declare-fun call!163794 () Bool)

(assert (=> b!2559432 (= e!1616499 call!163794)))

(declare-fun b!2559433 () Bool)

(assert (=> b!2559433 (= e!1616500 call!163792)))

(declare-fun bm!163788 () Bool)

(assert (=> bm!163788 (= call!163794 (validRegex!3239 (ite c!411055 (reg!7942 (ite c!410784 (reg!7942 (regOne!15738 r!27340)) (ite c!410785 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))) (ite c!411056 (regOne!15739 (ite c!410784 (reg!7942 (regOne!15738 r!27340)) (ite c!410785 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))) (regTwo!15738 (ite c!410784 (reg!7942 (regOne!15738 r!27340)) (ite c!410785 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340)))))))))))

(declare-fun d!725156 () Bool)

(declare-fun res!1077682 () Bool)

(assert (=> d!725156 (=> res!1077682 e!1616495)))

(assert (=> d!725156 (= res!1077682 ((_ is ElementMatch!7613) (ite c!410784 (reg!7942 (regOne!15738 r!27340)) (ite c!410785 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))))))

(assert (=> d!725156 (= (validRegex!3239 (ite c!410784 (reg!7942 (regOne!15738 r!27340)) (ite c!410785 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))) e!1616495)))

(declare-fun bm!163789 () Bool)

(assert (=> bm!163789 (= call!163793 call!163794)))

(declare-fun b!2559434 () Bool)

(assert (=> b!2559434 (= e!1616498 e!1616499)))

(declare-fun res!1077680 () Bool)

(assert (=> b!2559434 (= res!1077680 (not (nullable!2530 (reg!7942 (ite c!410784 (reg!7942 (regOne!15738 r!27340)) (ite c!410785 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))))))))

(assert (=> b!2559434 (=> (not res!1077680) (not e!1616499))))

(assert (= (and d!725156 (not res!1077682)) b!2559426))

(assert (= (and b!2559426 c!411055) b!2559434))

(assert (= (and b!2559426 (not c!411055)) b!2559429))

(assert (= (and b!2559434 res!1077680) b!2559432))

(assert (= (and b!2559429 c!411056) b!2559428))

(assert (= (and b!2559429 (not c!411056)) b!2559431))

(assert (= (and b!2559428 res!1077683) b!2559433))

(assert (= (and b!2559431 (not res!1077681)) b!2559430))

(assert (= (and b!2559430 res!1077684) b!2559427))

(assert (= (or b!2559428 b!2559427) bm!163789))

(assert (= (or b!2559433 b!2559430) bm!163787))

(assert (= (or b!2559432 bm!163789) bm!163788))

(declare-fun m!2900095 () Bool)

(assert (=> bm!163787 m!2900095))

(declare-fun m!2900097 () Bool)

(assert (=> bm!163788 m!2900097))

(declare-fun m!2900099 () Bool)

(assert (=> b!2559434 m!2900099))

(assert (=> bm!163584 d!725156))

(assert (=> b!2558267 d!725074))

(declare-fun bm!163790 () Bool)

(declare-fun call!163797 () Regex!7613)

(declare-fun call!163798 () Regex!7613)

(assert (=> bm!163790 (= call!163797 call!163798)))

(declare-fun b!2559439 () Bool)

(declare-fun e!1616504 () Regex!7613)

(assert (=> b!2559439 (= e!1616504 EmptyLang!7613)))

(declare-fun b!2559440 () Bool)

(declare-fun c!411062 () Bool)

(assert (=> b!2559440 (= c!411062 ((_ is Union!7613) (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340))))))

(declare-fun e!1616506 () Regex!7613)

(declare-fun e!1616508 () Regex!7613)

(assert (=> b!2559440 (= e!1616506 e!1616508)))

(declare-fun call!163795 () Regex!7613)

(declare-fun bm!163791 () Bool)

(assert (=> bm!163791 (= call!163795 (derivativeStep!2182 (ite c!411062 (regOne!15739 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340))) (regTwo!15738 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340)))) c!14016))))

(declare-fun b!2559441 () Bool)

(declare-fun c!411060 () Bool)

(assert (=> b!2559441 (= c!411060 (nullable!2530 (regOne!15738 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340)))))))

(declare-fun e!1616507 () Regex!7613)

(declare-fun e!1616505 () Regex!7613)

(assert (=> b!2559441 (= e!1616507 e!1616505)))

(declare-fun b!2559442 () Bool)

(assert (=> b!2559442 (= e!1616507 (Concat!12309 call!163797 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340))))))

(declare-fun bm!163792 () Bool)

(declare-fun call!163796 () Regex!7613)

(assert (=> bm!163792 (= call!163796 call!163797)))

(declare-fun d!725162 () Bool)

(declare-fun lt!904558 () Regex!7613)

(assert (=> d!725162 (validRegex!3239 lt!904558)))

(assert (=> d!725162 (= lt!904558 e!1616504)))

(declare-fun c!411059 () Bool)

(assert (=> d!725162 (= c!411059 (or ((_ is EmptyExpr!7613) (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340))) ((_ is EmptyLang!7613) (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340)))))))

(assert (=> d!725162 (validRegex!3239 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340)))))

(assert (=> d!725162 (= (derivativeStep!2182 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340)) c!14016) lt!904558)))

(declare-fun b!2559443 () Bool)

(assert (=> b!2559443 (= e!1616508 (Union!7613 call!163795 call!163798))))

(declare-fun b!2559444 () Bool)

(assert (=> b!2559444 (= e!1616505 (Union!7613 (Concat!12309 call!163796 (regTwo!15738 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340)))) EmptyLang!7613))))

(declare-fun b!2559445 () Bool)

(assert (=> b!2559445 (= e!1616505 (Union!7613 (Concat!12309 call!163796 (regTwo!15738 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340)))) call!163795))))

(declare-fun b!2559446 () Bool)

(assert (=> b!2559446 (= e!1616504 e!1616506)))

(declare-fun c!411061 () Bool)

(assert (=> b!2559446 (= c!411061 ((_ is ElementMatch!7613) (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340))))))

(declare-fun b!2559447 () Bool)

(assert (=> b!2559447 (= e!1616508 e!1616507)))

(declare-fun c!411058 () Bool)

(assert (=> b!2559447 (= c!411058 ((_ is Star!7613) (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340))))))

(declare-fun bm!163793 () Bool)

(assert (=> bm!163793 (= call!163798 (derivativeStep!2182 (ite c!411062 (regTwo!15739 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340))) (ite c!411058 (reg!7942 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340))) (regOne!15738 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340))))) c!14016))))

(declare-fun b!2559448 () Bool)

(assert (=> b!2559448 (= e!1616506 (ite (= c!14016 (c!410685 (ite c!410759 (regOne!15739 r!27340) (regTwo!15738 r!27340)))) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725162 c!411059) b!2559439))

(assert (= (and d!725162 (not c!411059)) b!2559446))

(assert (= (and b!2559446 c!411061) b!2559448))

(assert (= (and b!2559446 (not c!411061)) b!2559440))

(assert (= (and b!2559440 c!411062) b!2559443))

(assert (= (and b!2559440 (not c!411062)) b!2559447))

(assert (= (and b!2559447 c!411058) b!2559442))

(assert (= (and b!2559447 (not c!411058)) b!2559441))

(assert (= (and b!2559441 c!411060) b!2559445))

(assert (= (and b!2559441 (not c!411060)) b!2559444))

(assert (= (or b!2559445 b!2559444) bm!163792))

(assert (= (or b!2559442 bm!163792) bm!163790))

(assert (= (or b!2559443 bm!163790) bm!163793))

(assert (= (or b!2559443 b!2559445) bm!163791))

(declare-fun m!2900115 () Bool)

(assert (=> bm!163791 m!2900115))

(declare-fun m!2900117 () Bool)

(assert (=> b!2559441 m!2900117))

(declare-fun m!2900119 () Bool)

(assert (=> d!725162 m!2900119))

(declare-fun m!2900121 () Bool)

(assert (=> d!725162 m!2900121))

(declare-fun m!2900123 () Bool)

(assert (=> bm!163793 m!2900123))

(assert (=> bm!163560 d!725162))

(declare-fun d!725170 () Bool)

(declare-fun c!411067 () Bool)

(assert (=> d!725170 (= c!411067 ((_ is Nil!29578) (firstChars!96 r!27340)))))

(declare-fun e!1616515 () (InoxSet C!15384))

(assert (=> d!725170 (= (content!4076 (firstChars!96 r!27340)) e!1616515)))

(declare-fun b!2559461 () Bool)

(assert (=> b!2559461 (= e!1616515 ((as const (Array C!15384 Bool)) false))))

(declare-fun b!2559462 () Bool)

(assert (=> b!2559462 (= e!1616515 ((_ map or) (store ((as const (Array C!15384 Bool)) false) (h!34998 (firstChars!96 r!27340)) true) (content!4076 (t!211377 (firstChars!96 r!27340)))))))

(assert (= (and d!725170 c!411067) b!2559461))

(assert (= (and d!725170 (not c!411067)) b!2559462))

(declare-fun m!2900139 () Bool)

(assert (=> b!2559462 m!2900139))

(declare-fun m!2900141 () Bool)

(assert (=> b!2559462 m!2900141))

(assert (=> d!724908 d!725170))

(assert (=> b!2558775 d!725152))

(assert (=> b!2558775 d!725154))

(declare-fun b!2559463 () Bool)

(declare-fun e!1616521 () Bool)

(declare-fun lt!904561 () Bool)

(declare-fun call!163799 () Bool)

(assert (=> b!2559463 (= e!1616521 (= lt!904561 call!163799))))

(declare-fun b!2559464 () Bool)

(declare-fun res!1077695 () Bool)

(declare-fun e!1616516 () Bool)

(assert (=> b!2559464 (=> res!1077695 e!1616516)))

(assert (=> b!2559464 (= res!1077695 (not (isEmpty!17034 (tail!4095 (_1!17336 (get!9299 lt!904517))))))))

(declare-fun b!2559465 () Bool)

(assert (=> b!2559465 (= e!1616516 (not (= (head!5820 (_1!17336 (get!9299 lt!904517))) (c!410685 lt!904422))))))

(declare-fun bm!163794 () Bool)

(assert (=> bm!163794 (= call!163799 (isEmpty!17034 (_1!17336 (get!9299 lt!904517))))))

(declare-fun b!2559466 () Bool)

(declare-fun res!1077696 () Bool)

(declare-fun e!1616522 () Bool)

(assert (=> b!2559466 (=> res!1077696 e!1616522)))

(declare-fun e!1616517 () Bool)

(assert (=> b!2559466 (= res!1077696 e!1616517)))

(declare-fun res!1077692 () Bool)

(assert (=> b!2559466 (=> (not res!1077692) (not e!1616517))))

(assert (=> b!2559466 (= res!1077692 lt!904561)))

(declare-fun d!725174 () Bool)

(assert (=> d!725174 e!1616521))

(declare-fun c!411068 () Bool)

(assert (=> d!725174 (= c!411068 ((_ is EmptyExpr!7613) lt!904422))))

(declare-fun e!1616518 () Bool)

(assert (=> d!725174 (= lt!904561 e!1616518)))

(declare-fun c!411070 () Bool)

(assert (=> d!725174 (= c!411070 (isEmpty!17034 (_1!17336 (get!9299 lt!904517))))))

(assert (=> d!725174 (validRegex!3239 lt!904422)))

(assert (=> d!725174 (= (matchR!3558 lt!904422 (_1!17336 (get!9299 lt!904517))) lt!904561)))

(declare-fun b!2559467 () Bool)

(assert (=> b!2559467 (= e!1616518 (matchR!3558 (derivativeStep!2182 lt!904422 (head!5820 (_1!17336 (get!9299 lt!904517)))) (tail!4095 (_1!17336 (get!9299 lt!904517)))))))

(declare-fun b!2559468 () Bool)

(declare-fun res!1077691 () Bool)

(assert (=> b!2559468 (=> res!1077691 e!1616522)))

(assert (=> b!2559468 (= res!1077691 (not ((_ is ElementMatch!7613) lt!904422)))))

(declare-fun e!1616520 () Bool)

(assert (=> b!2559468 (= e!1616520 e!1616522)))

(declare-fun b!2559469 () Bool)

(assert (=> b!2559469 (= e!1616521 e!1616520)))

(declare-fun c!411069 () Bool)

(assert (=> b!2559469 (= c!411069 ((_ is EmptyLang!7613) lt!904422))))

(declare-fun b!2559470 () Bool)

(declare-fun e!1616519 () Bool)

(assert (=> b!2559470 (= e!1616522 e!1616519)))

(declare-fun res!1077698 () Bool)

(assert (=> b!2559470 (=> (not res!1077698) (not e!1616519))))

(assert (=> b!2559470 (= res!1077698 (not lt!904561))))

(declare-fun b!2559471 () Bool)

(declare-fun res!1077697 () Bool)

(assert (=> b!2559471 (=> (not res!1077697) (not e!1616517))))

(assert (=> b!2559471 (= res!1077697 (isEmpty!17034 (tail!4095 (_1!17336 (get!9299 lt!904517)))))))

(declare-fun b!2559472 () Bool)

(declare-fun res!1077694 () Bool)

(assert (=> b!2559472 (=> (not res!1077694) (not e!1616517))))

(assert (=> b!2559472 (= res!1077694 (not call!163799))))

(declare-fun b!2559473 () Bool)

(assert (=> b!2559473 (= e!1616520 (not lt!904561))))

(declare-fun b!2559474 () Bool)

(assert (=> b!2559474 (= e!1616519 e!1616516)))

(declare-fun res!1077693 () Bool)

(assert (=> b!2559474 (=> res!1077693 e!1616516)))

(assert (=> b!2559474 (= res!1077693 call!163799)))

(declare-fun b!2559475 () Bool)

(assert (=> b!2559475 (= e!1616517 (= (head!5820 (_1!17336 (get!9299 lt!904517))) (c!410685 lt!904422)))))

(declare-fun b!2559476 () Bool)

(assert (=> b!2559476 (= e!1616518 (nullable!2530 lt!904422))))

(assert (= (and d!725174 c!411070) b!2559476))

(assert (= (and d!725174 (not c!411070)) b!2559467))

(assert (= (and d!725174 c!411068) b!2559463))

(assert (= (and d!725174 (not c!411068)) b!2559469))

(assert (= (and b!2559469 c!411069) b!2559473))

(assert (= (and b!2559469 (not c!411069)) b!2559468))

(assert (= (and b!2559468 (not res!1077691)) b!2559466))

(assert (= (and b!2559466 res!1077692) b!2559472))

(assert (= (and b!2559472 res!1077694) b!2559471))

(assert (= (and b!2559471 res!1077697) b!2559475))

(assert (= (and b!2559466 (not res!1077696)) b!2559470))

(assert (= (and b!2559470 res!1077698) b!2559474))

(assert (= (and b!2559474 (not res!1077693)) b!2559464))

(assert (= (and b!2559464 (not res!1077695)) b!2559465))

(assert (= (or b!2559463 b!2559472 b!2559474) bm!163794))

(declare-fun m!2900143 () Bool)

(assert (=> bm!163794 m!2900143))

(assert (=> d!725174 m!2900143))

(assert (=> d!725174 m!2899195))

(declare-fun m!2900145 () Bool)

(assert (=> b!2559471 m!2900145))

(assert (=> b!2559471 m!2900145))

(declare-fun m!2900147 () Bool)

(assert (=> b!2559471 m!2900147))

(declare-fun m!2900149 () Bool)

(assert (=> b!2559467 m!2900149))

(assert (=> b!2559467 m!2900149))

(declare-fun m!2900151 () Bool)

(assert (=> b!2559467 m!2900151))

(assert (=> b!2559467 m!2900145))

(assert (=> b!2559467 m!2900151))

(assert (=> b!2559467 m!2900145))

(declare-fun m!2900153 () Bool)

(assert (=> b!2559467 m!2900153))

(assert (=> b!2559476 m!2899207))

(assert (=> b!2559464 m!2900145))

(assert (=> b!2559464 m!2900145))

(assert (=> b!2559464 m!2900147))

(assert (=> b!2559475 m!2900149))

(assert (=> b!2559465 m!2900149))

(assert (=> b!2558842 d!725174))

(declare-fun d!725176 () Bool)

(assert (=> d!725176 (= (get!9299 lt!904517) (v!31854 lt!904517))))

(assert (=> b!2558842 d!725176))

(assert (=> b!2558749 d!725004))

(declare-fun d!725178 () Bool)

(declare-fun c!411071 () Bool)

(assert (=> d!725178 (= c!411071 ((_ is Nil!29578) lt!904520))))

(declare-fun e!1616523 () (InoxSet C!15384))

(assert (=> d!725178 (= (content!4076 lt!904520) e!1616523)))

(declare-fun b!2559477 () Bool)

(assert (=> b!2559477 (= e!1616523 ((as const (Array C!15384 Bool)) false))))

(declare-fun b!2559478 () Bool)

(assert (=> b!2559478 (= e!1616523 ((_ map or) (store ((as const (Array C!15384 Bool)) false) (h!34998 lt!904520) true) (content!4076 (t!211377 lt!904520))))))

(assert (= (and d!725178 c!411071) b!2559477))

(assert (= (and d!725178 (not c!411071)) b!2559478))

(declare-fun m!2900155 () Bool)

(assert (=> b!2559478 m!2900155))

(declare-fun m!2900157 () Bool)

(assert (=> b!2559478 m!2900157))

(assert (=> d!724938 d!725178))

(declare-fun d!725180 () Bool)

(declare-fun c!411072 () Bool)

(assert (=> d!725180 (= c!411072 ((_ is Nil!29578) (_1!17336 lt!904412)))))

(declare-fun e!1616524 () (InoxSet C!15384))

(assert (=> d!725180 (= (content!4076 (_1!17336 lt!904412)) e!1616524)))

(declare-fun b!2559479 () Bool)

(assert (=> b!2559479 (= e!1616524 ((as const (Array C!15384 Bool)) false))))

(declare-fun b!2559480 () Bool)

(assert (=> b!2559480 (= e!1616524 ((_ map or) (store ((as const (Array C!15384 Bool)) false) (h!34998 (_1!17336 lt!904412)) true) (content!4076 (t!211377 (_1!17336 lt!904412)))))))

(assert (= (and d!725180 c!411072) b!2559479))

(assert (= (and d!725180 (not c!411072)) b!2559480))

(declare-fun m!2900159 () Bool)

(assert (=> b!2559480 m!2900159))

(declare-fun m!2900161 () Bool)

(assert (=> b!2559480 m!2900161))

(assert (=> d!724938 d!725180))

(declare-fun d!725182 () Bool)

(declare-fun c!411073 () Bool)

(assert (=> d!725182 (= c!411073 ((_ is Nil!29578) (_2!17336 lt!904412)))))

(declare-fun e!1616525 () (InoxSet C!15384))

(assert (=> d!725182 (= (content!4076 (_2!17336 lt!904412)) e!1616525)))

(declare-fun b!2559481 () Bool)

(assert (=> b!2559481 (= e!1616525 ((as const (Array C!15384 Bool)) false))))

(declare-fun b!2559482 () Bool)

(assert (=> b!2559482 (= e!1616525 ((_ map or) (store ((as const (Array C!15384 Bool)) false) (h!34998 (_2!17336 lt!904412)) true) (content!4076 (t!211377 (_2!17336 lt!904412)))))))

(assert (= (and d!725182 c!411073) b!2559481))

(assert (= (and d!725182 (not c!411073)) b!2559482))

(declare-fun m!2900163 () Bool)

(assert (=> b!2559482 m!2900163))

(declare-fun m!2900165 () Bool)

(assert (=> b!2559482 m!2900165))

(assert (=> d!724938 d!725182))

(assert (=> b!2558292 d!724942))

(declare-fun d!725184 () Bool)

(assert (=> d!725184 (= (isEmpty!17034 (_1!17336 lt!904412)) ((_ is Nil!29578) (_1!17336 lt!904412)))))

(assert (=> d!724822 d!725184))

(assert (=> d!724822 d!725076))

(declare-fun d!725186 () Bool)

(declare-fun c!411074 () Bool)

(assert (=> d!725186 (= c!411074 ((_ is Nil!29578) (firstChars!96 (regOne!15738 r!27340))))))

(declare-fun e!1616526 () (InoxSet C!15384))

(assert (=> d!725186 (= (content!4076 (firstChars!96 (regOne!15738 r!27340))) e!1616526)))

(declare-fun b!2559483 () Bool)

(assert (=> b!2559483 (= e!1616526 ((as const (Array C!15384 Bool)) false))))

(declare-fun b!2559484 () Bool)

(assert (=> b!2559484 (= e!1616526 ((_ map or) (store ((as const (Array C!15384 Bool)) false) (h!34998 (firstChars!96 (regOne!15738 r!27340))) true) (content!4076 (t!211377 (firstChars!96 (regOne!15738 r!27340))))))))

(assert (= (and d!725186 c!411074) b!2559483))

(assert (= (and d!725186 (not c!411074)) b!2559484))

(declare-fun m!2900171 () Bool)

(assert (=> b!2559484 m!2900171))

(assert (=> b!2559484 m!2899861))

(assert (=> d!724910 d!725186))

(declare-fun b!2559485 () Bool)

(declare-fun e!1616537 () Bool)

(declare-fun call!163800 () Bool)

(assert (=> b!2559485 (= e!1616537 call!163800)))

(declare-fun b!2559487 () Bool)

(declare-fun e!1616531 () Bool)

(declare-fun call!163801 () Bool)

(assert (=> b!2559487 (= e!1616531 call!163801)))

(declare-fun b!2559489 () Bool)

(declare-fun e!1616536 () Bool)

(declare-fun e!1616527 () Bool)

(assert (=> b!2559489 (= e!1616536 e!1616527)))

(declare-fun c!411077 () Bool)

(assert (=> b!2559489 (= c!411077 ((_ is Union!7613) (regOne!15738 r!27340)))))

(declare-fun bm!163795 () Bool)

(assert (=> bm!163795 (= call!163801 (nullable!2530 (ite c!411077 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340)))))))

(declare-fun b!2559492 () Bool)

(assert (=> b!2559492 (= e!1616527 e!1616537)))

(declare-fun res!1077702 () Bool)

(assert (=> b!2559492 (= res!1077702 call!163801)))

(assert (=> b!2559492 (=> res!1077702 e!1616537)))

(declare-fun b!2559494 () Bool)

(declare-fun e!1616535 () Bool)

(declare-fun e!1616532 () Bool)

(assert (=> b!2559494 (= e!1616535 e!1616532)))

(declare-fun res!1077703 () Bool)

(assert (=> b!2559494 (=> (not res!1077703) (not e!1616532))))

(assert (=> b!2559494 (= res!1077703 (and (not ((_ is EmptyLang!7613) (regOne!15738 r!27340))) (not ((_ is ElementMatch!7613) (regOne!15738 r!27340)))))))

(declare-fun b!2559496 () Bool)

(assert (=> b!2559496 (= e!1616527 e!1616531)))

(declare-fun res!1077704 () Bool)

(assert (=> b!2559496 (= res!1077704 call!163800)))

(assert (=> b!2559496 (=> (not res!1077704) (not e!1616531))))

(declare-fun d!725190 () Bool)

(declare-fun res!1077700 () Bool)

(assert (=> d!725190 (=> res!1077700 e!1616535)))

(assert (=> d!725190 (= res!1077700 ((_ is EmptyExpr!7613) (regOne!15738 r!27340)))))

(assert (=> d!725190 (= (nullableFct!755 (regOne!15738 r!27340)) e!1616535)))

(declare-fun bm!163796 () Bool)

(assert (=> bm!163796 (= call!163800 (nullable!2530 (ite c!411077 (regTwo!15739 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))

(declare-fun b!2559499 () Bool)

(assert (=> b!2559499 (= e!1616532 e!1616536)))

(declare-fun res!1077707 () Bool)

(assert (=> b!2559499 (=> res!1077707 e!1616536)))

(assert (=> b!2559499 (= res!1077707 ((_ is Star!7613) (regOne!15738 r!27340)))))

(assert (= (and d!725190 (not res!1077700)) b!2559494))

(assert (= (and b!2559494 res!1077703) b!2559499))

(assert (= (and b!2559499 (not res!1077707)) b!2559489))

(assert (= (and b!2559489 c!411077) b!2559492))

(assert (= (and b!2559489 (not c!411077)) b!2559496))

(assert (= (and b!2559492 (not res!1077702)) b!2559485))

(assert (= (and b!2559496 res!1077704) b!2559487))

(assert (= (or b!2559485 b!2559496) bm!163796))

(assert (= (or b!2559492 b!2559487) bm!163795))

(declare-fun m!2900173 () Bool)

(assert (=> bm!163795 m!2900173))

(declare-fun m!2900175 () Bool)

(assert (=> bm!163796 m!2900175))

(assert (=> d!724942 d!725190))

(declare-fun bm!163797 () Bool)

(declare-fun call!163804 () List!29678)

(declare-fun call!163802 () List!29678)

(assert (=> bm!163797 (= call!163804 call!163802)))

(declare-fun b!2559501 () Bool)

(declare-fun e!1616542 () List!29678)

(declare-fun call!163806 () List!29678)

(assert (=> b!2559501 (= e!1616542 call!163806)))

(declare-fun c!411080 () Bool)

(declare-fun bm!163798 () Bool)

(declare-fun c!411081 () Bool)

(assert (=> bm!163798 (= call!163806 (firstChars!96 (ite c!411080 (reg!7942 (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340)))) (ite c!411081 (regTwo!15739 (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340)))) (regOne!15738 (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340))))))))))

(declare-fun b!2559502 () Bool)

(declare-fun e!1616540 () List!29678)

(declare-fun call!163803 () List!29678)

(assert (=> b!2559502 (= e!1616540 call!163803)))

(declare-fun b!2559503 () Bool)

(declare-fun e!1616541 () List!29678)

(assert (=> b!2559503 (= e!1616541 call!163803)))

(declare-fun b!2559504 () Bool)

(declare-fun e!1616539 () List!29678)

(declare-fun e!1616538 () List!29678)

(assert (=> b!2559504 (= e!1616539 e!1616538)))

(declare-fun c!411079 () Bool)

(assert (=> b!2559504 (= c!411079 ((_ is ElementMatch!7613) (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340)))))))

(declare-fun b!2559505 () Bool)

(assert (=> b!2559505 (= e!1616542 e!1616541)))

(assert (=> b!2559505 (= c!411081 ((_ is Union!7613) (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340)))))))

(declare-fun bm!163799 () Bool)

(declare-fun call!163805 () List!29678)

(assert (=> bm!163799 (= call!163803 (++!7270 (ite c!411081 call!163802 call!163805) (ite c!411081 call!163805 call!163804)))))

(declare-fun bm!163800 () Bool)

(declare-fun c!411078 () Bool)

(assert (=> bm!163800 (= call!163802 (firstChars!96 (ite c!411081 (regOne!15739 (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340)))) (ite c!411078 (regTwo!15738 (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340)))) (regOne!15738 (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340))))))))))

(declare-fun b!2559506 () Bool)

(assert (=> b!2559506 (= c!411080 ((_ is Star!7613) (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340)))))))

(assert (=> b!2559506 (= e!1616538 e!1616542)))

(declare-fun b!2559507 () Bool)

(assert (=> b!2559507 (= c!411078 (nullable!2530 (regOne!15738 (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340))))))))

(assert (=> b!2559507 (= e!1616541 e!1616540)))

(declare-fun b!2559508 () Bool)

(assert (=> b!2559508 (= e!1616540 call!163804)))

(declare-fun bm!163801 () Bool)

(assert (=> bm!163801 (= call!163805 call!163806)))

(declare-fun c!411082 () Bool)

(declare-fun d!725192 () Bool)

(assert (=> d!725192 (= c!411082 (or ((_ is EmptyExpr!7613) (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340)))) ((_ is EmptyLang!7613) (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340))))))))

(assert (=> d!725192 (= (firstChars!96 (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340)))) e!1616539)))

(declare-fun b!2559509 () Bool)

(assert (=> b!2559509 (= e!1616538 (Cons!29578 (c!410685 (ite c!410845 (regOne!15739 r!27340) (ite c!410842 (regTwo!15738 r!27340) (regOne!15738 r!27340)))) Nil!29578))))

(declare-fun b!2559510 () Bool)

(assert (=> b!2559510 (= e!1616539 Nil!29578)))

(assert (= (and d!725192 c!411082) b!2559510))

(assert (= (and d!725192 (not c!411082)) b!2559504))

(assert (= (and b!2559504 c!411079) b!2559509))

(assert (= (and b!2559504 (not c!411079)) b!2559506))

(assert (= (and b!2559506 c!411080) b!2559501))

(assert (= (and b!2559506 (not c!411080)) b!2559505))

(assert (= (and b!2559505 c!411081) b!2559503))

(assert (= (and b!2559505 (not c!411081)) b!2559507))

(assert (= (and b!2559507 c!411078) b!2559502))

(assert (= (and b!2559507 (not c!411078)) b!2559508))

(assert (= (or b!2559502 b!2559508) bm!163797))

(assert (= (or b!2559503 bm!163797) bm!163800))

(assert (= (or b!2559503 b!2559502) bm!163801))

(assert (= (or b!2559503 b!2559502) bm!163799))

(assert (= (or b!2559501 bm!163801) bm!163798))

(declare-fun m!2900193 () Bool)

(assert (=> bm!163798 m!2900193))

(declare-fun m!2900197 () Bool)

(assert (=> bm!163799 m!2900197))

(declare-fun m!2900201 () Bool)

(assert (=> bm!163800 m!2900201))

(declare-fun m!2900203 () Bool)

(assert (=> b!2559507 m!2900203))

(assert (=> bm!163627 d!725192))

(declare-fun d!725194 () Bool)

(assert (=> d!725194 (= (isEmpty!17034 (_2!17336 lt!904412)) ((_ is Nil!29578) (_2!17336 lt!904412)))))

(assert (=> bm!163563 d!725194))

(declare-fun b!2559513 () Bool)

(declare-fun e!1616550 () Bool)

(declare-fun lt!904569 () Bool)

(declare-fun call!163807 () Bool)

(assert (=> b!2559513 (= e!1616550 (= lt!904569 call!163807))))

(declare-fun b!2559514 () Bool)

(declare-fun res!1077715 () Bool)

(declare-fun e!1616545 () Bool)

(assert (=> b!2559514 (=> res!1077715 e!1616545)))

(assert (=> b!2559514 (= res!1077715 (not (isEmpty!17034 (tail!4095 (tail!4095 tl!4068)))))))

(declare-fun b!2559515 () Bool)

(assert (=> b!2559515 (= e!1616545 (not (= (head!5820 (tail!4095 tl!4068)) (c!410685 (derivativeStep!2182 lt!904421 (head!5820 tl!4068))))))))

(declare-fun bm!163802 () Bool)

(assert (=> bm!163802 (= call!163807 (isEmpty!17034 (tail!4095 tl!4068)))))

(declare-fun b!2559516 () Bool)

(declare-fun res!1077716 () Bool)

(declare-fun e!1616551 () Bool)

(assert (=> b!2559516 (=> res!1077716 e!1616551)))

(declare-fun e!1616546 () Bool)

(assert (=> b!2559516 (= res!1077716 e!1616546)))

(declare-fun res!1077712 () Bool)

(assert (=> b!2559516 (=> (not res!1077712) (not e!1616546))))

(assert (=> b!2559516 (= res!1077712 lt!904569)))

(declare-fun d!725198 () Bool)

(assert (=> d!725198 e!1616550))

(declare-fun c!411083 () Bool)

(assert (=> d!725198 (= c!411083 ((_ is EmptyExpr!7613) (derivativeStep!2182 lt!904421 (head!5820 tl!4068))))))

(declare-fun e!1616547 () Bool)

(assert (=> d!725198 (= lt!904569 e!1616547)))

(declare-fun c!411085 () Bool)

(assert (=> d!725198 (= c!411085 (isEmpty!17034 (tail!4095 tl!4068)))))

(assert (=> d!725198 (validRegex!3239 (derivativeStep!2182 lt!904421 (head!5820 tl!4068)))))

(assert (=> d!725198 (= (matchR!3558 (derivativeStep!2182 lt!904421 (head!5820 tl!4068)) (tail!4095 tl!4068)) lt!904569)))

(declare-fun b!2559517 () Bool)

(assert (=> b!2559517 (= e!1616547 (matchR!3558 (derivativeStep!2182 (derivativeStep!2182 lt!904421 (head!5820 tl!4068)) (head!5820 (tail!4095 tl!4068))) (tail!4095 (tail!4095 tl!4068))))))

(declare-fun b!2559518 () Bool)

(declare-fun res!1077711 () Bool)

(assert (=> b!2559518 (=> res!1077711 e!1616551)))

(assert (=> b!2559518 (= res!1077711 (not ((_ is ElementMatch!7613) (derivativeStep!2182 lt!904421 (head!5820 tl!4068)))))))

(declare-fun e!1616549 () Bool)

(assert (=> b!2559518 (= e!1616549 e!1616551)))

(declare-fun b!2559519 () Bool)

(assert (=> b!2559519 (= e!1616550 e!1616549)))

(declare-fun c!411084 () Bool)

(assert (=> b!2559519 (= c!411084 ((_ is EmptyLang!7613) (derivativeStep!2182 lt!904421 (head!5820 tl!4068))))))

(declare-fun b!2559520 () Bool)

(declare-fun e!1616548 () Bool)

(assert (=> b!2559520 (= e!1616551 e!1616548)))

(declare-fun res!1077718 () Bool)

(assert (=> b!2559520 (=> (not res!1077718) (not e!1616548))))

(assert (=> b!2559520 (= res!1077718 (not lt!904569))))

(declare-fun b!2559521 () Bool)

(declare-fun res!1077717 () Bool)

(assert (=> b!2559521 (=> (not res!1077717) (not e!1616546))))

(assert (=> b!2559521 (= res!1077717 (isEmpty!17034 (tail!4095 (tail!4095 tl!4068))))))

(declare-fun b!2559522 () Bool)

(declare-fun res!1077714 () Bool)

(assert (=> b!2559522 (=> (not res!1077714) (not e!1616546))))

(assert (=> b!2559522 (= res!1077714 (not call!163807))))

(declare-fun b!2559523 () Bool)

(assert (=> b!2559523 (= e!1616549 (not lt!904569))))

(declare-fun b!2559524 () Bool)

(assert (=> b!2559524 (= e!1616548 e!1616545)))

(declare-fun res!1077713 () Bool)

(assert (=> b!2559524 (=> res!1077713 e!1616545)))

(assert (=> b!2559524 (= res!1077713 call!163807)))

(declare-fun b!2559525 () Bool)

(assert (=> b!2559525 (= e!1616546 (= (head!5820 (tail!4095 tl!4068)) (c!410685 (derivativeStep!2182 lt!904421 (head!5820 tl!4068)))))))

(declare-fun b!2559526 () Bool)

(assert (=> b!2559526 (= e!1616547 (nullable!2530 (derivativeStep!2182 lt!904421 (head!5820 tl!4068))))))

(assert (= (and d!725198 c!411085) b!2559526))

(assert (= (and d!725198 (not c!411085)) b!2559517))

(assert (= (and d!725198 c!411083) b!2559513))

(assert (= (and d!725198 (not c!411083)) b!2559519))

(assert (= (and b!2559519 c!411084) b!2559523))

(assert (= (and b!2559519 (not c!411084)) b!2559518))

(assert (= (and b!2559518 (not res!1077711)) b!2559516))

(assert (= (and b!2559516 res!1077712) b!2559522))

(assert (= (and b!2559522 res!1077714) b!2559521))

(assert (= (and b!2559521 res!1077717) b!2559525))

(assert (= (and b!2559516 (not res!1077716)) b!2559520))

(assert (= (and b!2559520 res!1077718) b!2559524))

(assert (= (and b!2559524 (not res!1077713)) b!2559514))

(assert (= (and b!2559514 (not res!1077715)) b!2559515))

(assert (= (or b!2559513 b!2559522 b!2559524) bm!163802))

(assert (=> bm!163802 m!2899181))

(assert (=> bm!163802 m!2899183))

(assert (=> d!725198 m!2899181))

(assert (=> d!725198 m!2899183))

(assert (=> d!725198 m!2899551))

(declare-fun m!2900213 () Bool)

(assert (=> d!725198 m!2900213))

(assert (=> b!2559521 m!2899181))

(declare-fun m!2900215 () Bool)

(assert (=> b!2559521 m!2900215))

(assert (=> b!2559521 m!2900215))

(declare-fun m!2900217 () Bool)

(assert (=> b!2559521 m!2900217))

(assert (=> b!2559517 m!2899181))

(declare-fun m!2900219 () Bool)

(assert (=> b!2559517 m!2900219))

(assert (=> b!2559517 m!2899551))

(assert (=> b!2559517 m!2900219))

(declare-fun m!2900221 () Bool)

(assert (=> b!2559517 m!2900221))

(assert (=> b!2559517 m!2899181))

(assert (=> b!2559517 m!2900215))

(assert (=> b!2559517 m!2900221))

(assert (=> b!2559517 m!2900215))

(declare-fun m!2900223 () Bool)

(assert (=> b!2559517 m!2900223))

(assert (=> b!2559526 m!2899551))

(declare-fun m!2900225 () Bool)

(assert (=> b!2559526 m!2900225))

(assert (=> b!2559514 m!2899181))

(assert (=> b!2559514 m!2900215))

(assert (=> b!2559514 m!2900215))

(assert (=> b!2559514 m!2900217))

(assert (=> b!2559525 m!2899181))

(assert (=> b!2559525 m!2900219))

(assert (=> b!2559515 m!2899181))

(assert (=> b!2559515 m!2900219))

(assert (=> b!2558771 d!725198))

(declare-fun bm!163803 () Bool)

(declare-fun call!163810 () Regex!7613)

(declare-fun call!163811 () Regex!7613)

(assert (=> bm!163803 (= call!163810 call!163811)))

(declare-fun b!2559527 () Bool)

(declare-fun e!1616552 () Regex!7613)

(assert (=> b!2559527 (= e!1616552 EmptyLang!7613)))

(declare-fun b!2559528 () Bool)

(declare-fun c!411090 () Bool)

(assert (=> b!2559528 (= c!411090 ((_ is Union!7613) lt!904421))))

(declare-fun e!1616554 () Regex!7613)

(declare-fun e!1616556 () Regex!7613)

(assert (=> b!2559528 (= e!1616554 e!1616556)))

(declare-fun bm!163804 () Bool)

(declare-fun call!163808 () Regex!7613)

(assert (=> bm!163804 (= call!163808 (derivativeStep!2182 (ite c!411090 (regOne!15739 lt!904421) (regTwo!15738 lt!904421)) (head!5820 tl!4068)))))

(declare-fun b!2559529 () Bool)

(declare-fun c!411088 () Bool)

(assert (=> b!2559529 (= c!411088 (nullable!2530 (regOne!15738 lt!904421)))))

(declare-fun e!1616555 () Regex!7613)

(declare-fun e!1616553 () Regex!7613)

(assert (=> b!2559529 (= e!1616555 e!1616553)))

(declare-fun b!2559530 () Bool)

(assert (=> b!2559530 (= e!1616555 (Concat!12309 call!163810 lt!904421))))

(declare-fun bm!163805 () Bool)

(declare-fun call!163809 () Regex!7613)

(assert (=> bm!163805 (= call!163809 call!163810)))

(declare-fun d!725202 () Bool)

(declare-fun lt!904570 () Regex!7613)

(assert (=> d!725202 (validRegex!3239 lt!904570)))

(assert (=> d!725202 (= lt!904570 e!1616552)))

(declare-fun c!411087 () Bool)

(assert (=> d!725202 (= c!411087 (or ((_ is EmptyExpr!7613) lt!904421) ((_ is EmptyLang!7613) lt!904421)))))

(assert (=> d!725202 (validRegex!3239 lt!904421)))

(assert (=> d!725202 (= (derivativeStep!2182 lt!904421 (head!5820 tl!4068)) lt!904570)))

(declare-fun b!2559531 () Bool)

(assert (=> b!2559531 (= e!1616556 (Union!7613 call!163808 call!163811))))

(declare-fun b!2559532 () Bool)

(assert (=> b!2559532 (= e!1616553 (Union!7613 (Concat!12309 call!163809 (regTwo!15738 lt!904421)) EmptyLang!7613))))

(declare-fun b!2559533 () Bool)

(assert (=> b!2559533 (= e!1616553 (Union!7613 (Concat!12309 call!163809 (regTwo!15738 lt!904421)) call!163808))))

(declare-fun b!2559534 () Bool)

(assert (=> b!2559534 (= e!1616552 e!1616554)))

(declare-fun c!411089 () Bool)

(assert (=> b!2559534 (= c!411089 ((_ is ElementMatch!7613) lt!904421))))

(declare-fun b!2559535 () Bool)

(assert (=> b!2559535 (= e!1616556 e!1616555)))

(declare-fun c!411086 () Bool)

(assert (=> b!2559535 (= c!411086 ((_ is Star!7613) lt!904421))))

(declare-fun bm!163806 () Bool)

(assert (=> bm!163806 (= call!163811 (derivativeStep!2182 (ite c!411090 (regTwo!15739 lt!904421) (ite c!411086 (reg!7942 lt!904421) (regOne!15738 lt!904421))) (head!5820 tl!4068)))))

(declare-fun b!2559536 () Bool)

(assert (=> b!2559536 (= e!1616554 (ite (= (head!5820 tl!4068) (c!410685 lt!904421)) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725202 c!411087) b!2559527))

(assert (= (and d!725202 (not c!411087)) b!2559534))

(assert (= (and b!2559534 c!411089) b!2559536))

(assert (= (and b!2559534 (not c!411089)) b!2559528))

(assert (= (and b!2559528 c!411090) b!2559531))

(assert (= (and b!2559528 (not c!411090)) b!2559535))

(assert (= (and b!2559535 c!411086) b!2559530))

(assert (= (and b!2559535 (not c!411086)) b!2559529))

(assert (= (and b!2559529 c!411088) b!2559533))

(assert (= (and b!2559529 (not c!411088)) b!2559532))

(assert (= (or b!2559533 b!2559532) bm!163805))

(assert (= (or b!2559530 bm!163805) bm!163803))

(assert (= (or b!2559531 bm!163803) bm!163806))

(assert (= (or b!2559531 b!2559533) bm!163804))

(assert (=> bm!163804 m!2899185))

(declare-fun m!2900227 () Bool)

(assert (=> bm!163804 m!2900227))

(declare-fun m!2900229 () Bool)

(assert (=> b!2559529 m!2900229))

(declare-fun m!2900231 () Bool)

(assert (=> d!725202 m!2900231))

(assert (=> d!725202 m!2899549))

(assert (=> bm!163806 m!2899185))

(declare-fun m!2900233 () Bool)

(assert (=> bm!163806 m!2900233))

(assert (=> b!2558771 d!725202))

(assert (=> b!2558771 d!725140))

(assert (=> b!2558771 d!725154))

(declare-fun bm!163807 () Bool)

(declare-fun call!163814 () Regex!7613)

(declare-fun call!163815 () Regex!7613)

(assert (=> bm!163807 (= call!163814 call!163815)))

(declare-fun b!2559551 () Bool)

(declare-fun e!1616567 () Regex!7613)

(assert (=> b!2559551 (= e!1616567 EmptyLang!7613)))

(declare-fun b!2559552 () Bool)

(declare-fun c!411097 () Bool)

(assert (=> b!2559552 (= c!411097 ((_ is Union!7613) (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340))))))))

(declare-fun e!1616571 () Regex!7613)

(declare-fun e!1616573 () Regex!7613)

(assert (=> b!2559552 (= e!1616571 e!1616573)))

(declare-fun call!163812 () Regex!7613)

(declare-fun bm!163808 () Bool)

(assert (=> bm!163808 (= call!163812 (derivativeStep!2182 (ite c!411097 (regOne!15739 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340))))) (regTwo!15738 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340)))))) c!14016))))

(declare-fun b!2559553 () Bool)

(declare-fun c!411095 () Bool)

(assert (=> b!2559553 (= c!411095 (nullable!2530 (regOne!15738 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340)))))))))

(declare-fun e!1616572 () Regex!7613)

(declare-fun e!1616568 () Regex!7613)

(assert (=> b!2559553 (= e!1616572 e!1616568)))

(declare-fun b!2559554 () Bool)

(assert (=> b!2559554 (= e!1616572 (Concat!12309 call!163814 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340))))))))

(declare-fun bm!163809 () Bool)

(declare-fun call!163813 () Regex!7613)

(assert (=> bm!163809 (= call!163813 call!163814)))

(declare-fun d!725204 () Bool)

(declare-fun lt!904571 () Regex!7613)

(assert (=> d!725204 (validRegex!3239 lt!904571)))

(assert (=> d!725204 (= lt!904571 e!1616567)))

(declare-fun c!411094 () Bool)

(assert (=> d!725204 (= c!411094 (or ((_ is EmptyExpr!7613) (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340))))) ((_ is EmptyLang!7613) (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340)))))))))

(assert (=> d!725204 (validRegex!3239 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340)))))))

(assert (=> d!725204 (= (derivativeStep!2182 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340)))) c!14016) lt!904571)))

(declare-fun b!2559555 () Bool)

(assert (=> b!2559555 (= e!1616573 (Union!7613 call!163812 call!163815))))

(declare-fun b!2559556 () Bool)

(assert (=> b!2559556 (= e!1616568 (Union!7613 (Concat!12309 call!163813 (regTwo!15738 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340)))))) EmptyLang!7613))))

(declare-fun b!2559557 () Bool)

(assert (=> b!2559557 (= e!1616568 (Union!7613 (Concat!12309 call!163813 (regTwo!15738 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340)))))) call!163812))))

(declare-fun b!2559558 () Bool)

(assert (=> b!2559558 (= e!1616567 e!1616571)))

(declare-fun c!411096 () Bool)

(assert (=> b!2559558 (= c!411096 ((_ is ElementMatch!7613) (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340))))))))

(declare-fun b!2559559 () Bool)

(assert (=> b!2559559 (= e!1616573 e!1616572)))

(declare-fun c!411093 () Bool)

(assert (=> b!2559559 (= c!411093 ((_ is Star!7613) (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340))))))))

(declare-fun bm!163810 () Bool)

(assert (=> bm!163810 (= call!163815 (derivativeStep!2182 (ite c!411097 (regTwo!15739 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340))))) (ite c!411093 (reg!7942 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340))))) (regOne!15738 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340))))))) c!14016))))

(declare-fun b!2559560 () Bool)

(assert (=> b!2559560 (= e!1616571 (ite (= c!14016 (c!410685 (ite c!410867 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!410863 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340)))))) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725204 c!411094) b!2559551))

(assert (= (and d!725204 (not c!411094)) b!2559558))

(assert (= (and b!2559558 c!411096) b!2559560))

(assert (= (and b!2559558 (not c!411096)) b!2559552))

(assert (= (and b!2559552 c!411097) b!2559555))

(assert (= (and b!2559552 (not c!411097)) b!2559559))

(assert (= (and b!2559559 c!411093) b!2559554))

(assert (= (and b!2559559 (not c!411093)) b!2559553))

(assert (= (and b!2559553 c!411095) b!2559557))

(assert (= (and b!2559553 (not c!411095)) b!2559556))

(assert (= (or b!2559557 b!2559556) bm!163809))

(assert (= (or b!2559554 bm!163809) bm!163807))

(assert (= (or b!2559555 bm!163807) bm!163810))

(assert (= (or b!2559555 b!2559557) bm!163808))

(declare-fun m!2900235 () Bool)

(assert (=> bm!163808 m!2900235))

(declare-fun m!2900237 () Bool)

(assert (=> b!2559553 m!2900237))

(declare-fun m!2900239 () Bool)

(assert (=> d!725204 m!2900239))

(declare-fun m!2900241 () Bool)

(assert (=> d!725204 m!2900241))

(declare-fun m!2900243 () Bool)

(assert (=> bm!163810 m!2900243))

(assert (=> bm!163640 d!725204))

(declare-fun d!725206 () Bool)

(assert (=> d!725206 (= (isEmpty!17034 Nil!29578) true)))

(assert (=> bm!163586 d!725206))

(declare-fun b!2559561 () Bool)

(declare-fun e!1616579 () Bool)

(declare-fun lt!904572 () Bool)

(declare-fun call!163820 () Bool)

(assert (=> b!2559561 (= e!1616579 (= lt!904572 call!163820))))

(declare-fun b!2559562 () Bool)

(declare-fun res!1077733 () Bool)

(declare-fun e!1616574 () Bool)

(assert (=> b!2559562 (=> res!1077733 e!1616574)))

(assert (=> b!2559562 (= res!1077733 (not (isEmpty!17034 (tail!4095 (tail!4095 tl!4068)))))))

(declare-fun b!2559563 () Bool)

(assert (=> b!2559563 (= e!1616574 (not (= (head!5820 (tail!4095 tl!4068)) (c!410685 (derivativeStep!2182 lt!904411 (head!5820 tl!4068))))))))

(declare-fun bm!163815 () Bool)

(assert (=> bm!163815 (= call!163820 (isEmpty!17034 (tail!4095 tl!4068)))))

(declare-fun b!2559564 () Bool)

(declare-fun res!1077734 () Bool)

(declare-fun e!1616580 () Bool)

(assert (=> b!2559564 (=> res!1077734 e!1616580)))

(declare-fun e!1616575 () Bool)

(assert (=> b!2559564 (= res!1077734 e!1616575)))

(declare-fun res!1077730 () Bool)

(assert (=> b!2559564 (=> (not res!1077730) (not e!1616575))))

(assert (=> b!2559564 (= res!1077730 lt!904572)))

(declare-fun d!725208 () Bool)

(assert (=> d!725208 e!1616579))

(declare-fun c!411098 () Bool)

(assert (=> d!725208 (= c!411098 ((_ is EmptyExpr!7613) (derivativeStep!2182 lt!904411 (head!5820 tl!4068))))))

(declare-fun e!1616576 () Bool)

(assert (=> d!725208 (= lt!904572 e!1616576)))

(declare-fun c!411100 () Bool)

(assert (=> d!725208 (= c!411100 (isEmpty!17034 (tail!4095 tl!4068)))))

(assert (=> d!725208 (validRegex!3239 (derivativeStep!2182 lt!904411 (head!5820 tl!4068)))))

(assert (=> d!725208 (= (matchR!3558 (derivativeStep!2182 lt!904411 (head!5820 tl!4068)) (tail!4095 tl!4068)) lt!904572)))

(declare-fun b!2559565 () Bool)

(assert (=> b!2559565 (= e!1616576 (matchR!3558 (derivativeStep!2182 (derivativeStep!2182 lt!904411 (head!5820 tl!4068)) (head!5820 (tail!4095 tl!4068))) (tail!4095 (tail!4095 tl!4068))))))

(declare-fun b!2559566 () Bool)

(declare-fun res!1077729 () Bool)

(assert (=> b!2559566 (=> res!1077729 e!1616580)))

(assert (=> b!2559566 (= res!1077729 (not ((_ is ElementMatch!7613) (derivativeStep!2182 lt!904411 (head!5820 tl!4068)))))))

(declare-fun e!1616578 () Bool)

(assert (=> b!2559566 (= e!1616578 e!1616580)))

(declare-fun b!2559567 () Bool)

(assert (=> b!2559567 (= e!1616579 e!1616578)))

(declare-fun c!411099 () Bool)

(assert (=> b!2559567 (= c!411099 ((_ is EmptyLang!7613) (derivativeStep!2182 lt!904411 (head!5820 tl!4068))))))

(declare-fun b!2559568 () Bool)

(declare-fun e!1616577 () Bool)

(assert (=> b!2559568 (= e!1616580 e!1616577)))

(declare-fun res!1077736 () Bool)

(assert (=> b!2559568 (=> (not res!1077736) (not e!1616577))))

(assert (=> b!2559568 (= res!1077736 (not lt!904572))))

(declare-fun b!2559569 () Bool)

(declare-fun res!1077735 () Bool)

(assert (=> b!2559569 (=> (not res!1077735) (not e!1616575))))

(assert (=> b!2559569 (= res!1077735 (isEmpty!17034 (tail!4095 (tail!4095 tl!4068))))))

(declare-fun b!2559570 () Bool)

(declare-fun res!1077732 () Bool)

(assert (=> b!2559570 (=> (not res!1077732) (not e!1616575))))

(assert (=> b!2559570 (= res!1077732 (not call!163820))))

(declare-fun b!2559571 () Bool)

(assert (=> b!2559571 (= e!1616578 (not lt!904572))))

(declare-fun b!2559572 () Bool)

(assert (=> b!2559572 (= e!1616577 e!1616574)))

(declare-fun res!1077731 () Bool)

(assert (=> b!2559572 (=> res!1077731 e!1616574)))

(assert (=> b!2559572 (= res!1077731 call!163820)))

(declare-fun b!2559573 () Bool)

(assert (=> b!2559573 (= e!1616575 (= (head!5820 (tail!4095 tl!4068)) (c!410685 (derivativeStep!2182 lt!904411 (head!5820 tl!4068)))))))

(declare-fun b!2559574 () Bool)

(assert (=> b!2559574 (= e!1616576 (nullable!2530 (derivativeStep!2182 lt!904411 (head!5820 tl!4068))))))

(assert (= (and d!725208 c!411100) b!2559574))

(assert (= (and d!725208 (not c!411100)) b!2559565))

(assert (= (and d!725208 c!411098) b!2559561))

(assert (= (and d!725208 (not c!411098)) b!2559567))

(assert (= (and b!2559567 c!411099) b!2559571))

(assert (= (and b!2559567 (not c!411099)) b!2559566))

(assert (= (and b!2559566 (not res!1077729)) b!2559564))

(assert (= (and b!2559564 res!1077730) b!2559570))

(assert (= (and b!2559570 res!1077732) b!2559569))

(assert (= (and b!2559569 res!1077735) b!2559573))

(assert (= (and b!2559564 (not res!1077734)) b!2559568))

(assert (= (and b!2559568 res!1077736) b!2559572))

(assert (= (and b!2559572 (not res!1077731)) b!2559562))

(assert (= (and b!2559562 (not res!1077733)) b!2559563))

(assert (= (or b!2559561 b!2559570 b!2559572) bm!163815))

(assert (=> bm!163815 m!2899181))

(assert (=> bm!163815 m!2899183))

(assert (=> d!725208 m!2899181))

(assert (=> d!725208 m!2899183))

(assert (=> d!725208 m!2899187))

(declare-fun m!2900245 () Bool)

(assert (=> d!725208 m!2900245))

(assert (=> b!2559569 m!2899181))

(assert (=> b!2559569 m!2900215))

(assert (=> b!2559569 m!2900215))

(assert (=> b!2559569 m!2900217))

(assert (=> b!2559565 m!2899181))

(assert (=> b!2559565 m!2900219))

(assert (=> b!2559565 m!2899187))

(assert (=> b!2559565 m!2900219))

(declare-fun m!2900247 () Bool)

(assert (=> b!2559565 m!2900247))

(assert (=> b!2559565 m!2899181))

(assert (=> b!2559565 m!2900215))

(assert (=> b!2559565 m!2900247))

(assert (=> b!2559565 m!2900215))

(declare-fun m!2900249 () Bool)

(assert (=> b!2559565 m!2900249))

(assert (=> b!2559574 m!2899187))

(declare-fun m!2900251 () Bool)

(assert (=> b!2559574 m!2900251))

(assert (=> b!2559562 m!2899181))

(assert (=> b!2559562 m!2900215))

(assert (=> b!2559562 m!2900215))

(assert (=> b!2559562 m!2900217))

(assert (=> b!2559573 m!2899181))

(assert (=> b!2559573 m!2900219))

(assert (=> b!2559563 m!2899181))

(assert (=> b!2559563 m!2900219))

(assert (=> b!2558237 d!725208))

(declare-fun bm!163816 () Bool)

(declare-fun call!163823 () Regex!7613)

(declare-fun call!163824 () Regex!7613)

(assert (=> bm!163816 (= call!163823 call!163824)))

(declare-fun b!2559575 () Bool)

(declare-fun e!1616581 () Regex!7613)

(assert (=> b!2559575 (= e!1616581 EmptyLang!7613)))

(declare-fun b!2559576 () Bool)

(declare-fun c!411105 () Bool)

(assert (=> b!2559576 (= c!411105 ((_ is Union!7613) lt!904411))))

(declare-fun e!1616583 () Regex!7613)

(declare-fun e!1616585 () Regex!7613)

(assert (=> b!2559576 (= e!1616583 e!1616585)))

(declare-fun bm!163817 () Bool)

(declare-fun call!163821 () Regex!7613)

(assert (=> bm!163817 (= call!163821 (derivativeStep!2182 (ite c!411105 (regOne!15739 lt!904411) (regTwo!15738 lt!904411)) (head!5820 tl!4068)))))

(declare-fun b!2559577 () Bool)

(declare-fun c!411103 () Bool)

(assert (=> b!2559577 (= c!411103 (nullable!2530 (regOne!15738 lt!904411)))))

(declare-fun e!1616584 () Regex!7613)

(declare-fun e!1616582 () Regex!7613)

(assert (=> b!2559577 (= e!1616584 e!1616582)))

(declare-fun b!2559578 () Bool)

(assert (=> b!2559578 (= e!1616584 (Concat!12309 call!163823 lt!904411))))

(declare-fun bm!163818 () Bool)

(declare-fun call!163822 () Regex!7613)

(assert (=> bm!163818 (= call!163822 call!163823)))

(declare-fun d!725210 () Bool)

(declare-fun lt!904573 () Regex!7613)

(assert (=> d!725210 (validRegex!3239 lt!904573)))

(assert (=> d!725210 (= lt!904573 e!1616581)))

(declare-fun c!411102 () Bool)

(assert (=> d!725210 (= c!411102 (or ((_ is EmptyExpr!7613) lt!904411) ((_ is EmptyLang!7613) lt!904411)))))

(assert (=> d!725210 (validRegex!3239 lt!904411)))

(assert (=> d!725210 (= (derivativeStep!2182 lt!904411 (head!5820 tl!4068)) lt!904573)))

(declare-fun b!2559579 () Bool)

(assert (=> b!2559579 (= e!1616585 (Union!7613 call!163821 call!163824))))

(declare-fun b!2559580 () Bool)

(assert (=> b!2559580 (= e!1616582 (Union!7613 (Concat!12309 call!163822 (regTwo!15738 lt!904411)) EmptyLang!7613))))

(declare-fun b!2559581 () Bool)

(assert (=> b!2559581 (= e!1616582 (Union!7613 (Concat!12309 call!163822 (regTwo!15738 lt!904411)) call!163821))))

(declare-fun b!2559582 () Bool)

(assert (=> b!2559582 (= e!1616581 e!1616583)))

(declare-fun c!411104 () Bool)

(assert (=> b!2559582 (= c!411104 ((_ is ElementMatch!7613) lt!904411))))

(declare-fun b!2559583 () Bool)

(assert (=> b!2559583 (= e!1616585 e!1616584)))

(declare-fun c!411101 () Bool)

(assert (=> b!2559583 (= c!411101 ((_ is Star!7613) lt!904411))))

(declare-fun bm!163819 () Bool)

(assert (=> bm!163819 (= call!163824 (derivativeStep!2182 (ite c!411105 (regTwo!15739 lt!904411) (ite c!411101 (reg!7942 lt!904411) (regOne!15738 lt!904411))) (head!5820 tl!4068)))))

(declare-fun b!2559584 () Bool)

(assert (=> b!2559584 (= e!1616583 (ite (= (head!5820 tl!4068) (c!410685 lt!904411)) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725210 c!411102) b!2559575))

(assert (= (and d!725210 (not c!411102)) b!2559582))

(assert (= (and b!2559582 c!411104) b!2559584))

(assert (= (and b!2559582 (not c!411104)) b!2559576))

(assert (= (and b!2559576 c!411105) b!2559579))

(assert (= (and b!2559576 (not c!411105)) b!2559583))

(assert (= (and b!2559583 c!411101) b!2559578))

(assert (= (and b!2559583 (not c!411101)) b!2559577))

(assert (= (and b!2559577 c!411103) b!2559581))

(assert (= (and b!2559577 (not c!411103)) b!2559580))

(assert (= (or b!2559581 b!2559580) bm!163818))

(assert (= (or b!2559578 bm!163818) bm!163816))

(assert (= (or b!2559579 bm!163816) bm!163819))

(assert (= (or b!2559579 b!2559581) bm!163817))

(assert (=> bm!163817 m!2899185))

(declare-fun m!2900253 () Bool)

(assert (=> bm!163817 m!2900253))

(declare-fun m!2900255 () Bool)

(assert (=> b!2559577 m!2900255))

(declare-fun m!2900257 () Bool)

(assert (=> d!725210 m!2900257))

(assert (=> d!725210 m!2899179))

(assert (=> bm!163819 m!2899185))

(declare-fun m!2900259 () Bool)

(assert (=> bm!163819 m!2900259))

(assert (=> b!2558237 d!725210))

(assert (=> b!2558237 d!725140))

(assert (=> b!2558237 d!725154))

(declare-fun d!725212 () Bool)

(assert (=> d!725212 (= (isEmpty!17036 lt!904410) (not ((_ is Some!5913) lt!904410)))))

(assert (=> d!724934 d!725212))

(declare-fun bm!163822 () Bool)

(declare-fun call!163829 () List!29678)

(declare-fun call!163827 () List!29678)

(assert (=> bm!163822 (= call!163829 call!163827)))

(declare-fun b!2559592 () Bool)

(declare-fun e!1616596 () List!29678)

(declare-fun call!163831 () List!29678)

(assert (=> b!2559592 (= e!1616596 call!163831)))

(declare-fun c!411109 () Bool)

(declare-fun c!411110 () Bool)

(declare-fun bm!163823 () Bool)

(assert (=> bm!163823 (= call!163831 (firstChars!96 (ite c!411109 (reg!7942 (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340)))) (ite c!411110 (regTwo!15739 (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340)))) (regOne!15738 (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340))))))))))

(declare-fun b!2559593 () Bool)

(declare-fun e!1616594 () List!29678)

(declare-fun call!163828 () List!29678)

(assert (=> b!2559593 (= e!1616594 call!163828)))

(declare-fun b!2559594 () Bool)

(declare-fun e!1616595 () List!29678)

(assert (=> b!2559594 (= e!1616595 call!163828)))

(declare-fun b!2559595 () Bool)

(declare-fun e!1616593 () List!29678)

(declare-fun e!1616592 () List!29678)

(assert (=> b!2559595 (= e!1616593 e!1616592)))

(declare-fun c!411108 () Bool)

(assert (=> b!2559595 (= c!411108 ((_ is ElementMatch!7613) (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340)))))))

(declare-fun b!2559596 () Bool)

(assert (=> b!2559596 (= e!1616596 e!1616595)))

(assert (=> b!2559596 (= c!411110 ((_ is Union!7613) (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340)))))))

(declare-fun call!163830 () List!29678)

(declare-fun bm!163824 () Bool)

(assert (=> bm!163824 (= call!163828 (++!7270 (ite c!411110 call!163827 call!163830) (ite c!411110 call!163830 call!163829)))))

(declare-fun c!411107 () Bool)

(declare-fun bm!163825 () Bool)

(assert (=> bm!163825 (= call!163827 (firstChars!96 (ite c!411110 (regOne!15739 (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340)))) (ite c!411107 (regTwo!15738 (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340)))) (regOne!15738 (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340))))))))))

(declare-fun b!2559597 () Bool)

(assert (=> b!2559597 (= c!411109 ((_ is Star!7613) (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340)))))))

(assert (=> b!2559597 (= e!1616592 e!1616596)))

(declare-fun b!2559598 () Bool)

(assert (=> b!2559598 (= c!411107 (nullable!2530 (regOne!15738 (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340))))))))

(assert (=> b!2559598 (= e!1616595 e!1616594)))

(declare-fun b!2559599 () Bool)

(assert (=> b!2559599 (= e!1616594 call!163829)))

(declare-fun bm!163826 () Bool)

(assert (=> bm!163826 (= call!163830 call!163831)))

(declare-fun c!411111 () Bool)

(declare-fun d!725220 () Bool)

(assert (=> d!725220 (= c!411111 (or ((_ is EmptyExpr!7613) (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340)))) ((_ is EmptyLang!7613) (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340))))))))

(assert (=> d!725220 (= (firstChars!96 (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340)))) e!1616593)))

(declare-fun b!2559600 () Bool)

(assert (=> b!2559600 (= e!1616592 (Cons!29578 (c!410685 (ite c!410844 (reg!7942 r!27340) (ite c!410845 (regTwo!15739 r!27340) (regOne!15738 r!27340)))) Nil!29578))))

(declare-fun b!2559601 () Bool)

(assert (=> b!2559601 (= e!1616593 Nil!29578)))

(assert (= (and d!725220 c!411111) b!2559601))

(assert (= (and d!725220 (not c!411111)) b!2559595))

(assert (= (and b!2559595 c!411108) b!2559600))

(assert (= (and b!2559595 (not c!411108)) b!2559597))

(assert (= (and b!2559597 c!411109) b!2559592))

(assert (= (and b!2559597 (not c!411109)) b!2559596))

(assert (= (and b!2559596 c!411110) b!2559594))

(assert (= (and b!2559596 (not c!411110)) b!2559598))

(assert (= (and b!2559598 c!411107) b!2559593))

(assert (= (and b!2559598 (not c!411107)) b!2559599))

(assert (= (or b!2559593 b!2559599) bm!163822))

(assert (= (or b!2559594 bm!163822) bm!163825))

(assert (= (or b!2559594 b!2559593) bm!163826))

(assert (= (or b!2559594 b!2559593) bm!163824))

(assert (= (or b!2559592 bm!163826) bm!163823))

(declare-fun m!2900269 () Bool)

(assert (=> bm!163823 m!2900269))

(declare-fun m!2900271 () Bool)

(assert (=> bm!163824 m!2900271))

(declare-fun m!2900273 () Bool)

(assert (=> bm!163825 m!2900273))

(declare-fun m!2900275 () Bool)

(assert (=> b!2559598 m!2900275))

(assert (=> bm!163625 d!725220))

(assert (=> b!2558281 d!725060))

(declare-fun d!725226 () Bool)

(assert (=> d!725226 (= (nullable!2530 (regOne!15738 (regTwo!15738 r!27340))) (nullableFct!755 (regOne!15738 (regTwo!15738 r!27340))))))

(declare-fun bs!469794 () Bool)

(assert (= bs!469794 d!725226))

(declare-fun m!2900277 () Bool)

(assert (=> bs!469794 m!2900277))

(assert (=> b!2558799 d!725226))

(declare-fun e!1616604 () List!29678)

(declare-fun b!2559616 () Bool)

(assert (=> b!2559616 (= e!1616604 (ite c!410850 call!163637 call!163636))))

(declare-fun d!725228 () Bool)

(declare-fun e!1616605 () Bool)

(assert (=> d!725228 e!1616605))

(declare-fun res!1077751 () Bool)

(assert (=> d!725228 (=> (not res!1077751) (not e!1616605))))

(declare-fun lt!904575 () List!29678)

(assert (=> d!725228 (= res!1077751 (= (content!4076 lt!904575) ((_ map or) (content!4076 (ite c!410850 call!163634 call!163637)) (content!4076 (ite c!410850 call!163637 call!163636)))))))

(assert (=> d!725228 (= lt!904575 e!1616604)))

(declare-fun c!411115 () Bool)

(assert (=> d!725228 (= c!411115 ((_ is Nil!29578) (ite c!410850 call!163634 call!163637)))))

(assert (=> d!725228 (= (++!7270 (ite c!410850 call!163634 call!163637) (ite c!410850 call!163637 call!163636)) lt!904575)))

(declare-fun b!2559618 () Bool)

(declare-fun res!1077750 () Bool)

(assert (=> b!2559618 (=> (not res!1077750) (not e!1616605))))

(assert (=> b!2559618 (= res!1077750 (= (size!22956 lt!904575) (+ (size!22956 (ite c!410850 call!163634 call!163637)) (size!22956 (ite c!410850 call!163637 call!163636)))))))

(declare-fun b!2559617 () Bool)

(assert (=> b!2559617 (= e!1616604 (Cons!29578 (h!34998 (ite c!410850 call!163634 call!163637)) (++!7270 (t!211377 (ite c!410850 call!163634 call!163637)) (ite c!410850 call!163637 call!163636))))))

(declare-fun b!2559619 () Bool)

(assert (=> b!2559619 (= e!1616605 (or (not (= (ite c!410850 call!163637 call!163636) Nil!29578)) (= lt!904575 (ite c!410850 call!163634 call!163637))))))

(assert (= (and d!725228 c!411115) b!2559616))

(assert (= (and d!725228 (not c!411115)) b!2559617))

(assert (= (and d!725228 res!1077751) b!2559618))

(assert (= (and b!2559618 res!1077750) b!2559619))

(declare-fun m!2900286 () Bool)

(assert (=> d!725228 m!2900286))

(declare-fun m!2900289 () Bool)

(assert (=> d!725228 m!2900289))

(declare-fun m!2900291 () Bool)

(assert (=> d!725228 m!2900291))

(declare-fun m!2900293 () Bool)

(assert (=> b!2559618 m!2900293))

(declare-fun m!2900296 () Bool)

(assert (=> b!2559618 m!2900296))

(declare-fun m!2900299 () Bool)

(assert (=> b!2559618 m!2900299))

(declare-fun m!2900301 () Bool)

(assert (=> b!2559617 m!2900301))

(assert (=> bm!163631 d!725228))

(declare-fun bm!163828 () Bool)

(declare-fun call!163833 () Bool)

(declare-fun c!411117 () Bool)

(assert (=> bm!163828 (= call!163833 (validRegex!3239 (ite c!411117 (regTwo!15739 lt!904437) (regOne!15738 lt!904437))))))

(declare-fun b!2559620 () Bool)

(declare-fun e!1616606 () Bool)

(declare-fun e!1616609 () Bool)

(assert (=> b!2559620 (= e!1616606 e!1616609)))

(declare-fun c!411116 () Bool)

(assert (=> b!2559620 (= c!411116 ((_ is Star!7613) lt!904437))))

(declare-fun b!2559621 () Bool)

(declare-fun e!1616608 () Bool)

(declare-fun call!163834 () Bool)

(assert (=> b!2559621 (= e!1616608 call!163834)))

(declare-fun b!2559622 () Bool)

(declare-fun res!1077755 () Bool)

(declare-fun e!1616611 () Bool)

(assert (=> b!2559622 (=> (not res!1077755) (not e!1616611))))

(assert (=> b!2559622 (= res!1077755 call!163834)))

(declare-fun e!1616607 () Bool)

(assert (=> b!2559622 (= e!1616607 e!1616611)))

(declare-fun b!2559623 () Bool)

(assert (=> b!2559623 (= e!1616609 e!1616607)))

(assert (=> b!2559623 (= c!411117 ((_ is Union!7613) lt!904437))))

(declare-fun b!2559624 () Bool)

(declare-fun e!1616612 () Bool)

(assert (=> b!2559624 (= e!1616612 e!1616608)))

(declare-fun res!1077756 () Bool)

(assert (=> b!2559624 (=> (not res!1077756) (not e!1616608))))

(assert (=> b!2559624 (= res!1077756 call!163833)))

(declare-fun b!2559625 () Bool)

(declare-fun res!1077753 () Bool)

(assert (=> b!2559625 (=> res!1077753 e!1616612)))

(assert (=> b!2559625 (= res!1077753 (not ((_ is Concat!12309) lt!904437)))))

(assert (=> b!2559625 (= e!1616607 e!1616612)))

(declare-fun b!2559626 () Bool)

(declare-fun e!1616610 () Bool)

(declare-fun call!163835 () Bool)

(assert (=> b!2559626 (= e!1616610 call!163835)))

(declare-fun b!2559627 () Bool)

(assert (=> b!2559627 (= e!1616611 call!163833)))

(declare-fun bm!163829 () Bool)

(assert (=> bm!163829 (= call!163835 (validRegex!3239 (ite c!411116 (reg!7942 lt!904437) (ite c!411117 (regOne!15739 lt!904437) (regTwo!15738 lt!904437)))))))

(declare-fun d!725230 () Bool)

(declare-fun res!1077754 () Bool)

(assert (=> d!725230 (=> res!1077754 e!1616606)))

(assert (=> d!725230 (= res!1077754 ((_ is ElementMatch!7613) lt!904437))))

(assert (=> d!725230 (= (validRegex!3239 lt!904437) e!1616606)))

(declare-fun bm!163830 () Bool)

(assert (=> bm!163830 (= call!163834 call!163835)))

(declare-fun b!2559628 () Bool)

(assert (=> b!2559628 (= e!1616609 e!1616610)))

(declare-fun res!1077752 () Bool)

(assert (=> b!2559628 (= res!1077752 (not (nullable!2530 (reg!7942 lt!904437))))))

(assert (=> b!2559628 (=> (not res!1077752) (not e!1616610))))

(assert (= (and d!725230 (not res!1077754)) b!2559620))

(assert (= (and b!2559620 c!411116) b!2559628))

(assert (= (and b!2559620 (not c!411116)) b!2559623))

(assert (= (and b!2559628 res!1077752) b!2559626))

(assert (= (and b!2559623 c!411117) b!2559622))

(assert (= (and b!2559623 (not c!411117)) b!2559625))

(assert (= (and b!2559622 res!1077755) b!2559627))

(assert (= (and b!2559625 (not res!1077753)) b!2559624))

(assert (= (and b!2559624 res!1077756) b!2559621))

(assert (= (or b!2559622 b!2559621) bm!163830))

(assert (= (or b!2559627 b!2559624) bm!163828))

(assert (= (or b!2559626 bm!163830) bm!163829))

(declare-fun m!2900307 () Bool)

(assert (=> bm!163828 m!2900307))

(declare-fun m!2900309 () Bool)

(assert (=> bm!163829 m!2900309))

(declare-fun m!2900311 () Bool)

(assert (=> b!2559628 m!2900311))

(assert (=> d!724828 d!725230))

(declare-fun call!163840 () Bool)

(declare-fun bm!163835 () Bool)

(declare-fun c!411124 () Bool)

(assert (=> bm!163835 (= call!163840 (validRegex!3239 (ite c!411124 (regTwo!15739 (derivativeStep!2182 r!27340 c!14016)) (regOne!15738 (derivativeStep!2182 r!27340 c!14016)))))))

(declare-fun b!2559639 () Bool)

(declare-fun e!1616618 () Bool)

(declare-fun e!1616621 () Bool)

(assert (=> b!2559639 (= e!1616618 e!1616621)))

(declare-fun c!411123 () Bool)

(assert (=> b!2559639 (= c!411123 ((_ is Star!7613) (derivativeStep!2182 r!27340 c!14016)))))

(declare-fun b!2559640 () Bool)

(declare-fun e!1616620 () Bool)

(declare-fun call!163841 () Bool)

(assert (=> b!2559640 (= e!1616620 call!163841)))

(declare-fun b!2559641 () Bool)

(declare-fun res!1077760 () Bool)

(declare-fun e!1616623 () Bool)

(assert (=> b!2559641 (=> (not res!1077760) (not e!1616623))))

(assert (=> b!2559641 (= res!1077760 call!163841)))

(declare-fun e!1616619 () Bool)

(assert (=> b!2559641 (= e!1616619 e!1616623)))

(declare-fun b!2559642 () Bool)

(assert (=> b!2559642 (= e!1616621 e!1616619)))

(assert (=> b!2559642 (= c!411124 ((_ is Union!7613) (derivativeStep!2182 r!27340 c!14016)))))

(declare-fun b!2559643 () Bool)

(declare-fun e!1616624 () Bool)

(assert (=> b!2559643 (= e!1616624 e!1616620)))

(declare-fun res!1077761 () Bool)

(assert (=> b!2559643 (=> (not res!1077761) (not e!1616620))))

(assert (=> b!2559643 (= res!1077761 call!163840)))

(declare-fun b!2559644 () Bool)

(declare-fun res!1077758 () Bool)

(assert (=> b!2559644 (=> res!1077758 e!1616624)))

(assert (=> b!2559644 (= res!1077758 (not ((_ is Concat!12309) (derivativeStep!2182 r!27340 c!14016))))))

(assert (=> b!2559644 (= e!1616619 e!1616624)))

(declare-fun b!2559645 () Bool)

(declare-fun e!1616622 () Bool)

(declare-fun call!163842 () Bool)

(assert (=> b!2559645 (= e!1616622 call!163842)))

(declare-fun b!2559646 () Bool)

(assert (=> b!2559646 (= e!1616623 call!163840)))

(declare-fun bm!163836 () Bool)

(assert (=> bm!163836 (= call!163842 (validRegex!3239 (ite c!411123 (reg!7942 (derivativeStep!2182 r!27340 c!14016)) (ite c!411124 (regOne!15739 (derivativeStep!2182 r!27340 c!14016)) (regTwo!15738 (derivativeStep!2182 r!27340 c!14016))))))))

(declare-fun d!725234 () Bool)

(declare-fun res!1077759 () Bool)

(assert (=> d!725234 (=> res!1077759 e!1616618)))

(assert (=> d!725234 (= res!1077759 ((_ is ElementMatch!7613) (derivativeStep!2182 r!27340 c!14016)))))

(assert (=> d!725234 (= (validRegex!3239 (derivativeStep!2182 r!27340 c!14016)) e!1616618)))

(declare-fun bm!163837 () Bool)

(assert (=> bm!163837 (= call!163841 call!163842)))

(declare-fun b!2559647 () Bool)

(assert (=> b!2559647 (= e!1616621 e!1616622)))

(declare-fun res!1077757 () Bool)

(assert (=> b!2559647 (= res!1077757 (not (nullable!2530 (reg!7942 (derivativeStep!2182 r!27340 c!14016)))))))

(assert (=> b!2559647 (=> (not res!1077757) (not e!1616622))))

(assert (= (and d!725234 (not res!1077759)) b!2559639))

(assert (= (and b!2559639 c!411123) b!2559647))

(assert (= (and b!2559639 (not c!411123)) b!2559642))

(assert (= (and b!2559647 res!1077757) b!2559645))

(assert (= (and b!2559642 c!411124) b!2559641))

(assert (= (and b!2559642 (not c!411124)) b!2559644))

(assert (= (and b!2559641 res!1077760) b!2559646))

(assert (= (and b!2559644 (not res!1077758)) b!2559643))

(assert (= (and b!2559643 res!1077761) b!2559640))

(assert (= (or b!2559641 b!2559640) bm!163837))

(assert (= (or b!2559646 b!2559643) bm!163835))

(assert (= (or b!2559645 bm!163837) bm!163836))

(declare-fun m!2900319 () Bool)

(assert (=> bm!163835 m!2900319))

(declare-fun m!2900321 () Bool)

(assert (=> bm!163836 m!2900321))

(declare-fun m!2900323 () Bool)

(assert (=> b!2559647 m!2900323))

(assert (=> d!724828 d!725234))

(assert (=> d!724926 d!725090))

(declare-fun bm!163841 () Bool)

(declare-fun call!163846 () Bool)

(declare-fun c!411128 () Bool)

(assert (=> bm!163841 (= call!163846 (validRegex!3239 (ite c!411128 (regTwo!15739 lt!904414) (regOne!15738 lt!904414))))))

(declare-fun b!2559657 () Bool)

(declare-fun e!1616632 () Bool)

(declare-fun e!1616635 () Bool)

(assert (=> b!2559657 (= e!1616632 e!1616635)))

(declare-fun c!411127 () Bool)

(assert (=> b!2559657 (= c!411127 ((_ is Star!7613) lt!904414))))

(declare-fun b!2559658 () Bool)

(declare-fun e!1616634 () Bool)

(declare-fun call!163847 () Bool)

(assert (=> b!2559658 (= e!1616634 call!163847)))

(declare-fun b!2559659 () Bool)

(declare-fun res!1077770 () Bool)

(declare-fun e!1616637 () Bool)

(assert (=> b!2559659 (=> (not res!1077770) (not e!1616637))))

(assert (=> b!2559659 (= res!1077770 call!163847)))

(declare-fun e!1616633 () Bool)

(assert (=> b!2559659 (= e!1616633 e!1616637)))

(declare-fun b!2559660 () Bool)

(assert (=> b!2559660 (= e!1616635 e!1616633)))

(assert (=> b!2559660 (= c!411128 ((_ is Union!7613) lt!904414))))

(declare-fun b!2559661 () Bool)

(declare-fun e!1616638 () Bool)

(assert (=> b!2559661 (= e!1616638 e!1616634)))

(declare-fun res!1077771 () Bool)

(assert (=> b!2559661 (=> (not res!1077771) (not e!1616634))))

(assert (=> b!2559661 (= res!1077771 call!163846)))

(declare-fun b!2559662 () Bool)

(declare-fun res!1077768 () Bool)

(assert (=> b!2559662 (=> res!1077768 e!1616638)))

(assert (=> b!2559662 (= res!1077768 (not ((_ is Concat!12309) lt!904414)))))

(assert (=> b!2559662 (= e!1616633 e!1616638)))

(declare-fun b!2559663 () Bool)

(declare-fun e!1616636 () Bool)

(declare-fun call!163848 () Bool)

(assert (=> b!2559663 (= e!1616636 call!163848)))

(declare-fun b!2559664 () Bool)

(assert (=> b!2559664 (= e!1616637 call!163846)))

(declare-fun bm!163842 () Bool)

(assert (=> bm!163842 (= call!163848 (validRegex!3239 (ite c!411127 (reg!7942 lt!904414) (ite c!411128 (regOne!15739 lt!904414) (regTwo!15738 lt!904414)))))))

(declare-fun d!725240 () Bool)

(declare-fun res!1077769 () Bool)

(assert (=> d!725240 (=> res!1077769 e!1616632)))

(assert (=> d!725240 (= res!1077769 ((_ is ElementMatch!7613) lt!904414))))

(assert (=> d!725240 (= (validRegex!3239 lt!904414) e!1616632)))

(declare-fun bm!163843 () Bool)

(assert (=> bm!163843 (= call!163847 call!163848)))

(declare-fun b!2559665 () Bool)

(assert (=> b!2559665 (= e!1616635 e!1616636)))

(declare-fun res!1077767 () Bool)

(assert (=> b!2559665 (= res!1077767 (not (nullable!2530 (reg!7942 lt!904414))))))

(assert (=> b!2559665 (=> (not res!1077767) (not e!1616636))))

(assert (= (and d!725240 (not res!1077769)) b!2559657))

(assert (= (and b!2559657 c!411127) b!2559665))

(assert (= (and b!2559657 (not c!411127)) b!2559660))

(assert (= (and b!2559665 res!1077767) b!2559663))

(assert (= (and b!2559660 c!411128) b!2559659))

(assert (= (and b!2559660 (not c!411128)) b!2559662))

(assert (= (and b!2559659 res!1077770) b!2559664))

(assert (= (and b!2559662 (not res!1077768)) b!2559661))

(assert (= (and b!2559661 res!1077771) b!2559658))

(assert (= (or b!2559659 b!2559658) bm!163843))

(assert (= (or b!2559664 b!2559661) bm!163841))

(assert (= (or b!2559663 bm!163843) bm!163842))

(declare-fun m!2900333 () Bool)

(assert (=> bm!163841 m!2900333))

(declare-fun m!2900335 () Bool)

(assert (=> bm!163842 m!2900335))

(declare-fun m!2900337 () Bool)

(assert (=> b!2559665 m!2900337))

(assert (=> d!724926 d!725240))

(assert (=> b!2558234 d!725152))

(assert (=> b!2558234 d!725154))

(assert (=> b!2558277 d!725074))

(assert (=> b!2558768 d!725152))

(assert (=> b!2558768 d!725154))

(declare-fun d!725246 () Bool)

(assert (=> d!725246 (= (nullable!2530 lt!904411) (nullableFct!755 lt!904411))))

(declare-fun bs!469796 () Bool)

(assert (= bs!469796 d!725246))

(declare-fun m!2900339 () Bool)

(assert (=> bs!469796 m!2900339))

(assert (=> b!2558246 d!725246))

(declare-fun d!725248 () Bool)

(assert (=> d!725248 (= (nullable!2530 lt!904421) (nullableFct!755 lt!904421))))

(declare-fun bs!469797 () Bool)

(assert (= bs!469797 d!725248))

(declare-fun m!2900341 () Bool)

(assert (=> bs!469797 m!2900341))

(assert (=> b!2558780 d!725248))

(assert (=> b!2558795 d!725140))

(declare-fun bm!163849 () Bool)

(declare-fun call!163854 () Bool)

(declare-fun c!411135 () Bool)

(assert (=> bm!163849 (= call!163854 (validRegex!3239 (ite c!411135 (regTwo!15739 lt!904411) (regOne!15738 lt!904411))))))

(declare-fun b!2559676 () Bool)

(declare-fun e!1616644 () Bool)

(declare-fun e!1616647 () Bool)

(assert (=> b!2559676 (= e!1616644 e!1616647)))

(declare-fun c!411134 () Bool)

(assert (=> b!2559676 (= c!411134 ((_ is Star!7613) lt!904411))))

(declare-fun b!2559677 () Bool)

(declare-fun e!1616646 () Bool)

(declare-fun call!163855 () Bool)

(assert (=> b!2559677 (= e!1616646 call!163855)))

(declare-fun b!2559678 () Bool)

(declare-fun res!1077775 () Bool)

(declare-fun e!1616649 () Bool)

(assert (=> b!2559678 (=> (not res!1077775) (not e!1616649))))

(assert (=> b!2559678 (= res!1077775 call!163855)))

(declare-fun e!1616645 () Bool)

(assert (=> b!2559678 (= e!1616645 e!1616649)))

(declare-fun b!2559679 () Bool)

(assert (=> b!2559679 (= e!1616647 e!1616645)))

(assert (=> b!2559679 (= c!411135 ((_ is Union!7613) lt!904411))))

(declare-fun b!2559680 () Bool)

(declare-fun e!1616650 () Bool)

(assert (=> b!2559680 (= e!1616650 e!1616646)))

(declare-fun res!1077776 () Bool)

(assert (=> b!2559680 (=> (not res!1077776) (not e!1616646))))

(assert (=> b!2559680 (= res!1077776 call!163854)))

(declare-fun b!2559681 () Bool)

(declare-fun res!1077773 () Bool)

(assert (=> b!2559681 (=> res!1077773 e!1616650)))

(assert (=> b!2559681 (= res!1077773 (not ((_ is Concat!12309) lt!904411)))))

(assert (=> b!2559681 (= e!1616645 e!1616650)))

(declare-fun b!2559682 () Bool)

(declare-fun e!1616648 () Bool)

(declare-fun call!163856 () Bool)

(assert (=> b!2559682 (= e!1616648 call!163856)))

(declare-fun b!2559683 () Bool)

(assert (=> b!2559683 (= e!1616649 call!163854)))

(declare-fun bm!163850 () Bool)

(assert (=> bm!163850 (= call!163856 (validRegex!3239 (ite c!411134 (reg!7942 lt!904411) (ite c!411135 (regOne!15739 lt!904411) (regTwo!15738 lt!904411)))))))

(declare-fun d!725250 () Bool)

(declare-fun res!1077774 () Bool)

(assert (=> d!725250 (=> res!1077774 e!1616644)))

(assert (=> d!725250 (= res!1077774 ((_ is ElementMatch!7613) lt!904411))))

(assert (=> d!725250 (= (validRegex!3239 lt!904411) e!1616644)))

(declare-fun bm!163851 () Bool)

(assert (=> bm!163851 (= call!163855 call!163856)))

(declare-fun b!2559684 () Bool)

(assert (=> b!2559684 (= e!1616647 e!1616648)))

(declare-fun res!1077772 () Bool)

(assert (=> b!2559684 (= res!1077772 (not (nullable!2530 (reg!7942 lt!904411))))))

(assert (=> b!2559684 (=> (not res!1077772) (not e!1616648))))

(assert (= (and d!725250 (not res!1077774)) b!2559676))

(assert (= (and b!2559676 c!411134) b!2559684))

(assert (= (and b!2559676 (not c!411134)) b!2559679))

(assert (= (and b!2559684 res!1077772) b!2559682))

(assert (= (and b!2559679 c!411135) b!2559678))

(assert (= (and b!2559679 (not c!411135)) b!2559681))

(assert (= (and b!2559678 res!1077775) b!2559683))

(assert (= (and b!2559681 (not res!1077773)) b!2559680))

(assert (= (and b!2559680 res!1077776) b!2559677))

(assert (= (or b!2559678 b!2559677) bm!163851))

(assert (= (or b!2559683 b!2559680) bm!163849))

(assert (= (or b!2559682 bm!163851) bm!163850))

(declare-fun m!2900345 () Bool)

(assert (=> bm!163849 m!2900345))

(declare-fun m!2900347 () Bool)

(assert (=> bm!163850 m!2900347))

(declare-fun m!2900349 () Bool)

(assert (=> b!2559684 m!2900349))

(assert (=> b!2558765 d!725250))

(declare-fun bm!163852 () Bool)

(declare-fun call!163859 () Regex!7613)

(declare-fun call!163860 () Regex!7613)

(assert (=> bm!163852 (= call!163859 call!163860)))

(declare-fun b!2559685 () Bool)

(declare-fun e!1616651 () Regex!7613)

(assert (=> b!2559685 (= e!1616651 EmptyLang!7613)))

(declare-fun b!2559686 () Bool)

(declare-fun c!411140 () Bool)

(assert (=> b!2559686 (= c!411140 ((_ is Union!7613) (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340)))))))

(declare-fun e!1616653 () Regex!7613)

(declare-fun e!1616655 () Regex!7613)

(assert (=> b!2559686 (= e!1616653 e!1616655)))

(declare-fun call!163857 () Regex!7613)

(declare-fun bm!163853 () Bool)

(assert (=> bm!163853 (= call!163857 (derivativeStep!2182 (ite c!411140 (regOne!15739 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340)))) (regTwo!15738 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340))))) c!14016))))

(declare-fun b!2559687 () Bool)

(declare-fun c!411138 () Bool)

(assert (=> b!2559687 (= c!411138 (nullable!2530 (regOne!15738 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340))))))))

(declare-fun e!1616654 () Regex!7613)

(declare-fun e!1616652 () Regex!7613)

(assert (=> b!2559687 (= e!1616654 e!1616652)))

(declare-fun b!2559688 () Bool)

(assert (=> b!2559688 (= e!1616654 (Concat!12309 call!163859 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340)))))))

(declare-fun bm!163854 () Bool)

(declare-fun call!163858 () Regex!7613)

(assert (=> bm!163854 (= call!163858 call!163859)))

(declare-fun d!725252 () Bool)

(declare-fun lt!904577 () Regex!7613)

(assert (=> d!725252 (validRegex!3239 lt!904577)))

(assert (=> d!725252 (= lt!904577 e!1616651)))

(declare-fun c!411137 () Bool)

(assert (=> d!725252 (= c!411137 (or ((_ is EmptyExpr!7613) (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340)))) ((_ is EmptyLang!7613) (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340))))))))

(assert (=> d!725252 (validRegex!3239 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340))))))

(assert (=> d!725252 (= (derivativeStep!2182 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340))) c!14016) lt!904577)))

(declare-fun b!2559689 () Bool)

(assert (=> b!2559689 (= e!1616655 (Union!7613 call!163857 call!163860))))

(declare-fun b!2559690 () Bool)

(assert (=> b!2559690 (= e!1616652 (Union!7613 (Concat!12309 call!163858 (regTwo!15738 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340))))) EmptyLang!7613))))

(declare-fun b!2559691 () Bool)

(assert (=> b!2559691 (= e!1616652 (Union!7613 (Concat!12309 call!163858 (regTwo!15738 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340))))) call!163857))))

(declare-fun b!2559692 () Bool)

(assert (=> b!2559692 (= e!1616651 e!1616653)))

(declare-fun c!411139 () Bool)

(assert (=> b!2559692 (= c!411139 ((_ is ElementMatch!7613) (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340)))))))

(declare-fun b!2559693 () Bool)

(assert (=> b!2559693 (= e!1616655 e!1616654)))

(declare-fun c!411136 () Bool)

(assert (=> b!2559693 (= c!411136 ((_ is Star!7613) (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340)))))))

(declare-fun bm!163855 () Bool)

(assert (=> bm!163855 (= call!163860 (derivativeStep!2182 (ite c!411140 (regTwo!15739 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340)))) (ite c!411136 (reg!7942 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340)))) (regOne!15738 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340)))))) c!14016))))

(declare-fun b!2559694 () Bool)

(assert (=> b!2559694 (= e!1616653 (ite (= c!14016 (c!410685 (ite c!410759 (regTwo!15739 r!27340) (ite c!410755 (reg!7942 r!27340) (regOne!15738 r!27340))))) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725252 c!411137) b!2559685))

(assert (= (and d!725252 (not c!411137)) b!2559692))

(assert (= (and b!2559692 c!411139) b!2559694))

(assert (= (and b!2559692 (not c!411139)) b!2559686))

(assert (= (and b!2559686 c!411140) b!2559689))

(assert (= (and b!2559686 (not c!411140)) b!2559693))

(assert (= (and b!2559693 c!411136) b!2559688))

(assert (= (and b!2559693 (not c!411136)) b!2559687))

(assert (= (and b!2559687 c!411138) b!2559691))

(assert (= (and b!2559687 (not c!411138)) b!2559690))

(assert (= (or b!2559691 b!2559690) bm!163854))

(assert (= (or b!2559688 bm!163854) bm!163852))

(assert (= (or b!2559689 bm!163852) bm!163855))

(assert (= (or b!2559689 b!2559691) bm!163853))

(declare-fun m!2900365 () Bool)

(assert (=> bm!163853 m!2900365))

(declare-fun m!2900367 () Bool)

(assert (=> b!2559687 m!2900367))

(declare-fun m!2900369 () Bool)

(assert (=> d!725252 m!2900369))

(declare-fun m!2900371 () Bool)

(assert (=> d!725252 m!2900371))

(declare-fun m!2900373 () Bool)

(assert (=> bm!163855 m!2900373))

(assert (=> bm!163562 d!725252))

(declare-fun bm!163863 () Bool)

(declare-fun call!163870 () Regex!7613)

(declare-fun call!163871 () Regex!7613)

(assert (=> bm!163863 (= call!163870 call!163871)))

(declare-fun b!2559712 () Bool)

(declare-fun e!1616667 () Regex!7613)

(assert (=> b!2559712 (= e!1616667 EmptyLang!7613)))

(declare-fun b!2559713 () Bool)

(declare-fun c!411151 () Bool)

(assert (=> b!2559713 (= c!411151 ((_ is Union!7613) (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340)))))))

(declare-fun e!1616669 () Regex!7613)

(declare-fun e!1616671 () Regex!7613)

(assert (=> b!2559713 (= e!1616669 e!1616671)))

(declare-fun call!163868 () Regex!7613)

(declare-fun bm!163864 () Bool)

(assert (=> bm!163864 (= call!163868 (derivativeStep!2182 (ite c!411151 (regOne!15739 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340)))) (regTwo!15738 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))) c!14016))))

(declare-fun b!2559714 () Bool)

(declare-fun c!411149 () Bool)

(assert (=> b!2559714 (= c!411149 (nullable!2530 (regOne!15738 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))))))

(declare-fun e!1616670 () Regex!7613)

(declare-fun e!1616668 () Regex!7613)

(assert (=> b!2559714 (= e!1616670 e!1616668)))

(declare-fun b!2559715 () Bool)

(assert (=> b!2559715 (= e!1616670 (Concat!12309 call!163870 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340)))))))

(declare-fun bm!163865 () Bool)

(declare-fun call!163869 () Regex!7613)

(assert (=> bm!163865 (= call!163869 call!163870)))

(declare-fun d!725262 () Bool)

(declare-fun lt!904578 () Regex!7613)

(assert (=> d!725262 (validRegex!3239 lt!904578)))

(assert (=> d!725262 (= lt!904578 e!1616667)))

(declare-fun c!411148 () Bool)

(assert (=> d!725262 (= c!411148 (or ((_ is EmptyExpr!7613) (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340)))) ((_ is EmptyLang!7613) (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))))))

(assert (=> d!725262 (validRegex!3239 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))))

(assert (=> d!725262 (= (derivativeStep!2182 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))) c!14016) lt!904578)))

(declare-fun b!2559716 () Bool)

(assert (=> b!2559716 (= e!1616671 (Union!7613 call!163868 call!163871))))

(declare-fun b!2559717 () Bool)

(assert (=> b!2559717 (= e!1616668 (Union!7613 (Concat!12309 call!163869 (regTwo!15738 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))) EmptyLang!7613))))

(declare-fun b!2559718 () Bool)

(assert (=> b!2559718 (= e!1616668 (Union!7613 (Concat!12309 call!163869 (regTwo!15738 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))) call!163868))))

(declare-fun b!2559719 () Bool)

(assert (=> b!2559719 (= e!1616667 e!1616669)))

(declare-fun c!411150 () Bool)

(assert (=> b!2559719 (= c!411150 ((_ is ElementMatch!7613) (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340)))))))

(declare-fun b!2559720 () Bool)

(assert (=> b!2559720 (= e!1616671 e!1616670)))

(declare-fun c!411147 () Bool)

(assert (=> b!2559720 (= c!411147 ((_ is Star!7613) (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340)))))))

(declare-fun bm!163866 () Bool)

(assert (=> bm!163866 (= call!163871 (derivativeStep!2182 (ite c!411151 (regTwo!15739 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340)))) (ite c!411147 (reg!7942 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340)))) (regOne!15738 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340)))))) c!14016))))

(declare-fun b!2559721 () Bool)

(assert (=> b!2559721 (= e!1616669 (ite (= c!14016 (c!410685 (ite c!410872 (regOne!15739 (regOne!15738 r!27340)) (regTwo!15738 (regOne!15738 r!27340))))) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725262 c!411148) b!2559712))

(assert (= (and d!725262 (not c!411148)) b!2559719))

(assert (= (and b!2559719 c!411150) b!2559721))

(assert (= (and b!2559719 (not c!411150)) b!2559713))

(assert (= (and b!2559713 c!411151) b!2559716))

(assert (= (and b!2559713 (not c!411151)) b!2559720))

(assert (= (and b!2559720 c!411147) b!2559715))

(assert (= (and b!2559720 (not c!411147)) b!2559714))

(assert (= (and b!2559714 c!411149) b!2559718))

(assert (= (and b!2559714 (not c!411149)) b!2559717))

(assert (= (or b!2559718 b!2559717) bm!163865))

(assert (= (or b!2559715 bm!163865) bm!163863))

(assert (= (or b!2559716 bm!163863) bm!163866))

(assert (= (or b!2559716 b!2559718) bm!163864))

(declare-fun m!2900381 () Bool)

(assert (=> bm!163864 m!2900381))

(declare-fun m!2900385 () Bool)

(assert (=> b!2559714 m!2900385))

(declare-fun m!2900387 () Bool)

(assert (=> d!725262 m!2900387))

(declare-fun m!2900389 () Bool)

(assert (=> d!725262 m!2900389))

(declare-fun m!2900391 () Bool)

(assert (=> bm!163866 m!2900391))

(assert (=> bm!163642 d!725262))

(declare-fun d!725266 () Bool)

(declare-fun lt!904579 () Bool)

(assert (=> d!725266 (= lt!904579 (select (content!4076 (t!211377 (firstChars!96 r!27340))) c!14016))))

(declare-fun e!1616673 () Bool)

(assert (=> d!725266 (= lt!904579 e!1616673)))

(declare-fun res!1077783 () Bool)

(assert (=> d!725266 (=> (not res!1077783) (not e!1616673))))

(assert (=> d!725266 (= res!1077783 ((_ is Cons!29578) (t!211377 (firstChars!96 r!27340))))))

(assert (=> d!725266 (= (contains!5305 (t!211377 (firstChars!96 r!27340)) c!14016) lt!904579)))

(declare-fun b!2559722 () Bool)

(declare-fun e!1616672 () Bool)

(assert (=> b!2559722 (= e!1616673 e!1616672)))

(declare-fun res!1077782 () Bool)

(assert (=> b!2559722 (=> res!1077782 e!1616672)))

(assert (=> b!2559722 (= res!1077782 (= (h!34998 (t!211377 (firstChars!96 r!27340))) c!14016))))

(declare-fun b!2559723 () Bool)

(assert (=> b!2559723 (= e!1616672 (contains!5305 (t!211377 (t!211377 (firstChars!96 r!27340))) c!14016))))

(assert (= (and d!725266 res!1077783) b!2559722))

(assert (= (and b!2559722 (not res!1077782)) b!2559723))

(assert (=> d!725266 m!2900141))

(declare-fun m!2900393 () Bool)

(assert (=> d!725266 m!2900393))

(declare-fun m!2900395 () Bool)

(assert (=> b!2559723 m!2900395))

(assert (=> b!2558734 d!725266))

(assert (=> b!2558400 d!724942))

(assert (=> bm!163531 d!725184))

(declare-fun b!2559738 () Bool)

(declare-fun e!1616681 () List!29678)

(assert (=> b!2559738 (= e!1616681 (_2!17336 (get!9299 lt!904517)))))

(declare-fun d!725270 () Bool)

(declare-fun e!1616682 () Bool)

(assert (=> d!725270 e!1616682))

(declare-fun res!1077793 () Bool)

(assert (=> d!725270 (=> (not res!1077793) (not e!1616682))))

(declare-fun lt!904581 () List!29678)

(assert (=> d!725270 (= res!1077793 (= (content!4076 lt!904581) ((_ map or) (content!4076 (_1!17336 (get!9299 lt!904517))) (content!4076 (_2!17336 (get!9299 lt!904517))))))))

(assert (=> d!725270 (= lt!904581 e!1616681)))

(declare-fun c!411155 () Bool)

(assert (=> d!725270 (= c!411155 ((_ is Nil!29578) (_1!17336 (get!9299 lt!904517))))))

(assert (=> d!725270 (= (++!7270 (_1!17336 (get!9299 lt!904517)) (_2!17336 (get!9299 lt!904517))) lt!904581)))

(declare-fun b!2559740 () Bool)

(declare-fun res!1077792 () Bool)

(assert (=> b!2559740 (=> (not res!1077792) (not e!1616682))))

(assert (=> b!2559740 (= res!1077792 (= (size!22956 lt!904581) (+ (size!22956 (_1!17336 (get!9299 lt!904517))) (size!22956 (_2!17336 (get!9299 lt!904517))))))))

(declare-fun b!2559739 () Bool)

(assert (=> b!2559739 (= e!1616681 (Cons!29578 (h!34998 (_1!17336 (get!9299 lt!904517))) (++!7270 (t!211377 (_1!17336 (get!9299 lt!904517))) (_2!17336 (get!9299 lt!904517)))))))

(declare-fun b!2559741 () Bool)

(assert (=> b!2559741 (= e!1616682 (or (not (= (_2!17336 (get!9299 lt!904517)) Nil!29578)) (= lt!904581 (_1!17336 (get!9299 lt!904517)))))))

(assert (= (and d!725270 c!411155) b!2559738))

(assert (= (and d!725270 (not c!411155)) b!2559739))

(assert (= (and d!725270 res!1077793) b!2559740))

(assert (= (and b!2559740 res!1077792) b!2559741))

(declare-fun m!2900397 () Bool)

(assert (=> d!725270 m!2900397))

(declare-fun m!2900399 () Bool)

(assert (=> d!725270 m!2900399))

(declare-fun m!2900401 () Bool)

(assert (=> d!725270 m!2900401))

(declare-fun m!2900403 () Bool)

(assert (=> b!2559740 m!2900403))

(declare-fun m!2900405 () Bool)

(assert (=> b!2559740 m!2900405))

(declare-fun m!2900407 () Bool)

(assert (=> b!2559740 m!2900407))

(declare-fun m!2900409 () Bool)

(assert (=> b!2559739 m!2900409))

(assert (=> b!2558843 d!725270))

(assert (=> b!2558843 d!725176))

(assert (=> b!2558791 d!725152))

(assert (=> b!2558791 d!725154))

(assert (=> bm!163634 d!725206))

(assert (=> d!724918 d!724926))

(declare-fun d!725272 () Bool)

(declare-fun e!1616687 () Bool)

(assert (=> d!725272 e!1616687))

(declare-fun res!1077796 () Bool)

(assert (=> d!725272 (=> res!1077796 e!1616687)))

(assert (=> d!725272 (= res!1077796 (matchR!3558 lt!904414 tl!4068))))

(assert (=> d!725272 true))

(declare-fun _$116!343 () Unit!43411)

(assert (=> d!725272 (= (choose!15102 lt!904414 lt!904411 tl!4068) _$116!343)))

(declare-fun b!2559748 () Bool)

(assert (=> b!2559748 (= e!1616687 (matchR!3558 lt!904411 tl!4068))))

(assert (= (and d!725272 (not res!1077796)) b!2559748))

(assert (=> d!725272 m!2899099))

(assert (=> b!2559748 m!2899159))

(assert (=> d!724918 d!725272))

(assert (=> d!724918 d!725240))

(declare-fun b!2559749 () Bool)

(declare-fun e!1616693 () Bool)

(declare-fun call!163873 () Bool)

(assert (=> b!2559749 (= e!1616693 call!163873)))

(declare-fun b!2559750 () Bool)

(declare-fun e!1616689 () Bool)

(declare-fun call!163874 () Bool)

(assert (=> b!2559750 (= e!1616689 call!163874)))

(declare-fun b!2559751 () Bool)

(declare-fun e!1616692 () Bool)

(declare-fun e!1616688 () Bool)

(assert (=> b!2559751 (= e!1616692 e!1616688)))

(declare-fun c!411158 () Bool)

(assert (=> b!2559751 (= c!411158 ((_ is Union!7613) (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068)))))

(declare-fun bm!163868 () Bool)

(assert (=> bm!163868 (= call!163874 (nullable!2530 (ite c!411158 (regOne!15739 (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068)) (regTwo!15738 (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2559752 () Bool)

(assert (=> b!2559752 (= e!1616688 e!1616693)))

(declare-fun res!1077798 () Bool)

(assert (=> b!2559752 (= res!1077798 call!163874)))

(assert (=> b!2559752 (=> res!1077798 e!1616693)))

(declare-fun b!2559753 () Bool)

(declare-fun e!1616691 () Bool)

(declare-fun e!1616690 () Bool)

(assert (=> b!2559753 (= e!1616691 e!1616690)))

(declare-fun res!1077799 () Bool)

(assert (=> b!2559753 (=> (not res!1077799) (not e!1616690))))

(assert (=> b!2559753 (= res!1077799 (and (not ((_ is EmptyLang!7613) (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068))) (not ((_ is ElementMatch!7613) (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2559754 () Bool)

(assert (=> b!2559754 (= e!1616688 e!1616689)))

(declare-fun res!1077800 () Bool)

(assert (=> b!2559754 (= res!1077800 call!163873)))

(assert (=> b!2559754 (=> (not res!1077800) (not e!1616689))))

(declare-fun d!725276 () Bool)

(declare-fun res!1077797 () Bool)

(assert (=> d!725276 (=> res!1077797 e!1616691)))

(assert (=> d!725276 (= res!1077797 ((_ is EmptyExpr!7613) (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068)))))

(assert (=> d!725276 (= (nullableFct!755 (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068)) e!1616691)))

(declare-fun bm!163869 () Bool)

(assert (=> bm!163869 (= call!163873 (nullable!2530 (ite c!411158 (regTwo!15739 (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068)) (regOne!15738 (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068)))))))

(declare-fun b!2559755 () Bool)

(assert (=> b!2559755 (= e!1616690 e!1616692)))

(declare-fun res!1077801 () Bool)

(assert (=> b!2559755 (=> res!1077801 e!1616692)))

(assert (=> b!2559755 (= res!1077801 ((_ is Star!7613) (derivative!308 (derivativeStep!2182 r!27340 c!14016) tl!4068)))))

(assert (= (and d!725276 (not res!1077797)) b!2559753))

(assert (= (and b!2559753 res!1077799) b!2559755))

(assert (= (and b!2559755 (not res!1077801)) b!2559751))

(assert (= (and b!2559751 c!411158) b!2559752))

(assert (= (and b!2559751 (not c!411158)) b!2559754))

(assert (= (and b!2559752 (not res!1077798)) b!2559749))

(assert (= (and b!2559754 res!1077800) b!2559750))

(assert (= (or b!2559749 b!2559754) bm!163869))

(assert (= (or b!2559752 b!2559750) bm!163868))

(declare-fun m!2900421 () Bool)

(assert (=> bm!163868 m!2900421))

(declare-fun m!2900423 () Bool)

(assert (=> bm!163869 m!2900423))

(assert (=> d!724826 d!725276))

(assert (=> d!724848 d!725194))

(declare-fun bm!163870 () Bool)

(declare-fun call!163875 () Bool)

(declare-fun c!411162 () Bool)

(assert (=> bm!163870 (= call!163875 (validRegex!3239 (ite c!411162 (regTwo!15739 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340)))))))

(declare-fun b!2559760 () Bool)

(declare-fun e!1616696 () Bool)

(declare-fun e!1616699 () Bool)

(assert (=> b!2559760 (= e!1616696 e!1616699)))

(declare-fun c!411161 () Bool)

(assert (=> b!2559760 (= c!411161 ((_ is Star!7613) (regTwo!15738 r!27340)))))

(declare-fun b!2559761 () Bool)

(declare-fun e!1616698 () Bool)

(declare-fun call!163876 () Bool)

(assert (=> b!2559761 (= e!1616698 call!163876)))

(declare-fun b!2559763 () Bool)

(declare-fun res!1077805 () Bool)

(declare-fun e!1616701 () Bool)

(assert (=> b!2559763 (=> (not res!1077805) (not e!1616701))))

(assert (=> b!2559763 (= res!1077805 call!163876)))

(declare-fun e!1616697 () Bool)

(assert (=> b!2559763 (= e!1616697 e!1616701)))

(declare-fun b!2559765 () Bool)

(assert (=> b!2559765 (= e!1616699 e!1616697)))

(assert (=> b!2559765 (= c!411162 ((_ is Union!7613) (regTwo!15738 r!27340)))))

(declare-fun b!2559766 () Bool)

(declare-fun e!1616702 () Bool)

(assert (=> b!2559766 (= e!1616702 e!1616698)))

(declare-fun res!1077806 () Bool)

(assert (=> b!2559766 (=> (not res!1077806) (not e!1616698))))

(assert (=> b!2559766 (= res!1077806 call!163875)))

(declare-fun b!2559767 () Bool)

(declare-fun res!1077803 () Bool)

(assert (=> b!2559767 (=> res!1077803 e!1616702)))

(assert (=> b!2559767 (= res!1077803 (not ((_ is Concat!12309) (regTwo!15738 r!27340))))))

(assert (=> b!2559767 (= e!1616697 e!1616702)))

(declare-fun b!2559768 () Bool)

(declare-fun e!1616700 () Bool)

(declare-fun call!163877 () Bool)

(assert (=> b!2559768 (= e!1616700 call!163877)))

(declare-fun b!2559769 () Bool)

(assert (=> b!2559769 (= e!1616701 call!163875)))

(declare-fun bm!163871 () Bool)

(assert (=> bm!163871 (= call!163877 (validRegex!3239 (ite c!411161 (reg!7942 (regTwo!15738 r!27340)) (ite c!411162 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340))))))))

(declare-fun d!725280 () Bool)

(declare-fun res!1077804 () Bool)

(assert (=> d!725280 (=> res!1077804 e!1616696)))

(assert (=> d!725280 (= res!1077804 ((_ is ElementMatch!7613) (regTwo!15738 r!27340)))))

(assert (=> d!725280 (= (validRegex!3239 (regTwo!15738 r!27340)) e!1616696)))

(declare-fun bm!163872 () Bool)

(assert (=> bm!163872 (= call!163876 call!163877)))

(declare-fun b!2559770 () Bool)

(assert (=> b!2559770 (= e!1616699 e!1616700)))

(declare-fun res!1077802 () Bool)

(assert (=> b!2559770 (= res!1077802 (not (nullable!2530 (reg!7942 (regTwo!15738 r!27340)))))))

(assert (=> b!2559770 (=> (not res!1077802) (not e!1616700))))

(assert (= (and d!725280 (not res!1077804)) b!2559760))

(assert (= (and b!2559760 c!411161) b!2559770))

(assert (= (and b!2559760 (not c!411161)) b!2559765))

(assert (= (and b!2559770 res!1077802) b!2559768))

(assert (= (and b!2559765 c!411162) b!2559763))

(assert (= (and b!2559765 (not c!411162)) b!2559767))

(assert (= (and b!2559763 res!1077805) b!2559769))

(assert (= (and b!2559767 (not res!1077803)) b!2559766))

(assert (= (and b!2559766 res!1077806) b!2559761))

(assert (= (or b!2559763 b!2559761) bm!163872))

(assert (= (or b!2559769 b!2559766) bm!163870))

(assert (= (or b!2559768 bm!163872) bm!163871))

(declare-fun m!2900427 () Bool)

(assert (=> bm!163870 m!2900427))

(declare-fun m!2900429 () Bool)

(assert (=> bm!163871 m!2900429))

(declare-fun m!2900431 () Bool)

(assert (=> b!2559770 m!2900431))

(assert (=> d!724848 d!725280))

(assert (=> b!2558235 d!725140))

(assert (=> d!724866 d!725206))

(declare-fun bm!163875 () Bool)

(declare-fun call!163880 () Bool)

(declare-fun c!411166 () Bool)

(assert (=> bm!163875 (= call!163880 (validRegex!3239 (ite c!411166 (regTwo!15739 lt!904417) (regOne!15738 lt!904417))))))

(declare-fun b!2559778 () Bool)

(declare-fun e!1616710 () Bool)

(declare-fun e!1616713 () Bool)

(assert (=> b!2559778 (= e!1616710 e!1616713)))

(declare-fun c!411165 () Bool)

(assert (=> b!2559778 (= c!411165 ((_ is Star!7613) lt!904417))))

(declare-fun b!2559779 () Bool)

(declare-fun e!1616712 () Bool)

(declare-fun call!163881 () Bool)

(assert (=> b!2559779 (= e!1616712 call!163881)))

(declare-fun b!2559780 () Bool)

(declare-fun res!1077815 () Bool)

(declare-fun e!1616715 () Bool)

(assert (=> b!2559780 (=> (not res!1077815) (not e!1616715))))

(assert (=> b!2559780 (= res!1077815 call!163881)))

(declare-fun e!1616711 () Bool)

(assert (=> b!2559780 (= e!1616711 e!1616715)))

(declare-fun b!2559781 () Bool)

(assert (=> b!2559781 (= e!1616713 e!1616711)))

(assert (=> b!2559781 (= c!411166 ((_ is Union!7613) lt!904417))))

(declare-fun b!2559782 () Bool)

(declare-fun e!1616716 () Bool)

(assert (=> b!2559782 (= e!1616716 e!1616712)))

(declare-fun res!1077816 () Bool)

(assert (=> b!2559782 (=> (not res!1077816) (not e!1616712))))

(assert (=> b!2559782 (= res!1077816 call!163880)))

(declare-fun b!2559783 () Bool)

(declare-fun res!1077813 () Bool)

(assert (=> b!2559783 (=> res!1077813 e!1616716)))

(assert (=> b!2559783 (= res!1077813 (not ((_ is Concat!12309) lt!904417)))))

(assert (=> b!2559783 (= e!1616711 e!1616716)))

(declare-fun b!2559784 () Bool)

(declare-fun e!1616714 () Bool)

(declare-fun call!163882 () Bool)

(assert (=> b!2559784 (= e!1616714 call!163882)))

(declare-fun b!2559785 () Bool)

(assert (=> b!2559785 (= e!1616715 call!163880)))

(declare-fun bm!163876 () Bool)

(assert (=> bm!163876 (= call!163882 (validRegex!3239 (ite c!411165 (reg!7942 lt!904417) (ite c!411166 (regOne!15739 lt!904417) (regTwo!15738 lt!904417)))))))

(declare-fun d!725286 () Bool)

(declare-fun res!1077814 () Bool)

(assert (=> d!725286 (=> res!1077814 e!1616710)))

(assert (=> d!725286 (= res!1077814 ((_ is ElementMatch!7613) lt!904417))))

(assert (=> d!725286 (= (validRegex!3239 lt!904417) e!1616710)))

(declare-fun bm!163877 () Bool)

(assert (=> bm!163877 (= call!163881 call!163882)))

(declare-fun b!2559786 () Bool)

(assert (=> b!2559786 (= e!1616713 e!1616714)))

(declare-fun res!1077812 () Bool)

(assert (=> b!2559786 (= res!1077812 (not (nullable!2530 (reg!7942 lt!904417))))))

(assert (=> b!2559786 (=> (not res!1077812) (not e!1616714))))

(assert (= (and d!725286 (not res!1077814)) b!2559778))

(assert (= (and b!2559778 c!411165) b!2559786))

(assert (= (and b!2559778 (not c!411165)) b!2559781))

(assert (= (and b!2559786 res!1077812) b!2559784))

(assert (= (and b!2559781 c!411166) b!2559780))

(assert (= (and b!2559781 (not c!411166)) b!2559783))

(assert (= (and b!2559780 res!1077815) b!2559785))

(assert (= (and b!2559783 (not res!1077813)) b!2559782))

(assert (= (and b!2559782 res!1077816) b!2559779))

(assert (= (or b!2559780 b!2559779) bm!163877))

(assert (= (or b!2559785 b!2559782) bm!163875))

(assert (= (or b!2559784 bm!163877) bm!163876))

(declare-fun m!2900439 () Bool)

(assert (=> bm!163875 m!2900439))

(declare-fun m!2900441 () Bool)

(assert (=> bm!163876 m!2900441))

(declare-fun m!2900443 () Bool)

(assert (=> b!2559786 m!2900443))

(assert (=> d!724866 d!725286))

(declare-fun bm!163881 () Bool)

(declare-fun call!163888 () Regex!7613)

(declare-fun call!163889 () Regex!7613)

(assert (=> bm!163881 (= call!163888 call!163889)))

(declare-fun b!2559796 () Bool)

(declare-fun e!1616724 () Regex!7613)

(assert (=> b!2559796 (= e!1616724 EmptyLang!7613)))

(declare-fun c!411173 () Bool)

(declare-fun b!2559797 () Bool)

(assert (=> b!2559797 (= c!411173 ((_ is Union!7613) (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(declare-fun e!1616726 () Regex!7613)

(declare-fun e!1616728 () Regex!7613)

(assert (=> b!2559797 (= e!1616726 e!1616728)))

(declare-fun call!163886 () Regex!7613)

(declare-fun bm!163882 () Bool)

(assert (=> bm!163882 (= call!163886 (derivativeStep!2182 (ite c!411173 (regOne!15739 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) (regTwo!15738 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))) c!14016))))

(declare-fun b!2559798 () Bool)

(declare-fun c!411171 () Bool)

(assert (=> b!2559798 (= c!411171 (nullable!2530 (regOne!15738 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))))

(declare-fun e!1616727 () Regex!7613)

(declare-fun e!1616725 () Regex!7613)

(assert (=> b!2559798 (= e!1616727 e!1616725)))

(declare-fun b!2559799 () Bool)

(assert (=> b!2559799 (= e!1616727 (Concat!12309 call!163888 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(declare-fun bm!163883 () Bool)

(declare-fun call!163887 () Regex!7613)

(assert (=> bm!163883 (= call!163887 call!163888)))

(declare-fun d!725292 () Bool)

(declare-fun lt!904587 () Regex!7613)

(assert (=> d!725292 (validRegex!3239 lt!904587)))

(assert (=> d!725292 (= lt!904587 e!1616724)))

(declare-fun c!411170 () Bool)

(assert (=> d!725292 (= c!411170 (or ((_ is EmptyExpr!7613) (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) ((_ is EmptyLang!7613) (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))))

(assert (=> d!725292 (validRegex!3239 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))

(assert (=> d!725292 (= (derivativeStep!2182 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))) c!14016) lt!904587)))

(declare-fun b!2559800 () Bool)

(assert (=> b!2559800 (= e!1616728 (Union!7613 call!163886 call!163889))))

(declare-fun b!2559801 () Bool)

(assert (=> b!2559801 (= e!1616725 (Union!7613 (Concat!12309 call!163887 (regTwo!15738 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))) EmptyLang!7613))))

(declare-fun b!2559802 () Bool)

(assert (=> b!2559802 (= e!1616725 (Union!7613 (Concat!12309 call!163887 (regTwo!15738 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))) call!163886))))

(declare-fun b!2559803 () Bool)

(assert (=> b!2559803 (= e!1616724 e!1616726)))

(declare-fun c!411172 () Bool)

(assert (=> b!2559803 (= c!411172 ((_ is ElementMatch!7613) (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(declare-fun b!2559804 () Bool)

(assert (=> b!2559804 (= e!1616728 e!1616727)))

(declare-fun c!411169 () Bool)

(assert (=> b!2559804 (= c!411169 ((_ is Star!7613) (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(declare-fun bm!163884 () Bool)

(assert (=> bm!163884 (= call!163889 (derivativeStep!2182 (ite c!411173 (regTwo!15739 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) (ite c!411169 (reg!7942 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) (regOne!15738 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))) c!14016))))

(declare-fun b!2559805 () Bool)

(assert (=> b!2559805 (= e!1616726 (ite (= c!14016 (c!410685 (ite c!410872 (regTwo!15739 (regOne!15738 r!27340)) (ite c!410868 (reg!7942 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725292 c!411170) b!2559796))

(assert (= (and d!725292 (not c!411170)) b!2559803))

(assert (= (and b!2559803 c!411172) b!2559805))

(assert (= (and b!2559803 (not c!411172)) b!2559797))

(assert (= (and b!2559797 c!411173) b!2559800))

(assert (= (and b!2559797 (not c!411173)) b!2559804))

(assert (= (and b!2559804 c!411169) b!2559799))

(assert (= (and b!2559804 (not c!411169)) b!2559798))

(assert (= (and b!2559798 c!411171) b!2559802))

(assert (= (and b!2559798 (not c!411171)) b!2559801))

(assert (= (or b!2559802 b!2559801) bm!163883))

(assert (= (or b!2559799 bm!163883) bm!163881))

(assert (= (or b!2559800 bm!163881) bm!163884))

(assert (= (or b!2559800 b!2559802) bm!163882))

(declare-fun m!2900451 () Bool)

(assert (=> bm!163882 m!2900451))

(declare-fun m!2900453 () Bool)

(assert (=> b!2559798 m!2900453))

(declare-fun m!2900455 () Bool)

(assert (=> d!725292 m!2900455))

(declare-fun m!2900459 () Bool)

(assert (=> d!725292 m!2900459))

(declare-fun m!2900463 () Bool)

(assert (=> bm!163884 m!2900463))

(assert (=> bm!163644 d!725292))

(declare-fun b!2559818 () Bool)

(declare-fun e!1616746 () Bool)

(declare-fun lt!904589 () Bool)

(declare-fun call!163894 () Bool)

(assert (=> b!2559818 (= e!1616746 (= lt!904589 call!163894))))

(declare-fun b!2559820 () Bool)

(declare-fun res!1077836 () Bool)

(declare-fun e!1616736 () Bool)

(assert (=> b!2559820 (=> res!1077836 e!1616736)))

(assert (=> b!2559820 (= res!1077836 (not (isEmpty!17034 (tail!4095 (tail!4095 tl!4068)))))))

(declare-fun b!2559821 () Bool)

(assert (=> b!2559821 (= e!1616736 (not (= (head!5820 (tail!4095 tl!4068)) (c!410685 (derivativeStep!2182 lt!904414 (head!5820 tl!4068))))))))

(declare-fun bm!163889 () Bool)

(assert (=> bm!163889 (= call!163894 (isEmpty!17034 (tail!4095 tl!4068)))))

(declare-fun b!2559823 () Bool)

(declare-fun res!1077838 () Bool)

(declare-fun e!1616749 () Bool)

(assert (=> b!2559823 (=> res!1077838 e!1616749)))

(declare-fun e!1616739 () Bool)

(assert (=> b!2559823 (= res!1077838 e!1616739)))

(declare-fun res!1077831 () Bool)

(assert (=> b!2559823 (=> (not res!1077831) (not e!1616739))))

(assert (=> b!2559823 (= res!1077831 lt!904589)))

(declare-fun d!725298 () Bool)

(assert (=> d!725298 e!1616746))

(declare-fun c!411178 () Bool)

(assert (=> d!725298 (= c!411178 ((_ is EmptyExpr!7613) (derivativeStep!2182 lt!904414 (head!5820 tl!4068))))))

(declare-fun e!1616742 () Bool)

(assert (=> d!725298 (= lt!904589 e!1616742)))

(declare-fun c!411180 () Bool)

(assert (=> d!725298 (= c!411180 (isEmpty!17034 (tail!4095 tl!4068)))))

(assert (=> d!725298 (validRegex!3239 (derivativeStep!2182 lt!904414 (head!5820 tl!4068)))))

(assert (=> d!725298 (= (matchR!3558 (derivativeStep!2182 lt!904414 (head!5820 tl!4068)) (tail!4095 tl!4068)) lt!904589)))

(declare-fun b!2559825 () Bool)

(assert (=> b!2559825 (= e!1616742 (matchR!3558 (derivativeStep!2182 (derivativeStep!2182 lt!904414 (head!5820 tl!4068)) (head!5820 (tail!4095 tl!4068))) (tail!4095 (tail!4095 tl!4068))))))

(declare-fun b!2559828 () Bool)

(declare-fun res!1077829 () Bool)

(assert (=> b!2559828 (=> res!1077829 e!1616749)))

(assert (=> b!2559828 (= res!1077829 (not ((_ is ElementMatch!7613) (derivativeStep!2182 lt!904414 (head!5820 tl!4068)))))))

(declare-fun e!1616745 () Bool)

(assert (=> b!2559828 (= e!1616745 e!1616749)))

(declare-fun b!2559830 () Bool)

(assert (=> b!2559830 (= e!1616746 e!1616745)))

(declare-fun c!411179 () Bool)

(assert (=> b!2559830 (= c!411179 ((_ is EmptyLang!7613) (derivativeStep!2182 lt!904414 (head!5820 tl!4068))))))

(declare-fun b!2559832 () Bool)

(declare-fun e!1616744 () Bool)

(assert (=> b!2559832 (= e!1616749 e!1616744)))

(declare-fun res!1077842 () Bool)

(assert (=> b!2559832 (=> (not res!1077842) (not e!1616744))))

(assert (=> b!2559832 (= res!1077842 (not lt!904589))))

(declare-fun b!2559834 () Bool)

(declare-fun res!1077840 () Bool)

(assert (=> b!2559834 (=> (not res!1077840) (not e!1616739))))

(assert (=> b!2559834 (= res!1077840 (isEmpty!17034 (tail!4095 (tail!4095 tl!4068))))))

(declare-fun b!2559836 () Bool)

(declare-fun res!1077835 () Bool)

(assert (=> b!2559836 (=> (not res!1077835) (not e!1616739))))

(assert (=> b!2559836 (= res!1077835 (not call!163894))))

(declare-fun b!2559838 () Bool)

(assert (=> b!2559838 (= e!1616745 (not lt!904589))))

(declare-fun b!2559840 () Bool)

(assert (=> b!2559840 (= e!1616744 e!1616736)))

(declare-fun res!1077833 () Bool)

(assert (=> b!2559840 (=> res!1077833 e!1616736)))

(assert (=> b!2559840 (= res!1077833 call!163894)))

(declare-fun b!2559841 () Bool)

(assert (=> b!2559841 (= e!1616739 (= (head!5820 (tail!4095 tl!4068)) (c!410685 (derivativeStep!2182 lt!904414 (head!5820 tl!4068)))))))

(declare-fun b!2559842 () Bool)

(assert (=> b!2559842 (= e!1616742 (nullable!2530 (derivativeStep!2182 lt!904414 (head!5820 tl!4068))))))

(assert (= (and d!725298 c!411180) b!2559842))

(assert (= (and d!725298 (not c!411180)) b!2559825))

(assert (= (and d!725298 c!411178) b!2559818))

(assert (= (and d!725298 (not c!411178)) b!2559830))

(assert (= (and b!2559830 c!411179) b!2559838))

(assert (= (and b!2559830 (not c!411179)) b!2559828))

(assert (= (and b!2559828 (not res!1077829)) b!2559823))

(assert (= (and b!2559823 res!1077831) b!2559836))

(assert (= (and b!2559836 res!1077835) b!2559834))

(assert (= (and b!2559834 res!1077840) b!2559841))

(assert (= (and b!2559823 (not res!1077838)) b!2559832))

(assert (= (and b!2559832 res!1077842) b!2559840))

(assert (= (and b!2559840 (not res!1077833)) b!2559820))

(assert (= (and b!2559820 (not res!1077836)) b!2559821))

(assert (= (or b!2559818 b!2559836 b!2559840) bm!163889))

(assert (=> bm!163889 m!2899181))

(assert (=> bm!163889 m!2899183))

(assert (=> d!725298 m!2899181))

(assert (=> d!725298 m!2899183))

(assert (=> d!725298 m!2899565))

(declare-fun m!2900473 () Bool)

(assert (=> d!725298 m!2900473))

(assert (=> b!2559834 m!2899181))

(assert (=> b!2559834 m!2900215))

(assert (=> b!2559834 m!2900215))

(assert (=> b!2559834 m!2900217))

(assert (=> b!2559825 m!2899181))

(assert (=> b!2559825 m!2900219))

(assert (=> b!2559825 m!2899565))

(assert (=> b!2559825 m!2900219))

(declare-fun m!2900479 () Bool)

(assert (=> b!2559825 m!2900479))

(assert (=> b!2559825 m!2899181))

(assert (=> b!2559825 m!2900215))

(assert (=> b!2559825 m!2900479))

(assert (=> b!2559825 m!2900215))

(declare-fun m!2900483 () Bool)

(assert (=> b!2559825 m!2900483))

(assert (=> b!2559842 m!2899565))

(declare-fun m!2900485 () Bool)

(assert (=> b!2559842 m!2900485))

(assert (=> b!2559820 m!2899181))

(assert (=> b!2559820 m!2900215))

(assert (=> b!2559820 m!2900215))

(assert (=> b!2559820 m!2900217))

(assert (=> b!2559841 m!2899181))

(assert (=> b!2559841 m!2900219))

(assert (=> b!2559821 m!2899181))

(assert (=> b!2559821 m!2900219))

(assert (=> b!2558787 d!725298))

(declare-fun bm!163890 () Bool)

(declare-fun call!163897 () Regex!7613)

(declare-fun call!163898 () Regex!7613)

(assert (=> bm!163890 (= call!163897 call!163898)))

(declare-fun b!2559845 () Bool)

(declare-fun e!1616750 () Regex!7613)

(assert (=> b!2559845 (= e!1616750 EmptyLang!7613)))

(declare-fun b!2559846 () Bool)

(declare-fun c!411187 () Bool)

(assert (=> b!2559846 (= c!411187 ((_ is Union!7613) lt!904414))))

(declare-fun e!1616753 () Regex!7613)

(declare-fun e!1616755 () Regex!7613)

(assert (=> b!2559846 (= e!1616753 e!1616755)))

(declare-fun call!163895 () Regex!7613)

(declare-fun bm!163891 () Bool)

(assert (=> bm!163891 (= call!163895 (derivativeStep!2182 (ite c!411187 (regOne!15739 lt!904414) (regTwo!15738 lt!904414)) (head!5820 tl!4068)))))

(declare-fun b!2559847 () Bool)

(declare-fun c!411184 () Bool)

(assert (=> b!2559847 (= c!411184 (nullable!2530 (regOne!15738 lt!904414)))))

(declare-fun e!1616754 () Regex!7613)

(declare-fun e!1616751 () Regex!7613)

(assert (=> b!2559847 (= e!1616754 e!1616751)))

(declare-fun b!2559848 () Bool)

(assert (=> b!2559848 (= e!1616754 (Concat!12309 call!163897 lt!904414))))

(declare-fun bm!163892 () Bool)

(declare-fun call!163896 () Regex!7613)

(assert (=> bm!163892 (= call!163896 call!163897)))

(declare-fun d!725302 () Bool)

(declare-fun lt!904590 () Regex!7613)

(assert (=> d!725302 (validRegex!3239 lt!904590)))

(assert (=> d!725302 (= lt!904590 e!1616750)))

(declare-fun c!411183 () Bool)

(assert (=> d!725302 (= c!411183 (or ((_ is EmptyExpr!7613) lt!904414) ((_ is EmptyLang!7613) lt!904414)))))

(assert (=> d!725302 (validRegex!3239 lt!904414)))

(assert (=> d!725302 (= (derivativeStep!2182 lt!904414 (head!5820 tl!4068)) lt!904590)))

(declare-fun b!2559849 () Bool)

(assert (=> b!2559849 (= e!1616755 (Union!7613 call!163895 call!163898))))

(declare-fun b!2559850 () Bool)

(assert (=> b!2559850 (= e!1616751 (Union!7613 (Concat!12309 call!163896 (regTwo!15738 lt!904414)) EmptyLang!7613))))

(declare-fun b!2559851 () Bool)

(assert (=> b!2559851 (= e!1616751 (Union!7613 (Concat!12309 call!163896 (regTwo!15738 lt!904414)) call!163895))))

(declare-fun b!2559852 () Bool)

(assert (=> b!2559852 (= e!1616750 e!1616753)))

(declare-fun c!411185 () Bool)

(assert (=> b!2559852 (= c!411185 ((_ is ElementMatch!7613) lt!904414))))

(declare-fun b!2559853 () Bool)

(assert (=> b!2559853 (= e!1616755 e!1616754)))

(declare-fun c!411182 () Bool)

(assert (=> b!2559853 (= c!411182 ((_ is Star!7613) lt!904414))))

(declare-fun bm!163893 () Bool)

(assert (=> bm!163893 (= call!163898 (derivativeStep!2182 (ite c!411187 (regTwo!15739 lt!904414) (ite c!411182 (reg!7942 lt!904414) (regOne!15738 lt!904414))) (head!5820 tl!4068)))))

(declare-fun b!2559854 () Bool)

(assert (=> b!2559854 (= e!1616753 (ite (= (head!5820 tl!4068) (c!410685 lt!904414)) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725302 c!411183) b!2559845))

(assert (= (and d!725302 (not c!411183)) b!2559852))

(assert (= (and b!2559852 c!411185) b!2559854))

(assert (= (and b!2559852 (not c!411185)) b!2559846))

(assert (= (and b!2559846 c!411187) b!2559849))

(assert (= (and b!2559846 (not c!411187)) b!2559853))

(assert (= (and b!2559853 c!411182) b!2559848))

(assert (= (and b!2559853 (not c!411182)) b!2559847))

(assert (= (and b!2559847 c!411184) b!2559851))

(assert (= (and b!2559847 (not c!411184)) b!2559850))

(assert (= (or b!2559851 b!2559850) bm!163892))

(assert (= (or b!2559848 bm!163892) bm!163890))

(assert (= (or b!2559849 bm!163890) bm!163893))

(assert (= (or b!2559849 b!2559851) bm!163891))

(assert (=> bm!163891 m!2899185))

(declare-fun m!2900495 () Bool)

(assert (=> bm!163891 m!2900495))

(declare-fun m!2900497 () Bool)

(assert (=> b!2559847 m!2900497))

(declare-fun m!2900499 () Bool)

(assert (=> d!725302 m!2900499))

(assert (=> d!725302 m!2899547))

(assert (=> bm!163893 m!2899185))

(declare-fun m!2900501 () Bool)

(assert (=> bm!163893 m!2900501))

(assert (=> b!2558787 d!725302))

(assert (=> b!2558787 d!725140))

(assert (=> b!2558787 d!725154))

(declare-fun d!725306 () Bool)

(declare-fun lt!904593 () Regex!7613)

(assert (=> d!725306 (validRegex!3239 lt!904593)))

(declare-fun e!1616761 () Regex!7613)

(assert (=> d!725306 (= lt!904593 e!1616761)))

(declare-fun c!411193 () Bool)

(assert (=> d!725306 (= c!411193 ((_ is Cons!29578) (t!211377 tl!4068)))))

(assert (=> d!725306 (validRegex!3239 (derivativeStep!2182 (derivativeStep!2182 r!27340 c!14016) (h!34998 tl!4068)))))

(assert (=> d!725306 (= (derivative!308 (derivativeStep!2182 (derivativeStep!2182 r!27340 c!14016) (h!34998 tl!4068)) (t!211377 tl!4068)) lt!904593)))

(declare-fun b!2559865 () Bool)

(assert (=> b!2559865 (= e!1616761 (derivative!308 (derivativeStep!2182 (derivativeStep!2182 (derivativeStep!2182 r!27340 c!14016) (h!34998 tl!4068)) (h!34998 (t!211377 tl!4068))) (t!211377 (t!211377 tl!4068))))))

(declare-fun b!2559866 () Bool)

(assert (=> b!2559866 (= e!1616761 (derivativeStep!2182 (derivativeStep!2182 r!27340 c!14016) (h!34998 tl!4068)))))

(assert (= (and d!725306 c!411193) b!2559865))

(assert (= (and d!725306 (not c!411193)) b!2559866))

(declare-fun m!2900503 () Bool)

(assert (=> d!725306 m!2900503))

(assert (=> d!725306 m!2899255))

(declare-fun m!2900507 () Bool)

(assert (=> d!725306 m!2900507))

(assert (=> b!2559865 m!2899255))

(declare-fun m!2900509 () Bool)

(assert (=> b!2559865 m!2900509))

(assert (=> b!2559865 m!2900509))

(declare-fun m!2900515 () Bool)

(assert (=> b!2559865 m!2900515))

(assert (=> b!2558326 d!725306))

(declare-fun bm!163898 () Bool)

(declare-fun call!163905 () Regex!7613)

(declare-fun call!163906 () Regex!7613)

(assert (=> bm!163898 (= call!163905 call!163906)))

(declare-fun b!2559867 () Bool)

(declare-fun e!1616762 () Regex!7613)

(assert (=> b!2559867 (= e!1616762 EmptyLang!7613)))

(declare-fun b!2559868 () Bool)

(declare-fun c!411198 () Bool)

(assert (=> b!2559868 (= c!411198 ((_ is Union!7613) (derivativeStep!2182 r!27340 c!14016)))))

(declare-fun e!1616764 () Regex!7613)

(declare-fun e!1616766 () Regex!7613)

(assert (=> b!2559868 (= e!1616764 e!1616766)))

(declare-fun call!163903 () Regex!7613)

(declare-fun bm!163899 () Bool)

(assert (=> bm!163899 (= call!163903 (derivativeStep!2182 (ite c!411198 (regOne!15739 (derivativeStep!2182 r!27340 c!14016)) (regTwo!15738 (derivativeStep!2182 r!27340 c!14016))) (h!34998 tl!4068)))))

(declare-fun b!2559869 () Bool)

(declare-fun c!411196 () Bool)

(assert (=> b!2559869 (= c!411196 (nullable!2530 (regOne!15738 (derivativeStep!2182 r!27340 c!14016))))))

(declare-fun e!1616765 () Regex!7613)

(declare-fun e!1616763 () Regex!7613)

(assert (=> b!2559869 (= e!1616765 e!1616763)))

(declare-fun b!2559870 () Bool)

(assert (=> b!2559870 (= e!1616765 (Concat!12309 call!163905 (derivativeStep!2182 r!27340 c!14016)))))

(declare-fun bm!163900 () Bool)

(declare-fun call!163904 () Regex!7613)

(assert (=> bm!163900 (= call!163904 call!163905)))

(declare-fun d!725308 () Bool)

(declare-fun lt!904594 () Regex!7613)

(assert (=> d!725308 (validRegex!3239 lt!904594)))

(assert (=> d!725308 (= lt!904594 e!1616762)))

(declare-fun c!411195 () Bool)

(assert (=> d!725308 (= c!411195 (or ((_ is EmptyExpr!7613) (derivativeStep!2182 r!27340 c!14016)) ((_ is EmptyLang!7613) (derivativeStep!2182 r!27340 c!14016))))))

(assert (=> d!725308 (validRegex!3239 (derivativeStep!2182 r!27340 c!14016))))

(assert (=> d!725308 (= (derivativeStep!2182 (derivativeStep!2182 r!27340 c!14016) (h!34998 tl!4068)) lt!904594)))

(declare-fun b!2559871 () Bool)

(assert (=> b!2559871 (= e!1616766 (Union!7613 call!163903 call!163906))))

(declare-fun b!2559872 () Bool)

(assert (=> b!2559872 (= e!1616763 (Union!7613 (Concat!12309 call!163904 (regTwo!15738 (derivativeStep!2182 r!27340 c!14016))) EmptyLang!7613))))

(declare-fun b!2559874 () Bool)

(assert (=> b!2559874 (= e!1616763 (Union!7613 (Concat!12309 call!163904 (regTwo!15738 (derivativeStep!2182 r!27340 c!14016))) call!163903))))

(declare-fun b!2559876 () Bool)

(assert (=> b!2559876 (= e!1616762 e!1616764)))

(declare-fun c!411197 () Bool)

(assert (=> b!2559876 (= c!411197 ((_ is ElementMatch!7613) (derivativeStep!2182 r!27340 c!14016)))))

(declare-fun b!2559877 () Bool)

(assert (=> b!2559877 (= e!1616766 e!1616765)))

(declare-fun c!411194 () Bool)

(assert (=> b!2559877 (= c!411194 ((_ is Star!7613) (derivativeStep!2182 r!27340 c!14016)))))

(declare-fun bm!163901 () Bool)

(assert (=> bm!163901 (= call!163906 (derivativeStep!2182 (ite c!411198 (regTwo!15739 (derivativeStep!2182 r!27340 c!14016)) (ite c!411194 (reg!7942 (derivativeStep!2182 r!27340 c!14016)) (regOne!15738 (derivativeStep!2182 r!27340 c!14016)))) (h!34998 tl!4068)))))

(declare-fun b!2559878 () Bool)

(assert (=> b!2559878 (= e!1616764 (ite (= (h!34998 tl!4068) (c!410685 (derivativeStep!2182 r!27340 c!14016))) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725308 c!411195) b!2559867))

(assert (= (and d!725308 (not c!411195)) b!2559876))

(assert (= (and b!2559876 c!411197) b!2559878))

(assert (= (and b!2559876 (not c!411197)) b!2559868))

(assert (= (and b!2559868 c!411198) b!2559871))

(assert (= (and b!2559868 (not c!411198)) b!2559877))

(assert (= (and b!2559877 c!411194) b!2559870))

(assert (= (and b!2559877 (not c!411194)) b!2559869))

(assert (= (and b!2559869 c!411196) b!2559874))

(assert (= (and b!2559869 (not c!411196)) b!2559872))

(assert (= (or b!2559874 b!2559872) bm!163900))

(assert (= (or b!2559870 bm!163900) bm!163898))

(assert (= (or b!2559871 bm!163898) bm!163901))

(assert (= (or b!2559871 b!2559874) bm!163899))

(declare-fun m!2900521 () Bool)

(assert (=> bm!163899 m!2900521))

(declare-fun m!2900523 () Bool)

(assert (=> b!2559869 m!2900523))

(declare-fun m!2900525 () Bool)

(assert (=> d!725308 m!2900525))

(assert (=> d!725308 m!2899115))

(assert (=> d!725308 m!2899253))

(declare-fun m!2900527 () Bool)

(assert (=> bm!163901 m!2900527))

(assert (=> b!2558326 d!725308))

(declare-fun bm!163903 () Bool)

(declare-fun call!163908 () Bool)

(declare-fun c!411204 () Bool)

(assert (=> bm!163903 (= call!163908 (validRegex!3239 (ite c!411204 (regTwo!15739 lt!904504) (regOne!15738 lt!904504))))))

(declare-fun b!2559893 () Bool)

(declare-fun e!1616775 () Bool)

(declare-fun e!1616778 () Bool)

(assert (=> b!2559893 (= e!1616775 e!1616778)))

(declare-fun c!411203 () Bool)

(assert (=> b!2559893 (= c!411203 ((_ is Star!7613) lt!904504))))

(declare-fun b!2559894 () Bool)

(declare-fun e!1616777 () Bool)

(declare-fun call!163909 () Bool)

(assert (=> b!2559894 (= e!1616777 call!163909)))

(declare-fun b!2559895 () Bool)

(declare-fun res!1077854 () Bool)

(declare-fun e!1616780 () Bool)

(assert (=> b!2559895 (=> (not res!1077854) (not e!1616780))))

(assert (=> b!2559895 (= res!1077854 call!163909)))

(declare-fun e!1616776 () Bool)

(assert (=> b!2559895 (= e!1616776 e!1616780)))

(declare-fun b!2559896 () Bool)

(assert (=> b!2559896 (= e!1616778 e!1616776)))

(assert (=> b!2559896 (= c!411204 ((_ is Union!7613) lt!904504))))

(declare-fun b!2559897 () Bool)

(declare-fun e!1616781 () Bool)

(assert (=> b!2559897 (= e!1616781 e!1616777)))

(declare-fun res!1077855 () Bool)

(assert (=> b!2559897 (=> (not res!1077855) (not e!1616777))))

(assert (=> b!2559897 (= res!1077855 call!163908)))

(declare-fun b!2559898 () Bool)

(declare-fun res!1077852 () Bool)

(assert (=> b!2559898 (=> res!1077852 e!1616781)))

(assert (=> b!2559898 (= res!1077852 (not ((_ is Concat!12309) lt!904504)))))

(assert (=> b!2559898 (= e!1616776 e!1616781)))

(declare-fun b!2559899 () Bool)

(declare-fun e!1616779 () Bool)

(declare-fun call!163910 () Bool)

(assert (=> b!2559899 (= e!1616779 call!163910)))

(declare-fun b!2559900 () Bool)

(assert (=> b!2559900 (= e!1616780 call!163908)))

(declare-fun bm!163904 () Bool)

(assert (=> bm!163904 (= call!163910 (validRegex!3239 (ite c!411203 (reg!7942 lt!904504) (ite c!411204 (regOne!15739 lt!904504) (regTwo!15738 lt!904504)))))))

(declare-fun d!725314 () Bool)

(declare-fun res!1077853 () Bool)

(assert (=> d!725314 (=> res!1077853 e!1616775)))

(assert (=> d!725314 (= res!1077853 ((_ is ElementMatch!7613) lt!904504))))

(assert (=> d!725314 (= (validRegex!3239 lt!904504) e!1616775)))

(declare-fun bm!163905 () Bool)

(assert (=> bm!163905 (= call!163909 call!163910)))

(declare-fun b!2559901 () Bool)

(assert (=> b!2559901 (= e!1616778 e!1616779)))

(declare-fun res!1077851 () Bool)

(assert (=> b!2559901 (= res!1077851 (not (nullable!2530 (reg!7942 lt!904504))))))

(assert (=> b!2559901 (=> (not res!1077851) (not e!1616779))))

(assert (= (and d!725314 (not res!1077853)) b!2559893))

(assert (= (and b!2559893 c!411203) b!2559901))

(assert (= (and b!2559893 (not c!411203)) b!2559896))

(assert (= (and b!2559901 res!1077851) b!2559899))

(assert (= (and b!2559896 c!411204) b!2559895))

(assert (= (and b!2559896 (not c!411204)) b!2559898))

(assert (= (and b!2559895 res!1077854) b!2559900))

(assert (= (and b!2559898 (not res!1077852)) b!2559897))

(assert (= (and b!2559897 res!1077855) b!2559894))

(assert (= (or b!2559895 b!2559894) bm!163905))

(assert (= (or b!2559900 b!2559897) bm!163903))

(assert (= (or b!2559899 bm!163905) bm!163904))

(declare-fun m!2900537 () Bool)

(assert (=> bm!163903 m!2900537))

(declare-fun m!2900539 () Bool)

(assert (=> bm!163904 m!2900539))

(declare-fun m!2900541 () Bool)

(assert (=> b!2559901 m!2900541))

(assert (=> d!724928 d!725314))

(assert (=> d!724928 d!725280))

(declare-fun bm!163910 () Bool)

(declare-fun call!163917 () List!29678)

(declare-fun call!163915 () List!29678)

(assert (=> bm!163910 (= call!163917 call!163915)))

(declare-fun b!2559912 () Bool)

(declare-fun e!1616791 () List!29678)

(declare-fun call!163919 () List!29678)

(assert (=> b!2559912 (= e!1616791 call!163919)))

(declare-fun bm!163911 () Bool)

(declare-fun c!411212 () Bool)

(declare-fun c!411213 () Bool)

(assert (=> bm!163911 (= call!163919 (firstChars!96 (ite c!411212 (reg!7942 (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) (ite c!411213 (regTwo!15739 (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) (regOne!15738 (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))))))

(declare-fun b!2559913 () Bool)

(declare-fun e!1616789 () List!29678)

(declare-fun call!163916 () List!29678)

(assert (=> b!2559913 (= e!1616789 call!163916)))

(declare-fun b!2559914 () Bool)

(declare-fun e!1616790 () List!29678)

(assert (=> b!2559914 (= e!1616790 call!163916)))

(declare-fun b!2559915 () Bool)

(declare-fun e!1616788 () List!29678)

(declare-fun e!1616787 () List!29678)

(assert (=> b!2559915 (= e!1616788 e!1616787)))

(declare-fun c!411211 () Bool)

(assert (=> b!2559915 (= c!411211 ((_ is ElementMatch!7613) (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(declare-fun b!2559916 () Bool)

(assert (=> b!2559916 (= e!1616791 e!1616790)))

(assert (=> b!2559916 (= c!411213 ((_ is Union!7613) (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(declare-fun call!163918 () List!29678)

(declare-fun bm!163912 () Bool)

(assert (=> bm!163912 (= call!163916 (++!7270 (ite c!411213 call!163915 call!163918) (ite c!411213 call!163918 call!163917)))))

(declare-fun bm!163913 () Bool)

(declare-fun c!411210 () Bool)

(assert (=> bm!163913 (= call!163915 (firstChars!96 (ite c!411213 (regOne!15739 (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) (ite c!411210 (regTwo!15738 (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) (regOne!15738 (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))))))

(declare-fun b!2559917 () Bool)

(assert (=> b!2559917 (= c!411212 ((_ is Star!7613) (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))))))

(assert (=> b!2559917 (= e!1616787 e!1616791)))

(declare-fun b!2559918 () Bool)

(assert (=> b!2559918 (= c!411210 (nullable!2530 (regOne!15738 (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))))

(assert (=> b!2559918 (= e!1616790 e!1616789)))

(declare-fun b!2559919 () Bool)

(assert (=> b!2559919 (= e!1616789 call!163917)))

(declare-fun bm!163914 () Bool)

(assert (=> bm!163914 (= call!163918 call!163919)))

(declare-fun c!411214 () Bool)

(declare-fun d!725318 () Bool)

(assert (=> d!725318 (= c!411214 (or ((_ is EmptyExpr!7613) (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) ((_ is EmptyLang!7613) (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340)))))))))

(assert (=> d!725318 (= (firstChars!96 (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) e!1616788)))

(declare-fun b!2559920 () Bool)

(assert (=> b!2559920 (= e!1616787 (Cons!29578 (c!410685 (ite c!410850 (regOne!15739 (regOne!15738 r!27340)) (ite c!410847 (regTwo!15738 (regOne!15738 r!27340)) (regOne!15738 (regOne!15738 r!27340))))) Nil!29578))))

(declare-fun b!2559921 () Bool)

(assert (=> b!2559921 (= e!1616788 Nil!29578)))

(assert (= (and d!725318 c!411214) b!2559921))

(assert (= (and d!725318 (not c!411214)) b!2559915))

(assert (= (and b!2559915 c!411211) b!2559920))

(assert (= (and b!2559915 (not c!411211)) b!2559917))

(assert (= (and b!2559917 c!411212) b!2559912))

(assert (= (and b!2559917 (not c!411212)) b!2559916))

(assert (= (and b!2559916 c!411213) b!2559914))

(assert (= (and b!2559916 (not c!411213)) b!2559918))

(assert (= (and b!2559918 c!411210) b!2559913))

(assert (= (and b!2559918 (not c!411210)) b!2559919))

(assert (= (or b!2559913 b!2559919) bm!163910))

(assert (= (or b!2559914 bm!163910) bm!163913))

(assert (= (or b!2559914 b!2559913) bm!163914))

(assert (= (or b!2559914 b!2559913) bm!163912))

(assert (= (or b!2559912 bm!163914) bm!163911))

(declare-fun m!2900549 () Bool)

(assert (=> bm!163911 m!2900549))

(declare-fun m!2900553 () Bool)

(assert (=> bm!163912 m!2900553))

(declare-fun m!2900557 () Bool)

(assert (=> bm!163913 m!2900557))

(declare-fun m!2900559 () Bool)

(assert (=> b!2559918 m!2900559))

(assert (=> bm!163632 d!725318))

(declare-fun d!725324 () Bool)

(assert (=> d!725324 (= (isEmpty!17034 (Cons!29578 c!14016 (_1!17336 lt!904412))) ((_ is Nil!29578) (Cons!29578 c!14016 (_1!17336 lt!904412))))))

(assert (=> bm!163534 d!725324))

(assert (=> b!2558769 d!725140))

(declare-fun b!2559931 () Bool)

(declare-fun e!1616804 () Bool)

(declare-fun lt!904597 () Bool)

(declare-fun call!163923 () Bool)

(assert (=> b!2559931 (= e!1616804 (= lt!904597 call!163923))))

(declare-fun b!2559932 () Bool)

(declare-fun res!1077865 () Bool)

(declare-fun e!1616799 () Bool)

(assert (=> b!2559932 (=> res!1077865 e!1616799)))

(assert (=> b!2559932 (= res!1077865 (not (isEmpty!17034 (tail!4095 (_2!17336 (get!9299 lt!904517))))))))

(declare-fun b!2559933 () Bool)

(assert (=> b!2559933 (= e!1616799 (not (= (head!5820 (_2!17336 (get!9299 lt!904517))) (c!410685 (regTwo!15738 r!27340)))))))

(declare-fun bm!163918 () Bool)

(assert (=> bm!163918 (= call!163923 (isEmpty!17034 (_2!17336 (get!9299 lt!904517))))))

(declare-fun b!2559934 () Bool)

(declare-fun res!1077866 () Bool)

(declare-fun e!1616805 () Bool)

(assert (=> b!2559934 (=> res!1077866 e!1616805)))

(declare-fun e!1616800 () Bool)

(assert (=> b!2559934 (= res!1077866 e!1616800)))

(declare-fun res!1077862 () Bool)

(assert (=> b!2559934 (=> (not res!1077862) (not e!1616800))))

(assert (=> b!2559934 (= res!1077862 lt!904597)))

(declare-fun d!725326 () Bool)

(assert (=> d!725326 e!1616804))

(declare-fun c!411217 () Bool)

(assert (=> d!725326 (= c!411217 ((_ is EmptyExpr!7613) (regTwo!15738 r!27340)))))

(declare-fun e!1616801 () Bool)

(assert (=> d!725326 (= lt!904597 e!1616801)))

(declare-fun c!411219 () Bool)

(assert (=> d!725326 (= c!411219 (isEmpty!17034 (_2!17336 (get!9299 lt!904517))))))

(assert (=> d!725326 (validRegex!3239 (regTwo!15738 r!27340))))

(assert (=> d!725326 (= (matchR!3558 (regTwo!15738 r!27340) (_2!17336 (get!9299 lt!904517))) lt!904597)))

(declare-fun b!2559935 () Bool)

(assert (=> b!2559935 (= e!1616801 (matchR!3558 (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 (_2!17336 (get!9299 lt!904517)))) (tail!4095 (_2!17336 (get!9299 lt!904517)))))))

(declare-fun b!2559936 () Bool)

(declare-fun res!1077861 () Bool)

(assert (=> b!2559936 (=> res!1077861 e!1616805)))

(assert (=> b!2559936 (= res!1077861 (not ((_ is ElementMatch!7613) (regTwo!15738 r!27340))))))

(declare-fun e!1616803 () Bool)

(assert (=> b!2559936 (= e!1616803 e!1616805)))

(declare-fun b!2559937 () Bool)

(assert (=> b!2559937 (= e!1616804 e!1616803)))

(declare-fun c!411218 () Bool)

(assert (=> b!2559937 (= c!411218 ((_ is EmptyLang!7613) (regTwo!15738 r!27340)))))

(declare-fun b!2559938 () Bool)

(declare-fun e!1616802 () Bool)

(assert (=> b!2559938 (= e!1616805 e!1616802)))

(declare-fun res!1077868 () Bool)

(assert (=> b!2559938 (=> (not res!1077868) (not e!1616802))))

(assert (=> b!2559938 (= res!1077868 (not lt!904597))))

(declare-fun b!2559939 () Bool)

(declare-fun res!1077867 () Bool)

(assert (=> b!2559939 (=> (not res!1077867) (not e!1616800))))

(assert (=> b!2559939 (= res!1077867 (isEmpty!17034 (tail!4095 (_2!17336 (get!9299 lt!904517)))))))

(declare-fun b!2559940 () Bool)

(declare-fun res!1077864 () Bool)

(assert (=> b!2559940 (=> (not res!1077864) (not e!1616800))))

(assert (=> b!2559940 (= res!1077864 (not call!163923))))

(declare-fun b!2559941 () Bool)

(assert (=> b!2559941 (= e!1616803 (not lt!904597))))

(declare-fun b!2559942 () Bool)

(assert (=> b!2559942 (= e!1616802 e!1616799)))

(declare-fun res!1077863 () Bool)

(assert (=> b!2559942 (=> res!1077863 e!1616799)))

(assert (=> b!2559942 (= res!1077863 call!163923)))

(declare-fun b!2559943 () Bool)

(assert (=> b!2559943 (= e!1616800 (= (head!5820 (_2!17336 (get!9299 lt!904517))) (c!410685 (regTwo!15738 r!27340))))))

(declare-fun b!2559944 () Bool)

(assert (=> b!2559944 (= e!1616801 (nullable!2530 (regTwo!15738 r!27340)))))

(assert (= (and d!725326 c!411219) b!2559944))

(assert (= (and d!725326 (not c!411219)) b!2559935))

(assert (= (and d!725326 c!411217) b!2559931))

(assert (= (and d!725326 (not c!411217)) b!2559937))

(assert (= (and b!2559937 c!411218) b!2559941))

(assert (= (and b!2559937 (not c!411218)) b!2559936))

(assert (= (and b!2559936 (not res!1077861)) b!2559934))

(assert (= (and b!2559934 res!1077862) b!2559940))

(assert (= (and b!2559940 res!1077864) b!2559939))

(assert (= (and b!2559939 res!1077867) b!2559943))

(assert (= (and b!2559934 (not res!1077866)) b!2559938))

(assert (= (and b!2559938 res!1077868) b!2559942))

(assert (= (and b!2559942 (not res!1077863)) b!2559932))

(assert (= (and b!2559932 (not res!1077865)) b!2559933))

(assert (= (or b!2559931 b!2559940 b!2559942) bm!163918))

(declare-fun m!2900567 () Bool)

(assert (=> bm!163918 m!2900567))

(assert (=> d!725326 m!2900567))

(assert (=> d!725326 m!2899289))

(declare-fun m!2900569 () Bool)

(assert (=> b!2559939 m!2900569))

(assert (=> b!2559939 m!2900569))

(declare-fun m!2900571 () Bool)

(assert (=> b!2559939 m!2900571))

(declare-fun m!2900573 () Bool)

(assert (=> b!2559935 m!2900573))

(assert (=> b!2559935 m!2900573))

(declare-fun m!2900575 () Bool)

(assert (=> b!2559935 m!2900575))

(assert (=> b!2559935 m!2900569))

(assert (=> b!2559935 m!2900575))

(assert (=> b!2559935 m!2900569))

(declare-fun m!2900577 () Bool)

(assert (=> b!2559935 m!2900577))

(assert (=> b!2559944 m!2899301))

(assert (=> b!2559932 m!2900569))

(assert (=> b!2559932 m!2900569))

(assert (=> b!2559932 m!2900571))

(assert (=> b!2559943 m!2900573))

(assert (=> b!2559933 m!2900573))

(assert (=> b!2558835 d!725326))

(assert (=> b!2558835 d!725176))

(declare-fun d!725330 () Bool)

(assert (=> d!725330 (= (nullable!2530 lt!904422) (nullableFct!755 lt!904422))))

(declare-fun bs!469803 () Bool)

(assert (= bs!469803 d!725330))

(declare-fun m!2900579 () Bool)

(assert (=> bs!469803 m!2900579))

(assert (=> b!2558278 d!725330))

(assert (=> b!2558784 d!725152))

(assert (=> b!2558784 d!725154))

(declare-fun d!725332 () Bool)

(assert (=> d!725332 (= (nullable!2530 lt!904414) (nullableFct!755 lt!904414))))

(declare-fun bs!469804 () Bool)

(assert (= bs!469804 d!725332))

(declare-fun m!2900581 () Bool)

(assert (=> bs!469804 m!2900581))

(assert (=> b!2558796 d!725332))

(declare-fun bm!163920 () Bool)

(declare-fun call!163925 () Bool)

(declare-fun c!411224 () Bool)

(assert (=> bm!163920 (= call!163925 (validRegex!3239 (ite c!411224 (regTwo!15739 lt!904453) (regOne!15738 lt!904453))))))

(declare-fun b!2559959 () Bool)

(declare-fun e!1616813 () Bool)

(declare-fun e!1616816 () Bool)

(assert (=> b!2559959 (= e!1616813 e!1616816)))

(declare-fun c!411223 () Bool)

(assert (=> b!2559959 (= c!411223 ((_ is Star!7613) lt!904453))))

(declare-fun b!2559960 () Bool)

(declare-fun e!1616815 () Bool)

(declare-fun call!163926 () Bool)

(assert (=> b!2559960 (= e!1616815 call!163926)))

(declare-fun b!2559961 () Bool)

(declare-fun res!1077880 () Bool)

(declare-fun e!1616818 () Bool)

(assert (=> b!2559961 (=> (not res!1077880) (not e!1616818))))

(assert (=> b!2559961 (= res!1077880 call!163926)))

(declare-fun e!1616814 () Bool)

(assert (=> b!2559961 (= e!1616814 e!1616818)))

(declare-fun b!2559962 () Bool)

(assert (=> b!2559962 (= e!1616816 e!1616814)))

(assert (=> b!2559962 (= c!411224 ((_ is Union!7613) lt!904453))))

(declare-fun b!2559963 () Bool)

(declare-fun e!1616819 () Bool)

(assert (=> b!2559963 (= e!1616819 e!1616815)))

(declare-fun res!1077881 () Bool)

(assert (=> b!2559963 (=> (not res!1077881) (not e!1616815))))

(assert (=> b!2559963 (= res!1077881 call!163925)))

(declare-fun b!2559964 () Bool)

(declare-fun res!1077878 () Bool)

(assert (=> b!2559964 (=> res!1077878 e!1616819)))

(assert (=> b!2559964 (= res!1077878 (not ((_ is Concat!12309) lt!904453)))))

(assert (=> b!2559964 (= e!1616814 e!1616819)))

(declare-fun b!2559965 () Bool)

(declare-fun e!1616817 () Bool)

(declare-fun call!163927 () Bool)

(assert (=> b!2559965 (= e!1616817 call!163927)))

(declare-fun b!2559966 () Bool)

(assert (=> b!2559966 (= e!1616818 call!163925)))

(declare-fun bm!163921 () Bool)

(assert (=> bm!163921 (= call!163927 (validRegex!3239 (ite c!411223 (reg!7942 lt!904453) (ite c!411224 (regOne!15739 lt!904453) (regTwo!15738 lt!904453)))))))

(declare-fun d!725334 () Bool)

(declare-fun res!1077879 () Bool)

(assert (=> d!725334 (=> res!1077879 e!1616813)))

(assert (=> d!725334 (= res!1077879 ((_ is ElementMatch!7613) lt!904453))))

(assert (=> d!725334 (= (validRegex!3239 lt!904453) e!1616813)))

(declare-fun bm!163922 () Bool)

(assert (=> bm!163922 (= call!163926 call!163927)))

(declare-fun b!2559967 () Bool)

(assert (=> b!2559967 (= e!1616816 e!1616817)))

(declare-fun res!1077877 () Bool)

(assert (=> b!2559967 (= res!1077877 (not (nullable!2530 (reg!7942 lt!904453))))))

(assert (=> b!2559967 (=> (not res!1077877) (not e!1616817))))

(assert (= (and d!725334 (not res!1077879)) b!2559959))

(assert (= (and b!2559959 c!411223) b!2559967))

(assert (= (and b!2559959 (not c!411223)) b!2559962))

(assert (= (and b!2559967 res!1077877) b!2559965))

(assert (= (and b!2559962 c!411224) b!2559961))

(assert (= (and b!2559962 (not c!411224)) b!2559964))

(assert (= (and b!2559961 res!1077880) b!2559966))

(assert (= (and b!2559964 (not res!1077878)) b!2559963))

(assert (= (and b!2559963 res!1077881) b!2559960))

(assert (= (or b!2559961 b!2559960) bm!163922))

(assert (= (or b!2559966 b!2559963) bm!163920))

(assert (= (or b!2559965 bm!163922) bm!163921))

(declare-fun m!2900589 () Bool)

(assert (=> bm!163920 m!2900589))

(declare-fun m!2900591 () Bool)

(assert (=> bm!163921 m!2900591))

(declare-fun m!2900593 () Bool)

(assert (=> b!2559967 m!2900593))

(assert (=> d!724836 d!725334))

(assert (=> d!724836 d!724852))

(declare-fun d!725340 () Bool)

(declare-fun lt!904599 () Regex!7613)

(assert (=> d!725340 (validRegex!3239 lt!904599)))

(declare-fun e!1616820 () Regex!7613)

(assert (=> d!725340 (= lt!904599 e!1616820)))

(declare-fun c!411225 () Bool)

(assert (=> d!725340 (= c!411225 ((_ is Cons!29578) (t!211377 (_1!17336 lt!904412))))))

(assert (=> d!725340 (validRegex!3239 (derivativeStep!2182 lt!904422 (h!34998 (_1!17336 lt!904412))))))

(assert (=> d!725340 (= (derivative!308 (derivativeStep!2182 lt!904422 (h!34998 (_1!17336 lt!904412))) (t!211377 (_1!17336 lt!904412))) lt!904599)))

(declare-fun b!2559968 () Bool)

(assert (=> b!2559968 (= e!1616820 (derivative!308 (derivativeStep!2182 (derivativeStep!2182 lt!904422 (h!34998 (_1!17336 lt!904412))) (h!34998 (t!211377 (_1!17336 lt!904412)))) (t!211377 (t!211377 (_1!17336 lt!904412)))))))

(declare-fun b!2559969 () Bool)

(assert (=> b!2559969 (= e!1616820 (derivativeStep!2182 lt!904422 (h!34998 (_1!17336 lt!904412))))))

(assert (= (and d!725340 c!411225) b!2559968))

(assert (= (and d!725340 (not c!411225)) b!2559969))

(declare-fun m!2900595 () Bool)

(assert (=> d!725340 m!2900595))

(assert (=> d!725340 m!2899375))

(declare-fun m!2900597 () Bool)

(assert (=> d!725340 m!2900597))

(assert (=> b!2559968 m!2899375))

(declare-fun m!2900599 () Bool)

(assert (=> b!2559968 m!2900599))

(assert (=> b!2559968 m!2900599))

(declare-fun m!2900601 () Bool)

(assert (=> b!2559968 m!2900601))

(assert (=> b!2558513 d!725340))

(declare-fun bm!163923 () Bool)

(declare-fun call!163930 () Regex!7613)

(declare-fun call!163931 () Regex!7613)

(assert (=> bm!163923 (= call!163930 call!163931)))

(declare-fun b!2559970 () Bool)

(declare-fun e!1616821 () Regex!7613)

(assert (=> b!2559970 (= e!1616821 EmptyLang!7613)))

(declare-fun b!2559971 () Bool)

(declare-fun c!411230 () Bool)

(assert (=> b!2559971 (= c!411230 ((_ is Union!7613) lt!904422))))

(declare-fun e!1616823 () Regex!7613)

(declare-fun e!1616825 () Regex!7613)

(assert (=> b!2559971 (= e!1616823 e!1616825)))

(declare-fun bm!163924 () Bool)

(declare-fun call!163928 () Regex!7613)

(assert (=> bm!163924 (= call!163928 (derivativeStep!2182 (ite c!411230 (regOne!15739 lt!904422) (regTwo!15738 lt!904422)) (h!34998 (_1!17336 lt!904412))))))

(declare-fun b!2559972 () Bool)

(declare-fun c!411228 () Bool)

(assert (=> b!2559972 (= c!411228 (nullable!2530 (regOne!15738 lt!904422)))))

(declare-fun e!1616824 () Regex!7613)

(declare-fun e!1616822 () Regex!7613)

(assert (=> b!2559972 (= e!1616824 e!1616822)))

(declare-fun b!2559973 () Bool)

(assert (=> b!2559973 (= e!1616824 (Concat!12309 call!163930 lt!904422))))

(declare-fun bm!163925 () Bool)

(declare-fun call!163929 () Regex!7613)

(assert (=> bm!163925 (= call!163929 call!163930)))

(declare-fun d!725342 () Bool)

(declare-fun lt!904600 () Regex!7613)

(assert (=> d!725342 (validRegex!3239 lt!904600)))

(assert (=> d!725342 (= lt!904600 e!1616821)))

(declare-fun c!411227 () Bool)

(assert (=> d!725342 (= c!411227 (or ((_ is EmptyExpr!7613) lt!904422) ((_ is EmptyLang!7613) lt!904422)))))

(assert (=> d!725342 (validRegex!3239 lt!904422)))

(assert (=> d!725342 (= (derivativeStep!2182 lt!904422 (h!34998 (_1!17336 lt!904412))) lt!904600)))

(declare-fun b!2559974 () Bool)

(assert (=> b!2559974 (= e!1616825 (Union!7613 call!163928 call!163931))))

(declare-fun b!2559975 () Bool)

(assert (=> b!2559975 (= e!1616822 (Union!7613 (Concat!12309 call!163929 (regTwo!15738 lt!904422)) EmptyLang!7613))))

(declare-fun b!2559976 () Bool)

(assert (=> b!2559976 (= e!1616822 (Union!7613 (Concat!12309 call!163929 (regTwo!15738 lt!904422)) call!163928))))

(declare-fun b!2559977 () Bool)

(assert (=> b!2559977 (= e!1616821 e!1616823)))

(declare-fun c!411229 () Bool)

(assert (=> b!2559977 (= c!411229 ((_ is ElementMatch!7613) lt!904422))))

(declare-fun b!2559978 () Bool)

(assert (=> b!2559978 (= e!1616825 e!1616824)))

(declare-fun c!411226 () Bool)

(assert (=> b!2559978 (= c!411226 ((_ is Star!7613) lt!904422))))

(declare-fun bm!163926 () Bool)

(assert (=> bm!163926 (= call!163931 (derivativeStep!2182 (ite c!411230 (regTwo!15739 lt!904422) (ite c!411226 (reg!7942 lt!904422) (regOne!15738 lt!904422))) (h!34998 (_1!17336 lt!904412))))))

(declare-fun b!2559979 () Bool)

(assert (=> b!2559979 (= e!1616823 (ite (= (h!34998 (_1!17336 lt!904412)) (c!410685 lt!904422)) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725342 c!411227) b!2559970))

(assert (= (and d!725342 (not c!411227)) b!2559977))

(assert (= (and b!2559977 c!411229) b!2559979))

(assert (= (and b!2559977 (not c!411229)) b!2559971))

(assert (= (and b!2559971 c!411230) b!2559974))

(assert (= (and b!2559971 (not c!411230)) b!2559978))

(assert (= (and b!2559978 c!411226) b!2559973))

(assert (= (and b!2559978 (not c!411226)) b!2559972))

(assert (= (and b!2559972 c!411228) b!2559976))

(assert (= (and b!2559972 (not c!411228)) b!2559975))

(assert (= (or b!2559976 b!2559975) bm!163925))

(assert (= (or b!2559973 bm!163925) bm!163923))

(assert (= (or b!2559974 bm!163923) bm!163926))

(assert (= (or b!2559974 b!2559976) bm!163924))

(declare-fun m!2900603 () Bool)

(assert (=> bm!163924 m!2900603))

(assert (=> b!2559972 m!2899889))

(declare-fun m!2900605 () Bool)

(assert (=> d!725342 m!2900605))

(assert (=> d!725342 m!2899195))

(declare-fun m!2900607 () Bool)

(assert (=> bm!163926 m!2900607))

(assert (=> b!2558513 d!725342))

(assert (=> b!2558511 d!725004))

(declare-fun d!725344 () Bool)

(assert (=> d!725344 (= (isEmpty!17034 (tail!4095 (_2!17336 lt!904412))) ((_ is Nil!29578) (tail!4095 (_2!17336 lt!904412))))))

(assert (=> b!2558416 d!725344))

(declare-fun d!725346 () Bool)

(assert (=> d!725346 (= (tail!4095 (_2!17336 lt!904412)) (t!211377 (_2!17336 lt!904412)))))

(assert (=> b!2558416 d!725346))

(assert (=> b!2558420 d!725108))

(assert (=> b!2558766 d!724816))

(declare-fun d!725348 () Bool)

(assert (=> d!725348 (= (nullable!2530 (reg!7942 (regOne!15738 r!27340))) (nullableFct!755 (reg!7942 (regOne!15738 r!27340))))))

(declare-fun bs!469806 () Bool)

(assert (= bs!469806 d!725348))

(declare-fun m!2900609 () Bool)

(assert (=> bs!469806 m!2900609))

(assert (=> b!2558498 d!725348))

(assert (=> d!724914 d!724910))

(assert (=> d!724914 d!724912))

(declare-fun d!725350 () Bool)

(assert (=> d!725350 (contains!5305 (firstChars!96 (regOne!15738 r!27340)) c!14016)))

(assert (=> d!725350 true))

(declare-fun _$136!112 () Unit!43411)

(assert (=> d!725350 (= (choose!15101 (regOne!15738 r!27340) c!14016 (_1!17336 lt!904412)) _$136!112)))

(declare-fun bs!469808 () Bool)

(assert (= bs!469808 d!725350))

(assert (=> bs!469808 m!2899129))

(assert (=> bs!469808 m!2899129))

(assert (=> bs!469808 m!2899131))

(assert (=> d!724914 d!725350))

(assert (=> d!724914 d!724864))

(assert (=> b!2558809 d!725136))

(assert (=> d!724916 d!725206))

(declare-fun call!163932 () Bool)

(declare-fun bm!163927 () Bool)

(declare-fun c!411234 () Bool)

(assert (=> bm!163927 (= call!163932 (validRegex!3239 (ite c!411234 (regTwo!15739 (derivative!308 lt!904421 tl!4068)) (regOne!15738 (derivative!308 lt!904421 tl!4068)))))))

(declare-fun b!2559984 () Bool)

(declare-fun e!1616827 () Bool)

(declare-fun e!1616831 () Bool)

(assert (=> b!2559984 (= e!1616827 e!1616831)))

(declare-fun c!411232 () Bool)

(assert (=> b!2559984 (= c!411232 ((_ is Star!7613) (derivative!308 lt!904421 tl!4068)))))

(declare-fun b!2559985 () Bool)

(declare-fun e!1616829 () Bool)

(declare-fun call!163933 () Bool)

(assert (=> b!2559985 (= e!1616829 call!163933)))

(declare-fun b!2559986 () Bool)

(declare-fun res!1077887 () Bool)

(declare-fun e!1616833 () Bool)

(assert (=> b!2559986 (=> (not res!1077887) (not e!1616833))))

(assert (=> b!2559986 (= res!1077887 call!163933)))

(declare-fun e!1616828 () Bool)

(assert (=> b!2559986 (= e!1616828 e!1616833)))

(declare-fun b!2559987 () Bool)

(assert (=> b!2559987 (= e!1616831 e!1616828)))

(assert (=> b!2559987 (= c!411234 ((_ is Union!7613) (derivative!308 lt!904421 tl!4068)))))

(declare-fun b!2559988 () Bool)

(declare-fun e!1616834 () Bool)

(assert (=> b!2559988 (= e!1616834 e!1616829)))

(declare-fun res!1077888 () Bool)

(assert (=> b!2559988 (=> (not res!1077888) (not e!1616829))))

(assert (=> b!2559988 (= res!1077888 call!163932)))

(declare-fun b!2559989 () Bool)

(declare-fun res!1077883 () Bool)

(assert (=> b!2559989 (=> res!1077883 e!1616834)))

(assert (=> b!2559989 (= res!1077883 (not ((_ is Concat!12309) (derivative!308 lt!904421 tl!4068))))))

(assert (=> b!2559989 (= e!1616828 e!1616834)))

(declare-fun b!2559990 () Bool)

(declare-fun e!1616832 () Bool)

(declare-fun call!163934 () Bool)

(assert (=> b!2559990 (= e!1616832 call!163934)))

(declare-fun b!2559991 () Bool)

(assert (=> b!2559991 (= e!1616833 call!163932)))

(declare-fun bm!163928 () Bool)

(assert (=> bm!163928 (= call!163934 (validRegex!3239 (ite c!411232 (reg!7942 (derivative!308 lt!904421 tl!4068)) (ite c!411234 (regOne!15739 (derivative!308 lt!904421 tl!4068)) (regTwo!15738 (derivative!308 lt!904421 tl!4068))))))))

(declare-fun d!725356 () Bool)

(declare-fun res!1077886 () Bool)

(assert (=> d!725356 (=> res!1077886 e!1616827)))

(assert (=> d!725356 (= res!1077886 ((_ is ElementMatch!7613) (derivative!308 lt!904421 tl!4068)))))

(assert (=> d!725356 (= (validRegex!3239 (derivative!308 lt!904421 tl!4068)) e!1616827)))

(declare-fun bm!163929 () Bool)

(assert (=> bm!163929 (= call!163933 call!163934)))

(declare-fun b!2559992 () Bool)

(assert (=> b!2559992 (= e!1616831 e!1616832)))

(declare-fun res!1077882 () Bool)

(assert (=> b!2559992 (= res!1077882 (not (nullable!2530 (reg!7942 (derivative!308 lt!904421 tl!4068)))))))

(assert (=> b!2559992 (=> (not res!1077882) (not e!1616832))))

(assert (= (and d!725356 (not res!1077886)) b!2559984))

(assert (= (and b!2559984 c!411232) b!2559992))

(assert (= (and b!2559984 (not c!411232)) b!2559987))

(assert (= (and b!2559992 res!1077882) b!2559990))

(assert (= (and b!2559987 c!411234) b!2559986))

(assert (= (and b!2559987 (not c!411234)) b!2559989))

(assert (= (and b!2559986 res!1077887) b!2559991))

(assert (= (and b!2559989 (not res!1077883)) b!2559988))

(assert (= (and b!2559988 res!1077888) b!2559985))

(assert (= (or b!2559986 b!2559985) bm!163929))

(assert (= (or b!2559991 b!2559988) bm!163927))

(assert (= (or b!2559990 bm!163929) bm!163928))

(declare-fun m!2900627 () Bool)

(assert (=> bm!163927 m!2900627))

(declare-fun m!2900629 () Bool)

(assert (=> bm!163928 m!2900629))

(declare-fun m!2900631 () Bool)

(assert (=> b!2559992 m!2900631))

(assert (=> d!724916 d!725356))

(declare-fun b!2560002 () Bool)

(declare-fun e!1616847 () Bool)

(declare-fun lt!904602 () Bool)

(declare-fun call!163938 () Bool)

(assert (=> b!2560002 (= e!1616847 (= lt!904602 call!163938))))

(declare-fun b!2560003 () Bool)

(declare-fun res!1077898 () Bool)

(declare-fun e!1616842 () Bool)

(assert (=> b!2560003 (=> res!1077898 e!1616842)))

(assert (=> b!2560003 (= res!1077898 (not (isEmpty!17034 (tail!4095 (tail!4095 (_2!17336 lt!904412))))))))

(declare-fun b!2560004 () Bool)

(assert (=> b!2560004 (= e!1616842 (not (= (head!5820 (tail!4095 (_2!17336 lt!904412))) (c!410685 (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 (_2!17336 lt!904412)))))))))

(declare-fun bm!163933 () Bool)

(assert (=> bm!163933 (= call!163938 (isEmpty!17034 (tail!4095 (_2!17336 lt!904412))))))

(declare-fun b!2560005 () Bool)

(declare-fun res!1077899 () Bool)

(declare-fun e!1616848 () Bool)

(assert (=> b!2560005 (=> res!1077899 e!1616848)))

(declare-fun e!1616843 () Bool)

(assert (=> b!2560005 (= res!1077899 e!1616843)))

(declare-fun res!1077895 () Bool)

(assert (=> b!2560005 (=> (not res!1077895) (not e!1616843))))

(assert (=> b!2560005 (= res!1077895 lt!904602)))

(declare-fun d!725362 () Bool)

(assert (=> d!725362 e!1616847))

(declare-fun c!411237 () Bool)

(assert (=> d!725362 (= c!411237 ((_ is EmptyExpr!7613) (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 (_2!17336 lt!904412)))))))

(declare-fun e!1616844 () Bool)

(assert (=> d!725362 (= lt!904602 e!1616844)))

(declare-fun c!411239 () Bool)

(assert (=> d!725362 (= c!411239 (isEmpty!17034 (tail!4095 (_2!17336 lt!904412))))))

(assert (=> d!725362 (validRegex!3239 (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 (_2!17336 lt!904412))))))

(assert (=> d!725362 (= (matchR!3558 (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 (_2!17336 lt!904412))) (tail!4095 (_2!17336 lt!904412))) lt!904602)))

(declare-fun b!2560006 () Bool)

(assert (=> b!2560006 (= e!1616844 (matchR!3558 (derivativeStep!2182 (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 (_2!17336 lt!904412))) (head!5820 (tail!4095 (_2!17336 lt!904412)))) (tail!4095 (tail!4095 (_2!17336 lt!904412)))))))

(declare-fun b!2560007 () Bool)

(declare-fun res!1077894 () Bool)

(assert (=> b!2560007 (=> res!1077894 e!1616848)))

(assert (=> b!2560007 (= res!1077894 (not ((_ is ElementMatch!7613) (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 (_2!17336 lt!904412))))))))

(declare-fun e!1616846 () Bool)

(assert (=> b!2560007 (= e!1616846 e!1616848)))

(declare-fun b!2560008 () Bool)

(assert (=> b!2560008 (= e!1616847 e!1616846)))

(declare-fun c!411238 () Bool)

(assert (=> b!2560008 (= c!411238 ((_ is EmptyLang!7613) (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 (_2!17336 lt!904412)))))))

(declare-fun b!2560009 () Bool)

(declare-fun e!1616845 () Bool)

(assert (=> b!2560009 (= e!1616848 e!1616845)))

(declare-fun res!1077901 () Bool)

(assert (=> b!2560009 (=> (not res!1077901) (not e!1616845))))

(assert (=> b!2560009 (= res!1077901 (not lt!904602))))

(declare-fun b!2560010 () Bool)

(declare-fun res!1077900 () Bool)

(assert (=> b!2560010 (=> (not res!1077900) (not e!1616843))))

(assert (=> b!2560010 (= res!1077900 (isEmpty!17034 (tail!4095 (tail!4095 (_2!17336 lt!904412)))))))

(declare-fun b!2560011 () Bool)

(declare-fun res!1077897 () Bool)

(assert (=> b!2560011 (=> (not res!1077897) (not e!1616843))))

(assert (=> b!2560011 (= res!1077897 (not call!163938))))

(declare-fun b!2560012 () Bool)

(assert (=> b!2560012 (= e!1616846 (not lt!904602))))

(declare-fun b!2560013 () Bool)

(assert (=> b!2560013 (= e!1616845 e!1616842)))

(declare-fun res!1077896 () Bool)

(assert (=> b!2560013 (=> res!1077896 e!1616842)))

(assert (=> b!2560013 (= res!1077896 call!163938)))

(declare-fun b!2560014 () Bool)

(assert (=> b!2560014 (= e!1616843 (= (head!5820 (tail!4095 (_2!17336 lt!904412))) (c!410685 (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 (_2!17336 lt!904412))))))))

(declare-fun b!2560015 () Bool)

(assert (=> b!2560015 (= e!1616844 (nullable!2530 (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 (_2!17336 lt!904412)))))))

(assert (= (and d!725362 c!411239) b!2560015))

(assert (= (and d!725362 (not c!411239)) b!2560006))

(assert (= (and d!725362 c!411237) b!2560002))

(assert (= (and d!725362 (not c!411237)) b!2560008))

(assert (= (and b!2560008 c!411238) b!2560012))

(assert (= (and b!2560008 (not c!411238)) b!2560007))

(assert (= (and b!2560007 (not res!1077894)) b!2560005))

(assert (= (and b!2560005 res!1077895) b!2560011))

(assert (= (and b!2560011 res!1077897) b!2560010))

(assert (= (and b!2560010 res!1077900) b!2560014))

(assert (= (and b!2560005 (not res!1077899)) b!2560009))

(assert (= (and b!2560009 res!1077901) b!2560013))

(assert (= (and b!2560013 (not res!1077896)) b!2560003))

(assert (= (and b!2560003 (not res!1077898)) b!2560004))

(assert (= (or b!2560002 b!2560011 b!2560013) bm!163933))

(assert (=> bm!163933 m!2899291))

(assert (=> bm!163933 m!2899293))

(assert (=> d!725362 m!2899291))

(assert (=> d!725362 m!2899293))

(assert (=> d!725362 m!2899297))

(declare-fun m!2900643 () Bool)

(assert (=> d!725362 m!2900643))

(assert (=> b!2560010 m!2899291))

(declare-fun m!2900645 () Bool)

(assert (=> b!2560010 m!2900645))

(assert (=> b!2560010 m!2900645))

(declare-fun m!2900647 () Bool)

(assert (=> b!2560010 m!2900647))

(assert (=> b!2560006 m!2899291))

(declare-fun m!2900649 () Bool)

(assert (=> b!2560006 m!2900649))

(assert (=> b!2560006 m!2899297))

(assert (=> b!2560006 m!2900649))

(declare-fun m!2900651 () Bool)

(assert (=> b!2560006 m!2900651))

(assert (=> b!2560006 m!2899291))

(assert (=> b!2560006 m!2900645))

(assert (=> b!2560006 m!2900651))

(assert (=> b!2560006 m!2900645))

(declare-fun m!2900657 () Bool)

(assert (=> b!2560006 m!2900657))

(assert (=> b!2560015 m!2899297))

(declare-fun m!2900659 () Bool)

(assert (=> b!2560015 m!2900659))

(assert (=> b!2560003 m!2899291))

(assert (=> b!2560003 m!2900645))

(assert (=> b!2560003 m!2900645))

(assert (=> b!2560003 m!2900647))

(assert (=> b!2560014 m!2899291))

(assert (=> b!2560014 m!2900649))

(assert (=> b!2560004 m!2899291))

(assert (=> b!2560004 m!2900649))

(assert (=> b!2558412 d!725362))

(declare-fun bm!163934 () Bool)

(declare-fun call!163941 () Regex!7613)

(declare-fun call!163942 () Regex!7613)

(assert (=> bm!163934 (= call!163941 call!163942)))

(declare-fun b!2560020 () Bool)

(declare-fun e!1616852 () Regex!7613)

(assert (=> b!2560020 (= e!1616852 EmptyLang!7613)))

(declare-fun b!2560021 () Bool)

(declare-fun c!411245 () Bool)

(assert (=> b!2560021 (= c!411245 ((_ is Union!7613) (regTwo!15738 r!27340)))))

(declare-fun e!1616854 () Regex!7613)

(declare-fun e!1616856 () Regex!7613)

(assert (=> b!2560021 (= e!1616854 e!1616856)))

(declare-fun call!163939 () Regex!7613)

(declare-fun bm!163935 () Bool)

(assert (=> bm!163935 (= call!163939 (derivativeStep!2182 (ite c!411245 (regOne!15739 (regTwo!15738 r!27340)) (regTwo!15738 (regTwo!15738 r!27340))) (head!5820 (_2!17336 lt!904412))))))

(declare-fun b!2560022 () Bool)

(declare-fun c!411243 () Bool)

(assert (=> b!2560022 (= c!411243 (nullable!2530 (regOne!15738 (regTwo!15738 r!27340))))))

(declare-fun e!1616855 () Regex!7613)

(declare-fun e!1616853 () Regex!7613)

(assert (=> b!2560022 (= e!1616855 e!1616853)))

(declare-fun b!2560023 () Bool)

(assert (=> b!2560023 (= e!1616855 (Concat!12309 call!163941 (regTwo!15738 r!27340)))))

(declare-fun bm!163936 () Bool)

(declare-fun call!163940 () Regex!7613)

(assert (=> bm!163936 (= call!163940 call!163941)))

(declare-fun d!725368 () Bool)

(declare-fun lt!904604 () Regex!7613)

(assert (=> d!725368 (validRegex!3239 lt!904604)))

(assert (=> d!725368 (= lt!904604 e!1616852)))

(declare-fun c!411242 () Bool)

(assert (=> d!725368 (= c!411242 (or ((_ is EmptyExpr!7613) (regTwo!15738 r!27340)) ((_ is EmptyLang!7613) (regTwo!15738 r!27340))))))

(assert (=> d!725368 (validRegex!3239 (regTwo!15738 r!27340))))

(assert (=> d!725368 (= (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 (_2!17336 lt!904412))) lt!904604)))

(declare-fun b!2560024 () Bool)

(assert (=> b!2560024 (= e!1616856 (Union!7613 call!163939 call!163942))))

(declare-fun b!2560025 () Bool)

(assert (=> b!2560025 (= e!1616853 (Union!7613 (Concat!12309 call!163940 (regTwo!15738 (regTwo!15738 r!27340))) EmptyLang!7613))))

(declare-fun b!2560026 () Bool)

(assert (=> b!2560026 (= e!1616853 (Union!7613 (Concat!12309 call!163940 (regTwo!15738 (regTwo!15738 r!27340))) call!163939))))

(declare-fun b!2560027 () Bool)

(assert (=> b!2560027 (= e!1616852 e!1616854)))

(declare-fun c!411244 () Bool)

(assert (=> b!2560027 (= c!411244 ((_ is ElementMatch!7613) (regTwo!15738 r!27340)))))

(declare-fun b!2560028 () Bool)

(assert (=> b!2560028 (= e!1616856 e!1616855)))

(declare-fun c!411241 () Bool)

(assert (=> b!2560028 (= c!411241 ((_ is Star!7613) (regTwo!15738 r!27340)))))

(declare-fun bm!163937 () Bool)

(assert (=> bm!163937 (= call!163942 (derivativeStep!2182 (ite c!411245 (regTwo!15739 (regTwo!15738 r!27340)) (ite c!411241 (reg!7942 (regTwo!15738 r!27340)) (regOne!15738 (regTwo!15738 r!27340)))) (head!5820 (_2!17336 lt!904412))))))

(declare-fun b!2560029 () Bool)

(assert (=> b!2560029 (= e!1616854 (ite (= (head!5820 (_2!17336 lt!904412)) (c!410685 (regTwo!15738 r!27340))) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725368 c!411242) b!2560020))

(assert (= (and d!725368 (not c!411242)) b!2560027))

(assert (= (and b!2560027 c!411244) b!2560029))

(assert (= (and b!2560027 (not c!411244)) b!2560021))

(assert (= (and b!2560021 c!411245) b!2560024))

(assert (= (and b!2560021 (not c!411245)) b!2560028))

(assert (= (and b!2560028 c!411241) b!2560023))

(assert (= (and b!2560028 (not c!411241)) b!2560022))

(assert (= (and b!2560022 c!411243) b!2560026))

(assert (= (and b!2560022 (not c!411243)) b!2560025))

(assert (= (or b!2560026 b!2560025) bm!163936))

(assert (= (or b!2560023 bm!163936) bm!163934))

(assert (= (or b!2560024 bm!163934) bm!163937))

(assert (= (or b!2560024 b!2560026) bm!163935))

(assert (=> bm!163935 m!2899295))

(declare-fun m!2900661 () Bool)

(assert (=> bm!163935 m!2900661))

(assert (=> b!2560022 m!2899573))

(declare-fun m!2900663 () Bool)

(assert (=> d!725368 m!2900663))

(assert (=> d!725368 m!2899289))

(assert (=> bm!163937 m!2899295))

(declare-fun m!2900665 () Bool)

(assert (=> bm!163937 m!2900665))

(assert (=> b!2558412 d!725368))

(assert (=> b!2558412 d!725108))

(assert (=> b!2558412 d!725346))

(assert (=> b!2558696 d!724942))

(declare-fun d!725370 () Bool)

(assert (=> d!725370 (= (isDefined!4736 (findConcatSeparation!936 lt!904422 (regTwo!15738 r!27340) Nil!29578 tl!4068 tl!4068)) (not (isEmpty!17036 (findConcatSeparation!936 lt!904422 (regTwo!15738 r!27340) Nil!29578 tl!4068 tl!4068))))))

(declare-fun bs!469810 () Bool)

(assert (= bs!469810 d!725370))

(assert (=> bs!469810 m!2899141))

(declare-fun m!2900667 () Bool)

(assert (=> bs!469810 m!2900667))

(assert (=> d!724932 d!725370))

(assert (=> d!724932 d!724936))

(declare-fun d!725372 () Bool)

(assert (=> d!725372 (isDefined!4736 (findConcatSeparation!936 lt!904422 (regTwo!15738 r!27340) Nil!29578 tl!4068 tl!4068))))

(assert (=> d!725372 true))

(declare-fun _$122!343 () Unit!43411)

(assert (=> d!725372 (= (choose!15103 lt!904422 (regTwo!15738 r!27340) tl!4068) _$122!343)))

(declare-fun bs!469811 () Bool)

(assert (= bs!469811 d!725372))

(assert (=> bs!469811 m!2899141))

(assert (=> bs!469811 m!2899141))

(assert (=> bs!469811 m!2899585))

(assert (=> d!724932 d!725372))

(assert (=> d!724932 d!725076))

(assert (=> d!724816 d!725090))

(assert (=> d!724816 d!725250))

(declare-fun bm!163938 () Bool)

(declare-fun call!163943 () Bool)

(declare-fun c!411247 () Bool)

(assert (=> bm!163938 (= call!163943 (validRegex!3239 (ite c!411247 (regTwo!15739 lt!904465) (regOne!15738 lt!904465))))))

(declare-fun b!2560113 () Bool)

(declare-fun e!1616878 () Bool)

(declare-fun e!1616881 () Bool)

(assert (=> b!2560113 (= e!1616878 e!1616881)))

(declare-fun c!411246 () Bool)

(assert (=> b!2560113 (= c!411246 ((_ is Star!7613) lt!904465))))

(declare-fun b!2560115 () Bool)

(declare-fun e!1616880 () Bool)

(declare-fun call!163944 () Bool)

(assert (=> b!2560115 (= e!1616880 call!163944)))

(declare-fun b!2560117 () Bool)

(declare-fun res!1077907 () Bool)

(declare-fun e!1616883 () Bool)

(assert (=> b!2560117 (=> (not res!1077907) (not e!1616883))))

(assert (=> b!2560117 (= res!1077907 call!163944)))

(declare-fun e!1616879 () Bool)

(assert (=> b!2560117 (= e!1616879 e!1616883)))

(declare-fun b!2560118 () Bool)

(assert (=> b!2560118 (= e!1616881 e!1616879)))

(assert (=> b!2560118 (= c!411247 ((_ is Union!7613) lt!904465))))

(declare-fun b!2560119 () Bool)

(declare-fun e!1616885 () Bool)

(assert (=> b!2560119 (= e!1616885 e!1616880)))

(declare-fun res!1077908 () Bool)

(assert (=> b!2560119 (=> (not res!1077908) (not e!1616880))))

(assert (=> b!2560119 (= res!1077908 call!163943)))

(declare-fun b!2560120 () Bool)

(declare-fun res!1077905 () Bool)

(assert (=> b!2560120 (=> res!1077905 e!1616885)))

(assert (=> b!2560120 (= res!1077905 (not ((_ is Concat!12309) lt!904465)))))

(assert (=> b!2560120 (= e!1616879 e!1616885)))

(declare-fun b!2560121 () Bool)

(declare-fun e!1616882 () Bool)

(declare-fun call!163945 () Bool)

(assert (=> b!2560121 (= e!1616882 call!163945)))

(declare-fun b!2560122 () Bool)

(assert (=> b!2560122 (= e!1616883 call!163943)))

(declare-fun bm!163939 () Bool)

(assert (=> bm!163939 (= call!163945 (validRegex!3239 (ite c!411246 (reg!7942 lt!904465) (ite c!411247 (regOne!15739 lt!904465) (regTwo!15738 lt!904465)))))))

(declare-fun d!725374 () Bool)

(declare-fun res!1077906 () Bool)

(assert (=> d!725374 (=> res!1077906 e!1616878)))

(assert (=> d!725374 (= res!1077906 ((_ is ElementMatch!7613) lt!904465))))

(assert (=> d!725374 (= (validRegex!3239 lt!904465) e!1616878)))

(declare-fun bm!163940 () Bool)

(assert (=> bm!163940 (= call!163944 call!163945)))

(declare-fun b!2560123 () Bool)

(assert (=> b!2560123 (= e!1616881 e!1616882)))

(declare-fun res!1077904 () Bool)

(assert (=> b!2560123 (= res!1077904 (not (nullable!2530 (reg!7942 lt!904465))))))

(assert (=> b!2560123 (=> (not res!1077904) (not e!1616882))))

(assert (= (and d!725374 (not res!1077906)) b!2560113))

(assert (= (and b!2560113 c!411246) b!2560123))

(assert (= (and b!2560113 (not c!411246)) b!2560118))

(assert (= (and b!2560123 res!1077904) b!2560121))

(assert (= (and b!2560118 c!411247) b!2560117))

(assert (= (and b!2560118 (not c!411247)) b!2560120))

(assert (= (and b!2560117 res!1077907) b!2560122))

(assert (= (and b!2560120 (not res!1077905)) b!2560119))

(assert (= (and b!2560119 res!1077908) b!2560115))

(assert (= (or b!2560117 b!2560115) bm!163940))

(assert (= (or b!2560122 b!2560119) bm!163938))

(assert (= (or b!2560121 bm!163940) bm!163939))

(declare-fun m!2900669 () Bool)

(assert (=> bm!163938 m!2900669))

(declare-fun m!2900671 () Bool)

(assert (=> bm!163939 m!2900671))

(declare-fun m!2900673 () Bool)

(assert (=> b!2560123 m!2900673))

(assert (=> d!724868 d!725374))

(assert (=> d!724868 d!725076))

(assert (=> b!2558507 d!725056))

(assert (=> b!2558507 d!725006))

(assert (=> bm!163526 d!725090))

(assert (=> bm!163635 d!725090))

(declare-fun b!2560140 () Bool)

(declare-fun e!1616890 () List!29678)

(assert (=> b!2560140 (= e!1616890 (t!211377 tl!4068))))

(declare-fun d!725376 () Bool)

(declare-fun e!1616891 () Bool)

(assert (=> d!725376 e!1616891))

(declare-fun res!1077910 () Bool)

(assert (=> d!725376 (=> (not res!1077910) (not e!1616891))))

(declare-fun lt!904605 () List!29678)

(assert (=> d!725376 (= res!1077910 (= (content!4076 lt!904605) ((_ map or) (content!4076 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578))) (content!4076 (t!211377 tl!4068)))))))

(assert (=> d!725376 (= lt!904605 e!1616890)))

(declare-fun c!411248 () Bool)

(assert (=> d!725376 (= c!411248 ((_ is Nil!29578) (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578))))))

(assert (=> d!725376 (= (++!7270 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578)) (t!211377 tl!4068)) lt!904605)))

(declare-fun b!2560142 () Bool)

(declare-fun res!1077909 () Bool)

(assert (=> b!2560142 (=> (not res!1077909) (not e!1616891))))

(assert (=> b!2560142 (= res!1077909 (= (size!22956 lt!904605) (+ (size!22956 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578))) (size!22956 (t!211377 tl!4068)))))))

(declare-fun b!2560141 () Bool)

(assert (=> b!2560141 (= e!1616890 (Cons!29578 (h!34998 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578))) (++!7270 (t!211377 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578))) (t!211377 tl!4068))))))

(declare-fun b!2560143 () Bool)

(assert (=> b!2560143 (= e!1616891 (or (not (= (t!211377 tl!4068) Nil!29578)) (= lt!904605 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578)))))))

(assert (= (and d!725376 c!411248) b!2560140))

(assert (= (and d!725376 (not c!411248)) b!2560141))

(assert (= (and d!725376 res!1077910) b!2560142))

(assert (= (and b!2560142 res!1077909) b!2560143))

(declare-fun m!2900675 () Bool)

(assert (=> d!725376 m!2900675))

(assert (=> d!725376 m!2899595))

(declare-fun m!2900677 () Bool)

(assert (=> d!725376 m!2900677))

(declare-fun m!2900679 () Bool)

(assert (=> d!725376 m!2900679))

(declare-fun m!2900681 () Bool)

(assert (=> b!2560142 m!2900681))

(assert (=> b!2560142 m!2899595))

(declare-fun m!2900683 () Bool)

(assert (=> b!2560142 m!2900683))

(declare-fun m!2900685 () Bool)

(assert (=> b!2560142 m!2900685))

(declare-fun m!2900687 () Bool)

(assert (=> b!2560141 m!2900687))

(assert (=> b!2558836 d!725376))

(declare-fun b!2560144 () Bool)

(declare-fun e!1616892 () List!29678)

(assert (=> b!2560144 (= e!1616892 (Cons!29578 (h!34998 tl!4068) Nil!29578))))

(declare-fun d!725378 () Bool)

(declare-fun e!1616893 () Bool)

(assert (=> d!725378 e!1616893))

(declare-fun res!1077912 () Bool)

(assert (=> d!725378 (=> (not res!1077912) (not e!1616893))))

(declare-fun lt!904606 () List!29678)

(assert (=> d!725378 (= res!1077912 (= (content!4076 lt!904606) ((_ map or) (content!4076 Nil!29578) (content!4076 (Cons!29578 (h!34998 tl!4068) Nil!29578)))))))

(assert (=> d!725378 (= lt!904606 e!1616892)))

(declare-fun c!411249 () Bool)

(assert (=> d!725378 (= c!411249 ((_ is Nil!29578) Nil!29578))))

(assert (=> d!725378 (= (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578)) lt!904606)))

(declare-fun b!2560146 () Bool)

(declare-fun res!1077911 () Bool)

(assert (=> b!2560146 (=> (not res!1077911) (not e!1616893))))

(assert (=> b!2560146 (= res!1077911 (= (size!22956 lt!904606) (+ (size!22956 Nil!29578) (size!22956 (Cons!29578 (h!34998 tl!4068) Nil!29578)))))))

(declare-fun b!2560145 () Bool)

(assert (=> b!2560145 (= e!1616892 (Cons!29578 (h!34998 Nil!29578) (++!7270 (t!211377 Nil!29578) (Cons!29578 (h!34998 tl!4068) Nil!29578))))))

(declare-fun b!2560147 () Bool)

(assert (=> b!2560147 (= e!1616893 (or (not (= (Cons!29578 (h!34998 tl!4068) Nil!29578) Nil!29578)) (= lt!904606 Nil!29578)))))

(assert (= (and d!725378 c!411249) b!2560144))

(assert (= (and d!725378 (not c!411249)) b!2560145))

(assert (= (and d!725378 res!1077912) b!2560146))

(assert (= (and b!2560146 res!1077911) b!2560147))

(declare-fun m!2900689 () Bool)

(assert (=> d!725378 m!2900689))

(declare-fun m!2900691 () Bool)

(assert (=> d!725378 m!2900691))

(declare-fun m!2900693 () Bool)

(assert (=> d!725378 m!2900693))

(declare-fun m!2900695 () Bool)

(assert (=> b!2560146 m!2900695))

(declare-fun m!2900697 () Bool)

(assert (=> b!2560146 m!2900697))

(declare-fun m!2900699 () Bool)

(assert (=> b!2560146 m!2900699))

(declare-fun m!2900701 () Bool)

(assert (=> b!2560145 m!2900701))

(assert (=> b!2558836 d!725378))

(declare-fun d!725380 () Bool)

(assert (=> d!725380 (= (++!7270 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578)) (t!211377 tl!4068)) tl!4068)))

(declare-fun lt!904609 () Unit!43411)

(declare-fun choose!15105 (List!29678 C!15384 List!29678 List!29678) Unit!43411)

(assert (=> d!725380 (= lt!904609 (choose!15105 Nil!29578 (h!34998 tl!4068) (t!211377 tl!4068) tl!4068))))

(assert (=> d!725380 (= (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) (t!211377 tl!4068))) tl!4068)))

(assert (=> d!725380 (= (lemmaMoveElementToOtherListKeepsConcatEq!803 Nil!29578 (h!34998 tl!4068) (t!211377 tl!4068) tl!4068) lt!904609)))

(declare-fun bs!469812 () Bool)

(assert (= bs!469812 d!725380))

(assert (=> bs!469812 m!2899595))

(assert (=> bs!469812 m!2899595))

(assert (=> bs!469812 m!2899597))

(declare-fun m!2900703 () Bool)

(assert (=> bs!469812 m!2900703))

(declare-fun m!2900705 () Bool)

(assert (=> bs!469812 m!2900705))

(assert (=> b!2558836 d!725380))

(declare-fun b!2560148 () Bool)

(declare-fun res!1077913 () Bool)

(declare-fun e!1616897 () Bool)

(assert (=> b!2560148 (=> (not res!1077913) (not e!1616897))))

(declare-fun lt!904612 () Option!5914)

(assert (=> b!2560148 (= res!1077913 (matchR!3558 (regTwo!15738 r!27340) (_2!17336 (get!9299 lt!904612))))))

(declare-fun b!2560149 () Bool)

(declare-fun lt!904611 () Unit!43411)

(declare-fun lt!904610 () Unit!43411)

(assert (=> b!2560149 (= lt!904611 lt!904610)))

(assert (=> b!2560149 (= (++!7270 (++!7270 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578)) (Cons!29578 (h!34998 (t!211377 tl!4068)) Nil!29578)) (t!211377 (t!211377 tl!4068))) tl!4068)))

(assert (=> b!2560149 (= lt!904610 (lemmaMoveElementToOtherListKeepsConcatEq!803 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578)) (h!34998 (t!211377 tl!4068)) (t!211377 (t!211377 tl!4068)) tl!4068))))

(declare-fun e!1616894 () Option!5914)

(assert (=> b!2560149 (= e!1616894 (findConcatSeparation!936 lt!904422 (regTwo!15738 r!27340) (++!7270 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578)) (Cons!29578 (h!34998 (t!211377 tl!4068)) Nil!29578)) (t!211377 (t!211377 tl!4068)) tl!4068))))

(declare-fun b!2560150 () Bool)

(declare-fun e!1616895 () Bool)

(assert (=> b!2560150 (= e!1616895 (not (isDefined!4736 lt!904612)))))

(declare-fun b!2560151 () Bool)

(assert (=> b!2560151 (= e!1616894 None!5913)))

(declare-fun b!2560152 () Bool)

(declare-fun e!1616896 () Option!5914)

(assert (=> b!2560152 (= e!1616896 e!1616894)))

(declare-fun c!411250 () Bool)

(assert (=> b!2560152 (= c!411250 ((_ is Nil!29578) (t!211377 tl!4068)))))

(declare-fun d!725382 () Bool)

(assert (=> d!725382 e!1616895))

(declare-fun res!1077915 () Bool)

(assert (=> d!725382 (=> res!1077915 e!1616895)))

(assert (=> d!725382 (= res!1077915 e!1616897)))

(declare-fun res!1077916 () Bool)

(assert (=> d!725382 (=> (not res!1077916) (not e!1616897))))

(assert (=> d!725382 (= res!1077916 (isDefined!4736 lt!904612))))

(assert (=> d!725382 (= lt!904612 e!1616896)))

(declare-fun c!411251 () Bool)

(declare-fun e!1616898 () Bool)

(assert (=> d!725382 (= c!411251 e!1616898)))

(declare-fun res!1077914 () Bool)

(assert (=> d!725382 (=> (not res!1077914) (not e!1616898))))

(assert (=> d!725382 (= res!1077914 (matchR!3558 lt!904422 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578))))))

(assert (=> d!725382 (validRegex!3239 lt!904422)))

(assert (=> d!725382 (= (findConcatSeparation!936 lt!904422 (regTwo!15738 r!27340) (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578)) (t!211377 tl!4068) tl!4068) lt!904612)))

(declare-fun b!2560153 () Bool)

(assert (=> b!2560153 (= e!1616898 (matchR!3558 (regTwo!15738 r!27340) (t!211377 tl!4068)))))

(declare-fun b!2560154 () Bool)

(assert (=> b!2560154 (= e!1616896 (Some!5913 (tuple2!29589 (++!7270 Nil!29578 (Cons!29578 (h!34998 tl!4068) Nil!29578)) (t!211377 tl!4068))))))

(declare-fun b!2560155 () Bool)

(declare-fun res!1077917 () Bool)

(assert (=> b!2560155 (=> (not res!1077917) (not e!1616897))))

(assert (=> b!2560155 (= res!1077917 (matchR!3558 lt!904422 (_1!17336 (get!9299 lt!904612))))))

(declare-fun b!2560156 () Bool)

(assert (=> b!2560156 (= e!1616897 (= (++!7270 (_1!17336 (get!9299 lt!904612)) (_2!17336 (get!9299 lt!904612))) tl!4068))))

(assert (= (and d!725382 res!1077914) b!2560153))

(assert (= (and d!725382 c!411251) b!2560154))

(assert (= (and d!725382 (not c!411251)) b!2560152))

(assert (= (and b!2560152 c!411250) b!2560151))

(assert (= (and b!2560152 (not c!411250)) b!2560149))

(assert (= (and d!725382 res!1077916) b!2560155))

(assert (= (and b!2560155 res!1077917) b!2560148))

(assert (= (and b!2560148 res!1077913) b!2560156))

(assert (= (and d!725382 (not res!1077915)) b!2560150))

(declare-fun m!2900707 () Bool)

(assert (=> b!2560155 m!2900707))

(declare-fun m!2900709 () Bool)

(assert (=> b!2560155 m!2900709))

(assert (=> b!2560149 m!2899595))

(declare-fun m!2900711 () Bool)

(assert (=> b!2560149 m!2900711))

(assert (=> b!2560149 m!2900711))

(declare-fun m!2900713 () Bool)

(assert (=> b!2560149 m!2900713))

(assert (=> b!2560149 m!2899595))

(declare-fun m!2900715 () Bool)

(assert (=> b!2560149 m!2900715))

(assert (=> b!2560149 m!2900711))

(declare-fun m!2900717 () Bool)

(assert (=> b!2560149 m!2900717))

(declare-fun m!2900719 () Bool)

(assert (=> b!2560153 m!2900719))

(declare-fun m!2900721 () Bool)

(assert (=> d!725382 m!2900721))

(assert (=> d!725382 m!2899595))

(declare-fun m!2900723 () Bool)

(assert (=> d!725382 m!2900723))

(assert (=> d!725382 m!2899195))

(assert (=> b!2560150 m!2900721))

(assert (=> b!2560148 m!2900707))

(declare-fun m!2900725 () Bool)

(assert (=> b!2560148 m!2900725))

(assert (=> b!2560156 m!2900707))

(declare-fun m!2900727 () Bool)

(assert (=> b!2560156 m!2900727))

(assert (=> b!2558836 d!725382))

(declare-fun bm!163941 () Bool)

(declare-fun call!163946 () Bool)

(declare-fun c!411253 () Bool)

(assert (=> bm!163941 (= call!163946 (validRegex!3239 (ite c!411253 (regTwo!15739 lt!904501) (regOne!15738 lt!904501))))))

(declare-fun b!2560157 () Bool)

(declare-fun e!1616899 () Bool)

(declare-fun e!1616902 () Bool)

(assert (=> b!2560157 (= e!1616899 e!1616902)))

(declare-fun c!411252 () Bool)

(assert (=> b!2560157 (= c!411252 ((_ is Star!7613) lt!904501))))

(declare-fun b!2560158 () Bool)

(declare-fun e!1616901 () Bool)

(declare-fun call!163947 () Bool)

(assert (=> b!2560158 (= e!1616901 call!163947)))

(declare-fun b!2560159 () Bool)

(declare-fun res!1077921 () Bool)

(declare-fun e!1616904 () Bool)

(assert (=> b!2560159 (=> (not res!1077921) (not e!1616904))))

(assert (=> b!2560159 (= res!1077921 call!163947)))

(declare-fun e!1616900 () Bool)

(assert (=> b!2560159 (= e!1616900 e!1616904)))

(declare-fun b!2560160 () Bool)

(assert (=> b!2560160 (= e!1616902 e!1616900)))

(assert (=> b!2560160 (= c!411253 ((_ is Union!7613) lt!904501))))

(declare-fun b!2560161 () Bool)

(declare-fun e!1616905 () Bool)

(assert (=> b!2560161 (= e!1616905 e!1616901)))

(declare-fun res!1077922 () Bool)

(assert (=> b!2560161 (=> (not res!1077922) (not e!1616901))))

(assert (=> b!2560161 (= res!1077922 call!163946)))

(declare-fun b!2560162 () Bool)

(declare-fun res!1077919 () Bool)

(assert (=> b!2560162 (=> res!1077919 e!1616905)))

(assert (=> b!2560162 (= res!1077919 (not ((_ is Concat!12309) lt!904501)))))

(assert (=> b!2560162 (= e!1616900 e!1616905)))

(declare-fun b!2560163 () Bool)

(declare-fun e!1616903 () Bool)

(declare-fun call!163948 () Bool)

(assert (=> b!2560163 (= e!1616903 call!163948)))

(declare-fun b!2560164 () Bool)

(assert (=> b!2560164 (= e!1616904 call!163946)))

(declare-fun bm!163942 () Bool)

(assert (=> bm!163942 (= call!163948 (validRegex!3239 (ite c!411252 (reg!7942 lt!904501) (ite c!411253 (regOne!15739 lt!904501) (regTwo!15738 lt!904501)))))))

(declare-fun d!725384 () Bool)

(declare-fun res!1077920 () Bool)

(assert (=> d!725384 (=> res!1077920 e!1616899)))

(assert (=> d!725384 (= res!1077920 ((_ is ElementMatch!7613) lt!904501))))

(assert (=> d!725384 (= (validRegex!3239 lt!904501) e!1616899)))

(declare-fun bm!163943 () Bool)

(assert (=> bm!163943 (= call!163947 call!163948)))

(declare-fun b!2560165 () Bool)

(assert (=> b!2560165 (= e!1616902 e!1616903)))

(declare-fun res!1077918 () Bool)

(assert (=> b!2560165 (= res!1077918 (not (nullable!2530 (reg!7942 lt!904501))))))

(assert (=> b!2560165 (=> (not res!1077918) (not e!1616903))))

(assert (= (and d!725384 (not res!1077920)) b!2560157))

(assert (= (and b!2560157 c!411252) b!2560165))

(assert (= (and b!2560157 (not c!411252)) b!2560160))

(assert (= (and b!2560165 res!1077918) b!2560163))

(assert (= (and b!2560160 c!411253) b!2560159))

(assert (= (and b!2560160 (not c!411253)) b!2560162))

(assert (= (and b!2560159 res!1077921) b!2560164))

(assert (= (and b!2560162 (not res!1077919)) b!2560161))

(assert (= (and b!2560161 res!1077922) b!2560158))

(assert (= (or b!2560159 b!2560158) bm!163943))

(assert (= (or b!2560164 b!2560161) bm!163941))

(assert (= (or b!2560163 bm!163943) bm!163942))

(declare-fun m!2900729 () Bool)

(assert (=> bm!163941 m!2900729))

(declare-fun m!2900731 () Bool)

(assert (=> bm!163942 m!2900731))

(declare-fun m!2900733 () Bool)

(assert (=> b!2560165 m!2900733))

(assert (=> d!724922 d!725384))

(assert (=> d!724922 d!725038))

(assert (=> b!2558500 d!725056))

(assert (=> b!2558500 d!725006))

(declare-fun d!725386 () Bool)

(assert (not d!725386))

(assert (=> b!2558503 d!725386))

(declare-fun d!725388 () Bool)

(assert (not d!725388))

(assert (=> b!2558503 d!725388))

(assert (=> b!2558503 d!725004))

(assert (=> b!2558503 d!725006))

(assert (=> b!2558409 d!725344))

(assert (=> b!2558409 d!725346))

(declare-fun b!2560166 () Bool)

(declare-fun e!1616911 () Bool)

(declare-fun lt!904613 () Bool)

(declare-fun call!163949 () Bool)

(assert (=> b!2560166 (= e!1616911 (= lt!904613 call!163949))))

(declare-fun b!2560167 () Bool)

(declare-fun res!1077927 () Bool)

(declare-fun e!1616906 () Bool)

(assert (=> b!2560167 (=> res!1077927 e!1616906)))

(assert (=> b!2560167 (= res!1077927 (not (isEmpty!17034 (tail!4095 tl!4068))))))

(declare-fun b!2560168 () Bool)

(assert (=> b!2560168 (= e!1616906 (not (= (head!5820 tl!4068) (c!410685 (regTwo!15738 r!27340)))))))

(declare-fun bm!163944 () Bool)

(assert (=> bm!163944 (= call!163949 (isEmpty!17034 tl!4068))))

(declare-fun b!2560169 () Bool)

(declare-fun res!1077928 () Bool)

(declare-fun e!1616912 () Bool)

(assert (=> b!2560169 (=> res!1077928 e!1616912)))

(declare-fun e!1616907 () Bool)

(assert (=> b!2560169 (= res!1077928 e!1616907)))

(declare-fun res!1077924 () Bool)

(assert (=> b!2560169 (=> (not res!1077924) (not e!1616907))))

(assert (=> b!2560169 (= res!1077924 lt!904613)))

(declare-fun d!725390 () Bool)

(assert (=> d!725390 e!1616911))

(declare-fun c!411254 () Bool)

(assert (=> d!725390 (= c!411254 ((_ is EmptyExpr!7613) (regTwo!15738 r!27340)))))

(declare-fun e!1616908 () Bool)

(assert (=> d!725390 (= lt!904613 e!1616908)))

(declare-fun c!411256 () Bool)

(assert (=> d!725390 (= c!411256 (isEmpty!17034 tl!4068))))

(assert (=> d!725390 (validRegex!3239 (regTwo!15738 r!27340))))

(assert (=> d!725390 (= (matchR!3558 (regTwo!15738 r!27340) tl!4068) lt!904613)))

(declare-fun b!2560170 () Bool)

(assert (=> b!2560170 (= e!1616908 (matchR!3558 (derivativeStep!2182 (regTwo!15738 r!27340) (head!5820 tl!4068)) (tail!4095 tl!4068)))))

(declare-fun b!2560171 () Bool)

(declare-fun res!1077923 () Bool)

(assert (=> b!2560171 (=> res!1077923 e!1616912)))

(assert (=> b!2560171 (= res!1077923 (not ((_ is ElementMatch!7613) (regTwo!15738 r!27340))))))

(declare-fun e!1616910 () Bool)

(assert (=> b!2560171 (= e!1616910 e!1616912)))

(declare-fun b!2560172 () Bool)

(assert (=> b!2560172 (= e!1616911 e!1616910)))

(declare-fun c!411255 () Bool)

(assert (=> b!2560172 (= c!411255 ((_ is EmptyLang!7613) (regTwo!15738 r!27340)))))

(declare-fun b!2560173 () Bool)

(declare-fun e!1616909 () Bool)

(assert (=> b!2560173 (= e!1616912 e!1616909)))

(declare-fun res!1077930 () Bool)

(assert (=> b!2560173 (=> (not res!1077930) (not e!1616909))))

(assert (=> b!2560173 (= res!1077930 (not lt!904613))))

(declare-fun b!2560174 () Bool)

(declare-fun res!1077929 () Bool)

(assert (=> b!2560174 (=> (not res!1077929) (not e!1616907))))

(assert (=> b!2560174 (= res!1077929 (isEmpty!17034 (tail!4095 tl!4068)))))

(declare-fun b!2560175 () Bool)

(declare-fun res!1077926 () Bool)

(assert (=> b!2560175 (=> (not res!1077926) (not e!1616907))))

(assert (=> b!2560175 (= res!1077926 (not call!163949))))

(declare-fun b!2560176 () Bool)

(assert (=> b!2560176 (= e!1616910 (not lt!904613))))

(declare-fun b!2560177 () Bool)

(assert (=> b!2560177 (= e!1616909 e!1616906)))

(declare-fun res!1077925 () Bool)

(assert (=> b!2560177 (=> res!1077925 e!1616906)))

(assert (=> b!2560177 (= res!1077925 call!163949)))

(declare-fun b!2560178 () Bool)

(assert (=> b!2560178 (= e!1616907 (= (head!5820 tl!4068) (c!410685 (regTwo!15738 r!27340))))))

(declare-fun b!2560179 () Bool)

(assert (=> b!2560179 (= e!1616908 (nullable!2530 (regTwo!15738 r!27340)))))

(assert (= (and d!725390 c!411256) b!2560179))

(assert (= (and d!725390 (not c!411256)) b!2560170))

(assert (= (and d!725390 c!411254) b!2560166))

(assert (= (and d!725390 (not c!411254)) b!2560172))

(assert (= (and b!2560172 c!411255) b!2560176))

(assert (= (and b!2560172 (not c!411255)) b!2560171))

(assert (= (and b!2560171 (not res!1077923)) b!2560169))

(assert (= (and b!2560169 res!1077924) b!2560175))

(assert (= (and b!2560175 res!1077926) b!2560174))

(assert (= (and b!2560174 res!1077929) b!2560178))

(assert (= (and b!2560169 (not res!1077928)) b!2560173))

(assert (= (and b!2560173 res!1077930) b!2560177))

(assert (= (and b!2560177 (not res!1077925)) b!2560167))

(assert (= (and b!2560167 (not res!1077927)) b!2560168))

(assert (= (or b!2560166 b!2560175 b!2560177) bm!163944))

(assert (=> bm!163944 m!2899177))

(assert (=> d!725390 m!2899177))

(assert (=> d!725390 m!2899289))

(assert (=> b!2560174 m!2899181))

(assert (=> b!2560174 m!2899181))

(assert (=> b!2560174 m!2899183))

(assert (=> b!2560170 m!2899185))

(assert (=> b!2560170 m!2899185))

(declare-fun m!2900735 () Bool)

(assert (=> b!2560170 m!2900735))

(assert (=> b!2560170 m!2899181))

(assert (=> b!2560170 m!2900735))

(assert (=> b!2560170 m!2899181))

(declare-fun m!2900737 () Bool)

(assert (=> b!2560170 m!2900737))

(assert (=> b!2560179 m!2899301))

(assert (=> b!2560167 m!2899181))

(assert (=> b!2560167 m!2899181))

(assert (=> b!2560167 m!2899183))

(assert (=> b!2560178 m!2899185))

(assert (=> b!2560168 m!2899185))

(assert (=> b!2558840 d!725390))

(declare-fun d!725392 () Bool)

(declare-fun lt!904614 () Regex!7613)

(assert (=> d!725392 (validRegex!3239 lt!904614)))

(declare-fun e!1616913 () Regex!7613)

(assert (=> d!725392 (= lt!904614 e!1616913)))

(declare-fun c!411257 () Bool)

(assert (=> d!725392 (= c!411257 ((_ is Cons!29578) (t!211377 tl!4068)))))

(assert (=> d!725392 (validRegex!3239 (derivativeStep!2182 lt!904421 (h!34998 tl!4068)))))

(assert (=> d!725392 (= (derivative!308 (derivativeStep!2182 lt!904421 (h!34998 tl!4068)) (t!211377 tl!4068)) lt!904614)))

(declare-fun b!2560180 () Bool)

(assert (=> b!2560180 (= e!1616913 (derivative!308 (derivativeStep!2182 (derivativeStep!2182 lt!904421 (h!34998 tl!4068)) (h!34998 (t!211377 tl!4068))) (t!211377 (t!211377 tl!4068))))))

(declare-fun b!2560181 () Bool)

(assert (=> b!2560181 (= e!1616913 (derivativeStep!2182 lt!904421 (h!34998 tl!4068)))))

(assert (= (and d!725392 c!411257) b!2560180))

(assert (= (and d!725392 (not c!411257)) b!2560181))

(declare-fun m!2900739 () Bool)

(assert (=> d!725392 m!2900739))

(assert (=> d!725392 m!2899559))

(declare-fun m!2900741 () Bool)

(assert (=> d!725392 m!2900741))

(assert (=> b!2560180 m!2899559))

(declare-fun m!2900743 () Bool)

(assert (=> b!2560180 m!2900743))

(assert (=> b!2560180 m!2900743))

(declare-fun m!2900745 () Bool)

(assert (=> b!2560180 m!2900745))

(assert (=> b!2558781 d!725392))

(declare-fun bm!163945 () Bool)

(declare-fun call!163952 () Regex!7613)

(declare-fun call!163953 () Regex!7613)

(assert (=> bm!163945 (= call!163952 call!163953)))

(declare-fun b!2560182 () Bool)

(declare-fun e!1616914 () Regex!7613)

(assert (=> b!2560182 (= e!1616914 EmptyLang!7613)))

(declare-fun b!2560183 () Bool)

(declare-fun c!411262 () Bool)

(assert (=> b!2560183 (= c!411262 ((_ is Union!7613) lt!904421))))

(declare-fun e!1616916 () Regex!7613)

(declare-fun e!1616918 () Regex!7613)

(assert (=> b!2560183 (= e!1616916 e!1616918)))

(declare-fun bm!163946 () Bool)

(declare-fun call!163950 () Regex!7613)

(assert (=> bm!163946 (= call!163950 (derivativeStep!2182 (ite c!411262 (regOne!15739 lt!904421) (regTwo!15738 lt!904421)) (h!34998 tl!4068)))))

(declare-fun b!2560184 () Bool)

(declare-fun c!411260 () Bool)

(assert (=> b!2560184 (= c!411260 (nullable!2530 (regOne!15738 lt!904421)))))

(declare-fun e!1616917 () Regex!7613)

(declare-fun e!1616915 () Regex!7613)

(assert (=> b!2560184 (= e!1616917 e!1616915)))

(declare-fun b!2560185 () Bool)

(assert (=> b!2560185 (= e!1616917 (Concat!12309 call!163952 lt!904421))))

(declare-fun bm!163947 () Bool)

(declare-fun call!163951 () Regex!7613)

(assert (=> bm!163947 (= call!163951 call!163952)))

(declare-fun d!725394 () Bool)

(declare-fun lt!904615 () Regex!7613)

(assert (=> d!725394 (validRegex!3239 lt!904615)))

(assert (=> d!725394 (= lt!904615 e!1616914)))

(declare-fun c!411259 () Bool)

(assert (=> d!725394 (= c!411259 (or ((_ is EmptyExpr!7613) lt!904421) ((_ is EmptyLang!7613) lt!904421)))))

(assert (=> d!725394 (validRegex!3239 lt!904421)))

(assert (=> d!725394 (= (derivativeStep!2182 lt!904421 (h!34998 tl!4068)) lt!904615)))

(declare-fun b!2560186 () Bool)

(assert (=> b!2560186 (= e!1616918 (Union!7613 call!163950 call!163953))))

(declare-fun b!2560187 () Bool)

(assert (=> b!2560187 (= e!1616915 (Union!7613 (Concat!12309 call!163951 (regTwo!15738 lt!904421)) EmptyLang!7613))))

(declare-fun b!2560188 () Bool)

(assert (=> b!2560188 (= e!1616915 (Union!7613 (Concat!12309 call!163951 (regTwo!15738 lt!904421)) call!163950))))

(declare-fun b!2560189 () Bool)

(assert (=> b!2560189 (= e!1616914 e!1616916)))

(declare-fun c!411261 () Bool)

(assert (=> b!2560189 (= c!411261 ((_ is ElementMatch!7613) lt!904421))))

(declare-fun b!2560190 () Bool)

(assert (=> b!2560190 (= e!1616918 e!1616917)))

(declare-fun c!411258 () Bool)

(assert (=> b!2560190 (= c!411258 ((_ is Star!7613) lt!904421))))

(declare-fun bm!163948 () Bool)

(assert (=> bm!163948 (= call!163953 (derivativeStep!2182 (ite c!411262 (regTwo!15739 lt!904421) (ite c!411258 (reg!7942 lt!904421) (regOne!15738 lt!904421))) (h!34998 tl!4068)))))

(declare-fun b!2560191 () Bool)

(assert (=> b!2560191 (= e!1616916 (ite (= (h!34998 tl!4068) (c!410685 lt!904421)) EmptyExpr!7613 EmptyLang!7613))))

(assert (= (and d!725394 c!411259) b!2560182))

(assert (= (and d!725394 (not c!411259)) b!2560189))

(assert (= (and b!2560189 c!411261) b!2560191))

(assert (= (and b!2560189 (not c!411261)) b!2560183))

(assert (= (and b!2560183 c!411262) b!2560186))

(assert (= (and b!2560183 (not c!411262)) b!2560190))

(assert (= (and b!2560190 c!411258) b!2560185))

(assert (= (and b!2560190 (not c!411258)) b!2560184))

(assert (= (and b!2560184 c!411260) b!2560188))

(assert (= (and b!2560184 (not c!411260)) b!2560187))

(assert (= (or b!2560188 b!2560187) bm!163947))

(assert (= (or b!2560185 bm!163947) bm!163945))

(assert (= (or b!2560186 bm!163945) bm!163948))

(assert (= (or b!2560186 b!2560188) bm!163946))

(declare-fun m!2900747 () Bool)

(assert (=> bm!163946 m!2900747))

(assert (=> b!2560184 m!2900229))

(declare-fun m!2900749 () Bool)

(assert (=> d!725394 m!2900749))

(assert (=> d!725394 m!2899549))

(declare-fun m!2900751 () Bool)

(assert (=> bm!163948 m!2900751))

(assert (=> b!2558781 d!725394))

(declare-fun bm!163949 () Bool)

(declare-fun call!163954 () Bool)

(declare-fun c!411264 () Bool)

(assert (=> bm!163949 (= call!163954 (validRegex!3239 (ite c!411264 (regTwo!15739 lt!904505) (regOne!15738 lt!904505))))))

(declare-fun b!2560192 () Bool)

(declare-fun e!1616919 () Bool)

(declare-fun e!1616922 () Bool)

(assert (=> b!2560192 (= e!1616919 e!1616922)))

(declare-fun c!411263 () Bool)

(assert (=> b!2560192 (= c!411263 ((_ is Star!7613) lt!904505))))

(declare-fun b!2560193 () Bool)

(declare-fun e!1616921 () Bool)

(declare-fun call!163955 () Bool)

(assert (=> b!2560193 (= e!1616921 call!163955)))

(declare-fun b!2560194 () Bool)

(declare-fun res!1077934 () Bool)

(declare-fun e!1616924 () Bool)

(assert (=> b!2560194 (=> (not res!1077934) (not e!1616924))))

(assert (=> b!2560194 (= res!1077934 call!163955)))

(declare-fun e!1616920 () Bool)

(assert (=> b!2560194 (= e!1616920 e!1616924)))

(declare-fun b!2560195 () Bool)

(assert (=> b!2560195 (= e!1616922 e!1616920)))

(assert (=> b!2560195 (= c!411264 ((_ is Union!7613) lt!904505))))

(declare-fun b!2560196 () Bool)

(declare-fun e!1616925 () Bool)

(assert (=> b!2560196 (= e!1616925 e!1616921)))

(declare-fun res!1077935 () Bool)

(assert (=> b!2560196 (=> (not res!1077935) (not e!1616921))))

(assert (=> b!2560196 (= res!1077935 call!163954)))

(declare-fun b!2560197 () Bool)

(declare-fun res!1077932 () Bool)

(assert (=> b!2560197 (=> res!1077932 e!1616925)))

(assert (=> b!2560197 (= res!1077932 (not ((_ is Concat!12309) lt!904505)))))

(assert (=> b!2560197 (= e!1616920 e!1616925)))

(declare-fun b!2560198 () Bool)

(declare-fun e!1616923 () Bool)

(declare-fun call!163956 () Bool)

(assert (=> b!2560198 (= e!1616923 call!163956)))

(declare-fun b!2560199 () Bool)

(assert (=> b!2560199 (= e!1616924 call!163954)))

(declare-fun bm!163950 () Bool)

(assert (=> bm!163950 (= call!163956 (validRegex!3239 (ite c!411263 (reg!7942 lt!904505) (ite c!411264 (regOne!15739 lt!904505) (regTwo!15738 lt!904505)))))))

(declare-fun d!725396 () Bool)

(declare-fun res!1077933 () Bool)

(assert (=> d!725396 (=> res!1077933 e!1616919)))

(assert (=> d!725396 (= res!1077933 ((_ is ElementMatch!7613) lt!904505))))

(assert (=> d!725396 (= (validRegex!3239 lt!904505) e!1616919)))

(declare-fun bm!163951 () Bool)

(assert (=> bm!163951 (= call!163955 call!163956)))

(declare-fun b!2560200 () Bool)

(assert (=> b!2560200 (= e!1616922 e!1616923)))

(declare-fun res!1077931 () Bool)

(assert (=> b!2560200 (= res!1077931 (not (nullable!2530 (reg!7942 lt!904505))))))

(assert (=> b!2560200 (=> (not res!1077931) (not e!1616923))))

(assert (= (and d!725396 (not res!1077933)) b!2560192))

(assert (= (and b!2560192 c!411263) b!2560200))

(assert (= (and b!2560192 (not c!411263)) b!2560195))

(assert (= (and b!2560200 res!1077931) b!2560198))

(assert (= (and b!2560195 c!411264) b!2560194))

(assert (= (and b!2560195 (not c!411264)) b!2560197))

(assert (= (and b!2560194 res!1077934) b!2560199))

(assert (= (and b!2560197 (not res!1077932)) b!2560196))

(assert (= (and b!2560196 res!1077935) b!2560193))

(assert (= (or b!2560194 b!2560193) bm!163951))

(assert (= (or b!2560199 b!2560196) bm!163949))

(assert (= (or b!2560198 bm!163951) bm!163950))

(declare-fun m!2900753 () Bool)

(assert (=> bm!163949 m!2900753))

(declare-fun m!2900755 () Bool)

(assert (=> bm!163950 m!2900755))

(declare-fun m!2900757 () Bool)

(assert (=> b!2560200 m!2900757))

(assert (=> d!724930 d!725396))

(assert (=> d!724930 d!724864))

(assert (=> d!724824 d!725324))

(assert (=> d!724824 d!724864))

(declare-fun d!725398 () Bool)

(assert (=> d!725398 (= (nullable!2530 (regTwo!15738 r!27340)) (nullableFct!755 (regTwo!15738 r!27340)))))

(declare-fun bs!469813 () Bool)

(assert (= bs!469813 d!725398))

(declare-fun m!2900759 () Bool)

(assert (=> bs!469813 m!2900759))

(assert (=> b!2558421 d!725398))

(assert (=> b!2558759 d!725004))

(assert (=> b!2558785 d!725140))

(declare-fun b!2560201 () Bool)

(declare-fun e!1616926 () List!29678)

(assert (=> b!2560201 (= e!1616926 (_2!17336 lt!904412))))

(declare-fun d!725400 () Bool)

(declare-fun e!1616927 () Bool)

(assert (=> d!725400 e!1616927))

(declare-fun res!1077937 () Bool)

(assert (=> d!725400 (=> (not res!1077937) (not e!1616927))))

(declare-fun lt!904616 () List!29678)

(assert (=> d!725400 (= res!1077937 (= (content!4076 lt!904616) ((_ map or) (content!4076 (t!211377 (_1!17336 lt!904412))) (content!4076 (_2!17336 lt!904412)))))))

(assert (=> d!725400 (= lt!904616 e!1616926)))

(declare-fun c!411265 () Bool)

(assert (=> d!725400 (= c!411265 ((_ is Nil!29578) (t!211377 (_1!17336 lt!904412))))))

(assert (=> d!725400 (= (++!7270 (t!211377 (_1!17336 lt!904412)) (_2!17336 lt!904412)) lt!904616)))

(declare-fun b!2560203 () Bool)

(declare-fun res!1077936 () Bool)

(assert (=> b!2560203 (=> (not res!1077936) (not e!1616927))))

(assert (=> b!2560203 (= res!1077936 (= (size!22956 lt!904616) (+ (size!22956 (t!211377 (_1!17336 lt!904412))) (size!22956 (_2!17336 lt!904412)))))))

(declare-fun b!2560202 () Bool)

(assert (=> b!2560202 (= e!1616926 (Cons!29578 (h!34998 (t!211377 (_1!17336 lt!904412))) (++!7270 (t!211377 (t!211377 (_1!17336 lt!904412))) (_2!17336 lt!904412))))))

(declare-fun b!2560204 () Bool)

(assert (=> b!2560204 (= e!1616927 (or (not (= (_2!17336 lt!904412) Nil!29578)) (= lt!904616 (t!211377 (_1!17336 lt!904412)))))))

(assert (= (and d!725400 c!411265) b!2560201))

(assert (= (and d!725400 (not c!411265)) b!2560202))

(assert (= (and d!725400 res!1077937) b!2560203))

(assert (= (and b!2560203 res!1077936) b!2560204))

(declare-fun m!2900761 () Bool)

(assert (=> d!725400 m!2900761))

(assert (=> d!725400 m!2900161))

(assert (=> d!725400 m!2899617))

(declare-fun m!2900763 () Bool)

(assert (=> b!2560203 m!2900763))

(assert (=> b!2560203 m!2899957))

(assert (=> b!2560203 m!2899623))

(declare-fun m!2900765 () Bool)

(assert (=> b!2560202 m!2900765))

(assert (=> b!2558853 d!725400))

(declare-fun call!163957 () Bool)

(declare-fun c!411267 () Bool)

(declare-fun bm!163952 () Bool)

(assert (=> bm!163952 (= call!163957 (validRegex!3239 (ite c!411267 (regTwo!15739 (ite c!410783 (regTwo!15739 r!27340) (regOne!15738 r!27340))) (regOne!15738 (ite c!410783 (regTwo!15739 r!27340) (regOne!15738 r!27340))))))))

(declare-fun b!2560205 () Bool)

(declare-fun e!1616928 () Bool)

(declare-fun e!1616931 () Bool)

(assert (=> b!2560205 (= e!1616928 e!1616931)))

(declare-fun c!411266 () Bool)

(assert (=> b!2560205 (= c!411266 ((_ is Star!7613) (ite c!410783 (regTwo!15739 r!27340) (regOne!15738 r!27340))))))

(declare-fun b!2560206 () Bool)

(declare-fun e!1616930 () Bool)

(declare-fun call!163958 () Bool)

(assert (=> b!2560206 (= e!1616930 call!163958)))

(declare-fun b!2560207 () Bool)

(declare-fun res!1077941 () Bool)

(declare-fun e!1616933 () Bool)

(assert (=> b!2560207 (=> (not res!1077941) (not e!1616933))))

(assert (=> b!2560207 (= res!1077941 call!163958)))

(declare-fun e!1616929 () Bool)

(assert (=> b!2560207 (= e!1616929 e!1616933)))

(declare-fun b!2560208 () Bool)

(assert (=> b!2560208 (= e!1616931 e!1616929)))

(assert (=> b!2560208 (= c!411267 ((_ is Union!7613) (ite c!410783 (regTwo!15739 r!27340) (regOne!15738 r!27340))))))

(declare-fun b!2560209 () Bool)

(declare-fun e!1616934 () Bool)

(assert (=> b!2560209 (= e!1616934 e!1616930)))

(declare-fun res!1077942 () Bool)

(assert (=> b!2560209 (=> (not res!1077942) (not e!1616930))))

(assert (=> b!2560209 (= res!1077942 call!163957)))

(declare-fun b!2560210 () Bool)

(declare-fun res!1077939 () Bool)

(assert (=> b!2560210 (=> res!1077939 e!1616934)))

(assert (=> b!2560210 (= res!1077939 (not ((_ is Concat!12309) (ite c!410783 (regTwo!15739 r!27340) (regOne!15738 r!27340)))))))

(assert (=> b!2560210 (= e!1616929 e!1616934)))

(declare-fun b!2560211 () Bool)

(declare-fun e!1616932 () Bool)

(declare-fun call!163959 () Bool)

(assert (=> b!2560211 (= e!1616932 call!163959)))

(declare-fun b!2560212 () Bool)

(assert (=> b!2560212 (= e!1616933 call!163957)))

(declare-fun bm!163953 () Bool)

(assert (=> bm!163953 (= call!163959 (validRegex!3239 (ite c!411266 (reg!7942 (ite c!410783 (regTwo!15739 r!27340) (regOne!15738 r!27340))) (ite c!411267 (regOne!15739 (ite c!410783 (regTwo!15739 r!27340) (regOne!15738 r!27340))) (regTwo!15738 (ite c!410783 (regTwo!15739 r!27340) (regOne!15738 r!27340)))))))))

(declare-fun d!725402 () Bool)

(declare-fun res!1077940 () Bool)

(assert (=> d!725402 (=> res!1077940 e!1616928)))

(assert (=> d!725402 (= res!1077940 ((_ is ElementMatch!7613) (ite c!410783 (regTwo!15739 r!27340) (regOne!15738 r!27340))))))

(assert (=> d!725402 (= (validRegex!3239 (ite c!410783 (regTwo!15739 r!27340) (regOne!15738 r!27340))) e!1616928)))

(declare-fun bm!163954 () Bool)

(assert (=> bm!163954 (= call!163958 call!163959)))

(declare-fun b!2560213 () Bool)

(assert (=> b!2560213 (= e!1616931 e!1616932)))

(declare-fun res!1077938 () Bool)

(assert (=> b!2560213 (= res!1077938 (not (nullable!2530 (reg!7942 (ite c!410783 (regTwo!15739 r!27340) (regOne!15738 r!27340))))))))

(assert (=> b!2560213 (=> (not res!1077938) (not e!1616932))))

(assert (= (and d!725402 (not res!1077940)) b!2560205))

(assert (= (and b!2560205 c!411266) b!2560213))

(assert (= (and b!2560205 (not c!411266)) b!2560208))

(assert (= (and b!2560213 res!1077938) b!2560211))

(assert (= (and b!2560208 c!411267) b!2560207))

(assert (= (and b!2560208 (not c!411267)) b!2560210))

(assert (= (and b!2560207 res!1077941) b!2560212))

(assert (= (and b!2560210 (not res!1077939)) b!2560209))

(assert (= (and b!2560209 res!1077942) b!2560206))

(assert (= (or b!2560207 b!2560206) bm!163954))

(assert (= (or b!2560212 b!2560209) bm!163952))

(assert (= (or b!2560211 bm!163954) bm!163953))

(declare-fun m!2900767 () Bool)

(assert (=> bm!163952 m!2900767))

(declare-fun m!2900769 () Bool)

(assert (=> bm!163953 m!2900769))

(declare-fun m!2900771 () Bool)

(assert (=> b!2560213 m!2900771))

(assert (=> bm!163574 d!725402))

(declare-fun b!2560215 () Bool)

(declare-fun e!1616935 () Bool)

(declare-fun tp!815372 () Bool)

(declare-fun tp!815370 () Bool)

(assert (=> b!2560215 (= e!1616935 (and tp!815372 tp!815370))))

(assert (=> b!2558886 (= tp!815237 e!1616935)))

(declare-fun b!2560217 () Bool)

(declare-fun tp!815373 () Bool)

(declare-fun tp!815369 () Bool)

(assert (=> b!2560217 (= e!1616935 (and tp!815373 tp!815369))))

(declare-fun b!2560216 () Bool)

(declare-fun tp!815371 () Bool)

(assert (=> b!2560216 (= e!1616935 tp!815371)))

(declare-fun b!2560214 () Bool)

(assert (=> b!2560214 (= e!1616935 tp_is_empty!13081)))

(assert (= (and b!2558886 ((_ is ElementMatch!7613) (regOne!15739 (regOne!15738 r!27340)))) b!2560214))

(assert (= (and b!2558886 ((_ is Concat!12309) (regOne!15739 (regOne!15738 r!27340)))) b!2560215))

(assert (= (and b!2558886 ((_ is Star!7613) (regOne!15739 (regOne!15738 r!27340)))) b!2560216))

(assert (= (and b!2558886 ((_ is Union!7613) (regOne!15739 (regOne!15738 r!27340)))) b!2560217))

(declare-fun b!2560219 () Bool)

(declare-fun e!1616936 () Bool)

(declare-fun tp!815377 () Bool)

(declare-fun tp!815375 () Bool)

(assert (=> b!2560219 (= e!1616936 (and tp!815377 tp!815375))))

(assert (=> b!2558886 (= tp!815233 e!1616936)))

(declare-fun b!2560221 () Bool)

(declare-fun tp!815378 () Bool)

(declare-fun tp!815374 () Bool)

(assert (=> b!2560221 (= e!1616936 (and tp!815378 tp!815374))))

(declare-fun b!2560220 () Bool)

(declare-fun tp!815376 () Bool)

(assert (=> b!2560220 (= e!1616936 tp!815376)))

(declare-fun b!2560218 () Bool)

(assert (=> b!2560218 (= e!1616936 tp_is_empty!13081)))

(assert (= (and b!2558886 ((_ is ElementMatch!7613) (regTwo!15739 (regOne!15738 r!27340)))) b!2560218))

(assert (= (and b!2558886 ((_ is Concat!12309) (regTwo!15739 (regOne!15738 r!27340)))) b!2560219))

(assert (= (and b!2558886 ((_ is Star!7613) (regTwo!15739 (regOne!15738 r!27340)))) b!2560220))

(assert (= (and b!2558886 ((_ is Union!7613) (regTwo!15739 (regOne!15738 r!27340)))) b!2560221))

(declare-fun b!2560223 () Bool)

(declare-fun e!1616937 () Bool)

(declare-fun tp!815382 () Bool)

(declare-fun tp!815380 () Bool)

(assert (=> b!2560223 (= e!1616937 (and tp!815382 tp!815380))))

(assert (=> b!2558885 (= tp!815235 e!1616937)))

(declare-fun b!2560225 () Bool)

(declare-fun tp!815383 () Bool)

(declare-fun tp!815379 () Bool)

(assert (=> b!2560225 (= e!1616937 (and tp!815383 tp!815379))))

(declare-fun b!2560224 () Bool)

(declare-fun tp!815381 () Bool)

(assert (=> b!2560224 (= e!1616937 tp!815381)))

(declare-fun b!2560222 () Bool)

(assert (=> b!2560222 (= e!1616937 tp_is_empty!13081)))

(assert (= (and b!2558885 ((_ is ElementMatch!7613) (reg!7942 (regOne!15738 r!27340)))) b!2560222))

(assert (= (and b!2558885 ((_ is Concat!12309) (reg!7942 (regOne!15738 r!27340)))) b!2560223))

(assert (= (and b!2558885 ((_ is Star!7613) (reg!7942 (regOne!15738 r!27340)))) b!2560224))

(assert (= (and b!2558885 ((_ is Union!7613) (reg!7942 (regOne!15738 r!27340)))) b!2560225))

(declare-fun b!2560227 () Bool)

(declare-fun e!1616938 () Bool)

(declare-fun tp!815387 () Bool)

(declare-fun tp!815385 () Bool)

(assert (=> b!2560227 (= e!1616938 (and tp!815387 tp!815385))))

(assert (=> b!2558890 (= tp!815242 e!1616938)))

(declare-fun b!2560229 () Bool)

(declare-fun tp!815388 () Bool)

(declare-fun tp!815384 () Bool)

(assert (=> b!2560229 (= e!1616938 (and tp!815388 tp!815384))))

(declare-fun b!2560228 () Bool)

(declare-fun tp!815386 () Bool)

(assert (=> b!2560228 (= e!1616938 tp!815386)))

(declare-fun b!2560226 () Bool)

(assert (=> b!2560226 (= e!1616938 tp_is_empty!13081)))

(assert (= (and b!2558890 ((_ is ElementMatch!7613) (regOne!15739 (regTwo!15738 r!27340)))) b!2560226))

(assert (= (and b!2558890 ((_ is Concat!12309) (regOne!15739 (regTwo!15738 r!27340)))) b!2560227))

(assert (= (and b!2558890 ((_ is Star!7613) (regOne!15739 (regTwo!15738 r!27340)))) b!2560228))

(assert (= (and b!2558890 ((_ is Union!7613) (regOne!15739 (regTwo!15738 r!27340)))) b!2560229))

(declare-fun b!2560231 () Bool)

(declare-fun e!1616939 () Bool)

(declare-fun tp!815392 () Bool)

(declare-fun tp!815390 () Bool)

(assert (=> b!2560231 (= e!1616939 (and tp!815392 tp!815390))))

(assert (=> b!2558890 (= tp!815238 e!1616939)))

(declare-fun b!2560233 () Bool)

(declare-fun tp!815393 () Bool)

(declare-fun tp!815389 () Bool)

(assert (=> b!2560233 (= e!1616939 (and tp!815393 tp!815389))))

(declare-fun b!2560232 () Bool)

(declare-fun tp!815391 () Bool)

(assert (=> b!2560232 (= e!1616939 tp!815391)))

(declare-fun b!2560230 () Bool)

(assert (=> b!2560230 (= e!1616939 tp_is_empty!13081)))

(assert (= (and b!2558890 ((_ is ElementMatch!7613) (regTwo!15739 (regTwo!15738 r!27340)))) b!2560230))

(assert (= (and b!2558890 ((_ is Concat!12309) (regTwo!15739 (regTwo!15738 r!27340)))) b!2560231))

(assert (= (and b!2558890 ((_ is Star!7613) (regTwo!15739 (regTwo!15738 r!27340)))) b!2560232))

(assert (= (and b!2558890 ((_ is Union!7613) (regTwo!15739 (regTwo!15738 r!27340)))) b!2560233))

(declare-fun b!2560234 () Bool)

(declare-fun e!1616940 () Bool)

(declare-fun tp!815394 () Bool)

(assert (=> b!2560234 (= e!1616940 (and tp_is_empty!13081 tp!815394))))

(assert (=> b!2558882 (= tp!815232 e!1616940)))

(assert (= (and b!2558882 ((_ is Cons!29578) (t!211377 (t!211377 tl!4068)))) b!2560234))

(declare-fun b!2560236 () Bool)

(declare-fun e!1616941 () Bool)

(declare-fun tp!815398 () Bool)

(declare-fun tp!815396 () Bool)

(assert (=> b!2560236 (= e!1616941 (and tp!815398 tp!815396))))

(assert (=> b!2558875 (= tp!815228 e!1616941)))

(declare-fun b!2560238 () Bool)

(declare-fun tp!815399 () Bool)

(declare-fun tp!815395 () Bool)

(assert (=> b!2560238 (= e!1616941 (and tp!815399 tp!815395))))

(declare-fun b!2560237 () Bool)

(declare-fun tp!815397 () Bool)

(assert (=> b!2560237 (= e!1616941 tp!815397)))

(declare-fun b!2560235 () Bool)

(assert (=> b!2560235 (= e!1616941 tp_is_empty!13081)))

(assert (= (and b!2558875 ((_ is ElementMatch!7613) (regOne!15738 (regTwo!15739 r!27340)))) b!2560235))

(assert (= (and b!2558875 ((_ is Concat!12309) (regOne!15738 (regTwo!15739 r!27340)))) b!2560236))

(assert (= (and b!2558875 ((_ is Star!7613) (regOne!15738 (regTwo!15739 r!27340)))) b!2560237))

(assert (= (and b!2558875 ((_ is Union!7613) (regOne!15738 (regTwo!15739 r!27340)))) b!2560238))

(declare-fun b!2560240 () Bool)

(declare-fun e!1616942 () Bool)

(declare-fun tp!815403 () Bool)

(declare-fun tp!815401 () Bool)

(assert (=> b!2560240 (= e!1616942 (and tp!815403 tp!815401))))

(assert (=> b!2558875 (= tp!815226 e!1616942)))

(declare-fun b!2560242 () Bool)

(declare-fun tp!815404 () Bool)

(declare-fun tp!815400 () Bool)

(assert (=> b!2560242 (= e!1616942 (and tp!815404 tp!815400))))

(declare-fun b!2560241 () Bool)

(declare-fun tp!815402 () Bool)

(assert (=> b!2560241 (= e!1616942 tp!815402)))

(declare-fun b!2560239 () Bool)

(assert (=> b!2560239 (= e!1616942 tp_is_empty!13081)))

(assert (= (and b!2558875 ((_ is ElementMatch!7613) (regTwo!15738 (regTwo!15739 r!27340)))) b!2560239))

(assert (= (and b!2558875 ((_ is Concat!12309) (regTwo!15738 (regTwo!15739 r!27340)))) b!2560240))

(assert (= (and b!2558875 ((_ is Star!7613) (regTwo!15738 (regTwo!15739 r!27340)))) b!2560241))

(assert (= (and b!2558875 ((_ is Union!7613) (regTwo!15738 (regTwo!15739 r!27340)))) b!2560242))

(declare-fun b!2560244 () Bool)

(declare-fun e!1616943 () Bool)

(declare-fun tp!815408 () Bool)

(declare-fun tp!815406 () Bool)

(assert (=> b!2560244 (= e!1616943 (and tp!815408 tp!815406))))

(assert (=> b!2558872 (= tp!815222 e!1616943)))

(declare-fun b!2560246 () Bool)

(declare-fun tp!815409 () Bool)

(declare-fun tp!815405 () Bool)

(assert (=> b!2560246 (= e!1616943 (and tp!815409 tp!815405))))

(declare-fun b!2560245 () Bool)

(declare-fun tp!815407 () Bool)

(assert (=> b!2560245 (= e!1616943 tp!815407)))

(declare-fun b!2560243 () Bool)

(assert (=> b!2560243 (= e!1616943 tp_is_empty!13081)))

(assert (= (and b!2558872 ((_ is ElementMatch!7613) (reg!7942 (regOne!15739 r!27340)))) b!2560243))

(assert (= (and b!2558872 ((_ is Concat!12309) (reg!7942 (regOne!15739 r!27340)))) b!2560244))

(assert (= (and b!2558872 ((_ is Star!7613) (reg!7942 (regOne!15739 r!27340)))) b!2560245))

(assert (= (and b!2558872 ((_ is Union!7613) (reg!7942 (regOne!15739 r!27340)))) b!2560246))

(declare-fun b!2560248 () Bool)

(declare-fun e!1616944 () Bool)

(declare-fun tp!815413 () Bool)

(declare-fun tp!815411 () Bool)

(assert (=> b!2560248 (= e!1616944 (and tp!815413 tp!815411))))

(assert (=> b!2558867 (= tp!815218 e!1616944)))

(declare-fun b!2560250 () Bool)

(declare-fun tp!815414 () Bool)

(declare-fun tp!815410 () Bool)

(assert (=> b!2560250 (= e!1616944 (and tp!815414 tp!815410))))

(declare-fun b!2560249 () Bool)

(declare-fun tp!815412 () Bool)

(assert (=> b!2560249 (= e!1616944 tp!815412)))

(declare-fun b!2560247 () Bool)

(assert (=> b!2560247 (= e!1616944 tp_is_empty!13081)))

(assert (= (and b!2558867 ((_ is ElementMatch!7613) (regOne!15738 (reg!7942 r!27340)))) b!2560247))

(assert (= (and b!2558867 ((_ is Concat!12309) (regOne!15738 (reg!7942 r!27340)))) b!2560248))

(assert (= (and b!2558867 ((_ is Star!7613) (regOne!15738 (reg!7942 r!27340)))) b!2560249))

(assert (= (and b!2558867 ((_ is Union!7613) (regOne!15738 (reg!7942 r!27340)))) b!2560250))

(declare-fun b!2560252 () Bool)

(declare-fun e!1616945 () Bool)

(declare-fun tp!815418 () Bool)

(declare-fun tp!815416 () Bool)

(assert (=> b!2560252 (= e!1616945 (and tp!815418 tp!815416))))

(assert (=> b!2558867 (= tp!815216 e!1616945)))

(declare-fun b!2560254 () Bool)

(declare-fun tp!815419 () Bool)

(declare-fun tp!815415 () Bool)

(assert (=> b!2560254 (= e!1616945 (and tp!815419 tp!815415))))

(declare-fun b!2560253 () Bool)

(declare-fun tp!815417 () Bool)

(assert (=> b!2560253 (= e!1616945 tp!815417)))

(declare-fun b!2560251 () Bool)

(assert (=> b!2560251 (= e!1616945 tp_is_empty!13081)))

(assert (= (and b!2558867 ((_ is ElementMatch!7613) (regTwo!15738 (reg!7942 r!27340)))) b!2560251))

(assert (= (and b!2558867 ((_ is Concat!12309) (regTwo!15738 (reg!7942 r!27340)))) b!2560252))

(assert (= (and b!2558867 ((_ is Star!7613) (regTwo!15738 (reg!7942 r!27340)))) b!2560253))

(assert (= (and b!2558867 ((_ is Union!7613) (regTwo!15738 (reg!7942 r!27340)))) b!2560254))

(declare-fun b!2560256 () Bool)

(declare-fun e!1616946 () Bool)

(declare-fun tp!815423 () Bool)

(declare-fun tp!815421 () Bool)

(assert (=> b!2560256 (= e!1616946 (and tp!815423 tp!815421))))

(assert (=> b!2558876 (= tp!815227 e!1616946)))

(declare-fun b!2560258 () Bool)

(declare-fun tp!815424 () Bool)

(declare-fun tp!815420 () Bool)

(assert (=> b!2560258 (= e!1616946 (and tp!815424 tp!815420))))

(declare-fun b!2560257 () Bool)

(declare-fun tp!815422 () Bool)

(assert (=> b!2560257 (= e!1616946 tp!815422)))

(declare-fun b!2560255 () Bool)

(assert (=> b!2560255 (= e!1616946 tp_is_empty!13081)))

(assert (= (and b!2558876 ((_ is ElementMatch!7613) (reg!7942 (regTwo!15739 r!27340)))) b!2560255))

(assert (= (and b!2558876 ((_ is Concat!12309) (reg!7942 (regTwo!15739 r!27340)))) b!2560256))

(assert (= (and b!2558876 ((_ is Star!7613) (reg!7942 (regTwo!15739 r!27340)))) b!2560257))

(assert (= (and b!2558876 ((_ is Union!7613) (reg!7942 (regTwo!15739 r!27340)))) b!2560258))

(declare-fun b!2560260 () Bool)

(declare-fun e!1616947 () Bool)

(declare-fun tp!815428 () Bool)

(declare-fun tp!815426 () Bool)

(assert (=> b!2560260 (= e!1616947 (and tp!815428 tp!815426))))

(assert (=> b!2558871 (= tp!815223 e!1616947)))

(declare-fun b!2560262 () Bool)

(declare-fun tp!815429 () Bool)

(declare-fun tp!815425 () Bool)

(assert (=> b!2560262 (= e!1616947 (and tp!815429 tp!815425))))

(declare-fun b!2560261 () Bool)

(declare-fun tp!815427 () Bool)

(assert (=> b!2560261 (= e!1616947 tp!815427)))

(declare-fun b!2560259 () Bool)

(assert (=> b!2560259 (= e!1616947 tp_is_empty!13081)))

(assert (= (and b!2558871 ((_ is ElementMatch!7613) (regOne!15738 (regOne!15739 r!27340)))) b!2560259))

(assert (= (and b!2558871 ((_ is Concat!12309) (regOne!15738 (regOne!15739 r!27340)))) b!2560260))

(assert (= (and b!2558871 ((_ is Star!7613) (regOne!15738 (regOne!15739 r!27340)))) b!2560261))

(assert (= (and b!2558871 ((_ is Union!7613) (regOne!15738 (regOne!15739 r!27340)))) b!2560262))

(declare-fun b!2560264 () Bool)

(declare-fun e!1616948 () Bool)

(declare-fun tp!815433 () Bool)

(declare-fun tp!815431 () Bool)

(assert (=> b!2560264 (= e!1616948 (and tp!815433 tp!815431))))

(assert (=> b!2558871 (= tp!815221 e!1616948)))

(declare-fun b!2560266 () Bool)

(declare-fun tp!815434 () Bool)

(declare-fun tp!815430 () Bool)

(assert (=> b!2560266 (= e!1616948 (and tp!815434 tp!815430))))

(declare-fun b!2560265 () Bool)

(declare-fun tp!815432 () Bool)

(assert (=> b!2560265 (= e!1616948 tp!815432)))

(declare-fun b!2560263 () Bool)

(assert (=> b!2560263 (= e!1616948 tp_is_empty!13081)))

(assert (= (and b!2558871 ((_ is ElementMatch!7613) (regTwo!15738 (regOne!15739 r!27340)))) b!2560263))

(assert (= (and b!2558871 ((_ is Concat!12309) (regTwo!15738 (regOne!15739 r!27340)))) b!2560264))

(assert (= (and b!2558871 ((_ is Star!7613) (regTwo!15738 (regOne!15739 r!27340)))) b!2560265))

(assert (= (and b!2558871 ((_ is Union!7613) (regTwo!15738 (regOne!15739 r!27340)))) b!2560266))

(declare-fun b!2560268 () Bool)

(declare-fun e!1616949 () Bool)

(declare-fun tp!815438 () Bool)

(declare-fun tp!815436 () Bool)

(assert (=> b!2560268 (= e!1616949 (and tp!815438 tp!815436))))

(assert (=> b!2558873 (= tp!815224 e!1616949)))

(declare-fun b!2560270 () Bool)

(declare-fun tp!815439 () Bool)

(declare-fun tp!815435 () Bool)

(assert (=> b!2560270 (= e!1616949 (and tp!815439 tp!815435))))

(declare-fun b!2560269 () Bool)

(declare-fun tp!815437 () Bool)

(assert (=> b!2560269 (= e!1616949 tp!815437)))

(declare-fun b!2560267 () Bool)

(assert (=> b!2560267 (= e!1616949 tp_is_empty!13081)))

(assert (= (and b!2558873 ((_ is ElementMatch!7613) (regOne!15739 (regOne!15739 r!27340)))) b!2560267))

(assert (= (and b!2558873 ((_ is Concat!12309) (regOne!15739 (regOne!15739 r!27340)))) b!2560268))

(assert (= (and b!2558873 ((_ is Star!7613) (regOne!15739 (regOne!15739 r!27340)))) b!2560269))

(assert (= (and b!2558873 ((_ is Union!7613) (regOne!15739 (regOne!15739 r!27340)))) b!2560270))

(declare-fun b!2560272 () Bool)

(declare-fun e!1616950 () Bool)

(declare-fun tp!815443 () Bool)

(declare-fun tp!815441 () Bool)

(assert (=> b!2560272 (= e!1616950 (and tp!815443 tp!815441))))

(assert (=> b!2558873 (= tp!815220 e!1616950)))

(declare-fun b!2560274 () Bool)

(declare-fun tp!815444 () Bool)

(declare-fun tp!815440 () Bool)

(assert (=> b!2560274 (= e!1616950 (and tp!815444 tp!815440))))

(declare-fun b!2560273 () Bool)

(declare-fun tp!815442 () Bool)

(assert (=> b!2560273 (= e!1616950 tp!815442)))

(declare-fun b!2560271 () Bool)

(assert (=> b!2560271 (= e!1616950 tp_is_empty!13081)))

(assert (= (and b!2558873 ((_ is ElementMatch!7613) (regTwo!15739 (regOne!15739 r!27340)))) b!2560271))

(assert (= (and b!2558873 ((_ is Concat!12309) (regTwo!15739 (regOne!15739 r!27340)))) b!2560272))

(assert (= (and b!2558873 ((_ is Star!7613) (regTwo!15739 (regOne!15739 r!27340)))) b!2560273))

(assert (= (and b!2558873 ((_ is Union!7613) (regTwo!15739 (regOne!15739 r!27340)))) b!2560274))

(declare-fun b!2560276 () Bool)

(declare-fun e!1616951 () Bool)

(declare-fun tp!815448 () Bool)

(declare-fun tp!815446 () Bool)

(assert (=> b!2560276 (= e!1616951 (and tp!815448 tp!815446))))

(assert (=> b!2558888 (= tp!815241 e!1616951)))

(declare-fun b!2560278 () Bool)

(declare-fun tp!815449 () Bool)

(declare-fun tp!815445 () Bool)

(assert (=> b!2560278 (= e!1616951 (and tp!815449 tp!815445))))

(declare-fun b!2560277 () Bool)

(declare-fun tp!815447 () Bool)

(assert (=> b!2560277 (= e!1616951 tp!815447)))

(declare-fun b!2560275 () Bool)

(assert (=> b!2560275 (= e!1616951 tp_is_empty!13081)))

(assert (= (and b!2558888 ((_ is ElementMatch!7613) (regOne!15738 (regTwo!15738 r!27340)))) b!2560275))

(assert (= (and b!2558888 ((_ is Concat!12309) (regOne!15738 (regTwo!15738 r!27340)))) b!2560276))

(assert (= (and b!2558888 ((_ is Star!7613) (regOne!15738 (regTwo!15738 r!27340)))) b!2560277))

(assert (= (and b!2558888 ((_ is Union!7613) (regOne!15738 (regTwo!15738 r!27340)))) b!2560278))

(declare-fun b!2560280 () Bool)

(declare-fun e!1616952 () Bool)

(declare-fun tp!815453 () Bool)

(declare-fun tp!815451 () Bool)

(assert (=> b!2560280 (= e!1616952 (and tp!815453 tp!815451))))

(assert (=> b!2558888 (= tp!815239 e!1616952)))

(declare-fun b!2560282 () Bool)

(declare-fun tp!815454 () Bool)

(declare-fun tp!815450 () Bool)

(assert (=> b!2560282 (= e!1616952 (and tp!815454 tp!815450))))

(declare-fun b!2560281 () Bool)

(declare-fun tp!815452 () Bool)

(assert (=> b!2560281 (= e!1616952 tp!815452)))

(declare-fun b!2560279 () Bool)

(assert (=> b!2560279 (= e!1616952 tp_is_empty!13081)))

(assert (= (and b!2558888 ((_ is ElementMatch!7613) (regTwo!15738 (regTwo!15738 r!27340)))) b!2560279))

(assert (= (and b!2558888 ((_ is Concat!12309) (regTwo!15738 (regTwo!15738 r!27340)))) b!2560280))

(assert (= (and b!2558888 ((_ is Star!7613) (regTwo!15738 (regTwo!15738 r!27340)))) b!2560281))

(assert (= (and b!2558888 ((_ is Union!7613) (regTwo!15738 (regTwo!15738 r!27340)))) b!2560282))

(declare-fun b!2560284 () Bool)

(declare-fun e!1616953 () Bool)

(declare-fun tp!815458 () Bool)

(declare-fun tp!815456 () Bool)

(assert (=> b!2560284 (= e!1616953 (and tp!815458 tp!815456))))

(assert (=> b!2558868 (= tp!815217 e!1616953)))

(declare-fun b!2560286 () Bool)

(declare-fun tp!815459 () Bool)

(declare-fun tp!815455 () Bool)

(assert (=> b!2560286 (= e!1616953 (and tp!815459 tp!815455))))

(declare-fun b!2560285 () Bool)

(declare-fun tp!815457 () Bool)

(assert (=> b!2560285 (= e!1616953 tp!815457)))

(declare-fun b!2560283 () Bool)

(assert (=> b!2560283 (= e!1616953 tp_is_empty!13081)))

(assert (= (and b!2558868 ((_ is ElementMatch!7613) (reg!7942 (reg!7942 r!27340)))) b!2560283))

(assert (= (and b!2558868 ((_ is Concat!12309) (reg!7942 (reg!7942 r!27340)))) b!2560284))

(assert (= (and b!2558868 ((_ is Star!7613) (reg!7942 (reg!7942 r!27340)))) b!2560285))

(assert (= (and b!2558868 ((_ is Union!7613) (reg!7942 (reg!7942 r!27340)))) b!2560286))

(declare-fun b!2560288 () Bool)

(declare-fun e!1616954 () Bool)

(declare-fun tp!815463 () Bool)

(declare-fun tp!815461 () Bool)

(assert (=> b!2560288 (= e!1616954 (and tp!815463 tp!815461))))

(assert (=> b!2558877 (= tp!815229 e!1616954)))

(declare-fun b!2560290 () Bool)

(declare-fun tp!815464 () Bool)

(declare-fun tp!815460 () Bool)

(assert (=> b!2560290 (= e!1616954 (and tp!815464 tp!815460))))

(declare-fun b!2560289 () Bool)

(declare-fun tp!815462 () Bool)

(assert (=> b!2560289 (= e!1616954 tp!815462)))

(declare-fun b!2560287 () Bool)

(assert (=> b!2560287 (= e!1616954 tp_is_empty!13081)))

(assert (= (and b!2558877 ((_ is ElementMatch!7613) (regOne!15739 (regTwo!15739 r!27340)))) b!2560287))

(assert (= (and b!2558877 ((_ is Concat!12309) (regOne!15739 (regTwo!15739 r!27340)))) b!2560288))

(assert (= (and b!2558877 ((_ is Star!7613) (regOne!15739 (regTwo!15739 r!27340)))) b!2560289))

(assert (= (and b!2558877 ((_ is Union!7613) (regOne!15739 (regTwo!15739 r!27340)))) b!2560290))

(declare-fun b!2560292 () Bool)

(declare-fun e!1616955 () Bool)

(declare-fun tp!815468 () Bool)

(declare-fun tp!815466 () Bool)

(assert (=> b!2560292 (= e!1616955 (and tp!815468 tp!815466))))

(assert (=> b!2558877 (= tp!815225 e!1616955)))

(declare-fun b!2560294 () Bool)

(declare-fun tp!815469 () Bool)

(declare-fun tp!815465 () Bool)

(assert (=> b!2560294 (= e!1616955 (and tp!815469 tp!815465))))

(declare-fun b!2560293 () Bool)

(declare-fun tp!815467 () Bool)

(assert (=> b!2560293 (= e!1616955 tp!815467)))

(declare-fun b!2560291 () Bool)

(assert (=> b!2560291 (= e!1616955 tp_is_empty!13081)))

(assert (= (and b!2558877 ((_ is ElementMatch!7613) (regTwo!15739 (regTwo!15739 r!27340)))) b!2560291))

(assert (= (and b!2558877 ((_ is Concat!12309) (regTwo!15739 (regTwo!15739 r!27340)))) b!2560292))

(assert (= (and b!2558877 ((_ is Star!7613) (regTwo!15739 (regTwo!15739 r!27340)))) b!2560293))

(assert (= (and b!2558877 ((_ is Union!7613) (regTwo!15739 (regTwo!15739 r!27340)))) b!2560294))

(declare-fun b!2560296 () Bool)

(declare-fun e!1616956 () Bool)

(declare-fun tp!815473 () Bool)

(declare-fun tp!815471 () Bool)

(assert (=> b!2560296 (= e!1616956 (and tp!815473 tp!815471))))

(assert (=> b!2558889 (= tp!815240 e!1616956)))

(declare-fun b!2560298 () Bool)

(declare-fun tp!815474 () Bool)

(declare-fun tp!815470 () Bool)

(assert (=> b!2560298 (= e!1616956 (and tp!815474 tp!815470))))

(declare-fun b!2560297 () Bool)

(declare-fun tp!815472 () Bool)

(assert (=> b!2560297 (= e!1616956 tp!815472)))

(declare-fun b!2560295 () Bool)

(assert (=> b!2560295 (= e!1616956 tp_is_empty!13081)))

(assert (= (and b!2558889 ((_ is ElementMatch!7613) (reg!7942 (regTwo!15738 r!27340)))) b!2560295))

(assert (= (and b!2558889 ((_ is Concat!12309) (reg!7942 (regTwo!15738 r!27340)))) b!2560296))

(assert (= (and b!2558889 ((_ is Star!7613) (reg!7942 (regTwo!15738 r!27340)))) b!2560297))

(assert (= (and b!2558889 ((_ is Union!7613) (reg!7942 (regTwo!15738 r!27340)))) b!2560298))

(declare-fun b!2560300 () Bool)

(declare-fun e!1616957 () Bool)

(declare-fun tp!815478 () Bool)

(declare-fun tp!815476 () Bool)

(assert (=> b!2560300 (= e!1616957 (and tp!815478 tp!815476))))

(assert (=> b!2558884 (= tp!815236 e!1616957)))

(declare-fun b!2560302 () Bool)

(declare-fun tp!815479 () Bool)

(declare-fun tp!815475 () Bool)

(assert (=> b!2560302 (= e!1616957 (and tp!815479 tp!815475))))

(declare-fun b!2560301 () Bool)

(declare-fun tp!815477 () Bool)

(assert (=> b!2560301 (= e!1616957 tp!815477)))

(declare-fun b!2560299 () Bool)

(assert (=> b!2560299 (= e!1616957 tp_is_empty!13081)))

(assert (= (and b!2558884 ((_ is ElementMatch!7613) (regOne!15738 (regOne!15738 r!27340)))) b!2560299))

(assert (= (and b!2558884 ((_ is Concat!12309) (regOne!15738 (regOne!15738 r!27340)))) b!2560300))

(assert (= (and b!2558884 ((_ is Star!7613) (regOne!15738 (regOne!15738 r!27340)))) b!2560301))

(assert (= (and b!2558884 ((_ is Union!7613) (regOne!15738 (regOne!15738 r!27340)))) b!2560302))

(declare-fun b!2560304 () Bool)

(declare-fun e!1616958 () Bool)

(declare-fun tp!815483 () Bool)

(declare-fun tp!815481 () Bool)

(assert (=> b!2560304 (= e!1616958 (and tp!815483 tp!815481))))

(assert (=> b!2558884 (= tp!815234 e!1616958)))

(declare-fun b!2560306 () Bool)

(declare-fun tp!815484 () Bool)

(declare-fun tp!815480 () Bool)

(assert (=> b!2560306 (= e!1616958 (and tp!815484 tp!815480))))

(declare-fun b!2560305 () Bool)

(declare-fun tp!815482 () Bool)

(assert (=> b!2560305 (= e!1616958 tp!815482)))

(declare-fun b!2560303 () Bool)

(assert (=> b!2560303 (= e!1616958 tp_is_empty!13081)))

(assert (= (and b!2558884 ((_ is ElementMatch!7613) (regTwo!15738 (regOne!15738 r!27340)))) b!2560303))

(assert (= (and b!2558884 ((_ is Concat!12309) (regTwo!15738 (regOne!15738 r!27340)))) b!2560304))

(assert (= (and b!2558884 ((_ is Star!7613) (regTwo!15738 (regOne!15738 r!27340)))) b!2560305))

(assert (= (and b!2558884 ((_ is Union!7613) (regTwo!15738 (regOne!15738 r!27340)))) b!2560306))

(declare-fun b!2560308 () Bool)

(declare-fun e!1616959 () Bool)

(declare-fun tp!815488 () Bool)

(declare-fun tp!815486 () Bool)

(assert (=> b!2560308 (= e!1616959 (and tp!815488 tp!815486))))

(assert (=> b!2558869 (= tp!815219 e!1616959)))

(declare-fun b!2560310 () Bool)

(declare-fun tp!815489 () Bool)

(declare-fun tp!815485 () Bool)

(assert (=> b!2560310 (= e!1616959 (and tp!815489 tp!815485))))

(declare-fun b!2560309 () Bool)

(declare-fun tp!815487 () Bool)

(assert (=> b!2560309 (= e!1616959 tp!815487)))

(declare-fun b!2560307 () Bool)

(assert (=> b!2560307 (= e!1616959 tp_is_empty!13081)))

(assert (= (and b!2558869 ((_ is ElementMatch!7613) (regOne!15739 (reg!7942 r!27340)))) b!2560307))

(assert (= (and b!2558869 ((_ is Concat!12309) (regOne!15739 (reg!7942 r!27340)))) b!2560308))

(assert (= (and b!2558869 ((_ is Star!7613) (regOne!15739 (reg!7942 r!27340)))) b!2560309))

(assert (= (and b!2558869 ((_ is Union!7613) (regOne!15739 (reg!7942 r!27340)))) b!2560310))

(declare-fun b!2560312 () Bool)

(declare-fun e!1616960 () Bool)

(declare-fun tp!815493 () Bool)

(declare-fun tp!815491 () Bool)

(assert (=> b!2560312 (= e!1616960 (and tp!815493 tp!815491))))

(assert (=> b!2558869 (= tp!815215 e!1616960)))

(declare-fun b!2560314 () Bool)

(declare-fun tp!815494 () Bool)

(declare-fun tp!815490 () Bool)

(assert (=> b!2560314 (= e!1616960 (and tp!815494 tp!815490))))

(declare-fun b!2560313 () Bool)

(declare-fun tp!815492 () Bool)

(assert (=> b!2560313 (= e!1616960 tp!815492)))

(declare-fun b!2560311 () Bool)

(assert (=> b!2560311 (= e!1616960 tp_is_empty!13081)))

(assert (= (and b!2558869 ((_ is ElementMatch!7613) (regTwo!15739 (reg!7942 r!27340)))) b!2560311))

(assert (= (and b!2558869 ((_ is Concat!12309) (regTwo!15739 (reg!7942 r!27340)))) b!2560312))

(assert (= (and b!2558869 ((_ is Star!7613) (regTwo!15739 (reg!7942 r!27340)))) b!2560313))

(assert (= (and b!2558869 ((_ is Union!7613) (regTwo!15739 (reg!7942 r!27340)))) b!2560314))

(check-sat (not b!2560244) (not bm!163850) (not b!2560178) (not b!2560282) (not bm!163920) (not bm!163762) (not bm!163819) (not b!2560234) (not b!2559786) (not bm!163787) (not b!2559562) (not bm!163899) (not d!725390) (not b!2560300) (not b!2559825) (not bm!163720) (not d!725376) (not bm!163876) (not b!2559834) (not bm!163953) (not b!2560200) (not b!2559407) (not b!2559665) (not b!2560006) (not bm!163802) (not b!2560260) (not b!2560228) (not b!2559475) (not b!2560292) (not d!725392) (not bm!163755) (not d!725204) (not bm!163889) (not b!2559565) (not b!2559684) (not b!2560245) (not bm!163928) (not b!2559162) (not b!2560014) (not bm!163796) (not b!2559869) (not b!2560296) (not d!725342) (not b!2559972) (not b!2560202) (not b!2560146) (not d!725270) (not d!725370) (not b!2559525) (not bm!163901) (not bm!163869) (not b!2559280) (not bm!163725) (not d!725308) (not d!725330) (not d!725332) (not b!2560294) (not bm!163808) (not b!2560180) (not b!2559740) (not b!2559943) (not b!2559992) (not b!2559276) (not b!2559968) (not b!2560179) (not b!2559598) (not bm!163938) (not bm!163891) (not b!2560236) (not b!2559577) (not b!2559351) (not bm!163727) (not b!2559476) (not bm!163783) (not bm!163836) (not bm!163841) (not b!2560142) (not d!725132) (not b!2559380) (not b!2559278) (not b!2560232) (not d!725130) (not bm!163893) (not b!2560225) (not bm!163882) (not b!2560258) (not b!2560252) (not b!2560306) (not bm!163933) (not b!2560257) (not b!2559342) (not bm!163870) (not b!2559313) (not bm!163825) (not d!725378) (not b!2560215) (not b!2560309) (not b!2560249) (not d!725136) (not b!2559416) (not bm!163949) (not b!2560004) (not d!725202) (not d!725292) (not b!2560184) (not b!2559404) (not b!2560312) (not b!2559944) (not b!2560167) (not b!2560308) (not b!2559573) (not b!2559482) (not d!725382) (not b!2560280) (not bm!163952) (not b!2559346) (not b!2559274) (not bm!163835) (not b!2560266) (not b!2559356) (not bm!163702) (not b!2560250) (not b!2559484) (not b!2559515) (not d!725080) (not b!2560174) (not b!2560298) (not b!2559517) (not d!725368) (not b!2559574) (not b!2560272) (not d!725226) (not bm!163793) (not b!2560248) (not bm!163788) (not b!2559821) (not b!2559935) (not bm!163828) (not b!2559748) (not b!2560253) (not b!2559739) (not b!2559967) (not b!2559865) (not b!2559281) (not d!725348) (not b!2559467) (not d!725228) (not d!725252) (not d!725018) (not d!725138) (not b!2560223) (not b!2559529) (not bm!163948) (not b!2559932) (not b!2560123) (not d!725064) (not b!2559164) (not b!2560269) (not d!725248) (not b!2560246) (not b!2559172) (not b!2560219) (not bm!163842) (not bm!163924) (not b!2559405) (not b!2559106) (not d!725062) (not d!725340) (not bm!163942) (not d!725306) (not b!2559553) (not b!2559161) (not bm!163912) (not b!2560270) (not bm!163866) (not b!2559441) (not b!2560262) (not bm!163817) (not b!2560297) (not bm!163774) (not bm!163824) (not bm!163921) (not b!2559350) (not d!725302) (not b!2560216) (not bm!163935) (not bm!163926) (not b!2559480) (not b!2559618) (not b!2559687) (not b!2560238) (not b!2560277) (not b!2559847) (not b!2560203) (not b!2559471) (not b!2560304) (not d!725162) (not b!2560268) (not b!2560314) (not b!2559918) (not bm!163937) (not b!2560168) (not b!2560220) (not b!2560278) (not b!2559462) (not b!2559939) (not b!2560231) (not b!2559798) (not d!725042) (not bm!163918) (not bm!163703) (not b!2560265) (not b!2559415) (not b!2560221) (not b!2559714) (not bm!163795) (not d!725394) (not b!2559215) (not b!2560227) (not b!2559464) (not b!2559820) (not bm!163701) (not bm!163767) (not bm!163903) (not b!2560261) (not bm!163939) (not bm!163749) (not b!2559933) (not bm!163950) (not b!2560141) (not bm!163884) (not b!2560289) (not bm!163763) (not bm!163864) (not b!2560301) (not b!2559617) (not d!725266) (not b!2560284) (not d!725400) (not b!2560217) (not b!2559330) (not b!2560302) (not b!2559239) (not b!2560224) (not d!725246) (not b!2560288) (not bm!163772) (not b!2559238) (not b!2559723) (not b!2559465) (not d!725398) (not b!2560155) (not bm!163810) (not b!2559295) (not b!2559234) (not bm!163798) (not d!725208) (not b!2559434) (not bm!163773) (not b!2560233) (not d!725350) (not b!2559514) (not bm!163760) (not bm!163800) (not b!2559521) (not d!725198) (not d!725362) (not b!2560153) (not bm!163799) (not bm!163853) (not d!725148) (not b!2559841) (not d!725298) (not bm!163855) (not b!2559228) (not b!2560273) (not bm!163913) (not b!2560256) (not b!2560254) (not bm!163791) (not b!2559628) (not b!2560003) (not b!2559168) (not b!2560276) (not b!2559159) (not b!2559569) (not b!2560015) (not b!2560170) (not d!725380) (not b!2560264) (not bm!163736) (not b!2560229) (not bm!163704) (not b!2560293) (not bm!163806) (not bm!163871) (not bm!163823) (not b!2560305) (not d!725082) (not b!2560274) (not bm!163941) (not b!2560241) (not bm!163765) (not b!2559842) (not b!2559185) (not b!2560213) (not d!725126) (not b!2559770) (not b!2559230) (not b!2559227) (not d!725210) (not bm!163904) (not b!2559173) (not d!725326) (not b!2560165) (not b!2560149) (not b!2560281) (not b!2560145) (not bm!163946) (not b!2560286) (not b!2560240) (not b!2560310) (not b!2559901) (not bm!163875) (not b!2559411) (not bm!163750) (not bm!163849) (not b!2559507) (not d!725106) (not d!725104) (not b!2560150) (not bm!163756) (not d!725174) (not b!2559647) (not bm!163804) (not bm!163927) (not d!725262) (not b!2559526) (not b!2560156) (not d!725372) (not bm!163794) (not bm!163730) (not d!725272) (not bm!163815) (not b!2560148) tp_is_empty!13081 (not b!2559339) (not b!2559563) (not bm!163829) (not b!2560022) (not bm!163911) (not bm!163868) (not b!2559478) (not b!2560285) (not b!2560290) (not b!2560237) (not b!2560313) (not bm!163729) (not d!725072) (not b!2560242) (not b!2559340) (not b!2560010) (not bm!163944))
(check-sat)
