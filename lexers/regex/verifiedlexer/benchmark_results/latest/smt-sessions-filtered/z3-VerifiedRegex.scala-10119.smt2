; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530194 () Bool)

(assert start!530194)

(declare-fun b!5018244 () Bool)

(declare-fun res!2139834 () Bool)

(declare-fun e!3134995 () Bool)

(assert (=> b!5018244 (=> (not res!2139834) (not e!3134995))))

(declare-fun knownSize!24 () Int)

(assert (=> b!5018244 (= res!2139834 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun res!2139836 () Bool)

(declare-fun e!3134992 () Bool)

(assert (=> start!530194 (=> (not res!2139836) (not e!3134992))))

(declare-fun from!1212 () Int)

(assert (=> start!530194 (= res!2139836 (>= from!1212 0))))

(assert (=> start!530194 e!3134992))

(assert (=> start!530194 true))

(declare-datatypes ((C!27896 0))(
  ( (C!27897 (val!23314 Int)) )
))
(declare-datatypes ((List!58070 0))(
  ( (Nil!57946) (Cons!57946 (h!64394 C!27896) (t!370446 List!58070)) )
))
(declare-datatypes ((IArray!30745 0))(
  ( (IArray!30746 (innerList!15430 List!58070)) )
))
(declare-datatypes ((Conc!15342 0))(
  ( (Node!15342 (left!42359 Conc!15342) (right!42689 Conc!15342) (csize!30914 Int) (cheight!15553 Int)) (Leaf!25462 (xs!18668 IArray!30745) (csize!30915 Int)) (Empty!15342) )
))
(declare-datatypes ((BalanceConc!30114 0))(
  ( (BalanceConc!30115 (c!857441 Conc!15342)) )
))
(declare-fun totalInput!1125 () BalanceConc!30114)

(declare-fun e!3134993 () Bool)

(declare-fun inv!76191 (BalanceConc!30114) Bool)

(assert (=> start!530194 (and (inv!76191 totalInput!1125) e!3134993)))

(declare-fun condSetEmpty!28540 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13823 0))(
  ( (ElementMatch!13823 (c!857442 C!27896)) (Concat!22616 (regOne!28158 Regex!13823) (regTwo!28158 Regex!13823)) (EmptyExpr!13823) (Star!13823 (reg!14152 Regex!13823)) (EmptyLang!13823) (Union!13823 (regOne!28159 Regex!13823) (regTwo!28159 Regex!13823)) )
))
(declare-datatypes ((List!58071 0))(
  ( (Nil!57947) (Cons!57947 (h!64395 Regex!13823) (t!370447 List!58071)) )
))
(declare-datatypes ((Context!6496 0))(
  ( (Context!6497 (exprs!3748 List!58071)) )
))
(declare-fun z!4710 () (InoxSet Context!6496))

(assert (=> start!530194 (= condSetEmpty!28540 (= z!4710 ((as const (Array Context!6496 Bool)) false)))))

(declare-fun setRes!28540 () Bool)

(assert (=> start!530194 setRes!28540))

(declare-fun b!5018245 () Bool)

(declare-fun e!3134991 () Bool)

(declare-fun tp!1407248 () Bool)

(assert (=> b!5018245 (= e!3134991 tp!1407248)))

(declare-fun setNonEmpty!28540 () Bool)

(declare-fun setElem!28540 () Context!6496)

(declare-fun tp!1407247 () Bool)

(declare-fun inv!76192 (Context!6496) Bool)

(assert (=> setNonEmpty!28540 (= setRes!28540 (and tp!1407247 (inv!76192 setElem!28540) e!3134991))))

(declare-fun setRest!28540 () (InoxSet Context!6496))

(assert (=> setNonEmpty!28540 (= z!4710 ((_ map or) (store ((as const (Array Context!6496 Bool)) false) setElem!28540 true) setRest!28540))))

(declare-fun setIsEmpty!28540 () Bool)

(assert (=> setIsEmpty!28540 setRes!28540))

(declare-fun b!5018246 () Bool)

(assert (=> b!5018246 (= e!3134995 false)))

(declare-fun lt!2076905 () Bool)

(declare-fun lostCauseZipper!842 ((InoxSet Context!6496)) Bool)

(assert (=> b!5018246 (= lt!2076905 (lostCauseZipper!842 z!4710))))

(declare-fun b!5018247 () Bool)

(declare-fun tp!1407246 () Bool)

(declare-fun inv!76193 (Conc!15342) Bool)

(assert (=> b!5018247 (= e!3134993 (and (inv!76193 (c!857441 totalInput!1125)) tp!1407246))))

(declare-fun b!5018248 () Bool)

(declare-fun e!3134994 () Bool)

(assert (=> b!5018248 (= e!3134992 e!3134994)))

(declare-fun res!2139833 () Bool)

(assert (=> b!5018248 (=> (not res!2139833) (not e!3134994))))

(declare-fun lt!2076904 () Int)

(assert (=> b!5018248 (= res!2139833 (and (<= from!1212 lt!2076904) (>= knownSize!24 0) (<= knownSize!24 (- lt!2076904 from!1212))))))

(declare-fun size!38530 (BalanceConc!30114) Int)

(assert (=> b!5018248 (= lt!2076904 (size!38530 totalInput!1125))))

(declare-fun b!5018249 () Bool)

(assert (=> b!5018249 (= e!3134994 e!3134995)))

(declare-fun res!2139837 () Bool)

(assert (=> b!5018249 (=> (not res!2139837) (not e!3134995))))

(declare-fun lt!2076906 () List!58070)

(declare-fun matchZipper!591 ((InoxSet Context!6496) List!58070) Bool)

(assert (=> b!5018249 (= res!2139837 (matchZipper!591 z!4710 lt!2076906))))

(declare-fun take!682 (List!58070 Int) List!58070)

(declare-fun drop!2486 (List!58070 Int) List!58070)

(declare-fun list!18670 (BalanceConc!30114) List!58070)

(assert (=> b!5018249 (= lt!2076906 (take!682 (drop!2486 (list!18670 totalInput!1125) from!1212) knownSize!24))))

(declare-fun b!5018250 () Bool)

(declare-fun res!2139835 () Bool)

(assert (=> b!5018250 (=> (not res!2139835) (not e!3134995))))

(declare-fun size!38531 (List!58070) Int)

(assert (=> b!5018250 (= res!2139835 (= (size!38531 lt!2076906) knownSize!24))))

(assert (= (and start!530194 res!2139836) b!5018248))

(assert (= (and b!5018248 res!2139833) b!5018249))

(assert (= (and b!5018249 res!2139837) b!5018244))

(assert (= (and b!5018244 res!2139834) b!5018250))

(assert (= (and b!5018250 res!2139835) b!5018246))

(assert (= start!530194 b!5018247))

(assert (= (and start!530194 condSetEmpty!28540) setIsEmpty!28540))

(assert (= (and start!530194 (not condSetEmpty!28540)) setNonEmpty!28540))

(assert (= setNonEmpty!28540 b!5018245))

(declare-fun m!6053530 () Bool)

(assert (=> setNonEmpty!28540 m!6053530))

(declare-fun m!6053532 () Bool)

(assert (=> b!5018250 m!6053532))

(declare-fun m!6053534 () Bool)

(assert (=> b!5018249 m!6053534))

(declare-fun m!6053536 () Bool)

(assert (=> b!5018249 m!6053536))

(assert (=> b!5018249 m!6053536))

(declare-fun m!6053538 () Bool)

(assert (=> b!5018249 m!6053538))

(assert (=> b!5018249 m!6053538))

(declare-fun m!6053540 () Bool)

(assert (=> b!5018249 m!6053540))

(declare-fun m!6053542 () Bool)

(assert (=> b!5018246 m!6053542))

(declare-fun m!6053544 () Bool)

(assert (=> start!530194 m!6053544))

(declare-fun m!6053546 () Bool)

(assert (=> b!5018247 m!6053546))

(declare-fun m!6053548 () Bool)

(assert (=> b!5018248 m!6053548))

(check-sat (not b!5018250) (not b!5018245) (not setNonEmpty!28540) (not start!530194) (not b!5018246) (not b!5018249) (not b!5018248) (not b!5018247))
(check-sat)
