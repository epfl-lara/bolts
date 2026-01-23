; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711978 () Bool)

(assert start!711978)

(declare-fun b_free!133887 () Bool)

(declare-fun b_next!134677 () Bool)

(assert (=> start!711978 (= b_free!133887 (not b_next!134677))))

(declare-fun tp!2074896 () Bool)

(declare-fun b_and!351141 () Bool)

(assert (=> start!711978 (= tp!2074896 b_and!351141)))

(declare-fun b!7310808 () Bool)

(assert (=> b!7310808 true))

(declare-datatypes ((B!3435 0))(
  ( (B!3436 (val!28991 Int)) )
))
(declare-datatypes ((List!71119 0))(
  ( (Nil!70995) (Cons!70995 (h!77443 B!3435) (t!385207 List!71119)) )
))
(declare-fun lt!2600233 () List!71119)

(declare-fun lt!2600230 () List!71119)

(declare-fun lambda!451506 () Int)

(declare-fun lambda!451507 () Int)

(assert (=> b!7310808 (= (= lt!2600230 lt!2600233) (= lambda!451507 lambda!451506))))

(assert (=> b!7310808 true))

(declare-fun res!2953279 () Bool)

(declare-fun e!4375762 () Bool)

(assert (=> start!711978 (=> (not res!2953279) (not e!4375762))))

(declare-datatypes ((A!733 0))(
  ( (A!734 (val!28992 Int)) )
))
(declare-fun s!1428 () (Set A!733))

(declare-fun elmt!109 () A!733)

(assert (=> start!711978 (= res!2953279 (= s!1428 (set.insert elmt!109 (as set.empty (Set A!733)))))))

(assert (=> start!711978 e!4375762))

(declare-fun condSetEmpty!53750 () Bool)

(assert (=> start!711978 (= condSetEmpty!53750 (= s!1428 (as set.empty (Set A!733))))))

(declare-fun setRes!53750 () Bool)

(assert (=> start!711978 setRes!53750))

(declare-fun tp_is_empty!47269 () Bool)

(assert (=> start!711978 tp_is_empty!47269))

(assert (=> start!711978 tp!2074896))

(declare-fun forall!17715 (List!71119 Int) Bool)

(assert (=> b!7310808 (= e!4375762 (not (forall!17715 lt!2600230 lambda!451506)))))

(assert (=> b!7310808 (forall!17715 lt!2600233 lambda!451507)))

(declare-fun f!864 () Int)

(declare-datatypes ((Unit!164402 0))(
  ( (Unit!164403) )
))
(declare-fun lt!2600229 () Unit!164402)

(declare-fun lemmaFlatMapOnSingletonSetList2!1 ((Set A!733) A!733 Int List!71119) Unit!164402)

(assert (=> b!7310808 (= lt!2600229 (lemmaFlatMapOnSingletonSetList2!1 s!1428 elmt!109 f!864 lt!2600233))))

(assert (=> b!7310808 (forall!17715 lt!2600230 lambda!451506)))

(declare-fun lt!2600232 () Unit!164402)

(declare-fun lemmaFlatMapOnSingletonSetList1!3 ((Set A!733) A!733 Int List!71119) Unit!164402)

(assert (=> b!7310808 (= lt!2600232 (lemmaFlatMapOnSingletonSetList1!3 s!1428 elmt!109 f!864 lt!2600230))))

(declare-fun subseq!778 (List!71119 List!71119) Bool)

(assert (=> b!7310808 (subseq!778 lt!2600233 lt!2600233)))

(declare-fun lt!2600228 () Unit!164402)

(declare-fun lemmaSubseqRefl!184 (List!71119) Unit!164402)

(assert (=> b!7310808 (= lt!2600228 (lemmaSubseqRefl!184 lt!2600233))))

(declare-fun toList!11528 ((Set B!3435)) List!71119)

(declare-fun dynLambda!29033 (Int A!733) (Set B!3435))

(assert (=> b!7310808 (= lt!2600233 (toList!11528 (dynLambda!29033 f!864 elmt!109)))))

(assert (=> b!7310808 (subseq!778 lt!2600230 lt!2600230)))

(declare-fun lt!2600231 () Unit!164402)

(assert (=> b!7310808 (= lt!2600231 (lemmaSubseqRefl!184 lt!2600230))))

(declare-fun flatMap!2991 ((Set A!733) Int) (Set B!3435))

(assert (=> b!7310808 (= lt!2600230 (toList!11528 (flatMap!2991 s!1428 f!864)))))

(declare-fun setIsEmpty!53750 () Bool)

(assert (=> setIsEmpty!53750 setRes!53750))

(declare-fun setNonEmpty!53750 () Bool)

(declare-fun tp!2074897 () Bool)

(assert (=> setNonEmpty!53750 (= setRes!53750 (and tp!2074897 tp_is_empty!47269))))

(declare-fun setElem!53750 () A!733)

(declare-fun setRest!53750 () (Set A!733))

(assert (=> setNonEmpty!53750 (= s!1428 (set.union (set.insert setElem!53750 (as set.empty (Set A!733))) setRest!53750))))

(assert (= (and start!711978 res!2953279) b!7310808))

(assert (= (and start!711978 condSetEmpty!53750) setIsEmpty!53750))

(assert (= (and start!711978 (not condSetEmpty!53750)) setNonEmpty!53750))

(declare-fun b_lambda!282005 () Bool)

(assert (=> (not b_lambda!282005) (not b!7310808)))

(declare-fun t!385206 () Bool)

(declare-fun tb!262125 () Bool)

(assert (=> (and start!711978 (= f!864 f!864) t!385206) tb!262125))

(assert (=> b!7310808 t!385206))

(declare-fun result!352632 () Bool)

(declare-fun b_and!351143 () Bool)

(assert (= b_and!351141 (and (=> t!385206 result!352632) b_and!351143)))

(declare-fun m!7974832 () Bool)

(assert (=> start!711978 m!7974832))

(declare-fun m!7974834 () Bool)

(assert (=> b!7310808 m!7974834))

(declare-fun m!7974836 () Bool)

(assert (=> b!7310808 m!7974836))

(assert (=> b!7310808 m!7974836))

(declare-fun m!7974838 () Bool)

(assert (=> b!7310808 m!7974838))

(declare-fun m!7974840 () Bool)

(assert (=> b!7310808 m!7974840))

(assert (=> b!7310808 m!7974834))

(declare-fun m!7974842 () Bool)

(assert (=> b!7310808 m!7974842))

(declare-fun m!7974844 () Bool)

(assert (=> b!7310808 m!7974844))

(declare-fun m!7974846 () Bool)

(assert (=> b!7310808 m!7974846))

(declare-fun m!7974848 () Bool)

(assert (=> b!7310808 m!7974848))

(declare-fun m!7974850 () Bool)

(assert (=> b!7310808 m!7974850))

(declare-fun m!7974852 () Bool)

(assert (=> b!7310808 m!7974852))

(declare-fun m!7974854 () Bool)

(assert (=> b!7310808 m!7974854))

(declare-fun m!7974856 () Bool)

(assert (=> b!7310808 m!7974856))

(assert (=> b!7310808 m!7974846))

(push 1)

(assert tp_is_empty!47269)

(assert (not setNonEmpty!53750))

(assert (not tb!262125))

(assert (not b_lambda!282005))

(assert b_and!351143)

(assert (not b_next!134677))

(assert (not b!7310808))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351143)

(assert (not b_next!134677))

(check-sat)

(pop 1)

