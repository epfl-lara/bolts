; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711970 () Bool)

(assert start!711970)

(declare-fun b_free!133879 () Bool)

(declare-fun b_next!134669 () Bool)

(assert (=> start!711970 (= b_free!133879 (not b_next!134669))))

(declare-fun tp!2074873 () Bool)

(declare-fun b_and!351125 () Bool)

(assert (=> start!711970 (= tp!2074873 b_and!351125)))

(declare-fun res!2953267 () Bool)

(declare-fun e!4375750 () Bool)

(assert (=> start!711970 (=> (not res!2953267) (not e!4375750))))

(declare-datatypes ((A!725 0))(
  ( (A!726 (val!28983 Int)) )
))
(declare-fun s!1428 () (Set A!725))

(declare-fun elmt!109 () A!725)

(assert (=> start!711970 (= res!2953267 (= s!1428 (set.insert elmt!109 (as set.empty (Set A!725)))))))

(assert (=> start!711970 e!4375750))

(declare-fun condSetEmpty!53738 () Bool)

(assert (=> start!711970 (= condSetEmpty!53738 (= s!1428 (as set.empty (Set A!725))))))

(declare-fun setRes!53738 () Bool)

(assert (=> start!711970 setRes!53738))

(declare-fun tp_is_empty!47261 () Bool)

(assert (=> start!711970 tp_is_empty!47261))

(assert (=> start!711970 tp!2074873))

(declare-fun b!7310792 () Bool)

(assert (=> b!7310792 (= e!4375750 (not true))))

(declare-datatypes ((B!3427 0))(
  ( (B!3428 (val!28984 Int)) )
))
(declare-datatypes ((List!71115 0))(
  ( (Nil!70991) (Cons!70991 (h!77439 B!3427) (t!385195 List!71115)) )
))
(declare-fun lt!2600170 () List!71115)

(declare-fun subseq!774 (List!71115 List!71115) Bool)

(assert (=> b!7310792 (subseq!774 lt!2600170 lt!2600170)))

(declare-datatypes ((Unit!164394 0))(
  ( (Unit!164395) )
))
(declare-fun lt!2600173 () Unit!164394)

(declare-fun lemmaSubseqRefl!180 (List!71115) Unit!164394)

(assert (=> b!7310792 (= lt!2600173 (lemmaSubseqRefl!180 lt!2600170))))

(declare-fun f!864 () Int)

(declare-fun toList!11524 ((Set B!3427)) List!71115)

(declare-fun dynLambda!29029 (Int A!725) (Set B!3427))

(assert (=> b!7310792 (= lt!2600170 (toList!11524 (dynLambda!29029 f!864 elmt!109)))))

(declare-fun lt!2600171 () List!71115)

(assert (=> b!7310792 (subseq!774 lt!2600171 lt!2600171)))

(declare-fun lt!2600172 () Unit!164394)

(assert (=> b!7310792 (= lt!2600172 (lemmaSubseqRefl!180 lt!2600171))))

(declare-fun flatMap!2987 ((Set A!725) Int) (Set B!3427))

(assert (=> b!7310792 (= lt!2600171 (toList!11524 (flatMap!2987 s!1428 f!864)))))

(declare-fun setIsEmpty!53738 () Bool)

(assert (=> setIsEmpty!53738 setRes!53738))

(declare-fun setNonEmpty!53738 () Bool)

(declare-fun tp!2074872 () Bool)

(assert (=> setNonEmpty!53738 (= setRes!53738 (and tp!2074872 tp_is_empty!47261))))

(declare-fun setElem!53738 () A!725)

(declare-fun setRest!53738 () (Set A!725))

(assert (=> setNonEmpty!53738 (= s!1428 (set.union (set.insert setElem!53738 (as set.empty (Set A!725))) setRest!53738))))

(assert (= (and start!711970 res!2953267) b!7310792))

(assert (= (and start!711970 condSetEmpty!53738) setIsEmpty!53738))

(assert (= (and start!711970 (not condSetEmpty!53738)) setNonEmpty!53738))

(declare-fun b_lambda!281997 () Bool)

(assert (=> (not b_lambda!281997) (not b!7310792)))

(declare-fun t!385194 () Bool)

(declare-fun tb!262117 () Bool)

(assert (=> (and start!711970 (= f!864 f!864) t!385194) tb!262117))

(assert (=> b!7310792 t!385194))

(declare-fun result!352624 () Bool)

(declare-fun b_and!351127 () Bool)

(assert (= b_and!351125 (and (=> t!385194 result!352624) b_and!351127)))

(declare-fun m!7974752 () Bool)

(assert (=> start!711970 m!7974752))

(declare-fun m!7974754 () Bool)

(assert (=> b!7310792 m!7974754))

(declare-fun m!7974756 () Bool)

(assert (=> b!7310792 m!7974756))

(declare-fun m!7974758 () Bool)

(assert (=> b!7310792 m!7974758))

(declare-fun m!7974760 () Bool)

(assert (=> b!7310792 m!7974760))

(declare-fun m!7974762 () Bool)

(assert (=> b!7310792 m!7974762))

(declare-fun m!7974764 () Bool)

(assert (=> b!7310792 m!7974764))

(assert (=> b!7310792 m!7974760))

(declare-fun m!7974766 () Bool)

(assert (=> b!7310792 m!7974766))

(assert (=> b!7310792 m!7974754))

(declare-fun m!7974768 () Bool)

(assert (=> b!7310792 m!7974768))

(push 1)

(assert (not b_next!134669))

(assert b_and!351127)

(assert tp_is_empty!47261)

(assert (not b_lambda!281997))

(assert (not b!7310792))

(assert (not setNonEmpty!53738))

(assert (not tb!262117))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351127)

(assert (not b_next!134669))

(check-sat)

(pop 1)

