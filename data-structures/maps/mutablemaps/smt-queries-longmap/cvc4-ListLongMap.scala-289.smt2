; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4736 () Bool)

(assert start!4736)

(declare-fun b_free!1325 () Bool)

(declare-fun b_next!1325 () Bool)

(assert (=> start!4736 (= b_free!1325 (not b_next!1325))))

(declare-fun tp!5437 () Bool)

(declare-fun b_and!2179 () Bool)

(assert (=> start!4736 (= tp!5437 b_and!2179)))

(declare-fun res!22200 () Bool)

(declare-fun e!23174 () Bool)

(assert (=> start!4736 (=> (not res!22200) (not e!23174))))

(declare-datatypes ((B!732 0))(
  ( (B!733 (val!866 Int)) )
))
(declare-datatypes ((tuple2!1396 0))(
  ( (tuple2!1397 (_1!708 (_ BitVec 64)) (_2!708 B!732)) )
))
(declare-datatypes ((List!986 0))(
  ( (Nil!983) (Cons!982 (h!1550 tuple2!1396) (t!3719 List!986)) )
))
(declare-datatypes ((ListLongMap!977 0))(
  ( (ListLongMap!978 (toList!504 List!986)) )
))
(declare-fun lm!252 () ListLongMap!977)

(declare-fun p!304 () Int)

(declare-fun forall!166 (List!986 Int) Bool)

(assert (=> start!4736 (= res!22200 (forall!166 (toList!504 lm!252) p!304))))

(assert (=> start!4736 e!23174))

(declare-fun e!23175 () Bool)

(declare-fun inv!1616 (ListLongMap!977) Bool)

(assert (=> start!4736 (and (inv!1616 lm!252) e!23175)))

(assert (=> start!4736 tp!5437))

(assert (=> start!4736 true))

(declare-fun b!36682 () Bool)

(declare-fun res!22201 () Bool)

(assert (=> b!36682 (=> (not res!22201) (not e!23174))))

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!452 (ListLongMap!977 (_ BitVec 64)) Bool)

(assert (=> b!36682 (= res!22201 (contains!452 lm!252 k!388))))

(declare-fun b!36683 () Bool)

(declare-fun size!1298 (List!986) Int)

(assert (=> b!36683 (= e!23174 (< (size!1298 (toList!504 lm!252)) 0))))

(declare-fun b!36684 () Bool)

(declare-fun tp!5438 () Bool)

(assert (=> b!36684 (= e!23175 tp!5438)))

(assert (= (and start!4736 res!22200) b!36682))

(assert (= (and b!36682 res!22201) b!36683))

(assert (= start!4736 b!36684))

(declare-fun m!29577 () Bool)

(assert (=> start!4736 m!29577))

(declare-fun m!29579 () Bool)

(assert (=> start!4736 m!29579))

(declare-fun m!29581 () Bool)

(assert (=> b!36682 m!29581))

(declare-fun m!29583 () Bool)

(assert (=> b!36683 m!29583))

(push 1)

(assert (not b!36683))

(assert (not b_next!1325))

(assert b_and!2179)

(assert (not b!36684))

(assert (not start!4736))

(assert (not b!36682))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2179)

(assert (not b_next!1325))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5539 () Bool)

(declare-fun res!22208 () Bool)

(declare-fun e!23187 () Bool)

(assert (=> d!5539 (=> res!22208 e!23187)))

(assert (=> d!5539 (= res!22208 (is-Nil!983 (toList!504 lm!252)))))

(assert (=> d!5539 (= (forall!166 (toList!504 lm!252) p!304) e!23187)))

(declare-fun b!36701 () Bool)

(declare-fun e!23188 () Bool)

(assert (=> b!36701 (= e!23187 e!23188)))

(declare-fun res!22209 () Bool)

(assert (=> b!36701 (=> (not res!22209) (not e!23188))))

(declare-fun dynLambda!168 (Int tuple2!1396) Bool)

(assert (=> b!36701 (= res!22209 (dynLambda!168 p!304 (h!1550 (toList!504 lm!252))))))

(declare-fun b!36702 () Bool)

(assert (=> b!36702 (= e!23188 (forall!166 (t!3719 (toList!504 lm!252)) p!304))))

(assert (= (and d!5539 (not res!22208)) b!36701))

(assert (= (and b!36701 res!22209) b!36702))

(declare-fun b_lambda!1777 () Bool)

(assert (=> (not b_lambda!1777) (not b!36701)))

(declare-fun t!3721 () Bool)

(declare-fun tb!721 () Bool)

