; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!10940 () Bool)

(assert start!10940)

(declare-fun b_free!3277 () Bool)

(declare-fun b_next!3277 () Bool)

(assert (=> start!10940 (= b_free!3277 (not b_next!3277))))

(declare-fun tp!59211 () Bool)

(declare-fun b_and!4983 () Bool)

(assert (=> start!10940 (= tp!59211 b_and!4983)))

(declare-fun b_free!3279 () Bool)

(declare-fun b_next!3279 () Bool)

(assert (=> start!10940 (= b_free!3279 (not b_next!3279))))

(declare-fun tp!59210 () Bool)

(declare-fun b_and!4985 () Bool)

(assert (=> start!10940 (= tp!59210 b_and!4985)))

(assert (=> start!10940 true))

(declare-fun order!941 () Int)

(declare-fun lambda!2397 () Int)

(declare-fun order!943 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!608 (Int Int) Int)

(declare-fun dynLambda!609 (Int Int) Int)

(assert (=> start!10940 (< (dynLambda!608 order!941 f!927) (dynLambda!609 order!943 lambda!2397))))

(assert (=> start!10940 true))

(declare-fun g!9 () Int)

(assert (=> start!10940 (< (dynLambda!608 order!941 g!9) (dynLambda!609 order!943 lambda!2397))))

(declare-fun b!109156 () Bool)

(declare-fun res!52373 () Bool)

(declare-fun e!60708 () Bool)

(assert (=> b!109156 (=> (not res!52373) (not e!60708))))

(declare-datatypes ((A!241 0))(
  ( (A!242 (val!544 Int)) )
))
(declare-fun s!1451 () (Set A!241))

(declare-datatypes ((List!1744 0))(
  ( (Nil!1738) (Cons!1738 (h!7135 A!241) (t!21739 List!1744)) )
))
(declare-fun toList!223 ((Set A!241)) List!1744)

(assert (=> b!109156 (= res!52373 (not (is-Cons!1738 (toList!223 s!1451))))))

(declare-fun b!109157 () Bool)

(assert (=> b!109157 (= e!60708 (not true))))

(declare-datatypes ((B!533 0))(
  ( (B!534 (val!545 Int)) )
))
(declare-fun flatMap!28 ((Set A!241) Int) (Set B!533))

(assert (=> b!109157 (= (flatMap!28 s!1451 f!927) (as set.empty (Set B!533)))))

(declare-datatypes ((Unit!1186 0))(
  ( (Unit!1187) )
))
(declare-fun lt!31107 () Unit!1186)

(declare-fun lemmaFlatMapOnEmptySetIsEmpty!1 ((Set A!241) Int) Unit!1186)

(assert (=> b!109157 (= lt!31107 (lemmaFlatMapOnEmptySetIsEmpty!1 s!1451 f!927))))

(declare-fun setIsEmpty!1396 () Bool)

(declare-fun setRes!1396 () Bool)

(assert (=> setIsEmpty!1396 setRes!1396))

(declare-fun setNonEmpty!1396 () Bool)

(declare-fun tp!59209 () Bool)

(declare-fun tp_is_empty!831 () Bool)

(assert (=> setNonEmpty!1396 (= setRes!1396 (and tp!59209 tp_is_empty!831))))

(declare-fun setElem!1396 () A!241)

(declare-fun setRest!1396 () (Set A!241))

(assert (=> setNonEmpty!1396 (= s!1451 (set.union (set.insert setElem!1396 (as set.empty (Set A!241))) setRest!1396))))

(declare-fun res!52374 () Bool)

(assert (=> start!10940 (=> (not res!52374) (not e!60708))))

(declare-fun forall!261 ((Set A!241) Int) Bool)

(assert (=> start!10940 (= res!52374 (forall!261 s!1451 lambda!2397))))

(assert (=> start!10940 e!60708))

(declare-fun condSetEmpty!1396 () Bool)

(assert (=> start!10940 (= condSetEmpty!1396 (= s!1451 (as set.empty (Set A!241))))))

(assert (=> start!10940 setRes!1396))

(assert (=> start!10940 tp!59211))

(assert (=> start!10940 tp!59210))

(assert (= (and start!10940 res!52374) b!109156))

(assert (= (and b!109156 res!52373) b!109157))

(assert (= (and start!10940 condSetEmpty!1396) setIsEmpty!1396))

(assert (= (and start!10940 (not condSetEmpty!1396)) setNonEmpty!1396))

(declare-fun m!98290 () Bool)

(assert (=> b!109156 m!98290))

(declare-fun m!98292 () Bool)

(assert (=> b!109157 m!98292))

(declare-fun m!98294 () Bool)

(assert (=> b!109157 m!98294))

(declare-fun m!98296 () Bool)

(assert (=> start!10940 m!98296))

(push 1)

(assert (not b!109156))

(assert (not b_next!3279))

(assert b_and!4985)

(assert (not b_next!3277))

(assert b_and!4983)

(assert (not setNonEmpty!1396))

(assert (not b!109157))

(assert (not start!10940))

(assert tp_is_empty!831)

(check-sat)

(pop 1)

(push 1)

(assert b_and!4983)

(assert b_and!4985)

(assert (not b_next!3279))

(assert (not b_next!3277))

(check-sat)

(pop 1)

