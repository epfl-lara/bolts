; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530214 () Bool)

(assert start!530214)

(declare-fun b!5018506 () Bool)

(declare-fun e!3135150 () Bool)

(declare-fun e!3135151 () Bool)

(assert (=> b!5018506 (= e!3135150 e!3135151)))

(declare-fun res!2140036 () Bool)

(assert (=> b!5018506 (=> (not res!2140036) (not e!3135151))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27916 0))(
  ( (C!27917 (val!23324 Int)) )
))
(declare-datatypes ((Regex!13833 0))(
  ( (ElementMatch!13833 (c!857461 C!27916)) (Concat!22626 (regOne!28178 Regex!13833) (regTwo!28178 Regex!13833)) (EmptyExpr!13833) (Star!13833 (reg!14162 Regex!13833)) (EmptyLang!13833) (Union!13833 (regOne!28179 Regex!13833) (regTwo!28179 Regex!13833)) )
))
(declare-datatypes ((List!58090 0))(
  ( (Nil!57966) (Cons!57966 (h!64414 Regex!13833) (t!370466 List!58090)) )
))
(declare-datatypes ((Context!6516 0))(
  ( (Context!6517 (exprs!3758 List!58090)) )
))
(declare-fun z!4710 () (InoxSet Context!6516))

(declare-datatypes ((List!58091 0))(
  ( (Nil!57967) (Cons!57967 (h!64415 C!27916) (t!370467 List!58091)) )
))
(declare-fun lt!2076998 () List!58091)

(declare-fun matchZipper!601 ((InoxSet Context!6516) List!58091) Bool)

(assert (=> b!5018506 (= res!2140036 (matchZipper!601 z!4710 lt!2076998))))

(declare-fun from!1212 () Int)

(declare-fun lt!2076999 () List!58091)

(declare-fun knownSize!24 () Int)

(declare-fun take!692 (List!58091 Int) List!58091)

(declare-fun drop!2496 (List!58091 Int) List!58091)

(assert (=> b!5018506 (= lt!2076998 (take!692 (drop!2496 lt!2076999 from!1212) knownSize!24))))

(declare-datatypes ((IArray!30765 0))(
  ( (IArray!30766 (innerList!15440 List!58091)) )
))
(declare-datatypes ((Conc!15352 0))(
  ( (Node!15352 (left!42374 Conc!15352) (right!42704 Conc!15352) (csize!30934 Int) (cheight!15563 Int)) (Leaf!25477 (xs!18678 IArray!30765) (csize!30935 Int)) (Empty!15352) )
))
(declare-datatypes ((BalanceConc!30134 0))(
  ( (BalanceConc!30135 (c!857462 Conc!15352)) )
))
(declare-fun totalInput!1125 () BalanceConc!30134)

(declare-fun list!18680 (BalanceConc!30134) List!58091)

(assert (=> b!5018506 (= lt!2076999 (list!18680 totalInput!1125))))

(declare-fun res!2140038 () Bool)

(declare-fun e!3135149 () Bool)

(assert (=> start!530214 (=> (not res!2140038) (not e!3135149))))

(assert (=> start!530214 (= res!2140038 (>= from!1212 0))))

(assert (=> start!530214 e!3135149))

(assert (=> start!530214 true))

(declare-fun e!3135147 () Bool)

(declare-fun inv!76236 (BalanceConc!30134) Bool)

(assert (=> start!530214 (and (inv!76236 totalInput!1125) e!3135147)))

(declare-fun condSetEmpty!28570 () Bool)

(assert (=> start!530214 (= condSetEmpty!28570 (= z!4710 ((as const (Array Context!6516 Bool)) false)))))

(declare-fun setRes!28570 () Bool)

(assert (=> start!530214 setRes!28570))

(declare-fun e!3135148 () Bool)

(declare-fun setElem!28570 () Context!6516)

(declare-fun tp!1407336 () Bool)

(declare-fun setNonEmpty!28570 () Bool)

(declare-fun inv!76237 (Context!6516) Bool)

(assert (=> setNonEmpty!28570 (= setRes!28570 (and tp!1407336 (inv!76237 setElem!28570) e!3135148))))

(declare-fun setRest!28570 () (InoxSet Context!6516))

(assert (=> setNonEmpty!28570 (= z!4710 ((_ map or) (store ((as const (Array Context!6516 Bool)) false) setElem!28570 true) setRest!28570))))

(declare-fun b!5018507 () Bool)

(declare-fun res!2140037 () Bool)

(assert (=> b!5018507 (=> (not res!2140037) (not e!3135151))))

(declare-fun size!38550 (List!58091) Int)

(assert (=> b!5018507 (= res!2140037 (= (size!38550 lt!2076998) knownSize!24))))

(declare-fun b!5018508 () Bool)

(declare-fun tp!1407337 () Bool)

(assert (=> b!5018508 (= e!3135148 tp!1407337)))

(declare-fun setIsEmpty!28570 () Bool)

(assert (=> setIsEmpty!28570 setRes!28570))

(declare-fun b!5018509 () Bool)

(declare-fun res!2140040 () Bool)

(assert (=> b!5018509 (=> (not res!2140040) (not e!3135151))))

(assert (=> b!5018509 (= res!2140040 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5018510 () Bool)

(declare-fun tp!1407338 () Bool)

(declare-fun inv!76238 (Conc!15352) Bool)

(assert (=> b!5018510 (= e!3135147 (and (inv!76238 (c!857462 totalInput!1125)) tp!1407338))))

(declare-fun b!5018511 () Bool)

(assert (=> b!5018511 (= e!3135149 e!3135150)))

(declare-fun res!2140035 () Bool)

(assert (=> b!5018511 (=> (not res!2140035) (not e!3135150))))

(declare-fun lt!2077001 () Int)

(assert (=> b!5018511 (= res!2140035 (and (<= from!1212 lt!2077001) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077001 from!1212))))))

(declare-fun size!38551 (BalanceConc!30134) Int)

(assert (=> b!5018511 (= lt!2077001 (size!38551 totalInput!1125))))

(declare-fun b!5018512 () Bool)

(declare-fun res!2140039 () Bool)

(assert (=> b!5018512 (=> (not res!2140039) (not e!3135151))))

(declare-fun lostCauseZipper!852 ((InoxSet Context!6516)) Bool)

(assert (=> b!5018512 (= res!2140039 (not (lostCauseZipper!852 z!4710)))))

(declare-fun b!5018513 () Bool)

(assert (=> b!5018513 (= e!3135151 false)))

(declare-fun lt!2077000 () Int)

(assert (=> b!5018513 (= lt!2077000 (size!38550 lt!2076999))))

(declare-fun lt!2077002 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!161 ((InoxSet Context!6516) Int BalanceConc!30134 Int) Int)

(declare-fun derivationStepZipper!645 ((InoxSet Context!6516) C!27916) (InoxSet Context!6516))

(declare-fun apply!14020 (BalanceConc!30134 Int) C!27916)

(assert (=> b!5018513 (= lt!2077002 (findLongestMatchInnerZipperFastV2!161 (derivationStepZipper!645 z!4710 (apply!14020 totalInput!1125 from!1212)) (+ 1 from!1212) totalInput!1125 lt!2077001))))

(declare-fun b!5018514 () Bool)

(declare-fun res!2140041 () Bool)

(assert (=> b!5018514 (=> (not res!2140041) (not e!3135151))))

(assert (=> b!5018514 (= res!2140041 (not (= from!1212 lt!2077001)))))

(assert (= (and start!530214 res!2140038) b!5018511))

(assert (= (and b!5018511 res!2140035) b!5018506))

(assert (= (and b!5018506 res!2140036) b!5018509))

(assert (= (and b!5018509 res!2140040) b!5018507))

(assert (= (and b!5018507 res!2140037) b!5018512))

(assert (= (and b!5018512 res!2140039) b!5018514))

(assert (= (and b!5018514 res!2140041) b!5018513))

(assert (= start!530214 b!5018510))

(assert (= (and start!530214 condSetEmpty!28570) setIsEmpty!28570))

(assert (= (and start!530214 (not condSetEmpty!28570)) setNonEmpty!28570))

(assert (= setNonEmpty!28570 b!5018508))

(declare-fun m!6053750 () Bool)

(assert (=> b!5018513 m!6053750))

(declare-fun m!6053752 () Bool)

(assert (=> b!5018513 m!6053752))

(assert (=> b!5018513 m!6053752))

(declare-fun m!6053754 () Bool)

(assert (=> b!5018513 m!6053754))

(assert (=> b!5018513 m!6053754))

(declare-fun m!6053756 () Bool)

(assert (=> b!5018513 m!6053756))

(declare-fun m!6053758 () Bool)

(assert (=> b!5018511 m!6053758))

(declare-fun m!6053760 () Bool)

(assert (=> b!5018512 m!6053760))

(declare-fun m!6053762 () Bool)

(assert (=> b!5018510 m!6053762))

(declare-fun m!6053764 () Bool)

(assert (=> b!5018506 m!6053764))

(declare-fun m!6053766 () Bool)

(assert (=> b!5018506 m!6053766))

(assert (=> b!5018506 m!6053766))

(declare-fun m!6053768 () Bool)

(assert (=> b!5018506 m!6053768))

(declare-fun m!6053770 () Bool)

(assert (=> b!5018506 m!6053770))

(declare-fun m!6053772 () Bool)

(assert (=> start!530214 m!6053772))

(declare-fun m!6053774 () Bool)

(assert (=> setNonEmpty!28570 m!6053774))

(declare-fun m!6053776 () Bool)

(assert (=> b!5018507 m!6053776))

(check-sat (not b!5018510) (not b!5018511) (not start!530214) (not b!5018507) (not b!5018513) (not b!5018512) (not setNonEmpty!28570) (not b!5018506) (not b!5018508))
(check-sat)
