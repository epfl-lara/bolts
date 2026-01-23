; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239734 () Bool)

(assert start!239734)

(declare-fun b!2459199 () Bool)

(declare-fun res!1042139 () Bool)

(declare-fun e!1559762 () Bool)

(assert (=> b!2459199 (=> (not res!1042139) (not e!1559762))))

(declare-datatypes ((C!14612 0))(
  ( (C!14613 (val!8548 Int)) )
))
(declare-datatypes ((Regex!7227 0))(
  ( (ElementMatch!7227 (c!392491 C!14612)) (Concat!11863 (regOne!14966 Regex!7227) (regTwo!14966 Regex!7227)) (EmptyExpr!7227) (Star!7227 (reg!7556 Regex!7227)) (EmptyLang!7227) (Union!7227 (regOne!14967 Regex!7227) (regTwo!14967 Regex!7227)) )
))
(declare-fun r!13927 () Regex!7227)

(declare-datatypes ((List!28690 0))(
  ( (Nil!28592) (Cons!28592 (h!33993 Regex!7227) (t!208667 List!28690)) )
))
(declare-fun l!9164 () List!28690)

(declare-fun generalisedConcat!328 (List!28690) Regex!7227)

(assert (=> b!2459199 (= res!1042139 (= r!13927 (generalisedConcat!328 l!9164)))))

(declare-fun b!2459200 () Bool)

(declare-fun e!1559765 () Bool)

(declare-fun tp!782965 () Bool)

(declare-fun tp!782968 () Bool)

(assert (=> b!2459200 (= e!1559765 (and tp!782965 tp!782968))))

(declare-fun b!2459202 () Bool)

(declare-fun e!1559760 () Bool)

(declare-fun tp!782969 () Bool)

(declare-fun tp!782963 () Bool)

(assert (=> b!2459202 (= e!1559760 (and tp!782969 tp!782963))))

(declare-fun b!2459203 () Bool)

(declare-datatypes ((Unit!41911 0))(
  ( (Unit!41912) )
))
(declare-fun e!1559766 () Unit!41911)

(declare-fun Unit!41913 () Unit!41911)

(assert (=> b!2459203 (= e!1559766 Unit!41913)))

(declare-datatypes ((List!28691 0))(
  ( (Nil!28593) (Cons!28593 (h!33994 C!14612) (t!208668 List!28691)) )
))
(declare-datatypes ((tuple2!28182 0))(
  ( (tuple2!28183 (_1!16632 List!28691) (_2!16632 List!28691)) )
))
(declare-fun lt!880502 () tuple2!28182)

(declare-datatypes ((Option!5702 0))(
  ( (None!5701) (Some!5701 (v!31109 tuple2!28182)) )
))
(declare-fun lt!880499 () Option!5702)

(declare-fun get!8847 (Option!5702) tuple2!28182)

(assert (=> b!2459203 (= lt!880502 (get!8847 lt!880499))))

(declare-fun s!9460 () List!28691)

(declare-fun lt!880497 () Unit!41911)

(declare-fun lt!880501 () Regex!7227)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!100 (Regex!7227 Regex!7227 List!28691 List!28691 List!28691) Unit!41911)

(assert (=> b!2459203 (= lt!880497 (lemmaFindSeparationIsDefinedThenConcatMatches!100 lt!880501 EmptyExpr!7227 (_1!16632 lt!880502) (_2!16632 lt!880502) s!9460))))

(declare-fun res!1042136 () Bool)

(declare-fun matchR!3342 (Regex!7227 List!28691) Bool)

(declare-fun ++!7115 (List!28691 List!28691) List!28691)

(assert (=> b!2459203 (= res!1042136 (matchR!3342 (Concat!11863 lt!880501 EmptyExpr!7227) (++!7115 (_1!16632 lt!880502) (_2!16632 lt!880502))))))

(declare-fun e!1559758 () Bool)

(assert (=> b!2459203 (=> (not res!1042136) (not e!1559758))))

(assert (=> b!2459203 e!1559758))

(declare-fun b!2459204 () Bool)

(declare-fun res!1042138 () Bool)

(declare-fun e!1559763 () Bool)

(assert (=> b!2459204 (=> res!1042138 e!1559763)))

(declare-fun lt!880503 () List!28690)

(assert (=> b!2459204 (= res!1042138 (not (= (generalisedConcat!328 lt!880503) EmptyExpr!7227)))))

(declare-fun b!2459205 () Bool)

(declare-fun Unit!41914 () Unit!41911)

(assert (=> b!2459205 (= e!1559766 Unit!41914)))

(declare-fun b!2459206 () Bool)

(declare-fun tp!782966 () Bool)

(declare-fun tp!782967 () Bool)

(assert (=> b!2459206 (= e!1559760 (and tp!782966 tp!782967))))

(declare-fun b!2459201 () Bool)

(declare-fun e!1559761 () Bool)

(declare-fun tp_is_empty!11867 () Bool)

(declare-fun tp!782962 () Bool)

(assert (=> b!2459201 (= e!1559761 (and tp_is_empty!11867 tp!782962))))

(declare-fun res!1042135 () Bool)

(assert (=> start!239734 (=> (not res!1042135) (not e!1559762))))

(declare-fun lambda!93073 () Int)

(declare-fun forall!5861 (List!28690 Int) Bool)

(assert (=> start!239734 (= res!1042135 (forall!5861 l!9164 lambda!93073))))

(assert (=> start!239734 e!1559762))

(assert (=> start!239734 e!1559765))

(assert (=> start!239734 e!1559760))

(assert (=> start!239734 e!1559761))

(declare-fun b!2459207 () Bool)

(declare-fun e!1559759 () Bool)

(assert (=> b!2459207 (= e!1559759 e!1559763)))

(declare-fun res!1042137 () Bool)

(assert (=> b!2459207 (=> res!1042137 e!1559763)))

(declare-fun isEmpty!16621 (List!28690) Bool)

(assert (=> b!2459207 (= res!1042137 (not (isEmpty!16621 lt!880503)))))

(declare-fun tail!3882 (List!28690) List!28690)

(assert (=> b!2459207 (= lt!880503 (tail!3882 l!9164))))

(declare-fun b!2459208 () Bool)

(declare-fun tp!782964 () Bool)

(assert (=> b!2459208 (= e!1559760 tp!782964)))

(declare-fun b!2459209 () Bool)

(declare-fun e!1559764 () Bool)

(declare-fun lt!880504 () Bool)

(assert (=> b!2459209 (= e!1559764 (not lt!880504))))

(declare-fun lt!880500 () Unit!41911)

(assert (=> b!2459209 (= lt!880500 e!1559766)))

(declare-fun c!392490 () Bool)

(assert (=> b!2459209 (= c!392490 lt!880504)))

(declare-fun isDefined!4528 (Option!5702) Bool)

(assert (=> b!2459209 (= lt!880504 (isDefined!4528 lt!880499))))

(declare-fun findConcatSeparation!810 (Regex!7227 Regex!7227 List!28691 List!28691 List!28691) Option!5702)

(assert (=> b!2459209 (= lt!880499 (findConcatSeparation!810 lt!880501 EmptyExpr!7227 Nil!28593 s!9460 s!9460))))

(declare-fun b!2459210 () Bool)

(assert (=> b!2459210 (= e!1559762 (not e!1559759))))

(declare-fun res!1042140 () Bool)

(assert (=> b!2459210 (=> res!1042140 e!1559759)))

(get-info :version)

(assert (=> b!2459210 (= res!1042140 (or ((_ is Concat!11863) r!13927) ((_ is EmptyExpr!7227) r!13927)))))

(declare-fun matchRSpec!1074 (Regex!7227 List!28691) Bool)

(assert (=> b!2459210 (= (matchR!3342 r!13927 s!9460) (matchRSpec!1074 r!13927 s!9460))))

(declare-fun lt!880498 () Unit!41911)

(declare-fun mainMatchTheorem!1074 (Regex!7227 List!28691) Unit!41911)

(assert (=> b!2459210 (= lt!880498 (mainMatchTheorem!1074 r!13927 s!9460))))

(declare-fun b!2459211 () Bool)

(declare-fun res!1042141 () Bool)

(assert (=> b!2459211 (=> res!1042141 e!1559759)))

(assert (=> b!2459211 (= res!1042141 (isEmpty!16621 l!9164))))

(declare-fun b!2459212 () Bool)

(assert (=> b!2459212 (= e!1559760 tp_is_empty!11867)))

(declare-fun b!2459213 () Bool)

(assert (=> b!2459213 (= e!1559758 false)))

(declare-fun b!2459214 () Bool)

(assert (=> b!2459214 (= e!1559763 e!1559764)))

(declare-fun res!1042142 () Bool)

(assert (=> b!2459214 (=> res!1042142 e!1559764)))

(assert (=> b!2459214 (= res!1042142 (matchR!3342 lt!880501 s!9460))))

(declare-fun head!5609 (List!28690) Regex!7227)

(assert (=> b!2459214 (= lt!880501 (head!5609 l!9164))))

(assert (= (and start!239734 res!1042135) b!2459199))

(assert (= (and b!2459199 res!1042139) b!2459210))

(assert (= (and b!2459210 (not res!1042140)) b!2459211))

(assert (= (and b!2459211 (not res!1042141)) b!2459207))

(assert (= (and b!2459207 (not res!1042137)) b!2459204))

(assert (= (and b!2459204 (not res!1042138)) b!2459214))

(assert (= (and b!2459214 (not res!1042142)) b!2459209))

(assert (= (and b!2459209 c!392490) b!2459203))

(assert (= (and b!2459209 (not c!392490)) b!2459205))

(assert (= (and b!2459203 res!1042136) b!2459213))

(assert (= (and start!239734 ((_ is Cons!28592) l!9164)) b!2459200))

(assert (= (and start!239734 ((_ is ElementMatch!7227) r!13927)) b!2459212))

(assert (= (and start!239734 ((_ is Concat!11863) r!13927)) b!2459202))

(assert (= (and start!239734 ((_ is Star!7227) r!13927)) b!2459208))

(assert (= (and start!239734 ((_ is Union!7227) r!13927)) b!2459206))

(assert (= (and start!239734 ((_ is Cons!28593) s!9460)) b!2459201))

(declare-fun m!2828945 () Bool)

(assert (=> b!2459211 m!2828945))

(declare-fun m!2828947 () Bool)

(assert (=> b!2459199 m!2828947))

(declare-fun m!2828949 () Bool)

(assert (=> b!2459210 m!2828949))

(declare-fun m!2828951 () Bool)

(assert (=> b!2459210 m!2828951))

(declare-fun m!2828953 () Bool)

(assert (=> b!2459210 m!2828953))

(declare-fun m!2828955 () Bool)

(assert (=> b!2459204 m!2828955))

(declare-fun m!2828957 () Bool)

(assert (=> b!2459203 m!2828957))

(declare-fun m!2828959 () Bool)

(assert (=> b!2459203 m!2828959))

(declare-fun m!2828961 () Bool)

(assert (=> b!2459203 m!2828961))

(assert (=> b!2459203 m!2828961))

(declare-fun m!2828963 () Bool)

(assert (=> b!2459203 m!2828963))

(declare-fun m!2828965 () Bool)

(assert (=> b!2459207 m!2828965))

(declare-fun m!2828967 () Bool)

(assert (=> b!2459207 m!2828967))

(declare-fun m!2828969 () Bool)

(assert (=> start!239734 m!2828969))

(declare-fun m!2828971 () Bool)

(assert (=> b!2459209 m!2828971))

(declare-fun m!2828973 () Bool)

(assert (=> b!2459209 m!2828973))

(declare-fun m!2828975 () Bool)

(assert (=> b!2459214 m!2828975))

(declare-fun m!2828977 () Bool)

(assert (=> b!2459214 m!2828977))

(check-sat (not b!2459201) (not b!2459208) (not b!2459209) (not b!2459204) (not b!2459210) (not b!2459200) (not b!2459202) (not start!239734) tp_is_empty!11867 (not b!2459203) (not b!2459214) (not b!2459206) (not b!2459199) (not b!2459211) (not b!2459207))
(check-sat)
