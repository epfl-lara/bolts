; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!44946 () Bool)

(assert start!44946)

(declare-fun b_free!13077 () Bool)

(declare-fun b_next!13077 () Bool)

(assert (=> start!44946 (= b_free!13077 (not b_next!13077))))

(declare-fun tp!130403 () Bool)

(declare-fun b_and!50345 () Bool)

(assert (=> start!44946 (= tp!130403 b_and!50345)))

(declare-fun b_free!13079 () Bool)

(declare-fun b_next!13079 () Bool)

(assert (=> start!44946 (= b_free!13079 (not b_next!13079))))

(declare-fun tp!130401 () Bool)

(declare-fun b_and!50347 () Bool)

(assert (=> start!44946 (= tp!130401 b_and!50347)))

(assert (=> start!44946 true))

(declare-fun order!4071 () Int)

(declare-fun lambda!13879 () Int)

(declare-fun order!4073 () Int)

(declare-fun f!1027 () Int)

(declare-fun dynLambda!2789 (Int Int) Int)

(declare-fun dynLambda!2790 (Int Int) Int)

(assert (=> start!44946 (< (dynLambda!2789 order!4071 f!1027) (dynLambda!2790 order!4073 lambda!13879))))

(assert (=> start!44946 true))

(declare-fun p!1789 () Int)

(declare-fun order!4075 () Int)

(declare-fun dynLambda!2791 (Int Int) Int)

(assert (=> start!44946 (< (dynLambda!2791 order!4075 p!1789) (dynLambda!2790 order!4073 lambda!13879))))

(declare-fun b!471045 () Bool)

(declare-fun e!288034 () Bool)

(declare-fun e!288033 () Bool)

(assert (=> b!471045 (= e!288034 e!288033)))

(declare-fun res!208788 () Bool)

(assert (=> b!471045 (=> (not res!208788) (not e!288033))))

(declare-datatypes ((B!895 0))(
  ( (B!896 (val!1471 Int)) )
))
(declare-datatypes ((List!4534 0))(
  ( (Nil!4524) (Cons!4524 (h!9921 B!895) (t!72928 List!4534)) )
))
(declare-fun l!2882 () List!4534)

(declare-fun lt!209853 () (Set B!895))

(assert (=> b!471045 (= res!208788 (set.member (h!9921 l!2882) lt!209853))))

(declare-datatypes ((Unit!8253 0))(
  ( (Unit!8254) )
))
(declare-fun lt!209851 () Unit!8253)

(declare-fun lt!209852 () List!4534)

(declare-fun subseqContains!3 (List!4534 List!4534 B!895) Unit!8253)

(assert (=> b!471045 (= lt!209851 (subseqContains!3 l!2882 lt!209852 (h!9921 l!2882)))))

(declare-fun b!471046 () Bool)

(declare-fun e!288036 () Bool)

(assert (=> b!471046 (= e!288033 (not e!288036))))

(declare-fun res!208790 () Bool)

(assert (=> b!471046 (=> res!208790 e!288036)))

(declare-fun Forall!221 (Int) Bool)

(assert (=> b!471046 (= res!208790 (not (Forall!221 lambda!13879)))))

(declare-datatypes ((A!333 0))(
  ( (A!334 (val!1472 Int)) )
))
(declare-fun empty!2543 () A!333)

(declare-fun s!1494 () (Set A!333))

(declare-fun flatMapPost!3 ((Set A!333) Int B!895) A!333)

(assert (=> b!471046 (= (flatMapPost!3 s!1494 f!1027 (h!9921 l!2882)) empty!2543)))

(assert (=> b!471046 true))

(declare-fun tp_is_empty!2045 () Bool)

(assert (=> b!471046 tp_is_empty!2045))

(declare-fun res!208791 () Bool)

(declare-fun e!288037 () Bool)

(assert (=> start!44946 (=> (not res!208791) (not e!288037))))

(assert (=> start!44946 (= res!208791 (Forall!221 lambda!13879))))

(assert (=> start!44946 e!288037))

(assert (=> start!44946 tp!130403))

(assert (=> start!44946 tp!130401))

(declare-fun condSetEmpty!1851 () Bool)

(assert (=> start!44946 (= condSetEmpty!1851 (= s!1494 (as set.empty (Set A!333))))))

(declare-fun setRes!1851 () Bool)

(assert (=> start!44946 setRes!1851))

(declare-fun e!288035 () Bool)

(assert (=> start!44946 e!288035))

(declare-fun setIsEmpty!1851 () Bool)

(assert (=> setIsEmpty!1851 setRes!1851))

(declare-fun b!471047 () Bool)

(declare-fun tp_is_empty!2047 () Bool)

(declare-fun tp!130402 () Bool)

(assert (=> b!471047 (= e!288035 (and tp_is_empty!2047 tp!130402))))

(declare-fun setNonEmpty!1851 () Bool)

(declare-fun tp!130400 () Bool)

(assert (=> setNonEmpty!1851 (= setRes!1851 (and tp!130400 tp_is_empty!2045))))

(declare-fun setElem!1851 () A!333)

(declare-fun setRest!1851 () (Set A!333))

(assert (=> setNonEmpty!1851 (= s!1494 (set.union (set.insert setElem!1851 (as set.empty (Set A!333))) setRest!1851))))

(declare-fun b!471048 () Bool)

(assert (=> b!471048 (= e!288037 e!288034)))

(declare-fun res!208787 () Bool)

(assert (=> b!471048 (=> (not res!208787) (not e!288034))))

(declare-fun subseq!92 (List!4534 List!4534) Bool)

(assert (=> b!471048 (= res!208787 (subseq!92 l!2882 lt!209852))))

(declare-fun toList!305 ((Set B!895)) List!4534)

(assert (=> b!471048 (= lt!209852 (toList!305 lt!209853))))

(declare-fun flatMap!71 ((Set A!333) Int) (Set B!895))

(assert (=> b!471048 (= lt!209853 (flatMap!71 s!1494 f!1027))))

(declare-fun b!471049 () Bool)

(assert (=> b!471049 (= e!288036 (Forall!221 lambda!13879))))

(declare-fun b!471050 () Bool)

(declare-fun res!208789 () Bool)

(assert (=> b!471050 (=> (not res!208789) (not e!288034))))

(assert (=> b!471050 (= res!208789 (is-Cons!4524 l!2882))))

(assert (= (and start!44946 res!208791) b!471048))

(assert (= (and b!471048 res!208787) b!471050))

(assert (= (and b!471050 res!208789) b!471045))

(assert (= (and b!471045 res!208788) b!471046))

(assert (= (and b!471046 (not res!208790)) b!471049))

(assert (= (and start!44946 condSetEmpty!1851) setIsEmpty!1851))

(assert (= (and start!44946 (not condSetEmpty!1851)) setNonEmpty!1851))

(assert (= (and start!44946 (is-Cons!4524 l!2882)) b!471047))

(declare-fun m!744627 () Bool)

(assert (=> b!471049 m!744627))

(assert (=> start!44946 m!744627))

(assert (=> b!471046 m!744627))

(declare-fun m!744629 () Bool)

(assert (=> b!471046 m!744629))

(declare-fun m!744631 () Bool)

(assert (=> b!471045 m!744631))

(declare-fun m!744633 () Bool)

(assert (=> b!471045 m!744633))

(declare-fun m!744635 () Bool)

(assert (=> b!471048 m!744635))

(declare-fun m!744637 () Bool)

(assert (=> b!471048 m!744637))

(declare-fun m!744639 () Bool)

(assert (=> b!471048 m!744639))

(push 1)

(assert (not b!471046))

(assert (not b!471048))

(assert b_and!50347)

(assert tp_is_empty!2047)

(assert tp_is_empty!2045)

(assert (not setNonEmpty!1851))

(assert (not b_next!13077))

(assert (not b_next!13079))

(assert (not b!471045))

(assert (not b!471049))

(assert (not b!471047))

(assert (not start!44946))

(assert b_and!50345)

(check-sat)

(pop 1)

(push 1)

(assert b_and!50345)

(assert b_and!50347)

(assert (not b_next!13079))

(assert (not b_next!13077))

(check-sat)

(pop 1)

