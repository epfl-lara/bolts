; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538804 () Bool)

(assert start!538804)

(declare-fun setIsEmpty!29633 () Bool)

(declare-fun setRes!29633 () Bool)

(assert (=> setIsEmpty!29633 setRes!29633))

(declare-fun setNonEmpty!29633 () Bool)

(declare-fun setRes!29634 () Bool)

(declare-fun e!3186863 () Bool)

(declare-datatypes ((C!28524 0))(
  ( (C!28525 (val!23914 Int)) )
))
(declare-datatypes ((Regex!14129 0))(
  ( (ElementMatch!14129 (c!877817 C!28524)) (Concat!22974 (regOne!28770 Regex!14129) (regTwo!28770 Regex!14129)) (EmptyExpr!14129) (Star!14129 (reg!14458 Regex!14129)) (EmptyLang!14129) (Union!14129 (regOne!28771 Regex!14129) (regTwo!28771 Regex!14129)) )
))
(declare-datatypes ((List!59136 0))(
  ( (Nil!59012) (Cons!59012 (h!65460 Regex!14129) (t!372137 List!59136)) )
))
(declare-datatypes ((Context!7026 0))(
  ( (Context!7027 (exprs!4013 List!59136)) )
))
(declare-fun setElem!29634 () Context!7026)

(declare-fun tp!1425493 () Bool)

(declare-fun inv!78503 (Context!7026) Bool)

(assert (=> setNonEmpty!29633 (= setRes!29634 (and tp!1425493 (inv!78503 setElem!29634) e!3186863))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4463 () (InoxSet Context!7026))

(declare-fun setRest!29634 () (InoxSet Context!7026))

(assert (=> setNonEmpty!29633 (= z!4463 ((_ map or) (store ((as const (Array Context!7026 Bool)) false) setElem!29634 true) setRest!29634))))

(declare-fun b!5109614 () Bool)

(declare-fun e!3186860 () Bool)

(declare-fun tp_is_empty!37531 () Bool)

(declare-fun tp!1425489 () Bool)

(assert (=> b!5109614 (= e!3186860 (and tp_is_empty!37531 tp!1425489))))

(declare-fun b!5109615 () Bool)

(declare-fun res!2174849 () Bool)

(declare-fun e!3186862 () Bool)

(assert (=> b!5109615 (=> (not res!2174849) (not e!3186862))))

(declare-fun baseZ!46 () (InoxSet Context!7026))

(declare-datatypes ((List!59137 0))(
  ( (Nil!59013) (Cons!59013 (h!65461 C!28524) (t!372138 List!59137)) )
))
(declare-fun knownP!20 () List!59137)

(declare-fun matchZipper!797 ((InoxSet Context!7026) List!59137) Bool)

(assert (=> b!5109615 (= res!2174849 (matchZipper!797 baseZ!46 knownP!20))))

(declare-fun b!5109616 () Bool)

(declare-fun e!3186857 () Bool)

(declare-fun tp!1425491 () Bool)

(assert (=> b!5109616 (= e!3186857 tp!1425491)))

(declare-fun b!5109617 () Bool)

(declare-fun e!3186858 () Bool)

(declare-fun tp!1425492 () Bool)

(assert (=> b!5109617 (= e!3186858 (and tp_is_empty!37531 tp!1425492))))

(declare-fun b!5109618 () Bool)

(declare-fun tp!1425490 () Bool)

(assert (=> b!5109618 (= e!3186863 tp!1425490)))

(declare-fun b!5109619 () Bool)

(declare-fun e!3186855 () Bool)

(assert (=> b!5109619 (= e!3186855 true)))

(declare-fun lt!2104281 () List!59137)

(declare-fun testedP!265 () List!59137)

(declare-fun lt!2104282 () List!59137)

(declare-fun ++!12958 (List!59137 List!59137) List!59137)

(assert (=> b!5109619 (= lt!2104281 (++!12958 testedP!265 lt!2104282))))

(declare-fun b!5109620 () Bool)

(declare-fun e!3186861 () Bool)

(assert (=> b!5109620 (= e!3186862 (not e!3186861))))

(declare-fun res!2174848 () Bool)

(assert (=> b!5109620 (=> res!2174848 e!3186861)))

(declare-fun getSuffix!3208 (List!59137 List!59137) List!59137)

(assert (=> b!5109620 (= res!2174848 (not (matchZipper!797 z!4463 (getSuffix!3208 knownP!20 testedP!265))))))

(declare-fun isPrefix!5534 (List!59137 List!59137) Bool)

(assert (=> b!5109620 (isPrefix!5534 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150111 0))(
  ( (Unit!150112) )
))
(declare-fun lt!2104286 () Unit!150111)

(declare-fun input!5745 () List!59137)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!671 (List!59137 List!59137 List!59137) Unit!150111)

(assert (=> b!5109620 (= lt!2104286 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!671 knownP!20 testedP!265 input!5745))))

(declare-fun b!5109621 () Bool)

(declare-fun res!2174847 () Bool)

(declare-fun e!3186859 () Bool)

(assert (=> b!5109621 (=> (not res!2174847) (not e!3186859))))

(assert (=> b!5109621 (= res!2174847 (isPrefix!5534 knownP!20 input!5745))))

(declare-fun b!5109622 () Bool)

(declare-fun res!2174850 () Bool)

(assert (=> b!5109622 (=> res!2174850 e!3186861)))

(declare-fun lostCauseZipper!1015 ((InoxSet Context!7026)) Bool)

(assert (=> b!5109622 (= res!2174850 (lostCauseZipper!1015 z!4463))))

(declare-fun setIsEmpty!29634 () Bool)

(assert (=> setIsEmpty!29634 setRes!29634))

(declare-fun b!5109623 () Bool)

(assert (=> b!5109623 (= e!3186861 e!3186855)))

(declare-fun res!2174842 () Bool)

(assert (=> b!5109623 (=> res!2174842 e!3186855)))

(declare-fun lt!2104285 () Int)

(declare-fun lt!2104279 () Int)

(assert (=> b!5109623 (= res!2174842 (< lt!2104285 lt!2104279))))

(declare-fun lt!2104284 () Int)

(assert (=> b!5109623 (>= lt!2104285 lt!2104284)))

(declare-fun size!39435 (List!59137) Int)

(declare-datatypes ((tuple2!63616 0))(
  ( (tuple2!63617 (_1!35111 List!59137) (_2!35111 List!59137)) )
))
(declare-fun findLongestMatchInnerZipper!189 ((InoxSet Context!7026) List!59137 Int List!59137 List!59137 Int) tuple2!63616)

(assert (=> b!5109623 (= lt!2104285 (size!39435 (_1!35111 (findLongestMatchInnerZipper!189 z!4463 testedP!265 lt!2104284 lt!2104282 input!5745 (size!39435 input!5745)))))))

(assert (=> b!5109623 (= lt!2104282 (getSuffix!3208 input!5745 testedP!265))))

(declare-fun lt!2104280 () Unit!150111)

(declare-fun lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!14 ((InoxSet Context!7026) (InoxSet Context!7026) List!59137 List!59137) Unit!150111)

(assert (=> b!5109623 (= lt!2104280 (lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!14 baseZ!46 z!4463 input!5745 testedP!265))))

(assert (=> b!5109623 (= testedP!265 knownP!20)))

(declare-fun lt!2104283 () Unit!150111)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1342 (List!59137 List!59137 List!59137) Unit!150111)

(assert (=> b!5109623 (= lt!2104283 (lemmaIsPrefixSameLengthThenSameList!1342 testedP!265 knownP!20 input!5745))))

(declare-fun b!5109624 () Bool)

(declare-fun res!2174846 () Bool)

(assert (=> b!5109624 (=> res!2174846 e!3186861)))

(assert (=> b!5109624 (= res!2174846 (not (= lt!2104284 lt!2104279)))))

(declare-fun res!2174844 () Bool)

(assert (=> start!538804 (=> (not res!2174844) (not e!3186859))))

(assert (=> start!538804 (= res!2174844 (isPrefix!5534 testedP!265 input!5745))))

(assert (=> start!538804 e!3186859))

(assert (=> start!538804 e!3186860))

(declare-fun condSetEmpty!29634 () Bool)

(assert (=> start!538804 (= condSetEmpty!29634 (= z!4463 ((as const (Array Context!7026 Bool)) false)))))

(assert (=> start!538804 setRes!29634))

(declare-fun e!3186856 () Bool)

(assert (=> start!538804 e!3186856))

(declare-fun condSetEmpty!29633 () Bool)

(assert (=> start!538804 (= condSetEmpty!29633 (= baseZ!46 ((as const (Array Context!7026 Bool)) false)))))

(assert (=> start!538804 setRes!29633))

(assert (=> start!538804 e!3186858))

(declare-fun tp!1425487 () Bool)

(declare-fun setElem!29633 () Context!7026)

(declare-fun setNonEmpty!29634 () Bool)

(assert (=> setNonEmpty!29634 (= setRes!29633 (and tp!1425487 (inv!78503 setElem!29633) e!3186857))))

(declare-fun setRest!29633 () (InoxSet Context!7026))

(assert (=> setNonEmpty!29634 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7026 Bool)) false) setElem!29633 true) setRest!29633))))

(declare-fun b!5109625 () Bool)

(declare-fun res!2174845 () Bool)

(assert (=> b!5109625 (=> res!2174845 e!3186861)))

(declare-fun derivationZipper!28 ((InoxSet Context!7026) List!59137) (InoxSet Context!7026))

(assert (=> b!5109625 (= res!2174845 (not (= (derivationZipper!28 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5109626 () Bool)

(declare-fun tp!1425488 () Bool)

(assert (=> b!5109626 (= e!3186856 (and tp_is_empty!37531 tp!1425488))))

(declare-fun b!5109627 () Bool)

(assert (=> b!5109627 (= e!3186859 e!3186862)))

(declare-fun res!2174843 () Bool)

(assert (=> b!5109627 (=> (not res!2174843) (not e!3186862))))

(assert (=> b!5109627 (= res!2174843 (>= lt!2104279 lt!2104284))))

(assert (=> b!5109627 (= lt!2104284 (size!39435 testedP!265))))

(assert (=> b!5109627 (= lt!2104279 (size!39435 knownP!20))))

(assert (= (and start!538804 res!2174844) b!5109621))

(assert (= (and b!5109621 res!2174847) b!5109627))

(assert (= (and b!5109627 res!2174843) b!5109615))

(assert (= (and b!5109615 res!2174849) b!5109620))

(assert (= (and b!5109620 (not res!2174848)) b!5109625))

(assert (= (and b!5109625 (not res!2174845)) b!5109622))

(assert (= (and b!5109622 (not res!2174850)) b!5109624))

(assert (= (and b!5109624 (not res!2174846)) b!5109623))

(assert (= (and b!5109623 (not res!2174842)) b!5109619))

(get-info :version)

(assert (= (and start!538804 ((_ is Cons!59013) input!5745)) b!5109614))

(assert (= (and start!538804 condSetEmpty!29634) setIsEmpty!29634))

(assert (= (and start!538804 (not condSetEmpty!29634)) setNonEmpty!29633))

(assert (= setNonEmpty!29633 b!5109618))

(assert (= (and start!538804 ((_ is Cons!59013) testedP!265)) b!5109626))

(assert (= (and start!538804 condSetEmpty!29633) setIsEmpty!29633))

(assert (= (and start!538804 (not condSetEmpty!29633)) setNonEmpty!29634))

(assert (= setNonEmpty!29634 b!5109616))

(assert (= (and start!538804 ((_ is Cons!59013) knownP!20)) b!5109617))

(declare-fun m!6166826 () Bool)

(assert (=> b!5109622 m!6166826))

(declare-fun m!6166828 () Bool)

(assert (=> setNonEmpty!29633 m!6166828))

(declare-fun m!6166830 () Bool)

(assert (=> b!5109627 m!6166830))

(declare-fun m!6166832 () Bool)

(assert (=> b!5109627 m!6166832))

(declare-fun m!6166834 () Bool)

(assert (=> b!5109620 m!6166834))

(assert (=> b!5109620 m!6166834))

(declare-fun m!6166836 () Bool)

(assert (=> b!5109620 m!6166836))

(declare-fun m!6166838 () Bool)

(assert (=> b!5109620 m!6166838))

(declare-fun m!6166840 () Bool)

(assert (=> b!5109620 m!6166840))

(declare-fun m!6166842 () Bool)

(assert (=> b!5109619 m!6166842))

(declare-fun m!6166844 () Bool)

(assert (=> b!5109623 m!6166844))

(declare-fun m!6166846 () Bool)

(assert (=> b!5109623 m!6166846))

(declare-fun m!6166848 () Bool)

(assert (=> b!5109623 m!6166848))

(declare-fun m!6166850 () Bool)

(assert (=> b!5109623 m!6166850))

(assert (=> b!5109623 m!6166846))

(declare-fun m!6166852 () Bool)

(assert (=> b!5109623 m!6166852))

(declare-fun m!6166854 () Bool)

(assert (=> b!5109623 m!6166854))

(declare-fun m!6166856 () Bool)

(assert (=> setNonEmpty!29634 m!6166856))

(declare-fun m!6166858 () Bool)

(assert (=> b!5109615 m!6166858))

(declare-fun m!6166860 () Bool)

(assert (=> b!5109621 m!6166860))

(declare-fun m!6166862 () Bool)

(assert (=> start!538804 m!6166862))

(declare-fun m!6166864 () Bool)

(assert (=> b!5109625 m!6166864))

(check-sat (not b!5109619) (not b!5109626) (not b!5109617) (not b!5109625) (not b!5109621) (not b!5109627) (not b!5109623) (not start!538804) (not b!5109618) (not b!5109620) (not b!5109614) (not setNonEmpty!29633) (not b!5109622) tp_is_empty!37531 (not b!5109616) (not b!5109615) (not setNonEmpty!29634))
(check-sat)
