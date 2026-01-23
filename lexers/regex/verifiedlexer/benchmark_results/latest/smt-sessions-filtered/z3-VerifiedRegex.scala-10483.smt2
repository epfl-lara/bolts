; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541316 () Bool)

(assert start!541316)

(declare-fun tp!1430065 () Bool)

(declare-fun setNonEmpty!30673 () Bool)

(declare-fun setRes!30673 () Bool)

(declare-datatypes ((C!28780 0))(
  ( (C!28781 (val!24042 Int)) )
))
(declare-datatypes ((Regex!14257 0))(
  ( (ElementMatch!14257 (c!881425 C!28780)) (Concat!23102 (regOne!29026 Regex!14257) (regTwo!29026 Regex!14257)) (EmptyExpr!14257) (Star!14257 (reg!14586 Regex!14257)) (EmptyLang!14257) (Union!14257 (regOne!29027 Regex!14257) (regTwo!29027 Regex!14257)) )
))
(declare-datatypes ((List!59449 0))(
  ( (Nil!59325) (Cons!59325 (h!65773 Regex!14257) (t!372476 List!59449)) )
))
(declare-datatypes ((Context!7282 0))(
  ( (Context!7283 (exprs!4141 List!59449)) )
))
(declare-fun setElem!30673 () Context!7282)

(declare-fun e!3197294 () Bool)

(declare-fun inv!78823 (Context!7282) Bool)

(assert (=> setNonEmpty!30673 (= setRes!30673 (and tp!1430065 (inv!78823 setElem!30673) e!3197294))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4546 () (InoxSet Context!7282))

(declare-fun setRest!30673 () (InoxSet Context!7282))

(assert (=> setNonEmpty!30673 (= z!4546 ((_ map or) (store ((as const (Array Context!7282 Bool)) false) setElem!30673 true) setRest!30673))))

(declare-fun setIsEmpty!30673 () Bool)

(assert (=> setIsEmpty!30673 setRes!30673))

(declare-fun b!5126764 () Bool)

(declare-fun e!3197295 () Bool)

(declare-fun e!3197297 () Bool)

(assert (=> b!5126764 (= e!3197295 e!3197297)))

(declare-fun res!2182915 () Bool)

(assert (=> b!5126764 (=> (not res!2182915) (not e!3197297))))

(declare-fun lt!2114280 () (InoxSet Context!7282))

(assert (=> b!5126764 (= res!2182915 (= lt!2114280 z!4546))))

(declare-fun baseZ!61 () (InoxSet Context!7282))

(declare-datatypes ((List!59450 0))(
  ( (Nil!59326) (Cons!59326 (h!65774 C!28780) (t!372477 List!59450)) )
))
(declare-fun testedP!289 () List!59450)

(declare-fun derivationZipper!154 ((InoxSet Context!7282) List!59450) (InoxSet Context!7282))

(assert (=> b!5126764 (= lt!2114280 (derivationZipper!154 baseZ!61 testedP!289))))

(declare-fun b!5126765 () Bool)

(declare-fun res!2182913 () Bool)

(assert (=> b!5126765 (=> (not res!2182913) (not e!3197295))))

(declare-fun matchZipper!925 ((InoxSet Context!7282) List!59450) Bool)

(assert (=> b!5126765 (= res!2182913 (matchZipper!925 baseZ!61 testedP!289))))

(declare-fun b!5126766 () Bool)

(declare-fun e!3197299 () Bool)

(declare-fun tp!1430067 () Bool)

(assert (=> b!5126766 (= e!3197299 tp!1430067)))

(declare-fun b!5126767 () Bool)

(declare-fun e!3197293 () Bool)

(declare-fun tp_is_empty!37787 () Bool)

(declare-fun tp!1430068 () Bool)

(assert (=> b!5126767 (= e!3197293 (and tp_is_empty!37787 tp!1430068))))

(declare-fun b!5126768 () Bool)

(declare-fun e!3197298 () Bool)

(declare-fun tp!1430064 () Bool)

(assert (=> b!5126768 (= e!3197298 (and tp_is_empty!37787 tp!1430064))))

(declare-fun setIsEmpty!30674 () Bool)

(declare-fun setRes!30674 () Bool)

(assert (=> setIsEmpty!30674 setRes!30674))

(declare-fun setElem!30674 () Context!7282)

(declare-fun setNonEmpty!30674 () Bool)

(declare-fun tp!1430066 () Bool)

(assert (=> setNonEmpty!30674 (= setRes!30674 (and tp!1430066 (inv!78823 setElem!30674) e!3197299))))

(declare-fun setRest!30674 () (InoxSet Context!7282))

(assert (=> setNonEmpty!30674 (= baseZ!61 ((_ map or) (store ((as const (Array Context!7282 Bool)) false) setElem!30674 true) setRest!30674))))

(declare-fun b!5126770 () Bool)

(declare-fun e!3197296 () Bool)

(assert (=> b!5126770 (= e!3197297 (not e!3197296))))

(declare-fun res!2182916 () Bool)

(assert (=> b!5126770 (=> res!2182916 e!3197296)))

(assert (=> b!5126770 (= res!2182916 (not (matchZipper!925 z!4546 Nil!59326)))))

(assert (=> b!5126770 (matchZipper!925 lt!2114280 Nil!59326)))

(declare-datatypes ((Unit!150511 0))(
  ( (Unit!150512) )
))
(declare-fun lt!2114279 () Unit!150511)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!26 ((InoxSet Context!7282) List!59450) Unit!150511)

(assert (=> b!5126770 (= lt!2114279 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!26 baseZ!61 testedP!289))))

(declare-fun b!5126771 () Bool)

(declare-fun tp!1430069 () Bool)

(assert (=> b!5126771 (= e!3197294 tp!1430069)))

(declare-fun b!5126769 () Bool)

(declare-fun nullableZipper!1052 ((InoxSet Context!7282)) Bool)

(assert (=> b!5126769 (= e!3197296 (nullableZipper!1052 z!4546))))

(declare-fun res!2182914 () Bool)

(assert (=> start!541316 (=> (not res!2182914) (not e!3197295))))

(declare-fun input!5798 () List!59450)

(declare-fun isPrefix!5662 (List!59450 List!59450) Bool)

(assert (=> start!541316 (= res!2182914 (isPrefix!5662 testedP!289 input!5798))))

(assert (=> start!541316 e!3197295))

(assert (=> start!541316 e!3197298))

(assert (=> start!541316 e!3197293))

(declare-fun condSetEmpty!30674 () Bool)

(assert (=> start!541316 (= condSetEmpty!30674 (= baseZ!61 ((as const (Array Context!7282 Bool)) false)))))

(assert (=> start!541316 setRes!30674))

(declare-fun condSetEmpty!30673 () Bool)

(assert (=> start!541316 (= condSetEmpty!30673 (= z!4546 ((as const (Array Context!7282 Bool)) false)))))

(assert (=> start!541316 setRes!30673))

(assert (= (and start!541316 res!2182914) b!5126765))

(assert (= (and b!5126765 res!2182913) b!5126764))

(assert (= (and b!5126764 res!2182915) b!5126770))

(assert (= (and b!5126770 (not res!2182916)) b!5126769))

(get-info :version)

(assert (= (and start!541316 ((_ is Cons!59326) testedP!289)) b!5126768))

(assert (= (and start!541316 ((_ is Cons!59326) input!5798)) b!5126767))

(assert (= (and start!541316 condSetEmpty!30674) setIsEmpty!30674))

(assert (= (and start!541316 (not condSetEmpty!30674)) setNonEmpty!30674))

(assert (= setNonEmpty!30674 b!5126766))

(assert (= (and start!541316 condSetEmpty!30673) setIsEmpty!30673))

(assert (= (and start!541316 (not condSetEmpty!30673)) setNonEmpty!30673))

(assert (= setNonEmpty!30673 b!5126771))

(declare-fun m!6190724 () Bool)

(assert (=> start!541316 m!6190724))

(declare-fun m!6190726 () Bool)

(assert (=> b!5126764 m!6190726))

(declare-fun m!6190728 () Bool)

(assert (=> setNonEmpty!30674 m!6190728))

(declare-fun m!6190730 () Bool)

(assert (=> setNonEmpty!30673 m!6190730))

(declare-fun m!6190732 () Bool)

(assert (=> b!5126770 m!6190732))

(declare-fun m!6190734 () Bool)

(assert (=> b!5126770 m!6190734))

(declare-fun m!6190736 () Bool)

(assert (=> b!5126770 m!6190736))

(declare-fun m!6190738 () Bool)

(assert (=> b!5126769 m!6190738))

(declare-fun m!6190740 () Bool)

(assert (=> b!5126765 m!6190740))

(check-sat (not start!541316) (not b!5126768) (not b!5126771) (not b!5126767) (not setNonEmpty!30673) (not b!5126764) (not b!5126766) (not b!5126770) (not setNonEmpty!30674) tp_is_empty!37787 (not b!5126769) (not b!5126765))
(check-sat)
(get-model)

(declare-fun d!1658330 () Bool)

(declare-fun c!881428 () Bool)

(assert (=> d!1658330 (= c!881428 ((_ is Cons!59326) testedP!289))))

(declare-fun e!3197302 () (InoxSet Context!7282))

(assert (=> d!1658330 (= (derivationZipper!154 baseZ!61 testedP!289) e!3197302)))

(declare-fun b!5126776 () Bool)

(declare-fun derivationStepZipper!869 ((InoxSet Context!7282) C!28780) (InoxSet Context!7282))

(assert (=> b!5126776 (= e!3197302 (derivationZipper!154 (derivationStepZipper!869 baseZ!61 (h!65774 testedP!289)) (t!372477 testedP!289)))))

(declare-fun b!5126777 () Bool)

(assert (=> b!5126777 (= e!3197302 baseZ!61)))

(assert (= (and d!1658330 c!881428) b!5126776))

(assert (= (and d!1658330 (not c!881428)) b!5126777))

(declare-fun m!6190742 () Bool)

(assert (=> b!5126776 m!6190742))

(assert (=> b!5126776 m!6190742))

(declare-fun m!6190744 () Bool)

(assert (=> b!5126776 m!6190744))

(assert (=> b!5126764 d!1658330))

(declare-fun d!1658332 () Bool)

(declare-fun lambda!251893 () Int)

(declare-fun exists!1506 ((InoxSet Context!7282) Int) Bool)

(assert (=> d!1658332 (= (nullableZipper!1052 z!4546) (exists!1506 z!4546 lambda!251893))))

(declare-fun bs!1194044 () Bool)

(assert (= bs!1194044 d!1658332))

(declare-fun m!6190746 () Bool)

(assert (=> bs!1194044 m!6190746))

(assert (=> b!5126769 d!1658332))

(declare-fun d!1658334 () Bool)

(declare-fun lambda!251899 () Int)

(declare-fun forall!13651 (List!59449 Int) Bool)

(assert (=> d!1658334 (= (inv!78823 setElem!30673) (forall!13651 (exprs!4141 setElem!30673) lambda!251899))))

(declare-fun bs!1194045 () Bool)

(assert (= bs!1194045 d!1658334))

(declare-fun m!6190748 () Bool)

(assert (=> bs!1194045 m!6190748))

(assert (=> setNonEmpty!30673 d!1658334))

(declare-fun d!1658336 () Bool)

(declare-fun c!881435 () Bool)

(declare-fun isEmpty!31966 (List!59450) Bool)

(assert (=> d!1658336 (= c!881435 (isEmpty!31966 Nil!59326))))

(declare-fun e!3197305 () Bool)

(assert (=> d!1658336 (= (matchZipper!925 z!4546 Nil!59326) e!3197305)))

(declare-fun b!5126782 () Bool)

(assert (=> b!5126782 (= e!3197305 (nullableZipper!1052 z!4546))))

(declare-fun b!5126783 () Bool)

(declare-fun head!10962 (List!59450) C!28780)

(declare-fun tail!10097 (List!59450) List!59450)

(assert (=> b!5126783 (= e!3197305 (matchZipper!925 (derivationStepZipper!869 z!4546 (head!10962 Nil!59326)) (tail!10097 Nil!59326)))))

(assert (= (and d!1658336 c!881435) b!5126782))

(assert (= (and d!1658336 (not c!881435)) b!5126783))

(declare-fun m!6190754 () Bool)

(assert (=> d!1658336 m!6190754))

(assert (=> b!5126782 m!6190738))

(declare-fun m!6190756 () Bool)

(assert (=> b!5126783 m!6190756))

(assert (=> b!5126783 m!6190756))

(declare-fun m!6190758 () Bool)

(assert (=> b!5126783 m!6190758))

(declare-fun m!6190760 () Bool)

(assert (=> b!5126783 m!6190760))

(assert (=> b!5126783 m!6190758))

(assert (=> b!5126783 m!6190760))

(declare-fun m!6190762 () Bool)

(assert (=> b!5126783 m!6190762))

(assert (=> b!5126770 d!1658336))

(declare-fun d!1658342 () Bool)

(declare-fun c!881436 () Bool)

(assert (=> d!1658342 (= c!881436 (isEmpty!31966 Nil!59326))))

(declare-fun e!3197306 () Bool)

(assert (=> d!1658342 (= (matchZipper!925 lt!2114280 Nil!59326) e!3197306)))

(declare-fun b!5126784 () Bool)

(assert (=> b!5126784 (= e!3197306 (nullableZipper!1052 lt!2114280))))

(declare-fun b!5126785 () Bool)

(assert (=> b!5126785 (= e!3197306 (matchZipper!925 (derivationStepZipper!869 lt!2114280 (head!10962 Nil!59326)) (tail!10097 Nil!59326)))))

(assert (= (and d!1658342 c!881436) b!5126784))

(assert (= (and d!1658342 (not c!881436)) b!5126785))

(assert (=> d!1658342 m!6190754))

(declare-fun m!6190764 () Bool)

(assert (=> b!5126784 m!6190764))

(assert (=> b!5126785 m!6190756))

(assert (=> b!5126785 m!6190756))

(declare-fun m!6190766 () Bool)

(assert (=> b!5126785 m!6190766))

(assert (=> b!5126785 m!6190760))

(assert (=> b!5126785 m!6190766))

(assert (=> b!5126785 m!6190760))

(declare-fun m!6190768 () Bool)

(assert (=> b!5126785 m!6190768))

(assert (=> b!5126770 d!1658342))

(declare-fun d!1658344 () Bool)

(assert (=> d!1658344 (= (matchZipper!925 baseZ!61 testedP!289) (matchZipper!925 (derivationZipper!154 baseZ!61 testedP!289) Nil!59326))))

(declare-fun lt!2114283 () Unit!150511)

(declare-fun choose!37751 ((InoxSet Context!7282) List!59450) Unit!150511)

(assert (=> d!1658344 (= lt!2114283 (choose!37751 baseZ!61 testedP!289))))

(assert (=> d!1658344 (= (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!26 baseZ!61 testedP!289) lt!2114283)))

(declare-fun bs!1194048 () Bool)

(assert (= bs!1194048 d!1658344))

(assert (=> bs!1194048 m!6190740))

(assert (=> bs!1194048 m!6190726))

(assert (=> bs!1194048 m!6190726))

(declare-fun m!6190784 () Bool)

(assert (=> bs!1194048 m!6190784))

(declare-fun m!6190786 () Bool)

(assert (=> bs!1194048 m!6190786))

(assert (=> b!5126770 d!1658344))

(declare-fun b!5126807 () Bool)

(declare-fun e!3197319 () Bool)

(declare-fun size!39556 (List!59450) Int)

(assert (=> b!5126807 (= e!3197319 (>= (size!39556 input!5798) (size!39556 testedP!289)))))

(declare-fun b!5126806 () Bool)

(declare-fun e!3197320 () Bool)

(assert (=> b!5126806 (= e!3197320 (isPrefix!5662 (tail!10097 testedP!289) (tail!10097 input!5798)))))

(declare-fun b!5126804 () Bool)

(declare-fun e!3197318 () Bool)

(assert (=> b!5126804 (= e!3197318 e!3197320)))

(declare-fun res!2182926 () Bool)

(assert (=> b!5126804 (=> (not res!2182926) (not e!3197320))))

(assert (=> b!5126804 (= res!2182926 (not ((_ is Nil!59326) input!5798)))))

(declare-fun b!5126805 () Bool)

(declare-fun res!2182928 () Bool)

(assert (=> b!5126805 (=> (not res!2182928) (not e!3197320))))

(assert (=> b!5126805 (= res!2182928 (= (head!10962 testedP!289) (head!10962 input!5798)))))

(declare-fun d!1658348 () Bool)

(assert (=> d!1658348 e!3197319))

(declare-fun res!2182925 () Bool)

(assert (=> d!1658348 (=> res!2182925 e!3197319)))

(declare-fun lt!2114289 () Bool)

(assert (=> d!1658348 (= res!2182925 (not lt!2114289))))

(assert (=> d!1658348 (= lt!2114289 e!3197318)))

(declare-fun res!2182927 () Bool)

(assert (=> d!1658348 (=> res!2182927 e!3197318)))

(assert (=> d!1658348 (= res!2182927 ((_ is Nil!59326) testedP!289))))

(assert (=> d!1658348 (= (isPrefix!5662 testedP!289 input!5798) lt!2114289)))

(assert (= (and d!1658348 (not res!2182927)) b!5126804))

(assert (= (and b!5126804 res!2182926) b!5126805))

(assert (= (and b!5126805 res!2182928) b!5126806))

(assert (= (and d!1658348 (not res!2182925)) b!5126807))

(declare-fun m!6190806 () Bool)

(assert (=> b!5126807 m!6190806))

(declare-fun m!6190808 () Bool)

(assert (=> b!5126807 m!6190808))

(declare-fun m!6190810 () Bool)

(assert (=> b!5126806 m!6190810))

(declare-fun m!6190812 () Bool)

(assert (=> b!5126806 m!6190812))

(assert (=> b!5126806 m!6190810))

(assert (=> b!5126806 m!6190812))

(declare-fun m!6190814 () Bool)

(assert (=> b!5126806 m!6190814))

(declare-fun m!6190816 () Bool)

(assert (=> b!5126805 m!6190816))

(declare-fun m!6190818 () Bool)

(assert (=> b!5126805 m!6190818))

(assert (=> start!541316 d!1658348))

(declare-fun bs!1194052 () Bool)

(declare-fun d!1658356 () Bool)

(assert (= bs!1194052 (and d!1658356 d!1658334)))

(declare-fun lambda!251904 () Int)

(assert (=> bs!1194052 (= lambda!251904 lambda!251899)))

(assert (=> d!1658356 (= (inv!78823 setElem!30674) (forall!13651 (exprs!4141 setElem!30674) lambda!251904))))

(declare-fun bs!1194053 () Bool)

(assert (= bs!1194053 d!1658356))

(declare-fun m!6190822 () Bool)

(assert (=> bs!1194053 m!6190822))

(assert (=> setNonEmpty!30674 d!1658356))

(declare-fun d!1658360 () Bool)

(declare-fun c!881442 () Bool)

(assert (=> d!1658360 (= c!881442 (isEmpty!31966 testedP!289))))

(declare-fun e!3197321 () Bool)

(assert (=> d!1658360 (= (matchZipper!925 baseZ!61 testedP!289) e!3197321)))

(declare-fun b!5126808 () Bool)

(assert (=> b!5126808 (= e!3197321 (nullableZipper!1052 baseZ!61))))

(declare-fun b!5126809 () Bool)

(assert (=> b!5126809 (= e!3197321 (matchZipper!925 (derivationStepZipper!869 baseZ!61 (head!10962 testedP!289)) (tail!10097 testedP!289)))))

(assert (= (and d!1658360 c!881442) b!5126808))

(assert (= (and d!1658360 (not c!881442)) b!5126809))

(declare-fun m!6190824 () Bool)

(assert (=> d!1658360 m!6190824))

(declare-fun m!6190826 () Bool)

(assert (=> b!5126808 m!6190826))

(assert (=> b!5126809 m!6190816))

(assert (=> b!5126809 m!6190816))

(declare-fun m!6190828 () Bool)

(assert (=> b!5126809 m!6190828))

(assert (=> b!5126809 m!6190810))

(assert (=> b!5126809 m!6190828))

(assert (=> b!5126809 m!6190810))

(declare-fun m!6190830 () Bool)

(assert (=> b!5126809 m!6190830))

(assert (=> b!5126765 d!1658360))

(declare-fun b!5126814 () Bool)

(declare-fun e!3197324 () Bool)

(declare-fun tp!1430072 () Bool)

(assert (=> b!5126814 (= e!3197324 (and tp_is_empty!37787 tp!1430072))))

(assert (=> b!5126768 (= tp!1430064 e!3197324)))

(assert (= (and b!5126768 ((_ is Cons!59326) (t!372477 testedP!289))) b!5126814))

(declare-fun b!5126819 () Bool)

(declare-fun e!3197327 () Bool)

(declare-fun tp!1430077 () Bool)

(declare-fun tp!1430078 () Bool)

(assert (=> b!5126819 (= e!3197327 (and tp!1430077 tp!1430078))))

(assert (=> b!5126771 (= tp!1430069 e!3197327)))

(assert (= (and b!5126771 ((_ is Cons!59325) (exprs!4141 setElem!30673))) b!5126819))

(declare-fun condSetEmpty!30677 () Bool)

(assert (=> setNonEmpty!30673 (= condSetEmpty!30677 (= setRest!30673 ((as const (Array Context!7282 Bool)) false)))))

(declare-fun setRes!30677 () Bool)

(assert (=> setNonEmpty!30673 (= tp!1430065 setRes!30677)))

(declare-fun setIsEmpty!30677 () Bool)

(assert (=> setIsEmpty!30677 setRes!30677))

(declare-fun setElem!30677 () Context!7282)

(declare-fun e!3197330 () Bool)

(declare-fun setNonEmpty!30677 () Bool)

(declare-fun tp!1430084 () Bool)

(assert (=> setNonEmpty!30677 (= setRes!30677 (and tp!1430084 (inv!78823 setElem!30677) e!3197330))))

(declare-fun setRest!30677 () (InoxSet Context!7282))

(assert (=> setNonEmpty!30677 (= setRest!30673 ((_ map or) (store ((as const (Array Context!7282 Bool)) false) setElem!30677 true) setRest!30677))))

(declare-fun b!5126824 () Bool)

(declare-fun tp!1430083 () Bool)

(assert (=> b!5126824 (= e!3197330 tp!1430083)))

(assert (= (and setNonEmpty!30673 condSetEmpty!30677) setIsEmpty!30677))

(assert (= (and setNonEmpty!30673 (not condSetEmpty!30677)) setNonEmpty!30677))

(assert (= setNonEmpty!30677 b!5126824))

(declare-fun m!6190832 () Bool)

(assert (=> setNonEmpty!30677 m!6190832))

(declare-fun b!5126831 () Bool)

(declare-fun e!3197335 () Bool)

(declare-fun tp!1430085 () Bool)

(assert (=> b!5126831 (= e!3197335 (and tp_is_empty!37787 tp!1430085))))

(assert (=> b!5126767 (= tp!1430068 e!3197335)))

(assert (= (and b!5126767 ((_ is Cons!59326) (t!372477 input!5798))) b!5126831))

(declare-fun b!5126834 () Bool)

(declare-fun e!3197338 () Bool)

(declare-fun tp!1430086 () Bool)

(declare-fun tp!1430087 () Bool)

(assert (=> b!5126834 (= e!3197338 (and tp!1430086 tp!1430087))))

(assert (=> b!5126766 (= tp!1430067 e!3197338)))

(assert (= (and b!5126766 ((_ is Cons!59325) (exprs!4141 setElem!30674))) b!5126834))

(declare-fun condSetEmpty!30678 () Bool)

(assert (=> setNonEmpty!30674 (= condSetEmpty!30678 (= setRest!30674 ((as const (Array Context!7282 Bool)) false)))))

(declare-fun setRes!30678 () Bool)

(assert (=> setNonEmpty!30674 (= tp!1430066 setRes!30678)))

(declare-fun setIsEmpty!30678 () Bool)

(assert (=> setIsEmpty!30678 setRes!30678))

(declare-fun setElem!30678 () Context!7282)

(declare-fun e!3197339 () Bool)

(declare-fun setNonEmpty!30678 () Bool)

(declare-fun tp!1430089 () Bool)

(assert (=> setNonEmpty!30678 (= setRes!30678 (and tp!1430089 (inv!78823 setElem!30678) e!3197339))))

(declare-fun setRest!30678 () (InoxSet Context!7282))

(assert (=> setNonEmpty!30678 (= setRest!30674 ((_ map or) (store ((as const (Array Context!7282 Bool)) false) setElem!30678 true) setRest!30678))))

(declare-fun b!5126835 () Bool)

(declare-fun tp!1430088 () Bool)

(assert (=> b!5126835 (= e!3197339 tp!1430088)))

(assert (= (and setNonEmpty!30674 condSetEmpty!30678) setIsEmpty!30678))

(assert (= (and setNonEmpty!30674 (not condSetEmpty!30678)) setNonEmpty!30678))

(assert (= setNonEmpty!30678 b!5126835))

(declare-fun m!6190834 () Bool)

(assert (=> setNonEmpty!30678 m!6190834))

(check-sat (not b!5126806) (not b!5126782) (not b!5126834) (not d!1658344) (not b!5126776) (not d!1658334) (not b!5126808) (not d!1658336) (not b!5126814) (not d!1658356) (not b!5126783) (not b!5126784) (not setNonEmpty!30677) (not b!5126831) tp_is_empty!37787 (not b!5126807) (not setNonEmpty!30678) (not b!5126824) (not d!1658342) (not d!1658360) (not d!1658332) (not b!5126819) (not b!5126809) (not b!5126835) (not b!5126785) (not b!5126805))
(check-sat)
(get-model)

(declare-fun d!1658376 () Bool)

(declare-fun res!2182945 () Bool)

(declare-fun e!3197363 () Bool)

(assert (=> d!1658376 (=> res!2182945 e!3197363)))

(assert (=> d!1658376 (= res!2182945 ((_ is Nil!59325) (exprs!4141 setElem!30674)))))

(assert (=> d!1658376 (= (forall!13651 (exprs!4141 setElem!30674) lambda!251904) e!3197363)))

(declare-fun b!5126870 () Bool)

(declare-fun e!3197364 () Bool)

(assert (=> b!5126870 (= e!3197363 e!3197364)))

(declare-fun res!2182946 () Bool)

(assert (=> b!5126870 (=> (not res!2182946) (not e!3197364))))

(declare-fun dynLambda!23618 (Int Regex!14257) Bool)

(assert (=> b!5126870 (= res!2182946 (dynLambda!23618 lambda!251904 (h!65773 (exprs!4141 setElem!30674))))))

(declare-fun b!5126871 () Bool)

(assert (=> b!5126871 (= e!3197364 (forall!13651 (t!372476 (exprs!4141 setElem!30674)) lambda!251904))))

(assert (= (and d!1658376 (not res!2182945)) b!5126870))

(assert (= (and b!5126870 res!2182946) b!5126871))

(declare-fun b_lambda!199065 () Bool)

(assert (=> (not b_lambda!199065) (not b!5126870)))

(declare-fun m!6190870 () Bool)

(assert (=> b!5126870 m!6190870))

(declare-fun m!6190874 () Bool)

(assert (=> b!5126871 m!6190874))

(assert (=> d!1658356 d!1658376))

(declare-fun d!1658390 () Bool)

(declare-fun lt!2114297 () Int)

(assert (=> d!1658390 (>= lt!2114297 0)))

(declare-fun e!3197368 () Int)

(assert (=> d!1658390 (= lt!2114297 e!3197368)))

(declare-fun c!881452 () Bool)

(assert (=> d!1658390 (= c!881452 ((_ is Nil!59326) input!5798))))

(assert (=> d!1658390 (= (size!39556 input!5798) lt!2114297)))

(declare-fun b!5126880 () Bool)

(assert (=> b!5126880 (= e!3197368 0)))

(declare-fun b!5126881 () Bool)

(assert (=> b!5126881 (= e!3197368 (+ 1 (size!39556 (t!372477 input!5798))))))

(assert (= (and d!1658390 c!881452) b!5126880))

(assert (= (and d!1658390 (not c!881452)) b!5126881))

(declare-fun m!6190888 () Bool)

(assert (=> b!5126881 m!6190888))

(assert (=> b!5126807 d!1658390))

(declare-fun d!1658400 () Bool)

(declare-fun lt!2114299 () Int)

(assert (=> d!1658400 (>= lt!2114299 0)))

(declare-fun e!3197369 () Int)

(assert (=> d!1658400 (= lt!2114299 e!3197369)))

(declare-fun c!881453 () Bool)

(assert (=> d!1658400 (= c!881453 ((_ is Nil!59326) testedP!289))))

(assert (=> d!1658400 (= (size!39556 testedP!289) lt!2114299)))

(declare-fun b!5126882 () Bool)

(assert (=> b!5126882 (= e!3197369 0)))

(declare-fun b!5126883 () Bool)

(assert (=> b!5126883 (= e!3197369 (+ 1 (size!39556 (t!372477 testedP!289))))))

(assert (= (and d!1658400 c!881453) b!5126882))

(assert (= (and d!1658400 (not c!881453)) b!5126883))

(declare-fun m!6190890 () Bool)

(assert (=> b!5126883 m!6190890))

(assert (=> b!5126807 d!1658400))

(declare-fun b!5126887 () Bool)

(declare-fun e!3197371 () Bool)

(assert (=> b!5126887 (= e!3197371 (>= (size!39556 (tail!10097 input!5798)) (size!39556 (tail!10097 testedP!289))))))

(declare-fun b!5126886 () Bool)

(declare-fun e!3197372 () Bool)

(assert (=> b!5126886 (= e!3197372 (isPrefix!5662 (tail!10097 (tail!10097 testedP!289)) (tail!10097 (tail!10097 input!5798))))))

(declare-fun b!5126884 () Bool)

(declare-fun e!3197370 () Bool)

(assert (=> b!5126884 (= e!3197370 e!3197372)))

(declare-fun res!2182948 () Bool)

(assert (=> b!5126884 (=> (not res!2182948) (not e!3197372))))

(assert (=> b!5126884 (= res!2182948 (not ((_ is Nil!59326) (tail!10097 input!5798))))))

(declare-fun b!5126885 () Bool)

(declare-fun res!2182950 () Bool)

(assert (=> b!5126885 (=> (not res!2182950) (not e!3197372))))

(assert (=> b!5126885 (= res!2182950 (= (head!10962 (tail!10097 testedP!289)) (head!10962 (tail!10097 input!5798))))))

(declare-fun d!1658402 () Bool)

(assert (=> d!1658402 e!3197371))

(declare-fun res!2182947 () Bool)

(assert (=> d!1658402 (=> res!2182947 e!3197371)))

(declare-fun lt!2114300 () Bool)

(assert (=> d!1658402 (= res!2182947 (not lt!2114300))))

(assert (=> d!1658402 (= lt!2114300 e!3197370)))

(declare-fun res!2182949 () Bool)

(assert (=> d!1658402 (=> res!2182949 e!3197370)))

(assert (=> d!1658402 (= res!2182949 ((_ is Nil!59326) (tail!10097 testedP!289)))))

(assert (=> d!1658402 (= (isPrefix!5662 (tail!10097 testedP!289) (tail!10097 input!5798)) lt!2114300)))

(assert (= (and d!1658402 (not res!2182949)) b!5126884))

(assert (= (and b!5126884 res!2182948) b!5126885))

(assert (= (and b!5126885 res!2182950) b!5126886))

(assert (= (and d!1658402 (not res!2182947)) b!5126887))

(assert (=> b!5126887 m!6190812))

(declare-fun m!6190892 () Bool)

(assert (=> b!5126887 m!6190892))

(assert (=> b!5126887 m!6190810))

(declare-fun m!6190894 () Bool)

(assert (=> b!5126887 m!6190894))

(assert (=> b!5126886 m!6190810))

(declare-fun m!6190896 () Bool)

(assert (=> b!5126886 m!6190896))

(assert (=> b!5126886 m!6190812))

(declare-fun m!6190898 () Bool)

(assert (=> b!5126886 m!6190898))

(assert (=> b!5126886 m!6190896))

(assert (=> b!5126886 m!6190898))

(declare-fun m!6190900 () Bool)

(assert (=> b!5126886 m!6190900))

(assert (=> b!5126885 m!6190810))

(declare-fun m!6190902 () Bool)

(assert (=> b!5126885 m!6190902))

(assert (=> b!5126885 m!6190812))

(declare-fun m!6190904 () Bool)

(assert (=> b!5126885 m!6190904))

(assert (=> b!5126806 d!1658402))

(declare-fun d!1658404 () Bool)

(assert (=> d!1658404 (= (tail!10097 testedP!289) (t!372477 testedP!289))))

(assert (=> b!5126806 d!1658404))

(declare-fun d!1658408 () Bool)

(assert (=> d!1658408 (= (tail!10097 input!5798) (t!372477 input!5798))))

(assert (=> b!5126806 d!1658408))

(declare-fun d!1658410 () Bool)

(declare-fun lt!2114307 () Bool)

(declare-datatypes ((List!59452 0))(
  ( (Nil!59328) (Cons!59328 (h!65776 Context!7282) (t!372479 List!59452)) )
))
(declare-fun exists!1509 (List!59452 Int) Bool)

(declare-fun toList!8280 ((InoxSet Context!7282)) List!59452)

(assert (=> d!1658410 (= lt!2114307 (exists!1509 (toList!8280 z!4546) lambda!251893))))

(declare-fun choose!37754 ((InoxSet Context!7282) Int) Bool)

(assert (=> d!1658410 (= lt!2114307 (choose!37754 z!4546 lambda!251893))))

(assert (=> d!1658410 (= (exists!1506 z!4546 lambda!251893) lt!2114307)))

(declare-fun bs!1194066 () Bool)

(assert (= bs!1194066 d!1658410))

(declare-fun m!6190916 () Bool)

(assert (=> bs!1194066 m!6190916))

(assert (=> bs!1194066 m!6190916))

(declare-fun m!6190918 () Bool)

(assert (=> bs!1194066 m!6190918))

(declare-fun m!6190920 () Bool)

(assert (=> bs!1194066 m!6190920))

(assert (=> d!1658332 d!1658410))

(declare-fun d!1658424 () Bool)

(assert (=> d!1658424 (= (isEmpty!31966 Nil!59326) true)))

(assert (=> d!1658336 d!1658424))

(declare-fun d!1658430 () Bool)

(assert (=> d!1658430 (= (head!10962 testedP!289) (h!65774 testedP!289))))

(assert (=> b!5126805 d!1658430))

(declare-fun d!1658436 () Bool)

(assert (=> d!1658436 (= (head!10962 input!5798) (h!65774 input!5798))))

(assert (=> b!5126805 d!1658436))

(declare-fun d!1658438 () Bool)

(assert (not d!1658438))

(assert (=> b!5126783 d!1658438))

(declare-fun d!1658442 () Bool)

(assert (not d!1658442))

(assert (=> b!5126783 d!1658442))

(declare-fun d!1658444 () Bool)

(assert (not d!1658444))

(assert (=> b!5126783 d!1658444))

(declare-fun d!1658446 () Bool)

(assert (not d!1658446))

(assert (=> b!5126783 d!1658446))

(assert (=> b!5126782 d!1658332))

(declare-fun bs!1194071 () Bool)

(declare-fun d!1658448 () Bool)

(assert (= bs!1194071 (and d!1658448 d!1658334)))

(declare-fun lambda!251913 () Int)

(assert (=> bs!1194071 (= lambda!251913 lambda!251899)))

(declare-fun bs!1194072 () Bool)

(assert (= bs!1194072 (and d!1658448 d!1658356)))

(assert (=> bs!1194072 (= lambda!251913 lambda!251904)))

(assert (=> d!1658448 (= (inv!78823 setElem!30677) (forall!13651 (exprs!4141 setElem!30677) lambda!251913))))

(declare-fun bs!1194073 () Bool)

(assert (= bs!1194073 d!1658448))

(declare-fun m!6190944 () Bool)

(assert (=> bs!1194073 m!6190944))

(assert (=> setNonEmpty!30677 d!1658448))

(declare-fun d!1658450 () Bool)

(declare-fun c!881459 () Bool)

(assert (=> d!1658450 (= c!881459 ((_ is Cons!59326) (t!372477 testedP!289)))))

(declare-fun e!3197389 () (InoxSet Context!7282))

(assert (=> d!1658450 (= (derivationZipper!154 (derivationStepZipper!869 baseZ!61 (h!65774 testedP!289)) (t!372477 testedP!289)) e!3197389)))

(declare-fun b!5126910 () Bool)

(assert (=> b!5126910 (= e!3197389 (derivationZipper!154 (derivationStepZipper!869 (derivationStepZipper!869 baseZ!61 (h!65774 testedP!289)) (h!65774 (t!372477 testedP!289))) (t!372477 (t!372477 testedP!289))))))

(declare-fun b!5126911 () Bool)

(assert (=> b!5126911 (= e!3197389 (derivationStepZipper!869 baseZ!61 (h!65774 testedP!289)))))

(assert (= (and d!1658450 c!881459) b!5126910))

(assert (= (and d!1658450 (not c!881459)) b!5126911))

(assert (=> b!5126910 m!6190742))

(declare-fun m!6190946 () Bool)

(assert (=> b!5126910 m!6190946))

(assert (=> b!5126910 m!6190946))

(declare-fun m!6190948 () Bool)

(assert (=> b!5126910 m!6190948))

(assert (=> b!5126776 d!1658450))

(declare-fun d!1658452 () Bool)

(assert (=> d!1658452 true))

(declare-fun lambda!251916 () Int)

(declare-fun flatMap!371 ((InoxSet Context!7282) Int) (InoxSet Context!7282))

(assert (=> d!1658452 (= (derivationStepZipper!869 baseZ!61 (h!65774 testedP!289)) (flatMap!371 baseZ!61 lambda!251916))))

(declare-fun bs!1194077 () Bool)

(assert (= bs!1194077 d!1658452))

(declare-fun m!6190958 () Bool)

(assert (=> bs!1194077 m!6190958))

(assert (=> b!5126776 d!1658452))

(declare-fun d!1658458 () Bool)

(assert (=> d!1658458 (= (isEmpty!31966 testedP!289) ((_ is Nil!59326) testedP!289))))

(assert (=> d!1658360 d!1658458))

(declare-fun bs!1194078 () Bool)

(declare-fun d!1658460 () Bool)

(assert (= bs!1194078 (and d!1658460 d!1658334)))

(declare-fun lambda!251917 () Int)

(assert (=> bs!1194078 (= lambda!251917 lambda!251899)))

(declare-fun bs!1194079 () Bool)

(assert (= bs!1194079 (and d!1658460 d!1658356)))

(assert (=> bs!1194079 (= lambda!251917 lambda!251904)))

(declare-fun bs!1194080 () Bool)

(assert (= bs!1194080 (and d!1658460 d!1658448)))

(assert (=> bs!1194080 (= lambda!251917 lambda!251913)))

(assert (=> d!1658460 (= (inv!78823 setElem!30678) (forall!13651 (exprs!4141 setElem!30678) lambda!251917))))

(declare-fun bs!1194081 () Bool)

(assert (= bs!1194081 d!1658460))

(declare-fun m!6190960 () Bool)

(assert (=> bs!1194081 m!6190960))

(assert (=> setNonEmpty!30678 d!1658460))

(declare-fun d!1658462 () Bool)

(declare-fun c!881462 () Bool)

(assert (=> d!1658462 (= c!881462 (isEmpty!31966 (tail!10097 testedP!289)))))

(declare-fun e!3197402 () Bool)

(assert (=> d!1658462 (= (matchZipper!925 (derivationStepZipper!869 baseZ!61 (head!10962 testedP!289)) (tail!10097 testedP!289)) e!3197402)))

(declare-fun b!5126940 () Bool)

(assert (=> b!5126940 (= e!3197402 (nullableZipper!1052 (derivationStepZipper!869 baseZ!61 (head!10962 testedP!289))))))

(declare-fun b!5126941 () Bool)

(assert (=> b!5126941 (= e!3197402 (matchZipper!925 (derivationStepZipper!869 (derivationStepZipper!869 baseZ!61 (head!10962 testedP!289)) (head!10962 (tail!10097 testedP!289))) (tail!10097 (tail!10097 testedP!289))))))

(assert (= (and d!1658462 c!881462) b!5126940))

(assert (= (and d!1658462 (not c!881462)) b!5126941))

(assert (=> d!1658462 m!6190810))

(declare-fun m!6190962 () Bool)

(assert (=> d!1658462 m!6190962))

(assert (=> b!5126940 m!6190828))

(declare-fun m!6190964 () Bool)

(assert (=> b!5126940 m!6190964))

(assert (=> b!5126941 m!6190810))

(assert (=> b!5126941 m!6190902))

(assert (=> b!5126941 m!6190828))

(assert (=> b!5126941 m!6190902))

(declare-fun m!6190966 () Bool)

(assert (=> b!5126941 m!6190966))

(assert (=> b!5126941 m!6190810))

(assert (=> b!5126941 m!6190896))

(assert (=> b!5126941 m!6190966))

(assert (=> b!5126941 m!6190896))

(declare-fun m!6190968 () Bool)

(assert (=> b!5126941 m!6190968))

(assert (=> b!5126809 d!1658462))

(declare-fun bs!1194082 () Bool)

(declare-fun d!1658464 () Bool)

(assert (= bs!1194082 (and d!1658464 d!1658452)))

(declare-fun lambda!251918 () Int)

(assert (=> bs!1194082 (= (= (head!10962 testedP!289) (h!65774 testedP!289)) (= lambda!251918 lambda!251916))))

(assert (=> d!1658464 true))

(assert (=> d!1658464 (= (derivationStepZipper!869 baseZ!61 (head!10962 testedP!289)) (flatMap!371 baseZ!61 lambda!251918))))

(declare-fun bs!1194083 () Bool)

(assert (= bs!1194083 d!1658464))

(declare-fun m!6190970 () Bool)

(assert (=> bs!1194083 m!6190970))

(assert (=> b!5126809 d!1658464))

(assert (=> b!5126809 d!1658430))

(assert (=> b!5126809 d!1658404))

(assert (=> d!1658344 d!1658360))

(declare-fun d!1658466 () Bool)

(declare-fun c!881463 () Bool)

(assert (=> d!1658466 (= c!881463 (isEmpty!31966 Nil!59326))))

(declare-fun e!3197403 () Bool)

(assert (=> d!1658466 (= (matchZipper!925 (derivationZipper!154 baseZ!61 testedP!289) Nil!59326) e!3197403)))

(declare-fun b!5126942 () Bool)

(assert (=> b!5126942 (= e!3197403 (nullableZipper!1052 (derivationZipper!154 baseZ!61 testedP!289)))))

(declare-fun b!5126943 () Bool)

(assert (=> b!5126943 (= e!3197403 (matchZipper!925 (derivationStepZipper!869 (derivationZipper!154 baseZ!61 testedP!289) (head!10962 Nil!59326)) (tail!10097 Nil!59326)))))

(assert (= (and d!1658466 c!881463) b!5126942))

(assert (= (and d!1658466 (not c!881463)) b!5126943))

(assert (=> d!1658466 m!6190754))

(assert (=> b!5126942 m!6190726))

(declare-fun m!6190972 () Bool)

(assert (=> b!5126942 m!6190972))

(assert (=> b!5126943 m!6190756))

(assert (=> b!5126943 m!6190726))

(assert (=> b!5126943 m!6190756))

(declare-fun m!6190974 () Bool)

(assert (=> b!5126943 m!6190974))

(assert (=> b!5126943 m!6190760))

(assert (=> b!5126943 m!6190974))

(assert (=> b!5126943 m!6190760))

(declare-fun m!6190976 () Bool)

(assert (=> b!5126943 m!6190976))

(assert (=> d!1658344 d!1658466))

(assert (=> d!1658344 d!1658330))

(declare-fun d!1658468 () Bool)

(assert (=> d!1658468 (= (matchZipper!925 baseZ!61 testedP!289) (matchZipper!925 (derivationZipper!154 baseZ!61 testedP!289) Nil!59326))))

(assert (=> d!1658468 true))

(declare-fun _$82!131 () Unit!150511)

(assert (=> d!1658468 (= (choose!37751 baseZ!61 testedP!289) _$82!131)))

(declare-fun bs!1194084 () Bool)

(assert (= bs!1194084 d!1658468))

(assert (=> bs!1194084 m!6190740))

(assert (=> bs!1194084 m!6190726))

(assert (=> bs!1194084 m!6190726))

(assert (=> bs!1194084 m!6190784))

(assert (=> d!1658344 d!1658468))

(declare-fun bs!1194085 () Bool)

(declare-fun d!1658470 () Bool)

(assert (= bs!1194085 (and d!1658470 d!1658332)))

(declare-fun lambda!251919 () Int)

(assert (=> bs!1194085 (= lambda!251919 lambda!251893)))

(assert (=> d!1658470 (= (nullableZipper!1052 baseZ!61) (exists!1506 baseZ!61 lambda!251919))))

(declare-fun bs!1194086 () Bool)

(assert (= bs!1194086 d!1658470))

(declare-fun m!6190978 () Bool)

(assert (=> bs!1194086 m!6190978))

(assert (=> b!5126808 d!1658470))

(declare-fun d!1658472 () Bool)

(declare-fun res!2182963 () Bool)

(declare-fun e!3197404 () Bool)

(assert (=> d!1658472 (=> res!2182963 e!3197404)))

(assert (=> d!1658472 (= res!2182963 ((_ is Nil!59325) (exprs!4141 setElem!30673)))))

(assert (=> d!1658472 (= (forall!13651 (exprs!4141 setElem!30673) lambda!251899) e!3197404)))

(declare-fun b!5126944 () Bool)

(declare-fun e!3197405 () Bool)

(assert (=> b!5126944 (= e!3197404 e!3197405)))

(declare-fun res!2182964 () Bool)

(assert (=> b!5126944 (=> (not res!2182964) (not e!3197405))))

(assert (=> b!5126944 (= res!2182964 (dynLambda!23618 lambda!251899 (h!65773 (exprs!4141 setElem!30673))))))

(declare-fun b!5126945 () Bool)

(assert (=> b!5126945 (= e!3197405 (forall!13651 (t!372476 (exprs!4141 setElem!30673)) lambda!251899))))

(assert (= (and d!1658472 (not res!2182963)) b!5126944))

(assert (= (and b!5126944 res!2182964) b!5126945))

(declare-fun b_lambda!199075 () Bool)

(assert (=> (not b_lambda!199075) (not b!5126944)))

(declare-fun m!6190980 () Bool)

(assert (=> b!5126944 m!6190980))

(declare-fun m!6190982 () Bool)

(assert (=> b!5126945 m!6190982))

(assert (=> d!1658334 d!1658472))

(assert (=> d!1658342 d!1658424))

(declare-fun d!1658474 () Bool)

(assert (not d!1658474))

(assert (=> b!5126785 d!1658474))

(declare-fun d!1658476 () Bool)

(assert (not d!1658476))

(assert (=> b!5126785 d!1658476))

(assert (=> b!5126785 d!1658444))

(assert (=> b!5126785 d!1658446))

(declare-fun bs!1194087 () Bool)

(declare-fun d!1658478 () Bool)

(assert (= bs!1194087 (and d!1658478 d!1658332)))

(declare-fun lambda!251920 () Int)

(assert (=> bs!1194087 (= lambda!251920 lambda!251893)))

(declare-fun bs!1194088 () Bool)

(assert (= bs!1194088 (and d!1658478 d!1658470)))

(assert (=> bs!1194088 (= lambda!251920 lambda!251919)))

(assert (=> d!1658478 (= (nullableZipper!1052 lt!2114280) (exists!1506 lt!2114280 lambda!251920))))

(declare-fun bs!1194089 () Bool)

(assert (= bs!1194089 d!1658478))

(declare-fun m!6190984 () Bool)

(assert (=> bs!1194089 m!6190984))

(assert (=> b!5126784 d!1658478))

(declare-fun b!5126959 () Bool)

(declare-fun e!3197408 () Bool)

(declare-fun tp!1430157 () Bool)

(declare-fun tp!1430154 () Bool)

(assert (=> b!5126959 (= e!3197408 (and tp!1430157 tp!1430154))))

(declare-fun b!5126958 () Bool)

(declare-fun tp!1430155 () Bool)

(assert (=> b!5126958 (= e!3197408 tp!1430155)))

(assert (=> b!5126819 (= tp!1430077 e!3197408)))

(declare-fun b!5126956 () Bool)

(assert (=> b!5126956 (= e!3197408 tp_is_empty!37787)))

(declare-fun b!5126957 () Bool)

(declare-fun tp!1430156 () Bool)

(declare-fun tp!1430158 () Bool)

(assert (=> b!5126957 (= e!3197408 (and tp!1430156 tp!1430158))))

(assert (= (and b!5126819 ((_ is ElementMatch!14257) (h!65773 (exprs!4141 setElem!30673)))) b!5126956))

(assert (= (and b!5126819 ((_ is Concat!23102) (h!65773 (exprs!4141 setElem!30673)))) b!5126957))

(assert (= (and b!5126819 ((_ is Star!14257) (h!65773 (exprs!4141 setElem!30673)))) b!5126958))

(assert (= (and b!5126819 ((_ is Union!14257) (h!65773 (exprs!4141 setElem!30673)))) b!5126959))

(declare-fun b!5126960 () Bool)

(declare-fun e!3197409 () Bool)

(declare-fun tp!1430159 () Bool)

(declare-fun tp!1430160 () Bool)

(assert (=> b!5126960 (= e!3197409 (and tp!1430159 tp!1430160))))

(assert (=> b!5126819 (= tp!1430078 e!3197409)))

(assert (= (and b!5126819 ((_ is Cons!59325) (t!372476 (exprs!4141 setElem!30673)))) b!5126960))

(declare-fun b!5126961 () Bool)

(declare-fun e!3197410 () Bool)

(declare-fun tp!1430161 () Bool)

(declare-fun tp!1430162 () Bool)

(assert (=> b!5126961 (= e!3197410 (and tp!1430161 tp!1430162))))

(assert (=> b!5126824 (= tp!1430083 e!3197410)))

(assert (= (and b!5126824 ((_ is Cons!59325) (exprs!4141 setElem!30677))) b!5126961))

(declare-fun b!5126962 () Bool)

(declare-fun e!3197411 () Bool)

(declare-fun tp!1430163 () Bool)

(assert (=> b!5126962 (= e!3197411 (and tp_is_empty!37787 tp!1430163))))

(assert (=> b!5126831 (= tp!1430085 e!3197411)))

(assert (= (and b!5126831 ((_ is Cons!59326) (t!372477 (t!372477 input!5798)))) b!5126962))

(declare-fun b!5126963 () Bool)

(declare-fun e!3197412 () Bool)

(declare-fun tp!1430164 () Bool)

(assert (=> b!5126963 (= e!3197412 (and tp_is_empty!37787 tp!1430164))))

(assert (=> b!5126814 (= tp!1430072 e!3197412)))

(assert (= (and b!5126814 ((_ is Cons!59326) (t!372477 (t!372477 testedP!289)))) b!5126963))

(declare-fun b!5126967 () Bool)

(declare-fun e!3197413 () Bool)

(declare-fun tp!1430168 () Bool)

(declare-fun tp!1430165 () Bool)

(assert (=> b!5126967 (= e!3197413 (and tp!1430168 tp!1430165))))

(declare-fun b!5126966 () Bool)

(declare-fun tp!1430166 () Bool)

(assert (=> b!5126966 (= e!3197413 tp!1430166)))

(assert (=> b!5126834 (= tp!1430086 e!3197413)))

(declare-fun b!5126964 () Bool)

(assert (=> b!5126964 (= e!3197413 tp_is_empty!37787)))

(declare-fun b!5126965 () Bool)

(declare-fun tp!1430167 () Bool)

(declare-fun tp!1430169 () Bool)

(assert (=> b!5126965 (= e!3197413 (and tp!1430167 tp!1430169))))

(assert (= (and b!5126834 ((_ is ElementMatch!14257) (h!65773 (exprs!4141 setElem!30674)))) b!5126964))

(assert (= (and b!5126834 ((_ is Concat!23102) (h!65773 (exprs!4141 setElem!30674)))) b!5126965))

(assert (= (and b!5126834 ((_ is Star!14257) (h!65773 (exprs!4141 setElem!30674)))) b!5126966))

(assert (= (and b!5126834 ((_ is Union!14257) (h!65773 (exprs!4141 setElem!30674)))) b!5126967))

(declare-fun b!5126968 () Bool)

(declare-fun e!3197414 () Bool)

(declare-fun tp!1430170 () Bool)

(declare-fun tp!1430171 () Bool)

(assert (=> b!5126968 (= e!3197414 (and tp!1430170 tp!1430171))))

(assert (=> b!5126834 (= tp!1430087 e!3197414)))

(assert (= (and b!5126834 ((_ is Cons!59325) (t!372476 (exprs!4141 setElem!30674)))) b!5126968))

(declare-fun condSetEmpty!30685 () Bool)

(assert (=> setNonEmpty!30677 (= condSetEmpty!30685 (= setRest!30677 ((as const (Array Context!7282 Bool)) false)))))

(declare-fun setRes!30685 () Bool)

(assert (=> setNonEmpty!30677 (= tp!1430084 setRes!30685)))

(declare-fun setIsEmpty!30685 () Bool)

(assert (=> setIsEmpty!30685 setRes!30685))

(declare-fun e!3197415 () Bool)

(declare-fun setElem!30685 () Context!7282)

(declare-fun setNonEmpty!30685 () Bool)

(declare-fun tp!1430173 () Bool)

(assert (=> setNonEmpty!30685 (= setRes!30685 (and tp!1430173 (inv!78823 setElem!30685) e!3197415))))

(declare-fun setRest!30685 () (InoxSet Context!7282))

(assert (=> setNonEmpty!30685 (= setRest!30677 ((_ map or) (store ((as const (Array Context!7282 Bool)) false) setElem!30685 true) setRest!30685))))

(declare-fun b!5126969 () Bool)

(declare-fun tp!1430172 () Bool)

(assert (=> b!5126969 (= e!3197415 tp!1430172)))

(assert (= (and setNonEmpty!30677 condSetEmpty!30685) setIsEmpty!30685))

(assert (= (and setNonEmpty!30677 (not condSetEmpty!30685)) setNonEmpty!30685))

(assert (= setNonEmpty!30685 b!5126969))

(declare-fun m!6190986 () Bool)

(assert (=> setNonEmpty!30685 m!6190986))

(declare-fun b!5126970 () Bool)

(declare-fun e!3197416 () Bool)

(declare-fun tp!1430174 () Bool)

(declare-fun tp!1430175 () Bool)

(assert (=> b!5126970 (= e!3197416 (and tp!1430174 tp!1430175))))

(assert (=> b!5126835 (= tp!1430088 e!3197416)))

(assert (= (and b!5126835 ((_ is Cons!59325) (exprs!4141 setElem!30678))) b!5126970))

(declare-fun condSetEmpty!30686 () Bool)

(assert (=> setNonEmpty!30678 (= condSetEmpty!30686 (= setRest!30678 ((as const (Array Context!7282 Bool)) false)))))

(declare-fun setRes!30686 () Bool)

(assert (=> setNonEmpty!30678 (= tp!1430089 setRes!30686)))

(declare-fun setIsEmpty!30686 () Bool)

(assert (=> setIsEmpty!30686 setRes!30686))

(declare-fun e!3197417 () Bool)

(declare-fun setNonEmpty!30686 () Bool)

(declare-fun tp!1430177 () Bool)

(declare-fun setElem!30686 () Context!7282)

(assert (=> setNonEmpty!30686 (= setRes!30686 (and tp!1430177 (inv!78823 setElem!30686) e!3197417))))

(declare-fun setRest!30686 () (InoxSet Context!7282))

(assert (=> setNonEmpty!30686 (= setRest!30678 ((_ map or) (store ((as const (Array Context!7282 Bool)) false) setElem!30686 true) setRest!30686))))

(declare-fun b!5126971 () Bool)

(declare-fun tp!1430176 () Bool)

(assert (=> b!5126971 (= e!3197417 tp!1430176)))

(assert (= (and setNonEmpty!30678 condSetEmpty!30686) setIsEmpty!30686))

(assert (= (and setNonEmpty!30678 (not condSetEmpty!30686)) setNonEmpty!30686))

(assert (= setNonEmpty!30686 b!5126971))

(declare-fun m!6190988 () Bool)

(assert (=> setNonEmpty!30686 m!6190988))

(declare-fun b_lambda!199077 () Bool)

(assert (= b_lambda!199065 (or d!1658356 b_lambda!199077)))

(declare-fun bs!1194090 () Bool)

(declare-fun d!1658480 () Bool)

(assert (= bs!1194090 (and d!1658480 d!1658356)))

(declare-fun validRegex!6219 (Regex!14257) Bool)

(assert (=> bs!1194090 (= (dynLambda!23618 lambda!251904 (h!65773 (exprs!4141 setElem!30674))) (validRegex!6219 (h!65773 (exprs!4141 setElem!30674))))))

(declare-fun m!6190990 () Bool)

(assert (=> bs!1194090 m!6190990))

(assert (=> b!5126870 d!1658480))

(declare-fun b_lambda!199079 () Bool)

(assert (= b_lambda!199075 (or d!1658334 b_lambda!199079)))

(declare-fun bs!1194091 () Bool)

(declare-fun d!1658482 () Bool)

(assert (= bs!1194091 (and d!1658482 d!1658334)))

(assert (=> bs!1194091 (= (dynLambda!23618 lambda!251899 (h!65773 (exprs!4141 setElem!30673))) (validRegex!6219 (h!65773 (exprs!4141 setElem!30673))))))

(declare-fun m!6190992 () Bool)

(assert (=> bs!1194091 m!6190992))

(assert (=> b!5126944 d!1658482))

(check-sat tp_is_empty!37787 (not d!1658478) (not b_lambda!199079) (not b!5126960) (not bs!1194090) (not b!5126943) (not d!1658452) (not b!5126963) (not b_lambda!199077) (not b!5126971) (not d!1658470) (not b!5126968) (not b!5126966) (not b!5126881) (not d!1658464) (not b!5126965) (not b!5126959) (not b!5126941) (not d!1658460) (not b!5126940) (not b!5126886) (not d!1658410) (not d!1658466) (not b!5126871) (not bs!1194091) (not b!5126969) (not b!5126885) (not b!5126962) (not b!5126957) (not b!5126887) (not b!5126883) (not b!5126945) (not d!1658462) (not b!5126910) (not b!5126967) (not d!1658448) (not d!1658468) (not b!5126958) (not b!5126970) (not setNonEmpty!30686) (not b!5126961) (not setNonEmpty!30685) (not b!5126942))
(check-sat)
