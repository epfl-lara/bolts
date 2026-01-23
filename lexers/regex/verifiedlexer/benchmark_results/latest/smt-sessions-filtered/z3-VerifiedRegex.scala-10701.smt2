; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547928 () Bool)

(assert start!547928)

(declare-fun setIsEmpty!32255 () Bool)

(declare-fun setRes!32255 () Bool)

(assert (=> setIsEmpty!32255 setRes!32255))

(declare-fun b!5174420 () Bool)

(declare-fun e!3224222 () Bool)

(declare-fun tp!1451718 () Bool)

(assert (=> b!5174420 (= e!3224222 tp!1451718)))

(declare-fun b!5174421 () Bool)

(declare-fun e!3224221 () Bool)

(declare-fun e!3224223 () Bool)

(assert (=> b!5174421 (= e!3224221 (not e!3224223))))

(declare-fun res!2199069 () Bool)

(assert (=> b!5174421 (=> res!2199069 e!3224223)))

(declare-fun lt!2131425 () Int)

(declare-fun lt!2131426 () Int)

(assert (=> b!5174421 (= res!2199069 (not (= lt!2131425 lt!2131426)))))

(assert (=> b!5174421 (<= lt!2131425 lt!2131426)))

(declare-datatypes ((Unit!151908 0))(
  ( (Unit!151909) )
))
(declare-fun lt!2131424 () Unit!151908)

(declare-datatypes ((C!29568 0))(
  ( (C!29569 (val!24486 Int)) )
))
(declare-datatypes ((List!60269 0))(
  ( (Nil!60145) (Cons!60145 (h!66593 C!29568) (t!373422 List!60269)) )
))
(declare-fun testedP!294 () List!60269)

(declare-fun input!5817 () List!60269)

(declare-fun lemmaIsPrefixThenSmallerEqSize!943 (List!60269 List!60269) Unit!151908)

(assert (=> b!5174421 (= lt!2131424 (lemmaIsPrefixThenSmallerEqSize!943 testedP!294 input!5817))))

(declare-fun setIsEmpty!32256 () Bool)

(declare-fun setRes!32256 () Bool)

(assert (=> setIsEmpty!32256 setRes!32256))

(declare-fun b!5174422 () Bool)

(declare-fun res!2199070 () Bool)

(assert (=> b!5174422 (=> (not res!2199070) (not e!3224221))))

(assert (=> b!5174422 (= res!2199070 (not (= testedP!294 input!5817)))))

(declare-fun b!5174423 () Bool)

(assert (=> b!5174423 (= e!3224223 (= lt!2131426 lt!2131425))))

(declare-fun isPrefix!5782 (List!60269 List!60269) Bool)

(assert (=> b!5174423 (isPrefix!5782 input!5817 input!5817)))

(declare-fun lt!2131422 () Unit!151908)

(declare-fun lemmaIsPrefixRefl!3787 (List!60269 List!60269) Unit!151908)

(assert (=> b!5174423 (= lt!2131422 (lemmaIsPrefixRefl!3787 input!5817 input!5817))))

(declare-fun tp!1451714 () Bool)

(declare-datatypes ((Regex!14649 0))(
  ( (ElementMatch!14649 (c!890928 C!29568)) (Concat!23494 (regOne!29810 Regex!14649) (regTwo!29810 Regex!14649)) (EmptyExpr!14649) (Star!14649 (reg!14978 Regex!14649)) (EmptyLang!14649) (Union!14649 (regOne!29811 Regex!14649) (regTwo!29811 Regex!14649)) )
))
(declare-datatypes ((List!60270 0))(
  ( (Nil!60146) (Cons!60146 (h!66594 Regex!14649) (t!373423 List!60270)) )
))
(declare-datatypes ((Context!8066 0))(
  ( (Context!8067 (exprs!4533 List!60270)) )
))
(declare-fun setElem!32255 () Context!8066)

(declare-fun setNonEmpty!32255 () Bool)

(declare-fun e!3224220 () Bool)

(declare-fun inv!79869 (Context!8066) Bool)

(assert (=> setNonEmpty!32255 (= setRes!32256 (and tp!1451714 (inv!79869 setElem!32255) e!3224220))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!62 () (InoxSet Context!8066))

(declare-fun setRest!32255 () (InoxSet Context!8066))

(assert (=> setNonEmpty!32255 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8066 Bool)) false) setElem!32255 true) setRest!32255))))

(declare-fun b!5174424 () Bool)

(declare-fun e!3224219 () Bool)

(declare-fun tp_is_empty!38551 () Bool)

(declare-fun tp!1451716 () Bool)

(assert (=> b!5174424 (= e!3224219 (and tp_is_empty!38551 tp!1451716))))

(declare-fun b!5174425 () Bool)

(declare-fun res!2199071 () Bool)

(declare-fun e!3224218 () Bool)

(assert (=> b!5174425 (=> (not res!2199071) (not e!3224218))))

(declare-fun z!4581 () (InoxSet Context!8066))

(declare-fun derivationZipper!272 ((InoxSet Context!8066) List!60269) (InoxSet Context!8066))

(assert (=> b!5174425 (= res!2199071 (= (derivationZipper!272 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5174426 () Bool)

(declare-fun tp!1451715 () Bool)

(assert (=> b!5174426 (= e!3224220 tp!1451715)))

(declare-fun res!2199068 () Bool)

(assert (=> start!547928 (=> (not res!2199068) (not e!3224218))))

(assert (=> start!547928 (= res!2199068 (isPrefix!5782 testedP!294 input!5817))))

(assert (=> start!547928 e!3224218))

(declare-fun e!3224224 () Bool)

(assert (=> start!547928 e!3224224))

(assert (=> start!547928 e!3224219))

(declare-fun condSetEmpty!32256 () Bool)

(assert (=> start!547928 (= condSetEmpty!32256 (= baseZ!62 ((as const (Array Context!8066 Bool)) false)))))

(assert (=> start!547928 setRes!32256))

(declare-fun condSetEmpty!32255 () Bool)

(assert (=> start!547928 (= condSetEmpty!32255 (= z!4581 ((as const (Array Context!8066 Bool)) false)))))

(assert (=> start!547928 setRes!32255))

(declare-fun b!5174419 () Bool)

(declare-fun tp!1451717 () Bool)

(assert (=> b!5174419 (= e!3224224 (and tp_is_empty!38551 tp!1451717))))

(declare-fun setNonEmpty!32256 () Bool)

(declare-fun tp!1451719 () Bool)

(declare-fun setElem!32256 () Context!8066)

(assert (=> setNonEmpty!32256 (= setRes!32255 (and tp!1451719 (inv!79869 setElem!32256) e!3224222))))

(declare-fun setRest!32256 () (InoxSet Context!8066))

(assert (=> setNonEmpty!32256 (= z!4581 ((_ map or) (store ((as const (Array Context!8066 Bool)) false) setElem!32256 true) setRest!32256))))

(declare-fun b!5174427 () Bool)

(assert (=> b!5174427 (= e!3224218 e!3224221)))

(declare-fun res!2199072 () Bool)

(assert (=> b!5174427 (=> (not res!2199072) (not e!3224221))))

(declare-fun lt!2131423 () List!60269)

(declare-fun isEmpty!32201 (List!60269) Bool)

(declare-datatypes ((tuple2!63848 0))(
  ( (tuple2!63849 (_1!35227 List!60269) (_2!35227 List!60269)) )
))
(declare-fun findLongestMatchInnerZipper!305 ((InoxSet Context!8066) List!60269 Int List!60269 List!60269 Int) tuple2!63848)

(assert (=> b!5174427 (= res!2199072 (not (isEmpty!32201 (_1!35227 (findLongestMatchInnerZipper!305 z!4581 testedP!294 lt!2131425 lt!2131423 input!5817 lt!2131426)))))))

(declare-fun size!39685 (List!60269) Int)

(assert (=> b!5174427 (= lt!2131426 (size!39685 input!5817))))

(declare-fun getSuffix!3430 (List!60269 List!60269) List!60269)

(assert (=> b!5174427 (= lt!2131423 (getSuffix!3430 input!5817 testedP!294))))

(assert (=> b!5174427 (= lt!2131425 (size!39685 testedP!294))))

(assert (= (and start!547928 res!2199068) b!5174425))

(assert (= (and b!5174425 res!2199071) b!5174427))

(assert (= (and b!5174427 res!2199072) b!5174422))

(assert (= (and b!5174422 res!2199070) b!5174421))

(assert (= (and b!5174421 (not res!2199069)) b!5174423))

(get-info :version)

(assert (= (and start!547928 ((_ is Cons!60145) testedP!294)) b!5174419))

(assert (= (and start!547928 ((_ is Cons!60145) input!5817)) b!5174424))

(assert (= (and start!547928 condSetEmpty!32256) setIsEmpty!32256))

(assert (= (and start!547928 (not condSetEmpty!32256)) setNonEmpty!32255))

(assert (= setNonEmpty!32255 b!5174426))

(assert (= (and start!547928 condSetEmpty!32255) setIsEmpty!32255))

(assert (= (and start!547928 (not condSetEmpty!32255)) setNonEmpty!32256))

(assert (= setNonEmpty!32256 b!5174420))

(declare-fun m!6228308 () Bool)

(assert (=> b!5174425 m!6228308))

(declare-fun m!6228310 () Bool)

(assert (=> setNonEmpty!32256 m!6228310))

(declare-fun m!6228312 () Bool)

(assert (=> b!5174423 m!6228312))

(declare-fun m!6228314 () Bool)

(assert (=> b!5174423 m!6228314))

(declare-fun m!6228316 () Bool)

(assert (=> b!5174421 m!6228316))

(declare-fun m!6228318 () Bool)

(assert (=> setNonEmpty!32255 m!6228318))

(declare-fun m!6228320 () Bool)

(assert (=> start!547928 m!6228320))

(declare-fun m!6228322 () Bool)

(assert (=> b!5174427 m!6228322))

(declare-fun m!6228324 () Bool)

(assert (=> b!5174427 m!6228324))

(declare-fun m!6228326 () Bool)

(assert (=> b!5174427 m!6228326))

(declare-fun m!6228328 () Bool)

(assert (=> b!5174427 m!6228328))

(declare-fun m!6228330 () Bool)

(assert (=> b!5174427 m!6228330))

(check-sat (not b!5174427) (not b!5174423) (not b!5174421) (not b!5174425) (not setNonEmpty!32255) (not start!547928) (not b!5174426) (not b!5174424) tp_is_empty!38551 (not b!5174420) (not setNonEmpty!32256) (not b!5174419))
(check-sat)
