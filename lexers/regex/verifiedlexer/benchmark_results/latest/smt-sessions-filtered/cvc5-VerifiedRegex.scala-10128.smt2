; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!530228 () Bool)

(assert start!530228)

(declare-fun b!5018705 () Bool)

(declare-fun e!3135265 () Bool)

(declare-fun tp!1407399 () Bool)

(assert (=> b!5018705 (= e!3135265 tp!1407399)))

(declare-fun b!5018706 () Bool)

(declare-fun res!2140192 () Bool)

(declare-fun e!3135262 () Bool)

(assert (=> b!5018706 (=> (not res!2140192) (not e!3135262))))

(declare-fun from!1212 () Int)

(declare-datatypes ((C!27930 0))(
  ( (C!27931 (val!23331 Int)) )
))
(declare-datatypes ((List!58104 0))(
  ( (Nil!57980) (Cons!57980 (h!64428 C!27930) (t!370480 List!58104)) )
))
(declare-datatypes ((IArray!30779 0))(
  ( (IArray!30780 (innerList!15447 List!58104)) )
))
(declare-datatypes ((Conc!15359 0))(
  ( (Node!15359 (left!42385 Conc!15359) (right!42715 Conc!15359) (csize!30948 Int) (cheight!15570 Int)) (Leaf!25488 (xs!18685 IArray!30779) (csize!30949 Int)) (Empty!15359) )
))
(declare-datatypes ((BalanceConc!30148 0))(
  ( (BalanceConc!30149 (c!857475 Conc!15359)) )
))
(declare-fun totalInput!1125 () BalanceConc!30148)

(declare-datatypes ((Regex!13840 0))(
  ( (ElementMatch!13840 (c!857476 C!27930)) (Concat!22633 (regOne!28192 Regex!13840) (regTwo!28192 Regex!13840)) (EmptyExpr!13840) (Star!13840 (reg!14169 Regex!13840)) (EmptyLang!13840) (Union!13840 (regOne!28193 Regex!13840) (regTwo!28193 Regex!13840)) )
))
(declare-datatypes ((List!58105 0))(
  ( (Nil!57981) (Cons!57981 (h!64429 Regex!13840) (t!370481 List!58105)) )
))
(declare-datatypes ((Context!6530 0))(
  ( (Context!6531 (exprs!3765 List!58105)) )
))
(declare-fun z!4710 () (Set Context!6530))

(declare-fun knownSize!24 () Int)

(declare-fun matchZipper!608 ((Set Context!6530) List!58104) Bool)

(declare-fun take!699 (List!58104 Int) List!58104)

(declare-fun drop!2503 (List!58104 Int) List!58104)

(declare-fun list!18687 (BalanceConc!30148) List!58104)

(assert (=> b!5018706 (= res!2140192 (matchZipper!608 z!4710 (take!699 (drop!2503 (list!18687 totalInput!1125) from!1212) knownSize!24)))))

(declare-fun b!5018707 () Bool)

(assert (=> b!5018707 (= e!3135262 (and (not (= knownSize!24 0)) (<= knownSize!24 0)))))

(declare-fun res!2140193 () Bool)

(declare-fun e!3135263 () Bool)

(assert (=> start!530228 (=> (not res!2140193) (not e!3135263))))

(assert (=> start!530228 (= res!2140193 (>= from!1212 0))))

(assert (=> start!530228 e!3135263))

(assert (=> start!530228 true))

(declare-fun e!3135264 () Bool)

(declare-fun inv!76269 (BalanceConc!30148) Bool)

(assert (=> start!530228 (and (inv!76269 totalInput!1125) e!3135264)))

(declare-fun condSetEmpty!28591 () Bool)

(assert (=> start!530228 (= condSetEmpty!28591 (= z!4710 (as set.empty (Set Context!6530))))))

(declare-fun setRes!28591 () Bool)

(assert (=> start!530228 setRes!28591))

(declare-fun b!5018708 () Bool)

(declare-fun tp!1407400 () Bool)

(declare-fun inv!76270 (Conc!15359) Bool)

(assert (=> b!5018708 (= e!3135264 (and (inv!76270 (c!857475 totalInput!1125)) tp!1407400))))

(declare-fun b!5018709 () Bool)

(assert (=> b!5018709 (= e!3135263 e!3135262)))

(declare-fun res!2140194 () Bool)

(assert (=> b!5018709 (=> (not res!2140194) (not e!3135262))))

(declare-fun lt!2077191 () Int)

(assert (=> b!5018709 (= res!2140194 (and (<= from!1212 lt!2077191) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077191 from!1212))))))

(declare-fun size!38564 (BalanceConc!30148) Int)

(assert (=> b!5018709 (= lt!2077191 (size!38564 totalInput!1125))))

(declare-fun setElem!28591 () Context!6530)

(declare-fun setNonEmpty!28591 () Bool)

(declare-fun tp!1407401 () Bool)

(declare-fun inv!76271 (Context!6530) Bool)

(assert (=> setNonEmpty!28591 (= setRes!28591 (and tp!1407401 (inv!76271 setElem!28591) e!3135265))))

(declare-fun setRest!28591 () (Set Context!6530))

(assert (=> setNonEmpty!28591 (= z!4710 (set.union (set.insert setElem!28591 (as set.empty (Set Context!6530))) setRest!28591))))

(declare-fun setIsEmpty!28591 () Bool)

(assert (=> setIsEmpty!28591 setRes!28591))

(assert (= (and start!530228 res!2140193) b!5018709))

(assert (= (and b!5018709 res!2140194) b!5018706))

(assert (= (and b!5018706 res!2140192) b!5018707))

(assert (= start!530228 b!5018708))

(assert (= (and start!530228 condSetEmpty!28591) setIsEmpty!28591))

(assert (= (and start!530228 (not condSetEmpty!28591)) setNonEmpty!28591))

(assert (= setNonEmpty!28591 b!5018705))

(declare-fun m!6054034 () Bool)

(assert (=> setNonEmpty!28591 m!6054034))

(declare-fun m!6054036 () Bool)

(assert (=> start!530228 m!6054036))

(declare-fun m!6054038 () Bool)

(assert (=> b!5018708 m!6054038))

(declare-fun m!6054040 () Bool)

(assert (=> b!5018709 m!6054040))

(declare-fun m!6054042 () Bool)

(assert (=> b!5018706 m!6054042))

(assert (=> b!5018706 m!6054042))

(declare-fun m!6054044 () Bool)

(assert (=> b!5018706 m!6054044))

(assert (=> b!5018706 m!6054044))

(declare-fun m!6054046 () Bool)

(assert (=> b!5018706 m!6054046))

(assert (=> b!5018706 m!6054046))

(declare-fun m!6054048 () Bool)

(assert (=> b!5018706 m!6054048))

(push 1)

(assert (not b!5018709))

(assert (not b!5018708))

(assert (not b!5018705))

(assert (not setNonEmpty!28591))

(assert (not b!5018706))

(assert (not start!530228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

