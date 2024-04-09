; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75060 () Bool)

(assert start!75060)

(declare-datatypes ((B!1230 0))(
  ( (B!1231 (val!8921 Int)) )
))
(declare-datatypes ((tuple2!11862 0))(
  ( (tuple2!11863 (_1!5941 (_ BitVec 64)) (_2!5941 B!1230)) )
))
(declare-datatypes ((List!17721 0))(
  ( (Nil!17718) (Cons!17717 (h!18848 tuple2!11862) (t!25006 List!17721)) )
))
(declare-datatypes ((ListLongMap!10645 0))(
  ( (ListLongMap!10646 (toList!5338 List!17721)) )
))
(declare-fun lm!210 () ListLongMap!10645)

(declare-fun isStrictlySorted!460 (List!17721) Bool)

(assert (=> start!75060 (not (isStrictlySorted!460 (toList!5338 lm!210)))))

(declare-fun e!492461 () Bool)

(declare-fun inv!29363 (ListLongMap!10645) Bool)

(assert (=> start!75060 (and (inv!29363 lm!210) e!492461)))

(declare-fun b!884833 () Bool)

(declare-fun tp!54201 () Bool)

(assert (=> b!884833 (= e!492461 tp!54201)))

(assert (= start!75060 b!884833))

(declare-fun m!825199 () Bool)

(assert (=> start!75060 m!825199))

(declare-fun m!825201 () Bool)

(assert (=> start!75060 m!825201))

(push 1)

(assert (not start!75060))

(assert (not b!884833))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109219 () Bool)

(declare-fun res!601186 () Bool)

(declare-fun e!492478 () Bool)

(assert (=> d!109219 (=> res!601186 e!492478)))

(assert (=> d!109219 (= res!601186 (or (is-Nil!17718 (toList!5338 lm!210)) (is-Nil!17718 (t!25006 (toList!5338 lm!210)))))))

(assert (=> d!109219 (= (isStrictlySorted!460 (toList!5338 lm!210)) e!492478)))

(declare-fun b!884850 () Bool)

(declare-fun e!492479 () Bool)

(assert (=> b!884850 (= e!492478 e!492479)))

(declare-fun res!601187 () Bool)

(assert (=> b!884850 (=> (not res!601187) (not e!492479))))

(assert (=> b!884850 (= res!601187 (bvslt (_1!5941 (h!18848 (toList!5338 lm!210))) (_1!5941 (h!18848 (t!25006 (toList!5338 lm!210))))))))

(declare-fun b!884851 () Bool)

(assert (=> b!884851 (= e!492479 (isStrictlySorted!460 (t!25006 (toList!5338 lm!210))))))

(assert (= (and d!109219 (not res!601186)) b!884850))

(assert (= (and b!884850 res!601187) b!884851))

(declare-fun m!825207 () Bool)

