; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486262 () Bool)

(assert start!486262)

(assert (=> start!486262 true))

(declare-fun b!4755972 () Bool)

(declare-fun e!2966987 () Bool)

(declare-fun tp!1350880 () Bool)

(declare-fun tp!1350879 () Bool)

(assert (=> b!4755972 (= e!2966987 (and tp!1350880 tp!1350879))))

(declare-fun res!2017702 () Bool)

(declare-fun e!2966989 () Bool)

(assert (=> start!486262 (=> (not res!2017702) (not e!2966989))))

(declare-datatypes ((K!14703 0))(
  ( (K!14704 (val!20033 Int)) )
))
(declare-datatypes ((V!14949 0))(
  ( (V!14950 (val!20034 Int)) )
))
(declare-datatypes ((tuple2!55002 0))(
  ( (tuple2!55003 (_1!30795 K!14703) (_2!30795 V!14949)) )
))
(declare-datatypes ((List!53285 0))(
  ( (Nil!53161) (Cons!53161 (h!59558 tuple2!55002) (t!360629 List!53285)) )
))
(declare-datatypes ((tuple2!55004 0))(
  ( (tuple2!55005 (_1!30796 (_ BitVec 64)) (_2!30796 List!53285)) )
))
(declare-datatypes ((List!53286 0))(
  ( (Nil!53162) (Cons!53162 (h!59559 tuple2!55004) (t!360630 List!53286)) )
))
(declare-fun lml!42 () List!53286)

(declare-fun lambda!223469 () Int)

(declare-fun forall!11791 (List!53286 Int) Bool)

(assert (=> start!486262 (= res!2017702 (forall!11791 lml!42 lambda!223469))))

(assert (=> start!486262 e!2966989))

(assert (=> start!486262 e!2966987))

(assert (=> start!486262 true))

(declare-fun e!2966988 () Bool)

(assert (=> start!486262 e!2966988))

(declare-fun tp_is_empty!32179 () Bool)

(declare-fun b!4755973 () Bool)

(declare-fun tp_is_empty!32177 () Bool)

(declare-fun tp!1350878 () Bool)

(assert (=> b!4755973 (= e!2966988 (and tp_is_empty!32177 tp_is_empty!32179 tp!1350878))))

(declare-fun b!4755970 () Bool)

(declare-fun res!2017703 () Bool)

(assert (=> b!4755970 (=> (not res!2017703) (not e!2966989))))

(declare-fun bucket!42 () List!53285)

(declare-fun hash!422 () (_ BitVec 64))

(declare-fun contains!16588 (List!53286 tuple2!55004) Bool)

(assert (=> b!4755970 (= res!2017703 (contains!16588 lml!42 (tuple2!55005 hash!422 bucket!42)))))

(declare-fun b!4755971 () Bool)

(assert (=> b!4755971 (= e!2966989 (not (forall!11791 lml!42 lambda!223469)))))

(assert (= (and start!486262 res!2017702) b!4755970))

(assert (= (and b!4755970 res!2017703) b!4755971))

(assert (= (and start!486262 (is-Cons!53162 lml!42)) b!4755972))

(assert (= (and start!486262 (is-Cons!53161 bucket!42)) b!4755973))

(declare-fun m!5726201 () Bool)

(assert (=> start!486262 m!5726201))

(declare-fun m!5726203 () Bool)

(assert (=> b!4755970 m!5726203))

(assert (=> b!4755971 m!5726201))

(push 1)

(assert tp_is_empty!32179)

(assert (not b!4755973))

(assert tp_is_empty!32177)

(assert (not b!4755971))

(assert (not b!4755972))

(assert (not b!4755970))

(assert (not start!486262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

