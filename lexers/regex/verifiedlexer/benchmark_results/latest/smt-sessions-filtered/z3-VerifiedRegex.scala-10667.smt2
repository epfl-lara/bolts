; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546536 () Bool)

(assert start!546536)

(declare-datatypes ((C!29432 0))(
  ( (C!29433 (val!24418 Int)) )
))
(declare-datatypes ((Regex!14581 0))(
  ( (ElementMatch!14581 (c!888792 C!29432)) (Concat!23426 (regOne!29674 Regex!14581) (regTwo!29674 Regex!14581)) (EmptyExpr!14581) (Star!14581 (reg!14910 Regex!14581)) (EmptyLang!14581) (Union!14581 (regOne!29675 Regex!14581) (regTwo!29675 Regex!14581)) )
))
(declare-datatypes ((List!60117 0))(
  ( (Nil!59993) (Cons!59993 (h!66441 Regex!14581) (t!373270 List!60117)) )
))
(declare-datatypes ((Context!7930 0))(
  ( (Context!7931 (exprs!4465 List!60117)) )
))
(declare-fun setElem!31700 () Context!7930)

(declare-fun tp!1449215 () Bool)

(declare-fun e!3218773 () Bool)

(declare-fun setNonEmpty!31699 () Bool)

(declare-fun setRes!31700 () Bool)

(declare-fun inv!79699 (Context!7930) Bool)

(assert (=> setNonEmpty!31699 (= setRes!31700 (and tp!1449215 (inv!79699 setElem!31700) e!3218773))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!62 () (InoxSet Context!7930))

(declare-fun setRest!31699 () (InoxSet Context!7930))

(assert (=> setNonEmpty!31699 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7930 Bool)) false) setElem!31700 true) setRest!31699))))

(declare-fun b!5165796 () Bool)

(declare-fun e!3218771 () Bool)

(assert (=> b!5165796 (= e!3218771 (not true))))

(declare-fun lt!2124625 () Int)

(declare-fun lt!2124626 () Int)

(assert (=> b!5165796 (<= lt!2124625 lt!2124626)))

(declare-datatypes ((Unit!151436 0))(
  ( (Unit!151437) )
))
(declare-fun lt!2124624 () Unit!151436)

(declare-datatypes ((List!60118 0))(
  ( (Nil!59994) (Cons!59994 (h!66442 C!29432) (t!373271 List!60118)) )
))
(declare-fun testedP!294 () List!60118)

(declare-fun input!5817 () List!60118)

(declare-fun lemmaIsPrefixThenSmallerEqSize!877 (List!60118 List!60118) Unit!151436)

(assert (=> b!5165796 (= lt!2124624 (lemmaIsPrefixThenSmallerEqSize!877 testedP!294 input!5817))))

(declare-fun b!5165797 () Bool)

(declare-fun res!2195998 () Bool)

(assert (=> b!5165797 (=> (not res!2195998) (not e!3218771))))

(assert (=> b!5165797 (= res!2195998 (not (= testedP!294 input!5817)))))

(declare-fun tp!1449214 () Bool)

(declare-fun e!3218769 () Bool)

(declare-fun setRes!31699 () Bool)

(declare-fun setNonEmpty!31700 () Bool)

(declare-fun setElem!31699 () Context!7930)

(assert (=> setNonEmpty!31700 (= setRes!31699 (and tp!1449214 (inv!79699 setElem!31699) e!3218769))))

(declare-fun z!4581 () (InoxSet Context!7930))

(declare-fun setRest!31700 () (InoxSet Context!7930))

(assert (=> setNonEmpty!31700 (= z!4581 ((_ map or) (store ((as const (Array Context!7930 Bool)) false) setElem!31699 true) setRest!31700))))

(declare-fun setIsEmpty!31699 () Bool)

(assert (=> setIsEmpty!31699 setRes!31699))

(declare-fun b!5165798 () Bool)

(declare-fun tp!1449212 () Bool)

(assert (=> b!5165798 (= e!3218773 tp!1449212)))

(declare-fun b!5165799 () Bool)

(declare-fun e!3218774 () Bool)

(declare-fun tp_is_empty!38415 () Bool)

(declare-fun tp!1449211 () Bool)

(assert (=> b!5165799 (= e!3218774 (and tp_is_empty!38415 tp!1449211))))

(declare-fun b!5165800 () Bool)

(declare-fun tp!1449210 () Bool)

(assert (=> b!5165800 (= e!3218769 tp!1449210)))

(declare-fun b!5165801 () Bool)

(declare-fun e!3218770 () Bool)

(assert (=> b!5165801 (= e!3218770 e!3218771)))

(declare-fun res!2195996 () Bool)

(assert (=> b!5165801 (=> (not res!2195996) (not e!3218771))))

(declare-fun lt!2124623 () List!60118)

(declare-fun isEmpty!32119 (List!60118) Bool)

(declare-datatypes ((tuple2!63716 0))(
  ( (tuple2!63717 (_1!35161 List!60118) (_2!35161 List!60118)) )
))
(declare-fun findLongestMatchInnerZipper!239 ((InoxSet Context!7930) List!60118 Int List!60118 List!60118 Int) tuple2!63716)

(assert (=> b!5165801 (= res!2195996 (not (isEmpty!32119 (_1!35161 (findLongestMatchInnerZipper!239 z!4581 testedP!294 lt!2124625 lt!2124623 input!5817 lt!2124626)))))))

(declare-fun size!39617 (List!60118) Int)

(assert (=> b!5165801 (= lt!2124626 (size!39617 input!5817))))

(declare-fun getSuffix!3364 (List!60118 List!60118) List!60118)

(assert (=> b!5165801 (= lt!2124623 (getSuffix!3364 input!5817 testedP!294))))

(assert (=> b!5165801 (= lt!2124625 (size!39617 testedP!294))))

(declare-fun res!2195995 () Bool)

(assert (=> start!546536 (=> (not res!2195995) (not e!3218770))))

(declare-fun isPrefix!5714 (List!60118 List!60118) Bool)

(assert (=> start!546536 (= res!2195995 (isPrefix!5714 testedP!294 input!5817))))

(assert (=> start!546536 e!3218770))

(declare-fun e!3218772 () Bool)

(assert (=> start!546536 e!3218772))

(assert (=> start!546536 e!3218774))

(declare-fun condSetEmpty!31699 () Bool)

(assert (=> start!546536 (= condSetEmpty!31699 (= baseZ!62 ((as const (Array Context!7930 Bool)) false)))))

(assert (=> start!546536 setRes!31700))

(declare-fun condSetEmpty!31700 () Bool)

(assert (=> start!546536 (= condSetEmpty!31700 (= z!4581 ((as const (Array Context!7930 Bool)) false)))))

(assert (=> start!546536 setRes!31699))

(declare-fun b!5165802 () Bool)

(declare-fun tp!1449213 () Bool)

(assert (=> b!5165802 (= e!3218772 (and tp_is_empty!38415 tp!1449213))))

(declare-fun setIsEmpty!31700 () Bool)

(assert (=> setIsEmpty!31700 setRes!31700))

(declare-fun b!5165803 () Bool)

(declare-fun res!2195997 () Bool)

(assert (=> b!5165803 (=> (not res!2195997) (not e!3218770))))

(declare-fun derivationZipper!204 ((InoxSet Context!7930) List!60118) (InoxSet Context!7930))

(assert (=> b!5165803 (= res!2195997 (= (derivationZipper!204 baseZ!62 testedP!294) z!4581))))

(assert (= (and start!546536 res!2195995) b!5165803))

(assert (= (and b!5165803 res!2195997) b!5165801))

(assert (= (and b!5165801 res!2195996) b!5165797))

(assert (= (and b!5165797 res!2195998) b!5165796))

(get-info :version)

(assert (= (and start!546536 ((_ is Cons!59994) testedP!294)) b!5165802))

(assert (= (and start!546536 ((_ is Cons!59994) input!5817)) b!5165799))

(assert (= (and start!546536 condSetEmpty!31699) setIsEmpty!31700))

(assert (= (and start!546536 (not condSetEmpty!31699)) setNonEmpty!31699))

(assert (= setNonEmpty!31699 b!5165798))

(assert (= (and start!546536 condSetEmpty!31700) setIsEmpty!31699))

(assert (= (and start!546536 (not condSetEmpty!31700)) setNonEmpty!31700))

(assert (= setNonEmpty!31700 b!5165800))

(declare-fun m!6216236 () Bool)

(assert (=> b!5165801 m!6216236))

(declare-fun m!6216238 () Bool)

(assert (=> b!5165801 m!6216238))

(declare-fun m!6216240 () Bool)

(assert (=> b!5165801 m!6216240))

(declare-fun m!6216242 () Bool)

(assert (=> b!5165801 m!6216242))

(declare-fun m!6216244 () Bool)

(assert (=> b!5165801 m!6216244))

(declare-fun m!6216246 () Bool)

(assert (=> start!546536 m!6216246))

(declare-fun m!6216248 () Bool)

(assert (=> setNonEmpty!31699 m!6216248))

(declare-fun m!6216250 () Bool)

(assert (=> b!5165803 m!6216250))

(declare-fun m!6216252 () Bool)

(assert (=> b!5165796 m!6216252))

(declare-fun m!6216254 () Bool)

(assert (=> setNonEmpty!31700 m!6216254))

(check-sat (not b!5165796) tp_is_empty!38415 (not setNonEmpty!31700) (not b!5165800) (not b!5165801) (not b!5165799) (not b!5165803) (not start!546536) (not setNonEmpty!31699) (not b!5165802) (not b!5165798))
(check-sat)
