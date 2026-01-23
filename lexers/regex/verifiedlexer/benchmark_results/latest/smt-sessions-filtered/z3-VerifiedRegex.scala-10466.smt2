; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540500 () Bool)

(assert start!540500)

(declare-fun b!5120845 () Bool)

(declare-fun e!3193721 () Bool)

(declare-fun tp!1428627 () Bool)

(assert (=> b!5120845 (= e!3193721 tp!1428627)))

(declare-fun b!5120846 () Bool)

(declare-fun res!2180440 () Bool)

(declare-fun e!3193722 () Bool)

(assert (=> b!5120846 (=> res!2180440 e!3193722)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28712 0))(
  ( (C!28713 (val!24008 Int)) )
))
(declare-datatypes ((Regex!14223 0))(
  ( (ElementMatch!14223 (c!880001 C!28712)) (Concat!23068 (regOne!28958 Regex!14223) (regTwo!28958 Regex!14223)) (EmptyExpr!14223) (Star!14223 (reg!14552 Regex!14223)) (EmptyLang!14223) (Union!14223 (regOne!28959 Regex!14223) (regTwo!28959 Regex!14223)) )
))
(declare-datatypes ((List!59367 0))(
  ( (Nil!59243) (Cons!59243 (h!65691 Regex!14223) (t!372386 List!59367)) )
))
(declare-datatypes ((Context!7214 0))(
  ( (Context!7215 (exprs!4107 List!59367)) )
))
(declare-fun z!4463 () (InoxSet Context!7214))

(declare-datatypes ((List!59368 0))(
  ( (Nil!59244) (Cons!59244 (h!65692 C!28712) (t!372387 List!59368)) )
))
(declare-fun testedP!265 () List!59368)

(declare-fun baseZ!46 () (InoxSet Context!7214))

(declare-fun derivationZipper!120 ((InoxSet Context!7214) List!59368) (InoxSet Context!7214))

(assert (=> b!5120846 (= res!2180440 (not (= (derivationZipper!120 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5120847 () Bool)

(declare-fun lt!2111127 () Int)

(declare-fun lt!2111124 () Int)

(assert (=> b!5120847 (= e!3193722 (>= lt!2111127 lt!2111124))))

(declare-fun lt!2111125 () Int)

(assert (=> b!5120847 (>= lt!2111127 lt!2111125)))

(declare-fun input!5745 () List!59368)

(declare-fun size!39529 (List!59368) Int)

(declare-datatypes ((tuple2!63636 0))(
  ( (tuple2!63637 (_1!35121 List!59368) (_2!35121 List!59368)) )
))
(declare-fun findLongestMatchInnerZipper!199 ((InoxSet Context!7214) List!59368 Int List!59368 List!59368 Int) tuple2!63636)

(declare-fun getSuffix!3300 (List!59368 List!59368) List!59368)

(assert (=> b!5120847 (= lt!2111127 (size!39529 (_1!35121 (findLongestMatchInnerZipper!199 z!4463 testedP!265 lt!2111125 (getSuffix!3300 input!5745 testedP!265) input!5745 (size!39529 input!5745)))))))

(declare-datatypes ((Unit!150381 0))(
  ( (Unit!150382) )
))
(declare-fun lt!2111123 () Unit!150381)

(declare-fun lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!16 ((InoxSet Context!7214) (InoxSet Context!7214) List!59368 List!59368) Unit!150381)

(assert (=> b!5120847 (= lt!2111123 (lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!16 baseZ!46 z!4463 input!5745 testedP!265))))

(declare-fun knownP!20 () List!59368)

(assert (=> b!5120847 (= testedP!265 knownP!20)))

(declare-fun lt!2111126 () Unit!150381)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1348 (List!59368 List!59368 List!59368) Unit!150381)

(assert (=> b!5120847 (= lt!2111126 (lemmaIsPrefixSameLengthThenSameList!1348 testedP!265 knownP!20 input!5745))))

(declare-fun b!5120848 () Bool)

(declare-fun e!3193720 () Bool)

(declare-fun tp!1428630 () Bool)

(assert (=> b!5120848 (= e!3193720 tp!1428630)))

(declare-fun setElem!30388 () Context!7214)

(declare-fun setRes!30388 () Bool)

(declare-fun tp!1428625 () Bool)

(declare-fun setNonEmpty!30387 () Bool)

(declare-fun inv!78738 (Context!7214) Bool)

(assert (=> setNonEmpty!30387 (= setRes!30388 (and tp!1428625 (inv!78738 setElem!30388) e!3193721))))

(declare-fun setRest!30387 () (InoxSet Context!7214))

(assert (=> setNonEmpty!30387 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7214 Bool)) false) setElem!30388 true) setRest!30387))))

(declare-fun b!5120849 () Bool)

(declare-fun e!3193717 () Bool)

(declare-fun tp_is_empty!37719 () Bool)

(declare-fun tp!1428628 () Bool)

(assert (=> b!5120849 (= e!3193717 (and tp_is_empty!37719 tp!1428628))))

(declare-fun setIsEmpty!30387 () Bool)

(declare-fun setRes!30387 () Bool)

(assert (=> setIsEmpty!30387 setRes!30387))

(declare-fun b!5120850 () Bool)

(declare-fun res!2180444 () Bool)

(declare-fun e!3193719 () Bool)

(assert (=> b!5120850 (=> (not res!2180444) (not e!3193719))))

(declare-fun matchZipper!891 ((InoxSet Context!7214) List!59368) Bool)

(assert (=> b!5120850 (= res!2180444 (matchZipper!891 baseZ!46 knownP!20))))

(declare-fun b!5120851 () Bool)

(declare-fun e!3193723 () Bool)

(assert (=> b!5120851 (= e!3193723 e!3193719)))

(declare-fun res!2180439 () Bool)

(assert (=> b!5120851 (=> (not res!2180439) (not e!3193719))))

(assert (=> b!5120851 (= res!2180439 (>= lt!2111124 lt!2111125))))

(assert (=> b!5120851 (= lt!2111125 (size!39529 testedP!265))))

(assert (=> b!5120851 (= lt!2111124 (size!39529 knownP!20))))

(declare-fun setNonEmpty!30388 () Bool)

(declare-fun tp!1428626 () Bool)

(declare-fun setElem!30387 () Context!7214)

(assert (=> setNonEmpty!30388 (= setRes!30387 (and tp!1428626 (inv!78738 setElem!30387) e!3193720))))

(declare-fun setRest!30388 () (InoxSet Context!7214))

(assert (=> setNonEmpty!30388 (= z!4463 ((_ map or) (store ((as const (Array Context!7214 Bool)) false) setElem!30387 true) setRest!30388))))

(declare-fun b!5120852 () Bool)

(declare-fun res!2180437 () Bool)

(assert (=> b!5120852 (=> (not res!2180437) (not e!3193723))))

(declare-fun isPrefix!5628 (List!59368 List!59368) Bool)

(assert (=> b!5120852 (= res!2180437 (isPrefix!5628 knownP!20 input!5745))))

(declare-fun res!2180441 () Bool)

(assert (=> start!540500 (=> (not res!2180441) (not e!3193723))))

(assert (=> start!540500 (= res!2180441 (isPrefix!5628 testedP!265 input!5745))))

(assert (=> start!540500 e!3193723))

(declare-fun e!3193716 () Bool)

(assert (=> start!540500 e!3193716))

(declare-fun condSetEmpty!30387 () Bool)

(assert (=> start!540500 (= condSetEmpty!30387 (= z!4463 ((as const (Array Context!7214 Bool)) false)))))

(assert (=> start!540500 setRes!30387))

(declare-fun e!3193718 () Bool)

(assert (=> start!540500 e!3193718))

(declare-fun condSetEmpty!30388 () Bool)

(assert (=> start!540500 (= condSetEmpty!30388 (= baseZ!46 ((as const (Array Context!7214 Bool)) false)))))

(assert (=> start!540500 setRes!30388))

(assert (=> start!540500 e!3193717))

(declare-fun b!5120853 () Bool)

(declare-fun res!2180443 () Bool)

(assert (=> b!5120853 (=> res!2180443 e!3193722)))

(assert (=> b!5120853 (= res!2180443 (not (= lt!2111125 lt!2111124)))))

(declare-fun b!5120854 () Bool)

(assert (=> b!5120854 (= e!3193719 (not e!3193722))))

(declare-fun res!2180442 () Bool)

(assert (=> b!5120854 (=> res!2180442 e!3193722)))

(assert (=> b!5120854 (= res!2180442 (not (matchZipper!891 z!4463 (getSuffix!3300 knownP!20 testedP!265))))))

(assert (=> b!5120854 (isPrefix!5628 testedP!265 knownP!20)))

(declare-fun lt!2111128 () Unit!150381)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!763 (List!59368 List!59368 List!59368) Unit!150381)

(assert (=> b!5120854 (= lt!2111128 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!763 knownP!20 testedP!265 input!5745))))

(declare-fun b!5120855 () Bool)

(declare-fun tp!1428629 () Bool)

(assert (=> b!5120855 (= e!3193716 (and tp_is_empty!37719 tp!1428629))))

(declare-fun setIsEmpty!30388 () Bool)

(assert (=> setIsEmpty!30388 setRes!30388))

(declare-fun b!5120856 () Bool)

(declare-fun res!2180438 () Bool)

(assert (=> b!5120856 (=> res!2180438 e!3193722)))

(declare-fun lostCauseZipper!1105 ((InoxSet Context!7214)) Bool)

(assert (=> b!5120856 (= res!2180438 (lostCauseZipper!1105 z!4463))))

(declare-fun b!5120857 () Bool)

(declare-fun tp!1428631 () Bool)

(assert (=> b!5120857 (= e!3193718 (and tp_is_empty!37719 tp!1428631))))

(assert (= (and start!540500 res!2180441) b!5120852))

(assert (= (and b!5120852 res!2180437) b!5120851))

(assert (= (and b!5120851 res!2180439) b!5120850))

(assert (= (and b!5120850 res!2180444) b!5120854))

(assert (= (and b!5120854 (not res!2180442)) b!5120846))

(assert (= (and b!5120846 (not res!2180440)) b!5120856))

(assert (= (and b!5120856 (not res!2180438)) b!5120853))

(assert (= (and b!5120853 (not res!2180443)) b!5120847))

(get-info :version)

(assert (= (and start!540500 ((_ is Cons!59244) input!5745)) b!5120855))

(assert (= (and start!540500 condSetEmpty!30387) setIsEmpty!30387))

(assert (= (and start!540500 (not condSetEmpty!30387)) setNonEmpty!30388))

(assert (= setNonEmpty!30388 b!5120848))

(assert (= (and start!540500 ((_ is Cons!59244) testedP!265)) b!5120857))

(assert (= (and start!540500 condSetEmpty!30388) setIsEmpty!30388))

(assert (= (and start!540500 (not condSetEmpty!30388)) setNonEmpty!30387))

(assert (= setNonEmpty!30387 b!5120845))

(assert (= (and start!540500 ((_ is Cons!59244) knownP!20)) b!5120849))

(declare-fun m!6181836 () Bool)

(assert (=> b!5120846 m!6181836))

(declare-fun m!6181838 () Bool)

(assert (=> b!5120852 m!6181838))

(declare-fun m!6181840 () Bool)

(assert (=> start!540500 m!6181840))

(declare-fun m!6181842 () Bool)

(assert (=> b!5120851 m!6181842))

(declare-fun m!6181844 () Bool)

(assert (=> b!5120851 m!6181844))

(declare-fun m!6181846 () Bool)

(assert (=> setNonEmpty!30387 m!6181846))

(declare-fun m!6181848 () Bool)

(assert (=> b!5120856 m!6181848))

(declare-fun m!6181850 () Bool)

(assert (=> b!5120850 m!6181850))

(declare-fun m!6181852 () Bool)

(assert (=> b!5120854 m!6181852))

(assert (=> b!5120854 m!6181852))

(declare-fun m!6181854 () Bool)

(assert (=> b!5120854 m!6181854))

(declare-fun m!6181856 () Bool)

(assert (=> b!5120854 m!6181856))

(declare-fun m!6181858 () Bool)

(assert (=> b!5120854 m!6181858))

(declare-fun m!6181860 () Bool)

(assert (=> setNonEmpty!30388 m!6181860))

(declare-fun m!6181862 () Bool)

(assert (=> b!5120847 m!6181862))

(declare-fun m!6181864 () Bool)

(assert (=> b!5120847 m!6181864))

(declare-fun m!6181866 () Bool)

(assert (=> b!5120847 m!6181866))

(assert (=> b!5120847 m!6181862))

(assert (=> b!5120847 m!6181864))

(declare-fun m!6181868 () Bool)

(assert (=> b!5120847 m!6181868))

(declare-fun m!6181870 () Bool)

(assert (=> b!5120847 m!6181870))

(declare-fun m!6181872 () Bool)

(assert (=> b!5120847 m!6181872))

(check-sat (not b!5120852) (not b!5120851) (not b!5120856) (not b!5120855) (not b!5120857) (not b!5120850) (not b!5120849) (not b!5120848) (not setNonEmpty!30388) (not setNonEmpty!30387) (not b!5120854) (not b!5120846) (not b!5120847) (not b!5120845) (not start!540500) tp_is_empty!37719)
(check-sat)
