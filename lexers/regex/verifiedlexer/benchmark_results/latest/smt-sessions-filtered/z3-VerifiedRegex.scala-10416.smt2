; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538700 () Bool)

(assert start!538700)

(declare-fun b!5108861 () Bool)

(declare-fun res!2174571 () Bool)

(declare-fun e!3186391 () Bool)

(assert (=> b!5108861 (=> (not res!2174571) (not e!3186391))))

(declare-datatypes ((C!28512 0))(
  ( (C!28513 (val!23908 Int)) )
))
(declare-datatypes ((List!59120 0))(
  ( (Nil!58996) (Cons!58996 (h!65444 C!28512) (t!372121 List!59120)) )
))
(declare-fun knownP!20 () List!59120)

(declare-fun input!5745 () List!59120)

(declare-fun isPrefix!5528 (List!59120 List!59120) Bool)

(assert (=> b!5108861 (= res!2174571 (isPrefix!5528 knownP!20 input!5745))))

(declare-fun b!5108862 () Bool)

(declare-fun res!2174572 () Bool)

(declare-fun e!3186385 () Bool)

(assert (=> b!5108862 (=> res!2174572 e!3186385)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14123 0))(
  ( (ElementMatch!14123 (c!877621 C!28512)) (Concat!22968 (regOne!28758 Regex!14123) (regTwo!28758 Regex!14123)) (EmptyExpr!14123) (Star!14123 (reg!14452 Regex!14123)) (EmptyLang!14123) (Union!14123 (regOne!28759 Regex!14123) (regTwo!28759 Regex!14123)) )
))
(declare-datatypes ((List!59121 0))(
  ( (Nil!58997) (Cons!58997 (h!65445 Regex!14123) (t!372122 List!59121)) )
))
(declare-datatypes ((Context!7014 0))(
  ( (Context!7015 (exprs!4007 List!59121)) )
))
(declare-fun z!4463 () (InoxSet Context!7014))

(declare-fun lostCauseZipper!1009 ((InoxSet Context!7014)) Bool)

(assert (=> b!5108862 (= res!2174572 (lostCauseZipper!1009 z!4463))))

(declare-fun b!5108863 () Bool)

(declare-fun res!2174575 () Bool)

(declare-fun e!3186386 () Bool)

(assert (=> b!5108863 (=> (not res!2174575) (not e!3186386))))

(declare-fun baseZ!46 () (InoxSet Context!7014))

(declare-fun matchZipper!791 ((InoxSet Context!7014) List!59120) Bool)

(assert (=> b!5108863 (= res!2174575 (matchZipper!791 baseZ!46 knownP!20))))

(declare-fun b!5108864 () Bool)

(assert (=> b!5108864 (= e!3186385 true)))

(declare-fun lt!2103634 () List!59120)

(declare-fun testedP!265 () List!59120)

(declare-fun lt!2103636 () List!59120)

(declare-fun ++!12952 (List!59120 List!59120) List!59120)

(assert (=> b!5108864 (= lt!2103634 (++!12952 testedP!265 lt!2103636))))

(declare-fun lt!2103632 () Int)

(declare-fun size!39429 (List!59120) Int)

(declare-datatypes ((tuple2!63604 0))(
  ( (tuple2!63605 (_1!35105 List!59120) (_2!35105 List!59120)) )
))
(declare-fun findLongestMatchInnerZipper!183 ((InoxSet Context!7014) List!59120 Int List!59120 List!59120 Int) tuple2!63604)

(assert (=> b!5108864 (>= (size!39429 (_1!35105 (findLongestMatchInnerZipper!183 z!4463 testedP!265 lt!2103632 lt!2103636 input!5745 (size!39429 input!5745)))) lt!2103632)))

(declare-fun getSuffix!3202 (List!59120 List!59120) List!59120)

(assert (=> b!5108864 (= lt!2103636 (getSuffix!3202 input!5745 testedP!265))))

(declare-datatypes ((Unit!150079 0))(
  ( (Unit!150080) )
))
(declare-fun lt!2103633 () Unit!150079)

(declare-fun lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!8 ((InoxSet Context!7014) (InoxSet Context!7014) List!59120 List!59120) Unit!150079)

(assert (=> b!5108864 (= lt!2103633 (lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!8 baseZ!46 z!4463 input!5745 testedP!265))))

(assert (=> b!5108864 (= testedP!265 knownP!20)))

(declare-fun lt!2103637 () Unit!150079)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1336 (List!59120 List!59120 List!59120) Unit!150079)

(assert (=> b!5108864 (= lt!2103637 (lemmaIsPrefixSameLengthThenSameList!1336 testedP!265 knownP!20 input!5745))))

(declare-fun b!5108865 () Bool)

(declare-fun e!3186387 () Bool)

(declare-fun tp_is_empty!37519 () Bool)

(declare-fun tp!1425278 () Bool)

(assert (=> b!5108865 (= e!3186387 (and tp_is_empty!37519 tp!1425278))))

(declare-fun setIsEmpty!29581 () Bool)

(declare-fun setRes!29581 () Bool)

(assert (=> setIsEmpty!29581 setRes!29581))

(declare-fun setIsEmpty!29582 () Bool)

(declare-fun setRes!29582 () Bool)

(assert (=> setIsEmpty!29582 setRes!29582))

(declare-fun b!5108866 () Bool)

(declare-fun res!2174574 () Bool)

(assert (=> b!5108866 (=> res!2174574 e!3186385)))

(declare-fun lt!2103635 () Int)

(assert (=> b!5108866 (= res!2174574 (not (= lt!2103632 lt!2103635)))))

(declare-fun b!5108867 () Bool)

(assert (=> b!5108867 (= e!3186391 e!3186386)))

(declare-fun res!2174577 () Bool)

(assert (=> b!5108867 (=> (not res!2174577) (not e!3186386))))

(assert (=> b!5108867 (= res!2174577 (>= lt!2103635 lt!2103632))))

(assert (=> b!5108867 (= lt!2103632 (size!39429 testedP!265))))

(assert (=> b!5108867 (= lt!2103635 (size!39429 knownP!20))))

(declare-fun b!5108868 () Bool)

(assert (=> b!5108868 (= e!3186386 (not e!3186385))))

(declare-fun res!2174578 () Bool)

(assert (=> b!5108868 (=> res!2174578 e!3186385)))

(assert (=> b!5108868 (= res!2174578 (not (matchZipper!791 z!4463 (getSuffix!3202 knownP!20 testedP!265))))))

(assert (=> b!5108868 (isPrefix!5528 testedP!265 knownP!20)))

(declare-fun lt!2103638 () Unit!150079)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!665 (List!59120 List!59120 List!59120) Unit!150079)

(assert (=> b!5108868 (= lt!2103638 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!665 knownP!20 testedP!265 input!5745))))

(declare-fun b!5108869 () Bool)

(declare-fun e!3186388 () Bool)

(declare-fun tp!1425283 () Bool)

(assert (=> b!5108869 (= e!3186388 tp!1425283)))

(declare-fun b!5108870 () Bool)

(declare-fun res!2174573 () Bool)

(assert (=> b!5108870 (=> res!2174573 e!3186385)))

(declare-fun derivationZipper!22 ((InoxSet Context!7014) List!59120) (InoxSet Context!7014))

(assert (=> b!5108870 (= res!2174573 (not (= (derivationZipper!22 baseZ!46 testedP!265) z!4463)))))

(declare-fun setElem!29581 () Context!7014)

(declare-fun tp!1425282 () Bool)

(declare-fun setNonEmpty!29581 () Bool)

(declare-fun inv!78488 (Context!7014) Bool)

(assert (=> setNonEmpty!29581 (= setRes!29582 (and tp!1425282 (inv!78488 setElem!29581) e!3186388))))

(declare-fun setRest!29582 () (InoxSet Context!7014))

(assert (=> setNonEmpty!29581 (= z!4463 ((_ map or) (store ((as const (Array Context!7014 Bool)) false) setElem!29581 true) setRest!29582))))

(declare-fun res!2174576 () Bool)

(assert (=> start!538700 (=> (not res!2174576) (not e!3186391))))

(assert (=> start!538700 (= res!2174576 (isPrefix!5528 testedP!265 input!5745))))

(assert (=> start!538700 e!3186391))

(declare-fun e!3186389 () Bool)

(assert (=> start!538700 e!3186389))

(declare-fun condSetEmpty!29581 () Bool)

(assert (=> start!538700 (= condSetEmpty!29581 (= z!4463 ((as const (Array Context!7014 Bool)) false)))))

(assert (=> start!538700 setRes!29582))

(declare-fun e!3186390 () Bool)

(assert (=> start!538700 e!3186390))

(declare-fun condSetEmpty!29582 () Bool)

(assert (=> start!538700 (= condSetEmpty!29582 (= baseZ!46 ((as const (Array Context!7014 Bool)) false)))))

(assert (=> start!538700 setRes!29581))

(assert (=> start!538700 e!3186387))

(declare-fun b!5108871 () Bool)

(declare-fun tp!1425280 () Bool)

(assert (=> b!5108871 (= e!3186390 (and tp_is_empty!37519 tp!1425280))))

(declare-fun setElem!29582 () Context!7014)

(declare-fun e!3186384 () Bool)

(declare-fun setNonEmpty!29582 () Bool)

(declare-fun tp!1425277 () Bool)

(assert (=> setNonEmpty!29582 (= setRes!29581 (and tp!1425277 (inv!78488 setElem!29582) e!3186384))))

(declare-fun setRest!29581 () (InoxSet Context!7014))

(assert (=> setNonEmpty!29582 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7014 Bool)) false) setElem!29582 true) setRest!29581))))

(declare-fun b!5108872 () Bool)

(declare-fun tp!1425281 () Bool)

(assert (=> b!5108872 (= e!3186384 tp!1425281)))

(declare-fun b!5108873 () Bool)

(declare-fun tp!1425279 () Bool)

(assert (=> b!5108873 (= e!3186389 (and tp_is_empty!37519 tp!1425279))))

(assert (= (and start!538700 res!2174576) b!5108861))

(assert (= (and b!5108861 res!2174571) b!5108867))

(assert (= (and b!5108867 res!2174577) b!5108863))

(assert (= (and b!5108863 res!2174575) b!5108868))

(assert (= (and b!5108868 (not res!2174578)) b!5108870))

(assert (= (and b!5108870 (not res!2174573)) b!5108862))

(assert (= (and b!5108862 (not res!2174572)) b!5108866))

(assert (= (and b!5108866 (not res!2174574)) b!5108864))

(get-info :version)

(assert (= (and start!538700 ((_ is Cons!58996) input!5745)) b!5108873))

(assert (= (and start!538700 condSetEmpty!29581) setIsEmpty!29582))

(assert (= (and start!538700 (not condSetEmpty!29581)) setNonEmpty!29581))

(assert (= setNonEmpty!29581 b!5108869))

(assert (= (and start!538700 ((_ is Cons!58996) testedP!265)) b!5108871))

(assert (= (and start!538700 condSetEmpty!29582) setIsEmpty!29581))

(assert (= (and start!538700 (not condSetEmpty!29582)) setNonEmpty!29582))

(assert (= setNonEmpty!29582 b!5108872))

(assert (= (and start!538700 ((_ is Cons!58996) knownP!20)) b!5108865))

(declare-fun m!6166018 () Bool)

(assert (=> b!5108867 m!6166018))

(declare-fun m!6166020 () Bool)

(assert (=> b!5108867 m!6166020))

(declare-fun m!6166022 () Bool)

(assert (=> setNonEmpty!29581 m!6166022))

(declare-fun m!6166024 () Bool)

(assert (=> b!5108864 m!6166024))

(declare-fun m!6166026 () Bool)

(assert (=> b!5108864 m!6166026))

(declare-fun m!6166028 () Bool)

(assert (=> b!5108864 m!6166028))

(assert (=> b!5108864 m!6166026))

(declare-fun m!6166030 () Bool)

(assert (=> b!5108864 m!6166030))

(declare-fun m!6166032 () Bool)

(assert (=> b!5108864 m!6166032))

(declare-fun m!6166034 () Bool)

(assert (=> b!5108864 m!6166034))

(declare-fun m!6166036 () Bool)

(assert (=> b!5108864 m!6166036))

(declare-fun m!6166038 () Bool)

(assert (=> start!538700 m!6166038))

(declare-fun m!6166040 () Bool)

(assert (=> b!5108868 m!6166040))

(assert (=> b!5108868 m!6166040))

(declare-fun m!6166042 () Bool)

(assert (=> b!5108868 m!6166042))

(declare-fun m!6166044 () Bool)

(assert (=> b!5108868 m!6166044))

(declare-fun m!6166046 () Bool)

(assert (=> b!5108868 m!6166046))

(declare-fun m!6166048 () Bool)

(assert (=> b!5108870 m!6166048))

(declare-fun m!6166050 () Bool)

(assert (=> b!5108863 m!6166050))

(declare-fun m!6166052 () Bool)

(assert (=> b!5108861 m!6166052))

(declare-fun m!6166054 () Bool)

(assert (=> setNonEmpty!29582 m!6166054))

(declare-fun m!6166056 () Bool)

(assert (=> b!5108862 m!6166056))

(check-sat (not b!5108872) (not b!5108862) (not b!5108865) tp_is_empty!37519 (not b!5108873) (not b!5108869) (not b!5108871) (not setNonEmpty!29581) (not start!538700) (not b!5108861) (not b!5108868) (not setNonEmpty!29582) (not b!5108864) (not b!5108867) (not b!5108863) (not b!5108870))
(check-sat)
