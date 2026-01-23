; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546544 () Bool)

(assert start!546544)

(declare-fun b!5165908 () Bool)

(declare-fun res!2196051 () Bool)

(declare-fun e!3218853 () Bool)

(assert (=> b!5165908 (=> (not res!2196051) (not e!3218853))))

(declare-datatypes ((C!29440 0))(
  ( (C!29441 (val!24422 Int)) )
))
(declare-datatypes ((List!60125 0))(
  ( (Nil!60001) (Cons!60001 (h!66449 C!29440) (t!373278 List!60125)) )
))
(declare-fun testedP!294 () List!60125)

(declare-fun input!5817 () List!60125)

(assert (=> b!5165908 (= res!2196051 (not (= testedP!294 input!5817)))))

(declare-fun b!5165909 () Bool)

(declare-fun e!3218857 () Bool)

(declare-fun tp!1449286 () Bool)

(assert (=> b!5165909 (= e!3218857 tp!1449286)))

(declare-fun res!2196052 () Bool)

(declare-fun e!3218854 () Bool)

(assert (=> start!546544 (=> (not res!2196052) (not e!3218854))))

(declare-fun isPrefix!5718 (List!60125 List!60125) Bool)

(assert (=> start!546544 (= res!2196052 (isPrefix!5718 testedP!294 input!5817))))

(assert (=> start!546544 e!3218854))

(declare-fun e!3218852 () Bool)

(assert (=> start!546544 e!3218852))

(declare-fun e!3218855 () Bool)

(assert (=> start!546544 e!3218855))

(declare-fun condSetEmpty!31723 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14585 0))(
  ( (ElementMatch!14585 (c!888802 C!29440)) (Concat!23430 (regOne!29682 Regex!14585) (regTwo!29682 Regex!14585)) (EmptyExpr!14585) (Star!14585 (reg!14914 Regex!14585)) (EmptyLang!14585) (Union!14585 (regOne!29683 Regex!14585) (regTwo!29683 Regex!14585)) )
))
(declare-datatypes ((List!60126 0))(
  ( (Nil!60002) (Cons!60002 (h!66450 Regex!14585) (t!373279 List!60126)) )
))
(declare-datatypes ((Context!7938 0))(
  ( (Context!7939 (exprs!4469 List!60126)) )
))
(declare-fun baseZ!62 () (InoxSet Context!7938))

(assert (=> start!546544 (= condSetEmpty!31723 (= baseZ!62 ((as const (Array Context!7938 Bool)) false)))))

(declare-fun setRes!31724 () Bool)

(assert (=> start!546544 setRes!31724))

(declare-fun condSetEmpty!31724 () Bool)

(declare-fun z!4581 () (InoxSet Context!7938))

(assert (=> start!546544 (= condSetEmpty!31724 (= z!4581 ((as const (Array Context!7938 Bool)) false)))))

(declare-fun setRes!31723 () Bool)

(assert (=> start!546544 setRes!31723))

(declare-fun b!5165910 () Bool)

(declare-datatypes ((Unit!151446 0))(
  ( (Unit!151447) )
))
(declare-fun e!3218858 () Unit!151446)

(declare-fun Unit!151448 () Unit!151446)

(assert (=> b!5165910 (= e!3218858 Unit!151448)))

(declare-fun b!5165911 () Bool)

(declare-fun res!2196050 () Bool)

(assert (=> b!5165911 (=> (not res!2196050) (not e!3218854))))

(declare-fun derivationZipper!208 ((InoxSet Context!7938) List!60125) (InoxSet Context!7938))

(assert (=> b!5165911 (= res!2196050 (= (derivationZipper!208 baseZ!62 testedP!294) z!4581))))

(declare-fun setIsEmpty!31723 () Bool)

(assert (=> setIsEmpty!31723 setRes!31724))

(declare-fun b!5165912 () Bool)

(declare-fun e!3218856 () Bool)

(declare-fun tp!1449287 () Bool)

(assert (=> b!5165912 (= e!3218856 tp!1449287)))

(declare-fun b!5165913 () Bool)

(declare-fun tp_is_empty!38423 () Bool)

(declare-fun tp!1449283 () Bool)

(assert (=> b!5165913 (= e!3218852 (and tp_is_empty!38423 tp!1449283))))

(declare-fun b!5165914 () Bool)

(assert (=> b!5165914 (= e!3218854 e!3218853)))

(declare-fun res!2196049 () Bool)

(assert (=> b!5165914 (=> (not res!2196049) (not e!3218853))))

(declare-fun lt!2124692 () List!60125)

(declare-fun lt!2124693 () Int)

(declare-fun lt!2124698 () Int)

(declare-fun isEmpty!32123 (List!60125) Bool)

(declare-datatypes ((tuple2!63724 0))(
  ( (tuple2!63725 (_1!35165 List!60125) (_2!35165 List!60125)) )
))
(declare-fun findLongestMatchInnerZipper!243 ((InoxSet Context!7938) List!60125 Int List!60125 List!60125 Int) tuple2!63724)

(assert (=> b!5165914 (= res!2196049 (not (isEmpty!32123 (_1!35165 (findLongestMatchInnerZipper!243 z!4581 testedP!294 lt!2124693 lt!2124692 input!5817 lt!2124698)))))))

(declare-fun size!39621 (List!60125) Int)

(assert (=> b!5165914 (= lt!2124698 (size!39621 input!5817))))

(declare-fun getSuffix!3368 (List!60125 List!60125) List!60125)

(assert (=> b!5165914 (= lt!2124692 (getSuffix!3368 input!5817 testedP!294))))

(assert (=> b!5165914 (= lt!2124693 (size!39621 testedP!294))))

(declare-fun b!5165915 () Bool)

(assert (=> b!5165915 (= e!3218853 (not (or (>= lt!2124693 lt!2124698) (>= lt!2124698 lt!2124693))))))

(declare-fun lt!2124694 () Unit!151446)

(assert (=> b!5165915 (= lt!2124694 e!3218858)))

(declare-fun c!888801 () Bool)

(assert (=> b!5165915 (= c!888801 (= lt!2124693 lt!2124698))))

(assert (=> b!5165915 (<= lt!2124693 lt!2124698)))

(declare-fun lt!2124697 () Unit!151446)

(declare-fun lemmaIsPrefixThenSmallerEqSize!881 (List!60125 List!60125) Unit!151446)

(assert (=> b!5165915 (= lt!2124697 (lemmaIsPrefixThenSmallerEqSize!881 testedP!294 input!5817))))

(declare-fun setElem!31724 () Context!7938)

(declare-fun tp!1449284 () Bool)

(declare-fun setNonEmpty!31723 () Bool)

(declare-fun inv!79709 (Context!7938) Bool)

(assert (=> setNonEmpty!31723 (= setRes!31723 (and tp!1449284 (inv!79709 setElem!31724) e!3218857))))

(declare-fun setRest!31724 () (InoxSet Context!7938))

(assert (=> setNonEmpty!31723 (= z!4581 ((_ map or) (store ((as const (Array Context!7938 Bool)) false) setElem!31724 true) setRest!31724))))

(declare-fun setIsEmpty!31724 () Bool)

(assert (=> setIsEmpty!31724 setRes!31723))

(declare-fun b!5165916 () Bool)

(declare-fun Unit!151449 () Unit!151446)

(assert (=> b!5165916 (= e!3218858 Unit!151449)))

(declare-fun lt!2124696 () Unit!151446)

(declare-fun lemmaIsPrefixRefl!3725 (List!60125 List!60125) Unit!151446)

(assert (=> b!5165916 (= lt!2124696 (lemmaIsPrefixRefl!3725 input!5817 input!5817))))

(assert (=> b!5165916 (isPrefix!5718 input!5817 input!5817)))

(declare-fun lt!2124695 () Unit!151446)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1367 (List!60125 List!60125 List!60125) Unit!151446)

(assert (=> b!5165916 (= lt!2124695 (lemmaIsPrefixSameLengthThenSameList!1367 input!5817 testedP!294 input!5817))))

(assert (=> b!5165916 false))

(declare-fun b!5165917 () Bool)

(declare-fun tp!1449285 () Bool)

(assert (=> b!5165917 (= e!3218855 (and tp_is_empty!38423 tp!1449285))))

(declare-fun tp!1449282 () Bool)

(declare-fun setElem!31723 () Context!7938)

(declare-fun setNonEmpty!31724 () Bool)

(assert (=> setNonEmpty!31724 (= setRes!31724 (and tp!1449282 (inv!79709 setElem!31723) e!3218856))))

(declare-fun setRest!31723 () (InoxSet Context!7938))

(assert (=> setNonEmpty!31724 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7938 Bool)) false) setElem!31723 true) setRest!31723))))

(assert (= (and start!546544 res!2196052) b!5165911))

(assert (= (and b!5165911 res!2196050) b!5165914))

(assert (= (and b!5165914 res!2196049) b!5165908))

(assert (= (and b!5165908 res!2196051) b!5165915))

(assert (= (and b!5165915 c!888801) b!5165916))

(assert (= (and b!5165915 (not c!888801)) b!5165910))

(get-info :version)

(assert (= (and start!546544 ((_ is Cons!60001) testedP!294)) b!5165913))

(assert (= (and start!546544 ((_ is Cons!60001) input!5817)) b!5165917))

(assert (= (and start!546544 condSetEmpty!31723) setIsEmpty!31723))

(assert (= (and start!546544 (not condSetEmpty!31723)) setNonEmpty!31724))

(assert (= setNonEmpty!31724 b!5165912))

(assert (= (and start!546544 condSetEmpty!31724) setIsEmpty!31724))

(assert (= (and start!546544 (not condSetEmpty!31724)) setNonEmpty!31723))

(assert (= setNonEmpty!31723 b!5165909))

(declare-fun m!6216330 () Bool)

(assert (=> setNonEmpty!31724 m!6216330))

(declare-fun m!6216332 () Bool)

(assert (=> setNonEmpty!31723 m!6216332))

(declare-fun m!6216334 () Bool)

(assert (=> b!5165911 m!6216334))

(declare-fun m!6216336 () Bool)

(assert (=> b!5165914 m!6216336))

(declare-fun m!6216338 () Bool)

(assert (=> b!5165914 m!6216338))

(declare-fun m!6216340 () Bool)

(assert (=> b!5165914 m!6216340))

(declare-fun m!6216342 () Bool)

(assert (=> b!5165914 m!6216342))

(declare-fun m!6216344 () Bool)

(assert (=> b!5165914 m!6216344))

(declare-fun m!6216346 () Bool)

(assert (=> b!5165916 m!6216346))

(declare-fun m!6216348 () Bool)

(assert (=> b!5165916 m!6216348))

(declare-fun m!6216350 () Bool)

(assert (=> b!5165916 m!6216350))

(declare-fun m!6216352 () Bool)

(assert (=> b!5165915 m!6216352))

(declare-fun m!6216354 () Bool)

(assert (=> start!546544 m!6216354))

(check-sat (not start!546544) (not b!5165912) (not b!5165911) tp_is_empty!38423 (not b!5165915) (not setNonEmpty!31723) (not b!5165909) (not b!5165916) (not b!5165917) (not setNonEmpty!31724) (not b!5165913) (not b!5165914))
(check-sat)
