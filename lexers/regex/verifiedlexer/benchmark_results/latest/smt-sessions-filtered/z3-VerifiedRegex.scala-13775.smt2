; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734352 () Bool)

(assert start!734352)

(declare-fun b!7625190 () Bool)

(assert (=> b!7625190 true))

(assert (=> b!7625190 true))

(declare-fun b!7625181 () Bool)

(declare-fun res!3053332 () Bool)

(declare-fun e!4533664 () Bool)

(assert (=> b!7625181 (=> (not res!3053332) (not e!4533664))))

(declare-datatypes ((C!41016 0))(
  ( (C!41017 (val!30948 Int)) )
))
(declare-datatypes ((List!73198 0))(
  ( (Nil!73074) (Cons!73074 (h!79522 C!41016) (t!387933 List!73198)) )
))
(declare-fun s!9605 () List!73198)

(declare-fun isEmpty!41702 (List!73198) Bool)

(assert (=> b!7625181 (= res!3053332 (not (isEmpty!41702 s!9605)))))

(declare-fun b!7625182 () Bool)

(declare-fun e!4533663 () Bool)

(declare-fun tp!2226263 () Bool)

(declare-fun tp!2226264 () Bool)

(assert (=> b!7625182 (= e!4533663 (and tp!2226263 tp!2226264))))

(declare-fun b!7625183 () Bool)

(declare-fun tp_is_empty!51045 () Bool)

(assert (=> b!7625183 (= e!4533663 tp_is_empty!51045)))

(declare-fun b!7625184 () Bool)

(declare-datatypes ((Unit!167620 0))(
  ( (Unit!167621) )
))
(declare-fun e!4533665 () Unit!167620)

(declare-fun Unit!167622 () Unit!167620)

(assert (=> b!7625184 (= e!4533665 Unit!167622)))

(declare-fun lt!2657784 () Unit!167620)

(declare-datatypes ((Regex!20345 0))(
  ( (ElementMatch!20345 (c!1405066 C!41016)) (Concat!29190 (regOne!41202 Regex!20345) (regTwo!41202 Regex!20345)) (EmptyExpr!20345) (Star!20345 (reg!20674 Regex!20345)) (EmptyLang!20345) (Union!20345 (regOne!41203 Regex!20345) (regTwo!41203 Regex!20345)) )
))
(declare-fun r!14126 () Regex!20345)

(declare-fun lemmaStarAppConcat!26 (Regex!20345 List!73198) Unit!167620)

(assert (=> b!7625184 (= lt!2657784 (lemmaStarAppConcat!26 (reg!20674 r!14126) s!9605))))

(declare-fun matchR!9852 (Regex!20345 List!73198) Bool)

(assert (=> b!7625184 (matchR!9852 (Concat!29190 (reg!20674 r!14126) r!14126) s!9605)))

(declare-fun lt!2657787 () Unit!167620)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!258 (Regex!20345 Regex!20345 List!73198) Unit!167620)

(assert (=> b!7625184 (= lt!2657787 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!258 (reg!20674 r!14126) r!14126 s!9605))))

(assert (=> b!7625184 false))

(declare-fun b!7625185 () Bool)

(declare-fun e!4533666 () Bool)

(declare-fun tp!2226267 () Bool)

(assert (=> b!7625185 (= e!4533666 (and tp_is_empty!51045 tp!2226267))))

(declare-fun res!3053329 () Bool)

(assert (=> start!734352 (=> (not res!3053329) (not e!4533664))))

(declare-fun validRegex!10765 (Regex!20345) Bool)

(assert (=> start!734352 (= res!3053329 (validRegex!10765 r!14126))))

(assert (=> start!734352 e!4533664))

(assert (=> start!734352 e!4533663))

(assert (=> start!734352 e!4533666))

(declare-fun b!7625186 () Bool)

(declare-fun tp!2226265 () Bool)

(declare-fun tp!2226262 () Bool)

(assert (=> b!7625186 (= e!4533663 (and tp!2226265 tp!2226262))))

(declare-fun b!7625187 () Bool)

(declare-fun res!3053330 () Bool)

(assert (=> b!7625187 (=> (not res!3053330) (not e!4533664))))

(get-info :version)

(assert (=> b!7625187 (= res!3053330 (and (not ((_ is EmptyExpr!20345) r!14126)) (not ((_ is EmptyLang!20345) r!14126)) (not ((_ is ElementMatch!20345) r!14126)) (not ((_ is Union!20345) r!14126)) ((_ is Star!20345) r!14126)))))

(declare-fun b!7625188 () Bool)

(declare-fun tp!2226266 () Bool)

(assert (=> b!7625188 (= e!4533663 tp!2226266)))

(declare-fun b!7625189 () Bool)

(declare-fun Unit!167623 () Unit!167620)

(assert (=> b!7625189 (= e!4533665 Unit!167623)))

(declare-fun e!4533667 () Bool)

(assert (=> b!7625190 (= e!4533664 (not e!4533667))))

(declare-fun res!3053331 () Bool)

(assert (=> b!7625190 (=> res!3053331 e!4533667)))

(declare-fun lt!2657786 () Bool)

(assert (=> b!7625190 (= res!3053331 lt!2657786)))

(declare-fun lambda!468739 () Int)

(declare-fun Exists!4501 (Int) Bool)

(assert (=> b!7625190 (= lt!2657786 (Exists!4501 lambda!468739))))

(declare-datatypes ((tuple2!69252 0))(
  ( (tuple2!69253 (_1!37929 List!73198) (_2!37929 List!73198)) )
))
(declare-datatypes ((Option!17420 0))(
  ( (None!17419) (Some!17419 (v!54554 tuple2!69252)) )
))
(declare-fun isDefined!14036 (Option!17420) Bool)

(declare-fun findConcatSeparation!3450 (Regex!20345 Regex!20345 List!73198 List!73198 List!73198) Option!17420)

(assert (=> b!7625190 (= lt!2657786 (isDefined!14036 (findConcatSeparation!3450 (reg!20674 r!14126) r!14126 Nil!73074 s!9605 s!9605)))))

(declare-fun lt!2657788 () Unit!167620)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3208 (Regex!20345 Regex!20345 List!73198) Unit!167620)

(assert (=> b!7625190 (= lt!2657788 (lemmaFindConcatSeparationEquivalentToExists!3208 (reg!20674 r!14126) r!14126 s!9605))))

(declare-fun b!7625191 () Bool)

(assert (=> b!7625191 (= e!4533667 true)))

(declare-fun lt!2657785 () Unit!167620)

(assert (=> b!7625191 (= lt!2657785 e!4533665)))

(declare-fun c!1405065 () Bool)

(assert (=> b!7625191 (= c!1405065 (matchR!9852 r!14126 s!9605))))

(assert (= (and start!734352 res!3053329) b!7625187))

(assert (= (and b!7625187 res!3053330) b!7625181))

(assert (= (and b!7625181 res!3053332) b!7625190))

(assert (= (and b!7625190 (not res!3053331)) b!7625191))

(assert (= (and b!7625191 c!1405065) b!7625184))

(assert (= (and b!7625191 (not c!1405065)) b!7625189))

(assert (= (and start!734352 ((_ is ElementMatch!20345) r!14126)) b!7625183))

(assert (= (and start!734352 ((_ is Concat!29190) r!14126)) b!7625186))

(assert (= (and start!734352 ((_ is Star!20345) r!14126)) b!7625188))

(assert (= (and start!734352 ((_ is Union!20345) r!14126)) b!7625182))

(assert (= (and start!734352 ((_ is Cons!73074) s!9605)) b!7625185))

(declare-fun m!8155050 () Bool)

(assert (=> start!734352 m!8155050))

(declare-fun m!8155052 () Bool)

(assert (=> b!7625190 m!8155052))

(declare-fun m!8155054 () Bool)

(assert (=> b!7625190 m!8155054))

(assert (=> b!7625190 m!8155054))

(declare-fun m!8155056 () Bool)

(assert (=> b!7625190 m!8155056))

(declare-fun m!8155058 () Bool)

(assert (=> b!7625190 m!8155058))

(declare-fun m!8155060 () Bool)

(assert (=> b!7625181 m!8155060))

(declare-fun m!8155062 () Bool)

(assert (=> b!7625184 m!8155062))

(declare-fun m!8155064 () Bool)

(assert (=> b!7625184 m!8155064))

(declare-fun m!8155066 () Bool)

(assert (=> b!7625184 m!8155066))

(declare-fun m!8155068 () Bool)

(assert (=> b!7625191 m!8155068))

(check-sat (not b!7625185) (not b!7625182) (not b!7625186) (not b!7625181) (not b!7625190) (not b!7625191) (not start!734352) (not b!7625184) tp_is_empty!51045 (not b!7625188))
(check-sat)
