; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664330 () Bool)

(assert start!664330)

(declare-fun b!6892172 () Bool)

(assert (=> b!6892172 true))

(assert (=> b!6892172 true))

(assert (=> b!6892172 true))

(declare-fun b!6892156 () Bool)

(declare-fun res!2809955 () Bool)

(declare-fun e!4151860 () Bool)

(assert (=> b!6892156 (=> (not res!2809955) (not e!4151860))))

(declare-datatypes ((C!33900 0))(
  ( (C!33901 (val!26652 Int)) )
))
(declare-datatypes ((Regex!16815 0))(
  ( (ElementMatch!16815 (c!1281349 C!33900)) (Concat!25660 (regOne!34142 Regex!16815) (regTwo!34142 Regex!16815)) (EmptyExpr!16815) (Star!16815 (reg!17144 Regex!16815)) (EmptyLang!16815) (Union!16815 (regOne!34143 Regex!16815) (regTwo!34143 Regex!16815)) )
))
(declare-fun r3!135 () Regex!16815)

(declare-fun validRegex!8523 (Regex!16815) Bool)

(assert (=> b!6892156 (= res!2809955 (validRegex!8523 r3!135))))

(declare-fun b!6892157 () Bool)

(declare-fun e!4151863 () Bool)

(declare-fun tp!1896576 () Bool)

(assert (=> b!6892157 (= e!4151863 tp!1896576)))

(declare-fun b!6892158 () Bool)

(declare-fun res!2809956 () Bool)

(assert (=> b!6892158 (=> (not res!2809956) (not e!4151860))))

(declare-fun r2!6280 () Regex!16815)

(assert (=> b!6892158 (= res!2809956 (validRegex!8523 r2!6280))))

(declare-fun b!6892159 () Bool)

(declare-fun tp!1896569 () Bool)

(declare-fun tp!1896579 () Bool)

(assert (=> b!6892159 (= e!4151863 (and tp!1896569 tp!1896579))))

(declare-fun b!6892160 () Bool)

(declare-fun res!2809957 () Bool)

(declare-fun e!4151861 () Bool)

(assert (=> b!6892160 (=> res!2809957 e!4151861)))

(declare-fun r1!6342 () Regex!16815)

(declare-fun lt!2463048 () Regex!16815)

(declare-datatypes ((List!66572 0))(
  ( (Nil!66448) (Cons!66448 (h!72896 C!33900) (t!380315 List!66572)) )
))
(declare-fun s!14361 () List!66572)

(declare-datatypes ((tuple2!67364 0))(
  ( (tuple2!67365 (_1!36985 List!66572) (_2!36985 List!66572)) )
))
(declare-datatypes ((Option!16594 0))(
  ( (None!16593) (Some!16593 (v!52865 tuple2!67364)) )
))
(declare-fun isDefined!13297 (Option!16594) Bool)

(declare-fun findConcatSeparation!3008 (Regex!16815 Regex!16815 List!66572 List!66572 List!66572) Option!16594)

(assert (=> b!6892160 (= res!2809957 (not (isDefined!13297 (findConcatSeparation!3008 r1!6342 lt!2463048 Nil!66448 s!14361 s!14361))))))

(declare-fun b!6892161 () Bool)

(declare-fun e!4151859 () Bool)

(declare-fun tp!1896577 () Bool)

(assert (=> b!6892161 (= e!4151859 tp!1896577)))

(declare-fun b!6892162 () Bool)

(declare-fun e!4151864 () Bool)

(declare-fun tp_is_empty!42855 () Bool)

(assert (=> b!6892162 (= e!4151864 tp_is_empty!42855)))

(declare-fun b!6892163 () Bool)

(assert (=> b!6892163 (= e!4151860 (not e!4151861))))

(declare-fun res!2809958 () Bool)

(assert (=> b!6892163 (=> res!2809958 e!4151861)))

(declare-fun lt!2463051 () Bool)

(assert (=> b!6892163 (= res!2809958 lt!2463051)))

(declare-fun lt!2463050 () Regex!16815)

(declare-fun matchR!8960 (Regex!16815 List!66572) Bool)

(declare-fun matchRSpec!3878 (Regex!16815 List!66572) Bool)

(assert (=> b!6892163 (= (matchR!8960 lt!2463050 s!14361) (matchRSpec!3878 lt!2463050 s!14361))))

(declare-datatypes ((Unit!160350 0))(
  ( (Unit!160351) )
))
(declare-fun lt!2463045 () Unit!160350)

(declare-fun mainMatchTheorem!3878 (Regex!16815 List!66572) Unit!160350)

(assert (=> b!6892163 (= lt!2463045 (mainMatchTheorem!3878 lt!2463050 s!14361))))

(declare-fun lt!2463049 () Regex!16815)

(assert (=> b!6892163 (= lt!2463051 (matchRSpec!3878 lt!2463049 s!14361))))

(assert (=> b!6892163 (= lt!2463051 (matchR!8960 lt!2463049 s!14361))))

(declare-fun lt!2463047 () Unit!160350)

(assert (=> b!6892163 (= lt!2463047 (mainMatchTheorem!3878 lt!2463049 s!14361))))

(assert (=> b!6892163 (= lt!2463050 (Concat!25660 r1!6342 lt!2463048))))

(assert (=> b!6892163 (= lt!2463048 (Concat!25660 r2!6280 r3!135))))

(assert (=> b!6892163 (= lt!2463049 (Concat!25660 (Concat!25660 r1!6342 r2!6280) r3!135))))

(declare-fun b!6892164 () Bool)

(declare-fun tp!1896580 () Bool)

(declare-fun tp!1896578 () Bool)

(assert (=> b!6892164 (= e!4151859 (and tp!1896580 tp!1896578))))

(declare-fun b!6892165 () Bool)

(declare-fun tp!1896574 () Bool)

(declare-fun tp!1896581 () Bool)

(assert (=> b!6892165 (= e!4151864 (and tp!1896574 tp!1896581))))

(declare-fun b!6892166 () Bool)

(declare-fun e!4151862 () Bool)

(declare-fun tp!1896571 () Bool)

(assert (=> b!6892166 (= e!4151862 (and tp_is_empty!42855 tp!1896571))))

(declare-fun b!6892167 () Bool)

(assert (=> b!6892167 (= e!4151863 tp_is_empty!42855)))

(declare-fun b!6892168 () Bool)

(declare-fun tp!1896568 () Bool)

(declare-fun tp!1896570 () Bool)

(assert (=> b!6892168 (= e!4151863 (and tp!1896568 tp!1896570))))

(declare-fun b!6892169 () Bool)

(declare-fun tp!1896583 () Bool)

(declare-fun tp!1896582 () Bool)

(assert (=> b!6892169 (= e!4151859 (and tp!1896583 tp!1896582))))

(declare-fun res!2809954 () Bool)

(assert (=> start!664330 (=> (not res!2809954) (not e!4151860))))

(assert (=> start!664330 (= res!2809954 (validRegex!8523 r1!6342))))

(assert (=> start!664330 e!4151860))

(assert (=> start!664330 e!4151863))

(assert (=> start!664330 e!4151864))

(assert (=> start!664330 e!4151859))

(assert (=> start!664330 e!4151862))

(declare-fun b!6892170 () Bool)

(assert (=> b!6892170 (= e!4151859 tp_is_empty!42855)))

(declare-fun b!6892171 () Bool)

(declare-fun tp!1896575 () Bool)

(assert (=> b!6892171 (= e!4151864 tp!1896575)))

(assert (=> b!6892172 (= e!4151861 true)))

(declare-fun lambda!390658 () Int)

(declare-fun Exists!3823 (Int) Bool)

(assert (=> b!6892172 (Exists!3823 lambda!390658)))

(declare-fun lt!2463046 () Unit!160350)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2770 (Regex!16815 Regex!16815 List!66572) Unit!160350)

(assert (=> b!6892172 (= lt!2463046 (lemmaFindConcatSeparationEquivalentToExists!2770 r1!6342 lt!2463048 s!14361))))

(declare-fun b!6892173 () Bool)

(declare-fun tp!1896573 () Bool)

(declare-fun tp!1896572 () Bool)

(assert (=> b!6892173 (= e!4151864 (and tp!1896573 tp!1896572))))

(assert (= (and start!664330 res!2809954) b!6892158))

(assert (= (and b!6892158 res!2809956) b!6892156))

(assert (= (and b!6892156 res!2809955) b!6892163))

(assert (= (and b!6892163 (not res!2809958)) b!6892160))

(assert (= (and b!6892160 (not res!2809957)) b!6892172))

(get-info :version)

(assert (= (and start!664330 ((_ is ElementMatch!16815) r1!6342)) b!6892167))

(assert (= (and start!664330 ((_ is Concat!25660) r1!6342)) b!6892159))

(assert (= (and start!664330 ((_ is Star!16815) r1!6342)) b!6892157))

(assert (= (and start!664330 ((_ is Union!16815) r1!6342)) b!6892168))

(assert (= (and start!664330 ((_ is ElementMatch!16815) r2!6280)) b!6892162))

(assert (= (and start!664330 ((_ is Concat!25660) r2!6280)) b!6892173))

(assert (= (and start!664330 ((_ is Star!16815) r2!6280)) b!6892171))

(assert (= (and start!664330 ((_ is Union!16815) r2!6280)) b!6892165))

(assert (= (and start!664330 ((_ is ElementMatch!16815) r3!135)) b!6892170))

(assert (= (and start!664330 ((_ is Concat!25660) r3!135)) b!6892164))

(assert (= (and start!664330 ((_ is Star!16815) r3!135)) b!6892161))

(assert (= (and start!664330 ((_ is Union!16815) r3!135)) b!6892169))

(assert (= (and start!664330 ((_ is Cons!66448) s!14361)) b!6892166))

(declare-fun m!7613322 () Bool)

(assert (=> start!664330 m!7613322))

(declare-fun m!7613324 () Bool)

(assert (=> b!6892158 m!7613324))

(declare-fun m!7613326 () Bool)

(assert (=> b!6892156 m!7613326))

(declare-fun m!7613328 () Bool)

(assert (=> b!6892160 m!7613328))

(assert (=> b!6892160 m!7613328))

(declare-fun m!7613330 () Bool)

(assert (=> b!6892160 m!7613330))

(declare-fun m!7613332 () Bool)

(assert (=> b!6892172 m!7613332))

(declare-fun m!7613334 () Bool)

(assert (=> b!6892172 m!7613334))

(declare-fun m!7613336 () Bool)

(assert (=> b!6892163 m!7613336))

(declare-fun m!7613338 () Bool)

(assert (=> b!6892163 m!7613338))

(declare-fun m!7613340 () Bool)

(assert (=> b!6892163 m!7613340))

(declare-fun m!7613342 () Bool)

(assert (=> b!6892163 m!7613342))

(declare-fun m!7613344 () Bool)

(assert (=> b!6892163 m!7613344))

(declare-fun m!7613346 () Bool)

(assert (=> b!6892163 m!7613346))

(check-sat (not b!6892157) (not b!6892161) (not b!6892173) (not b!6892165) (not b!6892172) (not b!6892156) (not b!6892159) (not b!6892163) (not b!6892160) (not b!6892169) tp_is_empty!42855 (not b!6892164) (not start!664330) (not b!6892166) (not b!6892158) (not b!6892168) (not b!6892171))
(check-sat)
