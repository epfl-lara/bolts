; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714312 () Bool)

(assert start!714312)

(declare-fun b_free!134263 () Bool)

(declare-fun b_next!135053 () Bool)

(assert (=> start!714312 (= b_free!134263 (not b_next!135053))))

(declare-fun tp!2079563 () Bool)

(declare-fun b_and!351759 () Bool)

(assert (=> start!714312 (= tp!2079563 b_and!351759)))

(declare-fun setIsEmpty!55790 () Bool)

(declare-fun setRes!55790 () Bool)

(assert (=> setIsEmpty!55790 setRes!55790))

(declare-fun b!7321424 () Bool)

(declare-fun res!2959302 () Bool)

(declare-fun e!4383582 () Bool)

(assert (=> b!7321424 (=> (not res!2959302) (not e!4383582))))

(declare-fun p!1702 () Int)

(declare-datatypes ((A!1109 0))(
  ( (A!1110 (val!29429 Int)) )
))
(declare-fun e!9205 () A!1109)

(declare-fun dynLambda!29358 (Int A!1109) Bool)

(assert (=> b!7321424 (= res!2959302 (dynLambda!29358 p!1702 e!9205))))

(declare-fun setNonEmpty!55790 () Bool)

(declare-fun tp!2079562 () Bool)

(declare-fun tp_is_empty!48109 () Bool)

(assert (=> setNonEmpty!55790 (= setRes!55790 (and tp!2079562 tp_is_empty!48109))))

(declare-fun s!1482 () (Set A!1109))

(declare-fun setElem!55790 () A!1109)

(declare-fun setRest!55790 () (Set A!1109))

(assert (=> setNonEmpty!55790 (= s!1482 (set.union (set.insert setElem!55790 (as set.empty (Set A!1109))) setRest!55790))))

(declare-fun res!2959301 () Bool)

(assert (=> start!714312 (=> (not res!2959301) (not e!4383582))))

(assert (=> start!714312 (= res!2959301 (set.member e!9205 s!1482))))

(assert (=> start!714312 e!4383582))

(assert (=> start!714312 tp_is_empty!48109))

(declare-fun condSetEmpty!55790 () Bool)

(assert (=> start!714312 (= condSetEmpty!55790 (= s!1482 (as set.empty (Set A!1109))))))

(assert (=> start!714312 setRes!55790))

(assert (=> start!714312 tp!2079563))

(declare-fun b!7321425 () Bool)

(assert (=> b!7321425 (= e!4383582 false)))

(declare-fun lt!2604677 () Bool)

(declare-datatypes ((List!71428 0))(
  ( (Nil!71304) (Cons!71304 (h!77752 A!1109) (t!385757 List!71428)) )
))
(declare-fun contains!20814 (List!71428 A!1109) Bool)

(declare-fun toList!11715 ((Set A!1109)) List!71428)

(assert (=> b!7321425 (= lt!2604677 (contains!20814 (toList!11715 s!1482) e!9205))))

(assert (= (and start!714312 res!2959301) b!7321424))

(assert (= (and b!7321424 res!2959302) b!7321425))

(assert (= (and start!714312 condSetEmpty!55790) setIsEmpty!55790))

(assert (= (and start!714312 (not condSetEmpty!55790)) setNonEmpty!55790))

(declare-fun b_lambda!283003 () Bool)

(assert (=> (not b_lambda!283003) (not b!7321424)))

(declare-fun t!385756 () Bool)

(declare-fun tb!262339 () Bool)

(assert (=> (and start!714312 (= p!1702 p!1702) t!385756) tb!262339))

(declare-fun result!353526 () Bool)

(assert (=> tb!262339 (= result!353526 true)))

(assert (=> b!7321424 t!385756))

(declare-fun b_and!351761 () Bool)

(assert (= b_and!351759 (and (=> t!385756 result!353526) b_and!351761)))

(declare-fun m!7987178 () Bool)

(assert (=> b!7321424 m!7987178))

(declare-fun m!7987180 () Bool)

(assert (=> start!714312 m!7987180))

(declare-fun m!7987182 () Bool)

(assert (=> b!7321425 m!7987182))

(assert (=> b!7321425 m!7987182))

(declare-fun m!7987184 () Bool)

(assert (=> b!7321425 m!7987184))

(push 1)

(assert b_and!351761)

(assert tp_is_empty!48109)

(assert (not b_next!135053))

(assert (not setNonEmpty!55790))

(assert (not b_lambda!283003))

(assert (not b!7321425))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351761)

(assert (not b_next!135053))

(check-sat)

(pop 1)

