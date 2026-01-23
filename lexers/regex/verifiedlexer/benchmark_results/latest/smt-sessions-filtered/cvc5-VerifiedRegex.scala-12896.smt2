; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711974 () Bool)

(assert start!711974)

(declare-fun b_free!133883 () Bool)

(declare-fun b_next!134673 () Bool)

(assert (=> start!711974 (= b_free!133883 (not b_next!134673))))

(declare-fun tp!2074884 () Bool)

(declare-fun b_and!351133 () Bool)

(assert (=> start!711974 (= tp!2074884 b_and!351133)))

(declare-fun b!7310798 () Bool)

(assert (=> b!7310798 true))

(declare-fun res!2953273 () Bool)

(declare-fun e!4375756 () Bool)

(assert (=> start!711974 (=> (not res!2953273) (not e!4375756))))

(declare-datatypes ((A!729 0))(
  ( (A!730 (val!28987 Int)) )
))
(declare-fun s!1428 () (Set A!729))

(declare-fun elmt!109 () A!729)

(assert (=> start!711974 (= res!2953273 (= s!1428 (set.insert elmt!109 (as set.empty (Set A!729)))))))

(assert (=> start!711974 e!4375756))

(declare-fun condSetEmpty!53744 () Bool)

(assert (=> start!711974 (= condSetEmpty!53744 (= s!1428 (as set.empty (Set A!729))))))

(declare-fun setRes!53744 () Bool)

(assert (=> start!711974 setRes!53744))

(declare-fun tp_is_empty!47265 () Bool)

(assert (=> start!711974 tp_is_empty!47265))

(assert (=> start!711974 tp!2074884))

(assert (=> b!7310798 (= e!4375756 (not true))))

(declare-datatypes ((B!3431 0))(
  ( (B!3432 (val!28988 Int)) )
))
(declare-datatypes ((List!71117 0))(
  ( (Nil!70993) (Cons!70993 (h!77441 B!3431) (t!385201 List!71117)) )
))
(declare-fun lt!2600200 () List!71117)

(declare-fun lambda!451496 () Int)

(declare-fun forall!17713 (List!71117 Int) Bool)

(assert (=> b!7310798 (forall!17713 lt!2600200 lambda!451496)))

(declare-fun f!864 () Int)

(declare-datatypes ((Unit!164398 0))(
  ( (Unit!164399) )
))
(declare-fun lt!2600198 () Unit!164398)

(declare-fun lemmaFlatMapOnSingletonSetList1!1 ((Set A!729) A!729 Int List!71117) Unit!164398)

(assert (=> b!7310798 (= lt!2600198 (lemmaFlatMapOnSingletonSetList1!1 s!1428 elmt!109 f!864 lt!2600200))))

(declare-fun lt!2600196 () List!71117)

(declare-fun subseq!776 (List!71117 List!71117) Bool)

(assert (=> b!7310798 (subseq!776 lt!2600196 lt!2600196)))

(declare-fun lt!2600197 () Unit!164398)

(declare-fun lemmaSubseqRefl!182 (List!71117) Unit!164398)

(assert (=> b!7310798 (= lt!2600197 (lemmaSubseqRefl!182 lt!2600196))))

(declare-fun toList!11526 ((Set B!3431)) List!71117)

(declare-fun dynLambda!29031 (Int A!729) (Set B!3431))

(assert (=> b!7310798 (= lt!2600196 (toList!11526 (dynLambda!29031 f!864 elmt!109)))))

(assert (=> b!7310798 (subseq!776 lt!2600200 lt!2600200)))

(declare-fun lt!2600199 () Unit!164398)

(assert (=> b!7310798 (= lt!2600199 (lemmaSubseqRefl!182 lt!2600200))))

(declare-fun flatMap!2989 ((Set A!729) Int) (Set B!3431))

(assert (=> b!7310798 (= lt!2600200 (toList!11526 (flatMap!2989 s!1428 f!864)))))

(declare-fun setIsEmpty!53744 () Bool)

(assert (=> setIsEmpty!53744 setRes!53744))

(declare-fun setNonEmpty!53744 () Bool)

(declare-fun tp!2074885 () Bool)

(assert (=> setNonEmpty!53744 (= setRes!53744 (and tp!2074885 tp_is_empty!47265))))

(declare-fun setElem!53744 () A!729)

(declare-fun setRest!53744 () (Set A!729))

(assert (=> setNonEmpty!53744 (= s!1428 (set.union (set.insert setElem!53744 (as set.empty (Set A!729))) setRest!53744))))

(assert (= (and start!711974 res!2953273) b!7310798))

(assert (= (and start!711974 condSetEmpty!53744) setIsEmpty!53744))

(assert (= (and start!711974 (not condSetEmpty!53744)) setNonEmpty!53744))

(declare-fun b_lambda!282001 () Bool)

(assert (=> (not b_lambda!282001) (not b!7310798)))

(declare-fun t!385200 () Bool)

(declare-fun tb!262121 () Bool)

(assert (=> (and start!711974 (= f!864 f!864) t!385200) tb!262121))

(assert (=> b!7310798 t!385200))

(declare-fun result!352628 () Bool)

(declare-fun b_and!351135 () Bool)

(assert (= b_and!351133 (and (=> t!385200 result!352628) b_and!351135)))

(declare-fun m!7974788 () Bool)

(assert (=> start!711974 m!7974788))

(declare-fun m!7974790 () Bool)

(assert (=> b!7310798 m!7974790))

(declare-fun m!7974792 () Bool)

(assert (=> b!7310798 m!7974792))

(declare-fun m!7974794 () Bool)

(assert (=> b!7310798 m!7974794))

(declare-fun m!7974796 () Bool)

(assert (=> b!7310798 m!7974796))

(declare-fun m!7974798 () Bool)

(assert (=> b!7310798 m!7974798))

(declare-fun m!7974800 () Bool)

(assert (=> b!7310798 m!7974800))

(assert (=> b!7310798 m!7974790))

(declare-fun m!7974802 () Bool)

(assert (=> b!7310798 m!7974802))

(declare-fun m!7974804 () Bool)

(assert (=> b!7310798 m!7974804))

(assert (=> b!7310798 m!7974798))

(declare-fun m!7974806 () Bool)

(assert (=> b!7310798 m!7974806))

(declare-fun m!7974808 () Bool)

(assert (=> b!7310798 m!7974808))

(push 1)

(assert (not setNonEmpty!53744))

(assert (not b!7310798))

(assert tp_is_empty!47265)

(assert (not b_next!134673))

(assert (not b_lambda!282001))

(assert (not tb!262121))

(assert b_and!351135)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351135)

(assert (not b_next!134673))

(check-sat)

(pop 1)

