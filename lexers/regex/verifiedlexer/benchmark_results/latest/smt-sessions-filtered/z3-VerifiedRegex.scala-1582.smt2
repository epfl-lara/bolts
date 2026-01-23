; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81810 () Bool)

(assert start!81810)

(declare-fun b!909788 () Bool)

(assert (=> b!909788 true))

(assert (=> b!909788 true))

(declare-fun lambda!28938 () Int)

(declare-fun lambda!28937 () Int)

(assert (=> b!909788 (not (= lambda!28938 lambda!28937))))

(assert (=> b!909788 true))

(assert (=> b!909788 true))

(declare-fun b!909785 () Bool)

(declare-fun e!593657 () Bool)

(declare-fun e!593658 () Bool)

(assert (=> b!909785 (= e!593657 (not e!593658))))

(declare-fun res!413715 () Bool)

(assert (=> b!909785 (=> res!413715 e!593658)))

(declare-fun lt!336400 () Bool)

(declare-datatypes ((C!5416 0))(
  ( (C!5417 (val!2956 Int)) )
))
(declare-datatypes ((Regex!2423 0))(
  ( (ElementMatch!2423 (c!147360 C!5416)) (Concat!4256 (regOne!5358 Regex!2423) (regTwo!5358 Regex!2423)) (EmptyExpr!2423) (Star!2423 (reg!2752 Regex!2423)) (EmptyLang!2423) (Union!2423 (regOne!5359 Regex!2423) (regTwo!5359 Regex!2423)) )
))
(declare-fun r!15766 () Regex!2423)

(get-info :version)

(assert (=> b!909785 (= res!413715 (or lt!336400 (and ((_ is Concat!4256) r!15766) ((_ is EmptyExpr!2423) (regOne!5358 r!15766))) (not ((_ is Concat!4256) r!15766)) (not ((_ is EmptyExpr!2423) (regTwo!5358 r!15766)))))))

(declare-datatypes ((List!9653 0))(
  ( (Nil!9637) (Cons!9637 (h!15038 C!5416) (t!100699 List!9653)) )
))
(declare-fun s!10566 () List!9653)

(declare-fun matchRSpec!224 (Regex!2423 List!9653) Bool)

(assert (=> b!909785 (= lt!336400 (matchRSpec!224 r!15766 s!10566))))

(declare-fun matchR!961 (Regex!2423 List!9653) Bool)

(assert (=> b!909785 (= lt!336400 (matchR!961 r!15766 s!10566))))

(declare-datatypes ((Unit!14465 0))(
  ( (Unit!14466) )
))
(declare-fun lt!336398 () Unit!14465)

(declare-fun mainMatchTheorem!224 (Regex!2423 List!9653) Unit!14465)

(assert (=> b!909785 (= lt!336398 (mainMatchTheorem!224 r!15766 s!10566))))

(declare-fun b!909786 () Bool)

(declare-fun e!593659 () Bool)

(declare-fun tp!284631 () Bool)

(declare-fun tp!284632 () Bool)

(assert (=> b!909786 (= e!593659 (and tp!284631 tp!284632))))

(declare-fun b!909787 () Bool)

(declare-fun tp_is_empty!4489 () Bool)

(assert (=> b!909787 (= e!593659 tp_is_empty!4489)))

(declare-fun res!413716 () Bool)

(assert (=> start!81810 (=> (not res!413716) (not e!593657))))

(declare-fun validRegex!892 (Regex!2423) Bool)

(assert (=> start!81810 (= res!413716 (validRegex!892 r!15766))))

(assert (=> start!81810 e!593657))

(assert (=> start!81810 e!593659))

(declare-fun e!593656 () Bool)

(assert (=> start!81810 e!593656))

(assert (=> b!909788 (= e!593658 true)))

(declare-fun Exists!196 (Int) Bool)

(assert (=> b!909788 (= (Exists!196 lambda!28937) (Exists!196 lambda!28938))))

(declare-fun lt!336399 () Unit!14465)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!110 (Regex!2423 Regex!2423 List!9653) Unit!14465)

(assert (=> b!909788 (= lt!336399 (lemmaExistCutMatchRandMatchRSpecEquivalent!110 (regOne!5358 r!15766) EmptyExpr!2423 s!10566))))

(declare-datatypes ((tuple2!10836 0))(
  ( (tuple2!10837 (_1!6244 List!9653) (_2!6244 List!9653)) )
))
(declare-datatypes ((Option!2060 0))(
  ( (None!2059) (Some!2059 (v!19476 tuple2!10836)) )
))
(declare-fun isDefined!1702 (Option!2060) Bool)

(declare-fun findConcatSeparation!166 (Regex!2423 Regex!2423 List!9653 List!9653 List!9653) Option!2060)

(assert (=> b!909788 (= (isDefined!1702 (findConcatSeparation!166 (regOne!5358 r!15766) EmptyExpr!2423 Nil!9637 s!10566 s!10566)) (Exists!196 lambda!28937))))

(declare-fun lt!336401 () Unit!14465)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!166 (Regex!2423 Regex!2423 List!9653) Unit!14465)

(assert (=> b!909788 (= lt!336401 (lemmaFindConcatSeparationEquivalentToExists!166 (regOne!5358 r!15766) EmptyExpr!2423 s!10566))))

(declare-fun b!909789 () Bool)

(declare-fun tp!284634 () Bool)

(assert (=> b!909789 (= e!593656 (and tp_is_empty!4489 tp!284634))))

(declare-fun b!909790 () Bool)

(declare-fun tp!284635 () Bool)

(assert (=> b!909790 (= e!593659 tp!284635)))

(declare-fun b!909791 () Bool)

(declare-fun tp!284633 () Bool)

(declare-fun tp!284636 () Bool)

(assert (=> b!909791 (= e!593659 (and tp!284633 tp!284636))))

(assert (= (and start!81810 res!413716) b!909785))

(assert (= (and b!909785 (not res!413715)) b!909788))

(assert (= (and start!81810 ((_ is ElementMatch!2423) r!15766)) b!909787))

(assert (= (and start!81810 ((_ is Concat!4256) r!15766)) b!909786))

(assert (= (and start!81810 ((_ is Star!2423) r!15766)) b!909790))

(assert (= (and start!81810 ((_ is Union!2423) r!15766)) b!909791))

(assert (= (and start!81810 ((_ is Cons!9637) s!10566)) b!909789))

(declare-fun m!1142717 () Bool)

(assert (=> b!909785 m!1142717))

(declare-fun m!1142719 () Bool)

(assert (=> b!909785 m!1142719))

(declare-fun m!1142721 () Bool)

(assert (=> b!909785 m!1142721))

(declare-fun m!1142723 () Bool)

(assert (=> start!81810 m!1142723))

(declare-fun m!1142725 () Bool)

(assert (=> b!909788 m!1142725))

(declare-fun m!1142727 () Bool)

(assert (=> b!909788 m!1142727))

(declare-fun m!1142729 () Bool)

(assert (=> b!909788 m!1142729))

(declare-fun m!1142731 () Bool)

(assert (=> b!909788 m!1142731))

(declare-fun m!1142733 () Bool)

(assert (=> b!909788 m!1142733))

(declare-fun m!1142735 () Bool)

(assert (=> b!909788 m!1142735))

(assert (=> b!909788 m!1142729))

(assert (=> b!909788 m!1142733))

(check-sat (not b!909788) (not b!909789) (not start!81810) (not b!909790) (not b!909791) (not b!909785) tp_is_empty!4489 (not b!909786))
(check-sat)
