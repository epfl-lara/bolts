; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712148 () Bool)

(assert start!712148)

(declare-fun b_free!133927 () Bool)

(declare-fun b_next!134717 () Bool)

(assert (=> start!712148 (= b_free!133927 (not b_next!134717))))

(declare-fun tp!2075175 () Bool)

(declare-fun b_and!351225 () Bool)

(assert (=> start!712148 (= tp!2075175 b_and!351225)))

(declare-fun b!7311596 () Bool)

(assert (=> b!7311596 true))

(declare-fun setNonEmpty!53886 () Bool)

(declare-fun setRes!53886 () Bool)

(declare-fun tp!2075176 () Bool)

(declare-fun tp_is_empty!47341 () Bool)

(assert (=> setNonEmpty!53886 (= setRes!53886 (and tp!2075176 tp_is_empty!47341))))

(declare-datatypes ((A!773 0))(
  ( (A!774 (val!29031 Int)) )
))
(declare-fun s!1445 () (Set A!773))

(declare-fun setElem!53886 () A!773)

(declare-fun setRest!53886 () (Set A!773))

(assert (=> setNonEmpty!53886 (= s!1445 (set.union (set.insert setElem!53886 (as set.empty (Set A!773))) setRest!53886))))

(declare-fun setIsEmpty!53886 () Bool)

(assert (=> setIsEmpty!53886 setRes!53886))

(declare-fun b!7311593 () Bool)

(declare-fun e!4376334 () Bool)

(declare-fun e!4376333 () Bool)

(assert (=> b!7311593 (= e!4376334 e!4376333)))

(declare-fun res!2953744 () Bool)

(assert (=> b!7311593 (=> (not res!2953744) (not e!4376333))))

(declare-datatypes ((B!3475 0))(
  ( (B!3476 (val!29032 Int)) )
))
(declare-datatypes ((List!71139 0))(
  ( (Nil!71015) (Cons!71015 (h!77463 B!3475) (t!385267 List!71139)) )
))
(declare-fun lRes!24 () List!71139)

(declare-fun lt!2600565 () List!71139)

(declare-fun subseq!798 (List!71139 List!71139) Bool)

(assert (=> b!7311593 (= res!2953744 (subseq!798 lRes!24 lt!2600565))))

(declare-fun f!903 () Int)

(declare-fun elmt!124 () A!773)

(declare-fun toList!11548 ((Set B!3475)) List!71139)

(declare-fun dynLambda!29055 (Int A!773) (Set B!3475))

(assert (=> b!7311593 (= lt!2600565 (toList!11548 (dynLambda!29055 f!903 elmt!124)))))

(declare-fun b!7311594 () Bool)

(declare-fun e!4376335 () Bool)

(declare-fun tp_is_empty!47343 () Bool)

(declare-fun tp!2075174 () Bool)

(assert (=> b!7311594 (= e!4376335 (and tp_is_empty!47343 tp!2075174))))

(declare-fun b!7311595 () Bool)

(declare-fun res!2953746 () Bool)

(assert (=> b!7311595 (=> (not res!2953746) (not e!4376333))))

(assert (=> b!7311595 (= res!2953746 (is-Cons!71015 lRes!24))))

(declare-fun res!2953745 () Bool)

(assert (=> start!712148 (=> (not res!2953745) (not e!4376334))))

(assert (=> start!712148 (= res!2953745 (= s!1445 (set.insert elmt!124 (as set.empty (Set A!773)))))))

(assert (=> start!712148 e!4376334))

(declare-fun condSetEmpty!53886 () Bool)

(assert (=> start!712148 (= condSetEmpty!53886 (= s!1445 (as set.empty (Set A!773))))))

(assert (=> start!712148 setRes!53886))

(assert (=> start!712148 tp_is_empty!47341))

(assert (=> start!712148 e!4376335))

(assert (=> start!712148 tp!2075175))

(declare-fun lambda!451584 () Int)

(declare-fun forall!17723 (List!71139 Int) Bool)

(assert (=> b!7311596 (= e!4376333 (not (forall!17723 (t!385267 lRes!24) lambda!451584)))))

(assert (=> b!7311596 (forall!17723 (t!385267 lRes!24) lambda!451584)))

(declare-fun lt!2600568 () List!71139)

(declare-fun flatMap!2999 ((Set A!773) Int) (Set B!3475))

(assert (=> b!7311596 (= lt!2600568 (toList!11548 (flatMap!2999 s!1445 f!903)))))

(declare-datatypes ((Unit!164448 0))(
  ( (Unit!164449) )
))
(declare-fun lt!2600567 () Unit!164448)

(declare-fun lemmaFlatMapOnSingletonSetList2!9 ((Set A!773) A!773 Int List!71139) Unit!164448)

(assert (=> b!7311596 (= lt!2600567 (lemmaFlatMapOnSingletonSetList2!9 s!1445 elmt!124 f!903 (t!385267 lRes!24)))))

(declare-fun lt!2600566 () Unit!164448)

(declare-fun subseqTail!49 (List!71139 List!71139) Unit!164448)

(assert (=> b!7311596 (= lt!2600566 (subseqTail!49 lRes!24 lt!2600565))))

(assert (= (and start!712148 res!2953745) b!7311593))

(assert (= (and b!7311593 res!2953744) b!7311595))

(assert (= (and b!7311595 res!2953746) b!7311596))

(assert (= (and start!712148 condSetEmpty!53886) setIsEmpty!53886))

(assert (= (and start!712148 (not condSetEmpty!53886)) setNonEmpty!53886))

(assert (= (and start!712148 (is-Cons!71015 lRes!24)) b!7311594))

(declare-fun b_lambda!282101 () Bool)

(assert (=> (not b_lambda!282101) (not b!7311593)))

(declare-fun t!385266 () Bool)

(declare-fun tb!262165 () Bool)

(assert (=> (and start!712148 (= f!903 f!903) t!385266) tb!262165))

(assert (=> b!7311593 t!385266))

(declare-fun result!352740 () Bool)

(declare-fun b_and!351227 () Bool)

(assert (= b_and!351225 (and (=> t!385266 result!352740) b_and!351227)))

(declare-fun m!7975588 () Bool)

(assert (=> b!7311593 m!7975588))

(declare-fun m!7975590 () Bool)

(assert (=> b!7311593 m!7975590))

(assert (=> b!7311593 m!7975590))

(declare-fun m!7975592 () Bool)

(assert (=> b!7311593 m!7975592))

(declare-fun m!7975594 () Bool)

(assert (=> start!712148 m!7975594))

(declare-fun m!7975596 () Bool)

(assert (=> b!7311596 m!7975596))

(declare-fun m!7975598 () Bool)

(assert (=> b!7311596 m!7975598))

(declare-fun m!7975600 () Bool)

(assert (=> b!7311596 m!7975600))

(assert (=> b!7311596 m!7975600))

(assert (=> b!7311596 m!7975596))

(declare-fun m!7975602 () Bool)

(assert (=> b!7311596 m!7975602))

(declare-fun m!7975604 () Bool)

(assert (=> b!7311596 m!7975604))

(push 1)

(assert (not b_lambda!282101))

(assert (not tb!262165))

(assert (not setNonEmpty!53886))

(assert tp_is_empty!47341)

(assert (not b!7311596))

(assert (not b!7311593))

(assert b_and!351227)

(assert tp_is_empty!47343)

(assert (not b_next!134717))

(assert (not b!7311594))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351227)

(assert (not b_next!134717))

(check-sat)

(pop 1)

