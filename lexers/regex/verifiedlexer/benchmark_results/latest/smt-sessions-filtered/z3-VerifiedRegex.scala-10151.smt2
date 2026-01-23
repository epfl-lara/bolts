; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530978 () Bool)

(assert start!530978)

(declare-fun b!5023400 () Bool)

(declare-fun res!2141620 () Bool)

(declare-fun e!3138089 () Bool)

(assert (=> b!5023400 (=> (not res!2141620) (not e!3138089))))

(declare-fun from!1228 () Int)

(declare-fun lt!2078825 () Int)

(assert (=> b!5023400 (= res!2141620 (not (= from!1228 lt!2078825)))))

(declare-fun b!5023401 () Bool)

(declare-fun e!3138086 () Bool)

(assert (=> b!5023401 (= e!3138086 e!3138089)))

(declare-fun res!2141619 () Bool)

(assert (=> b!5023401 (=> (not res!2141619) (not e!3138089))))

(assert (=> b!5023401 (= res!2141619 (<= from!1228 lt!2078825))))

(declare-datatypes ((C!28004 0))(
  ( (C!28005 (val!23378 Int)) )
))
(declare-datatypes ((List!58200 0))(
  ( (Nil!58076) (Cons!58076 (h!64524 C!28004) (t!370592 List!58200)) )
))
(declare-datatypes ((IArray!30853 0))(
  ( (IArray!30854 (innerList!15484 List!58200)) )
))
(declare-datatypes ((Conc!15396 0))(
  ( (Node!15396 (left!42469 Conc!15396) (right!42799 Conc!15396) (csize!31022 Int) (cheight!15607 Int)) (Leaf!25548 (xs!18722 IArray!30853) (csize!31023 Int)) (Empty!15396) )
))
(declare-datatypes ((BalanceConc!30222 0))(
  ( (BalanceConc!30223 (c!858953 Conc!15396)) )
))
(declare-fun totalInput!1141 () BalanceConc!30222)

(declare-fun size!38648 (BalanceConc!30222) Int)

(assert (=> b!5023401 (= lt!2078825 (size!38648 totalInput!1141))))

(declare-fun b!5023402 () Bool)

(assert (=> b!5023402 (= e!3138089 false)))

(declare-fun lt!2078826 () C!28004)

(declare-fun apply!14087 (BalanceConc!30222 Int) C!28004)

(assert (=> b!5023402 (= lt!2078826 (apply!14087 totalInput!1141 from!1228))))

(declare-fun setIsEmpty!28754 () Bool)

(declare-fun setRes!28754 () Bool)

(assert (=> setIsEmpty!28754 setRes!28754))

(declare-fun b!5023403 () Bool)

(declare-fun e!3138088 () Bool)

(declare-fun tp!1408239 () Bool)

(assert (=> b!5023403 (= e!3138088 tp!1408239)))

(declare-fun res!2141621 () Bool)

(assert (=> start!530978 (=> (not res!2141621) (not e!3138086))))

(assert (=> start!530978 (= res!2141621 (>= from!1228 0))))

(assert (=> start!530978 e!3138086))

(assert (=> start!530978 true))

(declare-fun e!3138087 () Bool)

(declare-fun inv!76494 (BalanceConc!30222) Bool)

(assert (=> start!530978 (and (inv!76494 totalInput!1141) e!3138087)))

(declare-fun condSetEmpty!28754 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13877 0))(
  ( (ElementMatch!13877 (c!858954 C!28004)) (Concat!22670 (regOne!28266 Regex!13877) (regTwo!28266 Regex!13877)) (EmptyExpr!13877) (Star!13877 (reg!14206 Regex!13877)) (EmptyLang!13877) (Union!13877 (regOne!28267 Regex!13877) (regTwo!28267 Regex!13877)) )
))
(declare-datatypes ((List!58201 0))(
  ( (Nil!58077) (Cons!58077 (h!64525 Regex!13877) (t!370593 List!58201)) )
))
(declare-datatypes ((Context!6604 0))(
  ( (Context!6605 (exprs!3802 List!58201)) )
))
(declare-fun z!4747 () (InoxSet Context!6604))

(assert (=> start!530978 (= condSetEmpty!28754 (= z!4747 ((as const (Array Context!6604 Bool)) false)))))

(assert (=> start!530978 setRes!28754))

(declare-fun b!5023399 () Bool)

(declare-fun res!2141618 () Bool)

(assert (=> b!5023399 (=> (not res!2141618) (not e!3138089))))

(declare-fun lostCauseZipper!891 ((InoxSet Context!6604)) Bool)

(assert (=> b!5023399 (= res!2141618 (not (lostCauseZipper!891 z!4747)))))

(declare-fun b!5023404 () Bool)

(declare-fun tp!1408240 () Bool)

(declare-fun inv!76495 (Conc!15396) Bool)

(assert (=> b!5023404 (= e!3138087 (and (inv!76495 (c!858953 totalInput!1141)) tp!1408240))))

(declare-fun setNonEmpty!28754 () Bool)

(declare-fun setElem!28754 () Context!6604)

(declare-fun tp!1408238 () Bool)

(declare-fun inv!76496 (Context!6604) Bool)

(assert (=> setNonEmpty!28754 (= setRes!28754 (and tp!1408238 (inv!76496 setElem!28754) e!3138088))))

(declare-fun setRest!28754 () (InoxSet Context!6604))

(assert (=> setNonEmpty!28754 (= z!4747 ((_ map or) (store ((as const (Array Context!6604 Bool)) false) setElem!28754 true) setRest!28754))))

(assert (= (and start!530978 res!2141621) b!5023401))

(assert (= (and b!5023401 res!2141619) b!5023399))

(assert (= (and b!5023399 res!2141618) b!5023400))

(assert (= (and b!5023400 res!2141620) b!5023402))

(assert (= start!530978 b!5023404))

(assert (= (and start!530978 condSetEmpty!28754) setIsEmpty!28754))

(assert (= (and start!530978 (not condSetEmpty!28754)) setNonEmpty!28754))

(assert (= setNonEmpty!28754 b!5023403))

(declare-fun m!6058438 () Bool)

(assert (=> b!5023402 m!6058438))

(declare-fun m!6058440 () Bool)

(assert (=> b!5023401 m!6058440))

(declare-fun m!6058442 () Bool)

(assert (=> setNonEmpty!28754 m!6058442))

(declare-fun m!6058444 () Bool)

(assert (=> start!530978 m!6058444))

(declare-fun m!6058446 () Bool)

(assert (=> b!5023404 m!6058446))

(declare-fun m!6058448 () Bool)

(assert (=> b!5023399 m!6058448))

(check-sat (not b!5023403) (not b!5023404) (not b!5023402) (not b!5023401) (not b!5023399) (not setNonEmpty!28754) (not start!530978))
(check-sat)
