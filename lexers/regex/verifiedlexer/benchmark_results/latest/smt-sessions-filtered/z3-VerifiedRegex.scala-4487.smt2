; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!238626 () Bool)

(assert start!238626)

(declare-fun b!2437966 () Bool)

(assert (=> b!2437966 true))

(assert (=> b!2437966 true))

(declare-fun lambda!92173 () Int)

(declare-fun lambda!92172 () Int)

(assert (=> b!2437966 (not (= lambda!92173 lambda!92172))))

(assert (=> b!2437966 true))

(assert (=> b!2437966 true))

(declare-fun b!2437964 () Bool)

(declare-fun e!1549311 () Bool)

(declare-fun e!1549306 () Bool)

(assert (=> b!2437964 (= e!1549311 (not e!1549306))))

(declare-fun res!1035007 () Bool)

(assert (=> b!2437964 (=> res!1035007 e!1549306)))

(declare-datatypes ((C!14492 0))(
  ( (C!14493 (val!8488 Int)) )
))
(declare-datatypes ((Regex!7167 0))(
  ( (ElementMatch!7167 (c!388987 C!14492)) (Concat!11803 (regOne!14846 Regex!7167) (regTwo!14846 Regex!7167)) (EmptyExpr!7167) (Star!7167 (reg!7496 Regex!7167)) (EmptyLang!7167) (Union!7167 (regOne!14847 Regex!7167) (regTwo!14847 Regex!7167)) )
))
(declare-fun r!13927 () Regex!7167)

(get-info :version)

(assert (=> b!2437964 (= res!1035007 (not ((_ is Concat!11803) r!13927)))))

(declare-fun lt!877828 () Bool)

(declare-fun lt!877825 () Bool)

(assert (=> b!2437964 (= lt!877828 lt!877825)))

(declare-datatypes ((List!28570 0))(
  ( (Nil!28472) (Cons!28472 (h!33873 C!14492) (t!208547 List!28570)) )
))
(declare-fun s!9460 () List!28570)

(declare-fun matchRSpec!1014 (Regex!7167 List!28570) Bool)

(assert (=> b!2437964 (= lt!877825 (matchRSpec!1014 r!13927 s!9460))))

(declare-fun matchR!3282 (Regex!7167 List!28570) Bool)

(assert (=> b!2437964 (= lt!877828 (matchR!3282 r!13927 s!9460))))

(declare-datatypes ((Unit!41717 0))(
  ( (Unit!41718) )
))
(declare-fun lt!877826 () Unit!41717)

(declare-fun mainMatchTheorem!1014 (Regex!7167 List!28570) Unit!41717)

(assert (=> b!2437964 (= lt!877826 (mainMatchTheorem!1014 r!13927 s!9460))))

(declare-fun b!2437965 () Bool)

(declare-fun e!1549312 () Bool)

(declare-fun e!1549310 () Bool)

(assert (=> b!2437965 (= e!1549312 e!1549310)))

(declare-fun res!1035013 () Bool)

(assert (=> b!2437965 (=> res!1035013 e!1549310)))

(declare-fun lt!877819 () Regex!7167)

(assert (=> b!2437965 (= res!1035013 (not (matchR!3282 lt!877819 s!9460)))))

(declare-datatypes ((List!28571 0))(
  ( (Nil!28473) (Cons!28473 (h!33874 Regex!7167) (t!208548 List!28571)) )
))
(declare-fun l!9164 () List!28571)

(declare-fun head!5529 (List!28571) Regex!7167)

(assert (=> b!2437965 (= lt!877819 (head!5529 l!9164))))

(declare-fun e!1549313 () Bool)

(assert (=> b!2437966 (= e!1549306 e!1549313)))

(declare-fun res!1035008 () Bool)

(assert (=> b!2437966 (=> res!1035008 e!1549313)))

(declare-fun lt!877822 () Bool)

(assert (=> b!2437966 (= res!1035008 (not (= lt!877825 lt!877822)))))

(declare-fun Exists!1203 (Int) Bool)

(assert (=> b!2437966 (= (Exists!1203 lambda!92172) (Exists!1203 lambda!92173))))

(declare-fun lt!877821 () Unit!41717)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!448 (Regex!7167 Regex!7167 List!28570) Unit!41717)

(assert (=> b!2437966 (= lt!877821 (lemmaExistCutMatchRandMatchRSpecEquivalent!448 (regOne!14846 r!13927) (regTwo!14846 r!13927) s!9460))))

(assert (=> b!2437966 (= lt!877822 (Exists!1203 lambda!92172))))

(declare-datatypes ((tuple2!28090 0))(
  ( (tuple2!28091 (_1!16586 List!28570) (_2!16586 List!28570)) )
))
(declare-datatypes ((Option!5656 0))(
  ( (None!5655) (Some!5655 (v!31063 tuple2!28090)) )
))
(declare-fun isDefined!4482 (Option!5656) Bool)

(declare-fun findConcatSeparation!764 (Regex!7167 Regex!7167 List!28570 List!28570 List!28570) Option!5656)

(assert (=> b!2437966 (= lt!877822 (isDefined!4482 (findConcatSeparation!764 (regOne!14846 r!13927) (regTwo!14846 r!13927) Nil!28472 s!9460 s!9460)))))

(declare-fun lt!877818 () Unit!41717)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!702 (Regex!7167 Regex!7167 List!28570) Unit!41717)

(assert (=> b!2437966 (= lt!877818 (lemmaFindConcatSeparationEquivalentToExists!702 (regOne!14846 r!13927) (regTwo!14846 r!13927) s!9460))))

(declare-fun b!2437967 () Bool)

(declare-fun e!1549309 () Bool)

(declare-fun tp_is_empty!11747 () Bool)

(declare-fun tp!774188 () Bool)

(assert (=> b!2437967 (= e!1549309 (and tp_is_empty!11747 tp!774188))))

(declare-fun b!2437968 () Bool)

(declare-fun e!1549307 () Bool)

(assert (=> b!2437968 (= e!1549307 e!1549312)))

(declare-fun res!1035011 () Bool)

(assert (=> b!2437968 (=> res!1035011 e!1549312)))

(declare-fun lt!877824 () Regex!7167)

(assert (=> b!2437968 (= res!1035011 (not (= lt!877824 EmptyExpr!7167)))))

(declare-fun lt!877817 () List!28571)

(declare-fun generalisedConcat!268 (List!28571) Regex!7167)

(assert (=> b!2437968 (= lt!877824 (generalisedConcat!268 lt!877817))))

(declare-fun b!2437969 () Bool)

(declare-fun e!1549305 () Bool)

(declare-fun tp!774195 () Bool)

(declare-fun tp!774192 () Bool)

(assert (=> b!2437969 (= e!1549305 (and tp!774195 tp!774192))))

(declare-fun b!2437970 () Bool)

(declare-fun res!1035009 () Bool)

(assert (=> b!2437970 (=> res!1035009 e!1549313)))

(declare-fun isEmpty!16513 (List!28571) Bool)

(assert (=> b!2437970 (= res!1035009 (isEmpty!16513 l!9164))))

(declare-fun res!1035010 () Bool)

(assert (=> start!238626 (=> (not res!1035010) (not e!1549311))))

(declare-fun lambda!92171 () Int)

(declare-fun forall!5801 (List!28571 Int) Bool)

(assert (=> start!238626 (= res!1035010 (forall!5801 l!9164 lambda!92171))))

(assert (=> start!238626 e!1549311))

(declare-fun e!1549314 () Bool)

(assert (=> start!238626 e!1549314))

(assert (=> start!238626 e!1549305))

(assert (=> start!238626 e!1549309))

(declare-fun b!2437971 () Bool)

(assert (=> b!2437971 (= e!1549313 e!1549307)))

(declare-fun res!1035012 () Bool)

(assert (=> b!2437971 (=> res!1035012 e!1549307)))

(assert (=> b!2437971 (= res!1035012 (not (isEmpty!16513 lt!877817)))))

(declare-fun tail!3802 (List!28571) List!28571)

(assert (=> b!2437971 (= lt!877817 (tail!3802 l!9164))))

(declare-fun b!2437972 () Bool)

(assert (=> b!2437972 (= e!1549305 tp_is_empty!11747)))

(declare-fun b!2437973 () Bool)

(declare-fun tp!774193 () Bool)

(declare-fun tp!774190 () Bool)

(assert (=> b!2437973 (= e!1549314 (and tp!774193 tp!774190))))

(declare-fun b!2437974 () Bool)

(declare-fun tp!774191 () Bool)

(declare-fun tp!774194 () Bool)

(assert (=> b!2437974 (= e!1549305 (and tp!774191 tp!774194))))

(declare-fun b!2437975 () Bool)

(declare-fun e!1549308 () Bool)

(declare-fun lt!877820 () Regex!7167)

(assert (=> b!2437975 (= e!1549308 (matchR!3282 lt!877820 s!9460))))

(declare-fun b!2437976 () Bool)

(declare-fun res!1035006 () Bool)

(assert (=> b!2437976 (=> (not res!1035006) (not e!1549311))))

(assert (=> b!2437976 (= res!1035006 (= r!13927 (generalisedConcat!268 l!9164)))))

(declare-fun b!2437977 () Bool)

(declare-fun tp!774189 () Bool)

(assert (=> b!2437977 (= e!1549305 tp!774189)))

(declare-fun b!2437978 () Bool)

(assert (=> b!2437978 (= e!1549310 (isDefined!4482 (findConcatSeparation!764 lt!877819 lt!877824 Nil!28472 s!9460 s!9460)))))

(assert (=> b!2437978 (isDefined!4482 (findConcatSeparation!764 lt!877819 EmptyExpr!7167 Nil!28472 s!9460 s!9460))))

(declare-fun lt!877827 () Unit!41717)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!82 (Regex!7167 Regex!7167 List!28570) Unit!41717)

(assert (=> b!2437978 (= lt!877827 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!82 lt!877819 EmptyExpr!7167 s!9460))))

(assert (=> b!2437978 e!1549308))

(declare-fun res!1035014 () Bool)

(assert (=> b!2437978 (=> (not res!1035014) (not e!1549308))))

(declare-fun ++!7072 (List!28570 List!28570) List!28570)

(assert (=> b!2437978 (= res!1035014 (matchR!3282 lt!877820 (++!7072 s!9460 Nil!28472)))))

(assert (=> b!2437978 (= lt!877820 (Concat!11803 lt!877819 EmptyExpr!7167))))

(declare-fun lt!877823 () Unit!41717)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!114 (Regex!7167 Regex!7167 List!28570 List!28570) Unit!41717)

(assert (=> b!2437978 (= lt!877823 (lemmaTwoRegexMatchThenConcatMatchesConcatString!114 lt!877819 EmptyExpr!7167 s!9460 Nil!28472))))

(assert (= (and start!238626 res!1035010) b!2437976))

(assert (= (and b!2437976 res!1035006) b!2437964))

(assert (= (and b!2437964 (not res!1035007)) b!2437966))

(assert (= (and b!2437966 (not res!1035008)) b!2437970))

(assert (= (and b!2437970 (not res!1035009)) b!2437971))

(assert (= (and b!2437971 (not res!1035012)) b!2437968))

(assert (= (and b!2437968 (not res!1035011)) b!2437965))

(assert (= (and b!2437965 (not res!1035013)) b!2437978))

(assert (= (and b!2437978 res!1035014) b!2437975))

(assert (= (and start!238626 ((_ is Cons!28473) l!9164)) b!2437973))

(assert (= (and start!238626 ((_ is ElementMatch!7167) r!13927)) b!2437972))

(assert (= (and start!238626 ((_ is Concat!11803) r!13927)) b!2437969))

(assert (= (and start!238626 ((_ is Star!7167) r!13927)) b!2437977))

(assert (= (and start!238626 ((_ is Union!7167) r!13927)) b!2437974))

(assert (= (and start!238626 ((_ is Cons!28472) s!9460)) b!2437967))

(declare-fun m!2817069 () Bool)

(assert (=> b!2437964 m!2817069))

(declare-fun m!2817071 () Bool)

(assert (=> b!2437964 m!2817071))

(declare-fun m!2817073 () Bool)

(assert (=> b!2437964 m!2817073))

(declare-fun m!2817075 () Bool)

(assert (=> b!2437968 m!2817075))

(declare-fun m!2817077 () Bool)

(assert (=> b!2437971 m!2817077))

(declare-fun m!2817079 () Bool)

(assert (=> b!2437971 m!2817079))

(declare-fun m!2817081 () Bool)

(assert (=> b!2437978 m!2817081))

(declare-fun m!2817083 () Bool)

(assert (=> b!2437978 m!2817083))

(declare-fun m!2817085 () Bool)

(assert (=> b!2437978 m!2817085))

(assert (=> b!2437978 m!2817083))

(declare-fun m!2817087 () Bool)

(assert (=> b!2437978 m!2817087))

(declare-fun m!2817089 () Bool)

(assert (=> b!2437978 m!2817089))

(declare-fun m!2817091 () Bool)

(assert (=> b!2437978 m!2817091))

(assert (=> b!2437978 m!2817089))

(declare-fun m!2817093 () Bool)

(assert (=> b!2437978 m!2817093))

(assert (=> b!2437978 m!2817091))

(declare-fun m!2817095 () Bool)

(assert (=> b!2437978 m!2817095))

(declare-fun m!2817097 () Bool)

(assert (=> b!2437975 m!2817097))

(declare-fun m!2817099 () Bool)

(assert (=> b!2437966 m!2817099))

(declare-fun m!2817101 () Bool)

(assert (=> b!2437966 m!2817101))

(declare-fun m!2817103 () Bool)

(assert (=> b!2437966 m!2817103))

(assert (=> b!2437966 m!2817099))

(declare-fun m!2817105 () Bool)

(assert (=> b!2437966 m!2817105))

(declare-fun m!2817107 () Bool)

(assert (=> b!2437966 m!2817107))

(declare-fun m!2817109 () Bool)

(assert (=> b!2437966 m!2817109))

(assert (=> b!2437966 m!2817109))

(declare-fun m!2817111 () Bool)

(assert (=> start!238626 m!2817111))

(declare-fun m!2817113 () Bool)

(assert (=> b!2437965 m!2817113))

(declare-fun m!2817115 () Bool)

(assert (=> b!2437965 m!2817115))

(declare-fun m!2817117 () Bool)

(assert (=> b!2437970 m!2817117))

(declare-fun m!2817119 () Bool)

(assert (=> b!2437976 m!2817119))

(check-sat (not b!2437977) (not b!2437965) (not b!2437969) (not b!2437976) (not b!2437968) (not b!2437971) (not b!2437975) (not b!2437973) (not b!2437978) tp_is_empty!11747 (not b!2437964) (not b!2437970) (not b!2437967) (not start!238626) (not b!2437966) (not b!2437974))
(check-sat)
