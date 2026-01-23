; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281450 () Bool)

(assert start!281450)

(declare-fun res!1194425 () Bool)

(declare-fun e!1823459 () Bool)

(assert (=> start!281450 (=> (not res!1194425) (not e!1823459))))

(declare-datatypes ((C!17748 0))(
  ( (C!17749 (val!10908 Int)) )
))
(declare-datatypes ((Regex!8783 0))(
  ( (ElementMatch!8783 (c!468264 C!17748)) (Concat!14104 (regOne!18078 Regex!8783) (regTwo!18078 Regex!8783)) (EmptyExpr!8783) (Star!8783 (reg!9112 Regex!8783)) (EmptyLang!8783) (Union!8783 (regOne!18079 Regex!8783) (regTwo!18079 Regex!8783)) )
))
(declare-fun r!23079 () Regex!8783)

(declare-fun validRegex!3556 (Regex!8783) Bool)

(assert (=> start!281450 (= res!1194425 (validRegex!3556 r!23079))))

(assert (=> start!281450 e!1823459))

(declare-fun e!1823460 () Bool)

(assert (=> start!281450 e!1823460))

(declare-fun b!2882696 () Bool)

(declare-fun res!1194431 () Bool)

(assert (=> b!2882696 (=> (not res!1194431) (not e!1823459))))

(get-info :version)

(assert (=> b!2882696 (= res!1194431 (and (not ((_ is EmptyExpr!8783) r!23079)) (not ((_ is EmptyLang!8783) r!23079)) (not ((_ is ElementMatch!8783) r!23079)) (not ((_ is Star!8783) r!23079)) ((_ is Union!8783) r!23079)))))

(declare-fun b!2882697 () Bool)

(declare-fun res!1194426 () Bool)

(assert (=> b!2882697 (=> (not res!1194426) (not e!1823459))))

(declare-datatypes ((List!34584 0))(
  ( (Nil!34460) (Cons!34460 (h!39880 C!17748) (t!233627 List!34584)) )
))
(declare-datatypes ((Option!6456 0))(
  ( (None!6455) (Some!6455 (v!34581 List!34584)) )
))
(declare-fun getLanguageWitness!490 (Regex!8783) Option!6456)

(assert (=> b!2882697 (= res!1194426 (not ((_ is Some!6455) (getLanguageWitness!490 (regOne!18079 r!23079)))))))

(declare-fun b!2882698 () Bool)

(declare-fun e!1823458 () Bool)

(assert (=> b!2882698 (= e!1823459 (not e!1823458))))

(declare-fun res!1194430 () Bool)

(assert (=> b!2882698 (=> res!1194430 e!1823458)))

(declare-fun lt!1020138 () Option!6456)

(declare-fun isDefined!5020 (Option!6456) Bool)

(assert (=> b!2882698 (= res!1194430 (not (isDefined!5020 lt!1020138)))))

(declare-fun lt!1020142 () List!34584)

(declare-fun matchR!3769 (Regex!8783 List!34584) Bool)

(assert (=> b!2882698 (matchR!3769 (regTwo!18079 r!23079) lt!1020142)))

(declare-fun get!10393 (Option!6456) List!34584)

(assert (=> b!2882698 (= lt!1020142 (get!10393 lt!1020138))))

(declare-datatypes ((Unit!48043 0))(
  ( (Unit!48044) )
))
(declare-fun lt!1020139 () Unit!48043)

(declare-fun lemmaGetWitnessMatches!76 (Regex!8783) Unit!48043)

(assert (=> b!2882698 (= lt!1020139 (lemmaGetWitnessMatches!76 (regTwo!18079 r!23079)))))

(assert (=> b!2882698 (= lt!1020138 (getLanguageWitness!490 (regTwo!18079 r!23079)))))

(declare-fun b!2882699 () Bool)

(declare-fun res!1194427 () Bool)

(assert (=> b!2882699 (=> (not res!1194427) (not e!1823459))))

(assert (=> b!2882699 (= res!1194427 (isDefined!5020 (getLanguageWitness!490 r!23079)))))

(declare-fun b!2882700 () Bool)

(declare-fun tp!924626 () Bool)

(declare-fun tp!924627 () Bool)

(assert (=> b!2882700 (= e!1823460 (and tp!924626 tp!924627))))

(declare-fun b!2882701 () Bool)

(declare-fun e!1823461 () Bool)

(assert (=> b!2882701 (= e!1823458 e!1823461)))

(declare-fun res!1194429 () Bool)

(assert (=> b!2882701 (=> res!1194429 e!1823461)))

(assert (=> b!2882701 (= res!1194429 (not (validRegex!3556 (regTwo!18079 r!23079))))))

(assert (=> b!2882701 (matchR!3769 (Union!8783 (regTwo!18079 r!23079) (regOne!18079 r!23079)) lt!1020142)))

(declare-fun lt!1020140 () Unit!48043)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!40 (Regex!8783 Regex!8783 List!34584) Unit!48043)

(assert (=> b!2882701 (= lt!1020140 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!40 (regTwo!18079 r!23079) (regOne!18079 r!23079) lt!1020142))))

(declare-fun b!2882702 () Bool)

(assert (=> b!2882702 (= e!1823461 true)))

(assert (=> b!2882702 (matchR!3769 r!23079 lt!1020142)))

(declare-fun lt!1020141 () Unit!48043)

(declare-fun lemmaReversedUnionAcceptsSameString!12 (Regex!8783 Regex!8783 List!34584) Unit!48043)

(assert (=> b!2882702 (= lt!1020141 (lemmaReversedUnionAcceptsSameString!12 (regTwo!18079 r!23079) (regOne!18079 r!23079) lt!1020142))))

(declare-fun b!2882703 () Bool)

(declare-fun tp!924625 () Bool)

(assert (=> b!2882703 (= e!1823460 tp!924625)))

(declare-fun b!2882704 () Bool)

(declare-fun res!1194428 () Bool)

(assert (=> b!2882704 (=> res!1194428 e!1823461)))

(assert (=> b!2882704 (= res!1194428 (not (validRegex!3556 (regOne!18079 r!23079))))))

(declare-fun b!2882705 () Bool)

(declare-fun tp!924628 () Bool)

(declare-fun tp!924629 () Bool)

(assert (=> b!2882705 (= e!1823460 (and tp!924628 tp!924629))))

(declare-fun b!2882706 () Bool)

(declare-fun tp_is_empty!15153 () Bool)

(assert (=> b!2882706 (= e!1823460 tp_is_empty!15153)))

(assert (= (and start!281450 res!1194425) b!2882699))

(assert (= (and b!2882699 res!1194427) b!2882696))

(assert (= (and b!2882696 res!1194431) b!2882697))

(assert (= (and b!2882697 res!1194426) b!2882698))

(assert (= (and b!2882698 (not res!1194430)) b!2882701))

(assert (= (and b!2882701 (not res!1194429)) b!2882704))

(assert (= (and b!2882704 (not res!1194428)) b!2882702))

(assert (= (and start!281450 ((_ is ElementMatch!8783) r!23079)) b!2882706))

(assert (= (and start!281450 ((_ is Concat!14104) r!23079)) b!2882700))

(assert (= (and start!281450 ((_ is Star!8783) r!23079)) b!2882703))

(assert (= (and start!281450 ((_ is Union!8783) r!23079)) b!2882705))

(declare-fun m!3299669 () Bool)

(assert (=> b!2882704 m!3299669))

(declare-fun m!3299671 () Bool)

(assert (=> start!281450 m!3299671))

(declare-fun m!3299673 () Bool)

(assert (=> b!2882699 m!3299673))

(assert (=> b!2882699 m!3299673))

(declare-fun m!3299675 () Bool)

(assert (=> b!2882699 m!3299675))

(declare-fun m!3299677 () Bool)

(assert (=> b!2882697 m!3299677))

(declare-fun m!3299679 () Bool)

(assert (=> b!2882698 m!3299679))

(declare-fun m!3299681 () Bool)

(assert (=> b!2882698 m!3299681))

(declare-fun m!3299683 () Bool)

(assert (=> b!2882698 m!3299683))

(declare-fun m!3299685 () Bool)

(assert (=> b!2882698 m!3299685))

(declare-fun m!3299687 () Bool)

(assert (=> b!2882698 m!3299687))

(declare-fun m!3299689 () Bool)

(assert (=> b!2882701 m!3299689))

(declare-fun m!3299691 () Bool)

(assert (=> b!2882701 m!3299691))

(declare-fun m!3299693 () Bool)

(assert (=> b!2882701 m!3299693))

(declare-fun m!3299695 () Bool)

(assert (=> b!2882702 m!3299695))

(declare-fun m!3299697 () Bool)

(assert (=> b!2882702 m!3299697))

(check-sat (not b!2882702) (not b!2882699) (not b!2882698) (not b!2882700) (not b!2882704) (not b!2882701) (not start!281450) (not b!2882705) (not b!2882697) tp_is_empty!15153 (not b!2882703))
(check-sat)
