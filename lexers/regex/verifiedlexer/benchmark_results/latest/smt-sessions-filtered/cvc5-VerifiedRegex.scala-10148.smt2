; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!530964 () Bool)

(assert start!530964)

(declare-fun b!5023275 () Bool)

(declare-fun res!2141538 () Bool)

(declare-fun e!3138001 () Bool)

(assert (=> b!5023275 (=> (not res!2141538) (not e!3138001))))

(declare-fun e!3138000 () Bool)

(assert (=> b!5023275 (= res!2141538 e!3138000)))

(declare-fun res!2141539 () Bool)

(assert (=> b!5023275 (=> res!2141539 e!3138000)))

(declare-datatypes ((C!27990 0))(
  ( (C!27991 (val!23371 Int)) )
))
(declare-datatypes ((Regex!13870 0))(
  ( (ElementMatch!13870 (c!858939 C!27990)) (Concat!22663 (regOne!28252 Regex!13870) (regTwo!28252 Regex!13870)) (EmptyExpr!13870) (Star!13870 (reg!14199 Regex!13870)) (EmptyLang!13870) (Union!13870 (regOne!28253 Regex!13870) (regTwo!28253 Regex!13870)) )
))
(declare-datatypes ((List!58186 0))(
  ( (Nil!58062) (Cons!58062 (h!64510 Regex!13870) (t!370578 List!58186)) )
))
(declare-datatypes ((Context!6590 0))(
  ( (Context!6591 (exprs!3795 List!58186)) )
))
(declare-fun z!4747 () (Set Context!6590))

(declare-fun lostCauseZipper!884 ((Set Context!6590)) Bool)

(assert (=> b!5023275 (= res!2141539 (lostCauseZipper!884 z!4747))))

(declare-fun b!5023276 () Bool)

(declare-fun e!3138002 () Bool)

(declare-fun tp!1408176 () Bool)

(assert (=> b!5023276 (= e!3138002 tp!1408176)))

(declare-fun b!5023277 () Bool)

(declare-fun from!1228 () Int)

(declare-fun lt!2078789 () Int)

(assert (=> b!5023277 (= e!3138000 (= from!1228 lt!2078789))))

(declare-fun b!5023278 () Bool)

(declare-fun e!3137998 () Bool)

(declare-datatypes ((List!58187 0))(
  ( (Nil!58063) (Cons!58063 (h!64511 C!27990) (t!370579 List!58187)) )
))
(declare-datatypes ((IArray!30839 0))(
  ( (IArray!30840 (innerList!15477 List!58187)) )
))
(declare-datatypes ((Conc!15389 0))(
  ( (Node!15389 (left!42459 Conc!15389) (right!42789 Conc!15389) (csize!31008 Int) (cheight!15600 Int)) (Leaf!25538 (xs!18715 IArray!30839) (csize!31009 Int)) (Empty!15389) )
))
(declare-datatypes ((BalanceConc!30208 0))(
  ( (BalanceConc!30209 (c!858940 Conc!15389)) )
))
(declare-fun totalInput!1141 () BalanceConc!30208)

(declare-fun tp!1408175 () Bool)

(declare-fun inv!76464 (Conc!15389) Bool)

(assert (=> b!5023278 (= e!3137998 (and (inv!76464 (c!858940 totalInput!1141)) tp!1408175))))

(declare-fun res!2141540 () Bool)

(declare-fun e!3137999 () Bool)

(assert (=> start!530964 (=> (not res!2141540) (not e!3137999))))

(assert (=> start!530964 (= res!2141540 (>= from!1228 0))))

(assert (=> start!530964 e!3137999))

(assert (=> start!530964 true))

(declare-fun inv!76465 (BalanceConc!30208) Bool)

(assert (=> start!530964 (and (inv!76465 totalInput!1141) e!3137998)))

(declare-fun condSetEmpty!28733 () Bool)

(assert (=> start!530964 (= condSetEmpty!28733 (= z!4747 (as set.empty (Set Context!6590))))))

(declare-fun setRes!28733 () Bool)

(assert (=> start!530964 setRes!28733))

(declare-fun b!5023279 () Bool)

(assert (=> b!5023279 (= e!3137999 e!3138001)))

(declare-fun res!2141536 () Bool)

(assert (=> b!5023279 (=> (not res!2141536) (not e!3138001))))

(assert (=> b!5023279 (= res!2141536 (<= from!1228 lt!2078789))))

(declare-fun size!38641 (BalanceConc!30208) Int)

(assert (=> b!5023279 (= lt!2078789 (size!38641 totalInput!1141))))

(declare-fun setElem!28733 () Context!6590)

(declare-fun tp!1408177 () Bool)

(declare-fun setNonEmpty!28733 () Bool)

(declare-fun inv!76466 (Context!6590) Bool)

(assert (=> setNonEmpty!28733 (= setRes!28733 (and tp!1408177 (inv!76466 setElem!28733) e!3138002))))

(declare-fun setRest!28733 () (Set Context!6590))

(assert (=> setNonEmpty!28733 (= z!4747 (set.union (set.insert setElem!28733 (as set.empty (Set Context!6590))) setRest!28733))))

(declare-fun b!5023280 () Bool)

(assert (=> b!5023280 (= e!3138001 false)))

(declare-fun lt!2078790 () List!58187)

(declare-fun drop!2531 (List!58187 Int) List!58187)

(declare-fun list!18733 (BalanceConc!30208) List!58187)

(assert (=> b!5023280 (= lt!2078790 (drop!2531 (list!18733 totalInput!1141) from!1228))))

(declare-fun b!5023281 () Bool)

(declare-fun res!2141537 () Bool)

(assert (=> b!5023281 (=> (not res!2141537) (not e!3138001))))

(declare-fun findLongestMatchInnerZipperFastV2!190 ((Set Context!6590) Int BalanceConc!30208 Int) Int)

(assert (=> b!5023281 (= res!2141537 (not (= (findLongestMatchInnerZipperFastV2!190 z!4747 from!1228 totalInput!1141 lt!2078789) 0)))))

(declare-fun setIsEmpty!28733 () Bool)

(assert (=> setIsEmpty!28733 setRes!28733))

(assert (= (and start!530964 res!2141540) b!5023279))

(assert (= (and b!5023279 res!2141536) b!5023275))

(assert (= (and b!5023275 (not res!2141539)) b!5023277))

(assert (= (and b!5023275 res!2141538) b!5023281))

(assert (= (and b!5023281 res!2141537) b!5023280))

(assert (= start!530964 b!5023278))

(assert (= (and start!530964 condSetEmpty!28733) setIsEmpty!28733))

(assert (= (and start!530964 (not condSetEmpty!28733)) setNonEmpty!28733))

(assert (= setNonEmpty!28733 b!5023276))

(declare-fun m!6058350 () Bool)

(assert (=> b!5023278 m!6058350))

(declare-fun m!6058352 () Bool)

(assert (=> b!5023281 m!6058352))

(declare-fun m!6058354 () Bool)

(assert (=> b!5023275 m!6058354))

(declare-fun m!6058356 () Bool)

(assert (=> b!5023280 m!6058356))

(assert (=> b!5023280 m!6058356))

(declare-fun m!6058358 () Bool)

(assert (=> b!5023280 m!6058358))

(declare-fun m!6058360 () Bool)

(assert (=> b!5023279 m!6058360))

(declare-fun m!6058362 () Bool)

(assert (=> setNonEmpty!28733 m!6058362))

(declare-fun m!6058364 () Bool)

(assert (=> start!530964 m!6058364))

(push 1)

(assert (not b!5023275))

(assert (not b!5023280))

(assert (not b!5023278))

(assert (not b!5023281))

(assert (not setNonEmpty!28733))

(assert (not b!5023276))

(assert (not start!530964))

(assert (not b!5023279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

