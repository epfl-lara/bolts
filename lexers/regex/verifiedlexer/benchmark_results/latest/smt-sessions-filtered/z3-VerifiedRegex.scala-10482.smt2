; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541312 () Bool)

(assert start!541312)

(declare-fun setRes!30662 () Bool)

(declare-fun setNonEmpty!30661 () Bool)

(declare-fun tp!1430029 () Bool)

(declare-datatypes ((C!28776 0))(
  ( (C!28777 (val!24040 Int)) )
))
(declare-datatypes ((Regex!14255 0))(
  ( (ElementMatch!14255 (c!881423 C!28776)) (Concat!23100 (regOne!29022 Regex!14255) (regTwo!29022 Regex!14255)) (EmptyExpr!14255) (Star!14255 (reg!14584 Regex!14255)) (EmptyLang!14255) (Union!14255 (regOne!29023 Regex!14255) (regTwo!29023 Regex!14255)) )
))
(declare-datatypes ((List!59445 0))(
  ( (Nil!59321) (Cons!59321 (h!65769 Regex!14255) (t!372472 List!59445)) )
))
(declare-datatypes ((Context!7278 0))(
  ( (Context!7279 (exprs!4139 List!59445)) )
))
(declare-fun setElem!30661 () Context!7278)

(declare-fun e!3197256 () Bool)

(declare-fun inv!78818 (Context!7278) Bool)

(assert (=> setNonEmpty!30661 (= setRes!30662 (and tp!1430029 (inv!78818 setElem!30661) e!3197256))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!61 () (InoxSet Context!7278))

(declare-fun setRest!30661 () (InoxSet Context!7278))

(assert (=> setNonEmpty!30661 (= baseZ!61 ((_ map or) (store ((as const (Array Context!7278 Bool)) false) setElem!30661 true) setRest!30661))))

(declare-fun e!3197254 () Bool)

(declare-fun setElem!30662 () Context!7278)

(declare-fun setRes!30661 () Bool)

(declare-fun setNonEmpty!30662 () Bool)

(declare-fun tp!1430028 () Bool)

(assert (=> setNonEmpty!30662 (= setRes!30661 (and tp!1430028 (inv!78818 setElem!30662) e!3197254))))

(declare-fun z!4546 () (InoxSet Context!7278))

(declare-fun setRest!30662 () (InoxSet Context!7278))

(assert (=> setNonEmpty!30662 (= z!4546 ((_ map or) (store ((as const (Array Context!7278 Bool)) false) setElem!30662 true) setRest!30662))))

(declare-fun b!5126717 () Bool)

(declare-fun res!2182892 () Bool)

(declare-fun e!3197257 () Bool)

(assert (=> b!5126717 (=> (not res!2182892) (not e!3197257))))

(declare-datatypes ((List!59446 0))(
  ( (Nil!59322) (Cons!59322 (h!65770 C!28776) (t!372473 List!59446)) )
))
(declare-fun testedP!289 () List!59446)

(declare-fun matchZipper!923 ((InoxSet Context!7278) List!59446) Bool)

(assert (=> b!5126717 (= res!2182892 (matchZipper!923 baseZ!61 testedP!289))))

(declare-fun b!5126718 () Bool)

(declare-fun e!3197252 () Bool)

(declare-fun tp_is_empty!37783 () Bool)

(declare-fun tp!1430032 () Bool)

(assert (=> b!5126718 (= e!3197252 (and tp_is_empty!37783 tp!1430032))))

(declare-fun b!5126719 () Bool)

(declare-fun tp!1430031 () Bool)

(assert (=> b!5126719 (= e!3197256 tp!1430031)))

(declare-fun b!5126720 () Bool)

(declare-fun e!3197253 () Bool)

(assert (=> b!5126720 (= e!3197257 e!3197253)))

(declare-fun res!2182890 () Bool)

(assert (=> b!5126720 (=> (not res!2182890) (not e!3197253))))

(declare-fun lt!2114267 () (InoxSet Context!7278))

(assert (=> b!5126720 (= res!2182890 (= lt!2114267 z!4546))))

(declare-fun derivationZipper!152 ((InoxSet Context!7278) List!59446) (InoxSet Context!7278))

(assert (=> b!5126720 (= lt!2114267 (derivationZipper!152 baseZ!61 testedP!289))))

(declare-fun b!5126721 () Bool)

(assert (=> b!5126721 (= e!3197253 (not (matchZipper!923 z!4546 Nil!59322)))))

(assert (=> b!5126721 (matchZipper!923 lt!2114267 Nil!59322)))

(declare-datatypes ((Unit!150507 0))(
  ( (Unit!150508) )
))
(declare-fun lt!2114268 () Unit!150507)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!24 ((InoxSet Context!7278) List!59446) Unit!150507)

(assert (=> b!5126721 (= lt!2114268 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!24 baseZ!61 testedP!289))))

(declare-fun b!5126722 () Bool)

(declare-fun e!3197255 () Bool)

(declare-fun tp!1430033 () Bool)

(assert (=> b!5126722 (= e!3197255 (and tp_is_empty!37783 tp!1430033))))

(declare-fun setIsEmpty!30661 () Bool)

(assert (=> setIsEmpty!30661 setRes!30662))

(declare-fun setIsEmpty!30662 () Bool)

(assert (=> setIsEmpty!30662 setRes!30661))

(declare-fun res!2182891 () Bool)

(assert (=> start!541312 (=> (not res!2182891) (not e!3197257))))

(declare-fun input!5798 () List!59446)

(declare-fun isPrefix!5660 (List!59446 List!59446) Bool)

(assert (=> start!541312 (= res!2182891 (isPrefix!5660 testedP!289 input!5798))))

(assert (=> start!541312 e!3197257))

(assert (=> start!541312 e!3197252))

(assert (=> start!541312 e!3197255))

(declare-fun condSetEmpty!30662 () Bool)

(assert (=> start!541312 (= condSetEmpty!30662 (= baseZ!61 ((as const (Array Context!7278 Bool)) false)))))

(assert (=> start!541312 setRes!30662))

(declare-fun condSetEmpty!30661 () Bool)

(assert (=> start!541312 (= condSetEmpty!30661 (= z!4546 ((as const (Array Context!7278 Bool)) false)))))

(assert (=> start!541312 setRes!30661))

(declare-fun b!5126723 () Bool)

(declare-fun tp!1430030 () Bool)

(assert (=> b!5126723 (= e!3197254 tp!1430030)))

(assert (= (and start!541312 res!2182891) b!5126717))

(assert (= (and b!5126717 res!2182892) b!5126720))

(assert (= (and b!5126720 res!2182890) b!5126721))

(get-info :version)

(assert (= (and start!541312 ((_ is Cons!59322) testedP!289)) b!5126718))

(assert (= (and start!541312 ((_ is Cons!59322) input!5798)) b!5126722))

(assert (= (and start!541312 condSetEmpty!30662) setIsEmpty!30661))

(assert (= (and start!541312 (not condSetEmpty!30662)) setNonEmpty!30661))

(assert (= setNonEmpty!30661 b!5126719))

(assert (= (and start!541312 condSetEmpty!30661) setIsEmpty!30662))

(assert (= (and start!541312 (not condSetEmpty!30661)) setNonEmpty!30662))

(assert (= setNonEmpty!30662 b!5126723))

(declare-fun m!6190690 () Bool)

(assert (=> start!541312 m!6190690))

(declare-fun m!6190692 () Bool)

(assert (=> b!5126717 m!6190692))

(declare-fun m!6190694 () Bool)

(assert (=> b!5126720 m!6190694))

(declare-fun m!6190696 () Bool)

(assert (=> setNonEmpty!30662 m!6190696))

(declare-fun m!6190698 () Bool)

(assert (=> setNonEmpty!30661 m!6190698))

(declare-fun m!6190700 () Bool)

(assert (=> b!5126721 m!6190700))

(declare-fun m!6190702 () Bool)

(assert (=> b!5126721 m!6190702))

(declare-fun m!6190704 () Bool)

(assert (=> b!5126721 m!6190704))

(check-sat (not b!5126718) (not setNonEmpty!30662) (not b!5126723) (not start!541312) (not b!5126719) (not setNonEmpty!30661) (not b!5126720) (not b!5126722) (not b!5126717) tp_is_empty!37783 (not b!5126721))
(check-sat)
