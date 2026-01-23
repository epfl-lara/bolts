; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83590 () Bool)

(assert start!83590)

(declare-fun b!935117 () Bool)

(assert (=> b!935117 true))

(assert (=> b!935117 true))

(assert (=> b!935117 true))

(declare-fun lambda!31008 () Int)

(declare-fun lambda!31007 () Int)

(assert (=> b!935117 (not (= lambda!31008 lambda!31007))))

(assert (=> b!935117 true))

(assert (=> b!935117 true))

(assert (=> b!935117 true))

(declare-fun b!935116 () Bool)

(declare-fun e!607337 () Bool)

(declare-fun tp!290088 () Bool)

(assert (=> b!935116 (= e!607337 tp!290088)))

(declare-fun e!607338 () Bool)

(declare-fun e!607339 () Bool)

(assert (=> b!935117 (= e!607338 e!607339)))

(declare-fun res!424614 () Bool)

(assert (=> b!935117 (=> res!424614 e!607339)))

(declare-datatypes ((C!5684 0))(
  ( (C!5685 (val!3090 Int)) )
))
(declare-datatypes ((Regex!2557 0))(
  ( (ElementMatch!2557 (c!152082 C!5684)) (Concat!4390 (regOne!5626 Regex!2557) (regTwo!5626 Regex!2557)) (EmptyExpr!2557) (Star!2557 (reg!2886 Regex!2557)) (EmptyLang!2557) (Union!2557 (regOne!5627 Regex!2557) (regTwo!5627 Regex!2557)) )
))
(declare-fun r!15766 () Regex!2557)

(declare-datatypes ((List!9787 0))(
  ( (Nil!9771) (Cons!9771 (h!15172 C!5684) (t!100833 List!9787)) )
))
(declare-fun s!10566 () List!9787)

(declare-fun matchR!1095 (Regex!2557 List!9787) Bool)

(declare-fun removeUselessConcat!226 (Regex!2557) Regex!2557)

(assert (=> b!935117 (= res!424614 (not (matchR!1095 (Star!2557 (removeUselessConcat!226 (reg!2886 r!15766))) s!10566)))))

(declare-fun Exists!308 (Int) Bool)

(assert (=> b!935117 (= (Exists!308 lambda!31007) (Exists!308 lambda!31008))))

(declare-datatypes ((Unit!14733 0))(
  ( (Unit!14734) )
))
(declare-fun lt!341097 () Unit!14733)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!52 (Regex!2557 List!9787) Unit!14733)

(assert (=> b!935117 (= lt!341097 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!52 (reg!2886 r!15766) s!10566))))

(declare-fun lt!341101 () Regex!2557)

(declare-datatypes ((tuple2!11012 0))(
  ( (tuple2!11013 (_1!6332 List!9787) (_2!6332 List!9787)) )
))
(declare-datatypes ((Option!2148 0))(
  ( (None!2147) (Some!2147 (v!19564 tuple2!11012)) )
))
(declare-fun isDefined!1790 (Option!2148) Bool)

(declare-fun findConcatSeparation!254 (Regex!2557 Regex!2557 List!9787 List!9787 List!9787) Option!2148)

(assert (=> b!935117 (= (isDefined!1790 (findConcatSeparation!254 (reg!2886 r!15766) lt!341101 Nil!9771 s!10566 s!10566)) (Exists!308 lambda!31007))))

(declare-fun lt!341100 () Unit!14733)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!254 (Regex!2557 Regex!2557 List!9787) Unit!14733)

(assert (=> b!935117 (= lt!341100 (lemmaFindConcatSeparationEquivalentToExists!254 (reg!2886 r!15766) lt!341101 s!10566))))

(assert (=> b!935117 (= lt!341101 (Star!2557 (reg!2886 r!15766)))))

(declare-fun b!935118 () Bool)

(declare-fun e!607340 () Bool)

(declare-fun tp_is_empty!4757 () Bool)

(declare-fun tp!290085 () Bool)

(assert (=> b!935118 (= e!607340 (and tp_is_empty!4757 tp!290085))))

(declare-fun b!935119 () Bool)

(declare-fun tp!290087 () Bool)

(declare-fun tp!290083 () Bool)

(assert (=> b!935119 (= e!607337 (and tp!290087 tp!290083))))

(declare-fun res!424612 () Bool)

(declare-fun e!607341 () Bool)

(assert (=> start!83590 (=> (not res!424612) (not e!607341))))

(declare-fun validRegex!1026 (Regex!2557) Bool)

(assert (=> start!83590 (= res!424612 (validRegex!1026 r!15766))))

(assert (=> start!83590 e!607341))

(assert (=> start!83590 e!607337))

(assert (=> start!83590 e!607340))

(declare-fun b!935120 () Bool)

(assert (=> b!935120 (= e!607339 true)))

(declare-fun b!935121 () Bool)

(assert (=> b!935121 (= e!607337 tp_is_empty!4757)))

(declare-fun b!935122 () Bool)

(assert (=> b!935122 (= e!607341 (not e!607338))))

(declare-fun res!424613 () Bool)

(assert (=> b!935122 (=> res!424613 e!607338)))

(declare-fun lt!341099 () Bool)

(get-info :version)

(assert (=> b!935122 (= res!424613 (or lt!341099 (and ((_ is Concat!4390) r!15766) ((_ is EmptyExpr!2557) (regOne!5626 r!15766))) (and ((_ is Concat!4390) r!15766) ((_ is EmptyExpr!2557) (regTwo!5626 r!15766))) ((_ is Concat!4390) r!15766) ((_ is Union!2557) r!15766) (not ((_ is Star!2557) r!15766))))))

(declare-fun matchRSpec!358 (Regex!2557 List!9787) Bool)

(assert (=> b!935122 (= lt!341099 (matchRSpec!358 r!15766 s!10566))))

(assert (=> b!935122 (= lt!341099 (matchR!1095 r!15766 s!10566))))

(declare-fun lt!341098 () Unit!14733)

(declare-fun mainMatchTheorem!358 (Regex!2557 List!9787) Unit!14733)

(assert (=> b!935122 (= lt!341098 (mainMatchTheorem!358 r!15766 s!10566))))

(declare-fun b!935123 () Bool)

(declare-fun tp!290084 () Bool)

(declare-fun tp!290086 () Bool)

(assert (=> b!935123 (= e!607337 (and tp!290084 tp!290086))))

(assert (= (and start!83590 res!424612) b!935122))

(assert (= (and b!935122 (not res!424613)) b!935117))

(assert (= (and b!935117 (not res!424614)) b!935120))

(assert (= (and start!83590 ((_ is ElementMatch!2557) r!15766)) b!935121))

(assert (= (and start!83590 ((_ is Concat!4390) r!15766)) b!935123))

(assert (= (and start!83590 ((_ is Star!2557) r!15766)) b!935116))

(assert (= (and start!83590 ((_ is Union!2557) r!15766)) b!935119))

(assert (= (and start!83590 ((_ is Cons!9771) s!10566)) b!935118))

(declare-fun m!1155041 () Bool)

(assert (=> b!935117 m!1155041))

(declare-fun m!1155043 () Bool)

(assert (=> b!935117 m!1155043))

(declare-fun m!1155045 () Bool)

(assert (=> b!935117 m!1155045))

(declare-fun m!1155047 () Bool)

(assert (=> b!935117 m!1155047))

(declare-fun m!1155049 () Bool)

(assert (=> b!935117 m!1155049))

(declare-fun m!1155051 () Bool)

(assert (=> b!935117 m!1155051))

(assert (=> b!935117 m!1155041))

(assert (=> b!935117 m!1155045))

(declare-fun m!1155053 () Bool)

(assert (=> b!935117 m!1155053))

(declare-fun m!1155055 () Bool)

(assert (=> b!935117 m!1155055))

(declare-fun m!1155057 () Bool)

(assert (=> start!83590 m!1155057))

(declare-fun m!1155059 () Bool)

(assert (=> b!935122 m!1155059))

(declare-fun m!1155061 () Bool)

(assert (=> b!935122 m!1155061))

(declare-fun m!1155063 () Bool)

(assert (=> b!935122 m!1155063))

(check-sat (not b!935117) tp_is_empty!4757 (not b!935118) (not b!935122) (not start!83590) (not b!935119) (not b!935116) (not b!935123))
(check-sat)
