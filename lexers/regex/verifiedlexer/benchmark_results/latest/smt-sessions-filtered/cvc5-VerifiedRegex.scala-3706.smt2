; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!208764 () Bool)

(assert start!208764)

(assert (=> start!208764 true))

(declare-fun bs!445665 () Bool)

(declare-fun b!2152023 () Bool)

(assert (= bs!445665 (and b!2152023 start!208764)))

(declare-fun res1!7 () Int)

(declare-fun res2!7 () Int)

(declare-fun lambda!81032 () Int)

(declare-fun lambda!81031 () Int)

(assert (=> bs!445665 (= (= res2!7 res1!7) (= lambda!81032 lambda!81031))))

(assert (=> b!2152023 true))

(declare-fun e!1376311 () Bool)

(declare-fun e!1376314 () Bool)

(assert (=> b!2152023 (= e!1376311 (not e!1376314))))

(declare-fun res!927949 () Bool)

(assert (=> b!2152023 (=> res!927949 e!1376314)))

(declare-datatypes ((C!11902 0))(
  ( (C!11903 (val!6937 Int)) )
))
(declare-datatypes ((List!24803 0))(
  ( (Nil!24719) (Cons!24719 (h!30120 C!11902) (t!197351 List!24803)) )
))
(declare-datatypes ((IArray!16033 0))(
  ( (IArray!16034 (innerList!8074 List!24803)) )
))
(declare-datatypes ((Conc!8014 0))(
  ( (Node!8014 (left!18998 Conc!8014) (right!19328 Conc!8014) (csize!16258 Int) (cheight!8225 Int)) (Leaf!11721 (xs!10956 IArray!16033) (csize!16259 Int)) (Empty!8014) )
))
(declare-datatypes ((Regex!5878 0))(
  ( (ElementMatch!5878 (c!341321 C!11902)) (Concat!10180 (regOne!12268 Regex!5878) (regTwo!12268 Regex!5878)) (EmptyExpr!5878) (Star!5878 (reg!6207 Regex!5878)) (EmptyLang!5878) (Union!5878 (regOne!12269 Regex!5878) (regTwo!12269 Regex!5878)) )
))
(declare-datatypes ((List!24804 0))(
  ( (Nil!24720) (Cons!24720 (h!30121 Regex!5878) (t!197352 List!24804)) )
))
(declare-datatypes ((Context!2896 0))(
  ( (Context!2897 (exprs!1948 List!24804)) )
))
(declare-datatypes ((BalanceConc!15790 0))(
  ( (BalanceConc!15791 (c!341322 Conc!8014)) )
))
(declare-datatypes ((StackFrame!290 0))(
  ( (StackFrame!291 (z!5947 (Set Context!2896)) (from!2790 Int) (lastNullablePos!477 Int) (res!927952 Int) (totalInput!3279 BalanceConc!15790)) )
))
(declare-datatypes ((List!24805 0))(
  ( (Nil!24721) (Cons!24721 (h!30122 StackFrame!290) (t!197353 List!24805)) )
))
(declare-fun s!7978 () List!24805)

(declare-fun forall!5052 (List!24805 Int) Bool)

(assert (=> b!2152023 (= res!927949 (not (forall!5052 (t!197353 s!7978) lambda!81032)))))

(assert (=> b!2152023 (forall!5052 (t!197353 s!7978) lambda!81032)))

(declare-datatypes ((Unit!37880 0))(
  ( (Unit!37881) )
))
(declare-fun lt!801245 () Unit!37880)

(declare-fun lemmaStackPreservesForEqualRes!38 (List!24805 Int Int) Unit!37880)

(assert (=> b!2152023 (= lt!801245 (lemmaStackPreservesForEqualRes!38 (t!197353 s!7978) res1!7 res2!7))))

(declare-fun lt!801246 () Unit!37880)

(declare-fun lemmaInv!796 (StackFrame!290) Unit!37880)

(assert (=> b!2152023 (= lt!801246 (lemmaInv!796 (h!30122 s!7978)))))

(declare-fun setIsEmpty!17305 () Bool)

(declare-fun setRes!17305 () Bool)

(assert (=> setIsEmpty!17305 setRes!17305))

(declare-fun b!2152024 () Bool)

(declare-fun e!1376312 () Bool)

(declare-fun tp!668986 () Bool)

(assert (=> b!2152024 (= e!1376312 tp!668986)))

(declare-fun b!2152025 () Bool)

(assert (=> b!2152025 (= e!1376314 (or (not (= (res!927952 (h!30122 s!7978)) res1!7)) (= (res!927952 (h!30122 s!7978)) res2!7)))))

(declare-fun res!927950 () Bool)

(assert (=> start!208764 (=> (not res!927950) (not e!1376311))))

(assert (=> start!208764 (= res!927950 (forall!5052 s!7978 lambda!81031))))

(assert (=> start!208764 e!1376311))

(declare-fun e!1376315 () Bool)

(assert (=> start!208764 e!1376315))

(assert (=> start!208764 true))

(declare-fun setElem!17305 () Context!2896)

(declare-fun setNonEmpty!17305 () Bool)

(declare-fun tp!668985 () Bool)

(declare-fun inv!32602 (Context!2896) Bool)

(assert (=> setNonEmpty!17305 (= setRes!17305 (and tp!668985 (inv!32602 setElem!17305) e!1376312))))

(declare-fun setRest!17305 () (Set Context!2896))

(assert (=> setNonEmpty!17305 (= (z!5947 (h!30122 s!7978)) (set.union (set.insert setElem!17305 (as set.empty (Set Context!2896))) setRest!17305))))

(declare-fun b!2152026 () Bool)

(declare-fun e!1376313 () Bool)

(declare-fun tp!668987 () Bool)

(declare-fun inv!32603 (Conc!8014) Bool)

(assert (=> b!2152026 (= e!1376313 (and (inv!32603 (c!341322 (totalInput!3279 (h!30122 s!7978)))) tp!668987))))

(declare-fun b!2152027 () Bool)

(declare-fun e!1376316 () Bool)

(declare-fun inv!32604 (BalanceConc!15790) Bool)

(assert (=> b!2152027 (= e!1376316 (and setRes!17305 (inv!32604 (totalInput!3279 (h!30122 s!7978))) e!1376313))))

(declare-fun condSetEmpty!17305 () Bool)

(assert (=> b!2152027 (= condSetEmpty!17305 (= (z!5947 (h!30122 s!7978)) (as set.empty (Set Context!2896))))))

(declare-fun tp!668984 () Bool)

(declare-fun b!2152028 () Bool)

(declare-fun inv!32605 (StackFrame!290) Bool)

(assert (=> b!2152028 (= e!1376315 (and (inv!32605 (h!30122 s!7978)) e!1376316 tp!668984))))

(declare-fun b!2152029 () Bool)

(declare-fun res!927951 () Bool)

(assert (=> b!2152029 (=> (not res!927951) (not e!1376311))))

(assert (=> b!2152029 (= res!927951 (and (= res1!7 res2!7) (not (is-Nil!24721 s!7978))))))

(assert (= (and start!208764 res!927950) b!2152029))

(assert (= (and b!2152029 res!927951) b!2152023))

(assert (= (and b!2152023 (not res!927949)) b!2152025))

(assert (= (and b!2152027 condSetEmpty!17305) setIsEmpty!17305))

(assert (= (and b!2152027 (not condSetEmpty!17305)) setNonEmpty!17305))

(assert (= setNonEmpty!17305 b!2152024))

(assert (= b!2152027 b!2152026))

(assert (= b!2152028 b!2152027))

(assert (= (and start!208764 (is-Cons!24721 s!7978)) b!2152028))

(declare-fun m!2594414 () Bool)

(assert (=> b!2152027 m!2594414))

(declare-fun m!2594416 () Bool)

(assert (=> b!2152026 m!2594416))

(declare-fun m!2594418 () Bool)

(assert (=> start!208764 m!2594418))

(declare-fun m!2594420 () Bool)

(assert (=> setNonEmpty!17305 m!2594420))

(declare-fun m!2594422 () Bool)

(assert (=> b!2152023 m!2594422))

(assert (=> b!2152023 m!2594422))

(declare-fun m!2594424 () Bool)

(assert (=> b!2152023 m!2594424))

(declare-fun m!2594426 () Bool)

(assert (=> b!2152023 m!2594426))

(declare-fun m!2594428 () Bool)

(assert (=> b!2152028 m!2594428))

(push 1)

(assert (not b!2152024))

(assert (not b!2152026))

(assert (not b!2152023))

(assert (not b!2152028))

(assert (not start!208764))

(assert (not b!2152027))

(assert (not setNonEmpty!17305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

