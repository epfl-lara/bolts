; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80786 () Bool)

(assert start!80786)

(declare-fun b!897112 () Bool)

(assert (=> b!897112 true))

(assert (=> b!897112 true))

(assert (=> b!897112 true))

(declare-fun lambda!27860 () Int)

(declare-fun lambda!27859 () Int)

(assert (=> b!897112 (not (= lambda!27860 lambda!27859))))

(assert (=> b!897112 true))

(assert (=> b!897112 true))

(assert (=> b!897112 true))

(declare-fun b!897106 () Bool)

(declare-fun e!587085 () Bool)

(declare-fun tp_is_empty!4333 () Bool)

(declare-fun tp!281859 () Bool)

(assert (=> b!897106 (= e!587085 (and tp_is_empty!4333 tp!281859))))

(declare-fun b!897107 () Bool)

(declare-fun e!587082 () Bool)

(declare-fun e!587084 () Bool)

(assert (=> b!897107 (= e!587082 (not e!587084))))

(declare-fun res!407820 () Bool)

(assert (=> b!897107 (=> res!407820 e!587084)))

(declare-fun lt!333576 () Bool)

(declare-datatypes ((C!5260 0))(
  ( (C!5261 (val!2878 Int)) )
))
(declare-datatypes ((Regex!2345 0))(
  ( (ElementMatch!2345 (c!145254 C!5260)) (Concat!4178 (regOne!5202 Regex!2345) (regTwo!5202 Regex!2345)) (EmptyExpr!2345) (Star!2345 (reg!2674 Regex!2345)) (EmptyLang!2345) (Union!2345 (regOne!5203 Regex!2345) (regTwo!5203 Regex!2345)) )
))
(declare-fun r!15766 () Regex!2345)

(get-info :version)

(assert (=> b!897107 (= res!407820 (or (not lt!333576) (and ((_ is Concat!4178) r!15766) ((_ is EmptyExpr!2345) (regOne!5202 r!15766))) (and ((_ is Concat!4178) r!15766) ((_ is EmptyExpr!2345) (regTwo!5202 r!15766))) ((_ is Concat!4178) r!15766) ((_ is Union!2345) r!15766) (not ((_ is Star!2345) r!15766))))))

(declare-datatypes ((List!9575 0))(
  ( (Nil!9559) (Cons!9559 (h!14960 C!5260) (t!100621 List!9575)) )
))
(declare-fun s!10566 () List!9575)

(declare-fun matchRSpec!146 (Regex!2345 List!9575) Bool)

(assert (=> b!897107 (= lt!333576 (matchRSpec!146 r!15766 s!10566))))

(declare-fun matchR!883 (Regex!2345 List!9575) Bool)

(assert (=> b!897107 (= lt!333576 (matchR!883 r!15766 s!10566))))

(declare-datatypes ((Unit!14269 0))(
  ( (Unit!14270) )
))
(declare-fun lt!333577 () Unit!14269)

(declare-fun mainMatchTheorem!146 (Regex!2345 List!9575) Unit!14269)

(assert (=> b!897107 (= lt!333577 (mainMatchTheorem!146 r!15766 s!10566))))

(declare-fun b!897108 () Bool)

(declare-fun e!587081 () Bool)

(declare-fun tp!281863 () Bool)

(declare-fun tp!281862 () Bool)

(assert (=> b!897108 (= e!587081 (and tp!281863 tp!281862))))

(declare-fun b!897109 () Bool)

(declare-fun tp!281861 () Bool)

(assert (=> b!897109 (= e!587081 tp!281861)))

(declare-fun b!897110 () Bool)

(declare-fun tp!281864 () Bool)

(declare-fun tp!281860 () Bool)

(assert (=> b!897110 (= e!587081 (and tp!281864 tp!281860))))

(declare-fun b!897111 () Bool)

(declare-fun res!407821 () Bool)

(declare-fun e!587083 () Bool)

(assert (=> b!897111 (=> res!407821 e!587083)))

(declare-fun validRegex!814 (Regex!2345) Bool)

(assert (=> b!897111 (= res!407821 (not (validRegex!814 (reg!2674 r!15766))))))

(assert (=> b!897112 (= e!587084 e!587083)))

(declare-fun res!407818 () Bool)

(assert (=> b!897112 (=> res!407818 e!587083)))

(declare-fun isEmpty!5752 (List!9575) Bool)

(assert (=> b!897112 (= res!407818 (isEmpty!5752 s!10566))))

(declare-fun Exists!122 (Int) Bool)

(assert (=> b!897112 (= (Exists!122 lambda!27859) (Exists!122 lambda!27860))))

(declare-fun lt!333579 () Unit!14269)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!14 (Regex!2345 List!9575) Unit!14269)

(assert (=> b!897112 (= lt!333579 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!14 (reg!2674 r!15766) s!10566))))

(declare-fun lt!333574 () Bool)

(assert (=> b!897112 (= lt!333574 (Exists!122 lambda!27859))))

(declare-fun lt!333575 () Regex!2345)

(declare-datatypes ((tuple2!10692 0))(
  ( (tuple2!10693 (_1!6172 List!9575) (_2!6172 List!9575)) )
))
(declare-datatypes ((Option!1988 0))(
  ( (None!1987) (Some!1987 (v!19404 tuple2!10692)) )
))
(declare-fun isDefined!1630 (Option!1988) Bool)

(declare-fun findConcatSeparation!94 (Regex!2345 Regex!2345 List!9575 List!9575 List!9575) Option!1988)

(assert (=> b!897112 (= lt!333574 (isDefined!1630 (findConcatSeparation!94 (reg!2674 r!15766) lt!333575 Nil!9559 s!10566 s!10566)))))

(declare-fun lt!333578 () Unit!14269)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!94 (Regex!2345 Regex!2345 List!9575) Unit!14269)

(assert (=> b!897112 (= lt!333578 (lemmaFindConcatSeparationEquivalentToExists!94 (reg!2674 r!15766) lt!333575 s!10566))))

(assert (=> b!897112 (= lt!333575 (Star!2345 (reg!2674 r!15766)))))

(declare-fun b!897113 () Bool)

(declare-fun res!407819 () Bool)

(assert (=> b!897113 (=> res!407819 e!587083)))

(assert (=> b!897113 (= res!407819 (not lt!333574))))

(declare-fun res!407822 () Bool)

(assert (=> start!80786 (=> (not res!407822) (not e!587082))))

(assert (=> start!80786 (= res!407822 (validRegex!814 r!15766))))

(assert (=> start!80786 e!587082))

(assert (=> start!80786 e!587081))

(assert (=> start!80786 e!587085))

(declare-fun b!897114 () Bool)

(assert (=> b!897114 (= e!587083 (validRegex!814 lt!333575))))

(declare-fun b!897115 () Bool)

(assert (=> b!897115 (= e!587081 tp_is_empty!4333)))

(assert (= (and start!80786 res!407822) b!897107))

(assert (= (and b!897107 (not res!407820)) b!897112))

(assert (= (and b!897112 (not res!407818)) b!897113))

(assert (= (and b!897113 (not res!407819)) b!897111))

(assert (= (and b!897111 (not res!407821)) b!897114))

(assert (= (and start!80786 ((_ is ElementMatch!2345) r!15766)) b!897115))

(assert (= (and start!80786 ((_ is Concat!4178) r!15766)) b!897110))

(assert (= (and start!80786 ((_ is Star!2345) r!15766)) b!897109))

(assert (= (and start!80786 ((_ is Union!2345) r!15766)) b!897108))

(assert (= (and start!80786 ((_ is Cons!9559) s!10566)) b!897106))

(declare-fun m!1136479 () Bool)

(assert (=> start!80786 m!1136479))

(declare-fun m!1136481 () Bool)

(assert (=> b!897107 m!1136481))

(declare-fun m!1136483 () Bool)

(assert (=> b!897107 m!1136483))

(declare-fun m!1136485 () Bool)

(assert (=> b!897107 m!1136485))

(declare-fun m!1136487 () Bool)

(assert (=> b!897111 m!1136487))

(declare-fun m!1136489 () Bool)

(assert (=> b!897112 m!1136489))

(declare-fun m!1136491 () Bool)

(assert (=> b!897112 m!1136491))

(declare-fun m!1136493 () Bool)

(assert (=> b!897112 m!1136493))

(declare-fun m!1136495 () Bool)

(assert (=> b!897112 m!1136495))

(declare-fun m!1136497 () Bool)

(assert (=> b!897112 m!1136497))

(assert (=> b!897112 m!1136495))

(assert (=> b!897112 m!1136491))

(declare-fun m!1136499 () Bool)

(assert (=> b!897112 m!1136499))

(declare-fun m!1136501 () Bool)

(assert (=> b!897112 m!1136501))

(declare-fun m!1136503 () Bool)

(assert (=> b!897114 m!1136503))

(check-sat (not start!80786) (not b!897108) (not b!897112) (not b!897111) (not b!897107) (not b!897109) (not b!897114) tp_is_empty!4333 (not b!897110) (not b!897106))
(check-sat)
