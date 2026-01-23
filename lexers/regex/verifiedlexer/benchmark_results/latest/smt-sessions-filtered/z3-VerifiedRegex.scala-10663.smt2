; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546484 () Bool)

(assert start!546484)

(declare-fun b!5165383 () Bool)

(declare-fun e!3218511 () Bool)

(declare-fun e!3218512 () Bool)

(assert (=> b!5165383 (= e!3218511 e!3218512)))

(declare-fun res!2195838 () Bool)

(assert (=> b!5165383 (=> (not res!2195838) (not e!3218512))))

(declare-datatypes ((C!29416 0))(
  ( (C!29417 (val!24410 Int)) )
))
(declare-datatypes ((List!60101 0))(
  ( (Nil!59977) (Cons!59977 (h!66425 C!29416) (t!373254 List!60101)) )
))
(declare-fun input!5817 () List!60101)

(declare-fun lt!2124382 () Int)

(declare-fun testedP!294 () List!60101)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14573 0))(
  ( (ElementMatch!14573 (c!888718 C!29416)) (Concat!23418 (regOne!29658 Regex!14573) (regTwo!29658 Regex!14573)) (EmptyExpr!14573) (Star!14573 (reg!14902 Regex!14573)) (EmptyLang!14573) (Union!14573 (regOne!29659 Regex!14573) (regTwo!29659 Regex!14573)) )
))
(declare-datatypes ((List!60102 0))(
  ( (Nil!59978) (Cons!59978 (h!66426 Regex!14573) (t!373255 List!60102)) )
))
(declare-datatypes ((Context!7914 0))(
  ( (Context!7915 (exprs!4457 List!60102)) )
))
(declare-fun z!4581 () (InoxSet Context!7914))

(declare-fun lt!2124383 () Int)

(declare-fun lt!2124384 () List!60101)

(declare-fun isEmpty!32111 (List!60101) Bool)

(declare-datatypes ((tuple2!63700 0))(
  ( (tuple2!63701 (_1!35153 List!60101) (_2!35153 List!60101)) )
))
(declare-fun findLongestMatchInnerZipper!231 ((InoxSet Context!7914) List!60101 Int List!60101 List!60101 Int) tuple2!63700)

(assert (=> b!5165383 (= res!2195838 (not (isEmpty!32111 (_1!35153 (findLongestMatchInnerZipper!231 z!4581 testedP!294 lt!2124382 lt!2124384 input!5817 lt!2124383)))))))

(declare-fun size!39609 (List!60101) Int)

(assert (=> b!5165383 (= lt!2124383 (size!39609 input!5817))))

(declare-fun getSuffix!3356 (List!60101 List!60101) List!60101)

(assert (=> b!5165383 (= lt!2124384 (getSuffix!3356 input!5817 testedP!294))))

(assert (=> b!5165383 (= lt!2124382 (size!39609 testedP!294))))

(declare-fun b!5165384 () Bool)

(declare-fun e!3218513 () Bool)

(declare-fun tp_is_empty!38399 () Bool)

(declare-fun tp!1449029 () Bool)

(assert (=> b!5165384 (= e!3218513 (and tp_is_empty!38399 tp!1449029))))

(declare-fun b!5165385 () Bool)

(declare-fun e!3218514 () Bool)

(declare-fun tp!1449030 () Bool)

(assert (=> b!5165385 (= e!3218514 tp!1449030)))

(declare-fun setIsEmpty!31643 () Bool)

(declare-fun setRes!31643 () Bool)

(assert (=> setIsEmpty!31643 setRes!31643))

(declare-fun b!5165386 () Bool)

(declare-fun res!2195840 () Bool)

(assert (=> b!5165386 (=> (not res!2195840) (not e!3218512))))

(assert (=> b!5165386 (= res!2195840 (= testedP!294 input!5817))))

(declare-fun res!2195839 () Bool)

(assert (=> start!546484 (=> (not res!2195839) (not e!3218511))))

(declare-fun isPrefix!5706 (List!60101 List!60101) Bool)

(assert (=> start!546484 (= res!2195839 (isPrefix!5706 testedP!294 input!5817))))

(assert (=> start!546484 e!3218511))

(declare-fun e!3218510 () Bool)

(assert (=> start!546484 e!3218510))

(assert (=> start!546484 e!3218513))

(declare-fun condSetEmpty!31643 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!7914))

(assert (=> start!546484 (= condSetEmpty!31643 (= baseZ!62 ((as const (Array Context!7914 Bool)) false)))))

(declare-fun setRes!31644 () Bool)

(assert (=> start!546484 setRes!31644))

(declare-fun condSetEmpty!31644 () Bool)

(assert (=> start!546484 (= condSetEmpty!31644 (= z!4581 ((as const (Array Context!7914 Bool)) false)))))

(assert (=> start!546484 setRes!31643))

(declare-fun setElem!31644 () Context!7914)

(declare-fun tp!1449028 () Bool)

(declare-fun setNonEmpty!31643 () Bool)

(declare-fun inv!79679 (Context!7914) Bool)

(assert (=> setNonEmpty!31643 (= setRes!31644 (and tp!1449028 (inv!79679 setElem!31644) e!3218514))))

(declare-fun setRest!31644 () (InoxSet Context!7914))

(assert (=> setNonEmpty!31643 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7914 Bool)) false) setElem!31644 true) setRest!31644))))

(declare-fun b!5165387 () Bool)

(declare-fun res!2195842 () Bool)

(assert (=> b!5165387 (=> (not res!2195842) (not e!3218512))))

(declare-fun nullableZipper!1129 ((InoxSet Context!7914)) Bool)

(assert (=> b!5165387 (= res!2195842 (not (nullableZipper!1129 z!4581)))))

(declare-fun b!5165388 () Bool)

(assert (=> b!5165388 (= e!3218512 (< lt!2124383 lt!2124382))))

(declare-fun setElem!31643 () Context!7914)

(declare-fun e!3218509 () Bool)

(declare-fun tp!1449027 () Bool)

(declare-fun setNonEmpty!31644 () Bool)

(assert (=> setNonEmpty!31644 (= setRes!31643 (and tp!1449027 (inv!79679 setElem!31643) e!3218509))))

(declare-fun setRest!31643 () (InoxSet Context!7914))

(assert (=> setNonEmpty!31644 (= z!4581 ((_ map or) (store ((as const (Array Context!7914 Bool)) false) setElem!31643 true) setRest!31643))))

(declare-fun b!5165389 () Bool)

(declare-fun tp!1449026 () Bool)

(assert (=> b!5165389 (= e!3218509 tp!1449026)))

(declare-fun b!5165390 () Bool)

(declare-fun res!2195841 () Bool)

(assert (=> b!5165390 (=> (not res!2195841) (not e!3218511))))

(declare-fun derivationZipper!196 ((InoxSet Context!7914) List!60101) (InoxSet Context!7914))

(assert (=> b!5165390 (= res!2195841 (= (derivationZipper!196 baseZ!62 testedP!294) z!4581))))

(declare-fun setIsEmpty!31644 () Bool)

(assert (=> setIsEmpty!31644 setRes!31644))

(declare-fun b!5165391 () Bool)

(declare-fun tp!1449031 () Bool)

(assert (=> b!5165391 (= e!3218510 (and tp_is_empty!38399 tp!1449031))))

(assert (= (and start!546484 res!2195839) b!5165390))

(assert (= (and b!5165390 res!2195841) b!5165383))

(assert (= (and b!5165383 res!2195838) b!5165386))

(assert (= (and b!5165386 res!2195840) b!5165387))

(assert (= (and b!5165387 res!2195842) b!5165388))

(get-info :version)

(assert (= (and start!546484 ((_ is Cons!59977) testedP!294)) b!5165391))

(assert (= (and start!546484 ((_ is Cons!59977) input!5817)) b!5165384))

(assert (= (and start!546484 condSetEmpty!31643) setIsEmpty!31644))

(assert (= (and start!546484 (not condSetEmpty!31643)) setNonEmpty!31643))

(assert (= setNonEmpty!31643 b!5165385))

(assert (= (and start!546484 condSetEmpty!31644) setIsEmpty!31643))

(assert (= (and start!546484 (not condSetEmpty!31644)) setNonEmpty!31644))

(assert (= setNonEmpty!31644 b!5165389))

(declare-fun m!6215884 () Bool)

(assert (=> b!5165390 m!6215884))

(declare-fun m!6215886 () Bool)

(assert (=> b!5165383 m!6215886))

(declare-fun m!6215888 () Bool)

(assert (=> b!5165383 m!6215888))

(declare-fun m!6215890 () Bool)

(assert (=> b!5165383 m!6215890))

(declare-fun m!6215892 () Bool)

(assert (=> b!5165383 m!6215892))

(declare-fun m!6215894 () Bool)

(assert (=> b!5165383 m!6215894))

(declare-fun m!6215896 () Bool)

(assert (=> setNonEmpty!31643 m!6215896))

(declare-fun m!6215898 () Bool)

(assert (=> b!5165387 m!6215898))

(declare-fun m!6215900 () Bool)

(assert (=> start!546484 m!6215900))

(declare-fun m!6215902 () Bool)

(assert (=> setNonEmpty!31644 m!6215902))

(check-sat (not start!546484) (not b!5165389) (not b!5165384) (not b!5165385) (not b!5165383) (not setNonEmpty!31644) tp_is_empty!38399 (not b!5165391) (not b!5165390) (not setNonEmpty!31643) (not b!5165387))
(check-sat)
