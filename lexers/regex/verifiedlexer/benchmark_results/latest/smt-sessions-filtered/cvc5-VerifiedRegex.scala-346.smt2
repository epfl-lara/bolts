; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!11144 () Bool)

(assert start!11144)

(declare-fun b_free!3357 () Bool)

(declare-fun b_next!3357 () Bool)

(assert (=> start!11144 (= b_free!3357 (not b_next!3357))))

(declare-fun tp!59499 () Bool)

(declare-fun b_and!5319 () Bool)

(assert (=> start!11144 (= tp!59499 b_and!5319)))

(declare-fun b_free!3359 () Bool)

(declare-fun b_next!3359 () Bool)

(assert (=> start!11144 (= b_free!3359 (not b_next!3359))))

(declare-fun tp!59498 () Bool)

(declare-fun b_and!5321 () Bool)

(assert (=> start!11144 (= tp!59498 b_and!5321)))

(assert (=> start!11144 true))

(declare-fun order!1021 () Int)

(declare-fun lambda!2561 () Int)

(declare-fun order!1023 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!674 (Int Int) Int)

(declare-fun dynLambda!675 (Int Int) Int)

(assert (=> start!11144 (< (dynLambda!674 order!1021 f!927) (dynLambda!675 order!1023 lambda!2561))))

(assert (=> start!11144 true))

(declare-fun g!9 () Int)

(assert (=> start!11144 (< (dynLambda!674 order!1021 g!9) (dynLambda!675 order!1023 lambda!2561))))

(declare-fun b!109781 () Bool)

(declare-fun e!61184 () Bool)

(assert (=> b!109781 (= e!61184 (not true))))

(declare-datatypes ((A!281 0))(
  ( (A!282 (val!584 Int)) )
))
(declare-fun s!1451 () (Set A!281))

(declare-datatypes ((B!573 0))(
  ( (B!574 (val!585 Int)) )
))
(declare-fun flatMap!46 ((Set A!281) Int) (Set B!573))

(assert (=> b!109781 (= (flatMap!46 s!1451 g!9) (as set.empty (Set B!573)))))

(declare-datatypes ((Unit!1222 0))(
  ( (Unit!1223) )
))
(declare-fun lt!31781 () Unit!1222)

(declare-fun lemmaFlatMapOnEmptySetIsEmpty!3 ((Set A!281) Int) Unit!1222)

(assert (=> b!109781 (= lt!31781 (lemmaFlatMapOnEmptySetIsEmpty!3 s!1451 g!9))))

(assert (=> b!109781 (= (flatMap!46 s!1451 f!927) (as set.empty (Set B!573)))))

(declare-fun lt!31782 () Unit!1222)

(assert (=> b!109781 (= lt!31782 (lemmaFlatMapOnEmptySetIsEmpty!3 s!1451 f!927))))

(declare-fun b!109780 () Bool)

(declare-fun res!52887 () Bool)

(assert (=> b!109780 (=> (not res!52887) (not e!61184))))

(declare-datatypes ((List!1764 0))(
  ( (Nil!1758) (Cons!1758 (h!7155 A!281) (t!21999 List!1764)) )
))
(declare-fun toList!243 ((Set A!281)) List!1764)

(assert (=> b!109780 (= res!52887 (not (is-Cons!1758 (toList!243 s!1451))))))

(declare-fun setNonEmpty!1547 () Bool)

(declare-fun setRes!1547 () Bool)

(declare-fun tp!59500 () Bool)

(declare-fun tp_is_empty!883 () Bool)

(assert (=> setNonEmpty!1547 (= setRes!1547 (and tp!59500 tp_is_empty!883))))

(declare-fun setElem!1547 () A!281)

(declare-fun setRest!1547 () (Set A!281))

(assert (=> setNonEmpty!1547 (= s!1451 (set.union (set.insert setElem!1547 (as set.empty (Set A!281))) setRest!1547))))

(declare-fun res!52888 () Bool)

(assert (=> start!11144 (=> (not res!52888) (not e!61184))))

(declare-fun forall!299 ((Set A!281) Int) Bool)

(assert (=> start!11144 (= res!52888 (forall!299 s!1451 lambda!2561))))

(assert (=> start!11144 e!61184))

(declare-fun condSetEmpty!1547 () Bool)

(assert (=> start!11144 (= condSetEmpty!1547 (= s!1451 (as set.empty (Set A!281))))))

(assert (=> start!11144 setRes!1547))

(assert (=> start!11144 tp!59499))

(assert (=> start!11144 tp!59498))

(declare-fun setIsEmpty!1547 () Bool)

(assert (=> setIsEmpty!1547 setRes!1547))

(assert (= (and start!11144 res!52888) b!109780))

(assert (= (and b!109780 res!52887) b!109781))

(assert (= (and start!11144 condSetEmpty!1547) setIsEmpty!1547))

(assert (= (and start!11144 (not condSetEmpty!1547)) setNonEmpty!1547))

(declare-fun m!99574 () Bool)

(assert (=> b!109781 m!99574))

(declare-fun m!99576 () Bool)

(assert (=> b!109781 m!99576))

(declare-fun m!99578 () Bool)

(assert (=> b!109781 m!99578))

(declare-fun m!99580 () Bool)

(assert (=> b!109781 m!99580))

(declare-fun m!99582 () Bool)

(assert (=> b!109780 m!99582))

(declare-fun m!99584 () Bool)

(assert (=> start!11144 m!99584))

(push 1)

(assert b_and!5319)

(assert (not b_next!3359))

(assert tp_is_empty!883)

(assert b_and!5321)

(assert (not b!109780))

(assert (not start!11144))

(assert (not setNonEmpty!1547))

(assert (not b!109781))

(assert (not b_next!3357))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5319)

(assert b_and!5321)

(assert (not b_next!3359))

(assert (not b_next!3357))

(check-sat)

(pop 1)

