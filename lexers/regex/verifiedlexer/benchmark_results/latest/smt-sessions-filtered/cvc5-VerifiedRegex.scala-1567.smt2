; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81412 () Bool)

(assert start!81412)

(declare-fun b!905194 () Bool)

(assert (=> b!905194 true))

(assert (=> b!905194 true))

(declare-fun lambda!28506 () Int)

(declare-fun lambda!28505 () Int)

(assert (=> b!905194 (not (= lambda!28506 lambda!28505))))

(assert (=> b!905194 true))

(assert (=> b!905194 true))

(declare-fun e!591248 () Bool)

(assert (=> b!905194 (= e!591248 true)))

(declare-fun Exists!167 (Int) Bool)

(assert (=> b!905194 (= (Exists!167 lambda!28505) (Exists!167 lambda!28506))))

(declare-datatypes ((Unit!14403 0))(
  ( (Unit!14404) )
))
(declare-fun lt!335501 () Unit!14403)

(declare-datatypes ((C!5354 0))(
  ( (C!5355 (val!2925 Int)) )
))
(declare-datatypes ((Regex!2392 0))(
  ( (ElementMatch!2392 (c!146625 C!5354)) (Concat!4225 (regOne!5296 Regex!2392) (regTwo!5296 Regex!2392)) (EmptyExpr!2392) (Star!2392 (reg!2721 Regex!2392)) (EmptyLang!2392) (Union!2392 (regOne!5297 Regex!2392) (regTwo!5297 Regex!2392)) )
))
(declare-fun r!15766 () Regex!2392)

(declare-datatypes ((List!9622 0))(
  ( (Nil!9606) (Cons!9606 (h!15007 C!5354) (t!100668 List!9622)) )
))
(declare-fun s!10566 () List!9622)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!83 (Regex!2392 Regex!2392 List!9622) Unit!14403)

(assert (=> b!905194 (= lt!335501 (lemmaExistCutMatchRandMatchRSpecEquivalent!83 EmptyExpr!2392 (regTwo!5296 r!15766) s!10566))))

(declare-datatypes ((tuple2!10778 0))(
  ( (tuple2!10779 (_1!6215 List!9622) (_2!6215 List!9622)) )
))
(declare-datatypes ((Option!2031 0))(
  ( (None!2030) (Some!2030 (v!19447 tuple2!10778)) )
))
(declare-fun isDefined!1673 (Option!2031) Bool)

(declare-fun findConcatSeparation!137 (Regex!2392 Regex!2392 List!9622 List!9622 List!9622) Option!2031)

(assert (=> b!905194 (= (isDefined!1673 (findConcatSeparation!137 EmptyExpr!2392 (regTwo!5296 r!15766) Nil!9606 s!10566 s!10566)) (Exists!167 lambda!28505))))

(declare-fun lt!335498 () Unit!14403)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!137 (Regex!2392 Regex!2392 List!9622) Unit!14403)

(assert (=> b!905194 (= lt!335498 (lemmaFindConcatSeparationEquivalentToExists!137 EmptyExpr!2392 (regTwo!5296 r!15766) s!10566))))

(declare-fun res!411603 () Bool)

(declare-fun e!591249 () Bool)

(assert (=> start!81412 (=> (not res!411603) (not e!591249))))

(declare-fun validRegex!861 (Regex!2392) Bool)

(assert (=> start!81412 (= res!411603 (validRegex!861 r!15766))))

(assert (=> start!81412 e!591249))

(declare-fun e!591251 () Bool)

(assert (=> start!81412 e!591251))

(declare-fun e!591250 () Bool)

(assert (=> start!81412 e!591250))

(declare-fun b!905195 () Bool)

(declare-fun tp!283542 () Bool)

(assert (=> b!905195 (= e!591251 tp!283542)))

(declare-fun b!905196 () Bool)

(declare-fun tp!283544 () Bool)

(declare-fun tp!283541 () Bool)

(assert (=> b!905196 (= e!591251 (and tp!283544 tp!283541))))

(declare-fun b!905197 () Bool)

(declare-fun tp_is_empty!4427 () Bool)

(declare-fun tp!283546 () Bool)

(assert (=> b!905197 (= e!591250 (and tp_is_empty!4427 tp!283546))))

(declare-fun b!905198 () Bool)

(assert (=> b!905198 (= e!591249 (not e!591248))))

(declare-fun res!411604 () Bool)

(assert (=> b!905198 (=> res!411604 e!591248)))

(declare-fun lt!335500 () Bool)

(assert (=> b!905198 (= res!411604 (or lt!335500 (not (is-Concat!4225 r!15766)) (not (is-EmptyExpr!2392 (regOne!5296 r!15766)))))))

(declare-fun matchRSpec!193 (Regex!2392 List!9622) Bool)

(assert (=> b!905198 (= lt!335500 (matchRSpec!193 r!15766 s!10566))))

(declare-fun matchR!930 (Regex!2392 List!9622) Bool)

(assert (=> b!905198 (= lt!335500 (matchR!930 r!15766 s!10566))))

(declare-fun lt!335499 () Unit!14403)

(declare-fun mainMatchTheorem!193 (Regex!2392 List!9622) Unit!14403)

(assert (=> b!905198 (= lt!335499 (mainMatchTheorem!193 r!15766 s!10566))))

(declare-fun b!905199 () Bool)

(declare-fun tp!283545 () Bool)

(declare-fun tp!283543 () Bool)

(assert (=> b!905199 (= e!591251 (and tp!283545 tp!283543))))

(declare-fun b!905200 () Bool)

(assert (=> b!905200 (= e!591251 tp_is_empty!4427)))

(assert (= (and start!81412 res!411603) b!905198))

(assert (= (and b!905198 (not res!411604)) b!905194))

(assert (= (and start!81412 (is-ElementMatch!2392 r!15766)) b!905200))

(assert (= (and start!81412 (is-Concat!4225 r!15766)) b!905196))

(assert (= (and start!81412 (is-Star!2392 r!15766)) b!905195))

(assert (= (and start!81412 (is-Union!2392 r!15766)) b!905199))

(assert (= (and start!81412 (is-Cons!9606 s!10566)) b!905197))

(declare-fun m!1140637 () Bool)

(assert (=> b!905194 m!1140637))

(declare-fun m!1140639 () Bool)

(assert (=> b!905194 m!1140639))

(declare-fun m!1140641 () Bool)

(assert (=> b!905194 m!1140641))

(declare-fun m!1140643 () Bool)

(assert (=> b!905194 m!1140643))

(declare-fun m!1140645 () Bool)

(assert (=> b!905194 m!1140645))

(assert (=> b!905194 m!1140641))

(assert (=> b!905194 m!1140637))

(declare-fun m!1140647 () Bool)

(assert (=> b!905194 m!1140647))

(declare-fun m!1140649 () Bool)

(assert (=> start!81412 m!1140649))

(declare-fun m!1140651 () Bool)

(assert (=> b!905198 m!1140651))

(declare-fun m!1140653 () Bool)

(assert (=> b!905198 m!1140653))

(declare-fun m!1140655 () Bool)

(assert (=> b!905198 m!1140655))

(push 1)

(assert (not b!905197))

(assert (not b!905194))

(assert tp_is_empty!4427)

(assert (not b!905196))

(assert (not b!905195))

(assert (not b!905198))

(assert (not start!81412))

(assert (not b!905199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

