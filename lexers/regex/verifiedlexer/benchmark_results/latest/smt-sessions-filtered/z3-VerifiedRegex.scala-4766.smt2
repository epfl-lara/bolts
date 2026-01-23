; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245708 () Bool)

(assert start!245708)

(declare-fun b!2521221 () Bool)

(declare-fun e!1596642 () Bool)

(declare-fun tp!805730 () Bool)

(assert (=> b!2521221 (= e!1596642 tp!805730)))

(declare-fun b!2521222 () Bool)

(declare-fun res!1065153 () Bool)

(declare-fun e!1596640 () Bool)

(assert (=> b!2521222 (=> (not res!1065153) (not e!1596640))))

(declare-datatypes ((C!15172 0))(
  ( (C!15173 (val!9238 Int)) )
))
(declare-datatypes ((Regex!7507 0))(
  ( (ElementMatch!7507 (c!402153 C!15172)) (Concat!12203 (regOne!15526 Regex!7507) (regTwo!15526 Regex!7507)) (EmptyExpr!7507) (Star!7507 (reg!7836 Regex!7507)) (EmptyLang!7507) (Union!7507 (regOne!15527 Regex!7507) (regTwo!15527 Regex!7507)) )
))
(declare-fun lt!899626 () Regex!7507)

(declare-datatypes ((List!29572 0))(
  ( (Nil!29472) (Cons!29472 (h!34892 C!15172) (t!211271 List!29572)) )
))
(declare-fun tl!4068 () List!29572)

(declare-fun nullable!2424 (Regex!7507) Bool)

(declare-fun derivative!202 (Regex!7507 List!29572) Regex!7507)

(assert (=> b!2521222 (= res!1065153 (not (nullable!2424 (derivative!202 lt!899626 tl!4068))))))

(declare-fun b!2521223 () Bool)

(declare-fun e!1596636 () Bool)

(assert (=> b!2521223 (= e!1596636 e!1596640)))

(declare-fun res!1065159 () Bool)

(assert (=> b!2521223 (=> (not res!1065159) (not e!1596640))))

(declare-fun lt!899620 () Regex!7507)

(declare-fun lt!899625 () Regex!7507)

(assert (=> b!2521223 (= res!1065159 (= lt!899620 (Concat!12203 lt!899626 lt!899625)))))

(declare-fun r!27340 () Regex!7507)

(assert (=> b!2521223 (= lt!899625 (Star!7507 (reg!7836 r!27340)))))

(declare-fun c!14016 () C!15172)

(declare-fun derivativeStep!2076 (Regex!7507 C!15172) Regex!7507)

(assert (=> b!2521223 (= lt!899626 (derivativeStep!2076 (reg!7836 r!27340) c!14016))))

(declare-fun b!2521224 () Bool)

(declare-fun res!1065157 () Bool)

(assert (=> b!2521224 (=> (not res!1065157) (not e!1596636))))

(get-info :version)

(assert (=> b!2521224 (= res!1065157 (and (not ((_ is EmptyExpr!7507) r!27340)) (not ((_ is EmptyLang!7507) r!27340)) (not ((_ is ElementMatch!7507) r!27340)) (not ((_ is Union!7507) r!27340)) ((_ is Star!7507) r!27340)))))

(declare-fun b!2521225 () Bool)

(declare-fun e!1596638 () Bool)

(assert (=> b!2521225 (= e!1596638 e!1596636)))

(declare-fun res!1065156 () Bool)

(assert (=> b!2521225 (=> (not res!1065156) (not e!1596636))))

(declare-fun lt!899622 () Regex!7507)

(assert (=> b!2521225 (= res!1065156 (nullable!2424 lt!899622))))

(assert (=> b!2521225 (= lt!899622 (derivative!202 lt!899620 tl!4068))))

(assert (=> b!2521225 (= lt!899620 (derivativeStep!2076 r!27340 c!14016))))

(declare-fun b!2521226 () Bool)

(declare-fun e!1596639 () Bool)

(declare-fun e!1596641 () Bool)

(assert (=> b!2521226 (= e!1596639 e!1596641)))

(declare-fun res!1065160 () Bool)

(assert (=> b!2521226 (=> res!1065160 e!1596641)))

(declare-datatypes ((tuple2!29516 0))(
  ( (tuple2!29517 (_1!17300 List!29572) (_2!17300 List!29572)) )
))
(declare-fun lt!899627 () tuple2!29516)

(declare-fun ++!7228 (List!29572 List!29572) List!29572)

(assert (=> b!2521226 (= res!1065160 (not (= (++!7228 (_1!17300 lt!899627) (_2!17300 lt!899627)) tl!4068)))))

(declare-datatypes ((Option!5878 0))(
  ( (None!5877) (Some!5877 (v!31810 tuple2!29516)) )
))
(declare-fun lt!899624 () Option!5878)

(declare-fun get!9210 (Option!5878) tuple2!29516)

(assert (=> b!2521226 (= lt!899627 (get!9210 lt!899624))))

(declare-fun isDefined!4700 (Option!5878) Bool)

(assert (=> b!2521226 (isDefined!4700 lt!899624)))

(declare-fun findConcatSeparation!900 (Regex!7507 Regex!7507 List!29572 List!29572 List!29572) Option!5878)

(assert (=> b!2521226 (= lt!899624 (findConcatSeparation!900 lt!899626 lt!899625 Nil!29472 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43239 0))(
  ( (Unit!43240) )
))
(declare-fun lt!899621 () Unit!43239)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!182 (Regex!7507 Regex!7507 List!29572) Unit!43239)

(assert (=> b!2521226 (= lt!899621 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!182 lt!899626 lt!899625 tl!4068))))

(declare-fun b!2521227 () Bool)

(declare-fun matchR!3494 (Regex!7507 List!29572) Bool)

(assert (=> b!2521227 (= e!1596641 (matchR!3494 lt!899626 (_1!17300 lt!899627)))))

(declare-fun res!1065155 () Bool)

(assert (=> start!245708 (=> (not res!1065155) (not e!1596638))))

(declare-fun validRegex!3133 (Regex!7507) Bool)

(assert (=> start!245708 (= res!1065155 (validRegex!3133 r!27340))))

(assert (=> start!245708 e!1596638))

(assert (=> start!245708 e!1596642))

(declare-fun tp_is_empty!12869 () Bool)

(assert (=> start!245708 tp_is_empty!12869))

(declare-fun e!1596637 () Bool)

(assert (=> start!245708 e!1596637))

(declare-fun b!2521228 () Bool)

(declare-fun tp!805726 () Bool)

(declare-fun tp!805725 () Bool)

(assert (=> b!2521228 (= e!1596642 (and tp!805726 tp!805725))))

(declare-fun b!2521229 () Bool)

(assert (=> b!2521229 (= e!1596642 tp_is_empty!12869)))

(declare-fun b!2521230 () Bool)

(declare-fun tp!805727 () Bool)

(declare-fun tp!805729 () Bool)

(assert (=> b!2521230 (= e!1596642 (and tp!805727 tp!805729))))

(declare-fun b!2521231 () Bool)

(declare-fun res!1065154 () Bool)

(assert (=> b!2521231 (=> res!1065154 e!1596641)))

(assert (=> b!2521231 (= res!1065154 (not (matchR!3494 lt!899625 (_2!17300 lt!899627))))))

(declare-fun b!2521232 () Bool)

(assert (=> b!2521232 (= e!1596640 (not e!1596639))))

(declare-fun res!1065152 () Bool)

(assert (=> b!2521232 (=> res!1065152 e!1596639)))

(declare-fun lt!899623 () Bool)

(assert (=> b!2521232 (= res!1065152 (not lt!899623))))

(assert (=> b!2521232 (= lt!899623 (matchR!3494 lt!899622 Nil!29472))))

(assert (=> b!2521232 (= lt!899623 (matchR!3494 lt!899620 tl!4068))))

(declare-fun lt!899628 () Unit!43239)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!140 (Regex!7507 List!29572) Unit!43239)

(assert (=> b!2521232 (= lt!899628 (lemmaMatchRIsSameAsWholeDerivativeAndNil!140 lt!899620 tl!4068))))

(declare-fun b!2521233 () Bool)

(declare-fun res!1065158 () Bool)

(assert (=> b!2521233 (=> res!1065158 e!1596641)))

(assert (=> b!2521233 (= res!1065158 (not (matchR!3494 (reg!7836 r!27340) (Cons!29472 c!14016 (_1!17300 lt!899627)))))))

(declare-fun b!2521234 () Bool)

(declare-fun tp!805728 () Bool)

(assert (=> b!2521234 (= e!1596637 (and tp_is_empty!12869 tp!805728))))

(assert (= (and start!245708 res!1065155) b!2521225))

(assert (= (and b!2521225 res!1065156) b!2521224))

(assert (= (and b!2521224 res!1065157) b!2521223))

(assert (= (and b!2521223 res!1065159) b!2521222))

(assert (= (and b!2521222 res!1065153) b!2521232))

(assert (= (and b!2521232 (not res!1065152)) b!2521226))

(assert (= (and b!2521226 (not res!1065160)) b!2521231))

(assert (= (and b!2521231 (not res!1065154)) b!2521233))

(assert (= (and b!2521233 (not res!1065158)) b!2521227))

(assert (= (and start!245708 ((_ is ElementMatch!7507) r!27340)) b!2521229))

(assert (= (and start!245708 ((_ is Concat!12203) r!27340)) b!2521228))

(assert (= (and start!245708 ((_ is Star!7507) r!27340)) b!2521221))

(assert (= (and start!245708 ((_ is Union!7507) r!27340)) b!2521230))

(assert (= (and start!245708 ((_ is Cons!29472) tl!4068)) b!2521234))

(declare-fun m!2875925 () Bool)

(assert (=> b!2521233 m!2875925))

(declare-fun m!2875927 () Bool)

(assert (=> start!245708 m!2875927))

(declare-fun m!2875929 () Bool)

(assert (=> b!2521223 m!2875929))

(declare-fun m!2875931 () Bool)

(assert (=> b!2521222 m!2875931))

(assert (=> b!2521222 m!2875931))

(declare-fun m!2875933 () Bool)

(assert (=> b!2521222 m!2875933))

(declare-fun m!2875935 () Bool)

(assert (=> b!2521232 m!2875935))

(declare-fun m!2875937 () Bool)

(assert (=> b!2521232 m!2875937))

(declare-fun m!2875939 () Bool)

(assert (=> b!2521232 m!2875939))

(declare-fun m!2875941 () Bool)

(assert (=> b!2521226 m!2875941))

(declare-fun m!2875943 () Bool)

(assert (=> b!2521226 m!2875943))

(declare-fun m!2875945 () Bool)

(assert (=> b!2521226 m!2875945))

(declare-fun m!2875947 () Bool)

(assert (=> b!2521226 m!2875947))

(declare-fun m!2875949 () Bool)

(assert (=> b!2521226 m!2875949))

(declare-fun m!2875951 () Bool)

(assert (=> b!2521225 m!2875951))

(declare-fun m!2875953 () Bool)

(assert (=> b!2521225 m!2875953))

(declare-fun m!2875955 () Bool)

(assert (=> b!2521225 m!2875955))

(declare-fun m!2875957 () Bool)

(assert (=> b!2521227 m!2875957))

(declare-fun m!2875959 () Bool)

(assert (=> b!2521231 m!2875959))

(check-sat (not b!2521232) (not b!2521225) (not b!2521234) (not b!2521223) (not start!245708) (not b!2521228) (not b!2521227) (not b!2521226) (not b!2521230) (not b!2521231) (not b!2521222) (not b!2521233) (not b!2521221) tp_is_empty!12869)
(check-sat)
(get-model)

(declare-fun d!718171 () Bool)

(declare-fun e!1596647 () Bool)

(assert (=> d!718171 e!1596647))

(declare-fun res!1065165 () Bool)

(assert (=> d!718171 (=> (not res!1065165) (not e!1596647))))

(declare-fun lt!899631 () List!29572)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4035 (List!29572) (InoxSet C!15172))

(assert (=> d!718171 (= res!1065165 (= (content!4035 lt!899631) ((_ map or) (content!4035 (_1!17300 lt!899627)) (content!4035 (_2!17300 lt!899627)))))))

(declare-fun e!1596648 () List!29572)

(assert (=> d!718171 (= lt!899631 e!1596648)))

(declare-fun c!402156 () Bool)

(assert (=> d!718171 (= c!402156 ((_ is Nil!29472) (_1!17300 lt!899627)))))

(assert (=> d!718171 (= (++!7228 (_1!17300 lt!899627) (_2!17300 lt!899627)) lt!899631)))

(declare-fun b!2521245 () Bool)

(declare-fun res!1065166 () Bool)

(assert (=> b!2521245 (=> (not res!1065166) (not e!1596647))))

(declare-fun size!22917 (List!29572) Int)

(assert (=> b!2521245 (= res!1065166 (= (size!22917 lt!899631) (+ (size!22917 (_1!17300 lt!899627)) (size!22917 (_2!17300 lt!899627)))))))

(declare-fun b!2521243 () Bool)

(assert (=> b!2521243 (= e!1596648 (_2!17300 lt!899627))))

(declare-fun b!2521246 () Bool)

(assert (=> b!2521246 (= e!1596647 (or (not (= (_2!17300 lt!899627) Nil!29472)) (= lt!899631 (_1!17300 lt!899627))))))

(declare-fun b!2521244 () Bool)

(assert (=> b!2521244 (= e!1596648 (Cons!29472 (h!34892 (_1!17300 lt!899627)) (++!7228 (t!211271 (_1!17300 lt!899627)) (_2!17300 lt!899627))))))

(assert (= (and d!718171 c!402156) b!2521243))

(assert (= (and d!718171 (not c!402156)) b!2521244))

(assert (= (and d!718171 res!1065165) b!2521245))

(assert (= (and b!2521245 res!1065166) b!2521246))

(declare-fun m!2875963 () Bool)

(assert (=> d!718171 m!2875963))

(declare-fun m!2875965 () Bool)

(assert (=> d!718171 m!2875965))

(declare-fun m!2875967 () Bool)

(assert (=> d!718171 m!2875967))

(declare-fun m!2875969 () Bool)

(assert (=> b!2521245 m!2875969))

(declare-fun m!2875971 () Bool)

(assert (=> b!2521245 m!2875971))

(declare-fun m!2875973 () Bool)

(assert (=> b!2521245 m!2875973))

(declare-fun m!2875975 () Bool)

(assert (=> b!2521244 m!2875975))

(assert (=> b!2521226 d!718171))

(declare-fun d!718177 () Bool)

(assert (=> d!718177 (isDefined!4700 (findConcatSeparation!900 lt!899626 lt!899625 Nil!29472 tl!4068 tl!4068))))

(declare-fun lt!899637 () Unit!43239)

(declare-fun choose!14939 (Regex!7507 Regex!7507 List!29572) Unit!43239)

(assert (=> d!718177 (= lt!899637 (choose!14939 lt!899626 lt!899625 tl!4068))))

(assert (=> d!718177 (validRegex!3133 lt!899626)))

(assert (=> d!718177 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!182 lt!899626 lt!899625 tl!4068) lt!899637)))

(declare-fun bs!468995 () Bool)

(assert (= bs!468995 d!718177))

(assert (=> bs!468995 m!2875941))

(assert (=> bs!468995 m!2875941))

(declare-fun m!2875985 () Bool)

(assert (=> bs!468995 m!2875985))

(declare-fun m!2875987 () Bool)

(assert (=> bs!468995 m!2875987))

(declare-fun m!2875989 () Bool)

(assert (=> bs!468995 m!2875989))

(assert (=> b!2521226 d!718177))

(declare-fun d!718181 () Bool)

(declare-fun isEmpty!16935 (Option!5878) Bool)

(assert (=> d!718181 (= (isDefined!4700 lt!899624) (not (isEmpty!16935 lt!899624)))))

(declare-fun bs!468996 () Bool)

(assert (= bs!468996 d!718181))

(declare-fun m!2875991 () Bool)

(assert (=> bs!468996 m!2875991))

(assert (=> b!2521226 d!718181))

(declare-fun b!2521301 () Bool)

(declare-fun res!1065180 () Bool)

(declare-fun e!1596679 () Bool)

(assert (=> b!2521301 (=> (not res!1065180) (not e!1596679))))

(declare-fun lt!899648 () Option!5878)

(assert (=> b!2521301 (= res!1065180 (matchR!3494 lt!899625 (_2!17300 (get!9210 lt!899648))))))

(declare-fun b!2521302 () Bool)

(declare-fun e!1596677 () Bool)

(assert (=> b!2521302 (= e!1596677 (not (isDefined!4700 lt!899648)))))

(declare-fun b!2521303 () Bool)

(declare-fun e!1596678 () Bool)

(assert (=> b!2521303 (= e!1596678 (matchR!3494 lt!899625 tl!4068))))

(declare-fun b!2521304 () Bool)

(declare-fun res!1065179 () Bool)

(assert (=> b!2521304 (=> (not res!1065179) (not e!1596679))))

(assert (=> b!2521304 (= res!1065179 (matchR!3494 lt!899626 (_1!17300 (get!9210 lt!899648))))))

(declare-fun b!2521306 () Bool)

(declare-fun e!1596680 () Option!5878)

(assert (=> b!2521306 (= e!1596680 None!5877)))

(declare-fun b!2521307 () Bool)

(declare-fun e!1596681 () Option!5878)

(assert (=> b!2521307 (= e!1596681 e!1596680)))

(declare-fun c!402180 () Bool)

(assert (=> b!2521307 (= c!402180 ((_ is Nil!29472) tl!4068))))

(declare-fun b!2521308 () Bool)

(assert (=> b!2521308 (= e!1596681 (Some!5877 (tuple2!29517 Nil!29472 tl!4068)))))

(declare-fun b!2521309 () Bool)

(assert (=> b!2521309 (= e!1596679 (= (++!7228 (_1!17300 (get!9210 lt!899648)) (_2!17300 (get!9210 lt!899648))) tl!4068))))

(declare-fun d!718183 () Bool)

(assert (=> d!718183 e!1596677))

(declare-fun res!1065181 () Bool)

(assert (=> d!718183 (=> res!1065181 e!1596677)))

(assert (=> d!718183 (= res!1065181 e!1596679)))

(declare-fun res!1065177 () Bool)

(assert (=> d!718183 (=> (not res!1065177) (not e!1596679))))

(assert (=> d!718183 (= res!1065177 (isDefined!4700 lt!899648))))

(assert (=> d!718183 (= lt!899648 e!1596681)))

(declare-fun c!402179 () Bool)

(assert (=> d!718183 (= c!402179 e!1596678)))

(declare-fun res!1065178 () Bool)

(assert (=> d!718183 (=> (not res!1065178) (not e!1596678))))

(assert (=> d!718183 (= res!1065178 (matchR!3494 lt!899626 Nil!29472))))

(assert (=> d!718183 (validRegex!3133 lt!899626)))

(assert (=> d!718183 (= (findConcatSeparation!900 lt!899626 lt!899625 Nil!29472 tl!4068 tl!4068) lt!899648)))

(declare-fun b!2521305 () Bool)

(declare-fun lt!899649 () Unit!43239)

(declare-fun lt!899647 () Unit!43239)

(assert (=> b!2521305 (= lt!899649 lt!899647)))

(assert (=> b!2521305 (= (++!7228 (++!7228 Nil!29472 (Cons!29472 (h!34892 tl!4068) Nil!29472)) (t!211271 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!769 (List!29572 C!15172 List!29572 List!29572) Unit!43239)

(assert (=> b!2521305 (= lt!899647 (lemmaMoveElementToOtherListKeepsConcatEq!769 Nil!29472 (h!34892 tl!4068) (t!211271 tl!4068) tl!4068))))

(assert (=> b!2521305 (= e!1596680 (findConcatSeparation!900 lt!899626 lt!899625 (++!7228 Nil!29472 (Cons!29472 (h!34892 tl!4068) Nil!29472)) (t!211271 tl!4068) tl!4068))))

(assert (= (and d!718183 res!1065178) b!2521303))

(assert (= (and d!718183 c!402179) b!2521308))

(assert (= (and d!718183 (not c!402179)) b!2521307))

(assert (= (and b!2521307 c!402180) b!2521306))

(assert (= (and b!2521307 (not c!402180)) b!2521305))

(assert (= (and d!718183 res!1065177) b!2521304))

(assert (= (and b!2521304 res!1065179) b!2521301))

(assert (= (and b!2521301 res!1065180) b!2521309))

(assert (= (and d!718183 (not res!1065181)) b!2521302))

(declare-fun m!2876001 () Bool)

(assert (=> b!2521303 m!2876001))

(declare-fun m!2876003 () Bool)

(assert (=> b!2521302 m!2876003))

(declare-fun m!2876005 () Bool)

(assert (=> b!2521304 m!2876005))

(declare-fun m!2876007 () Bool)

(assert (=> b!2521304 m!2876007))

(assert (=> d!718183 m!2876003))

(declare-fun m!2876009 () Bool)

(assert (=> d!718183 m!2876009))

(assert (=> d!718183 m!2875989))

(assert (=> b!2521301 m!2876005))

(declare-fun m!2876011 () Bool)

(assert (=> b!2521301 m!2876011))

(declare-fun m!2876013 () Bool)

(assert (=> b!2521305 m!2876013))

(assert (=> b!2521305 m!2876013))

(declare-fun m!2876015 () Bool)

(assert (=> b!2521305 m!2876015))

(declare-fun m!2876017 () Bool)

(assert (=> b!2521305 m!2876017))

(assert (=> b!2521305 m!2876013))

(declare-fun m!2876019 () Bool)

(assert (=> b!2521305 m!2876019))

(assert (=> b!2521309 m!2876005))

(declare-fun m!2876021 () Bool)

(assert (=> b!2521309 m!2876021))

(assert (=> b!2521226 d!718183))

(declare-fun d!718187 () Bool)

(assert (=> d!718187 (= (get!9210 lt!899624) (v!31810 lt!899624))))

(assert (=> b!2521226 d!718187))

(declare-fun b!2521377 () Bool)

(declare-fun res!1065223 () Bool)

(declare-fun e!1596721 () Bool)

(assert (=> b!2521377 (=> (not res!1065223) (not e!1596721))))

(declare-fun call!157188 () Bool)

(assert (=> b!2521377 (= res!1065223 (not call!157188))))

(declare-fun b!2521379 () Bool)

(declare-fun e!1596723 () Bool)

(declare-fun e!1596718 () Bool)

(assert (=> b!2521379 (= e!1596723 e!1596718)))

(declare-fun c!402196 () Bool)

(assert (=> b!2521379 (= c!402196 ((_ is EmptyLang!7507) lt!899625))))

(declare-fun b!2521380 () Bool)

(declare-fun e!1596720 () Bool)

(declare-fun e!1596722 () Bool)

(assert (=> b!2521380 (= e!1596720 e!1596722)))

(declare-fun res!1065226 () Bool)

(assert (=> b!2521380 (=> (not res!1065226) (not e!1596722))))

(declare-fun lt!899664 () Bool)

(assert (=> b!2521380 (= res!1065226 (not lt!899664))))

(declare-fun b!2521381 () Bool)

(declare-fun res!1065221 () Bool)

(assert (=> b!2521381 (=> res!1065221 e!1596720)))

(assert (=> b!2521381 (= res!1065221 (not ((_ is ElementMatch!7507) lt!899625)))))

(assert (=> b!2521381 (= e!1596718 e!1596720)))

(declare-fun b!2521382 () Bool)

(declare-fun res!1065225 () Bool)

(assert (=> b!2521382 (=> res!1065225 e!1596720)))

(assert (=> b!2521382 (= res!1065225 e!1596721)))

(declare-fun res!1065219 () Bool)

(assert (=> b!2521382 (=> (not res!1065219) (not e!1596721))))

(assert (=> b!2521382 (= res!1065219 lt!899664)))

(declare-fun b!2521383 () Bool)

(declare-fun head!5755 (List!29572) C!15172)

(assert (=> b!2521383 (= e!1596721 (= (head!5755 (_2!17300 lt!899627)) (c!402153 lt!899625)))))

(declare-fun bm!157183 () Bool)

(declare-fun isEmpty!16937 (List!29572) Bool)

(assert (=> bm!157183 (= call!157188 (isEmpty!16937 (_2!17300 lt!899627)))))

(declare-fun b!2521384 () Bool)

(declare-fun e!1596719 () Bool)

(assert (=> b!2521384 (= e!1596722 e!1596719)))

(declare-fun res!1065222 () Bool)

(assert (=> b!2521384 (=> res!1065222 e!1596719)))

(assert (=> b!2521384 (= res!1065222 call!157188)))

(declare-fun b!2521378 () Bool)

(declare-fun e!1596717 () Bool)

(assert (=> b!2521378 (= e!1596717 (nullable!2424 lt!899625))))

(declare-fun d!718189 () Bool)

(assert (=> d!718189 e!1596723))

(declare-fun c!402198 () Bool)

(assert (=> d!718189 (= c!402198 ((_ is EmptyExpr!7507) lt!899625))))

(assert (=> d!718189 (= lt!899664 e!1596717)))

(declare-fun c!402197 () Bool)

(assert (=> d!718189 (= c!402197 (isEmpty!16937 (_2!17300 lt!899627)))))

(assert (=> d!718189 (validRegex!3133 lt!899625)))

(assert (=> d!718189 (= (matchR!3494 lt!899625 (_2!17300 lt!899627)) lt!899664)))

(declare-fun b!2521385 () Bool)

(declare-fun tail!4032 (List!29572) List!29572)

(assert (=> b!2521385 (= e!1596717 (matchR!3494 (derivativeStep!2076 lt!899625 (head!5755 (_2!17300 lt!899627))) (tail!4032 (_2!17300 lt!899627))))))

(declare-fun b!2521386 () Bool)

(declare-fun res!1065224 () Bool)

(assert (=> b!2521386 (=> res!1065224 e!1596719)))

(assert (=> b!2521386 (= res!1065224 (not (isEmpty!16937 (tail!4032 (_2!17300 lt!899627)))))))

(declare-fun b!2521387 () Bool)

(declare-fun res!1065220 () Bool)

(assert (=> b!2521387 (=> (not res!1065220) (not e!1596721))))

(assert (=> b!2521387 (= res!1065220 (isEmpty!16937 (tail!4032 (_2!17300 lt!899627))))))

(declare-fun b!2521388 () Bool)

(assert (=> b!2521388 (= e!1596723 (= lt!899664 call!157188))))

(declare-fun b!2521389 () Bool)

(assert (=> b!2521389 (= e!1596719 (not (= (head!5755 (_2!17300 lt!899627)) (c!402153 lt!899625))))))

(declare-fun b!2521390 () Bool)

(assert (=> b!2521390 (= e!1596718 (not lt!899664))))

(assert (= (and d!718189 c!402197) b!2521378))

(assert (= (and d!718189 (not c!402197)) b!2521385))

(assert (= (and d!718189 c!402198) b!2521388))

(assert (= (and d!718189 (not c!402198)) b!2521379))

(assert (= (and b!2521379 c!402196) b!2521390))

(assert (= (and b!2521379 (not c!402196)) b!2521381))

(assert (= (and b!2521381 (not res!1065221)) b!2521382))

(assert (= (and b!2521382 res!1065219) b!2521377))

(assert (= (and b!2521377 res!1065223) b!2521387))

(assert (= (and b!2521387 res!1065220) b!2521383))

(assert (= (and b!2521382 (not res!1065225)) b!2521380))

(assert (= (and b!2521380 res!1065226) b!2521384))

(assert (= (and b!2521384 (not res!1065222)) b!2521386))

(assert (= (and b!2521386 (not res!1065224)) b!2521389))

(assert (= (or b!2521388 b!2521377 b!2521384) bm!157183))

(declare-fun m!2876061 () Bool)

(assert (=> bm!157183 m!2876061))

(declare-fun m!2876063 () Bool)

(assert (=> b!2521386 m!2876063))

(assert (=> b!2521386 m!2876063))

(declare-fun m!2876065 () Bool)

(assert (=> b!2521386 m!2876065))

(declare-fun m!2876067 () Bool)

(assert (=> b!2521378 m!2876067))

(declare-fun m!2876069 () Bool)

(assert (=> b!2521389 m!2876069))

(assert (=> b!2521385 m!2876069))

(assert (=> b!2521385 m!2876069))

(declare-fun m!2876071 () Bool)

(assert (=> b!2521385 m!2876071))

(assert (=> b!2521385 m!2876063))

(assert (=> b!2521385 m!2876071))

(assert (=> b!2521385 m!2876063))

(declare-fun m!2876073 () Bool)

(assert (=> b!2521385 m!2876073))

(assert (=> b!2521383 m!2876069))

(assert (=> b!2521387 m!2876063))

(assert (=> b!2521387 m!2876063))

(assert (=> b!2521387 m!2876065))

(assert (=> d!718189 m!2876061))

(declare-fun m!2876075 () Bool)

(assert (=> d!718189 m!2876075))

(assert (=> b!2521231 d!718189))

(declare-fun d!718197 () Bool)

(declare-fun nullableFct!666 (Regex!7507) Bool)

(assert (=> d!718197 (= (nullable!2424 lt!899622) (nullableFct!666 lt!899622))))

(declare-fun bs!468997 () Bool)

(assert (= bs!468997 d!718197))

(declare-fun m!2876077 () Bool)

(assert (=> bs!468997 m!2876077))

(assert (=> b!2521225 d!718197))

(declare-fun d!718199 () Bool)

(declare-fun lt!899671 () Regex!7507)

(assert (=> d!718199 (validRegex!3133 lt!899671)))

(declare-fun e!1596731 () Regex!7507)

(assert (=> d!718199 (= lt!899671 e!1596731)))

(declare-fun c!402206 () Bool)

(assert (=> d!718199 (= c!402206 ((_ is Cons!29472) tl!4068))))

(assert (=> d!718199 (validRegex!3133 lt!899620)))

(assert (=> d!718199 (= (derivative!202 lt!899620 tl!4068) lt!899671)))

(declare-fun b!2521405 () Bool)

(assert (=> b!2521405 (= e!1596731 (derivative!202 (derivativeStep!2076 lt!899620 (h!34892 tl!4068)) (t!211271 tl!4068)))))

(declare-fun b!2521406 () Bool)

(assert (=> b!2521406 (= e!1596731 lt!899620)))

(assert (= (and d!718199 c!402206) b!2521405))

(assert (= (and d!718199 (not c!402206)) b!2521406))

(declare-fun m!2876095 () Bool)

(assert (=> d!718199 m!2876095))

(declare-fun m!2876097 () Bool)

(assert (=> d!718199 m!2876097))

(declare-fun m!2876099 () Bool)

(assert (=> b!2521405 m!2876099))

(assert (=> b!2521405 m!2876099))

(declare-fun m!2876101 () Bool)

(assert (=> b!2521405 m!2876101))

(assert (=> b!2521225 d!718199))

(declare-fun b!2521513 () Bool)

(declare-fun e!1596786 () Regex!7507)

(declare-fun e!1596788 () Regex!7507)

(assert (=> b!2521513 (= e!1596786 e!1596788)))

(declare-fun c!402236 () Bool)

(assert (=> b!2521513 (= c!402236 ((_ is Star!7507) r!27340))))

(declare-fun b!2521514 () Bool)

(declare-fun e!1596785 () Regex!7507)

(assert (=> b!2521514 (= e!1596785 (ite (= c!14016 (c!402153 r!27340)) EmptyExpr!7507 EmptyLang!7507))))

(declare-fun b!2521515 () Bool)

(declare-fun c!402237 () Bool)

(assert (=> b!2521515 (= c!402237 ((_ is Union!7507) r!27340))))

(assert (=> b!2521515 (= e!1596785 e!1596786)))

(declare-fun bm!157202 () Bool)

(declare-fun call!157210 () Regex!7507)

(declare-fun call!157209 () Regex!7507)

(assert (=> bm!157202 (= call!157210 call!157209)))

(declare-fun b!2521516 () Bool)

(declare-fun call!157207 () Regex!7507)

(declare-fun call!157208 () Regex!7507)

(assert (=> b!2521516 (= e!1596786 (Union!7507 call!157207 call!157208))))

(declare-fun bm!157203 () Bool)

(assert (=> bm!157203 (= call!157209 call!157208)))

(declare-fun d!718207 () Bool)

(declare-fun lt!899681 () Regex!7507)

(assert (=> d!718207 (validRegex!3133 lt!899681)))

(declare-fun e!1596787 () Regex!7507)

(assert (=> d!718207 (= lt!899681 e!1596787)))

(declare-fun c!402240 () Bool)

(assert (=> d!718207 (= c!402240 (or ((_ is EmptyExpr!7507) r!27340) ((_ is EmptyLang!7507) r!27340)))))

(assert (=> d!718207 (validRegex!3133 r!27340)))

(assert (=> d!718207 (= (derivativeStep!2076 r!27340 c!14016) lt!899681)))

(declare-fun b!2521517 () Bool)

(assert (=> b!2521517 (= e!1596787 EmptyLang!7507)))

(declare-fun b!2521518 () Bool)

(declare-fun e!1596789 () Regex!7507)

(assert (=> b!2521518 (= e!1596789 (Union!7507 (Concat!12203 call!157210 (regTwo!15526 r!27340)) call!157207))))

(declare-fun bm!157204 () Bool)

(assert (=> bm!157204 (= call!157207 (derivativeStep!2076 (ite c!402237 (regOne!15527 r!27340) (regTwo!15526 r!27340)) c!14016))))

(declare-fun bm!157205 () Bool)

(assert (=> bm!157205 (= call!157208 (derivativeStep!2076 (ite c!402237 (regTwo!15527 r!27340) (ite c!402236 (reg!7836 r!27340) (regOne!15526 r!27340))) c!14016))))

(declare-fun b!2521519 () Bool)

(assert (=> b!2521519 (= e!1596789 (Union!7507 (Concat!12203 call!157210 (regTwo!15526 r!27340)) EmptyLang!7507))))

(declare-fun b!2521520 () Bool)

(assert (=> b!2521520 (= e!1596787 e!1596785)))

(declare-fun c!402238 () Bool)

(assert (=> b!2521520 (= c!402238 ((_ is ElementMatch!7507) r!27340))))

(declare-fun b!2521521 () Bool)

(assert (=> b!2521521 (= e!1596788 (Concat!12203 call!157209 r!27340))))

(declare-fun b!2521522 () Bool)

(declare-fun c!402239 () Bool)

(assert (=> b!2521522 (= c!402239 (nullable!2424 (regOne!15526 r!27340)))))

(assert (=> b!2521522 (= e!1596788 e!1596789)))

(assert (= (and d!718207 c!402240) b!2521517))

(assert (= (and d!718207 (not c!402240)) b!2521520))

(assert (= (and b!2521520 c!402238) b!2521514))

(assert (= (and b!2521520 (not c!402238)) b!2521515))

(assert (= (and b!2521515 c!402237) b!2521516))

(assert (= (and b!2521515 (not c!402237)) b!2521513))

(assert (= (and b!2521513 c!402236) b!2521521))

(assert (= (and b!2521513 (not c!402236)) b!2521522))

(assert (= (and b!2521522 c!402239) b!2521518))

(assert (= (and b!2521522 (not c!402239)) b!2521519))

(assert (= (or b!2521518 b!2521519) bm!157202))

(assert (= (or b!2521521 bm!157202) bm!157203))

(assert (= (or b!2521516 bm!157203) bm!157205))

(assert (= (or b!2521516 b!2521518) bm!157204))

(declare-fun m!2876169 () Bool)

(assert (=> d!718207 m!2876169))

(assert (=> d!718207 m!2875927))

(declare-fun m!2876171 () Bool)

(assert (=> bm!157204 m!2876171))

(declare-fun m!2876173 () Bool)

(assert (=> bm!157205 m!2876173))

(declare-fun m!2876175 () Bool)

(assert (=> b!2521522 m!2876175))

(assert (=> b!2521225 d!718207))

(declare-fun b!2521617 () Bool)

(declare-fun e!1596848 () Bool)

(declare-fun call!157227 () Bool)

(assert (=> b!2521617 (= e!1596848 call!157227)))

(declare-fun b!2521618 () Bool)

(declare-fun e!1596842 () Bool)

(declare-fun call!157229 () Bool)

(assert (=> b!2521618 (= e!1596842 call!157229)))

(declare-fun bm!157222 () Bool)

(declare-fun call!157228 () Bool)

(assert (=> bm!157222 (= call!157229 call!157228)))

(declare-fun b!2521619 () Bool)

(declare-fun e!1596847 () Bool)

(declare-fun e!1596845 () Bool)

(assert (=> b!2521619 (= e!1596847 e!1596845)))

(declare-fun c!402255 () Bool)

(assert (=> b!2521619 (= c!402255 ((_ is Union!7507) r!27340))))

(declare-fun b!2521620 () Bool)

(declare-fun res!1065312 () Bool)

(declare-fun e!1596843 () Bool)

(assert (=> b!2521620 (=> res!1065312 e!1596843)))

(assert (=> b!2521620 (= res!1065312 (not ((_ is Concat!12203) r!27340)))))

(assert (=> b!2521620 (= e!1596845 e!1596843)))

(declare-fun d!718221 () Bool)

(declare-fun res!1065308 () Bool)

(declare-fun e!1596841 () Bool)

(assert (=> d!718221 (=> res!1065308 e!1596841)))

(assert (=> d!718221 (= res!1065308 ((_ is ElementMatch!7507) r!27340))))

(assert (=> d!718221 (= (validRegex!3133 r!27340) e!1596841)))

(declare-fun b!2521621 () Bool)

(declare-fun e!1596844 () Bool)

(assert (=> b!2521621 (= e!1596844 call!157228)))

(declare-fun b!2521622 () Bool)

(declare-fun res!1065311 () Bool)

(assert (=> b!2521622 (=> (not res!1065311) (not e!1596842))))

(assert (=> b!2521622 (= res!1065311 call!157227)))

(assert (=> b!2521622 (= e!1596845 e!1596842)))

(declare-fun b!2521623 () Bool)

(assert (=> b!2521623 (= e!1596847 e!1596844)))

(declare-fun res!1065310 () Bool)

(assert (=> b!2521623 (= res!1065310 (not (nullable!2424 (reg!7836 r!27340))))))

(assert (=> b!2521623 (=> (not res!1065310) (not e!1596844))))

(declare-fun bm!157223 () Bool)

(assert (=> bm!157223 (= call!157227 (validRegex!3133 (ite c!402255 (regOne!15527 r!27340) (regTwo!15526 r!27340))))))

(declare-fun b!2521624 () Bool)

(assert (=> b!2521624 (= e!1596843 e!1596848)))

(declare-fun res!1065309 () Bool)

(assert (=> b!2521624 (=> (not res!1065309) (not e!1596848))))

(assert (=> b!2521624 (= res!1065309 call!157229)))

(declare-fun bm!157224 () Bool)

(declare-fun c!402254 () Bool)

(assert (=> bm!157224 (= call!157228 (validRegex!3133 (ite c!402254 (reg!7836 r!27340) (ite c!402255 (regTwo!15527 r!27340) (regOne!15526 r!27340)))))))

(declare-fun b!2521625 () Bool)

(assert (=> b!2521625 (= e!1596841 e!1596847)))

(assert (=> b!2521625 (= c!402254 ((_ is Star!7507) r!27340))))

(assert (= (and d!718221 (not res!1065308)) b!2521625))

(assert (= (and b!2521625 c!402254) b!2521623))

(assert (= (and b!2521625 (not c!402254)) b!2521619))

(assert (= (and b!2521623 res!1065310) b!2521621))

(assert (= (and b!2521619 c!402255) b!2521622))

(assert (= (and b!2521619 (not c!402255)) b!2521620))

(assert (= (and b!2521622 res!1065311) b!2521618))

(assert (= (and b!2521620 (not res!1065312)) b!2521624))

(assert (= (and b!2521624 res!1065309) b!2521617))

(assert (= (or b!2521622 b!2521617) bm!157223))

(assert (= (or b!2521618 b!2521624) bm!157222))

(assert (= (or b!2521621 bm!157222) bm!157224))

(declare-fun m!2876199 () Bool)

(assert (=> b!2521623 m!2876199))

(declare-fun m!2876201 () Bool)

(assert (=> bm!157223 m!2876201))

(declare-fun m!2876203 () Bool)

(assert (=> bm!157224 m!2876203))

(assert (=> start!245708 d!718221))

(declare-fun b!2521626 () Bool)

(declare-fun e!1596850 () Regex!7507)

(declare-fun e!1596852 () Regex!7507)

(assert (=> b!2521626 (= e!1596850 e!1596852)))

(declare-fun c!402256 () Bool)

(assert (=> b!2521626 (= c!402256 ((_ is Star!7507) (reg!7836 r!27340)))))

(declare-fun b!2521627 () Bool)

(declare-fun e!1596849 () Regex!7507)

(assert (=> b!2521627 (= e!1596849 (ite (= c!14016 (c!402153 (reg!7836 r!27340))) EmptyExpr!7507 EmptyLang!7507))))

(declare-fun b!2521628 () Bool)

(declare-fun c!402257 () Bool)

(assert (=> b!2521628 (= c!402257 ((_ is Union!7507) (reg!7836 r!27340)))))

(assert (=> b!2521628 (= e!1596849 e!1596850)))

(declare-fun bm!157225 () Bool)

(declare-fun call!157233 () Regex!7507)

(declare-fun call!157232 () Regex!7507)

(assert (=> bm!157225 (= call!157233 call!157232)))

(declare-fun b!2521629 () Bool)

(declare-fun call!157230 () Regex!7507)

(declare-fun call!157231 () Regex!7507)

(assert (=> b!2521629 (= e!1596850 (Union!7507 call!157230 call!157231))))

(declare-fun bm!157226 () Bool)

(assert (=> bm!157226 (= call!157232 call!157231)))

(declare-fun d!718227 () Bool)

(declare-fun lt!899686 () Regex!7507)

(assert (=> d!718227 (validRegex!3133 lt!899686)))

(declare-fun e!1596851 () Regex!7507)

(assert (=> d!718227 (= lt!899686 e!1596851)))

(declare-fun c!402260 () Bool)

(assert (=> d!718227 (= c!402260 (or ((_ is EmptyExpr!7507) (reg!7836 r!27340)) ((_ is EmptyLang!7507) (reg!7836 r!27340))))))

(assert (=> d!718227 (validRegex!3133 (reg!7836 r!27340))))

(assert (=> d!718227 (= (derivativeStep!2076 (reg!7836 r!27340) c!14016) lt!899686)))

(declare-fun b!2521630 () Bool)

(assert (=> b!2521630 (= e!1596851 EmptyLang!7507)))

(declare-fun b!2521631 () Bool)

(declare-fun e!1596853 () Regex!7507)

(assert (=> b!2521631 (= e!1596853 (Union!7507 (Concat!12203 call!157233 (regTwo!15526 (reg!7836 r!27340))) call!157230))))

(declare-fun bm!157227 () Bool)

(assert (=> bm!157227 (= call!157230 (derivativeStep!2076 (ite c!402257 (regOne!15527 (reg!7836 r!27340)) (regTwo!15526 (reg!7836 r!27340))) c!14016))))

(declare-fun bm!157228 () Bool)

(assert (=> bm!157228 (= call!157231 (derivativeStep!2076 (ite c!402257 (regTwo!15527 (reg!7836 r!27340)) (ite c!402256 (reg!7836 (reg!7836 r!27340)) (regOne!15526 (reg!7836 r!27340)))) c!14016))))

(declare-fun b!2521632 () Bool)

(assert (=> b!2521632 (= e!1596853 (Union!7507 (Concat!12203 call!157233 (regTwo!15526 (reg!7836 r!27340))) EmptyLang!7507))))

(declare-fun b!2521633 () Bool)

(assert (=> b!2521633 (= e!1596851 e!1596849)))

(declare-fun c!402258 () Bool)

(assert (=> b!2521633 (= c!402258 ((_ is ElementMatch!7507) (reg!7836 r!27340)))))

(declare-fun b!2521634 () Bool)

(assert (=> b!2521634 (= e!1596852 (Concat!12203 call!157232 (reg!7836 r!27340)))))

(declare-fun b!2521635 () Bool)

(declare-fun c!402259 () Bool)

(assert (=> b!2521635 (= c!402259 (nullable!2424 (regOne!15526 (reg!7836 r!27340))))))

(assert (=> b!2521635 (= e!1596852 e!1596853)))

(assert (= (and d!718227 c!402260) b!2521630))

(assert (= (and d!718227 (not c!402260)) b!2521633))

(assert (= (and b!2521633 c!402258) b!2521627))

(assert (= (and b!2521633 (not c!402258)) b!2521628))

(assert (= (and b!2521628 c!402257) b!2521629))

(assert (= (and b!2521628 (not c!402257)) b!2521626))

(assert (= (and b!2521626 c!402256) b!2521634))

(assert (= (and b!2521626 (not c!402256)) b!2521635))

(assert (= (and b!2521635 c!402259) b!2521631))

(assert (= (and b!2521635 (not c!402259)) b!2521632))

(assert (= (or b!2521631 b!2521632) bm!157225))

(assert (= (or b!2521634 bm!157225) bm!157226))

(assert (= (or b!2521629 bm!157226) bm!157228))

(assert (= (or b!2521629 b!2521631) bm!157227))

(declare-fun m!2876205 () Bool)

(assert (=> d!718227 m!2876205))

(declare-fun m!2876207 () Bool)

(assert (=> d!718227 m!2876207))

(declare-fun m!2876209 () Bool)

(assert (=> bm!157227 m!2876209))

(declare-fun m!2876211 () Bool)

(assert (=> bm!157228 m!2876211))

(declare-fun m!2876213 () Bool)

(assert (=> b!2521635 m!2876213))

(assert (=> b!2521223 d!718227))

(declare-fun d!718229 () Bool)

(assert (=> d!718229 (= (nullable!2424 (derivative!202 lt!899626 tl!4068)) (nullableFct!666 (derivative!202 lt!899626 tl!4068)))))

(declare-fun bs!469002 () Bool)

(assert (= bs!469002 d!718229))

(assert (=> bs!469002 m!2875931))

(declare-fun m!2876215 () Bool)

(assert (=> bs!469002 m!2876215))

(assert (=> b!2521222 d!718229))

(declare-fun d!718231 () Bool)

(declare-fun lt!899687 () Regex!7507)

(assert (=> d!718231 (validRegex!3133 lt!899687)))

(declare-fun e!1596854 () Regex!7507)

(assert (=> d!718231 (= lt!899687 e!1596854)))

(declare-fun c!402261 () Bool)

(assert (=> d!718231 (= c!402261 ((_ is Cons!29472) tl!4068))))

(assert (=> d!718231 (validRegex!3133 lt!899626)))

(assert (=> d!718231 (= (derivative!202 lt!899626 tl!4068) lt!899687)))

(declare-fun b!2521636 () Bool)

(assert (=> b!2521636 (= e!1596854 (derivative!202 (derivativeStep!2076 lt!899626 (h!34892 tl!4068)) (t!211271 tl!4068)))))

(declare-fun b!2521637 () Bool)

(assert (=> b!2521637 (= e!1596854 lt!899626)))

(assert (= (and d!718231 c!402261) b!2521636))

(assert (= (and d!718231 (not c!402261)) b!2521637))

(declare-fun m!2876217 () Bool)

(assert (=> d!718231 m!2876217))

(assert (=> d!718231 m!2875989))

(declare-fun m!2876219 () Bool)

(assert (=> b!2521636 m!2876219))

(assert (=> b!2521636 m!2876219))

(declare-fun m!2876221 () Bool)

(assert (=> b!2521636 m!2876221))

(assert (=> b!2521222 d!718231))

(declare-fun b!2521638 () Bool)

(declare-fun res!1065317 () Bool)

(declare-fun e!1596859 () Bool)

(assert (=> b!2521638 (=> (not res!1065317) (not e!1596859))))

(declare-fun call!157234 () Bool)

(assert (=> b!2521638 (= res!1065317 (not call!157234))))

(declare-fun b!2521640 () Bool)

(declare-fun e!1596861 () Bool)

(declare-fun e!1596856 () Bool)

(assert (=> b!2521640 (= e!1596861 e!1596856)))

(declare-fun c!402262 () Bool)

(assert (=> b!2521640 (= c!402262 ((_ is EmptyLang!7507) (reg!7836 r!27340)))))

(declare-fun b!2521641 () Bool)

(declare-fun e!1596858 () Bool)

(declare-fun e!1596860 () Bool)

(assert (=> b!2521641 (= e!1596858 e!1596860)))

(declare-fun res!1065320 () Bool)

(assert (=> b!2521641 (=> (not res!1065320) (not e!1596860))))

(declare-fun lt!899688 () Bool)

(assert (=> b!2521641 (= res!1065320 (not lt!899688))))

(declare-fun b!2521642 () Bool)

(declare-fun res!1065315 () Bool)

(assert (=> b!2521642 (=> res!1065315 e!1596858)))

(assert (=> b!2521642 (= res!1065315 (not ((_ is ElementMatch!7507) (reg!7836 r!27340))))))

(assert (=> b!2521642 (= e!1596856 e!1596858)))

(declare-fun b!2521643 () Bool)

(declare-fun res!1065319 () Bool)

(assert (=> b!2521643 (=> res!1065319 e!1596858)))

(assert (=> b!2521643 (= res!1065319 e!1596859)))

(declare-fun res!1065313 () Bool)

(assert (=> b!2521643 (=> (not res!1065313) (not e!1596859))))

(assert (=> b!2521643 (= res!1065313 lt!899688)))

(declare-fun b!2521644 () Bool)

(assert (=> b!2521644 (= e!1596859 (= (head!5755 (Cons!29472 c!14016 (_1!17300 lt!899627))) (c!402153 (reg!7836 r!27340))))))

(declare-fun bm!157229 () Bool)

(assert (=> bm!157229 (= call!157234 (isEmpty!16937 (Cons!29472 c!14016 (_1!17300 lt!899627))))))

(declare-fun b!2521645 () Bool)

(declare-fun e!1596857 () Bool)

(assert (=> b!2521645 (= e!1596860 e!1596857)))

(declare-fun res!1065316 () Bool)

(assert (=> b!2521645 (=> res!1065316 e!1596857)))

(assert (=> b!2521645 (= res!1065316 call!157234)))

(declare-fun b!2521639 () Bool)

(declare-fun e!1596855 () Bool)

(assert (=> b!2521639 (= e!1596855 (nullable!2424 (reg!7836 r!27340)))))

(declare-fun d!718233 () Bool)

(assert (=> d!718233 e!1596861))

(declare-fun c!402264 () Bool)

(assert (=> d!718233 (= c!402264 ((_ is EmptyExpr!7507) (reg!7836 r!27340)))))

(assert (=> d!718233 (= lt!899688 e!1596855)))

(declare-fun c!402263 () Bool)

(assert (=> d!718233 (= c!402263 (isEmpty!16937 (Cons!29472 c!14016 (_1!17300 lt!899627))))))

(assert (=> d!718233 (validRegex!3133 (reg!7836 r!27340))))

(assert (=> d!718233 (= (matchR!3494 (reg!7836 r!27340) (Cons!29472 c!14016 (_1!17300 lt!899627))) lt!899688)))

(declare-fun b!2521646 () Bool)

(assert (=> b!2521646 (= e!1596855 (matchR!3494 (derivativeStep!2076 (reg!7836 r!27340) (head!5755 (Cons!29472 c!14016 (_1!17300 lt!899627)))) (tail!4032 (Cons!29472 c!14016 (_1!17300 lt!899627)))))))

(declare-fun b!2521647 () Bool)

(declare-fun res!1065318 () Bool)

(assert (=> b!2521647 (=> res!1065318 e!1596857)))

(assert (=> b!2521647 (= res!1065318 (not (isEmpty!16937 (tail!4032 (Cons!29472 c!14016 (_1!17300 lt!899627))))))))

(declare-fun b!2521648 () Bool)

(declare-fun res!1065314 () Bool)

(assert (=> b!2521648 (=> (not res!1065314) (not e!1596859))))

(assert (=> b!2521648 (= res!1065314 (isEmpty!16937 (tail!4032 (Cons!29472 c!14016 (_1!17300 lt!899627)))))))

(declare-fun b!2521649 () Bool)

(assert (=> b!2521649 (= e!1596861 (= lt!899688 call!157234))))

(declare-fun b!2521650 () Bool)

(assert (=> b!2521650 (= e!1596857 (not (= (head!5755 (Cons!29472 c!14016 (_1!17300 lt!899627))) (c!402153 (reg!7836 r!27340)))))))

(declare-fun b!2521651 () Bool)

(assert (=> b!2521651 (= e!1596856 (not lt!899688))))

(assert (= (and d!718233 c!402263) b!2521639))

(assert (= (and d!718233 (not c!402263)) b!2521646))

(assert (= (and d!718233 c!402264) b!2521649))

(assert (= (and d!718233 (not c!402264)) b!2521640))

(assert (= (and b!2521640 c!402262) b!2521651))

(assert (= (and b!2521640 (not c!402262)) b!2521642))

(assert (= (and b!2521642 (not res!1065315)) b!2521643))

(assert (= (and b!2521643 res!1065313) b!2521638))

(assert (= (and b!2521638 res!1065317) b!2521648))

(assert (= (and b!2521648 res!1065314) b!2521644))

(assert (= (and b!2521643 (not res!1065319)) b!2521641))

(assert (= (and b!2521641 res!1065320) b!2521645))

(assert (= (and b!2521645 (not res!1065316)) b!2521647))

(assert (= (and b!2521647 (not res!1065318)) b!2521650))

(assert (= (or b!2521649 b!2521638 b!2521645) bm!157229))

(declare-fun m!2876223 () Bool)

(assert (=> bm!157229 m!2876223))

(declare-fun m!2876225 () Bool)

(assert (=> b!2521647 m!2876225))

(assert (=> b!2521647 m!2876225))

(declare-fun m!2876227 () Bool)

(assert (=> b!2521647 m!2876227))

(assert (=> b!2521639 m!2876199))

(declare-fun m!2876229 () Bool)

(assert (=> b!2521650 m!2876229))

(assert (=> b!2521646 m!2876229))

(assert (=> b!2521646 m!2876229))

(declare-fun m!2876231 () Bool)

(assert (=> b!2521646 m!2876231))

(assert (=> b!2521646 m!2876225))

(assert (=> b!2521646 m!2876231))

(assert (=> b!2521646 m!2876225))

(declare-fun m!2876233 () Bool)

(assert (=> b!2521646 m!2876233))

(assert (=> b!2521644 m!2876229))

(assert (=> b!2521648 m!2876225))

(assert (=> b!2521648 m!2876225))

(assert (=> b!2521648 m!2876227))

(assert (=> d!718233 m!2876223))

(assert (=> d!718233 m!2876207))

(assert (=> b!2521233 d!718233))

(declare-fun b!2521652 () Bool)

(declare-fun res!1065325 () Bool)

(declare-fun e!1596866 () Bool)

(assert (=> b!2521652 (=> (not res!1065325) (not e!1596866))))

(declare-fun call!157235 () Bool)

(assert (=> b!2521652 (= res!1065325 (not call!157235))))

(declare-fun b!2521654 () Bool)

(declare-fun e!1596868 () Bool)

(declare-fun e!1596863 () Bool)

(assert (=> b!2521654 (= e!1596868 e!1596863)))

(declare-fun c!402265 () Bool)

(assert (=> b!2521654 (= c!402265 ((_ is EmptyLang!7507) lt!899622))))

(declare-fun b!2521655 () Bool)

(declare-fun e!1596865 () Bool)

(declare-fun e!1596867 () Bool)

(assert (=> b!2521655 (= e!1596865 e!1596867)))

(declare-fun res!1065328 () Bool)

(assert (=> b!2521655 (=> (not res!1065328) (not e!1596867))))

(declare-fun lt!899689 () Bool)

(assert (=> b!2521655 (= res!1065328 (not lt!899689))))

(declare-fun b!2521656 () Bool)

(declare-fun res!1065323 () Bool)

(assert (=> b!2521656 (=> res!1065323 e!1596865)))

(assert (=> b!2521656 (= res!1065323 (not ((_ is ElementMatch!7507) lt!899622)))))

(assert (=> b!2521656 (= e!1596863 e!1596865)))

(declare-fun b!2521657 () Bool)

(declare-fun res!1065327 () Bool)

(assert (=> b!2521657 (=> res!1065327 e!1596865)))

(assert (=> b!2521657 (= res!1065327 e!1596866)))

(declare-fun res!1065321 () Bool)

(assert (=> b!2521657 (=> (not res!1065321) (not e!1596866))))

(assert (=> b!2521657 (= res!1065321 lt!899689)))

(declare-fun b!2521658 () Bool)

(assert (=> b!2521658 (= e!1596866 (= (head!5755 Nil!29472) (c!402153 lt!899622)))))

(declare-fun bm!157230 () Bool)

(assert (=> bm!157230 (= call!157235 (isEmpty!16937 Nil!29472))))

(declare-fun b!2521659 () Bool)

(declare-fun e!1596864 () Bool)

(assert (=> b!2521659 (= e!1596867 e!1596864)))

(declare-fun res!1065324 () Bool)

(assert (=> b!2521659 (=> res!1065324 e!1596864)))

(assert (=> b!2521659 (= res!1065324 call!157235)))

(declare-fun b!2521653 () Bool)

(declare-fun e!1596862 () Bool)

(assert (=> b!2521653 (= e!1596862 (nullable!2424 lt!899622))))

(declare-fun d!718235 () Bool)

(assert (=> d!718235 e!1596868))

(declare-fun c!402267 () Bool)

(assert (=> d!718235 (= c!402267 ((_ is EmptyExpr!7507) lt!899622))))

(assert (=> d!718235 (= lt!899689 e!1596862)))

(declare-fun c!402266 () Bool)

(assert (=> d!718235 (= c!402266 (isEmpty!16937 Nil!29472))))

(assert (=> d!718235 (validRegex!3133 lt!899622)))

(assert (=> d!718235 (= (matchR!3494 lt!899622 Nil!29472) lt!899689)))

(declare-fun b!2521660 () Bool)

(assert (=> b!2521660 (= e!1596862 (matchR!3494 (derivativeStep!2076 lt!899622 (head!5755 Nil!29472)) (tail!4032 Nil!29472)))))

(declare-fun b!2521661 () Bool)

(declare-fun res!1065326 () Bool)

(assert (=> b!2521661 (=> res!1065326 e!1596864)))

(assert (=> b!2521661 (= res!1065326 (not (isEmpty!16937 (tail!4032 Nil!29472))))))

(declare-fun b!2521662 () Bool)

(declare-fun res!1065322 () Bool)

(assert (=> b!2521662 (=> (not res!1065322) (not e!1596866))))

(assert (=> b!2521662 (= res!1065322 (isEmpty!16937 (tail!4032 Nil!29472)))))

(declare-fun b!2521663 () Bool)

(assert (=> b!2521663 (= e!1596868 (= lt!899689 call!157235))))

(declare-fun b!2521664 () Bool)

(assert (=> b!2521664 (= e!1596864 (not (= (head!5755 Nil!29472) (c!402153 lt!899622))))))

(declare-fun b!2521665 () Bool)

(assert (=> b!2521665 (= e!1596863 (not lt!899689))))

(assert (= (and d!718235 c!402266) b!2521653))

(assert (= (and d!718235 (not c!402266)) b!2521660))

(assert (= (and d!718235 c!402267) b!2521663))

(assert (= (and d!718235 (not c!402267)) b!2521654))

(assert (= (and b!2521654 c!402265) b!2521665))

(assert (= (and b!2521654 (not c!402265)) b!2521656))

(assert (= (and b!2521656 (not res!1065323)) b!2521657))

(assert (= (and b!2521657 res!1065321) b!2521652))

(assert (= (and b!2521652 res!1065325) b!2521662))

(assert (= (and b!2521662 res!1065322) b!2521658))

(assert (= (and b!2521657 (not res!1065327)) b!2521655))

(assert (= (and b!2521655 res!1065328) b!2521659))

(assert (= (and b!2521659 (not res!1065324)) b!2521661))

(assert (= (and b!2521661 (not res!1065326)) b!2521664))

(assert (= (or b!2521663 b!2521652 b!2521659) bm!157230))

(declare-fun m!2876235 () Bool)

(assert (=> bm!157230 m!2876235))

(declare-fun m!2876237 () Bool)

(assert (=> b!2521661 m!2876237))

(assert (=> b!2521661 m!2876237))

(declare-fun m!2876239 () Bool)

(assert (=> b!2521661 m!2876239))

(assert (=> b!2521653 m!2875951))

(declare-fun m!2876241 () Bool)

(assert (=> b!2521664 m!2876241))

(assert (=> b!2521660 m!2876241))

(assert (=> b!2521660 m!2876241))

(declare-fun m!2876243 () Bool)

(assert (=> b!2521660 m!2876243))

(assert (=> b!2521660 m!2876237))

(assert (=> b!2521660 m!2876243))

(assert (=> b!2521660 m!2876237))

(declare-fun m!2876245 () Bool)

(assert (=> b!2521660 m!2876245))

(assert (=> b!2521658 m!2876241))

(assert (=> b!2521662 m!2876237))

(assert (=> b!2521662 m!2876237))

(assert (=> b!2521662 m!2876239))

(assert (=> d!718235 m!2876235))

(declare-fun m!2876247 () Bool)

(assert (=> d!718235 m!2876247))

(assert (=> b!2521232 d!718235))

(declare-fun b!2521666 () Bool)

(declare-fun res!1065333 () Bool)

(declare-fun e!1596873 () Bool)

(assert (=> b!2521666 (=> (not res!1065333) (not e!1596873))))

(declare-fun call!157236 () Bool)

(assert (=> b!2521666 (= res!1065333 (not call!157236))))

(declare-fun b!2521668 () Bool)

(declare-fun e!1596875 () Bool)

(declare-fun e!1596870 () Bool)

(assert (=> b!2521668 (= e!1596875 e!1596870)))

(declare-fun c!402268 () Bool)

(assert (=> b!2521668 (= c!402268 ((_ is EmptyLang!7507) lt!899620))))

(declare-fun b!2521669 () Bool)

(declare-fun e!1596872 () Bool)

(declare-fun e!1596874 () Bool)

(assert (=> b!2521669 (= e!1596872 e!1596874)))

(declare-fun res!1065336 () Bool)

(assert (=> b!2521669 (=> (not res!1065336) (not e!1596874))))

(declare-fun lt!899690 () Bool)

(assert (=> b!2521669 (= res!1065336 (not lt!899690))))

(declare-fun b!2521670 () Bool)

(declare-fun res!1065331 () Bool)

(assert (=> b!2521670 (=> res!1065331 e!1596872)))

(assert (=> b!2521670 (= res!1065331 (not ((_ is ElementMatch!7507) lt!899620)))))

(assert (=> b!2521670 (= e!1596870 e!1596872)))

(declare-fun b!2521671 () Bool)

(declare-fun res!1065335 () Bool)

(assert (=> b!2521671 (=> res!1065335 e!1596872)))

(assert (=> b!2521671 (= res!1065335 e!1596873)))

(declare-fun res!1065329 () Bool)

(assert (=> b!2521671 (=> (not res!1065329) (not e!1596873))))

(assert (=> b!2521671 (= res!1065329 lt!899690)))

(declare-fun b!2521672 () Bool)

(assert (=> b!2521672 (= e!1596873 (= (head!5755 tl!4068) (c!402153 lt!899620)))))

(declare-fun bm!157231 () Bool)

(assert (=> bm!157231 (= call!157236 (isEmpty!16937 tl!4068))))

(declare-fun b!2521673 () Bool)

(declare-fun e!1596871 () Bool)

(assert (=> b!2521673 (= e!1596874 e!1596871)))

(declare-fun res!1065332 () Bool)

(assert (=> b!2521673 (=> res!1065332 e!1596871)))

(assert (=> b!2521673 (= res!1065332 call!157236)))

(declare-fun b!2521667 () Bool)

(declare-fun e!1596869 () Bool)

(assert (=> b!2521667 (= e!1596869 (nullable!2424 lt!899620))))

(declare-fun d!718237 () Bool)

(assert (=> d!718237 e!1596875))

(declare-fun c!402270 () Bool)

(assert (=> d!718237 (= c!402270 ((_ is EmptyExpr!7507) lt!899620))))

(assert (=> d!718237 (= lt!899690 e!1596869)))

(declare-fun c!402269 () Bool)

(assert (=> d!718237 (= c!402269 (isEmpty!16937 tl!4068))))

(assert (=> d!718237 (validRegex!3133 lt!899620)))

(assert (=> d!718237 (= (matchR!3494 lt!899620 tl!4068) lt!899690)))

(declare-fun b!2521674 () Bool)

(assert (=> b!2521674 (= e!1596869 (matchR!3494 (derivativeStep!2076 lt!899620 (head!5755 tl!4068)) (tail!4032 tl!4068)))))

(declare-fun b!2521675 () Bool)

(declare-fun res!1065334 () Bool)

(assert (=> b!2521675 (=> res!1065334 e!1596871)))

(assert (=> b!2521675 (= res!1065334 (not (isEmpty!16937 (tail!4032 tl!4068))))))

(declare-fun b!2521676 () Bool)

(declare-fun res!1065330 () Bool)

(assert (=> b!2521676 (=> (not res!1065330) (not e!1596873))))

(assert (=> b!2521676 (= res!1065330 (isEmpty!16937 (tail!4032 tl!4068)))))

(declare-fun b!2521677 () Bool)

(assert (=> b!2521677 (= e!1596875 (= lt!899690 call!157236))))

(declare-fun b!2521678 () Bool)

(assert (=> b!2521678 (= e!1596871 (not (= (head!5755 tl!4068) (c!402153 lt!899620))))))

(declare-fun b!2521679 () Bool)

(assert (=> b!2521679 (= e!1596870 (not lt!899690))))

(assert (= (and d!718237 c!402269) b!2521667))

(assert (= (and d!718237 (not c!402269)) b!2521674))

(assert (= (and d!718237 c!402270) b!2521677))

(assert (= (and d!718237 (not c!402270)) b!2521668))

(assert (= (and b!2521668 c!402268) b!2521679))

(assert (= (and b!2521668 (not c!402268)) b!2521670))

(assert (= (and b!2521670 (not res!1065331)) b!2521671))

(assert (= (and b!2521671 res!1065329) b!2521666))

(assert (= (and b!2521666 res!1065333) b!2521676))

(assert (= (and b!2521676 res!1065330) b!2521672))

(assert (= (and b!2521671 (not res!1065335)) b!2521669))

(assert (= (and b!2521669 res!1065336) b!2521673))

(assert (= (and b!2521673 (not res!1065332)) b!2521675))

(assert (= (and b!2521675 (not res!1065334)) b!2521678))

(assert (= (or b!2521677 b!2521666 b!2521673) bm!157231))

(declare-fun m!2876249 () Bool)

(assert (=> bm!157231 m!2876249))

(declare-fun m!2876251 () Bool)

(assert (=> b!2521675 m!2876251))

(assert (=> b!2521675 m!2876251))

(declare-fun m!2876253 () Bool)

(assert (=> b!2521675 m!2876253))

(declare-fun m!2876255 () Bool)

(assert (=> b!2521667 m!2876255))

(declare-fun m!2876257 () Bool)

(assert (=> b!2521678 m!2876257))

(assert (=> b!2521674 m!2876257))

(assert (=> b!2521674 m!2876257))

(declare-fun m!2876259 () Bool)

(assert (=> b!2521674 m!2876259))

(assert (=> b!2521674 m!2876251))

(assert (=> b!2521674 m!2876259))

(assert (=> b!2521674 m!2876251))

(declare-fun m!2876261 () Bool)

(assert (=> b!2521674 m!2876261))

(assert (=> b!2521672 m!2876257))

(assert (=> b!2521676 m!2876251))

(assert (=> b!2521676 m!2876251))

(assert (=> b!2521676 m!2876253))

(assert (=> d!718237 m!2876249))

(assert (=> d!718237 m!2876097))

(assert (=> b!2521232 d!718237))

(declare-fun d!718239 () Bool)

(assert (=> d!718239 (= (matchR!3494 lt!899620 tl!4068) (matchR!3494 (derivative!202 lt!899620 tl!4068) Nil!29472))))

(declare-fun lt!899693 () Unit!43239)

(declare-fun choose!14942 (Regex!7507 List!29572) Unit!43239)

(assert (=> d!718239 (= lt!899693 (choose!14942 lt!899620 tl!4068))))

(assert (=> d!718239 (validRegex!3133 lt!899620)))

(assert (=> d!718239 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!140 lt!899620 tl!4068) lt!899693)))

(declare-fun bs!469003 () Bool)

(assert (= bs!469003 d!718239))

(assert (=> bs!469003 m!2875953))

(declare-fun m!2876263 () Bool)

(assert (=> bs!469003 m!2876263))

(declare-fun m!2876265 () Bool)

(assert (=> bs!469003 m!2876265))

(assert (=> bs!469003 m!2876097))

(assert (=> bs!469003 m!2875953))

(assert (=> bs!469003 m!2875937))

(assert (=> b!2521232 d!718239))

(declare-fun b!2521680 () Bool)

(declare-fun res!1065341 () Bool)

(declare-fun e!1596880 () Bool)

(assert (=> b!2521680 (=> (not res!1065341) (not e!1596880))))

(declare-fun call!157237 () Bool)

(assert (=> b!2521680 (= res!1065341 (not call!157237))))

(declare-fun b!2521682 () Bool)

(declare-fun e!1596882 () Bool)

(declare-fun e!1596877 () Bool)

(assert (=> b!2521682 (= e!1596882 e!1596877)))

(declare-fun c!402271 () Bool)

(assert (=> b!2521682 (= c!402271 ((_ is EmptyLang!7507) lt!899626))))

(declare-fun b!2521683 () Bool)

(declare-fun e!1596879 () Bool)

(declare-fun e!1596881 () Bool)

(assert (=> b!2521683 (= e!1596879 e!1596881)))

(declare-fun res!1065344 () Bool)

(assert (=> b!2521683 (=> (not res!1065344) (not e!1596881))))

(declare-fun lt!899694 () Bool)

(assert (=> b!2521683 (= res!1065344 (not lt!899694))))

(declare-fun b!2521684 () Bool)

(declare-fun res!1065339 () Bool)

(assert (=> b!2521684 (=> res!1065339 e!1596879)))

(assert (=> b!2521684 (= res!1065339 (not ((_ is ElementMatch!7507) lt!899626)))))

(assert (=> b!2521684 (= e!1596877 e!1596879)))

(declare-fun b!2521685 () Bool)

(declare-fun res!1065343 () Bool)

(assert (=> b!2521685 (=> res!1065343 e!1596879)))

(assert (=> b!2521685 (= res!1065343 e!1596880)))

(declare-fun res!1065337 () Bool)

(assert (=> b!2521685 (=> (not res!1065337) (not e!1596880))))

(assert (=> b!2521685 (= res!1065337 lt!899694)))

(declare-fun b!2521686 () Bool)

(assert (=> b!2521686 (= e!1596880 (= (head!5755 (_1!17300 lt!899627)) (c!402153 lt!899626)))))

(declare-fun bm!157232 () Bool)

(assert (=> bm!157232 (= call!157237 (isEmpty!16937 (_1!17300 lt!899627)))))

(declare-fun b!2521687 () Bool)

(declare-fun e!1596878 () Bool)

(assert (=> b!2521687 (= e!1596881 e!1596878)))

(declare-fun res!1065340 () Bool)

(assert (=> b!2521687 (=> res!1065340 e!1596878)))

(assert (=> b!2521687 (= res!1065340 call!157237)))

(declare-fun b!2521681 () Bool)

(declare-fun e!1596876 () Bool)

(assert (=> b!2521681 (= e!1596876 (nullable!2424 lt!899626))))

(declare-fun d!718241 () Bool)

(assert (=> d!718241 e!1596882))

(declare-fun c!402273 () Bool)

(assert (=> d!718241 (= c!402273 ((_ is EmptyExpr!7507) lt!899626))))

(assert (=> d!718241 (= lt!899694 e!1596876)))

(declare-fun c!402272 () Bool)

(assert (=> d!718241 (= c!402272 (isEmpty!16937 (_1!17300 lt!899627)))))

(assert (=> d!718241 (validRegex!3133 lt!899626)))

(assert (=> d!718241 (= (matchR!3494 lt!899626 (_1!17300 lt!899627)) lt!899694)))

(declare-fun b!2521688 () Bool)

(assert (=> b!2521688 (= e!1596876 (matchR!3494 (derivativeStep!2076 lt!899626 (head!5755 (_1!17300 lt!899627))) (tail!4032 (_1!17300 lt!899627))))))

(declare-fun b!2521689 () Bool)

(declare-fun res!1065342 () Bool)

(assert (=> b!2521689 (=> res!1065342 e!1596878)))

(assert (=> b!2521689 (= res!1065342 (not (isEmpty!16937 (tail!4032 (_1!17300 lt!899627)))))))

(declare-fun b!2521690 () Bool)

(declare-fun res!1065338 () Bool)

(assert (=> b!2521690 (=> (not res!1065338) (not e!1596880))))

(assert (=> b!2521690 (= res!1065338 (isEmpty!16937 (tail!4032 (_1!17300 lt!899627))))))

(declare-fun b!2521691 () Bool)

(assert (=> b!2521691 (= e!1596882 (= lt!899694 call!157237))))

(declare-fun b!2521692 () Bool)

(assert (=> b!2521692 (= e!1596878 (not (= (head!5755 (_1!17300 lt!899627)) (c!402153 lt!899626))))))

(declare-fun b!2521693 () Bool)

(assert (=> b!2521693 (= e!1596877 (not lt!899694))))

(assert (= (and d!718241 c!402272) b!2521681))

(assert (= (and d!718241 (not c!402272)) b!2521688))

(assert (= (and d!718241 c!402273) b!2521691))

(assert (= (and d!718241 (not c!402273)) b!2521682))

(assert (= (and b!2521682 c!402271) b!2521693))

(assert (= (and b!2521682 (not c!402271)) b!2521684))

(assert (= (and b!2521684 (not res!1065339)) b!2521685))

(assert (= (and b!2521685 res!1065337) b!2521680))

(assert (= (and b!2521680 res!1065341) b!2521690))

(assert (= (and b!2521690 res!1065338) b!2521686))

(assert (= (and b!2521685 (not res!1065343)) b!2521683))

(assert (= (and b!2521683 res!1065344) b!2521687))

(assert (= (and b!2521687 (not res!1065340)) b!2521689))

(assert (= (and b!2521689 (not res!1065342)) b!2521692))

(assert (= (or b!2521691 b!2521680 b!2521687) bm!157232))

(declare-fun m!2876267 () Bool)

(assert (=> bm!157232 m!2876267))

(declare-fun m!2876269 () Bool)

(assert (=> b!2521689 m!2876269))

(assert (=> b!2521689 m!2876269))

(declare-fun m!2876271 () Bool)

(assert (=> b!2521689 m!2876271))

(declare-fun m!2876273 () Bool)

(assert (=> b!2521681 m!2876273))

(declare-fun m!2876275 () Bool)

(assert (=> b!2521692 m!2876275))

(assert (=> b!2521688 m!2876275))

(assert (=> b!2521688 m!2876275))

(declare-fun m!2876277 () Bool)

(assert (=> b!2521688 m!2876277))

(assert (=> b!2521688 m!2876269))

(assert (=> b!2521688 m!2876277))

(assert (=> b!2521688 m!2876269))

(declare-fun m!2876279 () Bool)

(assert (=> b!2521688 m!2876279))

(assert (=> b!2521686 m!2876275))

(assert (=> b!2521690 m!2876269))

(assert (=> b!2521690 m!2876269))

(assert (=> b!2521690 m!2876271))

(assert (=> d!718241 m!2876267))

(assert (=> d!718241 m!2875989))

(assert (=> b!2521227 d!718241))

(declare-fun e!1596885 () Bool)

(assert (=> b!2521221 (= tp!805730 e!1596885)))

(declare-fun b!2521706 () Bool)

(declare-fun tp!805780 () Bool)

(assert (=> b!2521706 (= e!1596885 tp!805780)))

(declare-fun b!2521707 () Bool)

(declare-fun tp!805782 () Bool)

(declare-fun tp!805783 () Bool)

(assert (=> b!2521707 (= e!1596885 (and tp!805782 tp!805783))))

(declare-fun b!2521705 () Bool)

(declare-fun tp!805779 () Bool)

(declare-fun tp!805781 () Bool)

(assert (=> b!2521705 (= e!1596885 (and tp!805779 tp!805781))))

(declare-fun b!2521704 () Bool)

(assert (=> b!2521704 (= e!1596885 tp_is_empty!12869)))

(assert (= (and b!2521221 ((_ is ElementMatch!7507) (reg!7836 r!27340))) b!2521704))

(assert (= (and b!2521221 ((_ is Concat!12203) (reg!7836 r!27340))) b!2521705))

(assert (= (and b!2521221 ((_ is Star!7507) (reg!7836 r!27340))) b!2521706))

(assert (= (and b!2521221 ((_ is Union!7507) (reg!7836 r!27340))) b!2521707))

(declare-fun e!1596886 () Bool)

(assert (=> b!2521230 (= tp!805727 e!1596886)))

(declare-fun b!2521710 () Bool)

(declare-fun tp!805785 () Bool)

(assert (=> b!2521710 (= e!1596886 tp!805785)))

(declare-fun b!2521711 () Bool)

(declare-fun tp!805787 () Bool)

(declare-fun tp!805788 () Bool)

(assert (=> b!2521711 (= e!1596886 (and tp!805787 tp!805788))))

(declare-fun b!2521709 () Bool)

(declare-fun tp!805784 () Bool)

(declare-fun tp!805786 () Bool)

(assert (=> b!2521709 (= e!1596886 (and tp!805784 tp!805786))))

(declare-fun b!2521708 () Bool)

(assert (=> b!2521708 (= e!1596886 tp_is_empty!12869)))

(assert (= (and b!2521230 ((_ is ElementMatch!7507) (regOne!15527 r!27340))) b!2521708))

(assert (= (and b!2521230 ((_ is Concat!12203) (regOne!15527 r!27340))) b!2521709))

(assert (= (and b!2521230 ((_ is Star!7507) (regOne!15527 r!27340))) b!2521710))

(assert (= (and b!2521230 ((_ is Union!7507) (regOne!15527 r!27340))) b!2521711))

(declare-fun e!1596887 () Bool)

(assert (=> b!2521230 (= tp!805729 e!1596887)))

(declare-fun b!2521714 () Bool)

(declare-fun tp!805790 () Bool)

(assert (=> b!2521714 (= e!1596887 tp!805790)))

(declare-fun b!2521715 () Bool)

(declare-fun tp!805792 () Bool)

(declare-fun tp!805793 () Bool)

(assert (=> b!2521715 (= e!1596887 (and tp!805792 tp!805793))))

(declare-fun b!2521713 () Bool)

(declare-fun tp!805789 () Bool)

(declare-fun tp!805791 () Bool)

(assert (=> b!2521713 (= e!1596887 (and tp!805789 tp!805791))))

(declare-fun b!2521712 () Bool)

(assert (=> b!2521712 (= e!1596887 tp_is_empty!12869)))

(assert (= (and b!2521230 ((_ is ElementMatch!7507) (regTwo!15527 r!27340))) b!2521712))

(assert (= (and b!2521230 ((_ is Concat!12203) (regTwo!15527 r!27340))) b!2521713))

(assert (= (and b!2521230 ((_ is Star!7507) (regTwo!15527 r!27340))) b!2521714))

(assert (= (and b!2521230 ((_ is Union!7507) (regTwo!15527 r!27340))) b!2521715))

(declare-fun b!2521720 () Bool)

(declare-fun e!1596890 () Bool)

(declare-fun tp!805796 () Bool)

(assert (=> b!2521720 (= e!1596890 (and tp_is_empty!12869 tp!805796))))

(assert (=> b!2521234 (= tp!805728 e!1596890)))

(assert (= (and b!2521234 ((_ is Cons!29472) (t!211271 tl!4068))) b!2521720))

(declare-fun e!1596891 () Bool)

(assert (=> b!2521228 (= tp!805726 e!1596891)))

(declare-fun b!2521723 () Bool)

(declare-fun tp!805798 () Bool)

(assert (=> b!2521723 (= e!1596891 tp!805798)))

(declare-fun b!2521724 () Bool)

(declare-fun tp!805800 () Bool)

(declare-fun tp!805801 () Bool)

(assert (=> b!2521724 (= e!1596891 (and tp!805800 tp!805801))))

(declare-fun b!2521722 () Bool)

(declare-fun tp!805797 () Bool)

(declare-fun tp!805799 () Bool)

(assert (=> b!2521722 (= e!1596891 (and tp!805797 tp!805799))))

(declare-fun b!2521721 () Bool)

(assert (=> b!2521721 (= e!1596891 tp_is_empty!12869)))

(assert (= (and b!2521228 ((_ is ElementMatch!7507) (regOne!15526 r!27340))) b!2521721))

(assert (= (and b!2521228 ((_ is Concat!12203) (regOne!15526 r!27340))) b!2521722))

(assert (= (and b!2521228 ((_ is Star!7507) (regOne!15526 r!27340))) b!2521723))

(assert (= (and b!2521228 ((_ is Union!7507) (regOne!15526 r!27340))) b!2521724))

(declare-fun e!1596892 () Bool)

(assert (=> b!2521228 (= tp!805725 e!1596892)))

(declare-fun b!2521727 () Bool)

(declare-fun tp!805803 () Bool)

(assert (=> b!2521727 (= e!1596892 tp!805803)))

(declare-fun b!2521728 () Bool)

(declare-fun tp!805805 () Bool)

(declare-fun tp!805806 () Bool)

(assert (=> b!2521728 (= e!1596892 (and tp!805805 tp!805806))))

(declare-fun b!2521726 () Bool)

(declare-fun tp!805802 () Bool)

(declare-fun tp!805804 () Bool)

(assert (=> b!2521726 (= e!1596892 (and tp!805802 tp!805804))))

(declare-fun b!2521725 () Bool)

(assert (=> b!2521725 (= e!1596892 tp_is_empty!12869)))

(assert (= (and b!2521228 ((_ is ElementMatch!7507) (regTwo!15526 r!27340))) b!2521725))

(assert (= (and b!2521228 ((_ is Concat!12203) (regTwo!15526 r!27340))) b!2521726))

(assert (= (and b!2521228 ((_ is Star!7507) (regTwo!15526 r!27340))) b!2521727))

(assert (= (and b!2521228 ((_ is Union!7507) (regTwo!15526 r!27340))) b!2521728))

(check-sat (not bm!157232) (not bm!157224) (not b!2521383) (not d!718171) (not b!2521675) (not b!2521707) (not b!2521405) (not b!2521714) (not b!2521623) (not b!2521672) (not d!718229) (not b!2521726) (not b!2521646) (not bm!157229) (not b!2521389) (not d!718231) (not b!2521304) (not b!2521660) (not bm!157227) (not d!718189) (not d!718199) (not b!2521385) (not b!2521303) (not b!2521664) (not b!2521688) (not b!2521378) (not b!2521644) (not d!718177) (not b!2521387) (not d!718239) (not b!2521722) (not b!2521689) (not d!718241) (not b!2521658) (not b!2521674) (not b!2521245) (not bm!157231) (not b!2521728) (not b!2521715) (not b!2521723) (not b!2521636) (not d!718235) (not b!2521653) (not b!2521713) (not b!2521681) (not b!2521676) (not b!2521647) (not bm!157204) (not b!2521386) (not b!2521686) (not d!718197) (not b!2521648) (not b!2521639) (not b!2521301) (not b!2521705) (not d!718207) (not d!718183) (not bm!157230) (not d!718237) (not b!2521661) (not b!2521727) (not b!2521692) (not b!2521690) (not b!2521305) (not b!2521244) (not bm!157228) (not bm!157183) (not d!718227) (not b!2521662) (not b!2521711) (not d!718181) (not b!2521522) tp_is_empty!12869 (not bm!157205) (not b!2521667) (not b!2521302) (not b!2521635) (not b!2521706) (not d!718233) (not b!2521309) (not b!2521709) (not b!2521724) (not b!2521720) (not b!2521710) (not bm!157223) (not b!2521678) (not b!2521650))
(check-sat)
