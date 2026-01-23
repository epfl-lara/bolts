; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733776 () Bool)

(assert start!733776)

(declare-fun b!7617080 () Bool)

(assert (=> b!7617080 true))

(assert (=> b!7617080 true))

(declare-fun e!4529579 () Bool)

(declare-fun e!4529577 () Bool)

(assert (=> b!7617080 (= e!4529579 (not e!4529577))))

(declare-fun res!3049304 () Bool)

(assert (=> b!7617080 (=> res!3049304 e!4529577)))

(declare-fun lt!2655647 () Bool)

(assert (=> b!7617080 (= res!3049304 (not lt!2655647))))

(declare-fun lambda!468189 () Int)

(declare-fun Exists!4441 (Int) Bool)

(assert (=> b!7617080 (= lt!2655647 (Exists!4441 lambda!468189))))

(declare-datatypes ((C!40896 0))(
  ( (C!40897 (val!30888 Int)) )
))
(declare-datatypes ((List!73138 0))(
  ( (Nil!73014) (Cons!73014 (h!79462 C!40896) (t!387873 List!73138)) )
))
(declare-datatypes ((tuple2!69132 0))(
  ( (tuple2!69133 (_1!37869 List!73138) (_2!37869 List!73138)) )
))
(declare-datatypes ((Option!17360 0))(
  ( (None!17359) (Some!17359 (v!54494 tuple2!69132)) )
))
(declare-fun lt!2655650 () Option!17360)

(declare-fun isDefined!13976 (Option!17360) Bool)

(assert (=> b!7617080 (= lt!2655647 (isDefined!13976 lt!2655650))))

(declare-datatypes ((Regex!20285 0))(
  ( (ElementMatch!20285 (c!1403950 C!40896)) (Concat!29130 (regOne!41082 Regex!20285) (regTwo!41082 Regex!20285)) (EmptyExpr!20285) (Star!20285 (reg!20614 Regex!20285)) (EmptyLang!20285) (Union!20285 (regOne!41083 Regex!20285) (regTwo!41083 Regex!20285)) )
))
(declare-fun r!14126 () Regex!20285)

(declare-fun s!9605 () List!73138)

(declare-fun findConcatSeparation!3390 (Regex!20285 Regex!20285 List!73138 List!73138 List!73138) Option!17360)

(assert (=> b!7617080 (= lt!2655650 (findConcatSeparation!3390 (reg!20614 r!14126) r!14126 Nil!73014 s!9605 s!9605))))

(declare-datatypes ((Unit!167402 0))(
  ( (Unit!167403) )
))
(declare-fun lt!2655648 () Unit!167402)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3148 (Regex!20285 Regex!20285 List!73138) Unit!167402)

(assert (=> b!7617080 (= lt!2655648 (lemmaFindConcatSeparationEquivalentToExists!3148 (reg!20614 r!14126) r!14126 s!9605))))

(declare-fun b!7617081 () Bool)

(declare-fun e!4529580 () Bool)

(declare-fun tp!2224302 () Bool)

(assert (=> b!7617081 (= e!4529580 tp!2224302)))

(declare-fun b!7617082 () Bool)

(declare-fun e!4529578 () Bool)

(assert (=> b!7617082 (= e!4529578 true)))

(declare-fun lt!2655644 () tuple2!69132)

(declare-fun matchR!9792 (Regex!20285 List!73138) Bool)

(declare-fun ++!17595 (List!73138 List!73138) List!73138)

(assert (=> b!7617082 (matchR!9792 (Concat!29130 (reg!20614 r!14126) r!14126) (++!17595 (_1!37869 lt!2655644) (_2!37869 lt!2655644)))))

(declare-fun lt!2655649 () Unit!167402)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!112 (Regex!20285 Regex!20285 List!73138 List!73138 List!73138) Unit!167402)

(assert (=> b!7617082 (= lt!2655649 (lemmaFindSeparationIsDefinedThenConcatMatches!112 (reg!20614 r!14126) r!14126 (_1!37869 lt!2655644) (_2!37869 lt!2655644) s!9605))))

(declare-fun b!7617083 () Bool)

(declare-fun e!4529581 () Bool)

(declare-fun tp_is_empty!50925 () Bool)

(declare-fun tp!2224305 () Bool)

(assert (=> b!7617083 (= e!4529581 (and tp_is_empty!50925 tp!2224305))))

(declare-fun res!3049308 () Bool)

(assert (=> start!733776 (=> (not res!3049308) (not e!4529579))))

(declare-fun validRegex!10705 (Regex!20285) Bool)

(assert (=> start!733776 (= res!3049308 (validRegex!10705 r!14126))))

(assert (=> start!733776 e!4529579))

(assert (=> start!733776 e!4529580))

(assert (=> start!733776 e!4529581))

(declare-fun b!7617084 () Bool)

(declare-fun tp!2224307 () Bool)

(declare-fun tp!2224303 () Bool)

(assert (=> b!7617084 (= e!4529580 (and tp!2224307 tp!2224303))))

(declare-fun b!7617085 () Bool)

(assert (=> b!7617085 (= e!4529577 e!4529578)))

(declare-fun res!3049306 () Bool)

(assert (=> b!7617085 (=> res!3049306 e!4529578)))

(assert (=> b!7617085 (= res!3049306 (matchR!9792 r!14126 s!9605))))

(declare-fun matchRSpec!4484 (Regex!20285 List!73138) Bool)

(assert (=> b!7617085 (= (matchR!9792 r!14126 (_2!37869 lt!2655644)) (matchRSpec!4484 r!14126 (_2!37869 lt!2655644)))))

(declare-fun lt!2655646 () Unit!167402)

(declare-fun mainMatchTheorem!4478 (Regex!20285 List!73138) Unit!167402)

(assert (=> b!7617085 (= lt!2655646 (mainMatchTheorem!4478 r!14126 (_2!37869 lt!2655644)))))

(assert (=> b!7617085 (= (matchR!9792 (reg!20614 r!14126) (_1!37869 lt!2655644)) (matchRSpec!4484 (reg!20614 r!14126) (_1!37869 lt!2655644)))))

(declare-fun lt!2655645 () Unit!167402)

(assert (=> b!7617085 (= lt!2655645 (mainMatchTheorem!4478 (reg!20614 r!14126) (_1!37869 lt!2655644)))))

(declare-fun get!25739 (Option!17360) tuple2!69132)

(assert (=> b!7617085 (= lt!2655644 (get!25739 lt!2655650))))

(declare-fun b!7617086 () Bool)

(declare-fun tp!2224304 () Bool)

(declare-fun tp!2224306 () Bool)

(assert (=> b!7617086 (= e!4529580 (and tp!2224304 tp!2224306))))

(declare-fun b!7617087 () Bool)

(assert (=> b!7617087 (= e!4529580 tp_is_empty!50925)))

(declare-fun b!7617088 () Bool)

(declare-fun res!3049305 () Bool)

(assert (=> b!7617088 (=> (not res!3049305) (not e!4529579))))

(declare-fun isEmpty!41625 (List!73138) Bool)

(assert (=> b!7617088 (= res!3049305 (not (isEmpty!41625 s!9605)))))

(declare-fun b!7617089 () Bool)

(declare-fun res!3049307 () Bool)

(assert (=> b!7617089 (=> (not res!3049307) (not e!4529579))))

(get-info :version)

(assert (=> b!7617089 (= res!3049307 (and (not ((_ is EmptyExpr!20285) r!14126)) (not ((_ is EmptyLang!20285) r!14126)) (not ((_ is ElementMatch!20285) r!14126)) (not ((_ is Union!20285) r!14126)) ((_ is Star!20285) r!14126)))))

(assert (= (and start!733776 res!3049308) b!7617089))

(assert (= (and b!7617089 res!3049307) b!7617088))

(assert (= (and b!7617088 res!3049305) b!7617080))

(assert (= (and b!7617080 (not res!3049304)) b!7617085))

(assert (= (and b!7617085 (not res!3049306)) b!7617082))

(assert (= (and start!733776 ((_ is ElementMatch!20285) r!14126)) b!7617087))

(assert (= (and start!733776 ((_ is Concat!29130) r!14126)) b!7617086))

(assert (= (and start!733776 ((_ is Star!20285) r!14126)) b!7617081))

(assert (= (and start!733776 ((_ is Union!20285) r!14126)) b!7617084))

(assert (= (and start!733776 ((_ is Cons!73014) s!9605)) b!7617083))

(declare-fun m!8150200 () Bool)

(assert (=> b!7617085 m!8150200))

(declare-fun m!8150202 () Bool)

(assert (=> b!7617085 m!8150202))

(declare-fun m!8150204 () Bool)

(assert (=> b!7617085 m!8150204))

(declare-fun m!8150206 () Bool)

(assert (=> b!7617085 m!8150206))

(declare-fun m!8150208 () Bool)

(assert (=> b!7617085 m!8150208))

(declare-fun m!8150210 () Bool)

(assert (=> b!7617085 m!8150210))

(declare-fun m!8150212 () Bool)

(assert (=> b!7617085 m!8150212))

(declare-fun m!8150214 () Bool)

(assert (=> b!7617085 m!8150214))

(declare-fun m!8150216 () Bool)

(assert (=> b!7617082 m!8150216))

(assert (=> b!7617082 m!8150216))

(declare-fun m!8150218 () Bool)

(assert (=> b!7617082 m!8150218))

(declare-fun m!8150220 () Bool)

(assert (=> b!7617082 m!8150220))

(declare-fun m!8150222 () Bool)

(assert (=> b!7617088 m!8150222))

(declare-fun m!8150224 () Bool)

(assert (=> start!733776 m!8150224))

(declare-fun m!8150226 () Bool)

(assert (=> b!7617080 m!8150226))

(declare-fun m!8150228 () Bool)

(assert (=> b!7617080 m!8150228))

(declare-fun m!8150230 () Bool)

(assert (=> b!7617080 m!8150230))

(declare-fun m!8150232 () Bool)

(assert (=> b!7617080 m!8150232))

(check-sat tp_is_empty!50925 (not b!7617084) (not b!7617088) (not b!7617081) (not start!733776) (not b!7617083) (not b!7617085) (not b!7617082) (not b!7617080) (not b!7617086))
(check-sat)
