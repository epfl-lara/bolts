; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712354 () Bool)

(assert start!712354)

(declare-fun b_free!133951 () Bool)

(declare-fun b_next!134741 () Bool)

(assert (=> start!712354 (= b_free!133951 (not b_next!134741))))

(declare-fun tp!2075404 () Bool)

(declare-fun b_and!351277 () Bool)

(assert (=> start!712354 (= tp!2075404 b_and!351277)))

(declare-fun b!7312877 () Bool)

(declare-fun e!4377352 () Bool)

(declare-fun tp_is_empty!47391 () Bool)

(declare-fun tp!2075405 () Bool)

(assert (=> b!7312877 (= e!4377352 (and tp_is_empty!47391 tp!2075405))))

(declare-fun setIsEmpty!53992 () Bool)

(declare-fun setRes!53992 () Bool)

(assert (=> setIsEmpty!53992 setRes!53992))

(declare-fun res!2954634 () Bool)

(declare-fun e!4377351 () Bool)

(assert (=> start!712354 (=> (not res!2954634) (not e!4377351))))

(declare-datatypes ((A!797 0))(
  ( (A!798 (val!29055 Int)) )
))
(declare-fun s!1445 () (Set A!797))

(declare-fun elmt!124 () A!797)

(assert (=> start!712354 (= res!2954634 (= s!1445 (set.insert elmt!124 (as set.empty (Set A!797)))))))

(assert (=> start!712354 e!4377351))

(declare-fun condSetEmpty!53992 () Bool)

(assert (=> start!712354 (= condSetEmpty!53992 (= s!1445 (as set.empty (Set A!797))))))

(assert (=> start!712354 setRes!53992))

(declare-fun tp_is_empty!47389 () Bool)

(assert (=> start!712354 tp_is_empty!47389))

(assert (=> start!712354 e!4377352))

(assert (=> start!712354 tp!2075404))

(declare-fun b!7312876 () Bool)

(assert (=> b!7312876 (= e!4377351 false)))

(declare-datatypes ((B!3499 0))(
  ( (B!3500 (val!29056 Int)) )
))
(declare-datatypes ((List!71153 0))(
  ( (Nil!71029) (Cons!71029 (h!77477 B!3499) (t!385317 List!71153)) )
))
(declare-fun lRes!24 () List!71153)

(declare-fun lt!2600922 () Bool)

(declare-fun f!903 () Int)

(declare-fun subseq!810 (List!71153 List!71153) Bool)

(declare-fun toList!11562 ((Set B!3499)) List!71153)

(declare-fun dynLambda!29081 (Int A!797) (Set B!3499))

(assert (=> b!7312876 (= lt!2600922 (subseq!810 lRes!24 (toList!11562 (dynLambda!29081 f!903 elmt!124))))))

(declare-fun setNonEmpty!53992 () Bool)

(declare-fun tp!2075406 () Bool)

(assert (=> setNonEmpty!53992 (= setRes!53992 (and tp!2075406 tp_is_empty!47389))))

(declare-fun setElem!53992 () A!797)

(declare-fun setRest!53992 () (Set A!797))

(assert (=> setNonEmpty!53992 (= s!1445 (set.union (set.insert setElem!53992 (as set.empty (Set A!797))) setRest!53992))))

(assert (= (and start!712354 res!2954634) b!7312876))

(assert (= (and start!712354 condSetEmpty!53992) setIsEmpty!53992))

(assert (= (and start!712354 (not condSetEmpty!53992)) setNonEmpty!53992))

(assert (= (and start!712354 (is-Cons!71029 lRes!24)) b!7312877))

(declare-fun b_lambda!282261 () Bool)

(assert (=> (not b_lambda!282261) (not b!7312876)))

(declare-fun t!385316 () Bool)

(declare-fun tb!262193 () Bool)

(assert (=> (and start!712354 (= f!903 f!903) t!385316) tb!262193))

(assert (=> b!7312876 t!385316))

(declare-fun result!352816 () Bool)

(declare-fun b_and!351279 () Bool)

(assert (= b_and!351277 (and (=> t!385316 result!352816) b_and!351279)))

(declare-fun m!7977112 () Bool)

(assert (=> start!712354 m!7977112))

(declare-fun m!7977114 () Bool)

(assert (=> b!7312876 m!7977114))

(assert (=> b!7312876 m!7977114))

(declare-fun m!7977116 () Bool)

(assert (=> b!7312876 m!7977116))

(assert (=> b!7312876 m!7977116))

(declare-fun m!7977118 () Bool)

(assert (=> b!7312876 m!7977118))

(push 1)

(assert (not setNonEmpty!53992))

(assert (not b_next!134741))

(assert (not b_lambda!282261))

(assert tp_is_empty!47391)

(assert tp_is_empty!47389)

(assert (not b!7312876))

(assert (not tb!262193))

(assert b_and!351279)

(assert (not b!7312877))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351279)

(assert (not b_next!134741))

(check-sat)

(pop 1)

