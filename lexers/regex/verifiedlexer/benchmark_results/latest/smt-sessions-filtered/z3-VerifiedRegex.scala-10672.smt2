; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546652 () Bool)

(assert start!546652)

(declare-fun b!5166521 () Bool)

(declare-fun e!3219242 () Bool)

(declare-fun e!3219244 () Bool)

(assert (=> b!5166521 (= e!3219242 e!3219244)))

(declare-fun res!2196262 () Bool)

(assert (=> b!5166521 (=> (not res!2196262) (not e!3219244))))

(declare-datatypes ((C!29452 0))(
  ( (C!29453 (val!24428 Int)) )
))
(declare-datatypes ((List!60139 0))(
  ( (Nil!60015) (Cons!60015 (h!66463 C!29452) (t!373292 List!60139)) )
))
(declare-fun input!5817 () List!60139)

(declare-fun lt!2125179 () Int)

(declare-fun testedP!294 () List!60139)

(declare-fun lt!2125182 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14591 0))(
  ( (ElementMatch!14591 (c!888952 C!29452)) (Concat!23436 (regOne!29694 Regex!14591) (regTwo!29694 Regex!14591)) (EmptyExpr!14591) (Star!14591 (reg!14920 Regex!14591)) (EmptyLang!14591) (Union!14591 (regOne!29695 Regex!14591) (regTwo!29695 Regex!14591)) )
))
(declare-datatypes ((List!60140 0))(
  ( (Nil!60016) (Cons!60016 (h!66464 Regex!14591) (t!373293 List!60140)) )
))
(declare-datatypes ((Context!7950 0))(
  ( (Context!7951 (exprs!4475 List!60140)) )
))
(declare-fun z!4581 () (InoxSet Context!7950))

(declare-fun lt!2125184 () List!60139)

(declare-fun isEmpty!32131 (List!60139) Bool)

(declare-datatypes ((tuple2!63736 0))(
  ( (tuple2!63737 (_1!35171 List!60139) (_2!35171 List!60139)) )
))
(declare-fun findLongestMatchInnerZipper!249 ((InoxSet Context!7950) List!60139 Int List!60139 List!60139 Int) tuple2!63736)

(assert (=> b!5166521 (= res!2196262 (not (isEmpty!32131 (_1!35171 (findLongestMatchInnerZipper!249 z!4581 testedP!294 lt!2125182 lt!2125184 input!5817 lt!2125179)))))))

(declare-fun size!39627 (List!60139) Int)

(assert (=> b!5166521 (= lt!2125179 (size!39627 input!5817))))

(declare-fun getSuffix!3374 (List!60139 List!60139) List!60139)

(assert (=> b!5166521 (= lt!2125184 (getSuffix!3374 input!5817 testedP!294))))

(assert (=> b!5166521 (= lt!2125182 (size!39627 testedP!294))))

(declare-fun b!5166522 () Bool)

(declare-fun e!3219243 () Bool)

(declare-fun tp_is_empty!38435 () Bool)

(declare-fun tp!1449503 () Bool)

(assert (=> b!5166522 (= e!3219243 (and tp_is_empty!38435 tp!1449503))))

(declare-fun b!5166523 () Bool)

(declare-fun e!3219241 () Bool)

(assert (=> b!5166523 (= e!3219241 true)))

(declare-fun lt!2125183 () List!60139)

(declare-fun ++!13115 (List!60139 List!60139) List!60139)

(declare-fun head!11015 (List!60139) C!29452)

(assert (=> b!5166523 (= lt!2125183 (++!13115 testedP!294 (Cons!60015 (head!11015 lt!2125184) Nil!60015)))))

(declare-fun setIsEmpty!31771 () Bool)

(declare-fun setRes!31771 () Bool)

(assert (=> setIsEmpty!31771 setRes!31771))

(declare-fun res!2196260 () Bool)

(assert (=> start!546652 (=> (not res!2196260) (not e!3219242))))

(declare-fun isPrefix!5724 (List!60139 List!60139) Bool)

(assert (=> start!546652 (= res!2196260 (isPrefix!5724 testedP!294 input!5817))))

(assert (=> start!546652 e!3219242))

(assert (=> start!546652 e!3219243))

(declare-fun e!3219239 () Bool)

(assert (=> start!546652 e!3219239))

(declare-fun condSetEmpty!31771 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!7950))

(assert (=> start!546652 (= condSetEmpty!31771 (= baseZ!62 ((as const (Array Context!7950 Bool)) false)))))

(assert (=> start!546652 setRes!31771))

(declare-fun condSetEmpty!31772 () Bool)

(assert (=> start!546652 (= condSetEmpty!31772 (= z!4581 ((as const (Array Context!7950 Bool)) false)))))

(declare-fun setRes!31772 () Bool)

(assert (=> start!546652 setRes!31772))

(declare-fun b!5166524 () Bool)

(declare-datatypes ((Unit!151486 0))(
  ( (Unit!151487) )
))
(declare-fun e!3219240 () Unit!151486)

(declare-fun Unit!151488 () Unit!151486)

(assert (=> b!5166524 (= e!3219240 Unit!151488)))

(declare-fun lt!2125181 () Unit!151486)

(declare-fun lemmaIsPrefixRefl!3731 (List!60139 List!60139) Unit!151486)

(assert (=> b!5166524 (= lt!2125181 (lemmaIsPrefixRefl!3731 input!5817 input!5817))))

(assert (=> b!5166524 (isPrefix!5724 input!5817 input!5817)))

(declare-fun lt!2125178 () Unit!151486)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1373 (List!60139 List!60139 List!60139) Unit!151486)

(assert (=> b!5166524 (= lt!2125178 (lemmaIsPrefixSameLengthThenSameList!1373 input!5817 testedP!294 input!5817))))

(assert (=> b!5166524 false))

(declare-fun b!5166525 () Bool)

(declare-fun e!3219246 () Bool)

(declare-fun tp!1449499 () Bool)

(assert (=> b!5166525 (= e!3219246 tp!1449499)))

(declare-fun setIsEmpty!31772 () Bool)

(assert (=> setIsEmpty!31772 setRes!31772))

(declare-fun b!5166526 () Bool)

(declare-fun res!2196259 () Bool)

(assert (=> b!5166526 (=> (not res!2196259) (not e!3219242))))

(declare-fun derivationZipper!214 ((InoxSet Context!7950) List!60139) (InoxSet Context!7950))

(assert (=> b!5166526 (= res!2196259 (= (derivationZipper!214 baseZ!62 testedP!294) z!4581))))

(declare-fun tp!1449502 () Bool)

(declare-fun setNonEmpty!31771 () Bool)

(declare-fun setElem!31771 () Context!7950)

(declare-fun inv!79724 (Context!7950) Bool)

(assert (=> setNonEmpty!31771 (= setRes!31772 (and tp!1449502 (inv!79724 setElem!31771) e!3219246))))

(declare-fun setRest!31772 () (InoxSet Context!7950))

(assert (=> setNonEmpty!31771 (= z!4581 ((_ map or) (store ((as const (Array Context!7950 Bool)) false) setElem!31771 true) setRest!31772))))

(declare-fun b!5166527 () Bool)

(assert (=> b!5166527 (= e!3219244 (not e!3219241))))

(declare-fun res!2196258 () Bool)

(assert (=> b!5166527 (=> res!2196258 e!3219241)))

(assert (=> b!5166527 (= res!2196258 (>= lt!2125182 lt!2125179))))

(declare-fun lt!2125180 () Unit!151486)

(assert (=> b!5166527 (= lt!2125180 e!3219240)))

(declare-fun c!888951 () Bool)

(assert (=> b!5166527 (= c!888951 (= lt!2125182 lt!2125179))))

(assert (=> b!5166527 (<= lt!2125182 lt!2125179)))

(declare-fun lt!2125177 () Unit!151486)

(declare-fun lemmaIsPrefixThenSmallerEqSize!887 (List!60139 List!60139) Unit!151486)

(assert (=> b!5166527 (= lt!2125177 (lemmaIsPrefixThenSmallerEqSize!887 testedP!294 input!5817))))

(declare-fun b!5166528 () Bool)

(declare-fun e!3219245 () Bool)

(declare-fun tp!1449501 () Bool)

(assert (=> b!5166528 (= e!3219245 tp!1449501)))

(declare-fun b!5166529 () Bool)

(declare-fun res!2196261 () Bool)

(assert (=> b!5166529 (=> (not res!2196261) (not e!3219244))))

(assert (=> b!5166529 (= res!2196261 (not (= testedP!294 input!5817)))))

(declare-fun b!5166530 () Bool)

(declare-fun Unit!151489 () Unit!151486)

(assert (=> b!5166530 (= e!3219240 Unit!151489)))

(declare-fun b!5166531 () Bool)

(declare-fun tp!1449500 () Bool)

(assert (=> b!5166531 (= e!3219239 (and tp_is_empty!38435 tp!1449500))))

(declare-fun setNonEmpty!31772 () Bool)

(declare-fun setElem!31772 () Context!7950)

(declare-fun tp!1449498 () Bool)

(assert (=> setNonEmpty!31772 (= setRes!31771 (and tp!1449498 (inv!79724 setElem!31772) e!3219245))))

(declare-fun setRest!31771 () (InoxSet Context!7950))

(assert (=> setNonEmpty!31772 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7950 Bool)) false) setElem!31772 true) setRest!31771))))

(assert (= (and start!546652 res!2196260) b!5166526))

(assert (= (and b!5166526 res!2196259) b!5166521))

(assert (= (and b!5166521 res!2196262) b!5166529))

(assert (= (and b!5166529 res!2196261) b!5166527))

(assert (= (and b!5166527 c!888951) b!5166524))

(assert (= (and b!5166527 (not c!888951)) b!5166530))

(assert (= (and b!5166527 (not res!2196258)) b!5166523))

(get-info :version)

(assert (= (and start!546652 ((_ is Cons!60015) testedP!294)) b!5166522))

(assert (= (and start!546652 ((_ is Cons!60015) input!5817)) b!5166531))

(assert (= (and start!546652 condSetEmpty!31771) setIsEmpty!31771))

(assert (= (and start!546652 (not condSetEmpty!31771)) setNonEmpty!31772))

(assert (= setNonEmpty!31772 b!5166528))

(assert (= (and start!546652 condSetEmpty!31772) setIsEmpty!31772))

(assert (= (and start!546652 (not condSetEmpty!31772)) setNonEmpty!31771))

(assert (= setNonEmpty!31771 b!5166525))

(declare-fun m!6217106 () Bool)

(assert (=> b!5166524 m!6217106))

(declare-fun m!6217108 () Bool)

(assert (=> b!5166524 m!6217108))

(declare-fun m!6217110 () Bool)

(assert (=> b!5166524 m!6217110))

(declare-fun m!6217112 () Bool)

(assert (=> b!5166523 m!6217112))

(declare-fun m!6217114 () Bool)

(assert (=> b!5166523 m!6217114))

(declare-fun m!6217116 () Bool)

(assert (=> b!5166526 m!6217116))

(declare-fun m!6217118 () Bool)

(assert (=> setNonEmpty!31772 m!6217118))

(declare-fun m!6217120 () Bool)

(assert (=> b!5166527 m!6217120))

(declare-fun m!6217122 () Bool)

(assert (=> b!5166521 m!6217122))

(declare-fun m!6217124 () Bool)

(assert (=> b!5166521 m!6217124))

(declare-fun m!6217126 () Bool)

(assert (=> b!5166521 m!6217126))

(declare-fun m!6217128 () Bool)

(assert (=> b!5166521 m!6217128))

(declare-fun m!6217130 () Bool)

(assert (=> b!5166521 m!6217130))

(declare-fun m!6217132 () Bool)

(assert (=> setNonEmpty!31771 m!6217132))

(declare-fun m!6217134 () Bool)

(assert (=> start!546652 m!6217134))

(check-sat tp_is_empty!38435 (not b!5166521) (not b!5166527) (not setNonEmpty!31771) (not b!5166528) (not setNonEmpty!31772) (not b!5166524) (not b!5166525) (not b!5166531) (not b!5166523) (not start!546652) (not b!5166526) (not b!5166522))
(check-sat)
