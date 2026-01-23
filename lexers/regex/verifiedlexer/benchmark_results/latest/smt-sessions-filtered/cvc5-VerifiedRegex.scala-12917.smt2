; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712410 () Bool)

(assert start!712410)

(declare-fun b_free!133967 () Bool)

(declare-fun b_next!134757 () Bool)

(assert (=> start!712410 (= b_free!133967 (not b_next!134757))))

(declare-fun tp!2075508 () Bool)

(declare-fun b_and!351303 () Bool)

(assert (=> start!712410 (= tp!2075508 b_and!351303)))

(declare-fun b!7313134 () Bool)

(assert (=> b!7313134 true))

(declare-fun b!7313133 () Bool)

(assert (=> b!7313133 true))

(declare-fun f!883 () Int)

(declare-fun order!29085 () Int)

(declare-fun order!29087 () Int)

(declare-fun lambda!451717 () Int)

(declare-fun dynLambda!29086 (Int Int) Int)

(declare-fun dynLambda!29087 (Int Int) Int)

(assert (=> b!7313133 (< (dynLambda!29086 order!29085 f!883) (dynLambda!29087 order!29087 lambda!451717))))

(assert (=> b!7313133 true))

(declare-fun e!4377545 () Bool)

(declare-fun e!4377540 () Bool)

(assert (=> b!7313133 (= e!4377545 e!4377540)))

(declare-fun res!2954800 () Bool)

(assert (=> b!7313133 (=> res!2954800 e!4377540)))

(declare-datatypes ((A!813 0))(
  ( (A!814 (val!29071 Int)) )
))
(declare-fun s!1437 () (Set A!813))

(declare-fun exists!4514 ((Set A!813) Int) Bool)

(assert (=> b!7313133 (= res!2954800 (not (exists!4514 s!1437 lambda!451717)))))

(declare-fun empty!3107 () A!813)

(declare-datatypes ((B!3515 0))(
  ( (B!3516 (val!29072 Int)) )
))
(declare-datatypes ((List!71161 0))(
  ( (Nil!71037) (Cons!71037 (h!77485 B!3515) (t!385333 List!71161)) )
))
(declare-fun lRes!18 () List!71161)

(declare-fun flatMapPost!97 ((Set A!813) Int B!3515) A!813)

(assert (=> b!7313133 (= (flatMapPost!97 s!1437 f!883 (h!77485 lRes!18)) empty!3107)))

(assert (=> b!7313133 true))

(declare-fun tp_is_empty!47421 () Bool)

(assert (=> b!7313133 tp_is_empty!47421))

(declare-fun e!4377543 () Bool)

(assert (=> b!7313134 (= e!4377543 (not e!4377545))))

(declare-fun res!2954795 () Bool)

(assert (=> b!7313134 (=> res!2954795 e!4377545)))

(declare-fun lt!2601006 () (Set B!3515))

(assert (=> b!7313134 (= res!2954795 (not (set.member (h!77485 lRes!18) lt!2601006)))))

(declare-datatypes ((Unit!164498 0))(
  ( (Unit!164499) )
))
(declare-fun lt!2601009 () Unit!164498)

(declare-fun lt!2601008 () List!71161)

(declare-fun subseqContains!35 (List!71161 List!71161 B!3515) Unit!164498)

(assert (=> b!7313134 (= lt!2601009 (subseqContains!35 lRes!18 lt!2601008 (h!77485 lRes!18)))))

(declare-fun e!4377541 () Bool)

(assert (=> b!7313134 e!4377541))

(declare-fun res!2954796 () Bool)

(assert (=> b!7313134 (=> (not res!2954796) (not e!4377541))))

(declare-fun lambda!451716 () Int)

(declare-fun forall!17739 (List!71161 Int) Bool)

(assert (=> b!7313134 (= res!2954796 (forall!17739 (t!385333 lRes!18) lambda!451716))))

(declare-fun lt!2601005 () List!71161)

(declare-fun elmt!118 () A!813)

(declare-fun toList!11570 ((Set B!3515)) List!71161)

(declare-fun dynLambda!29088 (Int A!813) (Set B!3515))

(assert (=> b!7313134 (= lt!2601005 (toList!11570 (dynLambda!29088 f!883 elmt!118)))))

(declare-fun lt!2601007 () Unit!164498)

(declare-fun lemmaFlatMapOnSingletonSetList1!11 ((Set A!813) A!813 Int List!71161) Unit!164498)

(assert (=> b!7313134 (= lt!2601007 (lemmaFlatMapOnSingletonSetList1!11 s!1437 elmt!118 f!883 (t!385333 lRes!18)))))

(declare-fun lt!2601010 () Unit!164498)

(declare-fun subseqTail!63 (List!71161 List!71161) Unit!164498)

(assert (=> b!7313134 (= lt!2601010 (subseqTail!63 lRes!18 lt!2601008))))

(declare-fun setNonEmpty!54034 () Bool)

(declare-fun setRes!54034 () Bool)

(declare-fun tp!2075507 () Bool)

(assert (=> setNonEmpty!54034 (= setRes!54034 (and tp!2075507 tp_is_empty!47421))))

(declare-fun setElem!54034 () A!813)

(declare-fun setRest!54034 () (Set A!813))

(assert (=> setNonEmpty!54034 (= s!1437 (set.union (set.insert setElem!54034 (as set.empty (Set A!813))) setRest!54034))))

(declare-fun b!7313136 () Bool)

(declare-fun e!4377544 () Bool)

(declare-fun tp_is_empty!47423 () Bool)

(declare-fun tp!2075506 () Bool)

(assert (=> b!7313136 (= e!4377544 (and tp_is_empty!47423 tp!2075506))))

(declare-fun b!7313137 () Bool)

(assert (=> b!7313137 (= e!4377540 (exists!4514 s!1437 lambda!451717))))

(declare-fun setIsEmpty!54034 () Bool)

(assert (=> setIsEmpty!54034 setRes!54034))

(declare-fun b!7313138 () Bool)

(assert (=> b!7313138 (= e!4377541 (forall!17739 (t!385333 lRes!18) lambda!451716))))

(declare-fun b!7313139 () Bool)

(declare-fun res!2954797 () Bool)

(assert (=> b!7313139 (=> (not res!2954797) (not e!4377543))))

(assert (=> b!7313139 (= res!2954797 (is-Cons!71037 lRes!18))))

(declare-fun res!2954799 () Bool)

(declare-fun e!4377542 () Bool)

(assert (=> start!712410 (=> (not res!2954799) (not e!4377542))))

(assert (=> start!712410 (= res!2954799 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!813)))))))

(assert (=> start!712410 e!4377542))

(declare-fun condSetEmpty!54034 () Bool)

(assert (=> start!712410 (= condSetEmpty!54034 (= s!1437 (as set.empty (Set A!813))))))

(assert (=> start!712410 setRes!54034))

(assert (=> start!712410 tp_is_empty!47421))

(assert (=> start!712410 tp!2075508))

(assert (=> start!712410 e!4377544))

(declare-fun b!7313135 () Bool)

(assert (=> b!7313135 (= e!4377542 e!4377543)))

(declare-fun res!2954798 () Bool)

(assert (=> b!7313135 (=> (not res!2954798) (not e!4377543))))

(declare-fun subseq!818 (List!71161 List!71161) Bool)

(assert (=> b!7313135 (= res!2954798 (subseq!818 lRes!18 lt!2601008))))

(assert (=> b!7313135 (= lt!2601008 (toList!11570 lt!2601006))))

(declare-fun flatMap!3017 ((Set A!813) Int) (Set B!3515))

(assert (=> b!7313135 (= lt!2601006 (flatMap!3017 s!1437 f!883))))

(assert (= (and start!712410 res!2954799) b!7313135))

(assert (= (and b!7313135 res!2954798) b!7313139))

(assert (= (and b!7313139 res!2954797) b!7313134))

(assert (= (and b!7313134 res!2954796) b!7313138))

(assert (= (and b!7313134 (not res!2954795)) b!7313133))

(assert (= (and b!7313133 (not res!2954800)) b!7313137))

(assert (= (and start!712410 condSetEmpty!54034) setIsEmpty!54034))

(assert (= (and start!712410 (not condSetEmpty!54034)) setNonEmpty!54034))

(assert (= (and start!712410 (is-Cons!71037 lRes!18)) b!7313136))

(declare-fun b_lambda!282281 () Bool)

(assert (=> (not b_lambda!282281) (not b!7313134)))

(declare-fun t!385332 () Bool)

(declare-fun tb!262201 () Bool)

(assert (=> (and start!712410 (= f!883 f!883) t!385332) tb!262201))

(assert (=> b!7313134 t!385332))

(declare-fun result!352844 () Bool)

(declare-fun b_and!351305 () Bool)

(assert (= b_and!351303 (and (=> t!385332 result!352844) b_and!351305)))

(declare-fun m!7977294 () Bool)

(assert (=> b!7313135 m!7977294))

(declare-fun m!7977296 () Bool)

(assert (=> b!7313135 m!7977296))

(declare-fun m!7977298 () Bool)

(assert (=> b!7313135 m!7977298))

(declare-fun m!7977300 () Bool)

(assert (=> b!7313133 m!7977300))

(declare-fun m!7977302 () Bool)

(assert (=> b!7313133 m!7977302))

(declare-fun m!7977304 () Bool)

(assert (=> b!7313134 m!7977304))

(declare-fun m!7977306 () Bool)

(assert (=> b!7313134 m!7977306))

(declare-fun m!7977308 () Bool)

(assert (=> b!7313134 m!7977308))

(assert (=> b!7313134 m!7977304))

(declare-fun m!7977310 () Bool)

(assert (=> b!7313134 m!7977310))

(declare-fun m!7977312 () Bool)

(assert (=> b!7313134 m!7977312))

(declare-fun m!7977314 () Bool)

(assert (=> b!7313134 m!7977314))

(declare-fun m!7977316 () Bool)

(assert (=> b!7313134 m!7977316))

(assert (=> b!7313137 m!7977300))

(declare-fun m!7977318 () Bool)

(assert (=> start!712410 m!7977318))

(assert (=> b!7313138 m!7977312))

(push 1)

(assert (not b!7313134))

(assert (not b!7313135))

(assert (not b_next!134757))

(assert tp_is_empty!47421)

(assert (not b!7313137))

(assert (not tb!262201))

(assert b_and!351305)

(assert (not b!7313133))

(assert (not setNonEmpty!54034))

(assert (not b!7313138))

(assert (not b_lambda!282281))

(assert tp_is_empty!47423)

(assert (not b!7313136))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351305)

(assert (not b_next!134757))

(check-sat)

(pop 1)

