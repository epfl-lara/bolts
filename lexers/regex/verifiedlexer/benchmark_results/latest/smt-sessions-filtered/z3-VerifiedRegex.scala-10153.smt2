; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530986 () Bool)

(assert start!530986)

(declare-fun setRes!28766 () Bool)

(declare-fun e!3138137 () Bool)

(declare-fun tp!1408276 () Bool)

(declare-fun setNonEmpty!28766 () Bool)

(declare-datatypes ((C!28012 0))(
  ( (C!28013 (val!23382 Int)) )
))
(declare-datatypes ((Regex!13881 0))(
  ( (ElementMatch!13881 (c!858961 C!28012)) (Concat!22674 (regOne!28274 Regex!13881) (regTwo!28274 Regex!13881)) (EmptyExpr!13881) (Star!13881 (reg!14210 Regex!13881)) (EmptyLang!13881) (Union!13881 (regOne!28275 Regex!13881) (regTwo!28275 Regex!13881)) )
))
(declare-datatypes ((List!58208 0))(
  ( (Nil!58084) (Cons!58084 (h!64532 Regex!13881) (t!370600 List!58208)) )
))
(declare-datatypes ((Context!6612 0))(
  ( (Context!6613 (exprs!3806 List!58208)) )
))
(declare-fun setElem!28766 () Context!6612)

(declare-fun inv!76512 (Context!6612) Bool)

(assert (=> setNonEmpty!28766 (= setRes!28766 (and tp!1408276 (inv!76512 setElem!28766) e!3138137))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4747 () (InoxSet Context!6612))

(declare-fun setRest!28766 () (InoxSet Context!6612))

(assert (=> setNonEmpty!28766 (= z!4747 ((_ map or) (store ((as const (Array Context!6612 Bool)) false) setElem!28766 true) setRest!28766))))

(declare-fun b!5023471 () Bool)

(declare-fun e!3138136 () Bool)

(assert (=> b!5023471 (= e!3138136 false)))

(declare-datatypes ((List!58209 0))(
  ( (Nil!58085) (Cons!58085 (h!64533 C!28012) (t!370601 List!58209)) )
))
(declare-datatypes ((IArray!30861 0))(
  ( (IArray!30862 (innerList!15488 List!58209)) )
))
(declare-datatypes ((Conc!15400 0))(
  ( (Node!15400 (left!42475 Conc!15400) (right!42805 Conc!15400) (csize!31030 Int) (cheight!15611 Int)) (Leaf!25554 (xs!18726 IArray!30861) (csize!31031 Int)) (Empty!15400) )
))
(declare-datatypes ((BalanceConc!30230 0))(
  ( (BalanceConc!30231 (c!858962 Conc!15400)) )
))
(declare-fun totalInput!1141 () BalanceConc!30230)

(declare-fun lt!2078849 () Int)

(declare-fun lt!2078850 () Int)

(declare-fun from!1228 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!195 ((InoxSet Context!6612) Int BalanceConc!30230 Int) Int)

(declare-fun derivationStepZipper!677 ((InoxSet Context!6612) C!28012) (InoxSet Context!6612))

(declare-fun apply!14091 (BalanceConc!30230 Int) C!28012)

(assert (=> b!5023471 (= lt!2078850 (findLongestMatchInnerZipperFastV2!195 (derivationStepZipper!677 z!4747 (apply!14091 totalInput!1141 from!1228)) (+ 1 from!1228) totalInput!1141 lt!2078849))))

(declare-fun b!5023472 () Bool)

(declare-fun tp!1408275 () Bool)

(assert (=> b!5023472 (= e!3138137 tp!1408275)))

(declare-fun setIsEmpty!28766 () Bool)

(assert (=> setIsEmpty!28766 setRes!28766))

(declare-fun b!5023473 () Bool)

(declare-fun e!3138134 () Bool)

(assert (=> b!5023473 (= e!3138134 e!3138136)))

(declare-fun res!2141669 () Bool)

(assert (=> b!5023473 (=> (not res!2141669) (not e!3138136))))

(assert (=> b!5023473 (= res!2141669 (<= from!1228 lt!2078849))))

(declare-fun size!38652 (BalanceConc!30230) Int)

(assert (=> b!5023473 (= lt!2078849 (size!38652 totalInput!1141))))

(declare-fun res!2141666 () Bool)

(assert (=> start!530986 (=> (not res!2141666) (not e!3138134))))

(assert (=> start!530986 (= res!2141666 (>= from!1228 0))))

(assert (=> start!530986 e!3138134))

(assert (=> start!530986 true))

(declare-fun e!3138135 () Bool)

(declare-fun inv!76513 (BalanceConc!30230) Bool)

(assert (=> start!530986 (and (inv!76513 totalInput!1141) e!3138135)))

(declare-fun condSetEmpty!28766 () Bool)

(assert (=> start!530986 (= condSetEmpty!28766 (= z!4747 ((as const (Array Context!6612 Bool)) false)))))

(assert (=> start!530986 setRes!28766))

(declare-fun b!5023474 () Bool)

(declare-fun res!2141668 () Bool)

(assert (=> b!5023474 (=> (not res!2141668) (not e!3138136))))

(assert (=> b!5023474 (= res!2141668 (not (= from!1228 lt!2078849)))))

(declare-fun b!5023475 () Bool)

(declare-fun res!2141667 () Bool)

(assert (=> b!5023475 (=> (not res!2141667) (not e!3138136))))

(declare-fun lostCauseZipper!895 ((InoxSet Context!6612)) Bool)

(assert (=> b!5023475 (= res!2141667 (not (lostCauseZipper!895 z!4747)))))

(declare-fun b!5023476 () Bool)

(declare-fun tp!1408274 () Bool)

(declare-fun inv!76514 (Conc!15400) Bool)

(assert (=> b!5023476 (= e!3138135 (and (inv!76514 (c!858962 totalInput!1141)) tp!1408274))))

(assert (= (and start!530986 res!2141666) b!5023473))

(assert (= (and b!5023473 res!2141669) b!5023475))

(assert (= (and b!5023475 res!2141667) b!5023474))

(assert (= (and b!5023474 res!2141668) b!5023471))

(assert (= start!530986 b!5023476))

(assert (= (and start!530986 condSetEmpty!28766) setIsEmpty!28766))

(assert (= (and start!530986 (not condSetEmpty!28766)) setNonEmpty!28766))

(assert (= setNonEmpty!28766 b!5023472))

(declare-fun m!6058498 () Bool)

(assert (=> start!530986 m!6058498))

(declare-fun m!6058500 () Bool)

(assert (=> setNonEmpty!28766 m!6058500))

(declare-fun m!6058502 () Bool)

(assert (=> b!5023476 m!6058502))

(declare-fun m!6058504 () Bool)

(assert (=> b!5023475 m!6058504))

(declare-fun m!6058506 () Bool)

(assert (=> b!5023471 m!6058506))

(assert (=> b!5023471 m!6058506))

(declare-fun m!6058508 () Bool)

(assert (=> b!5023471 m!6058508))

(assert (=> b!5023471 m!6058508))

(declare-fun m!6058510 () Bool)

(assert (=> b!5023471 m!6058510))

(declare-fun m!6058512 () Bool)

(assert (=> b!5023473 m!6058512))

(check-sat (not setNonEmpty!28766) (not b!5023472) (not start!530986) (not b!5023471) (not b!5023476) (not b!5023473) (not b!5023475))
(check-sat)
