; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!208724 () Bool)

(assert start!208724)

(assert (=> start!208724 true))

(declare-fun b!2151719 () Bool)

(declare-fun e!1376115 () Bool)

(assert (=> b!2151719 (= e!1376115 false)))

(declare-datatypes ((Unit!37866 0))(
  ( (Unit!37867) )
))
(declare-fun lt!801207 () Unit!37866)

(declare-datatypes ((C!11890 0))(
  ( (C!11891 (val!6931 Int)) )
))
(declare-datatypes ((List!24785 0))(
  ( (Nil!24701) (Cons!24701 (h!30102 C!11890) (t!197333 List!24785)) )
))
(declare-datatypes ((IArray!16021 0))(
  ( (IArray!16022 (innerList!8068 List!24785)) )
))
(declare-datatypes ((Conc!8008 0))(
  ( (Node!8008 (left!18977 Conc!8008) (right!19307 Conc!8008) (csize!16246 Int) (cheight!8219 Int)) (Leaf!11712 (xs!10950 IArray!16021) (csize!16247 Int)) (Empty!8008) )
))
(declare-datatypes ((Regex!5872 0))(
  ( (ElementMatch!5872 (c!341303 C!11890)) (Concat!10174 (regOne!12256 Regex!5872) (regTwo!12256 Regex!5872)) (EmptyExpr!5872) (Star!5872 (reg!6201 Regex!5872)) (EmptyLang!5872) (Union!5872 (regOne!12257 Regex!5872) (regTwo!12257 Regex!5872)) )
))
(declare-datatypes ((List!24786 0))(
  ( (Nil!24702) (Cons!24702 (h!30103 Regex!5872) (t!197334 List!24786)) )
))
(declare-datatypes ((Context!2884 0))(
  ( (Context!2885 (exprs!1942 List!24786)) )
))
(declare-datatypes ((BalanceConc!15778 0))(
  ( (BalanceConc!15779 (c!341304 Conc!8008)) )
))
(declare-datatypes ((StackFrame!278 0))(
  ( (StackFrame!279 (z!5941 (Set Context!2884)) (from!2784 Int) (lastNullablePos!471 Int) (res!927807 Int) (totalInput!3273 BalanceConc!15778)) )
))
(declare-datatypes ((List!24787 0))(
  ( (Nil!24703) (Cons!24703 (h!30104 StackFrame!278) (t!197335 List!24787)) )
))
(declare-fun s!7978 () List!24787)

(declare-fun lemmaInv!790 (StackFrame!278) Unit!37866)

(assert (=> b!2151719 (= lt!801207 (lemmaInv!790 (h!30104 s!7978)))))

(declare-fun setIsEmpty!17275 () Bool)

(declare-fun setRes!17275 () Bool)

(assert (=> setIsEmpty!17275 setRes!17275))

(declare-fun tp!668847 () Bool)

(declare-fun e!1376114 () Bool)

(declare-fun e!1376116 () Bool)

(declare-fun b!2151720 () Bool)

(declare-fun inv!32563 (StackFrame!278) Bool)

(assert (=> b!2151720 (= e!1376116 (and (inv!32563 (h!30104 s!7978)) e!1376114 tp!668847))))

(declare-fun b!2151721 () Bool)

(declare-fun e!1376113 () Bool)

(declare-fun tp!668848 () Bool)

(declare-fun inv!32564 (Conc!8008) Bool)

(assert (=> b!2151721 (= e!1376113 (and (inv!32564 (c!341304 (totalInput!3273 (h!30104 s!7978)))) tp!668848))))

(declare-fun res!927806 () Bool)

(assert (=> start!208724 (=> (not res!927806) (not e!1376115))))

(declare-fun lambda!80971 () Int)

(declare-fun forall!5044 (List!24787 Int) Bool)

(assert (=> start!208724 (= res!927806 (forall!5044 s!7978 lambda!80971))))

(assert (=> start!208724 e!1376115))

(assert (=> start!208724 e!1376116))

(assert (=> start!208724 true))

(declare-fun b!2151722 () Bool)

(declare-fun e!1376117 () Bool)

(declare-fun tp!668849 () Bool)

(assert (=> b!2151722 (= e!1376117 tp!668849)))

(declare-fun setNonEmpty!17275 () Bool)

(declare-fun setElem!17275 () Context!2884)

(declare-fun tp!668846 () Bool)

(declare-fun inv!32565 (Context!2884) Bool)

(assert (=> setNonEmpty!17275 (= setRes!17275 (and tp!668846 (inv!32565 setElem!17275) e!1376117))))

(declare-fun setRest!17275 () (Set Context!2884))

(assert (=> setNonEmpty!17275 (= (z!5941 (h!30104 s!7978)) (set.union (set.insert setElem!17275 (as set.empty (Set Context!2884))) setRest!17275))))

(declare-fun b!2151723 () Bool)

(declare-fun res!927805 () Bool)

(assert (=> b!2151723 (=> (not res!927805) (not e!1376115))))

(declare-fun res1!7 () Int)

(declare-fun res2!7 () Int)

(assert (=> b!2151723 (= res!927805 (and (= res1!7 res2!7) (not (is-Nil!24703 s!7978))))))

(declare-fun b!2151724 () Bool)

(declare-fun inv!32566 (BalanceConc!15778) Bool)

(assert (=> b!2151724 (= e!1376114 (and setRes!17275 (inv!32566 (totalInput!3273 (h!30104 s!7978))) e!1376113))))

(declare-fun condSetEmpty!17275 () Bool)

(assert (=> b!2151724 (= condSetEmpty!17275 (= (z!5941 (h!30104 s!7978)) (as set.empty (Set Context!2884))))))

(assert (= (and start!208724 res!927806) b!2151723))

(assert (= (and b!2151723 res!927805) b!2151719))

(assert (= (and b!2151724 condSetEmpty!17275) setIsEmpty!17275))

(assert (= (and b!2151724 (not condSetEmpty!17275)) setNonEmpty!17275))

(assert (= setNonEmpty!17275 b!2151722))

(assert (= b!2151724 b!2151721))

(assert (= b!2151720 b!2151724))

(assert (= (and start!208724 (is-Cons!24703 s!7978)) b!2151720))

(declare-fun m!2594238 () Bool)

(assert (=> b!2151724 m!2594238))

(declare-fun m!2594240 () Bool)

(assert (=> start!208724 m!2594240))

(declare-fun m!2594242 () Bool)

(assert (=> b!2151719 m!2594242))

(declare-fun m!2594244 () Bool)

(assert (=> b!2151720 m!2594244))

(declare-fun m!2594246 () Bool)

(assert (=> b!2151721 m!2594246))

(declare-fun m!2594248 () Bool)

(assert (=> setNonEmpty!17275 m!2594248))

(push 1)

(assert (not b!2151720))

(assert (not setNonEmpty!17275))

(assert (not b!2151722))

(assert (not b!2151721))

(assert (not start!208724))

(assert (not b!2151724))

(assert (not b!2151719))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

