; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!736828 () Bool)

(assert start!736828)

(declare-fun b!7694571 () Bool)

(assert (=> b!7694571 true))

(assert (=> b!7694571 true))

(declare-fun b!7694570 () Bool)

(declare-fun e!4567172 () Bool)

(declare-fun tp!2254108 () Bool)

(declare-fun tp!2254107 () Bool)

(assert (=> b!7694570 (= e!4567172 (and tp!2254108 tp!2254107))))

(declare-fun e!4567170 () Bool)

(declare-fun e!4567173 () Bool)

(assert (=> b!7694571 (= e!4567170 (not e!4567173))))

(declare-fun res!3073674 () Bool)

(assert (=> b!7694571 (=> res!3073674 e!4567173)))

(declare-fun lt!2664279 () Bool)

(assert (=> b!7694571 (= res!3073674 lt!2664279)))

(declare-fun lambda!470471 () Int)

(declare-fun Exists!4644 (Int) Bool)

(assert (=> b!7694571 (= lt!2664279 (Exists!4644 lambda!470471))))

(declare-datatypes ((C!41364 0))(
  ( (C!41365 (val!31122 Int)) )
))
(declare-datatypes ((Regex!20519 0))(
  ( (ElementMatch!20519 (c!1418040 C!41364)) (Concat!29364 (regOne!41550 Regex!20519) (regTwo!41550 Regex!20519)) (EmptyExpr!20519) (Star!20519 (reg!20848 Regex!20519)) (EmptyLang!20519) (Union!20519 (regOne!41551 Regex!20519) (regTwo!41551 Regex!20519)) )
))
(declare-fun r!14126 () Regex!20519)

(declare-datatypes ((List!73370 0))(
  ( (Nil!73246) (Cons!73246 (h!79694 C!41364) (t!388105 List!73370)) )
))
(declare-fun s!9605 () List!73370)

(declare-datatypes ((tuple2!69500 0))(
  ( (tuple2!69501 (_1!38053 List!73370) (_2!38053 List!73370)) )
))
(declare-datatypes ((Option!17544 0))(
  ( (None!17543) (Some!17543 (v!54678 tuple2!69500)) )
))
(declare-fun isDefined!14160 (Option!17544) Bool)

(declare-fun findConcatSeparation!3574 (Regex!20519 Regex!20519 List!73370 List!73370 List!73370) Option!17544)

(assert (=> b!7694571 (= lt!2664279 (isDefined!14160 (findConcatSeparation!3574 (reg!20848 r!14126) r!14126 Nil!73246 s!9605 s!9605)))))

(declare-datatypes ((Unit!168070 0))(
  ( (Unit!168071) )
))
(declare-fun lt!2664281 () Unit!168070)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3332 (Regex!20519 Regex!20519 List!73370) Unit!168070)

(assert (=> b!7694571 (= lt!2664281 (lemmaFindConcatSeparationEquivalentToExists!3332 (reg!20848 r!14126) r!14126 s!9605))))

(declare-fun b!7694572 () Bool)

(declare-fun res!3073676 () Bool)

(assert (=> b!7694572 (=> (not res!3073676) (not e!4567170))))

(get-info :version)

(assert (=> b!7694572 (= res!3073676 (and (not ((_ is EmptyExpr!20519) r!14126)) (not ((_ is EmptyLang!20519) r!14126)) (not ((_ is ElementMatch!20519) r!14126)) (not ((_ is Union!20519) r!14126)) ((_ is Star!20519) r!14126)))))

(declare-fun b!7694574 () Bool)

(declare-fun res!3073675 () Bool)

(assert (=> b!7694574 (=> res!3073675 e!4567173)))

(declare-fun matchR!10015 (Regex!20519 List!73370) Bool)

(assert (=> b!7694574 (= res!3073675 (not (matchR!10015 r!14126 s!9605)))))

(declare-fun b!7694575 () Bool)

(declare-fun tp!2254106 () Bool)

(declare-fun tp!2254109 () Bool)

(assert (=> b!7694575 (= e!4567172 (and tp!2254106 tp!2254109))))

(declare-fun b!7694576 () Bool)

(declare-fun tp!2254105 () Bool)

(assert (=> b!7694576 (= e!4567172 tp!2254105)))

(declare-fun b!7694577 () Bool)

(declare-fun tp_is_empty!51393 () Bool)

(assert (=> b!7694577 (= e!4567172 tp_is_empty!51393)))

(declare-fun b!7694573 () Bool)

(declare-fun e!4567171 () Bool)

(declare-fun tp!2254104 () Bool)

(assert (=> b!7694573 (= e!4567171 (and tp_is_empty!51393 tp!2254104))))

(declare-fun res!3073678 () Bool)

(assert (=> start!736828 (=> (not res!3073678) (not e!4567170))))

(declare-fun validRegex!10937 (Regex!20519) Bool)

(assert (=> start!736828 (= res!3073678 (validRegex!10937 r!14126))))

(assert (=> start!736828 e!4567170))

(assert (=> start!736828 e!4567172))

(assert (=> start!736828 e!4567171))

(declare-fun b!7694578 () Bool)

(declare-fun res!3073677 () Bool)

(assert (=> b!7694578 (=> (not res!3073677) (not e!4567170))))

(declare-fun isEmpty!41892 (List!73370) Bool)

(assert (=> b!7694578 (= res!3073677 (not (isEmpty!41892 s!9605)))))

(declare-fun b!7694579 () Bool)

(assert (=> b!7694579 (= e!4567173 true)))

(assert (=> b!7694579 false))

(declare-fun lt!2664280 () Unit!168070)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!292 (Regex!20519 Regex!20519 List!73370) Unit!168070)

(assert (=> b!7694579 (= lt!2664280 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!292 (reg!20848 r!14126) r!14126 s!9605))))

(assert (=> b!7694579 (matchR!10015 (Concat!29364 (reg!20848 r!14126) r!14126) s!9605)))

(declare-fun lt!2664282 () Unit!168070)

(declare-fun lemmaStarAppConcat!34 (Regex!20519 List!73370) Unit!168070)

(assert (=> b!7694579 (= lt!2664282 (lemmaStarAppConcat!34 (reg!20848 r!14126) s!9605))))

(assert (= (and start!736828 res!3073678) b!7694572))

(assert (= (and b!7694572 res!3073676) b!7694578))

(assert (= (and b!7694578 res!3073677) b!7694571))

(assert (= (and b!7694571 (not res!3073674)) b!7694574))

(assert (= (and b!7694574 (not res!3073675)) b!7694579))

(assert (= (and start!736828 ((_ is ElementMatch!20519) r!14126)) b!7694577))

(assert (= (and start!736828 ((_ is Concat!29364) r!14126)) b!7694575))

(assert (= (and start!736828 ((_ is Star!20519) r!14126)) b!7694576))

(assert (= (and start!736828 ((_ is Union!20519) r!14126)) b!7694570))

(assert (= (and start!736828 ((_ is Cons!73246) s!9605)) b!7694573))

(declare-fun m!8187562 () Bool)

(assert (=> start!736828 m!8187562))

(declare-fun m!8187564 () Bool)

(assert (=> b!7694571 m!8187564))

(declare-fun m!8187566 () Bool)

(assert (=> b!7694571 m!8187566))

(assert (=> b!7694571 m!8187566))

(declare-fun m!8187568 () Bool)

(assert (=> b!7694571 m!8187568))

(declare-fun m!8187570 () Bool)

(assert (=> b!7694571 m!8187570))

(declare-fun m!8187572 () Bool)

(assert (=> b!7694579 m!8187572))

(declare-fun m!8187574 () Bool)

(assert (=> b!7694579 m!8187574))

(declare-fun m!8187576 () Bool)

(assert (=> b!7694579 m!8187576))

(declare-fun m!8187578 () Bool)

(assert (=> b!7694574 m!8187578))

(declare-fun m!8187580 () Bool)

(assert (=> b!7694578 m!8187580))

(check-sat tp_is_empty!51393 (not b!7694571) (not start!736828) (not b!7694573) (not b!7694576) (not b!7694574) (not b!7694578) (not b!7694575) (not b!7694570) (not b!7694579))
(check-sat)
