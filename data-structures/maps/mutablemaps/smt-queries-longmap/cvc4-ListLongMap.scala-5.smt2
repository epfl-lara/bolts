; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!164 () Bool)

(assert start!164)

(declare-fun b_free!29 () Bool)

(declare-fun b_next!29 () Bool)

(assert (=> start!164 (= b_free!29 (not b_next!29))))

(declare-fun tp!92 () Bool)

(declare-fun b_and!53 () Bool)

(assert (=> start!164 (= tp!92 b_and!53)))

(declare-fun res!4400 () Bool)

(declare-fun e!350 () Bool)

(assert (=> start!164 (=> (not res!4400) (not e!350))))

(declare-datatypes ((B!264 0))(
  ( (B!265 (val!14 Int)) )
))
(declare-datatypes ((tuple2!28 0))(
  ( (tuple2!29 (_1!14 (_ BitVec 64)) (_2!14 B!264)) )
))
(declare-datatypes ((List!23 0))(
  ( (Nil!20) (Cons!19 (h!585 tuple2!28) (t!2042 List!23)) )
))
(declare-datatypes ((ListLongMap!33 0))(
  ( (ListLongMap!34 (toList!32 List!23)) )
))
(declare-fun lm!258 () ListLongMap!33)

(declare-fun p!318 () Int)

(declare-fun forall!16 (List!23 Int) Bool)

(assert (=> start!164 (= res!4400 (forall!16 (toList!32 lm!258) p!318))))

(assert (=> start!164 e!350))

(declare-fun e!351 () Bool)

(declare-fun inv!49 (ListLongMap!33) Bool)

(assert (=> start!164 (and (inv!49 lm!258) e!351)))

(assert (=> start!164 tp!92))

(declare-fun b!1823 () Bool)

(declare-fun size!65 (List!23) Int)

(assert (=> b!1823 (= e!350 (< (size!65 (toList!32 lm!258)) 0))))

(declare-fun b!1824 () Bool)

(declare-fun tp!91 () Bool)

(assert (=> b!1824 (= e!351 tp!91)))

(assert (= (and start!164 res!4400) b!1823))

(assert (= start!164 b!1824))

(declare-fun m!501 () Bool)

(assert (=> start!164 m!501))

(declare-fun m!503 () Bool)

(assert (=> start!164 m!503))

(declare-fun m!505 () Bool)

(assert (=> b!1823 m!505))

(push 1)

(assert (not b!1823))

(assert (not b!1824))

(assert (not start!164))

(assert b_and!53)

(assert (not b_next!29))

(check-sat)

(pop 1)

(push 1)

(assert b_and!53)

(assert (not b_next!29))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164 () Bool)

(declare-fun res!4409 () Bool)

(declare-fun e!363 () Bool)

(assert (=> d!164 (=> res!4409 e!363)))

(assert (=> d!164 (= res!4409 (is-Nil!20 (toList!32 lm!258)))))

(assert (=> d!164 (= (forall!16 (toList!32 lm!258) p!318) e!363)))

(declare-fun b!1839 () Bool)

(declare-fun e!364 () Bool)

(assert (=> b!1839 (= e!363 e!364)))

(declare-fun res!4410 () Bool)

(assert (=> b!1839 (=> (not res!4410) (not e!364))))

(declare-fun dynLambda!8 (Int tuple2!28) Bool)

(assert (=> b!1839 (= res!4410 (dynLambda!8 p!318 (h!585 (toList!32 lm!258))))))

(declare-fun b!1840 () Bool)

(assert (=> b!1840 (= e!364 (forall!16 (t!2042 (toList!32 lm!258)) p!318))))

(assert (= (and d!164 (not res!4409)) b!1839))

(assert (= (and b!1839 res!4410) b!1840))

(declare-fun b_lambda!49 () Bool)

(assert (=> (not b_lambda!49) (not b!1839)))

(declare-fun t!2044 () Bool)

(declare-fun tb!19 () Bool)

(assert (=> (and start!164 (= p!318 p!318) t!2044) tb!19))

(declare-fun result!31 () Bool)

(assert (=> tb!19 (= result!31 true)))

(assert (=> b!1839 t!2044))

(declare-fun b_and!55 () Bool)

(assert (= b_and!53 (and (=> t!2044 result!31) b_and!55)))

(declare-fun m!509 () Bool)

(assert (=> b!1839 m!509))

(declare-fun m!513 () Bool)

(assert (=> b!1840 m!513))

(assert (=> start!164 d!164))

(declare-fun d!173 () Bool)

(declare-fun isStrictlySorted!6 (List!23) Bool)

(assert (=> d!173 (= (inv!49 lm!258) (isStrictlySorted!6 (toList!32 lm!258)))))

