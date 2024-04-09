; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75056 () Bool)

(assert start!75056)

(declare-datatypes ((B!1226 0))(
  ( (B!1227 (val!8919 Int)) )
))
(declare-datatypes ((tuple2!11858 0))(
  ( (tuple2!11859 (_1!5939 (_ BitVec 64)) (_2!5939 B!1226)) )
))
(declare-datatypes ((List!17719 0))(
  ( (Nil!17716) (Cons!17715 (h!18846 tuple2!11858) (t!25004 List!17719)) )
))
(declare-datatypes ((ListLongMap!10641 0))(
  ( (ListLongMap!10642 (toList!5336 List!17719)) )
))
(declare-fun lm!210 () ListLongMap!10641)

(declare-fun isStrictlySorted!458 (List!17719) Bool)

(assert (=> start!75056 (not (isStrictlySorted!458 (toList!5336 lm!210)))))

(declare-fun e!492455 () Bool)

(declare-fun inv!29361 (ListLongMap!10641) Bool)

(assert (=> start!75056 (and (inv!29361 lm!210) e!492455)))

(declare-fun b!884827 () Bool)

(declare-fun tp!54195 () Bool)

(assert (=> b!884827 (= e!492455 tp!54195)))

(assert (= start!75056 b!884827))

(declare-fun m!825191 () Bool)

(assert (=> start!75056 m!825191))

(declare-fun m!825193 () Bool)

(assert (=> start!75056 m!825193))

(push 1)

(assert (not start!75056))

(assert (not b!884827))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109217 () Bool)

(declare-fun res!601182 () Bool)

(declare-fun e!492474 () Bool)

(assert (=> d!109217 (=> res!601182 e!492474)))

(assert (=> d!109217 (= res!601182 (or (is-Nil!17716 (toList!5336 lm!210)) (is-Nil!17716 (t!25004 (toList!5336 lm!210)))))))

(assert (=> d!109217 (= (isStrictlySorted!458 (toList!5336 lm!210)) e!492474)))

(declare-fun b!884846 () Bool)

(declare-fun e!492475 () Bool)

(assert (=> b!884846 (= e!492474 e!492475)))

(declare-fun res!601183 () Bool)

(assert (=> b!884846 (=> (not res!601183) (not e!492475))))

(assert (=> b!884846 (= res!601183 (bvslt (_1!5939 (h!18846 (toList!5336 lm!210))) (_1!5939 (h!18846 (t!25004 (toList!5336 lm!210))))))))

(declare-fun b!884847 () Bool)

(assert (=> b!884847 (= e!492475 (isStrictlySorted!458 (t!25004 (toList!5336 lm!210))))))

(assert (= (and d!109217 (not res!601182)) b!884846))

(assert (= (and b!884846 res!601183) b!884847))

(declare-fun m!825203 () Bool)

(assert (=> b!884847 m!825203))

(assert (=> start!75056 d!109217))

(declare-fun d!109221 () Bool)

(assert (=> d!109221 (= (inv!29361 lm!210) (isStrictlySorted!458 (toList!5336 lm!210)))))

(declare-fun bs!24793 () Bool)

(assert (= bs!24793 d!109221))

(assert (=> bs!24793 m!825191))

(assert (=> start!75056 d!109221))

(declare-fun b!884862 () Bool)

(declare-fun e!492484 () Bool)

(declare-fun tp_is_empty!17739 () Bool)

(declare-fun tp!54206 () Bool)

(assert (=> b!884862 (= e!492484 (and tp_is_empty!17739 tp!54206))))

(assert (=> b!884827 (= tp!54195 e!492484)))

(assert (= (and b!884827 (is-Cons!17715 (toList!5336 lm!210))) b!884862))

(push 1)

