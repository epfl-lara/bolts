; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711982 () Bool)

(assert start!711982)

(declare-fun b_free!133891 () Bool)

(declare-fun b_next!134681 () Bool)

(assert (=> start!711982 (= b_free!133891 (not b_next!134681))))

(declare-fun tp!2074909 () Bool)

(declare-fun b_and!351149 () Bool)

(assert (=> start!711982 (= tp!2074909 b_and!351149)))

(declare-fun b!7310818 () Bool)

(assert (=> b!7310818 true))

(declare-datatypes ((B!3439 0))(
  ( (B!3440 (val!28995 Int)) )
))
(declare-datatypes ((List!71121 0))(
  ( (Nil!70997) (Cons!70997 (h!77445 B!3439) (t!385213 List!71121)) )
))
(declare-fun lt!2600271 () List!71121)

(declare-fun lt!2600270 () List!71121)

(declare-fun lambda!451522 () Int)

(declare-fun lambda!451523 () Int)

(assert (=> b!7310818 (= (= lt!2600271 lt!2600270) (= lambda!451523 lambda!451522))))

(assert (=> b!7310818 true))

(declare-fun res!2953285 () Bool)

(declare-fun e!4375768 () Bool)

(assert (=> start!711982 (=> (not res!2953285) (not e!4375768))))

(declare-datatypes ((A!737 0))(
  ( (A!738 (val!28996 Int)) )
))
(declare-fun s!1428 () (Set A!737))

(declare-fun elmt!109 () A!737)

(assert (=> start!711982 (= res!2953285 (= s!1428 (set.insert elmt!109 (as set.empty (Set A!737)))))))

(assert (=> start!711982 e!4375768))

(declare-fun condSetEmpty!53756 () Bool)

(assert (=> start!711982 (= condSetEmpty!53756 (= s!1428 (as set.empty (Set A!737))))))

(declare-fun setRes!53756 () Bool)

(assert (=> start!711982 setRes!53756))

(declare-fun tp_is_empty!47273 () Bool)

(assert (=> start!711982 tp_is_empty!47273))

(assert (=> start!711982 tp!2074909))

(declare-fun forall!17717 (List!71121 Int) Bool)

(assert (=> b!7310818 (= e!4375768 (not (forall!17717 lt!2600270 lambda!451523)))))

(declare-datatypes ((Unit!164406 0))(
  ( (Unit!164407) )
))
(declare-fun lt!2600268 () Unit!164406)

(declare-fun forallContainsSubset!35 (List!71121 List!71121) Unit!164406)

(assert (=> b!7310818 (= lt!2600268 (forallContainsSubset!35 lt!2600271 lt!2600270))))

(assert (=> b!7310818 (forall!17717 lt!2600270 lambda!451523)))

(declare-fun f!864 () Int)

(declare-fun lt!2600267 () Unit!164406)

(declare-fun lemmaFlatMapOnSingletonSetList2!3 ((Set A!737) A!737 Int List!71121) Unit!164406)

(assert (=> b!7310818 (= lt!2600267 (lemmaFlatMapOnSingletonSetList2!3 s!1428 elmt!109 f!864 lt!2600270))))

(assert (=> b!7310818 (forall!17717 lt!2600271 lambda!451522)))

(declare-fun lt!2600269 () Unit!164406)

(declare-fun lemmaFlatMapOnSingletonSetList1!5 ((Set A!737) A!737 Int List!71121) Unit!164406)

(assert (=> b!7310818 (= lt!2600269 (lemmaFlatMapOnSingletonSetList1!5 s!1428 elmt!109 f!864 lt!2600271))))

(declare-fun subseq!780 (List!71121 List!71121) Bool)

(assert (=> b!7310818 (subseq!780 lt!2600270 lt!2600270)))

(declare-fun lt!2600272 () Unit!164406)

(declare-fun lemmaSubseqRefl!186 (List!71121) Unit!164406)

(assert (=> b!7310818 (= lt!2600272 (lemmaSubseqRefl!186 lt!2600270))))

(declare-fun toList!11530 ((Set B!3439)) List!71121)

(declare-fun dynLambda!29035 (Int A!737) (Set B!3439))

(assert (=> b!7310818 (= lt!2600270 (toList!11530 (dynLambda!29035 f!864 elmt!109)))))

(assert (=> b!7310818 (subseq!780 lt!2600271 lt!2600271)))

(declare-fun lt!2600266 () Unit!164406)

(assert (=> b!7310818 (= lt!2600266 (lemmaSubseqRefl!186 lt!2600271))))

(declare-fun flatMap!2993 ((Set A!737) Int) (Set B!3439))

(assert (=> b!7310818 (= lt!2600271 (toList!11530 (flatMap!2993 s!1428 f!864)))))

(declare-fun setIsEmpty!53756 () Bool)

(assert (=> setIsEmpty!53756 setRes!53756))

(declare-fun setNonEmpty!53756 () Bool)

(declare-fun tp!2074908 () Bool)

(assert (=> setNonEmpty!53756 (= setRes!53756 (and tp!2074908 tp_is_empty!47273))))

(declare-fun setElem!53756 () A!737)

(declare-fun setRest!53756 () (Set A!737))

(assert (=> setNonEmpty!53756 (= s!1428 (set.union (set.insert setElem!53756 (as set.empty (Set A!737))) setRest!53756))))

(assert (= (and start!711982 res!2953285) b!7310818))

(assert (= (and start!711982 condSetEmpty!53756) setIsEmpty!53756))

(assert (= (and start!711982 (not condSetEmpty!53756)) setNonEmpty!53756))

(declare-fun b_lambda!282009 () Bool)

(assert (=> (not b_lambda!282009) (not b!7310818)))

(declare-fun t!385212 () Bool)

(declare-fun tb!262129 () Bool)

(assert (=> (and start!711982 (= f!864 f!864) t!385212) tb!262129))

(assert (=> b!7310818 t!385212))

(declare-fun result!352636 () Bool)

(declare-fun b_and!351151 () Bool)

(assert (= b_and!351149 (and (=> t!385212 result!352636) b_and!351151)))

(declare-fun m!7974884 () Bool)

(assert (=> start!711982 m!7974884))

(declare-fun m!7974886 () Bool)

(assert (=> b!7310818 m!7974886))

(declare-fun m!7974888 () Bool)

(assert (=> b!7310818 m!7974888))

(declare-fun m!7974890 () Bool)

(assert (=> b!7310818 m!7974890))

(declare-fun m!7974892 () Bool)

(assert (=> b!7310818 m!7974892))

(declare-fun m!7974894 () Bool)

(assert (=> b!7310818 m!7974894))

(declare-fun m!7974896 () Bool)

(assert (=> b!7310818 m!7974896))

(declare-fun m!7974898 () Bool)

(assert (=> b!7310818 m!7974898))

(declare-fun m!7974900 () Bool)

(assert (=> b!7310818 m!7974900))

(assert (=> b!7310818 m!7974894))

(declare-fun m!7974902 () Bool)

(assert (=> b!7310818 m!7974902))

(declare-fun m!7974904 () Bool)

(assert (=> b!7310818 m!7974904))

(assert (=> b!7310818 m!7974900))

(declare-fun m!7974906 () Bool)

(assert (=> b!7310818 m!7974906))

(declare-fun m!7974908 () Bool)

(assert (=> b!7310818 m!7974908))

(assert (=> b!7310818 m!7974890))

(declare-fun m!7974910 () Bool)

(assert (=> b!7310818 m!7974910))

(push 1)

(assert (not b!7310818))

(assert (not setNonEmpty!53756))

(assert (not b_lambda!282009))

(assert b_and!351151)

(assert (not tb!262129))

(assert (not b_next!134681))

(assert tp_is_empty!47273)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351151)

(assert (not b_next!134681))

(check-sat)

(pop 1)

