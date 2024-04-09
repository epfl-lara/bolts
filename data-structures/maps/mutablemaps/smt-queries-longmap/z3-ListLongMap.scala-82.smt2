; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1160 () Bool)

(assert start!1160)

(declare-datatypes ((B!298 0))(
  ( (B!299 (val!244 Int)) )
))
(declare-datatypes ((tuple2!270 0))(
  ( (tuple2!271 (_1!135 (_ BitVec 64)) (_2!135 B!298)) )
))
(declare-datatypes ((List!291 0))(
  ( (Nil!288) (Cons!287 (h!853 tuple2!270) (t!2438 List!291)) )
))
(declare-datatypes ((ListLongMap!275 0))(
  ( (ListLongMap!276 (toList!153 List!291)) )
))
(declare-fun lm!213 () ListLongMap!275)

(declare-fun isStrictlySorted!20 (List!291) Bool)

(assert (=> start!1160 (not (isStrictlySorted!20 (toList!153 lm!213)))))

(declare-fun e!5807 () Bool)

(declare-fun inv!451 (ListLongMap!275) Bool)

(assert (=> start!1160 (and (inv!451 lm!213) e!5807)))

(declare-fun b!10109 () Bool)

(declare-fun tp!1430 () Bool)

(assert (=> b!10109 (= e!5807 tp!1430)))

(assert (= start!1160 b!10109))

(declare-fun m!6459 () Bool)

(assert (=> start!1160 m!6459))

(declare-fun m!6461 () Bool)

(assert (=> start!1160 m!6461))

(check-sat (not start!1160) (not b!10109))
(check-sat)
(get-model)

(declare-fun d!1001 () Bool)

(declare-fun res!8825 () Bool)

(declare-fun e!5823 () Bool)

(assert (=> d!1001 (=> res!8825 e!5823)))

(get-info :version)

(assert (=> d!1001 (= res!8825 (or ((_ is Nil!288) (toList!153 lm!213)) ((_ is Nil!288) (t!2438 (toList!153 lm!213)))))))

(assert (=> d!1001 (= (isStrictlySorted!20 (toList!153 lm!213)) e!5823)))

(declare-fun b!10125 () Bool)

(declare-fun e!5824 () Bool)

(assert (=> b!10125 (= e!5823 e!5824)))

(declare-fun res!8826 () Bool)

(assert (=> b!10125 (=> (not res!8826) (not e!5824))))

(assert (=> b!10125 (= res!8826 (bvslt (_1!135 (h!853 (toList!153 lm!213))) (_1!135 (h!853 (t!2438 (toList!153 lm!213))))))))

(declare-fun b!10126 () Bool)

(assert (=> b!10126 (= e!5824 (isStrictlySorted!20 (t!2438 (toList!153 lm!213))))))

(assert (= (and d!1001 (not res!8825)) b!10125))

(assert (= (and b!10125 res!8826) b!10126))

(declare-fun m!6467 () Bool)

(assert (=> b!10126 m!6467))

(assert (=> start!1160 d!1001))

(declare-fun d!1005 () Bool)

(assert (=> d!1005 (= (inv!451 lm!213) (isStrictlySorted!20 (toList!153 lm!213)))))

(declare-fun bs!345 () Bool)

(assert (= bs!345 d!1005))

(assert (=> bs!345 m!6459))

(assert (=> start!1160 d!1005))

(declare-fun b!10144 () Bool)

(declare-fun e!5836 () Bool)

(declare-fun tp_is_empty!473 () Bool)

(declare-fun tp!1441 () Bool)

(assert (=> b!10144 (= e!5836 (and tp_is_empty!473 tp!1441))))

(assert (=> b!10109 (= tp!1430 e!5836)))

(assert (= (and b!10109 ((_ is Cons!287) (toList!153 lm!213))) b!10144))

(check-sat (not d!1005) (not b!10126) (not b!10144) tp_is_empty!473)
(check-sat)
