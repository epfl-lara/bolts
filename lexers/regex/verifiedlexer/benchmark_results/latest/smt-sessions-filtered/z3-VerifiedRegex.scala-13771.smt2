; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734336 () Bool)

(assert start!734336)

(declare-fun b!7624704 () Bool)

(assert (=> b!7624704 true))

(assert (=> b!7624704 true))

(declare-fun bs!1943612 () Bool)

(declare-fun b!7624703 () Bool)

(assert (= bs!1943612 (and b!7624703 b!7624704)))

(declare-fun lambda!468673 () Int)

(declare-fun lambda!468672 () Int)

(assert (=> bs!1943612 (not (= lambda!468673 lambda!468672))))

(assert (=> b!7624703 true))

(assert (=> b!7624703 true))

(declare-fun b!7624695 () Bool)

(declare-fun res!3053048 () Bool)

(declare-fun e!4533468 () Bool)

(assert (=> b!7624695 (=> (not res!3053048) (not e!4533468))))

(declare-datatypes ((C!41000 0))(
  ( (C!41001 (val!30940 Int)) )
))
(declare-datatypes ((List!73190 0))(
  ( (Nil!73066) (Cons!73066 (h!79514 C!41000) (t!387925 List!73190)) )
))
(declare-fun s!9605 () List!73190)

(declare-fun isEmpty!41694 (List!73190) Bool)

(assert (=> b!7624695 (= res!3053048 (not (isEmpty!41694 s!9605)))))

(declare-fun b!7624696 () Bool)

(declare-fun res!3053045 () Bool)

(assert (=> b!7624696 (=> (not res!3053045) (not e!4533468))))

(declare-datatypes ((Regex!20337 0))(
  ( (ElementMatch!20337 (c!1405034 C!41000)) (Concat!29182 (regOne!41186 Regex!20337) (regTwo!41186 Regex!20337)) (EmptyExpr!20337) (Star!20337 (reg!20666 Regex!20337)) (EmptyLang!20337) (Union!20337 (regOne!41187 Regex!20337) (regTwo!41187 Regex!20337)) )
))
(declare-fun r!14126 () Regex!20337)

(get-info :version)

(assert (=> b!7624696 (= res!3053045 (and (not ((_ is EmptyExpr!20337) r!14126)) (not ((_ is EmptyLang!20337) r!14126)) (not ((_ is ElementMatch!20337) r!14126)) (not ((_ is Union!20337) r!14126)) ((_ is Star!20337) r!14126)))))

(declare-fun b!7624697 () Bool)

(declare-datatypes ((Unit!167588 0))(
  ( (Unit!167589) )
))
(declare-fun e!4533467 () Unit!167588)

(declare-fun Unit!167590 () Unit!167588)

(assert (=> b!7624697 (= e!4533467 Unit!167590)))

(declare-fun b!7624698 () Bool)

(declare-fun e!4533470 () Bool)

(declare-fun tp!2226122 () Bool)

(declare-fun tp!2226119 () Bool)

(assert (=> b!7624698 (= e!4533470 (and tp!2226122 tp!2226119))))

(declare-fun b!7624699 () Bool)

(declare-fun tp!2226121 () Bool)

(assert (=> b!7624699 (= e!4533470 tp!2226121)))

(declare-fun b!7624700 () Bool)

(declare-fun tp!2226118 () Bool)

(declare-fun tp!2226120 () Bool)

(assert (=> b!7624700 (= e!4533470 (and tp!2226118 tp!2226120))))

(declare-fun b!7624702 () Bool)

(declare-fun Unit!167591 () Unit!167588)

(assert (=> b!7624702 (= e!4533467 Unit!167591)))

(declare-fun lt!2657608 () Unit!167588)

(declare-fun lemmaStarAppConcat!18 (Regex!20337 List!73190) Unit!167588)

(assert (=> b!7624702 (= lt!2657608 (lemmaStarAppConcat!18 (reg!20666 r!14126) s!9605))))

(declare-fun matchR!9844 (Regex!20337 List!73190) Bool)

(assert (=> b!7624702 (matchR!9844 (Concat!29182 (reg!20666 r!14126) r!14126) s!9605)))

(declare-fun lt!2657604 () Unit!167588)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!250 (Regex!20337 Regex!20337 List!73190) Unit!167588)

(assert (=> b!7624702 (= lt!2657604 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!250 (reg!20666 r!14126) r!14126 s!9605))))

(assert (=> b!7624702 false))

(declare-fun res!3053043 () Bool)

(declare-fun e!4533469 () Bool)

(assert (=> b!7624703 (=> res!3053043 e!4533469)))

(declare-fun Exists!4493 (Int) Bool)

(assert (=> b!7624703 (= res!3053043 (not (Exists!4493 lambda!468673)))))

(declare-fun e!4533471 () Bool)

(assert (=> b!7624704 (= e!4533468 (not e!4533471))))

(declare-fun res!3053047 () Bool)

(assert (=> b!7624704 (=> res!3053047 e!4533471)))

(declare-fun lt!2657605 () Bool)

(assert (=> b!7624704 (= res!3053047 lt!2657605)))

(assert (=> b!7624704 (= lt!2657605 (Exists!4493 lambda!468672))))

(declare-datatypes ((tuple2!69236 0))(
  ( (tuple2!69237 (_1!37921 List!73190) (_2!37921 List!73190)) )
))
(declare-datatypes ((Option!17412 0))(
  ( (None!17411) (Some!17411 (v!54546 tuple2!69236)) )
))
(declare-fun isDefined!14028 (Option!17412) Bool)

(declare-fun findConcatSeparation!3442 (Regex!20337 Regex!20337 List!73190 List!73190 List!73190) Option!17412)

(assert (=> b!7624704 (= lt!2657605 (isDefined!14028 (findConcatSeparation!3442 (reg!20666 r!14126) r!14126 Nil!73066 s!9605 s!9605)))))

(declare-fun lt!2657607 () Unit!167588)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3200 (Regex!20337 Regex!20337 List!73190) Unit!167588)

(assert (=> b!7624704 (= lt!2657607 (lemmaFindConcatSeparationEquivalentToExists!3200 (reg!20666 r!14126) r!14126 s!9605))))

(declare-fun b!7624705 () Bool)

(assert (=> b!7624705 (= e!4533469 true)))

(declare-fun lt!2657603 () tuple2!69236)

(declare-fun pickWitness!450 (Int) tuple2!69236)

(assert (=> b!7624705 (= lt!2657603 (pickWitness!450 lambda!468673))))

(declare-fun b!7624701 () Bool)

(assert (=> b!7624701 (= e!4533471 e!4533469)))

(declare-fun res!3053046 () Bool)

(assert (=> b!7624701 (=> res!3053046 e!4533469)))

(assert (=> b!7624701 (= res!3053046 (Exists!4493 lambda!468672))))

(declare-fun lt!2657606 () Unit!167588)

(assert (=> b!7624701 (= lt!2657606 e!4533467)))

(declare-fun c!1405033 () Bool)

(assert (=> b!7624701 (= c!1405033 (matchR!9844 r!14126 s!9605))))

(declare-fun res!3053044 () Bool)

(assert (=> start!734336 (=> (not res!3053044) (not e!4533468))))

(declare-fun validRegex!10757 (Regex!20337) Bool)

(assert (=> start!734336 (= res!3053044 (validRegex!10757 r!14126))))

(assert (=> start!734336 e!4533468))

(assert (=> start!734336 e!4533470))

(declare-fun e!4533466 () Bool)

(assert (=> start!734336 e!4533466))

(declare-fun b!7624706 () Bool)

(declare-fun tp_is_empty!51029 () Bool)

(declare-fun tp!2226123 () Bool)

(assert (=> b!7624706 (= e!4533466 (and tp_is_empty!51029 tp!2226123))))

(declare-fun b!7624707 () Bool)

(assert (=> b!7624707 (= e!4533470 tp_is_empty!51029)))

(assert (= (and start!734336 res!3053044) b!7624696))

(assert (= (and b!7624696 res!3053045) b!7624695))

(assert (= (and b!7624695 res!3053048) b!7624704))

(assert (= (and b!7624704 (not res!3053047)) b!7624701))

(assert (= (and b!7624701 c!1405033) b!7624702))

(assert (= (and b!7624701 (not c!1405033)) b!7624697))

(assert (= (and b!7624701 (not res!3053046)) b!7624703))

(assert (= (and b!7624703 (not res!3053043)) b!7624705))

(assert (= (and start!734336 ((_ is ElementMatch!20337) r!14126)) b!7624707))

(assert (= (and start!734336 ((_ is Concat!29182) r!14126)) b!7624700))

(assert (= (and start!734336 ((_ is Star!20337) r!14126)) b!7624699))

(assert (= (and start!734336 ((_ is Union!20337) r!14126)) b!7624698))

(assert (= (and start!734336 ((_ is Cons!73066) s!9605)) b!7624706))

(declare-fun m!8154782 () Bool)

(assert (=> b!7624701 m!8154782))

(declare-fun m!8154784 () Bool)

(assert (=> b!7624701 m!8154784))

(declare-fun m!8154786 () Bool)

(assert (=> b!7624702 m!8154786))

(declare-fun m!8154788 () Bool)

(assert (=> b!7624702 m!8154788))

(declare-fun m!8154790 () Bool)

(assert (=> b!7624702 m!8154790))

(declare-fun m!8154792 () Bool)

(assert (=> b!7624703 m!8154792))

(assert (=> b!7624704 m!8154782))

(declare-fun m!8154794 () Bool)

(assert (=> b!7624704 m!8154794))

(assert (=> b!7624704 m!8154794))

(declare-fun m!8154796 () Bool)

(assert (=> b!7624704 m!8154796))

(declare-fun m!8154798 () Bool)

(assert (=> b!7624704 m!8154798))

(declare-fun m!8154800 () Bool)

(assert (=> b!7624705 m!8154800))

(declare-fun m!8154802 () Bool)

(assert (=> start!734336 m!8154802))

(declare-fun m!8154804 () Bool)

(assert (=> b!7624695 m!8154804))

(check-sat (not b!7624698) (not b!7624701) (not b!7624704) (not b!7624700) (not b!7624699) tp_is_empty!51029 (not b!7624705) (not b!7624695) (not start!734336) (not b!7624706) (not b!7624702) (not b!7624703))
(check-sat)
