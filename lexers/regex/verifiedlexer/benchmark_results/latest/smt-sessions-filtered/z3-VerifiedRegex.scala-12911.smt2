; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712336 () Bool)

(assert start!712336)

(declare-fun b_free!133945 () Bool)

(declare-fun b_next!134735 () Bool)

(assert (=> start!712336 (= b_free!133945 (not b_next!134735))))

(declare-fun tp!2075360 () Bool)

(declare-fun b_and!351265 () Bool)

(assert (=> start!712336 (= tp!2075360 b_and!351265)))

(declare-fun b!7312783 () Bool)

(assert (=> b!7312783 true))

(declare-fun b!7312779 () Bool)

(declare-fun e!4377288 () Bool)

(declare-datatypes ((B!3493 0))(
  ( (B!3494 (val!29049 Int)) )
))
(declare-datatypes ((List!71150 0))(
  ( (Nil!71026) (Cons!71026 (h!77474 B!3493) (t!385308 List!71150)) )
))
(declare-fun lt!2600902 () List!71150)

(declare-fun lRes!24 () List!71150)

(declare-fun contains!20769 (List!71150 B!3493) Bool)

(assert (=> b!7312779 (= e!4377288 (contains!20769 lt!2600902 (h!77474 lRes!24)))))

(declare-fun b!7312780 () Bool)

(declare-fun e!4377286 () Bool)

(declare-fun lambda!451688 () Int)

(declare-fun forall!17734 (List!71150 Int) Bool)

(assert (=> b!7312780 (= e!4377286 (forall!17734 lRes!24 lambda!451688))))

(declare-fun b!7312781 () Bool)

(declare-fun res!2954572 () Bool)

(declare-fun e!4377289 () Bool)

(assert (=> b!7312781 (=> (not res!2954572) (not e!4377289))))

(get-info :version)

(assert (=> b!7312781 (= res!2954572 ((_ is Cons!71026) lRes!24))))

(declare-fun setNonEmpty!53971 () Bool)

(declare-fun setRes!53971 () Bool)

(declare-fun tp!2075359 () Bool)

(declare-fun tp_is_empty!47377 () Bool)

(assert (=> setNonEmpty!53971 (= setRes!53971 (and tp!2075359 tp_is_empty!47377))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!791 0))(
  ( (A!792 (val!29050 Int)) )
))
(declare-fun s!1445 () (InoxSet A!791))

(declare-fun setElem!53971 () A!791)

(declare-fun setRest!53971 () (InoxSet A!791))

(assert (=> setNonEmpty!53971 (= s!1445 ((_ map or) (store ((as const (Array A!791 Bool)) false) setElem!53971 true) setRest!53971))))

(declare-fun b!7312782 () Bool)

(declare-fun e!4377287 () Bool)

(assert (=> b!7312782 (= e!4377287 e!4377289)))

(declare-fun res!2954570 () Bool)

(assert (=> b!7312782 (=> (not res!2954570) (not e!4377289))))

(declare-fun lt!2600906 () List!71150)

(declare-fun subseq!807 (List!71150 List!71150) Bool)

(assert (=> b!7312782 (= res!2954570 (subseq!807 lRes!24 lt!2600906))))

(declare-fun f!903 () Int)

(declare-fun elmt!124 () A!791)

(declare-fun toList!11559 ((InoxSet B!3493)) List!71150)

(declare-fun dynLambda!29077 (Int A!791) (InoxSet B!3493))

(assert (=> b!7312782 (= lt!2600906 (toList!11559 (dynLambda!29077 f!903 elmt!124)))))

(assert (=> b!7312783 (= e!4377289 (not e!4377286))))

(declare-fun res!2954576 () Bool)

(assert (=> b!7312783 (=> res!2954576 e!4377286)))

(assert (=> b!7312783 (= res!2954576 (not (forall!17734 lRes!24 lambda!451688)))))

(assert (=> b!7312783 e!4377288))

(declare-fun res!2954573 () Bool)

(assert (=> b!7312783 (=> (not res!2954573) (not e!4377288))))

(assert (=> b!7312783 (= res!2954573 (contains!20769 lt!2600906 (h!77474 lRes!24)))))

(declare-datatypes ((Unit!164486 0))(
  ( (Unit!164487) )
))
(declare-fun lt!2600905 () Unit!164486)

(declare-fun subseqContains!34 (List!71150 List!71150 B!3493) Unit!164486)

(assert (=> b!7312783 (= lt!2600905 (subseqContains!34 lRes!24 lt!2600906 (h!77474 lRes!24)))))

(declare-fun e!4377291 () Bool)

(assert (=> b!7312783 e!4377291))

(declare-fun res!2954575 () Bool)

(assert (=> b!7312783 (=> (not res!2954575) (not e!4377291))))

(assert (=> b!7312783 (= res!2954575 (forall!17734 (t!385308 lRes!24) lambda!451688))))

(declare-fun flatMap!3008 ((InoxSet A!791) Int) (InoxSet B!3493))

(assert (=> b!7312783 (= lt!2600902 (toList!11559 (flatMap!3008 s!1445 f!903)))))

(declare-fun lt!2600904 () Unit!164486)

(declare-fun lemmaFlatMapOnSingletonSetList2!18 ((InoxSet A!791) A!791 Int List!71150) Unit!164486)

(assert (=> b!7312783 (= lt!2600904 (lemmaFlatMapOnSingletonSetList2!18 s!1445 elmt!124 f!903 (t!385308 lRes!24)))))

(declare-fun lt!2600903 () Unit!164486)

(declare-fun subseqTail!58 (List!71150 List!71150) Unit!164486)

(assert (=> b!7312783 (= lt!2600903 (subseqTail!58 lRes!24 lt!2600906))))

(declare-fun b!7312784 () Bool)

(declare-fun res!2954571 () Bool)

(assert (=> b!7312784 (=> (not res!2954571) (not e!4377288))))

(declare-fun empty!3103 () A!791)

(declare-fun flatMapPost!96 ((InoxSet A!791) Int B!3493) A!791)

(assert (=> b!7312784 (= res!2954571 (= (flatMapPost!96 s!1445 f!903 (h!77474 lRes!24)) empty!3103))))

(assert (=> b!7312784 true))

(assert (=> b!7312784 tp_is_empty!47377))

(declare-fun res!2954574 () Bool)

(assert (=> start!712336 (=> (not res!2954574) (not e!4377287))))

(assert (=> start!712336 (= res!2954574 (= s!1445 (store ((as const (Array A!791 Bool)) false) elmt!124 true)))))

(assert (=> start!712336 e!4377287))

(declare-fun condSetEmpty!53971 () Bool)

(assert (=> start!712336 (= condSetEmpty!53971 (= s!1445 ((as const (Array A!791 Bool)) false)))))

(assert (=> start!712336 setRes!53971))

(assert (=> start!712336 tp_is_empty!47377))

(declare-fun e!4377290 () Bool)

(assert (=> start!712336 e!4377290))

(assert (=> start!712336 tp!2075360))

(declare-fun setIsEmpty!53971 () Bool)

(assert (=> setIsEmpty!53971 setRes!53971))

(declare-fun b!7312785 () Bool)

(declare-fun tp_is_empty!47379 () Bool)

(declare-fun tp!2075361 () Bool)

(assert (=> b!7312785 (= e!4377290 (and tp_is_empty!47379 tp!2075361))))

(declare-fun b!7312786 () Bool)

(assert (=> b!7312786 (= e!4377291 (forall!17734 (t!385308 lRes!24) lambda!451688))))

(assert (= (and start!712336 res!2954574) b!7312782))

(assert (= (and b!7312782 res!2954570) b!7312781))

(assert (= (and b!7312781 res!2954572) b!7312783))

(assert (= (and b!7312783 res!2954575) b!7312786))

(assert (= (and b!7312783 res!2954573) b!7312784))

(assert (= (and b!7312784 res!2954571) b!7312779))

(assert (= (and b!7312783 (not res!2954576)) b!7312780))

(assert (= (and start!712336 condSetEmpty!53971) setIsEmpty!53971))

(assert (= (and start!712336 (not condSetEmpty!53971)) setNonEmpty!53971))

(assert (= (and start!712336 ((_ is Cons!71026) lRes!24)) b!7312785))

(declare-fun b_lambda!282247 () Bool)

(assert (=> (not b_lambda!282247) (not b!7312782)))

(declare-fun t!385307 () Bool)

(declare-fun tb!262187 () Bool)

(assert (=> (and start!712336 (= f!903 f!903) t!385307) tb!262187))

(assert (=> b!7312782 t!385307))

(declare-fun result!352798 () Bool)

(declare-fun b_and!351267 () Bool)

(assert (= b_and!351265 (and (=> t!385307 result!352798) b_and!351267)))

(declare-fun m!7977028 () Bool)

(assert (=> b!7312782 m!7977028))

(declare-fun m!7977030 () Bool)

(assert (=> b!7312782 m!7977030))

(assert (=> b!7312782 m!7977030))

(declare-fun m!7977032 () Bool)

(assert (=> b!7312782 m!7977032))

(declare-fun m!7977034 () Bool)

(assert (=> b!7312779 m!7977034))

(declare-fun m!7977036 () Bool)

(assert (=> b!7312784 m!7977036))

(declare-fun m!7977038 () Bool)

(assert (=> b!7312780 m!7977038))

(declare-fun m!7977040 () Bool)

(assert (=> start!712336 m!7977040))

(declare-fun m!7977042 () Bool)

(assert (=> b!7312783 m!7977042))

(declare-fun m!7977044 () Bool)

(assert (=> b!7312783 m!7977044))

(declare-fun m!7977046 () Bool)

(assert (=> b!7312783 m!7977046))

(declare-fun m!7977048 () Bool)

(assert (=> b!7312783 m!7977048))

(declare-fun m!7977050 () Bool)

(assert (=> b!7312783 m!7977050))

(declare-fun m!7977052 () Bool)

(assert (=> b!7312783 m!7977052))

(declare-fun m!7977054 () Bool)

(assert (=> b!7312783 m!7977054))

(assert (=> b!7312783 m!7977038))

(assert (=> b!7312783 m!7977050))

(assert (=> b!7312786 m!7977044))

(check-sat (not b!7312779) (not tb!262187) tp_is_empty!47377 (not b!7312786) (not b_next!134735) tp_is_empty!47379 (not b_lambda!282247) (not b!7312780) (not b!7312784) (not b!7312782) (not b!7312783) b_and!351267 (not b!7312785) (not setNonEmpty!53971))
(check-sat b_and!351267 (not b_next!134735))
