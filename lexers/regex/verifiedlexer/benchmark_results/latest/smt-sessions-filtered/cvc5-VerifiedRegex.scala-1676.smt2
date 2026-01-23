; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!84508 () Bool)

(assert start!84508)

(declare-fun b!948316 () Bool)

(assert (=> b!948316 true))

(assert (=> b!948316 true))

(assert (=> b!948316 true))

(declare-fun lambda!32466 () Int)

(declare-fun lambda!32465 () Int)

(assert (=> b!948316 (not (= lambda!32466 lambda!32465))))

(assert (=> b!948316 true))

(assert (=> b!948316 true))

(assert (=> b!948316 true))

(declare-fun b!948310 () Bool)

(declare-fun e!614249 () Bool)

(declare-fun tp!292330 () Bool)

(declare-fun tp!292333 () Bool)

(assert (=> b!948310 (= e!614249 (and tp!292330 tp!292333))))

(declare-fun b!948311 () Bool)

(declare-fun e!614248 () Bool)

(declare-fun tp_is_empty!4863 () Bool)

(declare-fun tp!292332 () Bool)

(assert (=> b!948311 (= e!614248 (and tp_is_empty!4863 tp!292332))))

(declare-fun res!431085 () Bool)

(declare-fun e!614250 () Bool)

(assert (=> start!84508 (=> (not res!431085) (not e!614250))))

(declare-datatypes ((C!5790 0))(
  ( (C!5791 (val!3143 Int)) )
))
(declare-datatypes ((Regex!2610 0))(
  ( (ElementMatch!2610 (c!154397 C!5790)) (Concat!4443 (regOne!5732 Regex!2610) (regTwo!5732 Regex!2610)) (EmptyExpr!2610) (Star!2610 (reg!2939 Regex!2610)) (EmptyLang!2610) (Union!2610 (regOne!5733 Regex!2610) (regTwo!5733 Regex!2610)) )
))
(declare-fun r!15766 () Regex!2610)

(declare-fun validRegex!1079 (Regex!2610) Bool)

(assert (=> start!84508 (= res!431085 (validRegex!1079 r!15766))))

(assert (=> start!84508 e!614250))

(assert (=> start!84508 e!614249))

(assert (=> start!84508 e!614248))

(declare-fun b!948312 () Bool)

(assert (=> b!948312 (= e!614249 tp_is_empty!4863)))

(declare-fun b!948313 () Bool)

(declare-fun tp!292331 () Bool)

(assert (=> b!948313 (= e!614249 tp!292331)))

(declare-fun b!948314 () Bool)

(declare-fun e!614251 () Bool)

(assert (=> b!948314 (= e!614250 (not e!614251))))

(declare-fun res!431086 () Bool)

(assert (=> b!948314 (=> res!431086 e!614251)))

(declare-fun lt!344250 () Bool)

(assert (=> b!948314 (= res!431086 (or lt!344250 (and (is-Concat!4443 r!15766) (is-EmptyExpr!2610 (regOne!5732 r!15766))) (and (is-Concat!4443 r!15766) (is-EmptyExpr!2610 (regTwo!5732 r!15766))) (is-Concat!4443 r!15766) (is-Union!2610 r!15766) (not (is-Star!2610 r!15766))))))

(declare-datatypes ((List!9840 0))(
  ( (Nil!9824) (Cons!9824 (h!15225 C!5790) (t!100886 List!9840)) )
))
(declare-fun s!10566 () List!9840)

(declare-fun matchRSpec!411 (Regex!2610 List!9840) Bool)

(assert (=> b!948314 (= lt!344250 (matchRSpec!411 r!15766 s!10566))))

(declare-fun matchR!1148 (Regex!2610 List!9840) Bool)

(assert (=> b!948314 (= lt!344250 (matchR!1148 r!15766 s!10566))))

(declare-datatypes ((Unit!14863 0))(
  ( (Unit!14864) )
))
(declare-fun lt!344248 () Unit!14863)

(declare-fun mainMatchTheorem!411 (Regex!2610 List!9840) Unit!14863)

(assert (=> b!948314 (= lt!344248 (mainMatchTheorem!411 r!15766 s!10566))))

(declare-fun b!948315 () Bool)

(declare-fun tp!292334 () Bool)

(declare-fun tp!292329 () Bool)

(assert (=> b!948315 (= e!614249 (and tp!292334 tp!292329))))

(assert (=> b!948316 (= e!614251 true)))

(declare-fun lt!344251 () Bool)

(declare-fun removeUselessConcat!279 (Regex!2610) Regex!2610)

(assert (=> b!948316 (= lt!344251 (matchR!1148 (Star!2610 (removeUselessConcat!279 (reg!2939 r!15766))) s!10566))))

(declare-fun Exists!361 (Int) Bool)

(assert (=> b!948316 (= (Exists!361 lambda!32465) (Exists!361 lambda!32466))))

(declare-fun lt!344247 () Unit!14863)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!105 (Regex!2610 List!9840) Unit!14863)

(assert (=> b!948316 (= lt!344247 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!105 (reg!2939 r!15766) s!10566))))

(declare-fun lt!344249 () Regex!2610)

(declare-datatypes ((tuple2!11118 0))(
  ( (tuple2!11119 (_1!6385 List!9840) (_2!6385 List!9840)) )
))
(declare-datatypes ((Option!2201 0))(
  ( (None!2200) (Some!2200 (v!19617 tuple2!11118)) )
))
(declare-fun isDefined!1843 (Option!2201) Bool)

(declare-fun findConcatSeparation!307 (Regex!2610 Regex!2610 List!9840 List!9840 List!9840) Option!2201)

(assert (=> b!948316 (= (isDefined!1843 (findConcatSeparation!307 (reg!2939 r!15766) lt!344249 Nil!9824 s!10566 s!10566)) (Exists!361 lambda!32465))))

(declare-fun lt!344246 () Unit!14863)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!307 (Regex!2610 Regex!2610 List!9840) Unit!14863)

(assert (=> b!948316 (= lt!344246 (lemmaFindConcatSeparationEquivalentToExists!307 (reg!2939 r!15766) lt!344249 s!10566))))

(assert (=> b!948316 (= lt!344249 (Star!2610 (reg!2939 r!15766)))))

(assert (= (and start!84508 res!431085) b!948314))

(assert (= (and b!948314 (not res!431086)) b!948316))

(assert (= (and start!84508 (is-ElementMatch!2610 r!15766)) b!948312))

(assert (= (and start!84508 (is-Concat!4443 r!15766)) b!948310))

(assert (= (and start!84508 (is-Star!2610 r!15766)) b!948313))

(assert (= (and start!84508 (is-Union!2610 r!15766)) b!948315))

(assert (= (and start!84508 (is-Cons!9824 s!10566)) b!948311))

(declare-fun m!1162625 () Bool)

(assert (=> start!84508 m!1162625))

(declare-fun m!1162627 () Bool)

(assert (=> b!948314 m!1162627))

(declare-fun m!1162629 () Bool)

(assert (=> b!948314 m!1162629))

(declare-fun m!1162631 () Bool)

(assert (=> b!948314 m!1162631))

(declare-fun m!1162633 () Bool)

(assert (=> b!948316 m!1162633))

(declare-fun m!1162635 () Bool)

(assert (=> b!948316 m!1162635))

(declare-fun m!1162637 () Bool)

(assert (=> b!948316 m!1162637))

(declare-fun m!1162639 () Bool)

(assert (=> b!948316 m!1162639))

(declare-fun m!1162641 () Bool)

(assert (=> b!948316 m!1162641))

(declare-fun m!1162643 () Bool)

(assert (=> b!948316 m!1162643))

(declare-fun m!1162645 () Bool)

(assert (=> b!948316 m!1162645))

(assert (=> b!948316 m!1162645))

(declare-fun m!1162647 () Bool)

(assert (=> b!948316 m!1162647))

(assert (=> b!948316 m!1162639))

(push 1)

(assert (not start!84508))

(assert (not b!948310))

(assert (not b!948315))

(assert tp_is_empty!4863)

(assert (not b!948311))

(assert (not b!948314))

(assert (not b!948316))

(assert (not b!948313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

