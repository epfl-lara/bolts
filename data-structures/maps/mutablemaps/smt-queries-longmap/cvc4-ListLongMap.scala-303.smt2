; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5288 () Bool)

(assert start!5288)

(declare-datatypes ((B!810 0))(
  ( (B!811 (val!905 Int)) )
))
(declare-datatypes ((tuple2!1474 0))(
  ( (tuple2!1475 (_1!747 (_ BitVec 64)) (_2!747 B!810)) )
))
(declare-datatypes ((List!1034 0))(
  ( (Nil!1031) (Cons!1030 (h!1598 tuple2!1474) (t!3875 List!1034)) )
))
(declare-datatypes ((ListLongMap!1055 0))(
  ( (ListLongMap!1056 (toList!543 List!1034)) )
))
(declare-fun lm!266 () ListLongMap!1055)

(declare-fun ListLongMapPrimitiveSize!3 (ListLongMap!1055) Int)

(assert (=> start!5288 (< (ListLongMapPrimitiveSize!3 lm!266) 0)))

(declare-fun e!24312 () Bool)

(declare-fun inv!1725 (ListLongMap!1055) Bool)

(assert (=> start!5288 (and (inv!1725 lm!266) e!24312)))

(declare-fun b!38250 () Bool)

(declare-fun tp!5693 () Bool)

(assert (=> b!38250 (= e!24312 tp!5693)))

(assert (= start!5288 b!38250))

(declare-fun m!30865 () Bool)

(assert (=> start!5288 m!30865))

(declare-fun m!30867 () Bool)

(assert (=> start!5288 m!30867))

(push 1)

(assert (not start!5288))

(assert (not b!38250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6227 () Bool)

(declare-fun lt!14107 () Int)

(assert (=> d!6227 (>= lt!14107 0)))

(declare-fun ListPrimitiveSize!42 (List!1034) Int)

(assert (=> d!6227 (= lt!14107 (+ 1 (ListPrimitiveSize!42 (toList!543 lm!266))))))

(assert (=> d!6227 (= (ListLongMapPrimitiveSize!3 lm!266) lt!14107)))

(declare-fun bs!1554 () Bool)

(assert (= bs!1554 d!6227))

(declare-fun m!30873 () Bool)

(assert (=> bs!1554 m!30873))

(assert (=> start!5288 d!6227))

(declare-fun d!6233 () Bool)

(declare-fun isStrictlySorted!207 (List!1034) Bool)

(assert (=> d!6233 (= (inv!1725 lm!266) (isStrictlySorted!207 (toList!543 lm!266)))))

(declare-fun bs!1557 () Bool)

(assert (= bs!1557 d!6233))

(declare-fun m!30879 () Bool)

(assert (=> bs!1557 m!30879))

(assert (=> start!5288 d!6233))

(declare-fun b!38265 () Bool)

(declare-fun e!24321 () Bool)

(declare-fun tp_is_empty!1733 () Bool)

(declare-fun tp!5702 () Bool)

(assert (=> b!38265 (= e!24321 (and tp_is_empty!1733 tp!5702))))

(assert (=> b!38250 (= tp!5693 e!24321)))

(assert (= (and b!38250 (is-Cons!1030 (toList!543 lm!266))) b!38265))

(push 1)

(assert (not d!6233))

(assert (not d!6227))

