; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486336 () Bool)

(assert start!486336)

(declare-fun b!4756337 () Bool)

(declare-fun res!2017904 () Bool)

(declare-fun e!2967244 () Bool)

(assert (=> b!4756337 (=> (not res!2017904) (not e!2967244))))

(declare-datatypes ((K!14733 0))(
  ( (K!14734 (val!20057 Int)) )
))
(declare-datatypes ((V!14979 0))(
  ( (V!14980 (val!20058 Int)) )
))
(declare-datatypes ((tuple2!55038 0))(
  ( (tuple2!55039 (_1!30813 K!14733) (_2!30813 V!14979)) )
))
(declare-datatypes ((List!53303 0))(
  ( (Nil!53179) (Cons!53179 (h!59582 tuple2!55038) (t!360647 List!53303)) )
))
(declare-fun l!13802 () List!53303)

(assert (=> b!4756337 (= res!2017904 (not (is-Nil!53179 l!13802)))))

(declare-fun res!2017903 () Bool)

(assert (=> start!486336 (=> (not res!2017903) (not e!2967244))))

(declare-fun noDuplicateKeys!2227 (List!53303) Bool)

(assert (=> start!486336 (= res!2017903 (noDuplicateKeys!2227 l!13802))))

(assert (=> start!486336 e!2967244))

(declare-fun e!2967243 () Bool)

(assert (=> start!486336 e!2967243))

(assert (=> start!486336 true))

(declare-fun tp_is_empty!32225 () Bool)

(assert (=> start!486336 tp_is_empty!32225))

(declare-fun b!4756336 () Bool)

(declare-fun res!2017902 () Bool)

(assert (=> b!4756336 (=> (not res!2017902) (not e!2967244))))

(declare-fun hash!423 () (_ BitVec 64))

(declare-datatypes ((Hashable!6459 0))(
  ( (HashableExt!6458 (__x!32162 Int)) )
))
(declare-fun hashF!1449 () Hashable!6459)

(declare-fun allKeysSameHash!1916 (List!53303 (_ BitVec 64) Hashable!6459) Bool)

(assert (=> b!4756336 (= res!2017902 (allKeysSameHash!1916 l!13802 hash!423 hashF!1449))))

(declare-fun b!4756339 () Bool)

(declare-fun tp_is_empty!32227 () Bool)

(declare-fun tp!1351000 () Bool)

(assert (=> b!4756339 (= e!2967243 (and tp_is_empty!32225 tp_is_empty!32227 tp!1351000))))

(declare-fun b!4756338 () Bool)

(assert (=> b!4756338 (= e!2967244 false)))

(declare-fun key!5233 () K!14733)

(declare-datatypes ((Unit!137704 0))(
  ( (Unit!137705) )
))
(declare-fun lt!1922994 () Unit!137704)

(declare-fun lemmaRemovePairForKeyPreservesHash!247 (List!53303 K!14733 (_ BitVec 64) Hashable!6459) Unit!137704)

(assert (=> b!4756338 (= lt!1922994 (lemmaRemovePairForKeyPreservesHash!247 (t!360647 l!13802) key!5233 hash!423 hashF!1449))))

(assert (= (and start!486336 res!2017903) b!4756336))

(assert (= (and b!4756336 res!2017902) b!4756337))

(assert (= (and b!4756337 res!2017904) b!4756338))

(assert (= (and start!486336 (is-Cons!53179 l!13802)) b!4756339))

(declare-fun m!5726403 () Bool)

(assert (=> start!486336 m!5726403))

(declare-fun m!5726405 () Bool)

(assert (=> b!4756336 m!5726405))

(declare-fun m!5726407 () Bool)

(assert (=> b!4756338 m!5726407))

(push 1)

(assert (not b!4756336))

(assert tp_is_empty!32227)

(assert (not b!4756338))

(assert (not b!4756339))

(assert tp_is_empty!32225)

(assert (not start!486336))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

