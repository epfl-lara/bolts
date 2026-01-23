; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693666 () Bool)

(assert start!693666)

(declare-fun b_free!133715 () Bool)

(declare-fun b_next!134505 () Bool)

(assert (=> start!693666 (= b_free!133715 (not b_next!134505))))

(declare-fun tp!1961326 () Bool)

(declare-fun b_and!350811 () Bool)

(assert (=> start!693666 (= tp!1961326 b_and!350811)))

(declare-fun res!2906027 () Bool)

(declare-fun e!4280025 () Bool)

(assert (=> start!693666 (=> (not res!2906027) (not e!4280025))))

(declare-datatypes ((B!3279 0))(
  ( (B!3280 (val!27947 Int)) )
))
(declare-datatypes ((List!69009 0))(
  ( (Nil!68885) (Cons!68885 (h!75333 B!3279) (t!382920 List!69009)) )
))
(declare-fun l1!756 () List!69009)

(declare-datatypes ((A!621 0))(
  ( (A!622 (val!27948 Int)) )
))
(declare-fun s1!414 () (Set A!621))

(declare-fun s2!385 () (Set A!621))

(declare-fun f!567 () Int)

(declare-fun subseq!748 (List!69009 List!69009) Bool)

(declare-fun toList!11112 ((Set B!3279)) List!69009)

(declare-fun map!16412 ((Set A!621) Int) (Set B!3279))

(assert (=> start!693666 (= res!2906027 (subseq!748 l1!756 (toList!11112 (set.union (map!16412 s1!414 f!567) (map!16412 s2!385 f!567)))))))

(assert (=> start!693666 e!4280025))

(declare-fun e!4280024 () Bool)

(assert (=> start!693666 e!4280024))

(declare-fun condSetEmpty!51129 () Bool)

(assert (=> start!693666 (= condSetEmpty!51129 (= s1!414 (as set.empty (Set A!621))))))

(declare-fun setRes!51128 () Bool)

(assert (=> start!693666 setRes!51128))

(assert (=> start!693666 tp!1961326))

(declare-fun condSetEmpty!51128 () Bool)

(assert (=> start!693666 (= condSetEmpty!51128 (= s2!385 (as set.empty (Set A!621))))))

(declare-fun setRes!51129 () Bool)

(assert (=> start!693666 setRes!51129))

(declare-fun b!7122707 () Bool)

(declare-fun tp_is_empty!45393 () Bool)

(declare-fun tp!1961325 () Bool)

(assert (=> b!7122707 (= e!4280024 (and tp_is_empty!45393 tp!1961325))))

(declare-fun setIsEmpty!51128 () Bool)

(assert (=> setIsEmpty!51128 setRes!51129))

(declare-fun setNonEmpty!51128 () Bool)

(declare-fun tp!1961327 () Bool)

(declare-fun tp_is_empty!45395 () Bool)

(assert (=> setNonEmpty!51128 (= setRes!51129 (and tp!1961327 tp_is_empty!45395))))

(declare-fun setElem!51129 () A!621)

(declare-fun setRest!51128 () (Set A!621))

(assert (=> setNonEmpty!51128 (= s2!385 (set.union (set.insert setElem!51129 (as set.empty (Set A!621))) setRest!51128))))

(declare-fun setIsEmpty!51129 () Bool)

(assert (=> setIsEmpty!51129 setRes!51128))

(declare-fun setNonEmpty!51129 () Bool)

(declare-fun tp!1961324 () Bool)

(assert (=> setNonEmpty!51129 (= setRes!51128 (and tp!1961324 tp_is_empty!45395))))

(declare-fun setElem!51128 () A!621)

(declare-fun setRest!51129 () (Set A!621))

(assert (=> setNonEmpty!51129 (= s1!414 (set.union (set.insert setElem!51128 (as set.empty (Set A!621))) setRest!51129))))

(declare-fun b!7122708 () Bool)

(assert (=> b!7122708 (= e!4280025 false)))

(declare-fun lt!2562197 () List!69009)

(assert (=> b!7122708 (= lt!2562197 (toList!11112 (map!16412 (set.union s1!414 s2!385) f!567)))))

(assert (= (and start!693666 res!2906027) b!7122708))

(assert (= (and start!693666 (is-Cons!68885 l1!756)) b!7122707))

(assert (= (and start!693666 condSetEmpty!51129) setIsEmpty!51129))

(assert (= (and start!693666 (not condSetEmpty!51129)) setNonEmpty!51129))

(assert (= (and start!693666 condSetEmpty!51128) setIsEmpty!51128))

(assert (= (and start!693666 (not condSetEmpty!51128)) setNonEmpty!51128))

(declare-fun m!7839986 () Bool)

(assert (=> start!693666 m!7839986))

(declare-fun m!7839988 () Bool)

(assert (=> start!693666 m!7839988))

(declare-fun m!7839990 () Bool)

(assert (=> start!693666 m!7839990))

(assert (=> start!693666 m!7839990))

(declare-fun m!7839992 () Bool)

(assert (=> start!693666 m!7839992))

(declare-fun m!7839994 () Bool)

(assert (=> b!7122708 m!7839994))

(assert (=> b!7122708 m!7839994))

(declare-fun m!7839996 () Bool)

(assert (=> b!7122708 m!7839996))

(push 1)

(assert (not b!7122708))

(assert tp_is_empty!45393)

(assert (not start!693666))

(assert b_and!350811)

(assert (not b_next!134505))

(assert (not setNonEmpty!51129))

(assert (not b!7122707))

(assert (not setNonEmpty!51128))

(assert tp_is_empty!45395)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350811)

(assert (not b_next!134505))

(check-sat)

(pop 1)

