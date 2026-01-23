; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519708 () Bool)

(assert start!519708)

(declare-fun b!4940120 () Bool)

(declare-fun e!3086677 () Bool)

(declare-fun e!3086676 () Bool)

(assert (=> b!4940120 (= e!3086677 e!3086676)))

(declare-fun res!2108225 () Bool)

(assert (=> b!4940120 (=> res!2108225 e!3086676)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27136 0))(
  ( (C!27137 (val!22902 Int)) )
))
(declare-datatypes ((Regex!13451 0))(
  ( (ElementMatch!13451 (c!842512 C!27136)) (Concat!22024 (regOne!27414 Regex!13451) (regTwo!27414 Regex!13451)) (EmptyExpr!13451) (Star!13451 (reg!13780 Regex!13451)) (EmptyLang!13451) (Union!13451 (regOne!27415 Regex!13451) (regTwo!27415 Regex!13451)) )
))
(declare-datatypes ((List!57015 0))(
  ( (Nil!56891) (Cons!56891 (h!63339 Regex!13451) (t!367523 List!57015)) )
))
(declare-datatypes ((Context!6186 0))(
  ( (Context!6187 (exprs!3593 List!57015)) )
))
(declare-fun z!3568 () (InoxSet Context!6186))

(declare-fun lostCauseZipper!769 ((InoxSet Context!6186)) Bool)

(assert (=> b!4940120 (= res!2108225 (lostCauseZipper!769 z!3568))))

(declare-datatypes ((List!57016 0))(
  ( (Nil!56892) (Cons!56892 (h!63340 C!27136) (t!367524 List!57016)) )
))
(declare-fun testedSuffix!70 () List!57016)

(declare-fun lt!2036499 () List!57016)

(assert (=> b!4940120 (and (= testedSuffix!70 lt!2036499) (= lt!2036499 testedSuffix!70))))

(declare-fun testedP!110 () List!57016)

(declare-fun lt!2036498 () List!57016)

(declare-datatypes ((Unit!147641 0))(
  ( (Unit!147642) )
))
(declare-fun lt!2036494 () Unit!147641)

(declare-fun lemmaSamePrefixThenSameSuffix!2447 (List!57016 List!57016 List!57016 List!57016 List!57016) Unit!147641)

(assert (=> b!4940120 (= lt!2036494 (lemmaSamePrefixThenSameSuffix!2447 testedP!110 testedSuffix!70 testedP!110 lt!2036499 lt!2036498))))

(declare-fun getSuffix!3033 (List!57016 List!57016) List!57016)

(assert (=> b!4940120 (= lt!2036499 (getSuffix!3033 lt!2036498 testedP!110))))

(declare-fun b!4940121 () Bool)

(declare-fun e!3086674 () Bool)

(declare-fun tp_is_empty!36083 () Bool)

(declare-fun tp!1386137 () Bool)

(assert (=> b!4940121 (= e!3086674 (and tp_is_empty!36083 tp!1386137))))

(declare-fun b!4940122 () Bool)

(declare-fun e!3086673 () Bool)

(declare-fun tp!1386138 () Bool)

(assert (=> b!4940122 (= e!3086673 (and tp_is_empty!36083 tp!1386138))))

(declare-fun res!2108223 () Bool)

(declare-fun e!3086675 () Bool)

(assert (=> start!519708 (=> (not res!2108223) (not e!3086675))))

(declare-fun lt!2036495 () List!57016)

(assert (=> start!519708 (= res!2108223 (= lt!2036495 lt!2036498))))

(declare-datatypes ((IArray!29985 0))(
  ( (IArray!29986 (innerList!15050 List!57016)) )
))
(declare-datatypes ((Conc!14962 0))(
  ( (Node!14962 (left!41501 Conc!14962) (right!41831 Conc!14962) (csize!30154 Int) (cheight!15173 Int)) (Leaf!24876 (xs!18286 IArray!29985) (csize!30155 Int)) (Empty!14962) )
))
(declare-datatypes ((BalanceConc!29354 0))(
  ( (BalanceConc!29355 (c!842513 Conc!14962)) )
))
(declare-fun totalInput!685 () BalanceConc!29354)

(declare-fun list!18093 (BalanceConc!29354) List!57016)

(assert (=> start!519708 (= lt!2036498 (list!18093 totalInput!685))))

(declare-fun ++!12424 (List!57016 List!57016) List!57016)

(assert (=> start!519708 (= lt!2036495 (++!12424 testedP!110 testedSuffix!70))))

(assert (=> start!519708 e!3086675))

(assert (=> start!519708 e!3086673))

(declare-fun condSetEmpty!27896 () Bool)

(assert (=> start!519708 (= condSetEmpty!27896 (= z!3568 ((as const (Array Context!6186 Bool)) false)))))

(declare-fun setRes!27896 () Bool)

(assert (=> start!519708 setRes!27896))

(assert (=> start!519708 true))

(declare-fun e!3086678 () Bool)

(declare-fun inv!73987 (BalanceConc!29354) Bool)

(assert (=> start!519708 (and (inv!73987 totalInput!685) e!3086678)))

(assert (=> start!519708 e!3086674))

(declare-fun b!4940123 () Bool)

(assert (=> b!4940123 (= e!3086675 (not e!3086677))))

(declare-fun res!2108227 () Bool)

(assert (=> b!4940123 (=> res!2108227 e!3086677)))

(declare-fun isPrefix!5051 (List!57016 List!57016) Bool)

(assert (=> b!4940123 (= res!2108227 (not (isPrefix!5051 testedP!110 lt!2036498)))))

(assert (=> b!4940123 (isPrefix!5051 testedP!110 lt!2036495)))

(declare-fun lt!2036496 () Unit!147641)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3275 (List!57016 List!57016) Unit!147641)

(assert (=> b!4940123 (= lt!2036496 (lemmaConcatTwoListThenFirstIsPrefix!3275 testedP!110 testedSuffix!70))))

(declare-fun b!4940124 () Bool)

(declare-fun res!2108224 () Bool)

(assert (=> b!4940124 (=> (not res!2108224) (not e!3086675))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37703 (BalanceConc!29354) Int)

(assert (=> b!4940124 (= res!2108224 (= totalInputSize!132 (size!37703 totalInput!685)))))

(declare-fun b!4940125 () Bool)

(declare-fun tp!1386139 () Bool)

(declare-fun inv!73988 (Conc!14962) Bool)

(assert (=> b!4940125 (= e!3086678 (and (inv!73988 (c!842513 totalInput!685)) tp!1386139))))

(declare-fun b!4940126 () Bool)

(declare-fun res!2108228 () Bool)

(assert (=> b!4940126 (=> (not res!2108228) (not e!3086675))))

(declare-fun testedPSize!70 () Int)

(declare-fun size!37704 (List!57016) Int)

(assert (=> b!4940126 (= res!2108228 (= testedPSize!70 (size!37704 testedP!110)))))

(declare-fun b!4940127 () Bool)

(assert (=> b!4940127 (= e!3086676 true)))

(declare-fun lt!2036497 () List!57016)

(declare-datatypes ((tuple2!61428 0))(
  ( (tuple2!61429 (_1!34017 BalanceConc!29354) (_2!34017 BalanceConc!29354)) )
))
(declare-fun lt!2036493 () tuple2!61428)

(assert (=> b!4940127 (= lt!2036497 (++!12424 (list!18093 (_1!34017 lt!2036493)) (list!18093 (_2!34017 lt!2036493))))))

(declare-fun splitAt!364 (BalanceConc!29354 Int) tuple2!61428)

(assert (=> b!4940127 (= lt!2036493 (splitAt!364 totalInput!685 testedPSize!70))))

(declare-fun setIsEmpty!27896 () Bool)

(assert (=> setIsEmpty!27896 setRes!27896))

(declare-fun b!4940128 () Bool)

(declare-fun res!2108226 () Bool)

(assert (=> b!4940128 (=> res!2108226 e!3086676)))

(assert (=> b!4940128 (= res!2108226 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4940129 () Bool)

(declare-fun e!3086679 () Bool)

(declare-fun tp!1386141 () Bool)

(assert (=> b!4940129 (= e!3086679 tp!1386141)))

(declare-fun tp!1386140 () Bool)

(declare-fun setElem!27896 () Context!6186)

(declare-fun setNonEmpty!27896 () Bool)

(declare-fun inv!73989 (Context!6186) Bool)

(assert (=> setNonEmpty!27896 (= setRes!27896 (and tp!1386140 (inv!73989 setElem!27896) e!3086679))))

(declare-fun setRest!27896 () (InoxSet Context!6186))

(assert (=> setNonEmpty!27896 (= z!3568 ((_ map or) (store ((as const (Array Context!6186 Bool)) false) setElem!27896 true) setRest!27896))))

(assert (= (and start!519708 res!2108223) b!4940126))

(assert (= (and b!4940126 res!2108228) b!4940124))

(assert (= (and b!4940124 res!2108224) b!4940123))

(assert (= (and b!4940123 (not res!2108227)) b!4940120))

(assert (= (and b!4940120 (not res!2108225)) b!4940128))

(assert (= (and b!4940128 (not res!2108226)) b!4940127))

(get-info :version)

(assert (= (and start!519708 ((_ is Cons!56892) testedP!110)) b!4940122))

(assert (= (and start!519708 condSetEmpty!27896) setIsEmpty!27896))

(assert (= (and start!519708 (not condSetEmpty!27896)) setNonEmpty!27896))

(assert (= setNonEmpty!27896 b!4940129))

(assert (= start!519708 b!4940125))

(assert (= (and start!519708 ((_ is Cons!56892) testedSuffix!70)) b!4940121))

(declare-fun m!5962642 () Bool)

(assert (=> b!4940126 m!5962642))

(declare-fun m!5962644 () Bool)

(assert (=> b!4940123 m!5962644))

(declare-fun m!5962646 () Bool)

(assert (=> b!4940123 m!5962646))

(declare-fun m!5962648 () Bool)

(assert (=> b!4940123 m!5962648))

(declare-fun m!5962650 () Bool)

(assert (=> b!4940124 m!5962650))

(declare-fun m!5962652 () Bool)

(assert (=> start!519708 m!5962652))

(declare-fun m!5962654 () Bool)

(assert (=> start!519708 m!5962654))

(declare-fun m!5962656 () Bool)

(assert (=> start!519708 m!5962656))

(declare-fun m!5962658 () Bool)

(assert (=> b!4940127 m!5962658))

(declare-fun m!5962660 () Bool)

(assert (=> b!4940127 m!5962660))

(assert (=> b!4940127 m!5962658))

(assert (=> b!4940127 m!5962660))

(declare-fun m!5962662 () Bool)

(assert (=> b!4940127 m!5962662))

(declare-fun m!5962664 () Bool)

(assert (=> b!4940127 m!5962664))

(declare-fun m!5962666 () Bool)

(assert (=> b!4940120 m!5962666))

(declare-fun m!5962668 () Bool)

(assert (=> b!4940120 m!5962668))

(declare-fun m!5962670 () Bool)

(assert (=> b!4940120 m!5962670))

(declare-fun m!5962672 () Bool)

(assert (=> setNonEmpty!27896 m!5962672))

(declare-fun m!5962674 () Bool)

(assert (=> b!4940125 m!5962674))

(check-sat tp_is_empty!36083 (not b!4940120) (not start!519708) (not setNonEmpty!27896) (not b!4940129) (not b!4940124) (not b!4940126) (not b!4940123) (not b!4940127) (not b!4940121) (not b!4940122) (not b!4940125))
(check-sat)
