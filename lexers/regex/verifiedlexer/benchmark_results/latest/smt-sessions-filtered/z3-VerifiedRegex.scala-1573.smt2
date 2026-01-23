; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81594 () Bool)

(assert start!81594)

(declare-fun b!907322 () Bool)

(assert (=> b!907322 true))

(assert (=> b!907322 true))

(declare-fun lambda!28700 () Int)

(declare-fun lambda!28699 () Int)

(assert (=> b!907322 (not (= lambda!28700 lambda!28699))))

(assert (=> b!907322 true))

(assert (=> b!907322 true))

(declare-fun b!907317 () Bool)

(declare-fun e!592360 () Bool)

(assert (=> b!907317 (= e!592360 true)))

(declare-datatypes ((C!5380 0))(
  ( (C!5381 (val!2938 Int)) )
))
(declare-datatypes ((Regex!2405 0))(
  ( (ElementMatch!2405 (c!146974 C!5380)) (Concat!4238 (regOne!5322 Regex!2405) (regTwo!5322 Regex!2405)) (EmptyExpr!2405) (Star!2405 (reg!2734 Regex!2405)) (EmptyLang!2405) (Union!2405 (regOne!5323 Regex!2405) (regTwo!5323 Regex!2405)) )
))
(declare-fun r!15766 () Regex!2405)

(declare-datatypes ((List!9635 0))(
  ( (Nil!9619) (Cons!9619 (h!15020 C!5380) (t!100681 List!9635)) )
))
(declare-fun s!10566 () List!9635)

(declare-fun matchR!943 (Regex!2405 List!9635) Bool)

(declare-fun removeUselessConcat!104 (Regex!2405) Regex!2405)

(assert (=> b!907317 (= (matchR!943 (regTwo!5322 r!15766) s!10566) (matchR!943 (removeUselessConcat!104 (regTwo!5322 r!15766)) s!10566))))

(declare-datatypes ((Unit!14429 0))(
  ( (Unit!14430) )
))
(declare-fun lt!335979 () Unit!14429)

(declare-fun lemmaRemoveUselessConcatSound!92 (Regex!2405 List!9635) Unit!14429)

(assert (=> b!907317 (= lt!335979 (lemmaRemoveUselessConcatSound!92 (regTwo!5322 r!15766) s!10566))))

(declare-fun b!907318 () Bool)

(declare-fun res!412600 () Bool)

(assert (=> b!907318 (=> res!412600 e!592360)))

(declare-datatypes ((tuple2!10804 0))(
  ( (tuple2!10805 (_1!6228 List!9635) (_2!6228 List!9635)) )
))
(declare-datatypes ((Option!2044 0))(
  ( (None!2043) (Some!2043 (v!19460 tuple2!10804)) )
))
(declare-fun lt!335980 () Option!2044)

(declare-fun isEmpty!5832 (Option!2044) Bool)

(assert (=> b!907318 (= res!412600 (not (isEmpty!5832 lt!335980)))))

(declare-fun b!907319 () Bool)

(declare-fun e!592359 () Bool)

(declare-fun tp!284003 () Bool)

(declare-fun tp!284006 () Bool)

(assert (=> b!907319 (= e!592359 (and tp!284003 tp!284006))))

(declare-fun b!907320 () Bool)

(declare-fun tp!284004 () Bool)

(assert (=> b!907320 (= e!592359 tp!284004)))

(declare-fun b!907321 () Bool)

(declare-fun tp_is_empty!4453 () Bool)

(assert (=> b!907321 (= e!592359 tp_is_empty!4453)))

(declare-fun e!592358 () Bool)

(assert (=> b!907322 (= e!592358 e!592360)))

(declare-fun res!412599 () Bool)

(assert (=> b!907322 (=> res!412599 e!592360)))

(declare-fun isEmpty!5833 (List!9635) Bool)

(assert (=> b!907322 (= res!412599 (isEmpty!5833 s!10566))))

(declare-fun Exists!180 (Int) Bool)

(assert (=> b!907322 (= (Exists!180 lambda!28699) (Exists!180 lambda!28700))))

(declare-fun lt!335981 () Unit!14429)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!96 (Regex!2405 Regex!2405 List!9635) Unit!14429)

(assert (=> b!907322 (= lt!335981 (lemmaExistCutMatchRandMatchRSpecEquivalent!96 EmptyExpr!2405 (regTwo!5322 r!15766) s!10566))))

(declare-fun isDefined!1686 (Option!2044) Bool)

(assert (=> b!907322 (= (isDefined!1686 lt!335980) (Exists!180 lambda!28699))))

(declare-fun findConcatSeparation!150 (Regex!2405 Regex!2405 List!9635 List!9635 List!9635) Option!2044)

(assert (=> b!907322 (= lt!335980 (findConcatSeparation!150 EmptyExpr!2405 (regTwo!5322 r!15766) Nil!9619 s!10566 s!10566))))

(declare-fun lt!335977 () Unit!14429)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!150 (Regex!2405 Regex!2405 List!9635) Unit!14429)

(assert (=> b!907322 (= lt!335977 (lemmaFindConcatSeparationEquivalentToExists!150 EmptyExpr!2405 (regTwo!5322 r!15766) s!10566))))

(declare-fun b!907323 () Bool)

(declare-fun tp!284008 () Bool)

(declare-fun tp!284007 () Bool)

(assert (=> b!907323 (= e!592359 (and tp!284008 tp!284007))))

(declare-fun b!907324 () Bool)

(declare-fun e!592357 () Bool)

(declare-fun tp!284005 () Bool)

(assert (=> b!907324 (= e!592357 (and tp_is_empty!4453 tp!284005))))

(declare-fun res!412598 () Bool)

(declare-fun e!592361 () Bool)

(assert (=> start!81594 (=> (not res!412598) (not e!592361))))

(declare-fun validRegex!874 (Regex!2405) Bool)

(assert (=> start!81594 (= res!412598 (validRegex!874 r!15766))))

(assert (=> start!81594 e!592361))

(assert (=> start!81594 e!592359))

(assert (=> start!81594 e!592357))

(declare-fun b!907325 () Bool)

(assert (=> b!907325 (= e!592361 (not e!592358))))

(declare-fun res!412597 () Bool)

(assert (=> b!907325 (=> res!412597 e!592358)))

(declare-fun lt!335976 () Bool)

(get-info :version)

(assert (=> b!907325 (= res!412597 (or lt!335976 (not ((_ is Concat!4238) r!15766)) (not ((_ is EmptyExpr!2405) (regOne!5322 r!15766)))))))

(declare-fun matchRSpec!206 (Regex!2405 List!9635) Bool)

(assert (=> b!907325 (= lt!335976 (matchRSpec!206 r!15766 s!10566))))

(assert (=> b!907325 (= lt!335976 (matchR!943 r!15766 s!10566))))

(declare-fun lt!335978 () Unit!14429)

(declare-fun mainMatchTheorem!206 (Regex!2405 List!9635) Unit!14429)

(assert (=> b!907325 (= lt!335978 (mainMatchTheorem!206 r!15766 s!10566))))

(assert (= (and start!81594 res!412598) b!907325))

(assert (= (and b!907325 (not res!412597)) b!907322))

(assert (= (and b!907322 (not res!412599)) b!907318))

(assert (= (and b!907318 (not res!412600)) b!907317))

(assert (= (and start!81594 ((_ is ElementMatch!2405) r!15766)) b!907321))

(assert (= (and start!81594 ((_ is Concat!4238) r!15766)) b!907319))

(assert (= (and start!81594 ((_ is Star!2405) r!15766)) b!907320))

(assert (= (and start!81594 ((_ is Union!2405) r!15766)) b!907323))

(assert (= (and start!81594 ((_ is Cons!9619) s!10566)) b!907324))

(declare-fun m!1141633 () Bool)

(assert (=> b!907317 m!1141633))

(declare-fun m!1141635 () Bool)

(assert (=> b!907317 m!1141635))

(assert (=> b!907317 m!1141635))

(declare-fun m!1141637 () Bool)

(assert (=> b!907317 m!1141637))

(declare-fun m!1141639 () Bool)

(assert (=> b!907317 m!1141639))

(declare-fun m!1141641 () Bool)

(assert (=> b!907322 m!1141641))

(declare-fun m!1141643 () Bool)

(assert (=> b!907322 m!1141643))

(declare-fun m!1141645 () Bool)

(assert (=> b!907322 m!1141645))

(declare-fun m!1141647 () Bool)

(assert (=> b!907322 m!1141647))

(declare-fun m!1141649 () Bool)

(assert (=> b!907322 m!1141649))

(declare-fun m!1141651 () Bool)

(assert (=> b!907322 m!1141651))

(declare-fun m!1141653 () Bool)

(assert (=> b!907322 m!1141653))

(assert (=> b!907322 m!1141649))

(declare-fun m!1141655 () Bool)

(assert (=> b!907318 m!1141655))

(declare-fun m!1141657 () Bool)

(assert (=> b!907325 m!1141657))

(declare-fun m!1141659 () Bool)

(assert (=> b!907325 m!1141659))

(declare-fun m!1141661 () Bool)

(assert (=> b!907325 m!1141661))

(declare-fun m!1141663 () Bool)

(assert (=> start!81594 m!1141663))

(check-sat (not b!907322) (not start!81594) (not b!907319) (not b!907323) (not b!907324) (not b!907320) (not b!907325) (not b!907317) tp_is_empty!4453 (not b!907318))
(check-sat)
